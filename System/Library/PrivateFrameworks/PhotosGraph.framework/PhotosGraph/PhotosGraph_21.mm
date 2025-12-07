id sub_22F294D30(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771EB0;
  *(v4 + 32) = a2;
  *(v3 + 32) = v4;
  v5 = objc_allocWithZone(MEMORY[0x277D22C38]);
  v6 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v7 = sub_22F741160();

  v8 = [v5 initWithArray_];

  v9 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v10 = v8;
  v11 = sub_22F741160();
  v12 = sub_22F741160();
  v13 = [v9 initWithName:0 rowLabels:v11 columnLabels:v12 matrix:v10];

  if (!v13)
  {
    sub_22F297A34();
    swift_allocError();
    *v14 = 0xD00000000000001BLL;
    *(v14 + 8) = 0x800000022F797890;
    *(v14 + 16) = 0;
    swift_willThrow();
  }

  return v13;
}

id sub_22F294EF4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v1 = swift_allocObject();
  *(v1 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F771EB0;
  v3 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v4) = 1008981770;
  *(v2 + 32) = [v3 initWithFloat_];
  *(v1 + 32) = v2;
  v5 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v6 = sub_22F741160();

  v7 = [v5 initWithArray_];

  v8 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v9 = v7;
  v10 = sub_22F741160();
  v11 = sub_22F741160();
  v12 = [v8 initWithName:0 rowLabels:v10 columnLabels:v11 matrix:v9];

  if (!v12)
  {
    sub_22F297A34();
    swift_allocError();
    *v13 = 0xD000000000000011;
    *(v13 + 8) = 0x800000022F7978F0;
    *(v13 + 16) = 0;
    swift_willThrow();
  }

  return v12;
}

void sub_22F2950D8(void *a1, unint64_t a2, unint64_t a3)
{
  v5 = a1;
  v6 = [a1 matrix];
  v7 = [v6 columns];

  v8 = [objc_opt_self() vectorRepeatingFloat:v7 count:0.0];
  v10 = a2 >> 62;
  if (a2 >> 62)
  {
    goto LABEL_49;
  }

  v11 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v11 >= 1)
  {
LABEL_3:
    v49 = a3 >> 62;
    if (a3 >> 62)
    {
      if (sub_22F741A00() < 1)
      {
        return;
      }
    }

    else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      return;
    }

    if (v10)
    {
      v12 = sub_22F741A00();
    }

    else
    {
      v12 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v44 = a2;
    v45 = v11;
    v46 = v8;
    if (!v12)
    {
      goto LABEL_15;
    }

    if ((a2 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x2319016F0](0, a2);
    }

    else
    {
      if (!*((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        return;
      }

      v13 = *(a2 + 32);
    }

    v14 = v13;
    v15 = [v13 photoLibrary];

    if (!v15)
    {
      goto LABEL_56;
    }

    v16 = [v15 librarySpecificFetchOptions];

    if (v16)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v17 = swift_allocObject();
      *(v17 + 16) = xmmword_22F771340;
      *(v17 + 32) = sub_22F740E20();
      *(v17 + 40) = v18;
      v19 = v16;
      v20 = sub_22F741160();

      [v19 setFetchPropertySets_];

      v48 = v19;
      [v19 setWantsIncrementalChangeDetails_];
    }

    else
    {
LABEL_15:
      v48 = 0;
    }

    v21 = 0;
    a2 = a3 & 0xFFFFFFFFFFFFFF8;
    v22 = a3 & 0xC000000000000001;
    v8 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
    for (i = a3 & 0xC000000000000001; ; v22 = i)
    {
      while (1)
      {
        while (1)
        {
          if (v49)
          {
            if (v21 == sub_22F741A00())
            {
LABEL_46:
              *&v9 = v45;
              [v46 vectorByDividingByScalar_];

              return;
            }
          }

          else if (v21 == *(a2 + 16))
          {
            goto LABEL_46;
          }

          if (v22)
          {
            v23 = MEMORY[0x2319016F0](v21, a3);
            v10 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
              goto LABEL_47;
            }
          }

          else
          {
            if (v21 >= *(a2 + 16))
            {
              goto LABEL_48;
            }

            v23 = *(a3 + 8 * v21 + 32);
            v10 = v21 + 1;
            if (__OFADD__(v21, 1))
            {
LABEL_47:
              __break(1u);
LABEL_48:
              __break(1u);
LABEL_49:
              v11 = sub_22F741A00();
              if (v11 < 1)
              {
                return;
              }

              goto LABEL_3;
            }
          }

          v24 = v23;
          v25 = [v24 v8[150]];
          if (!v25)
          {
            goto LABEL_55;
          }

          v26 = v25;

          v27 = [v5 indexOfRowWithLabel_];
          if (v27 != sub_22F73EE70())
          {
            break;
          }

          ++v21;
        }

        v28 = a3;
        v29 = v8;
        v30 = v5;
        v31 = [objc_opt_self() fetchAssetsInAssetCollection:v24 options:v48];
        v32 = [v31 fetchedObjects];

        if (v32)
        {
          break;
        }

        v5 = v30;
        v8 = v29;
LABEL_33:
        a3 = v28;
        v22 = i;
        ++v21;
      }

      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v33 = sub_22F741180();

      if (v33 >> 62)
      {
        v34 = sub_22F741A00();
      }

      else
      {
        v34 = *((v33 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v5 = v30;
      if (v34 < 1)
      {
        v8 = v29;

        goto LABEL_33;
      }

      v35 = sub_22F151DF4(v33);

      if ((v35 & 0xC000000000000001) != 0)
      {
        if (v35 >= 0)
        {
          v35 &= 0xFFFFFFFFFFFFFF8uLL;
        }

        v36 = sub_22F741A00();
        v35 = sub_22F10FD34(v35, v36);
      }

      v37 = sub_22F294B90(v44, v35);
      if ((v37 & 0xC000000000000001) != 0)
      {
        v38 = sub_22F741A00();
      }

      else
      {
        v38 = *(v37 + 16);
      }

      v39 = [v30 matrix];
      v40 = [v39 row_];

      *&v41 = v38;
      v42 = [v40 vectorByMultiplyingByScalar_];
      v43 = [v46 vectorByAddingVector_];

      v46 = v43;
      v21 = v10;
      v8 = v29;
      a3 = v28;
    }
  }
}

id sub_22F29564C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v6 = MEMORY[0x28223BE20](v5).n128_u64[0];
  v8 = &v27 - v7;
  v9 = [a1 universalDateInterval];
  if (v9)
  {
    v10 = v9;
    sub_22F73F020();

    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v4, 0, 1, v11);
  }

  else
  {
    v11 = sub_22F73F090();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  }

  sub_22F299354(v4, v8);
  sub_22F73F090();
  v12 = *(v11 - 8);
  if ((*(v12 + 48))(v8, 1, v11) == 1)
  {
    sub_22F1EDFCC(v8);
  }

  else
  {
    sub_22F73F080();
    (*(v12 + 8))(v8, v11);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v13 = swift_allocObject();
  v27 = xmmword_22F771340;
  *(v13 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F771EB0;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  *(v14 + 32) = sub_22F7417F0();
  *(v13 + 32) = v14;
  v15 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v16 = sub_22F741160();

  v17 = [v15 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v18 = swift_allocObject();
  *(v18 + 16) = v27;
  *(v18 + 32) = sub_22F740E20();
  *(v18 + 40) = v19;
  v20 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v21 = v17;
  v22 = sub_22F741160();
  v23 = sub_22F741160();

  v24 = [v20 initWithName:0 rowLabels:v22 columnLabels:v23 matrix:v21];

  if (!v24)
  {
    sub_22F297A34();
    swift_allocError();
    *v25 = 0xD000000000000019;
    *(v25 + 8) = 0x800000022F797940;
    *(v25 + 16) = 0;
    swift_willThrow();
  }

  return v24;
}

id sub_22F295A48(void *a1, float a2)
{
  v4 = MEMORY[0x277D84F90];
  v30 = MEMORY[0x277D84F90];
  v5 = &off_27888E000;
  v6 = [a1 columnLabels];
  if (v6)
  {
    v7 = v6;
    v4 = sub_22F741180();
  }

  v8 = *(v4 + 16);
  if (v8)
  {
    v9 = v4 + 40;
    do
    {

      v10 = sub_22F740DF0();

      v11 = [a1 indexOfColumnWithLabel_];

      [a1 floatAtRowIndex:0 columnIndex:v11];
      if (v12 > a2)
      {
        v13 = v12;
      }

      else
      {
        v13 = 0.0;
      }

      v14 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v15 = v13;
      [v14 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v30 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v9 += 16;
      --v8;
    }

    while (v8);
    v16 = v30;
    v5 = &off_27888E000;
  }

  else
  {
    v16 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771340;
  *(v17 + 32) = v16;
  v18 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v19 = sub_22F741160();

  v20 = [v18 initWithArray_];

  v21 = [a1 v5[365]];
  if (v21)
  {
    v22 = v21;
    v23 = sub_22F741180();
  }

  else
  {
    v23 = 0;
  }

  v24 = v20;
  v25 = sub_22F741160();
  if (v23)
  {
    v26 = sub_22F741160();
  }

  else
  {
    v26 = 0;
  }

  v27 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v25 columnLabels:v26 matrix:v24];

  if (!v27)
  {
    sub_22F297A34();
    swift_allocError();
    *v28 = xmmword_22F781B40;
    *(v28 + 16) = 2;
    swift_willThrow();
  }

  return v27;
}

id sub_22F295D88(unint64_t a1, unint64_t a2, void *a3, uint64_t a4, void *a5, uint64_t a6)
{
  v88 = *MEMORY[0x277D85DE8];
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MaestroMusicCurationFeatureExtractor -momentKeywordsDataFrame", 61, 2u, 0, 1, qword_2810B4E90, v87);
  v13 = objc_allocWithZone(MEMORY[0x277CCABB0]);
  LODWORD(v14) = 1060320051;
  v15 = [v13 initWithFloat_];
  v16 = sub_22F294D30(&unk_2843DB160, v15);
  if (v6)
  {
    goto LABEL_4;
  }

  v17 = v16;

  v18 = sub_22F294EF4(&unk_2843DB190);
  v15 = v18;
  v20 = [v17 dataFrameByAppendingColumnsOfDataFrame:v18 withName:0];
  if (!v20)
  {
    sub_22F297A34();
    swift_allocError();
    *v34 = 0xD000000000000011;
    *(v34 + 8) = 0x800000022F7978F0;
    *(v34 + 16) = 1;
    swift_willThrow();

LABEL_4:
    goto LABEL_6;
  }

  v84 = v15;
  v85 = v20;

  if (a5)
  {
    if (a3)
    {
      v21 = objc_opt_self();
      v86 = 0;
      v22 = v85;
      v23 = a5;
      v24 = a3;
      v25 = [v21 momentNodeFingerprintsDataFrameWithVersion:a4 forMomentNodes:v24 withGraph:v23 progressReporter:a6 error:&v86];
      if (v25)
      {
        v26 = v25;
        v83 = v23;
        v27 = v86;
        sub_22F2950D8(v26, a1, a2);
        v29 = v28;
        v30 = [v26 columnLabels];
        v31 = v24;
        if (v30)
        {
          v32 = v30;
          v33 = sub_22F741180();
        }

        else
        {
          v33 = 0;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
        v46 = swift_allocObject();
        *(v46 + 16) = xmmword_22F771340;
        v47 = [v29 array];
        sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
        v48 = sub_22F741180();

        *(v46 + 32) = v48;
        v49 = objc_allocWithZone(MEMORY[0x277D22C38]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
        v50 = sub_22F741160();

        v51 = [v49 initWithArray_];

        v52 = sub_22F741160();
        v82 = v29;
        if (v33)
        {
          v53 = sub_22F741160();
        }

        else
        {
          v53 = 0;
        }

        v54 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v52 columnLabels:v53 matrix:v51];

        if (v54)
        {
          v55 = v31;
          v56 = sub_22F29564C(v31);
          v57 = v22;
          v59 = v56;
          v60 = v55;
          v61 = [v54 dataFrameByAppendingColumnsOfDataFrame:v56 withName:0];
          if (v61)
          {
            v62 = v61;
            v63 = sub_22F295A48(v61, 0.4);
            v65 = v63;
            v66 = [v63 dataFrameByAppendingColumnsOfDataFrame:v57 withName:0];
            if (v66)
            {
              v67 = v66;

              v85 = v67;
              if (*(sub_22F741520() + 16) && (sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v69 & 1) != 0))
              {
              }

              else
              {
              }

              if (qword_2810A9460 != -1)
              {
                swift_once();
              }

              v70 = sub_22F740B90();
              __swift_project_value_buffer(v70, qword_2810B4D90);

              v71 = sub_22F740B70();
              v72 = sub_22F7415C0();

              if (os_log_type_enabled(v71, v72))
              {
                v81 = v57;
                v73 = swift_slowAlloc();
                v80 = swift_slowAlloc();
                v86 = v80;
                *v73 = 136315138;
                v78 = v72;
                v74 = sub_22F740CB0();
                log = v71;
                v76 = v75;

                v77 = sub_22F145F20(v74, v76, &v86);

                *(v73 + 4) = v77;
                _os_log_impl(&dword_22F0FC000, log, v78, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Extracted moment keywords:\n%s", v73, 0xCu);
                __swift_destroy_boxed_opaque_existential_0(v80);
                MEMORY[0x2319033A0](v80, -1, -1);
                MEMORY[0x2319033A0](v73, -1, -1);
              }

              else
              {
              }
            }

            else
            {

              sub_22F297A34();
              swift_allocError();
              *v68 = 0xD00000000000001BLL;
              *(v68 + 8) = 0x800000022F797890;
              *(v68 + 16) = 1;
              swift_willThrow();
            }
          }

          else
          {

            sub_22F297A34();
            swift_allocError();
            *v64 = 0xD000000000000019;
            *(v64 + 8) = 0x800000022F797940;
            *(v64 + 16) = 1;
            swift_willThrow();
          }
        }

        else
        {

          sub_22F297A34();
          swift_allocError();
          *v58 = 0xD000000000000023;
          *(v58 + 8) = 0x800000022F797910;
          *(v58 + 16) = 0;
          swift_willThrow();
        }
      }

      else
      {
        v45 = v86;

        sub_22F73F370();
        swift_willThrow();
      }
    }

    else
    {
      v39 = qword_2810A9460;
      v40 = a5;
      if (v39 != -1)
      {
        swift_once();
      }

      v41 = sub_22F740B90();
      __swift_project_value_buffer(v41, qword_2810B4D90);
      v42 = sub_22F740B70();
      v43 = sub_22F7415E0();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_22F0FC000, v42, v43, "[MemoriesMusic] [FeatureExtraction] No moment nodes available: using generic keyword", v44, 2u);
        MEMORY[0x2319033A0](v44, -1, -1);
      }
    }
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v35 = sub_22F740B90();
    __swift_project_value_buffer(v35, qword_2810B4D90);
    v36 = sub_22F740B70();
    v37 = sub_22F7415E0();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_22F0FC000, v36, v37, "[MemoriesMusic] [FeatureExtraction] No graph available: using generic keyword", v38, 2u);
      MEMORY[0x2319033A0](v38, -1, -1);
    }
  }

LABEL_6:
  sub_22F1B2BBC(0);

  return v85;
}

id sub_22F296884(void *a1, uint64_t a2)
{
  if ([a1 memoryCategory] == 19 || objc_msgSend(a1, sel_memoryCategory) == 18)
  {
    v3 = [objc_opt_self() memoryLabelForCategory_];
    v4 = sub_22F740E20();
    v6 = v5;
  }

  else
  {
    v6 = 0xE700000000000000;
    v4 = 0x6E776F6E6B6E75;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F771340;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771EB0;
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  *(v8 + 32) = sub_22F7417F0();
  *(v7 + 32) = v8;
  v9 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v10 = sub_22F741160();

  v11 = [v9 initWithArray_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v12 = swift_allocObject();
  *(v12 + 16) = xmmword_22F771340;
  *(v12 + 32) = v4;
  *(v12 + 40) = v6;
  v13 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v14 = v11;
  v15 = sub_22F741160();
  v16 = sub_22F741160();

  v17 = [v13 initWithName:0 rowLabels:v15 columnLabels:v16 matrix:v14];

  if (!v17)
  {
    sub_22F297A34();
    swift_allocError();
    *v18 = 0xD000000000000018;
    *(v18 + 8) = 0x800000022F797870;
    *(v18 + 16) = 0;
    swift_willThrow();
  }

  return v17;
}

id sub_22F296B4C(void *a1, uint64_t a2, uint64_t a3)
{
  v68 = *MEMORY[0x277D85DE8];
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  sub_22F1B560C("MaestroMusicCurationFeatureExtractor -memoryKeywordsDataFrame", 61, 2u, 0, 1, qword_2810B4E90, v67);
  v5 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F771EB0;
  *(v6 + 32) = [a1 memoryFeatureNodes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F10, &unk_22F781B58);
  v7 = sub_22F741160();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F771340;
  v9 = a1;
  v10 = [a1 uniqueMemoryIdentifier];
  v11 = sub_22F740E20();
  v13 = v12;

  *(v8 + 32) = v11;
  *(v8 + 40) = v13;
  v14 = sub_22F741160();

  v66 = 0;
  v15 = [v5 memoryFeatureNodesFingerprintsDataFrameWithVersion:228 forFeatureNodes:v7 uniqueMemoryIdentifiers:v14 withGraph:a2 progressReporter:a3 error:&v66];

  v16 = v66;
  if (!v15)
  {
    v24 = v66;
    sub_22F73F370();

    swift_willThrow();
    goto LABEL_13;
  }

  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771340;
  v18 = v16;
  v19 = [v9 uniqueMemoryIdentifier];
  v20 = sub_22F740E20();
  v22 = v21;

  *(v17 + 32) = v20;
  *(v17 + 40) = v22;
  v23 = sub_22F296884(v9, v17);
  if (v62)
  {

LABEL_13:
    sub_22F1B2BBC(0);

    return v9;
  }

  v25 = v23;
  v26 = v9;

  v27 = [v15 dataFrameByAppendingColumnsOfDataFrame:v25 withName:0];
  if (!v27)
  {
    sub_22F297A34();
    swift_allocError();
    *v31 = 0xD000000000000018;
    *(v31 + 8) = 0x800000022F797870;
    *(v31 + 16) = 1;
    swift_willThrow();

    goto LABEL_13;
  }

  v28 = v27;

  v29 = v28;
  v30 = [v9 &selRef_writeToFile_atomically_ + 5];
  sub_22F740E20();

  v32 = sub_22F741540();

  v33 = [v32 vector];

  [v33 sum];
  v35 = v34;

  if (v35 == 0.0 || [v9 memoryCategory] == 9)
  {
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_22F771340;
    v37 = [v26 uniqueMemoryIdentifier];
    v38 = sub_22F740E20();
    v40 = v39;

    *(v36 + 32) = v38;
    *(v36 + 40) = v40;
    v41 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    LODWORD(v42) = 1.0;
    v43 = [v41 initWithFloat_];
    v45 = sub_22F294D30(v36, v43);

    v9 = [v29 dataFrameByAppendingColumnsOfDataFrame:v45 withName:0];
    if (!v9)
    {
      sub_22F297A34();
      swift_allocError();
      *v53 = 0xD00000000000001BLL;
      *(v53 + 8) = 0x800000022F797890;
      *(v53 + 16) = 1;
      swift_willThrow();

      goto LABEL_13;
    }
  }

  else
  {
    v9 = v29;
  }

  v46 = sub_22F741520();
  v47 = [v26 uniqueMemoryIdentifier];
  v48 = sub_22F740E20();
  v50 = v49;

  if (!*(v46 + 16))
  {

    goto LABEL_23;
  }

  sub_22F1229E8(v48, v50);
  v52 = v51;

  if ((v52 & 1) == 0)
  {
LABEL_23:

    goto LABEL_24;
  }

LABEL_24:
  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v54 = sub_22F740B90();
  __swift_project_value_buffer(v54, qword_2810B4D90);

  v55 = sub_22F740B70();
  v56 = sub_22F7415C0();

  if (os_log_type_enabled(v55, v56))
  {
    v57 = swift_slowAlloc();
    v65 = swift_slowAlloc();
    v66 = v65;
    *v57 = 136315138;
    v58 = sub_22F740CB0();
    v63 = v56;
    v60 = v59;

    v61 = sub_22F145F20(v58, v60, &v66);

    *(v57 + 4) = v61;
    _os_log_impl(&dword_22F0FC000, v55, v63, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Extracted memory keywords:\n%s", v57, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v65);
    MEMORY[0x2319033A0](v65, -1, -1);
    MEMORY[0x2319033A0](v57, -1, -1);
  }

  else
  {
  }

  sub_22F1B2BBC(0);

  return v9;
}

id sub_22F297324(void *a1, void *a2, float a3)
{
  v4 = v3;
  if (qword_2810A9BD0 == -1)
  {
    goto LABEL_2;
  }

LABEL_42:
  swift_once();
LABEL_2:
  sub_22F1B560C("MusicCurator - mergeMomentAndMemoryKeywordDataFrames", 52, 2u, 0, 1, qword_2810B4E90, v70);
  v7 = MEMORY[0x277D84F90];
  v69 = MEMORY[0x277D84F90];
  v8 = [a2 columnLabels];
  if (v8)
  {
    v9 = v8;
    v7 = sub_22F741180();
  }

  v10 = [a1 columnLabels];
  v63 = v4;
  if (v10)
  {
    v11 = v10;
    v12 = sub_22F741180();
  }

  else
  {
    v12 = MEMORY[0x277D84F90];
  }

  v13 = sub_22F1515F8(v7);

  v14 = sub_22F1515F8(v12);

  v15 = sub_22F144608(v14, v13);
  v16 = 0;
  v18 = v15 + 56;
  v17 = *(v15 + 56);
  v64 = v15;
  v19 = 1 << *(v15 + 32);
  v20 = -1;
  if (v19 < 64)
  {
    v20 = ~(-1 << v19);
  }

  v21 = v20 & v17;
  v4 = (v19 + 63) >> 6;
  v22 = MEMORY[0x277D84F90];
  v23 = MEMORY[0x277D84F90];
  v66 = a2;
  if ((v20 & v17) != 0)
  {
    do
    {
LABEL_14:
      v25 = (*(v64 + 48) + ((v16 << 10) | (16 * __clz(__rbit64(v21)))));
      v26 = *v25;
      v27 = v25[1];

      v28 = sub_22F740DF0();
      v29 = [a2 indexOfColumnWithLabel_];

      if (v29 == sub_22F73EE70() || ([v66 floatAtRowIndex:0 columnIndex:v29], v31 = v30 * a3, (v30 * a3) <= 0.0))
      {
        v32 = sub_22F740DF0();
        v33 = [a1 indexOfColumnWithLabel_];

        v31 = 0.0;
        if (v33 != sub_22F73EE70())
        {
          [a1 floatAtRowIndex:0 columnIndex:v33];
          v31 = fmaxf(v34, 0.0);
        }
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v22 = sub_22F13E1A8(0, *(v22 + 2) + 1, 1, v22);
      }

      v36 = *(v22 + 2);
      v35 = *(v22 + 3);
      if (v36 >= v35 >> 1)
      {
        v22 = sub_22F13E1A8((v35 > 1), v36 + 1, 1, v22);
      }

      *(v22 + 2) = v36 + 1;
      v37 = &v22[16 * v36];
      *(v37 + 4) = v26;
      *(v37 + 5) = v27;
      v38 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v39 = v31;
      [v38 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v69 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v69 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      v21 &= v21 - 1;
      sub_22F741220();
      v23 = v69;
      a2 = v66;
    }

    while (v21);
  }

  while (1)
  {
    v24 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      __break(1u);
      goto LABEL_42;
    }

    if (v24 >= v4)
    {
      break;
    }

    v21 = *(v18 + 8 * v24);
    ++v16;
    if (v21)
    {
      v16 = v24;
      goto LABEL_14;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v40 = swift_allocObject();
  *(v40 + 16) = xmmword_22F771340;
  *(v40 + 32) = v23;
  v41 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v42 = sub_22F741160();

  v43 = [v41 initWithArray_];

  v44 = objc_allocWithZone(MEMORY[0x277D22C08]);
  v45 = v43;
  v46 = sub_22F741160();
  v47 = sub_22F741160();

  v48 = [v44 initWithName:0 rowLabels:v46 columnLabels:v47 matrix:v45];

  if (!v48)
  {
    sub_22F297A34();
    swift_allocError();
    *v50 = 0;
    *(v50 + 8) = 0;
    *(v50 + 16) = 2;
    swift_willThrow();
LABEL_39:

    goto LABEL_40;
  }

  v49 = sub_22F741520();
  if (v63)
  {
  }

  else if (*(v49 + 16) && (sub_22F1229E8(0xD00000000000001DLL, 0x800000022F78E2A0), (v51 & 1) != 0))
  {
  }

  else
  {
  }

  if (qword_2810A9460 != -1)
  {
    swift_once();
  }

  v52 = sub_22F740B90();
  __swift_project_value_buffer(v52, qword_2810B4D90);

  v53 = sub_22F740B70();
  v54 = sub_22F7415C0();

  if (!os_log_type_enabled(v53, v54))
  {

    goto LABEL_39;
  }

  v55 = swift_slowAlloc();
  v56 = swift_slowAlloc();
  v68 = v56;
  *v55 = 136315138;
  v57 = sub_22F740CB0();
  v67 = v45;
  v58 = v48;
  v60 = v59;

  v61 = sub_22F145F20(v57, v60, &v68);
  v48 = v58;

  *(v55 + 4) = v61;
  _os_log_impl(&dword_22F0FC000, v53, v54, "[MemoriesMusic] [FeatureExtraction] (MaestroMusicCurationFeatureExtractor) Merged memory and moment keywords:\n%s", v55, 0xCu);
  __swift_destroy_boxed_opaque_existential_0(v56);
  MEMORY[0x2319033A0](v56, -1, -1);
  MEMORY[0x2319033A0](v55, -1, -1);

LABEL_40:
  sub_22F1B2BBC(0);

  return v48;
}

unint64_t sub_22F297A34()
{
  result = qword_27DAB2F08;
  if (!qword_27DAB2F08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F08);
  }

  return result;
}

id sub_22F297A88(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v39 = MEMORY[0x277D84F90];
  v3 = sub_22F14EB58(&unk_2843DB220);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0D90, &unk_22F771130);
  swift_arrayDestroy();
  v4 = &off_27888E000;
  v5 = [a1 columnLabels];
  if (v5)
  {
    v6 = v5;
    v2 = sub_22F741180();
  }

  v7 = *(v2 + 16);
  if (v7)
  {
    v8 = (v2 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;

      v11 = sub_22F740DF0();
      v12 = [a1 indexOfColumnWithLabel_];

      [a1 floatAtRowIndex:0 columnIndex:v12];
      v14 = v13;
      if (*(v3 + 16))
      {
        v15 = sub_22F1229E8(v9, v10);
        v17 = v16;

        if ((v17 & 1) != 0 && v14 > 0.0)
        {
          v14 = v14 * *(*(v3 + 56) + 4 * v15);
        }
      }

      else
      {
      }

      v18 = objc_allocWithZone(MEMORY[0x277CCABB0]);
      *&v19 = v14;
      [v18 initWithFloat_];
      MEMORY[0x231900D00]();
      if (*((v39 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v39 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v8 += 2;
      --v7;
    }

    while (v7);
    v20 = v39;

    v4 = &off_27888E000;
  }

  else
  {

    v20 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_22F771340;
  *(v21 + 32) = v20;
  v22 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v23 = sub_22F741160();

  v24 = [v22 initWithArray_];

  v25 = [a1 v4[365]];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22F741180();
  }

  else
  {
    v27 = 0;
  }

  v28 = v24;
  v29 = sub_22F741160();
  if (v27)
  {
    v30 = sub_22F741160();
  }

  else
  {
    v30 = 0;
  }

  v31 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v29 columnLabels:v30 matrix:v28];

  if (!v31)
  {
    v32 = [a1 name];
    if (v32)
    {
      v33 = v32;
      v34 = sub_22F740E20();
      v36 = v35;
    }

    else
    {
      v34 = 0;
      v36 = 0xE000000000000000;
    }

    sub_22F297A34();
    swift_allocError();
    *v37 = v34;
    *(v37 + 8) = v36;
    *(v37 + 16) = 0;
    swift_willThrow();
  }

  return v31;
}

id sub_22F297E7C(void *a1)
{
  v2 = MEMORY[0x277D84F90];
  v63 = MEMORY[0x277D84F90];
  v3 = sub_22F14F0AC(&unk_2843DC8A8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
  swift_arrayDestroy();
  v4 = [a1 columnLabels];
  if (v4)
  {
    v5 = v4;
    v2 = sub_22F741180();
  }

  v6 = *(v2 + 16);
  if (v6)
  {
    v60 = v2;
    v7 = (v2 + 40);
    v8 = MEMORY[0x277D84F90];
    do
    {
      if (*(v3 + 16))
      {
        v10 = *(v7 - 1);
        v9 = *v7;

        sub_22F1229E8(v10, v9);
        v12 = v11;

        if ((v12 & 1) != 0 && (v13 = sub_22F740DF0(), v14 = [a1 indexOfColumnWithLabel_], v13, objc_msgSend(a1, sel_floatAtRowIndex_columnIndex_, 0, v14), v15 > 0.0) && *(v3 + 16))
        {
          v16 = sub_22F1229E8(v10, v9);
          v18 = v17;

          if (v18)
          {
            v19 = (*(v3 + 56) + 16 * v16);
            v21 = *v19;
            v20 = v19[1];

            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v8 = sub_22F13E1A8(0, *(v8 + 2) + 1, 1, v8);
            }

            v23 = *(v8 + 2);
            v22 = *(v8 + 3);
            if (v23 >= v22 >> 1)
            {
              v8 = sub_22F13E1A8((v22 > 1), v23 + 1, 1, v8);
            }

            *(v8 + 2) = v23 + 1;
            v24 = &v8[16 * v23];
            *(v24 + 4) = v21;
            *(v24 + 5) = v20;
          }
        }

        else
        {
        }
      }

      v7 += 2;
      --v6;
    }

    while (v6);
  }

  else
  {

    v8 = MEMORY[0x277D84F90];
  }

  v25 = [a1 columnLabels];
  if (v25)
  {
    v26 = v25;
    v27 = sub_22F741180();

    v28 = *(v27 + 16);
    if (v28)
    {
      goto LABEL_21;
    }

LABEL_29:

    v40 = MEMORY[0x277D84F90];
    goto LABEL_30;
  }

  v27 = MEMORY[0x277D84F90];
  v28 = *(MEMORY[0x277D84F90] + 16);
  if (!v28)
  {
    goto LABEL_29;
  }

LABEL_21:
  v60 = v27;
  v29 = (v27 + 40);
  do
  {
    v30 = *(v29 - 1);
    v31 = *v29;

    v32 = sub_22F740DF0();
    v33 = [a1 indexOfColumnWithLabel_];

    v34 = [a1 floatAtRowIndex:0 columnIndex:v33];
    v36 = v35;
    v62[0] = v30;
    v62[1] = v31;
    MEMORY[0x28223BE20](v34);
    v59[2] = v62;
    v37 = v61;
    LOBYTE(v30) = sub_22F1C0E04(sub_22F15A388, v59, v8);
    v61 = v37;

    if (v30)
    {
      v36 = 0.0;
    }

    v38 = objc_allocWithZone(MEMORY[0x277CCABB0]);
    *&v39 = v36;
    [v38 initWithFloat_];
    MEMORY[0x231900D00]();
    if (*((v63 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v63 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_22F7411C0();
    }

    sub_22F741220();
    v29 += 2;
    --v28;
  }

  while (v28);
  v40 = v63;

LABEL_30:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E0, &qword_22F77A8F0);
  v41 = swift_allocObject();
  *(v41 + 16) = xmmword_22F771340;
  *(v41 + 32) = v40;
  v42 = objc_allocWithZone(MEMORY[0x277D22C38]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB26E8, &qword_22F77A8F8);
  v43 = sub_22F741160();

  v44 = [v42 initWithArray_];

  v45 = [a1 columnLabels];
  if (v45)
  {
    v46 = v45;
    v47 = sub_22F741180();
  }

  else
  {
    v47 = 0;
  }

  v48 = v44;
  v49 = sub_22F741160();
  if (v47)
  {
    v50 = sub_22F741160();
  }

  else
  {
    v50 = 0;
  }

  v51 = [objc_allocWithZone(MEMORY[0x277D22C08]) initWithName:0 rowLabels:v49 columnLabels:v50 matrix:v48];

  if (v51)
  {
  }

  else
  {
    v52 = [a1 name];
    if (v52)
    {
      v53 = v52;
      v54 = sub_22F740E20();
      v56 = v55;
    }

    else
    {
      v54 = 0;
      v56 = 0xE000000000000000;
    }

    sub_22F297A34();
    swift_allocError();
    *v57 = v54;
    *(v57 + 8) = v56;
    *(v57 + 16) = 0;
    swift_willThrow();
  }

  return v51;
}

uint64_t sub_22F29845C(void *a1)
{
  v1 = a1;
  v2 = [a1 matrix];
  v3 = [v1 columnLabels];
  v137 = v2;
  if (!v3)
  {
LABEL_22:
    if (qword_2810A9460 == -1)
    {
LABEL_23:
      v29 = sub_22F740B90();
      __swift_project_value_buffer(v29, qword_2810B4D90);
      v30 = sub_22F740B70();
      v31 = sub_22F7415E0();
      if (!os_log_type_enabled(v30, v31))
      {
LABEL_26:

        return v1;
      }

      v32 = swift_slowAlloc();
      *v32 = 0;
      v33 = "[MemoriesMusic] [FeatureExtraction] Input DataFrame has empty columnLabels";
LABEL_25:
      _os_log_impl(&dword_22F0FC000, v30, v31, v33, v32, 2u);
      v34 = v32;
      v2 = v137;
      MEMORY[0x2319033A0](v34, -1, -1);
      goto LABEL_26;
    }

LABEL_104:
    swift_once();
    goto LABEL_23;
  }

  v4 = v3;
  v5 = sub_22F741180();

  v6 = *(v5 + 2);
  if (!v6)
  {

    goto LABEL_22;
  }

  if (v6 != [v2 columns])
  {
    if (qword_2810A9460 != -1)
    {
      goto LABEL_107;
    }

    goto LABEL_29;
  }

  v7 = [v1 matrix];
  v8 = [v7 rows];

  if (v8 != 1)
  {

    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v44 = sub_22F740B90();
    __swift_project_value_buffer(v44, qword_2810B4D90);
    v30 = sub_22F740B70();
    v31 = sub_22F7415E0();
    if (!os_log_type_enabled(v30, v31))
    {
      goto LABEL_26;
    }

    v32 = swift_slowAlloc();
    *v32 = 0;
    v33 = "[MemoriesMusic] [FeatureExtraction] Keyword rewrite operation only valid for keywordDataFrame with single row";
    goto LABEL_25;
  }

  v124 = v1;
  v9 = *(v5 + 2);
  if (!v9)
  {
    v12 = MEMORY[0x277D84F90];
    v13 = MEMORY[0x277D84F98];
    v14 = MEMORY[0x277D84F98];
LABEL_39:

    if (!*(v13 + 16))
    {

      v99 = v124;

      return v99;
    }

    v46 = v13 + 64;
    v47 = 1 << *(v13 + 32);
    v48 = -1;
    if (v47 < 64)
    {
      v48 = ~(-1 << v47);
    }

    v2 = v48 & *(v13 + 64);
    v49 = (v47 + 63) >> 6;

    v50 = 0;
    v51 = &qword_2843DCA78;
    v126 = v13 + 64;
    v127 = v14;
    v125 = v49;
    v132 = v13;
    while (1)
    {
      while (1)
      {
        v136 = v12;
        if (!v2)
        {
          while (1)
          {
            v1 = v50 + 1;
            if (__OFADD__(v50, 1))
            {
              __break(1u);
              goto LABEL_103;
            }

            if (v1 >= v49)
            {
              break;
            }

            v2 = *(v46 + 8 * v1);
            v50 = (v50 + 1);
            if (v2)
            {
              goto LABEL_48;
            }
          }

          v91 = v12[2];
          v92 = MEMORY[0x277D84F90];
          if (v91)
          {
            v138 = MEMORY[0x277D84F90];
            sub_22F1464F4(0, v91, 0);
            v93 = v138;
            v94 = (v12 + 6);
            v95 = *(v138 + 16);
            v96 = v91;
            do
            {
              v97 = *v94;
              v98 = *(v138 + 24);
              if (v95 >= v98 >> 1)
              {
                sub_22F1464F4((v98 > 1), v95 + 1, 1);
              }

              *(v138 + 16) = v95 + 1;
              *(v138 + 4 * v95 + 32) = v97;
              v94 += 6;
              ++v95;
              --v96;
            }

            while (v96);
          }

          else
          {
            v93 = MEMORY[0x277D84F90];
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F20, &unk_22F781B68);
          v100 = swift_allocObject();
          *(v100 + 16) = xmmword_22F771340;
          *(v100 + 32) = v93;
          v101 = objc_allocWithZone(sub_22F73FBB0());
          v102 = MEMORY[0x2318FF750](v100);
          v103 = [objc_allocWithZone(MEMORY[0x277D22C38]) initWithWrapper_];

          if (v91)
          {
            sub_22F146454(0, v91, 0);
            v104 = v92;
            v105 = v136 + 5;
            do
            {
              v106 = *(v105 - 1);
              v107 = *v105;
              v109 = *(v104 + 16);
              v108 = *(v104 + 24);

              if (v109 >= v108 >> 1)
              {
                sub_22F146454((v108 > 1), v109 + 1, 1);
              }

              *(v104 + 16) = v109 + 1;
              v110 = v104 + 16 * v109;
              *(v110 + 32) = v106;
              *(v110 + 40) = v107;
              v105 += 3;
              --v91;
            }

            while (v91);
          }

          v111 = [v124 name];
          if (v111)
          {
            v112 = v111;
            v113 = sub_22F740E20();
            v115 = v114;
          }

          else
          {

            v113 = 0;
            v115 = 0xE000000000000000;
          }

          MEMORY[0x231900B10](v113, v115);

          v116 = objc_allocWithZone(MEMORY[0x277D22C08]);
          v117 = v103;
          v118 = sub_22F740DF0();
          v119 = sub_22F741160();
          v120 = sub_22F741160();

          v18 = [v116 initWithName:v118 rowLabels:v119 columnLabels:v120 matrix:v117];

          if (v18)
          {
          }

          else
          {
            sub_22F297A34();
            swift_allocError();
            *v121 = 0x6574746972776572;
            *(v121 + 8) = 0xE90000000000006ELL;
            *(v121 + 16) = 0;
            swift_willThrow();
          }

          return v18;
        }

        v1 = v50;
LABEL_48:
        v52 = __clz(__rbit64(v2)) | (v1 << 6);
        v53 = (*(v13 + 48) + 16 * v52);
        v54 = v53[1];
        v128 = *v53;
        v134 = *(*(v13 + 56) + 8 * v52);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0B98, &qword_22F770D10);
        v55 = sub_22F741DF0();
        v130 = v54;

        v56 = *v51;
        v5 = v51[1];
        v57 = v51;
        v58 = v51[2];
        v59 = v51[3];

        v60 = sub_22F1229E8(v56, v5);
        if (v61)
        {
          goto LABEL_105;
        }

        *(v55 + ((v60 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v60;
        v62 = (v55[6] + 16 * v60);
        *v62 = v56;
        v62[1] = v5;
        v63 = (v55[7] + 16 * v60);
        *v63 = v58;
        v63[1] = v59;
        v64 = v55[2];
        v65 = __OFADD__(v64, 1);
        v66 = v64 + 1;
        if (v65)
        {
          goto LABEL_106;
        }

        v55[2] = v66;
        v67 = qword_2843DCA98;
        v68 = off_2843DCAA0;
        v69 = qword_2843DCAA8;
        v5 = off_2843DCAB0;

        v70 = sub_22F1229E8(v67, v68);
        if (v71)
        {
LABEL_105:
          __break(1u);
LABEL_106:
          __break(1u);
LABEL_107:
          swift_once();
LABEL_29:
          v36 = sub_22F740B90();
          __swift_project_value_buffer(v36, qword_2810B4D90);

          v37 = v2;
          v38 = sub_22F740B70();
          v39 = sub_22F7415E0();
          if (os_log_type_enabled(v38, v39))
          {
            v40 = swift_slowAlloc();
            *v40 = 134218240;
            v41 = v5;
            v42 = v1;
            v43 = *(v41 + 2);

            *(v40 + 4) = v43;

            *(v40 + 12) = 2048;
            *(v40 + 14) = [v37 columns];

            _os_log_impl(&dword_22F0FC000, v38, v39, "[MemoriesMusic] [FeatureExtraction] Column labels count (%ld) does not match matrix column count (%ld)", v40, 0x16u);
            MEMORY[0x2319033A0](v40, -1, -1);

            return v42;
          }

          swift_bridgeObjectRelease_n();
          return v1;
        }

        *(v55 + ((v70 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v70;
        v72 = (v55[6] + 16 * v70);
        *v72 = v67;
        v72[1] = v68;
        v73 = (v55[7] + 16 * v70);
        *v73 = v69;
        v73[1] = v5;
        v74 = v55[2];
        v65 = __OFADD__(v74, 1);
        v75 = v74 + 1;
        if (v65)
        {
          goto LABEL_106;
        }

        v55[2] = v75;

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
        v51 = v57;
        swift_arrayDestroy();
        if (v55[2])
        {
          v77 = v128;
          v76 = v130;
          v78 = sub_22F1229E8(v128, v130);
          v79 = v127;
          v13 = v132;
          if (v80)
          {
            v81 = v78;

            v82 = (v55[7] + 16 * v81);
            v77 = *v82;
            v76 = v82[1];
          }
        }

        else
        {
          v79 = v127;
          v77 = v128;
          v76 = v130;
          v13 = v132;
        }

        v2 &= v2 - 1;

        v18 = v134;
        if (!*(v79 + 16))
        {
          break;
        }

        v83 = sub_22F1229E8(v77, v76);
        if ((v84 & 1) == 0)
        {
          break;
        }

        v85 = v83;

        v86 = *(*(v79 + 56) + 8 * v85);
        if ([v137 rows] < 1 || (v134 & 0x8000000000000000) != 0 || v134 >= objc_msgSend(v137, sel_columns))
        {
          sub_22F299300();
          swift_allocError();
          *v122 = 0;
          v122[1] = v134;
LABEL_100:
          swift_willThrow();

          return v18;
        }

        [v137 floatAtRow:0 column:v134];
        v88 = v87;
        if ([v137 rows] < 1 || v86 < 0 || v86 >= objc_msgSend(v137, sel_columns))
        {
          sub_22F299300();
          swift_allocError();
          *v123 = 0;
          v123[1] = v86;
          goto LABEL_100;
        }

        [v137 floatAtRow:0 column:v86];
        v12 = v136;
        if (v89 < v88)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_22F2F2CA8(v136);
            v12 = result;
          }

          if (v86 >= v12[2])
          {
            goto LABEL_111;
          }

          *&v12[3 * v86 + 6] = v88;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v49 = v125;
        if ((result & 1) == 0)
        {
          result = sub_22F2F2CA8(v12);
          v12 = result;
        }

        v46 = v126;
        if (v134 >= v12[2])
        {
          goto LABEL_110;
        }

        LODWORD(v12[3 * v134 + 6]) = 0;
        v50 = v1;
      }

      v12 = v136;
      result = swift_isUniquelyReferenced_nonNull_native();
      if (result)
      {
        if ((v134 & 0x8000000000000000) != 0)
        {
          goto LABEL_108;
        }
      }

      else
      {
        result = sub_22F2F2CA8(v136);
        v12 = result;
        if ((v134 & 0x8000000000000000) != 0)
        {
LABEL_108:
          __break(1u);
LABEL_109:
          __break(1u);
LABEL_110:
          __break(1u);
LABEL_111:
          __break(1u);
          return result;
        }
      }

      if (v134 >= v12[2])
      {
        goto LABEL_109;
      }

      v90 = &v12[3 * v134];
      v90[4] = v77;
      v90[5] = v76;

      v50 = v1;
      v49 = v125;
      v46 = v126;
    }
  }

  v10 = 0;
  v11 = v5 + 40;
  v12 = MEMORY[0x277D84F90];
  v133 = *(v5 + 2);
  v129 = v9 - 1;
  v13 = MEMORY[0x277D84F98];
  v14 = MEMORY[0x277D84F98];
  v135 = v5;
LABEL_7:
  v131 = v13;
  v15 = v14;
  v16 = &v11[16 * v10];
  while (1)
  {
    if (v10 >= *(v5 + 2))
    {
LABEL_103:
      __break(1u);
      goto LABEL_104;
    }

    v18 = *(v16 - 1);
    v17 = *v16;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_22F131078(v10, v18, v17, isUniquelyReferenced_nonNull_native);
    if ([v2 rows] <= 0 || v10 >= objc_msgSend(v2, sel_columns))
    {
      break;
    }

    [v2 floatAtRow:0 column:v10];
    v21 = v20;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v12 = sub_22F13F76C(0, v12[2] + 1, 1, v12);
    }

    v23 = v12[2];
    v22 = v12[3];
    v1 = v12;
    if (v23 >= v22 >> 1)
    {
      v1 = sub_22F13F76C((v22 > 1), v23 + 1, 1, v12);
    }

    *(v1 + 16) = v23 + 1;
    v24 = (v1 + 24 * v23);
    *(v24 + 4) = v18;
    *(v24 + 5) = v17;
    v24[12] = v21;
    sub_22F14F0AC(&unk_2843DC9F8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E48, &unk_22F7711F0);
    swift_arrayDestroy();
    v25 = sub_22F1534D0();
    v26 = sub_22F15E910(v18, v17, v25);

    if ((v26 & 1) != 0 && v21 > 0.0)
    {
      v27 = swift_isUniquelyReferenced_nonNull_native();
      sub_22F131078(v10, v18, v17, v27);

      v2 = v137;
      v28 = v129 == v10++;
      v14 = v15;
      v13 = v131;
      v12 = v1;
      v5 = v135;
      if (v28)
      {
        goto LABEL_39;
      }

      goto LABEL_7;
    }

    ++v10;

    v16 += 2;
    v5 = v135;
    v2 = v137;
    v12 = v1;
    if (v133 == v10)
    {
      v14 = v15;
      v13 = v131;
      goto LABEL_39;
    }
  }

  sub_22F299300();
  swift_allocError();
  *v45 = 0;
  v45[1] = v10;
  swift_willThrow();

  return v18;
}

unint64_t sub_22F299300()
{
  result = qword_27DAB2F18;
  if (!qword_27DAB2F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F18);
  }

  return result;
}

uint64_t sub_22F299354(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F2993C4@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  result = sub_22F288380(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = result;
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph36MaestroMusicCurationFeatureExtractorV0d7Curatorc7KeywordF15ExtractionError33_ADE8CC9DCE9E7513BF8BFAD382AEF020LLO(uint64_t a1)
{
  if ((*(a1 + 16) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 16) & 3;
  }
}

uint64_t sub_22F299488(uint64_t a1)
{
  v2 = sub_22F299680();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2994C4(uint64_t a1)
{
  v2 = sub_22F299680();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicKitCatalogSongResponse.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2F28, &unk_22F781CF0);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F299680();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F2996D4();
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

unint64_t sub_22F299680()
{
  result = qword_2810AA140;
  if (!qword_2810AA140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA140);
  }

  return result;
}

unint64_t sub_22F2996D4()
{
  result = qword_2810A9320;
  if (!qword_2810A9320)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB1EE8, &qword_22F777808);
    sub_22F1A8480();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810A9320);
  }

  return result;
}

unint64_t sub_22F299794()
{
  result = qword_27DAB2F30;
  if (!qword_27DAB2F30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB2F30);
  }

  return result;
}

unint64_t sub_22F2997EC()
{
  result = qword_2810AA130;
  if (!qword_2810AA130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA130);
  }

  return result;
}

unint64_t sub_22F299844()
{
  result = qword_2810AA138;
  if (!qword_2810AA138)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_2810AA138);
  }

  return result;
}

uint64_t sub_22F299910()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F299954(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t *sub_22F299A7C(char *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v61 = *(v7 - 8);
  v62 = v7;
  MEMORY[0x28223BE20](v7);
  v60 = v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = v59 - v10;
  v12 = sub_22F73F690();
  v13 = *(v12 - 8);
  v65 = v12;
  v66 = v13;
  MEMORY[0x28223BE20](v12);
  v15 = v59 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v64 = v59 - v17;
  v18 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v18;
  v63 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_triggerResults) = MEMORY[0x277D84F90];
  v20 = a2[3];
  v19 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v20);
  v21 = (*(v19 + 16))(v20, v19);
  if (v21)
  {
    v22 = v21;
    v59[1] = v6;
    v23 = a2[3];
    v24 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v23);
    v25 = (*(v24 + 24))(v23, v24);
    sub_22F29A0E8(v11);

    if ((*(v66 + 48))(v11, 1, v65) == 1)
    {
      sub_22F15FCF0(v11);
      v26 = sub_22F740B70();
      v27 = sub_22F7415E0();
      if (os_log_type_enabled(v26, v27))
      {
        v28 = swift_slowAlloc();
        *v28 = 0;
        _os_log_impl(&dword_22F0FC000, v26, v27, "Unable to get first date in library", v28, 2u);
        MEMORY[0x2319033A0](v28, -1, -1);
      }
    }

    else
    {
      v37 = v65;
      v36 = v66;
      v38 = v64;
      (*(v66 + 32))(v64, v11, v65);
      LOBYTE(v67[0]) = v18;
      v39 = v38;
      v40 = a2[3];
      v41 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v40);
      (*(v41 + 8))(v40, v41);
      v42 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v38, v15);
      v43 = *(v36 + 8);
      v44 = v15;
      v66 = v36 + 8;
      v45 = v43;
      v46 = (v43)(v44, v37);
      MEMORY[0x28223BE20](v46);
      v59[-2] = v42;
      v59[-1] = v22;
      v47 = sub_22F2A1FCC(sub_22F29B650, &v59[-4]);

      v48 = a2[3];
      v49 = a2[4];
      __swift_project_boxed_opaque_existential_1(a2, v48);
      v50 = sub_22F2A6EB8(v47, v48, v49);

      if (v50)
      {
        v52 = v61;
        v51 = v62;
        v53 = v39;
        v54 = v60;
        (*(v61 + 104))(v60, *MEMORY[0x277D3C468], v62);
        v55 = static CollectionTrigger.generateTriggerResults(from:type:)(v50, v54);

        (*(v52 + 8))(v54, v51);
        v45(v53, v65);
        v56 = v63;
        swift_beginAccess();
        *(v3 + v56) = v55;
      }

      else
      {

        v45(v39, v65);
        v57 = v63;
        swift_beginAccess();
        *(v3 + v57) = MEMORY[0x277D84F90];
      }
    }
  }

  else
  {
    v29 = sub_22F740B70();
    v30 = sub_22F7415C0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v67[0] = v32;
      *v31 = 136315138;
      v33 = sub_22F742240();
      v35 = sub_22F145F20(v33, v34, v67);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22F0FC000, v29, v30, "GraphWorkingContext not available. Skipping %s trigger", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v31, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

void sub_22F29A0E8(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  *&v5 = MEMORY[0x28223BE20](v4 - 8).n128_u64[0];
  v7 = &v22 - v6;
  v8 = [v2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771EB0;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:1];

  *(v9 + 32) = v12;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v13 = sub_22F741160();

  [v8 setSortDescriptors_];

  [v8 setFetchLimit_];
  v23 = [objc_opt_self() fetchAssetsWithOptions_];
  v14 = [v23 firstObject];
  if (v14)
  {
    v15 = v14;
    v16 = [v14 creationDate];
    if (v16)
    {
      v17 = v16;
      sub_22F73F640();

      v18 = sub_22F73F690();
      (*(*(v18 - 8) + 56))(v7, 0, 1, v18);
    }

    else
    {

      v21 = sub_22F73F690();
      (*(*(v21 - 8) + 56))(v7, 1, 1, v21);
    }

    sub_22F168438(v7, a1);
  }

  else
  {
    v19 = sub_22F73F690();
    (*(*(v19 - 8) + 56))(a1, 1, 1, v19);

    v20 = v23;
  }
}

uint64_t sub_22F29A438()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph16HistoricalPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F29A48C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;

  return result;
}

uint64_t sub_22F29A568()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F29A5AC(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t *sub_22F29A6D4(char *a1, void *a2)
{
  v3 = v2;
  v6 = *v3;
  v7 = sub_22F740460();
  v67 = *(v7 - 8);
  v68 = v7;
  MEMORY[0x28223BE20](v7);
  v66 = &v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v61 - v10;
  v12 = sub_22F73F690();
  v71 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v69 = &v61 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v70 = &v61 - v15;
  v16 = *a1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_futureLookupResults) = 0;
  *(v3 + 16) = 2 - v16;
  v65 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_triggerResults) = MEMORY[0x277D84F90];
  v17 = a2[3];
  v18 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v17);
  v19 = (*(v18 + 16))(v17, v18);
  if (v19)
  {
    v20 = v19;
    v63 = v6;
    v64 = v3;
    v21 = a2[3];
    v22 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v21);
    v23 = (*(v22 + 24))(v21, v22);
    sub_22F29A0E8(v11);

    v24 = v71;
    if ((*(v71 + 48))(v11, 1, v12) == 1)
    {
      sub_22F15FCF0(v11);
      v3 = v64;
      v25 = sub_22F740B70();
      v26 = sub_22F7415E0();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_22F0FC000, v25, v26, "Unable to get first date in library", v27, 2u);
        MEMORY[0x2319033A0](v27, -1, -1);
      }

      goto LABEL_14;
    }

    v35 = v70;
    (*(v24 + 32))(v70, v11, v12);
    LOBYTE(v72) = v16;
    v36 = a2[3];
    v37 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v36);
    v38 = v69;
    (*(v37 + 8))(v36, v37);
    v39 = HistoricalInterval.annualDateIntervals(startDate:currentDate:)(v35, v38);
    v40 = *(v24 + 8);
    v69 = v12;
    v71 = v24 + 8;
    v41 = v40(v38, v12);
    MEMORY[0x28223BE20](v41);
    *(&v61 - 2) = v39;
    *(&v61 - 1) = v20;
    v42 = sub_22F2A1FCC(sub_22F29B648, (&v61 - 4));

    v43 = a2[3];
    v44 = a2[4];
    __swift_project_boxed_opaque_existential_1(a2, v43);
    v45 = (*(v44 + 24))(v43, v44);
    v46 = [v45 librarySpecificFetchOptions];

    [v46 setPersonContext_];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v47 = swift_allocObject();
    *(v47 + 16) = xmmword_22F771350;
    *(v47 + 32) = sub_22F742140();
    *(v47 + 40) = sub_22F742140();
    sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
    v48 = sub_22F741160();

    [v46 setIncludedDetectionTypes_];

    v49 = *(v42 + 16);
    v62 = v40;
    if (v49)
    {
      v50 = sub_22F10B348(v49, 0);
      v51 = sub_22F11A438(&v72, v50 + 4, v49, v42);
      sub_22F1534EC(v72);
      if (v51 == v49)
      {
LABEL_13:
        v3 = v64;
        v52 = objc_opt_self();
        v53 = sub_22F741160();

        v54 = [v52 fetchPersonsWithLocalIdentifiers:v53 options:v46];

        v56 = v66;
        v55 = v67;
        v57 = v68;
        (*(v67 + 104))(v66, *MEMORY[0x277D3C468], v68);
        v58 = static CollectionTrigger.generateTriggerResults(from:type:)(v54, v56);

        (*(v55 + 8))(v56, v57);
        v62(v70, v69);
        v59 = v65;
        swift_beginAccess();
        *(v3 + v59) = v58;

        goto LABEL_14;
      }

      __break(1u);
    }

    goto LABEL_13;
  }

  v28 = sub_22F740B70();
  v29 = sub_22F7415C0();
  if (os_log_type_enabled(v28, v29))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v72 = v31;
    *v30 = 136315138;
    v32 = sub_22F742240();
    v34 = sub_22F145F20(v32, v33, &v72);

    *(v30 + 4) = v34;
    _os_log_impl(&dword_22F0FC000, v28, v29, "GraphWorkingContext not available. Skipping %s trigger", v30, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v31);
    MEMORY[0x2319033A0](v31, -1, -1);
    MEMORY[0x2319033A0](v30, -1, -1);
  }

LABEL_14:
  __swift_destroy_boxed_opaque_existential_0(a2);
  return v3;
}

uint64_t sub_22F29AEA8(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_22F740B90();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return v1;
}

uint64_t sub_22F29AF48(uint64_t *a1)
{
  v2 = *a1;
  v3 = sub_22F740B90();
  (*(*(v3 - 8) + 8))(v1 + v2, v3);

  return swift_deallocClassInstance();
}

double sub_22F29B014(uint64_t a1, uint64_t a2, uint64_t *a3)
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F29B05C()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14HistoricalPets_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double keypath_get_1Tm@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X3>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);

  return result;
}

void keypath_get_3Tm(uint64_t *a1@<X0>, uint64_t *a2@<X3>, _BYTE *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  swift_beginAccess();
  *a3 = *(v4 + v5);
}

void keypath_set_4Tm(char *a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *a5;
  swift_beginAccess();
  *(v6 + v7) = v5;
}

uint64_t sub_22F29B3C4(uint64_t a1)
{
  result = sub_22F740B90();
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

id static SongPlaybackInfoEntry.songPlaybackInfoFetchRequest()()
{
  swift_beginAccess();
  v0 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v1 = sub_22F740DF0();

  v2 = [v0 initWithEntityName_];

  return v2;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SongPlaybackInfoEntry.playbackInfo()(PhotosGraph::PlaybackInfo *__return_ptr retstr)
{
  v2 = v1;
  v4 = [v1 dateUTC];
  if (!v4)
  {
    goto LABEL_86;
  }

  v5 = v4;
  v6 = sub_22F740E20();
  v8 = v7;

  v9 = [v2 hoursUTC];
  if (!v9)
  {
LABEL_85:

LABEL_86:
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
    return;
  }

  v77 = v6;
  v10 = v9;
  v11 = sub_22F740E20();
  v13 = v12;

  v75 = v11;
  v76 = v13;
  sub_22F160DE4();
  v14 = sub_22F7418B0();

  v15 = [v2 devices];
  if (!v15)
  {

    goto LABEL_85;
  }

  v74 = v8;
  v16 = v15;
  v17 = sub_22F740E20();
  v19 = v18;

  v75 = v17;
  v76 = v19;
  v20 = sub_22F7418B0();

  v21 = [v2 lastEndReason];
  if (!v21)
  {

    goto LABEL_85;
  }

  v73 = v20;
  v22 = v21;
  v23 = sub_22F740E20();
  v71 = v24;
  v72 = v23;

  v25 = *(v14 + 16);
  if (!v25)
  {
    v28 = MEMORY[0x277D84F90];
LABEL_88:
    v63 = v28;

    v64 = [v2 playDurationInMilliseconds];
    v65 = [v2 playCount];
    v66 = [v2 skipCount];
    v67 = [v2 ignoreForRecommendations];
    retstr->dateUTC._countAndFlagsBits = v77;
    retstr->dateUTC._object = v74;
    retstr->hoursUTC._rawValue = v63;
    retstr->playDurationInMilliseconds = v64;
    retstr->playCount = v65;
    retstr->skipCount = v66;
    retstr->lastEndReason._countAndFlagsBits = v72;
    retstr->lastEndReason._object = v71;
    retstr->devices._rawValue = v73;
    retstr->ignoreForRecommendations = v67;
    return;
  }

  v26 = 0;
  v27 = &v75 + 1;
  v28 = MEMORY[0x277D84F90];
  while (v26 < *(v14 + 16))
  {
    v29 = (v14 + 32 + 16 * v26);
    v31 = *v29;
    v30 = v29[1];
    ++v26;
    v32 = HIBYTE(v30) & 0xF;
    v33 = v31 & 0xFFFFFFFFFFFFLL;
    if ((v30 & 0x2000000000000000) != 0)
    {
      v34 = HIBYTE(v30) & 0xF;
    }

    else
    {
      v34 = v31 & 0xFFFFFFFFFFFFLL;
    }

    if (!v34)
    {
      goto LABEL_70;
    }

    if ((v30 & 0x1000000000000000) != 0)
    {
      v69 = v28;

      sub_22F29C288(v31, v30, 10);
      v37 = v55;
      v68 = v56;

      if (v68)
      {
        v28 = v69;
        v27 = &v75 + 1;
        goto LABEL_70;
      }

      v28 = v69;
LABEL_76:
      v59 = v28;
      v70 = retstr;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v59 = sub_22F13E69C(0, *(v59 + 2) + 1, 1, v59);
      }

      v28 = v59;
      v61 = *(v59 + 2);
      v60 = *(v59 + 3);
      v27 = &v75 + 1;
      if (v61 >= v60 >> 1)
      {
        v62 = sub_22F13E69C((v60 > 1), v61 + 1, 1, v59);
        v27 = &v75 + 1;
        v28 = v62;
      }

      *(v28 + 2) = v61 + 1;
      *&v28[8 * v61 + 32] = v37;
      retstr = v70;
      if (v26 == v25)
      {
        goto LABEL_88;
      }
    }

    else
    {
      if ((v30 & 0x2000000000000000) != 0)
      {
        v75 = v31;
        v76 = v30 & 0xFFFFFFFFFFFFFFLL;
        if (v31 == 43)
        {
          if (!v32)
          {
            goto LABEL_90;
          }

          if (--v32)
          {
            v37 = 0;
            v47 = v27;
            while (1)
            {
              v48 = *v47 - 48;
              if (v48 > 9)
              {
                break;
              }

              v49 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v49 + v48;
              if (__OFADD__(v49, v48))
              {
                break;
              }

              ++v47;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v31 == 45)
        {
          if (!v32)
          {
            goto LABEL_92;
          }

          if (--v32)
          {
            v37 = 0;
            v41 = v27;
            while (1)
            {
              v42 = *v41 - 48;
              if (v42 > 9)
              {
                break;
              }

              v43 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v43 - v42;
              if (__OFSUB__(v43, v42))
              {
                break;
              }

              ++v41;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v32)
        {
          v37 = 0;
          v52 = &v75;
          while (1)
          {
            v53 = *v52 - 48;
            if (v53 > 9)
            {
              break;
            }

            v54 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v54 + v53;
            if (__OFADD__(v54, v53))
            {
              break;
            }

            v52 = (v52 + 1);
            if (!--v32)
            {
              goto LABEL_69;
            }
          }
        }
      }

      else
      {
        if ((v31 & 0x1000000000000000) != 0)
        {
          v35 = ((v30 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v57 = v28;
          v58 = v27;
          v35 = sub_22F741B80();
          v27 = v58;
          v28 = v57;
        }

        v36 = *v35;
        if (v36 == 43)
        {
          if (v33 < 1)
          {
            goto LABEL_93;
          }

          v32 = v33 - 1;
          if (v33 != 1)
          {
            v37 = 0;
            if (!v35)
            {
              goto LABEL_60;
            }

            v44 = v35 + 1;
            while (1)
            {
              v45 = *v44 - 48;
              if (v45 > 9)
              {
                break;
              }

              v46 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v46 + v45;
              if (__OFADD__(v46, v45))
              {
                break;
              }

              ++v44;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v36 == 45)
        {
          if (v33 < 1)
          {
            goto LABEL_91;
          }

          v32 = v33 - 1;
          if (v33 != 1)
          {
            v37 = 0;
            if (!v35)
            {
              goto LABEL_60;
            }

            v38 = v35 + 1;
            while (1)
            {
              v39 = *v38 - 48;
              if (v39 > 9)
              {
                break;
              }

              v40 = 10 * v37;
              if ((v37 * 10) >> 64 != (10 * v37) >> 63)
              {
                break;
              }

              v37 = v40 - v39;
              if (__OFSUB__(v40, v39))
              {
                break;
              }

              ++v38;
              if (!--v32)
              {
                goto LABEL_69;
              }
            }
          }
        }

        else if (v33)
        {
          v37 = 0;
          if (!v35)
          {
LABEL_60:
            LOBYTE(v32) = 0;
            goto LABEL_69;
          }

          while (1)
          {
            v50 = *v35 - 48;
            if (v50 > 9)
            {
              break;
            }

            v51 = 10 * v37;
            if ((v37 * 10) >> 64 != (10 * v37) >> 63)
            {
              break;
            }

            v37 = v51 + v50;
            if (__OFADD__(v51, v50))
            {
              break;
            }

            ++v35;
            if (!--v33)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v37 = 0;
      LOBYTE(v32) = 1;
LABEL_69:
      if ((v32 & 1) == 0)
      {
        goto LABEL_76;
      }

LABEL_70:
      if (v26 == v25)
      {
        goto LABEL_88;
      }
    }
  }

  __break(1u);
LABEL_90:
  __break(1u);
LABEL_91:
  __break(1u);
LABEL_92:
  __break(1u);
LABEL_93:
  __break(1u);
}

id SongPlaybackInfoEntry.__allocating_init(entity:insertInto:)(void *a1, void *a2)
{
  v5 = [objc_allocWithZone(v2) initWithEntity:a1 insertIntoManagedObjectContext:a2];

  return v5;
}

id SongPlaybackInfoEntry.init(entity:insertInto:)(void *a1, void *a2)
{
  v7.receiver = v2;
  v7.super_class = type metadata accessor for SongPlaybackInfoEntry();
  v5 = objc_msgSendSuper2(&v7, sel_initWithEntity_insertIntoManagedObjectContext_, a1, a2);

  return v5;
}

id SongPlaybackInfoEntry.__deallocating_deinit(uint64_t a1)
{
  v3.receiver = v1;
  v3.super_class = type metadata accessor for SongPlaybackInfoEntry();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

uint64_t static SongPlaybackInfoEntry.entityName.getter()
{
  swift_beginAccess();
  v0 = qword_27DAB2F58;

  return v0;
}

double static SongPlaybackInfoEntry.entityName.setter(uint64_t a1, char *a2)
{
  swift_beginAccess();
  qword_27DAB2F58 = a1;
  off_27DAB2F60 = a2;

  return result;
}

id static SongPlaybackInfoEntry.insert(in:dateUTC:hoursUTC:lastEndReason:playCount:skipCount:playDurationInMilliseconds:devices:ignoreForRecommendations:)(id a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, void *a12, char a13)
{
  v16 = objc_opt_self();
  swift_beginAccess();

  v17 = sub_22F740DF0();

  v18 = [v16 entityForName:v17 inManagedObjectContext:a1];

  if (v18)
  {
    a1 = [objc_allocWithZone(type metadata accessor for SongPlaybackInfoEntry()) initWithEntity:v18 insertIntoManagedObjectContext:a1];

    v19 = sub_22F740DF0();
    [a1 setDateUTC_];

    if (a5)
    {
      v20 = sub_22F740DF0();
    }

    else
    {
      v20 = 0;
    }

    v21 = a12;
    [a1 setHoursUTC_];

    if (a7)
    {
      a7 = sub_22F740DF0();
    }

    [a1 setLastEndReason_];

    [a1 setPlayCount_];
    [a1 setSkipCount_];
    [a1 setPlayDurationInMilliseconds_];
    if (a12)
    {
      v21 = sub_22F740DF0();
    }

    [a1 setDevices_];

    [a1 setIgnoreForRecommendations_];
  }

  else
  {
    sub_22F162D98();
    swift_allocError();
    swift_willThrow();
  }

  return a1;
}

uint64_t sub_22F29C1C0()
{
  swift_beginAccess();
  v0 = qword_27DAB2F58;

  return v0;
}

void *sub_22F29C214(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13E8, &qword_22F771808);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

void sub_22F29C288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_22F741040();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_22F29C838(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_22F741B80();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_22F29C838(uint64_t a1, unint64_t a2)
{
  v2 = sub_22F741050();
  v6 = sub_22F29C8B8(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_22F29C8B8(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_22F741880();
    if (!v9 || (v10 = v9, v11 = sub_22F29C214(v9, 0), v12 = sub_22F29CA10(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_22F740EF0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_22F740EF0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_22F741B80();
LABEL_4:

  return sub_22F740EF0();
}

unint64_t sub_22F29CA10(unint64_t result, uint64_t a2, uint64_t a3, unint64_t a4, unint64_t a5, unint64_t a6, unint64_t a7)
{
  v9 = result;
  if (!a2)
  {
    goto LABEL_5;
  }

  if (!a3)
  {
    v12 = a4;
    v11 = 0;
    goto LABEL_34;
  }

  if (a3 < 0)
  {
    goto LABEL_38;
  }

  v10 = a5 >> 14;
  v27 = a4 >> 14;
  if (a4 >> 14 == a5 >> 14)
  {
LABEL_5:
    v11 = 0;
    v12 = a4;
LABEL_34:
    *v9 = a4;
    v9[1] = a5;
    v9[2] = a6;
    v9[3] = a7;
    v9[4] = v12;
    return v11;
  }

  v11 = 0;
  v14 = (a6 >> 59) & 1;
  if ((a7 & 0x1000000000000000) == 0)
  {
    LOBYTE(v14) = 1;
  }

  v15 = 4 << v14;
  v21 = (a7 & 0xFFFFFFFFFFFFFFFLL) + 32;
  v22 = a7 & 0xFFFFFFFFFFFFFFLL;
  v16 = HIBYTE(a7) & 0xF;
  if ((a7 & 0x2000000000000000) == 0)
  {
    v16 = a6 & 0xFFFFFFFFFFFFLL;
  }

  v23 = v16;
  v26 = a3 - 1;
  v12 = a4;
  while (1)
  {
    v17 = v12 & 0xC;
    result = v12;
    if (v17 == v15)
    {
      result = sub_22F1D244C(v12, a6, a7);
    }

    if (result >> 14 < v27 || result >> 14 >= v10)
    {
      break;
    }

    if ((a7 & 0x1000000000000000) != 0)
    {
      result = sub_22F740FC0();
      v19 = result;
      if (v17 != v15)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v18 = result >> 16;
      if ((a7 & 0x2000000000000000) != 0)
      {
        v28[0] = a6;
        v28[1] = v22;
        v19 = *(v28 + v18);
        if (v17 != v15)
        {
          goto LABEL_23;
        }
      }

      else
      {
        result = v21;
        if ((a6 & 0x1000000000000000) == 0)
        {
          result = sub_22F741B80();
        }

        v19 = *(result + v18);
        if (v17 != v15)
        {
LABEL_23:
          if ((a7 & 0x1000000000000000) == 0)
          {
            goto LABEL_24;
          }

          goto LABEL_27;
        }
      }
    }

    result = sub_22F1D244C(v12, a6, a7);
    v12 = result;
    if ((a7 & 0x1000000000000000) == 0)
    {
LABEL_24:
      v12 = (v12 & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_29;
    }

LABEL_27:
    if (v23 <= v12 >> 16)
    {
      goto LABEL_37;
    }

    result = sub_22F740FA0();
    v12 = result;
LABEL_29:
    *(a2 + v11) = v19;
    if (v26 == v11)
    {
      v11 = a3;
      goto LABEL_34;
    }

    if (__OFADD__(v11 + 1, 1))
    {
      goto LABEL_36;
    }

    ++v11;
    if (v10 == v12 >> 14)
    {
      goto LABEL_34;
    }
  }

  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
  return result;
}

id ElectedSocialGroup.__allocating_init(socialGroup:assetCount:score:)(uint64_t a1, uint64_t a2, double a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = a1;
  *&v7[OBJC_IVAR___PGElectedSocialGroup_assetCount] = a2;
  *&v7[OBJC_IVAR___PGElectedSocialGroup_score] = a3;
  v9.receiver = v7;
  v9.super_class = v3;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ElectedSocialGroup.init(socialGroup:assetCount:score:)(uint64_t a1, uint64_t a2, double a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = a1;
  *&v3[OBJC_IVAR___PGElectedSocialGroup_assetCount] = a2;
  *&v3[OBJC_IVAR___PGElectedSocialGroup_score] = a3;
  v9.receiver = v3;
  v9.super_class = ObjectType;
  return objc_msgSendSuper2(&v9, sel_init);
}

id ElectedSocialGroup.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupsElector.__allocating_init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
  *&v5[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id SocialGroupsElector.init(graph:photoLibrary:)(uint64_t a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR___PGSocialGroupsElector_graph] = a1;
  *&v2[OBJC_IVAR___PGSocialGroupsElector_photoLibrary] = a2;
  v7.receiver = v2;
  v7.super_class = ObjectType;
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t SocialGroupsElector.electSocialGroups(maxNumberOfElectedSocialGroups:progressReporter:)(char **a1, uint64_t a2)
{
  v4 = v2;
  sub_22F741690();
  if (v3)
  {
    return a2;
  }

  v7 = 0;
  if (qword_2810A9BB0 != -1)
  {
    goto LABEL_87;
  }

LABEL_3:
  v8 = qword_2810B4E80;
  *&v9 = CACurrentMediaTime();
  sub_22F1B560C("SocialGroupElection", 19, 2u, v9, 0, v8, v162);
  v163 = MEMORY[0x277D84F90];
  sub_22F120634(0, &qword_2810A8F78, off_27887B3E0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v10);
  v133 = v4;
  v12 = *&v4[OBJC_IVAR___PGSocialGroupsElector_graph];
  v13 = [ObjCClassFromMetadata nodesInGraph_];
  v14 = [v13 array];

  sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
  v15 = sub_22F741180();

  v161 = v15;
  v131 = a1;
  if (v15 >> 62)
  {
    v16 = sub_22F741A00();
  }

  else
  {
    v16 = *((v15 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v17 = [objc_opt_self() progressWithTotalUnitCount_];
  v18 = swift_allocObject();
  *(v18 + 16) = a2;
  v19 = objc_allocWithZone(MEMORY[0x277D3AD50]);
  v159 = sub_22F2A07FC;
  v160 = v18;
  aBlock = MEMORY[0x277D85DD0];
  v156 = 1107296256;
  v157 = sub_22F29ECA0;
  v158 = &block_descriptor_18;
  v20 = _Block_copy(&aBlock);
  v21 = v17;
  a2;

  v132 = [v19 initWithSourceProgress:v21 progressHandler:v20];
  _Block_release(v20);
  v143 = v21;

  sub_22F29E248(&v161, sub_22F2F45E0, sub_22F29EE08);
  v130 = v7;
  v22 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v23 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v24 = [objc_allocWithZone(MEMORY[0x277D22BB0]) init];
  v153 = v12;
  v25 = [v12 meNodeWithFallbackInferredMeNode];
  if (v25)
  {
    v26 = v25;
    v27 = [v25 collection];
    v28 = [v27 familyPersonNodes];

    v29 = [v28 elementIdentifiers];
    v30 = [v26 collection];
    v139 = v23;
    v31 = [v30 partnerPersonNodes];

    v32 = [v31 elementIdentifiers];
    v33 = [v29 identifierSetByFormingUnion_];

    v34 = [v26 collection];
    v35 = [v34 friendPersonNodes];

    v36 = [v35 elementIdentifiers];
    v37 = [v26 collection];
    v38 = [v37 partnerPersonNodes];

    v39 = [v38 elementIdentifiers];
    v40 = v36;
    v23 = v39;
    v41 = v33;
  }

  else
  {
    v41 = v22;
    v40 = v24;
  }

  v42 = *&v133[OBJC_IVAR___PGSocialGroupsElector_photoLibrary];
  v43 = [objc_allocWithZone(MEMORY[0x277CD99F8]) initWithPhotoLibrary_];
  v44 = [v43 personUUIDsWithNegativeFeedback];

  v146 = sub_22F741420();
  v45 = objc_opt_self();
  v46 = [v42 librarySpecificFetchOptions];
  v47 = [v45 fetchSocialGroupsWithOptions_];

  v48 = type metadata accessor for SocialGroupsPromoter();
  v49 = swift_allocObject();
  *(v49 + 16) = MEMORY[0x277D84F98];
  v138 = v42;
  v50 = sub_22F32AFB4(v42);
  v51 = swift_allocObject();
  v51[2] = v50;
  v51[3] = v48;
  v51[4] = v49;
  v159 = sub_22F2A081C;
  v160 = v51;
  aBlock = MEMORY[0x277D85DD0];
  v156 = 1107296256;
  v157 = sub_22F1D4AD0;
  v158 = &block_descriptor_9;
  v4 = _Block_copy(&aBlock);
  a1 = v160;
  v52 = v50;

  v129 = v47;
  [v47 enumerateObjectsUsingBlock_];

  _Block_release(v4);
  swift_beginAccess();
  v137 = *(v49 + 16);

  v53 = v161;
  v141 = sub_22F32B11C(v161, v153);
  if (v53 >> 62)
  {
    v7 = sub_22F741A00();
  }

  else
  {
    v7 = *((v53 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v54 = v41;
  a2 = v40;
  if (v7)
  {
    v41 = 0;
    v144 = v7;
    v145 = v53 & 0xC000000000000001;
    v135 = v53 + 32;
    v136 = v53 & 0xFFFFFFFFFFFFFF8;
    v140 = v23;
    v134 = v53;
    while (1)
    {
      if (v145)
      {
        v59 = MEMORY[0x2319016F0](v41, v53);
      }

      else
      {
        if (v41 >= *(v136 + 16))
        {
          goto LABEL_85;
        }

        v59 = *(v135 + 8 * v41);
      }

      v148 = v59;
      v60 = __OFADD__(v41, 1);
      v61 = (v41 + 1);
      if (v60)
      {
        __break(1u);
LABEL_85:
        __break(1u);
LABEL_86:
        __break(1u);
LABEL_87:
        swift_once();
        goto LABEL_3;
      }

      v147 = v61;
      v40 = v59;
      v62 = [objc_allocWithZone(PGGraphSocialGroupNodeCollection) initWithNode_];
      a1 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
      v63 = [v62 memberNodes];

      v64 = [v63 uuids];
      v4 = sub_22F741420();

      v65 = sub_22F1ABBB4(v146, v4)[2];

      if (!v65)
      {
        break;
      }

LABEL_14:
      v7 = v144;

      v41 = v147;
      if (v147 == v144)
      {
        goto LABEL_52;
      }
    }

    v153 = a2;
    v151 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    v149 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
    v66 = [v148 collection];
    v67 = [v66 memberNodes];

    v68 = [v67 elementIdentifiers];
    v4 = [v23 identifierSetByIntersectingIdentifierSet_];

    v142 = [v4 count];
    v7 = [v148 sortedMemberNodes];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
    v69 = sub_22F741180();

    if (v69 >> 62)
    {
      v70 = sub_22F741A00();
      if (!v70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      v70 = *((v69 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v70)
      {
        goto LABEL_34;
      }
    }

    if (v70 < 1)
    {
      goto LABEL_86;
    }

    for (i = 0; i != v70; ++i)
    {
      if ((v69 & 0xC000000000000001) != 0)
      {
        v72 = MEMORY[0x2319016F0](i, v69);
      }

      else
      {
        v72 = *(v69 + 8 * i + 32);
      }

      v73 = v72;
      v74 = v54;
      v75 = [v54 containsIdentifier_];
      v76 = [v73 identifier];
      if (v75)
      {
        [v151 addIdentifier_];
      }

      else if ([a2 containsIdentifier_])
      {
        [v73 identifier];
        [v149 addIdentifier_];
      }

      v54 = v74;
    }

LABEL_34:

    v56 = v151;
    v152 = [v54 identifierSetBySubtractingIdentifierSet_];

    v58 = v149;
    v150 = [a2 identifierSetBySubtractingIdentifierSet_];

    a1 = &selRef_maximumTimeDecayScoreByPastMemoryIdentifier;
    v77 = [v148 memberNodes];
    v78 = sub_22F741420();

    v79 = *(v78 + 16);

    if (v79)
    {
      v80 = [v56 count];

      v81 = v80;
      v82 = [v148 memberNodes];
      v83 = sub_22F741420();

      v84 = *(v83 + 16);

      v85 = v81 / v84 * 0.75;
      v86 = [v58 count];

      v87 = v86;
      v88 = [v148 memberNodes];
      v89 = sub_22F741420();

      v90 = *(v89 + 16);

      v91 = v87 / v90 * 0.5;
      v92 = v148;
      if (v142 <= 0)
      {
        v93 = 0.0;
        a2 = v150;
        goto LABEL_42;
      }

      a2 = v150;
    }

    else
    {

      v91 = 0.0;
      v85 = 0.0;
      v93 = 0.0;
      v92 = v148;
      a2 = v150;
      if (v142 < 1)
      {
        goto LABEL_42;
      }
    }

    v94 = [v92 memberNodes];
    v95 = sub_22F741420();

    v96 = *(v95 + 16);

    v97 = v96 == 1;
    v92 = v148;
    if (v97)
    {
      v93 = 1.0;
    }

    else
    {
      v93 = 0.0;
    }

LABEL_42:
    [v92 importance];
    v99 = v98;
    [v143 becomeCurrentWithPendingUnitCount_];
    v100 = sub_22F32B718(v92, v141, v138);
    if (v100)
    {
      v101 = v100;

      v102 = _s11PhotosGraph20SocialGroupsPromoterC15socialGroupHash3forSSSaySo8PHPersonCG_tFZ_0(v101);
      v104 = v103;

      if (*(v137 + 16))
      {
        v105 = sub_22F1229E8(v102, v104);
        v107 = v106;

        if (v107)
        {
          v4 = *(*(v137 + 56) + 8 * v105);
          v108 = [v4 countOfExclusiveAssets];
LABEL_48:
          [v143 resignCurrent];
          if (v108 < 6)
          {
            v55 = v56;
            v56 = v92;
            v57 = v58;
            v58 = v4;
          }

          else
          {
            v110 = type metadata accessor for ElectedSocialGroup();
            v111 = objc_allocWithZone(v110);
            *&v111[OBJC_IVAR___PGElectedSocialGroup_socialGroup] = v92;
            *&v111[OBJC_IVAR___PGElectedSocialGroup_assetCount] = v108;
            *&v111[OBJC_IVAR___PGElectedSocialGroup_score] = v93 + v91 + v85 + v99 * 0.25;
            v154.receiver = v111;
            v154.super_class = v110;
            v55 = v92;
            v112 = objc_msgSendSuper2(&v154, sel_init);
            MEMORY[0x231900D00]();
            if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_22F7411C0();
            }

            sub_22F741220();

            v57 = v4;
          }

          v40 = v58;
          v54 = v152;
          v23 = v140;
          v53 = v134;
          goto LABEL_14;
        }
      }

      else
      {
      }
    }

    sub_22F29E2D8(v92);
    v108 = v109;
    v4 = 0;
    goto LABEL_48;
  }

LABEL_52:

  [v132 invalidate];
  sub_22F29E248(&v163, sub_22F2F45E0, sub_22F29ED08);
  v114 = v131;
  if (v131 < 0)
  {
    __break(1u);
  }

  else
  {
    v41 = v130;
    v40 = a2;
    v153 = v54;
    a2 = v163;
    v54 = v23;
    v113 = v163 & 0xFFFFFFFFFFFFFF8;
    v53 = v163 >> 62;
    if (!(v163 >> 62))
    {
      v115 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v115 >= v131)
      {
        v116 = v131;
      }

      else
      {
        v116 = *((v163 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v131)
      {
        v117 = v116;
      }

      else
      {
        v117 = 0;
      }

      if (v115 >= v117)
      {
        goto LABEL_61;
      }

LABEL_104:
      __break(1u);
LABEL_105:
      __break(1u);
      goto LABEL_106;
    }
  }

  if (a2 < 0)
  {
    v7 = a2;
  }

  else
  {
    v7 = v113;
  }

  v127 = sub_22F741A00();
  result = sub_22F741A00();
  if (result < 0)
  {
    __break(1u);
    return result;
  }

  if (v127 >= v131)
  {
    v128 = v131;
  }

  else
  {
    v128 = v127;
  }

  if (v127 < 0)
  {
    v128 = v131;
  }

  if (v131)
  {
    v117 = v128;
  }

  else
  {
    v117 = 0;
  }

  if (sub_22F741A00() < v117)
  {
    goto LABEL_104;
  }

LABEL_61:
  if ((a2 & 0xC000000000000001) != 0 && v117)
  {
    type metadata accessor for ElectedSocialGroup();

    v118 = 0;
    do
    {
      v119 = v118 + 1;
      sub_22F741B20();
      v118 = v119;
    }

    while (v117 != v119);
  }

  else
  {
  }

  if (v53)
  {
    v7 = sub_22F741DB0();
    v114 = v120;
    v53 = v121;
    v117 = v122;

    if (v117)
    {
      goto LABEL_72;
    }

    goto LABEL_71;
  }

  v7 = (a2 & 0xFFFFFFFFFFFFFF8);
  v114 = (a2 & 0xFFFFFFFFFFFFFF8) + 32;
  v117 = (2 * v117) | 1;
  if ((v117 & 1) == 0)
  {
LABEL_71:
    sub_22F10AD54(v7, v114, v53, v117);
    a2 = v123;
    goto LABEL_78;
  }

LABEL_72:
  sub_22F742070();
  swift_unknownObjectRetain_n();
  v124 = swift_dynamicCastClass();
  if (!v124)
  {
    swift_unknownObjectRelease();
    v124 = MEMORY[0x277D84F90];
  }

  v125 = *(v124 + 16);

  if (__OFSUB__(v117 >> 1, v53))
  {
    goto LABEL_105;
  }

  if (v125 != (v117 >> 1) - v53)
  {
LABEL_106:
    swift_unknownObjectRelease_n();
    goto LABEL_71;
  }

  a2 = swift_dynamicCastClass();
  swift_unknownObjectRelease_n();
  if (!a2)
  {
    a2 = MEMORY[0x277D84F90];
LABEL_78:
    swift_unknownObjectRelease();
  }

  sub_22F1B2BBC(0);
  sub_22F741690();

  if (v41)
  {
  }

  return a2;
}

uint64_t sub_22F29E000(void *a1)
{
  v2 = sub_22F740B90();
  [a1 fractionCompleted];
  return sub_22F741690();
}

uint64_t sub_22F29E248(uint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t (*a3)(void *))
{
  v6 = *a1;
  if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || v6 < 0 || (v6 & 0x4000000000000000) != 0)
  {
    v6 = a2(v6);
  }

  v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v9[0] = (v6 & 0xFFFFFFFFFFFFFF8) + 32;
  v9[1] = v7;
  result = a3(v9);
  *a1 = v6;
  return result;
}

void sub_22F29E2D8(void *a1)
{
  v6 = v1;
  v84[2] = *MEMORY[0x277D85DE8];
  v8 = sub_22F740B90();
  v78 = *(v8 - 8);
  v79 = v8;
  *&v9 = MEMORY[0x28223BE20](v8).n128_u64[0];
  v11 = (&v72 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = [a1 sortedMemberNodes];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB37D0, &unk_22F785C40);
  v13 = sub_22F741180();

  if (v13 >> 62)
  {
LABEL_52:
    v14 = sub_22F741A00();
  }

  else
  {
    v14 = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v77 = v11;
  v81 = v6;
  if (v14)
  {
    v84[0] = MEMORY[0x277D84F90];
    v11 = v84;
    sub_22F146454(0, v14 & ~(v14 >> 63), 0);
    if (v14 < 0)
    {
      __break(1u);
      goto LABEL_54;
    }

    v15 = 0;
    v11 = v84[0];
    do
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x2319016F0](v15, v13);
      }

      else
      {
        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = [v16 localIdentifier];
      v19 = sub_22F740E20();
      v21 = v20;

      v84[0] = v11;
      v23 = v11[2];
      v22 = v11[3];
      if (v23 >= v22 >> 1)
      {
        sub_22F146454((v22 > 1), v23 + 1, 1);
        v11 = v84[0];
      }

      ++v15;
      v11[2] = (v23 + 1);
      v24 = &v11[2 * v23];
      v24[4] = v19;
      v24[5] = v21;
    }

    while (v14 != v15);

    v6 = v81;
  }

  else
  {

    v11 = MEMORY[0x277D84F90];
  }

  v5 = *&v6[OBJC_IVAR___PGSocialGroupsElector_photoLibrary];
  v2 = sub_22F32AFB4(v5);
  v25 = objc_opt_self();
  v26 = sub_22F741160();
  v13 = [v25 fetchPersonsWithLocalIdentifiers:v26 options:v2];

  v27 = [v13 fetchedObjects];
  if (!v27)
  {
LABEL_57:

    goto LABEL_58;
  }

  v28 = v27;
  v76 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v4 = sub_22F741180();

  v3 = v4 & 0xFFFFFFFFFFFFFF8;
  if (!(v4 >> 62))
  {
    v29 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v29)
    {
      goto LABEL_17;
    }

    goto LABEL_56;
  }

LABEL_54:
  if (sub_22F741A00() < 1)
  {
LABEL_56:

    goto LABEL_57;
  }

  v29 = sub_22F741A00();
LABEL_17:
  v73 = v5;
  v74 = v2;
  v75 = v13;
  if (v29)
  {
    v30 = 0;
    v13 = v4 & 0xC000000000000001;
    v80 = MEMORY[0x277D84F90];
    v5 = &selRef_topTierAestheticScoreForRatio_inPhotoLibrary_;
    do
    {
      v2 = v30;
      while (1)
      {
        if (v13)
        {
          v31 = MEMORY[0x2319016F0](v2, v4);
        }

        else
        {
          if (v2 >= *(v3 + 16))
          {
            goto LABEL_51;
          }

          v31 = *(v4 + 8 * v2 + 32);
        }

        v6 = v31;
        v30 = (v2 + 1);
        if (__OFADD__(v2, 1))
        {
          __break(1u);
LABEL_51:
          __break(1u);
          goto LABEL_52;
        }

        v32 = [v31 uuid];
        if (v32)
        {
          break;
        }

        ++v2;
        if (v30 == v29)
        {
          goto LABEL_35;
        }
      }

      v33 = v32;
      v34 = sub_22F740E20();
      v72 = v35;

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v80 = sub_22F13E1A8(0, *(v80 + 2) + 1, 1, v80);
      }

      v37 = *(v80 + 2);
      v36 = *(v80 + 3);
      v6 = (v37 + 1);
      if (v37 >= v36 >> 1)
      {
        v80 = sub_22F13E1A8((v36 > 1), v37 + 1, 1, v80);
      }

      v38 = v80;
      *(v80 + 2) = v6;
      v39 = &v38[16 * v37];
      v40 = v72;
      *(v39 + 4) = v34;
      *(v39 + 5) = v40;
    }

    while (v30 != v29);
  }

  else
  {
    v80 = MEMORY[0x277D84F90];
  }

LABEL_35:
  v41 = sub_22F1515F8(v80);

  v83 = v41;
  v42 = [*&v81[OBJC_IVAR___PGSocialGroupsElector_graph] meNodeWithFallbackInferredMeNode];
  v44 = v75;
  if (v42)
  {
    v45 = v42;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v43);
    v47 = [v45 localIdentifier];
    v48 = [ObjCClassFromMetadata uuidFromLocalIdentifier_];

    v49 = v73;
    if (!v48)
    {
      __break(1u);
      return;
    }

    v50 = sub_22F740E20();
    v52 = v51;

    sub_22F10BBDC(v84, v50, v52);

    v41 = v83;
  }

  else
  {

    v49 = v73;
  }

  v2 = v74;
  if (*(v41 + 16) < 2uLL)
  {

LABEL_58:
    return;
  }

  v53 = [v49 librarySpecificFetchOptions];
  v54 = [objc_allocWithZone(MEMORY[0x277CD9888]) init];
  v55 = objc_opt_self();
  v56 = sub_22F741410();

  v84[0] = 0;
  v57 = [v55 fetchExclusiveSocialGroupAssetsForPersons:v56 minimumNumberOfSharedAssets:5 options:v53 error:v84];

  if (v57)
  {
    v58 = v84[0];

    v54 = v57;
  }

  else
  {
    v59 = v84[0];
    v60 = sub_22F73F370();

    swift_willThrow();
    if (qword_2810A9BB0 != -1)
    {
      swift_once();
    }

    v61 = v77;
    sub_22F1B3158(v77);
    v62 = v60;
    v63 = sub_22F740B70();
    v64 = sub_22F7415E0();

    if (os_log_type_enabled(v63, v64))
    {
      v65 = swift_slowAlloc();
      v66 = swift_slowAlloc();
      v84[0] = v66;
      *v65 = 136315138;
      v82 = v60;
      v67 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
      v68 = sub_22F740E90();
      v70 = sub_22F145F20(v68, v69, v84);

      *(v65 + 4) = v70;
      _os_log_impl(&dword_22F0FC000, v63, v64, "SocialGroupElector: error fetching exclusive assets for social group %s", v65, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v66);
      v71 = v66;
      v2 = v74;
      MEMORY[0x2319033A0](v71, -1, -1);
      MEMORY[0x2319033A0](v65, -1, -1);
    }

    else
    {
    }

    (*(v78 + 8))(v61, v79);
    v44 = v75;
  }

  [v54 count];
}

void sub_22F29ECA0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
}

void sub_22F29ED08(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for ElectedSocialGroup();
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F29F1C0(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F29EF1C(0, v2, 1, a1);
  }
}

void sub_22F29EE08(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F120634(0, &unk_2810A9050, off_27887B3D8);
        v6 = sub_22F741200();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_22F29F8E8(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F29F060(0, v2, 1, a1);
  }
}

void sub_22F29EF1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = a1 - a3;
LABEL_5:
    v24 = a3;
    v7 = *(v4 + 8 * a3);
    v22 = v6;
    v23 = v5;
    while (1)
    {
      v8 = *v5;
      v9 = *&v7[OBJC_IVAR___PGElectedSocialGroup_score];
      v10 = *&v7[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
      v11 = v7;
      v12 = v8;
      [v10 importance];
      v14 = v13;
      v15 = *&v12[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v12[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v17 = v16;

      v18 = v15 < v9;
      if (v9 == v15)
      {
        v18 = v17 < v14;
      }

      if (!v18)
      {
LABEL_4:
        a3 = v24 + 1;
        v5 = v23 + 8;
        v6 = v22 - 1;
        if (v24 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      v19 = *v5;
      v7 = *(v5 + 8);
      *v5 = v7;
      *(v5 + 8) = v19;
      v5 -= 8;
      if (__CFADD__(v6++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F29F060(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v22 = *a4;
    v4 = *a4 + 8 * a3 - 8;
    v5 = a1 - a3;
LABEL_5:
    v20 = v4;
    v21 = a3;
    v6 = *(v22 + 8 * a3);
    v19 = v5;
    while (1)
    {
      v7 = *v4;
      v8 = v6;
      v9 = v7;
      v10 = [v8 memberNodes];
      v11 = sub_22F741420();

      v12 = *(v11 + 16);

      v13 = [v9 memberNodes];
      v14 = sub_22F741420();

      v15 = *(v14 + 16);

      if (v15 >= v12)
      {
LABEL_4:
        a3 = v21 + 1;
        v4 = v20 + 8;
        v5 = v19 - 1;
        if (v21 + 1 == a2)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v22)
      {
        break;
      }

      v16 = *v4;
      v6 = *(v4 + 8);
      *v4 = v6;
      *(v4 + 8) = v16;
      v4 -= 8;
      if (__CFADD__(v5++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

void sub_22F29F1C0(void ***a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_93:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_125:
      v9 = sub_22F3F5F98(v9);
    }

    v108 = *(v9 + 2);
    if (v108 >= 2)
    {
      while (*a3)
      {
        v109 = *&v9[16 * v108];
        v110 = *&v9[16 * v108 + 24];
        sub_22F2A0090((*a3 + 8 * v109), (*a3 + 8 * *&v9[16 * v108 + 16]), (*a3 + 8 * v110), v5);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v110 < v109)
        {
          goto LABEL_118;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v108 - 2 >= *(v9 + 2))
        {
          goto LABEL_119;
        }

        v111 = &v9[16 * v108];
        *v111 = v109;
        *(v111 + 1) = v110;
        sub_22F3F5F0C(v108 - 1);
        v108 = *(v9 + 2);
        if (v108 <= 1)
        {
          goto LABEL_103;
        }
      }

      goto LABEL_129;
    }

LABEL_103:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8++;
    if (v8 < v7)
    {
      v119 = v7;
      v113 = v6;
      v11 = *(*a3 + 8 * v8);
      v12 = (*a3 + 8 * v10);
      v14 = *v12;
      v13 = v12 + 2;
      v15 = *&v11[OBJC_IVAR___PGElectedSocialGroup_score];
      v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
      v16 = *&v11[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
      v17 = v11;
      v18 = v14;
      [v16 importance];
      v20 = v19;
      v21 = *&v18[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v18[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v23 = v22;

      v24 = v21 < v15;
      if (v15 == v21)
      {
        v24 = v23 < v20;
      }

      v121 = v24;
      v5 = (v10 + 2);
      while (1)
      {
        v8 = v119;
        if (v119 == v5)
        {
          break;
        }

        v25 = *(v13 - 1);
        v6 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
        v26 = *(*v13 + OBJC_IVAR___PGElectedSocialGroup_score);
        v27 = *(*v13 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
        v28 = *v13;
        v29 = v25;
        [v27 importance];
        v31 = v30;
        v32 = *&v29[OBJC_IVAR___PGElectedSocialGroup_score];
        [*&v29[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
        v34 = v33;

        v35 = v34 >= v31;
        if (v26 != v32)
        {
          v35 = v32 >= v26;
        }

        v5 = (v5 + 1);
        ++v13;
        if (v121 == v35)
        {
          v8 = v5 - 1;
          break;
        }
      }

      v36 = 8 * v10;
      if (!v121)
      {
        goto LABEL_22;
      }

      if (v8 < v10)
      {
        goto LABEL_122;
      }

      if (v10 < v8)
      {
        v37 = 8 * v8 - 8;
        v38 = v8;
        v39 = v10;
        v6 = v113;
        do
        {
          if (v39 != --v38)
          {
            v41 = *a3;
            if (!*a3)
            {
              goto LABEL_128;
            }

            v40 = *(v41 + v36);
            *(v41 + v36) = *(v41 + v37);
            *(v41 + v37) = v40;
          }

          ++v39;
          v37 -= 8;
          v36 += 8;
        }

        while (v39 < v38);
      }

      else
      {
LABEL_22:
        v6 = v113;
      }
    }

    v42 = a3[1];
    if (v8 < v42)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_121;
      }

      if (v8 - v10 < a4)
      {
        v43 = v10 + a4;
        if (__OFADD__(v10, a4))
        {
          goto LABEL_123;
        }

        if (v43 >= v42)
        {
          v43 = a3[1];
        }

        if (v43 < v10)
        {
LABEL_124:
          __break(1u);
          goto LABEL_125;
        }

        if (v8 != v43)
        {
          break;
        }
      }
    }

LABEL_42:
    if (v8 < v10)
    {
      goto LABEL_120;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
    }

    v63 = *(v9 + 2);
    v62 = *(v9 + 3);
    v64 = v63 + 1;
    if (v63 >= v62 >> 1)
    {
      v9 = sub_22F13D970((v62 > 1), v63 + 1, 1, v9);
    }

    *(v9 + 2) = v64;
    v65 = &v9[16 * v63];
    *(v65 + 4) = v10;
    *(v65 + 5) = v8;
    v66 = *a1;
    if (!*a1)
    {
      goto LABEL_130;
    }

    if (v63)
    {
      while (1)
      {
        v67 = v64 - 1;
        if (v64 >= 4)
        {
          break;
        }

        if (v64 == 3)
        {
          v68 = *(v9 + 4);
          v69 = *(v9 + 5);
          v78 = __OFSUB__(v69, v68);
          v70 = v69 - v68;
          v71 = v78;
LABEL_62:
          if (v71)
          {
            goto LABEL_109;
          }

          v84 = &v9[16 * v64];
          v86 = *v84;
          v85 = *(v84 + 1);
          v87 = __OFSUB__(v85, v86);
          v88 = v85 - v86;
          v89 = v87;
          if (v87)
          {
            goto LABEL_112;
          }

          v90 = &v9[16 * v67 + 32];
          v92 = *v90;
          v91 = *(v90 + 1);
          v78 = __OFSUB__(v91, v92);
          v93 = v91 - v92;
          if (v78)
          {
            goto LABEL_115;
          }

          if (__OFADD__(v88, v93))
          {
            goto LABEL_116;
          }

          if (v88 + v93 >= v70)
          {
            if (v70 < v93)
            {
              v67 = v64 - 2;
            }

            goto LABEL_83;
          }

          goto LABEL_76;
        }

        v94 = &v9[16 * v64];
        v96 = *v94;
        v95 = *(v94 + 1);
        v78 = __OFSUB__(v95, v96);
        v88 = v95 - v96;
        v89 = v78;
LABEL_76:
        if (v89)
        {
          goto LABEL_111;
        }

        v97 = &v9[16 * v67];
        v99 = *(v97 + 4);
        v98 = *(v97 + 5);
        v78 = __OFSUB__(v98, v99);
        v100 = v98 - v99;
        if (v78)
        {
          goto LABEL_114;
        }

        if (v100 < v88)
        {
          goto LABEL_3;
        }

LABEL_83:
        v105 = v67 - 1;
        if (v67 - 1 >= v64)
        {
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
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
LABEL_123:
          __break(1u);
          goto LABEL_124;
        }

        if (!*a3)
        {
          goto LABEL_127;
        }

        v106 = *&v9[16 * v105 + 32];
        v5 = *&v9[16 * v67 + 40];
        sub_22F2A0090((*a3 + 8 * v106), (*a3 + 8 * *&v9[16 * v67 + 32]), (*a3 + 8 * v5), v66);
        if (v6)
        {
          goto LABEL_103;
        }

        if (v5 < v106)
        {
          goto LABEL_105;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v105 >= *(v9 + 2))
        {
          goto LABEL_106;
        }

        v107 = &v9[16 * v105];
        *(v107 + 4) = v106;
        *(v107 + 5) = v5;
        sub_22F3F5F0C(v67);
        v64 = *(v9 + 2);
        if (v64 <= 1)
        {
          goto LABEL_3;
        }
      }

      v72 = &v9[16 * v64 + 32];
      v73 = *(v72 - 64);
      v74 = *(v72 - 56);
      v78 = __OFSUB__(v74, v73);
      v75 = v74 - v73;
      if (v78)
      {
        goto LABEL_107;
      }

      v77 = *(v72 - 48);
      v76 = *(v72 - 40);
      v78 = __OFSUB__(v76, v77);
      v70 = v76 - v77;
      v71 = v78;
      if (v78)
      {
        goto LABEL_108;
      }

      v79 = &v9[16 * v64];
      v81 = *v79;
      v80 = *(v79 + 1);
      v78 = __OFSUB__(v80, v81);
      v82 = v80 - v81;
      if (v78)
      {
        goto LABEL_110;
      }

      v78 = __OFADD__(v70, v82);
      v83 = v70 + v82;
      if (v78)
      {
        goto LABEL_113;
      }

      if (v83 >= v75)
      {
        v101 = &v9[16 * v67 + 32];
        v103 = *v101;
        v102 = *(v101 + 1);
        v78 = __OFSUB__(v102, v103);
        v104 = v102 - v103;
        if (v78)
        {
          goto LABEL_117;
        }

        if (v70 < v104)
        {
          v67 = v64 - 2;
        }

        goto LABEL_83;
      }

      goto LABEL_62;
    }

LABEL_3:
    v7 = a3[1];
    if (v8 >= v7)
    {
      goto LABEL_93;
    }
  }

  v114 = v6;
  v115 = v10;
  v44 = *a3;
  v45 = *a3 + 8 * v8 - 8;
  v46 = v10 - v8;
  v117 = v43;
LABEL_33:
  v120 = v45;
  v122 = v8;
  v47 = *(v44 + 8 * v8);
  v118 = v46;
  v48 = v45;
  while (1)
  {
    v49 = *v48;
    v50 = *&v47[OBJC_IVAR___PGElectedSocialGroup_score];
    v5 = &OBJC_IVAR____TtC11PhotosGraph21SocialGroupsEvaluator_photoLibrary;
    v51 = *&v47[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
    v52 = v47;
    v53 = v49;
    [v51 importance];
    v55 = v54;
    v56 = *&v53[OBJC_IVAR___PGElectedSocialGroup_score];
    [*&v53[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
    v58 = v57;

    v59 = v56 < v50;
    if (v50 == v56)
    {
      v59 = v58 < v55;
    }

    if (!v59)
    {
LABEL_32:
      ++v8;
      v45 = v120 + 8;
      v46 = v118 - 1;
      if (v122 + 1 != v117)
      {
        goto LABEL_33;
      }

      v8 = v117;
      v6 = v114;
      v10 = v115;
      goto LABEL_42;
    }

    if (!v44)
    {
      break;
    }

    v60 = *v48;
    v47 = *(v48 + 8);
    *v48 = v47;
    *(v48 + 8) = v60;
    v48 -= 8;
    if (__CFADD__(v46++, 1))
    {
      goto LABEL_32;
    }
  }

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
}

void sub_22F29F8E8(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = v4;
  v7 = a3;
  v8 = a3[1];
  if (v8 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_86:
    v5 = v10;
    v10 = *a1;
    if (!*a1)
    {
      goto LABEL_124;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_118:
      v5 = sub_22F3F5F98(v5);
    }

    v100 = *(v5 + 2);
    if (v100 >= 2)
    {
      while (*v7)
      {
        v101 = *&v5[16 * v100];
        v102 = *&v5[16 * v100 + 24];
        sub_22F2A0438((*v7 + 8 * v101), (*v7 + 8 * *&v5[16 * v100 + 16]), (*v7 + 8 * v102), v10);
        if (v6)
        {
          goto LABEL_96;
        }

        if (v102 < v101)
        {
          goto LABEL_111;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v5 = sub_22F3F5F98(v5);
        }

        if (v100 - 2 >= *(v5 + 2))
        {
          goto LABEL_112;
        }

        v103 = &v5[16 * v100];
        *v103 = v101;
        *(v103 + 1) = v102;
        sub_22F3F5F0C(v100 - 1);
        v100 = *(v5 + 2);
        if (v100 <= 1)
        {
          goto LABEL_96;
        }
      }

      goto LABEL_122;
    }

LABEL_96:

    return;
  }

  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9;
    v12 = v9 + 1;
    if (v9 + 1 < v8)
    {
      v114 = v8;
      v107 = v10;
      v109 = v6;
      v13 = *v7;
      v14 = *(*v7 + 8 * v12);
      v15 = v11;
      v112 = 8 * v11;
      v16 = (v13 + 8 * v11);
      v18 = *v16;
      v17 = v16 + 2;
      v19 = v14;
      v5 = v18;
      v20 = [v19 memberNodes];
      v21 = sub_22F741420();

      v118 = *(v21 + 16);

      v22 = [v5 memberNodes];
      v23 = sub_22F741420();

      v116 = *(v23 + 16);

      v106 = v15;
      v24 = v15 + 2;
      while (1)
      {
        v12 = v114;
        if (v114 == v24)
        {
          break;
        }

        v25 = *(v17 - 1);
        v26 = *v17;
        v5 = v25;
        v27 = [v26 memberNodes];
        v28 = sub_22F741420();

        v29 = *(v28 + 16);

        v30 = [v5 memberNodes];
        v31 = sub_22F741420();

        v32 = *(v31 + 16);

        ++v24;
        ++v17;
        if (v116 < v118 == v32 >= v29)
        {
          v12 = v24 - 1;
          break;
        }
      }

      v10 = v107;
      v6 = v109;
      v7 = a3;
      v11 = v106;
      v33 = v112;
      if (v116 < v118)
      {
        if (v12 < v106)
        {
          goto LABEL_115;
        }

        if (v106 < v12)
        {
          v34 = 8 * v12 - 8;
          v35 = v12;
          v36 = v106;
          do
          {
            if (v36 != --v35)
            {
              v38 = *a3;
              if (!*a3)
              {
                goto LABEL_121;
              }

              v37 = *(v38 + v33);
              *(v38 + v33) = *(v38 + v34);
              *(v38 + v34) = v37;
            }

            ++v36;
            v34 -= 8;
            v33 += 8;
          }

          while (v36 < v35);
        }
      }
    }

    v39 = v7[1];
    if (v12 < v39)
    {
      if (__OFSUB__(v12, v11))
      {
        goto LABEL_114;
      }

      if (v12 - v11 < a4)
      {
        v40 = v11 + a4;
        if (__OFADD__(v11, a4))
        {
          goto LABEL_116;
        }

        if (v40 >= v39)
        {
          v40 = v7[1];
        }

        if (v40 < v11)
        {
LABEL_117:
          __break(1u);
          goto LABEL_118;
        }

        if (v12 != v40)
        {
          break;
        }
      }
    }

LABEL_35:
    if (v12 < v11)
    {
      goto LABEL_113;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F13D970(0, *(v10 + 2) + 1, 1, v10);
    }

    v55 = *(v10 + 2);
    v54 = *(v10 + 3);
    v56 = v55 + 1;
    if (v55 >= v54 >> 1)
    {
      v10 = sub_22F13D970((v54 > 1), v55 + 1, 1, v10);
    }

    *(v10 + 2) = v56;
    v57 = &v10[16 * v55];
    *(v57 + 4) = v11;
    *(v57 + 5) = v12;
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_123;
    }

    v120 = v12;
    if (v55)
    {
      while (1)
      {
        v58 = v56 - 1;
        if (v56 >= 4)
        {
          break;
        }

        if (v56 == 3)
        {
          v59 = *(v10 + 4);
          v60 = *(v10 + 5);
          v69 = __OFSUB__(v60, v59);
          v61 = v60 - v59;
          v62 = v69;
LABEL_55:
          if (v62)
          {
            goto LABEL_102;
          }

          v75 = &v10[16 * v56];
          v77 = *v75;
          v76 = *(v75 + 1);
          v78 = __OFSUB__(v76, v77);
          v79 = v76 - v77;
          v80 = v78;
          if (v78)
          {
            goto LABEL_105;
          }

          v81 = &v10[16 * v58 + 32];
          v83 = *v81;
          v82 = *(v81 + 1);
          v69 = __OFSUB__(v82, v83);
          v84 = v82 - v83;
          if (v69)
          {
            goto LABEL_108;
          }

          if (__OFADD__(v79, v84))
          {
            goto LABEL_109;
          }

          if (v79 + v84 >= v61)
          {
            if (v61 < v84)
            {
              v58 = v56 - 2;
            }

            goto LABEL_76;
          }

          goto LABEL_69;
        }

        v85 = &v10[16 * v56];
        v87 = *v85;
        v86 = *(v85 + 1);
        v69 = __OFSUB__(v86, v87);
        v79 = v86 - v87;
        v80 = v69;
LABEL_69:
        if (v80)
        {
          goto LABEL_104;
        }

        v88 = &v10[16 * v58];
        v90 = *(v88 + 4);
        v89 = *(v88 + 5);
        v69 = __OFSUB__(v89, v90);
        v91 = v89 - v90;
        if (v69)
        {
          goto LABEL_107;
        }

        if (v91 < v79)
        {
          goto LABEL_3;
        }

LABEL_76:
        v96 = v58 - 1;
        if (v58 - 1 >= v56)
        {
          __break(1u);
LABEL_98:
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
          goto LABEL_117;
        }

        if (!*v7)
        {
          goto LABEL_120;
        }

        v97 = *&v10[16 * v96 + 32];
        v98 = *&v10[16 * v58 + 40];
        sub_22F2A0438((*v7 + 8 * v97), (*v7 + 8 * *&v10[16 * v58 + 32]), (*v7 + 8 * v98), v5);
        if (v6)
        {
          goto LABEL_96;
        }

        if (v98 < v97)
        {
          goto LABEL_98;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_22F3F5F98(v10);
        }

        if (v96 >= *(v10 + 2))
        {
          goto LABEL_99;
        }

        v99 = &v10[16 * v96];
        *(v99 + 4) = v97;
        *(v99 + 5) = v98;
        sub_22F3F5F0C(v58);
        v56 = *(v10 + 2);
        if (v56 <= 1)
        {
          goto LABEL_3;
        }
      }

      v63 = &v10[16 * v56 + 32];
      v64 = *(v63 - 64);
      v65 = *(v63 - 56);
      v69 = __OFSUB__(v65, v64);
      v66 = v65 - v64;
      if (v69)
      {
        goto LABEL_100;
      }

      v68 = *(v63 - 48);
      v67 = *(v63 - 40);
      v69 = __OFSUB__(v67, v68);
      v61 = v67 - v68;
      v62 = v69;
      if (v69)
      {
        goto LABEL_101;
      }

      v70 = &v10[16 * v56];
      v72 = *v70;
      v71 = *(v70 + 1);
      v69 = __OFSUB__(v71, v72);
      v73 = v71 - v72;
      if (v69)
      {
        goto LABEL_103;
      }

      v69 = __OFADD__(v61, v73);
      v74 = v61 + v73;
      if (v69)
      {
        goto LABEL_106;
      }

      if (v74 >= v66)
      {
        v92 = &v10[16 * v58 + 32];
        v94 = *v92;
        v93 = *(v92 + 1);
        v69 = __OFSUB__(v93, v94);
        v95 = v93 - v94;
        if (v69)
        {
          goto LABEL_110;
        }

        if (v61 < v95)
        {
          v58 = v56 - 2;
        }

        goto LABEL_76;
      }

      goto LABEL_55;
    }

LABEL_3:
    v8 = v7[1];
    v9 = v120;
    if (v120 >= v8)
    {
      goto LABEL_86;
    }
  }

  v108 = v10;
  v110 = v6;
  v121 = *v7;
  v41 = *v7 + 8 * v12 - 8;
  v42 = v11 - v12;
  v113 = v40;
LABEL_28:
  v117 = v41;
  v119 = v12;
  v43 = *(v121 + 8 * v12);
  v115 = v42;
  while (1)
  {
    v44 = *v41;
    v45 = v43;
    v5 = v44;
    v46 = [v45 memberNodes];
    v47 = sub_22F741420();

    v48 = *(v47 + 16);

    v49 = [v5 memberNodes];
    v50 = sub_22F741420();

    v51 = *(v50 + 16);

    if (v51 >= v48)
    {
LABEL_27:
      v12 = v119 + 1;
      v41 = v117 + 8;
      v42 = v115 - 1;
      if (v119 + 1 != v113)
      {
        goto LABEL_28;
      }

      v12 = v113;
      v10 = v108;
      v6 = v110;
      v7 = a3;
      goto LABEL_35;
    }

    if (!v121)
    {
      break;
    }

    v52 = *v41;
    v43 = *(v41 + 8);
    *v41 = v43;
    *(v41 + 8) = v52;
    v41 -= 8;
    if (__CFADD__(v42++, 1))
    {
      goto LABEL_27;
    }
  }

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
}

uint64_t sub_22F2A0090(void **__src, id *a2, id *a3, void **a4)
{
  __dst = a4;
  v4 = a3;
  v5 = __src;
  v6 = a2 - __src;
  v7 = a2 - __src + 7;
  if (a2 - __src >= 0)
  {
    v7 = a2 - __src;
  }

  v8 = v7 >> 3;
  v9 = a3 - a2;
  v10 = a3 - a2 + 7;
  if (a3 - a2 >= 0)
  {
    v10 = a3 - a2;
  }

  v11 = v10 >> 3;
  if (v8 < v10 >> 3)
  {
    v12 = a2;
    if (a4 != __src || &__src[v8] <= a4)
    {
      memmove(a4, __src, 8 * v8);
    }

    v46 = &__dst[v8];
    if (v6 < 8 || v12 >= v4)
    {
      v27 = v5;
      goto LABEL_41;
    }

    while (1)
    {
      v13 = __dst;
      v14 = *__dst;
      v15 = *(*v12 + OBJC_IVAR___PGElectedSocialGroup_score);
      v16 = *(*v12 + OBJC_IVAR___PGElectedSocialGroup_socialGroup);
      v17 = *v12;
      v18 = v14;
      [v16 importance];
      v20 = v19;
      v21 = *&v18[OBJC_IVAR___PGElectedSocialGroup_score];
      [*&v18[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
      v23 = v22;

      v24 = v21 < v15;
      if (v15 == v21)
      {
        v24 = v23 < v20;
      }

      if (!v24)
      {
        break;
      }

      v25 = v12;
      if (v5 != v12++)
      {
        goto LABEL_18;
      }

LABEL_19:
      ++v5;
      if (__dst >= v46 || v12 >= v4)
      {
        v27 = v5;
        goto LABEL_41;
      }
    }

    v25 = __dst++;
    if (v5 == v13)
    {
      goto LABEL_19;
    }

LABEL_18:
    *v5 = *v25;
    goto LABEL_19;
  }

  v27 = a2;
  if (a4 != a2 || &a2[v11] <= a4)
  {
    memmove(a4, a2, 8 * v11);
  }

  v46 = &__dst[v11];
  if (v9 >= 8 && v27 > v5)
  {
    do
    {
      v45 = v27;
      v28 = v27 - 1;
      --v4;
      v29 = v46;
      while (1)
      {
        v30 = *--v29;
        v31 = v4 + 1;
        v32 = v28;
        v33 = *v28;
        v34 = *&v30[OBJC_IVAR___PGElectedSocialGroup_score];
        v35 = *&v30[OBJC_IVAR___PGElectedSocialGroup_socialGroup];
        v36 = v30;
        v37 = v33;
        [v35 importance];
        v39 = v38;
        v40 = *&v37[OBJC_IVAR___PGElectedSocialGroup_score];
        [*&v37[OBJC_IVAR___PGElectedSocialGroup_socialGroup] importance];
        v42 = v41;

        v43 = v40 < v34;
        if (v34 == v40)
        {
          v43 = v42 < v39;
        }

        if (v43)
        {
          break;
        }

        if (v31 != v46)
        {
          *v4 = *v29;
        }

        --v4;
        v46 = v29;
        v28 = v32;
        if (v29 <= __dst)
        {
          v46 = v29;
          v27 = v45;
          goto LABEL_41;
        }
      }

      if (v31 != v45)
      {
        *v4 = *v32;
      }

      if (v46 <= __dst)
      {
        break;
      }

      v27 = v32;
    }

    while (v32 > v5);
    v27 = v32;
  }

LABEL_41:
  if (v27 != __dst || v27 >= (__dst + ((v46 - __dst + (v46 - __dst < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v27, __dst, 8 * (v46 - __dst));
  }

  return 1;
}

uint64_t sub_22F2A0438(id *__src, id *__dst, id *a3, id *a4)
{
  v4 = a3;
  v5 = __dst;
  v6 = __src;
  v7 = __dst - __src;
  v8 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v8 = __dst - __src;
  }

  v9 = v8 >> 3;
  v10 = a3 - __dst;
  v11 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v11 = a3 - __dst;
  }

  v12 = v11 >> 3;
  if (v9 < v11 >> 3)
  {
    if (a4 != __src || &__src[v9] <= a4)
    {
      v13 = a4;
      memmove(a4, __src, 8 * v9);
      a4 = v13;
    }

    v14 = &a4[v9];
    v15 = a4;
    if (v7 < 8 || v5 >= v4)
    {
      v5 = v6;
      goto LABEL_38;
    }

    v45 = v4;
    v49 = v14;
    while (1)
    {
      v47 = v5;
      v16 = *v15;
      v17 = *v5;
      v18 = v16;
      v19 = [v17 memberNodes];
      v20 = v15;
      v21 = sub_22F741420();

      v22 = *(v21 + 16);

      v23 = [v18 memberNodes];
      v24 = sub_22F741420();

      v25 = *(v24 + 16);

      if (v25 >= v22)
      {
        break;
      }

      v26 = v47;
      v5 = v47 + 1;
      if (v6 != v47)
      {
        goto LABEL_16;
      }

LABEL_17:
      ++v6;
      v14 = v49;
      if (v15 >= v49 || v5 >= v45)
      {
        v5 = v6;
        goto LABEL_38;
      }
    }

    v26 = v15++;
    v5 = v47;
    if (v6 == v20)
    {
      goto LABEL_17;
    }

LABEL_16:
    *v6 = *v26;
    goto LABEL_17;
  }

  v15 = a4;
  if (a4 != __dst || &__dst[v12] <= a4)
  {
    memmove(a4, __dst, 8 * v12);
  }

  v14 = &v15[v12];
  if (v10 >= 8 && v5 > v6)
  {
    v44 = v6;
    do
    {
      v27 = v5 - 1;
      v28 = v4 - 1;
      v29 = v14;
      v46 = v5 - 1;
      while (1)
      {
        v50 = v14;
        v30 = v5;
        v31 = v28;
        v32 = v28 + 1;
        v33 = *--v29;
        v34 = *v27;
        v35 = v33;
        v36 = v34;
        v37 = [v35 memberNodes];
        v38 = sub_22F741420();

        v48 = *(v38 + 16);

        v39 = [v36 memberNodes];
        v40 = sub_22F741420();

        v41 = *(v40 + 16);

        if (v41 < v48)
        {
          break;
        }

        v5 = v30;
        if (v32 != v50)
        {
          *v31 = *v29;
        }

        v28 = v31 - 1;
        v14 = v29;
        v27 = v46;
        if (v29 <= v15)
        {
          v14 = v29;
          goto LABEL_38;
        }
      }

      v4 = v31;
      if (v32 != v30)
      {
        *v31 = *v46;
      }

      v14 = v50;
      if (v50 <= v15)
      {
        break;
      }

      v5 = v46;
    }

    while (v46 > v44);
    v5 = v46;
  }

LABEL_38:
  v42 = v14 - v15 + (v14 - v15 < 0 ? 7uLL : 0);
  if (v5 != v15 || v5 >= (v15 + (v42 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v5, v15, 8 * (v42 >> 3));
  }

  return 1;
}

uint64_t block_copy_helper_18(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void *sub_22F2A0948(unint64_t a1, uint64_t a2)
{
  v3 = [objc_allocWithZone(PGPhotosChallengePublicEventAlgorithmWrapper) initWithEvaluationContext_];
  if (a1 >> 62)
  {
LABEL_46:
    v36 = v3;
    v4 = sub_22F741A00();
    v3 = v36;
    if (v4)
    {
      goto LABEL_3;
    }

LABEL_47:

    return MEMORY[0x277D84F98];
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v4)
  {
    goto LABEL_47;
  }

LABEL_3:
  v40 = v3;
  v5 = 0;
  v42 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F98];
  v41 = a1 & 0xFFFFFFFFFFFFFF8;
  v38 = v4;
  v39 = a1;
  while (1)
  {
    if (v42)
    {
      v3 = MEMORY[0x2319016F0](v5, a1);
    }

    else
    {
      if (v5 >= *(v41 + 16))
      {
        goto LABEL_44;
      }

      v3 = *(a1 + 8 * v5 + 32);
    }

    v7 = v3;
    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
LABEL_45:
      __break(1u);
      goto LABEL_46;
    }

    v9 = [v3 additionalInfo];
    if (v9)
    {
      break;
    }

LABEL_23:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v44 = v6;
    v3 = sub_22F122A80(v7);
    v25 = v6[2];
    v26 = (v24 & 1) == 0;
    v27 = __OFADD__(v25, v26);
    v28 = v25 + v26;
    if (v27)
    {
      goto LABEL_42;
    }

    v29 = v24;
    if (v6[3] < v28)
    {
      sub_22F124EDC(v28, isUniquelyReferenced_nonNull_native);
      v3 = sub_22F122A80(v7);
      if ((v29 & 1) != (v30 & 1))
      {
        goto LABEL_50;
      }

LABEL_28:
      v6 = v44;
      if (v29)
      {
        goto LABEL_4;
      }

      goto LABEL_29;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_28;
    }

    v33 = v3;
    sub_22F133930();
    v3 = v33;
    v6 = v44;
    if (v29)
    {
LABEL_4:
      *(v6[7] + 2 * v3) = 1;

      goto LABEL_5;
    }

LABEL_29:
    v6[(v3 >> 6) + 8] |= 1 << v3;
    *(v6[6] + 8 * v3) = v7;
    *(v6[7] + 2 * v3) = 1;
    v31 = v6[2];
    v27 = __OFADD__(v31, 1);
    v32 = v31 + 1;
    if (v27)
    {
      goto LABEL_43;
    }

    v6[2] = v32;
LABEL_5:
    ++v5;
    if (v8 == v4)
    {

      return v6;
    }
  }

  v10 = v9;
  v11 = sub_22F740CA0();

  if (!*(v11 + 16) || (v12 = sub_22F1229E8(0x764563696C627570, 0xEF4449554D746E65), (v13 & 1) == 0))
  {

    goto LABEL_23;
  }

  sub_22F13A100(*(v11 + 56) + 32 * v12, &v44);

  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    goto LABEL_23;
  }

  v14 = [v7 entityIdentifier];
  if (!v14)
  {
    sub_22F740E20();
    v14 = sub_22F740DF0();
  }

  v15 = [v40 predictedQuestionStateForAssetUUID:v14 publicEventMUID:{objc_msgSend(v43, sel_unsignedLongLongValue)}];

  a1 = swift_isUniquelyReferenced_nonNull_native();
  v44 = v6;
  v17 = sub_22F122A80(v7);
  v18 = v6[2];
  v19 = (v16 & 1) == 0;
  v3 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    goto LABEL_45;
  }

  v20 = v16;
  if (v6[3] >= v3)
  {
    if (a1)
    {
      v6 = v44;
      if ((v16 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    else
    {
      sub_22F133930();
      v6 = v44;
      if ((v20 & 1) == 0)
      {
        goto LABEL_37;
      }
    }

    goto LABEL_33;
  }

  sub_22F124EDC(v3, a1);
  v21 = sub_22F122A80(v7);
  if ((v20 & 1) != (v22 & 1))
  {
    goto LABEL_50;
  }

  v17 = v21;
  v6 = v44;
  if (v20)
  {
LABEL_33:
    *(v6[7] + 2 * v17) = v15;

LABEL_39:
    v4 = v38;
    a1 = v39;
    goto LABEL_5;
  }

LABEL_37:
  v6[(v17 >> 6) + 8] |= 1 << v17;
  *(v6[6] + 8 * v17) = v7;
  *(v6[7] + 2 * v17) = v15;

  v34 = v6[2];
  v27 = __OFADD__(v34, 1);
  v35 = v34 + 1;
  if (!v27)
  {
    v6[2] = v35;
    goto LABEL_39;
  }

  __break(1u);
LABEL_50:
  sub_22F120634(0, &qword_27DAB0810, 0x277CD9970);
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

double sub_22F2A0DD4(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2A0E3C()
{
  swift_beginAccess();

  return result;
}

double sub_22F2A0E84(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F2A0F3C()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F2A0F80(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F2A1030(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2A1098()
{
  swift_beginAccess();

  return result;
}

double sub_22F2A10E0(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t *sub_22F2A1198(void *a1)
{
  v2 = v1;
  v55 = *v1;
  v4 = sub_22F740460();
  v54 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v53 = &v48 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v60 = sub_22F73F690();
  v56 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v7 = &v48 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v48 - v9;
  v11 = sub_22F73F9B0();
  v58 = *(v11 - 8);
  v59 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v48 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v1 + 16) = 2;
  sub_22F740B80();
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup) = 0;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_futureLookupResults) = 0;
  v57 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults;
  *(v1 + OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_triggerResults) = MEMORY[0x277D84F90];
  v14 = a1[3];
  v15 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v14);
  v16 = (*(v15 + 16))(v14, v15);
  if (v16)
  {
    v17 = v16;
    v52 = v4;
    sub_22F73F970();
    v18 = a1[3];
    v19 = a1[4];
    v50 = a1;
    __swift_project_boxed_opaque_existential_1(a1, v18);
    (*(v19 + 8))(v18, v19);
    sub_22F73F8A0();
    v56 = *(v56 + 8);
    v20 = (v56)(v7, v60);
    MEMORY[0x28223BE20](v20);
    *(&v48 - 2) = v10;
    v21 = sub_22F2A1FCC(sub_22F2A2200, (&v48 - 4));
    v22 = sub_22F740B70();
    v23 = sub_22F7415F0();
    v24 = os_log_type_enabled(v22, v23);
    v51 = v13;
    v49 = v17;
    if (v24)
    {
      v25 = v2;
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v61[0] = v27;
      *v26 = 136315138;
      v28 = sub_22F741430();
      v30 = sub_22F145F20(v28, v29, v61);

      *(v26 + 4) = v30;
      _os_log_impl(&dword_22F0FC000, v22, v23, "Birthdays detected today for %s", v26, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v27);
      MEMORY[0x2319033A0](v27, -1, -1);
      v2 = v25;
      MEMORY[0x2319033A0](v26, -1, -1);
    }

    a1 = v50;
    v31 = v50[3];
    v32 = v50[4];
    __swift_project_boxed_opaque_existential_1(v50, v31);
    v33 = sub_22F2A6EB8(v21, v31, v32);

    v34 = v52;
    if (v33)
    {
      v35 = v54;
      v36 = v53;
      (*(v54 + 104))(v53, *MEMORY[0x277D3C468], v52);
      v37 = static CollectionTrigger.generateTriggerResults(from:type:)(v33, v36);

      (*(v35 + 8))(v36, v34);
      (*(v58 + 8))(v51, v59);
      (v56)(v10, v60);
      v38 = v57;
      swift_beginAccess();
      *(v2 + v38) = v37;
    }

    else
    {

      (*(v58 + 8))(v51, v59);
      (v56)(v10, v60);
      v46 = v57;
      swift_beginAccess();
      *(v2 + v46) = MEMORY[0x277D84F90];
    }
  }

  else
  {
    v39 = sub_22F740B70();
    v40 = sub_22F7415C0();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v61[0] = v42;
      *v41 = 136315138;
      v43 = sub_22F742240();
      v45 = sub_22F145F20(v43, v44, v61);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_22F0FC000, v39, v40, "GraphWorkingContext not available. Skipping %s trigger", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v42);
      MEMORY[0x2319033A0](v42, -1, -1);
      MEMORY[0x2319033A0](v41, -1, -1);
    }
  }

  __swift_destroy_boxed_opaque_existential_0(a1);
  return v2;
}

uint64_t BirthdayPeople.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t BirthdayPeople.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F2A1988()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F2A19D4()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph14BirthdayPeople_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F2A1A1C()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for BirthdayPeople(uint64_t a1)
{
  result = qword_2810ABD70;
  if (!qword_2810ABD70)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A1ABC(uint64_t a1)
{
  result = sub_22F740B90();
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

void sub_22F2A1D40(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = objc_opt_self();
  v5 = sub_22F73F5B0();
  v6 = [v4 monthDayNodesForLocalDate:v5 inGraph:a1];

  v7 = [v6 birthdayPersonNodes];
  v8 = [v7 localIdentifiers];
  v9 = sub_22F741420();

  *a2 = v9;
}

uint64_t sub_22F2A1E14(uint64_t a1, uint64_t a2)
{
  v11 = 1;
  v5 = swift_allocObject();
  v5[2] = &v11;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F2A2234;
  *(v6 + 24) = v5;
  aBlock[4] = sub_22F2A2290;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_21_0;
  v7 = _Block_copy(aBlock);

  [v2 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else if ((v11 & 1) == 0)
  {
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

uint64_t sub_22F2A1FCC(uint64_t a1, uint64_t a2)
{
  v12 = 0;
  v5 = swift_allocObject();
  v5[2] = &v12;
  v5[3] = a1;
  v5[4] = a2;
  v6 = swift_allocObject();
  *(v6 + 16) = sub_22F2A2208;
  *(v6 + 24) = v5;
  aBlock[4] = sub_22F2A2214;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F22F7B0;
  aBlock[3] = &block_descriptor_19;
  v7 = _Block_copy(aBlock);

  [v2 performSynchronousConcurrentGraphReadUsingBlock_];
  _Block_release(v7);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
  }

  else
  {
    v9 = v12;
    if (v12)
    {

      return v9;
    }
  }

  result = sub_22F741D40();
  __break(1u);
  return result;
}

double sub_22F2A2184(void *a1, void *a2, void (*a3)(uint64_t *__return_ptr))
{
  v5 = [a1 graph];
  a3(&v7);

  *a2 = v7;

  return result;
}

uint64_t block_copy_helper_19(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_22F2A2234(void *a1)
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = [a1 graph];
  v3();

  *v2 = 0;
}

void sub_22F2A2294(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F656C(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22F2A4934(v4);
  *a1 = v2;
}

uint64_t GraphManager.__allocating_init(with:tmpGraphDirectoryName:)(void *a1, uint64_t a2, uint64_t a3)
{
  v6 = swift_allocObject();
  GraphManager.init(with:tmpGraphDirectoryName:)(a1, a2, a3);
  return v6;
}

id *GraphManager.init(with:tmpGraphDirectoryName:)(id a1, uint64_t a2, uint64_t a3)
{
  v5 = v3;
  v91[2] = *MEMORY[0x277D85DE8];
  v9 = sub_22F73F470();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v83 = &v74 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v84 = &v74 - v13;
  MEMORY[0x28223BE20](v14);
  v85 = &v74 - v15;
  MEMORY[0x28223BE20](v16);
  v89 = &v74 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  swift_defaultActor_initialize();
  *(v3 + 112) = a1;
  if (a3)
  {
    v87 = v10;
    v88 = v9;
    v82 = v4;
    v91[0] = 0x2F706D742FLL;
    v91[1] = 0xE500000000000000;
    v86 = a1;
    v21 = a1;
    MEMORY[0x231900B10](a2, a3);

    sub_22F73F3C0();
  }

  else
  {
    v91[0] = 0;
    v22 = [a1 urlForApplicationDataFolderIdentifier:1 error:v91];
    v23 = v91[0];
    if (!v22)
    {
      v72 = v91[0];
      sub_22F73F370();

      swift_willThrow();
      goto LABEL_41;
    }

    v87 = v10;
    v88 = v9;
    v86 = a1;
    v82 = v4;
    v24 = v22;
    sub_22F73F430();
    v25 = v23;
  }

  v26 = v89;
  sub_22F73F410();
  v27 = objc_opt_self();
  v28 = [v27 defaultManager];
  sub_22F73F450();
  v29 = sub_22F740DF0();

  v91[0] = 0;
  v30 = [v28 createDirectoryIfNeededAtPath:v29 error:v91];

  v31 = v91[0];
  if (!v30)
  {
    v47 = v91[0];
    sub_22F73F370();

    swift_willThrow();
    v48 = v88;
    v49 = *(v87 + 8);
    v49(v26, v88);
    v49(v20, v48);
    a1 = v86;
LABEL_41:

    goto LABEL_42;
  }

  v32 = v87;
  v33 = v88;
  v79 = *(v87 + 16);
  v80 = v87 + 16;
  v79(v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL, v26, v88);
  v34 = v31;
  v35 = v20;
  v36 = v85;
  v81 = v35;
  sub_22F73F410();
  v37 = [v27 &selRef_defaultAssetFetchOptionsForMemories + 3];
  sub_22F73F450();
  v38 = sub_22F740DF0();

  v91[0] = 0;
  v39 = [v37 createDirectoryIfNeededAtPath:v38 error:v91];

  v40 = v91[0];
  if (!v39)
  {
    v55 = v91[0];
    sub_22F73F370();

    swift_willThrow();
    v56 = *(v32 + 8);
    v56(v36, v33);
    v56(v26, v33);
    v56(v81, v33);

    v56((v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL), v33);
    a1 = v86;
LABEL_42:
    type metadata accessor for GraphManager(0);
    swift_defaultActor_destroy();

    swift_deallocPartialClassInstance();
    return v5;
  }

  v75 = v5;
  v41 = objc_allocWithZone(MEMORY[0x277D22BC0]);
  v42 = v40;
  v43 = [v41 init];
  type metadata accessor for Node();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v44);
  v46 = 0;
  v77 = 0x800000022F78E7D0;
  v78 = 0x800000022F78E800;
  v76 = 0x800000022F78E7B0;
  v90 = xmmword_22F771340;
  do
  {
    v53 = byte_2843DD0D0[v46++ + 32];
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
    v54 = swift_allocObject();
    *(v54 + 16) = v90;
    v50 = 0xE500000000000000;
    v51 = 0x7465737341;
    switch(v53)
    {
      case 1:
        v50 = 0xEF6E6F697463656CLL;
        v51 = 0x6C6F437465737341;
        break;
      case 2:
        v50 = 0xE600000000000000;
        v51 = 0x6E6F73726550;
        break;
      case 3:
        v50 = 0xE300000000000000;
        v51 = 7628112;
        break;
      case 4:
        v51 = 0x6D75626C41;
        break;
      case 5:
        v51 = 0x656E656353;
        break;
      case 6:
        v50 = 0xE700000000000000;
        v51 = 0x687361486F6547;
        break;
      case 7:
        v50 = 0xEB00000000726574;
        v51 = 0x73756C4365746144;
        break;
      case 8:
        v50 = 0xE400000000000000;
        v51 = 1885958740;
        break;
      case 9:
        v50 = 0xE900000000000073;
        v51 = 0x657469726F766146;
        break;
      case 10:
        v50 = 0xEA00000000007365;
        v51 = 0x746163696C707544;
        break;
      case 11:
        v50 = 0xE400000000000000;
        v51 = 1701670728;
        break;
      case 12:
        v50 = 0xE300000000000000;
        v51 = 7954756;
        break;
      case 13:
        v50 = 0xE700000000000000;
        v51 = 0x7961646B656557;
        break;
      case 14:
        v51 = 0x68746E6F4DLL;
        break;
      case 15:
        v50 = 0xE700000000000000;
        v51 = 0x72657472617551;
        break;
      case 16:
        v50 = 0xE400000000000000;
        v51 = 1918985561;
        break;
      case 17:
        v50 = 0xE400000000000000;
        v51 = 2037672259;
        break;
      case 18:
        v51 = 0x6574617453;
        break;
      case 19:
        v50 = 0xE700000000000000;
        v51 = 0x7972746E756F43;
        break;
      case 20:
        v50 = 0xEB00000000746E65;
        v51 = 0x764563696C627550;
        break;
      case 21:
        v51 = 0xD000000000000013;
        v50 = v76;
        break;
      case 22:
        v51 = 0xD000000000000016;
        v50 = v77;
        break;
      case 23:
        v51 = 0x656D726F66726550;
        v50 = 0xE900000000000072;
        break;
      case 24:
        v50 = 0xE800000000000000;
        v51 = 0x7373656E69737542;
        break;
      case 25:
        v51 = 0xD000000000000010;
        v50 = v78;
        break;
      default:
        break;
    }

    *(v54 + 32) = v51;
    *(v54 + 40) = v50;
    v52 = sub_22F741160();

    [v43 registerNodeClass:ObjCClassFromMetadata forLabels:v52];
  }

  while (v46 != 26);
  type metadata accessor for Edge();
  v58 = swift_getObjCClassFromMetadata(v57);
  v59 = 0;
  do
  {
    v60 = &unk_2843DD090 + v59++;
    v61 = v60[32];
    v62 = swift_allocObject();
    *(v62 + 16) = v90;
    *(v62 + 32) = sub_22F2897A0(v61);
    *(v62 + 40) = v63;
    v64 = sub_22F741160();

    [v43 registerEdgeClass:v58 forLabels:v64];
  }

  while (v59 != 31);
  v65 = v83;
  v66 = v85;
  sub_22F73F410();
  sub_22F740E20();
  v67 = v84;
  sub_22F73F420();

  v69 = v87;
  v68 = v88;
  v70 = *(v87 + 8);
  v70(v65, v88);
  sub_22F73FAD0();
  v79(v65, v67, v68);
  v71 = sub_22F73FAA0();

  v70(v67, v68);
  v70(v89, v68);
  v70(v81, v68);
  v5 = v75;
  *(v75 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphManager) = v71;
  (*(v69 + 32))(v5 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v66, v68);
  return v5;
}

uint64_t type metadata accessor for GraphManager(uint64_t a1)
{
  result = qword_27DAB2FA8;
  if (!qword_27DAB2FA8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2A2E24()
{
  v1 = swift_task_alloc();
  *(v0 + 24) = v1;
  *v1 = v0;
  v1[1] = sub_22F2A2EC4;

  return MEMORY[0x282181570]();
}

uint64_t sub_22F2A2EC4()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_22F2A2FB8()
{
  *(v1 + 16) = v0;
  *(v1 + 24) = *v0;
  return MEMORY[0x2822009F8](sub_22F2A3000, v0, 0);
}

uint64_t sub_22F2A3000()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_task_alloc();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  v4 = swift_task_alloc();
  v0[5] = v4;
  *(v4 + 16) = sub_22F2A3644;
  *(v4 + 24) = v3;
  v5 = swift_task_alloc();
  v0[6] = v5;
  *v5 = v0;
  v5[1] = sub_22F2A3104;
  v6 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x282181580](v5, &unk_22F7820F0, v4, v6);
}

uint64_t sub_22F2A3104()
{
  v2 = *v1;
  *(*v1 + 56) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_22F2A3234;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_22F20A4A4;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_22F2A3234()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_22F2A32A0(void *a1)
{
  v26[1] = *MEMORY[0x277D85DE8];
  v3 = sub_22F73F470();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v25 - v8;
  sub_22F2A61F0(a1);
  if (!v1)
  {
    v25[1] = 0;
    sub_22F73F410();
    sub_22F73F420();
    v10 = *(v4 + 8);
    v10(v6, v3);
    v11 = objc_allocWithZone(MEMORY[0x277CBEB78]);
    v12 = sub_22F73F3F0();
    v13 = [v11 initWithURL:v12 append:0];

    if (v13)
    {
      [v13 open];
      v14 = objc_opt_self();
      v15 = sub_22F740C80();

      v26[0] = 0;
      v16 = [v14 writePropertyList:v15 toStream:v13 format:200 options:0 error:v26];

      v17 = v26[0];
      if (v16)
      {
        v18 = v26[0];
      }

      else
      {
        v19 = 0xEE006F3A20726F72;
        v20 = 0x7265207974706D65;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0FD8, qword_22F7723F0);
        v21 = swift_allocObject();
        v22 = v21;
        *(v21 + 16) = xmmword_22F771340;
        if (v17)
        {
          v25[0] = v10;
          v23 = [v17 description];
          v20 = sub_22F740E20();
          v19 = v24;

          v22[7] = MEMORY[0x277D837D0];
          v10 = v25[0];
          if (!v19)
          {
            v19 = 0xEE006F3A20726F72;
            v20 = 0x7265207974706D65;
          }
        }

        else
        {
          *(v21 + 56) = MEMORY[0x277D837D0];
        }

        v22[4] = v20;
        v22[5] = v19;
        sub_22F742150();
      }

      [v13 close];

      v10(v9, v3);
    }

    else
    {
      v10(v9, v3);
    }
  }
}

BOOL sub_22F2A3660(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (*(*a1 + 16) && (v4 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v5 & 1) != 0) && (sub_22F13A100(*(v2 + 56) + 32 * v4, v11), swift_dynamicCast()))
  {
    v6 = v12;
    v7 = *(v3 + 16);
    if (!v7)
    {
      return v6 < v7;
    }
  }

  else
  {
    v6 = 0;
    v7 = *(v3 + 16);
    if (!v7)
    {
      return v6 < v7;
    }
  }

  v8 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
  if ((v9 & 1) != 0 && (sub_22F13A100(*(v3 + 56) + 32 * v8, v11), swift_dynamicCast()))
  {
    v7 = v12;
  }

  else
  {
    v7 = 0;
  }

  return v6 < v7;
}

uint64_t sub_22F2A3788(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_22F73F6D0();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_22F2A3848, 0, 0);
}

uint64_t sub_22F2A3848()
{
  v2 = *(v0 + 40);
  v1 = *(v0 + 48);
  v3 = *(v0 + 32);
  v4 = *(v0 + 16);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v5 = sub_22F73FA70();
  v6 = [v5 graphIdentifier];

  sub_22F73F6B0();
  v7 = sub_22F73F6A0();
  v9 = v8;
  (*(v2 + 8))(v1, v3);
  *v4 = v7;
  v4[1] = v9;

  v10 = *(v0 + 8);

  return v10();
}

uint64_t sub_22F2A3948(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F2A3970, v4, 0);
}

uint64_t sub_22F2A3970()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22F2A3A58;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x282181580](v6, &unk_22F782108, v2, v5);
}

uint64_t sub_22F2A3A58()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_22F2A3B94, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22F2A3B94()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_22F2A3BF8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[4] = a3;
  v4[5] = a4;
  v4[2] = a1;
  v4[3] = a2;
  return MEMORY[0x2822009F8](sub_22F2A3C1C, 0, 0);
}

uint64_t sub_22F2A3C1C()
{
  v1 = *(v0 + 32);
  __swift_project_boxed_opaque_existential_1(*(v0 + 24), *(*(v0 + 24) + 24));
  v2 = sub_22F73FA70();
  v1();

  v3 = *(v0 + 8);

  return v3();
}

uint64_t sub_22F2A3CDC(uint64_t a1, uint64_t a2)
{
  v7 = *(v2 + 16);
  v6 = *(v2 + 24);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F2A3BF8(a1, a2, v7, v6);
}

uint64_t sub_22F2A3D90(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F2A3BF8(a1, a2, v6, v7);
}

uint64_t sub_22F2A3E54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[5] = a4;
  v5[6] = v4;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  return MEMORY[0x2822009F8](sub_22F2A3E7C, v4, 0);
}

uint64_t sub_22F2A3E7C()
{
  v1 = *(v0 + 40);
  v2 = swift_task_alloc();
  *(v0 + 56) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = v1;
  *(v2 + 24) = v3;
  v4 = swift_task_alloc();
  *(v0 + 64) = v4;
  *v4 = v0;
  v4[1] = sub_22F2A3F64;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x282181588](v6, &unk_22F782120, v2, v5);
}

uint64_t sub_22F2A3F64()
{
  v2 = *v1;
  v2[9] = v0;

  if (v0)
  {
    v3 = v2[6];

    return MEMORY[0x2822009F8](sub_22F2A6EB4, v3, 0);
  }

  else
  {

    v4 = v2[1];

    return v4();
  }
}

uint64_t sub_22F2A40A0(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x2822009F8](sub_22F2A40C0, 0, 0);
}

uint64_t sub_22F2A40C0()
{
  v1 = sub_22F73FA80();
  sub_22F207320(v1);

  v2 = *(v0 + 8);

  return v2();
}

uint64_t sub_22F2A414C(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 24);
  v7 = *(v2 + 32);
  v8 = swift_task_alloc();
  *(v3 + 16) = v8;
  *v8 = v3;
  v8[1] = sub_22F20B7C0;

  return sub_22F20A7D8(a1, a2, v6, v7);
}

uint64_t GraphManager.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v2 = sub_22F73F470();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v2);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t GraphManager.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph12GraphManager_inputStreamTokenStoresDirectoryURL;
  v2 = sub_22F73F470();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC11PhotosGraph12GraphManager_graphDirectoryURL, v2);

  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t sub_22F2A4394(uint64_t a1)
{
  result = sub_22F73F470();
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

uint64_t dispatch thunk of GraphManager.invalidate()()
{
  v4 = (*(*v0 + 128) + **(*v0 + 128));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22F12094C;

  return v4();
}

uint64_t dispatch thunk of GraphManager.exportGraphAsPlist()()
{
  v4 = (*(*v0 + 136) + **(*v0 + 136));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_22F12094C;

  return v4();
}

uint64_t dispatch thunk of GraphManager.performGraphRead<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 152) + **(*v4 + 152));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22F20B7C0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of GraphManager.performGraphWrite<A>(using:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 160) + **(*v4 + 160));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_22F20B7C0;

  return v12(a1, a2, a3, a4);
}

void sub_22F2A4934(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x277D84F90];
      }

      else
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F2A4C20(v7, v8, a1, v4);
      *(v6 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_22F2A4A3C(0, v2, 1, a1);
  }
}

void sub_22F2A4A3C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = (*a4 + 8 * a3 - 8);
    v7 = a1 - a3;
LABEL_5:
    v8 = *(v5 + 8 * v4);
    v20 = v7;
    v21 = v6;
    while (1)
    {
      v9 = *v6;
      v10 = *(v8 + 16);

      if (v10 && (v11 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v12 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v11, v22), swift_dynamicCast()))
      {
        v13 = v23;
        if (!*(v9 + 16))
        {
          goto LABEL_10;
        }
      }

      else
      {
        v13 = 0;
        if (!*(v9 + 16))
        {
LABEL_10:

          if (v13 >= 0)
          {
            goto LABEL_4;
          }

          goto LABEL_18;
        }
      }

      v14 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v15 & 1) != 0 && (sub_22F13A100(*(v9 + 56) + 32 * v14, v22), (swift_dynamicCast()))
      {
        v16 = v23;

        if (v13 >= v16)
        {
          goto LABEL_4;
        }
      }

      else
      {

        if ((v13 & 0x8000000000000000) == 0)
        {
          goto LABEL_4;
        }
      }

LABEL_18:
      if (!v5)
      {
        __break(1u);
        return;
      }

      v17 = *v6;
      v8 = v6[1];
      *v6 = v8;
      v6[1] = v17;
      --v6;
      if (__CFADD__(v7++, 1))
      {
LABEL_4:
        ++v4;
        v6 = v21 + 1;
        v7 = v20 - 1;
        if (v4 == a2)
        {
          return;
        }

        goto LABEL_5;
      }
    }
  }
}

void sub_22F2A4C20(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = v4;
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_112:
    v8 = *a1;
    if (!*a1)
    {
      goto LABEL_151;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_145:
      v9 = sub_22F3F5F98(v9);
    }

    v110 = v9;
    v93 = *(v9 + 2);
    if (v93 >= 2)
    {
      while (*v6)
      {
        v94 = *&v9[16 * v93];
        v95 = *&v9[16 * v93 + 24];
        sub_22F2A5474((*v6 + 8 * v94), (*v6 + 8 * *&v9[16 * v93 + 16]), (*v6 + 8 * v95), v8);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v95 < v94)
        {
          goto LABEL_138;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v93 - 2 >= *(v9 + 2))
        {
          goto LABEL_139;
        }

        v96 = &v9[16 * v93];
        *v96 = v94;
        *(v96 + 1) = v95;
        v110 = v9;
        sub_22F3F5F0C(v93 - 1);
        v9 = v110;
        v93 = *(v110 + 2);
        if (v93 <= 1)
        {
          goto LABEL_122;
        }
      }

      goto LABEL_149;
    }

LABEL_122:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
  while (1)
  {
    v10 = v8;
    if (v8 + 1 >= v7)
    {
      v16 = v8 + 1;
      goto LABEL_31;
    }

    v11 = *v6;
    v8 = *(*v6 + 8 * (v8 + 1));
    v109[0] = v8;
    v106 = v7;
    v108 = *(v11 + 8 * v10);

    v12 = sub_22F2A3660(v109, &v108);
    if (v5)
    {

      goto LABEL_122;
    }

    v6 = v10;
    v13 = v12;
    v99 = v9;

    v14 = v6 + 2;
    v101 = v6;
    v9 = (8 * v6);
    v15 = v11 + 8 * v6 + 16;
    v16 = v106;
    while (v16 != v14)
    {
      v18 = *(v15 - 8);
      v8 = *v15;
      v19 = *(*v15 + 16);

      if (v19 && (v20 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v21 & 1) != 0) && (sub_22F13A100(*(v8 + 56) + 32 * v20, v109), swift_dynamicCast()))
      {
        v6 = v108;
        if (!*(v18 + 16))
        {
          goto LABEL_7;
        }
      }

      else
      {
        v6 = 0;
        if (!*(v18 + 16))
        {
          goto LABEL_7;
        }
      }

      v22 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v23)
      {
        sub_22F13A100(*(v18 + 56) + 32 * v22, v109);
        if (swift_dynamicCast())
        {
          v17 = v108;

          goto LABEL_8;
        }
      }

LABEL_7:

      v17 = 0;
LABEL_8:
      ++v14;
      v15 += 8;
      v16 = v106;
      if (((v13 ^ (v6 >= v17)) & 1) == 0)
      {
        v16 = v14 - 1;
        break;
      }
    }

    if (!v13)
    {
      v6 = a3;
      v9 = v99;
      v10 = v101;
      goto LABEL_31;
    }

    v10 = v101;
    if (v16 < v101)
    {
      goto LABEL_144;
    }

    if (v101 < v16)
    {
      v24 = 8 * v16 - 8;
      v25 = v16;
      v26 = v101;
      do
      {
        if (v26 != --v25)
        {
          v27 = *a3;
          if (!*a3)
          {
            goto LABEL_148;
          }

          v28 = *&v9[v27];
          *&v9[v27] = *(v27 + v24);
          *(v27 + v24) = v28;
        }

        ++v26;
        v24 -= 8;
        v9 += 8;
      }

      while (v26 < v25);
    }

    v6 = a3;
    v9 = v99;
LABEL_31:
    v29 = *(v6 + 8);
    if (v16 >= v29)
    {
      goto LABEL_40;
    }

    if (__OFSUB__(v16, v10))
    {
      goto LABEL_141;
    }

    if (v16 - v10 >= a4)
    {
LABEL_40:
      v8 = v16;
      if (v16 < v10)
      {
        goto LABEL_140;
      }

      goto LABEL_41;
    }

    if (__OFADD__(v10, a4))
    {
      goto LABEL_142;
    }

    if (v10 + a4 >= v29)
    {
      v8 = *(v6 + 8);
    }

    else
    {
      v8 = v10 + a4;
    }

    if (v8 < v10)
    {
LABEL_143:
      __break(1u);
LABEL_144:
      __break(1u);
      goto LABEL_145;
    }

    if (v16 == v8)
    {
      goto LABEL_40;
    }

    v100 = v9;
    v102 = v10;
    v97 = v5;
    v77 = *v6;
    v78 = *v6 + 8 * v16 - 8;
    v79 = v10 - v16;
    v105 = v8;
LABEL_92:
    v107 = v16;
    v80 = *(v77 + 8 * v16);
    v81 = v79;
    v82 = v78;
LABEL_93:
    v83 = *v82;
    v84 = *(v80 + 16);

    if (v84 && (v85 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v86 & 1) != 0) && (sub_22F13A100(*(v80 + 56) + 32 * v85, v109), swift_dynamicCast()))
    {
      v87 = v108;
      if (!*(v83 + 16))
      {
        goto LABEL_97;
      }

LABEL_99:
      v89 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v90)
      {
        sub_22F13A100(*(v83 + 56) + 32 * v89, v109);
        if (swift_dynamicCast())
        {
          v88 = v108;

          goto LABEL_102;
        }
      }

      if ((v87 & 0x8000000000000000) == 0)
      {
        goto LABEL_91;
      }
    }

    else
    {
      v87 = 0;
      if (*(v83 + 16))
      {
        goto LABEL_99;
      }

LABEL_97:

      v88 = 0;
LABEL_102:
      if (v87 >= v88)
      {
        goto LABEL_91;
      }
    }

    if (!v77)
    {
      break;
    }

    v91 = *v82;
    v80 = v82[1];
    *v82 = v80;
    v82[1] = v91;
    --v82;
    if (!__CFADD__(v81++, 1))
    {
      goto LABEL_93;
    }

LABEL_91:
    v8 = v105;
    v16 = v107 + 1;
    v78 += 8;
    --v79;
    if (v107 + 1 != v105)
    {
      goto LABEL_92;
    }

    v5 = v97;
    v6 = a3;
    v9 = v100;
    v10 = v102;
    if (v105 < v102)
    {
      goto LABEL_140;
    }

LABEL_41:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
    }

    v31 = *(v9 + 2);
    v30 = *(v9 + 3);
    v32 = v31 + 1;
    if (v31 >= v30 >> 1)
    {
      v9 = sub_22F13D970((v30 > 1), v31 + 1, 1, v9);
    }

    *(v9 + 2) = v32;
    v33 = &v9[16 * v31];
    *(v33 + 4) = v10;
    *(v33 + 5) = v8;
    v34 = *a1;
    if (!*a1)
    {
      goto LABEL_150;
    }

    if (v31)
    {
      while (2)
      {
        v35 = v32 - 1;
        if (v32 >= 4)
        {
          v40 = &v9[16 * v32 + 32];
          v41 = *(v40 - 64);
          v42 = *(v40 - 56);
          v46 = __OFSUB__(v42, v41);
          v43 = v42 - v41;
          if (v46)
          {
            goto LABEL_127;
          }

          v45 = *(v40 - 48);
          v44 = *(v40 - 40);
          v46 = __OFSUB__(v44, v45);
          v38 = v44 - v45;
          v39 = v46;
          if (v46)
          {
            goto LABEL_128;
          }

          v47 = &v9[16 * v32];
          v49 = *v47;
          v48 = *(v47 + 1);
          v46 = __OFSUB__(v48, v49);
          v50 = v48 - v49;
          if (v46)
          {
            goto LABEL_130;
          }

          v46 = __OFADD__(v38, v50);
          v51 = v38 + v50;
          if (v46)
          {
            goto LABEL_133;
          }

          if (v51 >= v43)
          {
            v69 = &v9[16 * v35 + 32];
            v71 = *v69;
            v70 = *(v69 + 1);
            v46 = __OFSUB__(v70, v71);
            v72 = v70 - v71;
            if (v46)
            {
              goto LABEL_137;
            }

            if (v38 < v72)
            {
              v35 = v32 - 2;
            }
          }

          else
          {
LABEL_60:
            if (v39)
            {
              goto LABEL_129;
            }

            v52 = &v9[16 * v32];
            v54 = *v52;
            v53 = *(v52 + 1);
            v55 = __OFSUB__(v53, v54);
            v56 = v53 - v54;
            v57 = v55;
            if (v55)
            {
              goto LABEL_132;
            }

            v58 = &v9[16 * v35 + 32];
            v60 = *v58;
            v59 = *(v58 + 1);
            v46 = __OFSUB__(v59, v60);
            v61 = v59 - v60;
            if (v46)
            {
              goto LABEL_135;
            }

            if (__OFADD__(v56, v61))
            {
              goto LABEL_136;
            }

            if (v56 + v61 < v38)
            {
              goto LABEL_74;
            }

            if (v38 < v61)
            {
              v35 = v32 - 2;
            }
          }
        }

        else
        {
          if (v32 == 3)
          {
            v36 = *(v9 + 4);
            v37 = *(v9 + 5);
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
            goto LABEL_60;
          }

          v62 = &v9[16 * v32];
          v64 = *v62;
          v63 = *(v62 + 1);
          v46 = __OFSUB__(v63, v64);
          v56 = v63 - v64;
          v57 = v46;
LABEL_74:
          if (v57)
          {
            goto LABEL_131;
          }

          v65 = &v9[16 * v35];
          v67 = *(v65 + 4);
          v66 = *(v65 + 5);
          v46 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v46)
          {
            goto LABEL_134;
          }

          if (v68 < v56)
          {
            break;
          }
        }

        v73 = v35 - 1;
        if (v35 - 1 >= v32)
        {
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
LABEL_137:
          __break(1u);
LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          __break(1u);
          goto LABEL_143;
        }

        if (!*v6)
        {
          goto LABEL_147;
        }

        v74 = *&v9[16 * v73 + 32];
        v75 = *&v9[16 * v35 + 40];
        sub_22F2A5474((*v6 + 8 * v74), (*v6 + 8 * *&v9[16 * v35 + 32]), (*v6 + 8 * v75), v34);
        if (v5)
        {
          goto LABEL_122;
        }

        if (v75 < v74)
        {
          goto LABEL_125;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v73 >= *(v9 + 2))
        {
          goto LABEL_126;
        }

        v76 = &v9[16 * v73];
        *(v76 + 4) = v74;
        *(v76 + 5) = v75;
        v110 = v9;
        sub_22F3F5F0C(v35);
        v9 = v110;
        v32 = *(v110 + 2);
        if (v32 <= 1)
        {
          break;
        }

        continue;
      }
    }

    v7 = *(v6 + 8);
    if (v8 >= v7)
    {
      goto LABEL_112;
    }
  }

  __break(1u);
LABEL_147:
  __break(1u);
LABEL_148:
  __break(1u);
LABEL_149:
  __break(1u);
LABEL_150:
  __break(1u);
LABEL_151:
  __break(1u);
}

uint64_t sub_22F2A5474(char *__src, char *__dst, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __dst;
  v7 = __src;
  v8 = __dst - __src;
  v9 = __dst - __src + 7;
  if (__dst - __src >= 0)
  {
    v9 = __dst - __src;
  }

  v10 = v9 >> 3;
  v11 = a3 - __dst;
  v12 = a3 - __dst + 7;
  if (a3 - __dst >= 0)
  {
    v12 = a3 - __dst;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v10] <= a4)
    {
      memmove(a4, __src, 8 * v10);
    }

    v42 = &v4[8 * v10];
    if (v8 < 8 || v6 >= v5)
    {
      v6 = v7;
      goto LABEL_57;
    }

    while (1)
    {
      v14 = v6;
      v15 = *v6;
      v16 = *v4;
      v17 = *(v15 + 16);

      if (v17 && (v18 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v19 & 1) != 0) && (sub_22F13A100(*(v15 + 56) + 32 * v18, v43), swift_dynamicCast()))
      {
        v20 = v44;
        if (!*(v16 + 16))
        {
          goto LABEL_15;
        }
      }

      else
      {
        v20 = 0;
        if (!*(v16 + 16))
        {
LABEL_15:

          v21 = 0;
          goto LABEL_20;
        }
      }

      v22 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v23)
      {
        sub_22F13A100(*(v16 + 56) + 32 * v22, v43);
        if (swift_dynamicCast())
        {
          v21 = v44;

LABEL_20:
          v6 = v14;
          if (v20 >= v21)
          {
            goto LABEL_25;
          }

          goto LABEL_21;
        }
      }

      v6 = v14;
      if ((v20 & 0x8000000000000000) == 0)
      {
LABEL_25:
        v24 = v4;
        v25 = v7 == v4;
        v4 += 8;
        if (v25)
        {
          goto LABEL_27;
        }

LABEL_26:
        *v7 = *v24;
        goto LABEL_27;
      }

LABEL_21:
      v24 = v6;
      v25 = v7 == v6;
      v6 += 8;
      if (!v25)
      {
        goto LABEL_26;
      }

LABEL_27:
      v7 += 8;
      if (v4 >= v42 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_57;
      }
    }
  }

  if (a4 != __dst || &__dst[8 * v13] <= a4)
  {
    memmove(a4, __dst, 8 * v13);
  }

  v42 = &v4[8 * v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_35:
    v26 = v6 - 8;
    v5 -= 8;
    v27 = v42;
    v41 = v6 - 8;
    while (1)
    {
      v28 = v6;
      v30 = *(v27 - 1);
      v27 -= 8;
      v29 = v30;
      v31 = *v26;
      v32 = *(v30 + 16);

      if (v32 && (v33 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265), (v34 & 1) != 0) && (sub_22F13A100(*(v29 + 56) + 32 * v33, v43), swift_dynamicCast()))
      {
        v35 = v44;
        if (!*(v31 + 16))
        {
          goto LABEL_46;
        }
      }

      else
      {
        v35 = 0;
        if (!*(v31 + 16))
        {
          goto LABEL_46;
        }
      }

      v36 = sub_22F1229E8(0x696669746E656469, 0xEA00000000007265);
      if (v37)
      {
        sub_22F13A100(*(v31 + 56) + 32 * v36, v43);
        if (swift_dynamicCast())
        {
          v38 = v44;

          goto LABEL_47;
        }
      }

LABEL_46:

      v38 = 0;
LABEL_47:
      v6 = v28;
      v39 = v5 + 8;
      if (v35 < v38)
      {
        if (v39 != v28)
        {
          *v5 = *v41;
        }

        if (v42 <= v4 || (v6 = v41, v41 <= v7))
        {
          v6 = v41;
          break;
        }

        goto LABEL_35;
      }

      v26 = v41;
      if (v39 != v42)
      {
        *v5 = *v27;
      }

      v5 -= 8;
      v42 = v27;
      if (v27 <= v4)
      {
        v42 = v27;
        break;
      }
    }
  }

LABEL_57:
  if (v6 != v4 || v6 >= &v4[(v42 - v4 + (v42 - v4 < 0 ? 7uLL : 0)) & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * ((v42 - v4) / 8));
  }

  return 1;
}

void *sub_22F2A590C(uint64_t a1)
{
  v1 = a1;
  v2 = a1 + 64;
  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v7 = 0;
  v8 = MEMORY[0x277D84F98];
LABEL_4:
  v9 = MEMORY[0x277D83B88];
  if (v5)
  {
    goto LABEL_9;
  }

  while (1)
  {
LABEL_5:
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_78:
      __break(1u);
LABEL_79:
      __break(1u);
LABEL_80:
      __break(1u);
LABEL_81:
      __break(1u);
LABEL_82:
      __break(1u);
LABEL_83:
      __break(1u);
LABEL_84:
      __break(1u);
LABEL_85:
      __break(1u);
LABEL_86:
      result = sub_22F7420C0();
      __break(1u);
      return result;
    }

    if (v10 >= v6)
    {
      break;
    }

    v5 = *(v2 + 8 * v10);
    ++v7;
    if (v5)
    {
      v7 = v10;
      while (1)
      {
LABEL_9:
        v11 = __clz(__rbit64(v5));
        v5 &= v5 - 1;
        v12 = v11 | (v7 << 6);
        v13 = (*(v1 + 48) + 16 * v12);
        v14 = v13[1];
        v82 = *v13;
        v15 = *(*(v1 + 56) + 8 * v12);

        v16 = v15;
        v17 = [v16 dataType];
        v81 = v16;
        if (v17 <= 1)
        {
          if (v17)
          {
            if (v17 != 1)
            {
LABEL_76:

              sub_22F2A6DF8();
              swift_allocError();
              *v79 = 3;
              swift_willThrow();

              return v8;
            }

            *&v83 = [v16 kgPropertyValue];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            if (swift_dynamicCast())
            {
              v86 = v9;
              *&v85 = v87;
              sub_22F107D08(&v85, &v83);
              isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
              v87 = v8;
              v24 = sub_22F1229E8(v82, v14);
              v26 = v8[2];
              v27 = (v25 & 1) == 0;
              v28 = __OFADD__(v26, v27);
              v29 = v26 + v27;
              if (v28)
              {
                goto LABEL_80;
              }

              v30 = v25;
              if (v8[3] < v29)
              {
                sub_22F125CA4(v29, isUniquelyReferenced_nonNull_native);
                v24 = sub_22F1229E8(v82, v14);
                if ((v30 & 1) != (v31 & 1))
                {
                  goto LABEL_86;
                }

                goto LABEL_54;
              }

              if (isUniquelyReferenced_nonNull_native)
              {
LABEL_54:
                v61 = v81;
                if (v30)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v71 = v24;
                sub_22F1344D4();
                v24 = v71;
                v61 = v81;
                if (v30)
                {
                  goto LABEL_60;
                }
              }

              v8 = v87;
              v87[(v24 >> 6) + 8] |= 1 << v24;
              v65 = (v8[6] + 16 * v24);
              *v65 = v82;
              v65[1] = v14;
              sub_22F107D08(&v83, (v8[7] + 32 * v24));

              v66 = v8[2];
              v28 = __OFADD__(v66, 1);
              v64 = v66 + 1;
              if (v28)
              {
                goto LABEL_84;
              }

              goto LABEL_70;
            }
          }

          else
          {
            *&v83 = [v16 kgPropertyValue];
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
            if (swift_dynamicCast())
            {
              v86 = v9;
              *&v85 = v87;
              sub_22F107D08(&v85, &v83);
              v32 = swift_isUniquelyReferenced_nonNull_native();
              v87 = v8;
              v24 = sub_22F1229E8(v82, v14);
              v34 = v8[2];
              v35 = (v33 & 1) == 0;
              v28 = __OFADD__(v34, v35);
              v36 = v34 + v35;
              if (v28)
              {
                goto LABEL_79;
              }

              v37 = v33;
              if (v8[3] < v36)
              {
                sub_22F125CA4(v36, v32);
                v24 = sub_22F1229E8(v82, v14);
                if ((v37 & 1) != (v38 & 1))
                {
                  goto LABEL_86;
                }

                goto LABEL_49;
              }

              if (v32)
              {
LABEL_49:
                v61 = v81;
                if (v37)
                {
                  goto LABEL_60;
                }
              }

              else
              {
                v70 = v24;
                sub_22F1344D4();
                v24 = v70;
                v61 = v81;
                if (v37)
                {
                  goto LABEL_60;
                }
              }

              v8 = v87;
              v87[(v24 >> 6) + 8] |= 1 << v24;
              v62 = (v8[6] + 16 * v24);
              *v62 = v82;
              v62[1] = v14;
              sub_22F107D08(&v83, (v8[7] + 32 * v24));

              v63 = v8[2];
              v28 = __OFADD__(v63, 1);
              v64 = v63 + 1;
              if (v28)
              {
                goto LABEL_85;
              }

              goto LABEL_70;
            }
          }

          goto LABEL_37;
        }

        if (v17 == 2)
        {
          *&v83 = [v16 kgPropertyValue];
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
          v39 = MEMORY[0x277D839F8];
          if (swift_dynamicCast())
          {
            v86 = v39;
            *&v85 = v87;
            sub_22F107D08(&v85, &v83);
            v40 = swift_isUniquelyReferenced_nonNull_native();
            v87 = v8;
            v24 = sub_22F1229E8(v82, v14);
            v42 = v8[2];
            v43 = (v41 & 1) == 0;
            v28 = __OFADD__(v42, v43);
            v44 = v42 + v43;
            if (v28)
            {
              goto LABEL_78;
            }

            v45 = v41;
            if (v8[3] < v44)
            {
              sub_22F125CA4(v44, v40);
              v24 = sub_22F1229E8(v82, v14);
              if ((v45 & 1) != (v46 & 1))
              {
                goto LABEL_86;
              }

              goto LABEL_59;
            }

            if (v40)
            {
LABEL_59:
              v61 = v81;
              if (v45)
              {
                goto LABEL_60;
              }
            }

            else
            {
              v72 = v24;
              sub_22F1344D4();
              v24 = v72;
              v61 = v81;
              if (v45)
              {
LABEL_60:
                v67 = v24;

                v8 = v87;
                v68 = (v87[7] + 32 * v67);
                __swift_destroy_boxed_opaque_existential_0(v68);
                sub_22F107D08(&v83, v68);

                goto LABEL_4;
              }
            }

            v8 = v87;
            v87[(v24 >> 6) + 8] |= 1 << v24;
            v73 = (v8[6] + 16 * v24);
            *v73 = v82;
            v73[1] = v14;
            sub_22F107D08(&v83, (v8[7] + 32 * v24));

            v74 = v8[2];
            v28 = __OFADD__(v74, 1);
            v64 = v74 + 1;
            if (v28)
            {
              goto LABEL_83;
            }

LABEL_70:
            v8[2] = v64;
            goto LABEL_4;
          }

LABEL_37:
          v47 = sub_22F1229E8(v82, v14);
          v49 = v48;

          if (v49)
          {
            v50 = swift_isUniquelyReferenced_nonNull_native();
            v87 = v8;
            if (!v50)
            {
              sub_22F1344D4();
              v8 = v87;
            }

            sub_22F107D08((v8[7] + 32 * v47), &v83);
            sub_22F3B9870(v47, v8);
          }

          else
          {

            v83 = 0u;
            v84 = 0u;
          }

          sub_22F120ADC(&v83, &qword_27DAB0C28, &qword_22F778980);
          goto LABEL_4;
        }

        if (v17 != 3)
        {
          goto LABEL_76;
        }

        v87 = [v16 kgPropertyValue];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB3050, &qword_22F788D00);
        v18 = MEMORY[0x277D837D0];
        if (swift_dynamicCast())
        {
          break;
        }

        v19 = sub_22F1229E8(v82, v14);
        v21 = v20;

        if (v21)
        {
          v22 = swift_isUniquelyReferenced_nonNull_native();
          v87 = v8;
          if (!v22)
          {
            sub_22F1344D4();
            v8 = v87;
          }

          sub_22F107D08((v8[7] + 32 * v19), &v83);
          sub_22F3B9870(v19, v8);
        }

        else
        {

          v83 = 0u;
          v84 = 0u;
        }

        v9 = MEMORY[0x277D83B88];
        sub_22F120ADC(&v83, &qword_27DAB0C28, &qword_22F778980);
        if (!v5)
        {
          goto LABEL_5;
        }
      }

      v80 = v1;
      v86 = v18;
      v85 = v83;
      sub_22F107D08(&v85, &v83);
      v51 = swift_isUniquelyReferenced_nonNull_native();
      v87 = v8;
      v53 = sub_22F1229E8(v82, v14);
      v54 = v8[2];
      v55 = (v52 & 1) == 0;
      v56 = v54 + v55;
      if (__OFADD__(v54, v55))
      {
        goto LABEL_81;
      }

      v57 = v52;
      if (v8[3] >= v56)
      {
        if (v51)
        {
          v60 = v81;
          if ((v52 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

        else
        {
          sub_22F1344D4();
          v60 = v81;
          if ((v57 & 1) == 0)
          {
            goto LABEL_72;
          }
        }

LABEL_63:

        v8 = v87;
        v69 = (v87[7] + 32 * v53);
        __swift_destroy_boxed_opaque_existential_0(v69);
        sub_22F107D08(&v83, v69);

        v1 = v80;
        goto LABEL_4;
      }

      sub_22F125CA4(v56, v51);
      v58 = sub_22F1229E8(v82, v14);
      if ((v57 & 1) != (v59 & 1))
      {
        goto LABEL_86;
      }

      v53 = v58;
      v60 = v81;
      if (v57)
      {
        goto LABEL_63;
      }

LABEL_72:
      v8 = v87;
      v87[(v53 >> 6) + 8] |= 1 << v53;
      v75 = (v8[6] + 16 * v53);
      *v75 = v82;
      v75[1] = v14;
      sub_22F107D08(&v83, (v8[7] + 32 * v53));

      v76 = v8[2];
      v28 = __OFADD__(v76, 1);
      v77 = v76 + 1;
      if (v28)
      {
        goto LABEL_82;
      }

      v8[2] = v77;
      v1 = v80;
      goto LABEL_4;
    }
  }

  return v8;
}

void *sub_22F2A61F0(void *a1)
{
  v2 = v1;
  v4 = sub_22F73F6D0();
  v74 = *(v4 - 8);
  v75 = v4;
  MEMORY[0x28223BE20](v4);
  v73 = &v71 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() any];
  v7 = [a1 nodeIdentifiersMatchingFilter_];

  v8 = objc_allocWithZone(MEMORY[0x277D22BD8]);
  v77 = v7;
  v78 = a1;
  v76 = [v8 initWithIdentifiers:v7 graph:a1];
  v9 = [v76 allObjects];
  type metadata accessor for Node();
  inited = sub_22F741180();

  if (inited >> 62)
  {
    goto LABEL_55;
  }

  for (i = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_22F741A00())
  {
    if (i)
    {
      v12 = 0;
      v86 = inited & 0xC000000000000001;
      v85 = inited & 0xFFFFFFFFFFFFFF8;
      v84 = xmmword_22F7707D0;
      v92 = MEMORY[0x277D84F90];
      v82 = i;
      *&v83 = inited;
      while (1)
      {
        if (v86)
        {
          v13 = MEMORY[0x2319016F0](v12, inited);
        }

        else
        {
          if (v12 >= *(v85 + 16))
          {
            goto LABEL_50;
          }

          v13 = *(inited + 8 * v12 + 32);
        }

        v14 = v13;
        if (__OFADD__(v12, 1))
        {
          __break(1u);
LABEL_50:
          __break(1u);
          goto LABEL_51;
        }

        v89 = v12 + 1;
        v90 = v12;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        inited = swift_initStackObject();
        *(inited + 16) = v84;
        *(inited + 32) = 0x696669746E656469;
        v94 = inited + 32;
        *(inited + 40) = 0xEA00000000007265;
        *(inited + 48) = *&v14[OBJC_IVAR____TtC11PhotosGraph4Node_identifier];
        *(inited + 72) = MEMORY[0x277D83E88];
        *(inited + 80) = 0x736C6562616CLL;
        *(inited + 88) = 0xE600000000000000;
        v15 = *&v14[OBJC_IVAR____TtC11PhotosGraph4Node_labels];
        v16 = *(v15 + 16);
        if (v16)
        {
          v88 = v14;
          v91 = v2;
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
          v17 = swift_allocObject();
          v18 = _swift_stdlib_malloc_size(v17);
          v19 = v18 - 32;
          if (v18 < 32)
          {
            v19 = v18 - 17;
          }

          v17[2] = v16;
          v17[3] = 2 * (v19 >> 4);
          v87 = sub_22F11A438(v93, v17 + 4, v16, v15);
          v20 = v93[0];
          v2 = v93[3];

          sub_22F1534EC(v20);
          if (v87 != v16)
          {
            goto LABEL_53;
          }

          v2 = v91;
          v14 = v88;
        }

        else
        {
          v17 = MEMORY[0x277D84F90];
        }

        v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
        *(inited + 96) = v17;
        *(inited + 120) = v21;
        *(inited + 128) = 0x69747265706F7270;
        *(inited + 136) = 0xEA00000000007365;

        v23 = sub_22F2A590C(v22);
        v24 = v94;
        if (v2)
        {
          break;
        }

        v25 = v23;

        *(inited + 168) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
        *(inited + 144) = v25;
        v26 = sub_22F14EA28(inited);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();
        v27 = v92;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v27 = sub_22F13F8FC(0, v27[2] + 1, 1, v27);
        }

        v28 = v82;
        inited = v83;
        v30 = v27[2];
        v29 = v27[3];
        v92 = v27;
        if (v30 >= v29 >> 1)
        {
          v92 = sub_22F13F8FC((v29 > 1), v30 + 1, 1, v92);
        }

        v31 = v92;
        v92[2] = v30 + 1;
        v31[v30 + 4] = v26;
        v12 = v90 + 1;
        if (v89 == v28)
        {
          goto LABEL_24;
        }
      }

LABEL_48:

      v60 = &unk_27DAB2FD0;
      sub_22F120ADC(inited + 80, &unk_27DAB2FD0, &qword_22F77A4D0);
      sub_22F120ADC(v24, &unk_27DAB2FD0, &qword_22F77A4D0);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
      swift_arrayDestroy();
      return v60;
    }

    v92 = MEMORY[0x277D84F90];
LABEL_24:

    v93[0] = v92;

    sub_22F2A2294(v93);
    if (v2)
    {
      break;
    }

    v71 = v93[0];
    v32 = [objc_opt_self() any];
    v33 = v78;
    v14 = [v78 edgeIdentifiersMatchingFilter_];

    v72 = [objc_allocWithZone(MEMORY[0x277D22BA0]) initWithIdentifiers:v14 graph:v33];
    v34 = [v72 allObjects];
    type metadata accessor for Edge();
    inited = sub_22F741180();

    if (inited >> 62)
    {
      v35 = sub_22F741A00();
      v88 = v14;
      if (!v35)
      {
LABEL_57:
        v37 = MEMORY[0x277D84F90];
LABEL_58:

        v93[0] = v37;

        sub_22F2A2294(v93);

        v61 = v93[0];
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
        v62 = swift_initStackObject();
        *(v62 + 16) = xmmword_22F7707D0;
        *(v62 + 32) = 0x696669746E656469;
        *(v62 + 40) = 0xEA00000000007265;
        v63 = [v78 graphIdentifier];
        v64 = v73;
        sub_22F73F6B0();

        v65 = sub_22F73F6A0();
        v67 = v66;
        (*(v74 + 8))(v64, v75);
        v68 = MEMORY[0x277D837D0];
        *(v62 + 48) = v65;
        *(v62 + 56) = v67;
        *(v62 + 72) = v68;
        *(v62 + 80) = 0x7365646F6ELL;
        *(v62 + 88) = 0xE500000000000000;
        v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2FE0, &unk_22F772A30);
        *(v62 + 96) = v71;
        *(v62 + 120) = v69;
        *(v62 + 128) = 0x7365676465;
        *(v62 + 168) = v69;
        *(v62 + 136) = 0xE500000000000000;
        *(v62 + 144) = v61;
        v60 = sub_22F14EA28(v62);
        swift_setDeallocating();
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
        swift_arrayDestroy();

        return v60;
      }
    }

    else
    {
      v35 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
      v88 = v14;
      if (!v35)
      {
        goto LABEL_57;
      }
    }

    v36 = 0;
    v85 = inited & 0xC000000000000001;
    *&v84 = inited & 0xFFFFFFFFFFFFFF8;
    v80 = 0x800000022F797DC0;
    v37 = MEMORY[0x277D84F90];
    v79 = 0x800000022F797DE0;
    v83 = xmmword_22F770DE0;
    v81 = v35;
    v82 = inited;
    while (1)
    {
      if (v85)
      {
        v38 = MEMORY[0x2319016F0](v36, inited);
      }

      else
      {
        if (v36 >= *(v84 + 16))
        {
          goto LABEL_52;
        }

        v38 = *(inited + 8 * v36 + 32);
      }

      v39 = v38;
      if (__OFADD__(v36, 1))
      {
        break;
      }

      v87 = (v36 + 1);
      v89 = v36;
      v90 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FC0, &unk_22F77A4C0);
      inited = swift_initStackObject();
      *(inited + 16) = v83;
      *(inited + 32) = 0x696669746E656469;
      v94 = inited + 32;
      *(inited + 40) = 0xEA00000000007265;
      *(inited + 48) = *(v39 + OBJC_IVAR____TtC11PhotosGraph4Edge_identifier);
      *(inited + 72) = MEMORY[0x277D83E88];
      *(inited + 80) = 0x736C6562616CLL;
      *(inited + 88) = 0xE600000000000000;
      v92 = v39;
      v40 = *(v39 + OBJC_IVAR____TtC11PhotosGraph4Edge_labels);
      v41 = *(v40 + 16);
      if (v41)
      {
        v91 = 0;
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
        v42 = swift_allocObject();
        v43 = _swift_stdlib_malloc_size(v42);
        v44 = v43 - 32;
        if (v43 < 32)
        {
          v44 = v43 - 17;
        }

        v42[2] = v41;
        v42[3] = 2 * (v44 >> 4);
        v86 = sub_22F11A438(v93, v42 + 4, v41, v40);
        v45 = v93[0];
        v2 = v93[1];

        sub_22F1534EC(v45);
        if (v86 != v41)
        {
          goto LABEL_54;
        }

        v2 = v91;
        v14 = v88;
      }

      else
      {
        v42 = MEMORY[0x277D84F90];
      }

      v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
      *(inited + 96) = v42;
      *(inited + 120) = v46;
      *(inited + 128) = 0x69747265706F7270;
      *(inited + 136) = 0xEA00000000007365;
      v47 = v92;

      v49 = sub_22F2A590C(v48);
      if (v2)
      {

        v24 = v94;
        goto LABEL_48;
      }

      v50 = v49;

      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0E00, &unk_22F7727C0);
      *(inited + 144) = v50;
      *(inited + 168) = v51;
      *(inited + 176) = 0xD000000000000014;
      *(inited + 184) = v80;
      *(inited + 192) = [*(v47 + OBJC_IVAR____TtC11PhotosGraph4Edge_sourceNode) identifier];
      v52 = MEMORY[0x277D83E88];
      *(inited + 216) = MEMORY[0x277D83E88];
      *(inited + 224) = 0xD000000000000014;
      *(inited + 232) = v79;
      v53 = [*(v47 + OBJC_IVAR____TtC11PhotosGraph4Edge_targetNode) identifier];
      *(inited + 264) = v52;
      *(inited + 240) = v53;
      v54 = sub_22F14EA28(inited);
      swift_setDeallocating();
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB2FD0, &qword_22F77A4D0);
      swift_arrayDestroy();
      v55 = v90;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v55 = sub_22F13F8FC(0, v55[2] + 1, 1, v55);
      }

      v56 = v81;
      inited = v82;
      v58 = v55[2];
      v57 = v55[3];
      v59 = v55;
      if (v58 >= v57 >> 1)
      {
        v59 = sub_22F13F8FC((v57 > 1), v58 + 1, 1, v55);
      }

      v59[2] = v58 + 1;
      v37 = v59;
      v59[v58 + 4] = v54;
      v36 = v89 + 1;
      if (v87 == v56)
      {
        goto LABEL_58;
      }
    }

LABEL_51:
    __break(1u);
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    ;
  }

  __break(1u);
  return result;
}