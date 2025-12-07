uint64_t sub_899C0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_899F0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v51 = a1;
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4CC8, &qword_14F520);
  __chkstk_darwin(v50);
  v42 = &v41 - v3;
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4CD0, &qword_14F528);
  __chkstk_darwin(v45);
  v49 = &v41 - v4;
  v48 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4CD8, &qword_14F530);
  __chkstk_darwin(v48);
  v44 = &v41 - v5;
  v6 = type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabel(0);
  v7 = (v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v41 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v1 + 1);
  v11 = type metadata accessor for NowPlayingPlaybackControlsWrapper.ContentView(0);
  v12 = v11[6];
  v13 = v7[7];
  v14 = sub_140D5C();
  v15 = *(*(v14 - 8) + 16);
  v43 = v12;
  v15(&v9[v13], &v2[v12], v14);
  v16 = v11[7];
  v46 = v2;
  v47 = v9;
  LOBYTE(v16) = v2[v16];
  *v9 = v10;
  v9[v7[8]] = v16;
  v17 = &v9[v7[9]];
  *v17 = swift_getKeyPath();
  v17[8] = 0;

  if (sub_141D9C())
  {
    v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4D10, &unk_14F570);
    v19 = v42;
    v20 = v46;
    v15(&v42[v18[10]], &v46[v43], v14);
    v21 = v47;
    sub_8DB20(v47, v19 + v18[11], type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabel);
    v22 = *(v20 + v11[8]);
    LOBYTE(v52) = 0;

    sub_143CAC();
    v23 = v56;
    *v19 = v54;
    *(v19 + 8) = v23;
    *(v19 + 16) = v10;
    *(v19 + v18[12]) = v22;
    v24 = v19 + v18[13];
    v52 = 0;
    v53 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3770, qword_14DAB0);
    sub_143CAC();
    v25 = v55;
    v26 = v56;
    *v24 = v54;
    *(v24 + 4) = v25;
    *(v24 + 8) = v26;
    v27 = v19 + v18[14];
    LOBYTE(v52) = 0;
    sub_143CAC();
    v28 = v56;
    *v27 = v54;
    *(v27 + 8) = v28;
    v29 = v19 + v18[15];
    LOBYTE(v52) = 0;
    sub_143CAC();
    v30 = v56;
    *v29 = v54;
    *(v29 + 8) = v30;
    v31 = v18[16];
    *(v19 + v31) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C37D0, &qword_14F5B0);
    swift_storeEnumTagMultiPayload();
    v32 = v18[17];
    *(v19 + v32) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C0F70, &qword_14AC80);
    swift_storeEnumTagMultiPayload();
    v33 = v49;
    *(v19 + *(v50 + 36)) = *v20;
    v34 = &qword_1C4CC8;
    v35 = &qword_14F520;
    sub_1D19C(v19, v33, &qword_1C4CC8, &qword_14F520);
    swift_storeEnumTagMultiPayload();
    sub_8DB88();
    sub_8DC94();

    sub_14329C();
    v36 = v19;
  }

  else
  {
    v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4CE0, &qword_14F568);
    v38 = v44;
    v21 = v47;
    sub_8DB20(v47, &v44[*(v37 + 36)], type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabel);
    type metadata accessor for NowPlayingPlaybackControlsViewModel(0);
    sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);

    sub_143E4C();
    v39 = v49;
    *(v38 + *(v48 + 36)) = *v46;
    v34 = &qword_1C4CD8;
    v35 = &qword_14F530;
    sub_1D19C(v38, v39, &qword_1C4CD8, &qword_14F530);
    swift_storeEnumTagMultiPayload();
    sub_8DB88();
    sub_8DC94();

    sub_14329C();
    v36 = v38;
  }

  sub_15340(v36, v34, v35);
  return sub_8DD4C(v21);
}

uint64_t sub_89FF0@<X0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C2B60, &qword_14E280);
  __chkstk_darwin(v4 - 8);
  v6 = &v20[-1] - v5;
  v7 = sub_14318C();
  v22 = 0;
  sub_8A45C(v2, v35);
  v31 = *&v35[128];
  v32 = *&v35[144];
  v27 = *&v35[64];
  v28 = *&v35[80];
  v29 = *&v35[96];
  v30 = *&v35[112];
  v23 = *v35;
  v24 = *&v35[16];
  v25 = *&v35[32];
  v26 = *&v35[48];
  *&v34[14] = *&v35[112];
  *&v34[16] = *&v35[128];
  *&v34[18] = *&v35[144];
  *&v34[20] = *&v35[160];
  *&v34[6] = *&v35[48];
  *&v34[8] = *&v35[64];
  *&v34[10] = *&v35[80];
  *&v34[12] = *&v35[96];
  v33 = *&v35[160];
  *v34 = *v35;
  *&v34[2] = *&v35[16];
  *&v34[4] = *&v35[32];
  sub_1D19C(&v23, v20, &qword_1C4FB8, &qword_14FAF8);
  sub_15340(v34, &qword_1C4FB8, &qword_14FAF8);
  *&v21[119] = v30;
  *&v21[135] = v31;
  *&v21[151] = v32;
  *&v21[167] = v33;
  *&v21[55] = v26;
  *&v21[71] = v27;
  *&v21[87] = v28;
  *&v21[103] = v29;
  *&v21[7] = v23;
  *&v21[23] = v24;
  *&v21[39] = v25;
  v8 = v22;
  sub_143EAC();
  sub_142A9C();
  type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabelText(0);
  v9 = sub_8F424();
  KeyPath = swift_getKeyPath();
  *(&v20[18] + 1) = *&v21[128];
  *(&v20[20] + 1) = *&v21[144];
  *(&v20[22] + 1) = *&v21[160];
  *(&v20[10] + 1) = *&v21[64];
  *(&v20[12] + 1) = *&v21[80];
  *(&v20[14] + 1) = *&v21[96];
  *(&v20[16] + 1) = *&v21[112];
  *(&v20[2] + 1) = *v21;
  *(&v20[4] + 1) = *&v21[16];
  *(&v20[6] + 1) = *&v21[32];
  *(&v20[8] + 1) = *&v21[48];
  *&v20[25] = *&v34[23];
  v20[0] = v7;
  v20[1] = 0x4014000000000000;
  LOBYTE(v20[2]) = v8;
  *&v20[27] = *&v34[25];
  *&v20[29] = *&v34[27];
  v20[24] = *&v21[175];
  v20[31] = KeyPath;
  v20[32] = v9;
  if (qword_1BFFD0 != -1)
  {
    swift_once();
  }

  v11 = sub_1436BC();
  v12 = __swift_project_value_buffer(v11, qword_1C4B20);
  v13 = *(v11 - 8);
  (*(v13 + 16))(v6, v12, v11);
  (*(v13 + 56))(v6, 0, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4FC0, &qword_14FB30);
  sub_8F610();
  sub_14388C();
  sub_15340(v6, &unk_1C2B60, &qword_14E280);
  memcpy(v35, v20, sizeof(v35));
  sub_15340(v35, &qword_1C4FC0, &qword_14FB30);
  v14 = swift_getKeyPath();
  v15 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4FF0, &qword_14FB80) + 36));
  *v15 = v14;
  v15[1] = 0x3FE0000000000000;
  v16 = swift_getKeyPath();
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4FF8, &qword_14FBB8);
  v18 = a1 + *(result + 36);
  *v18 = v16;
  *(v18 + 8) = 1;
  *(v18 + 16) = 0;
  return result;
}

uint64_t sub_8A45C@<X0>(uint64_t a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = sub_143C3C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_141F5C();
  v8 = sub_141EFC();
  v23 = v9;
  sub_143EAC();
  sub_142A9C();
  LOBYTE(v46[0]) = 0;
  KeyPath = swift_getKeyPath();
  LOBYTE(v46[0]) = 1;
  sub_143C2C();
  (*(v5 + 104))(v7, enum case for Image.ResizingMode.stretch(_:), v4);
  v10 = sub_143C5C();

  (*(v5 + 8))(v7, v4);
  sub_143EAC();
  sub_142A9C();
  v11 = 1.0;
  if (!*(a1 + 4))
  {
    v11 = 0.0;
  }

  v36 = v58;
  v35 = v60;
  v13 = v23;
  v12 = KeyPath;
  *&v37 = v8;
  *(&v37 + 1) = v23;
  LOBYTE(v38) = 0;
  *(&v38 + 1) = v65[0];
  DWORD1(v38) = *(v65 + 3);
  v40 = v63;
  v41 = v64;
  v39 = v62;
  *(&v38 + 1) = _swiftEmptyArrayStorage;
  *&v42[0] = KeyPath;
  *(&v42[0] + 1) = 0x3FE0000000000000;
  *&v42[1] = 0;
  WORD4(v42[1]) = 1;
  v25 = v37;
  v26 = v38;
  *(v30 + 10) = *(v42 + 10);
  v29 = v64;
  v30[0] = v42[0];
  v27 = v62;
  v28 = v63;
  *&v43 = v10;
  *(&v43 + 1) = v57;
  LOBYTE(v44) = v58;
  *(&v44 + 1) = v59;
  LOBYTE(v45[0]) = v60;
  *(v45 + 8) = v61;
  *(&v45[1] + 1) = v11;
  v33 = v45[0];
  v34 = v45[1];
  v31 = v43;
  v32 = v44;
  v14 = v38;
  *a2 = v37;
  a2[1] = v14;
  v15 = v27;
  v16 = v28;
  v17 = v30[0];
  a2[4] = v29;
  a2[5] = v17;
  a2[2] = v15;
  a2[3] = v16;
  v18 = v30[1];
  v19 = v31;
  v20 = v32;
  v21 = v34;
  a2[9] = v33;
  a2[10] = v21;
  a2[7] = v19;
  a2[8] = v20;
  a2[6] = v18;
  sub_1D19C(&v37, v46, &qword_1C5000, &qword_14FBC0);
  sub_1D19C(&v43, v46, &qword_1C5008, &qword_14FBC8);

  v46[0] = v8;
  v46[1] = v13;
  v47 = 0;
  *v48 = v65[0];
  *&v48[3] = *(v65 + 3);
  v50 = v62;
  v51 = v63;
  v52 = v64;
  v49 = _swiftEmptyArrayStorage;
  v53 = v12;
  v54 = 0x3FE0000000000000;
  v55 = 0;
  v56 = 1;
  return sub_15340(v46, &qword_1C5000, &qword_14FBC0);
}

uint64_t sub_8A7D0()
{
  v0 = sub_1436BC();
  __swift_allocate_value_buffer(v0, qword_1C4B20);
  v1 = __swift_project_value_buffer(v0, qword_1C4B20);
  v2 = enum case for Font.Design.rounded(_:);
  v3 = *(*(v0 - 8) + 104);

  return v3(v1, v2, v0);
}

uint64_t sub_8A85C@<X0>(uint64_t a1@<X8>)
{
  v72 = a1;
  v60 = sub_142FFC();
  v59 = *(v60 - 8);
  __chkstk_darwin(v60);
  v58 = &v58 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_140D5C();
  v74 = *(v3 - 8);
  __chkstk_darwin(v3);
  v61 = &v58 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v69 = &v58 - v6;
  __chkstk_darwin(v7);
  v68 = &v58 - v8;
  v9 = type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabelText(0);
  __chkstk_darwin(v9);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E68, &qword_14F9B8);
  __chkstk_darwin(v63);
  v13 = &v58 - v12;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E70, &qword_14F9C0);
  __chkstk_darwin(v62);
  v66 = &v58 - v14;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E78, &qword_14F9C8);
  __chkstk_darwin(v65);
  v16 = &v58 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E80, &qword_14F9D0);
  __chkstk_darwin(v64);
  v73 = &v58 - v17;
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E88, &qword_14F9D8);
  __chkstk_darwin(v70);
  v71 = &v58 - v18;
  v76 = v1;
  v19 = *v1;
  swift_getKeyPath();
  *&v78 = v19;
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v20 = *(v19 + 24);
  if (sub_141D9C() & 1) != 0 && (sub_141D7C())
  {
    swift_getKeyPath();
    *&v78 = v19;
    sub_141A4C();

    v21 = *(v19 + 89);
  }

  else
  {
    v21 = 0;
  }

  v22 = type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabel(0);
  v23 = *(v74 + 16);
  v24 = &v11[*(v9 + 24)];
  v25 = v76;
  v75 = *(v22 + 20);
  v23(v24, v76 + v75, v3);
  *v11 = v20;
  v11[4] = v21;
  v67 = v22;
  v26 = *(v25 + *(v22 + 24));
  swift_getKeyPath();
  *&v78 = v19;
  sub_141A4C();

  if (*(v19 + 64) == 1)
  {
    swift_getKeyPath();
    *&v78 = v19;
    sub_141A4C();

    v27 = *(v19 + 24);
    sub_141F5C();
    sub_141EDC();
    v29 = v27 != v28;
  }

  else
  {
    v29 = 0;
  }

  sub_8EBB4(v11, v13);
  v30 = &v13[*(v63 + 36)];
  *v30 = v26;
  v30[1] = v29;
  v31 = sub_143EAC();
  v33 = v32;
  v34 = v66;
  sub_10358(v13, v66, &qword_1C4E68, &qword_14F9B8);
  v35 = (v34 + *(v62 + 36));
  *v35 = sub_8B344;
  v35[1] = 0;
  v35[2] = v31;
  v35[3] = v33;
  swift_getKeyPath();
  *&v78 = v19;
  sub_141A4C();

  LOBYTE(v31) = *(v19 + 64);
  sub_10358(v34, v16, &qword_1C4E70, &qword_14F9C0);
  v16[*(v65 + 36)] = v31;
  v36 = v73;
  sub_10358(v16, v73, &qword_1C4E78, &qword_14F9C8);
  *(v36 + *(v64 + 36)) = 257;
  v37 = enum case for NowPlayingPlayerStyle.mini(_:);
  v38 = v74;
  v39 = *(v74 + 104);
  v40 = v68;
  v39(v68, enum case for NowPlayingPlayerStyle.mini(_:), v3);
  sub_8DA88(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v78 == v77)
  {
    LODWORD(v66) = 1;
  }

  else
  {
    LODWORD(v66) = sub_1453BC();
  }

  v41 = *(v38 + 8);
  v41(v40, v3);

  v42 = v69;
  v39(v69, v37, v3);
  sub_1449AC();
  sub_1449AC();
  if (v78 == v77)
  {
    LODWORD(v74) = 1;
  }

  else
  {
    LODWORD(v74) = sub_1453BC();
  }

  v41(v42, v3);

  v43 = v76 + *(v67 + 28);
  v44 = *v43;
  if (v43[8])
  {
    if (v44)
    {
      goto LABEL_21;
    }
  }

  else
  {

    sub_144C4C();
    v45 = sub_1435DC();
    sub_1423BC();

    v46 = v58;
    sub_142FEC();
    swift_getAtKeyPath();
    sub_1C804(v44, 0);
    (*(v59 + 8))(v46, v60);
    if (v78)
    {
      goto LABEL_21;
    }
  }

  v47 = v61;
  v39(v61, v37, v3);
  sub_1449AC();
  sub_1449AC();
  if (v78 == v77)
  {
    v41(v47, v3);
  }

  else
  {
    v48 = sub_1453BC();
    v41(v47, v3);

    if ((v48 & 1) == 0)
    {
      sub_143EBC();
      goto LABEL_22;
    }
  }

LABEL_21:
  sub_143EAC();
LABEL_22:
  sub_142D4C();
  v49 = v71;
  sub_10358(v73, v71, &qword_1C4E80, &qword_14F9D0);
  v50 = (v49 + *(v70 + 36));
  v51 = v83;
  v50[4] = v82;
  v50[5] = v51;
  v50[6] = v84;
  v52 = v79;
  *v50 = v78;
  v50[1] = v52;
  v53 = v81;
  v50[2] = v80;
  v50[3] = v53;
  v54 = v49;
  v55 = v72;
  sub_10358(v54, v72, &qword_1C4E88, &qword_14F9D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E90, &qword_14F9E0);
  v57 = v55 + *(result + 36);
  *v57 = 0xC024000000000000;
  *(v57 + 8) = 0;
  return result;
}

void sub_8B344(uint64_t *a2@<X8>)
{
  v3 = sub_143BCC();
  sub_142B1C();
  *a2 = v3;
  a2[1] = v4;
  a2[2] = v5;
}

uint64_t sub_8B388(uint64_t a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4F90, &qword_14FAE0);
  __chkstk_darwin(v4);
  v6 = &v15 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4F98, &qword_14FAE8);
  __chkstk_darwin(v7);
  v9 = &v15 - v8;
  if (a2)
  {
    v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4FA0, &qword_14FAF0);
    (*(*(v10 - 8) + 16))(v6, a1, v10);
    swift_storeEnumTagMultiPayload();
    sub_8F340();
    sub_1D4A4(&qword_1C4FB0, &qword_1C4FA0, &qword_14FAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    return sub_14329C();
  }

  else
  {
    v12 = [objc_opt_self() tertiaryLabelColor];
    v13 = sub_143B8C();
    v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4FA0, &qword_14FAF0);
    (*(*(v14 - 8) + 16))(v9, a1, v14);
    *&v9[*(v7 + 36)] = v13;
    sub_1D19C(v9, v6, &qword_1C4F98, &qword_14FAE8);
    swift_storeEnumTagMultiPayload();
    sub_8F340();
    sub_1D4A4(&qword_1C4FB0, &qword_1C4FA0, &qword_14FAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_14329C();
    return sub_15340(v9, &qword_1C4F98, &qword_14FAE8);
  }
}

uint64_t sub_8B650@<X0>(uint64_t a1@<X1>, uint64_t a2@<X8>)
{
  v129 = a2;
  v3 = sub_14315C();
  v127 = *(v3 - 8);
  v128 = v3;
  __chkstk_darwin(v3);
  v126 = &v90 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v125 = sub_14354C();
  v124 = *(v125 - 8);
  __chkstk_darwin(v125);
  v123 = &v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DC8, &qword_14F748);
  __chkstk_darwin(v6);
  v8 = &v90 - v7;
  v91 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DD0, &qword_14F750);
  v92 = *(v91 - 8);
  __chkstk_darwin(v91);
  v133 = &v90 - v9;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DD8, &qword_14F758);
  v97 = *(v96 - 8);
  __chkstk_darwin(v96);
  v90 = &v90 - v10;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DE0, &qword_14F760);
  v99 = *(v98 - 8);
  __chkstk_darwin(v98);
  v134 = &v90 - v11;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DE8, &qword_14F768);
  v103 = *(v102 - 8);
  __chkstk_darwin(v102);
  v93 = &v90 - v12;
  v136 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DF0, &qword_14F770);
  v104 = *(v136 - 8);
  __chkstk_darwin(v136);
  v135 = &v90 - v13;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4DF8, &qword_14F778);
  v108 = *(v107 - 8);
  __chkstk_darwin(v107);
  v101 = &v90 - v14;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E00, &qword_14F780);
  v111 = *(v110 - 8);
  __chkstk_darwin(v110);
  v105 = &v90 - v15;
  v113 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E08, &qword_14F788);
  v114 = *(v113 - 8);
  __chkstk_darwin(v113);
  v106 = &v90 - v16;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E10, &qword_14F790);
  v116 = *(v115 - 8);
  __chkstk_darwin(v115);
  v109 = &v90 - v17;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E18, &qword_14F798);
  v119 = *(v118 - 8);
  __chkstk_darwin(v118);
  v112 = &v90 - v18;
  v121 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E20, &qword_14F7A0);
  __chkstk_darwin(v121);
  v117 = &v90 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v20);
  v120 = &v90 - v21;
  __chkstk_darwin(v22);
  v122 = &v90 - v23;
  v24 = *(a1 + 16);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E28, &qword_14F7A8);
  type metadata accessor for NowPlayingPlaybackControlsViewModel(0);
  sub_1D4A4(&qword_1C4E30, &qword_1C4E28, &qword_14F7A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
  v25 = sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_1438BC();
  swift_getKeyPath();
  v26 = OBJC_IVAR____TtC12NowPlayingUI35NowPlayingPlaybackControlsViewModel___observationRegistrar;
  v140 = v24;
  sub_141A4C();

  v27 = *(v24 + 64);
  KeyPath = swift_getKeyPath();
  v29 = swift_allocObject();
  *(v29 + 16) = (v27 & 1) == 0;
  v30 = &v8[*(v6 + 36)];
  *v30 = KeyPath;
  v30[1] = sub_691B4;
  v30[2] = v29;
  swift_getKeyPath();
  v140 = v24;
  v130 = v26;
  v31 = v25;
  sub_141A4C();

  v32 = *(v24 + 16);
  v100 = v24 + 16;
  BYTE4(v140) = *(v24 + 20);
  LODWORD(v140) = v32;

  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4E38, &unk_14F830);
  v34 = sub_8E43C();
  v35 = sub_8E5B4();
  v95 = v33;
  v36 = v35;
  v94 = v35;
  sub_143B6C();

  sub_15340(v8, &qword_1C4DC8, &qword_14F748);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  LOBYTE(v139) = *(v24 + 89);

  v140 = v6;
  v141 = v33;
  v142 = v34;
  v143 = v36;
  v131 = &opaque type descriptor for <<opaque return type of View.onChange<A>(of:initial:_:)>>;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v38 = v90;
  v39 = v91;
  v40 = v133;
  sub_143B6C();

  v41 = v39;
  (*(v92 + 8))(v40, v39);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  v139 = *(v24 + 80);
  type metadata accessor for AVAudioApplicationEnhanceDialogueLevel(0);
  v43 = v42;

  v140 = v41;
  v141 = &type metadata for Bool;
  v142 = OpaqueTypeConformance2;
  v143 = &protocol witness table for Bool;
  v44 = swift_getOpaqueTypeConformance2();
  v45 = sub_8DA88(&qword_1C4E58, type metadata accessor for AVAudioApplicationEnhanceDialogueLevel, &unk_149F38);
  v46 = v96;
  sub_143B6C();

  (*(v97 + 8))(v38, v46);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  LOBYTE(v139) = *(v24 + 124);

  v140 = v46;
  v141 = v43;
  v142 = v44;
  v143 = v45;
  v47 = swift_getOpaqueTypeConformance2();
  v48 = v93;
  v49 = v98;
  v50 = v134;
  sub_143B6C();

  (*(v99 + 8))(v50, v49);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  LOBYTE(v139) = *(v24 + 125);

  v140 = v49;
  v141 = &type metadata for Bool;
  v142 = v47;
  v143 = &protocol witness table for Bool;
  v51 = swift_getOpaqueTypeConformance2();
  v52 = v102;
  sub_143B6C();

  (*(v103 + 8))(v48, v52);
  swift_getKeyPath();
  v140 = v24;
  v132 = v31;
  sub_141A4C();

  LOBYTE(v139) = *(v24 + 126);

  v140 = v52;
  v141 = &type metadata for Bool;
  v142 = v51;
  v143 = &protocol witness table for Bool;
  v53 = swift_getOpaqueTypeConformance2();
  v54 = v101;
  v55 = v136;
  v56 = v135;
  sub_143B6C();

  (*(v104 + 8))(v56, v55);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  v57 = *(v24 + 128);
  swift_getKeyPath();
  v140 = v57;
  sub_8DA88(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  LOBYTE(v56) = *(v57 + 17);

  LOBYTE(v137) = v56;

  v140 = v136;
  v141 = &type metadata for Bool;
  v142 = v53;
  v143 = &protocol witness table for Bool;
  v58 = swift_getOpaqueTypeConformance2();
  v59 = v105;
  v60 = v107;
  sub_143B6C();

  (*(v108 + 8))(v54, v60);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  v137 = *(v24 + 24);

  v140 = v60;
  v141 = &type metadata for Bool;
  v142 = v58;
  v143 = &protocol witness table for Bool;
  v61 = swift_getOpaqueTypeConformance2();
  v62 = v106;
  v63 = v110;
  sub_143B6C();

  (*(v111 + 8))(v59, v63);
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  v64 = *v100;
  v138 = *(v100 + 4);
  v137 = v64;
  v140 = v63;
  v141 = &type metadata for Float;
  v142 = v61;
  v143 = &protocol witness table for Float;
  v65 = swift_getOpaqueTypeConformance2();
  v66 = v109;
  v67 = v113;
  v68 = v95;
  v69 = v94;
  sub_14399C();
  (*(v114 + 8))(v62, v67);
  v70 = v123;
  sub_14353C();
  v140 = v67;
  v141 = v68;
  v142 = v65;
  v143 = v69;
  v71 = swift_getOpaqueTypeConformance2();
  v72 = v112;
  v73 = v115;
  sub_143A7C();
  (*(v124 + 8))(v70, v125);
  v74 = v73;
  (*(v116 + 8))(v66, v73);
  sub_1430EC();
  v75 = sub_1437DC();
  v77 = v76;
  LOBYTE(v66) = v78;
  v140 = v74;
  v141 = v71;
  swift_getOpaqueTypeConformance2();
  v79 = v117;
  v80 = v118;
  sub_1439EC();
  sub_1B4AC(v75, v77, v66 & 1);

  (*(v119 + 8))(v72, v80);
  sub_141F5C();
  swift_getKeyPath();
  v140 = v24;
  sub_141A4C();

  v140 = sub_141EFC();
  v141 = v81;
  sub_9CCC();
  v82 = sub_1437EC();
  v84 = v83;
  LOBYTE(v75) = v85;
  v86 = v120;
  sub_142C2C();
  sub_1B4AC(v82, v84, v75 & 1);

  sub_15340(v79, &qword_1C4E20, &qword_14F7A0);
  v87 = v126;
  sub_14313C();
  v88 = v122;
  sub_142C4C();
  (*(v127 + 8))(v87, v128);
  sub_15340(v86, &qword_1C4E20, &qword_14F7A0);
  sub_8E700();
  sub_143ABC();
  return sub_15340(v88, &qword_1C4E20, &qword_14F7A0);
}

void sub_8CB94(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 20) != 255)
  {
    sub_103668(*(v1 + 16) | (*(v1 + 20) << 32));
  }
}

double sub_8CC54(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C2490, &qword_14AED0);
  __chkstk_darwin(v2 - 8);
  v4 = v10 - v3;
  v5 = *(a1 + 16);
  swift_getKeyPath();
  v10[1] = v5;
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v6 = *(v5 + 89);
  v7 = sub_144ADC();
  (*(*(v7 - 8) + 56))(v4, 1, 1, v7);
  v8 = swift_allocObject();
  *(v8 + 16) = 0;
  *(v8 + 24) = 0;
  *(v8 + 32) = a1;
  *(v8 + 40) = v6;

  sub_43CFC(0, 0, v4, &unk_14F9B0, v8);

  return result;
}

void sub_8CDE4(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 124) == 1)
  {
    swift_getKeyPath();
    sub_141A4C();

    sub_103B38(*(v1 + 120));
  }
}

void sub_8CED8(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 125) == 1)
  {
    sub_1040E8();
  }
}

void sub_8CF8C(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  if (*(v1 + 126) == 1)
  {
    sub_104584();
  }
}

double sub_8D040(uint64_t a1)
{
  v1 = *(a1 + 16);
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  v2 = *(v1 + 128);
  swift_getKeyPath();
  sub_8DA88(&qword_1C37E0, type metadata accessor for NowPlayingSpeedControlsAnimationViewModel, &protocol conformance descriptor for NowPlayingSpeedControlsAnimationViewModel);

  sub_141A4C();

  swift_beginAccess();
  v3 = *(v2 + 17);

  if (v3 != 1)
  {
    return sub_104A1C();
  }

  sub_10476C();
  return result;
}

void sub_8D1A0(uint64_t a1)
{
  v1 = UIAccessibilityAnnouncementNotification;
  sub_141F5C();
  swift_getKeyPath();
  sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
  sub_141A4C();

  sub_141EFC();
  v2 = sub_14489C();

  UIAccessibilityPostNotification(v1, v2);
}

uint64_t sub_8D290@<X0>(float *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_142CAC();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + 4) != 255)
  {
    v13 = *a1 | (*(a1 + 4) << 32);
    if (BYTE4(v13) != 255)
    {
      if (*(a2 + 4))
      {
        if (*(a2 + 4) == 1)
        {
          if (BYTE4(v13) == 1 && *a2 == *a1)
          {
            goto LABEL_2;
          }
        }

        else if (BYTE4(v13) == 2 && *a1 == 0)
        {
          goto LABEL_2;
        }
      }

      else if (!BYTE4(v13) && ((*a2 ^ *a1) & 1) == 0 && (((*a1 ^ *a2) >> 8) & 1) == 0)
      {
        goto LABEL_2;
      }
    }

    sub_142C9C();
    sub_142CBC();
    (*(v7 + 8))(v9, v6);
    v14 = sub_142CDC();
    return (*(*(v14 - 8) + 56))(a3, 0, 1, v14);
  }

LABEL_2:
  v10 = sub_142CDC();
  v11 = *(*(v10 - 8) + 56);

  return v11(a3, 1, 1, v10);
}

uint64_t sub_8D4A4@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_14138C();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t sub_8D560(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v8 = sub_1432AC();
  v9 = *(v8 - 8);
  __chkstk_darwin(v8);
  v11 = v21 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4C70, &qword_14F4F0);
  __chkstk_darwin(v12);
  v14 = v21 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a3;
  *(v15 + 24) = a4;
  *(v15 + 32) = a2;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4C78, &qword_14F4F8);
  (*(*(v16 - 8) + 16))(v14, a1, v16);
  v17 = &v14[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4C80, &qword_14F500) + 36)];
  *v17 = sub_8D8E0;
  v17[1] = v15;
  v18 = &v14[*(v12 + 36)];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4C88, &qword_14F508);

  sub_142D5C();
  v21[3] = a3;
  v21[4] = a4;
  *&v21[5] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C4C90, &qword_14F510);
  sub_143CBC();
  v19 = (v21[1] + -20.0) * 0.5;
  *v18 = -v19;
  *(v18 + 1) = v19 * 0.5 + -10.0;
  *(v18 + 2) = 0;
  v18[24] = 0;
  sub_142D9C();
  sub_8D8EC();
  sub_8DA88(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  sub_1438CC();
  (*(v9 + 8))(v11, v8);
  return sub_15340(v14, &qword_1C4C70, &qword_14F4F0);
}

uint64_t sub_8D8A8()
{

  return _swift_deallocObject(v0, 40, 7);
}

unint64_t sub_8D8EC()
{
  result = qword_1C4C98;
  if (!qword_1C4C98)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4C70, &qword_14F4F0);
    sub_8D9A4();
    sub_1D4A4(&qword_1C4CC0, &qword_1C4C88, &qword_14F508, &protocol conformance descriptor for _ContentShapeKindModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4C98);
  }

  return result;
}

unint64_t sub_8D9A4()
{
  result = qword_1C4CA0;
  if (!qword_1C4CA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4C80, &qword_14F500);
    sub_1D4A4(&qword_1C4CA8, &qword_1C4C78, &qword_14F4F8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1D4A4(&qword_1C4CB0, &qword_1C4CB8, &qword_14F518, &protocol conformance descriptor for _PreferenceActionModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4CA0);
  }

  return result;
}

uint64_t sub_8DA88(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_8DAF0@<X0>(_BYTE *a1@<X8>)
{
  result = sub_142F5C();
  *a1 = result & 1;
  return result;
}

uint64_t sub_8DB20(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_8DB88()
{
  result = qword_1C4CE8;
  if (!qword_1C4CE8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4CD8, &qword_14F530);
    sub_1D4A4(&qword_1C4CF0, &qword_1C4CE0, &qword_14F568, &unk_1526A8);
    sub_8DC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4CE8);
  }

  return result;
}

unint64_t sub_8DC40()
{
  result = qword_1C4CF8;
  if (!qword_1C4CF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4CF8);
  }

  return result;
}

unint64_t sub_8DC94()
{
  result = qword_1C4D00;
  if (!qword_1C4D00)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4CC8, &qword_14F520);
    sub_1D4A4(&qword_1C4D08, &qword_1C4D10, &unk_14F570, &unk_14DAC8);
    sub_8DC40();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4D00);
  }

  return result;
}

uint64_t sub_8DD4C(uint64_t a1)
{
  v2 = type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabel(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_8DDEC()
{
  v0 = sub_14138C();
  __swift_allocate_value_buffer(v0, qword_1D1800);
  __swift_project_value_buffer(v0, qword_1D1800);
  return sub_14139C();
}

uint64_t sub_8DE7C(uint64_t a1)
{
  v2 = sub_14292C();
  v3 = __chkstk_darwin(v2);
  (*(v5 + 16))(&v7 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0), a1, v3);
  return sub_142E1C();
}

uint64_t sub_8DF80(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *a1;
    if (*a1 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_140D5C();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

void *sub_8E040(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_140D5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_8E0E4(uint64_t a1)
{
  type metadata accessor for NowPlayingPlaybackControlsViewModel(319);
  if (v1 <= 0x3F)
  {
    sub_140D5C();
    if (v2 <= 0x3F)
    {
      sub_8E188();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_8E188()
{
  if (!qword_1C4D80)
  {
    v0 = sub_142A0C();
    if (!v1)
    {
      atomic_store(v0, &qword_1C4D80);
    }
  }
}

uint64_t sub_8E1D8()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4C70, &qword_14F4F0);
  sub_1432AC();
  sub_8D8EC();
  sub_8DA88(&unk_1C2680, &type metadata accessor for AutomaticHoverEffect, &protocol conformance descriptor for AutomaticHoverEffect);
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_8E290()
{
  result = qword_1C4DB8;
  if (!qword_1C4DB8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DC0, qword_14F658);
    sub_8DB88();
    sub_8DC94();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4DB8);
  }

  return result;
}

uint64_t sub_8E35C@<X0>(uint64_t a1@<X8>)
{
  result = sub_142FCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_8E43C()
{
  result = qword_1C4E40;
  if (!qword_1C4E40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DC8, &qword_14F748);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E28, &qword_14F7A8);
    type metadata accessor for NowPlayingPlaybackControlsViewModel(255);
    sub_1D4A4(&qword_1C4E30, &qword_1C4E28, &qword_14F7A8, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_8DA88(&qword_1C93E0, type metadata accessor for NowPlayingPlaybackControlsViewModel, &protocol conformance descriptor for NowPlayingPlaybackControlsViewModel);
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C2740, &qword_1C2748, &qword_14CB80, &protocol conformance descriptor for _EnvironmentKeyTransformModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4E40);
  }

  return result;
}

unint64_t sub_8E5B4()
{
  result = qword_1C4E48;
  if (!qword_1C4E48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E38, &unk_14F830);
    sub_8E638();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4E48);
  }

  return result;
}

unint64_t sub_8E638()
{
  result = qword_1C4E50;
  if (!qword_1C4E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4E50);
  }

  return result;
}

unint64_t sub_8E700()
{
  result = qword_1C4E60;
  if (!qword_1C4E60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E20, &qword_14F7A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E10, &qword_14F790);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E08, &qword_14F788);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E38, &unk_14F830);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E00, &qword_14F780);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DF8, &qword_14F778);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DF0, &qword_14F770);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DE8, &qword_14F768);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DE0, &qword_14F760);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DD8, &qword_14F758);
    type metadata accessor for AVAudioApplicationEnhanceDialogueLevel(255);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DD0, &qword_14F750);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4DC8, &qword_14F748);
    sub_8E43C();
    sub_8E5B4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8DA88(&qword_1C4E58, type metadata accessor for AVAudioApplicationEnhanceDialogueLevel, &unk_149F38);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_8DA88(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4E60);
  }

  return result;
}

uint64_t sub_8EA90()
{
  swift_unknownObjectRelease();

  return _swift_deallocObject(v0, 41, 7);
}

uint64_t sub_8EAD0(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D0A8;

  return sub_10E4C8(a1, v4, v5, v6, v7);
}

uint64_t sub_8EBB4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabelText(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_8EC3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 4);
    v5 = v4 >= 2;
    v6 = (v4 + 2147483646) & 0x7FFFFFFF;
    if (v5)
    {
      return (v6 + 1);
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v10 = sub_140D5C();
    v11 = *(*(v10 - 8) + 48);
    v12 = a1 + *(a3 + 24);

    return v11(v12, a2, v10);
  }
}

uint64_t sub_8ECFC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 4) = a2 + 1;
  }

  else
  {
    v7 = sub_140D5C();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_8ED9C(uint64_t a1)
{
  result = sub_140D5C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_8EE24()
{
  result = qword_1C4F30;
  if (!qword_1C4F30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4F38, &qword_14FA28);
    sub_8E700();
    sub_8DA88(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F30);
  }

  return result;
}

unint64_t sub_8EEE4()
{
  result = qword_1C4F40;
  if (!qword_1C4F40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E90, &qword_14F9E0);
    sub_8EF9C();
    sub_1D4A4(&qword_1C2BE8, &unk_1C2BF0, qword_14D118, &protocol conformance descriptor for _ContentShapeModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F40);
  }

  return result;
}

unint64_t sub_8EF9C()
{
  result = qword_1C4F48;
  if (!qword_1C4F48)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E88, &qword_14F9D8);
    sub_8F028();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F48);
  }

  return result;
}

unint64_t sub_8F028()
{
  result = qword_1C4F50;
  if (!qword_1C4F50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E80, &qword_14F9D0);
    sub_8F0B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F50);
  }

  return result;
}

unint64_t sub_8F0B4()
{
  result = qword_1C4F58;
  if (!qword_1C4F58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E78, &qword_14F9C8);
    sub_8F140();
    sub_8F2B4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F58);
  }

  return result;
}

unint64_t sub_8F140()
{
  result = qword_1C4F60;
  if (!qword_1C4F60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E70, &qword_14F9C0);
    sub_8F1F8();
    sub_1D4A4(&qword_1C4F78, &qword_1C4F80, &unk_14FA30, &protocol conformance descriptor for _BackgroundModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F60);
  }

  return result;
}

unint64_t sub_8F1F8()
{
  result = qword_1C4F68;
  if (!qword_1C4F68)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4E68, &qword_14F9B8);
    sub_8DA88(&qword_1C4F70, type metadata accessor for NowPlayingPlaybackControlsWrapper.PickerLabelText, &unk_14FA40);
    sub_48790();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F68);
  }

  return result;
}

unint64_t sub_8F2B4()
{
  result = qword_1C4F88;
  if (!qword_1C4F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4F88);
  }

  return result;
}

unint64_t sub_8F340()
{
  result = qword_1C4FA8;
  if (!qword_1C4FA8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4F98, &qword_14FAE8);
    sub_1D4A4(&qword_1C4FB0, &qword_1C4FA0, &qword_14FAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    sub_1D4A4(&qword_1C3558, &qword_1C3560, &qword_14D7E8, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4FA8);
  }

  return result;
}

uint64_t sub_8F424()
{
  v0 = sub_140D5C();
  v1 = *(v0 - 8);
  v2 = __chkstk_darwin(v0);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v1 + 104))(v4, enum case for NowPlayingPlayerStyle.fullScreen(_:), v0, v2);
  sub_8DA88(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
  sub_1449AC();
  sub_1449AC();
  if (v8[2] == v8[0] && v8[3] == v8[1])
  {
    (*(v1 + 8))(v4, v0);
  }

  else
  {
    v5 = sub_1453BC();
    (*(v1 + 8))(v4, v0);

    if ((v5 & 1) == 0)
    {
      sub_14368C();
      goto LABEL_7;
    }
  }

  sub_1436AC();
LABEL_7:
  sub_1436EC();
  v6 = sub_14370C();

  return v6;
}

unint64_t sub_8F610()
{
  result = qword_1C4FC8;
  if (!qword_1C4FC8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4FC0, &qword_14FB30);
    sub_8F6C8();
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0, &qword_14D110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4FC8);
  }

  return result;
}

unint64_t sub_8F6C8()
{
  result = qword_1C4FD0;
  if (!qword_1C4FD0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4FD8, &qword_14FB38);
    sub_1D4A4(&qword_1C4FE0, &qword_1C4FE8, &unk_14FB40, &protocol conformance descriptor for VStack<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C4FD0);
  }

  return result;
}

uint64_t sub_8F7D4@<X0>(uint64_t a1@<X8>)
{
  result = sub_142FCC();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

unint64_t sub_8F83C()
{
  result = qword_1C5010;
  if (!qword_1C5010)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5018, qword_14FBD0);
    sub_8F340();
    sub_1D4A4(&qword_1C4FB0, &qword_1C4FA0, &qword_14FAF0, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5010);
  }

  return result;
}

unint64_t sub_8F8F8()
{
  result = qword_1C5020;
  if (!qword_1C5020)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4FF8, &qword_14FBB8);
    sub_8F9B0();
    sub_1D4A4(&qword_1C4098, &qword_1C40A0, &qword_14E890, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5020);
  }

  return result;
}

unint64_t sub_8F9B0()
{
  result = qword_1C5028;
  if (!qword_1C5028)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4FF0, &qword_14FB80);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C4FC0, &qword_14FB30);
    sub_8F610();
    swift_getOpaqueTypeConformance2();
    sub_1D4A4(&qword_1C40A8, &qword_1C40B0, &qword_14E898, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5028);
  }

  return result;
}

__n128 __swift_memcpy96_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = result;
  *(a1 + 48) = v4;
  return result;
}

uint64_t sub_8FACC(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 96))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_8FAEC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 96) = v3;
  return result;
}

BOOL sub_8FB40(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[3];
  v9[2] = a1[2];
  v9[3] = v2;
  v3 = a1[5];
  v9[4] = a1[4];
  v9[5] = v3;
  v4 = a1[1];
  v9[0] = *a1;
  v9[1] = v4;
  v5 = a2[3];
  v10[2] = a2[2];
  v10[3] = v5;
  v6 = a2[5];
  v10[4] = a2[4];
  v10[5] = v6;
  v7 = a2[1];
  v10[0] = *a2;
  v10[1] = v7;
  return sub_8FB9C(v9, v10);
}

id BaseTabBarController.init(asPartOf:)(uint64_t a1)
{
  v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteVisible] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView] = 0;
  v3 = &v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_automaticallyPresentedContentItemIdentifier];
  *v3 = 0;
  v3[1] = 0;
  swift_unknownObjectWeakInit();
  v4 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_accessoryView;
  *&v1[v4] = [objc_allocWithZone(UIView) init];
  v5 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_separator;
  v6 = [objc_allocWithZone(UIView) init];
  v7 = [objc_opt_self() _barHairlineShadowColor];
  [v6 setBackgroundColor:v7];

  *&v1[v5] = v6;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers] = _swiftEmptyArrayStorage;
  v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems] = 0;
  *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_objectGraph] = a1;
  v9.receiver = v1;
  v9.super_class = type metadata accessor for BaseTabBarController();
  return objc_msgSendSuper2(&v9, "initWithNibName:bundle:", 0, 0);
}

id BaseTabBarController.paletteView.getter()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView;
  v2 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView);
  }

  else
  {
    type metadata accessor for PaletteVisualEffectView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void BaseTabBarController.layoutSubviewsForCompactSizeClass(metrics:hairlineDimension:)(double a1, double a2, double a3, double a4, double a5)
{
  v8 = [v5 tabBar];
  [v8 frame];
  v10 = v9;
  v12 = v11;
  v14 = v13;
  v16 = v15;

  v65.origin.x = v10;
  v65.origin.y = v12;
  v65.size.width = v14;
  v65.size.height = v16;
  Height = CGRectGetHeight(v65);
  v18 = [v5 tabBar];
  v19 = sub_14489C();
  [v18 _setBackdropViewLayerGroupName:v19];

  v20 = BaseTabBarController.paletteView.getter();
  *&v20[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets + 16] = Height;
  [v20 setNeedsLayout];

  v21 = v5[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteVisible];
  v22 = *&v5[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView];
  v23 = [v5 tabBar];
  [v23 frame];
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;

  v66.origin.x = v25;
  v66.origin.y = v27;
  v66.size.width = v29;
  v66.size.height = v31;
  MinY = CGRectGetMinY(v66);
  v33 = -1.0;
  if (v21)
  {
    v33 = a1;
  }

  v34 = MinY - v33;
  v35 = [v5 tabBar];
  [v35 frame];
  v37 = v36;
  v39 = v38;
  v41 = v40;
  v43 = v42;

  v67.origin.x = v37;
  v67.origin.y = v39;
  v67.size.width = v41;
  v67.size.height = v43;
  [v22 setFrame:{0.0, v34, CGRectGetWidth(v67), Height + a1}];

  v44 = *&v5[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_separator];
  v45 = [v5 tabBar];
  [v45 frame];
  v47 = v46;
  v49 = v48;
  v51 = v50;
  v53 = v52;

  v68.origin.x = v47;
  v68.origin.y = v49;
  v68.size.width = v51;
  v68.size.height = v53;
  [v44 setFrame:{0.0, 0.0, CGRectGetWidth(v68), a5}];
  v54 = *&v5[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers];
  v55 = *(v54 + 16);

  if (v55)
  {
    v56 = 0;
    v57 = (v54 + 32);
    left = UIEdgeInsetsZero.left;
    bottom = UIEdgeInsetsZero.bottom;
    right = UIEdgeInsetsZero.right;
    while (v56 < *(v54 + 16))
    {
      v61 = *v57;
      v62 = [v61 view];
      if (!v62)
      {
        goto LABEL_12;
      }

      v63 = v62;
      ++v56;
      [v62 setLayoutMargins:{UIEdgeInsetsZero.top, left, bottom, right}];

      v57 += 2;
      if (v55 == v56)
      {
        goto LABEL_8;
      }
    }

    __break(1u);
LABEL_12:
    __break(1u);
  }

  else
  {
LABEL_8:
  }
}

void BaseTabBarController.traitCollectionDidChangeToCompactSizeClass()()
{
  v1 = [v0 tabBar];
  v2 = [objc_allocWithZone(UIImage) init];
  [v1 setBackgroundColor:0];
  [v1 setBackgroundImage:v2];
  [v1 setBackgroundEffects:0];
  [v1 setTranslucent:1];

  [v0 _setAccessoryView:0];
  v3 = BaseTabBarController.paletteView.getter();

  v4 = [objc_opt_self() effectWithStyle:10];
  [*&v3[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView] setEffect:v4];

  v5 = [v0 view];
  if (v5)
  {
    v6 = v5;
    v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView];
    v8 = [v0 tabBar];
    [v6 insertSubview:v7 belowSubview:v8];
  }

  else
  {
    __break(1u);
  }
}

Swift::Bool __swiftcall BaseTabBarController.isNowPlayingPresented()()
{
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
  }

  return v1 != 0;
}

unint64_t *sub_9040C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_92C4C(0, v1, 0);
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5168, &qword_14FDA8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5150, &qword_14FD90);
      swift_dynamicCast();
      v5 = v9;
      v7 = _swiftEmptyArrayStorage[2];
      v6 = _swiftEmptyArrayStorage[3];
      if (v7 >= v6 >> 1)
      {
        sub_92C4C((v6 > 1), v7 + 1, 1);
        v5 = v9;
      }

      _swiftEmptyArrayStorage[2] = v7 + 1;
      *&_swiftEmptyArrayStorage[2 * v7 + 4] = v5;
      v3 += 2;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_90548(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_92C0C(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5150, &qword_14FD90);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5158, &qword_14FD98);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_92C0C((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

unint64_t *sub_906CC(uint64_t a1, uint64_t (*a2)(void), void (*a3)(BOOL, unint64_t, uint64_t), uint64_t a4, void (*a5)(uint64_t *, unint64_t *))
{
  v24 = a4;
  v25 = a5;
  v7 = a2(0);
  v8 = *(v7 - 8);
  v9 = __chkstk_darwin(v7);
  v11 = &v22 - v10;
  v12 = *(a1 + 16);
  v13 = _swiftEmptyArrayStorage;
  if (v12)
  {
    v27 = _swiftEmptyArrayStorage;
    v22 = a3;
    (a3)(0, v12, 0, v9);
    v13 = v27;
    v16 = *(v8 + 16);
    v15 = v8 + 16;
    v14 = v16;
    v17 = a1 + ((*(v15 + 64) + 32) & ~*(v15 + 64));
    v23 = *(v15 + 56);
    do
    {
      v14(v11, v17, v7);
      v27 = v13;
      v19 = v13[2];
      v18 = v13[3];
      if (v19 >= v18 >> 1)
      {
        v22(v18 > 1, v19 + 1, 1);
      }

      v26[3] = v7;
      v26[4] = v24;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v26);
      v14(boxed_opaque_existential_1, v11, v7);
      v13 = v27;
      v27[2] = v19 + 1;
      v25(v26, &v13[5 * v19 + 4]);
      (*(v15 - 8))(v11, v7);
      v17 += v23;
      --v12;
    }

    while (v12);
  }

  return v13;
}

char *sub_908B0(unint64_t a1)
{
  if (a1 >> 62)
  {
    v2 = sub_14531C();
  }

  else
  {
    v2 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
  }

  v3 = _swiftEmptyArrayStorage;
  if (!v2)
  {
    return v3;
  }

  v13 = _swiftEmptyArrayStorage;
  result = sub_92D6C(0, v2 & ~(v2 >> 63), 0);
  if ((v2 & 0x8000000000000000) == 0)
  {
    v3 = v13;
    if ((a1 & 0xC000000000000001) != 0)
    {
      for (i = 0; i != v2; ++i)
      {
        sub_1451FC();
        sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
        swift_dynamicCast();
        v13 = v3;
        v7 = v3[2];
        v6 = v3[3];
        if (v7 >= v6 >> 1)
        {
          sub_92D6C((v6 > 1), v7 + 1, 1);
          v3 = v13;
        }

        v3[2] = v7 + 1;
        sub_94574(v12, &v3[4 * v7 + 4]);
      }
    }

    else
    {
      v8 = (a1 + 32);
      sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
      do
      {
        v9 = *v8;
        swift_dynamicCast();
        v13 = v3;
        v11 = v3[2];
        v10 = v3[3];
        if (v11 >= v10 >> 1)
        {
          sub_92D6C((v10 > 1), v11 + 1, 1);
          v3 = v13;
        }

        v3[2] = v11 + 1;
        sub_94574(v12, &v3[4 * v11 + 4]);
        ++v8;
        --v2;
      }

      while (v2);
    }

    return v3;
  }

  __break(1u);
  return result;
}

unint64_t *sub_90AAC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_92D8C(0, v1, 0);
    v3 = a1 + 32;
    do
    {
      swift_unknownObjectRetain();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5190, &unk_14FDD0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5198, &unk_1560A0);
      swift_dynamicCast();
      v4 = v8;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];
      if (v6 >= v5 >> 1)
      {
        sub_92D8C((v5 > 1), v6 + 1, 1);
        v4 = v8;
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      *&_swiftEmptyArrayStorage[2 * v6 + 4] = v4;
      v3 += 16;
      --v1;
    }

    while (v1);
  }

  return _swiftEmptyArrayStorage;
}

id BaseTabBarController.__allocating_init(nibName:bundle:)(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = v3;
  if (a2)
  {
    v6 = sub_14489C();
  }

  else
  {
    v6 = 0;
  }

  v7 = [objc_allocWithZone(v4) initWithNibName:v6 bundle:a3];

  return v7;
}

id BaseTabBarController.__allocating_init(coder:)(void *a1)
{
  v3 = [objc_allocWithZone(v1) initWithCoder:a1];

  return v3;
}

Swift::Void __swiftcall BaseTabBarController.viewDidLoad()()
{
  v1 = v0;
  v12.receiver = v0;
  v12.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v12, "viewDidLoad");
  v2 = [v0 view];
  if (v2)
  {
    v3 = v2;
    sub_14114C();
    v4 = sub_14108C();
    [v3 setBackgroundColor:v4];

    v5 = [v1 tabBar];
    [v5 _setMinimumWidthForHorizontalLayout:400.0];

    v6 = [v1 tabBar];
    v7 = [v1 tabBar];
    v8 = [v7 standardAppearance];

    [v6 setScrollEdgeAppearance:v8];
    v9 = [v1 tabBar];
    v10 = [v1 traitCollection];
    v11 = [v10 horizontalSizeClass];

    [v9 setTintAdjustmentMode:v11 != &dword_0 + 2];
  }

  else
  {
    __break(1u);
  }
}

Swift::Void __swiftcall BaseTabBarController.viewDidLayoutSubviews()()
{
  v1 = v0;
  v73.receiver = v0;
  v73.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v73, "viewDidLayoutSubviews");
  if ((os_feature_enabled_red_sun() & 1) == 0)
  {
    v2 = BaseTabBarController.paletteView.getter();
    v3 = *&v2[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView];

    v4 = sub_14489C();
    [v3 _setGroupName:v4];

    v5 = [v1 traitCollection];
    [v5 displayScale];
    v7 = v6;

    v8 = 1.0 / v7;
    v9 = [v1 traitCollection];
    v10 = [v9 horizontalSizeClass];

    v11 = [v1 traitCollection];
    v12 = [v11 userInterfaceIdiom];

    if (!v12 || v10 < 2)
    {
      goto LABEL_11;
    }

    if (v10 != &dword_0 + 2)
    {
      sub_144C3C();
      sub_2B860(0, &qword_1C5080, OS_os_log_ptr);
      v39 = sub_14508C();
      sub_1423BC();

LABEL_11:
      BaseTabBarController.layoutSubviewsForCompactSizeClass(metrics:hairlineDimension:)(64.0, v13, v14, v15, v8);
      return;
    }

    v16 = [v1 traitCollection];
    v17 = [v16 layoutDirection];

    v18 = 0.0;
    if (v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteVisible] == 1)
    {
      v19 = [v1 view];
      if (!v19)
      {
LABEL_30:
        __break(1u);
        goto LABEL_31;
      }

      v20 = v19;
      [v19 frame];
      v22 = v21;
      v24 = v23;
      v26 = v25;
      v28 = v27;

      v74.origin.x = v22;
      v74.origin.y = v24;
      v74.size.width = v26;
      v74.size.height = v28;
      if (CGRectGetWidth(v74) + -414.0 >= 320.0)
      {
        v18 = 414.0;
      }

      else
      {
        v29 = [v1 view];
        if (!v29)
        {
LABEL_31:
          __break(1u);
          return;
        }

        v30 = v29;
        [v29 frame];
        v32 = v31;
        v34 = v33;
        v36 = v35;
        v38 = v37;

        v75.origin.x = v32;
        v75.origin.y = v34;
        v75.size.width = v36;
        v75.size.height = v38;
        v18 = CGRectGetWidth(v75) * 0.5;
      }
    }

    v40 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_accessoryView];
    [v40 frame];
    Height = CGRectGetHeight(v76);
    v42 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView;
    v43 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView];
    *&v43[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets + 16] = 0;
    [v43 setNeedsLayout];
    if (v17 == &dword_0 + 1)
    {
      v44 = v18;
    }

    else
    {
      v44 = 0.0;
    }

    if (v17 == &dword_0 + 1)
    {
      v45 = 0.0;
    }

    else
    {
      v45 = v8;
    }

    [*&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_separator] setFrame:{v44, 4.0, v8, Height + -8.0}];
    [v40 frame];
    [v40 setFrame:?];
    v46 = [v1 tabBar];
    [v46 safeAreaInsets];

    v47 = *&v1[v42];
    v72 = v40;
    [v40 bounds];
    [v47 setFrame:{UIEdgeInsetsInsetRect_0(v48, v49, v50, v51, 0.0, v45)}];

    v52 = *&v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers];
    v53 = *(v52 + 16);

    if (v53)
    {
      v54 = 0;
      v55 = (v52 + 32);
      while (v54 < *(v52 + 16))
      {
        v56 = *v55;
        v57 = [v56 view];
        if (!v57)
        {
          goto LABEL_29;
        }

        v58 = v57;
        ++v54;
        v59 = [v1 tabBar];
        [v59 safeAreaInsets];
        v61 = v60;
        v63 = v62;
        v65 = v64;
        v67 = v66;

        [v58 setLayoutMargins:{v61, v63, v65, v67}];
        v55 += 2;
        if (v53 == v54)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

LABEL_25:

    [v72 frame];
    if (v18 != v69 || Height != v68)
    {
      v70 = [v1 tabBar];
      [v70 setNeedsLayout];

      v71 = [v1 tabBar];
      [v71 layoutIfNeeded];
    }
  }
}

Swift::Void __swiftcall BaseTabBarController.traitCollectionDidChange(_:)(UITraitCollection_optional a1)
{
  v2 = v1;
  isa = a1.value.super.isa;
  v27.receiver = v1;
  v27.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v27, "traitCollectionDidChange:", isa);
  v4 = [v1 tabBar];
  v5 = [v2 traitCollection];
  v6 = [v5 horizontalSizeClass];

  [v4 setTintAdjustmentMode:v6 != &dword_0 + 2];
  v7 = [v2 traitCollection];
  v8 = [objc_allocWithZone(UITabBarAppearance) init];
  [v8 configureWithDefaultBackground];
  if (os_feature_enabled_red_sun())
  {
    goto LABEL_14;
  }

  v9 = [v7 horizontalSizeClass];
  if (v9 >= 2)
  {
    if (v9 == &dword_0 + 2)
    {
      v10 = [v2 tabBar];
      v11 = [objc_allocWithZone(UITabBar) init];
      v26 = [v11 backgroundColor];
      v12 = [v11 backgroundEffects];
      if (v12)
      {
        v13 = v12;
        sub_2B860(0, &qword_1C5090, UIVisualEffect_ptr);
        v14 = sub_1449DC();
      }

      else
      {
        v14 = 0;
      }

      v16 = [v11 backgroundImage];
      v17 = [v11 isTranslucent];

      [v10 setBackgroundColor:v26];
      [v10 setBackgroundImage:v16];
      if (v14)
      {
        sub_2B860(0, &qword_1C5090, UIVisualEffect_ptr);

        v18.super.isa = sub_1449CC().super.isa;
      }

      else
      {
        v18.super.isa = 0;
      }

      [v10 setBackgroundEffects:v18.super.isa];

      [v10 setTranslucent:v17];

      v19 = *&v2[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_accessoryView];
      [v2 _setAccessoryView:v19];
      v20 = BaseTabBarController.paletteView.getter();
      [*&v20[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView] setEffect:0];

      [v19 addSubview:*&v2[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView]];
      goto LABEL_13;
    }

    sub_144C3C();
    sub_2B860(0, &qword_1C5080, OS_os_log_ptr);
    v15 = sub_14508C();
    sub_1423BC();
  }

  BaseTabBarController.traitCollectionDidChangeToCompactSizeClass()();
LABEL_13:
  v21 = [v2 tabBar];
  [v21 setStandardAppearance:v8];

LABEL_14:
  if (isa)
  {
    v22 = [(objc_class *)isa horizontalSizeClass];
  }

  else
  {
    v22 = 0;
  }

  v23 = [v7 horizontalSizeClass];
  if (isa && v22 == v23)
  {
    goto LABEL_21;
  }

  v24 = [v2 view];
  if (v24)
  {
    v25 = v24;
    [v24 setNeedsLayout];

LABEL_21:
    return;
  }

  __break(1u);
}

Swift::Void __swiftcall BaseTabBarController._setViewControllers(_:animated:)(Swift::OpaquePointer _, Swift::Bool animated)
{
  v4 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers;
  v5 = *&v2[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers];
  v6 = *(v5 + 16);
  if (v6)
  {

    v7 = 32;
    do
    {
      [*(v5 + v7) removeFromParentViewController];
      v7 += 16;
      --v6;
    }

    while (v6);
  }

  sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
  isa = sub_1449CC().super.isa;
  v12.receiver = v2;
  v12.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v12, "_setViewControllers:animated:", isa, animated);

  v9 = *&v2[v4];
  v10 = *(v9 + 16);
  if (v10)
  {

    v11 = 32;
    do
    {
      [v2 addChildViewController:*(v9 + v11)];
      v11 += 16;
      --v10;
    }

    while (v10);
  }
}

void *BaseTabBarController._viewControllersInTabBar()()
{
  v1 = [v0 childViewControllers];
  sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
  v2 = sub_1449DC();

  v3 = v2;
  if (v2 >> 62)
  {
    goto LABEL_23;
  }

  for (i = *(&dword_10 + (v2 & 0xFFFFFFFFFFFFFF8)); i; v3 = v21)
  {
    v5 = 0;
    v26 = i;
    v27 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers;
    v6 = v3 & 0xC000000000000001;
    v7 = v3 & 0xFFFFFFFFFFFFFF8;
    v8 = v3 + 32;
    v24 = v3 & 0xFFFFFFFFFFFFFF8;
    v25 = v3 & 0xC000000000000001;
    v23 = v3 + 32;
    while (1)
    {
      if (v6)
      {
        v3 = sub_1451FC();
      }

      else
      {
        if (v5 >= *(v7 + 16))
        {
          goto LABEL_22;
        }

        v3 = *(v8 + 8 * v5);
      }

      v9 = v3;
      if (__OFADD__(v5++, 1))
      {
        break;
      }

      swift_getObjectType();
      if (swift_conformsToProtocol2() && v9)
      {
        v11 = *(v28 + v27);
        v12 = *(v11 + 16);
        v13 = v9;

        v14 = -v12;
        v15 = -1;
        v16 = 32;
        while (1)
        {
          if (v14 + v15 == -1)
          {

            v6 = v25;
            i = v26;
            v8 = v23;
            v7 = v24;
            goto LABEL_5;
          }

          if (++v15 >= *(v11 + 16))
          {
            break;
          }

          v17 = v16 + 16;
          v18 = *(v11 + v16);
          sub_2B860(0, &qword_1C95B0, NSObject_ptr);
          v19 = v18;
          v20 = sub_144FFC();

          v16 = v17;
          if (v20)
          {

            v6 = v25;
            i = v26;
            v8 = v23;
            v7 = v24;
            goto LABEL_6;
          }
        }

        __break(1u);
        break;
      }

LABEL_5:
      sub_14522C();
      sub_14525C();
      sub_14526C();
      v3 = sub_14523C();
LABEL_6:
      if (v5 == i)
      {
        goto LABEL_24;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v21 = v3;
    i = sub_14531C();
  }

LABEL_24:

  return _swiftEmptyArrayStorage;
}

Swift::Void __swiftcall BaseTabBarController._rebuildTabBarItems(animated:)(Swift::Bool animated)
{
  v3 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v5, "_rebuildTabBarItemsAnimated:", animated);
  v1[v3] = v4;
}

Swift::Void __swiftcall BaseTabBarController._updateLayout(for:)(UITraitCollection_optional a1)
{
  isa = a1.value.super.isa;
  v3 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems;
  v4 = v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems];
  v1[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems] = 1;
  v5.receiver = v1;
  v5.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v5, "_updateLayoutForTraitCollection:", isa);
  v1[v3] = v4;
}

id BaseTabBarController.mutableChildViewControllers.getter()
{
  if (*(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) == 1)
  {
    v1 = [v0 _viewControllersInTabBar];
    sub_2B860(0, &qword_1C89D0, UIViewController_ptr);
    v2 = sub_1449DC();

    sub_908B0(v2);

    v3 = objc_allocWithZone(NSMutableArray);
    isa = sub_1449CC().super.isa;

    v5 = [v3 initWithArray:isa];

    return v5;
  }

  else
  {
    v7.receiver = v0;
    v7.super_class = type metadata accessor for BaseTabBarController();
    return objc_msgSendSuper2(&v7, "mutableChildViewControllers");
  }
}

void BaseTabBarController.mutableChildViewControllers.setter(void *a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for BaseTabBarController();
  objc_msgSendSuper2(&v3, "setMutableChildViewControllers:", a1);
}

id BaseTabBarController.__allocating_init(tabs:)(uint64_t a1)
{
  v2 = objc_allocWithZone(v1);
  sub_2B860(0, &qword_1C5098, UITab_ptr);
  isa = sub_1449CC().super.isa;

  v4 = [v2 initWithTabs:isa];

  return v4;
}

id BaseTabBarController.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BaseTabBarController();
  return objc_msgSendSuper2(&v2, "dealloc");
}

char *sub_923A4(__n128 a1, double a2, double a3, double a4)
{
  v8 = a1.n128_f64[0];
  ObjectType = swift_getObjectType();
  v10 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView;
  *&v4[v10] = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v11 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentView;
  *&v4[v11] = [objc_allocWithZone(UIView) init];
  v12 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_separator;
  *&v4[v12] = sub_9258C();
  v13 = &v4[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets];
  v14 = *&UIEdgeInsetsZero.bottom;
  *v13 = *&UIEdgeInsetsZero.top;
  *(v13 + 1) = v14;
  v20.receiver = v4;
  v20.super_class = ObjectType;
  v15 = objc_msgSendSuper2(&v20, "initWithFrame:", v8, a2, a3, a4);
  [v15 setClipsToBounds:1];
  v16 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView;
  [v15 addSubview:*&v15[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView]];
  v17 = [*&v15[v16] contentView];
  [v17 addSubview:*&v15[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentView]];

  v18 = [*&v15[v16] contentView];
  [v18 addSubview:*&v15[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_separator]];

  return v15;
}

id sub_9258C()
{
  v0 = [objc_opt_self() effectWithStyle:1100];
  v1 = [objc_opt_self() effectForBlurEffect:v0 style:7];
  v2 = [objc_allocWithZone(UIVisualEffectView) initWithEffect:v1];
  sub_2B860(0, &unk_1C8170, UIColor_ptr);
  v3 = objc_opt_self();
  v4 = v2;
  v5 = [v3 _barHairlineShadowColor];
  v6 = [v3 whiteColor];
  v7 = [v6 colorWithAlphaComponent:0.3];

  v8 = sub_144F9C();
  [v4 setBackgroundColor:v8];

  return v4;
}

void sub_92708(__n128 a1)
{
  v2 = v1;
  v25.receiver = v1;
  v25.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v25, "layoutSubviews");
  v3 = [v1 traitCollection];
  [v1 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;
  [*&v1[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView] setFrame:?];
  v12 = *&v1[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentView];
  v13 = v5;
  v14 = v7;
  [v12 setFrame:{UIEdgeInsetsInsetRect_0(v5, v7, v9, v11, *&v1[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets], *&v1[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets + 8])}];
  [v3 displayScale];
  v16 = v15;
  v17 = [v3 horizontalSizeClass];
  if (v17 < 2)
  {
    goto LABEL_5;
  }

  if (v17 != &dword_0 + 2)
  {
    sub_144C3C();
    sub_2B860(0, &qword_1C5080, OS_os_log_ptr);
    v24 = sub_14508C();
    sub_1423BC();

LABEL_5:
    v18 = *&v2[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_separator];
    [v12 frame];
    MaxY = CGRectGetMaxY(v27);
    [v2 bounds];
    goto LABEL_6;
  }

  v18 = *&v1[OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_separator];
  [v12 frame];
  MaxY = CGRectGetMinY(v26);
  v20 = v13;
  v21 = v14;
  v22 = v9;
  v23 = v11;
LABEL_6:
  [v18 setFrame:{0.0, MaxY, CGRectGetWidth(*&v20), 1.0 / v16}];
}

id sub_92A60(int a1, char *a2, uint64_t a3, void *a4)
{
  v7 = [a2 tabBar];
  [v7 setHidden:0];

  v8 = BaseTabBarController.paletteView.getter();
  [v8 setHidden:0];

  [*(*&a2[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView] + OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView) setEffect:a3];

  return [a4 removeFromSuperview];
}

void *sub_92B2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_92DEC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92B4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93880(a1, a2, a3, *v3, &qword_1C5180, &qword_14FDC0, &qword_1C5188, &qword_14FDC8);
  *v3 = result;
  return result;
}

void *sub_92B8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_92F20(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_92BAC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_930F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92BCC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93628(a1, a2, a3, *v3, &qword_1C5100, &unk_155F80, &qword_1C5108, &qword_14FD40);
  *v3 = result;
  return result;
}

void *sub_92C0C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93880(a1, a2, a3, *v3, &qword_1C5160, &qword_14FDA0, &qword_1C5158, &qword_14FD98);
  *v3 = result;
  return result;
}

void *sub_92C4C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93880(a1, a2, a3, *v3, &qword_1C5170, &unk_14FDB0, &qword_1C5150, &qword_14FD90);
  *v3 = result;
  return result;
}

char *sub_92C8C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93308(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92CAC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93628(a1, a2, a3, *v3, &qword_1C5140, &qword_14FD80, &qword_1C5148, &qword_14FD88);
  *v3 = result;
  return result;
}

char *sub_92CEC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93428(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_92D0C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_9351C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92D2C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93628(a1, a2, a3, *v3, &qword_1C4A68, &unk_14FD70, &qword_1C5138, &qword_156000);
  *v3 = result;
  return result;
}

char *sub_92D6C(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93770(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92D8C(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93880(a1, a2, a3, *v3, &qword_1C51A0, &unk_14FDE0, &qword_1C5198, &unk_1560A0);
  *v3 = result;
  return result;
}

char *sub_92DCC(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_93204(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_92DEC(void *result, int64_t a2, char a3, void *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5120, &qword_14FD58);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    v12 = v11 - 32;
    if (v11 < 32)
    {
      v12 = v11 - 25;
    }

    v10[2] = v8;
    v10[3] = 2 * (v12 >> 3);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 8 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5128, &qword_14FD60);
    swift_arrayInitWithCopy();
  }

  return v10;
}

void *sub_92F20(void *result, int64_t a2, char a3, void *a4)
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
LABEL_30:
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

  if (!v9)
  {
    v13 = _swiftEmptyArrayStorage;
    goto LABEL_19;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C51A8, &qword_14FDF8);
  v10 = *(sub_1417AC() - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_29;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(sub_1417AC() - 8);
  if (v5)
  {
    if (v13 < a4 || (v16 = (*(v15 + 80) + 32) & ~*(v15 + 80), v13 + v16 >= a4 + v16 + *(v15 + 72) * v8))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v13 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

char *sub_930F8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5178, &qword_155F90);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_93204(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3D08, &qword_14FDF0);
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
    v10 = _swiftEmptyArrayStorage;
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

char *sub_93308(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5110, &qword_14FD48);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 24);
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
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

char *sub_93428(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5118, &qword_14FD50);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = _swiftEmptyArrayStorage;
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

char *sub_9351C(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5130, &qword_14FD68);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_93628(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
    v16 = _swiftEmptyArrayStorage;
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

char *sub_93770(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C6D80, &qword_152840);
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
    v10 = _swiftEmptyArrayStorage;
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

void *sub_93880(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t *a7, uint64_t *a8)
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
      v18 = v17 - 17;
    }

    v16[2] = v14;
    v16[3] = 2 * (v18 >> 4);
  }

  else
  {
    v16 = _swiftEmptyArrayStorage;
  }

  if (v11)
  {
    if (v16 != a4 || v16 + 4 >= &a4[2 * v14 + 4])
    {
      memmove(v16 + 4, a4 + 4, 16 * v14);
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

void sub_939B4(void *a1, char *a2)
{
  v3 = v2;
  v6 = [a2 isReversed];
  v7 = BaseTabBarController.paletteView.getter();
  v69 = [v7 superview];

  v8 = [v3 view];
  if (v69)
  {
    if (v8)
    {
      v67 = v8;
      sub_2B860(0, &qword_1C47C0, UIView_ptr);
      v9 = sub_144FFC();

      if ((v9 & 1) == 0)
      {
        return;
      }

LABEL_6:
      if (v6)
      {
        v10 = [v3 selectedViewController];
        if (v10)
        {
          v11 = v10;
          v12 = [v10 contentScrollView];

          if (v12)
          {
            if ([v12 isDecelerating])
            {
              [v12 _stopScrollingAndZoomingAnimations];
            }
          }
        }
      }

      v13 = [v3 view];
      if (v13)
      {
        v14 = v13;
        v15 = [v13 snapshotViewAfterScreenUpdates:0];

        if (!v15)
        {
          return;
        }

        v16 = [v3 tabBar];
        [v16 setHidden:1];

        v17 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView;
        [*&v3[OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView] setHidden:1];

        v18 = [objc_opt_self() effectWithStyle:10];
        [*(*&v3[v17] + OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView) setEffect:0];
        v19 = [v3 view];
        if (v19)
        {
          v20 = v19;
          v21 = [v3 tabBar];
          [v21 bounds];
          v23 = v22;
          v25 = v24;
          v27 = v26;
          v29 = v28;

          v30 = [v3 tabBar];
          [v20 convertRect:v30 fromCoordinateSpace:{v23, v25, v27, v29}];
          v32 = v31;
          v34 = v33;
          v36 = v35;
          v38 = v37;

          v73.origin.x = v32;
          v73.origin.y = v34;
          v73.size.width = v36;
          v73.size.height = v38;
          Height = CGRectGetHeight(v73);
          v74.origin.x = v32;
          v74.origin.y = v34;
          v74.size.width = v36;
          v74.size.height = v38;
          v75 = CGRectOffset(v74, 0.0, Height);
          y = v75.origin.y;
          x = v75.origin.x;
          v65 = v75.size.height;
          width = v75.size.width;
          if (v6)
          {
            v40 = v75.origin.x;
          }

          else
          {
            v40 = v32;
          }

          if (v6)
          {
            v41 = v75.origin.y;
          }

          else
          {
            v41 = v34;
          }

          if (v6)
          {
            v42 = v75.size.width;
          }

          else
          {
            v42 = v36;
          }

          if (v6)
          {
            v43 = v75.size.height;
          }

          else
          {
            v43 = v38;
          }

          v44 = [objc_allocWithZone(UIView) initWithFrame:{v40, v41, v42, v43}];
          [v44 setClipsToBounds:1];
          [v44 addSubview:v15];
          [v44 bounds];
          MaxY = CGRectGetMaxY(v76);
          [v15 bounds];
          v46 = MaxY - CGRectGetHeight(v77);
          [v15 frame];
          [v15 setFrame:{0.0, v46}];
          v47 = [a1 containerView];
          [v47 addSubview:v44];

          v48 = *&a2[OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_easingAnimator];
          v49 = swift_allocObject();
          *(v49 + 16) = v44;
          *(v49 + 24) = v6;
          *(v49 + 32) = v32;
          *(v49 + 40) = v34;
          *(v49 + 48) = v36;
          *(v49 + 56) = v38;
          *(v49 + 64) = x;
          *(v49 + 72) = y;
          *(v49 + 80) = width;
          *(v49 + 88) = v65;
          *(v49 + 96) = v15;
          aBlock[4] = sub_94424;
          aBlock[5] = v49;
          aBlock[0] = _NSConcreteStackBlock;
          aBlock[1] = 1107296256;
          aBlock[2] = sub_11D5C0;
          aBlock[3] = &block_descriptor_8;
          v50 = _Block_copy(aBlock);
          v51 = v48;
          v52 = v44;
          v53 = v15;

          [v51 addAnimations:v50];
          _Block_release(v50);

          v54 = swift_allocObject();
          v54[2] = v3;
          v54[3] = v18;
          v54[4] = v52;
          v55 = swift_allocObject();
          *(v55 + 16) = sub_94530;
          *(v55 + 24) = v54;
          v56 = OBJC_IVAR____TtC12NowPlayingUI38PalettePresentationAnimationController_completionBlocks;
          swift_beginAccess();
          v57 = *&a2[v56];
          v58 = v52;
          v59 = v3;
          v60 = v18;

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          *&a2[v56] = v57;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            v57 = sub_134820(0, v57[2] + 1, 1, v57);
            *&a2[v56] = v57;
          }

          v63 = v57[2];
          v62 = v57[3];
          if (v63 >= v62 >> 1)
          {
            v57 = sub_134820((v62 > 1), v63 + 1, 1, v57);
          }

          v57[2] = v63 + 1;
          v64 = &v57[2 * v63];
          v64[4] = sub_7B7F0;
          v64[5] = v55;
          *&a2[v56] = v57;
          swift_endAccess();

          return;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      return;
    }

    v8 = v69;
  }

  else if (!v8)
  {
    goto LABEL_6;
  }
}

void _s12NowPlayingUI20BaseTabBarControllerC7nibName6bundleACSSSg_So8NSBundleCSgtcfc_0()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteVisible) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_automaticallyPresentedContentItemIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_accessoryView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_separator;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = [objc_opt_self() _barHairlineShadowColor];
  [v4 setBackgroundColor:v5];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 0;
  sub_1452FC();
  __break(1u);
}

void _s12NowPlayingUI20BaseTabBarControllerC5coderACSgSo7NSCoderC_tcfc_0()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteVisible) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController____lazy_storage___paletteView) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_automaticallyPresentedContentItemIdentifier);
  *v1 = 0;
  v1[1] = 0;
  swift_unknownObjectWeakInit();
  v2 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_accessoryView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_separator;
  v4 = [objc_allocWithZone(UIView) init];
  v5 = [objc_opt_self() _barHairlineShadowColor];
  [v4 setBackgroundColor:v5];

  *(v0 + v3) = v4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_paletteViewControllers) = _swiftEmptyArrayStorage;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI20BaseTabBarController_isRebuildingTabBarItems) = 0;
  sub_1452FC();
  __break(1u);
}

void sub_9430C()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_backgroundView;
  *(v0 + v1) = [objc_allocWithZone(UIVisualEffectView) initWithEffect:0];
  v2 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentView;
  *(v0 + v2) = [objc_allocWithZone(UIView) init];
  v3 = OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_separator;
  *(v0 + v3) = sub_9258C();
  v4 = (v0 + OBJC_IVAR____TtC12NowPlayingUI23PaletteVisualEffectView_contentInsets);
  v5 = *&UIEdgeInsetsZero.bottom;
  *v4 = *&UIEdgeInsetsZero.top;
  v4[1] = v5;
  sub_1452FC();
  __break(1u);
}

uint64_t sub_943E4()
{

  return _swift_deallocObject(v0, 104, 7);
}

id sub_94424()
{
  v1 = *(v0 + 96);
  if (*(v0 + 24))
  {
    v2 = (v0 + 32);
  }

  else
  {
    v2 = (v0 + 64);
  }

  v3 = *v2;
  if (*(v0 + 24))
  {
    v4 = (v0 + 40);
  }

  else
  {
    v4 = (v0 + 72);
  }

  v5 = *v4;
  if (*(v0 + 24))
  {
    v6 = (v0 + 48);
  }

  else
  {
    v6 = (v0 + 80);
  }

  v7 = *v6;
  if (*(v0 + 24))
  {
    v8 = (v0 + 56);
  }

  else
  {
    v8 = (v0 + 88);
  }

  if (*(v0 + 24))
  {
    v9 = 1.0;
  }

  else
  {
    v9 = 0.0;
  }

  [*(v0 + 16) setFrame:{v3, v5, v7, *v8}];

  return [v1 setAlpha:v9];
}

uint64_t block_copy_helper_8(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_944E8()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9453C()
{

  return _swift_deallocObject(v0, 32, 7);
}

_OWORD *sub_94574(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

id sub_94594(void *a1)
{
  v2 = v1;
  v4 = sub_13A088(_swiftEmptyArrayStorage);
  v5 = [objc_opt_self() defaultParagraphStyle];
  [v5 mutableCopy];

  sub_14514C();
  swift_unknownObjectRelease();
  sub_958A8();
  swift_dynamicCast();
  [v29 setLineBreakMode:*(v2 + 32)];
  [v29 setLineSpacing:*(v2 + 40)];
  v6 = [objc_opt_self() sharedApplication];
  v7 = [v6 preferredContentSizeCategory];

  LODWORD(v6) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  v8 = sub_13E818();
  v10 = 56;
  if (v6)
  {
    v10 = 60;
  }

  if ((v8 & 1) == 0)
  {
    v10 = 52;
  }

  LODWORD(v9) = *(v2 + v10);
  [v29 setHyphenationFactor:v9];
  [v29 setAlignment:sub_958F4(*(v2 + 24))];
  v11 = NSParagraphStyleAttributeName;
  v12 = v29;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = v4;
  sub_137BB4(v12, v11, isUniquelyReferenced_nonNull_native);

  v14 = *v2;
  v15 = NSFontAttributeName;
  v16 = [v14 preferredFont];
  v17 = swift_isUniquelyReferenced_nonNull_native();
  v28 = v4;
  sub_137BB4(v16, v15, v17);

  v18 = *(v2 + 16);
  v28 = v18;
  if (!v18)
  {
    v18 = a1;
  }

  sub_95998(&v28, &v29);
  [v18 alphaComponent];
  if (v19 > 0.0)
  {
    v20 = NSBackgroundColorAttributeName;
    v21 = v18;
    v22 = swift_isUniquelyReferenced_nonNull_native();
    v29 = v4;
    sub_137BB4(v21, v20, v22);

    v4 = v29;
  }

  v23 = *(v2 + 8);
  v29 = v23;
  if (!v23)
  {
    v23 = a1;
  }

  v24 = NSForegroundColorAttributeName;
  sub_95998(&v29, &v27);
  v25 = swift_isUniquelyReferenced_nonNull_native();
  v27 = v4;
  sub_137BB4(v23, v24, v25);

  return v27;
}

uint64_t sub_948A8(char a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3150, &unk_14D4A0);
  __chkstk_darwin(v6 - 8);
  v8 = v12 - v7;
  if (a1)
  {
    v12[0] = a2;
    v12[1] = a3;
    sub_140ADC();
    v9 = sub_140AEC();
    (*(*(v9 - 8) + 56))(v8, 0, 1, v9);
    sub_9CCC();
    if (a1 == 1)
    {
      v10 = sub_1450FC();
    }

    else
    {
      v10 = sub_1450EC();
    }

    a2 = v10;
    sub_95840(v8);
  }

  else
  {
  }

  return a2;
}

uint64_t sub_94A34(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C51B8, &qword_14FEA8);
    v2 = sub_14535C();
  }

  else
  {
    v2 = &_swiftEmptyDictionarySingleton;
  }

  v3 = 1 << *(a1 + 32);
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  else
  {
    v4 = -1;
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;
  v7 = (v2 + 8);

  v9 = 0;
  while (v5)
  {
LABEL_15:
    *&v30[0] = *(*(a1 + 48) + ((v9 << 9) | (8 * __clz(__rbit64(v5)))));
    v13 = *&v30[0];
    type metadata accessor for Key(0);
    v14 = v13;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    swift_dynamicCast();
    v26 = v22;
    v27 = v23;
    v28 = v24;
    sub_94574(&v25, v29);
    v22 = v26;
    v23 = v27;
    v24 = v28;
    sub_94574(v29, v30);
    result = sub_14519C(v2[5]);
    v15 = -1 << *(v2 + 32);
    v16 = result & ~v15;
    v17 = v16 >> 6;
    if (((-1 << v16) & ~*&v7[8 * (v16 >> 6)]) == 0)
    {
      v18 = 0;
      v19 = (63 - v15) >> 6;
      while (++v17 != v19 || (v18 & 1) == 0)
      {
        v20 = v17 == v19;
        if (v17 == v19)
        {
          v17 = 0;
        }

        v18 |= v20;
        v21 = *&v7[8 * v17];
        if (v21 != -1)
        {
          v10 = __clz(__rbit64(~v21)) + (v17 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v10 = __clz(__rbit64((-1 << v16) & ~*&v7[8 * (v16 >> 6)])) | v16 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    v5 &= v5 - 1;
    *&v7[(v10 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v10;
    v11 = v2[6] + 40 * v10;
    *v11 = v22;
    *(v11 + 16) = v23;
    *(v11 + 32) = v24;
    result = sub_94574(v30, (v2[7] + 32 * v10));
    ++v2[2];
  }

  while (1)
  {
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v12 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v12);
    ++v9;
    if (v5)
    {
      v9 = v12;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

void sub_94D00(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C51C0, &unk_14FEB0);
    v1 = sub_14535C();
  }

  else
  {
    v1 = &_swiftEmptyDictionarySingleton;
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  while (v4)
  {
LABEL_15:
    v10 = (v7 << 9) | (8 * __clz(__rbit64(v4)));
    v11 = *(*(a1 + 48) + v10);
    v23 = *(*(a1 + 56) + v10);
    v12 = v11;
    swift_unknownObjectRetain();
    swift_dynamicCast();
    sub_94574((v24 + 8), v22);
    sub_94574(v22, v24);
    sub_1448DC();
    sub_14545C();
    sub_14492C();
    v13 = sub_1454AC();

    v14 = -1 << v1[32];
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*&v6[8 * (v15 >> 6)]) == 0)
    {
      v17 = 0;
      v18 = (63 - v14) >> 6;
      while (++v16 != v18 || (v17 & 1) == 0)
      {
        v19 = v16 == v18;
        if (v16 == v18)
        {
          v16 = 0;
        }

        v17 |= v19;
        v20 = *&v6[8 * v16];
        if (v20 != -1)
        {
          v8 = __clz(__rbit64(~v20)) + (v16 << 6);
          goto LABEL_9;
        }
      }

      goto LABEL_26;
    }

    v8 = __clz(__rbit64((-1 << v15) & ~*&v6[8 * (v15 >> 6)])) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_9:
    *&v6[(v8 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v8;
    v4 &= v4 - 1;
    *(*(v1 + 6) + 8 * v8) = v12;
    sub_94574(v24, (*(v1 + 7) + 32 * v8));
    ++*(v1 + 2);
  }

  while (1)
  {
    v9 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v9 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v9);
    ++v7;
    if (v4)
    {
      v7 = v9;
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_94FA8(uint64_t a1, uint64_t a2)
{
  v4 = *a1;
  if (v4 == *a2 || (result = [v4 isEqual:?], result))
  {
    v6 = *(a1 + 8);
    v7 = *(a2 + 8);
    if (v6)
    {
      if (!v7)
      {
        return 0;
      }

      if (v6 != v7)
      {
        result = [v6 isEqual:?];
        if (!result)
        {
          return result;
        }
      }
    }

    else if (v7)
    {
      return 0;
    }

    v8 = *(a1 + 16);
    v9 = *(a2 + 16);
    if (v8)
    {
      if (v9)
      {
        if (v8 != v9)
        {
          result = [v8 isEqual:?];
          if (!result)
          {
            return result;
          }
        }

        goto LABEL_15;
      }
    }

    else if (!v9)
    {
LABEL_15:
      if (*(a1 + 24) == *(a2 + 24) && *(a1 + 32) == *(a2 + 32) && (sub_141AFC() & 1) != 0 && *(a1 + 52) == *(a2 + 52))
      {
        return (*(a1 + 48) == *(a2 + 48));
      }
    }

    return 0;
  }

  return result;
}

void sub_950A4(uint64_t a1)
{
  sub_14546C([*v1 hash]);
  if (*(v1 + 8))
  {
    sub_14500C();
    if (*(v1 + 16))
    {
LABEL_3:
      sub_14500C();
      goto LABEL_6;
    }
  }

  else
  {
    sub_14546C(0xF4240uLL);
    if (*(v1 + 16))
    {
      goto LABEL_3;
    }
  }

  sub_14546C(0xF4240uLL);
LABEL_6:
  sub_14546C(*(v1 + 24));
  sub_14546C(*(v1 + 32));
  v2 = sub_141ADC();
  sub_14546C(v2);
  v3 = *(v1 + 52);
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  sub_14548C(LODWORD(v3));
  sub_14546C(*(v1 + 48));
}

Swift::Int sub_95174()
{
  sub_14545C();
  sub_950A4(v1);
  return sub_1454AC();
}

Swift::Int sub_951B8(uint64_t a1)
{
  sub_14545C();
  sub_950A4(v2);
  return sub_1454AC();
}

unint64_t sub_951FC()
{
  result = qword_1C51B0;
  if (!qword_1C51B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C51B0);
  }

  return result;
}

unint64_t sub_95250@<X0>(unint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_95D40(*a1);
  *a2 = result;
  return result;
}

unint64_t *sub_95284@<X0>(unint64_t *result@<X0>, _BYTE *a2@<X8>)
{
  v2 = *result;
  if (*result >= 3)
  {
    LOBYTE(v2) = 3;
  }

  *a2 = v2;
  return result;
}

Swift::Int sub_952A8()
{
  v3 = v0[2];
  v4 = v0[1];
  v5 = v0[3];
  v6 = *v0;
  sub_14545C();
  if ((v5 & 0x80000000) != 0)
  {
    v1 = sub_14497C();
    sub_14546C(~v1);
  }

  else
  {
    v8 = v6;
    v9 = v4;
    v10 = v3;
    v11 = v5;
    sub_950A4(v7);
  }

  return sub_1454AC();
}

void sub_95338(uint64_t a1)
{
  if ((*(v1 + 48) & 0x80000000) != 0)
  {
    v2 = sub_14497C();
    sub_14546C(~v2);
  }

  else
  {
    sub_950A4(a1);
  }
}

Swift::Int sub_9539C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[1];
  v6 = v1[3];
  v7 = *v1;
  sub_14545C();
  if ((v6 & 0x80000000) != 0)
  {
    v2 = sub_14497C();
    sub_14546C(~v2);
  }

  else
  {
    v9 = v7;
    v10 = v5;
    v11 = v4;
    v12 = v6;
    sub_950A4(v8);
  }

  return sub_1454AC();
}

uint64_t sub_95428(uint64_t *a1, uint64_t *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[6];
  v7 = *a2;
  v8 = *(a2 + 1);
  v9 = *(a2 + 3);
  if ((v6 & 0x80000000) == 0)
  {
    v10 = *(a2 + 3);
    v11 = a2[5];
    v12 = a1[7];
    v17[0] = v4;
    v17[1] = v5;
    v13 = *(a1 + 2);
    v18 = *(a1 + 1);
    v19 = v13;
    v20 = v6;
    v21 = v12;
    if ((v9 & 0x80000000) == 0)
    {
      v22 = v7;
      v23 = v8;
      v24 = v10;
      v25 = v11;
      v26 = v9;
      v14 = sub_94FA8(v17, &v22);
      return v14 & 1;
    }

LABEL_5:
    v14 = 0;
    return v14 & 1;
  }

  if ((v9 & 0x80000000) == 0)
  {
    goto LABEL_5;
  }

  if (v4 == v7 && v5 == v8)
  {
    v14 = 1;
    return v14 & 1;
  }

  return sub_1453BC();
}

Swift::Int sub_954F8(uint64_t a1, uint64_t a2)
{
  sub_14545C();
  sub_14482C();
  return sub_1454AC();
}

void sub_9556C(uint64_t a1)
{
  if (*(v1 + 24))
  {
    sub_14500C();
  }

  else
  {
    sub_14492C();
    type metadata accessor for Key(0);
    sub_957E8();
    isa = sub_1447EC().super.isa;
    v3 = [(objc_class *)isa hash];

    sub_14546C(v3);
  }
}

Swift::Int sub_95600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_14545C();
  sub_14482C();
  return sub_1454AC();
}

id sub_95694(void *a1, uint64_t a2, uint64_t a3, char a4, void *a5, uint64_t a6, uint64_t a7, char a8)
{
  if (a4)
  {
    if (a8)
    {
      if (a1 == a5)
      {
        return &dword_0 + 1;
      }

      else
      {
        return [a1 isEqualToAttributedString:a5];
      }
    }

    return 0;
  }

  if ((a8 & 1) != 0 || (a1 != a5 || a2 != a6) && (sub_1453BC() & 1) == 0)
  {
    return 0;
  }

  type metadata accessor for Key(0);
  sub_957E8();
  v10.super.isa = sub_1447EC().super.isa;
  v11.super.isa = sub_1447EC().super.isa;
  if (v10.super.isa == v11.super.isa)
  {

    return &dword_0 + 1;
  }

  else
  {
    sub_94A34(a7);
    isa = sub_1447EC().super.isa;

    v13 = [(objc_class *)v10.super.isa isEqualToDictionary:isa];

    return v13;
  }
}

unint64_t sub_957E8()
{
  result = qword_1C0430;
  if (!qword_1C0430)
  {
    type metadata accessor for Key(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C0430);
  }

  return result;
}

uint64_t sub_95840(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3150, &unk_14D4A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_958A8()
{
  result = qword_1C51C8;
  if (!qword_1C51C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1C51C8);
  }

  return result;
}

uint64_t sub_958F4(unsigned __int8 a1)
{
  if (a1 > 2u)
  {
    v4 = 2;
    if (a1 == 4)
    {
      v4 = 0;
    }

    if (a1 == 3)
    {
      return 1;
    }

    else
    {
      return v4;
    }
  }

  else if (a1)
  {
    if (a1 == 1)
    {
      v1 = [objc_opt_self() sharedApplication];
      v2 = [v1 userInterfaceLayoutDirection] != &dword_0 + 1;

      return 2 * v2;
    }

    else
    {
      return 3;
    }
  }

  else
  {
    return 4;
  }
}

uint64_t sub_95A00(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x3FFFFFFF && *(a1 + 64))
  {
    return (*a1 + 0x3FFFFFFF);
  }

  v3 = ((*(a1 + 48) >> 1) & 0x3FFFFFFE | (*(a1 + 48) >> 31)) ^ 0x3FFFFFFF;
  if (v3 >= 0x3FFFFFFE)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_95A60(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x3FFFFFFE)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x3FFFFFFF;
    if (a3 >= 0x3FFFFFFF)
    {
      *(result + 64) = 1;
    }
  }

  else
  {
    if (a3 >= 0x3FFFFFFF)
    {
      *(result + 64) = 0;
    }

    if (a2)
    {
      *(result + 16) = 0u;
      *(result + 32) = 0u;
      *result = 0u;
      *(result + 48) = (4 * ((-a2 >> 1) & 0x1FFFFFFF)) | (a2 << 31);
      *(result + 56) = 0;
    }
  }

  return result;
}

uint64_t sub_95B14(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_95B5C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
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

unint64_t sub_95BE4()
{
  result = qword_1C51D0;
  if (!qword_1C51D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C51D0);
  }

  return result;
}

unint64_t sub_95C3C()
{
  result = qword_1C51D8;
  if (!qword_1C51D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C51D8);
  }

  return result;
}

unint64_t sub_95C94()
{
  result = qword_1C51E0;
  if (!qword_1C51E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C51E0);
  }

  return result;
}

unint64_t sub_95CEC()
{
  result = qword_1C51E8;
  if (!qword_1C51E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C51E8);
  }

  return result;
}

unint64_t sub_95D40(unint64_t result)
{
  if (result >= 6)
  {
    return 6;
  }

  return result;
}

char *sub_95D6C(double a1, double a2, double a3, double a4)
{
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_forSizing] = 0;
  v9 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  *v9 = 0;
  v9[1] = 0xE000000000000000;
  v10 = sub_13E818();
  v11 = 3;
  if ((v10 & 1) == 0)
  {
    v11 = 1;
  }

  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleMaximumNumberOfLines] = v11;
  v12 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle];
  *v12 = 0;
  v12[1] = 0xE000000000000000;
  v13 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkPlaceholder];
  *v13 = 0;
  *(v13 + 1) = 0;
  v13[16] = -2;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkCatalog] = 0;
  v14 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonSize];
  *v14 = 0;
  v14[1] = 0;
  v15 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle];
  v16 = [objc_opt_self() fontDescriptorWithTextStyle:0];
  v17 = [v16 preferredFont];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5358, &unk_1536B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14A710;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_2B860(0, &qword_1C5360, UIFont_ptr);
  *(inited + 40) = v17;
  v19 = NSFontAttributeName;
  v20 = v17;
  sub_13A814(inited);
  swift_setDeallocating();
  sub_15340(inited + 32, &unk_1C8200, &unk_150440);
  v21 = objc_allocWithZone(NSAttributedString);
  v22 = sub_14489C();
  type metadata accessor for Key(0);
  sub_957E8();
  isa = sub_1447EC().super.isa;

  v24 = [v21 initWithString:v22 attributes:isa];

  *v15 = 0;
  *(v15 + 1) = 0xE000000000000000;
  v15[16] = 0;
  *(v15 + 3) = v24;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles] = _swiftEmptyArrayStorage;
  v25 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonHandler];
  *v25 = 0;
  v25[1] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset] = UIOffsetZero;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle] = 9;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle] = 4;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentViewReservedWidth] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__currentPreferredHeight] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineLeadingAlignment] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineTrailingAlignment] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineLeadingAlignment] = 1;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineTrailingAlignment] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] = 0;
  v26 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  v27 = *&UIEdgeInsetsZero.bottom;
  *v26 = *&UIEdgeInsetsZero.top;
  v26[1] = v27;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineView] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton] = 0;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton] = 0;
  v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] = 9;
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor] = 0;
  v28 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutInvalidationHandler];
  *v28 = 0;
  v28[1] = 0;
  v29 = sub_99554(9u);
  v30 = &v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  *v30 = v29;
  v30[1] = v31;
  v30[2] = v32;
  _s4ViewCMa();
  *&v4[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView] = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  v38.receiver = v4;
  v38.super_class = type metadata accessor for TitleSectionHeaderView();
  v33 = objc_msgSendSuper2(&v38, "initWithFrame:", a1, a2, a3, a4);
  v34 = [v33 layer];
  [v34 setAllowsGroupOpacity:0];

  v35 = [v33 layer];
  [v35 setAllowsGroupBlending:0];

  [v33 addSubview:*&v33[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView]];
  sub_14114C();
  v36 = sub_14108C();
  [v33 setBackgroundColor:v36];

  return v33;
}

id sub_963D8()
{
  v1 = v0;
  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents + 8];
  v3 = &v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle];
  v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle + 8];
  *(v2 + 128) = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle];
  *(v2 + 136) = v4;

  sub_54980();
  v5 = *(v3 + 1);
  v6 = *v3 & 0xFFFFFFFFFFFFLL;
  if ((v5 & 0x2000000000000000) != 0)
  {
    v6 = HIBYTE(v5) & 0xF;
  }

  v7 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView;
  v8 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView];
  if (v6)
  {
    if (v8)
    {
      goto LABEL_11;
    }

    _s4ViewCMa();
    v9 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v10 = *&v1[v7];
    *&v1[v7] = v9;
    v11 = v9;

    [v1 addSubview:v11];
  }

  else
  {
    if (v8)
    {
      [v8 removeFromSuperview];
      v11 = *&v1[v7];
    }

    else
    {
      v11 = 0;
    }

    *&v1[v7] = 0;
  }

LABEL_11:

  return [v1 setNeedsLayout];
}

void sub_964E4(uint64_t a1, uint64_t a2)
{
  v4 = *(v2 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles);
  v5 = *(v4 + 16);

  v6 = 0;
  v7 = -v5;
  v39 = _swiftEmptyArrayStorage;
LABEL_2:
  v8 = v6 + 1;
  v9 = 32 * v6;
  while (v7 + v8 != 1)
  {
    v6 = v8;
    if ((v8 - 1) >= *(v4 + 16))
    {
      __break(1u);
      goto LABEL_23;
    }

    v11 = *(v4 + v9 + 32);
    v10 = *(v4 + v9 + 40);
    v12 = *(v4 + v9 + 48);
    v13 = *(v4 + v9 + 56);
    if (v11 == a1 && v10 == a2)
    {
      v11 = a1;
LABEL_12:

      v15 = v13;
      v16 = v39;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_92D0C(0, v39[2] + 1, 1);
        v16 = v39;
      }

      v18 = v16[2];
      v17 = v16[3];
      v19 = v18 + 1;
      if (v18 >= v17 >> 1)
      {
        sub_92D0C((v17 > 1), v18 + 1, 1);
        v19 = v18 + 1;
        v16 = v39;
      }

      v16[2] = v19;
      v39 = v16;
      v20 = &v16[4 * v18];
      v20[4] = v11;
      v20[5] = v10;
      *(v20 + 48) = v12;
      v20[7] = v15;
      goto LABEL_2;
    }

    ++v8;
    v9 += 32;
    if (sub_1453BC())
    {
      goto LABEL_12;
    }
  }

  if (!v39[2])
  {

    v26 = objc_opt_self();
    v22 = a2;

    v27 = [v26 fontDescriptorWithTextStyle:0];
    v28 = [v27 preferredFont];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5358, &unk_1536B0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_14A710;
    *(inited + 32) = NSFontAttributeName;
    *(inited + 64) = sub_2B860(0, &qword_1C5360, UIFont_ptr);
    *(inited + 40) = v28;
    v30 = NSFontAttributeName;
    v31 = v28;
    sub_13A814(inited);
    swift_setDeallocating();
    sub_15340(inited + 32, &unk_1C8200, &unk_150440);
    v32 = objc_allocWithZone(NSAttributedString);
    v21 = a1;
    v33 = sub_14489C();

    type metadata accessor for Key(0);
    sub_957E8();
    isa = sub_1447EC().super.isa;

    v25 = [v32 initWithString:v33 attributes:isa];

    v23 = 0;
    goto LABEL_21;
  }

  if (v39[2])
  {
    v21 = v39[4];
    v22 = v39[5];
    v23 = *(v39 + 48);
    v24 = v39[7];

    v25 = v24;

LABEL_21:
    v35 = v38 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
    v36 = *(v38 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle + 24);
    *v35 = v21;
    *(v35 + 8) = v22;
    *(v35 + 16) = v23;
    *(v35 + 24) = v25;
    v37 = v25;
    swift_bridgeObjectRetain_n();

    sub_968A0();

    swift_bridgeObjectRelease_n();
    return;
  }

LABEL_23:
  __break(1u);
}

id sub_968A0()
{
  v1 = v0;
  v2 = &v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle];
  v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle + 8];
  v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle] & 0xFFFFFFFFFFFFLL;
  if ((v3 & 0x2000000000000000) != 0)
  {
    v4 = HIBYTE(v3) & 0xF;
  }

  v5 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton;
  v6 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton];
  if (v4)
  {
    if (v6 || (v7 = objc_opt_self(), v8 = [v7 buttonWithType:1], objc_msgSend(v7, "easyTouchDefaultHitRectInsets"), objc_msgSend(v8, "setHitRectInsets:"), objc_msgSend(v8, "setContentHorizontalAlignment:", 2), v9 = swift_allocObject(), swift_unknownObjectWeakInit(), , sub_11EB04(64, sub_9912C, v9), , objc_msgSend(v1, "addSubview:", v8), v10 = *&v1[v5], *&v1[v5] = v8, v10, (v6 = *&v1[v5]) != 0))
    {
      [v6 setAttributedTitle:*(v2 + 3) forState:0];
    }
  }

  else if (v6)
  {
    [v6 removeFromSuperview];
    v11 = *&v0[v5];
    *&v0[v5] = 0;
  }

  return [v1 setNeedsLayout];
}

void sub_96A34()
{
  v1 = v0;
  v2 = COERCE_DOUBLE(sub_144EDC());
  v223 = *(*&v2 - 8);
  __chkstk_darwin(*&v2);
  v222 = &v222 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for TitleSectionHeaderView();
  v249.receiver = v0;
  v249.super_class = v4;
  objc_msgSendSuper2(&v249, "layoutSubviews");
  [v0 bounds];
  v6 = v5;
  v235 = v7;
  v236 = v8;
  v234 = v9;
  [v0 music_inheritedLayoutInsets];
  v11 = v10;
  v13 = v12;
  v14 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets];
  v15 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets + 16];
  v17 = v16 + *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets + 8];
  v19 = v18 + *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets + 24];
  v20 = [v0 traitCollection];
  sub_144DCC();
  v232 = v21;

  v22 = COERCE_DOUBLE([v1 effectiveUserInterfaceLayoutDirection]);
  v23 = v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible];
  v24 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineView;
  v25 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineView];
  p_ivar_lyt = &SongCell.ivar_lyt;
  v237 = v6;
  if (v23 == 1)
  {
    v230 = *&v11;
    v231 = v13;
    *&v229 = v15;
    if (v25)
    {
      v27 = v25;
    }

    else
    {
      v28 = [objc_allocWithZone(UIView) init];
      sub_14114C();
      v29 = v28;
      v30 = sub_14105C();
      [v29 setBackgroundColor:v30];

      v27 = v29;
      [v1 addSubview:v27];
      v31 = *&v1[v24];
      *&v1[v24] = v27;

      v25 = 0;
    }

    v32 = v236 - v17;
    if (v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineLeadingAlignment])
    {
      v33 = v17;
    }

    else
    {
      v32 = v236;
      v33 = v237;
    }

    v34 = v17;
    if (v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineTrailingAlignment])
    {
      v35 = v32 - v19;
    }

    else
    {
      v35 = v32;
    }

    v36 = v19;
    v37 = 1.0 / v232;
    v38 = v25;
    v295.origin.x = v33;
    v295.origin.y = v235;
    v295.size.width = v35;
    v295.size.height = v37;
    v233 = CGRectGetHeight(v295) + 0.0;
    v6 = v237;
    v17 = v34;
    v19 = v36;
    sub_144EFC();
    [v27 setFrame:?];

    *&v11 = v230;
    v13 = v231;
    v15 = *&v229;
  }

  else
  {
    v233 = 0.0;
    if (v25)
    {
      [v25 removeFromSuperview];
    }
  }

  v39 = *&v11 + v14;
  v40 = v13 + v15;
  v41 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineView;
  v42 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineView];
  if (v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible] == 1)
  {
    v43 = v235;
    *&v229 = v40;
    v230 = v39;
    if (v42)
    {
      v44 = v42;
    }

    else
    {
      v47 = [objc_allocWithZone(UIView) init];
      sub_14114C();
      v48 = v47;
      v49 = sub_14105C();
      [v48 setBackgroundColor:v49];

      v44 = v48;
      [v1 addSubview:v44];
      v50 = *&v1[v41];
      *&v1[v41] = v44;

      v42 = 0;
    }

    v45 = v236;
    v51 = v236 - v17;
    if (!v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineLeadingAlignment])
    {
      v51 = v236;
    }

    v52 = v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineTrailingAlignment];
    v53 = v17;
    if (!v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineLeadingAlignment])
    {
      v17 = v6;
    }

    v231 = v19;
    if (v52)
    {
      v54 = v51 - v19;
    }

    else
    {
      v54 = v51;
    }

    v55 = 1.0 / v232;
    v56 = v42;
    v296.origin.x = v237;
    v296.origin.y = v43;
    v296.size.width = v45;
    v46 = v234;
    v296.size.height = v234;
    MaxY = CGRectGetMaxY(v296);
    v297.origin.x = v17;
    v297.origin.y = v43;
    v297.size.width = v54;
    v297.size.height = v55;
    v58 = MaxY - CGRectGetHeight(v297);
    v298.origin.x = v17;
    v298.origin.y = v58;
    v298.size.width = v54;
    v298.size.height = v55;
    v233 = v233 + CGRectGetHeight(v298);
    v17 = v53;
    v6 = v237;
    sub_144EFC();
    [v44 setFrame:?];

    v39 = v230;
  }

  else
  {
    v43 = v235;
    if (v42)
    {
      [v42 removeFromSuperview];
    }

    v45 = v236;
    v46 = v234;
  }

  v248.origin.x = UIEdgeInsetsInsetRect_0(v6, v43, v45, v46, v39, v17);
  v248.origin.y = v59;
  v248.size.width = v60;
  v248.size.height = v61;
  if (v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkPlaceholder + 16] < 0xFEu || *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkCatalog])
  {
    v62 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton;
    if (*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton])
    {
      goto LABEL_36;
    }

    v63 = [objc_allocWithZone(UIButton) init];
    v64 = swift_allocObject();
    swift_unknownObjectWeakInit();

    sub_11EB24(64, sub_9A060, v64);

    [v63 setClipsToBounds:1];
    [v1 addSubview:v63];
    v65 = *&v1[v62];
    *&v1[v62] = v63;
  }

  else
  {
    v66 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton;
    v67 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton];
    if (!v67)
    {
      goto LABEL_36;
    }

    [v67 removeFromSuperview];
    v65 = *&v1[v66];
    *&v1[v66] = 0;
  }

LABEL_36:
  v247 = 0;
  v68 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton;
  if (*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton])
  {
    v247 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonSize];
    Width = CGRectGetWidth(v248);
    *&v229 = 0.0;
    v230 = 0.0;
    v70 = Width - v247.width + -16.0;
  }

  else if (*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton])
  {
    v71 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton;
    if (qword_1BFFE0 != -1)
    {
      swift_once();
    }

    v72 = qword_1C51F0;
    v73 = objc_opt_self();
    v74 = COERCE_DOUBLE(swift_allocObject());
    *(*&v74 + 16) = v1;
    *(*&v74 + 24) = v72;
    *(*&v74 + 32) = &v248;
    *(*&v74 + 40) = &v247;
    v75 = swift_allocObject();
    *(v75 + 16) = sub_99FBC;
    *(v75 + 24) = v74;
    v230 = v74;
    *&v289 = sub_7B6EC;
    *(&v289 + 1) = v75;
    *&v287 = _NSConcreteStackBlock;
    *(&v287 + 1) = 1107296256;
    *&v288 = sub_D78F4;
    *(&v288 + 1) = &block_descriptor_151;
    v76 = _Block_copy(&v287);
    v77 = v1;
    v78 = v72;

    [v73 performWithoutAnimation:v76];
    _Block_release(v76);
    LOBYTE(v73) = swift_isEscapingClosureAtFileLocation();

    if (v73)
    {
      __break(1u);
      return;
    }

    v79 = [objc_opt_self() sharedApplication];
    v80 = [v79 preferredContentSizeCategory];

    LOBYTE(v79) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
    v81 = CGRectGetWidth(v248);
    v70 = v81;
    p_ivar_lyt = (&SongCell + 16);
    if ((v79 & 1) == 0)
    {
      v70 = v81 - v247.width + -16.0;
    }

    *&v229 = COERCE_DOUBLE(sub_99FBC);
    v68 = v71;
  }

  else
  {
    v70 = CGRectGetWidth(v248);
    *&v229 = 0.0;
    v230 = 0.0;
    v247 = 0;
  }

  v82 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentViewReservedWidth;
  v83 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentViewReservedWidth];
  sub_141B0C();
  v231 = v22;
  v226 = v82;
  if (v84 < v83)
  {
    v70 = v70 - *&v1[v82];
  }

  v228 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache;
  v85 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache];
  v225 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView;
  if (v85)
  {
    v224 = *&v68;
    v86 = 0.8;
    if (!*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView])
    {
      v86 = 1.0;
    }

    v87 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
    v88 = *(v87 + 128);
    v89 = *(v87 + 136);
    v91 = *(v87 + 64);
    v90 = *(v87 + 80);
    v92 = *(v87 + 96);
    v286 = *(v87 + 112);
    v285 = v92;
    v283 = v91;
    v284 = v90;
    v93 = *(v87 + 48);
    v281 = *(v87 + 32);
    v282 = v93;
    v94 = v70 * v86;
    x = v248.origin.x;
    y = v248.origin.y;
    v97 = v248.size.width;
    height = v248.size.height;

    sub_9724(&v281, &v287);
    v299.origin.x = x;
    v299.origin.y = y;
    v299.size.width = v97;
    v299.size.height = height;
    v99 = CGRectGetHeight(v299);
    sub_7B60(v88, v89, &v281, v250, v94, v99);
    v277 = v252;
    v278 = v253;
    v279 = v254;
    v280 = v255;
    v273 = v250[0];
    v274 = v250[1];
    v275 = v250[2];
    v276 = v251;
    v100 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView;
    v101 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView];
    UIScreen.Dimensions.size.getter();
    v291 = v277;
    v292 = v278;
    v293 = v279;
    v294 = v280;
    v287 = v273;
    v288 = v274;
    v289 = v275;
    v290 = v276;
    v102 = v101;
    sub_9AD8(v250, &v265);
    sub_11D894(&v287);

    if ((BYTE3(v284) & 0x80) != 0)
    {
      v227 = v2;
      v119 = p_ivar_lyt;
      v120 = v282;

      v121 = v120(v88, v89);
      v122 = [v121 MTMPU_tallestFontFromAttributes];

      if (v122)
      {
        v123 = *&v286;
        v124 = v122;
        [v124 _scaledValueForValue:v123];
        v104 = v125;
      }

      else
      {

        v104 = *&v286;
      }

      p_ivar_lyt = v119;
      v2 = v227;
    }

    else
    {
      [v281 scaledValueForValue:*&v286];
      v104 = v103;
    }

    v105 = v104 + CGRectGetMinY(v248);
    v126 = v251;
    v127 = *(&v254 + 1);
    v128 = *&v254;
    v129 = *(&v126 + 1) + v104 + CGRectGetMinY(v248) - v128 - v127;
    v130 = sub_CCFD8(v88, v89);

    v227 = v130 + v129;
    v131 = v248.origin.x;
    v132 = v248.origin.y;
    v133 = v248.size.width;
    v134 = v248.size.height;
    v135 = *&v1[v100];
    v300.origin.x = v131;
    v300.origin.y = v132;
    v300.size.width = v133;
    v300.size.height = v134;
    CGRectGetMinX(v300);
    sub_144EFC();
    [v135 p_ivar_lyt[493]];
    sub_9A84(v250);

    sub_9780(&v281);

    v248.origin.x = *&v126 + v248.origin.x;
    v248.size.width = v248.size.width - *&v126;
    v106 = *&v1[*&v224];
    if (v106)
    {
      goto LABEL_64;
    }

LABEL_54:
    v107 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton;
    v108 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton];
    v109 = 0.0;
    if (v108)
    {
      v110 = [v108 titleLabel];
      if (v110)
      {
        v111 = v110;
        v112 = *&v1[v107];
        if (v112)
        {
          v113 = v247;
          v114 = p_ivar_lyt[493];
          v115 = v112;
          [v115 v114];
          [v115 layoutIfNeeded];
          v116 = objc_opt_self();
          v117 = [v116 sharedApplication];
          v118 = [v117 preferredContentSizeCategory];

          LOBYTE(v117) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
          if (v117)
          {
            [*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView] frame];
          }

          else
          {
            CGRectGetMaxX(v248);
          }

          [v111 _baselineOffsetFromBottom];
          [v115 frame];
          CGRectGetHeight(v307);
          [v111 frame];
          CGRectGetMaxY(v308);
          v202 = [v116 sharedApplication];
          v203 = [v202 preferredContentSizeCategory];

          LODWORD(v202) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
          if (v202)
          {
            v204 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView;
            [*&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleTextDrawingView] frame];
            v205 = CGRectGetMaxY(v309);
            v206 = *&v1[v204];
            v207 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 48];
            v209 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext];
            v208 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 16];
            v258 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 32];
            v259 = v207;
            v256 = v209;
            v257 = v208;
            v210 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 112];
            v212 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 64];
            v211 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 80];
            v262 = *&v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext + 96];
            v263 = v210;
            v260 = v212;
            v261 = v211;
            memmove(&v265, &v206[OBJC_IVAR____TtCVV12NowPlayingUI14DeprecatedText7Drawing4View__textDrawingContext], 0x80uLL);
            if (sub_55948(&v265) != 1)
            {
              v277 = v269;
              v278 = v270;
              v279 = v271;
              v280 = v272;
              v273 = v265;
              v274 = v266;
              v275 = v267;
              v276 = v268;
              v213 = v206;
              sub_99EDC(&v256, &v239);
              sub_11E25C(&v273);
              v224 = v205;
              v215 = v214;
              v217 = v216;
              v219 = v218;
              v221 = v220;
              [v213 bounds];
              CGRectGetMaxY(v310);
              v311.origin.x = v215;
              v311.origin.y = v217;
              v311.size.width = v219;
              v311.size.height = v221;
              CGRectGetMaxY(v311);

              sub_15340(&v256, &qword_1C3158, &qword_150450);
            }
          }

          sub_144EFC();
          [v115 p_ivar_lyt[493]];

          v109 = v247.height;
          v248.size.width = v248.size.width - (v247.width + 16.0);
        }

        else
        {
        }
      }
    }

    goto LABEL_69;
  }

  v105 = CGRectGetMaxY(v248);
  v227 = 0.0;
  v106 = *&v1[v68];
  if (!v106)
  {
    goto LABEL_54;
  }

LABEL_64:
  v136 = v248.origin.x;
  v137 = v248.origin.y;
  v138 = v248.size.width;
  v139 = v248.size.height;
  v140 = v106;
  v301.origin.x = v136;
  v301.origin.y = v137;
  v301.size.width = v138;
  v301.size.height = v139;
  MaxX = CGRectGetMaxX(v301);
  v142 = v247;
  v302.origin.x = MaxX - v247.width + 0.0;
  v143 = v302.origin.x;
  v302.origin.y = v105 - v247.height + 8.0;
  v302.size = v247;
  v109 = CGRectGetHeight(v302);
  v144 = v140;
  sub_144EFC();
  [v144 p_ivar_lyt[493]];
  v145 = [v144 layer];

  v303.origin.x = v143;
  v303.origin.y = v105 - v142.height + 8.0;
  v303.size = v142;
  [v145 setCornerRadius:CGRectGetWidth(v303) * 0.5];

  v146 = swift_allocObject();
  *(v146 + 16) = 0;
  v147 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkCatalog];
  if (v147)
  {
    v148 = v147;
    [v148 setDestinationScale:v232];
    [v148 setFittingSize:v142];
    *&v275 = sub_99F5C;
    *(&v275 + 1) = v146;
    *&v273 = _NSConcreteStackBlock;
    *(&v273 + 1) = 1107296256;
    *&v274 = sub_98234;
    *(&v274 + 1) = &block_descriptor_9;
    v149 = _Block_copy(&v273);

    [v148 setDestination:v1 configurationBlock:v149];
    _Block_release(v149);
  }

  swift_beginAccess();
  if ((*(v146 + 16) & 1) == 0)
  {
    sub_98888(0);
  }

  v248.size.width = v248.size.width - (v247.width + 16.0);

LABEL_69:
  v150 = *&v1[v226];
  sub_141B0C();
  if (v151 < v150)
  {
    v152 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentView];
    if (v152)
    {
      v153 = v109;
      v154 = v248.origin.x;
      v155 = v248.origin.y;
      v156 = v248.size.width;
      v157 = v248.size.height;
      v158 = v152;
      v304.origin.x = v154;
      v304.origin.y = v155;
      v304.size.width = v156;
      v304.size.height = v157;
      CGRectGetMaxX(v304);
      CGRectGetMinY(v248);
      CGRectGetHeight(v248);
      sub_144EFC();
      v161 = v160;
      v163 = v162;
      v165 = v164;
      v166 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton];
      if (v166)
      {
        v167 = v166;
        [v167 frame];
        CGRectGetHeight(v305);
        v168 = v222;
        sub_144ECC();
        [v167 frame];
        sub_144EEC();
        v161 = v169;
        v163 = v170;
        v165 = v171;
        v173 = v172;

        (*(v223 + 8))(v168, COERCE_DOUBLE(*&v2));
        v159 = v173;
      }

      [v158 p:v161 ivar:{v163, v165, v159}lyt[493]];

      v109 = v153;
    }
  }

  v174 = 0.0;
  if (*&v1[v228])
  {
    v175 = *&v1[v225];
    if (v175)
    {
      v176 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents + 8];
      v178 = *(v176 + 128);
      v177 = *(v176 + 136);
      v180 = *(v176 + 64);
      v179 = *(v176 + 80);
      v181 = *(v176 + 112);
      v264[4] = *(v176 + 96);
      v264[5] = v181;
      v264[2] = v180;
      v264[3] = v179;
      v182 = *(v176 + 48);
      v264[0] = *(v176 + 32);
      v264[1] = v182;
      v183 = v248.size.width;
      v184 = v248.size.height;

      v185 = v175;

      sub_9724(v264, &v265);
      sub_7B60(v178, v177, v264, &v256, v183, v184);
      v243 = v260;
      v244 = v261;
      v245 = v262;
      v246 = v263;
      v239 = v256;
      v240 = v257;
      v241 = v258;
      v242 = v259;
      UIScreen.Dimensions.size.getter();
      v269 = v243;
      v270 = v244;
      v271 = v245;
      v272 = v246;
      v265 = v239;
      v266 = v240;
      v267 = v241;
      v268 = v242;
      sub_9AD8(&v256, &v238);
      sub_11D894(&v265);
      v187 = *(&v259 + 1);
      v186 = *&v259;
      v188 = *(&v262 + 1);
      v189 = v105 - *(&v259 + 1) + *(&v262 + 1);
      v237 = v109;
      v190 = v248.origin.x;
      v191 = v248.origin.y;
      v192 = v248.size.width;
      v193 = v248.size.height;
      v194 = p_ivar_lyt;
      v195 = v185;
      v306.origin.x = v190;
      v306.origin.y = v191;
      v306.size.width = v192;
      v306.size.height = v193;
      [v195 v194[493]];

      v196 = v187 + v189 - v188;
      v197 = sub_CCFD8(v178, v177);
      sub_9A84(&v256);

      sub_9780(v264);

      v174 = v196 + v197;
      v109 = v237;
      v248.origin.x = v186 + 12.0 + v248.origin.x;
      v248.size.width = v248.size.width - (v186 + 12.0);
    }
  }

  v198 = [objc_opt_self() sharedApplication];
  v199 = [v198 preferredContentSizeCategory];

  LODWORD(v198) = _UIContentSizeCategoryIsAccessibilityContentSizeCategory();
  if (v198)
  {
    v200 = v227 + v109 + v174;
    v201 = v229;
  }

  else
  {
    v200 = v227;
    if (v227 <= v109)
    {
      v200 = v109;
    }

    v201 = v229;
    if (v200 <= v174)
    {
      v200 = v174;
    }
  }

  *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__currentPreferredHeight] = v233 + v200;
  sub_2173C(v201, *&v230);
}

void sub_97F9C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = Strong;
    v4 = *&Strong[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonHandler];
    if (v4)
    {
      v5 = *&Strong[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonHandler + 8];

      v4(v3);

      sub_2173C(v4, v5);
    }

    else
    {
    }
  }
}

double sub_98034(uint64_t a1, void *a2, uint64_t a3, double *a4)
{
  v7 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles);
  v8 = *(v7 + 16);
  if (v8)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5130, &qword_14FD68);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_14A710;
    v11 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle);
    v10 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle + 8);
    v12 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle + 16);
    v13 = *(a1 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle + 24);
    *(v7 + 32) = v11;
    *(v7 + 40) = v10;
    *(v7 + 48) = v12;
    *(v7 + 56) = v13;

    v14 = v13;
    v8 = 1;
  }

  v15 = (v7 + 56);
  do
  {
    v17 = *v15;

    v18 = v17;
    [a2 setAttributedTitle:v18 forState:0];
    [a2 sizeThatFits:{*(a3 + 16), *(a3 + 24)}];
    v20 = v19;
    v16 = v21;

    v22 = *a4;
    if (*a4 >= v20)
    {
      v16 = *(a4 + 1);
    }

    else
    {
      v22 = v20;
    }

    *a4 = v22;
    *(a4 + 1) = v16;
    v15 += 4;
    --v8;
  }

  while (v8);

  return result;
}

uint64_t sub_981A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_7828(a1, v7);
  type metadata accessor for TitleSectionHeaderView();
  result = swift_dynamicCast();
  if (result)
  {
    sub_98888(a2);

    result = swift_beginAccess();
    *(a3 + 16) = 1;
  }

  return result;
}

uint64_t sub_98234(uint64_t a1, uint64_t a2, void *a3, __n128 a4)
{
  v6 = *(a1 + 32);
  v9[3] = swift_getObjectType();
  v9[0] = a2;

  swift_unknownObjectRetain();
  v7 = a3;
  v6(v9, a3);

  return __swift_destroy_boxed_opaque_existential_0(v9);
}

void sub_9830C(uint64_t a1)
{
  v2 = v1;
  v6.receiver = v2;
  v6.super_class = type metadata accessor for TitleSectionHeaderView();
  objc_msgSendSuper2(&v6, "traitCollectionDidChange:", a1);
  v4 = [v2 traitCollection];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3168, &qword_151A40);
  sub_14509C();
  sub_144DCC();
  if ((sub_141AFC() & 1) == 0)
  {
    [v2 setNeedsLayout];
  }

  if ([v4 horizontalSizeClass] == &dword_0 + 2)
  {
    v5 = &OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle;
LABEL_7:
    *(v2 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle) = *(v2 + *v5);
    sub_9867C();
    goto LABEL_8;
  }

  if ([v4 horizontalSizeClass] == &dword_0 + 1)
  {
    v5 = &OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle;
    goto LABEL_7;
  }

LABEL_8:
}

id sub_98560()
{
  result = sub_98580();
  qword_1C51F0 = result;
  return result;
}

id sub_98580()
{
  v0 = [objc_opt_self() buttonWithType:1];
  v1 = objc_opt_self();
  v2 = v0;
  v3 = [v1 fontDescriptorWithTextStyle:0];
  v4 = [v2 titleLabel];
  if (v4)
  {
    v5 = v4;
    v6 = [v3 preferredFont];
    [v5 setFont:v6];
  }

  [v2 setContentHorizontalAlignment:2];

  return v2;
}

id sub_9867C()
{
  v1 = OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle;
  v2 = v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle] & 0xFE;
  v3 = v2 == 14;
  v4 = v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineLeadingAlignment];
  v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineLeadingAlignment] = v3;
  if (v4 != v3)
  {
    [v0 setNeedsLayout];
  }

  v5 = v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineTrailingAlignment];
  v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineTrailingAlignment] = v3;
  if ((v2 == 14) != v5)
  {
    [v0 setNeedsLayout];
  }

  v6 = v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineTrailingAlignment];
  v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineTrailingAlignment] = v3;
  if ((v2 == 14) != v6)
  {
    [v0 setNeedsLayout];
  }

  v7 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
  v8 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleMaximumNumberOfLines];
  v9 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
  v10 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title + 8];
  v11 = v0[v1];

  sub_9930C(v11, v8, v9, v10, v7);

  return [v0 setNeedsLayout];
}

void sub_98888(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    v4 = *&v1[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton];
    if (v4)
    {

      [v4 setImage:a1 forState:0];
    }

    return;
  }

  v5 = [v1 traitCollection];
  sub_144DCC();
  v7 = v6;

  v8 = &v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkPlaceholder];
  v9 = v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkPlaceholder + 16];
  if (v9 > 0xFD)
  {
    return;
  }

  v10 = *v8;
  v11 = *(v8 + 1);
  v12 = *&v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonSize];
  v13 = *&v2[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonSize + 8];
  swift_unknownObjectWeakInit();
  if (!(v9 >> 6))
  {
    sub_990D4(v10, v11, v9);
    goto LABEL_11;
  }

  if (v9 >> 6 == 1)
  {

LABEL_11:
    v14 = 0;
    goto LABEL_15;
  }

  v15 = v7 * v12;
  v16 = v7 * v13;
  if (v11 | v10 || v9 != 128)
  {
    v22 = v10 == 1 && v11 == 0;
    if (v22 && v9 == 128)
    {
      goto LABEL_11;
    }
  }

  sub_2B860(0, &qword_1C5350, MTImageStore_ptr);
  v17 = [swift_getObjCClassFromMetadata() defaultStore];
  v14 = [v17 imageForKey:kMTLibraryDefaultImageKey size:{v15, v16}];

LABEL_15:
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong && (v19 = *(Strong + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton), v20 = Strong, v21 = v19, v20, v19))
  {
    [v21 setImage:v14 forState:0];
  }

  else
  {
  }

  sub_990A0(v10, v11, v9);
  swift_unknownObjectWeakDestroy();
}

id sub_98BA8(uint64_t a1, uint64_t a2, void *a3)
{

  v3 = sub_14489C();

  return v3;
}

id sub_98C04(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for TitleSectionHeaderView();
  return objc_msgSendSuper2(&v3, "dealloc");
}

uint64_t getEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF1)
  {
    goto LABEL_17;
  }

  if (a2 + 15 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 15) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 15;
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

      return (*a1 | (v4 << 8)) - 15;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 15;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0x10;
  v8 = v6 - 16;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for TitleSectionHeaderView.LayoutStyle(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 15 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 15) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF1)
  {
    v4 = 0;
  }

  if (a2 > 0xF0)
  {
    v5 = ((a2 - 241) >> 8) + 1;
    *result = a2 + 15;
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
    *result = a2 + 15;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void *sub_98F70@<X0>(void *result@<X0>, char *a2@<X8>)
{
  if (*result == 1)
  {
    v2 = 1;
  }

  else
  {
    v2 = 2;
  }

  if (*result)
  {
    v3 = v2;
  }

  else
  {
    v3 = 0;
  }

  *a2 = v3;
  return result;
}

uint64_t sub_98F90(uint64_t *a1, uint64_t a2)
{
  v2 = *(a1 + 16);
  v3 = *(a2 + 16);
  if (*a1 == *a2 && a1[1] == *(a2 + 8))
  {
    return v2 ^ v3 ^ 1u;
  }

  v5 = sub_1453BC();
  result = 0;
  if (v5)
  {
    return v2 ^ v3 ^ 1u;
  }

  return result;
}

unint64_t sub_98FF4()
{
  result = qword_1C5340;
  if (!qword_1C5340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5340);
  }

  return result;
}

unint64_t sub_9904C()
{
  result = qword_1C5348;
  if (!qword_1C5348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5348);
  }

  return result;
}

double sub_990A0(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 0xFDu)
  {
    return sub_990B4(a1, a2, a3);
  }

  return result;
}

double sub_990B4(void *a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  else if (!(a3 >> 6))
  {
  }

  return result;
}

id sub_990D4(id result, uint64_t a2, unsigned __int8 a3)
{
  if (a3 >> 6 == 1)
  {
  }

  if (!(a3 >> 6))
  {
    return result;
  }

  return result;
}

uint64_t sub_990F4()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

id sub_99148(char a1, double a2)
{
  switch(a1)
  {
    case 3:
    case 5:
      v3 = objc_opt_self();
      v4 = 19;
      goto LABEL_14;
    case 6:
    case 8:
      v3 = objc_opt_self();
      v4 = 3;
      goto LABEL_14;
    case 9:
      v6 = [objc_opt_self() fontDescriptorWithTextStyle:0 leadingAdjustment:0 weight:3 defaultPointSizeAdjustment:a2];
      goto LABEL_16;
    case 10:
      v3 = objc_opt_self();
      v4 = 2;
LABEL_14:
      v5 = 1;
      v7 = 0;
      goto LABEL_15;
    case 11:
    case 12:
      v3 = objc_opt_self();
      v4 = 21;
      goto LABEL_11;
    case 13:
      v3 = objc_opt_self();
      v4 = 22;
LABEL_11:
      v5 = 0;
      goto LABEL_12;
    case 14:
      v6 = [objc_opt_self() fontDescriptorWithSystemFontSize:1 leadingAdjustment:2 weight:18.0];
      goto LABEL_16;
    case 15:
      v6 = [objc_opt_self() fontDescriptorWithSystemFontSize:2 leadingAdjustment:2 weight:20.0];
      goto LABEL_16;
    default:
      v3 = objc_opt_self();
      v4 = 19;
      v5 = 1;
LABEL_12:
      v7 = 2;
LABEL_15:
      v6 = [v3 fontDescriptorWithTextStyle:v4 leadingAdjustment:v5 weight:v7 defaultPointSizeAdjustment:a2];
LABEL_16:

      return v6;
  }
}

uint64_t sub_9930C(unsigned __int8 a1, unint64_t a2, uint64_t a3, uint64_t a4, _OWORD *a5)
{
  v8 = sub_14489C();
  v9 = [v8 music_containsCJKScripts];

  v10 = 0.0;
  if (v9)
  {
    v10 = -2.0;
  }

  v11 = sub_99148(a1, v10);
  if (a1 <= 0xAu && ((1 << a1) & 0x568) != 0)
  {
    sub_14114C();
    v12 = sub_14106C();
  }

  else
  {
    sub_14114C();
    v12 = sub_14104C();
  }

  v13 = v12;
  v14 = objc_opt_self();
  v15 = v11;
  v30 = v13;
  v16 = [v14 clearColor];
  v17 = [v15 typeSafeCopy];

  v46[0] = v17;
  v46[1] = v13;
  v46[2] = v16;
  LOBYTE(v47) = 0;
  v48 = 4;
  v49 = 0;
  LOBYTE(v50) = 0;
  *(&v50 + 4) = 0x3F00000000000000;
  HIDWORD(v50) = 1065353216;
  v18 = v47;
  v19 = *(&v50 + 1);
  v20 = qword_150508[a1];
  v21 = qword_150588[a1];
  v22 = v50 & 0xFFFFFFFF00000003;
  *&v31 = v17;
  *(&v31 + 1) = v13;
  v32 = __PAIR128__(v47, v16);
  v33 = xmmword_150210;
  *&v34 = v50 & 0xFFFFFFFF00000003;
  *(&v34 + 1) = *(&v50 + 1);
  v35 = a2;
  *&v36 = v20;
  *(&v36 + 1) = v21;
  v23 = a5[5];
  v37[2] = a5[4];
  v37[3] = v23;
  v24 = a5[7];
  v37[4] = a5[6];
  v37[5] = v24;
  v25 = a5[3];
  v37[0] = a5[2];
  v37[1] = v25;
  v26 = v36;
  a5[6] = a2;
  a5[7] = v26;
  v27 = v34;
  a5[4] = v33;
  a5[5] = v27;
  v28 = v32;
  a5[2] = v31;
  a5[3] = v28;
  sub_9674(v46, v38);
  sub_9724(&v31, v38);
  sub_9780(v37);
  sub_54768();
  sub_96D0(v46);

  v38[0] = v17;
  v38[1] = v13;
  v38[2] = v16;
  v38[3] = v18;
  v39 = xmmword_150210;
  v40 = v22;
  v41 = v19;
  v42 = a2;
  v43 = 0;
  v44 = v20;
  v45 = v21;
  return sub_9780(v38);
}

uint64_t sub_99554(unsigned __int8 a1)
{
  v2 = sub_99148(a1, 0.0);
  if (a1 <= 0xAu && ((1 << a1) & 0x568) != 0)
  {
    sub_14114C();
    v3 = sub_14106C();
  }

  else
  {
    sub_14114C();
    v3 = sub_14104C();
  }

  v4 = v3;
  v5 = objc_opt_self();
  v6 = v2;
  v40 = v4;
  v7 = [v5 clearColor];
  v8 = [v6 typeSafeCopy];

  v68[0] = v8;
  v68[1] = v4;
  v39 = v7;
  v68[2] = v7;
  LOBYTE(v69) = 0;
  v70 = 4;
  v71 = 0;
  LOBYTE(v72) = 0;
  *(&v72 + 4) = 0x3F00000000000000;
  HIDWORD(v72) = 1065353216;
  v37 = *(&v72 + 1);
  v38 = v69;
  v36 = v72 & 0xFFFFFFFF00000003;
  v9 = qword_150508[a1];
  v10 = qword_150588[a1];
  *&v62 = v8;
  *(&v62 + 1) = v4;
  v63 = __PAIR128__(v69, v7);
  v64 = xmmword_150210;
  *&v65 = v72 & 0xFFFFFFFF00000003;
  *(&v65 + 1) = *(&v72 + 1);
  v66 = xmmword_14A340;
  *&v67 = v9;
  *(&v67 + 1) = v10;
  _s9StackViewC9ComponentCMa();
  v11 = swift_allocObject();
  v12 = v65;
  v13 = v65;
  *(v11 + 64) = xmmword_150210;
  *(v11 + 80) = v12;
  v14 = v66;
  v15 = v67;
  v16 = v67;
  *(v11 + 96) = v66;
  *(v11 + 112) = v15;
  v17 = v62;
  v18 = v63;
  v19 = v63;
  *(v11 + 32) = v62;
  *(v11 + 48) = v18;
  *(v11 + 176) = xmmword_150210;
  *(v11 + 192) = v13;
  *(v11 + 208) = v14;
  *(v11 + 224) = v16;
  *(v11 + 128) = 0;
  *(v11 + 136) = 0xE000000000000000;
  *(v11 + 240) = 0;
  *(v11 + 248) = 0xE000000000000000;
  *(v11 + 264) = 0;
  *(v11 + 272) = 0;
  *(v11 + 256) = 0;
  *(v11 + 16) = 0x656C746974;
  *(v11 + 24) = 0xE500000000000000;
  *(v11 + 144) = v17;
  *(v11 + 160) = v19;
  v20 = objc_opt_self();
  sub_9724(&v62, v55);
  sub_9724(&v62, v55);
  sub_9674(v68, v55);
  v21 = [v20 fontDescriptorWithTextStyle:19 weight:5];
  sub_14114C();
  v22 = sub_14106C();
  v23 = [v5 clearColor];
  v24 = [v21 typeSafeCopy];

  *&v41 = v24;
  *(&v41 + 1) = v22;
  *v42 = v23;
  *&v42[8] = xmmword_150220;
  v43 = 0;
  *&v44 = 0;
  *(&v44 + 1) = 0x3F8000003F000000;
  v45 = xmmword_14A340;
  *&v46 = 0x403E000000000000;
  *(&v46 + 1) = v10;
  v25 = swift_allocObject();
  v26 = v44;
  v27 = v44;
  *(v25 + 64) = 4uLL;
  *(v25 + 80) = v26;
  v28 = v45;
  v29 = v46;
  v30 = v46;
  *(v25 + 96) = v45;
  *(v25 + 112) = v29;
  v31 = v41;
  v32 = *v42;
  v33 = *v42;
  *(v25 + 32) = v41;
  *(v25 + 48) = v32;
  *(v25 + 176) = 4uLL;
  *(v25 + 192) = v27;
  *(v25 + 208) = v28;
  *(v25 + 224) = v30;
  *(v25 + 128) = 0;
  *(v25 + 136) = 0xE000000000000000;
  *(v25 + 240) = 0;
  *(v25 + 248) = 0xE000000000000000;
  *(v25 + 264) = 0;
  *(v25 + 272) = 0;
  *(v25 + 256) = 0;
  *(v25 + 16) = 0x656C746974627573;
  *(v25 + 24) = 0xE800000000000000;
  *(v25 + 144) = v31;
  *(v25 + 160) = v33;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v34 = swift_allocObject();
  *(v34 + 16) = xmmword_14D1E0;
  *(v34 + 32) = v11;
  *(v34 + 40) = v25;
  sub_9724(&v41, v55);
  sub_9724(&v41, v55);

  sub_96D0(v68);

  v47[0] = v24;
  v47[1] = v22;
  v47[2] = v23;
  v48 = xmmword_150220;
  v49 = 0;
  v50 = 0;
  v51 = 0x3F8000003F000000;
  v52 = xmmword_14A340;
  v53 = 0x403E000000000000;
  v54 = v10;
  sub_9780(v47);
  v55[0] = v8;
  v55[1] = v4;
  v55[2] = v39;
  v55[3] = v38;
  v56 = xmmword_150210;
  v57 = v36;
  v58 = v37;
  v59 = xmmword_14A340;
  v60 = v9;
  v61 = v10;
  sub_9780(v55);
  return v11;
}

void sub_99A00()
{
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_forSizing) = 0;
  v1 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title);
  *v1 = 0;
  v1[1] = 0xE000000000000000;
  v2 = sub_13E818();
  v3 = 3;
  if ((v2 & 1) == 0)
  {
    v3 = 1;
  }

  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleMaximumNumberOfLines) = v3;
  v4 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitle);
  *v4 = 0;
  v4[1] = 0xE000000000000000;
  v5 = v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkPlaceholder;
  *v5 = 0;
  *(v5 + 8) = 0;
  *(v5 + 16) = -2;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonArtworkCatalog) = 0;
  v6 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageStyleButtonSize);
  *v6 = 0;
  v6[1] = 0;
  v7 = v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonAttributedTitle;
  v8 = [objc_opt_self() fontDescriptorWithTextStyle:0];
  v9 = [v8 preferredFont];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5358, &unk_1536B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_14A710;
  *(inited + 32) = NSFontAttributeName;
  *(inited + 64) = sub_2B860(0, &qword_1C5360, UIFont_ptr);
  *(inited + 40) = v9;
  v11 = NSFontAttributeName;
  v12 = v9;
  sub_13A814(inited);

  v13 = objc_allocWithZone(NSAttributedString);
  v14 = sub_14489C();
  type metadata accessor for Key(0);
  sub_957E8();
  isa = sub_1447EC().super.isa;

  v16 = [v13 initWithString:v14 attributes:isa];

  *v7 = 0;
  *(v7 + 8) = 0xE000000000000000;
  *(v7 + 16) = 0;
  *(v7 + 24) = v16;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButtonPossibleAttributedTitles) = _swiftEmptyArrayStorage;
  v17 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonHandler);
  *v17 = 0;
  v17[1] = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_buttonOffset) = UIOffsetZero;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_compactLayoutStyle) = 9;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_regularLayoutStyle) = 4;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_additionalContentViewReservedWidth) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__currentPreferredHeight) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineLeadingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineLeadingAlignment) = 1;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineTrailingAlignment) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_isBottomHairlineVisible) = 0;
  v18 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_adjustedLayoutInsets);
  v19 = *&UIEdgeInsetsZero.bottom;
  *v18 = *&UIEdgeInsetsZero.top;
  v18[1] = v19;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textDrawingCache) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_topHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_bottomHairlineView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isTopHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView__isBottomHairlineVisible) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_subtitleTextDrawingView) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_systemStyleButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_imageButton) = 0;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle) = 9;
  *(v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_externalBackgroundColor) = 0;
  v20 = (v0 + OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutInvalidationHandler);
  *v20 = 0;
  v20[1] = 0;
  sub_1452FC();
  __break(1u);
}

id sub_99DB4()
{
  if (sub_13E818())
  {
    v1 = 3;
  }

  else
  {
    v1 = 1;
  }

  v2 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleMaximumNumberOfLines];
  *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_titleMaximumNumberOfLines] = v1;
  if (v2 != v1)
  {
    v3 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_textComponents];
    v4 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title];
    v5 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_title + 8];
    v6 = v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutStyle];

    sub_9930C(v6, v1, v4, v5, v3);

    [v0 setNeedsLayout];
  }

  result = [v0 setNeedsLayout];
  v8 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutInvalidationHandler];
  if (v8)
  {
    v9 = *&v0[OBJC_IVAR____TtC12NowPlayingUI22TitleSectionHeaderView_layoutInvalidationHandler + 8];

    v8(v0);

    return sub_2173C(v8, v9);
  }

  return result;
}

uint64_t sub_99EDC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C3158, &qword_150450);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t block_copy_helper_9(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_99F7C()
{

  return _swift_deallocObject(v0, 48, 7);
}

unint64_t sub_99FF4()
{
  result = qword_1C5368;
  if (!qword_1C5368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5368);
  }

  return result;
}

uint64_t sub_9A06C(void *a1)
{
  v3 = sub_140CAC();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_140C8C();
  __chkstk_darwin(v7);
  v8 = sub_140CBC();
  __chkstk_darwin(v8 - 8);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  __chkstk_darwin(v9 - 8);
  v11 = v28 - v10;
  v12 = *(v1 + 24);
  v30 = v4;
  v31 = v3;
  v28[1] = v7;
  v29 = v1;
  if (a1)
  {
    v13 = sub_140D0C();
    (*(*(v13 - 8) + 56))(v11, 1, 1, v13);
    swift_storeEnumTagMultiPayload();
    (*(v4 + 104))(v6, enum case for InteractionContext.Origin.none(_:), v3);
    a1;

    sub_140C9C();
    sub_1445DC();
    swift_allocObject();
    v14 = sub_1445CC();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v14;

    sub_1426EC();
    v15 = sub_144C0C();
    v17 = v16;
    v18 = 0;
    v19 = 0;
    if ((v17 & 1) == 0)
    {
      v32 = v15;
      sub_1CB9C();
      v18 = sub_14513C();
    }
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = 0;

    sub_1426EC();
    v18 = 0;
    v19 = 0;
  }

  v20 = (v12 + OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel_episodeAdamId);
  *v20 = v18;
  v20[1] = v19;

  if (a1 && (v21 = [a1 podcast]) != 0 && (v22 = v21, v23 = objc_msgSend(v21, "supportsSubscription"), v22, v23))
  {
    v24 = sub_140D0C();
    (*(*(v24 - 8) + 56))(v11, 1, 1, v24);
    swift_storeEnumTagMultiPayload();
    (*(v30 + 104))(v6, enum case for InteractionContext.Origin.none(_:), v31);
    v25 = a1;

    sub_140C9C();
    sub_1445DC();
    swift_allocObject();
    v26 = sub_1445CC();
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = v26;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v32 = 1;
  }

  return sub_1426EC();
}

UIViewController_optional __swiftcall NowPlayingContextMenuProvider.previewViewController()()
{
  if (v0)
  {
    if (qword_1BFFE8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v1 = sub_9BAE8(&static NowPlayingDataProvider.shared, v10);
    if (v11)
    {
      sub_1DB40(v10, v12);
      sub_7D29C(v10);
      __swift_project_boxed_opaque_existential_1(v12, v12[3]);
      v3 = sub_14449C();

      v1 = __swift_destroy_boxed_opaque_existential_0(v12);
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = 0;
        v6 = (v3 + 32);
        while (1)
        {
          __swift_project_boxed_opaque_existential_1(v6, v6[3]);
          v7 = sub_14454C();

          if (v7)
          {
            break;
          }

          ++v5;
          v6 += 5;
          if (v4 == v5)
          {
            goto LABEL_12;
          }
        }

        v4 = v5;
      }

LABEL_12:
      v9 = *(v3 + 16);
      if (v4 == v9)
      {

        v8 = 0;
LABEL_16:

        goto LABEL_17;
      }

      if (v4 < v9)
      {
        __swift_project_boxed_opaque_existential_1((v3 + 32 + 40 * v4), *(v3 + 32 + 40 * v4 + 24));
        v8 = sub_14454C();

        if (v8)
        {
          goto LABEL_16;
        }

LABEL_20:
        __break(1u);
        goto LABEL_21;
      }

      __break(1u);
    }

    __break(1u);
    goto LABEL_20;
  }

  v8 = 0;
LABEL_17:
  v1 = v8;
LABEL_21:
  result.value.super.super.isa = v1;
  result.is_nil = v2;
  return result;
}

UIMenu __swiftcall NowPlayingContextMenuProvider.menu(view:)(UIView_optional view)
{
  v1 = *&view.is_nil;
  v2 = objc_opt_self();
  v3 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v4 = swift_allocObject();
  *(v4 + 16) = v1;
  *(v4 + 24) = v3;
  aBlock[4] = sub_7D294;
  aBlock[5] = v4;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_10;
  v5 = _Block_copy(aBlock);

  v6 = [v2 elementWithUncachedProvider:v5];
  _Block_release(v5);
  sub_2B860(0, &qword_1C4878, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_14F0E0;
  *(v7 + 32) = v6;
  v10 = v7;
  v14._countAndFlagsBits = 0;
  v14._object = 0xE000000000000000;
  v15.value._countAndFlagsBits = 0;
  v15.value._object = 0;
  v13.value.super.isa = 0;
  v13.is_nil = 0;
  v8.value = 0;
  return sub_144F7C(v14, v15, v13, v8, 0xFFFFFFFFFFFFFFFFLL, v10, v11);
}

uint64_t sub_9A8D4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v35 = a3;
  v32 = a1;
  v6 = sub_140D5C();
  v7 = *(v6 - 8);
  __chkstk_darwin(v6);
  v9 = &v28 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v10);
  v12 = &v28 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5590, &qword_1507D0);
  v33 = *(v13 - 8);
  v34 = v13;
  __chkstk_darwin(v13);
  v31 = &v28 - v14;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5598, &qword_1507D8);
  v15 = *(v36 - 8);
  __chkstk_darwin(v36);
  v30 = &v28 - v16;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  v17 = v41;
  if (v41 == 1)
  {
    v18 = 1;
    v19 = v36;
  }

  else
  {
    v42 = &type metadata for NowPlayingContextMenuProvider;
    v43 = sub_9C254();
    v41 = v17;
    swift_getKeyPath();
    swift_getKeyPath();

    v28 = a2;
    sub_1426DC();

    (*(v7 + 104))(v9, enum case for NowPlayingPlayerStyle.fullScreen(_:), v6);
    sub_9C530(&qword_1C2498, &type metadata accessor for NowPlayingPlayerStyle, &protocol conformance descriptor for NowPlayingPlayerStyle);
    sub_1449AC();
    sub_1449AC();
    v29 = a4;
    if (v39 != v37 || v40 != v38)
    {
      sub_1453BC();
    }

    v20 = *(v7 + 8);
    v20(v9, v6);
    v20(v12, v6);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C55A8, &qword_150870);
    sub_9C2B0();
    v21 = v31;
    sub_1443BC();
    v22 = swift_allocObject();
    v23 = v28;
    v22[2] = v32;
    v22[3] = v23;
    v22[4] = v35;
    sub_1D4A4(&qword_1C5600, &qword_1C5590, &qword_1507D0, &protocol conformance descriptor for ContextMenuTapView<A>);

    v24 = v30;
    v25 = v34;
    sub_14392C();

    v26 = sub_7BF04(v17);
    (*(v33 + 8))(v21, v25, v26);
    a4 = v29;
    v19 = v36;
    (*(v15 + 32))(v29, v24, v36);
    v18 = 0;
  }

  return (*(v15 + 56))(a4, v18, 1, v19);
}

double sub_9AE00()
{
  sub_1433AC();
  sub_143EAC();
  sub_143C2C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C55C0, &qword_150878);
  sub_9C36C();
  sub_143A3C();

  return result;
}

void sub_9AEB0(uint64_t a1, uint64_t a2)
{
  v3 = sub_14465C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v7 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a2 + OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel_episodeAdamId + 8))
  {
    sub_14430C();

    sub_1442FC();

    sub_14418C();
    sub_14435C();

    (*(v4 + 8))(v6, v3);
  }
}

uint64_t sub_9AFE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return v1;
}

double sub_9B068()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return result;
}

uint64_t sub_9B0E0()
{
  v1 = OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel__menuProvider;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5608, &qword_150898);
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  v3 = OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel__playerStyle;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21E0, &unk_14C5B0);
  (*(*(v4 - 8) + 8))(v0 + v3, v4);

  return swift_deallocClassInstance();
}

uint64_t sub_9B1E8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C21E0, &unk_14C5B0);
  v20 = *(v1 - 8);
  v21 = v1;
  __chkstk_darwin(v1);
  v3 = &v19 - v2;
  v4 = sub_140D5C();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v10 = &v19 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5608, &qword_150898);
  v12 = *(v11 - 8);
  __chkstk_darwin(v11);
  v14 = &v19 - v13;
  v15 = OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel__menuProvider;
  v22 = 1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5480, &qword_1506A8);
  sub_14269C();
  (*(v12 + 32))(v0 + v15, v14, v11);
  v16 = OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel__playerStyle;
  (*(v5 + 104))(v10, enum case for NowPlayingPlayerStyle.mini(_:), v4);
  (*(v5 + 16))(v7, v10, v4);
  sub_14269C();
  (*(v5 + 8))(v10, v4);
  (*(v20 + 32))(v0 + v16, v3, v21);
  v17 = (v0 + OBJC_IVAR____TtCC12NowPlayingUI24NowPlayingMenuControllerP33_BCD7B6015FBE6204AF7DB3B0A957E5FF9ViewModel_episodeAdamId);
  *v17 = 0;
  v17[1] = 0;
  return v0;
}

uint64_t sub_9B4B8@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for NowPlayingMenuController.ViewModel(0);
  result = sub_1425BC();
  *a1 = result;
  return result;
}

uint64_t sub_9B4F8()
{

  return swift_deallocClassInstance();
}

UIMenu __swiftcall NowPlayingContextMenuProvider.menu(for:)(UIButton a1)
{
  v2 = v1;
  v4 = sub_1424DC();
  v5 = *(v4 - 8);
  __chkstk_darwin(v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5370, &qword_150620);
  *&v9 = __chkstk_darwin(v8 - 8).n128_u64[0];
  v11 = aBlock - v10;
  v12 = [(objc_class *)a1.super.super.super.super.isa hoverStyle];
  if (v12)
  {
    v13 = v12;
    sub_1424CC();
    sub_1424BC();
    (*(v5 + 8))(v7, v4);
    (*(v5 + 56))(v11, 0, 1, v4);
    sub_144BDC();
  }

  v14 = objc_opt_self();
  v15 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v2;
  *(v16 + 24) = v15;
  aBlock[4] = sub_9C700;
  aBlock[5] = v16;
  aBlock[0] = _NSConcreteStackBlock;
  aBlock[1] = 1107296256;
  aBlock[2] = sub_9B9D0;
  aBlock[3] = &block_descriptor_11;
  v17 = _Block_copy(aBlock);

  v18 = [v14 elementWithUncachedProvider:v17];
  _Block_release(v17);
  sub_2B860(0, &qword_1C4878, UIMenu_ptr);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C4880, &unk_14F180);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_14F0E0;
  *(v19 + 32) = v18;
  v22 = v19;
  v26._countAndFlagsBits = 0;
  v26._object = 0xE000000000000000;
  v27.value._countAndFlagsBits = 0;
  v27.value._object = 0;
  v25.value.super.isa = 0;
  v25.is_nil = 0;
  v20.value = 0;
  return sub_144F7C(v26, v27, v25, v20, 0xFFFFFFFFFFFFFFFFLL, v22, v23);
}

double sub_9B82C(void (*a1)(uint64_t), uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C47D0, qword_14F0F0);
  *&result = __chkstk_darwin(v6 - 8).n128_u64[0];
  v9 = &v17 - v8;
  if (a3)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v11 = Strong;

      v12 = v11;
      sub_140CEC();
      v13 = sub_140D0C();
      (*(*(v13 - 8) + 56))(v9, 0, 1, v13);
      sub_14457C();
      isa = ContextActionsConfiguration.menu(extraContextMenuElements:)(_swiftEmptyArrayStorage).super.super.isa;
      v15 = [(objc_class *)isa children];
      sub_2B860(0, &qword_1C4870, UIMenuElement_ptr);
      v16 = sub_1449DC();

      a1(v16);
    }
  }

  return result;
}

double sub_9B9D0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_9C5FC, v4);

  return result;
}

void sub_9BA64(uint64_t a1, uint64_t a2)
{
  sub_2B860(0, &qword_1C4870, UIMenuElement_ptr);
  isa = sub_1449CC().super.isa;
  (*(a2 + 16))(a2, isa);
}

uint64_t sub_9BAE8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1510, &unk_150610);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_9BB58()
{
  swift_unknownObjectWeakDestroy();

  return _swift_deallocObject(v0, 24, 7);
}

uint64_t block_copy_helper_10(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_9BBAC(void *a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  *a2 = v3;
}

uint64_t sub_9BC2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  swift_getKeyPath();
  swift_getKeyPath();

  sub_7D244(v2);
  return sub_1426EC();
}

double sub_9BCA8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  return result;
}

uint64_t sub_9BD24(uint64_t a1, uint64_t *a2)
{
  v3 = sub_140D5C();
  v4 = *(v3 - 8);
  __chkstk_darwin(v3);
  v6 = &v13 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __chkstk_darwin(v7);
  v10 = &v13 - v9;
  v11 = *(v4 + 16);
  v11(&v13 - v9, a1, v3, v8);
  swift_getKeyPath();
  swift_getKeyPath();
  (v11)(v6, v10, v3);

  sub_1426EC();
  return (*(v4 + 8))(v10, v3);
}

uint64_t objectdestroy_2Tm()
{

  return _swift_deallocObject(v0, 32, 7);
}

uint64_t type metadata accessor for NowPlayingMenuController.ViewModel(uint64_t a1)
{
  result = qword_1C5468;
  if (!qword_1C5468)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_9BF4C(uint64_t a1)
{
  sub_9C020(319);
  if (v1 <= 0x3F)
  {
    sub_9C084(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_9C020(uint64_t a1)
{
  if (!qword_1C5478)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5480, &qword_1506A8);
    v1 = sub_1426FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C5478);
    }
  }
}

void sub_9C084(uint64_t a1)
{
  if (!qword_1C5488)
  {
    sub_140D5C();
    v1 = sub_1426FC();
    if (!v2)
    {
      atomic_store(v1, &qword_1C5488);
    }
  }
}

uint64_t sub_9C0DC(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_9C138(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_9C198(uint64_t a1, int a2)
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

uint64_t sub_9C1E0(uint64_t result, int a2, int a3)
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

unint64_t sub_9C254()
{
  result = qword_1C55A0;
  if (!qword_1C55A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C55A0);
  }

  return result;
}

unint64_t sub_9C2B0()
{
  result = qword_1C55B0;
  if (!qword_1C55B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C55A8, &qword_150870);
    sub_9C36C();
    sub_9C530(&qword_1C2B50, &type metadata accessor for AccessibilityAttachmentModifier, &protocol conformance descriptor for AccessibilityAttachmentModifier);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C55B0);
  }

  return result;
}

unint64_t sub_9C36C()
{
  result = qword_1C55B8;
  if (!qword_1C55B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C55C0, &qword_150878);
    sub_9C424();
    sub_1D4A4(&qword_1C55F0, &qword_1C55F8, &qword_150890, &protocol conformance descriptor for _OverlayModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C55B8);
  }

  return result;
}

unint64_t sub_9C424()
{
  result = qword_1C55C8;
  if (!qword_1C55C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C55D0, &qword_150880);
    sub_9C4DC();
    sub_1D4A4(&qword_1C55E0, &qword_1C55E8, &qword_150888, &protocol conformance descriptor for _ForegroundStyleModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C55C8);
  }

  return result;
}

unint64_t sub_9C4DC()
{
  result = qword_1C55D8;
  if (!qword_1C55D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C55D8);
  }

  return result;
}

uint64_t sub_9C530(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_9C578()
{

  return _swift_deallocObject(v0, 40, 7);
}

uint64_t sub_9C5C4()
{
  _Block_release(*(v0 + 16));

  return _swift_deallocObject(v0, 24, 7);
}

unint64_t sub_9C608()
{
  result = qword_1C5610;
  if (!qword_1C5610)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5618, &unk_1508A0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5590, &qword_1507D0);
    sub_1D4A4(&qword_1C5600, &qword_1C5590, &qword_1507D0, &protocol conformance descriptor for ContextMenuTapView<A>);
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5610);
  }

  return result;
}

uint64_t sub_9C70C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5670, &qword_150B88);
  __chkstk_darwin(v4);
  v6 = v14 - v5;
  v14[0] = a1;
  v14[1] = a2;
  sub_9CCC();

  sub_143C9C();
  v7 = sub_14368C();
  KeyPath = swift_getKeyPath();
  v9 = &v6[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5678, &qword_150BC0) + 36)];
  *v9 = KeyPath;
  v9[1] = v7;
  v10 = sub_143C0C();
  v11 = swift_getKeyPath();
  v12 = &v6[*(v4 + 36)];
  *v12 = v11;
  v12[1] = v10;
  sub_9D57C();
  sub_9D718();
  sub_14389C();
  return sub_9D76C(v6);
}

uint64_t sub_9C870@<X0>(char *a1@<X8>)
{
  v28 = a1;
  v1 = sub_14346C();
  v2 = *(v1 - 8);
  v25 = v1;
  v26 = v2;
  __chkstk_darwin(v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v5);
  v7 = &v25 - v6;
  v8 = sub_14344C();
  v27 = *(v8 - 8);
  v9 = v27;
  __chkstk_darwin(v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v12);
  v14 = &v25 - v13;
  sub_14345C();
  sub_14347C();
  v15 = *(v9 + 16);
  v15(v11, v14, v8);
  v16 = *(v2 + 16);
  v16(v4, v7, v1);
  v17 = v28;
  v15(v28, v11, v8);
  v18 = &v17[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C56C8, &qword_150C68) + 48)];
  v19 = v25;
  v16(v18, v4, v25);
  v20 = *(v26 + 8);
  v21 = v7;
  v22 = v19;
  v20(v21, v19);
  v23 = *(v27 + 8);
  v23(v14, v8);
  v20(v4, v22);
  return (v23)(v11, v8);
}

uint64_t sub_9CB00@<X0>(uint64_t a2@<X8>)
{
  *a2 = sub_14305C();
  *(a2 + 8) = 0x4008000000000000;
  *(a2 + 16) = 0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C56C0, &qword_150C60);
  return sub_9C870((a2 + *(v3 + 44)));
}

uint64_t property wrapper backing initializer of MiniPlayerSublineView.viewModel(uint64_t a1)
{
  type metadata accessor for NowPlayingMiniPlayerSublineViewModel(0);
  sub_9CBB0();

  return sub_142B9C();
}

unint64_t sub_9CBB0()
{
  result = qword_1C45B0;
  if (!qword_1C45B0)
  {
    type metadata accessor for NowPlayingMiniPlayerSublineViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C45B0);
  }

  return result;
}

double MiniPlayerSublineView.body.getter@<D0>(uint64_t a2@<X8>)
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1426DC();

  if (v4)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1426DC();

    sub_9D004(v4, *(&v4 + 1));
    *&v4 = 0x4034000000000000;
    sub_9D1CC();
    sub_142AFC();
    sub_142ADC();
    sub_142AEC();

    sub_143F2C();
    sub_142B0C();
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_1426DC();

    if (*(&v4 + 1))
    {
      sub_78BDC();
      if (sub_144B8C())
      {
        sub_9CCC();
        sub_1437EC();
      }

      else
      {
      }
    }

    sub_14329C();
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5628, &qword_150940);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5630, &qword_150948);
  sub_9D220();
  sub_9D2A4();
  sub_14329C();
  result = *&v4;
  *a2 = v4;
  *(a2 + 16) = v5;
  *(a2 + 32) = v6;
  *(a2 + 40) = v7;
  return result;
}

uint64_t sub_9CF08@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5660, &qword_150B78);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5668, &qword_150B80);
  v8 = (a2 + *(result + 36));
  *v8 = v5;
  v8[1] = 0;
  return result;
}

uint64_t sub_9CFAC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142F6C();
  *a1 = result;
  return result;
}

uint64_t sub_9D004(uint64_t a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 mainBundle];
  v13._countAndFlagsBits = 0x8000000000163E90;
  v15._object = 0x8000000000163E70;
  v15._countAndFlagsBits = 0xD000000000000016;
  v17.value._countAndFlagsBits = 0;
  v17.value._object = 0;
  v6.super.isa = v5;
  v19._countAndFlagsBits = 0;
  v19._object = 0xE000000000000000;
  v7 = sub_1409DC(v15, v17, v6, v19, 0xD000000000000016, v13);

  if (a2)
  {
    v8 = [v4 mainBundle];
    v14._countAndFlagsBits = 0xE000000000000000;
    v16._countAndFlagsBits = 0xD000000000000022;
    v16._object = 0x8000000000163EB0;
    v18.value._countAndFlagsBits = 0;
    v18.value._object = 0;
    v9.super.isa = v8;
    v20._countAndFlagsBits = 0;
    v20._object = 0xE000000000000000;
    sub_1409DC(v16, v18, v9, v20, 0, v14);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C9410, &unk_150C00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_14A710;
    *(v10 + 56) = &type metadata for String;
    *(v10 + 64) = sub_9D7D4();
    *(v10 + 32) = a1;
    *(v10 + 40) = a2;
    v11 = sub_1448AC();
  }

  else
  {

    return v7;
  }

  return v11;
}

unint64_t sub_9D1CC()
{
  result = qword_1C5620;
  if (!qword_1C5620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5620);
  }

  return result;
}

unint64_t sub_9D220()
{
  result = qword_1C5638;
  if (!qword_1C5638)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5628, &qword_150940);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5638);
  }

  return result;
}

unint64_t sub_9D2A4()
{
  result = qword_1C5640;
  if (!qword_1C5640)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5630, &qword_150948);
    sub_9D35C();
    sub_1D4A4(&qword_1C1FD8, &qword_1C1FE0, &qword_150950, &protocol conformance descriptor for _TraitWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5640);
  }

  return result;
}

unint64_t sub_9D35C()
{
  result = qword_1C5648;
  if (!qword_1C5648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5648);
  }

  return result;
}

unint64_t sub_9D3E8()
{
  result = qword_1C5650;
  if (!qword_1C5650)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5658, &qword_150A48);
    sub_9D220();
    sub_9D2A4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5650);
  }

  return result;
}

uint64_t sub_9D4CC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142F6C();
  *a1 = result;
  return result;
}

uint64_t sub_9D524@<X0>(uint64_t *a1@<X8>)
{
  result = sub_142EAC();
  *a1 = result;
  return result;
}

unint64_t sub_9D57C()
{
  result = qword_1C5680;
  if (!qword_1C5680)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5670, &qword_150B88);
    sub_9D634();
    sub_1D4A4(&qword_1C5690, &qword_1C5698, &qword_150BF8, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5680);
  }

  return result;
}

unint64_t sub_9D634()
{
  result = qword_1C5688;
  if (!qword_1C5688)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5678, &qword_150BC0);
    sub_1D4A4(&qword_1C1C38, &qword_1C1C30, &qword_14BE20, &protocol conformance descriptor for Label<A, B>);
    sub_1D4A4(&qword_1C12A8, &qword_1C2BE0, &qword_14D110, &protocol conformance descriptor for _EnvironmentKeyWritingModifier<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C5688);
  }

  return result;
}

unint64_t sub_9D718()
{
  result = qword_1C56A0;
  if (!qword_1C56A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C56A0);
  }

  return result;
}

uint64_t sub_9D76C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5670, &qword_150B88);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_9D7D4()
{
  result = qword_1C56A8;
  if (!qword_1C56A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C56A8);
  }

  return result;
}

unint64_t sub_9D83C()
{
  result = qword_1C56B0;
  if (!qword_1C56B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5668, &qword_150B80);
    sub_1D4A4(&qword_1C56B8, &qword_1C5660, &qword_150B78, &protocol conformance descriptor for _ViewModifier_Content<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1C56B0);
  }

  return result;
}

uint64_t sub_9D8F4()
{
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1C5670, &qword_150B88);
  sub_9D57C();
  sub_9D718();
  return swift_getOpaqueTypeConformance2();
}

__int128 *NowPlayingDataProvider.shared.unsafeMutableAddressor()
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  return &static NowPlayingDataProvider.shared;
}

void NowPlayingDataProvider.init(asPartOf:)(void *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1508, &unk_14B7C0);
  sub_1446DC();

  a2[5] = 0;
  a2[6] = 0;
}

double sub_9DA6C()
{
  qword_1D1848 = 0;
  result = 0.0;
  unk_1D1828 = 0u;
  unk_1D1838 = 0u;
  static NowPlayingDataProvider.shared = 0u;
  return result;
}

uint64_t static NowPlayingDataProvider.shared.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return sub_9BAE8(&static NowPlayingDataProvider.shared, a1);
}

uint64_t static NowPlayingDataProvider.shared.setter(uint64_t a1)
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  sub_9DB98(a1, &static NowPlayingDataProvider.shared);
  swift_endAccess();
  return sub_9DC08(a1);
}

uint64_t sub_9DB98(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1510, &unk_150610);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_9DC08(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C1510, &unk_150610);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t (*static NowPlayingDataProvider.shared.modify(uint64_t a1))(uint64_t a1)
{
  if (qword_1BFFE8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

void *NowPlayingDataProvider.rootViewController.getter()
{
  v1 = *(v0 + 40);
  v2 = v1;
  return v1;
}

uint64_t sub_9DDC0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 24);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_9DE08(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_9DE64@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_9F054(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = &v5[7 * a1];
    v10 = v9[4];
    v9 += 4;
    v11 = *(v9 + 8);
    v12 = v9[2];
    v13 = v9[5];
    v14 = *(v9 + 48);
    v15 = *(v9 + 3);
    result = memmove(v9, v9 + 7, 56 * (v7 - 1 - a1));
    v5[2] = v8;
    *v2 = v5;
    *a2 = v10;
    *(a2 + 8) = v11;
    *(a2 + 16) = v12;
    *(a2 + 24) = v15;
    *(a2 + 40) = v13;
    *(a2 + 48) = v14;
  }

  return result;
}

uint64_t sub_9DF40(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_9F090(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v3 + 32 * a1;
    v7 = *(v6 + 32);
    v8 = v5 - 1;
    memmove((v6 + 32), (v6 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

unint64_t sub_9DFE4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || (v3 & 0x8000000000000000) != 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_9F0A4(v3);
    v3 = result;
  }

  v5 = *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8));
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *(&stru_20.cmd + 8 * a1 + (v3 & 0xFFFFFFFFFFFFFF8));
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(&dword_10 + (v3 & 0xFFFFFFFFFFFFFF8)) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

void sub_9E074(uint64_t a1)
{
  v1 = sub_9EF70(a1);
  v2 = v1[2];
  if (!v2)
  {
LABEL_19:

    return;
  }

  v3 = 0;
  v4 = _swiftEmptyArrayStorage;
  while (v3 < v1[2])
  {
    v5 = v1[v3 + 4];
    v6 = *(v5 + 16);
    v7 = *(v4 + 2);
    v8 = v7 + v6;
    if (__OFADD__(v7, v6))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v8 <= *(v4 + 3) >> 1)
    {
      if (*(v5 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v7 <= v8)
      {
        v10 = v7 + v6;
      }

      else
      {
        v10 = v7;
      }

      v4 = sub_133F70(isUniquelyReferenced_nonNull_native, v10, 1, v4);
      if (*(v5 + 16))
      {
LABEL_15:
        if ((*(v4 + 3) >> 1) - *(v4 + 2) < v6)
        {
          goto LABEL_23;
        }

        swift_arrayInitWithCopy();

        if (v6)
        {
          v11 = *(v4 + 2);
          v12 = __OFADD__(v11, v6);
          v13 = v11 + v6;
          if (v12)
          {
            goto LABEL_24;
          }

          *(v4 + 2) = v13;
        }

        goto LABEL_4;
      }
    }

    if (v6)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v2 == ++v3)
    {
      goto LABEL_19;
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
}

uint64_t sub_9E1E0()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 24);
  }

  else
  {
    sub_9E074(*(v0 + 16));
    v1 = v2;
    *(v0 + 24) = v2;
  }

  return v1;
}

void *sub_9E240(uint64_t a1)
{
  v1[3] = 0;
  v1[4] = sub_13A180(_swiftEmptyArrayStorage);
  v1[5] = sub_13A180(_swiftEmptyArrayStorage);
  v1[6] = sub_13A298(_swiftEmptyArrayStorage);
  v1[7] = _swiftEmptyArrayStorage;
  v1[2] = a1;
  swift_beginAccess();
  v1[7] = _swiftEmptyArrayStorage;
  sub_9E1E0();

  return v1;
}

void sub_9E2D0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  swift_beginAccess();
  v4[4] = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v4[5] = &_swiftEmptyDictionarySingleton;

  v4[6] = &_swiftEmptyDictionarySingleton;

  swift_beginAccess();
  v9 = v4[7];

  v10 = sub_12B8AC(a1, a2, a3, a4 & 1, v9);
  LOBYTE(a2) = v11;

  if ((a2 & 1) == 0)
  {
    swift_beginAccess();
    sub_9DF40(v10);
    swift_endAccess();
    swift_unknownObjectRelease();
  }
}

void sub_9E3E8(int64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v10 = sub_9E1E0();
  v11 = v10;
  if (a2 == 2)
  {
    v12 = a1 % 1000000;
    if (__OFSUB__(a1, a1 % 1000000))
    {
      goto LABEL_59;
    }

    v13 = (a1 - a1 % 1000000) / 1000000 - (a1 - a1 % 1000000 > 999999);
    if (v13 < *(v10 + 16))
    {
      if (v13 < 0)
      {
        goto LABEL_60;
      }

      v14 = v10 + 32 * v13;
      v15 = *(v14 + 32);
      v16 = *(v14 + 40);
      v17 = *(v14 + 48);
      v18 = *(v14 + 56);
      swift_unknownObjectRetain();

      goto LABEL_54;
    }

LABEL_44:

    v15 = 0;
    v16 = 0;
    v17 = 0;
    v18 = 0;
    v12 = 0;
LABEL_54:
    *a5 = v15;
    a5[1] = v16;
    a5[2] = v17;
    a5[3] = v18;
    a5[4] = v12;
    return;
  }

  v19 = sub_1448DC();
  if (a4)
  {
    if (v19 == a3 && v20 == a4)
    {

LABEL_46:
      if (a1 < 0)
      {
        goto LABEL_61;
      }

      if (*(v11 + 16) <= a1)
      {
        goto LABEL_62;
      }

      v50 = v11 + 32 * a1;
      v15 = *(v50 + 32);
      v16 = *(v50 + 40);
      v17 = *(v50 + 48);
      v18 = *(v50 + 56);
      swift_unknownObjectRetain();

      v12 = 0;
      goto LABEL_54;
    }

    v22 = sub_1453BC();

    if (v22)
    {
      goto LABEL_46;
    }
  }

  else
  {
  }

  v53 = *(v11 + 16);
  if (!v53)
  {
    goto LABEL_44;
  }

  v54 = a1;
  v51 = a5;
  v23 = v55;
  swift_beginAccess();
  v24 = 0;
  v25 = 0;
  v26 = (v11 + 56);
  v52 = v11;
  while (v25 < *(v11 + 16))
  {
    v15 = *(v26 - 3);
    v16 = *(v26 - 2);
    v17 = *(v26 - 1);
    v18 = *v26;
    v27 = *(v23 + 32);
    if (*(v27 + 16))
    {
      swift_unknownObjectRetain();

      v28 = sub_F7DD8(v15, v16, v17, v18);
      if (v29)
      {
        v58 = *(*(v27 + 56) + 8 * v28);

        goto LABEL_39;
      }
    }

    else
    {
      swift_unknownObjectRetain();
    }

    ObjectType = swift_getObjectType();
    v56 = (*(v16 + 8))(ObjectType, v16);
    v31 = [v56 dataSource];
    v57 = v18;
    if (v31)
    {
      v32 = v31;
      if ([v31 respondsToSelector:"numberOfSectionsInCollectionView:"])
      {
        v58 = [v32 numberOfSectionsInCollectionView:v56];
      }

      else
      {
        v58 = 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v58 = 1;
    }

    swift_beginAccess();
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v34 = *(v23 + 32);
    *(v23 + 32) = 0x8000000000000000;
    v35 = v16;
    v36 = v16;
    v37 = v17;
    v39 = sub_F7DD8(v15, v36, v17, v57);
    v40 = v34[2];
    v41 = (v38 & 1) == 0;
    v42 = v40 + v41;
    if (__OFADD__(v40, v41))
    {
      goto LABEL_57;
    }

    v43 = v38;
    if (v34[3] >= v42)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_138FC4();
      }
    }

    else
    {
      sub_1359A4(v42, isUniquelyReferenced_nonNull_native);
      v44 = sub_F7DD8(v15, v35, v37, v57);
      if ((v43 & 1) != (v45 & 1))
      {
        goto LABEL_63;
      }

      v39 = v44;
    }

    v11 = v52;
    if (v43)
    {
      *(v34[7] + 8 * v39) = v58;
      v17 = v37;
    }

    else
    {
      v34[(v39 >> 6) + 8] |= 1 << v39;
      v46 = v34[6] + 32 * v39;
      *v46 = v15;
      *(v46 + 8) = v35;
      *(v46 + 16) = v37;
      *(v46 + 24) = v57;
      *(v34[7] + 8 * v39) = v58;
      v47 = v34[2];
      v48 = __OFADD__(v47, 1);
      v49 = v47 + 1;
      if (v48)
      {
        goto LABEL_58;
      }

      v17 = v37;
      v34[2] = v49;
      swift_unknownObjectRetain();
    }

    v23 = v55;
    *(v55 + 32) = v34;
    swift_endAccess();

    v16 = v35;
    v18 = v57;
LABEL_39:
    v12 = v54 - v24;
    if (v54 >= v24 && v12 < v58)
    {

      if (__OFSUB__(v54, v24))
      {
        __break(1u);
LABEL_52:

        v15 = 0;
        v16 = 0;
        v17 = 0;
        v18 = 0;
        v12 = 0;
      }

      a5 = v51;
      goto LABEL_54;
    }

    swift_unknownObjectRelease();
    v48 = __OFADD__(v24, v58);
    v24 += v58;
    if (v48)
    {
      goto LABEL_56;
    }

    ++v25;
    v26 += 32;
    if (v53 == v25)
    {
      goto LABEL_52;
    }
  }

  __break(1u);
LABEL_56:
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
  __break(1u);
LABEL_62:
  __break(1u);
LABEL_63:
  sub_1453EC();
  __break(1u);
}

id sub_9E8F0(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v10 = *(v4 + 32);
  if (*(v10 + 16))
  {

    v11 = sub_F7DD8(a1, a2, a3, a4 & 1);
    if (v12)
    {
      v13 = *(*(v10 + 56) + 8 * v11);

      return v13;
    }
  }

  ObjectType = swift_getObjectType();
  v15 = (*(a2 + 8))(ObjectType, a2);
  v16 = [v15 dataSource];
  if (v16)
  {
    v17 = v16;
    if ([v16 respondsToSelector:"numberOfSectionsInCollectionView:"])
    {
      v13 = [v17 numberOfSectionsInCollectionView:v15];
    }

    else
    {
      v13 = &dword_0 + 1;
    }

    swift_unknownObjectRelease();
  }

  else
  {
    v13 = &dword_0 + 1;
  }

  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *(v5 + 32);
  *(v5 + 32) = 0x8000000000000000;
  sub_137D20(v13, a1, a2, a3, a4 & 1, isUniquelyReferenced_nonNull_native);
  *(v5 + 32) = v20;
  swift_endAccess();

  return v13;
}

uint64_t sub_9EA88(void *a1, uint64_t a2, uint64_t a3, char a4)
{
  v5 = v4;
  swift_beginAccess();
  v8 = *(v4 + 40);
  if (*(v8 + 16))
  {

    v9 = sub_F7DD8(a1, a2, a3, a4 & 1);
    if (v10)
    {
      v11 = *(*(v8 + 56) + 8 * v9);

      return v11;
    }
  }

  v12 = sub_9E1E0();
  v47 = *(v12 + 16);
  if (!v47)
  {
LABEL_40:

    return 0;
  }

  v43 = a2;
  swift_beginAccess();
  v11 = 0;
  v13 = 0;
  v44 = a3;
  v14 = (v12 + 56);
  v46 = v12;
  while (v13 < *(v12 + 16))
  {
    v15 = *(v14 - 3);
    v16 = *(v14 - 2);
    v52 = *(v14 - 1);
    v17 = *v14;
    ObjectType = swift_getObjectType();
    if (v15 != a1)
    {
      goto LABEL_13;
    }

    if (a4)
    {
      if (v17)
      {
        goto LABEL_42;
      }

LABEL_13:
      swift_unknownObjectRetain();
      goto LABEL_14;
    }

    if (v17)
    {
      goto LABEL_13;
    }

    swift_unknownObjectRetain();
    if (sub_141AFC())
    {
      swift_unknownObjectRelease();
LABEL_42:

      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v53 = *(v5 + 40);
      *(v5 + 40) = 0x8000000000000000;
      sub_137D20(v11, a1, v43, v44, a4 & 1, isUniquelyReferenced_nonNull_native);
      *(v5 + 40) = v53;
      swift_endAccess();
      return v11;
    }

LABEL_14:
    v19 = *(v5 + 32);
    if (*(v19 + 16))
    {

      v20 = sub_F7DD8(v15, v16, v52, v17);
      if (v21)
      {
        v22 = *(*(v19 + 56) + 8 * v20);

        goto LABEL_35;
      }
    }

    v51 = v17;
    v23 = (*(v16 + 8))(ObjectType, v16);
    v24 = [v23 dataSource];
    v49 = v23;
    if (v24)
    {
      v25 = v24;
      if ([v24 respondsToSelector:"numberOfSectionsInCollectionView:"])
      {
        v50 = [v25 numberOfSectionsInCollectionView:v23];
      }

      else
      {
        v50 = &dword_0 + 1;
      }

      swift_unknownObjectRelease();
    }

    else
    {
      v50 = &dword_0 + 1;
    }

    swift_beginAccess();
    v26 = swift_isUniquelyReferenced_nonNull_native();
    v27 = *(v5 + 32);
    v28 = v5;
    *(v5 + 32) = 0x8000000000000000;
    v30 = sub_F7DD8(v15, v16, v52, v51);
    v31 = v27[2];
    v32 = (v29 & 1) == 0;
    v33 = v31 + v32;
    if (__OFADD__(v31, v32))
    {
      goto LABEL_45;
    }

    v34 = v29;
    if (v27[3] >= v33)
    {
      if ((v26 & 1) == 0)
      {
        sub_138FC4();
      }
    }

    else
    {
      sub_1359A4(v33, v26);
      v35 = sub_F7DD8(v15, v16, v52, v51);
      if ((v34 & 1) != (v36 & 1))
      {
        goto LABEL_47;
      }

      v30 = v35;
    }

    v12 = v46;
    if (v34)
    {
      v22 = v50;
      *(v27[7] + 8 * v30) = v50;
    }

    else
    {
      v27[(v30 >> 6) + 8] |= 1 << v30;
      v37 = v27[6] + 32 * v30;
      *v37 = v15;
      *(v37 + 8) = v16;
      *(v37 + 16) = v52;
      *(v37 + 24) = v51;
      v22 = v50;
      *(v27[7] + 8 * v30) = v50;
      v38 = v27[2];
      v39 = __OFADD__(v38, 1);
      v40 = v38 + 1;
      if (v39)
      {
        goto LABEL_46;
      }

      v27[2] = v40;
      swift_unknownObjectRetain();
    }

    v5 = v28;
    *(v28 + 32) = v27;
    swift_endAccess();

LABEL_35:
    swift_unknownObjectRelease();
    v39 = __OFADD__(v11, v22);
    v11 += v22;
    if (v39)
    {
      goto LABEL_44;
    }

    ++v13;
    v14 += 32;
    if (v47 == v13)
    {
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_44:
  __break(1u);
LABEL_45:
  __break(1u);
LABEL_46:
  __break(1u);
LABEL_47:
  result = sub_1453EC();
  __break(1u);
  return result;
}

uint64_t sub_9EEEC()
{

  return swift_deallocClassInstance();
}

void *sub_9EF70(uint64_t a1)
{
  v2 = *(a1 + 16);
  sub_92B2C(0, v2, 0);
  if (v2)
  {
    v3 = (a1 + 32);
    do
    {
      v4 = *v3;
      v6 = _swiftEmptyArrayStorage[2];
      v5 = _swiftEmptyArrayStorage[3];

      if (v6 >= v5 >> 1)
      {
        sub_92B2C((v5 > 1), v6 + 1, 1);
      }

      _swiftEmptyArrayStorage[2] = v6 + 1;
      _swiftEmptyArrayStorage[v6 + 4] = v4;
      ++v3;
      --v2;
    }

    while (v2);
  }

  return _swiftEmptyArrayStorage;
}

uint64_t sub_9F0A4(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_14531C();
  }

  return sub_14520C();
}

void sub_9F108(uint64_t a1)
{
  sub_A18B8(319);
  if (v1 <= 0x3F)
  {
    swift_initClassMetadata2();
  }
}

void *sub_9F1D0()
{
  v0 = sub_1419BC();
  v57 = *(v0 - 8);
  v58 = v0;
  __chkstk_darwin(v0);
  v55 = &v46 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v2);
  v56 = &v46 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C25C0, &unk_14BEA0);
  v53 = *(v4 - 8);
  v54 = v4;
  __chkstk_darwin(v4);
  v6 = &v46 - v5;
  v52 = sub_14192C();
  v7 = *(v52 - 8);
  __chkstk_darwin(v52);
  v9 = &v46 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_142C0C();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v46 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v46 - v15;
  sub_142ECC();
  (*(v11 + 104))(v13, enum case for LayoutDirection.leftToRight(_:), v10);
  v17 = sub_142BFC();
  v18 = *(v11 + 8);
  v18(v13, v10);
  v18(v16, v10);
  if (v17)
  {
    sub_14190C();
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v20 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v48 = *(v7 + 72);
    v49 = v19;
    v21 = swift_allocObject();
    v46 = xmmword_14A710;
    *(v21 + 16) = xmmword_14A710;
    v22 = *(v7 + 32);
    v50 = v20;
    v51 = v21;
    v23 = v52;
    v47 = v22;
    v22(v21 + v20, v9, v52);
    sub_142DCC();
    v24 = v56;
    sub_14123C();
    (*(v53 + 8))(v6, v54);
    v25 = v55;
    sub_14198C();
    LOBYTE(v20) = sub_14199C();
    v26 = *(v57 + 8);
    v27 = v25;
    v28 = v58;
    v26(v27, v58);
    v26(v24, v28);
    if (v20)
    {
      v29 = v23;
      sub_1418EC();
      v30 = v50;
      v31 = swift_allocObject();
      *(v31 + 16) = v46;
      v47(v31 + v30, v9, v29);
      v32 = v31;
    }

    else
    {
      v32 = _swiftEmptyArrayStorage;
    }

    v59 = v51;
  }

  else
  {
    v33 = v9;
    v34 = v52;
    sub_142DCC();
    v35 = v56;
    sub_14123C();
    (*(v53 + 8))(v6, v54);
    v36 = v55;
    sub_14198C();
    v37 = sub_14199C();
    v38 = *(v57 + 8);
    v39 = v36;
    v40 = v58;
    v38(v39, v58);
    v38(v35, v40);
    if (v37)
    {
      sub_1418EC();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
      v41 = (*(v7 + 80) + 32) & ~*(v7 + 80);
      v42 = swift_allocObject();
      *(v42 + 1) = xmmword_14A710;
      (*(v7 + 32))(v42 + v41, v33, v34);
    }

    else
    {
      v42 = _swiftEmptyArrayStorage;
    }

    sub_14190C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v43 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v44 = swift_allocObject();
    *(v44 + 16) = xmmword_14A710;
    (*(v7 + 32))(v44 + v43, v33, v34);
    v59 = v42;
    v32 = v44;
  }

  sub_A7324(v32);
  return v59;
}

void *sub_9F784(uint64_t a1)
{
  v66 = sub_142C0C();
  v2 = *(v66 - 8);
  __chkstk_darwin(v66);
  *&v65 = &v61 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v4);
  v64 = &v61 - v5;
  v79 = sub_14192C();
  v6 = *(v79 - 8);
  __chkstk_darwin(v79);
  v72 = &v61 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v8);
  v78 = &v61 - v9;
  v10 = sub_1419BC();
  v11 = *(v10 - 8);
  __chkstk_darwin(v10);
  v13 = &v61 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin(v14);
  v16 = &v61 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1C25C0, &unk_14BEA0);
  v18 = *(v17 - 8);
  __chkstk_darwin(v17);
  v20 = &v61 - v19;
  v77 = a1;
  sub_142DCC();
  sub_14123C();
  v21 = *(v18 + 8);
  v63 = v20;
  v73 = v18 + 8;
  v74 = v17;
  v71 = v21;
  v21(v20, v17);
  sub_1419AC();
  v68 = sub_A20A0(&qword_1C5A98, &type metadata accessor for NowPlayingMiniPlayerAccessoryLayout.WidthConstraint, &protocol conformance descriptor for NowPlayingMiniPlayerAccessoryLayout.WidthConstraint);
  LOBYTE(a1) = sub_14484C();
  v22 = *(v11 + 8);
  v75 = v13;
  v22(v13, v10);
  v67 = v16;
  v62 = v10;
  v76 = v11 + 8;
  v69 = v22;
  v22(v16, v10);
  if (a1)
  {
    v70 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_1C0000 != -1)
    {
      swift_once();
    }

    v23 = sub_14142C();
    __swift_project_value_buffer(v23, qword_1C58B0);
    v24 = v78;
    sub_14191C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v25 = (*(v6 + 80) + 32) & ~*(v6 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_14A710;
    v27 = *(v6 + 32);
    v70 = v26;
    v27(v26 + v25, v24, v79);
  }

  v28 = v64;
  sub_142ECC();
  v29 = v65;
  v30 = v66;
  (*(v2 + 104))(v65, enum case for LayoutDirection.leftToRight(_:), v66);
  v31 = sub_142BFC();
  v32 = *(v2 + 8);
  v32(v29, v30);
  v32(v28, v30);
  v33 = v78;
  if (v31)
  {
    sub_1418FC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v34 = *(v6 + 72);
    v35 = *(v6 + 80);
    v36 = (v35 + 32) & ~v35;
    v37 = swift_allocObject();
    v65 = xmmword_14A710;
    *(v37 + 16) = xmmword_14A710;
    v38 = *(v6 + 32);
    v39 = v79;
    v38(v37 + v36, v33, v79);
    sub_14190C();
    v40 = swift_allocObject();
    *(v40 + 16) = v65;
    v38(v40 + v36, v33, v39);
    v41 = v72;
    sub_1418EC();
    v66 = v34;
    v42 = swift_allocObject();
    *(v42 + 16) = v65;
    v38(v42 + v36, v41, v39);
    v80 = v37;
    v43 = &v80;
  }

  else
  {
    sub_1418EC();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v44 = *(v6 + 72);
    v35 = *(v6 + 80);
    v45 = (v35 + 32) & ~v35;
    v46 = swift_allocObject();
    v65 = xmmword_14A710;
    *(v46 + 16) = xmmword_14A710;
    v47 = *(v6 + 32);
    v48 = v79;
    v47(v46 + v45, v33, v79);
    sub_14190C();
    v40 = swift_allocObject();
    *(v40 + 16) = v65;
    v47(v40 + v45, v33, v48);
    v49 = v72;
    sub_1418FC();
    v66 = v44;
    v38 = v47;
    v42 = swift_allocObject();
    *(v42 + 16) = v65;
    v47(v42 + v45, v49, v48);
    v82 = v46;
    v43 = &v82;
  }

  sub_A7324(v40);
  sub_A7324(v42);
  v50 = *v43;
  v51 = v63;
  sub_142DCC();
  v52 = v67;
  sub_14123C();
  v71(v51, v74);
  v53 = v75;
  sub_1419AC();
  v54 = v62;
  v55 = sub_14484C();
  v56 = v69;
  v69(v53, v54);
  v56(v52, v54);
  if (v55)
  {
    v57 = _swiftEmptyArrayStorage;
  }

  else
  {
    if (qword_1C0008 != -1)
    {
      swift_once();
    }

    v58 = sub_14142C();
    __swift_project_value_buffer(v58, qword_1C58C8);
    v59 = v78;
    sub_14191C();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1C5A90, &unk_150EB0);
    v57 = swift_allocObject();
    *(v57 + 1) = xmmword_14A710;
    v38(v57 + ((v35 + 32) & ~v35), v59, v79);
  }

  v81 = v70;
  sub_A7324(v50);
  sub_A7324(v57);
  return v81;
}