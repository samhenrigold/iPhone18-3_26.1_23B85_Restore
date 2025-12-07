uint64_t type metadata accessor for AppLaunchTrampolineAction(uint64_t a1)
{
  result = qword_27F2258B0;
  if (!qword_27F2258B0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA3B5B0(uint64_t a1)
{
  sub_24E6D4C08(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_24EA3B690(uint64_t a1)
{
  v1 = *(a1 + 176);
  v36 = *(a1 + 160);
  v37 = v1;
  v38 = *(a1 + 192);
  v39 = *(a1 + 208);
  v2 = *(a1 + 112);
  v32 = *(a1 + 96);
  v33 = v2;
  v3 = *(a1 + 144);
  v34 = *(a1 + 128);
  v35 = v3;
  v4 = *(a1 + 48);
  v30[2] = *(a1 + 32);
  v30[3] = v4;
  v5 = *(a1 + 80);
  v30[4] = *(a1 + 64);
  v31 = v5;
  v6 = *(a1 + 16);
  v30[0] = *a1;
  v30[1] = v6;
  v7 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  AdamId.numberValue.getter();
  if (v8)
  {
    v9 = v8;
    [v7 setItemID_];

    v10 = sub_24F92B098();
    [v7 setBuyParameters_];

    v11 = sub_24F92B098();
    [v7 setVendorName_];

    v12 = sub_24F92B098();
    [v7 setItemName_];

    if (*(&v32 + 1))
    {

      v13 = sub_24F92B098();
    }

    else
    {
      v13 = 0;
    }

    [v7 setBundleID_];

    v14 = v33;
    if (v33)
    {

      sub_24E953D98(v15);

      v14 = sub_24F92AE28();
    }

    [v7 setAdditionalHeaders_];

    sub_24E953AD0(v38);
    v16 = sub_24F92AE28();

    [v7 setMetricsOverlay_];

    if (LOBYTE(v30[0]) > 1u)
    {
      v17 = &selRef_setIsPreorder_;
      if (LOBYTE(v30[0]) == 2)
      {
        v17 = &selRef_setIsUpdate_;
      }
    }

    else
    {
      if (!LOBYTE(v30[0]))
      {
        goto LABEL_13;
      }

      v17 = &selRef_setIsRedownload_;
    }

    [v7 *v17];
LABEL_13:
    if (BYTE8(v31) == 1)
    {
      [v7 setExtensionsToEnable_];
    }

    [v7 setCreatesJobs_];
    [v7 setForceWatchInstall_];
    if (v36)
    {

      v18 = sub_24F92B588();
    }

    else
    {
      v18 = 0;
    }

    [v7 setAppCapabilities_];

    [v7 setIsDefaultBrowser_];
    [v7 setShouldAskForRatingException_];
    if ((BYTE8(v37) & 1) == 0)
    {
      [v7 setAgeRatingValue_];
    }

    if (BYTE10(v36) != 2)
    {
      v19 = [v7 buyParameters];
      if (v19)
      {
        v20 = v19;
        v21 = sub_24F92B0D8();
        v23 = v22;

        v29 = v21;
        sub_24F92C888();

        if (BYTE10(v36))
        {
          v24 = 0xD000000000000019;
        }

        else
        {
          v24 = 0xD000000000000010;
        }

        if (BYTE10(v36))
        {
          v25 = "exceptionDeleted";
        }

        else
        {
          v25 = "gnF";
        }

        MEMORY[0x253050C20](v24, v25 | 0x8000000000000000);

        MEMORY[0x253050C20](0xD000000000000015, 0x800000024FA4FD80);

        if (v23)
        {
          v26 = sub_24F92B098();
        }

        else
        {
          v26 = 0;
        }

        [v7 setBuyParameters_];

        if (!v39)
        {
          goto LABEL_35;
        }

        goto LABEL_32;
      }

      [v7 setBuyParameters_];
    }

    if (!v39)
    {
LABEL_35:
      v27 = 0;
      goto LABEL_36;
    }

LABEL_32:

    v27 = sub_24F92B588();

LABEL_36:
    [v7 setRemoteDownloadIdentifiers_];

    sub_24E953AD0(*(&v38 + 1));
    v28 = sub_24F92AE28();

    sub_24EA3BBAC(v30);
    [v7 setPerformanceMetricsOverlay_];

    return;
  }

  __break(1u);
}

uint64_t sub_24EA3BC24(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA3BCF4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for GameDetailsBanner(uint64_t a1)
{
  result = qword_27F2258C0;
  if (!qword_27F2258C0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA3BDF0(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E61C8D4(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24EA3BEF4(319);
        if (v4 <= 0x3F)
        {
          sub_24E66ECF0(319, &qword_27F254DE0, MEMORY[0x277D837D0]);
          if (v5 <= 0x3F)
          {
            sub_24E66ECF0(319, &qword_27F2258E0, &type metadata for GameDetailsBanner.ContentAlignment);
            if (v6 <= 0x3F)
            {
              swift_cvw_initStructMetadataWithLayoutString();
            }
          }
        }
      }
    }
  }
}

void sub_24EA3BEF4(uint64_t a1)
{
  if (!qword_27F2258D0)
  {
    type metadata accessor for Banner();
    sub_24EA3DC38(&qword_27F2258D8, type metadata accessor for Banner, &protocol conformance descriptor for Banner);
    v1 = sub_24F927EA8();
    if (!v2)
    {
      atomic_store(v1, &qword_27F2258D0);
    }
  }
}

uint64_t sub_24EA3BF98(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x7265746E6563;
  }

  else
  {
    v3 = 0x696461654C706F74;
  }

  if (v2)
  {
    v4 = 0xEA0000000000676ELL;
  }

  else
  {
    v4 = 0xE600000000000000;
  }

  if (*a2)
  {
    v5 = 0x7265746E6563;
  }

  else
  {
    v5 = 0x696461654C706F74;
  }

  if (*a2)
  {
    v6 = 0xE600000000000000;
  }

  else
  {
    v6 = 0xEA0000000000676ELL;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_24F92CE08();
  }

  return v8 & 1;
}

uint64_t sub_24EA3C040()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA3C0C4(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA3C134()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA3C1B4@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_24EA3C214(uint64_t *a1@<X8>)
{
  v2 = 0x696461654C706F74;
  if (*v1)
  {
    v2 = 0x7265746E6563;
  }

  v3 = 0xEA0000000000676ELL;
  if (*v1)
  {
    v3 = 0xE600000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

unint64_t sub_24EA3C308()
{
  result = qword_27F2258E8;
  if (!qword_27F2258E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2258E8);
  }

  return result;
}

void sub_24EA3C35C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v26 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225980, &qword_24F976D50);
  v28 = *(v7 - 8);
  v29 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for GameDetailsBanner(0);
  MEMORY[0x28223BE20](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v12 + 40) = 0u;
  v36 = 0;
  v34 = 0u;
  v35 = 0u;
  *(v12 + 56) = 0u;
  *(v12 + 9) = 0;
  v33 = v12 + 40;
  sub_24E61DA68(&v34, (v12 + 40), qword_27F21B590, &unk_24F93BE30);
  v30 = v10;
  v13 = *(v10 + 24);
  v14 = sub_24F929608();
  v15 = *(*(v14 - 8) + 56);
  v31 = v13;
  v15(&v12[v13], 1, 1, v14);
  v16 = a1[3];
  v32 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v16);
  sub_24EA3DBE4();
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(v32);
    v18 = v31;
    sub_24E601704(v33, qword_27F24EC90, &unk_24F93C1D0);
    sub_24E601704(&v12[v18], &qword_27F213E68, &unk_24F93BC80);
  }

  else
  {
    v17 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v37 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v19 = v35;
    *v12 = v34;
    *(v12 + 1) = v19;
    *(v12 + 4) = v36;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v37 = 1;
    sub_24E61D970();
    v26 = v9;
    sub_24F92CC68();
    v20 = v30;
    sub_24E61DA68(&v34, v33, qword_27F24EC90, &unk_24F93C1D0);
    LOBYTE(v34) = 2;
    sub_24EA3DC38(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    sub_24F92CC18();
    sub_24E61DA68(v6, &v12[v31], &qword_27F213E68, &unk_24F93BC80);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225990, &qword_24F976D58);
    v37 = 3;
    sub_24E602068(&qword_27F225998, &qword_27F225990, &qword_24F976D58, MEMORY[0x277D21968]);
    sub_24F92CC68();
    *&v12[v20[7]] = v34;
    LOBYTE(v34) = 4;
    v21 = v29;
    v22 = sub_24F92CBC8();
    v23 = &v12[v20[8]];
    *v23 = v22;
    v23[1] = v24;
    v37 = 5;
    sub_24EA3DC80();
    sub_24F92CC18();
    v25 = v20[9];
    (*(v17 + 8))(v26, v21);
    v12[v25] = v34;
    sub_24EA3DCD4(v12, v27);
    __swift_destroy_boxed_opaque_existential_1(v32);
    sub_24EA3DD38(v12);
  }
}

uint64_t sub_24EA3C9E0()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x72656E6E6162;
  v4 = 0x69546E6F69746361;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x6575676573;
  if (v1 != 1)
  {
    v5 = 0xD000000000000011;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24EA3CA94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA3DFCC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA3CABC(uint64_t a1)
{
  v2 = sub_24EA3DBE4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA3CAF8(uint64_t a1)
{
  v2 = sub_24EA3DBE4();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA3CB9C()
{
  result = qword_27F2258F0;
  if (!qword_27F2258F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2258F0);
  }

  return result;
}

__n128 sub_24EA3CBF0@<Q0>(uint64_t a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v44 = a2;
  v45 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225908, &qword_24F976C90);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225910, &qword_24F976C98);
  MEMORY[0x28223BE20](v7);
  v9 = &v39 - v8;
  v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225918, &qword_24F976CA0);
  MEMORY[0x28223BE20](v39);
  v11 = &v39 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225920, &qword_24F976CA8);
  MEMORY[0x28223BE20](v12);
  v14 = &v39 - v13;
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225928, &qword_24F976CB0);
  v42 = *(v15 - 8);
  v43 = v15;
  MEMORY[0x28223BE20](v15);
  v41 = &v39 - v16;
  v17 = *(a1 + *(type metadata accessor for GameDetailsBanner(0) + 36));
  v18 = (v17 == 2) | v17;
  if ((v17 == 2) | v17 & 1)
  {
    v19 = sub_24F9249A8();
  }

  else
  {
    v19 = sub_24F924988();
  }

  *v6 = v19;
  *(v6 + 1) = 0x4022000000000000;
  v6[16] = 0;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225930, &qword_24F976CB8);
  v21 = v18 & 1;
  sub_24EA3D118(a1, v18 & 1, &v6[*(v20 + 44)]);
  v22 = sub_24F925A18();
  v40 = v18;
  v23 = v22;
  KeyPath = swift_getKeyPath();
  sub_24E6009C8(v6, v9, &qword_27F225908, &qword_24F976C90);
  v25 = &v9[*(v7 + 36)];
  *v25 = KeyPath;
  v25[1] = v23;
  v26 = swift_getKeyPath();
  sub_24E6009C8(v9, v11, &qword_27F225910, &qword_24F976C98);
  v27 = &v11[*(v39 + 36)];
  *v27 = v26;
  v27[8] = v21;
  LODWORD(v26) = sub_24F9251C8();
  v28 = &v14[*(v12 + 36)];
  v29 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10) + 36);
  v30 = *MEMORY[0x277CE13B8];
  v31 = sub_24F927748();
  (*(*(v31 - 8) + 104))(&v28[v29], v30, v31);
  *v28 = v26;
  sub_24E6009C8(v11, v14, &qword_27F225918, &qword_24F976CA0);
  sub_24E60169C(a1 + 40, v46, qword_27F24EC90, &unk_24F93C1D0);
  sub_24E601704(v46, qword_27F21B590, &unk_24F93BE30);
  if (qword_27F211830 != -1)
  {
    swift_once();
  }

  v32 = sub_24F9248C8();
  __swift_project_value_buffer(v32, qword_27F39F078);
  sub_24EA3D990();
  v33 = v41;
  _s7SwiftUI4ViewP12GameStoreKitE18componentFocusable_12interactionsQrSb_AA17FocusInteractionsVtF_0();
  sub_24E601704(v14, &qword_27F225920, &qword_24F976CA8);
  if (v40)
  {
    sub_24F927618();
  }

  else
  {
    sub_24F927628();
  }

  sub_24F9242E8();
  v34 = v45;
  (*(v42 + 32))(v45, v33, v43);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225958, &qword_24F976D20) + 36);
  v36 = v46[5];
  *(v35 + 64) = v46[4];
  *(v35 + 80) = v36;
  *(v35 + 96) = v46[6];
  v37 = v46[1];
  *v35 = v46[0];
  *(v35 + 16) = v37;
  result = v46[3];
  *(v35 + 32) = v46[2];
  *(v35 + 48) = result;
  return result;
}

uint64_t sub_24EA3D118@<X0>(uint64_t a1@<X0>, char a2@<W1>, uint64_t a3@<X8>)
{
  v52 = a3;
  v5 = type metadata accessor for SwiftUIArtworkView(0);
  MEMORY[0x28223BE20](v5);
  v7 = &v49 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225960, &qword_24F976D28);
  v50 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v49 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225968, &qword_24F976D30);
  MEMORY[0x28223BE20](v14 - 8);
  v53 = &v49 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v49 - v17;
  v19 = *(type metadata accessor for GameDetailsBanner(0) + 28);
  v51 = a1;
  v20 = *(*(a1 + v19) + 48);
  if (v20)
  {
    v49 = v8;
    v21 = a2;
    v22 = v5[6];
    v23 = *MEMORY[0x277CE1010];
    v24 = sub_24F926E68();
    v25 = &v7[v22];
    a2 = v21;
    (*(*(v24 - 8) + 104))(v25, v23, v24);
    *(v7 + 1) = 0;
    *(v7 + 2) = 0;
    *v7 = v20;
    v7[24] = 1;
    v26 = &v7[v5[7]];
    *v26 = 0;
    *(v26 + 1) = 0;
    v26[16] = 1;
    v7[v5[8]] = 2;
    v7[v5[9]] = 0;

    LOBYTE(v23) = sub_24F925818();
    sub_24F923318();
    v28 = v27;
    v30 = v29;
    v32 = v31;
    v34 = v33;
    sub_24E9D0D28(v7, v10);
    v35 = v49;
    v36 = &v10[*(v49 + 36)];
    *v36 = v23;
    *(v36 + 1) = v28;
    *(v36 + 2) = v30;
    *(v36 + 3) = v32;
    *(v36 + 4) = v34;
    v36[40] = 0;
    sub_24E6009C8(v10, v13, &qword_27F225960, &qword_24F976D28);
    sub_24E6009C8(v13, v18, &qword_27F225960, &qword_24F976D28);
    (*(v50 + 56))(v18, 0, 1, v35);
  }

  else
  {
    (*(v50 + 56))(v18, 1, 1, v8);
  }

  if (a2)
  {
    v37 = sub_24F924C88();
  }

  else
  {
    v37 = sub_24F924C98();
  }

  v38 = v37;
  v64 = 0;
  sub_24EA3D5E0(v51, v54);
  *&v63[7] = v54[0];
  *&v63[23] = v54[1];
  *&v63[39] = v54[2];
  *&v63[55] = v54[3];
  v39 = v64;
  v40 = v53;
  sub_24E60169C(v18, v53, &qword_27F225968, &qword_24F976D30);
  v41 = v52;
  sub_24E60169C(v40, v52, &qword_27F225968, &qword_24F976D30);
  v42 = v41 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225970, &qword_24F976D38) + 48);
  *&v55 = v38;
  *(&v55 + 1) = 0x4010000000000000;
  v56[0] = v39;
  *&v56[1] = *v63;
  *&v56[17] = *&v63[16];
  *&v56[33] = *&v63[32];
  *&v56[49] = *&v63[48];
  *&v56[64] = *&v63[63];
  v43 = *&v63[63];
  v44 = *v56;
  *v42 = v55;
  *(v42 + 16) = v44;
  v45 = *&v56[16];
  v46 = *&v56[32];
  v47 = *&v56[48];
  *(v42 + 80) = v43;
  *(v42 + 48) = v46;
  *(v42 + 64) = v47;
  *(v42 + 32) = v45;
  sub_24E60169C(&v55, v57, &qword_27F225978, &unk_24F976D40);
  sub_24E601704(v18, &qword_27F225968, &qword_24F976D30);
  v57[0] = v38;
  v57[1] = 0x4010000000000000;
  v58 = v39;
  v60 = *&v63[16];
  v61 = *&v63[32];
  *v62 = *&v63[48];
  *&v62[15] = *&v63[63];
  v59 = *v63;
  sub_24E601704(v57, &qword_27F225978, &unk_24F976D40);
  return sub_24E601704(v40, &qword_27F225968, &qword_24F976D30);
}

uint64_t sub_24EA3D5E0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for GameDetailsBanner(0);
  sub_24E600AEC();

  v6 = sub_24F925E18();
  v8 = v7;
  v10 = v9;
  if (*(a1 + *(v4 + 32) + 8))
  {
    v28 = v5;

    v11 = sub_24F925E18();
    v13 = v12;
    v29 = v8;
    v15 = v14;
    sub_24F925958();
    v16 = sub_24F925B78();
    v18 = v17;
    v30 = v6;
    v19 = v10;
    v21 = v20;
    v23 = v22;
    v24 = v15 & 1;
    v8 = v29;
    sub_24E600B40(v11, v13, v24);

    v25 = v21 & 1;
    v10 = v19;
    v6 = v30;
    sub_24E5FD138(v16, v18, v25);

    v5 = v28;
  }

  else
  {
    v16 = 0;
    v18 = 0;
    v25 = 0;
    v23 = 0;
  }

  v26 = v5 & 1;
  sub_24E5FD138(v6, v8, v5 & 1);

  sub_24E65D2B4(v16, v18, v25, v23);
  sub_24E65D2F8(v16, v18, v25, v23);
  *a2 = v6;
  *(a2 + 8) = v8;
  *(a2 + 16) = v26;
  *(a2 + 24) = v10;
  *(a2 + 32) = v16;
  *(a2 + 40) = v18;
  *(a2 + 48) = v25;
  *(a2 + 56) = v23;
  sub_24E65D2F8(v16, v18, v25, v23);
  sub_24E600B40(v6, v8, v26);
}

unint64_t sub_24EA3D880()
{
  result = qword_27F225900;
  if (!qword_27F225900)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225900);
  }

  return result;
}

unint64_t sub_24EA3D990()
{
  result = qword_27F225938;
  if (!qword_27F225938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225920, &qword_24F976CA8);
    sub_24EA3DA48();
    sub_24E602068(&qword_27F213F88, &qword_27F213F90, &qword_24F93BE60, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225938);
  }

  return result;
}

unint64_t sub_24EA3DA48()
{
  result = qword_27F225940;
  if (!qword_27F225940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225918, &qword_24F976CA0);
    sub_24EA3DB00();
    sub_24E602068(&qword_27F2146E0, &qword_27F2146E8, &qword_24F93D5B0, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225940);
  }

  return result;
}

unint64_t sub_24EA3DB00()
{
  result = qword_27F225948;
  if (!qword_27F225948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225910, &qword_24F976C98);
    sub_24E602068(&qword_27F225950, &qword_27F225908, &qword_24F976C90, MEMORY[0x277CE1138]);
    sub_24E602068(&unk_27F212AB0, &qword_27F236350, &qword_24F939870, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225948);
  }

  return result;
}

unint64_t sub_24EA3DBE4()
{
  result = qword_27F225988;
  if (!qword_27F225988)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225988);
  }

  return result;
}

uint64_t sub_24EA3DC38(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA3DC80()
{
  result = qword_27F2259A0;
  if (!qword_27F2259A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259A0);
  }

  return result;
}

uint64_t sub_24EA3DCD4(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GameDetailsBanner(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA3DD38(uint64_t a1)
{
  v2 = type metadata accessor for GameDetailsBanner(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA3DD94()
{
  result = qword_27F2259A8;
  if (!qword_27F2259A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259A8);
  }

  return result;
}

unint64_t sub_24EA3DDFC()
{
  result = qword_27F2259B0;
  if (!qword_27F2259B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225958, &qword_24F976D20);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225920, &qword_24F976CA8);
    sub_24EA3D990();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259B0);
  }

  return result;
}

unint64_t sub_24EA3DEC8()
{
  result = qword_27F2259B8;
  if (!qword_27F2259B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259B8);
  }

  return result;
}

unint64_t sub_24EA3DF20()
{
  result = qword_27F2259C0;
  if (!qword_27F2259C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259C0);
  }

  return result;
}

unint64_t sub_24EA3DF78()
{
  result = qword_27F2259C8;
  if (!qword_27F2259C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259C8);
  }

  return result;
}

uint64_t sub_24EA3DFCC(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656E6E6162 && a2 == 0xE600000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x69546E6F69746361 && a2 == 0xEB00000000656C74 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000010 && 0x800000024FA4FDA0 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EA3E1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 36);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA3E2B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 36);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t type metadata accessor for InviteFriendsUpsellComponent(uint64_t a1)
{
  result = qword_27F2259D0;
  if (!qword_27F2259D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA3E3AC(uint64_t a1)
{
  sub_24E61C7D0(319);
  if (v1 <= 0x3F)
  {
    sub_24E6CFC68(319);
    if (v2 <= 0x3F)
    {
      sub_24E61C938(319);
      if (v3 <= 0x3F)
      {
        sub_24E61C8D4(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

unint64_t sub_24EA3E4CC()
{
  result = qword_27F2551C0;
  if (!qword_27F2551C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2551C0);
  }

  return result;
}

uint64_t sub_24EA3E520(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A48, &qword_24F9770C0);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA3FF0C();
  sub_24F92D128();
  v8[15] = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
  sub_24E602068(&qword_27F214040, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DB8]);
  sub_24F92CD48();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD08();
    v8[13] = 2;
    sub_24F92CD08();
    v8[12] = 3;
    sub_24F92CD08();
    v8[11] = 4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    sub_24E602068(&qword_27F218310, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AA8]);
    sub_24F92CD48();
    type metadata accessor for InviteFriendsUpsellComponent(0);
    v8[10] = 5;
    sub_24F929608();
    sub_24EA401E8(&qword_27F214058, MEMORY[0x277D21F70], MEMORY[0x277D21F78]);
    sub_24F92CCF8();
    v8[9] = 6;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    sub_24E620EE4(&qword_27F214048, &qword_27F214050, MEMORY[0x277D21FD8], MEMORY[0x277D21D30]);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_24EA3E8D0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v24 - v5;
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A38, &qword_24F9770B8);
  v28 = *(v30 - 8);
  MEMORY[0x28223BE20](v30);
  v8 = &v24 - v7;
  v9 = type metadata accessor for InviteFriendsUpsellComponent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = &v11[*(v12 + 40)];
  v34 = 0;
  v32 = 0u;
  v33 = 0u;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  *(v13 + 32) = 0;
  v31 = v13;
  sub_24E61DA68(&v32, v13, qword_27F21B590, &unk_24F93BE30);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA3FF0C();
  v29 = v8;
  sub_24F92D108();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24E601704(v31, qword_27F24EC90, &unk_24F93C1D0);
  }

  else
  {
    v25 = v6;
    v26 = v9;
    v14 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F18, &qword_24F93BE20);
    v35 = 0;
    sub_24E602068(&qword_27F213F30, &qword_27F213F18, &qword_24F93BE20, MEMORY[0x277D21DC0]);
    sub_24F92CC68();
    v15 = v33;
    *v11 = v32;
    *(v11 + 1) = v15;
    *(v11 + 4) = v34;
    LOBYTE(v32) = 1;
    *(v11 + 5) = sub_24F92CC28();
    *(v11 + 6) = v16;
    LOBYTE(v32) = 2;
    *(v11 + 7) = sub_24F92CC28();
    *(v11 + 8) = v17;
    LOBYTE(v32) = 3;
    *(v11 + 9) = sub_24F92CC28();
    *(v11 + 10) = v18;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2169E8, &qword_24F943600);
    v35 = 4;
    v19 = v30;
    sub_24E602068(&qword_27F243830, &qword_27F2169E8, &qword_24F943600, MEMORY[0x277D21AB0]);
    v20 = v29;
    sub_24F92CC68();
    v21 = v33;
    *(v11 + 88) = v32;
    *(v11 + 104) = v21;
    *(v11 + 15) = v34;
    sub_24F929608();
    LOBYTE(v32) = 5;
    sub_24EA401E8(&qword_27F213F48, MEMORY[0x277D21F70], MEMORY[0x277D21F88]);
    v22 = v25;
    sub_24F92CC18();
    sub_24E65E0D4(v22, &v11[*(v26 + 36)]);
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F24EC90, &unk_24F93C1D0);
    v35 = 6;
    sub_24E620EE4(&qword_27F213F38, &qword_27F213F40, MEMORY[0x277D21FD0], MEMORY[0x277D21D38]);
    sub_24F92CC68();
    (*(v14 + 8))(v20, v19);
    sub_24E61DA68(&v32, v31, qword_27F24EC90, &unk_24F93C1D0);
    sub_24EA3FF60(v11, v27);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_24EA3FFC4(v11);
  }
}

unint64_t sub_24EA3EF94()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0xD000000000000011;
  if (v1 != 5)
  {
    v3 = 0x6575676573;
  }

  v4 = 0xD000000000000011;
  if (v1 != 3)
  {
    v4 = 0x63416C6C65737075;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x656C746974;
  if (v1 != 1)
  {
    v5 = 0x656C746974627573;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24EA3F06C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA40338(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA3F094(uint64_t a1)
{
  v2 = sub_24EA3FF0C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA3F0D0(uint64_t a1)
{
  v2 = sub_24EA3FF0C();

  return MEMORY[0x2821FE720](a1, v2);
}

double sub_24EA3F13C@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v3 = sub_24F925508();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2259F0, &qword_24F977038);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2259F8, &qword_24F977040);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v21 - v12;
  *v9 = sub_24F924C98();
  *(v9 + 1) = 0;
  v9[16] = 1;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A00, &qword_24F977048);
  sub_24EA3F450(a1, &v9[*(v14 + 44)]);
  sub_24F9254E8();
  v15 = sub_24EA3FDE0();
  sub_24F926678();
  (*(v4 + 8))(v6, v3);
  sub_24E601704(v9, &qword_27F2259F0, &qword_24F977038);
  v23 = v7;
  v24 = v15;
  swift_getOpaqueTypeConformance2();
  v16 = v22;
  sub_24F9268A8();
  (*(v11 + 8))(v13, v10);
  v17 = v16 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A20, &qword_24F977060) + 36);
  v18 = *(type metadata accessor for ComponentBackgroundModifier(0) + 40);
  v19 = type metadata accessor for GradientBackground(0);
  (*(*(v19 - 8) + 56))(v17 + v18, 1, 1, v19);
  *v17 = swift_getKeyPath();
  *(v17 + 8) = 0;
  result = 26.0;
  *(v17 + 16) = xmmword_24F93CFD0;
  *(v17 + 32) = 0x4030000000000000;
  *(v17 + 40) = 257;
  return result;
}

uint64_t sub_24EA3F450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v76 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v73 = &v68[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v5);
  v72 = &v68[-v6];
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A28, &unk_24F9770A0);
  v88 = *(v75 - 8);
  MEMORY[0x28223BE20](v75);
  v86 = &v68[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v8);
  v84 = &v68[-v9];
  v74 = sub_24F9271F8();
  v87 = *(v74 - 8);
  MEMORY[0x28223BE20](v74);
  v85 = &v68[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v80 = &v68[-v12];
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213F10, &unk_24F93BE10);
  MEMORY[0x28223BE20](v79);
  v14 = &v68[-v13];
  v15 = a1[6];
  v90 = a1[5];
  v91 = v15;
  sub_24E600AEC();

  v16 = sub_24F925E18();
  v18 = v17;
  v20 = v19;
  v21 = sub_24F925C88();
  v81 = v22;
  v82 = v21;
  LODWORD(v71) = v23;
  v83 = v24;
  sub_24E600B40(v16, v18, v20 & 1);

  v70 = a1;
  v25 = a1[8];
  v90 = a1[7];
  v91 = v25;

  v26 = sub_24F925E18();
  v28 = v27;
  v30 = v29;
  sub_24F925A18();
  v31 = sub_24F925C98();
  v33 = v32;
  v35 = v34;

  sub_24E600B40(v26, v28, v30 & 1);

  LODWORD(a1) = sub_24F9251C8();
  v36 = *(v79 + 36);
  v37 = *MEMORY[0x277CE13B8];
  v38 = sub_24F927748();
  (*(*(v38 - 8) + 104))(&v14[v36], v37, v38);
  *v14 = a1;
  sub_24E602068(&qword_27F214428, &qword_27F213F10, &unk_24F93BE10, MEMORY[0x277CE03C0]);
  v78 = sub_24F925C58();
  v77 = v39;
  v69 = v40;
  v79 = v41;
  sub_24E600B40(v31, v33, v35 & 1);

  sub_24E601704(v14, &qword_27F213F10, &unk_24F93BE10);
  v42 = v80;
  sub_24F9271E8();
  v44 = v70[9];
  v43 = v70[10];
  v45 = v70;
  v46 = sub_24F9232F8();
  v47 = v72;
  (*(*(v46 - 8) + 56))(v72, 1, 1, v46);
  sub_24E60169C((v45 + 11), v89, &qword_27F2169E8, &qword_24F943600);
  sub_24E612C80(v89, &v90);
  sub_24E60169C(v47, v73, &unk_27F254FA0, &unk_24F945290);
  sub_24E60169C(&v90, v89, qword_27F21B590, &unk_24F93BE30);
  v48 = swift_allocObject();
  *(v48 + 16) = v44;
  *(v48 + 24) = v43;

  v49 = v84;
  sub_24F921788();
  sub_24E601704(&v90, qword_27F21B590, &unk_24F93BE30);
  sub_24E601704(v47, &unk_27F254FA0, &unk_24F945290);
  LOBYTE(v90) = v71 & 1;
  LOBYTE(v89[0]) = v69 & 1;
  v72 = *(v87 + 16);
  v50 = v85;
  v51 = v74;
  (v72)(v85, v42, v74);
  v71 = *(v88 + 16);
  v52 = v86;
  v53 = v75;
  v71(v86, v49, v75);
  v54 = v90;
  LODWORD(v70) = v90;
  v55 = v76;
  v57 = v81;
  v56 = v82;
  *v76 = v82;
  v55[1] = v57;
  *(v55 + 16) = v54;
  v58 = v89[0];
  LODWORD(v73) = LOBYTE(v89[0]);
  v59 = v78;
  v55[3] = v83;
  v55[4] = v59;
  v55[5] = v77;
  *(v55 + 48) = v58;
  v55[7] = v79;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225A30, &qword_24F9770B0);
  (v72)(v55 + *(v60 + 64), v50, v51);
  v61 = v55 + *(v60 + 80);
  v62 = v53;
  v71(v61, v52, v53);
  sub_24E5FD138(v56, v57, v70);

  v63 = v78;
  v64 = v77;
  sub_24E5FD138(v78, v77, v73);
  v65 = *(v88 + 8);

  v65(v84, v53);
  v66 = *(v87 + 8);
  v66(v80, v51);
  v65(v86, v62);
  v66(v85, v51);
  sub_24E600B40(v63, v64, v89[0]);

  sub_24E600B40(v82, v81, v90);
}

uint64_t sub_24EA3FC50(uint64_t a1)
{
  sub_24EA3E4CC();

  return sub_24F9218E8();
}

unint64_t sub_24EA3FCE0()
{
  result = qword_27F2259E8;
  if (!qword_27F2259E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2259E8);
  }

  return result;
}

unint64_t sub_24EA3FDE0()
{
  result = qword_27F225A08;
  if (!qword_27F225A08)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2259F0, &qword_24F977038);
    sub_24E602068(&qword_27F225A10, &qword_27F225A18, &unk_24F977050, MEMORY[0x277CE1198]);
    sub_24E602068(&unk_27F2129E0, &unk_27F22E040, &unk_24F940690, MEMORY[0x277CE0740]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A08);
  }

  return result;
}

uint64_t sub_24EA3FECC()
{

  return swift_deallocObject();
}

unint64_t sub_24EA3FF0C()
{
  result = qword_27F225A40;
  if (!qword_27F225A40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A40);
  }

  return result;
}

uint64_t sub_24EA3FF60(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for InviteFriendsUpsellComponent(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA3FFC4(uint64_t a1)
{
  v2 = type metadata accessor for InviteFriendsUpsellComponent(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_24EA40034()
{
  result = qword_27F225A50;
  if (!qword_27F225A50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A20, &qword_24F977060);
    sub_24EA400F0();
    sub_24EA401E8(&qword_27F255440, type metadata accessor for ComponentBackgroundModifier, &unk_24FA0D0EC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A50);
  }

  return result;
}

unint64_t sub_24EA400F0()
{
  result = qword_27F225A58;
  if (!qword_27F225A58)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225A60, &qword_24F9770D8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F2259F0, &qword_24F977038);
    sub_24EA3FDE0();
    swift_getOpaqueTypeConformance2();
    sub_24EA401E8(&qword_27F2141E0, MEMORY[0x277CDE470], MEMORY[0x277CDE458]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A58);
  }

  return result;
}

uint64_t sub_24EA401E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA40234()
{
  result = qword_27F225A68;
  if (!qword_27F225A68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A68);
  }

  return result;
}

unint64_t sub_24EA4028C()
{
  result = qword_27F225A70;
  if (!qword_27F225A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A70);
  }

  return result;
}

unint64_t sub_24EA402E4()
{
  result = qword_27F225A78;
  if (!qword_27F225A78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225A78);
  }

  return result;
}

uint64_t sub_24EA40338(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C746974627573 && a2 == 0xE800000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA4FDC0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x63416C6C65737075 && a2 == 0xEC0000006E6F6974 || (sub_24F92CE08() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000011 && 0x800000024FA451D0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6575676573 && a2 == 0xE500000000000000)
  {

    return 6;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_24EA40584(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_24EA405C0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 88))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 56);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_24EA40608(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

double sub_24EA406B8@<D0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = sub_24F928AD8();
  MEMORY[0x28223BE20](v6 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v27 - v8;
  sub_24E7538CC(v3 + 16, &v32);
  if (*(&v33 + 1))
  {
    sub_24E612C80(&v32, v38);
    __swift_project_boxed_opaque_existential_1(v38, v38[3]);
    v31 = v9;
    sub_24F928478();
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F255040, &unk_24F93B590);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_24F9479A0;
    sub_24F928A98();
    v11 = *(a1 - 1);
    v29 = *(v11 + 16);
    v30 = v11 + 16;
    v29(&v32, v3, a1);
    v12 = swift_allocObject();
    v28 = v3;
    v14 = a1[2];
    v13 = a1[3];
    *(v12 + 16) = v14;
    *(v12 + 24) = v13;
    v15 = a1[4];
    v16 = a1[5];
    *(v12 + 32) = v15;
    *(v12 + 40) = v16;
    v17 = v35;
    *(v12 + 80) = v34;
    *(v12 + 96) = v17;
    *(v12 + 112) = v36;
    *(v12 + 128) = v37;
    v18 = v33;
    *(v12 + 48) = v32;
    *(v12 + 64) = v18;
    v19 = sub_24F928B08();
    v20 = MEMORY[0x277D21CB8];
    *(v10 + 56) = v19;
    *(v10 + 64) = v20;
    __swift_allocate_boxed_opaque_existential_1((v10 + 32));
    sub_24F928AF8();
    sub_24E615E00(v38, v10 + 72);
    sub_24F928A98();
    v29(&v32, v28, a1);
    v21 = swift_allocObject();
    *(v21 + 16) = v14;
    *(v21 + 24) = v13;
    *(v21 + 32) = v15;
    *(v21 + 40) = v16;
    v22 = v35;
    *(v21 + 80) = v34;
    *(v21 + 96) = v22;
    *(v21 + 112) = v36;
    *(v21 + 128) = v37;
    v23 = v33;
    *(v21 + 48) = v32;
    *(v21 + 64) = v23;
    *(v10 + 136) = v19;
    *(v10 + 144) = MEMORY[0x277D21CB8];
    __swift_allocate_boxed_opaque_existential_1((v10 + 112));
    sub_24F928AF8();
    v24 = sub_24F928DD8();
    v25 = MEMORY[0x277D21D10];
    *(a2 + 24) = v24;
    *(a2 + 32) = v25;
    __swift_allocate_boxed_opaque_existential_1(a2);
    sub_24F928DC8();
    __swift_destroy_boxed_opaque_existential_1(v38);
  }

  else
  {
    sub_24EA418B4(&v32);
    *(a2 + 32) = 0;
    result = 0.0;
    *a2 = 0u;
    *(a2 + 16) = 0u;
  }

  return result;
}

uint64_t sub_24EA409BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v49 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F254FA0, &unk_24F945290);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = v40 - v4;
  v6 = *(a1 + 16);
  sub_24F924038();
  v44 = *(a1 + 24);
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  v40[1] = sub_24F927128();
  v40[0] = swift_getWitnessTable();
  v7 = sub_24F9217A8();
  v47 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = v40 - v8;
  WitnessTable = swift_getWitnessTable();
  v42 = WitnessTable;
  v41 = sub_24EA4172C();
  *&v53 = v7;
  *(&v53 + 1) = &type metadata for RingFocusButtonStyle;
  *&v54 = WitnessTable;
  *(&v54 + 1) = v41;
  v45 = MEMORY[0x277CDE668];
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v46 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v12 = v40 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255320, &unk_24F9397C0);
  v13 = sub_24F924038();
  v48 = *(v13 - 8);
  MEMORY[0x28223BE20](v13);
  v15 = v40 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = v40 - v17;
  v19 = sub_24F9232F8();
  (*(*(v19 - 8) + 56))(v5, 1, 1, v19);
  v20 = v50;
  v21 = sub_24EA406B8(a1, v58);
  (*(*(a1 - 8) + 16))(&v53, v20, a1, v21);
  v22 = swift_allocObject();
  v23 = *(a1 + 32);
  v24 = v55[0];
  v25 = v56;
  *(v22 + 96) = v55[1];
  *(v22 + 112) = v25;
  v26 = v53;
  v27 = v54;
  *(v22 + 32) = v23;
  *(v22 + 48) = v26;
  v28 = v44;
  *(v22 + 16) = v6;
  *(v22 + 24) = v28;
  *(v22 + 128) = v57;
  *(v22 + 64) = v27;
  *(v22 + 80) = v24;
  sub_24F921788();
  *&v56 = sub_24F9271D8();
  *(&v56 + 1) = sub_24EA41794();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v55 + 1);
  v30 = *MEMORY[0x277CE0118];
  v31 = sub_24F924B38();
  (*(*(v31 - 8) + 104))(boxed_opaque_existential_1, v30, v31);
  *&v55[0] = 0;
  v53 = 0u;
  v54 = 0u;
  v32 = v42;
  v33 = v41;
  sub_24F926178();
  sub_24EA417EC(&v53);
  (*(v47 + 8))(v9, v7);
  v34 = *(v50 + 8);
  LOBYTE(v53) = *v50;
  *(&v53 + 1) = v34;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  *&v53 = v7;
  *(&v53 + 1) = &type metadata for RingFocusButtonStyle;
  *&v54 = v32;
  *(&v54 + 1) = v33;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v36 = OpaqueTypeMetadata2;
  sub_24F926A88();
  (*(v46 + 8))(v12, v36);
  v37 = sub_24EA41840();
  v51 = OpaqueTypeConformance2;
  v52 = v37;
  swift_getWitnessTable();
  sub_24E7896B8();
  v38 = *(v48 + 8);
  v38(v15, v13);
  sub_24E7896B8();
  return (v38)(v18, v13);
}

uint64_t sub_24EA41020(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_24F927618();
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  return sub_24F927118();
}

uint64_t sub_24EA41110@<X0>(void (**a1)(__n128)@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v65 = a5;
  v68 = a6;
  v62 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v54 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v53 = &v52 - v11;
  v64 = v12;
  v67 = sub_24F92C4A8();
  v63 = *(v67 - 8);
  MEMORY[0x28223BE20](v67);
  v59 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v66 = &v52 - v15;
  v16 = *(a2 - 8);
  MEMORY[0x28223BE20](v17);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = sub_24F924038();
  v69 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v61 = &v52 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v24 = &v52 - v23;
  v26 = MEMORY[0x28223BE20](v25);
  v28 = &v52 - v27;
  a1[7](v26);
  v29 = *a1;
  v52 = a1;
  v55 = a1[1];
  LOBYTE(v74) = v29;
  v75 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F236220, &qword_24F93F6B0);
  sub_24F926F38();
  sub_24F9269F8();
  (*(v16 + 8))(v19, a2);
  v73[2] = a4;
  v73[3] = MEMORY[0x277CDF900];
  WitnessTable = swift_getWitnessTable();
  v60 = v28;
  v56 = WitnessTable;
  sub_24E7896B8();
  v31 = *(v69 + 8);
  v32 = v20;
  v58 = v69 + 8;
  v57 = v31;
  v31(v24, v20);
  LOBYTE(v74) = v29;
  v75 = v55;
  v33 = sub_24F926F38();
  if (LOBYTE(v73[0]) == 1)
  {
    v34 = v54;
    (v52[9])(v33);
    v35 = v53;
    v36 = v64;
    v37 = v65;
    sub_24E7896B8();
    v38 = v62;
    v39 = *(v62 + 8);
    v39(v34, v36);
    sub_24E7896B8();
    v39(v35, v36);
    v40 = v59;
    (*(v38 + 32))(v59, v34, v36);
    v41 = 0;
    v42 = v38;
  }

  else
  {
    v41 = 1;
    v36 = v64;
    v37 = v65;
    v42 = v62;
    v40 = v59;
  }

  (*(v42 + 56))(v40, v41, 1, v36);
  v43 = v66;
  sub_24E8D5004(v40, v66);
  v44 = v63;
  v45 = *(v63 + 8);
  v46 = v67;
  v45(v40, v67);
  v47 = v60;
  v48 = v61;
  (*(v69 + 16))(v61, v60, v32);
  v74 = v48;
  (*(v44 + 16))(v40, v43, v46);
  v75 = v40;
  v73[0] = v32;
  v73[1] = v46;
  v70 = v37;
  v71 = v56;
  v72 = swift_getWitnessTable();
  sub_24F57BA64(&v74, 2uLL, v73);
  v45(v43, v46);
  v49 = v47;
  v50 = v57;
  v57(v49, v32);
  v45(v40, v46);
  return v50(v48, v32);
}

unint64_t sub_24EA4172C()
{
  result = qword_27F225B00;
  if (!qword_27F225B00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B00);
  }

  return result;
}

unint64_t sub_24EA41794()
{
  result = qword_27F214E38;
  if (!qword_27F214E38)
  {
    sub_24F9271D8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F214E38);
  }

  return result;
}

unint64_t sub_24EA41840()
{
  result = qword_27F2129F0;
  if (!qword_27F2129F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255320, &unk_24F9397C0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F2129F0);
  }

  return result;
}

uint64_t sub_24EA418B4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F21B590, &unk_24F93BE30);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm_20()
{

  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1((v0 + 64));
  }

  return swift_deallocObject();
}

uint64_t sub_24EA41A10(void *a1)
{
  sub_24F924038();
  sub_24F92C4A8();
  swift_getTupleTypeMetadata2();
  sub_24F927808();
  swift_getWitnessTable();
  sub_24F927128();
  swift_getWitnessTable();
  sub_24F9217A8();
  swift_getWitnessTable();
  sub_24EA4172C();
  swift_getOpaqueTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F255320, &unk_24F9397C0);
  sub_24F924038();
  swift_getOpaqueTypeConformance2();
  sub_24EA41840();
  return swift_getWitnessTable();
}

id ACAccountStore.hasPrimaryiCloudAccount.getter()
{
  result = [v0 aa_primaryAppleAccount];
  if (result)
  {
    v2 = result;
    v3 = [result aa_personID];
    if (v3)
    {
      v4 = v3;
      v5 = sub_24F92B0D8();
      v7 = v6;

      v8 = HIBYTE(v7) & 0xF;
      if ((v7 & 0x2000000000000000) == 0)
      {
        v8 = v5 & 0xFFFFFFFFFFFFLL;
      }

      return (v8 != 0);
    }

    else
    {

      return 0;
    }
  }

  return result;
}

uint64_t ArtworkLookupResponse.__allocating_init(artworkMap:)(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

uint64_t sub_24EA41CA8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (!*(v2 + 16))
  {
    return 0;
  }

  v4 = *a1;
  v3 = a1[1];

  v5 = sub_24E7728F0(v4, v3);
  if (v6)
  {
    v7 = *(*(v2 + 56) + 8 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t ArtworkLookupResponse.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArtworkLookupResponse.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t *ArtworkLookupResponse.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v23 = a2;
  v5 = *v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F221C40, &unk_24F967D80);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v22 - v7;
  v9 = sub_24F928E68();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F9281F8();
  if ((*(v10 + 48))(v8, 1, v9) == 1)
  {
    sub_24E9182E0(v8);
    v13 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v14 = 0x6B726F77747261;
    v14[1] = 0xE700000000000000;
    v14[2] = v5;
    (*(*(v13 - 8) + 104))(v14, *MEMORY[0x277D22530], v13);
    swift_willThrow();
    v15 = sub_24F928388();
    (*(*(v15 - 8) + 8))(a1, v15);
    type metadata accessor for ArtworkLookupResponse();
    swift_deallocPartialClassInstance();
LABEL_5:
    v20 = sub_24F9285B8();
    (*(*(v20 - 8) + 8))(v23, v20);
    return v2;
  }

  v16 = (*(v10 + 32))(v12, v8, v9);
  MEMORY[0x28223BE20](v16);
  *(&v22 - 2) = v23;
  type metadata accessor for Artwork(0);
  sub_24E69103C();
  v17 = sub_24F928E38();
  if (!v3)
  {
    v18 = v17;
    v19 = sub_24F928388();
    (*(*(v19 - 8) + 8))(a1, v19);
    (*(v10 + 8))(v12, v9);
    v2[2] = v18;
    goto LABEL_5;
  }

  type metadata accessor for ArtworkLookupResponse();
  result = swift_deallocPartialClassInstance();
  __break(1u);
  return result;
}

void sub_24EA42128(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v22 = a2;
  v23 = a4;
  v21 = a1;
  v7 = sub_24F9285B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_24F928388();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for Artwork(0);
  (*(v12 + 16))(v14, a3, v11);
  (*(v8 + 16))(v10, v23, v7);
  v15 = v24;
  v16 = Artwork.__allocating_init(deserializing:using:)(v14, v10);
  if (v15)
  {

    v17 = 0;
    v18 = 0;
    v19 = 0;
  }

  else
  {
    v19 = v16;

    v17 = v21;
  }

  *a5 = v17;
  a5[1] = v18;
  a5[2] = v19;
}

uint64_t ArtworkLookupResponse.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t *sub_24EA42354@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArtworkLookupResponse();
  v7 = swift_allocObject();
  result = ArtworkLookupResponse.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t ArcadeSubscribePage.__allocating_init(pageType:details:offerButtonAction:subscribedOfferButtonAction:offerDisplayProperties:dismissButtonTitle:openAppAction:dismissingPostSubscribeAction:nonDismissingPostSubscribeAction:askToBuyMessage:askToBuyId:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, void *object, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = swift_allocObject();
  v24 = *(a1 + 16);
  *(v23 + 16) = *a1;
  *(v23 + 32) = v24;
  *(v23 + 40) = a2;
  *(v23 + 48) = a3;
  *(v23 + 56) = a4;
  *(v23 + 64) = a5;
  if (!object)
  {

    v25._countAndFlagsBits = 0x4C45434E4143;
    v25._object = 0xE600000000000000;
    v26._countAndFlagsBits = 0;
    v26._object = 0xE000000000000000;
    v27 = localizedString(_:comment:)(v25, v26);
    countAndFlagsBits = v27._countAndFlagsBits;
    object = v27._object;
  }

  *(v23 + 72) = countAndFlagsBits;
  *(v23 + 80) = object;
  *(v23 + 88) = a8;
  *(v23 + 96) = a9;
  *(v23 + 104) = a10;
  *(v23 + 112) = a11;
  *(v23 + 120) = a12;
  *(v23 + 128) = a13;
  *(v23 + 136) = a14;
  v28 = OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics;
  v29 = sub_24F928818();
  (*(*(v29 - 8) + 32))(v23 + v28, a15, v29);
  *(v23 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageRenderEvent) = a16;
  return v23;
}

uint64_t ArcadeSubscribePage.init(pageType:details:offerButtonAction:subscribedOfferButtonAction:offerDisplayProperties:dismissButtonTitle:openAppAction:dismissingPostSubscribeAction:nonDismissingPostSubscribeAction:askToBuyMessage:askToBuyId:pageMetrics:pageRenderEvent:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t countAndFlagsBits, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v18 = a13;
  v17 = a14;
  v19 = *(a1 + 16);
  *(v16 + 16) = *a1;
  *(v16 + 32) = v19;
  *(v16 + 40) = a2;
  *(v16 + 48) = a3;
  *(v16 + 56) = a4;
  *(v16 + 64) = a5;
  if (a7)
  {
    object = a7;
  }

  else
  {
    v28 = a8;

    v22._countAndFlagsBits = 0x4C45434E4143;
    v22._object = 0xE600000000000000;
    v23._countAndFlagsBits = 0;
    v23._object = 0xE000000000000000;
    v24 = localizedString(_:comment:)(v22, v23);
    countAndFlagsBits = v24._countAndFlagsBits;
    object = v24._object;

    v18 = a13;
    v17 = a14;
    a8 = v28;
  }

  *(v16 + 72) = countAndFlagsBits;
  *(v16 + 80) = object;
  *(v16 + 88) = a8;
  *(v16 + 96) = a9;
  *(v16 + 104) = a10;
  *(v16 + 112) = a11;
  *(v16 + 120) = a12;
  *(v16 + 128) = v18;
  *(v16 + 136) = v17;
  v25 = OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics;
  v26 = sub_24F928818();
  (*(*(v26 - 8) + 32))(v16 + v25, a15, v26);
  *(v16 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageRenderEvent) = a16;
  return v16;
}

uint64_t ArcadeSubscribePage.__allocating_init(deserializing:using:)(char *a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ArcadeSubscribePage.init(deserializing:using:)(a1, a2);
  return v4;
}

void *ArcadeSubscribePage.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v78 = sub_24F928818();
  v77 = *(v78 - 8);
  MEMORY[0x28223BE20](v78);
  v86 = v74 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F9285B8();
  v92 = v5;
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v85 = v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v79 = v74 - v9;
  MEMORY[0x28223BE20](v10);
  v82 = v74 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = v74 - v13;
  v99 = sub_24F928388();
  v15 = *(v99 - 8);
  MEMORY[0x28223BE20](v99);
  v84 = v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v76 = v74 - v18;
  MEMORY[0x28223BE20](v19);
  v80 = v74 - v20;
  MEMORY[0x28223BE20](v21);
  v90 = v74 - v22;
  MEMORY[0x28223BE20](v23);
  v25 = v74 - v24;
  type metadata accessor for BreakoutDetails(0);
  sub_24F928398();
  v88 = v6;
  v95 = *(v6 + 16);
  v96 = v6 + 16;
  v91 = v14;
  v95(v14, a2, v5);
  sub_24EA441A8(&qword_27F225B08, type metadata accessor for BreakoutDetails, &protocol conformance descriptor for BreakoutDetails);
  sub_24F929548();
  v26 = v87;
  v87[5] = v97;
  v27 = type metadata accessor for Action(0);
  sub_24F928398();
  v28 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, a2);
  v75 = v15;
  v29 = (v15 + 8);
  v30 = *(v15 + 8);
  v31 = v99;
  v30(v25, v99);
  v26[6] = v28;
  sub_24F928398();
  v81 = v27;
  v32 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, a2);
  v30(v25, v31);
  v26[7] = v32;
  type metadata accessor for OfferDisplayProperties();
  sub_24F928398();
  v93 = a2;
  v95(v91, a2, v92);
  sub_24EA441A8(&qword_27F225B10, type metadata accessor for OfferDisplayProperties, &protocol conformance descriptor for OfferDisplayProperties);
  sub_24F929548();
  v33 = v26;
  v26[8] = v97;
  v34 = v90;
  v94 = a1;
  sub_24F928398();
  countAndFlagsBits = sub_24F928348();
  object = v36;
  v89 = v30;
  v90 = v29;
  v30(v34, v99);
  if (!object)
  {
    v38._countAndFlagsBits = 0x4C45434E4143;
    v38._object = 0xE600000000000000;
    v39._countAndFlagsBits = 0;
    v39._object = 0xE000000000000000;
    v40 = localizedString(_:comment:)(v38, v39);
    countAndFlagsBits = v40._countAndFlagsBits;
    object = v40._object;
  }

  v41 = v33;
  v33[9] = countAndFlagsBits;
  v33[10] = object;
  v42 = v80;
  sub_24F928398();
  v43 = v82;
  v44 = v93;
  v95(v82, v93, v92);
  type metadata accessor for OpenAppAction(0);
  swift_allocObject();
  v45 = v83;
  v46 = OpenAppAction.init(deserializing:using:)(v42, v43);
  if (v45)
  {

    v46 = 0;
  }

  v83 = 0;
  v33[11] = v46;
  sub_24F928398();
  v47 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, v44);
  v48 = v44;
  v49 = v99;
  v50 = v89;
  v89(v25, v99);
  v33[12] = v47;
  sub_24F928398();
  v51 = static Action.tryToMakeInstance(byDeserializing:using:)(v25, v48);
  v50(v25, v49);
  v33[13] = v51;
  sub_24F928398();
  v52 = sub_24F928348();
  v54 = v53;
  v50(v25, v49);
  v41[14] = v52;
  v41[15] = v54;
  v55 = v93;
  sub_24F928398();
  v56 = sub_24F928348();
  v58 = v57;
  v50(v25, v49);
  v41[16] = v56;
  v41[17] = v58;
  type metadata accessor for Artwork(0);
  sub_24F928398();
  v60 = v91;
  v59 = v92;
  v61 = v95;
  v95(v91, v55, v92);
  sub_24EA441A8(&qword_27F219660, type metadata accessor for Artwork, &protocol conformance descriptor for Artwork);
  sub_24F929548();
  v74[1] = v25;
  if (v97)
  {
    v41[2] = v97;
    v41[3] = 0;
    *(v41 + 32) = 0;
    v62 = v59;
  }

  else
  {
    v63 = v76;
    (*(v75 + 16))();
    v61(v79, v55, v59);
    type metadata accessor for ImpressionableArtwork(0);
    sub_24F928398();
    v61(v60, v55, v59);
    sub_24EA441A8(&qword_27F225B18, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
    sub_24F929548();
    v64 = v97;
    if (v97)
    {
      (*(v88 + 8))(v79, v59);
      v89(v63, v99);
      v41 = v87;
      v87[2] = v64;
      v41[3] = 0;
      v65 = 2;
    }

    else
    {
      v66 = v79;
      sub_24EA4341C(v63, v79, &v97);
      (*(v88 + 8))(v66, v59);
      v89(v63, v99);
      v65 = v98;
      v41 = v87;
      *(v87 + 1) = v97;
    }

    *(v41 + 32) = v65;
    v62 = v59;
  }

  v67 = v94;
  sub_24F928398();
  v68 = v93;
  v69 = v95;
  v95(v85, v93, v62);
  v70 = v86;
  v71 = v83;
  sub_24F928788();
  if (v71)
  {
    (*(v88 + 8))(v68, v62);
    v89(v67, v99);
    sub_24EA44104(v41[2], v41[3], *(v41 + 32));

    type metadata accessor for ArcadeSubscribePage(0);
    swift_deallocPartialClassInstance();
  }

  else
  {
    (*(v77 + 32))(v41 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics, v70, v78);
    v85 = type metadata accessor for PageRenderMetricsEvent();
    v86 = 0;
    v72 = v91;
    sub_24F928398();
    v69(v72, v68, v62);
    sub_24EA441A8(&qword_27F2218C0, type metadata accessor for PageRenderMetricsEvent, &protocol conformance descriptor for PageRenderMetricsEvent);
    sub_24F929548();
    (*(v88 + 8))(v68, v62);
    v89(v67, v99);
    *(v41 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageRenderEvent) = v97;
  }

  return v41;
}

void sub_24EA4341C(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25 = sub_24F9285B8();
  v6 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  MEMORY[0x28223BE20](v11);
  v13 = v24 - v12;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2213B0, &qword_24F965EC0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = v24 - v15;
  v24[1] = a1;
  sub_24F928398();
  sub_24F9282B8();
  (*(v10 + 8))(v13, v9);
  v17 = sub_24F92AC28();
  v18 = *(v17 - 8);
  v19 = (*(v18 + 48))(v16, 1, v17);
  if (v19 == 1)
  {
    sub_24E8F2EE8(v16);
    v20 = 0;
  }

  else
  {
    v24[0] = a3;
    MEMORY[0x28223BE20](v19);
    v24[-2] = a2;
    type metadata accessor for ImpressionableArtwork(0);
    v20 = sub_24F92ABB8();
    a3 = v24[0];
    (*(v18 + 8))(v16, v17);
  }

  v27 = v20;
  type metadata accessor for ImpressionableArtwork(0);
  sub_24F928398();
  (*(v6 + 16))(v8, a2, v25);
  sub_24EA441A8(&qword_27F225B18, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
  sub_24F929548();
  v21 = v26;
  if (v26)
  {
LABEL_9:
    v23 = v27;
    if (v27)
    {
      goto LABEL_15;
    }

    goto LABEL_10;
  }

  if (v20)
  {
    if (v20 >> 62)
    {
      if (sub_24F92C738())
      {
        goto LABEL_8;
      }
    }

    else if (*((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
LABEL_8:
      sub_24F73F984();
      v21 = v22;
      goto LABEL_9;
    }
  }

  v21 = 0;
  v23 = v27;
  if (v27)
  {
    goto LABEL_15;
  }

LABEL_10:
  if (v21)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F223440, &qword_24F941F10);
    v23 = swift_allocObject();
    *(v23 + 16) = xmmword_24F941C80;
    *(v23 + 32) = v21;
  }

  else
  {
    v23 = MEMORY[0x277D84F90];
  }

LABEL_15:
  *a3 = v21;
  *(a3 + 8) = v23;
  *(a3 + 16) = 1;
}

uint64_t sub_24EA43844@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v14[1] = a3;
  v5 = sub_24F9285B8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F928388();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImpressionableArtwork(0);
  (*(v10 + 16))(v12, a1, v9);
  (*(v6 + 16))(v8, a2, v5);
  sub_24EA441A8(&qword_27F225B18, type metadata accessor for ImpressionableArtwork, &protocol conformance descriptor for ImpressionableArtwork);
  return sub_24F929548();
}

double ArcadeSubscribePage.pageType.getter@<D0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  *a1 = v2;
  *(a1 + 8) = v3;
  v4 = *(v1 + 32);
  *(a1 + 16) = v4;
  return sub_24EA441F0(v2, v3, v4);
}

uint64_t ArcadeSubscribePage.dismissButtonTitle.getter()
{
  v1 = *(v0 + 72);

  return v1;
}

uint64_t ArcadeSubscribePage.askToBuyMessage.getter()
{
  v1 = *(v0 + 112);

  return v1;
}

uint64_t ArcadeSubscribePage.askToBuyId.getter()
{
  v1 = *(v0 + 128);

  return v1;
}

uint64_t sub_24EA43AFC(uint64_t a1)
{
  v3 = sub_24F928818();
  v6 = MEMORY[0x28223BE20](v3);
  v8 = v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v1 + 16);
  v10 = *(v1 + 24);
  v11 = *(v1 + 32);
  v13 = *(a1 + 16);
  v12 = *(a1 + 24);
  v14 = *(a1 + 32);
  if (v11 == 1 && v14 == 1)
  {
    v58 = v8;
    v59 = v4;
    v16 = *(a1 + 40);
    v53 = *(a1 + 48);
    v54 = v5;
    v18 = *(a1 + 56);
    v17 = *(a1 + 64);
    v19 = *(a1 + 80);
    v52 = *(a1 + 72);
    v43 = v17;
    v44 = v19;
    v57 = *(a1 + 88);
    v49 = v57;
    if (!v57)
    {
      v57 = *(v1 + 88);
    }

    v56 = *(a1 + 96);
    v48 = v56;
    if (!v56)
    {
      v56 = *(v1 + 96);
    }

    v55 = *(a1 + 104);
    v45 = v55;
    if (!v55)
    {
      v55 = *(v1 + 104);
    }

    v20 = *(a1 + 120);
    v42 = v20;
    if (v20)
    {
      v21 = *(a1 + 112);
      v50 = v20;
      v51 = v21;
    }

    else
    {
      v22 = *(v1 + 112);
      v50 = *(v1 + 120);
      v51 = v22;
    }

    v23 = *(a1 + 136);
    v40[1] = v23;
    v24 = v12;
    if (v23)
    {
      v25 = *(a1 + 128);
      v46 = v23;
      v47 = v25;
    }

    else
    {
      v26 = *(v1 + 128);
      v46 = *(v1 + 136);
      v47 = v26;
    }

    v27 = v54;
    (*(v54 + 16))(v58, a1 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics, v59, v6);
    v41 = *(a1 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageRenderEvent);
    v28 = v9;
    sub_24EA441F0(v9, v10, 1);
    v29 = v13;
    sub_24EA441F0(v13, v12, 1);

    v30 = v16;

    v31 = v53;

    v32 = v43;

    v33 = v44;

    sub_24EA44104(v28, v10, 1);
    sub_24EA44104(v29, v24, 1);
    type metadata accessor for ArcadeSubscribePage(0);
    a1 = swift_allocObject();
    *(a1 + 16) = v28;
    *(a1 + 24) = v24;
    *(a1 + 32) = 1;
    *(a1 + 40) = v30;
    *(a1 + 48) = v31;
    *(a1 + 56) = v18;
    *(a1 + 64) = v32;
    *(a1 + 72) = v52;
    *(a1 + 80) = v33;
    v34 = v56;
    *(a1 + 88) = v57;
    *(a1 + 96) = v34;
    v36 = v50;
    v35 = v51;
    *(a1 + 104) = v55;
    *(a1 + 112) = v35;
    v37 = v46;
    v38 = v47;
    *(a1 + 120) = v36;
    *(a1 + 128) = v38;
    *(a1 + 136) = v37;
    (*(v27 + 32))(a1 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics, v58, v59);
    *(a1 + OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageRenderEvent) = v41;
  }

  else
  {
    sub_24EA441F0(*(v1 + 16), *(v1 + 24), *(v1 + 32));
    sub_24EA441F0(v13, v12, v14);
    sub_24EA44104(v9, v10, v11);
    sub_24EA44104(v13, v12, v14);
  }

  return a1;
}

uint64_t ArcadeSubscribePage.pageMetrics.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics;
  v4 = sub_24F928818();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t ArcadeSubscribePage.deinit()
{
  sub_24EA44104(*(v0 + 16), *(v0 + 24), *(v0 + 32));

  v1 = OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics;
  v2 = sub_24F928818();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t ArcadeSubscribePage.__deallocating_deinit()
{
  ArcadeSubscribePage.deinit();

  return swift_deallocClassInstance();
}

void *sub_24EA44008@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  type metadata accessor for ArcadeSubscribePage(0);
  v7 = swift_allocObject();
  result = ArcadeSubscribePage.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t sub_24EA44088@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC12GameStoreKit19ArcadeSubscribePage_pageMetrics;
  v5 = sub_24F928818();
  v6 = *(*(v5 - 8) + 16);

  return v6(a1, v3 + v4, v5);
}

double sub_24EA44104(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 && a3 != 2)
  {
    if (a3 != 1)
    {
      return result;
    }
  }

  return result;
}

uint64_t type metadata accessor for ArcadeSubscribePage(uint64_t a1)
{
  result = qword_27F225B20;
  if (!qword_27F225B20)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_24EA441A8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_24EA441F0(uint64_t a1, uint64_t a2, char a3)
{
  if (a3 == 2)
  {
LABEL_4:

    return result;
  }

  if (a3 != 1)
  {
    if (a3)
    {
      return result;
    }

    goto LABEL_4;
  }

  return result;
}

uint64_t sub_24EA4425C(uint64_t a1)
{
  result = sub_24F928818();
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

uint64_t getEnumTagSinglePayload for PageGrid.HorizontalMargins(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 17))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 16);
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

uint64_t storeEnumTagSinglePayload for PageGrid.HorizontalMargins(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *(result + 16) = -a2;
    }
  }

  return result;
}

void *OpenAppAction.__allocating_init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v34 = a2;
  v35 = a6;
  v33 = a1;
  v11 = sub_24F91F6B8();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v33 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = swift_allocObject();
  v16 = a3[1];
  v17 = *a5;
  v18 = (v15 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  *v18 = *a3;
  v18[1] = v16;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v17;
  *(v15 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = a4;
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v19 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v20 = sub_24F928AD8();
  v21 = *(v20 - 8);
  (*(v21 + 16))(v15 + v19, a7, v20);
  v22 = OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics;
  v23 = sub_24F929608();
  (*(*(v23 - 8) + 56))(v15 + v22, 1, 1, v23);
  v24 = (v15 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v24 = 0u;
  v24[1] = 0u;
  v25 = v15 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  sub_24E65E064(v41, &v38);
  if (*(&v39 + 1))
  {
    v26 = v39;
    *v25 = v38;
    *(v25 + 1) = v26;
    *(v25 + 4) = v40;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v12 + 8))(v14, v11);
    v36 = v27;
    v37 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v38, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v21 + 8))(a7, v20);
  sub_24E601704(v41, &qword_27F235830, &qword_24F93B8C0);
  v30 = v34;
  v15[2] = v33;
  v15[3] = v30;
  v31 = v35;
  v15[4] = 0;
  v15[5] = v31;
  return v15;
}

double OpenAppAction.adamId.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId + 8);
  *a1 = *(v1 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  a1[1] = v2;

  return result;
}

void *OpenAppAction.init(title:adamId:allowBetaApps:destination:presentationStyle:actionMetrics:)(uint64_t a1, uint64_t a2, void *a3, char a4, char *a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v38 = a2;
  v39 = a6;
  v37 = a1;
  v36 = sub_24F91F6B8();
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v14 = &v35 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v15 - 8);
  v17 = &v35 - v16;
  v18 = sub_24F928AD8();
  v19 = *(v18 - 8);
  MEMORY[0x28223BE20](v18);
  v21 = &v35 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = a3[1];
  v23 = *a5;
  v24 = (v8 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
  *v24 = *a3;
  v24[1] = v22;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v23;
  *(v8 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = a4;
  v49 = 0;
  memset(v48, 0, sizeof(v48));
  (*(v19 + 16))(v21, a7, v18);
  v25 = sub_24F929608();
  (*(*(v25 - 8) + 56))(v17, 1, 1, v25);
  v26 = (v8 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender);
  *v26 = 0u;
  v26[1] = 0u;
  sub_24E65E064(v48, &v42);
  if (*(&v43 + 1))
  {
    v45 = v42;
    v46 = v43;
    v47 = v44;
  }

  else
  {
    sub_24F91F6A8();
    v27 = sub_24F91F668();
    v29 = v28;
    (*(v35 + 8))(v14, v36);
    v40 = v27;
    v41 = v29;
    sub_24F92C7F8();
    sub_24E601704(&v42, &qword_27F235830, &qword_24F93B8C0);
  }

  (*(v19 + 8))(a7, v18);
  sub_24E601704(v48, &qword_27F235830, &qword_24F93B8C0);
  v30 = v8 + OBJC_IVAR____TtC12GameStoreKit6Action_id;
  *(v30 + 4) = v47;
  v31 = v46;
  *v30 = v45;
  *(v30 + 1) = v31;
  sub_24E65E0D4(v17, v8 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics);
  v32 = v38;
  v8[2] = v37;
  v8[3] = v32;
  v33 = v39;
  v8[4] = 0;
  v8[5] = v33;
  (*(v19 + 32))(v8 + OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics, v21, v18);
  return v8;
}

void *OpenAppAction.init(deserializing:using:)(char *a1, uint64_t a2)
{
  v3 = v2;
  v46 = a2;
  v40 = *v3;
  v5 = sub_24F9285B8();
  v44 = *(v5 - 8);
  v45 = v5;
  MEMORY[0x28223BE20](v5);
  v42 = &v40 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v41 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v40 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v40 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v40 - v17;
  v47 = a1;
  sub_24F928398();
  v19 = sub_24F928348();
  v21 = v20;
  v22 = *(v8 + 8);
  v48 = v7;
  v49 = v22;
  v22(v18, v7);
  if (v21)
  {
    v23 = (v3 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_adamId);
    *v23 = v19;
    v23[1] = v21;
    v24 = v47;
    sub_24F928398();
    sub_24EA45078();
    sub_24F928208();
    v25 = v15;
    v26 = v3;
    v3 = v48;
    v27 = v49;
    v49(v25, v48);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_destination) = v50;
    sub_24F928398();
    v28 = sub_24F928278();
    v27(v12, v3);
    *(v26 + OBJC_IVAR____TtC12GameStoreKit13OpenAppAction_allowBetaApps) = (v28 == 2) | v28 & 1;
    v29 = v41;
    (*(v8 + 16))(v41, v24, v3);
    v31 = v44;
    v30 = v45;
    v32 = v42;
    v33 = v46;
    (*(v44 + 16))(v42, v46, v45);
    v34 = v43;
    v35 = Action.init(deserializing:using:)(v29, v32);
    if (!v34)
    {
      v3 = v35;
    }

    (*(v31 + 8))(v33, v30);
    v49(v24, v48);
  }

  else
  {
    v36 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v37 = 0x64496D616461;
    v38 = v40;
    v37[1] = 0xE600000000000000;
    v37[2] = v38;
    (*(*(v36 - 8) + 104))(v37, *MEMORY[0x277D22530], v36);
    swift_willThrow();
    (*(v44 + 8))(v46, v45);
    v49(v47, v48);
    swift_deallocPartialClassInstance();
  }

  return v3;
}

unint64_t sub_24EA45078()
{
  result = qword_27F225B30;
  if (!qword_27F225B30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B30);
  }

  return result;
}

uint64_t OpenAppAction.deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return v0;
}

uint64_t OpenAppAction.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC12GameStoreKit6Action_actionMetrics;
  v2 = sub_24F928AD8();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit6Action_clickSender, &qword_27F2129B0, &unk_24F945320);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for OpenAppAction(uint64_t a1)
{
  result = qword_27F225B38;
  if (!qword_27F225B38)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActiveCall.uniqueProxyIdentifier.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t ActiveCall.uniqueProxyIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *v2 = a1;
  v2[1] = a2;
  return result;
}

uint64_t type metadata accessor for ActiveCall(uint64_t a1)
{
  result = qword_27F225B78;
  if (!qword_27F225B78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ActiveCall.provider.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for ActiveCall(0) + 28);

  return sub_24EA455B8(a1, v3);
}

uint64_t sub_24EA455B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProvider(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

unint64_t ActiveCall.jsRepresentation(in:)@<X0>(void *a1@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F08, &unk_24F93A2A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_24F93FC20;
  *(inited + 32) = 0xD000000000000015;
  *(inited + 40) = 0x800000024FA4FFD0;
  v4 = *v1;
  v5 = v1[1];
  v6 = MEMORY[0x277D22580];
  *(inited + 72) = MEMORY[0x277D837D0];
  *(inited + 80) = v6;
  *(inited + 48) = v4;
  *(inited + 56) = v5;
  *(inited + 88) = 0x6D746E6F72467369;
  *(inited + 96) = 0xEB0000000074736FLL;
  v7 = MEMORY[0x277D839B0];
  v8 = *(v1 + 16);
  v9 = MEMORY[0x277D22598];
  *(inited + 128) = MEMORY[0x277D839B0];
  *(inited + 136) = v9;
  *(inited + 104) = v8;
  *(inited + 144) = 0x6F656469567369;
  *(inited + 152) = 0xE700000000000000;
  v10 = *(v1 + 17);
  *(inited + 184) = v7;
  *(inited + 192) = v9;
  *(inited + 160) = v10;
  *(inited + 200) = 0x72656469766F7270;
  *(inited + 208) = 0xE800000000000000;
  v11 = *(type metadata accessor for ActiveCall(0) + 28);
  *(inited + 240) = type metadata accessor for CallProvider(0);
  *(inited + 248) = sub_24EA45F98(&qword_27F225B48, &protocol conformance descriptor for CallProvider);
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1((inited + 216));
  sub_24EA46040(v1 + v11, boxed_opaque_existential_1, type metadata accessor for CallProvider);

  v13 = sub_24E607D0C(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F18, &unk_24F93A2B0);
  swift_arrayDestroy();
  v14 = sub_24E80FFAC(v13);

  a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212F20, &qword_24F93E370);
  result = sub_24E6060B8();
  a1[4] = result;
  *a1 = v14;
  return result;
}

unint64_t sub_24EA4586C()
{
  v1 = 0x6D746E6F72467369;
  v2 = 0x6F656469567369;
  if (*v0 != 2)
  {
    v2 = 0x72656469766F7270;
  }

  if (!*v0)
  {
    v1 = 0xD000000000000015;
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

uint64_t sub_24EA458F4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA46420(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA4591C(uint64_t a1)
{
  v2 = sub_24EA45F44();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA45958(uint64_t a1)
{
  v2 = sub_24EA45F44();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ActiveCall.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225B50, &qword_24F9775C8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA45F44();
  sub_24F92D128();
  v8[15] = 0;
  sub_24F92CD08();
  if (!v1)
  {
    v8[14] = 1;
    sub_24F92CD18();
    v8[13] = 2;
    sub_24F92CD18();
    type metadata accessor for ActiveCall(0);
    v8[12] = 3;
    type metadata accessor for CallProvider(0);
    sub_24EA45F98(&qword_27F225B60, &protocol conformance descriptor for CallProvider);
    sub_24F92CD48();
  }

  return (*(v4 + 8))(v6, v3);
}

uint64_t ActiveCall.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v20 = a2;
  v3 = type metadata accessor for CallProvider(0);
  MEMORY[0x28223BE20](v3);
  v5 = v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225B68, &qword_24F9775D0);
  v21 = *(v6 - 8);
  v22 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = v18 - v7;
  v9 = type metadata accessor for ActiveCall(0);
  MEMORY[0x28223BE20](v9);
  v11 = v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA45F44();
  v23 = v8;
  v12 = v24;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v19 = v9;
  v24 = v3;
  v13 = v5;
  v14 = v21;
  v15 = v22;
  v28 = 0;
  *v11 = sub_24F92CC28();
  *(v11 + 1) = v16;
  v18[1] = v16;
  v27 = 1;
  v11[16] = sub_24F92CC38() & 1;
  v26 = 2;
  v11[17] = sub_24F92CC38() & 1;
  v25 = 3;
  sub_24EA45F98(&qword_27F225B70, &protocol conformance descriptor for CallProvider);
  sub_24F92CC68();
  (*(v14 + 8))(v23, v15);
  sub_24EA45FDC(v13, &v11[*(v19 + 28)]);
  sub_24EA46040(v11, v20, type metadata accessor for ActiveCall);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return sub_24EA460A8(v11);
}

unint64_t sub_24EA45F44()
{
  result = qword_27F225B58;
  if (!qword_27F225B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B58);
  }

  return result;
}

uint64_t sub_24EA45F98(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for CallProvider(255);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24EA45FDC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CallProvider(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_24EA46040(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA460A8(uint64_t a1)
{
  v2 = type metadata accessor for ActiveCall(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24EA46118(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = type metadata accessor for CallProvider(0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA461D8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = type metadata accessor for CallProvider(0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_24EA4627C(uint64_t a1)
{
  result = type metadata accessor for CallProvider(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_24EA4631C()
{
  result = qword_27F225B88;
  if (!qword_27F225B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B88);
  }

  return result;
}

unint64_t sub_24EA46374()
{
  result = qword_27F225B90;
  if (!qword_27F225B90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B90);
  }

  return result;
}

unint64_t sub_24EA463CC()
{
  result = qword_27F225B98;
  if (!qword_27F225B98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225B98);
  }

  return result;
}

uint64_t sub_24EA46420(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000015 && 0x800000024FA4FFD0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6D746E6F72467369 && a2 == 0xEB0000000074736FLL || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6F656469567369 && a2 == 0xE700000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x72656469766F7270 && a2 == 0xE800000000000000)
  {

    return 3;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

GameStoreKit::HeroCarouselItemOverlay::OverlayType_optional __swiftcall HeroCarouselItemOverlay.OverlayType.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 6;
  if (v3 < 6)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t HeroCarouselItemOverlay.OverlayType.rawValue.getter()
{
  v1 = *v0;
  v2 = 0x6C6169726574616DLL;
  v3 = 0xD000000000000010;
  v4 = 0x6F4D656C676E6973;
  if (v1 != 4)
  {
    v4 = 0xD000000000000010;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 1954047348;
  if (v1 != 1)
  {
    v5 = 0x70756B636F6CLL;
  }

  if (*v0)
  {
    v2 = v5;
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

uint64_t sub_24EA466E0(uint64_t a1)
{
  sub_24F92B218();
}

void sub_24EA467F0(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEC00000074786554;
  v4 = 0x6C6169726574616DLL;
  v5 = 0x800000024FA42980;
  v6 = 0xD000000000000010;
  v7 = 0xEC000000656C7564;
  v8 = 0x6F4D656C676E6973;
  if (v2 != 4)
  {
    v8 = 0xD000000000000010;
    v7 = 0x800000024FA429A0;
  }

  if (v2 != 3)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xE400000000000000;
  v10 = 1954047348;
  if (v2 != 1)
  {
    v10 = 0x70756B636F6CLL;
    v9 = 0xE600000000000000;
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

GameStoreKit::HeroCarouselItemOverlay::DisplayOptions::TextAlignment_optional __swiftcall HeroCarouselItemOverlay.DisplayOptions.TextAlignment.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextAlignment.rawValue.getter()
{
  if (*v0)
  {
    return 0x7265746E6563;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24EA46958@<X0>(char *a2@<X8>)
{
  v3 = sub_24F92CB88();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

GameStoreKit::HeroCarouselItemOverlay::DisplayOptions::Placement_optional __swiftcall HeroCarouselItemOverlay.DisplayOptions.Placement.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_24F92CB88();

  v5 = 3;
  if (v3 < 3)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.Placement.rawValue.getter()
{
  v1 = 0x7265746E6563;
  if (*v0 != 1)
  {
    v1 = 0x676E696C69617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x676E696461656CLL;
  }
}

uint64_t sub_24EA46A74(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE600000000000000;
  v4 = 0x7265746E6563;
  if (v2 != 1)
  {
    v4 = 0x676E696C69617274;
    v3 = 0xE800000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  v7 = 0xE600000000000000;
  v8 = 0x7265746E6563;
  if (*a2 != 1)
  {
    v8 = 0x676E696C69617274;
    v7 = 0xE800000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE700000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_24F92CE08();
  }

  return v11 & 1;
}

uint64_t sub_24EA46B70()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

uint64_t sub_24EA46C10(uint64_t a1)
{
  sub_24F92B218();
}

uint64_t sub_24EA46C9C()
{
  sub_24F92D068();
  sub_24F92B218();

  return sub_24F92D0B8();
}

void sub_24EA46D44(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE700000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x7265746E6563;
  if (v2 != 1)
  {
    v5 = 0x676E696C69617274;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x676E696461656CLL;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init()@<D0>(_OWORD *a1@<X8>)
{
  result = 0.0;
  *a1 = 0u;
  a1[1] = 0u;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v6 = sub_24F928388();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24F928398();
  v10 = JSONObject.appStoreColor.getter();
  v11 = *(v7 + 8);
  v11(v9, v6);
  *a3 = v10;
  sub_24F928398();
  v12 = JSONObject.appStoreColor.getter();
  v11(v9, v6);
  a3[1] = v12;
  sub_24F928398();
  v13 = JSONObject.appStoreColor.getter();
  v11(v9, v6);
  a3[2] = v13;
  sub_24F928398();
  v14 = JSONObject.appStoreColor.getter();
  v15 = sub_24F9285B8();
  (*(*(v15 - 8) + 8))(a2, v15);
  v11(a1, v6);
  result = (v11)(v9, v6);
  a3[3] = v14;
  return result;
}

id HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.badgeColor.getter()
{
  v1 = *v0;
  v2 = *v0;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.titleColor.getter()
{
  v1 = *(v0 + 8);
  v2 = v1;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.descriptionColor.getter()
{
  v1 = *(v0 + 16);
  v2 = v1;
  return v1;
}

void *HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.callToActionColor.getter()
{
  v1 = *(v0 + 24);
  v2 = v1;
  return v1;
}

void HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v2 = *(v1 + 8);
  v5 = *(v1 + 16);
  v4 = *(v1 + 24);
  if (*v1)
  {
    sub_24F92D088();
    v6 = v3;
    sub_24F92C418();

    if (v2)
    {
      goto LABEL_3;
    }
  }

  else
  {
    sub_24F92D088();
    if (v2)
    {
LABEL_3:
      sub_24F92D088();
      v7 = v2;
      sub_24F92C418();

      if (v5)
      {
        goto LABEL_4;
      }

LABEL_10:
      sub_24F92D088();
      if (v4)
      {
        goto LABEL_5;
      }

LABEL_11:
      sub_24F92D088();
      return;
    }
  }

  sub_24F92D088();
  if (!v5)
  {
    goto LABEL_10;
  }

LABEL_4:
  sub_24F92D088();
  v8 = v5;
  sub_24F92C418();

  if (!v4)
  {
    goto LABEL_11;
  }

LABEL_5:
  sub_24F92D088();
  v9 = v4;
  sub_24F92C418();
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hashValue.getter()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)(v3);
  return sub_24F92D0B8();
}

uint64_t sub_24EA47230()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)(v3);
  return sub_24F92D0B8();
}

uint64_t sub_24EA47280()
{
  v1 = v0[1];
  v4 = *v0;
  v5 = v1;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)(v3);
  return sub_24F92D0B8();
}

__n128 HeroCarouselItemOverlay.DisplayOptions.init(textAlignment:horizontalPlacement:textColorOverrides:isOverDarkContent:)@<Q0>(_BYTE *a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  v5 = *a2;
  *a5 = *a1;
  *(a5 + 1) = v5;
  result = *a3;
  v7 = *(a3 + 16);
  *(a5 + 8) = *a3;
  *(a5 + 24) = v7;
  *(a5 + 40) = a4;
  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  v35 = a2;
  v29 = a3;
  v4 = sub_24F9285B8();
  v33 = *(v4 - 8);
  v34 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v27 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F928388();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v31 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v27 - v11;
  sub_24F928398();
  sub_24EA49C38();
  sub_24F928208();
  v13 = *(v8 + 8);
  v13(v12, v7);
  v40 = v36;
  sub_24F928398();
  sub_24EA49C8C();
  sub_24F928208();
  v30 = v7;
  v28 = v13;
  v13(v12, v7);
  v41 = v36;
  v32 = a1;
  sub_24F928398();
  (*(v33 + 16))(v6, v35, v34);
  sub_24EA49CE0();
  sub_24F929548();
  v14 = 0;
  v15 = 0;
  v16 = 0;
  v17 = 0;
  if (v36 != 1)
  {
    v16 = v38;
    v17 = v39;
    v15 = v36;
    v14 = v37;
  }

  v27 = v17;
  v19 = v31;
  v18 = v32;
  sub_24F928398();
  v20 = sub_24F928278();
  (*(v33 + 8))(v35, v34);
  v21 = v18;
  v22 = v30;
  v23 = v28;
  v28(v21, v30);
  result = v23(v19, v22);
  v25 = v29;
  *v29 = v40;
  v25[1] = v41;
  *(v25 + 1) = v15;
  *(v25 + 2) = v14;
  v26 = v27;
  *(v25 + 3) = v16;
  *(v25 + 4) = v26;
  v25[40] = (v20 == 2) | v20 & 1;
  return result;
}

id HeroCarouselItemOverlay.DisplayOptions.textColorOverrides.getter@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = v1[4];
  v9 = v1[3];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v9;
  a1[3] = v4;
  v5 = v4;
  v6 = v2;
  v7 = v3;

  return v9;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.hash(into:)(uint64_t a1)
{
  sub_24F92B218();

  sub_24F92B218();

  HeroCarouselItemOverlay.DisplayOptions.TextColorOverrides.hash(into:)(a1);
  return sub_24F92D088();
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.hashValue.getter()
{
  v1 = v0[1];
  v2 = v0[40];
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  v9 = v2;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)(v4);
  return sub_24F92D0B8();
}

uint64_t sub_24EA478A0()
{
  v1 = v0[1];
  v2 = v0[40];
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  v9 = v2;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)(v4);
  return sub_24F92D0B8();
}

uint64_t sub_24EA47910()
{
  v1 = v0[1];
  v2 = v0[40];
  v5 = *v0;
  v6 = v1;
  v7 = *(v0 + 8);
  v8 = *(v0 + 24);
  v9 = v2;
  sub_24F92D068();
  HeroCarouselItemOverlay.DisplayOptions.hash(into:)(v4);
  return sub_24F92D0B8();
}

uint64_t HeroCarouselItemOverlay.__allocating_init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  HeroCarouselItemOverlay.init(deserializing:using:)(a1, a2);
  return v4;
}

uint64_t HeroCarouselItemOverlay.init(deserializing:using:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v164 = a2;
  v159 = *v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v5 - 8);
  v153 = &v145 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v151 = &v145 - v8;
  MEMORY[0x28223BE20](v9);
  v149 = &v145 - v10;
  v191 = sub_24F9285B8();
  v168 = *(v191 - 8);
  MEMORY[0x28223BE20](v191);
  v155 = &v145 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v163 = &v145 - v13;
  MEMORY[0x28223BE20](v14);
  v16 = &v145 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F213E68, &unk_24F93BC80);
  MEMORY[0x28223BE20](v17 - 8);
  v161 = (&v145 - v18);
  v19 = sub_24F91F6B8();
  v165 = *(v19 - 8);
  v166 = v19;
  MEMORY[0x28223BE20](v19);
  v21 = &v145 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_24F928388();
  v167 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v152 = &v145 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v150 = &v145 - v25;
  MEMORY[0x28223BE20](v26);
  v148 = &v145 - v27;
  MEMORY[0x28223BE20](v28);
  v147 = &v145 - v29;
  MEMORY[0x28223BE20](v30);
  v154 = &v145 - v31;
  MEMORY[0x28223BE20](v32);
  v160 = &v145 - v33;
  MEMORY[0x28223BE20](v34);
  v36 = &v145 - v35;
  MEMORY[0x28223BE20](v37);
  v39 = &v145 - v38;
  sub_24F928398();
  v40 = sub_24F928348();
  v169 = v22;
  v156 = v16;
  if (v41)
  {
    *&v177 = v40;
    *(&v177 + 1) = v41;
    sub_24F92C7F8();
    v42 = *(v167 + 8);
    v43 = v39;
    v44 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v45 = sub_24F91F668();
    v46 = a1;
    v47 = v22;
    v48 = v3;
    v49 = v36;
    v50 = v46;
    v51 = v48;
    v53 = v52;
    v165[1](v21, v166);
    *&v177 = v45;
    *(&v177 + 1) = v53;
    v54 = v51;
    v55 = v50;
    v36 = v49;
    v3 = v54;
    sub_24F92C7F8();
    v42 = *(v167 + 8);
    v43 = v39;
    v44 = v47;
    a1 = v55;
    v16 = v156;
  }

  v165 = v42;
  (v42)(v43, v44);
  v170 = a1;
  v56 = (v3 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_id);
  v57 = v183;
  *v56 = v182;
  *(v56 + 1) = v57;
  v158 = v56;
  *(v56 + 4) = v184;
  sub_24F929608();
  sub_24F928398();
  v58 = v3;
  v59 = (v168 + 16);
  v60 = *(v168 + 16);
  v61 = v164;
  v60(v16, v164, v191);
  v62 = v161;
  sub_24F929548();
  v157 = OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_impressionMetrics;
  v166 = v58;
  sub_24E6009C8(v62, v58 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  v63 = v36;
  v64 = v163;
  v161 = v60;
  v60(v163, v61, v191);
  v65 = v160;
  sub_24F928398();
  sub_24EA49F7C();
  v66 = v162;
  sub_24F928218();
  if (v66)
  {
    v162 = v66;
    v67 = *(v168 + 8);
    v68 = v191;
    v67(v61, v191);
    v69 = v169;
    v70 = v165;
    (v165)(v170, v169);
    (v70)(v65, v69);
    v67(v64, v68);
    sub_24E6585F8(v158);
    v74 = v166;
    sub_24E601704(v166 + v157, &qword_27F213E68, &unk_24F93BC80);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v146 = v63;
    v71 = v165;
    v167 += 8;
    (v165)(v65, v169);
    *(v166 + 16) = v182;
    v72 = v154;
    sub_24F928398();
    v73 = v155;
    v161(v155, v64, v191);
    HeroCarouselItemOverlay.DisplayOptions.init(deserializing:using:)(v72, v73, v187);
    v162 = 0;
    v160 = v59;
    v76 = v187[1];
    v77 = v190;
    v78 = v166;
    *(v166 + 24) = v187[0];
    *(v78 + 25) = v76;
    v79 = v189;
    *(v78 + 32) = v188;
    *(v78 + 48) = v79;
    *(v78 + 64) = v77;
    v80 = v147;
    sub_24F928398();
    v81 = sub_24F928348();
    v83 = v82;
    (v71)(v80, v169);
    v159 = objc_opt_self();
    v84 = [v159 systemFontOfSize_];
    v85 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v86 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v87 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v182 = 10;
    *(&v182 + 1) = 0xE100000000000000;
    *&v183 = v84;
    *(&v183 + 1) = v85;
    *&v184 = 161644770;
    *(&v184 + 1) = 0xA400000000000000;
    *&v185 = v86;
    *(&v185 + 1) = 606245;
    *&v186 = 0xE300000000000000;
    *(&v186 + 1) = v87;
    if (v83)
    {
      v179 = v184;
      v180 = v185;
      v181 = v186;
      v177 = v182;
      v178 = v183;
      v88 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
      v89 = sub_24ECB3C7C(v81, v83, &v177);
      v90 = v149;
      sub_24ECB3F40(v149);

      v91 = 0;
    }

    else
    {
      sub_24E951D6C(&v182);
      v91 = 1;
      v90 = v149;
    }

    v92 = sub_24F91F008();
    v158 = *(*(v92 - 8) + 56);
    v158(v90, v91, 1, v92);
    sub_24E6009C8(v90, v166 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_badgeText, &qword_27F215340, &qword_24F943530);
    v93 = v148;
    sub_24F928398();
    v94 = sub_24F928348();
    v96 = v95;
    (v165)(v93, v169);
    v97 = [v159 systemFontOfSize_];
    v98 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v99 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v100 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v177 = 10;
    *(&v177 + 1) = 0xE100000000000000;
    *&v178 = v97;
    *(&v178 + 1) = v98;
    *&v179 = 161644770;
    *(&v179 + 1) = 0xA400000000000000;
    *&v180 = v99;
    *(&v180 + 1) = 606245;
    *&v181 = 0xE300000000000000;
    *(&v181 + 1) = v100;
    if (v96)
    {
      v174 = v179;
      v175 = v180;
      v176 = v181;
      v172 = v177;
      v173 = v178;
      v101 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
      v102 = sub_24ECB3C7C(v94, v96, &v172);
      v103 = v151;
      sub_24ECB3F40(v151);

      v104 = 0;
    }

    else
    {
      sub_24E951D6C(&v177);
      v104 = 1;
      v103 = v151;
    }

    v158(v103, v104, 1, v92);
    sub_24E6009C8(v103, v166 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, &qword_27F215340, &qword_24F943530);
    v105 = v150;
    sub_24F928398();
    v106 = sub_24F928348();
    v108 = v107;
    (v165)(v105, v169);
    v109 = [v159 systemFontOfSize_];
    v110 = _sSo16NSParagraphStyleC12GameStoreKitE4nqmlABvgZ_0();
    v111 = _sSo16NSParagraphStyleC12GameStoreKitE8listItem8withFontABSo6UIFontC_tFZ_0();
    v112 = _sSo16NSParagraphStyleC12GameStoreKitE16numberedListItem8withFontABSo6UIFontC_tFZ_0();

    *&v172 = 10;
    *(&v172 + 1) = 0xE100000000000000;
    *&v173 = v109;
    *(&v173 + 1) = v110;
    *&v174 = 161644770;
    *(&v174 + 1) = 0xA400000000000000;
    *&v175 = v111;
    *(&v175 + 1) = 606245;
    *&v176 = 0xE300000000000000;
    *(&v176 + 1) = v112;
    if (v108)
    {
      v171[2] = v174;
      v171[3] = v175;
      v171[4] = v176;
      v171[0] = v172;
      v171[1] = v173;
      v113 = objc_allocWithZone(type metadata accessor for NqmlAttributedStringGenerator(0));
      v114 = sub_24ECB3C7C(v106, v108, v171);
      v115 = v153;
      sub_24ECB3F40(v153);

      v116 = 0;
    }

    else
    {
      sub_24E951D6C(&v172);
      v116 = 1;
      v115 = v153;
    }

    v158(v115, v116, 1, v92);
    v117 = v166;
    sub_24E6009C8(v115, v166 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_descriptionText, &qword_27F215340, &qword_24F943530);
    v118 = v146;
    sub_24F928398();
    v119 = sub_24F928348();
    v121 = v120;
    v122 = v118;
    v123 = v169;
    v124 = v165;
    (v165)(v122, v169);
    v125 = v117;
    v126 = (v117 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText);
    *v126 = v119;
    v126[1] = v121;
    v127 = v152;
    sub_24F928398();
    countAndFlagsBits = sub_24F928348();
    object = v129;
    (v124)(v127, v123);
    if (!object)
    {
      v131._countAndFlagsBits = 0xD000000000000016;
      v131._object = 0x800000024FA500B0;
      v132._countAndFlagsBits = 0;
      v132._object = 0xE000000000000000;
      v133 = localizedString(_:comment:)(v131, v132);
      countAndFlagsBits = v133._countAndFlagsBits;
      object = v133._object;
    }

    v134 = v191;
    v74 = v125;
    v135 = (v125 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_buttonTitle);
    *v135 = countAndFlagsBits;
    v135[1] = object;
    type metadata accessor for Action(0);
    v136 = v146;
    sub_24F928398();
    v137 = v163;
    v138 = static Action.tryToMakeInstance(byDeserializing:using:)(v136, v163);
    (v165)(v136, v169);
    *(v74 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_clickAction) = v138;
    type metadata accessor for Lockup(0);
    sub_24F928398();
    v139 = v156;
    v140 = v134;
    v141 = v161;
    v161(v156, v137, v140);
    sub_24EA4A564(&qword_27F221FB8, type metadata accessor for Lockup, &protocol conformance descriptor for Lockup);
    sub_24F929548();
    *(v74 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_lockup) = *&v171[0];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F219650, qword_24F974DB0);
    sub_24F928398();
    v141(v139, v137, v191);
    sub_24E705AFC();
    sub_24F929548();
    *(v74 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_collectionIcons) = *&v171[0];
    v142 = v162;
    sub_24EA48A48();
    v143 = *(v168 + 8);
    v144 = v191;
    v143(v164, v191);
    (v165)(v170, v169);
    v143(v163, v144);
    if (v142)
    {
    }
  }

  return v74;
}

void sub_24EA48A48()
{
  v1 = *v0;
  v2 = sub_24F91EF78();
  v57 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v55 = &v49[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v4);
  v6 = &v49[-v5];
  v7 = sub_24F91EE38();
  v56 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v49[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F215340, &qword_24F943530);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v49[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v13);
  v15 = &v49[-v14];
  MEMORY[0x28223BE20](v16);
  v18 = &v49[-v17];
  v19 = *(v0 + 16);
  if (v19 <= 2)
  {
    if (v19 < 2)
    {
      v54 = v1;
      sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, &v49[-v17], &qword_27F215340, &qword_24F943530);
      v20 = sub_24F91F008();
      v21 = *(v20 - 8);
      if ((*(v21 + 48))(v18, 1, v20) == 1)
      {
        sub_24E601704(v18, &qword_27F215340, &qword_24F943530);
        v22 = v54;
      }

      else
      {
        v52 = v9;
        sub_24F91EE18();
        sub_24EA4A564(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
        sub_24F92BB88();
        v53 = v20;
        v31 = v55;
        sub_24F92BC08();
        sub_24EA4A564(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
        LODWORD(v51) = sub_24F92AFF8();
        v32 = v56;
        v33 = *(v57 + 8);
        v33(v31, v2);
        v33(v6, v2);
        (*(v32 + 8))(v52, v7);
        (*(v21 + 8))(v18, v53);
        v22 = v54;
        if ((v51 & 1) == 0)
        {
          return;
        }
      }

      v23 = sub_24F92AC38();
      sub_24EA4A564(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v25 = swift_allocError();
      v26 = v34;
      *v34 = 0x786554656C746974;
      v34[1] = 0xE900000000000074;
      v34[2] = v22;
      goto LABEL_27;
    }

    goto LABEL_7;
  }

  if (v19 == 3)
  {
    v27 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_collectionIcons);
    if (v27)
    {
      if (v27 >> 62)
      {
        if (!sub_24F92C738())
        {
          goto LABEL_25;
        }
      }

      else if (!*((v27 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_25;
      }

      sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, v15, &qword_27F215340, &qword_24F943530);
      v28 = sub_24F91F008();
      v29 = *(v28 - 8);
      if ((*(v29 + 48))(v15, 1, v28) == 1)
      {
        v30 = v15;
LABEL_21:
        sub_24E601704(v30, &qword_27F215340, &qword_24F943530);
        goto LABEL_25;
      }

      v53 = v28;
      sub_24F91EE18();
      sub_24EA4A564(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
      sub_24F92BB88();
      v51 = v29;
      v38 = v55;
      sub_24F92BC08();
      sub_24EA4A564(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
      v50 = sub_24F92AFF8();
      v39 = v1;
      v40 = v6;
      v41 = v2;
      v54 = v7;
      v42 = v56;
      v43 = *(v57 + 8);
      v43(v38, v41);
      v43(v40, v41);
      v1 = v39;
      (*(v42 + 8))(v9, v54);
      (*(v51 + 8))(v15, v53);
LABEL_24:
      if ((v50 & 1) == 0)
      {
        return;
      }
    }
  }

  else
  {
    if (v19 == 4)
    {
LABEL_7:
      if (*(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_lockup))
      {
        return;
      }

      v23 = sub_24F92AC38();
      sub_24EA4A564(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
      v25 = swift_allocError();
      v26 = v24;
      *v24 = 0x70756B636F6CLL;
      v24[1] = 0xE600000000000000;
      goto LABEL_26;
    }

    v35 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_collectionIcons);
    if (v35)
    {
      if (v35 >> 62)
      {
        if (!sub_24F92C738())
        {
          goto LABEL_25;
        }

        goto LABEL_19;
      }

      if (*((v35 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
LABEL_19:
        sub_24E60169C(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, v12, &qword_27F215340, &qword_24F943530);
        v36 = sub_24F91F008();
        v37 = *(v36 - 8);
        if ((*(v37 + 48))(v12, 1, v36) == 1)
        {
          v30 = v12;
          goto LABEL_21;
        }

        v53 = v36;
        sub_24F91EE18();
        sub_24EA4A564(&qword_27F225C00, MEMORY[0x277CC8B30], MEMORY[0x277CC8B48]);
        sub_24F92BB88();
        v51 = v37;
        v44 = v55;
        sub_24F92BC08();
        sub_24EA4A564(&unk_27F22D350, MEMORY[0x277CC8C20], MEMORY[0x277CC8C30]);
        v50 = sub_24F92AFF8();
        v45 = v6;
        v46 = v2;
        v54 = v7;
        v47 = v56;
        v48 = *(v57 + 8);
        v48(v44, v46);
        v48(v45, v46);
        (*(v47 + 8))(v9, v54);
        (*(v51 + 8))(v12, v53);
        goto LABEL_24;
      }
    }
  }

LABEL_25:
  v23 = sub_24F92AC38();
  sub_24EA4A564(&qword_27F2213B8, MEMORY[0x277D22548], MEMORY[0x277D22550]);
  v25 = swift_allocError();
  v26 = v24;
  *v24 = 0xD00000000000001CLL;
  v24[1] = 0x800000024FA50140;
LABEL_26:
  v24[2] = v1;
LABEL_27:
  (*(*(v23 - 8) + 104))(v26, *MEMORY[0x277D22530], v23);
  v58 = v25;
  swift_willThrow();
}

id HeroCarouselItemOverlay.displayOptions.getter@<X0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 25);
  v3 = *(v1 + 32);
  v4 = *(v1 + 40);
  v5 = *(v1 + 56);
  v11 = *(v1 + 48);
  v6 = *(v1 + 64);
  *a1 = *(v1 + 24);
  *(a1 + 1) = v2;
  *(a1 + 8) = v3;
  *(a1 + 16) = v4;
  *(a1 + 24) = v11;
  *(a1 + 32) = v5;
  *(a1 + 40) = v6;
  v7 = v5;
  v8 = v3;
  v9 = v4;

  return v11;
}

uint64_t HeroCarouselItemOverlay.callToActionText.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_callToActionText);

  return v1;
}

uint64_t HeroCarouselItemOverlay.buttonTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_buttonTitle);

  return v1;
}

uint64_t HeroCarouselItemOverlay.segue.getter@<X0>(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EA4A564(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t HeroCarouselItemOverlay.deinit()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  v3 = *(v0 + 56);

  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_badgeText, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_titleText, &qword_27F215340, &qword_24F943530);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_descriptionText, &qword_27F215340, &qword_24F943530);

  sub_24E6585F8(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_id);
  sub_24E601704(v0 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_impressionMetrics, &qword_27F213E68, &unk_24F93BC80);
  return v0;
}

uint64_t HeroCarouselItemOverlay.__deallocating_deinit()
{
  HeroCarouselItemOverlay.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_24EA49884@<X0>(void *a1@<X8>)
{
  v3 = *(*v1 + OBJC_IVAR____TtC12GameStoreKit23HeroCarouselItemOverlay_clickAction);
  if (v3)
  {
    v4 = type metadata accessor for Action(0);
    v5 = sub_24EA4A564(&qword_27F216DE8, type metadata accessor for Action, &protocol conformance descriptor for Action);
  }

  else
  {
    v4 = 0;
    v5 = 0;
    a1[1] = 0;
    a1[2] = 0;
  }

  *a1 = v3;
  a1[3] = v4;
  a1[4] = v5;
}

uint64_t sub_24EA4992C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v7 = swift_allocObject();
  result = HeroCarouselItemOverlay.init(deserializing:using:)(a1, a2);
  if (!v3)
  {
    *a3 = v7;
  }

  return result;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.TextAlignment.textAlignment(with:)()
{
  if (*v0)
  {
    return 1;
  }

  if (sub_24F92BF88())
  {
    return 2;
  }

  return 0;
}

uint64_t HeroCarouselItemOverlay.DisplayOptions.Placement.textAlignment(with:)()
{
  result = *v0;
  if (*v0)
  {
    if (result != 1)
    {
      if (sub_24F92BF88())
      {
        return 0;
      }

      else
      {
        return 2;
      }
    }
  }

  else if (sub_24F92BF88())
  {
    return 2;
  }

  else
  {
    return 0;
  }

  return result;
}

GameStoreKit::HeroCarouselItemOverlay::DisplayOptions::Placement __swiftcall HeroCarouselItemOverlay.DisplayOptions.Placement.value(with:)(UITraitCollection with)
{
  v3 = v1;
  v4 = *v2;
  if (*v2)
  {
    if (v4 != 1)
    {
      LOBYTE(with.super.isa) = sub_24F92BF88();
      if (with.super.isa)
      {
        LOBYTE(v4) = 0;
      }

      else
      {
        LOBYTE(v4) = 2;
      }
    }
  }

  else
  {
    LOBYTE(with.super.isa) = sub_24F92BF88();
    if (with.super.isa)
    {
      LOBYTE(v4) = 2;
    }

    else
    {
      LOBYTE(v4) = 0;
    }
  }

  *v3 = v4;
  return with.super.isa;
}

uint64_t _s12GameStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV18TextColorOverridesV2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  v6 = *a2;
  v7 = *(a2 + 8);
  v9 = *(a2 + 16);
  v8 = *(a2 + 24);
  if (*a1)
  {
    if (!v6)
    {
      return 0;
    }

    sub_24E77ACC8();
    v10 = v6;
    v11 = v2;
    v12 = sub_24F92C408();

    if ((v12 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v3)
  {
    if (!v7)
    {
      return 0;
    }

    sub_24E77ACC8();
    v13 = v7;
    v14 = v3;
    v15 = sub_24F92C408();

    if ((v15 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  if (v5)
  {
    if (!v9)
    {
      return 0;
    }

    sub_24E77ACC8();
    v16 = v9;
    v17 = v5;
    v18 = sub_24F92C408();

    if ((v18 & 1) == 0)
    {
      return 0;
    }
  }

  else if (v9)
  {
    return 0;
  }

  if (v4)
  {
    if (v8)
    {
      sub_24E77ACC8();
      v19 = v8;
      v20 = v4;
      v21 = sub_24F92C408();

      if (v21)
      {
        return 1;
      }
    }
  }

  else if (!v8)
  {
    return 1;
  }

  return 0;
}

unint64_t sub_24EA49C38()
{
  result = qword_27F225BA0;
  if (!qword_27F225BA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BA0);
  }

  return result;
}

unint64_t sub_24EA49C8C()
{
  result = qword_27F225BA8;
  if (!qword_27F225BA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BA8);
  }

  return result;
}

unint64_t sub_24EA49CE0()
{
  result = qword_27F225BB0;
  if (!qword_27F225BB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BB0);
  }

  return result;
}

uint64_t _s12GameStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 1);
  v4 = *(a1 + 8);
  v3 = *(a1 + 16);
  v41 = *(a1 + 24);
  v40 = *(a1 + 40);
  v5 = *(a2 + 1);
  v42 = *(a2 + 8);
  v43 = *(a1 + 32);
  v44 = *(a2 + 16);
  v45 = *(a2 + 24);
  v6 = *(a2 + 32);
  v39 = *(a2 + 40);
  v7 = *a1 == 0;
  if (*a1)
  {
    v8 = 0x7265746E6563;
  }

  else
  {
    v8 = 0x676E696461656CLL;
  }

  if (v7)
  {
    v9 = 0xE700000000000000;
  }

  else
  {
    v9 = 0xE600000000000000;
  }

  if (*a2)
  {
    v10 = 0x7265746E6563;
  }

  else
  {
    v10 = 0x676E696461656CLL;
  }

  if (*a2)
  {
    v11 = 0xE600000000000000;
  }

  else
  {
    v11 = 0xE700000000000000;
  }

  if (v8 == v10 && v9 == v11)
  {
  }

  else
  {
    v13 = sub_24F92CE08();

    if ((v13 & 1) == 0)
    {
      return 0;
    }
  }

  v14 = 0xE600000000000000;
  v15 = 0x676E696C69617274;
  if (v2 == 1)
  {
    v15 = 0x7265746E6563;
  }

  else
  {
    v14 = 0xE800000000000000;
  }

  if (v2)
  {
    v16 = v15;
  }

  else
  {
    v16 = 0x676E696461656CLL;
  }

  if (v2)
  {
    v17 = v14;
  }

  else
  {
    v17 = 0xE700000000000000;
  }

  v18 = 0xE600000000000000;
  v19 = 0x676E696C69617274;
  if (v5 == 1)
  {
    v19 = 0x7265746E6563;
  }

  else
  {
    v18 = 0xE800000000000000;
  }

  if (v5)
  {
    v20 = v19;
  }

  else
  {
    v20 = 0x676E696461656CLL;
  }

  if (v5)
  {
    v21 = v18;
  }

  else
  {
    v21 = 0xE700000000000000;
  }

  if (v16 == v20 && v17 == v21)
  {
  }

  else
  {
    v22 = sub_24F92CE08();

    if ((v22 & 1) == 0)
    {
      return 0;
    }
  }

  v50 = v4;
  v51 = v3;
  v52 = v41;
  v53 = v43;
  v46 = v42;
  v47 = v44;
  v48 = v45;
  v49 = v6;
  v23 = v6;
  v24 = v4;
  v25 = v3;
  v26 = v41;
  v27 = v43;
  v28 = v42;
  v29 = v44;
  v30 = v45;
  v31 = _s12GameStoreKit23HeroCarouselItemOverlayC14DisplayOptionsV18TextColorOverridesV2eeoiySbAG_AGtFZ_0(&v50, &v46);
  v32 = v47;
  v33 = v48;
  v34 = v49;

  v35 = v51;
  v36 = v52;
  v37 = v53;

  if (v31)
  {
    return v40 ^ v39 ^ 1u;
  }

  return 0;
}

unint64_t sub_24EA49F7C()
{
  result = qword_27F225BB8;
  if (!qword_27F225BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BB8);
  }

  return result;
}

unint64_t sub_24EA49FD4()
{
  result = qword_27F225BC0;
  if (!qword_27F225BC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BC0);
  }

  return result;
}

unint64_t sub_24EA4A02C()
{
  result = qword_27F225BC8;
  if (!qword_27F225BC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BC8);
  }

  return result;
}

unint64_t sub_24EA4A084()
{
  result = qword_27F225BD0;
  if (!qword_27F225BD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BD0);
  }

  return result;
}

unint64_t sub_24EA4A0DC()
{
  result = qword_27F225BD8;
  if (!qword_27F225BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BD8);
  }

  return result;
}

unint64_t sub_24EA4A134()
{
  result = qword_27F225BE0;
  if (!qword_27F225BE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225BE0);
  }

  return result;
}

uint64_t type metadata accessor for HeroCarouselItemOverlay(uint64_t a1)
{
  result = qword_27F225BF0;
  if (!qword_27F225BF0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA4A224(uint64_t a1)
{
  sub_24E9523E0(319, &qword_27F215338, MEMORY[0x277CC8C40]);
  if (v1 <= 0x3F)
  {
    sub_24E9523E0(319, &qword_27F213EB0, MEMORY[0x277D21F70]);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t sub_24EA4A3B8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 41))
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

uint64_t sub_24EA4A414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2;
    }
  }

  return result;
}

uint64_t sub_24EA4A4A4(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 32))
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

uint64_t sub_24EA4A500(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_24EA4A564(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t AnnotationGroup.title.getter()
{
  v1 = *v0;

  return v1;
}

double AnnotationGroup.init(id:title:annotations:forceExpanded:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v12 = sub_24F91F6B8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = v25 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E65E064(a1, &v26);
  if (*(&v27 + 1))
  {
    sub_24E9BBAA8(a1);
    v29 = v26;
    v30 = v27;
    v31 = v28;
  }

  else
  {
    sub_24F91F6A8();
    v16 = sub_24F91F668();
    v25[0] = a2;
    v17 = a3;
    v18 = a4;
    v19 = a5;
    v20 = v16;
    v22 = v21;
    (*(v13 + 8))(v15, v12);
    v25[1] = v20;
    v25[2] = v22;
    a5 = v19;
    a4 = v18;
    a3 = v17;
    a2 = v25[0];
    sub_24F92C7F8();
    sub_24E9BBAA8(a1);
    sub_24E9BBAA8(&v26);
  }

  result = *&v29;
  v24 = v30;
  *(a6 + 32) = v29;
  *(a6 + 48) = v24;
  *(a6 + 64) = v31;
  *a6 = a2;
  *(a6 + 8) = a3;
  *(a6 + 16) = a4;
  *(a6 + 24) = a5 & 1;
  return result;
}

uint64_t AnnotationGroup.init(deserializing:using:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v49 = a2;
  v5 = sub_24F9285B8();
  v50 = *(v5 - 8);
  v51 = v5;
  MEMORY[0x28223BE20](v5);
  v48 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F91F6B8();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v44 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = sub_24F928388();
  v11 = *(v55 - 8);
  MEMORY[0x28223BE20](v55);
  v47 = &v44 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v46 = &v44 - v14;
  MEMORY[0x28223BE20](v15);
  v17 = &v44 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v44 - v19;
  sub_24F928398();
  v21 = sub_24F928348();
  v52 = a3;
  if (v22)
  {
    v53 = v21;
    v54 = v22;
  }

  else
  {
    sub_24F91F6A8();
    v23 = sub_24F91F668();
    v25 = v24;
    (*(v8 + 8))(v10, v7);
    v53 = v23;
    v54 = v25;
  }

  sub_24F92C7F8();
  v26 = *(v11 + 8);
  v26(v20, v55);
  sub_24F928398();
  v27 = sub_24F928348();
  v29 = v28;
  v26(v17, v55);
  if (v29)
  {
    v30 = a1;
    v31 = v52;
    *v52 = v27;
    v31[1] = v29;
    sub_24F928398();
    v33 = v50;
    v32 = v51;
    v34 = *(v50 + 16);
    v45 = v26;
    v35 = v49;
    v34(v48, v49, v51);
    sub_24E631DB0();
    v31[2] = sub_24F92B698();
    v36 = v47;
    sub_24F928398();
    v37 = sub_24F928278();
    (*(v33 + 8))(v35, v32);
    v38 = v30;
    v39 = v55;
    v40 = v45;
    v45(v38, v55);
    result = v40(v36, v39);
    *(v31 + 24) = v37 & 1;
  }

  else
  {
    v42 = sub_24F92AC38();
    sub_24E8F2E6C();
    swift_allocError();
    *v43 = 0x656C746974;
    v43[1] = 0xE500000000000000;
    v43[2] = &type metadata for AnnotationGroup;
    (*(*(v42 - 8) + 104))(v43, *MEMORY[0x277D22530], v42);
    swift_willThrow();
    (*(v50 + 8))(v49, v51);
    v26(a1, v55);
    return sub_24E6585F8((v52 + 4));
  }

  return result;
}

uint64_t AnnotationGroup.hasAnyAnnotationsWithLinks.getter()
{
  v1 = *(v0 + 16);
  result = v1 + 32;
  v3 = -*(v1 + 16);
  v4 = -1;
  while (1)
  {
    v5 = v3 + v4;
    if (v3 + v4 == -1)
    {
      return v5 != -1;
    }

    if (++v4 >= *(v1 + 16))
    {
      break;
    }

    v6 = result + 152;
    sub_24EA4AD18(result, v8);
    v7 = v9;

    sub_24EA4AD74(v8);
    result = v6;
    if (v7)
    {

      return v5 != -1;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_24EA4ADCC()
{
  result = qword_27F225C08;
  if (!qword_27F225C08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225C08);
  }

  return result;
}

uint64_t sub_24EA4AE44(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24EA4AE8C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24EA4AEEC(uint64_t a1, __n128 a2)
{
  v2 = a1;
  v3 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v3)
  {
    v31 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v5 = v2 + 64;
    result = sub_24F92C6B8();
    v6 = result;
    v7 = 0;
    v8 = *(v2 + 36);
    v26 = v2 + 72;
    v27 = v8;
    v28 = v2;
    while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(v2 + 32))
    {
      v10 = v6 >> 6;
      if ((*(v5 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
      {
        goto LABEL_21;
      }

      if (v8 != *(v2 + 36))
      {
        goto LABEL_22;
      }

      v29 = v7;
      v11 = v3;
      v12 = (*(v2 + 48) + 16 * v6);
      v14 = *v12;
      v13 = v12[1];
      v15 = *(*(v2 + 56) + 8 * v6);
      v16 = type metadata accessor for OnDevicePersonalizationData();
      v17 = objc_allocWithZone(v16);
      v18 = &v17[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_appId];
      *v18 = v14;
      *(v18 + 1) = v13;
      *&v17[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_userSegments] = v15;
      *&v17[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_onDeviceSignals] = 0;
      v30.receiver = v17;
      v30.super_class = v16;

      objc_msgSendSuper2(&v30, sel_init);
      sub_24F92C948();
      sub_24F92C988();
      v2 = v28;
      sub_24F92C998();
      result = sub_24F92C958();
      v9 = 1 << *(v28 + 32);
      if (v6 >= v9)
      {
        goto LABEL_23;
      }

      v19 = *(v5 + 8 * v10);
      if ((v19 & (1 << v6)) == 0)
      {
        goto LABEL_24;
      }

      v3 = v11;
      v8 = v27;
      if (v27 != *(v28 + 36))
      {
        goto LABEL_25;
      }

      v20 = v19 & (-2 << (v6 & 0x3F));
      if (v20)
      {
        v9 = __clz(__rbit64(v20)) | v6 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v21 = v10 << 6;
        v22 = v10 + 1;
        v23 = (v26 + 8 * v10);
        while (v22 < (v9 + 63) >> 6)
        {
          v25 = *v23++;
          v24 = v25;
          v21 += 64;
          ++v22;
          if (v25)
          {
            result = sub_24E6586A8(v6, v27, 0);
            v9 = __clz(__rbit64(v24)) + v21;
            goto LABEL_4;
          }
        }

        result = sub_24E6586A8(v6, v27, 0);
      }

LABEL_4:
      v7 = v29 + 1;
      v6 = v9;
      if (v29 + 1 == v3)
      {
        return v31;
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
LABEL_25:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EA4B180()
{
  v0 = sub_24F92AAB8();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_27F210560 != -1)
  {
    swift_once();
  }

  v4 = __swift_project_value_buffer(v0, qword_27F39C380);
  (*(v1 + 16))(v3, v4, v0);
  qword_27F39B690 = sub_24F92AAE8();
  unk_27F39B698 = MEMORY[0x277D22508];
  __swift_allocate_boxed_opaque_existential_1(qword_27F39B678);
  return sub_24F92AAD8();
}

id OnDevicePersonalizationDataManager.init(accountStore:bag:)(void *a1, uint64_t a2)
{
  v3 = v2;
  v27 = a1;
  v28 = a2;
  ObjectType = swift_getObjectType();
  v26 = sub_24F92BEE8();
  v4 = *(v26 - 8);
  MEMORY[0x28223BE20](v26);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_24F92BE88();
  MEMORY[0x28223BE20](v7);
  v8 = sub_24F927DC8();
  MEMORY[0x28223BE20](v8 - 8);
  v25 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestQueue;
  v9 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v24[0] = "collectionIcons or titleText";
  v24[1] = v9;
  sub_24F927DA8();
  v31 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  (*(v4 + 104))(v6, *MEMORY[0x277D85260], v26);
  *&v2[v25] = sub_24F92BF38();
  v10 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_amsEngagement;
  *&v3[v10] = [objc_allocWithZone(MEMORY[0x277CEE498]) init];
  v11 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount;
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount] = 0;
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer] = 0;
  v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
  v12 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock;
  *&v3[v12] = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
  v13 = v27;
  v14 = v28;
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_accountStore] = v27;
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_bag] = v14;
  v15 = v13;

  v16 = [v15 ams_activeiTunesAccount];
  v17 = *&v3[v11];
  *&v3[v11] = v16;

  v18 = [objc_allocWithZone(MEMORY[0x277CCA930]) initWithCondition_];
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock] = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C58, qword_24F977E48);
  swift_allocObject();
  *&v3[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheBox] = sub_24EA4F35C(0, 0);
  v30.receiver = v3;
  v30.super_class = ObjectType;
  v19 = objc_msgSendSuper2(&v30, sel_init);
  sub_24EA4B77C(1);
  v20 = objc_opt_self();
  v21 = [v20 defaultCenter];
  [v21 addObserver:v19 selector:sel_storeAccountDidChange name:*MEMORY[0x277CB8B78] object:v15];

  v22 = [v20 defaultCenter];
  [v22 addObserver:v19 selector:sel_appEnteredWhileAppeared name:*MEMORY[0x277D76648] object:0];

  return v19;
}

void sub_24EA4B77C(int a1)
{
  v2 = v1;
  LODWORD(v40) = a1;
  ObjectType = swift_getObjectType();
  v3 = sub_24F927D88();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v43 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v42 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v38 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21C290, &qword_24F966880);
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v38 - v12;
  v14 = *(v2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock);
  [v14 lock];
  v15 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending;
  if (*(v2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending) == 1)
  {
    [v14 unlock];
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    return;
  }

  v38 = v3;
  v39 = v6;
  *(v2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending) = 1;
  [v14 unlock];
  if (qword_27F210AD0 != -1)
  {
    swift_once();
  }

  sub_24F92A3B8();
  sub_24F92A408();
  (*(v10 + 8))(v13, v9);
  if (aBlock != 1)
  {
    if (qword_27F210110 == -1)
    {
      goto LABEL_16;
    }

    goto LABEL_30;
  }

  v16 = *(v2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount);
  if (!v16)
  {
    if (qword_27F210110 == -1)
    {
LABEL_16:
      __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
      sub_24F928468();
      *(swift_allocObject() + 16) = xmmword_24F93DE60;
      sub_24F9283A8();
      sub_24F92A588();

      v19 = MEMORY[0x277D84F90];
      v20 = sub_24E60CE98(MEMORY[0x277D84F90]);
      v21 = sub_24E608448(v19);
      sub_24EA4CB28(v20, v21);

      [v14 lock];
      *(v2 + v15) = 0;
      [v14 unlock];
      return;
    }

LABEL_30:
    swift_once();
    goto LABEL_16;
  }

  v17 = *MEMORY[0x277CEE148];
  v18 = v16;
  if ([v18 ams:v17 accountFlagValueForAccountFlag:?])
  {
    sub_24F92C648();
    swift_unknownObjectRelease();
  }

  else
  {
    v49 = 0u;
    v50 = 0u;
  }

  v22 = v4;
  v23 = v39;
  aBlock = v49;
  v45 = v50;
  if (!*(&v50 + 1))
  {
    sub_24E857CC8(&aBlock);
LABEL_26:
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();

    goto LABEL_29;
  }

  if ((swift_dynamicCast() & 1) == 0 || v48 != 1)
  {
    goto LABEL_26;
  }

  v24 = [v18 ams_DSID];
  if (!v24)
  {
LABEL_29:
    v35 = MEMORY[0x277D84F90];
    v36 = sub_24E60CE98(MEMORY[0x277D84F90]);
    v37 = sub_24E608448(v35);
    sub_24EA4CB28(v36, v37);

    [v14 lock];
    *(v2 + v15) = 0;
    [v14 unlock];

    return;
  }

  v25 = v24;
  v26 = [v24 stringValue];

  v27 = sub_24F92B0D8();
  v29 = v28;

  if (v40)
  {
    sub_24EA4CB28(0, 0);
  }

  sub_24EA4CDA0();
  v40 = *(v2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestQueue);
  v30 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v31 = swift_allocObject();
  *(v31 + 16) = v30;
  *(v31 + 24) = v27;
  v39 = v30;
  *(v31 + 32) = v29;
  *(v31 + 40) = 0;
  *(v31 + 48) = 0;
  *(v31 + 56) = 0;
  *(v31 + 64) = 96;
  *(v31 + 72) = ObjectType;
  v46 = sub_24EA4FCFC;
  v47 = v31;
  *&aBlock = MEMORY[0x277D85DD0];
  *(&aBlock + 1) = 1107296256;
  *&v45 = sub_24EAF8248;
  *(&v45 + 1) = &block_descriptor_26;
  v32 = _Block_copy(&aBlock);

  sub_24F927DA8();
  *&v49 = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  v33 = v43;
  v34 = v38;
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v8, v33, v32);
  _Block_release(v32);

  (*(v22 + 8))(v33, v34);
  (*(v42 + 8))(v8, v23);
}

unint64_t sub_24EA4C270()
{
  v1 = v0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C68, &qword_24F977E98);
  sub_24F92BF18();

  result = v7;
  if (!v7)
  {
    v3 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock;
    v4 = [*(v0 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock) lockWhenCondition_];
    MEMORY[0x28223BE20](v4);

    sub_24F92BF18();

    v5 = MEMORY[0x277D84F90];
    v6 = sub_24E60CE98(MEMORY[0x277D84F90]);
    sub_24E608448(v5);
    [*(v1 + v3) unlock];
    return v6;
  }

  return result;
}

double sub_24EA4C418@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return sub_24E701D04(v3, v2);
}

Swift::Void __swiftcall OnDevicePersonalizationDataManager.clearData()()
{
  ObjectType = swift_getObjectType();
  v1 = sub_24F927D88();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x277D84F90];
  v10 = sub_24E60CE98(MEMORY[0x277D84F90]);
  v11 = sub_24E608448(v9);
  sub_24EA4CB28(v10, v11);

  v12 = *(v0 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount);
  if (v12)
  {
    v28 = v6;
    v13 = v12;
    v14 = [v13 ams_DSID];
    if (v14)
    {
      v15 = v14;
      v16 = [v14 stringValue];
      v27 = v5;
      v17 = v16;

      v18 = sub_24F92B0D8();
      v26 = v13;
      v20 = v19;

      v25 = *(v0 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestQueue);
      v21 = swift_allocObject();
      swift_unknownObjectWeakInit();
      v22 = swift_allocObject();
      v22[2] = v21;
      v22[3] = v18;
      v23 = ObjectType;
      v22[4] = v20;
      v22[5] = v23;
      aBlock[4] = sub_24EA4FA64;
      aBlock[5] = v22;
      aBlock[0] = MEMORY[0x277D85DD0];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_24EAF8248;
      aBlock[3] = &block_descriptor_40;
      v24 = _Block_copy(aBlock);

      sub_24F927DA8();
      v30 = v9;
      sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
      sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
      sub_24F92C6A8();
      MEMORY[0x2530518B0](0, v8, v4, v24);
      _Block_release(v24);

      (*(v2 + 8))(v4, v1);
      (*(v28 + 8))(v8, v27);

      return;
    }

    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }

  else
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93DE60;
    sub_24F9283A8();
    sub_24F92A588();
  }
}

void *sub_24EA4CA28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    *&v10 = a2;
    *(&v10 + 1) = a3;
    v12 = 0;
    v13 = 0;
    v11 = 0;
    v14 = 0x80;
    sub_24EE100D8(&v10);
    v7 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v8 = sub_24F92BEF8();
    v9[3] = v7;
    v9[4] = MEMORY[0x277D225C0];
    v9[0] = v8;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v9);
  }

  return result;
}

id sub_24EA4CB28(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v14 = a1;
  v6 = sub_24F927D88();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock;
  [*(v3 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheAvailabilityConditionLock) lock];
  v11 = *(v3 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_dataCacheBox);
  v20 = a1;
  v21 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BDF0, &unk_24F96BDB0);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_24F93DE60;

  sub_24F927D78();
  v22 = v12;
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  v16 = sub_24EA4FBD8;
  v17 = &v19;
  v18 = v11;
  sub_24F92BF08();
  (*(v7 + 8))(v10, v6);

  return [*(v3 + v15) unlockWithCondition_];
}

void sub_24EA4CDA0()
{
  ObjectType = swift_getObjectType();
  v2 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v3 = swift_allocObject();
  *(v3 + 16) = v2;
  *(v3 + 24) = ObjectType;
  v10[4] = sub_24EA50000;
  v10[5] = v3;
  v10[0] = MEMORY[0x277D85DD0];
  v10[1] = 1107296256;
  v10[2] = sub_24ECAEFC8;
  v10[3] = &block_descriptor_45;
  v4 = _Block_copy(v10);
  v5 = objc_opt_self();

  v6 = [v5 timerWithTimeInterval:0 repeats:v4 block:1.0];
  _Block_release(v4);

  v7 = *(v0 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
  *(v0 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = v6;
  v8 = v6;
  [v7 invalidate];

  v9 = [objc_opt_self() mainRunLoop];
  [v9 addTimer:v8 forMode:*MEMORY[0x277CBE738]];
}

void *sub_24EA4CF50(uint64_t a1, _OWORD *a2, uint64_t a3)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = result;
    sub_24EE100D8(a2);
    v7 = swift_allocObject();
    *(v7 + 16) = v6;
    *(v7 + 24) = a3;
    v8 = swift_allocObject();
    *(v8 + 16) = v6;
    *(v8 + 24) = a3;
    v9 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v10 = v6;
    v11 = sub_24F92BEF8();
    v12[3] = v9;
    v12[4] = MEMORY[0x277D225C0];
    v12[0] = v11;
    sub_24F92A958();

    return __swift_destroy_boxed_opaque_existential_1(v12);
  }

  return result;
}

uint64_t sub_24EA4D098(uint64_t *a1, _BYTE *a2, uint64_t a3)
{
  v6 = sub_24F927D88();
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_24F927DC8();
  v10 = *(v9 - 8);
  *&v11 = MEMORY[0x28223BE20](v9).n128_u64[0];
  v13 = &v27 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *&a2[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer];
  *&a2[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer] = 0;
  [v15 invalidate];

  v16 = *&a2[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock];
  [v16 lock];
  a2[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
  [v16 unlock];
  if (*(v14 + 16) && (v17 = sub_24E76D644(0x65736E6F70736572, 0xE800000000000000), (v18 & 1) != 0) && (sub_24E643A9C(*(v14 + 56) + 32 * v17, &aBlock), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0), (swift_dynamicCast() & 1) != 0))
  {
    v19 = v33;
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v27 = sub_24F92BEF8();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = a2;
    v20[4] = a3;
    v31 = sub_24EA4FD5C;
    v32 = v20;
    *&aBlock = MEMORY[0x277D85DD0];
    *(&aBlock + 1) = 1107296256;
    *&v30 = sub_24EAF8248;
    *(&v30 + 1) = &block_descriptor_38;
    v21 = _Block_copy(&aBlock);
    v22 = a2;

    sub_24F927DA8();
    *&aBlock = MEMORY[0x277D84F90];
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    sub_24F92C6A8();
    v23 = v27;
    MEMORY[0x2530518B0](0, v13, v8, v21);
    _Block_release(v21);

    (*(v28 + 8))(v8, v6);
    return (*(v10 + 8))(v13, v9);
  }

  else
  {
    if (qword_27F210110 != -1)
    {
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    if (*(v14 + 16) && (v25 = sub_24E76D644(0x65736E6F70736572, 0xE800000000000000), (v26 & 1) != 0))
    {
      sub_24E643A9C(*(v14 + 56) + 32 * v25, &aBlock);
    }

    else
    {
      aBlock = 0u;
      v30 = 0u;
    }

    sub_24F928438();
    sub_24E857CC8(&aBlock);
    sub_24F92A5A8();
  }
}

uint64_t sub_24EA4D5B8(uint64_t a1)
{
  v3 = 0xEB00000000617461;
  isUniquelyReferenced_nonNull_native = 0x44746E656D676573;
  if (!*(a1 + 16) || (v5 = sub_24E76D644(0x44746E656D676573, 0xEB00000000617461), (v6 & 1) == 0) || (sub_24E643A9C(*(a1 + 56) + 32 * v5, &v50), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C70, &qword_24F977EA8), (swift_dynamicCast() & 1) == 0))
  {
    v1 = a1;
    if (qword_27F210110 != -1)
    {
LABEL_57:
      swift_once();
    }

    __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
    sub_24F928468();
    *(swift_allocObject() + 16) = xmmword_24F93A400;
    sub_24F9283A8();
    if (*(v1 + 16) && (v10 = sub_24E76D644(isUniquelyReferenced_nonNull_native, v3), (v11 & 1) != 0))
    {
      sub_24E643A9C(*(v1 + 56) + 32 * v10, &v50);
    }

    else
    {
      v50 = 0u;
      v51 = 0u;
    }

    sub_24F928438();
    sub_24E857CC8(&v50);
    sub_24F92A5A8();
  }

  if (*(a1 + 16) && (v7 = sub_24E76D644(0x6563697665446E6FLL, 0xEF736C616E676953), (v8 & 1) != 0) && (sub_24E643A9C(*(a1 + 56) + 32 * v7, &v50), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225C78, &unk_24F977EB0), (swift_dynamicCast() & 1) != 0))
  {
    v9 = v49[0];
  }

  else
  {
    v9 = sub_24E60CEAC(MEMORY[0x277D84F90]);
  }

  if (*(v9 + 16))
  {
    v13 = MEMORY[0x28223BE20](v9);
    isUniquelyReferenced_nonNull_native = sub_24EA4FD70(v14, sub_24EA4FD68, v13);

    if (!(isUniquelyReferenced_nonNull_native >> 62))
    {
      goto LABEL_18;
    }

LABEL_39:
    v15 = sub_24F92C738();
    v43 = a1;
    if (v15)
    {
      goto LABEL_19;
    }

LABEL_40:
    v3 = MEMORY[0x277D84F98];
LABEL_41:

    if (*(v43 + 16))
    {
      v36 = sub_24E76D644(0x617461646174656DLL, 0xE800000000000000);
      if (v37)
      {
        sub_24E643A9C(*(v43 + 56) + 32 * v36, v49);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F251730, &unk_24F964AF0);
        if (swift_dynamicCast())
        {
          if (*(v48 + 16) && (v38 = sub_24E76D644(0x7363697274656DLL, 0xE700000000000000), (v39 & 1) != 0))
          {
            sub_24E643A9C(*(v48 + 56) + 32 * v38, &v50);

            if (swift_dynamicCast())
            {
              v40 = v49[0];
LABEL_50:
              v41 = qword_27F210110;

              if (v41 != -1)
              {
                swift_once();
              }

              __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
              __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
              sub_24F928468();
              *(swift_allocObject() + 16) = xmmword_24F93A400;
              sub_24F9283A8();
              v42 = v3[2];

              *(&v51 + 1) = MEMORY[0x277D83B88];
              *&v50 = v42;
              sub_24F928438();
              sub_24E857CC8(&v50);
              sub_24F92A588();

              sub_24EA4CB28(v3, v40);
            }
          }

          else
          {
          }
        }
      }
    }

    v40 = sub_24E608448(MEMORY[0x277D84F90]);
    goto LABEL_50;
  }

  isUniquelyReferenced_nonNull_native = sub_24EA4AEEC(v49[0], v35);

  if (isUniquelyReferenced_nonNull_native >> 62)
  {
    goto LABEL_39;
  }

LABEL_18:
  v15 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
  v43 = a1;
  if (!v15)
  {
    goto LABEL_40;
  }

LABEL_19:
  v16 = 0;
  v45 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
  v46 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
  v3 = MEMORY[0x277D84F98];
  v44 = isUniquelyReferenced_nonNull_native;
  while (1)
  {
    if (v46)
    {
      v19 = MEMORY[0x253052270](v16, isUniquelyReferenced_nonNull_native);
    }

    else
    {
      if (v16 >= *(v45 + 16))
      {
        goto LABEL_54;
      }

      v19 = *(isUniquelyReferenced_nonNull_native + 8 * v16 + 32);
    }

    v20 = v19;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
LABEL_54:
      __break(1u);
LABEL_55:
      __break(1u);
LABEL_56:
      __break(1u);
      goto LABEL_57;
    }

    v47 = v16 + 1;
    v1 = *&v19[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_appId];
    v21 = *&v19[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_appId + 8];

    v22 = v20;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *&v50 = v3;
    v24 = sub_24E76D644(v1, v21);
    v25 = v3[2];
    v26 = (v23 & 1) == 0;
    v27 = v25 + v26;
    if (__OFADD__(v25, v26))
    {
      goto LABEL_55;
    }

    v28 = v23;
    if (v3[3] < v27)
    {
      break;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      if (v23)
      {
        goto LABEL_20;
      }
    }

    else
    {
      sub_24E8B0EBC();
      if (v28)
      {
LABEL_20:

        v3 = v50;
        v17 = *(v50 + 56);
        v18 = *(v17 + 8 * v24);
        *(v17 + 8 * v24) = v22;

        goto LABEL_21;
      }
    }

LABEL_33:
    v3 = v50;
    *(v50 + 8 * (v24 >> 6) + 64) |= 1 << v24;
    v31 = (v3[6] + 16 * v24);
    *v31 = v1;
    v31[1] = v21;
    *(v3[7] + 8 * v24) = v22;

    v32 = v3[2];
    v33 = __OFADD__(v32, 1);
    v34 = v32 + 1;
    if (v33)
    {
      goto LABEL_56;
    }

    v3[2] = v34;
LABEL_21:
    ++v16;
    isUniquelyReferenced_nonNull_native = v44;
    if (v47 == v15)
    {
      goto LABEL_41;
    }
  }

  sub_24E89E8F4(v27, isUniquelyReferenced_nonNull_native);
  v29 = sub_24E76D644(v1, v21);
  if ((v28 & 1) == (v30 & 1))
  {
    v24 = v29;
    if (v28)
    {
      goto LABEL_20;
    }

    goto LABEL_33;
  }

  result = sub_24F92CF88();
  __break(1u);
  return result;
}

id sub_24EA4DD6C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (*(a3 + 16) && (v8 = sub_24E76D644(a1, a2), (v9 & 1) != 0))
  {
    v10 = *(*(a3 + 56) + 8 * v8);
  }

  else
  {
    v10 = &unk_2861C0660;
  }

  v11 = type metadata accessor for OnDevicePersonalizationData();
  v12 = objc_allocWithZone(v11);
  v13 = &v12[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_appId];
  *v13 = a1;
  *(v13 + 1) = a2;
  *&v12[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_userSegments] = v10;
  *&v12[OBJC_IVAR____TtC12GameStoreKit27OnDevicePersonalizationData_onDeviceSignals] = a4;
  v15.receiver = v12;
  v15.super_class = v11;

  return objc_msgSendSuper2(&v15, sel_init);
}

uint64_t sub_24EA4DE48(uint64_t a1, uint64_t a2)
{
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v11[3] = v10;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v11);
  (*(*(v10 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v11);
  sub_24F92A5A8();

  v4 = *(a2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
  *(a2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = 0;
  [v4 invalidate];

  v5 = *(a2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock);
  [v5 lock];
  *(a2 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending) = 0;
  [v5 unlock];
  v6 = MEMORY[0x277D84F90];
  v7 = sub_24E60CE98(MEMORY[0x277D84F90]);
  v8 = sub_24E608448(v6);
  sub_24EA4CB28(v7, v8);
}

uint64_t sub_24EA4E0A8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v3 = *(Strong + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer);
    *(Strong + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_timeoutTimer) = 0;
    v4 = Strong;
    [v3 invalidate];
  }

  swift_beginAccess();
  v5 = swift_unknownObjectWeakLoadStrong();
  if (v5)
  {
    v6 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock;
    v7 = v5;
    [*(v5 + OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_requestPendingLock) lock];
    v7[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_isRequestPending] = 0;
    [*&v7[v6] unlock];
  }

  swift_beginAccess();
  v8 = swift_unknownObjectWeakLoadStrong();
  if (v8)
  {
    v9 = v8;
    v10 = MEMORY[0x277D84F90];
    v11 = sub_24E60CE98(MEMORY[0x277D84F90]);
    v12 = sub_24E608448(v10);
    sub_24EA4CB28(v11, v12);
  }

  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  v14[3] = MEMORY[0x277D839F8];
  v14[0] = 0x3FF0000000000000;
  sub_24F928438();
  sub_24E857CC8(v14);
  sub_24F92A5A8();
}

void sub_24EA4E32C()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_24F927D88();
  v29 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v27 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount;
  v11 = *&v0[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_activeStoreAccount];
  v12 = *&v0[OBJC_IVAR____TtC12GameStoreKit34OnDevicePersonalizationDataManager_accountStore];
  v30 = v11;
  v13 = [v12 ams_activeiTunesAccount];
  v14 = *&v1[v10];
  *&v1[v10] = v13;

  v15 = *&v1[v10];
  if ((v15 == 0) != (v11 == 0))
  {
    goto LABEL_12;
  }

  v16 = [v15 ams_DSID];
  v17 = [v30 ams_DSID];
  v18 = v17;
  if (!v16)
  {
    if (!v17)
    {
      goto LABEL_7;
    }

LABEL_11:

LABEL_12:
    sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
    v28 = sub_24F92BEF8();
    v21 = swift_allocObject();
    *(v21 + 16) = v1;
    *(v21 + 24) = ObjectType;
    aBlock[4] = sub_24EA4FBD0;
    aBlock[5] = v21;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_24EAF8248;
    aBlock[3] = &block_descriptor_19;
    v22 = _Block_copy(aBlock);
    v23 = v1;

    v24 = v9;
    sub_24F927DA8();
    aBlock[0] = MEMORY[0x277D84F90];
    sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
    v25 = v29;
    v27 = v6;
    sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
    sub_24F92C6A8();
    v26 = v28;
    MEMORY[0x2530518B0](0, v24, v5, v22);
    _Block_release(v22);

    (*(v25 + 8))(v5, v3);
    (*(v7 + 8))(v24, v27);
    return;
  }

  if (!v17)
  {
    v18 = v16;
    goto LABEL_11;
  }

  sub_24E69A5C4(0, &qword_27F22BD50, 0x277CCABB0);
  v19 = sub_24F92C408();

  if ((v19 & 1) == 0)
  {
    goto LABEL_12;
  }

LABEL_7:
  v20 = v30;
}

void sub_24EA4E740()
{
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();

  sub_24EA4B77C(1);
}

uint64_t sub_24EA4E8D4()
{
  v1 = sub_24F927D88();
  v13 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_24F927DC8();
  v4 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  v7 = sub_24F92BEF8();
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_24EA4FB70;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_24EAF8248;
  aBlock[3] = &block_descriptor_13;
  v9 = _Block_copy(aBlock);
  v10 = v0;

  sub_24F927DA8();
  aBlock[0] = MEMORY[0x277D84F90];
  sub_24E97238C(&qword_27F222930, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F222310, &unk_24F951080);
  sub_24E9723D4(&qword_27F222940, &qword_27F222310, &unk_24F951080);
  sub_24F92C6A8();
  MEMORY[0x2530518B0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v13 + 8))(v3, v1);
  return (*(v4 + 8))(v6, v12);
}

id OnDevicePersonalizationDataManager.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id OnDevicePersonalizationDataManager.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_24EA4ED84(int a1)
{
  v11 = a1;
  v10 = sub_24F92BEE8();
  v2 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v9 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v12 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v10);
  *(v1 + 16) = sub_24F92BF38();
  *(v1 + 24) = v11;
  return v1;
}

uint64_t sub_24EA4F074(uint64_t a1)
{
  v13 = a1;
  v12 = sub_24F92BEE8();
  v2 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_24F927DC8();
  MEMORY[0x28223BE20](v5 - 8);
  v6 = sub_24F92BE88();
  MEMORY[0x28223BE20](v6);
  v11 = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v14 = v7;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v12);
  v8 = sub_24F92BF38();
  v9 = v13;
  *(v1 + 16) = v8;
  *(v1 + 24) = v9;
  return v1;
}

void *sub_24EA4F35C(uint64_t a1, uint64_t a2)
{
  v15 = a1;
  v16 = a2;
  v14 = sub_24F92BEE8();
  v3 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v5 = v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_24F927DC8();
  MEMORY[0x28223BE20](v6 - 8);
  v7 = sub_24F92BE88();
  MEMORY[0x28223BE20](v7);
  v13[1] = sub_24E69A5C4(0, &qword_27F222300, 0x277D85C78);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD20, &qword_24F977EA0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_24F93DE60;
  sub_24F92BE78();
  v17 = v8;
  sub_24E97238C(&qword_27F2394E0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F22BD30, &qword_24F95FB10);
  sub_24E9723D4(&qword_27F2394F0, &unk_27F22BD30, &qword_24F95FB10);
  sub_24F92C6A8();
  sub_24F927DA8();
  (*(v3 + 104))(v5, *MEMORY[0x277D85260], v14);
  v9 = sub_24F92BF38();
  v11 = v15;
  v10 = v16;
  v2[2] = v9;
  v2[3] = v11;
  v2[4] = v10;
  return v2;
}

double sub_24EA4F648@<D0>(void (*a1)(__int128 *__return_ptr, void *, double)@<X0>, uint64_t a2@<X2>, _OWORD *a3@<X8>)
{
  swift_beginAccess();
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v10[0] = v6;
  v10[1] = v7;
  v8 = sub_24E701D04(v6, v7);
  a1(&v11, v10, v8);
  sub_24EA4FAF8(v6);
  result = *&v11;
  *a3 = v11;
  return result;
}

uint64_t sub_24EA4F6EC()
{
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93DE60;
  sub_24F9283A8();
  sub_24F92A588();
}

uint64_t sub_24EA4F834(uint64_t a1)
{
  if (qword_27F210110 != -1)
  {
    swift_once();
  }

  __swift_project_boxed_opaque_existential_1(qword_27F39B678, qword_27F39B690);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F221870, &unk_24F93B6E0);
  sub_24F928468();
  *(swift_allocObject() + 16) = xmmword_24F93A400;
  sub_24F9283A8();
  swift_getErrorValue();
  v4[3] = v3;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v4);
  (*(*(v3 - 8) + 16))(boxed_opaque_existential_1);
  sub_24F928458();
  sub_24E857CC8(v4);
  sub_24F92A5A8();
}

uint64_t sub_24EA4F9EC()
{
  MEMORY[0x2530543E0](v0 + 16);

  return swift_deallocObject();
}

uint64_t sub_24EA4FA24()
{

  return swift_deallocObject();
}

uint64_t block_copy_helper_40(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_24EA4FAF8(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_24EA4FB38()
{

  return swift_deallocObject();
}

uint64_t sub_24EA4FB98()
{

  return swift_deallocObject();
}

double sub_24EA4FBD8(uint64_t *a1)
{
  v4 = *(v1 + 16);
  v3 = *(v1 + 24);
  sub_24EA4FAF8(*a1);
  *a1 = v4;
  a1[1] = v3;

  return sub_24E701D04(v4, v3);
}

uint64_t sub_24EA4FC4C()
{

  sub_24EA4FC98(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));

  return swift_deallocObject();
}

uint64_t sub_24EA4FC98(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, unsigned __int8 a6)
{
  result = a2;
  v8 = a6 >> 5;
  v9 = v8 >= 3;
  v10 = v8 - 3;
  if (!v9)
  {
  }

  if (v10 < 2)
  {
  }

  return result;
}

uint64_t sub_24EA4FD1C()
{

  return swift_deallocObject();
}

uint64_t sub_24EA4FD70(uint64_t a1, uint64_t (*a2)(uint64_t, uint64_t, double), __n128 a3)
{
  v4 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (v4)
  {
    v27 = a1;
    v28 = MEMORY[0x277D84F90];
    sub_24F92C978();
    v6 = v27;
    v7 = v27 + 64;
    result = sub_24F92C6B8();
    v8 = result;
    v9 = 0;
    v10 = *(v27 + 36);
    v25 = v4;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v12 = v8 >> 6;
      if ((*(v7 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_22;
      }

      if (v10 != *(v6 + 36))
      {
        goto LABEL_23;
      }

      v13 = v7;
      v14 = (*(v6 + 48) + 16 * v8);
      v15 = *v14;
      v16 = v14[1];
      v17 = *(*(v6 + 56) + 8 * v8);

      a2(v15, v16, v17);

      sub_24F92C948();
      sub_24F92C988();
      sub_24F92C998();
      result = sub_24F92C958();
      v6 = v27;
      v11 = 1 << *(v27 + 32);
      if (v8 >= v11)
      {
        goto LABEL_24;
      }

      v18 = *(v13 + 8 * v12);
      if ((v18 & (1 << v8)) == 0)
      {
        goto LABEL_25;
      }

      if (v10 != *(v27 + 36))
      {
        goto LABEL_26;
      }

      v7 = v13;
      v19 = v18 & (-2 << (v8 & 0x3F));
      if (v19)
      {
        v11 = __clz(__rbit64(v19)) | v8 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v20 = v12 << 6;
        v21 = v12 + 1;
        v22 = (v27 + 72 + 8 * v12);
        while (v21 < (v11 + 63) >> 6)
        {
          v24 = *v22++;
          v23 = v24;
          v20 += 64;
          ++v21;
          if (v24)
          {
            result = sub_24E6586A8(v8, v10, 0);
            v11 = __clz(__rbit64(v23)) + v20;
            goto LABEL_18;
          }
        }

        result = sub_24E6586A8(v8, v10, 0);
LABEL_18:
        v6 = v27;
      }

      ++v9;
      v8 = v11;
      if (v9 == v25)
      {
        return v28;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
  }

  return result;
}

uint64_t sub_24EA4FFC8()
{

  return swift_deallocObject();
}

uint64_t sub_24EA5006C(unint64_t *a1, uint64_t a2, uint64_t a3)
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
    v8 = sub_24F928818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

void *sub_24EA5012C(void *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *result = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA501F0(uint64_t a1)
{
  sub_24EA50744(319, &qword_27F225C90, type metadata accessor for GameSearchResultsGroup);
  if (v1 <= 0x3F)
  {
    sub_24E6BCB04();
    if (v2 <= 0x3F)
    {
      sub_24F928818();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24EA502DC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA5039C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA50440(uint64_t a1)
{
  sub_24EA509EC(319, &qword_27F225CA8, &qword_27F225CB0, &qword_24F9E79F0, &qword_27F225CB8);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_24EA50508(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 16);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928818();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA505C8(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 16) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928818();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA5068C(uint64_t a1)
{
  sub_24E6BCB04();
  if (v1 <= 0x3F)
  {
    sub_24EA50744(319, &qword_27F225CD0, type metadata accessor for GameSearchResultsTab);
    if (v2 <= 0x3F)
    {
      sub_24F928818();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_24EA50744(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_24F92B6E8();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_24EA507CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 24);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_24F928AD8();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_24EA5088C(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 24) = (a2 - 1);
  }

  else
  {
    v7 = sub_24F928AD8();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 28);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_24EA50930(uint64_t a1)
{
  sub_24EA509EC(319, &qword_27F225CE8, &qword_27F225CF0, &qword_24F977F38, &qword_27F225CF8);
  if (v1 <= 0x3F)
  {
    sub_24F928AD8();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_24EA509EC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4, unint64_t *a5)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    sub_24E602068(a5, a3, a4, &protocol conformance descriptor for _IntentKindTable_ReturningAnyJSIntent<A, B>);
    v9 = sub_24F9280E8();
    if (!v10)
    {
      atomic_store(v9, a2);
    }
  }
}

uint64_t sub_24EA50A98@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v24 = a2;
  v4 = sub_24F928818();
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D48, &qword_24F978060);
  v25 = *(v7 - 8);
  v26 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for GameSearchResultsPage(0);
  MEMORY[0x28223BE20](v10);
  v12 = (&v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v13 = a1[3];
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_24EA52504();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v27);
  }

  v22 = v12;
  v31 = 0;
  v14 = v25;
  v15 = v26;
  v16 = sub_24F92CBC8();
  v17 = v22;
  *v22 = v16;
  v17[1] = v18;
  v21 = v18;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D58, &qword_24F978068);
  v30 = 1;
  sub_24EA52558();
  sub_24F92CC68();
  v17[2] = v28;
  v29 = 2;
  sub_24EA523A0(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
  sub_24F92CC68();
  (*(v14 + 8))(v9, v15);
  v19 = v22;
  (*(v23 + 32))(v22 + *(v10 + 24), v6, v4);
  sub_24EA5243C(v19, v24, type metadata accessor for GameSearchResultsPage);
  __swift_destroy_boxed_opaque_existential_1(v27);
  return sub_24EA524A4(v19, type metadata accessor for GameSearchResultsPage);
}

uint64_t sub_24EA50E50@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = sub_24F928AD8();
  v24 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D70, &unk_24F978070);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v22 - v7;
  v9 = type metadata accessor for GameSearchResultsTab(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA5260C();
  v28 = v8;
  v12 = v29;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v23 = v5;
  v29 = v11;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D80, &unk_24FA2C650);
  v33 = 0;
  sub_24E602068(&qword_27F225D88, &qword_27F225D80, &unk_24FA2C650, MEMORY[0x277D21AB0]);
  v13 = v27;
  sub_24F92CC68();
  v14 = v31;
  v15 = v29;
  *v29 = v30;
  *(v15 + 16) = v14;
  *(v15 + 32) = v32;
  LOBYTE(v30) = 1;
  v16 = sub_24F92CC28();
  v17 = v26;
  *(v15 + 40) = v16;
  *(v15 + 48) = v18;
  v33 = 2;
  sub_24EA52660();
  v22 = 0;
  sub_24F92CC68();
  v19 = a1;
  *(v15 + 56) = v30;
  LOBYTE(v30) = 3;
  sub_24EA523A0(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
  v20 = v23;
  sub_24F92CC68();
  (*(v17 + 8))(v28, v13);
  (*(v24 + 32))(v15 + *(v9 + 28), v20, v3);
  sub_24EA5243C(v15, v25, type metadata accessor for GameSearchResultsTab);
  __swift_destroy_boxed_opaque_existential_1(v19);
  return sub_24EA524A4(v15, type metadata accessor for GameSearchResultsTab);
}

uint64_t sub_24EA512E0@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = sub_24F928818();
  v27 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D00, &qword_24F978040);
  v26 = *(v28 - 8);
  MEMORY[0x28223BE20](v28);
  v8 = &v23 - v7;
  v9 = type metadata accessor for GameSearchResultsTabContent(0);
  MEMORY[0x28223BE20](v9);
  v11 = &v23 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = a1[3];
  v29 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24EA52298();
  sub_24F92D108();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v29);
  }

  v24 = v11;
  v13 = v6;
  v14 = v26;
  v15 = v27;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D10, &qword_24F978048);
  v32 = 0;
  sub_24EA522EC();
  sub_24F92CC68();
  v16 = v24;
  v23 = v33;
  *v24 = v33;
  v31 = 1;
  v16[1] = sub_24F92CBC8();
  v16[2] = v17;
  v30 = 2;
  sub_24EA523A0(&qword_27F21F8C8, MEMORY[0x277D21BF8], MEMORY[0x277D21C08]);
  v18 = v13;
  v19 = v4;
  v20 = v28;
  sub_24F92CC68();
  (*(v14 + 8))(v8, v20);
  v21 = v24;
  (*(v15 + 32))(v24 + *(v9 + 24), v18, v19);
  sub_24EA5243C(v21, v25, type metadata accessor for GameSearchResultsTabContent);
  __swift_destroy_boxed_opaque_existential_1(v29);
  return sub_24EA524A4(v21, type metadata accessor for GameSearchResultsTabContent);
}

uint64_t sub_24EA516A8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v31 = a2;
  v3 = sub_24F928AD8();
  v30 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D28, &unk_24F978050);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  v9 = type metadata accessor for GameSearchResultsGroup(0);
  MEMORY[0x28223BE20](v9);
  v11 = (&v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_24EA523E8();
  v34 = v8;
  v12 = v35;
  sub_24F92D108();
  if (v12)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v13 = a1;
  v29 = v5;
  v14 = v32;
  v15 = v33;
  v35 = v3;
  LOBYTE(v36) = 0;
  *v11 = sub_24F92CC28();
  v11[1] = v17;
  v28 = v17;
  LOBYTE(v36) = 1;
  v11[2] = sub_24F92CC28();
  v11[3] = v18;
  v26 = v11;
  v27 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D38, &qword_24FA27B20);
  v39 = 2;
  v19 = v27;
  sub_24E602068(&qword_27F225D40, &qword_27F225D38, &qword_24FA27B20, MEMORY[0x277D21AB0]);
  sub_24F92CC68();
  v20 = v13;
  if (v19)
  {
    (*(v14 + 8))(v34, v15);
    __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    v21 = v37;
    v22 = v26;
    *(v26 + 2) = v36;
    *(v22 + 48) = v21;
    *(v22 + 64) = v38;
    LOBYTE(v36) = 3;
    sub_24EA523A0(&qword_27F254CB0, MEMORY[0x277D21C88], MEMORY[0x277D21C98]);
    v23 = v29;
    v24 = v35;
    sub_24F92CC68();
    (*(v14 + 8))(v34, v15);
    (*(v30 + 32))(v22 + *(v9 + 28), v23, v24);
    sub_24EA5243C(v22, v31, type metadata accessor for GameSearchResultsGroup);
    __swift_destroy_boxed_opaque_existential_1(v20);
    return sub_24EA524A4(v22, type metadata accessor for GameSearchResultsGroup);
  }
}

uint64_t sub_24EA51B34()
{
  v1 = 1935827316;
  if (*v0 != 1)
  {
    v1 = 0x7274654D65676170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000011;
  }
}

uint64_t sub_24EA51B94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA5340C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA51BBC(uint64_t a1)
{
  v2 = sub_24EA52504();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA51BF8(uint64_t a1)
{
  v2 = sub_24EA52504();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EA51C4C(uint64_t a1)
{
  v2 = sub_24EA52C68();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA51C88(uint64_t a1)
{
  v2 = sub_24EA52C68();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EA51CC4()
{
  if (*v0)
  {
    return 1954047348;
  }

  else
  {
    return 0x6F57656461637261;
  }
}

uint64_t sub_24EA51D04@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6F57656461637261 && a2 == 0xEE006B72616D6472;
  if (v6 || (sub_24F92CE08() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_24F92CE08();

    if (v9)
    {
      v8 = 1;
    }

    else
    {
      v8 = 2;
    }
  }

  *a3 = v8;
  return result;
}

uint64_t sub_24EA51DE8(uint64_t a1)
{
  v2 = sub_24EA52BC0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA51E24(uint64_t a1)
{
  v2 = sub_24EA52BC0();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EA51E60(uint64_t a1)
{
  v2 = sub_24EA52C14();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA51E9C(uint64_t a1)
{
  v2 = sub_24EA52C14();

  return MEMORY[0x2821FE720](a1, v2);
}

void *sub_24EA51ED8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_24EA526B4(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
  }

  return result;
}

uint64_t sub_24EA51F04()
{
  v1 = 0x746E65746E69;
  if (*v0)
  {
    v1 = 0x4449626174;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_24EA51F80@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA53534(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA51FA8(uint64_t a1)
{
  v2 = sub_24EA5260C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA51FE4(uint64_t a1)
{
  v2 = sub_24EA5260C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_24EA52038()
{
  v1 = 0x656C65536F747561;
  if (*v0 != 1)
  {
    v1 = 0x7274654D65676170;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7370756F7267;
  }
}

uint64_t sub_24EA520A4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA536A0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA520CC(uint64_t a1)
{
  v2 = sub_24EA52298();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA52108(uint64_t a1)
{
  v2 = sub_24EA52298();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA5215C()
{
  v1 = 0x444970756F7267;
  v2 = 0x746E49666C656873;
  if (*v0 != 2)
  {
    v2 = 0xD000000000000012;
  }

  if (*v0)
  {
    v1 = 0x656C746974;
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

uint64_t sub_24EA521E0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_24EA537C0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_24EA52208(uint64_t a1)
{
  v2 = sub_24EA523E8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_24EA52244(uint64_t a1)
{
  v2 = sub_24EA523E8();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_24EA52298()
{
  result = qword_27F225D08;
  if (!qword_27F225D08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D08);
  }

  return result;
}

unint64_t sub_24EA522EC()
{
  result = qword_27F225D18;
  if (!qword_27F225D18)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225D10, &qword_24F978048);
    sub_24EA523A0(&qword_27F225D20, type metadata accessor for GameSearchResultsGroup, &unk_24F977FEC);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D18);
  }

  return result;
}

uint64_t sub_24EA523A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_24EA523E8()
{
  result = qword_27F225D30;
  if (!qword_27F225D30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D30);
  }

  return result;
}

uint64_t sub_24EA5243C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24EA524A4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_24EA52504()
{
  result = qword_27F225D50;
  if (!qword_27F225D50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D50);
  }

  return result;
}

unint64_t sub_24EA52558()
{
  result = qword_27F225D60;
  if (!qword_27F225D60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F225D58, &qword_24F978068);
    sub_24EA523A0(&qword_27F225D68, type metadata accessor for GameSearchResultsTab, &unk_24F977F9C);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D60);
  }

  return result;
}

unint64_t sub_24EA5260C()
{
  result = qword_27F225D78;
  if (!qword_27F225D78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D78);
  }

  return result;
}

unint64_t sub_24EA52660()
{
  result = qword_27F225D90;
  if (!qword_27F225D90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225D90);
  }

  return result;
}

void *sub_24EA526B4(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225D98, &qword_24F978080);
  v28 = *(v2 - 8);
  v29 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225DA0, &qword_24F978088);
  v27 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225DA8, &unk_24F978090);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - v10;
  v12 = a1[3];
  v31 = a1;
  v13 = __swift_project_boxed_opaque_existential_1(a1, v12);
  sub_24EA52BC0();
  v14 = v30;
  sub_24F92D108();
  if (!v14)
  {
    v26 = v5;
    v15 = v29;
    v30 = v9;
    v16 = sub_24F92CC78();
    v17 = (2 * *(v16 + 16)) | 1;
    v32 = v16;
    v33 = v16 + 32;
    v34 = 0;
    v35 = v17;
    v18 = sub_24E643430();
    v19 = v8;
    v13 = v11;
    if (v18 == 2 || v34 != v35 >> 1)
    {
      v21 = sub_24F92C918();
      swift_allocError();
      v23 = v22;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F212E20, &unk_24F939B40);
      *v23 = &type metadata for GameSearchResultsTab.TitleConfiguration;
      sub_24F92CBB8();
      sub_24F92C908();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x277D84160], v21);
      swift_willThrow();
      (*(v30 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }

    else if (v18)
    {
      v36 = 1;
      sub_24EA52C14();
      sub_24F92CBA8();
      v20 = v30;
      v27 = v11;
      v13 = sub_24F92CC28();
      (*(v28 + 8))(v4, v15);
      (*(v20 + 8))(v27, v19);
      swift_unknownObjectRelease();
    }

    else
    {
      v36 = 0;
      sub_24EA52C68();
      sub_24F92CBA8();
      v25 = v30;
      (*(v27 + 1))(v7, v26);
      (*(v25 + 8))(v11, v8);
      swift_unknownObjectRelease();
      v13 = 0;
    }
  }

  __swift_destroy_boxed_opaque_existential_1(v31);
  return v13;
}

unint64_t sub_24EA52BC0()
{
  result = qword_27F225DB0;
  if (!qword_27F225DB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DB0);
  }

  return result;
}

unint64_t sub_24EA52C14()
{
  result = qword_27F225DB8;
  if (!qword_27F225DB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DB8);
  }

  return result;
}

unint64_t sub_24EA52C68()
{
  result = qword_27F225DC0;
  if (!qword_27F225DC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DC0);
  }

  return result;
}

unint64_t sub_24EA52D30()
{
  result = qword_27F225DC8;
  if (!qword_27F225DC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DC8);
  }

  return result;
}

unint64_t sub_24EA52D88()
{
  result = qword_27F225DD0;
  if (!qword_27F225DD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DD0);
  }

  return result;
}

unint64_t sub_24EA52DE0()
{
  result = qword_27F225DD8;
  if (!qword_27F225DD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DD8);
  }

  return result;
}

unint64_t sub_24EA52E38()
{
  result = qword_27F225DE0;
  if (!qword_27F225DE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DE0);
  }

  return result;
}

unint64_t sub_24EA52E90()
{
  result = qword_27F225DE8;
  if (!qword_27F225DE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DE8);
  }

  return result;
}

unint64_t sub_24EA52EE8()
{
  result = qword_27F225DF0;
  if (!qword_27F225DF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DF0);
  }

  return result;
}

unint64_t sub_24EA52F40()
{
  result = qword_27F225DF8;
  if (!qword_27F225DF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225DF8);
  }

  return result;
}

unint64_t sub_24EA52F98()
{
  result = qword_27F225E00;
  if (!qword_27F225E00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E00);
  }

  return result;
}

unint64_t sub_24EA52FF0()
{
  result = qword_27F225E08;
  if (!qword_27F225E08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E08);
  }

  return result;
}

unint64_t sub_24EA53048()
{
  result = qword_27F225E10;
  if (!qword_27F225E10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E10);
  }

  return result;
}

unint64_t sub_24EA530A0()
{
  result = qword_27F225E18;
  if (!qword_27F225E18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E18);
  }

  return result;
}

unint64_t sub_24EA530F8()
{
  result = qword_27F225E20;
  if (!qword_27F225E20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E20);
  }

  return result;
}

unint64_t sub_24EA53150()
{
  result = qword_27F225E28;
  if (!qword_27F225E28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E28);
  }

  return result;
}

unint64_t sub_24EA531A8()
{
  result = qword_27F225E30;
  if (!qword_27F225E30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E30);
  }

  return result;
}

unint64_t sub_24EA53200()
{
  result = qword_27F225E38;
  if (!qword_27F225E38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E38);
  }

  return result;
}

unint64_t sub_24EA53258()
{
  result = qword_27F225E40;
  if (!qword_27F225E40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E40);
  }

  return result;
}

unint64_t sub_24EA532B0()
{
  result = qword_27F225E48;
  if (!qword_27F225E48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E48);
  }

  return result;
}

unint64_t sub_24EA53308()
{
  result = qword_27F225E50;
  if (!qword_27F225E50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E50);
  }

  return result;
}

unint64_t sub_24EA53360()
{
  result = qword_27F225E58;
  if (!qword_27F225E58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225E58);
  }

  return result;
}

unint64_t sub_24EA533B8()
{
  result = qword_27F225E60[0];
  if (!qword_27F225E60[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27F225E60);
  }

  return result;
}

uint64_t sub_24EA5340C(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000011 && 0x800000024FA505A0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1935827316 && a2 == 0xE400000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 2;
  }

  else
  {
    v5 = sub_24F92CE08();

    if (v5)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EA53534(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x746E65746E69 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x4449626174 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA505C0 == a2 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA50580 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

uint64_t sub_24EA536A0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7370756F7267 && a2 == 0xE600000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C65536F747561 && a2 == 0xEE00444964657463 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x7274654D65676170 && a2 == 0xEB00000000736369)
  {

    return 2;
  }

  else
  {
    v6 = sub_24F92CE08();

    if (v6)
    {
      return 2;
    }

    else
    {
      return 3;
    }
  }
}

uint64_t sub_24EA537C0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x444970756F7267 && a2 == 0xE700000000000000;
  if (v4 || (sub_24F92CE08() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000 || (sub_24F92CE08() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746E49666C656873 && a2 == 0xEB00000000746E65 || (sub_24F92CE08() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0xD000000000000012 && 0x800000024FA50580 == a2)
  {

    return 3;
  }

  else
  {
    v6 = sub_24F92CE08();

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

unint64_t sub_24EA53970()
{
  result = qword_27F216278;
  if (!qword_27F216278)
  {
    type metadata accessor for CloseAppAction(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F216278);
  }

  return result;
}

uint64_t sub_24EA539C8()
{
  v1 = sub_24F92CA08();
  v0[2] = v1;
  v0[3] = *(v1 - 8);
  v0[4] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_24EA53A84, 0, 0);
}

uint64_t sub_24EA53A84()
{
  v1 = sub_24F92D1A8();
  v3 = v2;
  sub_24F92CFB8();
  v4 = swift_task_alloc();
  *(v0 + 40) = v4;
  *v4 = v0;
  v4[1] = sub_24EA53B64;

  return sub_24E70C87C(v1, v3, 0, 0, 1);
}

uint64_t sub_24EA53B64()
{
  v2 = *(*v1 + 32);
  v3 = *(*v1 + 24);
  v4 = *(*v1 + 16);
  *(*v1 + 48) = v0;

  (*(v3 + 8))(v2, v4);
  if (v0)
  {
    v5 = sub_24EA53D04;
  }

  else
  {
    v5 = sub_24EA53CD4;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_24EA53D04()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_24EA53D70()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27F21B570, &qword_24F93B020);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v7 - v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F23F510, &unk_24F93C690);
  v3 = sub_24F92A9E8();
  v4 = sub_24F92B858();
  (*(*(v4 - 8) + 56))(v2, 1, 1, v4);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = &unk_24F978838;
  v5[5] = 0;
  v5[6] = v3;

  sub_24E6959D8(0, 0, v2, &unk_24F94D7B0, v5);

  return v3;
}

uint64_t sub_24EA53EB0()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_24EA53F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_24EA53FDC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20)) = (a2 - 1);
  }

  return result;
}

uint64_t type metadata accessor for SocialIntegrationContactsListPageView(uint64_t a1)
{
  result = qword_27F225EE8;
  if (!qword_27F225EE8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_24EA540E0(uint64_t a1)
{
  type metadata accessor for SocialIntegrationContactsListPageIntent(319);
  if (v1 <= 0x3F)
  {
    sub_24F928FD8();
    if (v2 <= 0x3F)
    {
      sub_24E7EA96C(319, &qword_27F225EF8, &type metadata for ContactsListRecentsDataSource, MEMORY[0x277D83D88]);
      if (v3 <= 0x3F)
      {
        sub_24E7EA96C(319, &qword_27F225F00, &type metadata for SocialIntegrationContactsListPageView.DataSource, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

id sub_24EA54248@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(uint64_t a1)@<X1>, uint64_t a3@<X8>)
{
  v74 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  MEMORY[0x28223BE20](v74);
  v7 = v59 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v73 = type metadata accessor for ContactsPageViewSocialMenuProvider(0);
  MEMORY[0x28223BE20](v73);
  v61 = (v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v9);
  v11 = v59 - v10;
  v12 = type metadata accessor for SocialIntegrationContactsListPageView(0);
  *(a3 + v12[9]) = 0x4030000000000000;
  *(a3 + v12[10]) = 0x4030000000000000;
  v72 = type metadata accessor for SocialIntegrationContactsListPageIntent;
  v75 = a1;
  sub_24EA5682C(a1, a3, type metadata accessor for SocialIntegrationContactsListPageIntent);
  v68 = v12;
  v69 = a3;
  *(a3 + v12[5]) = a2;
  v67 = type metadata accessor for SocialIntegration(0);
  v13 = (a1 + *(v67 + 36));
  v14 = v13[3];
  v91 = v13[2];
  v92 = v14;
  v15 = v13[1];
  v89 = *v13;
  v90 = v15;
  v16 = objc_opt_self();

  v17 = [v16 sharedInstance];
  v18 = [v17 providerManager];

  v19 = [v18 defaultProvider];
  v20 = [v18 providers];
  sub_24EA567E0();
  v21 = sub_24F92B5A8();

  v22 = [v18 faceTimeProvider];
  v23 = [v18 telephonyProvider];

  v81 = v89;
  v82 = v90;
  v83 = v91;
  v84 = v92;
  *&v77 = v18;
  *(&v77 + 1) = v19;
  *&v78 = v19;
  *(&v78 + 1) = v21;
  *&v79 = v22;
  *(&v79 + 1) = v23;
  v60 = v19;
  v24 = v19;
  sub_24E94B1E0(&v89, &v93);
  v65 = v18;
  v62 = v24;
  v66 = v21;

  v64 = v22;
  v63 = v23;
  sub_24F2BE8A0(&v81, &v77, &v93);
  v25 = *v94;
  v26 = *&v94[24];
  v70 = *&v94[8];
  v71 = v93;
  sub_24EA5682C(v75, v7, v72);
  *v11 = a2;
  type metadata accessor for JSIntentDispatcher();
  v27 = sub_24F928FD8();
  swift_retain_n();
  v59[1] = v27;
  sub_24F92A758();
  v72 = a2;

  *(v11 + 1) = v81;
  v28 = v70;
  *(v11 + 1) = v71;
  *(v11 + 4) = v25;
  *(v11 + 40) = v28;
  *(v11 + 7) = v26;
  v30 = v73;
  v29 = v74;
  sub_24E60169C(&v7[*(v74 + 20)], &v11[*(v73 + 28)], &qword_27F216FE0, &unk_24F959350);
  *&v11[v30[8]] = *&v7[v29[6]];
  v11[v30[9]] = v7[v29[7]];
  LOBYTE(v25) = v7[v29[8]];

  sub_24EA56894(v7, type metadata accessor for SocialIntegrationContactsListPageIntent);
  v31 = v30[10];
  v32 = v13[1];
  v33 = v13[3];
  *&v94[16] = v13[2];
  v34 = *&v94[16];
  v95 = v33;
  v35 = v13[1];
  v93 = *v13;
  v36 = v93;
  *v94 = v35;
  v11[v31] = v25;
  v77 = v36;
  v78 = v32;
  v37 = v13[3];
  v79 = v34;
  v80 = v37;
  v76[3] = v30;
  v76[4] = &off_28621FC30;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v76);
  sub_24EA5682C(v11, boxed_opaque_existential_1, type metadata accessor for ContactsPageViewSocialMenuProvider);
  sub_24E94B1E0(&v93, &v81);
  result = sub_24E999A24(&v77, v76, &v81);
  if (*(&v81 + 1))
  {
    v41 = v68;
    v40 = v69;
    v42 = v69 + v68[7];
    v43 = v86;
    *(v42 + 64) = v85;
    *(v42 + 80) = v43;
    *(v42 + 96) = v87;
    *(v42 + 112) = v88;
    v44 = v82;
    *v42 = v81;
    *(v42 + 16) = v44;
    v45 = v84;
    *(v42 + 32) = v83;
    *(v42 + 48) = v45;
    if (*(v75 + *(v67 + 28) + 8))
    {

      v46 = (v40 + v41[6]);
      v46[7] = 0u;
      v46[8] = 0u;
      v46[5] = 0u;
      v46[6] = 0u;
      v46[3] = 0u;
      v46[4] = 0u;
      v46[1] = 0u;
      v46[2] = 0u;
      *v46 = 0u;
      v47 = v41[8];
      LOBYTE(v77) = 1;
      sub_24F926F28();

      v48 = v62;
    }

    else
    {
      sub_24EA5682C(v75, v7, type metadata accessor for SocialIntegrationContactsListPageIntent);
      v49 = v61;
      *v61 = v72;

      sub_24F92A758();

      v50 = v65;
      v49[1] = v81;
      v49[2] = v50;
      v51 = v60;
      v49[3] = v60;
      v49[4] = v51;
      v52 = v63;
      v53 = v64;
      v49[5] = v66;
      v49[6] = v53;
      v49[7] = v52;
      v54 = v74;
      sub_24E60169C(&v7[*(v74 + 20)], v49 + v30[7], &qword_27F216FE0, &unk_24F959350);
      *(v49 + v30[8]) = *&v7[v54[6]];
      *(v49 + v30[9]) = v7[v54[7]];
      LOBYTE(v54) = v7[v54[8]];

      sub_24EA56894(v7, type metadata accessor for SocialIntegrationContactsListPageIntent);
      *(v49 + v30[10]) = v54;
      v55 = v41[6];
      *(&v82 + 1) = v30;
      *&v83 = &off_28621FC20;
      v56 = __swift_allocate_boxed_opaque_existential_1(&v81);
      sub_24EA5682C(v49, v56, type metadata accessor for ContactsPageViewSocialMenuProvider);
      sub_24ECFAB70(&v81, (v40 + v55));
      v47 = v41[8];
      LOBYTE(v77) = 0;
      sub_24F926F28();
      sub_24EA56894(v49, type metadata accessor for ContactsPageViewSocialMenuProvider);
    }

    sub_24EA56894(v11, type metadata accessor for ContactsPageViewSocialMenuProvider);
    v57 = *(&v81 + 1);
    v58 = v40 + v47;
    *v58 = v81;
    *(v58 + 8) = v57;
    return sub_24EA56894(v75, type metadata accessor for SocialIntegrationContactsListPageIntent);
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_24EA54964()
{
  result = qword_27F225F18;
  if (!qword_27F225F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F225F18);
  }

  return result;
}

double sub_24EA549D4@<D0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = type metadata accessor for SocialIntegrationContactsListPageView(0);
  v5 = (v1 + v4[8]);
  v6 = *v5;
  v7 = *(v5 + 1);
  LOBYTE(v16[0]) = v6;
  *(&v16[0] + 1) = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F70, &qword_24F978A48);
  sub_24F926F38();
  if (v17)
  {
    v8 = v4[7];
    *(a1 + 24) = &type metadata for ContactsListDataSource;
    *(a1 + 32) = sub_24EA56620();
    v9 = swift_allocObject();
    *a1 = v9;
    sub_24E99B4E4(v2 + v8, v9 + 16);
  }

  else
  {
    sub_24E60169C(v1 + v4[6], v16, &qword_27F225F98, &unk_24F978A90);
    if (*(&v16[0] + 1))
    {
      *(a1 + 24) = &type metadata for ContactsListRecentsDataSource;
      *(a1 + 32) = sub_24EA566EC();
      v11 = swift_allocObject();
      *a1 = v11;
      v12 = v16[7];
      v11[7] = v16[6];
      v11[8] = v12;
      v11[9] = v16[8];
      v13 = v16[3];
      v11[3] = v16[2];
      v11[4] = v13;
      v14 = v16[5];
      v11[5] = v16[4];
      v11[6] = v14;
      v10 = v16[1];
      v11[1] = v16[0];
      v11[2] = v10;
    }

    else
    {
      sub_24E601704(v16, &qword_27F225F98, &unk_24F978A90);
      *(a1 + 32) = 0;
      *&v10 = 0;
      *a1 = 0u;
      *(a1 + 16) = 0u;
    }
  }

  return *&v10;
}

uint64_t sub_24EA54B4C@<X0>(uint64_t a1@<X8>)
{
  v40 = a1;
  v41 = type metadata accessor for SocialIntegrationContactsListPageIntent(0);
  MEMORY[0x28223BE20](v41);
  v39 = &v31 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216F48, &unk_24F944850);
  MEMORY[0x28223BE20](v38);
  v37 = &v31 - v3;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F2156F0, &unk_24F969070);
  v35 = *(v36 - 8);
  MEMORY[0x28223BE20](v36);
  v34 = &v31 - v4;
  v5 = sub_24F92A498();
  v33 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for SocialIntegrationContactsListPageView(0);
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x28223BE20](v8);
  v11 = &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F20, &qword_24F978970);
  v13 = *(v12 - 1);
  MEMORY[0x28223BE20](v12);
  v15 = &v31 - v14;
  sub_24EA549D4(&v48);
  if (v49)
  {
    v32 = v13;
    sub_24E612C80(&v48, &v51);
    v49 = v41;
    v31 = sub_24EA55E70();
    v50 = v31;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v48);
    sub_24EA5682C(v1, boxed_opaque_existential_1, type metadata accessor for SocialIntegrationContactsListPageIntent);
    v17 = *(v1 + *(v8 + 20));
    sub_24E615E00(&v51, v47);
    sub_24EA5682C(v1, &v31 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for SocialIntegrationContactsListPageView);
    v18 = (*(v9 + 80) + 16) & ~*(v9 + 80);
    v19 = swift_allocObject();
    sub_24EA563D8(v11, v19 + v18, type metadata accessor for SocialIntegrationContactsListPageView);
    sub_24E615E00(&v48, v46);
    sub_24E615E00(v47, v45);
    *v15 = swift_getKeyPath();
    *(v15 + 1) = 0;
    v15[16] = 0;
    *(v15 + 8) = swift_getKeyPath();
    v15[72] = 0;
    v20 = v12[15];
    *&v15[v20] = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F216898, &unk_24F944150);
    swift_storeEnumTagMultiPayload();
    v21 = &v15[v12[25]];
    sub_24F929EB8();
    swift_retain_n();
    v42 = sub_24F929EA8();
    sub_24F926F28();
    v22 = v44;
    *v21 = v43;
    *(v21 + 1) = v22;
    sub_24E615E00(v46, &v15[v12[16]]);
    sub_24F928F28();
    if (qword_27F2108A8 != -1)
    {
      swift_once();
    }

    v23 = v34;
    sub_24F92A448();
    v24 = v36;
    sub_24F92A408();
    (*(v35 + 8))(v23, v24);
    (*(v33 + 8))(v7, v5);
    v25 = v44;
    v26 = &v15[v12[18]];
    *v26 = v43;
    *(v26 + 1) = v25;
    sub_24F929158();
    sub_24F928F28();
    type metadata accessor for LocalPlayerProvider(0);
    sub_24F928EF8();
    *&v15[v12[20]] = v43;
    *&v15[v12[17]] = v17;
    v27 = &v15[v12[22]];
    *v27 = sub_24EA562C8;
    v27[1] = v19;
    v28 = &v15[v12[23]];
    *v28 = sub_24EA56348;
    v28[1] = v17;
    v15[v12[21]] = 0;
    sub_24E615E00(v45, (v15 + 24));
    sub_24EA5682C(boxed_opaque_existential_1, v39, type metadata accessor for SocialIntegrationContactsListPageIntent);
    type metadata accessor for Page(0);
    sub_24F9217D8();
    sub_24F926F28();
    __swift_destroy_boxed_opaque_existential_1(v45);
    __swift_destroy_boxed_opaque_existential_1(v47);
    __swift_destroy_boxed_opaque_existential_1(&v51);
    __swift_destroy_boxed_opaque_existential_1(&v48);
    __swift_destroy_boxed_opaque_existential_1(v46);
    v29 = v40;
    sub_24E6009C8(v15, v40, &qword_27F225F20, &qword_24F978970);
    return (*(v32 + 56))(v29, 0, 1, v12);
  }

  else
  {
    sub_24E601704(&v48, &qword_27F225F28, &qword_24F978978);
    return (*(v13 + 56))(v40, 1, 1, v12);
  }
}

uint64_t sub_24EA552BC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = sub_24F924C88();
  *(a3 + 8) = 0x4028000000000000;
  *(a3 + 16) = 0;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F30, &qword_24F978A08);
  return sub_24EA55324(a1, a2, a3 + *(v6 + 44));
}

uint64_t sub_24EA55324@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v87 = a2;
  v91 = a3;
  v86 = sub_24F923708();
  v85 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v84 = &v72 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F38, &qword_24F978A10);
  MEMORY[0x28223BE20](v74);
  v73 = (&v72 - v5);
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F40, &qword_24F978A18);
  MEMORY[0x28223BE20](v75);
  v76 = &v72 - v6;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F48, &qword_24F978A20);
  v81 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v78 = &v72 - v7;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F50, &qword_24F978A28);
  MEMORY[0x28223BE20](v77);
  v82 = &v72 - v8;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F58, &qword_24F978A30);
  v89 = *(v92 - 8);
  MEMORY[0x28223BE20](v92 - 8);
  v80 = &v72 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v79 = &v72 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F60, &qword_24F978A38);
  MEMORY[0x28223BE20](v12 - 8);
  v90 = &v72 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v16 = &v72 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21D8F8, &qword_24F95ADB0);
  MEMORY[0x28223BE20](v17 - 8);
  v19 = &v72 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27F220E38, &unk_24F965190);
  MEMORY[0x28223BE20](v20 - 8);
  v22 = &v72 - v21;
  v23 = type metadata accessor for DefaultPageHeaderView(0);
  v24 = v23 - 8;
  MEMORY[0x28223BE20](v23);
  v88 = &v72 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v26);
  v28 = &v72 - v27;
  MEMORY[0x28223BE20](v29);
  v31 = &v72 - v30;
  v32 = type metadata accessor for Page(0);
  sub_24E60169C(a1 + v32[20], v22, qword_27F220E38, &unk_24F965190);
  v33 = *(a1 + v32[21]);
  sub_24E60169C(a1 + v32[24], v19, &qword_27F21D8F8, &qword_24F95ADB0);
  v34 = type metadata accessor for Page.Background(0);
  LOBYTE(v32) = (*(*(v34 - 8) + 48))(v19, 1, v34) == 1;
  v35 = v19;
  v36 = v87;
  v37 = 1;
  sub_24E601704(v35, &qword_27F21D8F8, &qword_24F95ADB0);
  sub_24EA56368(v22, v28);
  v28[*(v24 + 28)] = v33;
  v38 = v31;
  v28[*(v24 + 32)] = v32;
  sub_24EA563D8(v28, v31, type metadata accessor for DefaultPageHeaderView);
  if (!*(v36 + *(type metadata accessor for SocialIntegration(0) + 28) + 8))
  {
    v72 = type metadata accessor for SocialIntegrationContactsListPageView(0);
    v39 = v36 + v72[8];
    v40 = *v39;
    v41 = *(v39 + 8);
    v93 = v40;
    v94 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F70, &qword_24F978A48);
    sub_24F926F58();
    v42 = *(&v95 + 1);
    v43 = v96;
    v44 = v73;
    *v73 = v95;
    *(v44 + 8) = v42;
    *(v44 + 16) = v43;
    *(v44 + 48) = 0;
    v45 = *(v74 + 64);
    *(v44 + v45) = swift_getKeyPath();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F78, &unk_24F978A80);
    swift_storeEnumTagMultiPayload();
    *(v44 + 24) = &unk_2861C06B8;
    *(v44 + 32) = sub_24EA55D80;
    *(v44 + 40) = 0;
    sub_24E602068(&qword_27F225F80, &qword_27F225F38, &qword_24F978A10, &unk_24FA355D8);
    v46 = v38;
    v47 = v76;
    sub_24F926608();
    sub_24E601704(v44, &qword_27F225F38, &qword_24F978A10);
    v48 = &v47[*(v75 + 36)];
    sub_24F927468();
    v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F21F328, &qword_24F95F890);
    v50 = *(v49 + 52);
    v51 = *MEMORY[0x277CE0118];
    v52 = sub_24F924B38();
    (*(*(v52 - 8) + 104))(&v48[v50], v51, v52);
    *&v48[*(v49 + 56)] = 256;
    v53 = v84;
    sub_24F9236F8();
    sub_24EA564F8();
    v54 = v78;
    sub_24F926258();
    (*(v85 + 8))(v53, v86);
    v55 = v47;
    v38 = v46;
    sub_24E601704(v55, &qword_27F225F40, &qword_24F978A18);
    sub_24F927618();
    sub_24F9242E8();
    v56 = v82;
    (*(v81 + 32))(v82, v54, v83);
    v57 = &v56[*(v77 + 36)];
    v58 = v100;
    *(v57 + 4) = v99;
    *(v57 + 5) = v58;
    *(v57 + 6) = v101;
    v59 = v96;
    *v57 = v95;
    *(v57 + 1) = v59;
    v60 = v98;
    *(v57 + 2) = v97;
    *(v57 + 3) = v60;
    v61 = *(v36 + v72[9]);
    v62 = *(v36 + v72[10]);
    LOBYTE(v53) = sub_24F925808();
    v63 = v56;
    v64 = v80;
    sub_24E6009C8(v63, v80, &qword_27F225F50, &qword_24F978A28);
    v65 = v64 + *(v92 + 36);
    *v65 = v53;
    *(v65 + 8) = 0;
    *(v65 + 16) = v61;
    *(v65 + 24) = 0x4028000000000000;
    *(v65 + 32) = v62;
    *(v65 + 40) = 0;
    v66 = v79;
    sub_24E6009C8(v64, v79, &qword_27F225F58, &qword_24F978A30);
    sub_24E6009C8(v66, v16, &qword_27F225F58, &qword_24F978A30);
    v37 = 0;
  }

  (*(v89 + 56))(v16, v37, 1, v92);
  v67 = v88;
  sub_24EA5682C(v38, v88, type metadata accessor for DefaultPageHeaderView);
  v68 = v90;
  sub_24EA56440(v16, v90);
  v69 = v91;
  sub_24EA5682C(v67, v91, type metadata accessor for DefaultPageHeaderView);
  v70 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F225F68, &qword_24F978A40);
  sub_24EA56440(v68, v69 + *(v70 + 48));
  sub_24E601704(v16, &qword_27F225F60, &qword_24F978A38);
  sub_24EA56894(v38, type metadata accessor for DefaultPageHeaderView);
  sub_24E601704(v68, &qword_27F225F60, &qword_24F978A38);
  return sub_24EA56894(v67, type metadata accessor for DefaultPageHeaderView);
}

uint64_t sub_24EA55D80@<X0>(char *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  if (*a1)
  {
    if (qword_27F211500 == -1)
    {
      goto LABEL_5;
    }

    goto LABEL_6;
  }

  if (qword_27F211508 != -1)
  {
LABEL_6:
    swift_once();
  }

LABEL_5:

  sub_24E600AEC();
  result = sub_24F925E18();
  *a2 = result;
  *(a2 + 8) = v5;
  *(a2 + 16) = v6 & 1;
  *(a2 + 24) = v7;
  *(a2 + 32) = v3;
  *(a2 + 33) = 1;
  return result;
}

unint64_t sub_24EA55E70()
{
  result = qword_27F21D3B0;
  if (!qword_27F21D3B0)
  {
    type metadata accessor for SocialIntegrationContactsListPageIntent(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27F21D3B0);
  }

  return result;
}

uint64_t sub_24EA55EC8()
{
  v16 = type metadata accessor for SocialIntegrationContactsListPageView(0);
  v17 = *(*(v16 - 8) + 80);
  v1 = v0 + ((v17 + 16) & ~v17);

  v2 = *(type metadata accessor for SocialIntegration(0) + 24);
  v3 = sub_24F9289E8();
  v4 = *(v3 - 8);
  v5 = *(v4 + 48);
  if (!v5(v1 + v2, 1, v3))
  {
    (*(v4 + 8))(v1 + v2, v3);
  }

  v6 = v1 + *(type metadata accessor for SocialIntegrationContactsListPageIntent(0) + 20);
  v7 = type metadata accessor for Game(0);
  if (!(*(*(v7 - 1) + 48))(v6, 1, v7))
  {

    v8 = *(v4 + 8);
    v8(v6 + v7[18], v3);
    v9 = v7[19];
    if (!v5(v6 + v9, 1, v3))
    {
      v8(v6 + v9, v3);
    }

    v10 = v7[21];
    v11 = sub_24F920818();
    v12 = *(v11 - 8);
    if (!(*(v12 + 48))(v6 + v10, 1, v11))
    {
      (*(v12 + 8))(v6 + v10, v11);
    }
  }

  v13 = v1 + *(v16 + 24);
  if (*(v13 + 8))
  {

    if (*(v13 + 128))
    {
      __swift_destroy_boxed_opaque_existential_1((v13 + 104));
    }
  }

  v14 = v1 + *(v16 + 28);

  if (*(v14 + 104))
  {
    __swift_destroy_boxed_opaque_existential_1((v14 + 80));
  }

  return swift_deallocObject();
}