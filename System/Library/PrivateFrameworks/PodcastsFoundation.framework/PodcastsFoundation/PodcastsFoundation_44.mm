uint64_t sub_1D91366F0@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>, double a4@<D1>)
{
  v4 = a3.n128_f64[0];
  if (a3.n128_f64[0] >= 6.0)
  {
    if (a4 - a3.n128_f64[0] < 6.0)
    {
      v15 = sub_1D917741C();
      v16 = sub_1D9178D1C();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        *v17 = 0;
        _os_log_impl(&dword_1D8CEC000, v15, v16, "Adjusting match buffer start point since we're close to the end of the episode.", v17, 2u);
        MEMORY[0x1DA72CB90](v17, -1, -1);
      }
    }

    v9 = sub_1D91790FC();
    v10 = v18;
    v11 = v19;
    result = sub_1D91790FC();
  }

  else
  {
    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "Playhead is near start of episode, reading from beginning", v8, 2u);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    v9 = 0;
    v10 = 0;
    v11 = 0;
    result = 0;
    v13 = 0;
    v14 = 0;
  }

  *a2 = v9;
  *(a2 + 8) = v10;
  *(a2 + 16) = v11;
  *(a2 + 24) = result;
  *(a2 + 32) = v13;
  *(a2 + 40) = v14;
  *(a2 + 48) = v4 < 6.0;
  return result;
}

uint64_t sub_1D91368A0(void *a1, _OWORD *a2, int a3)
{
  v50 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFD0, &qword_1D91BB080);
  v7 = *(v6 - 8);
  v45 = v6;
  v46 = v7;
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v40 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D70, &unk_1D918BCE0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v40 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFD8, &qword_1D91BB088);
  v14 = *(v13 - 8);
  v43 = v13;
  v44 = v14;
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v40 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE0, &qword_1D91BB090);
  v47 = *(v17 - 8);
  v48 = v17;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v40 - v18;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE8, &qword_1D91BB098);
  v55 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v49 = &v40 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFF0, &unk_1D91BB0A0);
  v22 = *(v21 - 8);
  v53 = v21;
  v54 = v22;
  MEMORY[0x1EEE9AC00](v21);
  v51 = &v40 - v23;
  v41 = v3;
  v24 = sub_1D912A550(a1, a2);
  v25 = *(v3 + OBJC_IVAR____TtC18PodcastsFoundation26AssetReaderTimelineAligner_workQueue);
  v26 = sub_1D9178DBC();
  (*(*(v26 - 8) + 56))(v12, 1, 1, v26);
  v56 = v24;
  v57 = v25;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAE70, &qword_1D91BAD58);
  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v42 = MEMORY[0x1E695BED8];
  sub_1D8CF48EC(&qword_1ECABAE78, &qword_1ECABAE70, &qword_1D91BAD58, MEMORY[0x1E695BED8]);
  sub_1D8D02DF0();
  sub_1D9177D3C();
  sub_1D8CF48EC(&qword_1ECABAFF8, &qword_1ECABAFD0, &qword_1D91BB080, MEMORY[0x1E695BCB8]);
  v27 = v45;
  sub_1D9177CEC();

  (*(v46 + 8))(v9, v27);
  sub_1D8D08A50(v12, &qword_1ECAB4D70, &unk_1D918BCE0);
  sub_1D8CF48EC(&qword_1ECABB000, &qword_1ECABAFD8, &qword_1D91BB088, MEMORY[0x1E695BE98]);
  v28 = v43;
  sub_1D9177C9C();
  (*(v44 + 8))(v16, v28);
  v29 = *(v41 + 24);
  v30 = swift_allocObject();
  *(v30 + 16) = v29;
  LOBYTE(v16) = v50;
  *(v30 + 24) = v50;

  v31 = sub_1D9137128(0x94049F30F7200000, 97, sub_1D9138600, v30);
  v46 = v31;

  (*(v47 + 8))(v19, v48);
  v57 = v31;
  v32 = swift_allocObject();
  *(v32 + 16) = v16;
  v33 = swift_allocObject();
  *(v33 + 16) = sub_1D913860C;
  *(v33 + 24) = v32;
  sub_1D91777FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB008, &unk_1D91BB0B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB010, &unk_1D91BB0C0);
  sub_1D8CF48EC(&qword_1ECABB018, &qword_1ECABB008, &unk_1D91BB0B0, v42);
  sub_1D8CF48EC(&qword_1ECABB020, &qword_1ECABB010, &unk_1D91BB0C0, MEMORY[0x1E695BCE0]);
  v34 = v49;
  sub_1D9177CBC();

  sub_1D8CF48EC(&qword_1ECABB028, &qword_1ECABAFE8, &qword_1D91BB098, MEMORY[0x1E695BE40]);

  v35 = v52;
  v36 = v51;
  sub_1D9177B3C();

  (*(v55 + 8))(v34, v35);
  sub_1D8CF48EC(&qword_1ECABB030, &qword_1ECABAFF0, &unk_1D91BB0A0, MEMORY[0x1E695BCC0]);
  v37 = v53;
  v38 = sub_1D9177B1C();
  (*(v54 + 8))(v36, v37);
  return v38;
}

void sub_1D913709C(uint64_t a1, uint64_t a2, char a3)
{
  v6 = [*(a1 + 16) signature];
  v5 = *(a1 + 40);
  v7[0] = *(a1 + 24);
  v7[1] = v5;
  v7[2] = *(a1 + 56);
  sub_1D913FECC(v6, v7, a3);
}

uint64_t sub_1D9137128(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB048, &qword_1D91BB0E0);
  v8 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v10 = &v22 - v9;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB050, &qword_1D91BB0E8);
  v11 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v13 = &v22 - v12;
  type metadata accessor for SignatureGenerator();
  v14 = swift_allocObject();
  *(v14 + 16) = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];
  v15 = MEMORY[0x1E6960CA8];
  v16 = *(MEMORY[0x1E6960CA8] + 16);
  *(v14 + 24) = *MEMORY[0x1E6960CA8];
  *(v14 + 40) = v16;
  *(v14 + 56) = *(v15 + 32);
  v25 = v14;
  v26 = 0;
  v17 = swift_allocObject();
  v17[2] = a1;
  v17[3] = a2;
  v17[4] = a3;
  v17[5] = a4;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAFE0, &qword_1D91BB090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB058, &qword_1D91BB0F0);
  sub_1D8CF48EC(&qword_1ECABB060, &qword_1ECABAFE0, &qword_1D91BB090, MEMORY[0x1E695BCF0]);
  sub_1D9177BBC();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB068, qword_1D91BB0F8);
  sub_1D8CF48EC(&qword_1ECABB070, &qword_1ECABB048, &qword_1D91BB0E0, MEMORY[0x1E695BD88]);
  v18 = v24;
  sub_1D9177B2C();
  (*(v8 + 8))(v10, v18);
  sub_1D8CF48EC(&qword_1ECABB078, &qword_1ECABB050, &qword_1D91BB0E8, MEMORY[0x1E695BC80]);
  v19 = v23;
  v20 = sub_1D9177B1C();
  (*(v11 + 8))(v13, v19);
  return v20;
}

uint64_t sub_1D9137498(uint64_t a1, uint64_t a2, char a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB038, &unk_1D91BB0D0);
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = v12 - v8;
  v12[1] = a1;
  type metadata accessor for SignatureGenerator();

  sub_1D9177A0C();
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  sub_1D8CF48EC(&qword_1ECABB040, &qword_1ECABB038, &unk_1D91BB0D0, MEMORY[0x1E695C008]);
  sub_1D9177B7C();

  return (*(v7 + 8))(v9, v6);
}

id sub_1D9137654@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  v23 = a4;
  v36 = *MEMORY[0x1E69E9840];
  v4 = *a1;
  v5 = *(a2 + 16);
  if (v5)
  {
    v6 = *(MEMORY[0x1E6960CA8] + 16);
    v35[0] = *MEMORY[0x1E6960CA8];
    v35[1] = v6;
    v35[2] = *(MEMORY[0x1E6960CA8] + 32);
    v7 = (a2 + 32);
    for (i = v5 - 1; ; --i)
    {
      v9 = v7[1];
      v29 = *v7;
      v30 = v9;
      v31 = *(v7 + 2);
      v10 = v29;
      v11 = *(v4 + 56);
      v12 = *(v4 + 40);
      v32 = *(v4 + 24);
      v33 = v12;
      v34 = v11;
      sub_1D8D088B4(&v29, &lhs, &qword_1ECABADB8, &qword_1D91BAB88);
      if (sub_1D9178C4C())
      {
        v13 = *(&v29 + 1);
        v14 = *(&v30 + 1);
        v15 = v30;
        v17 = *&v31.timescale;
        value = v31.value;
        epoch = v31.epoch;
      }

      else
      {
        v15 = *(&v32 + 1);
        v13 = v32;
        v14 = v33;
        rhs = v31;
        lhs.value = *(&v33 + 1);
        *&lhs.timescale = v34;
        CMTimeAdd(&v26, &lhs, &rhs);
        value = v26.value;
        v17 = *&v26.timescale;
        epoch = v26.epoch;
      }

      *(v4 + 24) = v13;
      *(v4 + 32) = v15;
      *(v4 + 40) = v14;
      *(v4 + 48) = value;
      *(v4 + 56) = v17;
      *(v4 + 64) = epoch;
      v19 = *(v4 + 16);
      lhs.value = 0;
      if (![v19 appendBuffer:v10 atTime:0 error:{&lhs, v23}])
      {
        break;
      }

      v20 = lhs.value;
      sub_1D8D08A50(&v29, &qword_1ECABADB8, &qword_1D91BAB88);
      if (!i)
      {
        goto LABEL_9;
      }

      v7 = (v7 + 56);
    }

    v22 = lhs.value;
    sub_1D9176A6C();

    swift_willThrow();
    return sub_1D8D08A50(&v29, &qword_1ECABADB8, &qword_1D91BAB88);
  }

  else
  {
LABEL_9:
    result = [*(v4 + 16) signature];
    *v24 = result;
    *(v24 + 8) = *(v4 + 24);
    *(v24 + 24) = *(v4 + 40);
    *(v24 + 40) = *(v4 + 56);
    *(v24 + 56) = a3;
  }

  return result;
}

void *sub_1D91378B8()
{
  result = sub_1D917791C();
  v8[0] = *v6;
  v8[1] = *&v6[16];
  *v9 = *&v6[32];
  *&v9[9] = *&v6[41];
  v1 = *v6;
  if (*v6)
  {
    v2 = v9[24];
    v7[0] = *&v6[8];
    v7[1] = *&v6[24];
    v7[2] = *&v6[40];
    v4[0] = *v6;
    v4[1] = *&v6[16];
    v5[0] = *&v6[32];
    *(v5 + 9) = *&v6[41];
    sub_1D8D088B4(v4, &v3, &qword_1ECAB5FA0, &qword_1D9191F18);
    sub_1D913FECC(v1, v7, v2);
    sub_1D8D08A50(v8, &qword_1ECABB220, &qword_1D91BBAC0);
    return sub_1D8D08A50(v8, &qword_1ECABB220, &qword_1D91BBAC0);
  }

  return result;
}

void sub_1D91379B0(void *a1@<X8>)
{
  v2 = v1;
  v40 = type metadata accessor for MediaStreamedAssetCache.StreamPhase(0);
  MEMORY[0x1EEE9AC00](v40);
  v41 = &v37 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v42 = &v37 - v6;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v39 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v37 - v11;
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = &v37 - v15;
  v17 = [v1 URL];
  sub_1D9176B9C();

  LOBYTE(v17) = sub_1D9176A8C();
  v18 = *(v8 + 8);
  v18(v16, v7);
  if (v17)
  {
    v19 = [v2 URL];
    sub_1D9176B9C();

    AlignmentRequest.init(url:)(v16, &v43);
    v20 = v44;
    *a1 = v43;
    a1[1] = v20;
    return;
  }

  v38 = a1;
  v21 = [v2 URL];
  sub_1D9176B9C();

  v22 = objc_allocWithZone(type metadata accessor for MediaStreamedAssetCache(0));
  v23 = sub_1D9176B1C();
  v24 = [objc_opt_self() streamedMediaAssetURL];
  sub_1D9176B9C();

  v25 = sub_1D9176B1C();
  v18(v12, v7);
  v26 = [v22 initWithSourceURL:v23 cacheLocation:v25 purgeability:512];

  v18(v16, v7);
  if (!v26)
  {
    v32 = v42;
    (*(v8 + 56))(v42, 1, 1, v7);
    v34 = v38;
LABEL_10:
    sub_1D8D08A50(v32, &unk_1ECAB5910, &qword_1D9188C90);
    *v34 = 0;
    v34[1] = 0;
    return;
  }

  v27 = *&v26[OBJC_IVAR___PFMediaStreamedAssetCache_phase];
  v28 = *(*v27 + *MEMORY[0x1E69E6B68] + 16);
  v29 = (*(*v27 + 48) + 3) & 0x1FFFFFFFCLL;
  v30 = v26;
  os_unfair_lock_lock((v27 + v29));
  v31 = v41;
  sub_1D8E6A238(v27 + v28, v41);
  os_unfair_lock_unlock((v27 + v29));
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v32 = v42;
    (*(v8 + 32))(v42, v31, v7);
    v33 = 0;
    v34 = v38;
  }

  else
  {
    sub_1D8E6A29C(v31);
    v33 = 1;
    v34 = v38;
    v32 = v42;
  }

  (*(v8 + 56))(v32, v33, 1, v7);

  if ((*(v8 + 48))(v32, 1, v7) == 1)
  {

    goto LABEL_10;
  }

  v35 = v39;
  (*(v8 + 32))(v39, v32, v7);
  (*(v8 + 16))(v16, v35, v7);
  AlignmentRequest.init(url:)(v16, &v43);

  v18(v35, v7);
  v36 = v44;
  *v34 = v43;
  v34[1] = v36;
}

double sub_1D9137E94@<D0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, double (*a5)(uint64_t)@<X4>, uint64_t *a6@<X8>)
{
  v8 = *a1;
  v9 = *a2;
  v10 = *(*a1 + 16);

  [v10 duration];
  sub_1D9179FBC();
  if (sub_1D9179F7C())
  {
    a5(v8);
    type metadata accessor for SignatureGenerator();
    v11 = swift_allocObject();
    *(v11 + 16) = [objc_allocWithZone(MEMORY[0x1E697B7E0]) init];

    v12 = MEMORY[0x1E6960CA8];
    v13 = *(MEMORY[0x1E6960CA8] + 16);
    *(v11 + 24) = *MEMORY[0x1E6960CA8];
    *(v11 + 40) = v13;
    *(v11 + 56) = *(v12 + 32);
    v8 = v11;
  }

  *a6 = v8;
  a6[1] = v9;

  return result;
}

double sub_1D9137F9C@<D0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + 8);
  if (v3)
  {
  }

  else
  {
    v4 = 0;
  }

  *a2 = v4;
  a2[1] = v3;

  return result;
}

uint64_t sub_1D9137FEC()
{

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for AssetReaderTimelineAligner(uint64_t a1)
{
  result = qword_1ECABAF48;
  if (!qword_1ECABAF48)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D91380C8(uint64_t a1)
{
  result = sub_1D917744C();
  if (v2 <= 0x3F)
  {
    result = sub_1D917739C();
    if (v3 <= 0x3F)
    {
      return swift_updateClassMetadata2();
    }
  }

  return result;
}

double sub_1D9138248(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
  }

  return result;
}

uint64_t sub_1D9138258(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAF58, &qword_1D91BB028);
  (*(*(v4 - 8) + 24))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D91382C8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D9138310()
{
  sub_1D917739C();

  return sub_1D9135368();
}

void sub_1D913839C(void **a1)
{
  v3 = *(sub_1D917739C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = (v5 + 15) & 0xFFFFFFFFFFFFFFF8;
  v7 = (v6 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_1D91355B0(a1, v1 + v4, *(v1 + v5), *(v1 + v6), *(v1 + v7), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 8), *(v1 + ((v7 + 15) & 0xFFFFFFFFFFFFFFF8) + 16), *(v1 + ((v7 + 39) & 0xFFFFFFFFFFFFFFF8)));
}

void sub_1D9138470(void *a1, void *a2, void *a3)
{
  v7 = *(sub_1D917744C() - 8);
  v8 = (*(v7 + 80) + 16) & ~*(v7 + 80);
  v9 = *(v3 + ((*(v7 + 64) + v8 + 7) & 0xFFFFFFFFFFFFFFF8));

  sub_1D9136204(a1, a2, a3, v3 + v8, v9);
}

uint64_t sub_1D9138524(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  v4 = *(a1 + 3);
  v6[0] = *(a1 + 1);
  v6[1] = v4;
  v6[2] = *(a1 + 5);
  return v2(v3, v6, *(a1 + 56));
}

double sub_1D9138578(void *a1, uint64_t a2, char a3)
{
  if (a3)
  {
    v3 = a1;
  }

  else
  {
  }

  return result;
}

void sub_1D9138588(id a1)
{
  if (a1 != 1)
  {
  }
}

void sub_1D9138678(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEAC(v2);
  }

  v3 = *(v2 + 2);
  v19[0] = (v2 + 32);
  v19[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = -1;
      v9 = 1;
      v10 = v2 + 32;
      do
      {
        v11 = *&v2[8 * v9 + 32];
        v12 = fabs(v11);
        v13 = v8;
        v14 = v10;
        do
        {
          v15 = *v14;
          if (v12 >= fabs(*v14))
          {
            break;
          }

          *v14 = v11;
          v14[1] = v15;
          --v14;
        }

        while (!__CFADD__(v13++, 1));
        ++v9;
        v10 += 8;
        --v8;
      }

      while (v9 != v3);
    }
  }

  else
  {
    v5 = v4;
    *&v6 = v3 >> 1;
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    *&v17[0] = v7 + 32;
    v17[1] = v6;
    sub_1D913C470(v17, v18, v19, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D91387B4(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEE8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 1);
          if (v13 >= *(v12 - 3))
          {
            break;
          }

          v14 = *(v12 + 4);
          v15 = *(v12 + 1);
          v16 = *(v12 - 8);
          *(v12 + 8) = *(v12 - 24);
          *(v12 + 24) = v16;
          *(v12 - 3) = v13;
          *(v12 - 1) = v15;
          *v12 = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1D913C9D0(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D9138908(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEE8(v2);
  }

  v3 = *(v2 + 2);
  v20[0] = (v2 + 32);
  v20[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 48;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *v12)
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = *(v12 + 1);
          v16 = *v12;
          *(v12 + 1) = *(v12 - 1);
          *(v12 + 2) = v16;
          *(v12 - 1) = v15;
          *v12 = v13;
          *(v12 + 1) = v14;
          v12 -= 32;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 32;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v18[0] = (v7 + 32);
    v18[1] = v6;
    sub_1D913CF68(v18, v19, v20, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

void sub_1D9138A54(unint64_t a1, void *a2, unsigned int a3)
{
  v4 = v3;
  v7 = *v3;
  v8 = *(v3 + 16);
  os_unfair_lock_lock((v8 + 20));
  v9 = *(v8 + 16);
  os_unfair_lock_unlock((v8 + 20));
  LOBYTE(v10) = v9 == 3;
  v65 = v8;
  if (a1 >> 62)
  {
    goto LABEL_43;
  }

  v11 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v12 = MEMORY[0x1E69E7CC0];
  v67 = v4;
  if (v11)
  {
    v73[0] = MEMORY[0x1E69E7CC0];
    sub_1D8E3199C(0, v11 & ~(v11 >> 63), 0);
    if ((v11 & 0x8000000000000000) == 0)
    {
      v13 = 0;
      v12 = v73[0];
      v69 = a1 & 0xC000000000000001;
      v4 = a2[1];
      v68 = a1 & 0xFFFFFFFFFFFFFF8;
      v7 = &selRef_setParent_;
      v64 = a2;
      while (!v69)
      {
        if ((v13 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v13 >= *(v68 + 16))
        {
          goto LABEL_42;
        }

        a2 = *(a1 + 8 * v13 + 32);
        if (v10)
        {
          goto LABEL_12;
        }

LABEL_14:
        v19 = [a2 referenceTimeRange];
        [v19 lowerBound];
        v21 = v20;

        v10 = [a2 referenceTimeRange];
        [v10 upperBound];
        v23 = v22;

        if (v21 > v23)
        {
          __break(1u);
LABEL_40:
          __break(1u);
LABEL_41:
          __break(1u);
LABEL_42:
          __break(1u);
LABEL_43:
          v11 = sub_1D917935C();
          goto LABEL_3;
        }

        sub_1D917910C();
        v25 = v24;
        v26 = [a2 queryTimeRange];
        [v26 lowerBound];
        v28 = v27;

        v29 = v25 + v28;
        v30 = [a2 queryTimeRange];
        [v30 &selRef_hasEnabledSettings + 6];
        v32 = v31;

        v10 = [a2 queryTimeRange];
        [v10 lowerBound];
        v34 = v33;

        v35 = v29 + v32 - v34;
        if (v29 > v35)
        {
          goto LABEL_40;
        }

        v36 = a1;
        v73[0] = v12;
        v38 = *(v12 + 2);
        v37 = *(v12 + 3);
        a2 = (v38 + 1);
        if (v38 >= v37 >> 1)
        {
          sub_1D8E3199C((v37 > 1), v38 + 1, 1);
          v12 = v73[0];
        }

        LOBYTE(v10) = 0;
        ++v13;
        *(v12 + 2) = a2;
        v39 = &v12[32 * v38];
        v39[4] = v29;
        v39[5] = v35;
        v39[6] = v21;
        v39[7] = v23;
        a1 = v36;
        if (v11 == v13)
        {
          v4 = v67;
          goto LABEL_20;
        }
      }

      a2 = MEMORY[0x1DA72AA90](v13, a1);
      if ((v10 & 1) == 0)
      {
        goto LABEL_14;
      }

LABEL_12:
      v14 = [a2 queryTimeRange];
      [v14 lowerBound];
      v16 = v15;

      if (v16 > 1.0)
      {
        v17 = *(v67 + 32);
        os_unfair_lock_lock((v17 + 28));
        sub_1D917910C();
        *(v17 + 16) = v18;
        *(v17 + 24) = 0;
        os_unfair_lock_unlock((v17 + 28));
      }

      goto LABEL_14;
    }

    __break(1u);

    __break(1u);
  }

  else
  {
LABEL_20:
    v73[0] = v12;

    sub_1D91387B4(v73);

    v40 = *(v4 + 24);
    os_unfair_lock_lock((v40 + 24));
    v41 = *(v40 + 16);
    if (*(v41 + 16) && (v42 = sub_1D8F0726C(a3), (v43 & 1) != 0))
    {
      v44 = *(*(v41 + 56) + 8 * v42);
    }

    else
    {
      v44 = MEMORY[0x1E69E7CC0];
    }

    os_unfair_lock_unlock((v40 + 24));
    v45 = *(v44 + 16);
    if (v45)
    {
      v46 = (v44 + 32);
      v47 = MEMORY[0x1E69E7CC0];
      do
      {
        v70 = v46[1];
        *oslog = *v46;
        sub_1D917910C();
        if (*oslog <= v51)
        {
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v73[0] = v47;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1D8E3199C(0, *(v47 + 2) + 1, 1);
            v47 = v73[0];
          }

          v49 = *(v47 + 2);
          v48 = *(v47 + 3);
          if (v49 >= v48 >> 1)
          {
            sub_1D8E3199C((v48 > 1), v49 + 1, 1);
            v47 = v73[0];
          }

          *(v47 + 2) = v49 + 1;
          v50 = &v47[32 * v49];
          *(v50 + 2) = *oslog;
          *(v50 + 3) = v70;
        }

        v46 += 2;
        --v45;
      }

      while (v45);
    }

    else
    {
      v47 = MEMORY[0x1E69E7CC0];
    }

    os_unfair_lock_lock((v40 + 24));
    v73[0] = v47;

    sub_1D8E2F860(v53);
    v54 = sub_1D913A1C8(2000000000000000000, 0, v73[0]);

    v56 = sub_1D913A280(v54, v55);

    v57 = swift_isUniquelyReferenced_nonNull_native();
    v73[0] = *(v40 + 16);
    *(v40 + 16) = 0x8000000000000000;
    sub_1D8F51780(v56, a3, v57);
    *(v40 + 16) = v73[0];
    os_unfair_lock_unlock((v40 + 24));
    os_unfair_lock_lock((v65 + 20));
    *(v65 + 16) = a3;
    os_unfair_lock_unlock((v65 + 20));

    osloga = sub_1D917741C();
    v58 = sub_1D9178D1C();

    if (os_log_type_enabled(osloga, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      v73[0] = v60;
      *v59 = 136315138;

      v61 = sub_1D917828C();
      v63 = sub_1D8CFA924(v61, v62, v73);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_1D8CEC000, osloga, v58, "Matched:\n%s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v60);
      MEMORY[0x1DA72CB90](v60, -1, -1);
      MEMORY[0x1DA72CB90](v59, -1, -1);
    }

    else
    {
    }
  }
}

Swift::Double_optional __swiftcall AssetReaderTimelineAlignment.playerTimestamp(for:)(Swift::Double a1)
{
  if (sub_1D913A4D0())
  {
    AssetReaderTimelineAlignment.alignments.getter();
    v4 = *(v3 + 16);
    if (v4)
    {
      v5 = 0.0;
      v6 = (v3 + 56);
      v7 = 1;
      do
      {
        v8 = *(v6 - 1);
        if (v8 + -0.5 <= a1 && *v6 + 0.5 >= a1)
        {
          v10 = v8 - *(v6 - 3);
          if ((v7 & 1) != 0 || fabs(v10) < COERCE_DOUBLE(*&v5 & 0x7FFFFFFFFFFFFFFFLL))
          {
            v7 = 0;
            v5 = v10;
          }

          else
          {
            v7 = 0;
          }
        }

        v6 += 4;
        --v4;
      }

      while (v4);

      v2 = a1 - v5;
      if (v7)
      {
        LOBYTE(v11) = LOBYTE(v5);
      }

      else
      {
        v11 = a1 - v5;
      }
    }

    else
    {

      LOBYTE(v11) = 0;
    }
  }

  else
  {
    LOBYTE(v11) = LOBYTE(a1);
  }

  result.value = v2;
  result.is_nil = LOBYTE(v11);
  return result;
}

Swift::Double_optional __swiftcall AssetReaderTimelineAlignment.referenceTimestamp(for:)(Swift::Double a1)
{
  AssetReaderTimelineAlignment.alignments.getter();
  v3 = *(v2 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v5 = (v2 + 56);
    v6 = MEMORY[0x1E69E7CC0];
    do
    {
      v10 = *(v5 - 3);
      if (v10 + -0.5 <= a1 && *(v5 - 2) + 0.5 >= a1)
      {
        v23 = *(v5 - 1);
        v12 = *v5;
        v24 = v6;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1D8E3199C(0, *(v6 + 2) + 1, 1);
          v6 = v24;
        }

        v8 = *(v6 + 2);
        v7 = *(v6 + 3);
        if (v8 >= v7 >> 1)
        {
          sub_1D8E3199C((v7 > 1), v8 + 1, 1);
          v6 = v24;
        }

        *(v6 + 2) = v8 + 1;
        v9 = &v6[4 * v8];
        v9[4] = v10;
        *(v9 + 5) = v23;
        v9[7] = v12;
      }

      v5 += 4;
      --v3;
    }

    while (v3);
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC0];
  }

  v13 = *(v6 + 2);
  if (v13)
  {
    v24 = v4;
    sub_1D8E31798(0, v13, 0);
    v14 = v4;
    v15 = *(v4 + 16);
    v16 = v6 + 6;
    do
    {
      v17 = *(v16 - 2);
      v18 = *v16;
      v24 = v14;
      v19 = *(v14 + 3);
      if (v15 >= v19 >> 1)
      {
        sub_1D8E31798((v19 > 1), v15 + 1, 1);
        v14 = v24;
      }

      *(v14 + 2) = v15 + 1;
      v14[v15 + 4] = v17 - v18;
      v16 += 4;
      ++v15;
      --v13;
    }

    while (v13);
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  v24 = v14;

  sub_1D9138678(&v24);

  if (*(v24 + 2))
  {
    v20 = v24[4];

    v21 = a1 - v20;
    v22 = a1 - v20;
  }

  else
  {

    LOBYTE(v22) = 0;
  }

  result.value = v21;
  result.is_nil = LOBYTE(v22);
  return result;
}

void sub_1D9139460()
{
  AssetReaderTimelineAlignment.alignments.getter();
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D913E7EC((v1 + 16));
  os_unfair_lock_unlock((v1 + 24));
  v2 = *(v0 + 16);
  os_unfair_lock_lock((v2 + 20));
  *(v2 + 16) = 4;
  os_unfair_lock_unlock((v2 + 20));

  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();

  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v10 = v6;
    *v5 = 136315138;

    v7 = sub_1D917828C();
    v9 = sub_1D8CFA924(v7, v8, &v10);

    *(v5 + 4) = v9;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "Completed Alignment:\n%s", v5, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
    MEMORY[0x1DA72CB90](v6, -1, -1);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }
}

uint64_t sub_1D9139614()
{
  if (*v0)
  {
    return 0xD000000000000012;
  }

  else
  {
    return 0x6D69547972657571;
  }
}

void sub_1D9139660(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6D69547972657571 && a2 == 0xEE0065676E615265;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D8780 == a2)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D913974C(uint64_t a1)
{
  v2 = sub_1D913DB3C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9139788(uint64_t a1)
{
  v2 = sub_1D913DB3C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetReaderTimelineAlignment.Alignment.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB080, &qword_1D91BB110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DB3C();
  sub_1D9179F1C();
  v15 = v8;
  v16 = v9;
  v14 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB090, &qword_1D91BB118);
  sub_1D913DB90(&qword_1ECABB098, MEMORY[0x1E69E63C0], MEMORY[0x1E69E66B0]);
  sub_1D91799FC();
  if (!v2)
  {
    v15 = v10;
    v16 = v11;
    v14 = 1;
    sub_1D91799FC();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t AssetReaderTimelineAlignment.Alignment.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB0A0, &qword_1D91BB120);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DB3C();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB090, &qword_1D91BB118);
    v13 = 0;
    sub_1D913DB90(&qword_1ECABB0A8, MEMORY[0x1E69E63E8], MEMORY[0x1E69E66E0]);
    sub_1D91798FC();
    v9 = v12;
    v13 = 1;
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v10 = v12;
    *a2 = v9;
    a2[1] = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D9139BFC()
{
  v1 = *v0;
  sub_1D9179DBC();
  if (v1 == 2)
  {
    MEMORY[0x1DA72B390](1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D9139C64()
{
  if (*v0 == 2)
  {
    return MEMORY[0x1DA72B390](1);
  }

  MEMORY[0x1DA72B390](0);
  return sub_1D9179DDC();
}

uint64_t sub_1D9139CB0(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  if (v2 == 2)
  {
    MEMORY[0x1DA72B390](1);
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();
  }

  return sub_1D9179E1C();
}

uint64_t sub_1D9139D14(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = v2 == 2;
  v4 = *a2;
  if (v4 != 2)
  {
    v3 = 0;
  }

  v5 = v2 == 2 || v4 == 2;
  v6 = v4 ^ v2 ^ 1;
  if (v5)
  {
    v6 = v3;
  }

  return v6 & 1;
}

BOOL sub_1D9139D4C(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *a1;
  v3 = *a2;
  if (v2 == 4)
  {
    return v3 == 4;
  }

  if (v2 == 3)
  {
    return v3 == 3;
  }

  if ((v3 - 3) < 2u)
  {
    return 0;
  }

  if (v2 == 2)
  {
    if (v3 == 2)
    {
      return 1;
    }
  }

  else if (v3 != 2 && ((v3 ^ v2) & 1) == 0)
  {
    return 1;
  }

  return 0;
}

void sub_1D9139DC4(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = *a1;
  if (*(*a1 + 16) && (sub_1D8F0726C(0), (v4 & 1) != 0))
  {
  }

  else
  {
    v5 = 0;
  }

  v16[4] = v5;
  if (*(v3 + 16) && (sub_1D8F0726C(1), (v6 & 1) != 0))
  {
  }

  else
  {
    v7 = 0;
  }

  v16[5] = v7;
  if (*(v3 + 16) && (sub_1D8F0726C(2), (v8 & 1) != 0))
  {
  }

  else
  {
    v9 = 0;
  }

  v10 = 0;
  v16[6] = v9;
  v11 = MEMORY[0x1E69E7CC0];
LABEL_14:
  if (v10 <= 3)
  {
    v12 = 3;
  }

  else
  {
    v12 = v10;
  }

  while (1)
  {
    if (v10 == 3)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB130, &unk_1D91BB6C0);
      swift_arrayDestroy();
      *a2 = v11;
      return;
    }

    if (v12 == v10)
    {
      break;
    }

    v13 = v16[v10++ + 4];
    if (v13)
    {

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v11 = sub_1D8ECE3B8(0, v11[2] + 1, 1, v11);
      }

      v15 = v11[2];
      v14 = v11[3];
      if (v15 >= v14 >> 1)
      {
        v11 = sub_1D8ECE3B8((v14 > 1), v15 + 1, 1, v11);
      }

      v11[2] = v15 + 1;
      v11[v15 + 4] = v13;
      goto LABEL_14;
    }
  }

  __break(1u);
}

BOOL AssetReaderTimelineAlignment.isInProgress.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 != 4;
}

void AssetReaderTimelineAlignment.alignments.getter()
{
  v1 = *(v0 + 24);
  os_unfair_lock_lock((v1 + 24));
  sub_1D9139DC4((v1 + 16), &v16);
  os_unfair_lock_unlock((v1 + 24));
  v2 = v16;
  v3 = *(v16 + 16);
  if (!v3)
  {
LABEL_19:

    return;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    v6 = *(v2 + 32 + 8 * v4);
    v7 = *(v6 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_21;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v6 + 16))
      {
        goto LABEL_15;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v11 = v8 + v7;
      }

      else
      {
        v11 = v8;
      }

      v5 = sub_1D8ECC4D4(isUniquelyReferenced_nonNull_native, v11, 1, v5);
      if (*(v6 + 16))
      {
LABEL_15:
        v12 = *(v5 + 2);
        if ((*(v5 + 3) >> 1) - v12 < v7)
        {
          goto LABEL_23;
        }

        memcpy(&v5[32 * v12 + 32], (v6 + 32), 32 * v7);

        if (v7)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_24;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_4;
      }
    }

    if (v7)
    {
      goto LABEL_22;
    }

LABEL_4:
    if (v3 == ++v4)
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

BOOL AssetReaderTimelineAlignment.matchedBeginning.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return (v2 & 0xFE) != 2;
}

uint64_t AssetReaderTimelineAlignment.matchedEnd.getter()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if ((v2 - 2) >= 3)
  {
    v3 = v2;
  }

  else
  {
    v3 = 4u >> ((v2 - 2) & 7);
  }

  return v3 & 1;
}

uint64_t sub_1D913A1C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = MEMORY[0x1E69E7CC0];
  v13 = MEMORY[0x1E69E7CC0];
  v6 = *(a3 + 16);
  if (v6)
  {
    v7 = (a3 + 48);
    v8 = *(a3 + 16);
    do
    {
      v9 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v9;
      sub_1D913C128(v12, a1, a2);
      v7 += 2;
      --v8;
    }

    while (v8);
    v5 = v13;
  }

  if (*(v5 + 16) == v6)
  {
    return v5;
  }

  v11 = sub_1D913A1C8(a1, a2, v5);

  return v11;
}

uint64_t sub_1D913A280(uint64_t a1, __n128 a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 56);
    v4 = MEMORY[0x1E69E7CC0];
    v5 = *(a1 + 16);
    while (1)
    {
      v7 = *(v3 - 1);
      v8 = *v3;
      v9 = *(v4 + 2);
      if (v9 && (v10 = &v4[32 * v9], v12 = *(v10 + 2), v11 = v10 + 16, v13 = v12, v7 <= v12))
      {
        a2.n128_f64[0] = *(v11 + 1) - v13;
        if (a2.n128_f64[0] >= v8 - v7)
        {
          goto LABEL_5;
        }

        v20 = *(v3 - 3);
        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D915C3EC(v4);
          v4 = result;
        }

        a2 = v20;
        if (v9 > *(v4 + 2))
        {
          __break(1u);
          return result;
        }

        v6 = &v4[32 * v9];
      }

      else
      {
        v19 = *(v3 - 3);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v4 = sub_1D8ECC4D4(0, v9 + 1, 1, v4);
        }

        v15 = *(v4 + 2);
        v14 = *(v4 + 3);
        a2 = v19;
        if (v15 >= v14 >> 1)
        {
          v16 = sub_1D8ECC4D4((v14 > 1), v15 + 1, 1, v4);
          a2 = v19;
          v4 = v16;
        }

        *(v4 + 2) = v15 + 1;
        v6 = &v4[32 * v15 + 32];
      }

      *v6 = a2;
      v6[1].n128_f64[0] = v7;
      v6[1].n128_f64[1] = v8;
LABEL_5:
      v3 += 4;
      if (!--v5)
      {
        goto LABEL_18;
      }
    }
  }

  v4 = MEMORY[0x1E69E7CC0];
LABEL_18:
  if (*(v4 + 2) == v2)
  {
    return v4;
  }

  v18 = sub_1D913A280(v4, a2);

  return v18;
}

uint64_t sub_1D913A400(uint64_t *a1, uint64_t a2)
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB120, &qword_1D91BB6A8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0;
  v5 = sub_1D913A1C8(2000000000000000000, 0, a2);
  v7 = sub_1D913A280(v5, v6);

  *(inited + 40) = v7;
  v8 = sub_1D8E27EE4(inited);
  swift_setDeallocating();
  result = sub_1D913E784(inited + 32);
  *a1 = v8;
  return result;
}

uint64_t sub_1D913A4D0()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  if (v2 != 4)
  {
    return 1;
  }

  AssetReaderTimelineAlignment.alignments.getter();
  v4 = *(v3 + 16);

  if (!v4)
  {
    return 2;
  }

  AssetReaderTimelineAlignment.alignments.getter();
  v6 = (v5 + 56);
  v7 = *(v5 + 16) + 1;
  while (--v7)
  {
    if (vabdd_f64(*(v6 - 1), *(v6 - 3)) <= 0.1)
    {
      v8 = *v6;
      v9 = *(v6 - 2);
      v6 += 4;
      if (vabdd_f64(v8, v9) <= 0.1)
      {
        continue;
      }
    }

    v10 = 2;
    goto LABEL_11;
  }

  v10 = 0;
LABEL_11:

  return v10;
}

char *AssetReaderTimelineAlignment.nonMatchingRangesInReference(with:)(char *a1, unint64_t a2)
{
  AssetReaderTimelineAlignment.alignments.getter();
  v7 = *(v6 + 16);

  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v34 = MEMORY[0x1E69E7CC0];
    v9 = v2[2];
    os_unfair_lock_lock(v9 + 5);
    v10 = v9[16];
    os_unfair_lock_unlock(v9 + 5);
    if ((v10 & 0xFE) == 2)
    {
      goto LABEL_9;
    }

    AssetReaderTimelineAlignment.alignments.getter();
    if (!*(v11 + 16))
    {

      goto LABEL_9;
    }

    v12 = *(v11 + 48);

    if (v12 <= 0.0)
    {
      goto LABEL_9;
    }

    v13 = sub_1D9179FBC();
    v15 = v14;
    if (sub_1D9179F7C())
    {
      goto LABEL_27;
    }

    v16 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v10 = *(v16 + 2);
    v17 = *(v16 + 3);
    v3 = (v10 + 1);
    if (v10 >= v17 >> 1)
    {
      goto LABEL_28;
    }

    while (1)
    {
      *(v16 + 2) = v3;
      v18 = &v16[32 * v10];
      *(v18 + 4) = 0;
      *(v18 + 5) = 0;
      *(v18 + 6) = v13;
      *(v18 + 7) = v15;
      v34 = v16;
LABEL_9:
      v31 = a1;
      v32 = a2;
      v19 = v2[3];
      os_unfair_lock_lock(v19 + 6);
      v15 = 0;
      sub_1D9139DC4(v19 + 2, &v33);
      os_unfair_lock_unlock(v19 + 6);
      v3 = v33;
      v10 = *(v33 + 2);
      if (!v10)
      {
        break;
      }

      a2 = 0;
      a1 = v33 + 32;
      v13 = &unk_1D91BB128;
      while (1)
      {
        v17 = *(v3 + 2);
        if (a2 >= v17)
        {
          break;
        }

        v33 = *&a1[8 * a2];
        swift_bridgeObjectRetain_n();
        sub_1D9138908(&v33);

        ++a2;
        v20 = v33;
        KeyPath = swift_getKeyPath();
        v22 = sub_1D913A8B8(KeyPath, v20);

        v2 = &v34;
        sub_1D8E30AF4(v22);
        if (v10 == a2)
        {
          goto LABEL_13;
        }
      }

      __break(1u);
LABEL_27:
      __break(1u);
LABEL_28:
      v16 = sub_1D8ECE510((v17 > 1), v3, 1, v16);
    }

LABEL_13:

    os_unfair_lock_lock(v9 + 5);
    v23 = v9[16];
    os_unfair_lock_unlock(v9 + 5);
    if ((v23 - 2) < 2 || v23 != 4 && (v23 & 1) == 0)
    {
      return v34;
    }

    AssetReaderTimelineAlignment.alignments.getter();
    if (*(v24 + 16))
    {

      sub_1D9179FBC();
      if (sub_1D9179F7C())
      {
        v25 = sub_1D9179FBC();
        v27 = v26;
        if (sub_1D9179F7C())
        {
          __break(1u);
        }

        else
        {
          a1 = v34;
          if (swift_isUniquelyReferenced_nonNull_native())
          {
LABEL_20:
            v29 = *(a1 + 2);
            v28 = *(a1 + 3);
            if (v29 >= v28 >> 1)
            {
              a1 = sub_1D8ECE510((v28 > 1), v29 + 1, 1, a1);
            }

            *(a1 + 2) = v29 + 1;
            v30 = &a1[32 * v29];
            *(v30 + 4) = v25;
            *(v30 + 5) = v27;
            *(v30 + 6) = v31;
            *(v30 + 7) = v32;
            return a1;
          }
        }

        a1 = sub_1D8ECE510(0, *(a1 + 2) + 1, 1, a1);
        goto LABEL_20;
      }
    }

    else
    {
    }

    return v34;
  }

  return result;
}

uint64_t sub_1D913A8B8(uint64_t a1, uint64_t a2)
{
  sub_1D913E9B8(1uLL, a2);
  v43 = v3;
  v5 = v4;
  v6 = *(a2 + 16);
  v7 = a2 + 32;
  v9 = v8 >> 1;
  result = swift_bridgeObjectRetain_n();
  v11 = v6 != 0;
  v12 = v5;
  v44 = MEMORY[0x1E69E7CC0];
  v13 = v11;
  v14 = v5;
  while (v9 != v14)
  {
    if (v12 < v5 || v14 >= v9)
    {
      goto LABEL_26;
    }

    if (v6 == v13)
    {
      break;
    }

    if (v11 < (v6 != 0) || v13 >= v6)
    {
      goto LABEL_27;
    }

    v15 = (v43 + 32 * v14);
    v17 = *v15;
    v16 = v15[1];
    v18 = (v7 + 32 * v13);
    v45 = v18[1];
    v46 = *v18;
    ++v13;
    v41 = v16;
    v42 = v17;
    swift_getAtKeyPath();
    result = swift_getAtKeyPath();
    ++v14;
    if (v49 < v47)
    {
      v19 = v44;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8E319DC(0, *(v44 + 16) + 1, 1);
        v19 = v44;
      }

      v21 = v41;
      v20 = v42;
      v23 = v45;
      v22 = v46;
      v25 = *(v19 + 16);
      v24 = *(v19 + 24);
      if (v25 >= v24 >> 1)
      {
        result = sub_1D8E319DC((v24 > 1), v25 + 1, 1);
        v23 = v45;
        v22 = v46;
        v21 = v41;
        v20 = v42;
        v19 = v44;
      }

      *(v19 + 16) = v25 + 1;
      v44 = v19;
      v26 = (v19 + (v25 << 6));
      v26[2] = v20;
      v26[3] = v21;
      v26[4] = v22;
      v26[5] = v23;
      v11 = v13;
      v12 = v14;
    }
  }

  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  v27 = *(v44 + 16);
  if (v27)
  {
    v48 = MEMORY[0x1E69E7CC0];
    sub_1D8E319BC(0, v27, 0);
    result = v44;
    v28 = 0;
    v29 = v48;
    v30 = v44 + 64;
    while (v28 < *(result + 16))
    {
      swift_getAtKeyPath();
      v31 = sub_1D9179FBC();
      v33 = v32;
      swift_getAtKeyPath();
      v34 = sub_1D9179FBC();
      v36 = v35;
      result = sub_1D9179F7C();
      if (result)
      {
        goto LABEL_25;
      }

      v37 = v27;
      v39 = *(v48 + 16);
      v38 = *(v48 + 24);
      if (v39 >= v38 >> 1)
      {
        sub_1D8E319BC((v38 > 1), v39 + 1, 1);
      }

      ++v28;
      *(v48 + 16) = v39 + 1;
      v40 = (v48 + 32 * v39);
      v40[4] = v31;
      v40[5] = v33;
      v40[6] = v34;
      v40[7] = v36;
      v30 += 64;
      v27 = v37;
      result = v44;
      if (v37 == v28)
      {

        return v29;
      }
    }

    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

char *AssetReaderTimelineAlignment.nonMatchingRangesInPlayer(with:)(uint64_t a1, uint64_t a2)
{
  v6 = v2;
  AssetReaderTimelineAlignment.alignments.getter();
  v10 = *(v9 + 16);

  result = MEMORY[0x1E69E7CC0];
  if (v10)
  {
    v51 = MEMORY[0x1E69E7CC0];
    AssetReaderTimelineAlignment.alignments.getter();
    if (!*(v12 + 16))
    {

      goto LABEL_14;
    }

    v13 = *(v12 + 32);

    if (v13 <= 0.0)
    {
      goto LABEL_14;
    }

    v14 = *(v6 + 2);
    os_unfair_lock_lock((v14 + 20));
    v15 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 20));
    if ((v15 & 0xFE) == 2)
    {
      v16 = *(v6 + 4);
      os_unfair_lock_lock((v16 + 28));
      v17 = *(v16 + 24);
      os_unfair_lock_unlock((v16 + 28));
      if (v17)
      {
        goto LABEL_14;
      }

      v18 = sub_1D9179FBC();
      v20 = v19;
      v21 = sub_1D9179FBC();
      v23 = v22;
      if (sub_1D9179F7C())
      {
        __break(1u);
      }

      else
      {
        v24 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
        v5 = *(v24 + 2);
        v26 = *(v24 + 3);
        v25 = v5 + 1;
        if (v5 < v26 >> 1)
        {
LABEL_8:
          *(v24 + 2) = v25;
          v27 = &v24[32 * v5];
          *(v27 + 4) = v18;
          *(v27 + 5) = v20;
          *(v27 + 6) = v21;
          *(v27 + 7) = v23;
LABEL_13:
          v51 = v24;
LABEL_14:
          v33 = *(v6 + 3);
          os_unfair_lock_lock((v33 + 24));
          sub_1D9139DC4((v33 + 16), &v50);
          os_unfair_lock_unlock((v33 + 24));
          v34 = *(v50 + 16);
          if (v34)
          {
            v35 = (v50 + 32);
            do
            {
              v36 = *v35++;
              KeyPath = swift_getKeyPath();

              v38 = sub_1D913A8B8(KeyPath, v36);

              sub_1D8E30AF4(v38);
              --v34;
            }

            while (v34);
          }

          v39 = *(v6 + 2);
          os_unfair_lock_lock((v39 + 20));
          v40 = *(v39 + 16);
          os_unfair_lock_unlock((v39 + 20));
          if ((v40 - 2) < 2 || v40 != 4 && (v40 & 1) == 0)
          {
            return v51;
          }

          AssetReaderTimelineAlignment.alignments.getter();
          if (*(v41 + 16))
          {

            sub_1D9179FBC();
            if (sub_1D9179F7C())
            {
              v42 = sub_1D9179FBC();
              v44 = v43;
              if (sub_1D9179F7C())
              {
                __break(1u);
              }

              else
              {
                v6 = v51;
                if (swift_isUniquelyReferenced_nonNull_native())
                {
LABEL_24:
                  v46 = *(v6 + 2);
                  v45 = *(v6 + 3);
                  if (v46 >= v45 >> 1)
                  {
                    v6 = sub_1D8ECE510((v45 > 1), v46 + 1, 1, v6);
                  }

                  *(v6 + 2) = v46 + 1;
                  v47 = &v6[32 * v46];
                  *(v47 + 4) = v42;
                  *(v47 + 5) = v44;
                  *(v47 + 6) = a1;
                  *(v47 + 7) = a2;
                  return v6;
                }
              }

              v6 = sub_1D8ECE510(0, *(v6 + 2) + 1, 1, v6);
              goto LABEL_24;
            }
          }

          else
          {
          }

          return v51;
        }
      }

      v49 = v25;
      v48 = sub_1D8ECE510((v26 > 1), v25, 1, v24);
      v25 = v49;
      v24 = v48;
      goto LABEL_8;
    }

    v28 = sub_1D9179FBC();
    v30 = v29;
    if (sub_1D9179F7C())
    {
      __break(1u);
    }

    else
    {
      v24 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(v24 + 2);
      v31 = *(v24 + 3);
      v3 = v4 + 1;
      if (v4 < v31 >> 1)
      {
LABEL_12:
        *(v24 + 2) = v3;
        v32 = &v24[32 * v4];
        *(v32 + 4) = 0;
        *(v32 + 5) = 0;
        *(v32 + 6) = v28;
        *(v32 + 7) = v30;
        goto LABEL_13;
      }
    }

    v24 = sub_1D8ECE510((v31 > 1), v3, 1, v24);
    goto LABEL_12;
  }

  return result;
}

uint64_t AssetReaderTimelineAlignment.deinit()
{

  v1 = OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger;
  v2 = sub_1D917744C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t AssetReaderTimelineAlignment.__deallocating_deinit()
{

  v1 = OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger;
  v2 = sub_1D917744C();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

BOOL sub_1D913B094()
{
  v1 = *(*v0 + 16);
  os_unfair_lock_lock((v1 + 20));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 20));
  return v2 != 4;
}

uint64_t AssetReaderTimelineAlignment.debugDescription.getter()
{
  AssetReaderTimelineAlignment.alignments.getter();
  if (*(v1 + 16))
  {

    v2 = *(v0 + 24);
    os_unfair_lock_lock((v2 + 24));
    sub_1D9139DC4((v2 + 16), &v59);
    os_unfair_lock_unlock((v2 + 24));
    v3 = *(v59 + 16);
    v4 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      v59 = MEMORY[0x1E69E7CC0];
      sub_1D8D41BE0(0, v3, 0);
      v5 = 32;
      v6 = v59;
      do
      {

        v8 = MEMORY[0x1DA729BD0](v7, &type metadata for AssetReaderTimelineAlignment.Alignment);
        v10 = v9;

        v59 = v6;
        v12 = *(v6 + 16);
        v11 = *(v6 + 24);
        if (v12 >= v11 >> 1)
        {
          sub_1D8D41BE0((v11 > 1), v12 + 1, 1);
          v6 = v59;
        }

        *(v6 + 16) = v12 + 1;
        v13 = v6 + 16 * v12;
        *(v13 + 32) = v8;
        *(v13 + 40) = v10;
        v5 += 8;
        --v3;
      }

      while (v3);

      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v6 = MEMORY[0x1E69E7CC0];
    }

    v59 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
    sub_1D8D72B0C();
    v55 = sub_1D917817C();
    v56 = v15;

    v16 = sub_1D9179FBC();
    v18 = AssetReaderTimelineAlignment.nonMatchingRangesInPlayer(with:)(v16, v17);
    v19 = *(v18 + 2);
    if (v19)
    {
      v61 = v4;
      sub_1D8D41BE0(0, v19, 0);
      v20 = v61;
      v21 = v18 + 56;
      do
      {
        v57 = v19;
        v22 = *(v21 - 3);
        v23 = *(v21 - 2);
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1D917946C();
        v59 = v22;
        v60 = v23;
        sub_1D917964C();
        MEMORY[0x1DA7298F0](3026478, 0xE300000000000000);
        sub_1D917964C();

        v59 = 0;
        v60 = 0xE000000000000000;
        MEMORY[0x1DA7298F0](0x697461727564202CLL, 0xEC000000203A6E6FLL);
        sub_1D9179F8C();
        v24 = sub_1D9179F6C();
        MEMORY[0x1DA7298F0](v24);

        v25 = v59;
        v26 = v60;
        v61 = v20;
        v28 = *(v20 + 16);
        v27 = *(v20 + 24);
        if (v28 >= v27 >> 1)
        {
          sub_1D8D41BE0((v27 > 1), v28 + 1, 1);
          v20 = v61;
        }

        v21 += 32;
        *(v20 + 16) = v28 + 1;
        v29 = v20 + 16 * v28;
        *(v29 + 32) = v25;
        *(v29 + 40) = v26;
        v19 = v57 - 1;
      }

      while (v57 != 1);

      v4 = MEMORY[0x1E69E7CC0];
    }

    else
    {

      v20 = MEMORY[0x1E69E7CC0];
    }

    v59 = v20;
    v53 = sub_1D917817C();
    v54 = v30;

    v31 = sub_1D9179FBC();
    v33 = AssetReaderTimelineAlignment.nonMatchingRangesInReference(with:)(v31, v32);
    v34 = *(v33 + 2);
    if (v34)
    {
      v61 = v4;
      sub_1D8D41BE0(0, v34, 0);
      v35 = v61;
      v36 = v33 + 56;
      do
      {
        v58 = v34;
        v38 = *(v36 - 3);
        v37 = *(v36 - 2);
        v59 = 0;
        v60 = 0xE000000000000000;
        sub_1D917946C();
        v59 = v38;
        v60 = v37;
        sub_1D917964C();
        MEMORY[0x1DA7298F0](3026478, 0xE300000000000000);
        sub_1D917964C();

        v59 = 0;
        v60 = 0xE000000000000000;
        MEMORY[0x1DA7298F0](0x697461727564202CLL, 0xEC000000203A6E6FLL);
        sub_1D9179F8C();
        v39 = sub_1D9179F6C();
        MEMORY[0x1DA7298F0](v39);

        v40 = v59;
        v41 = v60;
        v61 = v35;
        v43 = *(v35 + 16);
        v42 = *(v35 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1D8D41BE0((v42 > 1), v43 + 1, 1);
          v35 = v61;
        }

        v36 += 32;
        *(v35 + 16) = v43 + 1;
        v44 = v35 + 16 * v43;
        *(v44 + 32) = v40;
        *(v44 + 40) = v41;
        v34 = v58 - 1;
      }

      while (v58 != 1);
    }

    else
    {

      v35 = MEMORY[0x1E69E7CC0];
    }

    v59 = v35;
    v45 = sub_1D917817C();
    v47 = v46;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4D60, &qword_1D918A700);
    v48 = swift_allocObject();
    *(v48 + 16) = xmmword_1D9189060;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1D917946C();

    v59 = 0xD000000000000011;
    v60 = 0x80000001D91D8660;
    MEMORY[0x1DA7298F0](v55, v56);

    v49 = v60;
    *(v48 + 32) = v59;
    *(v48 + 40) = v49;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1D917946C();

    v59 = 0xD00000000000001BLL;
    v60 = 0x80000001D91D8680;
    MEMORY[0x1DA7298F0](v53, v54);

    v50 = v60;
    *(v48 + 48) = v59;
    *(v48 + 56) = v50;
    v59 = 0;
    v60 = 0xE000000000000000;
    sub_1D917946C();

    v59 = 0xD00000000000001FLL;
    v60 = 0x80000001D91D86A0;
    MEMORY[0x1DA7298F0](v45, v47);

    v51 = v60;
    *(v48 + 64) = v59;
    *(v48 + 72) = v51;
    v59 = v48;
    v14 = sub_1D917817C();
  }

  else
  {

    return 1701736270;
  }

  return v14;
}

uint64_t AssetReaderTimelineAlignment.Alignment.debugDescription.getter()
{
  v1 = *v0;
  if (*v0 <= -9.22337204e18)
  {
    __break(1u);
    goto LABEL_17;
  }

  if (v1 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v2 = v0[1];
  if (v2 <= -9.22337204e18)
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (v2 >= 9.22337204e18)
  {
LABEL_19:
    __break(1u);
    goto LABEL_20;
  }

  if (v2 < v1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  v3 = v0[2];
  if (v3 <= -9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v3 >= 9.22337204e18)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v4 = v0[3];
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v2 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v3 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL || (*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    goto LABEL_23;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v4 >= v3)
  {
    sub_1D917946C();
    MEMORY[0x1DA7298F0](0xD00000000000001BLL, 0x80000001D91D86C0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](3943982, 0xE300000000000000);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](0, 0xE000000000000000);

    MEMORY[0x1DA7298F0](0xD000000000000016, 0x80000001D91D86E0);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](3943982, 0xE300000000000000);
    sub_1D917964C();
    MEMORY[0x1DA7298F0](0, 0xE000000000000000);

    MEMORY[0x1DA7298F0](41, 0xE100000000000000);
    return 0;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t static AssetReaderTimelineAlignment.== infix(_:_:)()
{
  AssetReaderTimelineAlignment.alignments.getter();
  v1 = v0;
  AssetReaderTimelineAlignment.alignments.getter();
  v3 = sub_1D8E8386C(v1, v2);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D9179F9C();
}

uint64_t sub_1D913BBE4()
{
  AssetReaderTimelineAlignment.alignments.getter();
  v1 = v0;
  AssetReaderTimelineAlignment.alignments.getter();
  v3 = sub_1D8E8386C(v1, v2);

  if ((v3 & 1) == 0)
  {
    return 0;
  }

  return sub_1D9179F9C();
}

uint64_t sub_1D913BC84()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D913BCF8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D913BD4C(BOOL *a2@<X8>)
{
  v3 = sub_1D917980C();

  *a2 = v3 != 0;
}

void sub_1D913BDDC(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D913BE34(uint64_t a1)
{
  v2 = sub_1D913DBFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D913BE70(uint64_t a1)
{
  v2 = sub_1D913DBFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AssetReaderTimelineAlignment.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB0B0, &qword_1D91BB168);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = v8 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DBFC();
  sub_1D9179F1C();
  AssetReaderTimelineAlignment.alignments.getter();
  v8[1] = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6028, &qword_1D91BB170);
  sub_1D913E6B8(&qword_1ECABB0C0, sub_1D913DC50, MEMORY[0x1E69E6300]);
  sub_1D91799FC();

  return (*(v3 + 8))(v5, v2);
}

void *sub_1D913C064@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D913DCA4(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void AssetReaderTimelineAlignment.inMemorySize.getter()
{
  AssetReaderTimelineAlignment.alignments.getter();
  v1 = *(v0 + 16);

  if (v1 >> 59)
  {
    __break(1u);
  }
}

void sub_1D913C0EC()
{
  AssetReaderTimelineAlignment.alignments.getter();
  v1 = *(v0 + 16);

  if (v1 >> 59)
  {
    __break(1u);
  }
}

uint64_t sub_1D913C128(double *a1, uint64_t a2, uint64_t a3)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = a1[2];
  v7 = a1[3];
  v8 = *v3;
  v9 = *(*v3 + 16);
  if (v9)
  {
    for (i = 0; v9 != i; ++i)
    {
      v11 = *(v8 + 16);
      if (i == v11)
      {
        break;
      }

      if (i >= v11)
      {
        __break(1u);
LABEL_44:
        __break(1u);
LABEL_45:
        __break(1u);
        goto LABEL_46;
      }

      v12 = v8 + 32 * i;
      v42 = *(v12 + 48);
      v43 = *(v12 + 32);
      v13 = sub_1D9179F5C();
      v14 = *&v43 - v13;
      v15 = *(&v43 + 1) + v13;
      v16 = v4 - v13;
      v17 = v5 + v13;
      if (v14 > v15 || v16 > v17)
      {
        goto LABEL_44;
      }

      if (v17 > v14 && v15 > v16 && v14 != v15 && v16 != v17)
      {
        v22 = sub_1D9179F5C();
        v23 = *&v42 - v22;
        v24 = *(&v42 + 1) + v22;
        v25 = v6 - v22;
        v26 = v7 + v22;
        if (v23 > v24 || v25 > v26)
        {
          goto LABEL_45;
        }

        v28 = v26 > v23 && v24 > v25;
        v29 = !v28 || v23 == v24;
        if (!v29 && v25 != v26)
        {
          v48 = v43;
          v49 = v42;
          KeyPath = swift_getKeyPath();
          v44 = v4;
          v45 = v5;
          v46 = v6;
          v47 = v7;
          sub_1D913C384(KeyPath, &v44);
          v33 = v32;
          v35 = v34;

          v48 = v43;
          v49 = v42;
          v36 = swift_getKeyPath();
          v44 = v4;
          v45 = v5;
          v46 = v6;
          v47 = v7;
          sub_1D913C384(v36, &v44);
          v6 = v37;
          v7 = v38;

          result = swift_isUniquelyReferenced_nonNull_native();
          if ((result & 1) == 0)
          {
            result = sub_1D915C3EC(v8);
            v8 = result;
          }

          if (i < *(v8 + 16))
          {
            v4 = v33;
            v5 = v35;
            goto LABEL_42;
          }

          __break(1u);
          return result;
        }
      }
    }
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_46:
    result = sub_1D8ECC4D4(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  i = *(v8 + 16);
  v40 = *(v8 + 24);
  if (i >= v40 >> 1)
  {
    result = sub_1D8ECC4D4((v40 > 1), i + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = i + 1;
LABEL_42:
  v41 = (v8 + 32 * i);
  v41[4] = v4;
  v41[5] = v5;
  v41[6] = v6;
  v41[7] = v7;
  *v3 = v8;
  return result;
}

void *sub_1D913C384(uint64_t a1, uint64_t *a2)
{
  swift_getAtKeyPath();
  v2 = v7;
  swift_getAtKeyPath();
  if (v5 < v7)
  {
    v2 = v5;
  }

  swift_getAtKeyPath();
  result = swift_getAtKeyPath();
  if (v8 > v6)
  {
    v4 = v8;
  }

  else
  {
    v4 = v6;
  }

  if (v2 > v4)
  {
    __break(1u);
  }

  return result;
}

void sub_1D913C470(double *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_88:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_126;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_120:
      v9 = sub_1D8F5DE20(v9);
    }

    v79 = v9 + 16;
    v80 = *(v9 + 2);
    if (v80 >= 2)
    {
      while (*a3)
      {
        v81 = &v9[16 * v80];
        v82 = *v81;
        v83 = &v79[2 * v80];
        v84 = v83[1];
        sub_1D913D4F8((*a3 + 8 * *v81), (*a3 + 8 * *v83), (*a3 + 8 * v84), a1);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v84 < v82)
        {
          goto LABEL_112;
        }

        if (v80 - 2 >= *v79)
        {
          goto LABEL_113;
        }

        *v81 = v82;
        *(v81 + 1) = v84;
        v85 = *v79 - v80;
        if (*v79 < v80)
        {
          goto LABEL_114;
        }

        v80 = *v79 - 1;
        memmove(v83, v83 + 2, 16 * v85);
        *v79 = v80;
        if (v80 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_124;
    }

LABEL_97:

    return;
  }

  v7 = a4;
  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    v10 = v8++;
    if (v8 < v6)
    {
      v11 = *(*a3 + 8 * v8);
      v12 = fabs(v11);
      v13 = fabs(*(*a3 + 8 * v10));
      v14 = v10 + 2;
      while (v6 != v14)
      {
        v15 = *(*a3 + 8 * v14);
        v16 = fabs(v15) >= fabs(v11);
        ++v14;
        v11 = v15;
        if ((((v12 < v13) ^ v16) & 1) == 0)
        {
          v8 = v14 - 1;
          if (v12 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v8 = v6;
      if (v12 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v8 < v10)
      {
        goto LABEL_117;
      }

      if (v10 < v8)
      {
        v17 = 8 * v8 - 8;
        v18 = 8 * v10;
        v19 = v8;
        v20 = v10;
        do
        {
          if (v20 != --v19)
          {
            v22 = *a3;
            if (!*a3)
            {
              goto LABEL_123;
            }

            v21 = *(v22 + v18);
            *(v22 + v18) = *(v22 + v17);
            *(v22 + v17) = v21;
          }

          ++v20;
          v17 -= 8;
          v18 += 8;
        }

        while (v20 < v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v8 < v6)
    {
      if (__OFSUB__(v8, v10))
      {
        goto LABEL_116;
      }

      if (v8 - v10 < v7)
      {
        if (__OFADD__(v10, v7))
        {
          goto LABEL_118;
        }

        if (v10 + v7 < v6)
        {
          v6 = v10 + v7;
        }

        if (v6 < v10)
        {
LABEL_119:
          __break(1u);
          goto LABEL_120;
        }

        if (v8 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v8 < v10)
    {
      goto LABEL_115;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1D8ECC734(0, *(v9 + 2) + 1, 1, v9);
    }

    v33 = *(v9 + 2);
    v32 = *(v9 + 3);
    v34 = v33 + 1;
    if (v33 >= v32 >> 1)
    {
      v9 = sub_1D8ECC734((v32 > 1), v33 + 1, 1, v9);
    }

    *(v9 + 2) = v34;
    v35 = &v9[16 * v33];
    *(v35 + 4) = v10;
    *(v35 + 5) = v8;
    v36 = *a1;
    if (!*a1)
    {
      goto LABEL_125;
    }

    if (v33)
    {
      while (1)
      {
        v37 = v34 - 1;
        if (v34 >= 4)
        {
          break;
        }

        if (v34 == 3)
        {
          v38 = *(v9 + 4);
          v39 = *(v9 + 5);
          v48 = __OFSUB__(v39, v38);
          v40 = v39 - v38;
          v41 = v48;
LABEL_57:
          if (v41)
          {
            goto LABEL_103;
          }

          v54 = &v9[16 * v34];
          v56 = *v54;
          v55 = *(v54 + 1);
          v57 = __OFSUB__(v55, v56);
          v58 = v55 - v56;
          v59 = v57;
          if (v57)
          {
            goto LABEL_106;
          }

          v60 = &v9[16 * v37 + 32];
          v62 = *v60;
          v61 = *(v60 + 1);
          v48 = __OFSUB__(v61, v62);
          v63 = v61 - v62;
          if (v48)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v58, v63))
          {
            goto LABEL_110;
          }

          if (v58 + v63 >= v40)
          {
            if (v40 < v63)
            {
              v37 = v34 - 2;
            }

            goto LABEL_78;
          }

          goto LABEL_71;
        }

        v64 = &v9[16 * v34];
        v66 = *v64;
        v65 = *(v64 + 1);
        v48 = __OFSUB__(v65, v66);
        v58 = v65 - v66;
        v59 = v48;
LABEL_71:
        if (v59)
        {
          goto LABEL_105;
        }

        v67 = &v9[16 * v37];
        v69 = *(v67 + 4);
        v68 = *(v67 + 5);
        v48 = __OFSUB__(v68, v69);
        v70 = v68 - v69;
        if (v48)
        {
          goto LABEL_108;
        }

        if (v70 < v58)
        {
          goto LABEL_3;
        }

LABEL_78:
        v75 = v37 - 1;
        if (v37 - 1 >= v34)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
          goto LABEL_119;
        }

        if (!*a3)
        {
          goto LABEL_122;
        }

        v76 = *&v9[16 * v75 + 32];
        v77 = *&v9[16 * v37 + 40];
        sub_1D913D4F8((*a3 + 8 * v76), (*a3 + 8 * *&v9[16 * v37 + 32]), (*a3 + 8 * v77), v36);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v77 < v76)
        {
          goto LABEL_99;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_1D8F5DE20(v9);
        }

        if (v75 >= *(v9 + 2))
        {
          goto LABEL_100;
        }

        v78 = &v9[16 * v75];
        *(v78 + 4) = v76;
        *(v78 + 5) = v77;
        sub_1D8F5DD94(v37);
        v34 = *(v9 + 2);
        if (v34 <= 1)
        {
          goto LABEL_3;
        }
      }

      v42 = &v9[16 * v34 + 32];
      v43 = *(v42 - 64);
      v44 = *(v42 - 56);
      v48 = __OFSUB__(v44, v43);
      v45 = v44 - v43;
      if (v48)
      {
        goto LABEL_101;
      }

      v47 = *(v42 - 48);
      v46 = *(v42 - 40);
      v48 = __OFSUB__(v46, v47);
      v40 = v46 - v47;
      v41 = v48;
      if (v48)
      {
        goto LABEL_102;
      }

      v49 = &v9[16 * v34];
      v51 = *v49;
      v50 = *(v49 + 1);
      v48 = __OFSUB__(v50, v51);
      v52 = v50 - v51;
      if (v48)
      {
        goto LABEL_104;
      }

      v48 = __OFADD__(v40, v52);
      v53 = v40 + v52;
      if (v48)
      {
        goto LABEL_107;
      }

      if (v53 >= v45)
      {
        v71 = &v9[16 * v37 + 32];
        v73 = *v71;
        v72 = *(v71 + 1);
        v48 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v48)
        {
          goto LABEL_111;
        }

        if (v40 < v74)
        {
          v37 = v34 - 2;
        }

        goto LABEL_78;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    v7 = a4;
    if (v8 >= v6)
    {
      goto LABEL_88;
    }
  }

  v23 = *a3;
  v24 = *a3 + 8 * v8 - 8;
  v25 = v10 - v8;
LABEL_30:
  v26 = *(v23 + 8 * v8);
  v27 = fabs(v26);
  v28 = v25;
  v29 = v24;
  while (1)
  {
    v30 = *v29;
    if (v27 >= fabs(*v29))
    {
LABEL_29:
      ++v8;
      v24 += 8;
      --v25;
      if (v8 != v6)
      {
        goto LABEL_30;
      }

      v8 = v6;
      goto LABEL_37;
    }

    if (!v23)
    {
      break;
    }

    *v29 = v26;
    v29[1] = v30;
    --v29;
    if (__CFADD__(v28++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_122:
  __break(1u);
LABEL_123:
  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
}

void sub_1D913C9D0(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D8F5DE20(v8);
    }

    v85 = v8 + 16;
    v86 = *(v8 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = &v8[16 * v86];
        v88 = *v87;
        v89 = &v85[2 * v86];
        v90 = v89[1];
        sub_1D913D6FC((*a3 + 32 * *v87), (*a3 + 32 * *v89), (*a3 + 32 * v90), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v90 < v88)
        {
          goto LABEL_114;
        }

        if (v86 - 2 >= *v85)
        {
          goto LABEL_115;
        }

        *v87 = v88;
        *(v87 + 1) = v90;
        v91 = *v85 - v86;
        if (*v85 < v86)
        {
          goto LABEL_116;
        }

        v86 = *v85 - 1;
        memmove(v89, v89 + 2, 16 * v91);
        *v85 = v86;
        if (v86 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v92 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7);
      v11 = 32 * v9;
      v12 = (*a3 + 32 * v9);
      v14 = *v12;
      v13 = v12 + 8;
      v15 = v14;
      v16 = v9 + 2;
      v17 = v10;
      while (v6 != v16)
      {
        v18 = *v13;
        v13 += 4;
        v19 = v18 >= v17;
        ++v16;
        v17 = v18;
        if ((((v10 < v15) ^ v19) & 1) == 0)
        {
          v7 = v16 - 1;
          if (v10 >= v15)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v15)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v20 = 0;
        v21 = 32 * v7;
        v22 = v9;
        do
        {
          if (v22 != v7 + v20 - 1)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v23 = (v28 + v11);
            v24 = v28 + v21;
            v25 = *v23;
            v26 = v23[1];
            v27 = *(v24 - 16);
            *v23 = *(v24 - 32);
            v23[1] = v27;
            *(v24 - 32) = v25;
            *(v24 - 16) = v26;
          }

          ++v22;
          --v20;
          v21 -= 32;
          v11 += 32;
        }

        while (v22 < v7 + v20);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v39 = *(v8 + 3);
    v40 = v5 + 1;
    if (v5 >= v39 >> 1)
    {
      v8 = sub_1D8ECC734((v39 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v40;
    v41 = v8 + 32;
    v42 = &v8[16 * v5 + 32];
    *v42 = v9;
    *(v42 + 1) = v7;
    v94 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v40 - 1;
        if (v40 >= 4)
        {
          break;
        }

        if (v40 == 3)
        {
          v43 = *(v8 + 4);
          v44 = *(v8 + 5);
          v53 = __OFSUB__(v44, v43);
          v45 = v44 - v43;
          v46 = v53;
LABEL_57:
          if (v46)
          {
            goto LABEL_104;
          }

          v59 = &v8[16 * v40];
          v61 = *v59;
          v60 = *(v59 + 1);
          v62 = __OFSUB__(v60, v61);
          v63 = v60 - v61;
          v64 = v62;
          if (v62)
          {
            goto LABEL_106;
          }

          v65 = &v41[16 * v5];
          v67 = *v65;
          v66 = *(v65 + 1);
          v53 = __OFSUB__(v66, v67);
          v68 = v66 - v67;
          if (v53)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v63, v68))
          {
            goto LABEL_111;
          }

          if (v63 + v68 >= v45)
          {
            if (v45 < v68)
            {
              v5 = v40 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v40 < 2)
        {
          goto LABEL_112;
        }

        v69 = &v8[16 * v40];
        v71 = *v69;
        v70 = *(v69 + 1);
        v53 = __OFSUB__(v70, v71);
        v63 = v70 - v71;
        v64 = v53;
LABEL_72:
        if (v64)
        {
          goto LABEL_108;
        }

        v72 = &v41[16 * v5];
        v74 = *v72;
        v73 = *(v72 + 1);
        v53 = __OFSUB__(v73, v74);
        v75 = v73 - v74;
        if (v53)
        {
          goto LABEL_110;
        }

        if (v75 < v63)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v40)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v80 = &v41[16 * v5 - 16];
        v81 = *v80;
        v82 = &v41[16 * v5];
        v83 = *(v82 + 1);
        sub_1D913D6FC((*a3 + 32 * *v80), (*a3 + 32 * *v82), (*a3 + 32 * v83), v94);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v83 < v81)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v80 = v81;
        *(v80 + 1) = v83;
        v84 = *(v8 + 2);
        if (v5 >= v84)
        {
          goto LABEL_101;
        }

        v40 = v84 - 1;
        memmove(&v41[16 * v5], v82 + 16, 16 * (v84 - 1 - v5));
        *(v8 + 2) = v84 - 1;
        if (v84 <= 2)
        {
          goto LABEL_3;
        }
      }

      v47 = &v41[16 * v40];
      v48 = *(v47 - 8);
      v49 = *(v47 - 7);
      v53 = __OFSUB__(v49, v48);
      v50 = v49 - v48;
      if (v53)
      {
        goto LABEL_102;
      }

      v52 = *(v47 - 6);
      v51 = *(v47 - 5);
      v53 = __OFSUB__(v51, v52);
      v45 = v51 - v52;
      v46 = v53;
      if (v53)
      {
        goto LABEL_103;
      }

      v54 = &v8[16 * v40];
      v56 = *v54;
      v55 = *(v54 + 1);
      v53 = __OFSUB__(v55, v56);
      v57 = v55 - v56;
      if (v53)
      {
        goto LABEL_105;
      }

      v53 = __OFADD__(v45, v57);
      v58 = v45 + v57;
      if (v53)
      {
        goto LABEL_107;
      }

      if (v58 >= v50)
      {
        v76 = &v41[16 * v5];
        v78 = *v76;
        v77 = *(v76 + 1);
        v53 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v53)
        {
          goto LABEL_113;
        }

        if (v45 < v79)
        {
          v5 = v40 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v92;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 32 * v7 - 32;
  v31 = v9 - v7;
LABEL_30:
  v32 = *(v29 + 32 * v7);
  v33 = v31;
  v34 = v30;
  while (1)
  {
    if (v32 >= *v34)
    {
LABEL_29:
      ++v7;
      v30 += 32;
      --v31;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v34 + 56);
    v36 = *(v34 + 40);
    v37 = *(v34 + 16);
    *(v34 + 32) = *v34;
    *(v34 + 48) = v37;
    *v34 = v32;
    *(v34 + 8) = v36;
    *(v34 + 24) = v35;
    v34 -= 32;
    if (__CFADD__(v33++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

void sub_1D913CF68(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v8 = sub_1D8F5DE20(v8);
    }

    v84 = v8 + 16;
    v85 = *(v8 + 2);
    if (v85 >= 2)
    {
      while (*a3)
      {
        v86 = &v8[16 * v85];
        v87 = *v86;
        v88 = &v84[2 * v85];
        v89 = v88[1];
        sub_1D913D900((*a3 + 32 * *v86), (*a3 + 32 * *v88), (*a3 + 32 * v89), v5);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v89 < v87)
        {
          goto LABEL_114;
        }

        if (v85 - 2 >= *v84)
        {
          goto LABEL_115;
        }

        *v86 = v87;
        *(v86 + 1) = v89;
        v90 = *v84 - v85;
        if (*v84 < v85)
        {
          goto LABEL_116;
        }

        v85 = *v84 - 1;
        memmove(v88, v88 + 2, 16 * v90);
        *v84 = v85;
        if (v85 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x1E69E7CC0];
  v91 = a4;
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *(*a3 + 32 * v7 + 16);
      v11 = 32 * v9;
      v12 = *a3 + 32 * v9;
      v13 = *(v12 + 16);
      v14 = v9 + 2;
      v15 = (v12 + 80);
      v16 = v10;
      while (v6 != v14)
      {
        v17 = *v15;
        v15 += 4;
        v18 = v17 >= v16;
        ++v14;
        v16 = v17;
        if ((((v10 < v13) ^ v18) & 1) == 0)
        {
          v7 = v14 - 1;
          if (v10 >= v13)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v7 = v6;
      if (v10 >= v13)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v7 < v9)
      {
        goto LABEL_119;
      }

      if (v9 < v7)
      {
        v19 = 0;
        v20 = 32 * v7;
        v21 = v9;
        do
        {
          if (v21 != v7 + v19 - 1)
          {
            v27 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v22 = (v27 + v11);
            v23 = v27 + v20;
            v24 = *v22;
            v25 = v22[1];
            v26 = *(v23 - 16);
            *v22 = *(v23 - 32);
            v22[1] = v26;
            *(v23 - 32) = v24;
            *(v23 - 16) = v25;
          }

          ++v21;
          --v19;
          v20 -= 32;
          v11 += 32;
        }

        while (v21 < v7 + v19);
        v6 = a3[1];
      }
    }

LABEL_20:
    if (v7 < v6)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_118;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_120;
        }

        if (v9 + a4 < v6)
        {
          v6 = v9 + a4;
        }

        if (v6 < v9)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v7 != v6)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v7 < v9)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_1D8ECC734(0, *(v8 + 2) + 1, 1, v8);
    }

    v5 = *(v8 + 2);
    v38 = *(v8 + 3);
    v39 = v5 + 1;
    if (v5 >= v38 >> 1)
    {
      v8 = sub_1D8ECC734((v38 > 1), v5 + 1, 1, v8);
    }

    *(v8 + 2) = v39;
    v40 = v8 + 32;
    v41 = &v8[16 * v5 + 32];
    *v41 = v9;
    *(v41 + 1) = v7;
    v93 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v5)
    {
      while (1)
      {
        v5 = v39 - 1;
        if (v39 >= 4)
        {
          break;
        }

        if (v39 == 3)
        {
          v42 = *(v8 + 4);
          v43 = *(v8 + 5);
          v52 = __OFSUB__(v43, v42);
          v44 = v43 - v42;
          v45 = v52;
LABEL_57:
          if (v45)
          {
            goto LABEL_104;
          }

          v58 = &v8[16 * v39];
          v60 = *v58;
          v59 = *(v58 + 1);
          v61 = __OFSUB__(v59, v60);
          v62 = v59 - v60;
          v63 = v61;
          if (v61)
          {
            goto LABEL_106;
          }

          v64 = &v40[16 * v5];
          v66 = *v64;
          v65 = *(v64 + 1);
          v52 = __OFSUB__(v65, v66);
          v67 = v65 - v66;
          if (v52)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v62, v67))
          {
            goto LABEL_111;
          }

          if (v62 + v67 >= v44)
          {
            if (v44 < v67)
            {
              v5 = v39 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v39 < 2)
        {
          goto LABEL_112;
        }

        v68 = &v8[16 * v39];
        v70 = *v68;
        v69 = *(v68 + 1);
        v52 = __OFSUB__(v69, v70);
        v62 = v69 - v70;
        v63 = v52;
LABEL_72:
        if (v63)
        {
          goto LABEL_108;
        }

        v71 = &v40[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v52 = __OFSUB__(v72, v73);
        v74 = v72 - v73;
        if (v52)
        {
          goto LABEL_110;
        }

        if (v74 < v62)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v5 - 1 >= v39)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v79 = &v40[16 * v5 - 16];
        v80 = *v79;
        v81 = &v40[16 * v5];
        v82 = *(v81 + 1);
        sub_1D913D900((*a3 + 32 * *v79), (*a3 + 32 * *v81), (*a3 + 32 * v82), v93);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v82 < v80)
        {
          goto LABEL_99;
        }

        if (v5 > *(v8 + 2))
        {
          goto LABEL_100;
        }

        *v79 = v80;
        *(v79 + 1) = v82;
        v83 = *(v8 + 2);
        if (v5 >= v83)
        {
          goto LABEL_101;
        }

        v39 = v83 - 1;
        memmove(&v40[16 * v5], v81 + 16, 16 * (v83 - 1 - v5));
        *(v8 + 2) = v83 - 1;
        if (v83 <= 2)
        {
          goto LABEL_3;
        }
      }

      v46 = &v40[16 * v39];
      v47 = *(v46 - 8);
      v48 = *(v46 - 7);
      v52 = __OFSUB__(v48, v47);
      v49 = v48 - v47;
      if (v52)
      {
        goto LABEL_102;
      }

      v51 = *(v46 - 6);
      v50 = *(v46 - 5);
      v52 = __OFSUB__(v50, v51);
      v44 = v50 - v51;
      v45 = v52;
      if (v52)
      {
        goto LABEL_103;
      }

      v53 = &v8[16 * v39];
      v55 = *v53;
      v54 = *(v53 + 1);
      v52 = __OFSUB__(v54, v55);
      v56 = v54 - v55;
      if (v52)
      {
        goto LABEL_105;
      }

      v52 = __OFADD__(v44, v56);
      v57 = v44 + v56;
      if (v52)
      {
        goto LABEL_107;
      }

      if (v57 >= v49)
      {
        v75 = &v40[16 * v5];
        v77 = *v75;
        v76 = *(v75 + 1);
        v52 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v52)
        {
          goto LABEL_113;
        }

        if (v44 < v78)
        {
          v5 = v39 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v6 = a3[1];
    a4 = v91;
    if (v7 >= v6)
    {
      goto LABEL_88;
    }
  }

  v28 = *a3;
  v29 = *a3 + 32 * v7;
  v30 = v9 - v7;
LABEL_30:
  v31 = *(v28 + 32 * v7 + 16);
  v32 = v30;
  v33 = v29;
  while (1)
  {
    if (v31 >= *(v33 - 16))
    {
LABEL_29:
      ++v7;
      v29 += 32;
      --v30;
      if (v7 != v6)
      {
        goto LABEL_30;
      }

      v7 = v6;
      goto LABEL_37;
    }

    if (!v28)
    {
      break;
    }

    v34 = *(v33 + 24);
    v35 = *v33;
    v36 = *(v33 - 16);
    *v33 = *(v33 - 32);
    *(v33 + 16) = v36;
    *(v33 - 16) = v31;
    *(v33 - 8) = v34;
    *(v33 - 32) = v35;
    v33 -= 32;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1D913D4F8(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 < v12 >> 3)
  {
    if (a4 != __dst || &__dst[v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[v10];
    if (v8 < 8)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v15 = *v6;
      if (fabs(*v6) < fabs(*v4))
      {
        break;
      }

      v15 = *v4;
      v16 = v7 == v4++;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      ++v7;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v16 = v7 == v6++;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v15;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[v13] <= a4)
  {
    memmove(a4, __src, 8 * v13);
  }

  v14 = &v4[v13];
  if (v11 >= 8 && v6 > v7)
  {
LABEL_24:
    v17 = v6 - 1;
    --v5;
    v18 = v14;
    do
    {
      v19 = v5 + 1;
      v20 = *(v18 - 8);
      v18 -= 8;
      v21 = v20;
      if (fabs(v20) < fabs(*v17))
      {
        if (v19 != v6)
        {
          *v5 = *v17;
        }

        if (v14 <= v4 || (--v6, v17 <= v7))
        {
          v6 = v17;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v19 != v14)
      {
        *v5 = v21;
      }

      --v5;
      v14 = v18;
    }

    while (v18 > v4);
    v14 = v18;
  }

LABEL_35:
  v22 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v22 & 0xFFFFFFFFFFFFFFF8)))
  {
    memmove(v6, v4, 8 * (v22 >> 3));
  }

  return 1;
}

uint64_t sub_1D913D6FC(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (*v6 < *v4)
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v18 = v6 - 4;
    v5 -= 4;
    v19 = v14;
    do
    {
      v20 = v5 + 4;
      v21 = *(v19 - 4);
      v19 -= 4;
      if (v21 < *v18)
      {
        if (v20 != v6)
        {
          v23 = *(v6 - 1);
          *v5 = *v18;
          *(v5 + 1) = v23;
        }

        if (v14 <= v4 || (v6 -= 4, v18 <= v7))
        {
          v6 = v18;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      if (v20 != v14)
      {
        v22 = *(v19 + 1);
        *v5 = *v19;
        *(v5 + 1) = v22;
      }

      v5 -= 4;
      v14 = v19;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v24 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v24 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v24 >> 5));
  }

  return 1;
}

uint64_t sub_1D913D900(double *__dst, double *__src, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 31;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 5;
  v11 = a3 - __src;
  v12 = a3 - __src + 31;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 5;
  if (v10 < v12 >> 5)
  {
    if (a4 != __dst || &__dst[4 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[4 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_35;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v15 = v4;
      v16 = v7 == v4;
      v4 += 4;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 4;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }

    v15 = v6;
    v16 = v7 == v6;
    v6 += 4;
    if (v16)
    {
      goto LABEL_13;
    }

LABEL_12:
    v17 = *(v15 + 1);
    *v7 = *v15;
    *(v7 + 1) = v17;
    goto LABEL_13;
  }

  if (a4 != __src || &__src[4 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[4 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_24:
    v5 -= 4;
    do
    {
      v18 = v5 + 4;
      if (*(v14 - 2) < *(v6 - 2))
      {
        v21 = v6 - 4;
        if (v18 != v6)
        {
          v22 = *(v6 - 1);
          *v5 = *v21;
          *(v5 + 1) = v22;
        }

        if (v14 <= v4 || (v6 -= 4, v21 <= v7))
        {
          v6 = v21;
          goto LABEL_35;
        }

        goto LABEL_24;
      }

      v19 = v14 - 4;
      if (v18 != v14)
      {
        v20 = *(v14 - 1);
        *v5 = *v19;
        *(v5 + 1) = v20;
      }

      v5 -= 4;
      v14 -= 4;
    }

    while (v19 > v4);
    v14 = v19;
  }

LABEL_35:
  v23 = v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0);
  if (v6 != v4 || v6 >= (v4 + (v23 & 0xFFFFFFFFFFFFFFE0)))
  {
    memmove(v6, v4, 32 * (v23 >> 5));
  }

  return 1;
}

BOOL _s18PodcastsFoundation28AssetReaderTimelineAlignmentC0F0V2eeoiySbAE_AEtFZ_0(double *a1, double *a2)
{
  if (*a1 != *a2 || a1[1] != a2[1])
  {
    return 0;
  }

  if (a1[3] == a2[3])
  {
    return a1[2] == a2[2];
  }

  return 0;
}

unint64_t sub_1D913DB3C()
{
  result = qword_1ECABB088;
  if (!qword_1ECABB088)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB088);
  }

  return result;
}

uint64_t sub_1D913DB90(unint64_t *a1, uint64_t a2, uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABB090, &qword_1D91BB118);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D913DBFC()
{
  result = qword_1ECABB0B8;
  if (!qword_1ECABB0B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0B8);
  }

  return result;
}

unint64_t sub_1D913DC50()
{
  result = qword_1ECABB0C8;
  if (!qword_1ECABB0C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0C8);
  }

  return result;
}

void *sub_1D913DCA4(void *a1)
{
  v3 = sub_1D917744C();
  v27 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB108, &qword_1D91BB6A0);
  v28 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v23 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D913DBFC();
  sub_1D9179EEC();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v25 = v5;
    v26 = a1;
    v10 = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6028, &qword_1D91BB170);
    sub_1D913E6B8(&qword_1ECABB110, sub_1D913E730, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    v23 = v8;
    v24 = v6;
    v12 = v29;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB120, &qword_1D91BB6A8);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0;
    v14 = inited + 32;
    *(inited + 40) = v12;
    v15 = sub_1D8E27EE4(inited);
    swift_setDeallocating();
    sub_1D913E784(v14);
    v16 = v10;
    if (qword_1ECAB0CA0 != -1)
    {
      swift_once();
    }

    v17 = __swift_project_value_buffer(v3, qword_1ECAB0CA8);
    v18 = v27;
    v19 = v25;
    (*(v27 + 16))(v25, v17, v3);
    type metadata accessor for AssetReaderTimelineAlignment(0);
    v9 = swift_allocObject();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB0, &unk_1D91BAD70);
    v20 = swift_allocObject();
    *(v20 + 24) = 0;
    *(v20 + 16) = v15;
    *(v9 + 24) = v20;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEB8, &unk_1D91BB060);
    v21 = swift_allocObject();
    *(v21 + 28) = 0;
    *(v21 + 16) = 0;
    *(v21 + 24) = 1;
    *(v9 + 32) = v21;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABAEC0, &unk_1D91BAD80);
    v22 = swift_allocObject();
    *(v22 + 20) = 0;
    (*(v16 + 8))(v23, v24);
    *(v22 + 16) = 3;
    *(v9 + 16) = v22;
    *(v9 + 40) = xmmword_1D91BAC80;
    (*(v18 + 32))(v9 + OBJC_IVAR____TtC18PodcastsFoundation28AssetReaderTimelineAlignment_logger, v19, v3);
    __swift_destroy_boxed_opaque_existential_1Tm(v26);
  }

  return v9;
}

uint64_t getEnumTagSinglePayload for AssetReaderTimelineAlignment.ReadStartPosition(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_20;
  }

  v2 = a2 + 2;
  if (a2 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 2;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 2;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 >= 2)
  {
    return v9;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetReaderTimelineAlignment.ReadStartPosition(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 2;
  if (a3 + 2 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFE)
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D913E228(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (v2)
  {
    return (v3 + 1);
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D913E244(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 1;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for AssetReaderTimelineAlignment.State(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_20;
  }

  v2 = a2 + 4;
  if (a2 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if (v2 >> 8 < 0xFF)
  {
    v3 = 1;
  }

  if (v2 >= 0x100)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0;
  }

  if (v4 <= 1)
  {
    if (!v4)
    {
      goto LABEL_20;
    }

    v5 = a1[1];
    if (!a1[1])
    {
      goto LABEL_20;
    }

    return (*a1 | (v5 << 8)) - 4;
  }

  if (v4 == 2)
  {
    v5 = *(a1 + 1);
    if (*(a1 + 1))
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

  else
  {
    v5 = *(a1 + 1);
    if (v5)
    {
      return (*a1 | (v5 << 8)) - 4;
    }
  }

LABEL_20:
  v7 = *a1;
  v8 = v7 >= 2;
  v9 = (v7 + 2147483646) & 0x7FFFFFFF;
  if (!v8)
  {
    v9 = -1;
  }

  if (v9 + 1 < 2)
  {
    v9 = 0;
  }

  if (v9 >= 3)
  {
    return v9 - 2;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for AssetReaderTimelineAlignment.State(uint64_t result, unsigned int a2, unsigned int a3)
{
  v3 = a3 + 4;
  if (a3 + 4 >= 0xFFFF00)
  {
    v4 = 4;
  }

  else
  {
    v4 = 2;
  }

  if (v3 >> 8 < 0xFF)
  {
    v4 = 1;
  }

  if (v3 >= 0x100)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a3 < 0xFC)
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
    if (v5 > 1)
    {
      if (v5 == 2)
      {
        *(result + 1) = v6;
      }

      else
      {
        *(result + 1) = v6;
      }
    }

    else if (v5)
    {
      *(result + 1) = v6;
    }

    return result;
  }

  if (v5 > 1)
  {
    if (v5 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_22;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v5)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_22:
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_22;
  }

  return result;
}

uint64_t sub_1D913E3DC(unsigned __int8 *a1)
{
  v1 = *a1;
  v2 = v1 >= 2;
  v3 = (v1 + 2147483646) & 0x7FFFFFFF;
  if (!v2)
  {
    v3 = -1;
  }

  if (v3 + 1 >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

_BYTE *sub_1D913E408(_BYTE *result, int a2)
{
  if (a2)
  {
    *result = a2 + 2;
  }

  return result;
}

unint64_t sub_1D913E454()
{
  result = qword_1ECABB0D0;
  if (!qword_1ECABB0D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0D0);
  }

  return result;
}

unint64_t sub_1D913E4AC()
{
  result = qword_1ECABB0D8;
  if (!qword_1ECABB0D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0D8);
  }

  return result;
}

unint64_t sub_1D913E504()
{
  result = qword_1ECABB0E0;
  if (!qword_1ECABB0E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0E0);
  }

  return result;
}

unint64_t sub_1D913E55C()
{
  result = qword_1ECABB0E8;
  if (!qword_1ECABB0E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0E8);
  }

  return result;
}

unint64_t sub_1D913E5B4()
{
  result = qword_1ECABB0F0;
  if (!qword_1ECABB0F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0F0);
  }

  return result;
}

unint64_t sub_1D913E60C()
{
  result = qword_1ECABB0F8;
  if (!qword_1ECABB0F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB0F8);
  }

  return result;
}

unint64_t sub_1D913E664()
{
  result = qword_1ECABB100;
  if (!qword_1ECABB100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB100);
  }

  return result;
}

uint64_t sub_1D913E6B8(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6028, &qword_1D91BB170);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

unint64_t sub_1D913E730()
{
  result = qword_1ECABB118;
  if (!qword_1ECABB118)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB118);
  }

  return result;
}

uint64_t sub_1D913E784(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB128, &unk_1D91BB6B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

Swift::Double_optional __swiftcall DirectTimelineAlignment.playerTimestamp(for:)(Swift::Double a1)
{
  v1 = LOBYTE(a1);
  result.value = a1;
  result.is_nil = v1;
  return result;
}

void sub_1D913E850(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D8F5DEFC(v2);
  }

  v3 = *(v2 + 2);
  v22[0] = (v2 + 32);
  v22[1] = v3;
  v4 = sub_1D9179A2C();
  if (v4 >= v3)
  {
    if (v3 >= 2)
    {
      v8 = v2 + 56;
      v9 = -1;
      for (i = 1; i != v3; ++i)
      {
        v11 = v9;
        v12 = v8;
        do
        {
          v13 = *(v12 + 4);
          if (v13 >= *(v12 - 1))
          {
            break;
          }

          v14 = *(v12 + 5);
          v15 = v12[48];
          v16 = v12[49];
          v17 = *(v12 + 1);
          v18 = *(v12 - 8);
          *(v12 + 1) = *(v12 - 24);
          *(v12 + 2) = v18;
          *(v12 + 6) = *(v12 + 1);
          *(v12 - 24) = v17;
          *(v12 - 1) = v13;
          *v12 = v14;
          v12[8] = v15;
          v12[9] = v16;
          v12 -= 40;
        }

        while (!__CFADD__(v11++, 1));
        v8 += 40;
        --v9;
      }
    }
  }

  else
  {
    v5 = v4;
    v6 = (v3 >> 1);
    if (v3 >= 2)
    {
      v7 = sub_1D917867C();
      *(v7 + 16) = v6;
    }

    else
    {
      v7 = MEMORY[0x1E69E7CC0];
    }

    v20[0] = (v7 + 32);
    v20[1] = v6;
    sub_1D913F50C(v20, v21, v22, v5);
    *(v7 + 16) = 0;
  }

  *a1 = v2;
}

unint64_t sub_1D913E9B8(unint64_t result, uint64_t a2)
{
  if ((result & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else
  {
    v2 = *(a2 + 16);
    if ((v2 - result) >= 1 && v2 < result)
    {
      __break(1u);
    }

    return a2;
  }

  return result;
}

uint64_t EpisodeTimelineAlignment.Alignment.init(playerTimeRange:referenceTimeRange:hasMatchedBeginning:hasMatchedEnd:)@<X0>(uint64_t result@<X0>, char a2@<W1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  *a3 = a4;
  *(a3 + 8) = a5;
  *(a3 + 16) = a6;
  *(a3 + 24) = a7;
  *(a3 + 32) = result;
  *(a3 + 33) = a2;
  return result;
}

PodcastsFoundation::EpisodeTimelineAlignment __swiftcall EpisodeTimelineAlignment.init(alignments:initialPlayhead:)(Swift::OpaquePointer alignments, Swift::Double_optional initialPlayhead)
{
  *(v3 + 17) = 0;
  *v3 = alignments;
  *(v3 + 8) = *&initialPlayhead.is_nil;
  *(v3 + 16) = v2 & 1;
  result.initialPlayhead.value = initialPlayhead.value;
  result.initialPlayhead.is_nil = initialPlayhead.is_nil;
  result.alignments = alignments;
  return result;
}

Swift::Double_optional __swiftcall EpisodeTimelineAlignment.referenceTimestamp(for:)(Swift::Double a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0.0;
    v4 = (*v1 + 48);
    v5 = 1;
    do
    {
      v6 = *(v4 - 2);
      if (v6 + -0.5 <= a1 && *(v4 - 1) + 0.5 >= a1)
      {
        v8 = v6 - *v4;
        if ((v5 & 1) != 0 || fabs(v8) < COERCE_DOUBLE(*&v3 & 0x7FFFFFFFFFFFFFFFLL))
        {
          v5 = 0;
          v3 = v8;
        }

        else
        {
          v5 = 0;
        }
      }

      v4 += 5;
      --v2;
    }

    while (v2);
    v9 = a1 - v3;
    if (fabs(v3) <= 2.0)
    {
      LOBYTE(v9) = LOBYTE(a1);
    }

    if (v5)
    {
      v10 = LOBYTE(v3);
    }

    else
    {
      v10 = LOBYTE(v9);
    }
  }

  else
  {
    v10 = 0;
  }

  result.value = a1;
  result.is_nil = v10;
  return result;
}

Swift::Double_optional __swiftcall EpisodeTimelineAlignment.playerTimestamp(for:)(Swift::Double a1)
{
  v2 = *(*v1 + 16);
  if (v2)
  {
    v3 = 0.0;
    v4 = (*v1 + 56);
    v5 = 1;
    do
    {
      v6 = *(v4 - 1);
      if (v6 + -0.5 <= a1 && *v4 + 0.5 >= a1)
      {
        v8 = v6 - *(v4 - 3);
        if ((v5 & 1) != 0 || fabs(v8) < COERCE_DOUBLE(*&v3 & 0x7FFFFFFFFFFFFFFFLL))
        {
          v5 = 0;
          v3 = v8;
        }

        else
        {
          v5 = 0;
        }
      }

      v4 += 5;
      --v2;
    }

    while (v2);
    v9 = a1 - v3;
    if (fabs(v3) <= 2.0)
    {
      LOBYTE(v9) = LOBYTE(a1);
    }

    if (v5)
    {
      v10 = LOBYTE(v3);
    }

    else
    {
      v10 = LOBYTE(v9);
    }
  }

  else
  {
    v10 = 0;
  }

  result.value = a1;
  result.is_nil = v10;
  return result;
}

char *EpisodeTimelineAlignment.nonMatchingRangesInReference(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 2);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v24 = MEMORY[0x1E69E7CC0];
    if (v6[64] != 1 || *(v6 + 6) <= 0.0)
    {
      goto LABEL_7;
    }

    v10 = sub_1D9179FBC();
    KeyPath = v11;
    if (sub_1D9179F7C())
    {
      goto LABEL_18;
    }

    v13 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
    v4 = *(v13 + 2);
    v14 = *(v13 + 3);
    v3 = v4 + 1;
    if (v4 >= v14 >> 1)
    {
      goto LABEL_19;
    }

    while (1)
    {
      *(v13 + 2) = v3;
      v15 = &v13[32 * v4];
      *(v15 + 4) = 0;
      *(v15 + 5) = 0;
      *(v15 + 6) = v10;
      *(v15 + 7) = KeyPath;
      v24 = v13;
LABEL_7:
      v23 = v6;

      sub_1D913E850(&v23);
      v16 = v23;
      KeyPath = swift_getKeyPath();
      v3 = sub_1D913EE28(KeyPath, v16);

      v10 = &v24;
      sub_1D8E30AF4(v3);
      v14 = *(v6 + 2);
      if (v7 <= v14)
      {
        break;
      }

      __break(1u);
LABEL_18:
      __break(1u);
LABEL_19:
      v13 = sub_1D8ECE510((v14 > 1), v3, 1, v13);
    }

    if (v6[40 * v7 + 25] != 1)
    {
      return v24;
    }

    sub_1D9179FBC();
    if ((sub_1D9179F7C() & 1) == 0)
    {
      return v24;
    }

    v17 = sub_1D9179FBC();
    v19 = v18;
    if (sub_1D9179F7C())
    {
      __break(1u);
    }

    else
    {
      v6 = v24;
      if (swift_isUniquelyReferenced_nonNull_native())
      {
LABEL_12:
        v21 = *(v6 + 2);
        v20 = *(v6 + 3);
        if (v21 >= v20 >> 1)
        {
          v6 = sub_1D8ECE510((v20 > 1), v21 + 1, 1, v6);
        }

        *(v6 + 2) = v21 + 1;
        v22 = &v6[32 * v21];
        *(v22 + 4) = v17;
        *(v22 + 5) = v19;
        *(v22 + 6) = a1;
        *(v22 + 7) = a2;
        return v6;
      }
    }

    v6 = sub_1D8ECE510(0, *(v6 + 2) + 1, 1, v6);
    goto LABEL_12;
  }

  return result;
}

uint64_t sub_1D913EE28(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  v3 = v2 != 0;
  v47 = v2;
  if (v2 >= 2)
  {
    v4 = v2 - 1;
  }

  else
  {
    v4 = 0;
  }

  result = swift_bridgeObjectRetain_n();
  v6 = 0;
  v42 = v3;
  v45 = v4;
  v46 = MEMORY[0x1E69E7CC0];
  v7 = v3;
LABEL_5:
  if (v4 <= v6)
  {
    v8 = v6;
  }

  else
  {
    v8 = v4;
  }

  v43 = v8;
  v9 = 40 * v3;
  v10 = 40 * v6;
  while (v45 != v6)
  {
    if (v43 == v6)
    {
      goto LABEL_32;
    }

    if (v47 == v7)
    {
      break;
    }

    if (v3 < v42 || v7 >= v47)
    {
      goto LABEL_33;
    }

    v11 = *(a2 + v10 + 32);
    v12 = *(a2 + v10 + 40);
    v14 = *(a2 + v10 + 48);
    v13 = *(a2 + v10 + 56);
    v15 = *(a2 + v10 + 64);
    v16 = *(a2 + v10 + 65);
    v17 = *(a2 + v9 + 32);
    v18 = *(a2 + v9 + 40);
    v19 = *(a2 + v9 + 48);
    v20 = *(a2 + v9 + 56);
    ++v7;
    v21 = *(a2 + v9 + 65);
    v22 = *(a2 + v9 + 64);
    swift_getAtKeyPath();
    result = swift_getAtKeyPath();
    v9 += 40;
    v10 += 40;
    ++v6;
    if (v50 < v48)
    {
      v23 = v46;
      result = swift_isUniquelyReferenced_nonNull_native();
      if ((result & 1) == 0)
      {
        result = sub_1D8E319FC(0, *(v46 + 16) + 1, 1);
        v23 = v46;
      }

      v24 = v20;
      v26 = *(v23 + 16);
      v25 = *(v23 + 24);
      if (v26 >= v25 >> 1)
      {
        result = sub_1D8E319FC((v25 > 1), v26 + 1, 1);
        v24 = v20;
        v23 = v46;
      }

      *(v23 + 16) = v26 + 1;
      v46 = v23;
      v27 = v23 + 80 * v26;
      *(v27 + 32) = v11;
      *(v27 + 40) = v12;
      *(v27 + 48) = v14;
      *(v27 + 56) = v13;
      *(v27 + 64) = v15;
      *(v27 + 65) = v16;
      *(v27 + 66) = v11;
      *(v27 + 70) = WORD2(v11);
      *(v27 + 72) = v17;
      *(v27 + 80) = v18;
      *(v27 + 88) = v19;
      *(v27 + 96) = v24;
      *(v27 + 104) = v22;
      *(v27 + 105) = v21;
      v3 = v7;
      v4 = v45;
      goto LABEL_5;
    }
  }

  swift_unknownObjectRelease_n();
  v28 = v46;
  v29 = *(v46 + 16);
  if (v29)
  {
    v49 = MEMORY[0x1E69E7CC0];
    result = sub_1D8E319BC(0, v29, 0);
    v30 = 0;
    v31 = v49;
    v32 = v46 + 64;
    while (v30 < *(v28 + 16))
    {
      swift_getAtKeyPath();
      v33 = sub_1D9179FBC();
      v35 = v34;
      swift_getAtKeyPath();
      v36 = sub_1D9179FBC();
      v38 = v37;
      result = sub_1D9179F7C();
      if (result)
      {
        goto LABEL_31;
      }

      v40 = *(v49 + 16);
      v39 = *(v49 + 24);
      if (v40 >= v39 >> 1)
      {
        result = sub_1D8E319BC((v39 > 1), v40 + 1, 1);
      }

      ++v30;
      *(v49 + 16) = v40 + 1;
      v41 = (v49 + 32 * v40);
      v41[4] = v33;
      v41[5] = v35;
      v41[6] = v36;
      v41[7] = v38;
      v32 += 80;
      v28 = v46;
      if (v29 == v30)
      {

        return v31;
      }
    }

    __break(1u);
LABEL_31:
    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
    return result;
  }

  return MEMORY[0x1E69E7CC0];
}

char *EpisodeTimelineAlignment.nonMatchingRangesInPlayer(with:)(uint64_t a1, uint64_t a2)
{
  v6 = *v2;
  v7 = *(*v2 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v7)
  {
    v10 = *(v2 + 8);
    v11 = *(v2 + 16);
    v37 = MEMORY[0x1E69E7CC0];
    v12 = *(v6 + 32);
    if (v12 <= 0.0)
    {
      goto LABEL_14;
    }

    if (*(v6 + 64) == 1)
    {
      v13 = sub_1D9179FBC();
      v15 = v14;
      if (sub_1D9179F7C())
      {
        goto LABEL_25;
      }

      v16 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v4 = *(v16 + 2);
      v17 = *(v16 + 3);
      v3 = v4 + 1;
      if (v4 >= v17 >> 1)
      {
        goto LABEL_26;
      }

      while (1)
      {
        *(v16 + 2) = v3;
        v18 = &v16[32 * v4];
        *(v18 + 4) = 0;
        *(v18 + 5) = 0;
        *(v18 + 6) = v13;
        *(v18 + 7) = v15;
LABEL_13:
        v37 = v16;
LABEL_14:
        KeyPath = swift_getKeyPath();
        v15 = sub_1D913EE28(KeyPath, v6);

        v13 = &v37;
        sub_1D8E30AF4(v15);
        v17 = *(v6 + 16);
        if (v7 <= v17)
        {
          break;
        }

        __break(1u);
LABEL_25:
        __break(1u);
LABEL_26:
        v16 = sub_1D8ECE510((v17 > 1), v3, 1, v16);
      }

      if (*(v6 + 32 + 40 * v7 - 7) != 1)
      {
        return v37;
      }

      sub_1D9179FBC();
      if ((sub_1D9179F7C() & 1) == 0)
      {
        return v37;
      }

      v28 = sub_1D9179FBC();
      v30 = v29;
      if (sub_1D9179F7C())
      {
        __break(1u);
      }

      else
      {
        v15 = v37;
        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_19:
          v32 = *(v15 + 16);
          v31 = *(v15 + 24);
          if (v32 >= v31 >> 1)
          {
            v15 = sub_1D8ECE510((v31 > 1), v32 + 1, 1, v15);
          }

          *(v15 + 16) = v32 + 1;
          v33 = (v15 + 32 * v32);
          v33[4] = v28;
          v33[5] = v30;
          v33[6] = a1;
          v33[7] = a2;
          return v15;
        }
      }

      v15 = sub_1D8ECE510(0, *(v15 + 16) + 1, 1, v15);
      goto LABEL_19;
    }

    if (v10 > v12)
    {
      v11 = 1;
    }

    if (v11)
    {
      goto LABEL_14;
    }

    v19 = sub_1D9179FBC();
    v21 = v20;
    v3 = sub_1D9179FBC();
    v4 = v22;
    if (sub_1D9179F7C())
    {
      __break(1u);
    }

    else
    {
      v16 = sub_1D8ECE510(0, 1, 1, MEMORY[0x1E69E7CC0]);
      v23 = *(v16 + 2);
      v25 = *(v16 + 3);
      v24 = v23 + 1;
      if (v23 < v25 >> 1)
      {
LABEL_12:
        *(v16 + 2) = v24;
        v26 = &v16[32 * v23];
        *(v26 + 4) = v19;
        *(v26 + 5) = v21;
        *(v26 + 6) = v3;
        *(v26 + 7) = v4;
        goto LABEL_13;
      }
    }

    v35 = v23;
    v36 = v24;
    v34 = sub_1D8ECE510((v25 > 1), v24, 1, v16);
    v23 = v35;
    v24 = v36;
    v16 = v34;
    goto LABEL_12;
  }

  return result;
}

void sub_1D913F50C(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3[1];
  if (v5 < 1)
  {
    v7 = MEMORY[0x1E69E7CC0];
LABEL_88:
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_128;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_122:
      v7 = sub_1D8F5DE20(v7);
    }

    v89 = v7 + 16;
    v90 = *(v7 + 2);
    if (v90 >= 2)
    {
      while (*a3)
      {
        v91 = &v7[16 * v90];
        v92 = *v91;
        v93 = &v89[2 * v90];
        v94 = v93[1];
        sub_1D913FAE4((*a3 + 40 * *v91), (*a3 + 40 * *v93), *a3 + 40 * v94, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v94 < v92)
        {
          goto LABEL_114;
        }

        if (v90 - 2 >= *v89)
        {
          goto LABEL_115;
        }

        *v91 = v92;
        *(v91 + 1) = v94;
        v95 = *v89 - v90;
        if (*v89 < v90)
        {
          goto LABEL_116;
        }

        v90 = *v89 - 1;
        memmove(v93, v93 + 2, 16 * v95);
        *v89 = v90;
        if (v90 <= 1)
        {
          goto LABEL_97;
        }
      }

      goto LABEL_126;
    }

LABEL_97:

    return;
  }

  v6 = 0;
  v7 = MEMORY[0x1E69E7CC0];
  v96 = a4;
  while (1)
  {
    v8 = v6++;
    if (v6 < v5)
    {
      v9 = *(*a3 + 40 * v6 + 16);
      v10 = 40 * v8;
      v11 = *a3 + 40 * v8;
      v12 = *(v11 + 16);
      v13 = v8 + 2;
      v14 = (v11 + 56);
      while (v5 != v13)
      {
        v15 = *v14;
        v16 = v14[5];
        v14 += 5;
        ++v13;
        if (v9 < v12 == v16 >= v15)
        {
          v6 = v13 - 1;
          if (v9 >= v12)
          {
            goto LABEL_20;
          }

          goto LABEL_11;
        }
      }

      v6 = v5;
      if (v9 >= v12)
      {
        goto LABEL_20;
      }

LABEL_11:
      if (v6 < v8)
      {
        goto LABEL_119;
      }

      if (v8 < v6)
      {
        v17 = 40 * v6;
        v18 = v6;
        v19 = v8;
        do
        {
          if (v19 != --v18)
          {
            v28 = *a3;
            if (!*a3)
            {
              goto LABEL_125;
            }

            v20 = (v28 + v10);
            v21 = *(v28 + v10 + 32);
            v22 = v28 + v17;
            v23 = *(v20 + 33);
            v24 = *v20;
            v25 = v20[1];
            v26 = *(v22 - 8);
            v27 = *(v22 - 24);
            *v20 = *(v22 - 40);
            v20[1] = v27;
            *(v20 + 4) = v26;
            *(v22 - 40) = v24;
            *(v22 - 24) = v25;
            *(v22 - 8) = v21;
            *(v22 - 7) = v23;
          }

          ++v19;
          v17 -= 40;
          v10 += 40;
        }

        while (v19 < v18);
        v5 = a3[1];
      }
    }

LABEL_20:
    if (v6 < v5)
    {
      if (__OFSUB__(v6, v8))
      {
        goto LABEL_118;
      }

      if (v6 - v8 < a4)
      {
        if (__OFADD__(v8, a4))
        {
          goto LABEL_120;
        }

        if (v8 + a4 < v5)
        {
          v5 = v8 + a4;
        }

        if (v5 < v8)
        {
LABEL_121:
          __break(1u);
          goto LABEL_122;
        }

        if (v6 != v5)
        {
          break;
        }
      }
    }

LABEL_37:
    if (v6 < v8)
    {
      goto LABEL_117;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v7 = sub_1D8ECC734(0, *(v7 + 2) + 1, 1, v7);
    }

    v42 = *(v7 + 2);
    v41 = *(v7 + 3);
    v43 = v42 + 1;
    if (v42 >= v41 >> 1)
    {
      v7 = sub_1D8ECC734((v41 > 1), v42 + 1, 1, v7);
    }

    *(v7 + 2) = v43;
    v44 = v7 + 32;
    v45 = &v7[16 * v42 + 32];
    *v45 = v8;
    *(v45 + 1) = v6;
    v98 = *a1;
    if (!*a1)
    {
      goto LABEL_127;
    }

    if (v42)
    {
      while (1)
      {
        v46 = v43 - 1;
        if (v43 >= 4)
        {
          break;
        }

        if (v43 == 3)
        {
          v47 = *(v7 + 4);
          v48 = *(v7 + 5);
          v57 = __OFSUB__(v48, v47);
          v49 = v48 - v47;
          v50 = v57;
LABEL_57:
          if (v50)
          {
            goto LABEL_104;
          }

          v63 = &v7[16 * v43];
          v65 = *v63;
          v64 = *(v63 + 1);
          v66 = __OFSUB__(v64, v65);
          v67 = v64 - v65;
          v68 = v66;
          if (v66)
          {
            goto LABEL_106;
          }

          v69 = &v44[16 * v46];
          v71 = *v69;
          v70 = *(v69 + 1);
          v57 = __OFSUB__(v70, v71);
          v72 = v70 - v71;
          if (v57)
          {
            goto LABEL_109;
          }

          if (__OFADD__(v67, v72))
          {
            goto LABEL_111;
          }

          if (v67 + v72 >= v49)
          {
            if (v49 < v72)
            {
              v46 = v43 - 2;
            }

            goto LABEL_79;
          }

          goto LABEL_72;
        }

        if (v43 < 2)
        {
          goto LABEL_112;
        }

        v73 = &v7[16 * v43];
        v75 = *v73;
        v74 = *(v73 + 1);
        v57 = __OFSUB__(v74, v75);
        v67 = v74 - v75;
        v68 = v57;
LABEL_72:
        if (v68)
        {
          goto LABEL_108;
        }

        v76 = &v44[16 * v46];
        v78 = *v76;
        v77 = *(v76 + 1);
        v57 = __OFSUB__(v77, v78);
        v79 = v77 - v78;
        if (v57)
        {
          goto LABEL_110;
        }

        if (v79 < v67)
        {
          goto LABEL_3;
        }

LABEL_79:
        if (v46 - 1 >= v43)
        {
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
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
          goto LABEL_121;
        }

        if (!*a3)
        {
          goto LABEL_124;
        }

        v84 = &v44[16 * v46 - 16];
        v85 = *v84;
        v86 = &v44[16 * v46];
        v87 = *(v86 + 1);
        sub_1D913FAE4((*a3 + 40 * *v84), (*a3 + 40 * *v86), *a3 + 40 * v87, v98);
        if (v4)
        {
          goto LABEL_97;
        }

        if (v87 < v85)
        {
          goto LABEL_99;
        }

        if (v46 > *(v7 + 2))
        {
          goto LABEL_100;
        }

        *v84 = v85;
        *(v84 + 1) = v87;
        v88 = *(v7 + 2);
        if (v46 >= v88)
        {
          goto LABEL_101;
        }

        v43 = v88 - 1;
        memmove(&v44[16 * v46], v86 + 16, 16 * (v88 - 1 - v46));
        *(v7 + 2) = v88 - 1;
        if (v88 <= 2)
        {
          goto LABEL_3;
        }
      }

      v51 = &v44[16 * v43];
      v52 = *(v51 - 8);
      v53 = *(v51 - 7);
      v57 = __OFSUB__(v53, v52);
      v54 = v53 - v52;
      if (v57)
      {
        goto LABEL_102;
      }

      v56 = *(v51 - 6);
      v55 = *(v51 - 5);
      v57 = __OFSUB__(v55, v56);
      v49 = v55 - v56;
      v50 = v57;
      if (v57)
      {
        goto LABEL_103;
      }

      v58 = &v7[16 * v43];
      v60 = *v58;
      v59 = *(v58 + 1);
      v57 = __OFSUB__(v59, v60);
      v61 = v59 - v60;
      if (v57)
      {
        goto LABEL_105;
      }

      v57 = __OFADD__(v49, v61);
      v62 = v49 + v61;
      if (v57)
      {
        goto LABEL_107;
      }

      if (v62 >= v54)
      {
        v80 = &v44[16 * v46];
        v82 = *v80;
        v81 = *(v80 + 1);
        v57 = __OFSUB__(v81, v82);
        v83 = v81 - v82;
        if (v57)
        {
          goto LABEL_113;
        }

        if (v49 < v83)
        {
          v46 = v43 - 2;
        }

        goto LABEL_79;
      }

      goto LABEL_57;
    }

LABEL_3:
    v5 = a3[1];
    a4 = v96;
    if (v6 >= v5)
    {
      goto LABEL_88;
    }
  }

  v29 = *a3;
  v30 = *a3 + 40 * v6 - 40;
  v31 = v8 - v6;
LABEL_30:
  v32 = v31;
  v33 = v30;
  while (1)
  {
    v34 = *(v33 + 56);
    if (v34 >= *(v33 + 16))
    {
LABEL_29:
      ++v6;
      v30 += 40;
      --v31;
      if (v6 != v5)
      {
        goto LABEL_30;
      }

      v6 = v5;
      goto LABEL_37;
    }

    if (!v29)
    {
      break;
    }

    v35 = *(v33 + 40);
    v36 = *(v33 + 16);
    *(v33 + 40) = *v33;
    v37 = *(v33 + 64);
    v38 = *(v33 + 72);
    v39 = *(v33 + 73);
    *(v33 + 56) = v36;
    *(v33 + 72) = *(v33 + 32);
    *v33 = v35;
    *(v33 + 16) = v34;
    *(v33 + 24) = v37;
    *(v33 + 32) = v38;
    *(v33 + 33) = v39;
    v33 -= 40;
    if (__CFADD__(v32++, 1))
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_124:
  __break(1u);
LABEL_125:
  __break(1u);
LABEL_126:
  __break(1u);
LABEL_127:
  __break(1u);
LABEL_128:
  __break(1u);
}

uint64_t sub_1D913FAE4(double *__dst, double *__src, unint64_t a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 40;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 40;
  if (v9 < v11)
  {
    v12 = 5 * v9;
    if (a4 != __dst || &__dst[v12] <= a4)
    {
      memmove(a4, __dst, v12 * 8);
    }

    v13 = &v4[v12];
    if (v8 < 40)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_31;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      if (v6[2] < v4[2])
      {
        break;
      }

      v14 = v4;
      v15 = v7 == v4;
      v4 += 5;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 5;
      if (v4 >= v13)
      {
        goto LABEL_6;
      }
    }

    v14 = v6;
    v15 = v7 == v6;
    v6 += 5;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v16 = *v14;
    v17 = *(v14 + 1);
    v7[4] = v14[4];
    *v7 = v16;
    *(v7 + 1) = v17;
    goto LABEL_9;
  }

  v18 = 5 * v11;
  if (a4 != __src || &__src[v18] <= a4)
  {
    memmove(a4, __src, 40 * v11);
  }

  v13 = &v4[v18];
  if (v10 >= 40 && v6 > v7)
  {
LABEL_20:
    v5 -= 40;
    do
    {
      v19 = (v5 + 40);
      if (*(v13 - 3) < *(v6 - 3))
      {
        v23 = v6 - 5;
        if (v19 != v6)
        {
          v24 = *v23;
          v25 = *(v6 - 3);
          *(v5 + 32) = *(v6 - 1);
          *v5 = v24;
          *(v5 + 16) = v25;
        }

        if (v13 <= v4 || (v6 -= 5, v23 <= v7))
        {
          v6 = v23;
          goto LABEL_31;
        }

        goto LABEL_20;
      }

      v20 = v13 - 5;
      if (v19 != v13)
      {
        v21 = *v20;
        v22 = *(v13 - 3);
        *(v5 + 32) = *(v13 - 1);
        *v5 = v21;
        *(v5 + 16) = v22;
      }

      v5 -= 40;
      v13 -= 5;
    }

    while (v20 > v4);
    v13 = v20;
  }

LABEL_31:
  v26 = 5 * ((v13 - v4) / 40);
  if (v6 != v4 || v6 >= &v4[v26])
  {
    memmove(v6, v4, v26 * 8);
  }

  return 1;
}

BOOL _s18PodcastsFoundation24EpisodeTimelineAlignmentV0E0V2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = vmovn_s32(vmvnq_s8(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(*(a1 + 16), *(a2 + 16)))));
  v2.i16[0] = vmaxv_u16(v2);
  return ((v2.i32[0] | *(a1 + 32) ^ *(a2 + 32) | *(a2 + 33) ^ *(a1 + 33)) & 1) == 0;
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1D913FD74(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 18))
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

uint64_t sub_1D913FDBC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy34_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_1D913FE20(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 34))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 32);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_1D913FE74(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 34) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 34) = 0;
    }

    if (a2)
    {
      *(result + 32) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_1D913FECC(id a1, __int128 *a2, char a3)
{
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = (&v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = a2[1];
  v23 = *a2;
  v24 = v11;
  v25 = a2[2];
  v12 = *(v3 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_workQueue);
  *v10 = v12;
  (*(v8 + 104))(v10, *MEMORY[0x1E69E8020], v7);
  v13 = v12;
  v14 = sub_1D9177F4C();
  (*(v8 + 8))(v10, v7);
  if (v14)
  {
    v10 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_bufferedSignatures;
    swift_beginAccess();
    v14 = *(v10 + v3);
    a1 = a1;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v10 + v3) = v14;
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_3;
    }
  }

  else
  {
    __break(1u);
  }

  v14 = sub_1D8ECE284(0, *(v14 + 16) + 1, 1, v14);
  *(v10 + v3) = v14;
LABEL_3:
  v17 = *(v14 + 16);
  v16 = *(v14 + 24);
  if (v17 >= v16 >> 1)
  {
    v14 = sub_1D8ECE284((v16 > 1), v17 + 1, 1, v14);
  }

  *(v14 + 16) = v17 + 1;
  v18 = v14 + (v17 << 6);
  *(v18 + 32) = a1;
  v19 = v23;
  v20 = v24;
  *(v18 + 72) = v25;
  *(v18 + 56) = v20;
  *(v18 + 40) = v19;
  *(v18 + 88) = a3;
  *(v10 + v3) = v14;
  return swift_endAccess();
}

uint64_t sub_1D91400C0()
{

  sub_1D8D08A50(v0 + 48, qword_1ECAB6CD0, &unk_1D9195040);

  return swift_deallocClassInstance();
}

uint64_t sub_1D914014C()
{
  swift_beginAccess();
  if (*(v0 + 72))
  {
    sub_1D8CFD9D8(v0 + 48, &v2);
    __swift_project_boxed_opaque_existential_1(&v2, *(&v3 + 1));
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v2);
  }

  v4 = 0;
  v2 = 0u;
  v3 = 0u;
  swift_beginAccess();
  sub_1D8F26884(&v2, v0 + 48);
  return swift_endAccess();
}

uint64_t sub_1D9140200(void *a1)
{
  v3 = *v1;
  sub_1D8CFD9D8(a1, v5);
  swift_beginAccess();
  sub_1D8F26884(v5, v3 + 48);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D91777FC();
  return sub_1D917782C();
}

uint64_t sub_1D9140288(uint64_t a1)
{
  *v3 = *a1;
  *&v3[8] = *(a1 + 8);
  *&v3[24] = *(a1 + 24);
  *&v3[40] = *(a1 + 40);
  v3[56] = *(a1 + 56);
  v1 = *a1;
  sub_1D917790C();
  v4[0] = *v3;
  v4[1] = *&v3[16];
  v5[0] = *&v3[32];
  *(v5 + 9) = *&v3[41];
  sub_1D8D08A50(v4, &qword_1ECABB220, &qword_1D91BBAC0);
  return sub_1D91777FC();
}

uint64_t sub_1D914031C(void *a1)
{
  v2 = *v1;
  sub_1D91778FC();
  v5 = 0;
  memset(v4, 0, sizeof(v4));
  swift_beginAccess();
  sub_1D8F26884(v4, v2 + 48);
  return swift_endAccess();
}

uint64_t sub_1D91403B0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v27 = a2;
  v28 = a3;
  v26 = a1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB228, &qword_1D91BBAC8);
  v5 = *(v4 - 8);
  v24 = v4;
  v25 = v5;
  MEMORY[0x1EEE9AC00](v4);
  v23 = &v20 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB230, &qword_1D91BBAD0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB238, &qword_1D91BBAD8);
  v21 = *(v11 - 8);
  v22 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v20 - v12;
  v29 = v3[4];

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB240, &unk_1D91BBAE0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5FA0, &qword_1D9191F18);
  sub_1D8CF48EC(&qword_1ECABB250, &unk_1ECABB240, &unk_1D91BBAE0, MEMORY[0x1E695BFB0]);
  sub_1D9177B2C();

  swift_allocObject();
  swift_weakInit();
  sub_1D8CF48EC(&qword_1ECABB258, &qword_1ECABB230, &qword_1D91BBAD0, MEMORY[0x1E695BC80]);

  sub_1D9177B3C();

  (*(v8 + 8))(v10, v7);

  v29 = v3[3];
  v14 = v29;
  type metadata accessor for ShazamMatcher.ThrottledSubscriber(0);
  sub_1D9141E3C(&qword_1ECABB260, 255, type metadata accessor for ShazamMatcher.ThrottledSubscriber, &unk_1D91BB978);
  v15 = v22;
  sub_1D91775EC();
  (*(v21 + 8))(v13, v15);
  v29 = v3[5];
  *(swift_allocObject() + 16) = v14;

  v16 = v14;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB268, &qword_1D91BBAF0);
  sub_1D8CF48EC(&qword_1ECABB270, &qword_1ECABB268, &qword_1D91BBAF0, MEMORY[0x1E695BF88]);
  v17 = v23;
  sub_1D9177B3C();

  v18 = v24;
  sub_1D91775EC();
  return (*(v25 + 8))(v17, v18);
}

uint64_t sub_1D9140880@<X0>(_OWORD *a1@<X0>, _OWORD *a2@<X8>)
{
  v2 = a1[1];
  v7[0] = *a1;
  v7[1] = v2;
  v8[0] = a1[2];
  v3 = v8[0];
  *(v8 + 9) = *(a1 + 41);
  v4 = *(v8 + 9);
  *a2 = v7[0];
  a2[1] = v2;
  a2[2] = v3;
  *(a2 + 41) = v4;
  return sub_1D8D088B4(v7, &v6, &qword_1ECABB220, &qword_1D91BBAC0);
}

uint64_t sub_1D91408DC(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v2 = result;
    swift_beginAccess();
    if (*(v2 + 72))
    {
      sub_1D8CFD9D8(v2 + 48, &v3);
      __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
      sub_1D91777BC();
      __swift_destroy_boxed_opaque_existential_1Tm(&v3);
    }

    v5 = 0;
    v3 = 0u;
    v4 = 0u;
    swift_beginAccess();
    sub_1D8F26884(&v3, v2 + 48);
    swift_endAccess();
  }

  return result;
}

uint64_t sub_1D91409BC(uint64_t a1)
{
  *(a1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_isCancelled) = 1;
  v1 = a1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D8CFD9D8(v1, &v3);
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v3);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_1D8F26884(&v3, v1);
  return swift_endAccess();
}

uint64_t sub_1D9140A88()
{
  *(v0 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_isCancelled) = 1;
  v1 = v0 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription;
  swift_beginAccess();
  if (*(v1 + 24))
  {
    sub_1D8CFD9D8(v1, &v3);
    __swift_project_boxed_opaque_existential_1(&v3, *(&v4 + 1));
    sub_1D91777BC();
    __swift_destroy_boxed_opaque_existential_1Tm(&v3);
  }

  v5 = 0;
  v3 = 0u;
  v4 = 0u;
  swift_beginAccess();
  sub_1D8F26884(&v3, v1);
  return swift_endAccess();
}

uint64_t type metadata accessor for ShazamMatcher.ThrottledSubscriber(uint64_t a1)
{
  result = qword_1ECABB198;
  if (!qword_1ECABB198)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9140CF8(uint64_t a1)
{
  result = sub_1D917744C();
  if (v2 <= 0x3F)
  {
    return swift_updateClassMetadata2();
  }

  return result;
}

void sub_1D9140DDC()
{
  v1 = v0;
  v2 = sub_1D9177F1C();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = (&v40 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_workQueue);
  *v6 = v7;
  (*(v3 + 104))(v6, *MEMORY[0x1E69E8020], v2, v4);
  v8 = v7;
  LOBYTE(v7) = sub_1D9177F4C();
  (*(v3 + 8))(v6, v2);
  if (v7)
  {
    v9 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_bufferedSignatures;
    swift_beginAccess();
    v10 = *(v1 + v9);
    if (*(v10 + 16))
    {
      v11 = *(v10 + 48);
      v49 = *(v10 + 32);
      v50 = v11;
      v51[0] = *(v10 + 64);
      *(v51 + 9) = *(v10 + 73);
      sub_1D8D088B4(&v49, &v52, &qword_1ECAB5FA0, &qword_1D9191F18);
      sub_1D8F90884(0, 1);
      swift_endAccess();
      v52 = v49;
      v53 = v50;
      v54[0] = v51[0];
      *(v54 + 9) = *(v51 + 9);
    }

    else
    {
      swift_endAccess();
      sub_1D917791C();
    }

    v49 = v52;
    v50 = v53;
    v51[0] = v54[0];
    *(v51 + 9) = *(v54 + 9);
    v12 = v52;
    if (v52)
    {
      v13 = *(&v49 + 1);
      v14 = *(&v50 + 1);
      v15 = v50;
      v17 = *(&v51[0] + 1);
      v16 = *&v51[0];
      v18 = *&v51[1];
      v19 = BYTE8(v51[1]);
      v20 = v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput;
      if (*(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput) && (v55 = *(&v49 + 1), v56 = v50, v57 = v51[0], v58 = *&v51[1], v21 = *(v20 + 24), v59 = *(v20 + 8), v60 = v21, v61 = *(v20 + 40), v41 = v50, v22 = *(&v49 + 1), v23 = *&v51[1], v24 = *(&v51[0] + 1), v25 = *&v51[0], v26 = v49, v27 = *(&v50 + 1), v28 = v1, v29 = BYTE8(v51[1]), v30 = sub_1D9178C4C(), v19 = v29, v1 = v28, v14 = v27, v12 = v26, v16 = v25, v17 = v24, v18 = v23, v13 = v22, v15 = v41, (v30 & 1) != 0))
      {
        sub_1D914135C();
      }

      else if ((*(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_isCancelled) & 1) == 0)
      {
        v31 = *(v20 + 16);
        v43[0] = *v20;
        v43[1] = v31;
        v44[0] = *(v20 + 32);
        *(v44 + 9) = *(v20 + 41);
        *v20 = v12;
        *(v20 + 8) = v13;
        *(v20 + 16) = v15;
        *(v20 + 24) = v14;
        *(v20 + 32) = v16;
        *(v20 + 40) = v17;
        *(v20 + 48) = v18;
        *(v20 + 56) = v19;
        *(v46 + 9) = *(v51 + 9);
        v45[1] = v50;
        v46[0] = v51[0];
        v45[0] = v49;
        v40 = v14;
        v41 = v16;
        sub_1D8D088B4(v45, v47, &qword_1ECAB5FA0, &qword_1D9191F18);
        sub_1D8D08A50(v43, &qword_1ECABB220, &qword_1D91BBAC0);
        v47[0] = v49;
        v47[1] = v50;
        v48[0] = v51[0];
        *(v48 + 9) = *(v51 + 9);
        sub_1D8D088B4(v47, &v42, &qword_1ECAB5FA0, &qword_1D9191F18);
        v32 = sub_1D917741C();
        v33 = sub_1D9178D1C();
        sub_1D8D08A50(&v49, &qword_1ECABB220, &qword_1D91BBAC0);
        if (os_log_type_enabled(v32, v33))
        {
          v34 = swift_slowAlloc();
          *v34 = 134218240;
          sub_1D917910C();
          *(v34 + 4) = v35;
          *(v34 + 12) = 2048;
          sub_1D917910C();
          *(v34 + 14) = v36;
          _os_log_impl(&dword_1D8CEC000, v32, v33, "Performing match with signature for time range: (start: %f, duration: %f)", v34, 0x16u);
          MEMORY[0x1DA72CB90](v34, -1, -1);
        }

        [*(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_session) matchSignature_];
      }

      sub_1D8D08A50(&v49, &qword_1ECABB220, &qword_1D91BBAC0);
    }

    else
    {
      v37 = sub_1D917741C();
      v38 = sub_1D9178CFC();
      if (os_log_type_enabled(v37, v38))
      {
        v39 = swift_slowAlloc();
        *v39 = 0;
        _os_log_impl(&dword_1D8CEC000, v37, v38, "Unexpectedly encountered no signature for matching", v39, 2u);
        MEMORY[0x1DA72CB90](v39, -1, -1);
      }

      sub_1D914135C();
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D91412C4(uint64_t a1)
{
  v2 = v1;
  if (a1)
  {
    *&v6[0] = a1;
    sub_1D91778AC();
  }

  else
  {
    v3 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_completion);
    *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_completion) = 0;
    sub_1D9138588(v3);
  }

  v7 = 0;
  memset(v6, 0, sizeof(v6));
  v4 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription;
  swift_beginAccess();
  sub_1D8F26884(v6, v2 + v4);
  return swift_endAccess();
}

void sub_1D914135C()
{
  v1 = sub_1D9177E0C();
  v24 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v3 = &v22 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  v23 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177F1C();
  v8 = *(v7 - 8);
  v9 = MEMORY[0x1EEE9AC00](v7);
  v11 = (&v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = *&v0[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_workQueue];
  *v11 = v12;
  (*(v8 + 104))(v11, *MEMORY[0x1E69E8020], v7, v9);
  v12;
  v13 = sub_1D9177F4C();
  (*(v8 + 8))(v11, v7);
  if (v13)
  {
    v14 = *&v0[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_completion];
    if (v14 == 1 || (v15 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_bufferedSignatures, swift_beginAccess(), *(*&v0[v15] + 16)))
    {
      v16 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription;
      swift_beginAccess();
      sub_1D8D088B4(&v0[v16], &v30, qword_1ECAB6CD0, &unk_1D9195040);
      if (v31)
      {
        sub_1D8D6BCE0(&v30, aBlock);
        __swift_project_boxed_opaque_existential_1(aBlock, v27);
        sub_1D917782C();
        __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      }

      else
      {
        sub_1D8D08A50(&v30, qword_1ECAB6CD0, &unk_1D9195040);
        v17 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_bufferedSignatures;
        swift_beginAccess();
        if (*(*&v0[v17] + 16))
        {
          v18 = swift_allocObject();
          *(v18 + 16) = v0;
          v28 = sub_1D9142158;
          v29 = v18;
          aBlock[0] = MEMORY[0x1E69E9820];
          aBlock[1] = 1107296256;
          aBlock[2] = sub_1D8CF5F60;
          v27 = &block_descriptor_16_2;
          v19 = _Block_copy(aBlock);
          v20 = v0;
          sub_1D9177E4C();
          v25 = MEMORY[0x1E69E7CC0];
          sub_1D9141E3C(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
          sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
          sub_1D91792CC();
          MEMORY[0x1DA72A400](0, v6, v3, v19);
          _Block_release(v19);
          (*(v24 + 8))(v3, v1);
          (*(v23 + 8))(v6, v4);
        }
      }
    }

    else
    {
      aBlock[0] = v14;
      v21 = v14;
      sub_1D91778AC();
      sub_1D9138588(v14);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D9141830(void *a1)
{
  v3 = *v1;
  sub_1D8CFD9D8(a1, v6);
  v4 = OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription;
  swift_beginAccess();
  sub_1D8F26884(v6, v3 + v4);
  swift_endAccess();
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  return sub_1D917782C();
}

void sub_1D91419A8(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    sub_1D914135C();
  }
}

uint64_t sub_1D9141B34(uint64_t (*a1)(void))
{
  result = a1();
  if (result)
  {
    return _swift_stdlib_bridgeErrorToNSError();
  }

  return result;
}

uint64_t sub_1D9141B64()
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v12 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9177E9C();
  v5 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v7 = v12 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[1] = *&v0[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_workQueue];
  v8 = swift_allocObject();
  *(v8 + 16) = v0;
  aBlock[4] = sub_1D9142988;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_96;
  v9 = _Block_copy(aBlock);
  v10 = v0;
  sub_1D9177E4C();
  v14 = MEMORY[0x1E69E7CC0];
  sub_1D9141E3C(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v9);
  _Block_release(v9);
  (*(v2 + 8))(v4, v1);
  (*(v5 + 8))(v7, v13);

  return sub_1D91777EC();
}

uint64_t sub_1D9141E3C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    a3(a2);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D9141E84(uint64_t a1, char *a2, void *a3)
{
  v4 = v3;
  v27 = a2;
  v28 = a3;
  v7 = sub_1D917744C();
  v26 = *(v7 - 8);
  v8 = v26;
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0u;
  memset(v32, 0, sizeof(v32));
  v30 = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECABB240, &unk_1D91BBAE0);
  swift_allocObject();
  *(v3 + 32) = sub_1D917795C();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB268, &qword_1D91BBAF0);
  swift_allocObject();
  *(v3 + 40) = sub_1D91778DC();
  *(v3 + 48) = 0u;
  *(v3 + 64) = 0u;
  *(v3 + 80) = 0;
  v11 = [objc_allocWithZone(MEMORY[0x1E697B7C0]) initWithCatalog_];
  *(v4 + 16) = v11;
  v12 = *(v8 + 16);
  v25 = v10;
  v12(v10, a2, v7);
  v14 = *(v4 + 32);
  v13 = *(v4 + 40);
  v15 = type metadata accessor for ShazamMatcher.ThrottledSubscriber(0);
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_bufferedSignatures] = MEMORY[0x1E69E7CC0];
  v17 = &v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput];
  *v17 = 0u;
  v17[1] = 0u;
  v17[2] = 0u;
  *(v17 + 41) = 0u;
  v18 = &v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_subscription];
  *v18 = 0u;
  *(v18 + 1) = 0u;
  *(v18 + 4) = 0;
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_completion] = 1;
  v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_isCancelled] = 0;
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_session] = v11;
  v12(&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_logger], v10, v7);
  v19 = v28;
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_workQueue] = v28;
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_inputSubject] = v14;
  *&v16[OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_outputSubject] = v13;
  v29.receiver = v16;
  v29.super_class = v15;
  v20 = v11;
  v21 = v19;

  v22 = objc_msgSendSuper2(&v29, sel_init);
  v23 = *(v26 + 8);
  v23(v25, v7);
  *(v4 + 24) = v22;
  [*(v4 + 16) setDelegate_];
  v23(v27, v7);
  return v4;
}

uint64_t sub_1D914217C(void *a1)
{
  v3 = sub_1D9177E0C();
  v17 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_1D9177E9C();
  v15 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput;
  v9 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput + 16);
  v22[0] = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput);
  v22[1] = v9;
  *v23 = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput + 32);
  *&v23[9] = *(v1 + OBJC_IVAR____TtCC18PodcastsFoundation13ShazamMatcherP33_02683B609352F691B94A08829495C57A19ThrottledSubscriber_currentInput + 41);
  if (*&v22[0])
  {
    *&v18[8] = *(v8 + 8);
    *&v18[24] = *(v8 + 24);
    *&v18[40] = *(v8 + 40);
    *v18 = a1;
    v18[56] = v23[24];
    sub_1D8D088B4(v22, &aBlock, &qword_1ECABB220, &qword_1D91BBAC0);
    v10 = a1;
    sub_1D91778BC();
    sub_1D8D08A50(v22, &qword_1ECABB220, &qword_1D91BBAC0);
    aBlock = *v18;
    v20 = *&v18[16];
    v21[0] = *&v18[32];
    *(v21 + 9) = *&v18[41];
    sub_1D8D08A50(&aBlock, &qword_1ECABB278, &qword_1D91BBAF8);
  }

  v11 = swift_allocObject();
  swift_unknownObjectWeakInit();
  *&v21[0] = sub_1D9142980;
  *(&v21[0] + 1) = v11;
  *&aBlock = MEMORY[0x1E69E9820];
  *(&aBlock + 1) = 1107296256;
  *&v20 = sub_1D8CF5F60;
  *(&v20 + 1) = &block_descriptor_26_6;
  v12 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  *v18 = MEMORY[0x1E69E7CC0];
  sub_1D9141E3C(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v5, v12);
  _Block_release(v12);
  (*(v17 + 8))(v5, v3);
  (*(v15 + 8))(v7, v16);
}

uint64_t sub_1D9142578(void *a1)
{
  v2 = sub_1D9177E0C();
  v21 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v19 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1;
  v9 = sub_1D917741C();
  v10 = sub_1D9178CFC();

  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    *v11 = 138412290;
    if (a1)
    {
      v13 = a1;
      v14 = _swift_stdlib_bridgeErrorToNSError();
      v15 = v14;
    }

    else
    {
      v14 = 0;
      v15 = 0;
    }

    *(v11 + 4) = v14;
    *v12 = v15;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Did not find match for this interval. Error: %@", v11, 0xCu);
    sub_1D8D08A50(v12, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v12, -1, -1);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  v16 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D9142960;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_22_3;
  v17 = _Block_copy(aBlock);

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D9141E3C(&qword_1EDCD7B90, 255, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF48EC(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0, MEMORY[0x1E69E6328]);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v17);
  _Block_release(v17);
  (*(v21 + 8))(v4, v2);
  (*(v19 + 8))(v7, v20);
}

void sub_1D9142990(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 16);
  v4 = a1 + 32;
  while (v1 != v3)
  {
    v7 = v4 + 40 * v1;
    v9 = *(v7 + 16);
    v8 = *(v7 + 24);

    v10 = sub_1D8E62904(v9, v8);
    v11 = *(v10 + 16);
    if (v11)
    {
      v5 = 0;
      v12 = 32;
      do
      {
        v13 = *(v10 + v12);
        v14 = __OFADD__(v5, v13);
        v5 += v13;
        if (v14)
        {
          __break(1u);
          goto LABEL_13;
        }

        v12 += 8;
        --v11;
      }

      while (v11);

      if ((v5 & 0x8000000000000000) == 0)
      {
        goto LABEL_3;
      }

      __break(1u);
      return;
    }

    v5 = 0;
LABEL_3:
    ++v1;
    v6 = __CFADD__(v2, v5 + 16);
    v2 += v5 + 16;
    if (v6)
    {
LABEL_13:
      __break(1u);
      return;
    }
  }
}

void sub_1D9142A88(uint64_t a1)
{
  v1 = 0;
  v2 = a1 + 48;
  v3 = *(a1 + 16) + 1;
  while (--v3)
  {

    sub_1D9142990(v4);
    v6 = v5;

    v7 = v6 + 16;
    if (v6 >= 0xFFFFFFFFFFFFFFF0)
    {
      __break(1u);
      return;
    }

    v2 += 32;
    v8 = __CFADD__(v1, v7);
    v1 += v7;
    if (v8)
    {
      __break(1u);
      return;
    }
  }
}

void sub_1D9142B08(uint64_t a1)
{
  v1 = 0;
  v2 = 0;
  v3 = *(a1 + 16);
  v15 = a1 + 32;
  while (2)
  {
    if (v1 != v3)
    {
      v4 = v15 + 40 * v1++;
      v5 = *(*(v4 + 32) + 16);

      v6 = 0;
      v7 = v5 + 1;
      v8 = 48;
      while (--v7)
      {

        sub_1D9142990(v9);
        v11 = v10;

        v12 = v11 + 16;
        if (v11 >= 0xFFFFFFFFFFFFFFF0)
        {
          __break(1u);
LABEL_15:
          __break(1u);
LABEL_16:
          __break(1u);
          return;
        }

        v8 += 32;
        v13 = __CFADD__(v6, v12);
        v6 += v12;
        if (v13)
        {
          goto LABEL_15;
        }
      }

      v14 = v6 + 16;
      if (v6 >= 0xFFFFFFFFFFFFFFF0)
      {
        goto LABEL_16;
      }

      v13 = __CFADD__(v2, v14);
      v2 += v14;
      if (!v13)
      {
        continue;
      }

      __break(1u);
    }

    break;
  }
}

void sub_1D9142C0C(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = 0;
  while (v4)
  {
LABEL_11:
    v11 = (*(a1 + 56) + 32 * (__clz(__rbit64(v4)) | (v6 << 6)));
    v12 = v11[1];
    v13 = v11[3];
    if (v12)
    {
      v14 = *v11;

      v15 = sub_1D8E62904(v14, v12);
      v16 = *(v15 + 16);
      if (v16)
      {
        v8 = 0;
        v17 = 32;
        do
        {
          v18 = *(v15 + v17);
          v19 = __OFADD__(v8, v18);
          v8 += v18;
          if (v19)
          {
            __break(1u);
            goto LABEL_27;
          }

          v17 += 8;
          --v16;
        }

        while (v16);

        if (v8 < 0)
        {
          goto LABEL_30;
        }

        goto LABEL_5;
      }
    }

    else
    {
      v20 = v11[2];

      v21 = sub_1D8E62904(v20, v13);
      v22 = *(v21 + 16);
      if (v22)
      {
        v8 = 0;
        v23 = 32;
        while (1)
        {
          v24 = *(v21 + v23);
          v19 = __OFADD__(v8, v24);
          v8 += v24;
          if (v19)
          {
            goto LABEL_28;
          }

          v23 += 8;
          if (!--v22)
          {

            if ((v8 & 0x8000000000000000) == 0)
            {
              goto LABEL_5;
            }

            goto LABEL_31;
          }
        }
      }
    }

    v8 = 0;
LABEL_5:
    v4 &= v4 - 1;
    v9 = __CFADD__(v7, v8);
    v7 += v8;
    if (v9)
    {
      goto LABEL_29;
    }
  }

  while (1)
  {
    v10 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v10 >= v5)
    {

      return;
    }

    v4 = *(v1 + 8 * v10);
    ++v6;
    if (v4)
    {
      v6 = v10;
      goto LABEL_11;
    }
  }

LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  __break(1u);
}

uint64_t TranscriptModel.ttmlData.getter()
{
  v1 = *(v0 + 24);
  sub_1D8D752C4(v1, *(v0 + 32));
  return v1;
}

void TranscriptModel.inMemorySize.getter()
{
  v1 = v0[3];
  v2 = v0[4];
  v3 = v0[5];
  v4 = v0[6];
  v5 = v2 >> 62;
  if ((v2 >> 62) <= 1)
  {
    if (!v5)
    {
      v6 = BYTE6(v2);
      goto LABEL_13;
    }

    goto LABEL_8;
  }

  if (v5 != 2)
  {
    goto LABEL_12;
  }

  v8 = v1 + 16;
  v1 = *(v1 + 16);
  v7 = *(v8 + 8);
  v6 = v7 - v1;
  if (__OFSUB__(v7, v1))
  {
    __break(1u);
LABEL_8:
    v9 = __OFSUB__(HIDWORD(v1), v1);
    v10 = HIDWORD(v1) - v1;
    if (v9)
    {
LABEL_18:
      __break(1u);
      return;
    }

    v6 = v10;
  }

  if ((v6 & 0x8000000000000000) == 0)
  {
    goto LABEL_13;
  }

  __break(1u);
LABEL_12:
  v6 = 0;
LABEL_13:
  sub_1D9142B08(v3);
  v12 = __CFADD__(v6, v11);
  v13 = v6 + v11;
  if (v12)
  {
    __break(1u);
    goto LABEL_17;
  }

  sub_1D9142C0C(v4);
  if (__CFADD__(v13, v14))
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }
}

uint64_t TranscriptModel.init(duration:paragraphs:speakers:ttmlData:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  *a8 = result;
  *(a8 + 8) = a2;
  *(a8 + 16) = a3 & 1;
  *(a8 + 24) = a6;
  *(a8 + 32) = a7;
  *(a8 + 40) = a4;
  *(a8 + 48) = a5;
  return result;
}

uint64_t TranscriptModel.Paragraph.speakerID.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptModel.Paragraph.inMemorySize.getter()
{
  sub_1D9142A88(*(v0 + 32));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void __swiftcall TranscriptModel.Paragraph.init(startTime:endTime:sentences:speakerID:)(PodcastsFoundation::TranscriptModel::Paragraph *__return_ptr retstr, Swift::Double startTime, Swift::Double endTime, Swift::OpaquePointer sentences, Swift::String_optional speakerID)
{
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  retstr->speakerID.value._object = speakerID.value._object;
  retstr->sentences = sentences;
  retstr->speakerID.value._countAndFlagsBits = speakerID.value._countAndFlagsBits;
}

uint64_t sub_1D9143028()
{
  sub_1D9142A88(*(v0 + 32));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t TranscriptModel.Sentence.inMemorySize.getter()
{
  sub_1D9142990(*(v0 + 16));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

PodcastsFoundation::TranscriptModel::Sentence __swiftcall TranscriptModel.Sentence.init(startTime:endTime:words:splitStyle:)(Swift::Double startTime, Swift::Double endTime, Swift::OpaquePointer words, PodcastsFoundation::TranscriptModel::Sentence::SplitStyle splitStyle)
{
  v5 = *splitStyle;
  *v4 = startTime;
  *(v4 + 8) = endTime;
  *(v4 + 16) = words;
  *(v4 + 24) = v5;
  result.endTime = endTime;
  result.startTime = startTime;
  result.words = words;
  result.splitStyle = splitStyle;
  return result;
}

uint64_t TranscriptModel.Sentence.SplitStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9143150()
{
  sub_1D9142990(*(v0 + 16));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t TranscriptModel.Word.text.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptModel.Word.inMemorySize.getter()
{
  v1 = String.inMemorySize.getter(*(v0 + 16), *(v0 + 24));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

void __swiftcall TranscriptModel.Word.init(startTime:endTime:text:isDescriptor:)(PodcastsFoundation::TranscriptModel::Word *__return_ptr retstr, Swift::Double startTime, Swift::Double endTime, Swift::String text, Swift::Bool isDescriptor)
{
  retstr->startTime = startTime;
  retstr->endTime = endTime;
  retstr->text = text;
  retstr->isDescriptor = isDescriptor;
}

uint64_t sub_1D9143200()
{
  v1 = String.inMemorySize.getter(*(v0 + 16), *(v0 + 24));
  v2 = __CFADD__(v1, 16);
  result = v1 + 16;
  if (v2)
  {
    __break(1u);
  }

  return result;
}

uint64_t TranscriptModel.Speaker.name.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t TranscriptModel.Speaker.id.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t TranscriptModel.Speaker.inMemorySize.getter()
{
  v1 = v0[1];
  if (v1)
  {
    return String.inMemorySize.getter(*v0, v1);
  }

  else
  {
    return String.inMemorySize.getter(v0[2], v0[3]);
  }
}

uint64_t sub_1D91432A8()
{
  v1 = v0[1];
  if (v1)
  {
    return String.inMemorySize.getter(*v0, v1);
  }

  else
  {
    return String.inMemorySize.getter(v0[2], v0[3]);
  }
}

void __swiftcall TranscriptModel.speaker(for:)(PodcastsFoundation::TranscriptModel::Speaker_optional *__return_ptr retstr, PodcastsFoundation::TranscriptModel::Paragraph *a2)
{
  object = a2->speakerID.value._object;
  if (object)
  {
    countAndFlagsBits = a2->speakerID.value._countAndFlagsBits;
    v6 = *(v2 + 48);
    v7 = *(v6 + 16);

    if (v7 && (v8 = sub_1D8D33C70(countAndFlagsBits, object), (v9 & 1) != 0))
    {
      v10 = (*(v6 + 56) + 32 * v8);
      v12 = *v10;
      v11 = v10[1];
      v14 = v10[2];
      v13 = v10[3];

      retstr->value.name.value._countAndFlagsBits = v12;
      retstr->value.name.value._object = v11;
      retstr->value.id._countAndFlagsBits = v14;
      retstr->value.id._object = v13;
    }

    else
    {
      retstr->value.name.value._countAndFlagsBits = 0;
      retstr->value.name.value._object = 0;
      retstr->value.id._countAndFlagsBits = countAndFlagsBits;
      retstr->value.id._object = object;
    }
  }

  else
  {
    retstr->value.name = 0u;
    retstr->value.id = 0u;
  }
}

uint64_t _s18PodcastsFoundation15TranscriptModelV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 24);
  v3 = *(a1 + 32);
  v5 = *(a1 + 40);
  v4 = *(a1 + 48);
  v6 = *(a2 + 24);
  v7 = *(a2 + 32);
  v9 = *(a2 + 40);
  v8 = *(a2 + 48);
  if (*(a1 + 16))
  {
    if ((*(a2 + 16) & 1) == 0)
    {
      return 0;
    }
  }

  else if ((*(a2 + 16) & 1) != 0 || (sub_1D9179F9C() & 1) == 0)
  {
    return 0;
  }

  if (!sub_1D8FCC138(v2, v3, v6, v7) || (sub_1D8E84214(v5, v9) & 1) == 0)
  {
    return 0;
  }

  return sub_1D90C23C8(v4, v8);
}

uint64_t _s18PodcastsFoundation15TranscriptModelV4WordV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a1 + 32);
  v5 = *(a2 + 32);
  v6 = *(a1 + 16) == *(a2 + 16) && *(a1 + 24) == *(a2 + 24);
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {
    return v4 ^ v5 ^ 1u;
  }

  else
  {
    return 0;
  }
}

uint64_t _s18PodcastsFoundation15TranscriptModelV7SpeakerV2eeoiySbAE_AEtFZ_0(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (v6)
    {
      v9 = *a1 == *a2 && v3 == v6;
      if (v9 || (sub_1D9179ACC() & 1) != 0)
      {
        goto LABEL_8;
      }
    }

    return 0;
  }

  if (v6)
  {
    return 0;
  }

LABEL_8:
  if (v4 == v7 && v5 == v8)
  {
    return 1;
  }

  return sub_1D9179ACC();
}

uint64_t _s18PodcastsFoundation15TranscriptModelV8SentenceV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v4 = *(a2 + 24);
  v5 = *(a1 + 24);
  return sub_1D8E8413C(*(a1 + 16), *(a2 + 16)) & (v5 == v4);
}

uint64_t _s18PodcastsFoundation15TranscriptModelV9ParagraphV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 != *a2 || *(a1 + 8) != *(a2 + 8))
  {
    return 0;
  }

  v5 = *(a1 + 24);
  v6 = *(a1 + 32);
  v7 = *(a2 + 24);
  v8 = *(a2 + 32);
  if (v5)
  {
    if (!v7)
    {
      return 0;
    }

    v9 = *(a1 + 16) == *(a2 + 16) && v5 == v7;
    if (!v9 && (sub_1D9179ACC() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v7)
  {
    return 0;
  }

  return sub_1D8E83FCC(v6, v8);
}

unint64_t sub_1D9143668()
{
  result = qword_1ECABB280;
  if (!qword_1ECABB280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB280);
  }

  return result;
}

uint64_t sub_1D91436CC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1D9143714(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 25) = 1;
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
      *(result + 16) = (a2 - 1);
      return result;
    }

    *(result + 25) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9143778(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 33))
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

uint64_t sub_1D91437C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *(result + 32) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 33) = 1;
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

    *(result + 33) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9143814(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_1D914385C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1D91439CC(void *a1@<X8>)
{
  v3 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase);
  os_unfair_lock_lock((v3 + 56));
  v4 = *(v3 + 16);
  v5 = *(v3 + 24);
  v6 = *(v3 + 32);
  v7 = *(v3 + 40);
  v8 = *(v3 + 48);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = v6;
  a1[3] = v7;
  a1[4] = v8;
  sub_1D9143A30(v4, v5, v6, v7, v8);

  os_unfair_lock_unlock((v3 + 56));
}

double sub_1D9143A30(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {

    v6 = a1;
  }

  return result;
}

void sub_1D9143A90(void *a1, uint64_t a2)
{
  if (a2 > 2)
  {
    if (a2 == 3)
    {
      v40 = [a1 stringForElementAttribute_];
      if (v40)
      {
        v41 = v40;
        v42 = sub_1D917820C();
        v44 = v43;

        v45 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSpeakerID);
        *v45 = v42;
        v45[1] = v44;
      }
    }

    else if (a2 == 4)
    {
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSpeakerID + 8))
      {
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingSpeakerName) = 1;
      }
    }

    else if (a2 == 5 && [a1 isDescriptor])
    {
      [a1 timeForElementAttribute_];
      v17 = v16;
      [a1 timeForElementAttribute_];
      v19 = v18;
      v20 = v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentWord;
      swift_beginAccess();
      *v20 = v17;
      *(v20 + 8) = v19;
      *(v20 + 16) = xmmword_1D91BBE70;
      *(v20 + 32) = 1;

      [a1 timeForElementAttribute_];
      v22 = v21;
      [a1 timeForElementAttribute_];
      v24 = v23;
      v25 = v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSentence;
      swift_beginAccess();
      *v25 = v22;
      *(v25 + 8) = v24;
      v26 = MEMORY[0x1E69E7CC0];
      *(v25 + 16) = MEMORY[0x1E69E7CC0];
      *(v25 + 24) = 0;

      [a1 timeForElementAttribute_];
      v28 = v27;
      [a1 timeForElementAttribute_];
      v30 = v29;
      v31 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentParagraph);
      swift_beginAccess();
      v32 = *v31;
      v33 = v31[1];
      v34 = v31[2];
      v35 = v31[3];
      v36 = v31[4];
      *v31 = v28;
      v31[1] = v30;
      v31[2] = 0;
      v31[3] = 0;
      v31[4] = v26;
      sub_1D9143F5C(v32, v33, v34, v35, v36);
      *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingDescriptor) = 1;
    }
  }

  else
  {
    if (!a2)
    {
      [a1 timeForElementAttribute_];
      v37 = sub_1D9179FBC();
      v38 = v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_duration;
      *v38 = v37;
      *(v38 + 8) = v39;
      *(v38 + 16) = 0;
      return;
    }

    if (a2 != 1)
    {
      if (a2 != 2)
      {
        return;
      }

      v4 = [a1 unitForCurrentSpan];
      if (v4 == 1)
      {
        [a1 timeForElementAttribute_];
        v63 = v62;
        [a1 timeForElementAttribute_];
        v65 = v64;
        v66 = [a1 isDescriptor];
        v67 = v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentWord;
        swift_beginAccess();
        *v67 = v63;
        *(v67 + 8) = v65;
        *(v67 + 16) = xmmword_1D91BBE70;
        *(v67 + 32) = v66;

        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord) = 1;
        v13 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence;
        v68 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence);
        v11 = __OFADD__(v68, 1);
        v14 = v68 + 1;
        if (!v11)
        {
          goto LABEL_30;
        }

        __break(1u);
      }

      else if (!v4)
      {
        [a1 timeForElementAttribute_];
        v6 = v5;
        [a1 timeForElementAttribute_];
        v8 = v7;
        v9 = v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSentence;
        swift_beginAccess();
        *v9 = v6;
        *(v9 + 8) = v8;
        *(v9 + 16) = MEMORY[0x1E69E7CC0];
        *(v9 + 24) = 0;

        v10 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord);
        v11 = __OFADD__(v10, 1);
        v12 = v10 + 1;
        if (!v11)
        {
          *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord) = v12;
          v13 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence;
          v14 = 1;
LABEL_30:
          *(v2 + v13) = v14;
          return;
        }

        __break(1u);
        goto LABEL_33;
      }

      v69 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord);
      v11 = __OFADD__(v69, 1);
      v70 = v69 + 1;
      if (!v11)
      {
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord) = v70;
        v13 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence;
        v71 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence);
        v11 = __OFADD__(v71, 1);
        v14 = v71 + 1;
        if (!v11)
        {
          goto LABEL_30;
        }

LABEL_34:
        __break(1u);
        return;
      }

LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    [a1 timeForElementAttribute_];
    v48 = v47;
    [a1 timeForElementAttribute_];
    v50 = v49;
    v51 = [a1 stringForElementAttribute_];
    if (v51)
    {
      v52 = v51;
      v53 = sub_1D917820C();
      v55 = v54;
    }

    else
    {
      v53 = 0;
      v55 = 0;
    }

    v56 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentParagraph);
    swift_beginAccess();
    v57 = *v56;
    v58 = v56[1];
    v59 = v56[2];
    v60 = v56[3];
    v61 = v56[4];
    *v56 = v48;
    v56[1] = v50;
    v56[2] = v53;
    v56[3] = v55;
    v56[4] = MEMORY[0x1E69E7CC0];
    sub_1D9143F5C(v57, v58, v59, v60, v61);
  }
}

double sub_1D9143F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a5)
  {
  }

  return result;
}

void sub_1D914416C(void **a1, uint64_t a2)
{
  sub_1D91462A8(*a1, a1[1], a1[2]);
  v4 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_duration);
  v5 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_duration + 8);
  v6 = *(a2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_duration + 16);
  v7 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_parsedParagraphs;
  swift_beginAccess();
  v8 = *(a2 + v7);
  v9 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_speakers;
  swift_beginAccess();
  v10 = *(a2 + v9);
  *a1 = v4;
  a1[1] = v5;
  a1[2] = (v6 | 0x4000000000000000);
  a1[3] = v8;
  a1[4] = v10;
}

void sub_1D914438C()
{
  v1 = sub_1D917662C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v22 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentWord;
  swift_beginAccess();
  v6 = *(v5 + 24);
  if (v6)
  {
    v7 = *(v5 + 16);
    v9 = *v5;
    v8 = *(v5 + 8);
    v23 = *(v5 + 32) & 1;
    if (v9 <= v8)
    {
      v22[0] = v7;
      v22[1] = v6;

      sub_1D91765DC();
      sub_1D8D447DC();
      v10 = sub_1D917920C();
      v12 = v11;
      (*(v2 + 8))(v4, v1);

      v14 = sub_1D914390C(v22);
      v15 = *(v13 + 16);
      if (v15)
      {
        v16 = v13;
        v17 = v23;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v16 + 16) = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v15 = sub_1D8ECE734(0, *(v15 + 2) + 1, 1, v15);
          *(v16 + 16) = v15;
        }

        v20 = *(v15 + 2);
        v19 = *(v15 + 3);
        if (v20 >= v19 >> 1)
        {
          v15 = sub_1D8ECE734((v19 > 1), v20 + 1, 1, v15);
          *(v16 + 16) = v15;
        }

        *(v15 + 2) = v20 + 1;
        v21 = &v15[40 * v20];
        *(v21 + 4) = v9;
        *(v21 + 5) = v8;
        *(v21 + 6) = v10;
        *(v21 + 7) = v12;
        v21[64] = v17;
        (v14)(v22, 0);
      }

      else
      {
        (v14)(v22, 0);
      }
    }

    else
    {
    }

    *(v5 + 32) = 0;
    *v5 = 0u;
    *(v5 + 16) = 0u;
  }
}

void sub_1D91445FC()
{
  v1 = v0 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSentence;
  swift_beginAccess();
  v2 = *(v1 + 16);
  if (v2)
  {
    v4 = *v1;
    v3 = *(v1 + 8);
    if (*v1 <= v3)
    {
      v5 = *(v1 + 24);

      v7 = sub_1D91438AC(v19);
      v8 = *(v6 + 32);
      if (v8)
      {
        v9 = v6;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v9 + 32) = v8;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v8 = sub_1D8ECE86C(0, *(v8 + 2) + 1, 1, v8);
          *(v9 + 32) = v8;
        }

        v11 = *(v8 + 2);
        v12 = *(v8 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v18 = v11 + 1;
          v15 = v8;
          v16 = *(v8 + 2);
          v17 = sub_1D8ECE86C((v12 > 1), v11 + 1, 1, v15);
          v11 = v16;
          v13 = v18;
          v8 = v17;
          *(v9 + 32) = v17;
        }

        *(v8 + 2) = v13;
        v14 = &v8[32 * v11];
        *(v14 + 4) = v4;
        *(v14 + 5) = v3;
        *(v14 + 6) = v2;
        v14[56] = v5;
        (v7)(v19, 0);
      }

      else
      {

        (v7)(v19, 0);
      }
    }

    *v1 = 0;
    *(v1 + 8) = 0;
    *(v1 + 24) = 0;
    *(v1 + 16) = 0;
  }
}

void sub_1D9144774()
{
  v1 = v0 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentParagraph;
  swift_beginAccess();
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v1 + 32);
  if (v4)
  {
    v6 = *v1;
    v5 = *(v1 + 8);
    if (*v1 <= v5)
    {
      if (*(v4 + 16))
      {
        v7 = *(v1 + 16);
        v8 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_parsedParagraphs;
        swift_beginAccess();
        v9 = *(v0 + v8);

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v0 + v8) = v9;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v9 = sub_1D8ECE614(0, *(v9 + 2) + 1, 1, v9);
          *(v0 + v8) = v9;
        }

        v11 = *(v9 + 2);
        v12 = *(v9 + 3);
        v13 = v11 + 1;
        if (v11 >= v12 >> 1)
        {
          v21 = v11 + 1;
          v18 = v9;
          v19 = *(v9 + 2);
          v20 = sub_1D8ECE614((v12 > 1), v11 + 1, 1, v18);
          v11 = v19;
          v13 = v21;
          v14 = v7;
          v9 = v20;
        }

        else
        {
          v14 = v7;
        }

        *(v9 + 2) = v13;
        v15 = &v9[40 * v11];
        *(v15 + 4) = v6;
        *(v15 + 5) = v5;
        *(v15 + 6) = v14;
        *(v15 + 7) = v3;
        *(v15 + 8) = v4;
        *(v0 + v8) = v9;
        swift_endAccess();
        v2 = *(v1 + 16);
        v3 = *(v1 + 24);
        v4 = *(v1 + 32);
      }
    }
  }

  v16 = *v1;
  v17 = *(v1 + 8);
  *(v1 + 32) = 0;
  *v1 = 0u;
  *(v1 + 16) = 0u;
  sub_1D9143F5C(v16, v17, v2, v3, v4);
}

id TranscriptModelBuilder.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id TranscriptModelBuilder.init()()
{
  v1 = &v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentParagraph];
  *v1 = 0u;
  *(v1 + 1) = 0u;
  *(v1 + 4) = 0;
  v2 = MEMORY[0x1E69E7CC0];
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_parsedParagraphs] = MEMORY[0x1E69E7CC0];
  v3 = &v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSentence];
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *v3 = 0;
  v3[24] = 0;
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence] = 0;
  v4 = &v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentWord];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  v4[32] = 0;
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord] = 0;
  v5 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_speakers;
  *&v0[v5] = sub_1D8E27FF4(v2);
  v6 = &v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSpeakerID];
  *v6 = 0;
  v6[1] = 0;
  v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingSpeakerName] = 0;
  v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingDescriptor] = 0;
  v7 = &v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_duration];
  *v7 = 0;
  *(v7 + 1) = 0;
  v7[16] = 1;
  v8 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB2E8, &qword_1D91BBE90);
  v9 = swift_allocObject();
  *(v9 + 56) = 0;
  *(v9 + 16) = 0;
  *(v9 + 24) = 0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0x8000000000000000;
  *&v0[v8] = v9;
  *&v0[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_interval] = 0;
  v11.receiver = v0;
  v11.super_class = type metadata accessor for TranscriptModelBuilder();
  return objc_msgSendSuper2(&v11, sel_init);
}

id TranscriptModelBuilder.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TranscriptModelBuilder();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_1D9144B88(uint64_t a1)
{
  switch(a1)
  {
    case 5:
      v24 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingDescriptor;
      if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingDescriptor) == 1)
      {
        sub_1D914438C();
        sub_1D91445FC();
        sub_1D9144774();
        *(v2 + v24) = 0;
      }

      break;
    case 2:
      v19 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord);
      v20 = __OFSUB__(v19, 1);
      v21 = v19 - 1;
      if (v20)
      {
        __break(1u);
      }

      else
      {
        *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfWord) = v21;
        v22 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence);
        v20 = __OFSUB__(v22, 1);
        v23 = v22 - 1;
        if (!v20)
        {
          *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_numberOfOpenSpansSinceStartOfSentence) = v23;
          if (v21)
          {
            if (!v23)
            {

              sub_1D91445FC();
            }
          }

          else
          {

            sub_1D914438C();
          }

          return;
        }
      }

      __break(1u);
      goto LABEL_27;
    case 1:
      v1 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentParagraph);
      swift_beginAccess();
      v10 = v1[2];
      v3 = v1[3];
      v4 = v1[4];
      if (!v4 || (v9 = *v1, v8 = *(v1 + 1), *v1 > v8) || !*(v4 + 16))
      {
LABEL_11:
        v17 = *v1;
        v18 = v1[1];
        v1[4] = 0;
        *v1 = 0u;
        *(v1 + 1) = 0u;
        sub_1D9143F5C(v17, v18, v10, v3, v4);
        return;
      }

      v7 = v1[2];
      v6 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_parsedParagraphs;
      swift_beginAccess();
      v5 = *(v2 + v6);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *(v2 + v6) = v5;
      if (isUniquelyReferenced_nonNull_native)
      {
LABEL_8:
        v12 = *(v5 + 2);
        v13 = *(v5 + 3);
        v14 = v12 + 1;
        if (v12 >= v13 >> 1)
        {
          v28 = v12 + 1;
          v25 = v5;
          v26 = *(v5 + 2);
          v27 = sub_1D8ECE614((v13 > 1), v12 + 1, 1, v25);
          v12 = v26;
          v14 = v28;
          v15 = v7;
          v5 = v27;
        }

        else
        {
          v15 = v7;
        }

        *(v5 + 2) = v14;
        v16 = &v5[40 * v12];
        *(v16 + 4) = v9;
        *(v16 + 5) = v8;
        *(v16 + 6) = v15;
        *(v16 + 7) = v3;
        *(v16 + 8) = v4;
        *(v2 + v6) = v5;
        swift_endAccess();
        v10 = v1[2];
        v3 = v1[3];
        v4 = v1[4];
        goto LABEL_11;
      }

LABEL_27:
      v5 = sub_1D8ECE614(0, *(v5 + 2) + 1, 1, v5);
      *(v2 + v6) = v5;
      goto LABEL_8;
  }
}

void sub_1D9144DE4(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D917662C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = (v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSpeakerID);
  v10 = *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_currentSpeakerID + 8);
  if (v10 && (v11 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingSpeakerName, *(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_isParsingSpeakerName) == 1))
  {
    v12 = *v9;
    v26[0] = a1;
    v26[1] = a2;

    sub_1D91765FC();
    sub_1D8D447DC();
    v23 = sub_1D917920C();
    v14 = v13;
    (*(v6 + 8))(v8, v5);
    v15 = OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_speakers;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *(v2 + v15);
    *(v2 + v15) = 0x8000000000000000;
    sub_1D8F518A4(v23, v14, v12, v10, v12, v10, isUniquelyReferenced_nonNull_native);

    *(v2 + v15) = v24;
    swift_endAccess();
    *v9 = 0;
    v9[1] = 0;

    *(v2 + v11) = 0;
  }

  else
  {
    v17 = sub_1D914396C(v26);
    if (*(v18 + 24))
    {
      v24 = a1;
      v25 = a2;
      sub_1D917661C();
      sub_1D8D447DC();
      v19 = sub_1D917920C();
      v21 = v20;
      (*(v6 + 8))(v8, v5);
      MEMORY[0x1DA7298F0](v19, v21);
    }

    (v17)(v26, 0);
  }
}

void sub_1D9145044()
{
  v1 = v0;
  v2 = sub_1D917734C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v20 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v9 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase);
  os_unfair_lock_lock((v9 + 56));
  sub_1D91462A8(*(v9 + 16), *(v9 + 24), *(v9 + 32));
  *(v9 + 16) = xmmword_1D918BEE0;
  *(v9 + 40) = 0;
  *(v9 + 48) = 0;
  *(v9 + 32) = 0x8000000000000000;
  os_unfair_lock_unlock((v9 + 56));
  if (qword_1ECAB1050 != -1)
  {
    swift_once();
  }

  v10 = sub_1D917739C();
  __swift_project_value_buffer(v10, qword_1ECAB1058);
  sub_1D917733C();
  v11 = sub_1D917737C();
  v12 = sub_1D9178F5C();
  if (sub_1D917918C())
  {
    v13 = swift_slowAlloc();
    *v13 = 0;
    v14 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v11, v12, v14, "XMLTTMLParse", "", v13, 2u);
    MEMORY[0x1DA72CB90](v13, -1, -1);
  }

  (*(v3 + 16))(v5, v8, v2);
  sub_1D91773FC();
  swift_allocObject();
  v15 = sub_1D91773EC();
  (*(v3 + 8))(v8, v2);
  *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_interval) = v15;

  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v16 = sub_1D917744C();
  __swift_project_value_buffer(v16, qword_1ECAB0E58);
  v17 = sub_1D917741C();
  v18 = sub_1D9178D1C();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 0;
    _os_log_impl(&dword_1D8CEC000, v17, v18, "Began parsing TTML file", v19, 2u);
    MEMORY[0x1DA72CB90](v19, -1, -1);
  }
}

void sub_1D9145358()
{
  v1 = v0;
  v2 = sub_1D91773AC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v22[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v22[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase);
  v23 = v0;
  os_unfair_lock_lock((v10 + 56));
  sub_1D914637C((v10 + 16));
  os_unfair_lock_unlock((v10 + 56));
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v11 = sub_1D917744C();
  __swift_project_value_buffer(v11, qword_1ECAB0E58);
  v12 = sub_1D917741C();
  v13 = sub_1D9178D1C();
  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    *v14 = 0;
    _os_log_impl(&dword_1D8CEC000, v12, v13, "Successfully finished parsing TTML", v14, 2u);
    MEMORY[0x1DA72CB90](v14, -1, -1);
  }

  if (*(v1 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_interval))
  {
    v15 = qword_1ECAB1050;

    if (v15 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917739C();
    __swift_project_value_buffer(v16, qword_1ECAB1058);
    v17 = sub_1D917737C();
    sub_1D91773DC();
    v18 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      sub_1D917740C();

      if ((*(v3 + 88))(v5, v2) == *MEMORY[0x1E69E93E8])
      {
        v19 = "[Error] Interval already ended";
      }

      else
      {
        (*(v3 + 8))(v5, v2);
        v19 = "SUCCESS";
      }

      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v18, v21, "XMLTTMLParse", v19, v20, 2u);
      MEMORY[0x1DA72CB90](v20, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
  }
}

void sub_1D91456EC(void *a1)
{
  v2 = v1;
  v4 = sub_1D91773AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase);
  v37 = a1;
  os_unfair_lock_lock(v11 + 14);
  sub_1D9146308(&v11[4]);
  os_unfair_lock_unlock(v11 + 14);
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1ECAB0E58);
  v13 = a1;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v2;
    v18 = v10;
    v19 = v5;
    v20 = v8;
    v21 = v4;
    v22 = v7;
    v23 = v17;
    *v16 = 138412290;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Error parsing TTML: %@", v16, 0xCu);
    sub_1D8E262AC(v23);
    v26 = v23;
    v7 = v22;
    v4 = v21;
    v8 = v20;
    v5 = v19;
    v10 = v18;
    v2 = v35;
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_interval))
  {
    v27 = qword_1ECAB1050;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917739C();
    __swift_project_value_buffer(v28, qword_1ECAB1058);
    v29 = sub_1D917737C();
    sub_1D91773DC();
    v30 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v31 = v36;
      sub_1D917740C();

      if ((*(v5 + 88))(v31, v4) == *MEMORY[0x1E69E93E8])
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v31, v4);
        v32 = "FAILURE";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v29, v30, v34, "XMLTTMLParse", v32, v33, 2u);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

void sub_1D9145B14(void *a1)
{
  v2 = v1;
  v4 = sub_1D91773AC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v36 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D917734C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v35 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase);
  v37 = a1;
  os_unfair_lock_lock(v11 + 14);
  sub_1D9146398(&v11[4]);
  os_unfair_lock_unlock(v11 + 14);
  if (qword_1ECAB0E50 != -1)
  {
    swift_once();
  }

  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1ECAB0E58);
  v13 = a1;
  v14 = sub_1D917741C();
  v15 = sub_1D9178CFC();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v35 = v2;
    v18 = v10;
    v19 = v5;
    v20 = v8;
    v21 = v4;
    v22 = v7;
    v23 = v17;
    *v16 = 138412290;
    v24 = a1;
    v25 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v25;
    *v23 = v25;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "Error validating TTML: %@", v16, 0xCu);
    sub_1D8E262AC(v23);
    v26 = v23;
    v7 = v22;
    v4 = v21;
    v8 = v20;
    v5 = v19;
    v10 = v18;
    v2 = v35;
    MEMORY[0x1DA72CB90](v26, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  if (*(v2 + OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_interval))
  {
    v27 = qword_1ECAB1050;

    if (v27 != -1)
    {
      swift_once();
    }

    v28 = sub_1D917739C();
    __swift_project_value_buffer(v28, qword_1ECAB1058);
    v29 = sub_1D917737C();
    sub_1D91773DC();
    v30 = sub_1D9178F4C();
    if (sub_1D917918C())
    {

      v31 = v36;
      sub_1D917740C();

      if ((*(v5 + 88))(v31, v4) == *MEMORY[0x1E69E93E8])
      {
        v32 = "[Error] Interval already ended";
      }

      else
      {
        (*(v5 + 8))(v31, v4);
        v32 = "FAILURE";
      }

      v33 = swift_slowAlloc();
      *v33 = 0;
      v34 = sub_1D917732C();
      _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v29, v30, v34, "XMLTTMLParse", v32, v33, 2u);
      MEMORY[0x1DA72CB90](v33, -1, -1);
    }

    (*(v8 + 8))(v10, v7);
  }
}

unint64_t get_enum_tag_for_layout_string_18PodcastsFoundation22TranscriptModelBuilderC5PhaseO(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0)
  {
    return v1 >> 62;
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D9146174(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 16) >> 1;
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

uint64_t sub_1D91461C4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *result = 0;
      *(result + 8) = 0;
      *(result + 24) = 0;
      *(result + 32) = 0;
      *(result + 16) = 2 * -a2;
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1D9146228(uint64_t result, uint64_t a2)
{
  if (a2 < 2)
  {
    *(result + 16) = *(result + 16) & 1 | (a2 << 62);
  }

  else
  {
    *result = (a2 - 2);
    *(result + 8) = xmmword_1D91BBE80;
    *(result + 24) = 0;
    *(result + 32) = 0;
  }

  return result;
}

double sub_1D91462A8(void *a1, uint64_t a2, unint64_t a3)
{
  if (a3 >> 62 == 1)
  {
  }

  else if (!(a3 >> 62))
  {
  }

  return result;
}

id sub_1D9146320(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1D91462A8(*a1, *(a1 + 8), *(a1 + 16));
  *a1 = v3;
  *(a1 + 8) = 0u;
  *(a1 + 24) = 0u;
  return v3;
}

void TranscriptParser.parse(ttmlData:)(uint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v5 = [objc_allocWithZone(type metadata accessor for TranscriptModelBuilder()) init];
  v6 = objc_allocWithZone(PFTTMLParser);
  sub_1D8D752C4(a1, a2);
  v7 = _s10Foundation4DataV08PodcastsA0E18userDefaultsObjectSo6NSDataCSgyF_0();
  v8 = [v6 initWithData:v7 delegate:v5];

  sub_1D8D7567C(a1, a2);
  v18 = v8;
  [v8 parse];
  v9 = *&v5[OBJC_IVAR____TtC18PodcastsFoundation22TranscriptModelBuilder_lockedPhase];
  os_unfair_lock_lock((v9 + 56));
  v11 = *(v9 + 16);
  v10 = *(v9 + 24);
  v12 = *(v9 + 32);
  v13 = *(v9 + 40);
  v14 = *(v9 + 48);
  sub_1D9143A30(v11, v10, v12, v13, v14);
  os_unfair_lock_unlock((v9 + 56));
  if (v12 >> 62)
  {
    if (v12 >> 62 == 1)
    {

      sub_1D91462A8(v11, v10, v12);
      *a3 = v11;
      *(a3 + 8) = v10;
      *(a3 + 16) = v12 & 1;
      *(a3 + 24) = a1;
      *(a3 + 32) = a2;
      *(a3 + 40) = v13;
      *(a3 + 48) = v14;
      sub_1D8D752C4(a1, a2);
      return;
    }

    sub_1D91465C8();
    swift_allocError();
    *v16 = 0;
    swift_willThrow();

    sub_1D91462A8(v11, v10, v12);
  }

  else
  {
    sub_1D91465C8();
    swift_allocError();
    *v15 = v11;
    swift_willThrow();

    v5 = v18;
  }
}

unint64_t sub_1D91465C8()
{
  result = qword_1ECABB358;
  if (!qword_1ECABB358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB358);
  }

  return result;
}

uint64_t sub_1D914662C(uint64_t *a1, unsigned int a2)
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

  if ((v3 + 1) >= 2)
  {
    return v3;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D914667C(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = 0;
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

uint64_t sub_1D91466D0(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

id sub_1D91466F8()
{
  v0 = objc_allocWithZone(MEMORY[0x1E695E000]);
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v2 = [v0 initWithSuiteName_];

  if (v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1D9189080;
    *(inited + 32) = 0xD000000000000014;
    v4 = inited + 32;
    *(inited + 40) = 0x80000001D91D8A80;
    *(inited + 72) = MEMORY[0x1E69E6448];
    *(inited + 48) = 1065353216;
    sub_1D8E2696C(inited);
    swift_setDeallocating();
    sub_1D8F51B08(v4);
    v5 = sub_1D917802C();

    [v2 registerDefaults_];
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v6 = sub_1D917744C();
    __swift_project_value_buffer(v6, qword_1ECAB0D98);
    v7 = sub_1D917741C();
    v8 = sub_1D9178CFC();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v12 = v10;
      *v9 = 136315138;
      *(v9 + 4) = sub_1D8CFA924(0xD000000000000014, 0x80000001D91D8A60, &v12);
      _os_log_impl(&dword_1D8CEC000, v7, v8, "[PlaybackSettingsDefaults] Could not create MPPlaybackUserDefaults with suite name %s", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    return 0;
  }

  return v2;
}

void NSUserDefaults.Name.init(rawValue:)(char *a3@<X8>)
{
  v4 = sub_1D917980C();

  v5 = 3;
  if (v4 < 3)
  {
    v5 = v4;
  }

  *a3 = v5;
}

uint64_t NSUserDefaults.Name.rawValue.getter()
{
  v1 = 0x646572616873;
  if (*v0 != 1)
  {
    v1 = 0x647261646E617473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x73676E6974746573;
  }
}

void sub_1D9146A0C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0xE600000000000000;
  v5 = 0x646572616873;
  if (v2 != 1)
  {
    v5 = 0x647261646E617473;
    v4 = 0xE800000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x73676E6974746573;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_1D9146A68()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return sub_1D9179E1C();
}

double sub_1D9146B08(uint64_t a1)
{
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  return result;
}

uint64_t sub_1D9146B94()
{
  *(*v1 + 128) = v0;

  if (v0)
  {
    v2 = sub_1D9146D3C;
  }

  else
  {

    v2 = sub_1D9146CBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D9146CBC()
{

  v1 = *(v0 + 8);

  return v1(1);
}

uint64_t sub_1D9146D3C()
{

  v1 = *(v0 + 8);

  return v1(0);
}

uint64_t NSUserDefaults.values<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D91791BC();
  v9 = sub_1D917889C();
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v15[-v10];
  v16 = a3;
  v17 = a4;
  v18 = a1;
  v19 = a2;
  v20 = v4;
  swift_checkMetadataState();
  v12 = *MEMORY[0x1E69E8650];
  v13 = sub_1D917889C();
  (*(*(v13 - 8) + 104))(v11, v12, v13);
  return sub_1D91788FC();
}

uint64_t sub_1D9146F0C(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6)
{
  v41 = a4;
  v46 = a3;
  v47 = a2;
  v39[1] = a1;
  v9 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v9);
  v44 = v39 - v10;
  v45 = sub_1D917887C();
  v43 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v42 = v39 - v11;
  v12 = sub_1D91788CC();
  v13 = *(v12 - 8);
  v14 = *(v13 + 64);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = v39 - v16;
  (*(v13 + 16))(v39 - v16, a1, v12, v15);
  v18 = (*(v13 + 80) + 32) & ~*(v13 + 80);
  v19 = (v14 + v18 + 7) & 0xFFFFFFFFFFFFFFF8;
  v20 = swift_allocObject();
  *(v20 + 16) = a5;
  *(v20 + 24) = a6;
  (*(v13 + 32))(v20 + v18, v17, v12);
  v21 = v41;
  *(v20 + v19) = v41;
  v22 = (v20 + ((v19 + 15) & 0xFFFFFFFFFFFFFFF8));
  v23 = v46;
  v24 = v47;
  *v22 = v47;
  v22[1] = v23;
  v25 = type metadata accessor for _UserDefaultsObserver();
  v26 = objc_allocWithZone(v25);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v27 = swift_allocObject();
  *(v27 + 20) = 0;
  *(v27 + 16) = 0;
  *&v26[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v27;
  v28 = &v26[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v28 = v24;
  v28[1] = v23;
  v29 = &v26[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v29 = sub_1D914794C;
  v29[1] = v20;
  *&v26[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = v21;
  v52.receiver = v26;
  v52.super_class = v25;
  swift_bridgeObjectRetain_n();
  v21;
  v30 = objc_msgSendSuper2(&v52, sel_init);
  v31 = swift_allocObject();
  v40 = a5;
  v41 = a6;
  v31[2] = a5;
  v31[3] = a6;
  v31[4] = v30;
  v32 = v30;
  sub_1D917888C();
  v33 = *&v32[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state];
  os_unfair_lock_lock((v33 + 20));
  LOBYTE(v30) = *(v33 + 16);
  os_unfair_lock_unlock((v33 + 20));
  if ((v30 & 1) == 0)
  {
    v34 = *&v32[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8];
    v50 = *&v32[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
    v51 = v34;
    v48 = 46;
    v49 = 0xE100000000000000;
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v35 = [objc_opt_self() defaultCenter];
      [v35 addObserver:v32 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:*&v32[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults]];
    }

    else
    {
      v36 = *&v32[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults];
      v35 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v36 addObserver:v32 forKeyPath:v35 options:0 context:&unk_1ECABB408];
    }

    os_unfair_lock_lock((v33 + 20));
    *(v33 + 16) = 1;
    os_unfair_lock_unlock((v33 + 20));
  }

  NSUserDefaults.value<A>(for:)(v40, v41, v44);
  v37 = v42;
  sub_1D91788AC();

  return (*(v43 + 8))(v37, v45);
}

uint64_t sub_1D91473C4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v16[1] = a1;
  v8 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v16 - v9;
  v11 = sub_1D917887C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v16 - v13;
  NSUserDefaults.value<A>(for:)(a5, a6, v10);
  sub_1D91788CC();
  sub_1D91788AC();
  return (*(v12 + 8))(v14, v11);
}

uint64_t NSUserDefaults.values<A>(for:default:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1D91791BC();
  v12 = sub_1D91788EC();
  MEMORY[0x1EEE9AC00](v12);
  NSUserDefaults.values<A>(for:)(a1, a2, a5, a6);
  v13 = swift_allocObject();
  v13[2] = a5;
  v13[3] = a6;
  v13[4] = a3;
  v13[5] = a4;

  swift_getWitnessTable();
  sub_1D9178A0C();
}

uint64_t sub_1D9147680(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[5] = a4;
  v5[6] = a5;
  v5[3] = a2;
  v5[4] = a3;
  v5[2] = a1;
  v6 = sub_1D91791BC();
  v5[7] = v6;
  v5[8] = *(v6 - 8);
  v5[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D914774C, 0, 0);
}

uint64_t sub_1D914774C()
{
  v1 = v0[9];
  v2 = v0[6];
  (*(v0[8] + 16))(v1, v0[3], v0[7]);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    v4 = v0[4];
    v5 = (*(v0[8] + 8))(v0[9], v0[7]);
    v4(v5);
  }

  else
  {
    (*(v3 + 32))(v0[2], v0[9], v0[6]);
  }

  v6 = v0[1];

  return v6();
}

uint64_t sub_1D9147884(uint64_t a1, uint64_t a2)
{
  v6 = v2[2];
  v8 = v2[4];
  v7 = v2[5];
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D8D58924;

  return sub_1D9147680(a1, a2, v8, v7, v6);
}

uint64_t sub_1D914794C()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  sub_1D91791BC();
  v3 = *(sub_1D91788CC() - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v0 + v5);
  v7 = (v0 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8));
  v8 = *v7;
  v9 = v7[1];

  return sub_1D91473C4(v0 + v4, v6, v8, v9, v1, v2);
}

uint64_t NSUserDefaults.codable<A>(_:for:)@<X0>(uint64_t a2@<X1>, unint64_t a3@<X2>, uint64_t a4@<X3>, void *a6@<X8>)
{
  v11 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v12 = [v6 dataForKey_];

  if (v12)
  {
    v13 = sub_1D9176C8C();
    v15 = v14;

    sub_1D91769AC();
    swift_allocObject();
    sub_1D917699C();
    sub_1D917698C();
    (*(*(a4 - 8) + 56))(a6, 0, 1, a4);

    return sub_1D8D7567C(v13, v15);
  }

  else
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v16 = sub_1D917744C();
    __swift_project_value_buffer(v16, qword_1EDCD0F88);

    v17 = sub_1D917741C();
    v18 = sub_1D9178CEC();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      v23 = v20;
      *v19 = 136315138;
      *(v19 + 4) = sub_1D8CFA924(a2, a3, &v23);
      _os_log_impl(&dword_1D8CEC000, v17, v18, "No user defaults value for key '%s'", v19, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v20);
      MEMORY[0x1DA72CB90](v20, -1, -1);
      MEMORY[0x1DA72CB90](v19, -1, -1);
    }

    v21 = *(*(a4 - 8) + 56);

    return v21(a6, 1, 1, a4);
  }
}

double sub_1D9147F34(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = *(a3 + a4 - 16);
  v5 = *(a3 + a4 - 8);
  v7 = *a3;
  v8 = a3[1];

  j___sSo14NSUserDefaultsC18PodcastsFoundationE8setValue_3foryxSg_AC04UserB3KeyVyxGtAC0hB13RepresentableRzlF(a1, v7, v8, v6, v5, v9);

  return result;
}

uint64_t NSUserDefaults.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, __n128 a6)
{
  j___sSo14NSUserDefaultsC18PodcastsFoundationE8setValue_3foryxSg_AC04UserB3KeyVyxGtAC0hB13RepresentableRzlF(a1, a2, a3, a4, a5, a6);

  v7 = sub_1D91791BC();
  v8 = *(*(v7 - 8) + 8);

  return v8(a1, v7);
}

void NSUserDefaults.setValue<A>(_:for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v10 = sub_1D91791BC();
  v11 = *(v10 - 8);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v18 - v13;
  (*(v11 + 16))(&v18 - v13, a1, v10, v12);
  v15 = *(a4 - 8);
  if ((*(v15 + 48))(v14, 1, a4) == 1)
  {
    (*(v11 + 8))(v14, v10);
LABEL_5:
    v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v6 removeObjectForKey_];
    goto LABEL_6;
  }

  v16 = (*(a5 + 24))(a4, a5);
  (*(v15 + 8))(v14, a4);
  if (!v16)
  {
    goto LABEL_5;
  }

  swift_unknownObjectRetain();
  v17 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v6 setObject:v16 forKey:v17];
  swift_unknownObjectRelease_n();
LABEL_6:
}

void (*NSUserDefaults.subscript.modify(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5))(uint64_t **a1, char a2)
{
  v11 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v12 = malloc(0x48uLL);
  }

  v13 = v12;
  *a1 = v12;
  v12[3] = a5;
  v12[4] = v5;
  v12[1] = a3;
  v12[2] = a4;
  *v12 = a2;
  v14 = sub_1D91791BC();
  v13[5] = v14;
  v15 = *(v14 - 8);
  v13[6] = v15;
  v16 = *(v15 + 64);
  if (v11)
  {
    v13[7] = swift_coroFrameAlloc();
    v17 = swift_coroFrameAlloc();
  }

  else
  {
    v13[7] = malloc(*(v15 + 64));
    v17 = malloc(v16);
  }

  v13[8] = v17;
  NSUserDefaults.value<A>(for:)(a4, a5, v17);
  return sub_1D9148374;
}

void sub_1D9148374(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[7];
  v4 = (*a1)[8];
  v5 = (*a1)[5];
  v6 = (*a1)[6];
  v7 = (*a1)[3];
  v8 = (*a1)[1];
  v9 = (*a1)[2];
  v10 = **a1;
  if (a2)
  {
    (*(v6 + 16))((*a1)[7], v4, v5);

    NSUserDefaults.setValue<A>(_:for:)(v3, v10, v8, v9, v7);

    v11 = *(v6 + 8);
    v11(v3, v5);
    v11(v4, v5);
  }

  else
  {

    NSUserDefaults.setValue<A>(_:for:)(v4, v10, v8, v9, v7);

    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

void NSUserDefaults.removeValue<A>(for:)(uint64_t a1, uint64_t a2)
{
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  [v2 removeObjectForKey_];
}

uint64_t static UserDefaultsKey.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a1 == a3 && a2 == a4)
  {
    return 1;
  }

  else
  {
    return sub_1D9179ACC();
  }
}

uint64_t UserDefaultsKey.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D91485B4(uint64_t a1)
{
  sub_1D9179DBC();
  UserDefaultsKey.hash(into:)(v3, *v1, v1[1]);
  return sub_1D9179E1C();
}

unint64_t UserDefaultsKey.debugDescription.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D917946C();

  v5 = sub_1D9179FEC();
  MEMORY[0x1DA7298F0](v5);

  MEMORY[0x1DA7298F0](2238526, 0xE300000000000000);
  MEMORY[0x1DA7298F0](a1, a2);
  MEMORY[0x1DA7298F0](10530, 0xE200000000000000);
  return 0xD000000000000010;
}

uint64_t UserDefaultsKey.description.getter()
{
  nullsub_1();
  v1 = v0;

  return v1;
}

uint64_t sub_1D9148734(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

Swift::Bool __swiftcall Bool.init(from:)(NSNumber from)
{
  v2 = [(objc_class *)from.super.super.isa BOOLValue];

  return v2;
}

NSNumber_optional __swiftcall Bool.userDefaultsObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v3 = [v2 initWithBool_];
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

void sub_1D9148808(void *a1@<X0>, unsigned __int8 *a2@<X8>)
{
  v4 = [a1 BOOLValue];

  *a2 = v4;
}

id sub_1D914884C()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithBool_];
}

Swift::Double __swiftcall Double.init(from:)(NSNumber from)
{
  [(objc_class *)from.super.super.isa doubleValue];
  v3 = v2;

  return v3;
}

NSNumber_optional __swiftcall Double.userDefaultsObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v3 = [v2 initWithDouble_];
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

void sub_1D914891C(void *a1@<X0>, uint64_t a2@<X8>)
{
  [a1 doubleValue];
  v5 = v4;

  *a2 = v5;
  *(a2 + 8) = 0;
}

id sub_1D9148964()
{
  v1 = *v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  return [v2 initWithDouble_];
}

Swift::Int __swiftcall Int.init(from:)(NSNumber from)
{
  v2 = [(objc_class *)from.super.super.isa integerValue];

  return v2;
}

NSNumber_optional __swiftcall Int.userDefaultsObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v3 = [v2 initWithInteger_];
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

void sub_1D9148A2C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 integerValue];

  *a2 = v4;
  *(a2 + 8) = 0;
}

Swift::String __swiftcall String.init(from:)(NSString from)
{
  v2 = sub_1D917820C();
  v4 = v3;

  v5 = v2;
  v6 = v4;
  result._object = v6;
  result._countAndFlagsBits = v5;
  return result;
}

void sub_1D9148AC4(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D917820C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

Swift::UInt __swiftcall UInt.init(from:)(NSNumber from)
{
  v2 = [(objc_class *)from.super.super.isa unsignedIntegerValue];

  return v2;
}

NSNumber_optional __swiftcall UInt.userDefaultsObject()()
{
  v1 = v0;
  v2 = objc_allocWithZone(MEMORY[0x1E696AD98]);

  v3 = [v2 initWithUnsignedInteger_];
  result.value.super.super.isa = v3;
  result.is_nil = v4;
  return result;
}

void sub_1D9148B8C(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [a1 unsignedIntegerValue];

  *a2 = v4;
  *(a2 + 8) = 0;
}

id sub_1D9148BE0(uint64_t a1, uint64_t a2, const char **a3)
{
  v5 = *v3;
  v6 = objc_allocWithZone(MEMORY[0x1E696AD98]);
  v7 = *a3;

  return [v6 v7];
}

uint64_t Array<A>.init(from:)(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_1D9149EA4(a1, a2, a3);

  return v4;
}

uint64_t sub_1D9148C58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  sub_1D8CFAD1C(a1, v9);
  swift_getAssociatedTypeWitness();
  if (swift_dynamicCast())
  {
    return (*(a3 + 16))(v8, a2, a3);
  }

  else
  {
    return (*(*(a2 - 8) + 56))(a4, 1, 1, a2);
  }
}

uint64_t Array<A>.userDefaultsObject()(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D91786FC();
  swift_getAssociatedTypeWitness();
  swift_getWitnessTable();
  sub_1D917843C();
  v3 = sub_1D91785DC();

  return v3;
}

void sub_1D9148E14(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1D9149EA4(a1, *(a2 + 16), *(a3 - 8));

  *a4 = v6;
}

uint64_t Set<>.init(from:)(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9149F70(a1, a2, a3, a4);

  return v5;
}

uint64_t Set<>.userDefaultsObject()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9178B4C();

  swift_getWitnessTable();
  v6 = sub_1D917871C();
  v7 = Array<A>.userDefaultsObject()(v6, a2, a3);

  return v7;
}

void sub_1D9148F40(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v6 = sub_1D9149F70(a1, *(a2 + 16), *(a3 - 8), *(a2 + 24));

  *a4 = v6;
}

void ClosedRange<>.init(from:)(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a5@<X8>)
{
  v40 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v9 = *(TupleTypeMetadata2 - 8);
  v38 = TupleTypeMetadata2;
  v39 = v9;
  MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v36 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v37 = &v34 - v12;
  v13 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v34 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v34 - v18;
  v20 = sub_1D91781AC();
  v41 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v34 - v21;
  sub_1D9149EA4(a1, a2, a3);
  if (sub_1D91786AC() == 2)
  {
    v35 = v20;
    sub_1D917872C();
    sub_1D917872C();

    v23 = sub_1D917819C();

    if (v23)
    {
      v24 = *(v13 + 32);
      v25 = v37;
      v24(v37, v19, a2);
      v26 = v38;
      v24(&v25[*(v38 + 48)], v16, a2);
      v27 = v39;
      v28 = v36;
      (*(v39 + 16))(v36, v25, v26);
      v29 = *(v26 + 48);
      v24(v22, v28, a2);
      v34 = *(v13 + 8);
      v34(&v28[v29], a2);
      (*(v27 + 32))(v28, v25, v26);
      v30 = v35;
      v24(&v22[*(v35 + 36)], &v28[*(v26 + 48)], a2);
      v34(v28, a2);
      v31 = v40;
      (*(v41 + 32))(v40, v22, v30);
      (*(v41 + 56))(v31, 0, 1, v30);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {

    v32 = v40;
    v33 = *(v41 + 56);

    v33(v32, 1, 1, v20);
  }
}

uint64_t ClosedRange<>.userDefaultsObject()(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 24);
  v4 = *(a1 + 16);
  result = v3(v4);
  if (result)
  {
    v6 = result;
    v7 = (v3)(v4, a2);
    if (v7)
    {
      v8 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
      v9 = swift_allocObject();
      *(v9 + 16) = xmmword_1D918A530;
      AssociatedTypeWitness = swift_getAssociatedTypeWitness();
      *(v9 + 32) = v6;
      *(v9 + 88) = AssociatedTypeWitness;
      *(v9 + 56) = AssociatedTypeWitness;
      *(v9 + 64) = v8;
      sub_1D8F21A3C();
      return MEMORY[0x1DA72A6F0](v9);
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

uint64_t RawRepresentable<>.init(from:)@<X0>(uint64_t a2@<X1>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X8>)
{
  v39 = a5;
  v8 = sub_1D91791BC();
  v32 = *(v8 - 8);
  v33 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v37 = &v31 - v9;
  v36 = a3;
  v38 = a2;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v11 = sub_1D91791BC();
  v34 = *(v11 - 8);
  v35 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v31 - v12;
  v14 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v31 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v31 - v19;
  v21 = *(a4 + 16);
  v22 = swift_unknownObjectRetain();
  v21(v22, AssociatedTypeWitness, a4);
  if ((*(v14 + 48))(v13, 1, AssociatedTypeWitness) == 1)
  {
    swift_unknownObjectRelease();
    (*(v34 + 8))(v13, v35);
    v23 = v38;
    v24 = *(v38 - 8);
  }

  else
  {
    (*(v14 + 32))(v20, v13, AssociatedTypeWitness);
    (*(v14 + 16))(v17, v20, AssociatedTypeWitness);
    v25 = v37;
    v23 = v38;
    sub_1D917853C();
    swift_unknownObjectRelease();
    (*(v14 + 8))(v20, AssociatedTypeWitness);
    v24 = *(v23 - 8);
    v26 = v24;
    if (!(*(v24 + 48))(v25, 1, v23))
    {
      v30 = v39;
      (*(v24 + 32))(v39, v25, v23);
      v28 = v30;
      v27 = 0;
      return (*(v26 + 56))(v28, v27, 1, v23);
    }

    (*(v32 + 8))(v25, v33);
  }

  v26 = v24;
  v27 = 1;
  v28 = v39;
  return (*(v26 + 56))(v28, v27, 1, v23);
}

uint64_t RawRepresentable<>.userDefaultsObject()(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v8 = &v11 - v7;
  sub_1D917852C();
  v9 = (*(a4 + 24))(AssociatedTypeWitness, a4);
  (*(v6 + 8))(v8, AssociatedTypeWitness);
  return v9;
}

uint64_t Data.init(from:)(void *a1)
{
  v2 = sub_1D9176C8C();

  return v2;
}

void sub_1D9149A28(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1D9176C8C();
  v6 = v5;

  *a2 = v4;
  a2[1] = v6;
}

void Date.init(from:)(void *a1)
{
  sub_1D9176DFC();
}

uint64_t sub_1D9149AAC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D9176DFC();

  v6 = *(*(a2 - 8) + 56);

  return v6(a3, 0, 1, a2);
}

uint64_t URL.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  sub_1D917820C();
  sub_1D9176BFC();

  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7))
  {
    sub_1D8E677CC(v6);
    v9 = 1;
  }

  else
  {
    (*(v8 + 32))(a2, v6, v7);
    v9 = 0;
  }

  return (*(v8 + 56))(a2, v9, 1, v7);
}

NSString_optional __swiftcall URL.userDefaultsObject()()
{
  sub_1D9176ACC();
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v0;
}

uint64_t sub_1D9149CA8@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v12 - v7;
  sub_1D917820C();
  sub_1D9176BFC();

  v9 = *(a2 - 8);
  if ((*(v9 + 48))(v8, 1, a2))
  {
    sub_1D8E677CC(v8);
    v10 = 1;
  }

  else
  {
    (*(v9 + 32))(a3, v8, a2);
    v10 = 0;
  }

  return (*(v9 + 56))(a3, v10, 1, a2);
}

uint64_t sub_1D9149DEC()
{
  sub_1D9176ACC();
  v0 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  return v0;
}

uint64_t sub_1D9149EA4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1D8F21A3C();
  sub_1D914A090();
  return sub_1D917843C();
}

uint64_t sub_1D9149F1C@<X0>(uint64_t *a1@<X8>)
{
  result = (*(*(v1 + 24) + 24))(*(v1 + 16));
  *a1 = result;
  return result;
}

uint64_t sub_1D9149F70(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1D9149EA4(a1, a2, a3);
  sub_1D91786FC();
  swift_getWitnessTable();
  return sub_1D9178B5C();
}

unint64_t sub_1D914A090()
{
  result = qword_1ECABB400;
  if (!qword_1ECABB400)
  {
    sub_1D8F21A3C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB400);
  }

  return result;
}

id _UserDefaultsObserver.__allocating_init(for:in:notify:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  *&v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v12;
  v13 = &v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v14 = a4;
  *(v14 + 1) = a5;
  *&v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a3;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

Swift::Void __swiftcall _UserDefaultsObserver.endObserving()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if (v3 == 1)
  {
    v6 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key);
    v7 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8);
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v4 = [objc_opt_self() defaultCenter];
      [v4 removeObserver:v1 name:*MEMORY[0x1E696AA70] object:*(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults)];
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults);
      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v5 removeObserver:v1 forKeyPath:{v4, 46, 0xE100000000000000, v6, v7}];
    }

    os_unfair_lock_lock((v2 + 20));
    *(v2 + 16) = 0;
    os_unfair_lock_unlock((v2 + 20));
  }
}

Swift::Void __swiftcall _UserDefaultsObserver.startObserving()()
{
  v1 = v0;
  v2 = *(v0 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state);
  os_unfair_lock_lock((v2 + 20));
  v3 = *(v2 + 16);
  os_unfair_lock_unlock((v2 + 20));
  if ((v3 & 1) == 0)
  {
    v8 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key);
    v10 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8);
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v4 = [objc_opt_self() defaultCenter];
      [v4 addObserver:v1 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:{*(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults), v6, v7, v9, v11}];
    }

    else
    {
      v5 = *(v1 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults);
      v4 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v5 addObserver:v1 forKeyPath:v4 options:0 context:{&unk_1ECABB408, 46, 0xE100000000000000, v8, v10}];
    }

    os_unfair_lock_lock((v2 + 20));
    *(v2 + 16) = 1;
    os_unfair_lock_unlock((v2 + 20));
  }
}

id _UserDefaultsObserver.init(for:in:notify:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  ObjectType = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  *&v5[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v12;
  v13 = &v5[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v5[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v14 = a4;
  *(v14 + 1) = a5;
  *&v5[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a3;
  v16.receiver = v5;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id _UserDefaultsObserver.__allocating_init<A>(for:in:notify:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v11 = objc_allocWithZone(v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v12 = swift_allocObject();
  *(v12 + 20) = 0;
  *(v12 + 16) = 0;
  *&v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v12;
  v13 = &v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  *v13 = a1;
  *(v13 + 1) = a2;
  v14 = &v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v14 = a4;
  *(v14 + 1) = a5;
  *&v11[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a3;
  v16.receiver = v11;
  v16.super_class = v5;
  return objc_msgSendSuper2(&v16, sel_init);
}

id _UserDefaultsObserver.__deallocating_deinit()
{
  ObjectType = swift_getObjectType();
  _UserDefaultsObserver.endObserving()();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id _UserDefaultsObserver.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D914A8B0(uint64_t result, uint64_t a2, uint64_t a3, void *a4)
{
  if (a4 == &unk_1ECABB408)
  {
    v6 = result;
    v7 = *(v4 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults);
    result = sub_1D8FE89F4(a3, v16);
    v8 = v17;
    if (v17)
    {
      v9 = __swift_project_boxed_opaque_existential_1(v16, v17);
      v10 = *(v8 - 8);
      v11 = MEMORY[0x1EEE9AC00](v9);
      v13 = v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
      (*(v10 + 16))(v13, v11);
      v14 = sub_1D9179AAC();
      (*(v10 + 8))(v13, v8);
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      result = swift_unknownObjectRelease();
      if (v7 == v14)
      {
        if (a2)
        {
          if (*(v4 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key) == v6 && *(v4 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8) == a2)
          {
            return (*(v4 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify))();
          }

          result = sub_1D9179ACC();
          if (result)
          {
            return (*(v4 + OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify))();
          }
        }
      }
    }
  }

  return result;
}

unint64_t sub_1D914AA88()
{
  result = qword_1ECABB430[0];
  if (!qword_1ECABB430[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECABB430);
  }

  return result;
}

unint64_t sub_1D914AADC()
{
  result = qword_1ECAB4018;
  if (!qword_1ECAB4018)
  {
    type metadata accessor for NSKeyValueChangeKey(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB4018);
  }

  return result;
}

uint64_t sub_1D914AB34(uint64_t a1)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    sub_1D914AB8C(result);
  }

  return result;
}

uint64_t sub_1D914AB8C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](a1);
  v6 = &v10[-v5];
  (*(v1 + *(v7 + 96)))(v1 + *(v7 + 88), v4);
  v13 = v2;
  KeyPath = swift_getKeyPath();
  v11 = v1;
  v12 = v6;
  sub_1D914B66C(KeyPath, sub_1D914C090, v10, MEMORY[0x1E69E7CA8] + 8);

  return (*(v3 + 8))(v6, v2);
}

uint64_t UserDefaultsObservable.__allocating_init<A>(for:in:default:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v12 = swift_allocObject();
  v13 = *(v6 + 80);
  *(v12 + 16) = v13;
  *(v12 + 24) = a5;
  *(v12 + 32) = a3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v14 = swift_allocObject();
  v14[2] = v13;
  v14[3] = a5;
  v14[4] = a3;
  v14[5] = a1;
  v14[6] = a2;
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v15 = sub_1D914B9D4(a1, a2, a3, a4, sub_1D914AE38, v12, sub_1D914B010, v14);
  (*(*(v13 - 8) + 8))(a4, v13);
  return v15;
}

{
  v6 = v5;
  v12 = swift_allocObject();
  v13 = *(v6 + 80);
  v14 = *(v13 + 16);
  *(v12 + 16) = v14;
  *(v12 + 24) = a5;
  *(v12 + 32) = a3;
  *(v12 + 40) = a1;
  *(v12 + 48) = a2;
  v15 = swift_allocObject();
  v15[2] = v14;
  v15[3] = a5;
  v15[4] = a3;
  v15[5] = a1;
  v15[6] = a2;
  swift_allocObject();
  swift_bridgeObjectRetain_n();
  v16 = sub_1D914B9D4(a1, a2, a3, a4, sub_1D914BDEC, v12, sub_1D914BDFC, v15);
  (*(*(v13 - 8) + 8))(a4, v13);
  return v16;
}

uint64_t sub_1D914AE94(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v11 = sub_1D91791BC();
  v12 = *(v11 - 8);
  v13.n128_f64[0] = MEMORY[0x1EEE9AC00](v11);
  v15 = &v19 - v14;
  v16 = *(a5 - 8);
  (*(v16 + 16))(&v19 - v14, a1, a5, v13);
  (*(v16 + 56))(v15, 0, 1, a5);

  j___sSo14NSUserDefaultsC18PodcastsFoundationE8setValue_3foryxSg_AC04UserB3KeyVyxGtAC0hB13RepresentableRzlF(v15, a3, a4, a5, a6, v17);

  return (*(v12 + 8))(v15, v11);
}

uint64_t sub_1D914B16C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v12 = sub_1D91791BC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v19 - v14;
  NSUserDefaults.subscript.getter(a2, a3, a4, a5, &v19 - v14);
  v16 = *(a4 - 8);
  v17 = *(v16 + 48);
  if (v17(v15, 1, a4) == 1)
  {
    (*(v13 + 16))(a6, a1, v12);
    result = v17(v15, 1, a4);
    if (result != 1)
    {
      return (*(v13 + 8))(v15, v12);
    }
  }

  else
  {
    (*(v16 + 32))(a6, v15, a4);
    return (*(v16 + 56))(a6, 0, 1, a4);
  }

  return result;
}

uint64_t *UserDefaultsObservable.deinit()
{
  v1 = v0;
  v2 = *v0;
  v3 = *v0;
  v4 = *(*v0 + 112);
  v5 = *(v0 + v4);
  if (v5)
  {
    v6 = v5;
    _UserDefaultsObserver.endObserving()();

    v2 = *v1;
  }

  (*(*(*(v3 + 80) - 8) + 8))(v1 + *(v2 + 88));

  v7 = *(*v1 + 128);
  v8 = sub_1D917709C();
  (*(*(v8 - 8) + 8))(v1 + v7, v8);
  return v1;
}

uint64_t UserDefaultsObservable.__deallocating_deinit()
{
  UserDefaultsObservable.deinit();

  return swift_deallocClassInstance();
}

void UserDefaultsObservable.value.getter(uint64_t a1@<X8>)
{
  KeyPath = swift_getKeyPath();
  sub_1D914B744(KeyPath);

  OSAllocatedUnfairLock.current.getter(*(v1 + *(*v1 + 120)), a1);
}

uint64_t UserDefaultsObservable.value.setter(uint64_t a1)
{
  v3 = *v1;
  sub_1D914BE78(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

void (*UserDefaultsObservable.value.modify(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*v1 + 80);
  v4[1] = v6;
  v7 = *(v6 - 8);
  v4[2] = v7;
  v8 = *(v7 + 64);
  if (v3)
  {
    v4[3] = swift_coroFrameAlloc();
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v4[3] = malloc(v8);
    v9 = malloc(v8);
  }

  v5[4] = v9;
  UserDefaultsObservable.value.getter(v9);
  return sub_1D914B8F8;
}

void sub_1D914B8F8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 32);
  v5 = *(*a1 + 8);
  v6 = *(*a1 + 16);
  if (a2)
  {
    (*(v6 + 16))(*(*a1 + 24), v4, v5);
    sub_1D914BE78(v3);
    v7 = *(v6 + 8);
    v7(v3, v5);
    v7(v4, v5);
  }

  else
  {
    sub_1D914BE78(*(*a1 + 32));
    (*(v6 + 8))(v4, v5);
  }

  free(v4);
  free(v3);

  free(v2);
}

uint64_t sub_1D914B9D4(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, void (*a5)(uint64_t), void (*a6)(uint64_t), uint64_t a7, uint64_t a8)
{
  v9 = v8;
  v41 = a1;
  v42 = a2;
  v16 = *(*v9 + 80);
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v19 = &v41 - v18;
  *(v9 + *(v20 + 112)) = 0;
  sub_1D917708C();
  (*(v17 + 16))(v9 + *(*v9 + 88), a4, v16);
  v21 = (v9 + *(*v9 + 96));
  *v21 = a5;
  v21[1] = a6;
  v22 = (v9 + *(*v9 + 104));
  *v22 = a7;
  v22[1] = a8;

  a5(a4);
  v23 = sub_1D8D07908(v19, v16);
  (*(v17 + 8))(v19, v16);
  *(v9 + *(*v9 + 120)) = v23;
  v24 = swift_allocObject();
  swift_weakInit();
  v25 = swift_allocObject();
  *(v25 + 16) = v16;
  *(v25 + 24) = v24;
  v26 = type metadata accessor for _UserDefaultsObserver();
  v27 = objc_allocWithZone(v26);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB368, qword_1D91BC490);
  v28 = swift_allocObject();
  *(v28 + 20) = 0;
  *(v28 + 16) = 0;
  *&v27[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state] = v28;
  v29 = &v27[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
  v30 = v42;
  *v29 = v41;
  v29[1] = v30;
  v31 = &v27[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_notify];
  *v31 = sub_1D914C088;
  v31[1] = v25;
  *&v27[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults] = a3;
  v47.receiver = v27;
  v47.super_class = v26;
  v32 = a3;
  v33 = objc_msgSendSuper2(&v47, sel_init);
  v34 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_state];
  os_unfair_lock_lock((v34 + 20));
  LOBYTE(v26) = *(v34 + 16);
  os_unfair_lock_unlock((v34 + 20));
  if ((v26 & 1) == 0)
  {
    v35 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key + 8];
    v45 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_key];
    v46 = v35;
    v43 = 46;
    v44 = 0xE100000000000000;
    sub_1D8D447DC();
    if (sub_1D917926C())
    {
      v36 = [objc_opt_self() defaultCenter];
      [v36 addObserver:v33 selector:sel_userDefaultsDidChange_ name:*MEMORY[0x1E696AA70] object:{*&v33[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults], v41, v42}];
    }

    else
    {
      v37 = *&v33[OBJC_IVAR____TtC18PodcastsFoundation21_UserDefaultsObserver_userDefaults];
      v36 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      [v37 addObserver:v33 forKeyPath:v36 options:0 context:{&unk_1ECABB408, v41, v42}];
    }

    os_unfair_lock_lock((v34 + 20));
    *(v34 + 16) = 1;
    os_unfair_lock_unlock((v34 + 20));
  }

  v38 = *(*v9 + 112);
  v39 = *(v9 + v38);
  *(v9 + v38) = v33;

  return v9;
}

double sub_1D914BDFC(uint64_t a1)
{
  v3 = v1[2];
  v4 = v1[3];
  v5 = v1[5];
  v6 = v1[6];

  j___sSo14NSUserDefaultsC18PodcastsFoundationE8setValue_3foryxSg_AC04UserB3KeyVyxGtAC0hB13RepresentableRzlF(a1, v5, v6, v3, v4, v7);

  return result;
}

uint64_t sub_1D914BE78(uint64_t a1)
{
  v8 = *(*v1 + 80);
  KeyPath = swift_getKeyPath();
  v6 = v1;
  v7 = a1;
  sub_1D914B66C(KeyPath, sub_1D914C05C, &v5, MEMORY[0x1E69E7CA8] + 8);

  return (*(v1 + *(*v1 + 104)))(a1);
}

uint64_t sub_1D914BF34(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = sub_1D917709C();
    if (v3 <= 0x3F)
    {
      result = swift_initClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

void sub_1D914C0BC(void (*a1)(uint64_t))
{
  v2 = *(v1 + 16);
  v3 = *(v1 + 24);
  v4 = *(v2 + *(*v2 + 120));
  v5[2] = *(*v2 + 80);
  v5[3] = v3;
  sub_1D8D056BC(a1, v5, v4);
}

float PlaybackSettingsDefaults.playbackRateGlobalValue.getter()
{
  swift_getObjectType();
  v0 = sub_1D91466F8();
  if (v0)
  {
    v1 = v0;
    v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v1 doubleForKey_];
    v4 = v3;

    v5 = v4;
    v6 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(v5);
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0D98);
    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v24 = v11;
      *v10 = 136315650;
      v12 = sub_1D9179FEC();
      v14 = sub_1D8CFA924(v12, v13, &v24);

      *(v10 + 4) = v14;
      *(v10 + 12) = 2048;
      *(v10 + 14) = v4;
      *(v10 + 22) = 2048;
      *(v10 + 24) = v6;
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[%s] Getting raw playbackRateGlobalValue: %f, clamping to %f", v10, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0D98);
    v16 = sub_1D917741C();
    v17 = sub_1D9178CFC();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v19 = swift_slowAlloc();
      v24 = v19;
      *v18 = 136315138;
      v20 = sub_1D9179FEC();
      v22 = sub_1D8CFA924(v20, v21, &v24);

      *(v18 + 4) = v22;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "[%s] Could not get MPPlaybackUserDefaults, returning standard rate", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      MEMORY[0x1DA72CB90](v19, -1, -1);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    return 1.0;
  }

  return v6;
}

id PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter()
{
  swift_getObjectType();
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v1 = [v0 BOOLForKey_];

  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0D98);
  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    v7 = sub_1D9179FEC();
    v9 = sub_1D8CFA924(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    if (v1)
    {
      v10 = 5457241;
    }

    else
    {
      v10 = 20302;
    }

    if (v1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_1D8CFA924(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "[%s] Getting global enhance dialogue enabled value of %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v6, -1, -1);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  return v1;
}

void PlaybackSettingsDefaults.playbackRateGlobalValue.setter(float a1)
{
  swift_getObjectType();
  v2 = sub_1D91466F8();
  if (v2)
  {
    v3 = v2;
    v4 = _s18PodcastsFoundation18PlaybackRateHelperC07clampedD0yS2fFZ_0(a1);
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v5 = sub_1D917744C();
    __swift_project_value_buffer(v5, qword_1ECAB0D98);
    v6 = sub_1D917741C();
    v7 = sub_1D9178D1C();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      v9 = swift_slowAlloc();
      v22 = v9;
      *v8 = 136315650;
      v10 = sub_1D9179FEC();
      v12 = sub_1D8CFA924(v10, v11, &v22);

      *(v8 + 4) = v12;
      *(v8 + 12) = 2048;
      *(v8 + 14) = a1;
      *(v8 + 22) = 2048;
      v13 = v4;
      *(v8 + 24) = v4;
      _os_log_impl(&dword_1D8CEC000, v6, v7, "[%s] Received playbackRateGlobalValue %f, clamping to %f. Setting to clamped value", v8, 0x20u);
      __swift_destroy_boxed_opaque_existential_1Tm(v9);
      MEMORY[0x1DA72CB90](v9, -1, -1);
      MEMORY[0x1DA72CB90](v8, -1, -1);
    }

    else
    {

      v13 = v4;
    }

    oslog = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    [v3 setDouble:oslog forKey:v13];
  }

  else
  {
    if (qword_1ECAB0D90 != -1)
    {
      swift_once();
    }

    v14 = sub_1D917744C();
    __swift_project_value_buffer(v14, qword_1ECAB0D98);
    oslog = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(oslog, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      v22 = v17;
      *v16 = 136315138;
      v18 = sub_1D9179FEC();
      v20 = sub_1D8CFA924(v18, v19, &v22);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8CEC000, oslog, v15, "[%s] Could not get MPPlaybackUserDefaults, returning standard rate", v16, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v17);
      MEMORY[0x1DA72CB90](v17, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }
  }
}

void PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.setter(char a1)
{
  swift_getObjectType();
  if (qword_1ECAB0D90 != -1)
  {
    swift_once();
  }

  v2 = sub_1D917744C();
  __swift_project_value_buffer(v2, qword_1ECAB0D98);
  v3 = sub_1D917741C();
  v4 = sub_1D9178D1C();
  if (os_log_type_enabled(v3, v4))
  {
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v14 = v6;
    *v5 = 136315394;
    v7 = sub_1D9179FEC();
    v9 = sub_1D8CFA924(v7, v8, &v14);

    *(v5 + 4) = v9;
    *(v5 + 12) = 2080;
    if (a1)
    {
      v10 = 5457241;
    }

    else
    {
      v10 = 20302;
    }

    if (a1)
    {
      v11 = 0xE300000000000000;
    }

    else
    {
      v11 = 0xE200000000000000;
    }

    v12 = sub_1D8CFA924(v10, v11, &v14);

    *(v5 + 14) = v12;
    _os_log_impl(&dword_1D8CEC000, v3, v4, "[%s] Setting global enhance dialogue enabled value to %s", v5, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v6, -1, -1);
    MEMORY[0x1DA72CB90](v5, -1, -1);
  }

  v13 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  [v13 setBool:a1 & 1 forKey:@"kMTAdvancedPlaybackSettingsEnhanceDialogueEnabledKey"];
}

id static PlaybackSettingsDefaults.shared.getter()
{
  if (qword_1ECAB1988 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1990;

  return v1;
}

id sub_1D914CBCC()
{
  result = [objc_allocWithZone(type metadata accessor for PlaybackSettingsDefaults()) init];
  qword_1ECAB1990 = result;
  return result;
}

id PlaybackSettingsDefaults.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void (*PlaybackSettingsDefaults.playbackRateGlobalValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = PlaybackSettingsDefaults.playbackRateGlobalValue.getter();
  return sub_1D914CD68;
}

void (*PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.modify(uint64_t a1))(uint64_t a1)
{
  *a1 = v1;
  *(a1 + 8) = PlaybackSettingsDefaults.enhanceDialogueEnabledGlobalValue.getter() & 1;
  return sub_1D914CE64;
}

id PlaybackSettingsDefaults.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PlaybackSettingsDefaults.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D914CF40(uint64_t (*a1)(void))
{
  a1();

  return sub_1D9179FEC();
}

id AnalyticsEvent.__allocating_init(name:payload:)(void *a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  v6 = swift_allocObject();
  *(v6 + 16) = a2;
  v10[4] = sub_1D8D0F108;
  v10[5] = v6;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D8D6F198;
  v10[3] = &block_descriptor_97;
  v7 = _Block_copy(v10);

  v8 = [v5 initWithName:a1 generator:v7];

  _Block_release(v7);
  return v8;
}

uint64_t sub_1D914D0CC()
{
  v1 = (v0 + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1D914D1B8(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

uint64_t sub_1D914D218@<X0>(void *a1@<X0>, uint64_t (**a2)@<X0>(uint64_t *a1@<X8>)@<X8>)
{
  v3 = (*a1 + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  v5 = *v3;
  v4 = v3[1];
  v6 = swift_allocObject();
  *(v6 + 16) = v5;
  *(v6 + 24) = v4;
  *a2 = sub_1D914DA68;
  a2[1] = v6;
}

uint64_t sub_1D914D2A4(uint64_t *a1, void *a2)
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;
  v6 = (*a2 + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  *v6 = sub_1D914DA30;
  v6[1] = v5;
}

id AnalyticsEvent.__allocating_init(name:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  *&v7[OBJC_IVAR___PFAnalyticsEvent_name] = a1;
  v8 = &v7[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v8 = a2;
  *(v8 + 1) = a3;
  v10.receiver = v7;
  v10.super_class = v3;
  return objc_msgSendSuper2(&v10, sel_init);
}

id AnalyticsEvent.init(name:generator:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *&v3[OBJC_IVAR___PFAnalyticsEvent_name] = a1;
  v4 = &v3[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v4 = a2;
  *(v4 + 1) = a3;
  v6.receiver = v3;
  v6.super_class = type metadata accessor for AnalyticsEvent();
  return objc_msgSendSuper2(&v6, sel_init);
}

id AnalyticsEvent.init(name:payload:)(void *a1, uint64_t a2)
{
  v5 = swift_allocObject();
  *(v5 + 16) = a2;
  v9[4] = sub_1D914DA9C;
  v9[5] = v5;
  v9[0] = MEMORY[0x1E69E9820];
  v9[1] = 1107296256;
  v9[2] = sub_1D8D6F198;
  v9[3] = &block_descriptor_7_2;
  v6 = _Block_copy(v9);

  v7 = [v2 initWithName:a1 generator:v6];

  _Block_release(v6);
  return v7;
}

unint64_t sub_1D914D770()
{
  sub_1D917946C();

  v1 = sub_1D917820C();
  MEMORY[0x1DA7298F0](v1);

  MEMORY[0x1DA7298F0](0x64616F6C7961500ALL, 0xEA0000000000203ALL);
  v2 = (v0 + OBJC_IVAR___PFAnalyticsEvent_payloadGenerator);
  swift_beginAccess();
  v3 = *v2;

  v3(v4);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB4C8, qword_1D91BC670);
  v5 = sub_1D917826C();
  MEMORY[0x1DA7298F0](v5);

  return 0xD000000000000011;
}

id AnalyticsEvent.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AnalyticsEvent.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AnalyticsEvent();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D914DA68@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 16))();
  *a1 = result;
  return result;
}

id static AnalyticsEvent.globalRetentionPolicy.getter()
{
  v0 = type metadata accessor for AnalyticsEvent();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  v2 = &v1[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v2 = sub_1D8D6F298;
  v2[1] = 0;
  v5.receiver = v1;
  v5.super_class = v0;
  v3 = @"com.apple.podcasts.downloads.settings.global.retention-policy";
  return objc_msgSendSuper2(&v5, sel_init);
}

id static AnalyticsEvent.episodeMissingDownload()()
{
  v0 = sub_1D8D6F4B4(MEMORY[0x1E69E7CC0]);
  v1 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v2 = swift_allocObject();
  *(v2 + 16) = v0;
  v6[4] = sub_1D8E81910;
  v6[5] = v2;
  v6[0] = MEMORY[0x1E69E9820];
  v6[1] = 1107296256;
  v6[2] = sub_1D8D6F198;
  v6[3] = &block_descriptor_98;
  v3 = _Block_copy(v6);

  v4 = [v1 initWithName:@"com.apple.podcastsEpisodeMissingAsset" generator:v3];
  _Block_release(v3);
  return v4;
}

id static AnalyticsEvent.drmKeyRecovered(payload:)(uint64_t a1)
{
  v2 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v3 = swift_allocObject();
  *(v3 + 16) = a1;
  v7[4] = sub_1D914F044;
  v7[5] = v3;
  v7[0] = MEMORY[0x1E69E9820];
  v7[1] = 1107296256;
  v7[2] = sub_1D8D6F198;
  v7[3] = &block_descriptor_7_3;
  v4 = _Block_copy(v7);

  v5 = [v2 initWithName:@"com.apple.podcasts.DRMKeysRecovered" generator:v4];
  _Block_release(v4);
  return v5;
}

uint64_t sub_1D914DD4C(uint64_t a1)
{
  v1 = (*(a1 + 16))();
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1D8D6F530();
  v3 = sub_1D917805C();

  return v3;
}

id static AnalyticsEvent.drmKeyRecovered(generator:)(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for AnalyticsEvent();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PFAnalyticsEvent_name] = @"com.apple.podcasts.DRMKeysRecovered";
  v6 = &v5[OBJC_IVAR___PFAnalyticsEvent_payloadGenerator];
  *v6 = a1;
  *(v6 + 1) = a2;
  v9.receiver = v5;
  v9.super_class = v4;
  v7 = @"com.apple.podcasts.DRMKeysRecovered";

  return objc_msgSendSuper2(&v9, sel_init);
}

id AnalyticsEvent.__allocating_init(cacheDeletedMediaFiles:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x45646574656C6564;
  *(inited + 40) = 0xEF7365646F736970;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v4 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  sub_1D8D6F4C8(inited + 32);
  v5 = objc_allocWithZone(v1);
  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  aBlock[4] = sub_1D914F044;
  aBlock[5] = v6;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_14_2;
  v7 = _Block_copy(aBlock);

  v8 = [v5 initWithName:@"com.apple.podcasts.mediaFilesCacheDeleted" generator:v7];
  _Block_release(v7);
  return v8;
}

id AnalyticsEvent.__allocating_init(cacheDeletedFilesRestored:failed:)(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001D91D8DA0;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  strcpy((inited + 56), "failedEpisodes");
  *(inited + 71) = -18;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithInteger_];
  v6 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v7 = objc_allocWithZone(v2);
  v8 = swift_allocObject();
  *(v8 + 16) = v6;
  v12[4] = sub_1D914F044;
  v12[5] = v8;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8D6F198;
  v12[3] = &block_descriptor_21_3;
  v9 = _Block_copy(v12);

  v10 = [v7 initWithName:@"com.apple.podcasts.cacheDeleteRedownloaded" generator:v9];
  _Block_release(v9);
  return v10;
}

id _s18PodcastsFoundation14AnalyticsEventC25transcriptAlignmentFailed6reasonACSS_tFZ_0()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189080;
  *(inited + 32) = 0x6E6F73616572;
  *(inited + 40) = 0xE600000000000000;
  *(inited + 48) = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v1 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  sub_1D8D6F4C8(inited + 32);
  v2 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v3 = swift_allocObject();
  *(v3 + 16) = v1;
  aBlock[4] = sub_1D914F044;
  aBlock[5] = v3;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_66_2;
  v4 = _Block_copy(aBlock);

  v5 = [v2 initWithName:@"com.apple.podcasts.transcriptAlignmentFailed" generator:v4];
  _Block_release(v4);
  return v5;
}

id _s18PodcastsFoundation14AnalyticsEventC31downloadedFileHasiPodLibraryURL14discoveryPoint4path6sourceACSS_S2SSgtFZ_0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0x7265766F63736944;
  *(inited + 40) = 0xEF746E696F502079;
  *(inited + 48) = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  *(inited + 56) = 1752457552;
  *(inited + 64) = 0xE400000000000000;
  *(inited + 72) = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  *(inited + 80) = 0x656372756F53;
  *(inited + 88) = 0xE600000000000000;

  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  *(inited + 96) = v7;
  v8 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  aBlock[4] = sub_1D914F044;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_59_0;
  v11 = _Block_copy(aBlock);

  v12 = [v9 initWithName:@"com.apple.podcasts.DownloadedFileHasiPodLibraryURL" generator:v11];
  _Block_release(v11);
  return v12;
}

id _s18PodcastsFoundation14AnalyticsEventC25episodeDurationComparison0E6AdamId8durationACs5Int64V_SdtFZ_0(uint64_t a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  strcpy((inited + 32), "episodeAdamId");
  *(inited + 46) = -4864;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  *(inited + 56) = 0x4465646F73697065;
  *(inited + 64) = 0xEF6E6F6974617275;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v11[4] = sub_1D914F044;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D6F198;
  v11[3] = &block_descriptor_52_0;
  v8 = _Block_copy(v11);

  v9 = [v6 initWithName:@"com.apple.podcasts.dynamicAdAssessmentByEpisode" generator:v8];
  _Block_release(v8);
  return v9;
}

id _s18PodcastsFoundation14AnalyticsEventC25episodeDurationComparison012mapiProvidedF0010playerItemF0ACSd_SdtFZ_0(double a1, double a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = 0xD000000000000014;
  *(inited + 40) = 0x80000001D91D8E60;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0xD000000000000012;
  *(inited + 64) = 0x80000001D91D8E80;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v5 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v6 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v7 = swift_allocObject();
  *(v7 + 16) = v5;
  v11[4] = sub_1D914F044;
  v11[5] = v7;
  v11[0] = MEMORY[0x1E69E9820];
  v11[1] = 1107296256;
  v11[2] = sub_1D8D6F198;
  v11[3] = &block_descriptor_45_1;
  v8 = _Block_copy(v11);

  v9 = [v6 initWithName:@"com.apple.podcasts.dynamicAdAssessmentByDurationComparison" generator:v8];
  _Block_release(v8);
  return v9;
}

id _s18PodcastsFoundation14AnalyticsEventC19darkDownloadsChange7wasDark02isI06reason12previousExitACSb_SbSo06PFDarkG6ReasonV0B04DateVtFZ_0(char a1, char a2, uint64_t a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918B210;
  *(inited + 32) = 0x6B726144736177;
  *(inited + 40) = 0xE700000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 56) = 0x6B7261447369;
  *(inited + 64) = 0xE600000000000000;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithBool_];
  *(inited + 80) = 0x656372756F73;
  *(inited + 88) = 0xE600000000000000;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedInteger_];
  *(inited + 104) = 0xD000000000000010;
  *(inited + 112) = 0x80000001D91D8E40;
  sub_1D9176DCC();
  *(inited + 120) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  v8 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v9 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v10 = swift_allocObject();
  *(v10 + 16) = v8;
  v14[4] = sub_1D914F044;
  v14[5] = v10;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8D6F198;
  v14[3] = &block_descriptor_38_3;
  v11 = _Block_copy(v14);

  v12 = [v9 initWithName:@"com.apple.podcasts.darkDownloadChange" generator:v11];
  _Block_release(v11);
  return v12;
}

id ApplicationStateMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

void sub_1D914F094()
{
  v2 = *v1;
  v3 = *v1;

  if (v0)
  {
  }

  else
  {
    v4 = *(v2 + 80);

    swift_setDeallocating();
    type metadata accessor for Name(0);
    swift_arrayDestroy();
    v5 = *(v3 + 8);

    v5();
  }
}

Swift::Void __swiftcall ApplicationStateMonitor.endListening()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_listenerTask);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_1D917891C();
  }

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

uint64_t ApplicationStateMonitor.currentState()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2;
}

Swift::Bool __swiftcall ApplicationStateMonitor.isActive()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2 == 1;
}

Swift::Bool __swiftcall ApplicationStateMonitor.isBackground()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2 == 2;
}

Swift::Bool __swiftcall ApplicationStateMonitor.isUnknown()()
{
  v1 = *(v0 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v1 + 24));
  v2 = *(v1 + 16);
  os_unfair_lock_unlock((v1 + 24));
  return v2 == 0;
}

void ApplicationStateMonitor.update(state:)(uint64_t a1)
{
  v3 = *(v1 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v3 + 24));
  *(v3 + 16) = a1;

  os_unfair_lock_unlock((v3 + 24));
}

uint64_t static ApplicationStateMonitor.description(for:)(uint64_t a1)
{
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0x756F72676B636142;
    }

    if (a1 == 3)
    {
      return 0x6576697463616E49;
    }
  }

  else
  {
    if (!a1)
    {
      return 0x6E776F6E6B6E55;
    }

    if (a1 == 1)
    {
      return 0x657669746341;
    }
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

uint64_t sub_1D914F6CC(uint64_t a1, uint64_t a2)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1D914F6EC, 0, 0);
}

uint64_t sub_1D914F6EC()
{
  v1 = sub_1D917667C();
  sub_1D914F768(v1);

  v2 = *(v0 + 8);

  return v2();
}

void sub_1D914F768(void *a1)
{
  v3 = sub_1D917820C();
  v5 = v4;
  if (v3 == sub_1D917820C() && v5 == v6)
  {

    goto LABEL_16;
  }

  v8 = sub_1D9179ACC();

  if (v8)
  {
LABEL_16:
    v24 = *(v1 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
    os_unfair_lock_lock((v24 + 24));
    v25 = 1;
    goto LABEL_17;
  }

  v9 = sub_1D917820C();
  v11 = v10;
  if (v9 == sub_1D917820C() && v11 == v12)
  {
  }

  else
  {
    v14 = sub_1D9179ACC();

    if ((v14 & 1) == 0)
    {
      if (qword_1ECAB3518 != -1)
      {
        swift_once();
      }

      v15 = sub_1D917744C();
      __swift_project_value_buffer(v15, qword_1ECAB7870);
      v16 = a1;
      oslog = sub_1D917741C();
      v17 = sub_1D9178CFC();

      if (os_log_type_enabled(oslog, v17))
      {
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v27 = v19;
        *v18 = 136315138;
        type metadata accessor for Name(0);
        v20 = v16;
        v21 = sub_1D917826C();
        v23 = sub_1D8CFA924(v21, v22, &v27);

        *(v18 + 4) = v23;
        _os_log_impl(&dword_1D8CEC000, oslog, v17, "Application monitor received unknown notification: %s", v18, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v19);
        MEMORY[0x1DA72CB90](v19, -1, -1);
        MEMORY[0x1DA72CB90](v18, -1, -1);
      }

      else
      {
      }

      return;
    }
  }

  v24 = *(v1 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
  os_unfair_lock_lock((v24 + 24));
  v25 = 2;
LABEL_17:
  *(v24 + 16) = v25;

  os_unfair_lock_unlock((v24 + 24));
}

id ApplicationStateMonitor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D914FAEC()
{
  result = qword_1ECABB4F0;
  if (!qword_1ECABB4F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB4F0);
  }

  return result;
}

uint64_t sub_1D914FB40(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1D8D58924;

  return sub_1D914F6CC(a1, v4);
}

id BugReport.__allocating_init(domain:system:errorKind:forceSubmissionAttempt:)(uint64_t a1, _BYTE *a2, char *a3, char a4)
{
  v8 = objc_allocWithZone(v4);
  v9 = *a3;
  v8[OBJC_IVAR___PFBugReport_system] = *a2;
  v8[OBJC_IVAR___PFBugReport_errorKind] = v9;
  v8[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = a4;
  v11.receiver = v8;
  v11.super_class = v4;
  return objc_msgSendSuper2(&v11, sel_init);
}

unint64_t sub_1D914FDE0()
{
  result = 0xD000000000000019;
  v2 = *(v0 + OBJC_IVAR___PFBugReport_errorKind);
  if (v2 <= 3)
  {
    if (*(v0 + OBJC_IVAR___PFBugReport_errorKind) <= 1u)
    {
      return 0xD000000000000012;
    }
  }

  else if (*(v0 + OBJC_IVAR___PFBugReport_errorKind) <= 5u)
  {
    if (v2 == 4)
    {
      return 0xD000000000000011;
    }
  }

  else if (v2 == 6)
  {
    return 0xD000000000000015;
  }

  else if (v2 == 7)
  {
    return 0xD00000000000001FLL;
  }

  else
  {
    return 0xD000000000000017;
  }

  return result;
}

unint64_t BugReport.ErrorKind.rawValue.getter()
{
  v1 = 0xD000000000000019;
  v2 = *v0;
  if (v2 <= 3)
  {
    if (*v0 <= 1u)
    {
      return 0xD000000000000012;
    }

    else
    {
      return 0xD000000000000019;
    }
  }

  else
  {
    v3 = 0xD000000000000015;
    v4 = 0xD00000000000001FLL;
    if (v2 != 7)
    {
      v4 = 0xD000000000000017;
    }

    if (v2 != 6)
    {
      v3 = v4;
    }

    if (v2 == 4)
    {
      v1 = 0xD000000000000011;
    }

    if (*v0 <= 5u)
    {
      return v1;
    }

    else
    {
      return v3;
    }
  }
}

id BugReport.init(domain:system:errorKind:forceSubmissionAttempt:)(uint64_t a1, _BYTE *a2, char *a3, char a4)
{
  v5 = *a3;
  v4[OBJC_IVAR___PFBugReport_system] = *a2;
  v4[OBJC_IVAR___PFBugReport_errorKind] = v5;
  v4[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = a4;
  v7.receiver = v4;
  v7.super_class = type metadata accessor for BugReport();
  return objc_msgSendSuper2(&v7, sel_init);
}

uint64_t sub_1D91500D8()
{
  v1 = 0xD000000000000019;
  v2 = PodcastsSystem.rawValue.getter();
  MEMORY[0x1DA7298F0](v2);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  v3 = *(v0 + OBJC_IVAR___PFBugReport_errorKind);
  if (v3 <= 3)
  {
    if (*(v0 + OBJC_IVAR___PFBugReport_errorKind) > 1u)
    {
      if (v3 == 2)
      {
        v5 = "DeletedSecureKeyWithAsset";
      }

      else
      {
        v5 = "MissingFairPlayOfflineKey";
      }
    }

    else
    {
      v1 = 0xD000000000000012;
      if (*(v0 + OBJC_IVAR___PFBugReport_errorKind))
      {
        v5 = "ExcessiveDownloads";
      }

      else
      {
        v5 = "DuplicateDownloads";
      }
    }

    goto LABEL_18;
  }

  if (*(v0 + OBJC_IVAR___PFBugReport_errorKind) <= 5u)
  {
    if (v3 == 4)
    {
      v4 = "MissingFairPlayOfflineKey";
      v1 = 0xD000000000000011;
      goto LABEL_19;
    }

    v5 = "DownloadediPodLibraryFile";
LABEL_18:
    v4 = v5 - 32;
    goto LABEL_19;
  }

  if (v3 == 6)
  {
    v4 = "DownloadediPodLibraryFile";
    v1 = 0xD000000000000015;
  }

  else if (v3 == 7)
  {
    v4 = "PotentialSyncDataLoss";
    v1 = 0xD00000000000001FLL;
  }

  else
  {
    v4 = "ReadOnlyDeviceMakingSyncChanges";
    v1 = 0xD000000000000017;
  }

LABEL_19:
  MEMORY[0x1DA7298F0](v1, v4 | 0x8000000000000000);

  return 0x7374736163646F50;
}

id BugReport.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id BugReport.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for BugReport();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void BugReport.Domain.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D915037C()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D91503E8(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D9150438(BOOL *a2@<X8>)
{
  v3 = sub_1D917980C();

  *a2 = v3 != 0;
}

PodcastsFoundation::BugReport::ErrorKind_optional __swiftcall BugReport.ErrorKind.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D917980C();

  v5 = 9;
  if (v3 < 9)
  {
    v5 = v3;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D9150508()
{
  result = qword_1ECABB518;
  if (!qword_1ECABB518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB518);
  }

  return result;
}

unint64_t sub_1D915056C()
{
  result = qword_1ECABB520;
  if (!qword_1ECABB520)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB520);
  }

  return result;
}

uint64_t sub_1D91505C0()
{
  v1 = *v0;
  sub_1D9179DBC();
  sub_1D8ECA904(v3, v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D9150610(uint64_t a1)
{
  v2 = *v1;
  sub_1D9179DBC();
  sub_1D8ECA904(v4, v2);
  return sub_1D9179E1C();
}

unint64_t sub_1D9150660@<X0>(unint64_t *a1@<X8>)
{
  result = BugReport.ErrorKind.rawValue.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void PFAutoBugCaptureBugReporter.prepare(bugReport:maximumFrequency:checkBlock:)(uint64_t a1, char *a2, uint64_t a3, uint64_t a4)
{
  v6 = *a2;
  if (a3)
  {
    v8[4] = a3;
    v8[5] = a4;
    v8[0] = MEMORY[0x1E69E9820];
    v8[1] = 1107296256;
    v8[2] = sub_1D91509C0;
    v8[3] = &block_descriptor_99;
    v7 = _Block_copy(v8);
  }

  else
  {
    v7 = 0;
  }

  [v4 submitBugReport:a1 userInfo:v7 withMaximumSubmissionCadence:dbl_1D91BCB30[v6]];
  _Block_release(v7);
}

PodcastsFoundation::BugReportFrequency_optional __swiftcall BugReportFrequency.init(rawValue:)(Swift::Int rawValue)
{
  v2 = 3;
  if (rawValue < 3)
  {
    v2 = rawValue;
  }

  *v1 = v2;
  return rawValue;
}

uint64_t PFAutoBugCaptureBugReporter.submit(bugReport:maximumFrequency:userInfo:)(uint64_t a1, char *a2, uint64_t a3)
{
  v6 = *a2;
  v7 = swift_allocObject();
  *(v7 + 16) = a3;
  v10[4] = sub_1D9150A54;
  v10[5] = v7;
  v10[0] = MEMORY[0x1E69E9820];
  v10[1] = 1107296256;
  v10[2] = sub_1D91509C0;
  v10[3] = &block_descriptor_3;
  v8 = _Block_copy(v10);

  [v3 submitBugReport:a1 userInfo:v8 withMaximumSubmissionCadence:dbl_1D91BCB30[v6]];
  _Block_release(v8);
}

uint64_t sub_1D91509C0(uint64_t a1, void *aBlock)
{
  v2 = *(a1 + 32);
  v3 = _Block_copy(aBlock);
  v4 = swift_allocObject();
  *(v4 + 16) = v3;

  v2(sub_1D9150EEC, v4);
}

id PFBugReporterBridge.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id PFBugReporterBridge.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id PFBugReporterBridge.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9150CB0(char a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = type metadata accessor for BugReport();
  v8 = objc_allocWithZone(v7);
  v8[OBJC_IVAR___PFBugReport_system] = 23;
  v8[OBJC_IVAR___PFBugReport_errorKind] = a1;
  v8[OBJC_IVAR___PFBugReport_forceSubmissionAttempt] = 0;
  v16.receiver = v8;
  v16.super_class = v7;
  v9 = objc_msgSendSuper2(&v16, sel_init);
  v10 = [objc_opt_self() sharedInstance];
  v11 = sub_1D8D653BC(MEMORY[0x1E69E7CC0]);
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  v15[4] = a3;
  v15[5] = v12;
  v15[0] = MEMORY[0x1E69E9820];
  v15[1] = 1107296256;
  v15[2] = sub_1D91509C0;
  v15[3] = a4;
  v13 = _Block_copy(v15);

  [v10 submitBugReport:v9 userInfo:v13 withMaximumSubmissionCadence:3600.0];
  _Block_release(v13);
}

unint64_t sub_1D9150E3C()
{
  result = qword_1ECABB528;
  if (!qword_1ECABB528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB528);
  }

  return result;
}

void sub_1D9150EEC(uint64_t a1)
{
  v2 = *(v1 + 16);
  v3 = sub_1D917802C();
  (*(v2 + 16))(v2, v3);
}

Swift::Void __swiftcall StorageAnalyticsResponder.endObserving()()
{
  v1 = *(v0 + 16);
  os_unfair_lock_lock((v1 + 24));
  if (*(v1 + 16))
  {
    sub_1D917785C();
  }

  *(v1 + 16) = 0;

  os_unfair_lock_unlock((v1 + 24));
}

void sub_1D9150FD0(void *a1, void *a2)
{
  v3 = a1[2];
  v4 = a1[3];
  v5 = a1[4];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6C30, &qword_1D9194988);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189060;
  *(inited + 32) = 0xD000000000000012;
  *(inited + 40) = 0x80000001D91D9020;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(inited + 56) = 0xD000000000000016;
  *(inited + 64) = 0x80000001D91D9040;
  *(inited + 72) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  *(inited + 80) = 0xD000000000000013;
  *(inited + 88) = 0x80000001D91CCF50;
  *(inited + 96) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithUnsignedLongLong_];
  v7 = sub_1D8E26F30(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C38, &unk_1D9194990);
  swift_arrayDestroy();
  sub_1D90535C0(v7);
  v9 = v8;

  v10 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v11 = swift_allocObject();
  *(v11 + 16) = v9;
  aBlock[4] = sub_1D8E81910;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8D6F198;
  aBlock[3] = &block_descriptor_100;
  v12 = _Block_copy(aBlock);

  v13 = [v10 initWithName:@"com.apple.podcasts.downloads.media.storage.usage" generator:v12];
  _Block_release(v12);
  [a2 sendEvent_];
}

unint64_t sub_1D915122C()
{
  result = qword_1ECAB01F8;
  if (!qword_1ECAB01F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6A48, &qword_1D9194350);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB01F8);
  }

  return result;
}

unint64_t StorageSpace.init(megabytes:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result >> 54)
  {
    __break(1u);
  }

  else if (!(result >> 44))
  {
    *a2 = result << 20;
    return result;
  }

  __break(1u);
  return result;
}

void *static StorageSpace.+= infix(_:_:)(void *result, void *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *static StorageSpace.+ infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

unint64_t StorageSpace.init(kilobytes:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result >> 54)
  {
    __break(1u);
  }

  else
  {
    *a2 = result << 10;
  }

  return result;
}

unint64_t StorageSpace.init(gigabytes:)@<X0>(unint64_t result@<X0>, void *a2@<X8>)
{
  if (result >> 54)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (result >> 44)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (!(result >> 34))
  {
    *a2 = result << 30;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t StorageSpace.encode(to:)(void *a1)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179F0C();
  __swift_mutable_project_boxed_opaque_existential_1(v2, v2[3]);
  sub_1D9179C3C();
  return __swift_destroy_boxed_opaque_existential_1Tm(v2);
}

uint64_t StorageSpace.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1D9179B3C();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_1D91514B8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D9179EDC();
  if (!v2)
  {
    __swift_project_boxed_opaque_existential_1(v7, v7[3]);
    v5 = sub_1D9179B3C();
    __swift_destroy_boxed_opaque_existential_1Tm(v7);
    *a2 = v5;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

void *static StorageSpace.- infix(_:_:)@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *static StorageSpace.-= infix(_:_:)(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

unint64_t *static StorageSpace.* infix(_:_:)@<X0>(unint64_t *result@<X0>, unint64_t *a2@<X1>, void *a3@<X8>)
{
  if (is_mul_ok(*result, *a2))
  {
    *a3 = *result * *a2;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *sub_1D91515DC@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *a3 = *result + *a2;
  }

  return result;
}

void *sub_1D91515F8(void *result, void *a2)
{
  if (__CFADD__(*result, *a2))
  {
    __break(1u);
  }

  else
  {
    *result += *a2;
  }

  return result;
}

void *sub_1D9151614@<X0>(void *result@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *a3 = *result - *a2;
  }

  return result;
}

void *sub_1D9151630(void *result, void *a2)
{
  if (*result < *a2)
  {
    __break(1u);
  }

  else
  {
    *result -= *a2;
  }

  return result;
}

id StorageSpace.description.getter()
{
  result = [objc_opt_self() stringWithBytesize_];
  if (result)
  {
    v2 = result;
    v3 = sub_1D917820C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1D91516D0()
{
  result = qword_1ECABB530;
  if (!qword_1ECABB530)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB530);
  }

  return result;
}

id sub_1D9151724()
{
  result = [objc_opt_self() stringWithBytesize_];
  if (result)
  {
    v2 = result;
    v3 = sub_1D917820C();

    return v3;
  }

  else
  {
    __break(1u);
  }

  return result;
}

unint64_t CompoundScheduleType.init(rawValue:)(unint64_t result)
{
  if (result > 1)
  {
    return 0;
  }

  return result;
}

id CompoundSchedule.__allocating_init(type:children:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFCompoundSchedule_type] = a1;
  *&v5[OBJC_IVAR___PFCompoundSchedule_children] = a2;
  v7.receiver = v5;
  v7.super_class = v2;
  return objc_msgSendSuper2(&v7, sel_init);
}

id CompoundSchedule.init(type:children:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PFCompoundSchedule_type] = a1;
  *&v2[OBJC_IVAR___PFCompoundSchedule_children] = a2;
  v4.receiver = v2;
  v4.super_class = type metadata accessor for CompoundSchedule();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D91519F0(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = (&v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v7);
  v9 = (&v26 - v8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - v11;
  v13 = sub_1D9176E3C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = *(v14 + 2);
  v31 = &v26 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17(v15);
  v32 = v12;
  sub_1D8CF6B1C(a2, v12);
  v18 = *&v2[OBJC_IVAR___PFCompoundSchedule_type];
  v26 = v14;
  if (v18 == 1)
  {
    v19 = *&v2[OBJC_IVAR___PFCompoundSchedule_children];
    if (v19 >> 62)
    {
LABEL_34:
      v27 = v19 & 0xFFFFFFFFFFFFFF8;
      v29 = sub_1D917935C();
    }

    else
    {
      v27 = v19 & 0xFFFFFFFFFFFFFF8;
      v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v20 = 0;
    v28 = v19 & 0xC000000000000001;
    v9 = (v14 + 48);
    v30 = (v14 + 8);
    while (1)
    {
      v21 = v29 != v20;
      if (v29 == v20)
      {
        goto LABEL_31;
      }

      if (v28)
      {
        v22 = MEMORY[0x1DA72AA90](v20, v19);
        if (__OFADD__(v20, 1))
        {
LABEL_15:
          __break(1u);
          break;
        }
      }

      else
      {
        if (v20 >= *(v27 + 16))
        {
          __break(1u);
LABEL_33:
          __break(1u);
          goto LABEL_34;
        }

        v22 = *(v19 + 8 * v20 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v20, 1))
        {
          goto LABEL_15;
        }
      }

      v18 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      sub_1D8CF6B1C(v32, v6);
      if ((*v9)(v6, 1, v13) == 1)
      {
        v2 = 0;
      }

      else
      {
        v2 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*v30)(v6, v13);
      }

      v14 = [v22 shouldExecuteOn:v18 previousExecution:{v2, v26}];
      swift_unknownObjectRelease();

      ++v20;
      if (v14)
      {
        goto LABEL_31;
      }
    }
  }

  if (!v18)
  {
    v19 = *&v2[OBJC_IVAR___PFCompoundSchedule_children];
    v27 = v19 & 0xFFFFFFFFFFFFFF8;
    if (v19 >> 62)
    {
      v29 = sub_1D917935C();
    }

    else
    {
      v29 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v23 = 0;
    v28 = v19 & 0xC000000000000001;
    v6 = (v14 + 48);
    v30 = (v14 + 8);
    do
    {
      v21 = v29 == v23;
      if (v29 == v23)
      {
        break;
      }

      if (v28)
      {
        v24 = MEMORY[0x1DA72AA90](v23, v19);
        if (__OFADD__(v23, 1))
        {
          goto LABEL_30;
        }
      }

      else
      {
        if (v23 >= *(v27 + 16))
        {
          goto LABEL_33;
        }

        v24 = *(v19 + 8 * v23 + 32);
        swift_unknownObjectRetain();
        if (__OFADD__(v23, 1))
        {
LABEL_30:
          __break(1u);
          break;
        }
      }

      v18 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
      sub_1D8CF6B1C(v32, v9);
      if ((*v6)(v9, 1, v13) == 1)
      {
        v2 = 0;
      }

      else
      {
        v2 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
        (*v30)(v9, v13);
      }

      v14 = [v24 shouldExecuteOn:v18 previousExecution:{v2, v26}];
      swift_unknownObjectRelease();

      ++v23;
    }

    while ((v14 & 1) != 0);
LABEL_31:
    (*(v26 + 1))(v31, v13);
    sub_1D8CF5EF8(v32);
    return v21;
  }

  (*(v14 + 1))(v31, v13);
  sub_1D8CF5EF8(v32);
  v33 = v18;
  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

id CompoundSchedule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id CompoundSchedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for CompoundSchedule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1D9152110()
{
  result = qword_1ECABB548;
  if (!qword_1ECABB548)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB548);
  }

  return result;
}

id static DayOfWeekSchedule.firstDayOfWeek.getter()
{
  v0 = sub_1D9176FDC();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v14 - v5;
  sub_1D9176FAC();
  v7 = sub_1D9176F2C();
  v8 = *(v1 + 16);
  v8(v3, v6, v0);
  v9 = type metadata accessor for DayOfWeekSchedule(0);
  v10 = objc_allocWithZone(v9);
  *&v10[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = v7;
  v8(&v10[OBJC_IVAR___PFDayOfWeekSchedule_calendar], v3, v0);
  v14.receiver = v10;
  v14.super_class = v9;
  v11 = objc_msgSendSuper2(&v14, sel_init);
  v12 = *(v1 + 8);
  v12(v3, v0);
  v12(v6, v0);
  return v11;
}

id DayOfWeekSchedule.__allocating_init(dayOfWeek:calendar:)(uint64_t a1, uint64_t a2)
{
  v5 = objc_allocWithZone(v2);
  *&v5[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = a1;
  v6 = OBJC_IVAR___PFDayOfWeekSchedule_calendar;
  v7 = sub_1D9176FDC();
  v8 = *(v7 - 1);
  (*(v8 + 16))(&v5[v6], a2, v7);
  v11.receiver = v5;
  v11.super_class = v2;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v8 + 8))(a2, v7);
  return v9;
}

uint64_t type metadata accessor for DayOfWeekSchedule(uint64_t a1)
{
  result = qword_1EDCD49D0;
  if (!qword_1EDCD49D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t DayOfWeekSchedule.calendar.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR___PFDayOfWeekSchedule_calendar;
  v4 = sub_1D9176FDC();
  v5 = *(*(v4 - 1) + 16);

  return v5(a1, v1 + v3, v4);
}

id DayOfWeekSchedule.init(dayOfWeek:calendar:)(uint64_t a1, uint64_t a2)
{
  *&v2[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = a1;
  v4 = OBJC_IVAR___PFDayOfWeekSchedule_calendar;
  v5 = sub_1D9176FDC();
  v6 = *(v5 - 1);
  (*(v6 + 16))(&v2[v4], a2, v5);
  v9.receiver = v2;
  v9.super_class = type metadata accessor for DayOfWeekSchedule(0);
  v7 = objc_msgSendSuper2(&v9, sel_init);
  (*(v6 + 8))(a2, v5);
  return v7;
}

BOOL sub_1D91528E4(uint64_t a1)
{
  v2 = v1;
  v3 = sub_1D9176FBC();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 104))(v7, *MEMORY[0x1E6969AB0], v3, v5);
  v8 = sub_1D9176FCC();
  (*(v4 + 8))(v7, v3);
  return v8 == *(v2 + OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek);
}

id DayOfWeekSchedule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DayOfWeekSchedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DayOfWeekSchedule(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1D9152DB0(uint64_t a1)
{
  result = sub_1D9176FDC();
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

id MaximumFrequencySchedule.__allocating_init(frequency:)(uint64_t a1)
{
  v3 = objc_allocWithZone(v1);
  ScheduleFrequency.interval.getter(a1);

  return [v3 initWithInterval_];
}

id MaximumFrequencySchedule.init(frequency:)(uint64_t a1)
{
  ScheduleFrequency.interval.getter(a1);

  return [v1 initWithInterval_];
}

id MaximumFrequencySchedule.__allocating_init(interval:)(double a1)
{
  v3 = objc_allocWithZone(v1);
  *&v3[OBJC_IVAR___PFMaximumFrequencySchedule_interval] = a1;
  v5.receiver = v3;
  v5.super_class = v1;
  return objc_msgSendSuper2(&v5, sel_init);
}

id MaximumFrequencySchedule.init(interval:)(double a1)
{
  *&v1[OBJC_IVAR___PFMaximumFrequencySchedule_interval] = a1;
  v3.receiver = v1;
  v3.super_class = type metadata accessor for MaximumFrequencySchedule();
  return objc_msgSendSuper2(&v3, sel_init);
}

BOOL sub_1D9153088(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v17 - v6;
  v8 = sub_1D9176E3C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF6B1C(a2, v7);
  if ((*(v9 + 48))(v7, 1, v8) == 1)
  {
    sub_1D8CF5EF8(v7);
    return 1;
  }

  else
  {
    (*(v9 + 32))(v11, v7, v8);
    sub_1D9176DDC();
    v14 = v13;
    sub_1D9176DDC();
    v16 = v15;
    (*(v9 + 8))(v11, v8);
    return *(v3 + OBJC_IVAR___PFMaximumFrequencySchedule_interval) < v14 - v16;
  }
}

id MaximumFrequencySchedule.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MaximumFrequencySchedule.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for MaximumFrequencySchedule();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t ScheduleFrequency.interval.getter(uint64_t a1)
{
  v2 = sub_1D9176FBC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v21 - v7;
  v9 = sub_1D9176E3C();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v22 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - v13;
  v23 = sub_1D9176FDC();
  v15 = *(v23 - 1);
  MEMORY[0x1EEE9AC00](v23);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D9176F7C();
  if (a1)
  {
    v24 = a1;
    result = sub_1D9179C9C();
    __break(1u);
  }

  else
  {
    sub_1D9176E2C();
    (*(v3 + 104))(v5, *MEMORY[0x1E6969A10], v2);
    sub_1D9176F9C();
    (*(v3 + 8))(v5, v2);
    if ((*(v10 + 48))(v8, 1, v9) == 1)
    {
      (*(v10 + 8))(v14, v9);
      (*(v15 + 8))(v17, v23);
      return sub_1D8CF5EF8(v8);
    }

    else
    {
      v19 = v22;
      (*(v10 + 32))(v22, v8, v9);
      sub_1D9176DDC();
      sub_1D9176DDC();
      v20 = *(v10 + 8);
      v20(v19, v9);
      v20(v14, v9);
      return (*(v15 + 8))(v17, v23);
    }
  }

  return result;
}

unint64_t sub_1D91538C4()
{
  result = qword_1ECABB568;
  if (!qword_1ECABB568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB568);
  }

  return result;
}

id sub_1D9153928()
{
  result = sub_1D9153948();
  qword_1EDCD26D0 = result;
  return result;
}

id sub_1D9153948()
{
  v0 = sub_1D9176FDC();
  v1 = *(v0 - 1);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v25 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918C190;
  sub_1D9176FAC();
  v8 = sub_1D9176F2C();
  v9 = *(v1 + 16);
  v9(v3, v6, v0);
  v10 = type metadata accessor for DayOfWeekSchedule(0);
  v11 = objc_allocWithZone(v10);
  *&v11[OBJC_IVAR___PFDayOfWeekSchedule_dayOfWeek] = v8;
  v9(&v11[OBJC_IVAR___PFDayOfWeekSchedule_calendar], v3, v0);
  v27.receiver = v11;
  v27.super_class = v10;
  v12 = objc_msgSendSuper2(&v27, sel_init);
  v13 = *(v1 + 8);
  v13(v3, v0);
  v13(v6, v0);
  *(v7 + 32) = v12;
  v14 = objc_allocWithZone(type metadata accessor for MaximumFrequencySchedule());
  ScheduleFrequency.interval.getter(0);
  *(v7 + 40) = [v14 initWithInterval_];
  v15 = type metadata accessor for CompoundSchedule();
  v16 = objc_allocWithZone(v15);
  *&v16[OBJC_IVAR___PFCompoundSchedule_type] = 0;
  *&v16[OBJC_IVAR___PFCompoundSchedule_children] = v7;
  v26.receiver = v16;
  v26.super_class = v15;
  v17 = objc_msgSendSuper2(&v26, sel_init);
  v18 = objc_opt_self();
  v19 = v17;
  v20 = [v18 standardUserDefaults];
  v21 = type metadata accessor for ScheduledOperationScheduler();
  v22 = objc_allocWithZone(v21);
  *&v22[OBJC_IVAR___PFScheduledOperationScheduler_schedule] = v19;
  *&v22[OBJC_IVAR___PFScheduledOperationScheduler_storage] = v20;
  v25.receiver = v22;
  v25.super_class = v21;
  v23 = objc_msgSendSuper2(&v25, sel_init);

  return v23;
}

id static ScheduledOperationScheduler.weekly.getter()
{
  if (qword_1EDCD26C8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EDCD26D0;

  return v1;
}

uint64_t sub_1D9153D00(uint64_t a1, uint64_t a2, uint64_t (*a3)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  ObjectType = swift_getObjectType();
  v7 = swift_getObjectType();

  return a3(a1, a2, v3, ObjectType, v7);
}

uint64_t sub_1D9153DF8(uint64_t a1, uint64_t a2, void (*a3)(void), void *a4)
{
  v31[1] = a4;
  v32 = a3;
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v34 = a2;
  v35 = v31 - v18;
  v19 = *(v4 + OBJC_IVAR___PFScheduledOperationScheduler_storage);
  v33 = a1;
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v31[0] = v19;
  v21 = [v19 lastExecutionOf_];

  if (v21)
  {
    sub_1D9176DFC();

    (*(v8 + 56))(v16, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  v22 = v35;
  sub_1D8E964A4(v16, v35);
  v23 = *(v4 + OBJC_IVAR___PFScheduledOperationScheduler_schedule);
  sub_1D9176E0C();
  v24 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v25 = *(v8 + 8);
  v25(v10, v7);
  sub_1D8CF6B1C(v22, v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v25(v13, v7);
  }

  v27 = [v23 shouldExecuteOn:v24 previousExecution:v26];

  if (v27)
  {
    v32();
    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D9176E0C();
    v29 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v25(v10, v7);
    [v31[0] recordExecutionOf:v28 at:v29];
  }

  return sub_1D8CF5EF8(v35);
}

id ScheduledOperationConstants.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id ScheduledOperationConstants.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for ScheduledOperationConstants();
  return objc_msgSendSuper2(&v2, sel_init);
}

id sub_1D9154390(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

id sub_1D91543CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ScheduledOperationScheduler();
  v5 = objc_allocWithZone(v4);
  *&v5[OBJC_IVAR___PFScheduledOperationScheduler_schedule] = a1;
  *&v5[OBJC_IVAR___PFScheduledOperationScheduler_storage] = a2;
  v7.receiver = v5;
  v7.super_class = v4;
  return objc_msgSendSuper2(&v7, sel_init);
}

id sub_1D9154438(uint64_t a1, uint64_t a2, char *a3)
{
  *&a3[OBJC_IVAR___PFScheduledOperationScheduler_schedule] = a1;
  *&a3[OBJC_IVAR___PFScheduledOperationScheduler_storage] = a2;
  v4.receiver = a3;
  v4.super_class = type metadata accessor for ScheduledOperationScheduler();
  return objc_msgSendSuper2(&v4, sel_init);
}

uint64_t sub_1D9154538(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v33 = a4;
  v7 = sub_1D9176E3C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v31 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v35 = a2;
  v36 = &v31 - v18;
  v19 = *(a3 + OBJC_IVAR___PFScheduledOperationScheduler_storage);
  v34 = a1;
  v20 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v32 = v19;
  v21 = [v19 lastExecutionOf_];

  if (v21)
  {
    sub_1D9176DFC();

    (*(v8 + 56))(v16, 0, 1, v7);
  }

  else
  {
    (*(v8 + 56))(v16, 1, 1, v7);
  }

  v22 = v36;
  sub_1D8E964A4(v16, v36);
  v23 = *(a3 + OBJC_IVAR___PFScheduledOperationScheduler_schedule);
  sub_1D9176E0C();
  v24 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  v25 = *(v8 + 8);
  v25(v10, v7);
  sub_1D8CF6B1C(v22, v13);
  if ((*(v8 + 48))(v13, 1, v7) == 1)
  {
    v26 = 0;
  }

  else
  {
    v26 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v25(v13, v7);
  }

  v27 = [v23 shouldExecuteOn:v24 previousExecution:v26];

  if (v27)
  {
    (*(v33 + 16))();
    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    sub_1D9176E0C();
    v29 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    v25(v10, v7);
    [v32 recordExecutionOf:v28 at:v29];
  }

  return sub_1D8CF5EF8(v36);
}

uint64_t NSUserDefaults.lastExecution(of:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v13 = 0;
  *(&v13 + 1) = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000033, 0x80000001D91D92D0);
  MEMORY[0x1DA7298F0](a1, a2);
  v7 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v8 = [v3 objectForKey_];

  if (v8)
  {
    sub_1D917928C();
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
    v9 = sub_1D9176E3C();
    v10 = swift_dynamicCast();
    return (*(*(v9 - 8) + 56))(a3, v10 ^ 1u, 1, v9);
  }

  else
  {
    sub_1D8D64450(v15);
    v12 = sub_1D9176E3C();
    return (*(*(v12 - 8) + 56))(a3, 1, 1, v12);
  }
}

id sub_1D9154A0C(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v17 - v5;
  v7 = sub_1D917820C();
  v9 = v8;
  v10 = a1;
  NSUserDefaults.lastExecution(of:)(v7, v9, v6);

  v11 = sub_1D9176E3C();
  v12 = *(v11 - 8);
  v13 = (*(v12 + 48))(v6, 1, v11);
  v14 = 0;
  if (v13 != 1)
  {
    v15 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
    (*(v12 + 8))(v6, v11);
    v14 = v15;
  }

  return v14;
}

void NSUserDefaults.recordExecution(of:at:)(uint64_t a1, uint64_t a2)
{
  v5 = _s10Foundation4DateV08PodcastsA0E18userDefaultsObjectSo6NSDateCSgyF_0();
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000033, 0x80000001D91D92D0);
  MEMORY[0x1DA7298F0](a1, a2);
  v6 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  [v2 setObject:v5 forKey:v6];
}

uint64_t sub_1D9154C3C(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_1D9176E3C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1D917820C();
  v11 = v10;
  sub_1D9176DFC();
  v12 = a1;
  NSUserDefaults.recordExecution(of:at:)(v9, v11);

  return (*(v6 + 8))(v8, v5);
}

uint64_t TimeSpan.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t AbbreviatedTimeIntervalFormatter.Configuration.init(relativeTo:currentYearReferenceDate:allowedSpan:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X2>, uint64_t a4@<X8>)
{
  v7 = *a3;
  v8 = type metadata accessor for AbbreviatedTimeIntervalFormatter.Configuration(0);
  v9 = *(v8 + 24);
  *(a4 + v9) = 6;
  v10 = sub_1D9176E3C();
  v11 = *(*(v10 - 8) + 32);
  v11(a4, a1, v10);
  result = (v11)(a4 + *(v8 + 20), a2, v10);
  *(a4 + v9) = v7;
  return result;
}

unint64_t sub_1D9154EB4()
{
  result = qword_1ECABB580;
  if (!qword_1ECABB580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB580);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_18PodcastsFoundation32AbbreviatedTimeIntervalFormatterO13ComputedStyleO(uint64_t a1)
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

uint64_t sub_1D9154F44(uint64_t a1, unsigned int a2)
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
  if (v3 >= 3)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D9154F80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = 0;
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
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

uint64_t sub_1D9154FC8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *result = 0;
    *(result + 8) = 0;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 16) = a2;
  return result;
}

id AccountsUtil.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id AccountsUtil.init()()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountsUtil();
  return objc_msgSendSuper2(&v2, sel_init);
}

id AccountsUtil.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for AccountsUtil();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id MTPodcast.artwork.getter()
{
  v1 = v0;
  result = [v0 artworkTemplateURL];
  if (result || (result = [v0 imageURL]) != 0)
  {
    v3 = result;
    v40 = sub_1D917820C();
    v41 = v4;

    v5 = [v0 artworkPrimaryColor];
    if (v5)
    {
      v6 = v5;
      v39 = sub_1D917820C();
      v8 = v7;
    }

    else
    {
      v39 = 0;
      v8 = 0;
    }

    v9 = [v0 artworkTextPrimaryColor];
    if (v9)
    {
      v10 = v9;
      v11 = sub_1D917820C();
      v13 = v12;
    }

    else
    {
      v11 = 0;
      v13 = 0;
    }

    v14 = [v0 artworkTextSecondaryColor];
    if (v14)
    {
      v15 = v14;
      v16 = sub_1D917820C();
      v18 = v17;
    }

    else
    {
      v16 = 0;
      v18 = 0;
    }

    v19 = [v0 artworkTextTertiaryColor];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D917820C();
      v23 = v22;
    }

    else
    {
      v21 = 0;
      v23 = 0;
    }

    v24 = [v1 artworkTextQuaternaryColor];
    if (v24)
    {
      v25 = v24;
      v26 = sub_1D917820C();
      v28 = v27;
    }

    else
    {
      v26 = 0;
      v28 = 0;
    }

    v29 = type metadata accessor for PlayerArtwork();
    v30 = objc_allocWithZone(v29);
    v31 = &v30[OBJC_IVAR___IMPlayerArtwork_template];
    *v31 = v40;
    v31[1] = v41;
    v32 = &v30[OBJC_IVAR___IMPlayerArtwork_width];
    *v32 = 0;
    v32[8] = 1;
    v33 = &v30[OBJC_IVAR___IMPlayerArtwork_height];
    *v33 = 0;
    v33[8] = 1;
    v34 = &v30[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
    *v34 = v39;
    v34[1] = v8;
    v35 = &v30[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
    *v35 = v11;
    v35[1] = v13;
    v36 = &v30[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
    *v36 = v16;
    v36[1] = v18;
    v37 = &v30[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
    *v37 = v21;
    v37[1] = v23;
    v38 = &v30[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
    *v38 = v26;
    v38[1] = v28;
    v42.receiver = v30;
    v42.super_class = v29;
    return objc_msgSendSuper2(&v42, sel_init);
  }

  return result;
}

id MTPodcast.uberArtwork.getter()
{
  v1 = v0;
  result = [v0 uberBackgroundImageURL];
  if (result)
  {
    v3 = result;
    v4 = sub_1D917820C();
    v41 = v5;
    v42 = v4;

    v6 = [v0 uberBackgroundJoeColor];
    if (v6)
    {
      v7 = v6;
      v40 = sub_1D917820C();
      v9 = v8;
    }

    else
    {
      v40 = 0;
      v9 = 0;
    }

    v10 = [v0 uberArtworkTextPrimaryColor];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D917820C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [v0 uberArtworkTextSecondaryColor];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D917820C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = [v0 uberArtworkTextTertiaryColor];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D917820C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [v1 uberArtworkTextQuaternaryColor];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D917820C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = type metadata accessor for PlayerArtwork();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR___IMPlayerArtwork_template];
    *v32 = v42;
    *(v32 + 1) = v41;
    v33 = &v31[OBJC_IVAR___IMPlayerArtwork_width];
    *v33 = 0;
    v33[8] = 1;
    v34 = &v31[OBJC_IVAR___IMPlayerArtwork_height];
    *v34 = 0;
    v34[8] = 1;
    v35 = &v31[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
    *v35 = v40;
    v35[1] = v9;
    v36 = &v31[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
    *v36 = v12;
    v36[1] = v14;
    v37 = &v31[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
    *v37 = v17;
    v37[1] = v19;
    v38 = &v31[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
    *v38 = v22;
    v38[1] = v24;
    v39 = &v31[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
    *v39 = v27;
    v39[1] = v29;
    v43.receiver = v31;
    v43.super_class = v30;
    return objc_msgSendSuper2(&v43, sel_init);
  }

  return result;
}

id MTEpisode.artwork.getter()
{
  v1 = v0;
  result = [v0 artworkTemplateURL];
  if (result)
  {
    v3 = result;
    v4 = sub_1D917820C();
    v44 = v5;
    v45 = v4;

    v6 = [v0 artworkBackgroundColor];
    if (v6)
    {
      v7 = v6;
      v8 = sub_1D917820C();
      v40 = v9;
      v42 = v8;
    }

    else
    {
      v40 = 0;
      v42 = 0;
    }

    v10 = [v0 artworkTextPrimaryColor];
    if (v10)
    {
      v11 = v10;
      v12 = sub_1D917820C();
      v14 = v13;
    }

    else
    {
      v12 = 0;
      v14 = 0;
    }

    v15 = [v0 artworkTextSecondaryColor];
    if (v15)
    {
      v16 = v15;
      v17 = sub_1D917820C();
      v19 = v18;
    }

    else
    {
      v17 = 0;
      v19 = 0;
    }

    v20 = [v0 artworkTextTertiaryColor];
    if (v20)
    {
      v21 = v20;
      v22 = sub_1D917820C();
      v24 = v23;
    }

    else
    {
      v22 = 0;
      v24 = 0;
    }

    v25 = [v1 artworkTextQuaternaryColor];
    if (v25)
    {
      v26 = v25;
      v27 = sub_1D917820C();
      v29 = v28;
    }

    else
    {
      v27 = 0;
      v29 = 0;
    }

    v30 = type metadata accessor for PlayerArtwork();
    v31 = objc_allocWithZone(v30);
    v32 = &v31[OBJC_IVAR___IMPlayerArtwork_template];
    *v32 = v45;
    *(v32 + 1) = v44;
    v33 = &v31[OBJC_IVAR___IMPlayerArtwork_width];
    *v33 = 0x4082C00000000000;
    v33[8] = 0;
    v34 = &v31[OBJC_IVAR___IMPlayerArtwork_height];
    *v34 = 0x4082C00000000000;
    v34[8] = 0;
    v35 = &v31[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
    *v35 = v43;
    *(v35 + 1) = v41;
    v36 = &v31[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
    *v36 = v12;
    v36[1] = v14;
    v37 = &v31[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
    *v37 = v17;
    v37[1] = v19;
    v38 = &v31[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
    *v38 = v22;
    v38[1] = v24;
    v39 = &v31[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
    *v39 = v27;
    v39[1] = v29;
    v46.receiver = v31;
    v46.super_class = v30;
    return objc_msgSendSuper2(&v46, sel_init);
  }

  return result;
}

id PlayerArtwork.__allocating_init(from:)(uint64_t a1)
{
  v1 = sub_1D91567F0(a1);

  return v1;
}

uint64_t PlayerArtwork.template.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_template);

  return v1;
}

uint64_t PlayerArtwork.backgroundColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_backgroundColor);

  return v1;
}

uint64_t PlayerArtwork.primaryTextColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_primaryTextColor);

  return v1;
}

uint64_t PlayerArtwork.secondaryTextColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_secondaryTextColor);

  return v1;
}

uint64_t PlayerArtwork.tertiaryTextColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor);

  return v1;
}

uint64_t PlayerArtwork.quaternaryTextColor.getter()
{
  v1 = *(v0 + OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor);

  return v1;
}

id PlayerArtwork.__allocating_init(template:width:height:backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:quaternaryTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v23 = objc_allocWithZone(v16);
  v24 = &v23[OBJC_IVAR___IMPlayerArtwork_template];
  *v24 = a1;
  *(v24 + 1) = a2;
  v25 = &v23[OBJC_IVAR___IMPlayerArtwork_width];
  *v25 = a3;
  v25[8] = a4 & 1;
  v26 = &v23[OBJC_IVAR___IMPlayerArtwork_height];
  *v26 = a5;
  v26[8] = a6 & 1;
  v27 = &v23[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
  *v27 = a7;
  *(v27 + 1) = a8;
  v28 = &v23[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
  *v28 = a9;
  *(v28 + 1) = a10;
  v29 = &v23[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
  *v29 = a11;
  *(v29 + 1) = a12;
  v30 = &v23[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
  *v30 = a13;
  *(v30 + 1) = a14;
  v31 = &v23[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
  *v31 = a15;
  *(v31 + 1) = a16;
  v35.receiver = v23;
  v35.super_class = v16;
  return objc_msgSendSuper2(&v35, sel_init);
}

id PlayerArtwork.init(template:width:height:backgroundColor:primaryTextColor:secondaryTextColor:tertiaryTextColor:quaternaryTextColor:)(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, char a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v17 = &v16[OBJC_IVAR___IMPlayerArtwork_template];
  *v17 = a1;
  *(v17 + 1) = a2;
  v18 = &v16[OBJC_IVAR___IMPlayerArtwork_width];
  *v18 = a3;
  v18[8] = a4 & 1;
  v19 = &v16[OBJC_IVAR___IMPlayerArtwork_height];
  *v19 = a5;
  v19[8] = a6 & 1;
  v20 = &v16[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
  *v20 = a7;
  *(v20 + 1) = a8;
  v21 = &v16[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
  *v21 = a9;
  *(v21 + 1) = a10;
  v22 = &v16[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
  *v22 = a11;
  *(v22 + 1) = a12;
  v23 = &v16[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
  *v23 = a13;
  *(v23 + 1) = a14;
  v24 = &v16[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
  *v24 = a15;
  *(v24 + 1) = a16;
  v26.receiver = v16;
  v26.super_class = type metadata accessor for PlayerArtwork();
  return objc_msgSendSuper2(&v26, sel_init);
}

uint64_t sub_1D9155C1C()
{
  sub_1D91765CC();
  swift_allocObject();
  sub_1D91765BC();
  type metadata accessor for PlayerArtwork();
  sub_1D9156980();
  v0 = sub_1D91765AC();

  return v0;
}

id PlayerArtwork.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_1D9155D5C()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000013;
    if (v1 == 6)
    {
      v5 = 0xD000000000000011;
    }

    v6 = 0xD000000000000010;
    if (v1 != 4)
    {
      v6 = 0xD000000000000012;
    }

    if (*v0 <= 5u)
    {
      return v6;
    }

    else
    {
      return v5;
    }
  }

  else
  {
    v2 = 0x6574616C706D6574;
    v3 = 0x746867696568;
    if (v1 != 2)
    {
      v3 = 0x756F72676B636162;
    }

    if (*v0)
    {
      v2 = 0x6874646977;
    }

    if (*v0 <= 1u)
    {
      return v2;
    }

    else
    {
      return v3;
    }
  }
}

uint64_t sub_1D9155E68@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D9156C50(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D9155E90(uint64_t a1)
{
  v2 = sub_1D91569D4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D9155ECC(uint64_t a1)
{
  v2 = sub_1D91569D4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

id PlayerArtwork.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for PlayerArtwork();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D9155FE0(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB5C8, &qword_1D91BD340);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D91569D4();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D91799BC();
  if (v1)
  {
    return (*(v4 + 8))(v6, v3);
  }

  v8[14] = 1;
  sub_1D917996C();
  v8[13] = 2;
  sub_1D917996C();
  v8[12] = 3;
  sub_1D917994C();
  v8[11] = 4;
  sub_1D917994C();
  v8[10] = 5;
  sub_1D917994C();
  v8[9] = 6;
  sub_1D917994C();
  v8[8] = 7;
  sub_1D917994C();
  return (*(v4 + 8))(v6, v3);
}

void *PlayerArtwork.init(from:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB5D0, &qword_1D91BD348);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v35 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D91569D4();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    type metadata accessor for PlayerArtwork();
    swift_deallocPartialClassInstance();
  }

  else
  {
    v36 = 0;
    v9 = sub_1D91798BC();
    v11 = (v1 + OBJC_IVAR___IMPlayerArtwork_template);
    *v11 = v9;
    v11[1] = v12;
    v36 = 1;
    v13 = sub_1D917986C();
    v14 = v1 + OBJC_IVAR___IMPlayerArtwork_width;
    *v14 = v13;
    v14[8] = v15 & 1;
    v36 = 2;
    v16 = sub_1D917986C();
    v17 = v1 + OBJC_IVAR___IMPlayerArtwork_height;
    *v17 = v16;
    v17[8] = v18 & 1;
    v36 = 3;
    v19 = sub_1D917984C();
    v20 = (v1 + OBJC_IVAR___IMPlayerArtwork_backgroundColor);
    *v20 = v19;
    v20[1] = v21;
    v36 = 4;
    v22 = sub_1D917984C();
    v23 = (v1 + OBJC_IVAR___IMPlayerArtwork_primaryTextColor);
    *v23 = v22;
    v23[1] = v24;
    v36 = 5;
    v25 = sub_1D917984C();
    v26 = (v1 + OBJC_IVAR___IMPlayerArtwork_secondaryTextColor);
    *v26 = v25;
    v26[1] = v27;
    v36 = 6;
    v28 = sub_1D917984C();
    v29 = (v1 + OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor);
    *v29 = v28;
    v29[1] = v30;
    v36 = 7;
    v31 = sub_1D917984C();
    v32 = (v1 + OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor);
    *v32 = v31;
    v32[1] = v33;
    v34 = type metadata accessor for PlayerArtwork();
    v35.receiver = v1;
    v35.super_class = v34;
    v3 = objc_msgSendSuper2(&v35, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v3;
}

void *sub_1D9156724@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = objc_allocWithZone(type metadata accessor for PlayerArtwork());
  result = PlayerArtwork.init(from:)(a1);
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

id sub_1D91567F0(uint64_t a1)
{
  v1 = *(a1 + 56);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 24);
  v3 = 0.0;
  v4 = 0.0;
  if ((v2 & 1) == 0)
  {
    v4 = *(a1 + 16);
  }

  v5 = *(a1 + 48);
  v6 = *(a1 + 40);
  if ((v6 & 1) == 0)
  {
    v3 = *(a1 + 32);
  }

  v7 = *(a1 + 64);
  v8 = *(a1 + 72);
  v9 = *(a1 + 88);
  v10 = *(a1 + 104);
  v23 = *(a1 + 80);
  v24 = *(a1 + 96);
  v11 = *(a1 + 120);
  v27 = *(a1 + 128);
  v25 = *(a1 + 112);
  v26 = *(a1 + 136);
  v12 = type metadata accessor for PlayerArtwork();
  v13 = objc_allocWithZone(v12);
  v14 = &v13[OBJC_IVAR___IMPlayerArtwork_template];
  *v14 = v5;
  *(v14 + 1) = v1;
  v15 = &v13[OBJC_IVAR___IMPlayerArtwork_width];
  *v15 = v4;
  *(v15 + 8) = v2;
  v16 = &v13[OBJC_IVAR___IMPlayerArtwork_height];
  *v16 = v3;
  *(v16 + 8) = v6;
  v17 = &v13[OBJC_IVAR___IMPlayerArtwork_backgroundColor];
  *v17 = v7;
  *(v17 + 1) = v8;
  v18 = &v13[OBJC_IVAR___IMPlayerArtwork_primaryTextColor];
  *v18 = v23;
  *(v18 + 1) = v9;
  v19 = &v13[OBJC_IVAR___IMPlayerArtwork_secondaryTextColor];
  *v19 = v24;
  *(v19 + 1) = v10;
  v20 = &v13[OBJC_IVAR___IMPlayerArtwork_tertiaryTextColor];
  *v20 = v25;
  *(v20 + 1) = v11;
  v21 = &v13[OBJC_IVAR___IMPlayerArtwork_quaternaryTextColor];
  *v21 = v27;
  *(v21 + 1) = v26;
  v28.receiver = v13;
  v28.super_class = v12;

  return objc_msgSendSuper2(&v28, sel_init);
}

unint64_t sub_1D9156980()
{
  result = qword_1EDCD54C0;
  if (!qword_1EDCD54C0)
  {
    type metadata accessor for PlayerArtwork();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54C0);
  }

  return result;
}

unint64_t sub_1D91569D4()
{
  result = qword_1EDCD54D8[0];
  if (!qword_1EDCD54D8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EDCD54D8);
  }

  return result;
}

unint64_t sub_1D9156B4C()
{
  result = qword_1ECABB5D8;
  if (!qword_1ECABB5D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB5D8);
  }

  return result;
}

unint64_t sub_1D9156BA4()
{
  result = qword_1EDCD54C8;
  if (!qword_1EDCD54C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54C8);
  }

  return result;
}

unint64_t sub_1D9156BFC()
{
  result = qword_1EDCD54D0;
  if (!qword_1EDCD54D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD54D0);
  }

  return result;
}

uint64_t sub_1D9156C50(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6574616C706D6574 && a2 == 0xE800000000000000;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x756F72676B636162 && a2 == 0xEF726F6C6F43646ELL || (sub_1D9179ACC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0xD000000000000010 && 0x80000001D91D9410 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000012 && 0x80000001D91D9430 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000011 && 0x80000001D91D9450 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0xD000000000000013 && 0x80000001D91D9470 == a2)
  {

    return 7;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

double Cache.dictionary.getter()
{
  swift_beginAccess();

  return result;
}

double Cache.dictionary.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 16) = a1;

  return result;
}

uint64_t Cache.__allocating_init(invalidateOnAppBackground:)(char a1)
{
  v2 = swift_allocObject();
  Cache.init(invalidateOnAppBackground:)(a1);
  return v2;
}

Swift::Void __swiftcall Cache.invalidate()()
{
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D91780CC();
  swift_endAccess();
}

uint64_t sub_1D915709C(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    Cache.invalidate()();
  }

  return result;
}

void (*Cache.subscript.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v7 = v6;
  *a1 = v6;
  *v6 = v2;
  v8 = *v2;
  v9 = sub_1D91791BC();
  v7[1] = v9;
  v10 = *(v9 - 8);
  v7[2] = v10;
  v11 = *(v10 + 64);
  if (v5)
  {
    v7[3] = swift_coroFrameAlloc();
    v12 = swift_coroFrameAlloc();
  }

  else
  {
    v7[3] = malloc(*(v10 + 64));
    v12 = malloc(v11);
  }

  v7[4] = v12;
  v13 = *(v8 + 80);
  v7[5] = v13;
  v14 = *(v13 - 8);
  v15 = v14;
  v7[6] = v14;
  if (v5)
  {
    v16 = swift_coroFrameAlloc();
  }

  else
  {
    v16 = malloc(*(v14 + 64));
  }

  v7[7] = v16;
  (*(v15 + 16))();
  Cache.subscript.getter(a2);
  return sub_1D91572EC;
}

void sub_1D91572EC(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 48);
  v3 = *(*a1 + 56);
  v5 = *(*a1 + 32);
  v6 = *(*a1 + 40);
  v8 = *(*a1 + 16);
  v7 = *(*a1 + 24);
  v9 = *(*a1 + 8);
  if (a2)
  {
    (*(v8 + 16))(*(*a1 + 24), v5, v9);
    sub_1D8D498FC(v7, v3);
    (*(v4 + 8))(v3, v6);
    v10 = *(v8 + 8);
    v10(v7, v9);
    v10(v5, v9);
  }

  else
  {
    sub_1D8D498FC(*(*a1 + 32), v3);
    (*(v4 + 8))(v3, v6);
    (*(v8 + 8))(v5, v9);
  }

  free(v3);
  free(v5);
  free(v7);

  free(v2);
}

uint64_t Cache.get(key:or:)@<X0>(uint64_t a1@<X0>, void (*a2)(uint64_t)@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v5 = v4;
  v36 = a3;
  v37 = a2;
  v39 = a4;
  v7 = *(*v5 + 88);
  v38 = sub_1D91791BC();
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v38);
  v34 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v33 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v33 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v33 - v20;
  v35 = a1;
  Cache.subscript.getter(a1);
  v22 = *(v15 + 48);
  if (v22(v14, 1, v7) == 1)
  {
    v23 = *(v40 + 8);
    v24 = v14;
    v25 = v38;
    v40 += 8;
    v26 = v23(v24, v38);
    v37(v26);
    if (v22(v11, 1, v7) == 1)
    {
      v23(v11, v25);
      return (*(v15 + 56))(v39, 1, 1, v7);
    }

    else
    {
      v37 = *(v15 + 32);
      (v37)(v18, v11, v7);
      v30 = v34;
      (*(v15 + 16))(v34, v18, v7);
      v31 = *(v15 + 56);
      v31(v30, 0, 1, v7);
      sub_1D8D498FC(v30, v35);
      v23(v30, v25);
      v32 = v39;
      (v37)(v39, v18, v7);
      return v31(v32, 0, 1, v7);
    }
  }

  else
  {
    v28 = *(v15 + 32);
    v28(v21, v14, v7);
    v29 = v39;
    v28(v39, v21, v7);
    return (*(v15 + 56))(v29, 0, 1, v7);
  }
}

uint64_t Cache.deinit()
{

  return v0;
}

uint64_t Cache.__deallocating_deinit()
{
  Cache.deinit();

  return swift_deallocClassInstance();
}

id MTCoalescableWorkController.init(qos:identifier:)(uint64_t a1)
{
  v2 = sub_1D9177E2C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  sub_1D9177E8C();
  v7 = sub_1D9177E1C();
  (*(v3 + 8))(v5, v2);
  v8 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v9 = [ObjCClassFromMetadata controllerWithQosClass:v7 identifier:v8];

  v10 = sub_1D9177E9C();
  (*(*(v10 - 8) + 8))(a1, v10);
  return v9;
}

uint64_t sub_1D91579BC()
{
  v0 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  type metadata accessor for ContinuousPlaybackAllowedObserver();
  v1 = swift_allocObject();
  result = ContinuousPlaybackAllowedObserver.init(stream:userDefaults:)(&v3, v0);
  qword_1ECAB12A8 = v1;
  return result;
}

uint64_t ContinuousPlaybackAllowedObserver.__allocating_init(stream:userDefaults:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  ContinuousPlaybackAllowedObserver.init(stream:userDefaults:)(a1, a2);
  return v4;
}

uint64_t static ContinuousPlaybackAllowedObserver.sharedInstance.getter()
{
  if (qword_1ECAB12A0 != -1)
  {
    swift_once();
  }
}

uint64_t ContinuousPlaybackAllowedObserver.init(stream:userDefaults:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 24))
  {
    sub_1D8CFD9D8(a1, &v7);
    if (*(&v8 + 1))
    {
LABEL_3:
      if (*(a1 + 24))
      {
        __swift_destroy_boxed_opaque_existential_1Tm(a1);
      }

      sub_1D8D6BCE0(&v7, v10);
      goto LABEL_11;
    }
  }

  else
  {
    v5 = *(a1 + 16);
    v7 = *a1;
    v8 = v5;
    v9 = *(a1 + 32);
    if (*(&v5 + 1))
    {
      goto LABEL_3;
    }
  }

  sub_1D9157BD4(v10);
  if (*(a1 + 24))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  if (*(&v8 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v7);
  }

LABEL_11:
  sub_1D8D6BCE0(v10, v2 + 24);
  *(v2 + 16) = a2;
  return v2;
}

void sub_1D9157BD4(uint64_t *a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB5E0, &qword_1D91BD660);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v15 - v4;
  v6 = sub_1D917719C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB5E8, &qword_1D91BD668);
  MEMORY[0x1EEE9AC00](v16);
  v10 = [objc_opt_self() ams_sharedAccountStore];
  v11 = [v10 ams_activeiTunesAccount];

  if (v11 && (v12 = [v11 ams_accountID], v11, v12))
  {
    sub_1D91771EC();
    v13 = sub_1D91771DC();
    v14 = v12;
    sub_1D917718C();
    sub_1D91771BC();

    (*(v7 + 8))(v9, v6);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB600, &qword_1D91BD680);
    a1[4] = sub_1D8CF48EC(&qword_1ECAAFBB0, &qword_1ECABB600, &qword_1D91BD680, MEMORY[0x1E69E88C0]);
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1D8CF48EC(&qword_1ECAB2C40, &qword_1ECABB5E8, &qword_1D91BD668, MEMORY[0x1E698C430]);
    sub_1D9179A3C();
  }

  else
  {
    (*(v3 + 104))(v5, *MEMORY[0x1E69E8650], v2);
    a1[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB5F0, &qword_1D91BD670);
    a1[4] = sub_1D8CF48EC(&qword_1ECABB5F8, &qword_1ECABB5F0, &qword_1D91BD670, MEMORY[0x1E69E86A0]);
    __swift_allocate_boxed_opaque_existential_0(a1);
    sub_1D91788FC();
  }
}

uint64_t sub_1D9157F8C(uint64_t a1, uint64_t a2)
{
  v2[2] = a1;
  v2[3] = a2;
  v3 = sub_1D91771CC();
  v2[4] = v3;
  v2[5] = *(v3 - 8);
  v2[6] = swift_task_alloc();
  v2[7] = swift_task_alloc();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB608, &qword_1D91BD688);
  v2[8] = v4;
  v2[9] = *(v4 - 8);
  v2[10] = swift_task_alloc();
  v2[11] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB610, &qword_1D91BD690);
  v2[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D91580FC, 0, 0);
}

uint64_t sub_1D91580FC()
{
  sub_1D9158F88(v0[3], v0[12]);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v2 = v0[12];
  if (EnumCaseMultiPayload == 1)
  {
    (*(v0[5] + 32))(v0[7], v2, v0[4]);
    if (qword_1ECAB0C18 != -1)
    {
      swift_once();
    }

    v3 = v0[6];
    v4 = v0[7];
    v5 = v0[4];
    v6 = v0[5];
    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1ECAB0C20);
    v8 = *(v6 + 16);
    v8(v3, v4, v5);
    v9 = sub_1D917741C();
    v10 = sub_1D9178CFC();
    v11 = os_log_type_enabled(v9, v10);
    v13 = v0[5];
    v12 = v0[6];
    v14 = v0[4];
    if (v11)
    {
      v15 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      *v15 = 138412290;
      sub_1D9158FF8();
      swift_allocError();
      v8(v16, v12, v14);
      v17 = _swift_stdlib_bridgeErrorToNSError();
      v18 = *(v13 + 8);
      v18(v12, v14);
      *(v15 + 4) = v17;
      *v25 = v17;
      _os_log_impl(&dword_1D8CEC000, v9, v10, "Unable to read result from AccountCachedServerData with error: %@", v15, 0xCu);
      sub_1D8D08A50(v25, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v25, -1, -1);
      MEMORY[0x1DA72CB90](v15, -1, -1);
    }

    else
    {

      v18 = *(v13 + 8);
      v18(v12, v14);
    }

    v22 = v0[2];
    v18(v0[7], v0[4]);
    *v22 = 2;
  }

  else
  {
    v20 = v0[9];
    v19 = v0[10];
    v21 = v0[8];
    (*(v20 + 32))(v19, v2, v21);
    sub_1D91771AC();
    (*(v20 + 8))(v19, v21);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1D915841C()
{
  if (qword_1ECAB0C18 != -1)
  {
    swift_once();
  }

  v1 = sub_1D917744C();
  __swift_project_value_buffer(v1, qword_1ECAB0C20);
  v2 = sub_1D917741C();
  v3 = sub_1D9178D1C();
  if (os_log_type_enabled(v2, v3))
  {
    v4 = swift_slowAlloc();
    *v4 = 0;
    _os_log_impl(&dword_1D8CEC000, v2, v3, "Inspecting stream for continuous playback allowance.", v4, 2u);
    MEMORY[0x1DA72CB90](v4, -1, -1);
  }

  v5 = *(v0 + 16);

  v6 = swift_task_alloc();
  *(v0 + 24) = v6;
  *v6 = v0;
  v6[1] = sub_1D9158574;

  return sub_1D9158668(v5 + 24);
}

uint64_t sub_1D9158574()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1D9158668(uint64_t a1)
{
  *(v2 + 56) = a1;
  *(v2 + 64) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1D9158688, 0, 0);
}

uint64_t sub_1D9158688()
{
  v1 = v0[7];
  v2 = v1[3];
  v3 = __swift_project_boxed_opaque_existential_1(v1, v2);
  v4 = *(v2 - 8);
  v5 = swift_task_alloc();
  (*(v4 + 16))(v5, v3, v2);
  v0[5] = swift_getAssociatedTypeWitness();
  v0[6] = swift_getAssociatedConformanceWitness();
  __swift_allocate_boxed_opaque_existential_0(v0 + 2);
  sub_1D91789FC();

  __swift_mutable_project_boxed_opaque_existential_1((v0 + 2), v0[5]);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1D9158840;

  return MEMORY[0x1EEE6D8D0](v0 + 10, 0, 0);
}

uint64_t sub_1D9158840()
{

  if (!v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9158950, 0, 0);
  }

  return result;
}

uint64_t sub_1D9158950()
{
  v1 = *(v0 + 80);
  if (v1 == 2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1D9158A80((v1 & 1) == 0);
    __swift_mutable_project_boxed_opaque_existential_1(v0 + 16, *(v0 + 40));
    v4 = swift_task_alloc();
    *(v0 + 72) = v4;
    *v4 = v0;
    v4[1] = sub_1D9158840;

    return MEMORY[0x1EEE6D8D0](v0 + 80, 0, 0);
  }
}

void sub_1D9158A80(char a1)
{
  v3 = *(v1 + 16);
  v4 = sub_1D917820C();
  v6 = sub_1D8D6D934(v4, v5, 1);

  if (v6)
  {
    if ((a1 & 1) == 0)
    {
      if (qword_1ECAB0C18 != -1)
      {
        swift_once();
      }

      v7 = sub_1D917744C();
      __swift_project_value_buffer(v7, qword_1ECAB0C20);
      v8 = sub_1D917741C();
      v9 = sub_1D9178D1C();
      if (os_log_type_enabled(v8, v9))
      {
        v10 = swift_slowAlloc();
        *v10 = 0;
        _os_log_impl(&dword_1D8CEC000, v8, v9, "Continuous playback is currently allowed but the stream says it is not. Disabling continuous playback.", v10, 2u);
        MEMORY[0x1DA72CB90](v10, -1, -1);
      }

      v11 = sub_1D917873C();
      [v3 setValue:v11 forKey:@"MTContinuousPlaybackAllowed"];

      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
      inited = swift_initStackObject();
      *(inited + 16) = xmmword_1D9189080;
      *(inited + 32) = sub_1D917820C();
      *(inited + 40) = v13;
      *(inited + 72) = MEMORY[0x1E69E6370];
      *(inited + 48) = 0;
      sub_1D8E2696C(inited);
      swift_setDeallocating();
      sub_1D8D08A50(inited + 32, &qword_1ECAB42E8, &qword_1D9193650);
      v14 = sub_1D917802C();

      [v3 registerDefaults_];

      [v3 removeObjectForKey_];
    }
  }

  else if (a1)
  {
    if (qword_1ECAB0C18 != -1)
    {
      swift_once();
    }

    v15 = sub_1D917744C();
    __swift_project_value_buffer(v15, qword_1ECAB0C20);
    v16 = sub_1D917741C();
    v17 = sub_1D9178D1C();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_1D8CEC000, v16, v17, "Continuous playback is not currently allowed but the stream says it is allowed. Re-enabling flag for allowing continuous playback.", v18, 2u);
      MEMORY[0x1DA72CB90](v18, -1, -1);
    }

    v19 = sub_1D917873C();
    [v3 setValue:v19 forKey:@"MTContinuousPlaybackAllowed"];
  }
}

uint64_t ContinuousPlaybackAllowedObserver.__deallocating_deinit()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 24));

  return swift_deallocClassInstance();
}

uint64_t dispatch thunk of ContinuousPlaybackAllowedObserver.observe()()
{
  v4 = (*(*v0 + 104) + **(*v0 + 104));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_1D8D58924;

  return v4();
}

uint64_t sub_1D9158F88(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB610, &qword_1D91BD690);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1D9158FF8()
{
  result = qword_1ECABB618;
  if (!qword_1ECABB618)
  {
    sub_1D91771CC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB618);
  }

  return result;
}

id sub_1D9159050()
{
  result = [objc_allocWithZone(PFCoreAnalyticsChannel) init];
  qword_1EDCD6298 = result;
  return result;
}

char *DatabaseHangDetector.__allocating_init(context:label:signpostLogger:pingInterval:shortHangDuration:severeHangDuration:criticalHangDuration:criticalHangRepeatInterval:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v64 = a5;
  v60 = sub_1D9177E0C();
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D9177E9C();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D917744C();
  v61 = *(v23 - 8);
  v62 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v52 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = sub_1D917739C();
  v51 = *(v53 - 1);
  MEMORY[0x1EEE9AC00](v53);
  v50 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9178E8C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v55 = v11;
  v30 = objc_allocWithZone(v11);
  v31 = OBJC_IVAR___PFDatabaseHangDetector_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v32 = swift_allocObject();
  *(v32 + 16) = 0;
  *&v30[v31] = v32;
  v30[OBJC_IVAR___PFDatabaseHangDetector_status] = 0;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_multiTimer] = 0;
  v30[OBJC_IVAR___PFDatabaseHangDetector_loggedFault] = 0;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_context] = a1;
  v33 = &v30[OBJC_IVAR___PFDatabaseHangDetector_label];
  *v33 = a2;
  *(v33 + 1) = a3;
  v33[16] = a4;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_pingInterval] = a6;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration] = a7;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration] = a8;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration] = a9;
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_criticalHangRepeatInterval] = a10;
  sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
  v34 = qword_1EDCD77C8;
  v56 = a1;
  if (v34 != -1)
  {
    swift_once();
  }

  v54 = qword_1EDCD77D0;
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD76F0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB628, &unk_1D91BD698);
  sub_1D8CF4934(&qword_1EDCD7700, &qword_1ECABB628, &unk_1D91BD698);
  sub_1D91792CC();
  v35 = sub_1D9178E9C();
  (*(v27 + 8))(v29, v26);
  *&v30[OBJC_IVAR___PFDatabaseHangDetector_pingTimer] = v35;
  (*(v61 + 16))(v52, v64, v62);
  v36 = v50;
  sub_1D917736C();
  (*(v51 + 32))(&v30[OBJC_IVAR___PFDatabaseHangDetector_signpost], v36, v53);
  v73.receiver = v30;
  v73.super_class = v55;
  v37 = objc_msgSendSuper2(&v73, sel_init);
  ObjectType = swift_getObjectType();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = sub_1D8CF5FB0;
  v72 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D8CF5F60;
  v70 = &block_descriptor_101;
  v40 = _Block_copy(&aBlock);
  v41 = v37;
  swift_unknownObjectRetain();

  v42 = v57;
  sub_1D8F3EDE0(ObjectType);
  v43 = v59;
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v40);
  swift_unknownObjectRelease();
  v44 = *(v65 + 8);
  v65 += 8;
  v55 = v44;
  v45 = v60;
  (v44)(v43, v60);
  v58 = *(v58 + 8);
  (v58)(v42, v63);

  v46 = swift_allocObject();
  v53 = v41;
  swift_unknownObjectWeakInit();

  v71 = sub_1D8CF5D4C;
  v72 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D8CF5F60;
  v70 = &block_descriptor_4_0;
  v47 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v42, v43, v47);
  _Block_release(v47);

  v48 = v53;
  (*(v61 + 8))(v64, v62);
  (v55)(v43, v45);
  (v58)(v42, v63);

  return v48;
}

char *DatabaseHangDetector.init(context:label:signpostLogger:pingInterval:shortHangDuration:severeHangDuration:criticalHangDuration:criticalHangRepeatInterval:)(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, double a6, double a7, double a8, double a9, double a10)
{
  v11 = v10;
  v64 = a5;
  v60 = sub_1D9177E0C();
  v65 = *(v60 - 8);
  MEMORY[0x1EEE9AC00](v60);
  v59 = &v50 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v63 = sub_1D9177E9C();
  v58 = *(v63 - 8);
  MEMORY[0x1EEE9AC00](v63);
  v57 = &v50 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = sub_1D917744C();
  v61 = *(v23 - 8);
  v62 = v23;
  MEMORY[0x1EEE9AC00](v23);
  v53 = &v50 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1D917739C();
  v52 = *(v54 - 1);
  MEMORY[0x1EEE9AC00](v54);
  v51 = &v50 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D9178E8C();
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v50 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = OBJC_IVAR___PFDatabaseHangDetector_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v31 = swift_allocObject();
  *(v31 + 16) = 0;
  *&v11[v30] = v31;
  v11[OBJC_IVAR___PFDatabaseHangDetector_status] = 0;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_multiTimer] = 0;
  v11[OBJC_IVAR___PFDatabaseHangDetector_loggedFault] = 0;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_context] = a1;
  v32 = &v11[OBJC_IVAR___PFDatabaseHangDetector_label];
  *v32 = a2;
  *(v32 + 1) = a3;
  v32[16] = a4;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_pingInterval] = a6;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration] = a7;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration] = a8;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration] = a9;
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_criticalHangRepeatInterval] = a10;
  sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
  v33 = qword_1EDCD77C8;
  v56 = a1;
  if (v33 != -1)
  {
    swift_once();
  }

  v55 = qword_1EDCD77D0;
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD76F0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB628, &unk_1D91BD698);
  sub_1D8CF4934(&qword_1EDCD7700, &qword_1ECABB628, &unk_1D91BD698);
  sub_1D91792CC();
  v34 = sub_1D9178E9C();
  (*(v27 + 8))(v29, v26);
  *&v11[OBJC_IVAR___PFDatabaseHangDetector_pingTimer] = v34;
  (*(v61 + 16))(v53, v64, v62);
  v35 = v51;
  sub_1D917736C();
  (*(v52 + 32))(&v11[OBJC_IVAR___PFDatabaseHangDetector_signpost], v35, v54);
  v36 = type metadata accessor for DatabaseHangDetector(0);
  v73.receiver = v11;
  v73.super_class = v36;
  v37 = objc_msgSendSuper2(&v73, sel_init);
  ObjectType = swift_getObjectType();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v71 = sub_1D8CF6C08;
  v72 = v39;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D8CF5F60;
  v70 = &block_descriptor_9_3;
  v40 = _Block_copy(&aBlock);
  v41 = v37;
  swift_unknownObjectRetain();

  v42 = v57;
  sub_1D8F3EDE0(ObjectType);
  v43 = v59;
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v40);
  swift_unknownObjectRelease();
  v44 = *(v65 + 8);
  v65 += 8;
  v54 = v44;
  v45 = v60;
  v44(v43, v60);
  v58 = *(v58 + 8);
  (v58)(v42, v63);

  v46 = swift_allocObject();
  v53 = v41;
  swift_unknownObjectWeakInit();

  v71 = sub_1D8CF6B8C;
  v72 = v46;
  aBlock = MEMORY[0x1E69E9820];
  v68 = 1107296256;
  v69 = sub_1D8CF5F60;
  v70 = &block_descriptor_14_3;
  v47 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v66 = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v42, v43, v47);
  _Block_release(v47);

  v48 = v53;
  (*(v61 + 8))(v64, v62);
  v54(v43, v45);
  (v58)(v42, v63);

  return v48;
}

unint64_t DatabaseHangDetector.ContextLabel.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

unint64_t *sub_1D915A224@<X0>(unint64_t *result@<X0>, uint64_t a2@<X8>)
{
  v2 = *result;
  v3 = *result > 2;
  if (*result > 2)
  {
    v2 = 0;
  }

  *a2 = v2;
  *(a2 + 8) = v3;
  return result;
}

void (**DatabaseHangDetector.__allocating_init(context:label:pingInterval:shortHangDuration:severeHangDuration:criticalHangDuration:criticalHangRepeatInterval:)(void *a1, uint64_t a2, double a3, double a4, double a5, double a6, double a7))(void, void, void)
{
  v8 = v7;
  v16 = sub_1D9177E0C();
  v17 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v19 = v55 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v70 = sub_1D9177E9C();
  v64 = *(v70 - 8);
  MEMORY[0x1EEE9AC00](v70);
  v63 = v55 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v61 = sub_1D917739C();
  v60 = *(v61 - 1);
  MEMORY[0x1EEE9AC00](v61);
  v59 = v55 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = sub_1D9178E8C();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v25 = v55 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = sub_1D917744C();
  v68 = *(v26 - 8);
  v69 = v26;
  MEMORY[0x1EEE9AC00](v26);
  v56 = v55 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v30 = v55 - v29;
  v31 = objc_allocWithZone(v8);
  v66 = v16;
  v71 = v17;
  v62 = v31;
  if (a2 == 2)
  {
    v32 = "PlaybackContext";
    v33 = 15;
  }

  else if (a2 == 1)
  {
    v32 = "ImportContext";
    v33 = 13;
  }

  else
  {
    if (a2)
    {
      aBlock = a2;
      result = sub_1D9179C9C();
      __break(1u);
      return result;
    }

    v32 = "PrivateContext";
    v33 = 14;
  }

  v57 = v23;
  v67 = v30;
  v65 = v19;
  sub_1D917742C();
  v34 = type metadata accessor for DatabaseHangDetector(0);
  v35 = objc_allocWithZone(v34);
  v36 = OBJC_IVAR___PFDatabaseHangDetector_lock;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB7530, &unk_1D918C0D0);
  v37 = swift_allocObject();
  *(v37 + 16) = 0;
  *&v35[v36] = v37;
  v35[OBJC_IVAR___PFDatabaseHangDetector_status] = 0;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_multiTimer] = 0;
  v35[OBJC_IVAR___PFDatabaseHangDetector_loggedFault] = 0;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_context] = a1;
  v38 = &v35[OBJC_IVAR___PFDatabaseHangDetector_label];
  *v38 = v32;
  *(v38 + 1) = v33;
  v38[16] = 2;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_pingInterval] = a3;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration] = a4;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration] = a5;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration] = a6;
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_criticalHangRepeatInterval] = a7;
  sub_1D8CF2154(0, &qword_1EDCD76E0, 0x1E69E9630);
  v39 = qword_1EDCD77C8;
  v58 = a1;
  if (v39 != -1)
  {
    swift_once();
  }

  v55[1] = qword_1EDCD77D0;
  aBlock = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD76F0, MEMORY[0x1E69E80B0], MEMORY[0x1E69E80B8]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB628, &unk_1D91BD698);
  sub_1D8CF4934(&qword_1EDCD7700, &qword_1ECABB628, &unk_1D91BD698);
  sub_1D91792CC();
  v40 = sub_1D9178E9C();
  (*(v57 + 8))(v25, v22);
  *&v35[OBJC_IVAR___PFDatabaseHangDetector_pingTimer] = v40;
  (*(v68 + 16))(v56, v67, v69);
  v41 = v59;
  sub_1D917736C();
  (v60)[4](&v35[OBJC_IVAR___PFDatabaseHangDetector_signpost], v41, v61);
  v79.receiver = v35;
  v79.super_class = v34;
  v42 = objc_msgSendSuper2(&v79, sel_init);
  ObjectType = swift_getObjectType();
  v44 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v77 = sub_1D8CF6C08;
  v78 = v44;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1D8CF5F60;
  v76 = &block_descriptor_19_3;
  v45 = _Block_copy(&aBlock);
  v46 = v42;
  swift_unknownObjectRetain();

  v47 = v63;
  sub_1D8F3EDE0(ObjectType);
  v48 = v65;
  sub_1D8CF4D08();
  sub_1D9178EFC();
  _Block_release(v45);
  swift_unknownObjectRelease();
  v49 = *(v71 + 8);
  v71 += 8;
  v61 = v49;
  v50 = v66;
  v49(v48, v66);
  v64 = *(v64 + 8);
  (v64)(v47, v70);

  v51 = swift_allocObject();
  v60 = v46;
  swift_unknownObjectWeakInit();

  v77 = sub_1D8CF6B8C;
  v78 = v51;
  aBlock = MEMORY[0x1E69E9820];
  v74 = 1107296256;
  v75 = sub_1D8CF5F60;
  v76 = &block_descriptor_24_9;
  v52 = _Block_copy(&aBlock);

  sub_1D9177E4C();
  v72 = MEMORY[0x1E69E7CC0];
  sub_1D8CF9C8C(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v47, v48, v52);
  _Block_release(v52);

  v53 = v60;
  v61(v48, v50);
  (v64)(v47, v70);
  (*(v68 + 8))(v67, v69);

  swift_getObjectType();
  swift_deallocPartialClassInstance();
  return v53;
}

void sub_1D915AC78()
{
  v1 = *&v0[OBJC_IVAR___PFDatabaseHangDetector_lock];
  os_unfair_lock_lock(v1 + 4);
  if (v0[OBJC_IVAR___PFDatabaseHangDetector_status])
  {
    v0[OBJC_IVAR___PFDatabaseHangDetector_status] = 0;
    sub_1D8CF7068();
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v2 = sub_1D917744C();
    __swift_project_value_buffer(v2, qword_1EDCD77B0);
    v3 = v0;
    v4 = sub_1D917741C();
    v5 = sub_1D9178D1C();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      v8 = sub_1D917949C();
      v10 = sub_1D8CFA924(v8, v9, &v17);

      *(v6 + 4) = v10;
      v11 = " %{public}s - Stopping Core Data hang monitoring.";
LABEL_10:
      _os_log_impl(&dword_1D8CEC000, v4, v5, v11, v6, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v7);
      MEMORY[0x1DA72CB90](v7, -1, -1);
      MEMORY[0x1DA72CB90](v6, -1, -1);
    }
  }

  else
  {
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v12 = sub_1D917744C();
    __swift_project_value_buffer(v12, qword_1EDCD77B0);
    v13 = v0;
    v4 = sub_1D917741C();
    v5 = sub_1D9178CFC();

    if (os_log_type_enabled(v4, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v17 = v7;
      *v6 = 136446210;
      v14 = sub_1D917949C();
      v16 = sub_1D8CFA924(v14, v15, &v17);

      *(v6 + 4) = v16;
      goto LABEL_10;
    }
  }

  os_unfair_lock_unlock(v1 + 4);
}

void sub_1D915AF58(uint64_t a1, uint64_t a2, double a3)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v6 = Strong;
    sub_1D915B6CC(a1, a3);
  }
}

void sub_1D915AFC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v55 = a4;
  v56 = a3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v54 = &v53 - v5;
  v57 = sub_1D9176E3C();
  v59 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v57);
  v53 = &v53 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v58 = &v53 - v8;
  v9 = sub_1D91773AC();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v53 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D917734C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v53 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1D917737C();
  sub_1D91773DC();
  v18 = sub_1D9178F4C();
  if (sub_1D917918C())
  {

    sub_1D917740C();

    if ((*(v10 + 88))(v12, v9) == *MEMORY[0x1E69E93E8])
    {
      v19 = "[Error] Interval already ended";
    }

    else
    {
      (*(v10 + 8))(v12, v9);
      v19 = "";
    }

    v20 = swift_slowAlloc();
    *v20 = 0;
    v21 = sub_1D917732C();
    _os_signpost_emit_with_name_impl(&dword_1D8CEC000, v17, v18, v21, "Ping", v19, v20, 2u);
    MEMORY[0x1DA72CB90](v20, -1, -1);
  }

  (*(v14 + 8))(v16, v13);
  v22 = v58;
  sub_1D9176E0C();
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (!Strong)
  {
    (*(v59 + 8))(v22, v57);
    return;
  }

  v24 = Strong;
  v25 = OBJC_IVAR___PFDatabaseHangDetector_lock;
  v26 = *(Strong + OBJC_IVAR___PFDatabaseHangDetector_lock);

  os_unfair_lock_lock(v26 + 4);

  v27 = *&v24[OBJC_IVAR___PFDatabaseHangDetector_multiTimer];
  v28 = v57;
  v29 = v59;
  v30 = v55;
  if (!v27 || v27 != v55)
  {
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v44 = sub_1D917744C();
    __swift_project_value_buffer(v44, qword_1EDCD77B0);
    v35 = v24;
    v36 = sub_1D917741C();
    v37 = sub_1D9178CFC();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_20;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v61[0] = v39;
    *v38 = 136446210;
    v45 = sub_1D917949C();
    v47 = sub_1D8CFA924(v45, v46, v61);

    *(v38 + 4) = v47;
    v43 = "%{public}s - DatabaseHangDetector switched to a new multitimer ";
    goto LABEL_19;
  }

  v31 = OBJC_IVAR____TtC18PodcastsFoundationP33_D8DC80449EE77C4DA4BB398C4E1A338F10MultiTimer_startDate;
  swift_beginAccess();
  v32 = v30 + v31;
  v33 = v54;
  sub_1D8CF6B1C(v32, v54);
  if ((*(v29 + 48))(v33, 1, v28) == 1)
  {
    sub_1D8CF5EF8(v33);
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v34 = sub_1D917744C();
    __swift_project_value_buffer(v34, qword_1EDCD77B0);
    v35 = v24;
    v36 = sub_1D917741C();
    v37 = sub_1D9178CFC();

    if (!os_log_type_enabled(v36, v37))
    {
      goto LABEL_20;
    }

    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v60 = v39;
    *v38 = 136446210;
    v40 = sub_1D917949C();
    v42 = sub_1D8CFA924(v40, v41, &v60);

    *(v38 + 4) = v42;
    v43 = "%{public}s - Timer was never started. Be sure the timer is always started before scheduling the block.";
LABEL_19:
    _os_log_impl(&dword_1D8CEC000, v36, v37, v43, v38, 0xCu);
    __swift_destroy_boxed_opaque_existential_1Tm(v39);
    v48 = v39;
    v22 = v58;
    MEMORY[0x1DA72CB90](v48, -1, -1);
    v49 = v38;
    v29 = v59;
    MEMORY[0x1DA72CB90](v49, -1, -1);
LABEL_20:

    os_unfair_lock_unlock((*&v24[v25] + 16));
    (*(v29 + 8))(v22, v28);

    return;
  }

  v50 = v53;
  (*(v29 + 32))(v53, v33, v28);
  sub_1D9176D0C();
  sub_1D8CF6CF8(v51);
  v24[OBJC_IVAR___PFDatabaseHangDetector_status] = 1;
  sub_1D8CF7068();
  v52 = *(v29 + 8);
  v52(v50, v28);
  os_unfair_lock_unlock((*&v24[v25] + 16));
  v52(v22, v28);
}

void sub_1D915B6CC(uint64_t a1, double a2)
{
  v3 = v2;
  v6 = *&v3[OBJC_IVAR___PFDatabaseHangDetector_lock];
  os_unfair_lock_lock(v6 + 4);
  v7 = *&v3[OBJC_IVAR___PFDatabaseHangDetector_multiTimer];
  if (v7)
  {
    v8 = v7 == a1;
  }

  else
  {
    v8 = 0;
  }

  if (v8)
  {
    if (*&v3[OBJC_IVAR___PFDatabaseHangDetector_criticalHangDuration] + -2.22044605e-16 >= a2)
    {
      if (*&v3[OBJC_IVAR___PFDatabaseHangDetector_severeHangDuration] + -2.22044605e-16 >= a2)
      {
        if (*&v3[OBJC_IVAR___PFDatabaseHangDetector_shortHangDuration] + -2.22044605e-16 >= a2)
        {
          v37 = 1;
        }

        else
        {
          if (qword_1EDCD7B38 != -1)
          {
            swift_once();
          }

          v47 = sub_1D917744C();
          __swift_project_value_buffer(v47, qword_1EDCD77B0);
          v48 = v3;
          v49 = sub_1D917741C();
          v50 = sub_1D9178CFC();

          if (os_log_type_enabled(v49, v50))
          {
            v51 = swift_slowAlloc();
            v52 = swift_slowAlloc();
            v56 = v52;
            *v51 = 136446466;
            v53 = sub_1D917949C();
            v55 = sub_1D8CFA924(v53, v54, &v56);

            *(v51 + 4) = v55;
            *(v51 + 12) = 2050;
            *(v51 + 14) = a2;
            _os_log_impl(&dword_1D8CEC000, v49, v50, "[CD HANG] %{public}s is hanging after %{public}fs.", v51, 0x16u);
            __swift_destroy_boxed_opaque_existential_1Tm(v52);
            MEMORY[0x1DA72CB90](v52, -1, -1);
            MEMORY[0x1DA72CB90](v51, -1, -1);
          }

          v37 = 2;
        }
      }

      else
      {
        if (qword_1EDCD7B38 != -1)
        {
          swift_once();
        }

        v38 = sub_1D917744C();
        __swift_project_value_buffer(v38, qword_1EDCD77B0);
        v39 = v3;
        v40 = sub_1D917741C();
        v41 = sub_1D9178CFC();

        if (os_log_type_enabled(v40, v41))
        {
          v42 = swift_slowAlloc();
          v43 = swift_slowAlloc();
          v56 = v43;
          *v42 = 136446466;
          v44 = sub_1D917949C();
          v46 = sub_1D8CFA924(v44, v45, &v56);

          *(v42 + 4) = v46;
          *(v42 + 12) = 2050;
          *(v42 + 14) = a2;
          _os_log_impl(&dword_1D8CEC000, v40, v41, "[CD HANG] [SEVERE] %{public}s is still hanging after %{public}fs.", v42, 0x16u);
          __swift_destroy_boxed_opaque_existential_1Tm(v43);
          MEMORY[0x1DA72CB90](v43, -1, -1);
          MEMORY[0x1DA72CB90](v42, -1, -1);
        }

        v37 = 3;
      }
    }

    else
    {
      v18 = OBJC_IVAR___PFDatabaseHangDetector_loggedFault;
      if ((v3[OBJC_IVAR___PFDatabaseHangDetector_loggedFault] & 1) == 0)
      {
        if (qword_1EDCD7B38 != -1)
        {
          swift_once();
        }

        v19 = sub_1D917744C();
        __swift_project_value_buffer(v19, qword_1EDCD77B0);
        v20 = v3;
        v21 = sub_1D917741C();
        v22 = sub_1D9178D0C();

        if (os_log_type_enabled(v21, v22))
        {
          v23 = swift_slowAlloc();
          v24 = swift_slowAlloc();
          v56 = v24;
          *v23 = 136446210;
          v25 = sub_1D917949C();
          v27 = sub_1D8CFA924(v25, v26, &v56);

          *(v23 + 4) = v27;
          _os_log_impl(&dword_1D8CEC000, v21, v22, "Core data hang in %{public}s reached critical duration", v23, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v24);
          MEMORY[0x1DA72CB90](v24, -1, -1);
          MEMORY[0x1DA72CB90](v23, -1, -1);
        }

        v3[v18] = 1;
      }

      if (qword_1EDCD7B38 != -1)
      {
        swift_once();
      }

      v28 = sub_1D917744C();
      __swift_project_value_buffer(v28, qword_1EDCD77B0);
      v29 = v3;
      v30 = sub_1D917741C();
      v31 = sub_1D9178CFC();

      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v56 = v33;
        *v32 = 136446466;
        v34 = sub_1D917949C();
        v36 = sub_1D8CFA924(v34, v35, &v56);

        *(v32 + 4) = v36;
        *(v32 + 12) = 2050;
        *(v32 + 14) = a2;
        _os_log_impl(&dword_1D8CEC000, v30, v31, "[CD HANG] [CRITICAL] %{public}s is still hanging after %{public}fs.", v32, 0x16u);
        __swift_destroy_boxed_opaque_existential_1Tm(v33);
        MEMORY[0x1DA72CB90](v33, -1, -1);
        MEMORY[0x1DA72CB90](v32, -1, -1);
      }

      v37 = 4;
    }

    v3[OBJC_IVAR___PFDatabaseHangDetector_status] = v37;
  }

  else
  {
    if (qword_1EDCD7B38 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD77B0);
    v10 = v3;
    v11 = sub_1D917741C();
    v12 = sub_1D9178D1C();

    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      v14 = swift_slowAlloc();
      v56 = v14;
      *v13 = 136315138;
      v15 = sub_1D917949C();
      v17 = sub_1D8CFA924(v15, v16, &v56);

      *(v13 + 4) = v17;
      _os_log_impl(&dword_1D8CEC000, v11, v12, "%s - Timer fired after the ping ended.", v13, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v14);
      MEMORY[0x1DA72CB90](v14, -1, -1);
      MEMORY[0x1DA72CB90](v13, -1, -1);
    }
  }

  os_unfair_lock_unlock(v6 + 4);
}

id DatabaseHangDetector.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id DatabaseHangDetector.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DatabaseHangDetector(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_1D915BF6C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v18[-v2];
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v18[-v9];
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v12 = result;
    v13 = OBJC_IVAR____TtC18PodcastsFoundationP33_D8DC80449EE77C4DA4BB398C4E1A338F10MultiTimer_startDate;
    swift_beginAccess();
    sub_1D8CF6B1C(v12 + v13, v3);
    if ((*(v5 + 48))(v3, 1, v4) == 1)
    {

      return sub_1D8CF5EF8(v3);
    }

    else
    {
      (*(v5 + 32))(v10, v3, v4);
      v14 = *(v12 + 32);
      sub_1D9176E0C();
      sub_1D9176D0C();
      v16 = v15;
      v17 = *(v5 + 8);
      v17(v7, v4);
      v14(v12, v16);
      v17(v10, v4);
    }
  }

  return result;
}

unint64_t sub_1D915C1B0()
{
  result = qword_1ECABB630;
  if (!qword_1ECABB630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB630);
  }

  return result;
}

unint64_t sub_1D915C2D0()
{
  result = qword_1ECABB638;
  if (!qword_1ECABB638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB638);
  }

  return result;
}

uint64_t sub_1D915C388(unint64_t a1)
{
  if (a1 >> 62)
  {
    sub_1D917935C();
  }

  return sub_1D91794DC();
}

void sub_1D915C41C(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  if (qword_1EDCD6290 != -1)
  {
    swift_once();
  }

  v5 = qword_1EDCD6298;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7770, &qword_1D9198880);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D918A530;
  *(inited + 32) = 0x6E6F697461727564;
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithDouble_];
  *(inited + 56) = 0x747865746E6F63;
  *(inited + 64) = 0xE700000000000000;
  sub_1D8CF2154(0, &qword_1EDCD76D0, 0x1E696AEC0);
  *(inited + 72) = sub_1D917917C();
  v7 = sub_1D8D6F4B4(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7778, &qword_1D91BD910);
  swift_arrayDestroy();
  v8 = objc_allocWithZone(type metadata accessor for AnalyticsEvent());
  v9 = swift_allocObject();
  *(v9 + 16) = v7;
  v12[4] = sub_1D8E81910;
  v12[5] = v9;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1D8D6F198;
  v12[3] = &block_descriptor_80_3;
  v10 = _Block_copy(v12);

  v11 = [v8 initWithName:@"com.apple.podcasts.CoreDataHang" generator:v10];
  _Block_release(v10);
  [v5 sendEvent_];
}

void sub_1D915C67C()
{
  v1 = *(sub_1D917739C() - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = (*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8;
  v4 = (v3 + 15) & 0xFFFFFFFFFFFFFFF8;
  v5 = *(v0 + v3);
  v6 = *(v0 + v4);
  v7 = *(v0 + ((v4 + 15) & 0xFFFFFFFFFFFFFFF8));

  sub_1D915AFC4(v0 + v2, v5, v6, v7);
}

id DeferredLaunchTaskCoordinator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t static DeferredLaunchTaskCoordinator.defaultDeferralDeadline.setter(double a1)
{
  result = swift_beginAccess();
  qword_1ECABB648 = *&a1;
  return result;
}

uint64_t sub_1D915C8E0(double a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1D9177E0C();
  v35 = *(v4 - 8);
  v36 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v33 = &v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_1D9177E9C();
  v32 = *(v34 - 8);
  MEMORY[0x1EEE9AC00](v34);
  v7 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177EDC();
  v9 = *(v8 - 8);
  v10 = *(v9 + 64);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v28 - v13;
  if (qword_1EDCD2400 != -1)
  {
    swift_once();
  }

  v15 = sub_1D917744C();
  __swift_project_value_buffer(v15, qword_1EDCDE818);
  v16 = sub_1D917741C();
  v17 = sub_1D9178CDC();
  if (os_log_type_enabled(v16, v17))
  {
    v18 = swift_slowAlloc();
    *v18 = 134349056;
    *(v18 + 4) = a1;
    _os_log_impl(&dword_1D8CEC000, v16, v17, "Scheduling %{public}f second timeout for deferred launch tasks.", v18, 0xCu);
    MEMORY[0x1DA72CB90](v18, -1, -1);
  }

  sub_1D9177ECC();
  sub_1D9177F3C();
  v29 = *(v9 + 8);
  v30 = v9 + 8;
  v29(v11, v8);
  v19 = *(v2 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  v20 = swift_allocObject();
  swift_unknownObjectWeakInit();
  (*(v9 + 16))(v11, v14, v8);
  v21 = (*(v9 + 80) + 24) & ~*(v9 + 80);
  v22 = swift_allocObject();
  *(v22 + 16) = v20;
  (*(v9 + 32))(v22 + v21, v11, v8);
  *(v22 + ((v10 + v21 + 7) & 0xFFFFFFFFFFFFFFF8)) = ObjectType;
  aBlock[4] = sub_1D8DBA14C;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_102;
  v23 = _Block_copy(aBlock);
  v24 = v19;

  sub_1D9177E4C();
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  v25 = v33;
  v26 = v36;
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v25, v23);
  _Block_release(v23);

  (*(v35 + 8))(v25, v26);
  (*(v32 + 8))(v7, v34);
  v29(v14, v8);
}

uint64_t sub_1D915D068()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D9177E0C();
  v21 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v19 = *(v6 - 8);
  v20 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v19 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EDCD2400 != -1)
  {
    swift_once();
  }

  v9 = sub_1D917744C();
  __swift_project_value_buffer(v9, qword_1EDCDE818);
  v10 = sub_1D917741C();
  v11 = sub_1D9178CDC();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_1D8CEC000, v10, v11, "Attempting to run deferred tasks.", v12, 2u);
    MEMORY[0x1DA72CB90](v12, -1, -1);
  }

  v13 = *(v1 + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__adminQueue);
  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  *(v15 + 16) = v14;
  *(v15 + 24) = ObjectType;
  aBlock[4] = sub_1D8DB8F74;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_17_9;
  v16 = _Block_copy(aBlock);
  v17 = v13;

  sub_1D9177E4C();
  v22 = MEMORY[0x1E69E7CC0];
  sub_1D8CFD690(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v8, v5, v16);
  _Block_release(v16);

  (*(v21 + 8))(v5, v3);
  (*(v19 + 8))(v8, v20);
}

void sub_1D915D46C(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR___PFDeferredLaunchTaskCoordinator__deferring) == 1)
    {
      if (qword_1EDCD2400 != -1)
      {
        swift_once();
      }

      v3 = sub_1D917744C();
      __swift_project_value_buffer(v3, qword_1EDCDE818);
      v4 = sub_1D917741C();
      v5 = sub_1D9178CFC();
      if (os_log_type_enabled(v4, v5))
      {
        v6 = swift_slowAlloc();
        *v6 = 0;
        _os_log_impl(&dword_1D8CEC000, v4, v5, "Launch task deferral timed out. Starting tasks.", v6, 2u);
        MEMORY[0x1DA72CB90](v6, -1, -1);
      }

      sub_1D915D068();
    }
  }
}

id DeferredLaunchTaskCoordinator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for DeferredLaunchTaskCoordinator();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall DeviceCapacityMonitor.removeCapacityChangeObserver(with:)(Swift::Int64 with)
{
  v2 = *(v1 + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);

  os_unfair_lock_lock(v2 + 6);
  sub_1D91600FC(&v2[4]);
  os_unfair_lock_unlock(v2 + 6);
}

uint64_t DeviceCapacityMonitor.CapacityLevel.description.getter(uint64_t a1)
{
  switch(a1)
  {
    case 0:
      return 0x64657269736564;
    case 2:
      return 1819047270;
    case 1:
      return 7827308;
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

unint64_t DeviceCapacityMonitor.CapacityLevel.init(rawValue:)(unint64_t result)
{
  if (result > 2)
  {
    return 0;
  }

  return result;
}

uint64_t sub_1D915D84C(uint64_t a1)
{
  v2 = *v1;
  if (!*v1)
  {
    return 0x64657269736564;
  }

  if (v2 == 2)
  {
    return 1819047270;
  }

  if (v2 == 1)
  {
    return 7827308;
  }

  result = sub_1D9179C9C();
  __break(1u);
  return result;
}

void *DeviceCapacityMonitor.activeNotificationName.getter()
{
  v1 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v2 = *(v0 + v1);

  os_unfair_lock_lock((v2 + 24));
  v3 = *(v2 + 16);
  v4 = v3;
  os_unfair_lock_unlock((v2 + 24));

  return v3;
}

void DeviceCapacityMonitor.activeNotificationName.setter(void *a1)
{
  sub_1D8CFCC6C(a1);
}

uint64_t sub_1D915DA14@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v4 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  swift_beginAccess();
  v5 = *(v3 + v4);

  os_unfair_lock_lock((v5 + 24));
  v6 = *(v5 + 16);
  v7 = v6;
  os_unfair_lock_unlock((v5 + 24));

  *a2 = v6;
  return result;
}

void (*DeviceCapacityMonitor.activeNotificationName.modify(uint64_t *a1))(char **a1, char a2)
{
  if (MEMORY[0x1E69E7D08])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x50uLL);
  }

  v4 = v3;
  *a1 = v3;
  v5 = OBJC_IVAR___MTDeviceCapacityMonitor__activeNotificationName;
  *(v3 + 64) = v1;
  *(v3 + 72) = v5;
  swift_beginAccess();
  v6 = *(v1 + v5);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);
  v8 = v7;
  os_unfair_lock_unlock((v6 + 24));

  *(v4 + 48) = v7;
  return sub_1D915DB50;
}

void sub_1D915DB50(char **a1, char a2)
{
  v2 = *a1;
  v4 = (*a1 + 48);
  v3 = *v4;
  v5 = *a1 + 56;
  v6 = *(*a1 + 8);
  v7 = *(*a1 + 9);
  if (a2)
  {
    v8 = v3;
    sub_1D8CFCD00(v3);
    v9 = swift_beginAccess();
    *v5 = v3;
    v10 = *(v6 + v7);
    MEMORY[0x1EEE9AC00](v9);
    v11 = v8;
    os_unfair_lock_lock((v10 + 24));
    sub_1D8CFCFDC((v10 + 16));
    os_unfair_lock_unlock((v10 + 24));

    swift_endAccess();
    v12 = *v4;
  }

  else
  {
    sub_1D8CFCD00(*(*a1 + 6));
    v13 = swift_beginAccess();
    *v5 = v3;
    v14 = *(v6 + v7);
    MEMORY[0x1EEE9AC00](v13);
    v12 = v3;
    os_unfair_lock_lock((v14 + 24));
    sub_1D8CFCFC4((v14 + 16));
    os_unfair_lock_unlock((v14 + 24));

    swift_endAccess();
  }

  free(v2);
}

void sub_1D915DCC4(uint64_t a1)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    dispatch_resume(*(Strong + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue));
  }
}

uint64_t sub_1D915DD28(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1D9177E0C();
  v20 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = sub_1D9177E9C();
  v8 = *(v19 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = sub_1D915E050();
  }

  else
  {
    v13 = 0;
  }

  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v14 = sub_1D9178E1C();
  v15 = swift_allocObject();
  v15[2] = a2;
  v15[3] = a3;
  v15[4] = v13;
  aBlock[4] = sub_1D915FFFC;
  aBlock[5] = v15;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_24_10;
  v16 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v10, v7, v16);
  _Block_release(v16);

  (*(v20 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v19);
}

uint64_t sub_1D915E050()
{
  v1 = *(v0 + OBJC_IVAR___MTDeviceCapacityMonitor_capacityThreshold);
  v2 = *(v0 + OBJC_IVAR___MTDeviceCapacityMonitor_capacityThreshold + 8);
  swift_beginAccess();
  v8 = URL.volumeAvailableCapacityForOpportunisticUsage()();
  value = v8.value;
  is_nil = v8.is_nil;
  swift_endAccess();
  if (is_nil)
  {
    return 0;
  }

  if (!v2)
  {
    if (v1 < value)
    {
      return 0;
    }

LABEL_7:
    swift_beginAccess();
    v9 = URL.volumeAvailableCapacity()();
    v6 = v9.value;
    v7 = v9.is_nil;
    swift_endAccess();
    if (!v7)
    {
      if (v2)
      {
        if (v6 > 0)
        {
          return 1;
        }
      }

      else if (v1 < v6)
      {
        return 1;
      }

      return 2;
    }

    return 1;
  }

  if (value <= 0)
  {
    goto LABEL_7;
  }

  return 0;
}

id DeviceCapacityMonitor.__deallocating_deinit()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1D9177E0C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v15 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D9177E9C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v15 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource;
  if (*&v0[OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource])
  {
    swift_getObjectType();
    v15 = v3;
    swift_unknownObjectRetain();
    sub_1D9177E4C();
    sub_1D915E418();
    sub_1D9178F0C();
    swift_unknownObjectRelease();
    (*(v4 + 8))(v6, v15);
    (*(v8 + 8))(v10, v7);
    if (*&v0[v11])
    {
      swift_getObjectType();
      swift_unknownObjectRetain();
      sub_1D9178F2C();
      swift_unknownObjectRelease();
    }
  }

  v12 = *&v0[OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers];

  os_unfair_lock_lock((v12 + 24));
  v13 = *(v12 + 16);
  swift_beginAccess();
  *(v13 + 16) = MEMORY[0x1E69E7CC8];

  os_unfair_lock_unlock((v12 + 24));

  v16.receiver = v1;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_dealloc);
}

uint64_t sub_1D915E418()
{
  sub_1D9177E0C();
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  return sub_1D91792CC();
}

uint64_t sub_1D915E654(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = sub_1D8D490F4(a2);
  if (v5)
  {
    v6 = v4;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v8 = *(v3 + 16);
    *(v3 + 16) = 0x8000000000000000;
    if (!isUniquelyReferenced_nonNull_native)
    {
      sub_1D8F86A24();
    }

    sub_1D8F81C7C(v6, v8);
    *(v3 + 16) = v8;
  }

  return swift_endAccess();
}

void sub_1D915E794(uint64_t a1)
{
  v2 = sub_1D9177E0C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v18 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9177E9C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = *(Strong + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource);
    v12 = Strong;
    swift_unknownObjectRetain();

    if (v11)
    {
      swift_getObjectType();
      v13 = sub_1D9178F1C();
      if (MT_isDispatchSourceDataVfsDesiredDisk(v13))
      {
        v19 = v7;
        v20 = v3;
        v14 = 0;
      }

      else if (MT_isDispatchSourceDataVfsConstrainedDisk(v13))
      {
        v19 = v7;
        v20 = v3;
        v14 = 1;
      }

      else
      {
        if (!MT_isDispatchSourceDataVfsFullDisk(v13))
        {
          swift_unknownObjectRelease();
          return;
        }

        v19 = v7;
        v20 = v3;
        v14 = 2;
      }

      sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
      v18 = sub_1D9178E1C();
      v15 = swift_allocObject();
      *(v15 + 16) = a1;
      *(v15 + 24) = v14;
      aBlock[4] = sub_1D91600B4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8CF5F60;
      aBlock[3] = &block_descriptor_98_3;
      v16 = _Block_copy(aBlock);

      sub_1D9177E4C();
      aBlock[0] = MEMORY[0x1E69E7CC0];
      sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
      sub_1D91792CC();
      v17 = v18;
      MEMORY[0x1DA72A400](0, v9, v5, v16);
      _Block_release(v16);
      swift_unknownObjectRelease();

      (*(v20 + 8))(v5, v2);
      (*(v19 + 8))(v9, v6);
    }
  }
}

void sub_1D915EB24(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1D915EB80(a2);
  }
}

uint64_t sub_1D915EB80(uint64_t a1)
{
  v3 = sub_1D9177E0C();
  v31 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v29 = &v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = sub_1D9177E9C();
  v28 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v27 = &v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v1 + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);

  os_unfair_lock_lock((v6 + 24));
  v7 = *(v6 + 16);

  os_unfair_lock_unlock((v6 + 24));

  swift_beginAccess();
  v8 = *(v7 + 16);
  v9 = *(v8 + 16);
  if (v9)
  {
    v24 = v1;
    v25 = a1;
    v26 = v3;
    v10 = sub_1D8F0641C(v9, 0);
    v11 = sub_1D8F0C328(aBlock, v10 + 2, v9, v8);
    v12 = aBlock[0];

    result = sub_1D8D1B144(v12);
    if (v11 != v9)
    {
      __break(1u);
      return result;
    }

    a1 = v25;
    v3 = v26;
    v1 = v24;
  }

  else
  {

    v10 = MEMORY[0x1E69E7CC0];
  }

  v14 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v15 = swift_allocObject();
  v15[2] = a1;
  v15[3] = v14;
  v15[4] = v10;
  if (*(v1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v16 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v17 = *(v1 + v16);

    os_unfair_lock_lock((v17 + 24));
    v18 = *(v17 + 16);
    os_unfair_lock_unlock((v17 + 24));

    sub_1D915F434(v18, a1, v14, v10);
  }

  else
  {
    v26 = *(v1 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v19 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v20 = swift_allocObject();
    v20[2] = v19;
    v20[3] = sub_1D916005C;
    v20[4] = v15;
    aBlock[4] = sub_1D9160118;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_47_2;
    v21 = _Block_copy(aBlock);

    v22 = v27;
    sub_1D9177E4C();
    v32 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    v23 = v29;
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v22, v23, v21);
    _Block_release(v21);

    (*(v31 + 8))(v23, v3);
    (*(v28 + 8))(v22, v30);
  }
}

uint64_t sub_1D915F078(uint64_t a1)
{
  v2 = sub_1D9177E0C();
  v16 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1D9177E9C();
  v5 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9178D0C();
  if (qword_1EDCD5AB8 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  v9 = qword_1EDCD5AC0;
  v10 = MEMORY[0x1E69E7CC0];
  sub_1D91772DC(v8, &dword_1D8CEC000, v9, "DispatchSource was canceled outside of deinit.", 46, 2, MEMORY[0x1E69E7CC0]);

  sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
  v11 = sub_1D9178E1C();
  aBlock[4] = sub_1D91600AC;
  aBlock[5] = a1;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_92_0;
  v12 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = v10;
  sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v4, v12);
  _Block_release(v12);

  (*(v16 + 8))(v4, v2);
  return (*(v5 + 8))(v7, v15);
}

char *sub_1D915F3D0(uint64_t a1)
{
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    *&result[OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource] = 0;

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1D915F434(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 != a1)
  {
    v6 = sub_1D9178CEC();
    if (qword_1EDCD5AB8 != -1)
    {
      swift_once();
    }

    swift_beginAccess();
    v7 = qword_1EDCD5AC0;
    if (os_log_type_enabled(qword_1EDCD5AC0, v6))
    {
      v8 = v7;
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v22[0] = v10;
      *v9 = 136315138;
      if (a2)
      {
        if (a2 == 2)
        {
          v11 = 0xE400000000000000;
          v12 = 1819047270;
        }

        else
        {
          if (a2 != 1)
          {
            sub_1D9179C9C();
            __break(1u);
            return;
          }

          v11 = 0xE300000000000000;
          v12 = 7827308;
        }
      }

      else
      {
        v11 = 0xE700000000000000;
        v12 = 0x64657269736564;
      }

      v13 = sub_1D8CFA924(v12, v11, v22);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1D8CEC000, v8, v6, "Device capacity reached %s threshold, notifying observers.", v9, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v10);
      MEMORY[0x1DA72CB90](v10, -1, -1);
      MEMORY[0x1DA72CB90](v9, -1, -1);
    }

    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v15 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
      v16 = Strong;
      swift_beginAccess();
      v17 = *&v16[v15];
      os_unfair_lock_lock((v17 + 24));
      *(v17 + 16) = a2;
      os_unfair_lock_unlock((v17 + 24));
      swift_endAccess();
    }

    v18 = *(a4 + 16);
    if (v18)
    {
      v19 = a4 + 40;
      do
      {
        v20 = *(v19 - 8);
        v21[0] = a2;

        v20(v21);

        v19 += 16;
        --v18;
      }

      while (v18);
    }
  }
}

void *sub_1D915F6A4(uint64_t a1)
{
  v1 = sub_1D9177E0C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1D9177E9C();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v15 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v17 = v5;
    v10 = result;
    v11 = sub_1D915E050();
    sub_1D8CF2154(0, &qword_1EDCD7B70, 0x1E69E9610);
    v16 = sub_1D9178E1C();
    v12 = swift_allocObject();
    *(v12 + 16) = v10;
    *(v12 + 24) = v11;
    aBlock[4] = sub_1D9160034;
    aBlock[5] = v12;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_35_3;
    v13 = _Block_copy(aBlock);
    v15 = v10;

    sub_1D9177E4C();
    aBlock[0] = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v14 = v16;
    MEMORY[0x1DA72A400](0, v8, v4, v13);
    _Block_release(v13);

    (*(v2 + 8))(v4, v1);
    return (*(v6 + 8))(v8, v17);
  }

  return result;
}

id DeviceCapacityMonitor.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1D915FA54(uint64_t a1, void (**a2)(void, void))
{
  v4 = sub_1D9177E0C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1D9177E9C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = swift_allocObject();
  *(v12 + 16) = a2;
  if (*(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_vfsSource))
  {
    v13 = OBJC_IVAR___MTDeviceCapacityMonitor____capacityLevel;
    swift_beginAccess();
    v14 = *(a1 + v13);
    _Block_copy(a2);

    os_unfair_lock_lock((v14 + 24));
    v15 = *(v14 + 16);
    os_unfair_lock_unlock((v14 + 24));

    a2[2](a2, v15);
  }

  else
  {
    v24 = *(a1 + OBJC_IVAR___MTDeviceCapacityMonitor_diskAccessQueue);
    v16 = swift_allocObject();
    swift_unknownObjectWeakInit();
    v17 = swift_allocObject();
    v23 = v16;
    v17[2] = v16;
    v17[3] = sub_1D91600F8;
    v17[4] = v12;
    aBlock[4] = sub_1D8E73ED0;
    aBlock[5] = v17;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_103;
    v22 = _Block_copy(aBlock);
    _Block_copy(a2);

    sub_1D9177E4C();
    v25 = MEMORY[0x1E69E7CC0];
    sub_1D8CFBFA0(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    v21 = v8;
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    v18 = v22;
    MEMORY[0x1DA72A400](0, v11, v7, v22);
    _Block_release(v18);
    (*(v5 + 8))(v7, v4);
    (*(v9 + 8))(v11, v21);
  }
}

uint64_t sub_1D915FE1C(char a1, uint64_t a2, void *a3)
{
  *(swift_allocObject() + 16) = a3;
  v6 = _Block_copy(a3);
  if (a1)
  {
    v6 = sub_1D915FA54(a2, a3);
  }

  if ((a1 & 2) != 0)
  {
    v8 = *(a2 + OBJC_IVAR___MTDeviceCapacityMonitor__capacityChangeObservers);
    MEMORY[0x1EEE9AC00](v6);
    MEMORY[0x1EEE9AC00](v9);

    os_unfair_lock_lock(v8 + 6);
    sub_1D91600FC(&v8[4]);
    os_unfair_lock_unlock(v8 + 6);
  }

  return 0;
}

unint64_t sub_1D915FF90()
{
  result = qword_1ECABB680;
  if (!qword_1ECABB680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB680);
  }

  return result;
}

uint64_t sub_1D916011C()
{
  v28 = sub_1D9178E0C();
  v0 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v2 = &v22 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1D9178FDC();
  MEMORY[0x1EEE9AC00](v3);
  v37 = MEMORY[0x1E69E7CC0];
  v4 = MEMORY[0x1E69E7CC0];
  sub_1D91795CC();
  v26 = sub_1D9160BF8();
  v32 = "runThreadBlocking(operation:)";
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000043, 0x80000001D91D9B30);
  v34 = 0;
  v5 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v5);

  v35 = v4;
  v6 = sub_1D9161024(&qword_1ECABB6D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
  v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6D8, &qword_1D91BDB60);
  v7 = sub_1D8CF4934(&qword_1ECABB6E0, &qword_1ECABB6D8, &qword_1D91BDB60);
  v24 = v3;
  v25 = v7;
  v30 = v6;
  sub_1D91792CC();
  v29 = *MEMORY[0x1E69E8098];
  v8 = *(v0 + 104);
  v31 = v0 + 104;
  v27 = v8;
  v9 = v28;
  v8(v2);
  sub_1D9178FEC();
  sub_1D917959C();
  sub_1D91795DC();
  sub_1D91795EC();
  sub_1D91795AC();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  v10 = v32;
  MEMORY[0x1DA7298F0](0xD000000000000043, v32 | 0x8000000000000000);
  v34 = 1;
  v11 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v11);

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v23 = v2;
  v12 = v29;
  v27(v2, v29, v9);
  sub_1D9178FEC();
  sub_1D917959C();
  sub_1D91795DC();
  sub_1D91795EC();
  sub_1D91795AC();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000043, v10 | 0x8000000000000000);
  v34 = 2;
  v13 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v13);

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v14 = v23;
  v15 = v12;
  v16 = v27;
  v27(v23, v15, v28);
  sub_1D9178FEC();
  sub_1D917959C();
  sub_1D91795DC();
  sub_1D91795EC();
  sub_1D91795AC();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000043, v32 | 0x8000000000000000);
  v34 = 3;
  v17 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v17);

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v18 = v28;
  v16(v14, v29, v28);
  sub_1D9178FEC();
  sub_1D917959C();
  sub_1D91795DC();
  sub_1D91795EC();
  sub_1D91795AC();
  v35 = 0;
  v36 = 0xE000000000000000;
  sub_1D917946C();
  MEMORY[0x1DA7298F0](0xD000000000000043, v32 | 0x8000000000000000);
  v34 = 4;
  v19 = sub_1D9179A4C();
  MEMORY[0x1DA7298F0](v19);

  v35 = MEMORY[0x1E69E7CC0];
  sub_1D91792CC();
  v16(v14, v29, v18);
  sub_1D9178FEC();
  sub_1D917959C();
  sub_1D91795DC();
  sub_1D91795EC();
  sub_1D91795AC();
  v20 = v37;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6E8, &unk_1D91BDB68);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  qword_1ECABB6B8 = result;
  unk_1ECABB6C0 = v20;
  return result;
}

void DispatchWorkgroup.init(count:label:)(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v8 = sub_1D9178E0C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v19 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D9178FDC();
  MEMORY[0x1EEE9AC00](v12);
  v28 = a1;
  if (a1 < 0)
  {
    __break(1u);
  }

  else
  {
    v15 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v20 = a4;
      v30 = MEMORY[0x1E69E7CC0];
      v27 = v14;
      v25 = &v19 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
      sub_1D91795CC();
      v24 = sub_1D9160BF8();
      v16 = 0;
      v23 = (v9 + 104);
      v22 = *MEMORY[0x1E69E8098];
      v26 = a2;
      v21 = a3;
      do
      {
        v17 = v16 + 1;
        a2();
        v29 = v15;
        sub_1D9161024(&qword_1ECABB6D0, MEMORY[0x1E69E8110], MEMORY[0x1E69E8118]);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6D8, &qword_1D91BDB60);
        sub_1D8CF4934(&qword_1ECABB6E0, &qword_1ECABB6D8, &qword_1D91BDB60);
        sub_1D91792CC();
        (*v23)(v11, v22, v8);
        sub_1D9178FEC();
        sub_1D917959C();
        sub_1D91795DC();
        a2 = v26;
        sub_1D91795EC();
        sub_1D91795AC();
        v16 = v17;
      }

      while (v28 != v17);
      v15 = v30;
      a4 = v20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6E8, &unk_1D91BDB68);
    v18 = swift_allocObject();
    *(v18 + 24) = 0;
    *(v18 + 16) = 0;
    *a4 = v18;
    a4[1] = v15;
  }
}

double static DispatchWorkgroup.swiftConcurrency.getter@<D0>(void *a1@<X8>)
{
  if (qword_1ECAB3738 != -1)
  {
    v3 = a1;
    swift_once();
    a1 = v3;
  }

  v1 = unk_1ECABB6C0;
  *a1 = qword_1ECABB6B8;
  a1[1] = v1;

  return result;
}

uint64_t DispatchWorkgroup.init(workloops:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  a2[1] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB6E8, &unk_1D91BDB68);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = 0;
  *a2 = result;
  return result;
}

unint64_t sub_1D9160BF8()
{
  result = qword_1ECABB6C8;
  if (!qword_1ECABB6C8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ECABB6C8);
  }

  return result;
}

uint64_t DispatchWorkgroup.enqueue(perform:)(uint64_t a1, uint64_t a2)
{
  v5 = sub_1D9177E0C();
  v19 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = sub_1D9177E9C();
  v8 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v10 = &v18 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = v2[1];
  v20 = *v2;
  v12 = v20;
  v21 = v11;
  os_unfair_lock_lock(v20 + 6);
  sub_1D9161008(&v12[4]._os_unfair_lock_opaque, aBlock);
  os_unfair_lock_unlock(v12 + 6);
  result = aBlock[0];
  if ((v11 & 0xC000000000000001) != 0)
  {
    v14 = MEMORY[0x1DA72AA90](aBlock[0], v11);
    goto LABEL_5;
  }

  if ((aBlock[0] & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (aBlock[0] < *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v14 = *&v11[2 * aBlock[0] + 8]._os_unfair_lock_opaque;
LABEL_5:
    v15 = v14;
    v16 = swift_allocObject();
    *(v16 + 16) = a1;
    *(v16 + 24) = a2;
    aBlock[4] = sub_1D8D244E0;
    aBlock[5] = v16;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1D8CF5F60;
    aBlock[3] = &block_descriptor_104;
    v17 = _Block_copy(aBlock);

    sub_1D9177E4C();
    v22 = MEMORY[0x1E69E7CC0];
    sub_1D9161024(&qword_1EDCD7B90, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D8CF4934(&qword_1EDCD7B80, &qword_1ECAB4F60, &unk_1D918B0E0);
    sub_1D91792CC();
    MEMORY[0x1DA72A400](0, v10, v7, v17);
    _Block_release(v17);

    (*(v19 + 8))(v7, v5);
    (*(v8 + 8))(v10, v18);
  }

  __break(1u);
  return result;
}

void *sub_1D9160F74@<X0>(void *result@<X0>, unint64_t a2@<X2>, void *a3@<X8>)
{
  v3 = *result;
  if (a2 >> 62)
  {
    v5 = result;
    v6 = a3;
    v7 = sub_1D917935C();
    a3 = v6;
    v8 = v7;
    result = v5;
    if (v3 == v8)
    {
      goto LABEL_3;
    }
  }

  else if (v3 == *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v4 = 0;
LABEL_6:
    *result = v4;
    *a3 = v3;
    return result;
  }

  v4 = v3 + 1;
  if (!__OFADD__(v3, 1))
  {
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D9161024(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t DispatchWorkgroup.runVerySlow<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D9161098, 0, 0);
}

{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D916139C, 0, 0);
}

uint64_t sub_1D9161098()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D916119C;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD000000000000017, 0x80000001D91D9AF0, sub_1D916133C, v2, v5);
}

uint64_t sub_1D916119C()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D91612D8, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D91612D8()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D916139C()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D91614A0;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD000000000000017, 0x80000001D91D9AF0, sub_1D91615B0, v2, v5);
}

uint64_t sub_1D91614A0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t DispatchWorkgroup.runThreadBlocking<A>(operation:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D9161644, 0, 0);
}

{
  *(v5 + 32) = a3;
  *(v5 + 40) = a4;
  *(v5 + 16) = a1;
  *(v5 + 24) = a2;
  *(v5 + 48) = *v4;
  return MEMORY[0x1EEE6DFA0](sub_1D9161C0C, 0, 0);
}

uint64_t sub_1D9161644()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D9161748;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DE38](v6, 0, 0, 0xD00000000000001DLL, 0x80000001D91D9B10, sub_1D9161A0C, v2, v5);
}

uint64_t sub_1D9161748()
{
  v2 = *v1;
  *(v2 + 80) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D9162120, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D9161884(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a8;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v13 = sub_1D917877C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v24 = a2;
  v25 = a3;
  (*(v14 + 16))(&v22 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v22;
  *(v19 + 2) = a6;
  *(v19 + 3) = v20;
  *(v19 + 4) = a5;
  (*(v14 + 32))(&v19[v18], v17, v13);

  DispatchWorkgroup.enqueue(perform:)(v23, v19);
}

uint64_t sub_1D9161A40(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = v14 - v10;
  v12(v9);
  (*(v5 + 16))(v7, v11, a4);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  sub_1D917877C();
  sub_1D917876C();
  return (*(v5 + 8))(v11, a4);
}

uint64_t sub_1D9161C0C()
{
  v1 = *(v0 + 56);
  v2 = swift_task_alloc();
  *(v0 + 64) = v2;
  v3 = *(v0 + 24);
  *(v2 + 16) = *(v0 + 40);
  *(v2 + 32) = v1;
  *(v2 + 40) = v3;
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1D9162114;
  v5 = *(v0 + 40);
  v6 = *(v0 + 16);

  return MEMORY[0x1EEE6DDE0](v6, 0, 0, 0xD00000000000001DLL, 0x80000001D91D9B10, sub_1D9161E88, v2, v5);
}

uint64_t sub_1D9161D10(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v22 = a4;
  v23 = a8;
  v13 = sub_1D917877C();
  v14 = *(v13 - 8);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v22 - v16;
  v24 = a2;
  v25 = a3;
  (*(v14 + 16))(&v22 - v16, a1, v13, v15);
  v18 = (*(v14 + 80) + 40) & ~*(v14 + 80);
  v19 = swift_allocObject();
  v20 = v22;
  *(v19 + 2) = a6;
  *(v19 + 3) = v20;
  *(v19 + 4) = a5;
  (*(v14 + 32))(&v19[v18], v17, v13);

  DispatchWorkgroup.enqueue(perform:)(v23, v19);
}

uint64_t sub_1D9161ECC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *(a4 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v14 - v10;
  v12(v9);
  (*(v5 + 16))(v7, v11, a4);
  sub_1D917877C();
  sub_1D917876C();
  return (*(v5 + 8))(v11, a4);
}

uint64_t sub_1D9162008()
{
  v1 = v0[2];
  v2 = *(sub_1D917877C() - 8);
  return sub_1D9161ECC(v0[3], v0[4], v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);
}

uint64_t sub_1D9162088()
{
  v1 = v0[2];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB4F40, &qword_1D918B680);
  v2 = *(sub_1D917877C() - 8);
  return sub_1D9161A40(v0[3], v0[4], v0 + ((*(v2 + 80) + 40) & ~*(v2 + 80)), v1);
}

uint64_t EnumStringConvertible<>.description.getter(uint64_t a1, uint64_t a2, double a3)
{
  sub_1D917852C();
  return v4;
}

{
  sub_1D917852C();
  return sub_1D9179A4C();
}

unint64_t sub_1D91621C0@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  result = sub_1D91621F4(*a1);
  *a2 = result;
  *(a2 + 8) = v4 & 1;
  return result;
}

unint64_t sub_1D91621F4(unint64_t result)
{
  if (result > 0xD)
  {
    return 0;
  }

  return result;
}

unint64_t sub_1D9162208()
{
  result = qword_1ECABB6F0;
  if (!qword_1ECABB6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB6F0);
  }

  return result;
}

id NSFileManager.createDirectory(url:createIntermediates:)(uint64_t a1, char a2)
{
  v3 = v2;
  v8[1] = *MEMORY[0x1E69E9840];
  v5 = sub_1D9176B1C();
  v8[0] = 0;
  LODWORD(v3) = [v3 createDirectoryAtURL:v5 withIntermediateDirectories:a2 & 1 attributes:0 error:v8];

  if (v3)
  {
    return v8[0];
  }

  v7 = v8[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

Swift::Bool __swiftcall NSFileManager.fileExists(at:isDirectory:)(Swift::String at, Swift::Bool isDirectory)
{
  v7 = *MEMORY[0x1E69E9840];
  v6 = isDirectory;
  v3 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v6];

  return v4;
}

Swift::Bool __swiftcall NSFileManager.directoryExists(atPath:)(Swift::String atPath)
{
  v6 = *MEMORY[0x1E69E9840];
  v5 = 0;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 fileExistsAtPath:v2 isDirectory:&v5];

  return v3 & v5;
}

id sub_1D9162498()
{
  v1 = v0;
  v5[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D9176B1C();
  v5[0] = 0;
  LODWORD(v1) = [v1 removeItemAtURL:v2 error:v5];

  if (v1)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

id sub_1D9162580()
{
  v5[1] = *MEMORY[0x1E69E9840];
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v5[0] = 0;
  v2 = [v0 removeItemAtPath:v1 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

id sub_1D916263C()
{
  v1 = *v0;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v3 = [v1 fileExistsAtPath_];

  return v3;
}

id sub_1D9162684(uint64_t a1, uint64_t a2, char a3)
{
  v9 = *MEMORY[0x1E69E9840];
  v4 = *v3;
  v8 = a3;
  v5 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v6 = [v4 fileExistsAtPath:v5 isDirectory:&v8];

  return v6;
}

uint64_t sub_1D9162708()
{
  v5 = *MEMORY[0x1E69E9840];
  v1 = *v0;
  v4 = 0;
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  LOBYTE(v1) = [v1 fileExistsAtPath:v2 isDirectory:&v4];

  return (v1 & v4);
}

void *sub_1D91627B4()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v7[0] = 0;
  v2 = [v0 subpathsOfDirectoryAtPath:v1 error:v7];

  v3 = v7[0];
  if (v2)
  {
    v1 = sub_1D91785FC();
    v4 = v3;
  }

  else
  {
    v5 = v7[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v1;
}

void *sub_1D91628B8(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v13[1] = *MEMORY[0x1E69E9840];
  v7 = sub_1D9176B1C();
  if (a2)
  {
    type metadata accessor for URLResourceKey(0);
    a2 = sub_1D91785DC();
  }

  v13[0] = 0;
  v8 = [v4 contentsOfDirectoryAtURL:v7 includingPropertiesForKeys:a2 options:a3 error:v13];

  v9 = v13[0];
  if (v8)
  {
    sub_1D9176C2C();
    v4 = sub_1D91785FC();
    v10 = v9;
  }

  else
  {
    v11 = v13[0];
    sub_1D9176A6C();

    swift_willThrow();
  }

  return v4;
}

id sub_1D9162A00()
{
  v1 = v0;
  v6[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D9176B1C();
  v3 = sub_1D9176B1C();
  v6[0] = 0;
  LODWORD(v1) = [v1 moveItemAtURL:v2 toURL:v3 error:v6];

  if (v1)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1D9176A6C();

  return swift_willThrow();
}

void sub_1D9162AE4()
{
  v1 = [*v0 temporaryDirectory];
  sub_1D9176B9C();
}

uint64_t type metadata accessor for FileError(uint64_t a1)
{
  result = qword_1ECABB6F8;
  if (!qword_1ECABB6F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D9162CF8(uint64_t a1)
{
  v1 = sub_1D9176C2C();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v1;
}

id sub_1D9162DC4(double a1, uint64_t a2, void *a3)
{
  v5 = type metadata accessor for FutureDateChecker();
  v6 = objc_allocWithZone(v5);
  *&v6[OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_leniency] = 0x404E000000000000;
  *&v6[OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertionLeniency] = a1;
  v6[OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures] = 1;
  v8.receiver = v6;
  v8.super_class = v5;
  result = objc_msgSendSuper2(&v8, sel_init);
  *a3 = result;
  return result;
}

id sub_1D9162E90(uint64_t a1, uint64_t a2, void *a3, void **a4, uint64_t a5)
{
  if (*a3 == -1)
  {
    v6 = *a4;
  }

  else
  {
    swift_once();
    v6 = *a4;
  }

  return v6;
}

uint64_t static FutureDateChecker.sharedInstanceShouldAssertTestsOnly.getter()
{
  if (qword_1ECAB3740 != -1)
  {
    swift_once();
  }

  return *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures);
}

uint64_t static FutureDateChecker.sharedInstanceShouldAssertTestsOnly.setter(uint64_t result)
{
  if (qword_1ECAB3740 != -1)
  {
    v1 = result;
    swift_once();
    result = v1;
  }

  *(qword_1ECAB20C8 + OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures) = result & 1;
  return result;
}

uint64_t (*static FutureDateChecker.sharedInstanceShouldAssertTestsOnly.modify(uint64_t a1))(uint64_t result)
{
  if (qword_1ECAB3740 != -1)
  {
    v4 = a1;
    swift_once();
    a1 = v4;
  }

  v1 = qword_1ECAB20C8;
  v2 = OBJC_IVAR____TtC18PodcastsFoundation17FutureDateChecker_assertOnFutures;
  *a1 = qword_1ECAB20C8;
  *(a1 + 8) = v2;
  *(a1 + 16) = *(v1 + v2);
  return sub_1D916310C;
}

BOOL sub_1D916313C(double a1)
{
  sub_1D9176CDC();

  return sub_1D9163AFC(a1, v2);
}

BOOL sub_1D91631C4(uint64_t a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75C0, &unk_1D9188A50);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v16 - v4;
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF6B1C(a2, v5);
  v10 = *(v7 + 48);
  if (v10(v5, 1, v6) == 1)
  {
    sub_1D9176E2C();
    if (v10(v5, 1, v6) != 1)
    {
      sub_1D8CF5EF8(v5);
    }
  }

  else
  {
    (*(v7 + 32))(v9, v5, v6);
  }

  sub_1D9176CCC();
  v12 = v11;
  sub_1D9176CCC();
  v14 = sub_1D9163AFC(v12, v13);
  (*(v7 + 8))(v9, v6);
  return v14;
}

BOOL sub_1D9163688(uint64_t a1)
{
  sub_1D9176CCC();
  v2 = v1;
  sub_1D9176CCC();
  return sub_1D9163AFC(v2, v3);
}

BOOL sub_1D91638D0(uint64_t a1)
{
  sub_1D9176CCC();
  v2 = v1;
  sub_1D9176CDC();
  return sub_1D9163AFC(v2, v3);
}

id FutureDateChecker.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FutureDateChecker.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FutureDateChecker();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

BOOL sub_1D9163AFC(double a1, double a2)
{
  v4 = sub_1D9176E3C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v23[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_1D917744C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v23[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = a2 + 60.0;
  if (v12 < a1)
  {
    if (qword_1EDCD0768 != -1)
    {
      swift_once();
    }

    v13 = __swift_project_value_buffer(v8, qword_1EDCD0770);
    swift_beginAccess();
    (*(v9 + 16))(v11, v13, v8);
    v14 = sub_1D917741C();
    v15 = sub_1D9178CFC();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v25 = swift_slowAlloc();
      v26 = v25;
      *v16 = 136446210;
      sub_1D9176CBC();
      sub_1D8F45634();
      v24 = v15;
      v17 = sub_1D9179A4C();
      v19 = v18;
      (*(v5 + 8))(v7, v4);
      v20 = sub_1D8CFA924(v17, v19, &v26);

      *(v16 + 4) = v20;
      _os_log_impl(&dword_1D8CEC000, v14, v24, "Caught future timestamp: %{public}s", v16, 0xCu);
      v21 = v25;
      __swift_destroy_boxed_opaque_existential_1Tm(v25);
      MEMORY[0x1DA72CB90](v21, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
    }

    (*(v9 + 8))(v11, v8);
  }

  return v12 < a1;
}

void *HomogeneousValueBag.__allocating_init()()
{
  v0 = swift_allocObject();
  *(v0 + 16) = sub_1D9177FEC();
  return v0;
}

Swift::Void __swiftcall HomogeneousValueBag.removeAll()()
{
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D91780CC();
  swift_endAccess();
}

uint64_t HomogeneousValueBag.add(value:)(uint64_t a1)
{
  v3 = *(*v1 + 80);
  v4 = sub_1D91791BC();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v11 - v5;
  swift_beginAccess();
  nullsub_1();
  v12 = v7;
  sub_1D917809C();
  swift_getWitnessTable();
  v14 = sub_1D91784FC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB8808, &qword_1D91BDE40);
  sub_1D9164544();
  sub_1D917816C();

  if (v13)
  {
    v8 = 1;
  }

  else
  {
    v8 = v12 + 1;
  }

  v9 = *(v3 - 8);
  (*(v9 + 16))(v6, a1, v3);
  (*(v9 + 56))(v6, 0, 1, v3);
  v14 = v8;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917810C();
  swift_endAccess();
  return v8;
}

Swift::Void __swiftcall HomogeneousValueBag.remove(valueWithToken:)(Swift::Int64 valueWithToken)
{
  v2 = sub_1D91791BC();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v6[-v4];
  v7 = valueWithToken;
  swift_beginAccess();
  sub_1D91780DC();
  sub_1D917807C();
  swift_endAccess();
  (*(v3 + 8))(v5, v2);
}

uint64_t HomogeneousValueBag.values.getter()
{
  swift_beginAccess();
  sub_1D91780AC();

  swift_getWitnessTable();
  return sub_1D917871C();
}

uint64_t HomogeneousValueBag.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_1D9164544()
{
  result = qword_1ECABB720;
  if (!qword_1ECABB720)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB8808, &qword_1D91BDE40);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB720);
  }

  return result;
}

BOOL Loadable.isLoaded.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 2) == 0;
  (*(v2 + 8))(v5, a1);
  return v6;
}

BOOL Loadable.failed.getter(uint64_t a1)
{
  v2 = *(a1 - 8);
  v3 = MEMORY[0x1EEE9AC00](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 16))(v5, v3);
  v6 = (*(*(*(a1 + 16) - 8) + 48))(v5, 2);
  if (v6 != 2)
  {
    (*(v2 + 8))(v5, a1);
  }

  return v6 == 2;
}

uint64_t Loadable.coalescing(update:keepLoadedDataOnFailure:droppingNewNotLoadeds:)@<X0>(uint64_t a1@<X0>, int a2@<W1>, int a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v6 = v5;
  v25 = a2;
  v26 = a3;
  v28 = a5;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v10.n128_f64[0] = MEMORY[0x1EEE9AC00](TupleTypeMetadata2 - 8);
  v12 = &v24 - v11;
  v14 = *(v13 + 56);
  v15 = *(a4 - 8);
  v16 = *(v15 + 16);
  v27 = v6;
  v16(&v24 - v11, v6, a4, v10);
  (v16)(&v12[v14], a1, a4);
  v17 = *(a4 + 16);
  v18 = *(*(v17 - 8) + 48);
  v19 = v18(&v12[v14], 2, v17);
  if (!v19)
  {
    (v16)(v28, a1, a4);
    v21 = *(v15 + 8);
    v21(&v12[v14], a4);
    return (v21)(v12, a4);
  }

  if (v19 == 1)
  {
    v20 = v26;
  }

  else
  {
    if (v18(v12, 2, v17))
    {
      return (v16)(v28, a1, a4);
    }

    v20 = v25;
  }

  if (v20)
  {
    v23 = v27;
  }

  else
  {
    v23 = a1;
  }

  (v16)(v28, v23, a4);
  return (*(v15 + 8))(v12, a4);
}

uint64_t Loadable.coalesce(update:keepLoadedDataOnFailure:droppingNewNotLoadeds:)(uint64_t a1, int a2, int a3, uint64_t a4)
{
  v9 = *(a4 - 8);
  v10 = MEMORY[0x1EEE9AC00](a1);
  v12 = &v15 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 32))(v12, v4, v13, v10);
  Loadable.coalescing(update:keepLoadedDataOnFailure:droppingNewNotLoadeds:)(a1, a2, a3, a4, v4);
  return (*(v9 + 8))(v12, a4);
}

uint64_t static Loadable<A>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v32 = a4;
  v7 = *(a3 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v31 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for Loadable(0, v9, v9, v10);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v35 = &v30 - v13;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v15 = *(TupleTypeMetadata2 - 8);
  v16 = MEMORY[0x1EEE9AC00](TupleTypeMetadata2);
  v18 = &v30 - v17;
  v33 = v12;
  v34 = v19;
  v20 = *(v19 + 48);
  v21 = *(v12 + 16);
  v21(&v30 - v17, a1, v11, v16);
  (v21)(&v18[v20], a2, v11);
  v22 = *(v7 + 48);
  v23 = v22(v18, 2, a3);
  if (!v23)
  {
    v30 = v7;
    (v21)(v35, v18, v11);
    if (!v22(&v18[v20], 2, a3))
    {
      v26 = v30;
      v27 = v31;
      (*(v30 + 32))(v31, &v18[v20], a3);
      v28 = v35;
      v24 = sub_1D91781BC();
      v29 = *(v26 + 8);
      v29(v27, a3);
      v29(v28, a3);
      v15 = v33;
      goto LABEL_10;
    }

    (*(v30 + 8))(v35, a3);
    goto LABEL_9;
  }

  if (v23 == 1)
  {
    if (v22(&v18[v20], 2, a3) != 1)
    {
      goto LABEL_9;
    }
  }

  else if (v22(&v18[v20], 2, a3) != 2)
  {
LABEL_9:
    v24 = 0;
    v11 = v34;
    goto LABEL_10;
  }

  v24 = 1;
  v15 = v33;
LABEL_10:
  (*(v15 + 8))(v18, v11);
  return v24 & 1;
}

uint64_t sub_1D9164EC4(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = v5 - 2;
  v7 = *(v4 + 64);
  if (v5 <= 1)
  {
    v6 = 0;
    if (v7 <= 3)
    {
      v9 = (~(-1 << (8 * v7)) - v5 + 2) >> (8 * v7);
      if (v9 > 0xFFFE)
      {
        v8 = 4;
      }

      else
      {
        v10 = 1;
        if (v9 >= 0xFF)
        {
          v10 = 2;
        }

        if (v9)
        {
          v8 = v10;
        }

        else
        {
          v8 = 0;
        }
      }
    }

    else
    {
      v8 = 1;
    }

    v7 += v8;
  }

  if (!a2)
  {
    return 0;
  }

  v11 = a2 - v6;
  if (a2 <= v6)
  {
    goto LABEL_36;
  }

  v12 = 8 * v7;
  if (v7 <= 3)
  {
    v14 = ((v11 + ~(-1 << v12)) >> v12) + 1;
    if (HIWORD(v14))
    {
      v13 = *(a1 + v7);
      if (!v13)
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 > 0xFF)
    {
      v13 = *(a1 + v7);
      if (!*(a1 + v7))
      {
        goto LABEL_35;
      }

      goto LABEL_22;
    }

    if (v14 < 2)
    {
LABEL_35:
      if (v6)
      {
LABEL_36:
        v18 = (*(v4 + 48))(a1, v5);
        if (v18 >= 3)
        {
          return v18 - 2;
        }

        else
        {
          return 0;
        }
      }

      return 0;
    }
  }

  v13 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_35;
  }

LABEL_22:
  v15 = (v13 - 1) << v12;
  if (v7 > 3)
  {
    v15 = 0;
  }

  if (v7)
  {
    if (v7 <= 3)
    {
      v16 = v7;
    }

    else
    {
      v16 = 4;
    }

    if (v16 > 2)
    {
      if (v16 == 3)
      {
        v17 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v17 = *a1;
      }
    }

    else if (v16 == 1)
    {
      v17 = *a1;
    }

    else
    {
      v17 = *a1;
    }
  }

  else
  {
    v17 = 0;
  }

  return v6 + (v17 | v15) + 1;
}

unsigned int *sub_1D9165098(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(v5 + 64);
  v8 = v6 - 2;
  if (v6 <= 1)
  {
    v8 = 0;
    if (v7 <= 3)
    {
      v10 = (~(-1 << (8 * v7)) - v6 + 2) >> (8 * v7);
      if (v10 > 0xFFFE)
      {
        v9 = 4;
      }

      else
      {
        v11 = 1;
        if (v10 >= 0xFF)
        {
          v11 = 2;
        }

        if (v10)
        {
          v9 = v11;
        }

        else
        {
          v9 = 0;
        }
      }
    }

    else
    {
      v9 = 1;
    }

    v7 += v9;
  }

  v12 = a3 >= v8;
  v13 = a3 - v8;
  if (v13 != 0 && v12)
  {
    v14 = 1;
    if (v7 <= 3)
    {
      v15 = ((v13 + ~(-1 << (8 * v7))) >> (8 * v7)) + 1;
      v16 = HIWORD(v15);
      if (v15 < 0x100)
      {
        v17 = 1;
      }

      else
      {
        v17 = 2;
      }

      if (v15 >= 2)
      {
        v18 = v17;
      }

      else
      {
        v18 = 0;
      }

      if (v16)
      {
        v14 = 4;
      }

      else
      {
        v14 = v18;
      }
    }

    if (v8 >= a2)
    {
LABEL_29:
      if (v14 > 1)
      {
        if (v14 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_41;
        }

        *(result + v7) = 0;
      }

      else if (v14)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_41;
      }

      if (!a2)
      {
        return result;
      }

LABEL_41:
      v24 = *(v5 + 56);

      return v24();
    }
  }

  else
  {
    v14 = 0;
    if (v8 >= a2)
    {
      goto LABEL_29;
    }
  }

  v19 = ~v8 + a2;
  if (v7 >= 4)
  {
    v20 = result;
    bzero(result, v7);
    result = v20;
    *v20 = v19;
    v21 = 1;
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v21 = (v19 >> (8 * v7)) + 1;
  if (!v7)
  {
LABEL_47:
    if (v14 > 1)
    {
      goto LABEL_51;
    }

    goto LABEL_48;
  }

  v22 = v19 & ~(-1 << (8 * v7));
  v23 = result;
  bzero(result, v7);
  result = v23;
  if (v7 == 3)
  {
    *v23 = v22;
    *(v23 + 2) = BYTE2(v22);
    goto LABEL_47;
  }

  if (v7 == 2)
  {
    *v23 = v22;
    if (v14 > 1)
    {
LABEL_51:
      if (v14 == 2)
      {
        *(result + v7) = v21;
      }

      else
      {
        *(result + v7) = v21;
      }

      return result;
    }
  }

  else
  {
    *v23 = v19;
    if (v14 > 1)
    {
      goto LABEL_51;
    }
  }

LABEL_48:
  if (v14)
  {
    *(result + v7) = v21;
  }

  return result;
}

uint64_t Publisher.mapToLoadable()(uint64_t a1, uint64_t a2)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  type metadata accessor for Loadable(255, AssociatedTypeWitness, v5, v6);
  v7 = sub_1D917768C();
  v21 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v19 - v8;
  v10 = sub_1D91779FC();
  WitnessTable = swift_getWitnessTable();
  v19[1] = WitnessTable;
  v19[0] = swift_getWitnessTable();
  v22 = v7;
  v23 = v10;
  v24 = WitnessTable;
  v25 = v19[0];
  v12 = sub_1D91776AC();
  v20 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = v19 - v13;
  v15 = swift_allocObject();
  *(v15 + 16) = a1;
  *(v15 + 24) = a2;
  sub_1D9177B9C();

  v16 = swift_allocObject();
  *(v16 + 16) = a1;
  *(v16 + 24) = a2;
  sub_1D9177BDC();

  (*(v21 + 8))(v9, v7);
  swift_getWitnessTable();
  v17 = sub_1D9177B1C();
  (*(v20 + 8))(v14, v12);
  return v17;
}

uint64_t sub_1D91655E4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  (*(v9 + 16))(a4, a1, AssociatedTypeWitness);
  v7 = *(v9 + 56);

  return v7(a4, 0, 2, AssociatedTypeWitness);
}

uint64_t sub_1D91656B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v6 = type metadata accessor for Loadable(0, AssociatedTypeWitness, v4, v5);
  v7 = MEMORY[0x1EEE9AC00](v6);
  (*(*(AssociatedTypeWitness - 8) + 56))(&v10 - v8, 2, 2, AssociatedTypeWitness, v7);
  return sub_1D9177A0C();
}

uint64_t sub_1D91657B0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v7 = *(a2 + a3 - 8);
  v8 = *(type metadata accessor for PerformanceLoadable(0, v7, a3, a4) + 40);
  v11 = type metadata accessor for Loadable(0, v7, v9, v10);
  v12 = *(*(v11 - 8) + 16);

  return v12(a5, a1 + v8, v11);
}

void (*PerformanceLoadable.value.modify(void *a1, uint64_t a2))(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x40uLL);
  }

  v9 = v6;
  *a1 = v6;
  *v6 = a2;
  v6[1] = v2;
  v10 = type metadata accessor for Loadable(0, *(a2 + 16), v7, v8);
  v9[2] = v10;
  v11 = *(v10 - 8);
  v12 = v11;
  v9[3] = v11;
  v13 = *(v11 + 64);
  if (v5)
  {
    v9[4] = swift_coroFrameAlloc();
    v14 = swift_coroFrameAlloc();
  }

  else
  {
    v9[4] = malloc(*(v11 + 64));
    v14 = malloc(v13);
  }

  v9[5] = v14;
  v15 = *(v12 + 16);
  v9[6] = v15;
  v9[7] = (v12 + 16) & 0xFFFFFFFFFFFFLL | 0xE3BA000000000000;
  v15();
  return sub_1D9165984;
}

void sub_1D9165984(uint64_t *a1, char a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  if (a2)
  {
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v7 = *(v4 + 16);
    v8 = *(v4 + 24);
    v9 = *v4;
    (*(v4 + 48))(v6, v5, v7, a4);
    sub_1D8D86B9C(v6, v9, v10, v11);
    v12 = *(v8 + 8);
    v12(v6, v7);
    v12(v5, v7);
  }

  else
  {
    v6 = *(v4 + 32);
    v5 = *(v4 + 40);
    v13 = *(v4 + 16);
    v14 = *(v4 + 24);
    sub_1D8D86B9C(v5, *v4, a3, a4);
    (*(v14 + 8))(v5, v13);
  }

  free(v5);
  free(v6);

  free(v4);
}

uint64_t sub_1D9165A6C(unint64_t a1, unsigned int a2, uint64_t a3)
{
  v6 = sub_1D917734C();
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(*(a3 + 16) - 8);
  v10 = *(v9 + 84);
  if (v10 <= 1)
  {
    v11 = 0;
  }

  else
  {
    v11 = v10 - 2;
  }

  v12 = *(v7 + 80);
  v13 = *(*(v6 - 8) + 64);
  v14 = *(v9 + 80);
  v15 = *(v9 + 64);
  if (v8 <= v11)
  {
    v16 = v11;
  }

  else
  {
    v16 = *(v7 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v10 <= 1)
  {
    if (v15 <= 3)
    {
      v19 = (~(-1 << (8 * v15)) - v10 + 2) >> (8 * v15);
      v20 = 1;
      if (v19 >= 0xFF)
      {
        v20 = 2;
      }

      if (!v19)
      {
        v20 = 0;
      }

      if (v19 <= 0xFFFE)
      {
        v18 = v20;
      }

      else
      {
        v18 = 4;
      }
    }

    else
    {
      v18 = 1;
    }

    v15 += v18;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 <= v17)
  {
    goto LABEL_45;
  }

  v21 = v15 + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14);
  v22 = 8 * v21;
  if (v21 <= 3)
  {
    v25 = ((a2 - v17 + ~(-1 << v22)) >> v22) + 1;
    if (HIWORD(v25))
    {
      v23 = *(a1 + v21);
      if (!v23)
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v25 > 0xFF)
    {
      v23 = *(a1 + v21);
      if (!*(a1 + v21))
      {
        goto LABEL_45;
      }

      goto LABEL_32;
    }

    if (v25 < 2)
    {
LABEL_45:
      v29 = a1 & 0xFFFFFFFFFFFFFFF8;
      if ((v16 & 0x80000000) != 0)
      {
        if (v8 == v17)
        {
          v31 = *(v7 + 48);

          return v31((((v29 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12);
        }

        else
        {
          v32 = (*(*(*(a3 + 16) - 8) + 48))((((((v29 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13 + v14) & ~v14, v10);
          if (v32 >= 3)
          {
            return v32 - 2;
          }

          else
          {
            return 0;
          }
        }
      }

      else
      {
        v30 = *(v29 + 24);
        if (v30 >= 0xFFFFFFFF)
        {
          LODWORD(v30) = -1;
        }

        return (v30 + 1);
      }
    }
  }

  v23 = *(a1 + v21);
  if (!*(a1 + v21))
  {
    goto LABEL_45;
  }

LABEL_32:
  v26 = (v23 - 1) << v22;
  if (v21 > 3)
  {
    v26 = 0;
  }

  if (v21)
  {
    if (v21 <= 3)
    {
      v27 = v21;
    }

    else
    {
      v27 = 4;
    }

    if (v27 > 2)
    {
      if (v27 == 3)
      {
        v28 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v28 = *a1;
      }
    }

    else if (v27 == 1)
    {
      v28 = *a1;
    }

    else
    {
      v28 = *a1;
    }
  }

  else
  {
    v28 = 0;
  }

  return v17 + (v28 | v26) + 1;
}

void sub_1D9165D5C(unint64_t a1, uint64_t a2, unsigned int a3, uint64_t a4)
{
  v8 = *(sub_1D917734C() - 8);
  v9 = *(v8 + 84);
  v10 = *(*(a4 + 16) - 8);
  v11 = *(v10 + 84);
  v12 = *(v8 + 80);
  v13 = *(v8 + 64);
  v14 = *(v10 + 80);
  v15 = *(v10 + 64);
  v16 = v11 - 2;
  if (v11 <= 1)
  {
    v16 = 0;
  }

  if (v9 > v16)
  {
    v16 = *(v8 + 84);
  }

  if (v16 <= 0x7FFFFFFF)
  {
    v17 = 0x7FFFFFFF;
  }

  else
  {
    v17 = v16;
  }

  if (v11 <= 1)
  {
    if (v15 <= 3)
    {
      v19 = (~(-1 << (8 * v15)) - v11 + 2) >> (8 * v15);
      v20 = 1;
      if (v19 >= 0xFF)
      {
        v20 = 2;
      }

      if (!v19)
      {
        v20 = 0;
      }

      if (v19 <= 0xFFFE)
      {
        v18 = v20;
      }

      else
      {
        v18 = 4;
      }
    }

    else
    {
      v18 = 1;
    }

    v15 += v18;
  }

  v21 = v15 + ((v13 + ((v12 + 48) & ~v12) + v14) & ~v14);
  v22 = a3 - v17;
  if (a3 <= v17)
  {
    v23 = 0;
    if (v17 < a2)
    {
      goto LABEL_31;
    }
  }

  else
  {
    v23 = 1;
    if (v21 <= 3)
    {
      v24 = ((v22 + ~(-1 << (8 * v21))) >> (8 * v21)) + 1;
      v25 = HIWORD(v24);
      if (v24 < 0x100)
      {
        v26 = 1;
      }

      else
      {
        v26 = 2;
      }

      if (v24 >= 2)
      {
        v27 = v26;
      }

      else
      {
        v27 = 0;
      }

      if (v25)
      {
        v23 = 4;
      }

      else
      {
        v23 = v27;
      }
    }

    if (v17 < a2)
    {
LABEL_31:
      v28 = ~v17 + a2;
      if (v21 < 4)
      {
        v29 = (v28 >> (8 * v21)) + 1;
        if (v21)
        {
          v30 = v28 & ~(-1 << (8 * v21));
          bzero(a1, v21);
          if (v21 != 3)
          {
            if (v21 == 2)
            {
              *a1 = v30;
              if (v23 > 1)
              {
LABEL_66:
                if (v23 == 2)
                {
                  *(a1 + v21) = v29;
                }

                else
                {
                  *(a1 + v21) = v29;
                }

                return;
              }
            }

            else
            {
              *a1 = v28;
              if (v23 > 1)
              {
                goto LABEL_66;
              }
            }

            goto LABEL_63;
          }

          *a1 = v30;
          *(a1 + 2) = BYTE2(v30);
        }

        if (v23 > 1)
        {
          goto LABEL_66;
        }
      }

      else
      {
        bzero(a1, v21);
        *a1 = v28;
        v29 = 1;
        if (v23 > 1)
        {
          goto LABEL_66;
        }
      }

LABEL_63:
      if (v23)
      {
        *(a1 + v21) = v29;
      }

      return;
    }
  }

  if (v23 > 1)
  {
    if (v23 != 2)
    {
      *(a1 + v21) = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_47;
    }

    *(a1 + v21) = 0;
  }

  else if (v23)
  {
    *(a1 + v21) = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_47;
  }

  if (!a2)
  {
    return;
  }

LABEL_47:
  v31 = a1 & 0xFFFFFFFFFFFFFFF8;
  if ((v16 & 0x80000000) != 0)
  {
    if (v9 == v17)
    {
      v33 = *(v8 + 56);

      v33((((v31 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12, a2);
    }

    else
    {
      v34 = *(v10 + 56);

      v34((((((v31 + 39) & 0xFFFFFFFFFFFFFFF8) + v12 + 16) & ~v12) + v13 + v14) & ~v14, (a2 + 2), v11);
    }
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v32 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v32 = (a2 - 1);
    }

    *(v31 + 24) = v32;
  }
}

void sub_1D9166100(void *a1)
{
  v2 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v23 = [a1 podcastForUuid_];

  if (!v23)
  {
    return;
  }

  v3 = sub_1D9166478(v23);
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1EDCD0F88);
  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178D1C();

  if (os_log_type_enabled(v6, v7))
  {
    v8 = swift_slowAlloc();
    v9 = swift_slowAlloc();
    *v8 = 138412290;
    *(v8 + 4) = v5;
    *v9 = v3;
    v10 = v5;
    _os_log_impl(&dword_1D8CEC000, v6, v7, "[UpNextSplit] Current New Episode: %@", v8, 0xCu);
    sub_1D8D08A50(v9, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v9, -1, -1);
    MEMORY[0x1DA72CB90](v8, -1, -1);
  }

  if ([v23 isSerialShowTypeInFeed])
  {
    v11 = sub_1D9167BDC(v23);
  }

  else if ([v23 playbackNewestToOldest])
  {
    v11 = sub_1D9168538(v23);
  }

  else
  {
    v11 = sub_1D91691D0(v23);
  }

  v12 = v11;
  v13 = v11;
  v14 = sub_1D917741C();
  v15 = sub_1D9178D1C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138412290;
    *(v16 + 4) = v13;
    *v17 = v12;
    v18 = v13;
    _os_log_impl(&dword_1D8CEC000, v14, v15, "[UpNextSplit] Next New Episode: %@", v16, 0xCu);
    sub_1D8D08A50(v17, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);
  }

  if (v3)
  {
    v19 = v23;
    if (v12)
    {
      sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
      v20 = v5;
      v21 = v13;
      v22 = sub_1D917914C();

      v19 = v23;
      if (v22)
      {
        v13 = v21;
LABEL_20:

        v19 = v23;
        goto LABEL_21;
      }
    }

LABEL_19:
    sub_1D9166888(v19);
    sub_1D9167038(v12);
    v20 = v23;
    v23 = v5;
    goto LABEL_20;
  }

  v19 = v23;
  if (v12)
  {
    goto LABEL_19;
  }

LABEL_21:
}

unint64_t sub_1D9166478(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D9189080;
  *(v3 + 56) = sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  *(v3 + 64) = sub_1D916A6C8(&qword_1ECABB728, &qword_1EDCD0790, off_1E8567640);
  *(v3 + 32) = a1;
  v4 = a1;
  v5 = sub_1D9178C8C();
  [v2 setPredicate_];

  [v2 setResultType_];
  sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  result = sub_1D917908C();
  if (result >> 62)
  {
    v9 = result;
    v10 = sub_1D917935C();
    result = v9;
    if (v10)
    {
      goto LABEL_3;
    }

LABEL_8:

    return 0;
  }

  if (!*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_8;
  }

LABEL_3:
  if ((result & 0xC000000000000001) != 0)
  {
    v7 = MEMORY[0x1DA72AA90](0);
    goto LABEL_6;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v7 = *(result + 32);
LABEL_6:
    v8 = v7;

    return v8;
  }

  __break(1u);
  return result;
}

void sub_1D9166888(void *a1)
{
  v60 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1D918C190;
  v3 = objc_opt_self();
  v4 = [a1 objectID];
  v5 = [v3 predicateForAllEpisodesOnPodcast_];

  *(v2 + 32) = v5;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D9189080;
  v7 = sub_1D917820C();
  v9 = v8;
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = sub_1D8D34978();
  *(v6 + 32) = v7;
  *(v6 + 40) = v9;
  *(v2 + 40) = sub_1D9178C8C();
  v10 = sub_1D91785DC();

  v11 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v60 setPredicate:v11];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v24 = sub_1D917908C();
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v25 = sub_1D917744C();
  __swift_project_value_buffer(v25, qword_1EDCD0F88);

  v26 = a1;
  v27 = sub_1D917741C();
  v28 = sub_1D9178D1C();

  v29 = v24 >> 62;
  if (os_log_type_enabled(v27, v28))
  {
    v30 = swift_slowAlloc();
    v31 = swift_slowAlloc();
    v61[0] = v31;
    *v30 = 134218499;
    if (v29)
    {
      v32 = sub_1D917935C();
    }

    else
    {
      v32 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v30 + 4) = v32;

    *(v30 + 12) = 2080;
    v33 = [v26 uuid];
    if (v33)
    {
      v34 = v33;
      v35 = sub_1D917820C();
      v37 = v36;
    }

    else
    {
      v35 = 0x44495555206F6E3CLL;
      v37 = 0xE90000000000003ELL;
    }

    v48 = sub_1D8CFA924(v35, v37, v61);

    *(v30 + 14) = v48;
    *(v30 + 22) = 2081;
    v49 = [v26 title];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D917820C();
      v53 = v52;
    }

    else
    {
      v51 = 0x6C746974206F6E3CLL;
      v53 = 0xEA00000000003E65;
    }

    v54 = sub_1D8CFA924(v51, v53, v61);

    *(v30 + 24) = v54;
    _os_log_impl(&dword_1D8CEC000, v27, v28, "[UpNextSplit] Resetting current new episode marker for %ld on podcast %s - %{private}s", v30, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v31, -1, -1);
    MEMORY[0x1DA72CB90](v30, -1, -1);
  }

  else
  {
  }

  if (v29)
  {
    v55 = sub_1D917935C();
    if (v55)
    {
      goto LABEL_28;
    }

LABEL_39:

    v38 = v60;
LABEL_40:

    goto LABEL_14;
  }

  v55 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v55)
  {
    goto LABEL_39;
  }

LABEL_28:
  v56 = 0;
  while (1)
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v57 = MEMORY[0x1DA72AA90](v56, v24);
    }

    else
    {
      if (v56 >= *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_37;
      }

      v57 = *(v24 + 8 * v56 + 32);
    }

    v28 = v57;
    v58 = (v56 + 1);
    if (__OFADD__(v56, 1))
    {
      break;
    }

    [v57 setIsCurrentNewEpisode_];

    ++v56;
    if (v58 == v55)
    {
      goto LABEL_39;
    }
  }

  __break(1u);
LABEL_37:
  __break(1u);
  swift_once();
  v12 = sub_1D917744C();
  __swift_project_value_buffer(v12, qword_1EDCD0F88);
  v13 = v28;
  v14 = v56;
  oslog = sub_1D917741C();
  v15 = sub_1D9178D0C();

  if (os_log_type_enabled(oslog, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    v18 = swift_slowAlloc();
    v61[0] = v18;
    *v16 = 136315651;
    v19 = [v13 uuid];
    if (v19)
    {
      v20 = v19;
      v21 = sub_1D917820C();
      v23 = v22;
    }

    else
    {
      v21 = 0x44495555206F6E3CLL;
      v23 = 0xE90000000000003ELL;
    }

    v39 = sub_1D8CFA924(v21, v23, v61);

    *(v16 + 4) = v39;
    *(v16 + 12) = 2081;
    v40 = [v13 title];
    if (v40)
    {
      v41 = v40;
      v42 = sub_1D917820C();
      v44 = v43;
    }

    else
    {
      v42 = 0x6C746974206F6E3CLL;
      v44 = 0xEA00000000003E65;
    }

    v45 = sub_1D8CFA924(v42, v44, v61);

    *(v16 + 14) = v45;
    *(v16 + 22) = 2112;
    v46 = v56;
    v47 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 24) = v47;
    *v17 = v47;
    _os_log_impl(&dword_1D8CEC000, oslog, v15, "[UpNextSplit] Error resetting isCurrentNewEpisode for show %s - %{private}s: %@", v16, 0x20u);
    sub_1D8D08A50(v17, &unk_1ECAB6C70, &unk_1D9188C30);
    MEMORY[0x1DA72CB90](v17, -1, -1);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v18, -1, -1);
    MEMORY[0x1DA72CB90](v16, -1, -1);

    v38 = oslog;
    goto LABEL_40;
  }

  v38 = v56;

LABEL_14:
}

void sub_1D9167038(void *a1)
{
  if (!a1)
  {
    return;
  }

  v2 = 0xEA00000000003E65;
  v3 = objc_allocWithZone(MEMORY[0x1E695D5E0]);
  v4 = a1;
  v5 = [v3 initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D9189070;
  *(v6 + 32) = v4;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189080;
  *(v7 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB71E8, qword_1D91BE010);
  *(v7 + 64) = sub_1D8F3D318();
  *(v7 + 32) = v6;
  v47 = v4;
  v8 = sub_1D9178C8C();
  [v5 setPredicate_];

  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v9 = sub_1D917908C();
  if (v9 >> 62)
  {
    v12 = v9;
    v13 = sub_1D917935C();
    v9 = v12;
    if (v13)
    {
      goto LABEL_6;
    }

LABEL_11:

    v11 = 0;
    goto LABEL_12;
  }

  if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_11;
  }

LABEL_6:
  if ((v9 & 0xC000000000000001) != 0)
  {
    v10 = MEMORY[0x1DA72AA90](0);
  }

  else
  {
    if (!*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v10 = *(v9 + 32);
  }

  v11 = v10;

LABEL_12:
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v14 = sub_1D917744C();
  __swift_project_value_buffer(v14, qword_1EDCD0F88);
  v15 = v11;
  v16 = sub_1D917741C();
  v17 = sub_1D9178D1C();

  if (!os_log_type_enabled(v16, v17))
  {
    goto LABEL_31;
  }

  v18 = 0x6C746974206F6E3CLL;
  v19 = swift_slowAlloc();
  v20 = swift_slowAlloc();
  v21 = swift_slowAlloc();
  v48[0] = v21;
  *v19 = 138413059;
  v45 = v20;
  v46 = v21;
  if (!v11)
  {
    *(v19 + 4) = 0;
    *v20 = 0;
    *(v19 + 12) = 2081;
    goto LABEL_19;
  }

  v22 = [v15 objectID];
  *(v19 + 4) = v22;
  *v20 = v22;
  *(v19 + 12) = 2081;
  v23 = [v15 title];
  if (!v23)
  {
LABEL_19:
    v28 = 0x6C746974206F6E3CLL;
    v27 = 0xEA00000000003E65;
    goto LABEL_20;
  }

  v24 = v23;
  v25 = sub_1D917820C();
  v27 = v26;

  v28 = v25;
  v18 = 0x6C746974206F6E3CLL;
LABEL_20:
  v29 = sub_1D8CFA924(v28, v27, v48);

  *(v19 + 14) = v29;
  *(v19 + 22) = 2080;
  if (v11)
  {
    v44 = v17;
    v30 = 0xE90000000000003ELL;
    v31 = 0x44495555206F6E3CLL;
    v32 = [v15 podcast];
    if (v32)
    {
      v33 = v32;
      v34 = [v32 uuid];

      if (v34)
      {
        v31 = sub_1D917820C();
        v30 = v35;
      }

      v18 = 0x6C746974206F6E3CLL;
    }

    v36 = sub_1D8CFA924(v31, v30, v48);

    *(v19 + 24) = v36;
    *(v19 + 32) = 2081;
    v37 = [v15 podcast];
    if (v37)
    {
      v38 = v37;
      v39 = [v37 title];

      v17 = v44;
      if (v39)
      {
        v18 = sub_1D917820C();
        v2 = v40;
      }
    }

    else
    {
      v17 = v44;
    }
  }

  else
  {
    v41 = sub_1D8CFA924(0x44495555206F6E3CLL, 0xE90000000000003ELL, v48);

    *(v19 + 24) = v41;
    *(v19 + 32) = 2081;
  }

  v42 = sub_1D8CFA924(v18, v2, v48);

  *(v19 + 34) = v42;
  _os_log_impl(&dword_1D8CEC000, v16, v17, "[UpNextSplit] Setting New Episode marker to episode %@ - %{private}s; For show %s - %{private}s", v19, 0x2Au);
  sub_1D8D08A50(v45, &unk_1ECAB6C70, &unk_1D9188C30);
  MEMORY[0x1DA72CB90](v45, -1, -1);
  swift_arrayDestroy();
  MEMORY[0x1DA72CB90](v46, -1, -1);
  MEMORY[0x1DA72CB90](v19, -1, -1);
LABEL_31:

  if (v11)
  {
    v43 = v15;
    [v43 setIsCurrentNewEpisode_];
  }

  else
  {
  }
}

void static NewEpisodesShelfUpdater.synchronouslyUpdateNewEpisodes(forPodcastsWithUUIDs:context:)(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = (a1 + 40);
    do
    {
      v8 = *(v3 - 1);
      v7 = *v3;

      v9 = objc_autoreleasePoolPush();
      v18 = &type metadata for Podcasts;
      v19 = sub_1D8CF0F2C();
      LOBYTE(aBlock[0]) = 44;
      v10 = sub_1D917710C();
      __swift_destroy_boxed_opaque_existential_1Tm(aBlock);
      if (v10)
      {
        if (qword_1EDCD0F80 != -1)
        {
          swift_once();
        }

        v11 = sub_1D917744C();
        __swift_project_value_buffer(v11, qword_1EDCD0F88);

        v12 = sub_1D917741C();
        v13 = sub_1D9178D1C();

        if (os_log_type_enabled(v12, v13))
        {
          v14 = swift_slowAlloc();
          v15 = swift_slowAlloc();
          aBlock[0] = v15;
          *v14 = 136315138;
          *(v14 + 4) = sub_1D8CFA924(v8, v7, aBlock);
          _os_log_impl(&dword_1D8CEC000, v12, v13, "[UpNextSplit] Updating New Episode marker for podcast with UUID: %s", v14, 0xCu);
          __swift_destroy_boxed_opaque_existential_1Tm(v15);
          MEMORY[0x1DA72CB90](v15, -1, -1);
          MEMORY[0x1DA72CB90](v14, -1, -1);
        }

        v4 = swift_allocObject();
        v4[2] = a2;
        v4[3] = v8;
        v4[4] = v7;
        v19 = sub_1D916A698;
        v20 = v4;
        aBlock[0] = MEMORY[0x1E69E9820];
        aBlock[1] = 1107296256;
        aBlock[2] = sub_1D8CF5F60;
        v18 = &block_descriptor_105;
        v5 = _Block_copy(aBlock);

        v6 = a2;

        [v6 performBlockAndWaitWithSave_];
        _Block_release(v5);
      }

      objc_autoreleasePoolPop(v9);
      v3 += 2;
      --v2;
    }

    while (v2);
  }
}

id NewEpisodesShelfUpdater.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NewEpisodesShelfUpdater.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NewEpisodesShelfUpdater.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1D9167BDC(void *a1)
{
  sub_1D9169A10(a1);
  v16 = v15;
  v17 = 0;
  v18 = *(v15 + 16);
  do
  {
    if (v18 == v17)
    {
      if (qword_1EDCD0F80 != -1)
      {
        swift_once();
      }

      v37 = sub_1D917744C();
      __swift_project_value_buffer(v37, qword_1EDCD0F88);
      v38 = a1;

      v5 = sub_1D917741C();
      v39 = sub_1D9178D1C();

      if (os_log_type_enabled(v5, v39))
      {
        v40 = swift_slowAlloc();
        v41 = swift_slowAlloc();
        v85[0] = v41;
        *v40 = 136315651;
        v42 = MEMORY[0x1DA729BD0](v16, MEMORY[0x1E69E6530]);
        v44 = v43;

        v45 = sub_1D8CFA924(v42, v44, v85);

        *(v40 + 4) = v45;
        *(v40 + 12) = 2080;
        v46 = [v38 uuid];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1D917820C();
          v50 = v49;
        }

        else
        {
          v48 = 0x44495555206F6E3CLL;
          v50 = 0xE90000000000003ELL;
        }

        v63 = sub_1D8CFA924(v48, v50, v85);

        *(v40 + 14) = v63;
        *(v40 + 22) = 2081;
        v64 = [v38 title];
        if (v64)
        {
          v65 = v64;
          v66 = sub_1D917820C();
          v68 = v67;
        }

        else
        {
          v66 = 0x6C746974206F6E3CLL;
          v68 = 0xEA00000000003E65;
        }

        v69 = sub_1D8CFA924(v66, v68, v85);

        *(v40 + 24) = v69;
        _os_log_impl(&dword_1D8CEC000, v5, v39, "[UpNextSplit] Couldn't find any unplayed episodes in all seasons (%s), skipping New Episodes for show: %s - %{private}s", v40, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v41, -1, -1);
        MEMORY[0x1DA72CB90](v40, -1, -1);
      }

      else
      {
      }

LABEL_17:

      return 0;
    }

    if (v17 >= *(v16 + 16))
    {
      __break(1u);
      swift_once();
      v2 = sub_1D917744C();
      __swift_project_value_buffer(v2, qword_1EDCD0F88);
      v3 = a1;
      v4 = 0;
      v5 = sub_1D917741C();
      v6 = sub_1D9178D0C();

      if (os_log_type_enabled(v5, v6))
      {
        v7 = swift_slowAlloc();
        v8 = swift_slowAlloc();
        v9 = swift_slowAlloc();
        v85[0] = v9;
        *v7 = 136315394;
        v10 = [v3 uuid];
        if (v10)
        {
          v11 = v10;
          v12 = sub_1D917820C();
          v14 = v13;
        }

        else
        {
          v12 = 0x44495555206F6E3CLL;
          v14 = 0xE90000000000003ELL;
        }

        v33 = sub_1D8CFA924(v12, v14, v85);

        *(v7 + 4) = v33;
        *(v7 + 12) = 2112;
        v34 = 0;
        v35 = _swift_stdlib_bridgeErrorToNSError();
        *(v7 + 14) = v35;
        *v8 = v35;
        _os_log_impl(&dword_1D8CEC000, v5, v6, "[UpNextSplit] Something went wrong trying to build New Episode for serial show %s: %@", v7, 0x16u);
        sub_1D8D08A50(v8, &unk_1ECAB6C70, &unk_1D9188C30);
        MEMORY[0x1DA72CB90](v8, -1, -1);
        __swift_destroy_boxed_opaque_existential_1Tm(v9);
        MEMORY[0x1DA72CB90](v9, -1, -1);
        MEMORY[0x1DA72CB90](v7, -1, -1);

        goto LABEL_17;
      }

      return 0;
    }

    v19 = *(v16 + 8 * v17 + 32);
    v20 = sub_1D916A008(a1, v19);
    ++v17;
  }

  while (!v20);
  v21 = v20;

  if ([v21 isPartiallyPlayed])
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v22 = sub_1D917744C();
    __swift_project_value_buffer(v22, qword_1EDCD0F88);
    v5 = v21;
    v23 = a1;
    v24 = sub_1D917741C();
    v25 = sub_1D9178D1C();

    if (os_log_type_enabled(v24, v25))
    {
      v26 = swift_slowAlloc();
      v27 = swift_slowAlloc();
      v85[0] = v27;
      *v26 = 134218755;
      *(v26 + 4) = [v5 episodeNumber];

      *(v26 + 12) = 2048;
      *(v26 + 14) = v19;
      *(v26 + 22) = 2080;
      v28 = [v23 uuid];
      if (v28)
      {
        v29 = v28;
        v30 = sub_1D917820C();
        v32 = v31;
      }

      else
      {
        v30 = 0x44495555206F6E3CLL;
        v32 = 0xE90000000000003ELL;
      }

      v70 = sub_1D8CFA924(v30, v32, v85);

      *(v26 + 24) = v70;
      *(v26 + 32) = 2081;
      v71 = [v23 title];
      if (v71)
      {
        v72 = v71;
        v73 = sub_1D917820C();
        v75 = v74;
      }

      else
      {
        v73 = 0x6C746974206F6E3CLL;
        v75 = 0xEA00000000003E65;
      }

      v82 = sub_1D8CFA924(v73, v75, v85);

      *(v26 + 34) = v82;
      _os_log_impl(&dword_1D8CEC000, v24, v25, "[UpNextSplit] Episode %lld of season %ld is partially played, skipping show from New Episodes: %s - %{private}s", v26, 0x2Au);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v27, -1, -1);
      MEMORY[0x1DA72CB90](v26, -1, -1);
    }

    else
    {
    }

    goto LABEL_17;
  }

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v51 = sub_1D917744C();
  __swift_project_value_buffer(v51, qword_1EDCD0F88);
  v52 = v21;
  v53 = a1;
  v54 = sub_1D917741C();
  v55 = sub_1D9178D1C();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = swift_slowAlloc();
    v57 = swift_slowAlloc();
    v85[0] = v57;
    *v56 = 134218755;
    *(v56 + 4) = [v52 episodeNumber];

    *(v56 + 12) = 2048;
    *(v56 + 14) = v19;
    *(v56 + 22) = 2080;
    v58 = [v53 uuid];
    if (v58)
    {
      v59 = v58;
      v60 = sub_1D917820C();
      v62 = v61;
    }

    else
    {
      v60 = 0x44495555206F6E3CLL;
      v62 = 0xE90000000000003ELL;
    }

    v76 = sub_1D8CFA924(v60, v62, v85);

    *(v56 + 24) = v76;
    *(v56 + 32) = 2081;
    v77 = [v53 title];
    if (v77)
    {
      v78 = v77;
      v79 = sub_1D917820C();
      v81 = v80;
    }

    else
    {
      v79 = 0x6C746974206F6E3CLL;
      v81 = 0xEA00000000003E65;
    }

    v83 = sub_1D8CFA924(v79, v81, v85);

    *(v56 + 34) = v83;
    _os_log_impl(&dword_1D8CEC000, v54, v55, "[UpNextSplit] Episode %lld of season %ld is not played, using it for New Episodes of show: %s - %{private}s", v56, 0x2Au);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v57, -1, -1);
    MEMORY[0x1DA72CB90](v56, -1, -1);
  }

  else
  {
  }

  v84 = [v52 objectID];

  return v84;
}

id sub_1D9168538(void *a1)
{
  v2 = v1;
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918C190;
  v6 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  v8 = sub_1D917820C();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D8D34978();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v7 + 104) = sub_1D916A6C8(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
  *(v7 + 72) = v6;
  v11 = v6;
  v12 = sub_1D9178C8C();

  *(v5 + 32) = v12;
  *(v5 + 40) = [objc_opt_self() predicateForEntitledEpisodes];
  v13 = sub_1D91785DC();

  v14 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1D9189070;
  *(v15 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"firstTimeAvailable" ascending:0];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v16 = sub_1D91785DC();

  [v4 setSortDescriptors_];

  [v4 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v17 = v2;
  v18 = sub_1D917908C();
  if (!(v18 >> 62))
  {
    if (*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

LABEL_35:

    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v73 = sub_1D917744C();
    __swift_project_value_buffer(v73, qword_1EDCD0F88);
    v74 = a1;
    v23 = sub_1D917741C();
    v75 = sub_1D9178D0C();

    if (os_log_type_enabled(v23, v75))
    {
      v76 = swift_slowAlloc();
      v77 = swift_slowAlloc();
      v92[0] = v77;
      *v76 = 136315395;
      v78 = [v74 uuid];
      if (v78)
      {
        v79 = v78;
        v80 = sub_1D917820C();
        v82 = v81;
      }

      else
      {
        v80 = 0x44495555206F6E3CLL;
        v82 = 0xE90000000000003ELL;
      }

      v83 = sub_1D8CFA924(v80, v82, v92);

      *(v76 + 4) = v83;
      *(v76 + 12) = 2081;
      v84 = [v74 title];
      if (v84)
      {
        v85 = v84;
        v86 = sub_1D917820C();
        v88 = v87;
      }

      else
      {
        v86 = 0x6C746974206F6E3CLL;
        v88 = 0xEA00000000003E65;
      }

      v89 = sub_1D8CFA924(v86, v88, v92);

      *(v76 + 14) = v89;
      _os_log_impl(&dword_1D8CEC000, v23, v75, "[UpNextSplit] Couldn't fetch newest episode for episodic (new-to-old) show %s - %{private}s", v76, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v77, -1, -1);
      MEMORY[0x1DA72CB90](v76, -1, -1);
    }

    goto LABEL_45;
  }

  v17 = v18;
  v72 = sub_1D917935C();
  v18 = v17;
  if (!v72)
  {
    goto LABEL_35;
  }

LABEL_3:
  if ((v18 & 0xC000000000000001) != 0)
  {
    v19 = MEMORY[0x1DA72AA90](0);
  }

  else
  {
    if (!*((v18 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_49;
    }

    v19 = *(v18 + 32);
  }

  v17 = v19;

  if ([v17 isVisuallyPlayed] & 1) != 0 || (objc_msgSend(v17, sel_isPartiallyPlayed))
  {
    if (qword_1EDCD0F80 == -1)
    {
LABEL_9:
      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1EDCD0F88);
      v21 = a1;
      v22 = v17;
      v23 = sub_1D917741C();
      v24 = sub_1D9178D1C();

      if (os_log_type_enabled(v23, v24))
      {
        v25 = swift_slowAlloc();
        v90 = swift_slowAlloc();
        v92[0] = v90;
        *v25 = 136315651;
        v26 = [v21 uuid];
        if (v26)
        {
          v27 = v26;
          v28 = sub_1D917820C();
          v30 = v29;
        }

        else
        {
          v28 = 0x44495555206F6E3CLL;
          v30 = 0xE90000000000003ELL;
        }

        v43 = 0xEA00000000003E65;
        v44 = 0x6C746974206F6E3CLL;
        v45 = sub_1D8CFA924(v28, v30, v92);

        *(v25 + 4) = v45;
        *(v25 + 12) = 2081;
        v46 = [v21 title];
        if (v46)
        {
          v47 = v46;
          v48 = sub_1D917820C();
          v50 = v49;
        }

        else
        {
          v48 = 0x6C746974206F6E3CLL;
          v50 = 0xEA00000000003E65;
        }

        v51 = sub_1D8CFA924(v48, v50, v92);

        *(v25 + 14) = v51;
        *(v25 + 22) = 2081;
        v52 = [v22 title];
        if (v52)
        {
          v53 = v52;
          v44 = sub_1D917820C();
          v43 = v54;
        }

        v55 = sub_1D8CFA924(v44, v43, v92);

        *(v25 + 24) = v55;
        _os_log_impl(&dword_1D8CEC000, v23, v24, "[UpNextSplit] Newest episode is played or partially played for episodic (new-to-old) show %s - %{private}s. Episode %{private}s", v25, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1DA72CB90](v90, -1, -1);
        MEMORY[0x1DA72CB90](v25, -1, -1);

        return 0;
      }

LABEL_45:
      return 0;
    }

LABEL_49:
    swift_once();
    goto LABEL_9;
  }

  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v31 = sub_1D917744C();
  __swift_project_value_buffer(v31, qword_1EDCD0F88);
  v32 = a1;
  v33 = v17;
  v34 = sub_1D917741C();
  v35 = sub_1D9178D1C();

  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    v37 = swift_slowAlloc();
    v92[0] = v37;
    *v36 = 136315651;
    v38 = [v32 uuid];
    v91 = v37;
    if (v38)
    {
      v39 = v38;
      v40 = sub_1D917820C();
      v42 = v41;
    }

    else
    {
      v40 = 0x44495555206F6E3CLL;
      v42 = 0xE90000000000003ELL;
    }

    v57 = 0xEA00000000003E65;
    v58 = 0x6C746974206F6E3CLL;
    v59 = sub_1D8CFA924(v40, v42, v92);

    *(v36 + 4) = v59;
    *(v36 + 12) = 2081;
    v60 = [v32 title];
    if (v60)
    {
      v61 = v60;
      v62 = sub_1D917820C();
      v64 = v63;
    }

    else
    {
      v62 = 0x6C746974206F6E3CLL;
      v64 = 0xEA00000000003E65;
    }

    v65 = sub_1D8CFA924(v62, v64, v92);

    *(v36 + 14) = v65;
    *(v36 + 22) = 2081;
    v66 = [v33 title];
    if (v66)
    {
      v67 = v66;
      v58 = sub_1D917820C();
      v57 = v68;
    }

    v56 = &selRef_isBackCatalogItem;
    v69 = sub_1D8CFA924(v58, v57, v92);

    *(v36 + 24) = v69;
    _os_log_impl(&dword_1D8CEC000, v34, v35, "[UpNextSplit] Marking newest episode as Current New Episode for episodic (new-to-old) show %s - %{private}s. Episode %{private}s", v36, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA72CB90](v91, -1, -1);
    MEMORY[0x1DA72CB90](v36, -1, -1);
  }

  else
  {

    v56 = &selRef_isBackCatalogItem;
  }

  v70 = [v33 v56[230]];

  return v70;
}

id sub_1D91691D0(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D91BDFA0;
  v4 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  v6 = sub_1D917820C();
  v8 = v7;
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D8D34978();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v5 + 104) = sub_1D916A6C8(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
  *(v5 + 72) = v4;
  v9 = v4;
  v10 = sub_1D9178C8C();

  *(v3 + 32) = v10;
  v11 = objc_opt_self();
  *(v3 + 40) = [v11 predicateForVisuallyPlayed_];
  *(v3 + 48) = [v11 predicateForEntitledEpisodes];
  v12 = sub_1D91785DC();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  [v2 setResultType_];
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9189070;
  *(v14 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"firstTimeAvailable" ascending:1];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v15 = sub_1D91785DC();

  [v2 setSortDescriptors_];

  [v2 setFetchLimit_];
  v16 = 0;
  v17 = sub_1D917908C();
  if (qword_1EDCD0F80 != -1)
  {
    swift_once();
  }

  v18 = sub_1D917744C();
  __swift_project_value_buffer(v18, qword_1EDCD0F88);
  v19 = a1;

  v20 = sub_1D917741C();
  v21 = sub_1D9178D1C();

  v22 = v17 >> 62;
  if (!os_log_type_enabled(v20, v21))
  {
    goto LABEL_16;
  }

  v16 = swift_slowAlloc();
  v3 = swift_slowAlloc();
  v38 = swift_slowAlloc();
  v39[0] = v38;
  *v16 = 136315651;
  v23 = [v19 uuid];
  if (v23)
  {
    v24 = v23;
    v25 = sub_1D917820C();
    v27 = v26;
  }

  else
  {
    v25 = 0x44495555206F6E3CLL;
    v27 = 0xE90000000000003ELL;
  }

  v28 = sub_1D8CFA924(v25, v27, v39);

  *(v16 + 4) = v28;
  *(v16 + 12) = 2081;
  v29 = [v19 title];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D917820C();
    v33 = v32;
  }

  else
  {
    v33 = 0xEA00000000003E65;
    v31 = 0x6C746974206F6E3CLL;
  }

  v34 = sub_1D8CFA924(v31, v33, v39);

  *(v16 + 14) = v34;
  *(v16 + 22) = 2112;
  v22 = v17 >> 62;
  if (v17 >> 62)
  {
    goto LABEL_26;
  }

  result = *((v17 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!result)
  {
    while (1)
    {
LABEL_15:
      *(v16 + 24) = result;
      *v3 = result;
      _os_log_impl(&dword_1D8CEC000, v20, v21, "[UpNextSplit] Oldest unplayed episode for episodic (old-to-new) show %s - %{private}s. Episode with ID %@", v16, 0x20u);
      sub_1D8D08A50(v3, &unk_1ECAB6C70, &unk_1D9188C30);
      MEMORY[0x1DA72CB90](v3, -1, -1);
      v21 = v38;
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v38, -1, -1);
      MEMORY[0x1DA72CB90](v16, -1, -1);
LABEL_16:

      if (v22)
      {
        if (!sub_1D917935C())
        {
LABEL_23:

          return 0;
        }
      }

      else if (!*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_23;
      }

      if ((v17 & 0xC000000000000001) != 0)
      {
        break;
      }

      if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v36 = *(v17 + 32);
LABEL_21:
        v37 = v36;

        return v37;
      }

      __break(1u);
LABEL_26:
      result = sub_1D917935C();
      if (result)
      {
        goto LABEL_12;
      }
    }

    v36 = MEMORY[0x1DA72AA90](0, v17);
    goto LABEL_21;
  }

LABEL_12:
  if ((v17 & 0xC000000000000001) != 0)
  {
    result = MEMORY[0x1DA72AA90](0, v17);
    goto LABEL_15;
  }

  if (*((v17 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    result = *(v17 + 32);
    goto LABEL_15;
  }

  __break(1u);
  return result;
}

void sub_1D9169A10(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1D918C190;
  v4 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D918A530;
  v6 = sub_1D917820C();
  v8 = v7;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  *(v5 + 64) = sub_1D8D34978();
  *(v5 + 32) = v6;
  *(v5 + 40) = v8;
  *(v5 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v5 + 104) = sub_1D916A6C8(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
  *(v5 + 72) = v4;
  v10 = v4;
  v11 = sub_1D9178C8C();

  *(v3 + 32) = v11;
  *(v3 + 40) = [objc_opt_self() predicateForHasSeasonNumber];
  v12 = sub_1D91785DC();

  v13 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v2 setPredicate_];
  [v2 setResultType_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C50, &unk_1D918DD10);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1D9189080;
  v15 = sub_1D917820C();
  *(v14 + 56) = v9;
  *(v14 + 32) = v15;
  *(v14 + 40) = v16;
  v17 = sub_1D91785DC();

  [v2 setPropertiesToFetch_];

  v18 = v2;
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1D9189070;
  *(v19 + 32) = [objc_allocWithZone(MEMORY[0x1E696AEB0]) initWithKey:@"seasonNumber" ascending:0];
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v20 = sub_1D91785DC();

  [v2 setSortDescriptors_];

  [v2 setReturnsDistinctResults_];
  sub_1D8CF2154(0, &qword_1EDCD0A20, 0x1E695DF20);
  v21 = sub_1D917908C();
  if (v35)
  {

    return;
  }

  v22 = v21;
  if (v21 >> 62)
  {
LABEL_29:
    v36 = v22 & 0xFFFFFFFFFFFFFF8;
    v23 = sub_1D917935C();
    if (!v23)
    {
      goto LABEL_30;
    }
  }

  else
  {
    v36 = v21 & 0xFFFFFFFFFFFFFF8;
    v23 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v23)
    {
      goto LABEL_30;
    }
  }

  v24 = 0;
  v33 = v18;
  v34 = MEMORY[0x1E69E7CC0];
  do
  {
    v18 = v24;
    while (1)
    {
      if ((v22 & 0xC000000000000001) != 0)
      {
        v25 = MEMORY[0x1DA72AA90](v18, v22);
      }

      else
      {
        if (v18 >= *(v36 + 16))
        {
          goto LABEL_28;
        }

        v25 = *(v22 + 8 * v18 + 32);
      }

      v26 = v25;
      v24 = (v18 + 1);
      if (__OFADD__(v18, 1))
      {
        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      *&v37 = sub_1D917820C();
      *(&v37 + 1) = v27;
      v28 = [v26 __swift_objectForKeyedSubscript_];
      swift_unknownObjectRelease();
      if (v28)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v37 = 0u;
        v38 = 0u;
      }

      v39[0] = v37;
      v39[1] = v38;
      if (*(&v38 + 1))
      {
        break;
      }

      sub_1D8D08A50(v39, &qword_1ECAB57F0, &unk_1D9190AA0);
LABEL_8:
      ++v18;
      if (v24 == v23)
      {
        v18 = v33;
        goto LABEL_30;
      }
    }

    sub_1D8CF2154(0, qword_1EDCD0810, 0x1E696AD98);
    if ((swift_dynamicCast() & 1) == 0)
    {

      goto LABEL_8;
    }

    v29 = v40;
    v30 = [v40 integerValue];

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v34 = sub_1D8ECE978(0, *(v34 + 2) + 1, 1, v34);
    }

    v32 = *(v34 + 2);
    v31 = *(v34 + 3);
    if (v32 >= v31 >> 1)
    {
      v34 = sub_1D8ECE978((v31 > 1), v32 + 1, 1, v34);
    }

    *(v34 + 2) = v32 + 1;
    *&v34[8 * v32 + 32] = v30;
    v18 = v33;
  }

  while (v24 != v23);
LABEL_30:
}

unint64_t sub_1D916A008(void *a1, uint64_t a2)
{
  v4 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D91BDFB0;
  v6 = [a1 objectID];
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6C90, &qword_1D918C320);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D918A530;
  v8 = sub_1D917820C();
  v10 = v9;
  *(v7 + 56) = MEMORY[0x1E69E6158];
  *(v7 + 64) = sub_1D8D34978();
  *(v7 + 32) = v8;
  *(v7 + 40) = v10;
  *(v7 + 96) = sub_1D8CF2154(0, &qword_1EDCD09D0, 0x1E695D630);
  *(v7 + 104) = sub_1D916A6C8(&qword_1ECAB87B8, &qword_1EDCD09D0, 0x1E695D630);
  *(v7 + 72) = v6;
  v11 = v6;
  v12 = sub_1D9178C8C();

  *(v5 + 32) = v12;
  v13 = objc_opt_self();
  *(v5 + 40) = [v13 predicateForSeasonNumber_];
  *(v5 + 48) = [v13 predicateForHasEpisodeNumber];
  *(v5 + 56) = [v13 predicateForVisuallyPlayed_];
  *(v5 + 64) = [v13 predicateForEntitledEpisodes];
  v14 = sub_1D91785DC();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v4 setPredicate_];
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v17 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v19 = [v17 initWithKey:v18 ascending:1];

  *(v16 + 32) = v19;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v20 = sub_1D91785DC();

  [v4 setSortDescriptors_];

  [v4 setFetchLimit_];
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  result = sub_1D917908C();
  if (v25)
  {

    return v20;
  }

  if (!(result >> 62))
  {
    if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_5;
    }

LABEL_10:

    return 0;
  }

  v23 = result;
  v24 = sub_1D917935C();
  result = v23;
  if (!v24)
  {
    goto LABEL_10;
  }

LABEL_5:
  if ((result & 0xC000000000000001) != 0)
  {
    v22 = MEMORY[0x1DA72AA90](0);
    goto LABEL_8;
  }

  if (*((result & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v22 = *(result + 32);
LABEL_8:
    v20 = v22;

    return v20;
  }

  __break(1u);
  return result;
}

void _s18PodcastsFoundation23NewEpisodesShelfUpdaterC019synchronouslyUpdateC7Episode18forPodcastWithUUID7contextySS_So22NSManagedObjectContextCtFZ_0(uint64_t a1, unint64_t a2, void *a3)
{
  v16 = &type metadata for Podcasts;
  v17 = sub_1D8CF0F2C();
  LOBYTE(v15[0]) = 44;
  v6 = sub_1D917710C();
  __swift_destroy_boxed_opaque_existential_1Tm(v15);
  if (v6)
  {
    if (qword_1EDCD0F80 != -1)
    {
      swift_once();
    }

    v7 = sub_1D917744C();
    __swift_project_value_buffer(v7, qword_1EDCD0F88);

    v8 = sub_1D917741C();
    v9 = sub_1D9178D1C();

    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      v11 = swift_slowAlloc();
      v15[0] = v11;
      *v10 = 136315138;
      *(v10 + 4) = sub_1D8CFA924(a1, a2, v15);
      _os_log_impl(&dword_1D8CEC000, v8, v9, "[UpNextSplit] Updating New Episode marker for podcast with UUID: %s", v10, 0xCu);
      __swift_destroy_boxed_opaque_existential_1Tm(v11);
      MEMORY[0x1DA72CB90](v11, -1, -1);
      MEMORY[0x1DA72CB90](v10, -1, -1);
    }

    v12 = swift_allocObject();
    v12[2] = a3;
    v12[3] = a1;
    v12[4] = a2;
    v17 = sub_1D916A718;
    v18 = v12;
    v15[0] = MEMORY[0x1E69E9820];
    v15[1] = 1107296256;
    v15[2] = sub_1D8CF5F60;
    v16 = &block_descriptor_8_1;
    v13 = _Block_copy(v15);

    v14 = a3;

    [v14 performBlockAndWaitWithSave_];
    _Block_release(v13);
  }
}

uint64_t sub_1D916A6C8(unint64_t *a1, unint64_t *a2, void *a3)
{
  result = *a1;
  if (!result)
  {
    sub_1D8CF2154(255, a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D916A720(void *a1, uint64_t a2, NSObject *a3)
{
  swift_beginAccess();
  v6 = *(a2 + 16);
  *(a2 + 16) = a1;

  v7 = a1;
  dispatch_group_leave(a3);
}

id NotificationSettings.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id NotificationSettings.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id NotificationSettings.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t _s18PodcastsFoundation20NotificationSettingsC07canSendC0SbyFZ_0()
{
  v0 = objc_opt_self();
  if ([v0 isRunningOnDesktop])
  {
    if (qword_1ECAB0DE0 != -1)
    {
      swift_once();
    }

    v1 = sub_1D917744C();
    __swift_project_value_buffer(v1, qword_1ECAB0DE8);
    v2 = sub_1D917741C();
    v3 = sub_1D9178D1C();
    if (os_log_type_enabled(v2, v3))
    {
      v4 = swift_slowAlloc();
      *v4 = 0;
      _os_log_impl(&dword_1D8CEC000, v2, v3, "Can send user notification - running on desktoop", v4, 2u);
      MEMORY[0x1DA72CB90](v4, -1, -1);
    }

    return 1;
  }

  else
  {
    if (qword_1ECAB1C70 != -1)
    {
      swift_once();
    }

    v6 = *(qword_1ECAB1C78 + OBJC_IVAR___PodcastsApplicationStateMonitor_applicationState);
    os_unfair_lock_lock((v6 + 24));
    v7 = *(v6 + 16);
    os_unfair_lock_unlock((v6 + 24));
    if (v7 != 2 || ([v0 isRunningOnTV] & 1) != 0 || (objc_msgSend(v0, sel_isRunningOnHomepod) & 1) != 0 || (objc_msgSend(v0, sel_isRunningOnWatch) & 1) != 0)
    {
      if (qword_1ECAB0DE0 != -1)
      {
        swift_once();
      }

      v8 = sub_1D917744C();
      __swift_project_value_buffer(v8, qword_1ECAB0DE8);
      v9 = sub_1D917741C();
      v10 = sub_1D9178D1C();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 0;
        _os_log_impl(&dword_1D8CEC000, v9, v10, "Can NOT send user notification - running in background, TV, HomePod, or Watch", v11, 2u);
        MEMORY[0x1DA72CB90](v11, -1, -1);
      }

      return 0;
    }

    else
    {
      v12 = swift_allocObject();
      *(v12 + 16) = 0;
      v13 = dispatch_group_create();
      dispatch_group_enter(v13);
      v14 = [objc_opt_self() currentNotificationCenter];
      v15 = swift_allocObject();
      *(v15 + 16) = v12;
      *(v15 + 24) = v13;
      aBlock[4] = sub_1D916ADC8;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1D8F44C98;
      aBlock[3] = &block_descriptor_106;
      v16 = _Block_copy(aBlock);

      v17 = v13;

      [v14 getNotificationSettingsWithCompletionHandler_];
      _Block_release(v16);

      sub_1D9178D6C();
      swift_beginAccess();
      v18 = *(v12 + 16);
      if (v18)
      {
        v18 = [v18 hasEnabledSettings];
      }

      v19 = v18;
      if (qword_1ECAB0DE0 != -1)
      {
        swift_once();
      }

      v20 = sub_1D917744C();
      __swift_project_value_buffer(v20, qword_1ECAB0DE8);
      v21 = sub_1D917741C();
      v22 = sub_1D9178D1C();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        v24 = swift_slowAlloc();
        v28 = v24;
        *v23 = 67109378;
        *(v23 + 4) = v19;
        *(v23 + 8) = 2080;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB7108, &unk_1D919CD70);
        v25 = sub_1D917826C();
        v27 = sub_1D8CFA924(v25, v26, &v28);

        *(v23 + 10) = v27;
        _os_log_impl(&dword_1D8CEC000, v21, v22, "Can send user notification? %{BOOL}d - enabled settings? %s", v23, 0x12u);
        __swift_destroy_boxed_opaque_existential_1Tm(v24);
        MEMORY[0x1DA72CB90](v24, -1, -1);
        MEMORY[0x1DA72CB90](v23, -1, -1);
      }

      else
      {
      }

      return v19;
    }
  }
}

void NSPredicate.explain(with:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = v3;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v7 = [v2 evaluateWithObject_];
  swift_unknownObjectRelease();
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (!v8)
  {
    v16 = swift_allocObject();
    *(v16 + 16) = v7;
    v17 = [v2 description];
    v18 = sub_1D917820C();
    v20 = v19;

    *(v16 + 24) = v18;
    *(v16 + 32) = v20;
    *a2 = v16;
    return;
  }

  v9 = v8;
  v40 = v7;
  v39 = a2;
  v41 = v2;
  v10 = [v9 subpredicates];
  v11 = sub_1D91785FC();

  v45 = MEMORY[0x1E69E7CC0];
  v12 = *(v11 + 16);
  if (v12)
  {
    v38 = v3;
    v13 = v11 + 32;
    v14 = MEMORY[0x1E69E7CC0];
    do
    {
      sub_1D8CFAD1C(v13, v44);
      sub_1D8D65618(v44, &v42);
      sub_1D8D4D430();
      if ((swift_dynamicCast() & 1) != 0 && v43)
      {
        MEMORY[0x1DA729B90]();
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();
        v14 = v45;
      }

      v13 += 32;
      --v12;
    }

    while (v12);

    v4 = v38;
  }

  else
  {

    v14 = MEMORY[0x1E69E7CC0];
  }

  MEMORY[0x1EEE9AC00](v15);
  v37[2] = a1;
  v21 = sub_1D8E7E9A0(sub_1D916CD98, v37, v14);
  v22 = v40;
  if (v4)
  {

    return;
  }

  v23 = v21;

  v24 = [v9 compoundPredicateType];
  if (!v24)
  {
    v29 = swift_allocObject();
    *(v29 + 16) = v22;
    if (!*(v23 + 2))
    {

      __break(1u);
      return;
    }

    v30 = v29;
    v31 = *(v23 + 4);

    *(v30 + 24) = v31;
    v28 = v30 | 0xC000000000000000;
LABEL_22:
    *v39 = v28;
    return;
  }

  if (v24 == 2)
  {

    v27 = swift_allocObject();
    *(v27 + 16) = v22;
    *(v27 + 24) = v23;
    v28 = v27 | 0x8000000000000000;
    goto LABEL_22;
  }

  v25 = v39;
  if (v24 == 1)
  {

    v26 = swift_allocObject();
    *(v26 + 16) = v22;
    *(v26 + 24) = v23;
    *v25 = v26 | 0x4000000000000000;
  }

  else
  {

    v32 = [v9 debugDescription];
    v33 = sub_1D917820C();
    v35 = v34;

    sub_1D916CDD4();
    swift_allocError();
    *v36 = v33;
    v36[1] = v35;
    swift_willThrow();
  }
}

uint64_t static NSPredicate.EvaluationTree.== infix(_:_:)(unint64_t *a1, unint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *a1 >> 62;
  if (v4 > 1)
  {
    if (v4 == 2)
    {
      if (v3 >> 62 == 2)
      {
        goto LABEL_16;
      }
    }

    else if (v3 >> 62 == 3)
    {
      v9 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      if (*((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
      {
        v11 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v12 = *(v9 + 24);
        v13 = v11;

        v10 = static NSPredicate.EvaluationTree.== infix(_:_:)(&v13, &v12);

        return v10 & 1;
      }
    }

    goto LABEL_20;
  }

  if (v4)
  {
    if (v3 >> 62 == 1)
    {
LABEL_16:
      if (*((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x10) == *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10))
      {
        v7 = *((v2 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
        v8 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);

        LOBYTE(v7) = sub_1D8E8356C(v7, v8);

        return v7 & 1;
      }
    }

LABEL_20:
    v10 = 0;
    return v10 & 1;
  }

  if (v3 >> 62 || *(v2 + 16) != *(v3 + 16))
  {
    goto LABEL_20;
  }

  if (*(v2 + 24) == *(v3 + 24) && *(v2 + 32) == *(v3 + 32))
  {
    v10 = 1;
    return v10 & 1;
  }

  return sub_1D9179ACC();
}

uint64_t sub_1D916B340(uint64_t a1)
{
  v2 = sub_1D916CF24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D916B37C(uint64_t a1)
{
  v2 = sub_1D916CF24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D916B3B8()
{
  v1 = 0x6C6261756C617665;
  v2 = 29295;
  if (*v0 != 2)
  {
    v2 = 7630702;
  }

  if (*v0)
  {
    v1 = 6581857;
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

uint64_t sub_1D916B418@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D916EAA0(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D916B440(uint64_t a1)
{
  v2 = sub_1D916CE28();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D916B47C(uint64_t a1)
{
  v2 = sub_1D916CE28();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D916B4B8()
{
  if (*v0)
  {
    return 0x7461636964657270;
  }

  else
  {
    return 0x746C75736572;
  }
}

void sub_1D916B4F4(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x7461636964657270 && a2 == 0xE900000000000065)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D916B5D4(uint64_t a1)
{
  v2 = sub_1D916CF78();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D916B610(uint64_t a1)
{
  v2 = sub_1D916CF78();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D916B64C()
{
  if (*v0)
  {
    return 0x646C696863;
  }

  else
  {
    return 0x746C75736572;
  }
}

void sub_1D916B680(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x646C696863 && a2 == 0xE500000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D916B754(uint64_t a1)
{
  v2 = sub_1D916CE7C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D916B790(uint64_t a1)
{
  v2 = sub_1D916CE7C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void sub_1D916B7CC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x746C75736572 && a2 == 0xE600000000000000;
  if (v6 || (sub_1D9179ACC() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6572646C696863 && a2 == 0xE800000000000000)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_1D9179ACC();

    if (v8)
    {
      v7 = 1;
    }

    else
    {
      v7 = 2;
    }
  }

  *a3 = v7;
}

uint64_t sub_1D916B8A4(uint64_t a1)
{
  v2 = sub_1D916CED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D916B8E0(uint64_t a1)
{
  v2 = sub_1D916CED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t NSPredicate.EvaluationTree.encode(to:)(void *a1)
{
  v2 = v1;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB738, &qword_1D91BE070);
  v41 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v40 = &v35 - v4;
  v44 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB740, &qword_1D91BE078);
  v42 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v39 = &v35 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB748, &qword_1D91BE080);
  v37 = *(v6 - 8);
  v38 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v35 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB750, &qword_1D91BE088);
  v36 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v35 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB758, &qword_1D91BE090);
  v13 = *(v12 - 8);
  v46 = v12;
  v47 = v13;
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v35 - v14;
  v16 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D916CE28();
  v17 = v15;
  sub_1D9179F1C();
  v18 = v16 >> 62;
  if ((v16 >> 62) > 1)
  {
    if (v18 == 2)
    {
      v22 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v49) = 2;
      sub_1D916CED0();
      v23 = v39;
      v24 = v46;
      sub_1D917993C();
      LOBYTE(v49) = 0;
      v26 = v44;
      v25 = v45;
      sub_1D91799CC();
      if (!v25)
      {
        v49 = v22;
        v48 = 1;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB778, &qword_1D91BE098);
        sub_1D916CFCC(&qword_1ECABB780, sub_1D8F0B5B8, MEMORY[0x1E69E6300]);
        sub_1D91799FC();
      }

      (*(v42 + 8))(v23, v26);
    }

    else
    {
      v31 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      LOBYTE(v49) = 3;
      sub_1D916CE7C();
      v32 = v40;
      v24 = v46;
      sub_1D917993C();
      LOBYTE(v49) = 0;
      v33 = v43;
      v34 = v45;
      sub_1D91799CC();
      if (!v34)
      {
        v49 = v31;
        v48 = 1;
        sub_1D8F0B5B8();
        sub_1D91799FC();
      }

      (*(v41 + 8))(v32, v33);
    }

    return (*(v47 + 8))(v17, v24);
  }

  else if (v18)
  {
    v27 = *((v16 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    LOBYTE(v49) = 1;
    sub_1D916CF24();
    v28 = v46;
    sub_1D917993C();
    LOBYTE(v49) = 0;
    v29 = v38;
    v30 = v45;
    sub_1D91799CC();
    if (!v30)
    {
      v49 = v27;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB778, &qword_1D91BE098);
      sub_1D916CFCC(&qword_1ECABB780, sub_1D8F0B5B8, MEMORY[0x1E69E6300]);
      sub_1D91799FC();
    }

    (*(v37 + 8))(v8, v29);
    return (*(v47 + 8))(v17, v28);
  }

  else
  {
    v44 = *(v16 + 24);
    LOBYTE(v49) = 0;
    sub_1D916CF78();
    v19 = v46;
    sub_1D917993C();
    LOBYTE(v49) = 0;
    v20 = v45;
    sub_1D91799CC();
    if (!v20)
    {
      LOBYTE(v49) = 1;
      sub_1D91799BC();
    }

    (*(v36 + 8))(v11, v9);
    return (*(v47 + 8))(v15, v19);
  }
}

uint64_t NSPredicate.EvaluationTree.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    v6 = v3 & 0x3FFFFFFFFFFFFFFFLL;
    if (v4 == 2)
    {
      v7 = *(v6 + 24);
      MEMORY[0x1DA72B390](2);
      sub_1D9179DDC();
      result = MEMORY[0x1DA72B390](*(v7 + 16));
      v8 = *(v7 + 16);
      if (v8)
      {
        v9 = v7 + 32;
        do
        {
          v9 += 8;

          NSPredicate.EvaluationTree.hash(into:)(a1);

          --v8;
        }

        while (v8);
      }
    }

    else
    {
      MEMORY[0x1DA72B390](3);
      sub_1D9179DDC();
      return NSPredicate.EvaluationTree.hash(into:)(a1);
    }
  }

  else if (v4)
  {
    v10 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    MEMORY[0x1DA72B390](1);
    sub_1D9179DDC();
    result = MEMORY[0x1DA72B390](*(v10 + 16));
    v11 = *(v10 + 16);
    if (v11)
    {
      v12 = v10 + 32;
      do
      {
        v12 += 8;

        NSPredicate.EvaluationTree.hash(into:)(a1);

        --v11;
      }

      while (v11);
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    sub_1D9179DDC();

    return _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  return result;
}

uint64_t NSPredicate.EvaluationTree.hashValue.getter()
{
  v2[9] = *v0;
  sub_1D9179DBC();
  NSPredicate.EvaluationTree.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t NSPredicate.EvaluationTree.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v48 = a2;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB798, &qword_1D91BE0A0);
  v53 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v57 = &v46 - v3;
  v56 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB7A0, &qword_1D91BE0A8);
  v54 = *(v56 - 8);
  MEMORY[0x1EEE9AC00](v56);
  v55 = &v46 - v4;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB7A8, &qword_1D91BE0B0);
  v51 = *(v5 - 8);
  v52 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v46 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB7B0, &qword_1D91BE0B8);
  v50 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v46 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB7B8, &unk_1D91BE0C0);
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v46 - v13;
  v15 = a1[3];
  v59 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v15);
  sub_1D916CE28();
  v16 = v58;
  sub_1D9179EEC();
  if (!v16)
  {
    v17 = v10;
    v46 = v8;
    v47 = 0;
    v18 = v55;
    v19 = v56;
    v20 = v57;
    v58 = v12;
    v21 = sub_1D917991C();
    v22 = (2 * *(v21 + 16)) | 1;
    v60 = v21;
    v61 = v21 + 32;
    v62 = 0;
    v63 = v22;
    v23 = sub_1D8E89BD8();
    if (v23 == 4 || v62 != v63 >> 1)
    {
      v27 = sub_1D917951C();
      swift_allocError();
      v29 = v28;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5400, &qword_1D918EE50);
      *v29 = &type metadata for NSPredicate.EvaluationTree;
      sub_1D917983C();
      sub_1D91794FC();
      (*(*(v27 - 8) + 104))(v29, *MEMORY[0x1E69E6AF8], v27);
      swift_willThrow();
      (*(v58 + 8))(v14, v11);
LABEL_9:
      swift_unknownObjectRelease();
      return __swift_destroy_boxed_opaque_existential_1Tm(v59);
    }

    if (v23 <= 1u)
    {
      if (v23)
      {
        v64 = 1;
        sub_1D916CF24();
        v34 = v47;
        sub_1D917982C();
        if (!v34)
        {
          v38 = swift_allocObject();
          v64 = 0;
          v39 = v52;
          *(v38 + 16) = sub_1D91798CC() & 1;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB778, &qword_1D91BE098);
          v64 = 1;
          sub_1D916CFCC(&qword_1ECABB7C0, sub_1D8F0B750, MEMORY[0x1E69E6330]);
          sub_1D91798FC();
          (*(v51 + 8))(v7, v39);
          (*(v58 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v25 = v38 | 0x4000000000000000;
          goto LABEL_21;
        }
      }

      else
      {
        v64 = 0;
        sub_1D916CF78();
        v24 = v47;
        sub_1D917982C();
        if (!v24)
        {
          v25 = swift_allocObject();
          v64 = 0;
          v26 = v46;
          *(v25 + 16) = sub_1D91798CC() & 1;
          v64 = 1;
          v42 = sub_1D91798BC();
          v57 = v43;
          v44 = v42;
          (*(v50 + 8))(v17, v26);
          (*(v58 + 8))(v14, v11);
          swift_unknownObjectRelease();
          v45 = v57;
          *(v25 + 24) = v44;
          *(v25 + 32) = v45;
LABEL_21:
          *v48 = v25;
          return __swift_destroy_boxed_opaque_existential_1Tm(v59);
        }
      }

      goto LABEL_17;
    }

    if (v23 != 2)
    {
      v64 = 3;
      sub_1D916CE7C();
      v35 = v47;
      sub_1D917982C();
      v36 = v58;
      if (!v35)
      {
        v40 = swift_allocObject();
        v64 = 0;
        v41 = v49;
        *(v40 + 16) = sub_1D91798CC() & 1;
        v64 = 1;
        sub_1D8F0B750();
        sub_1D91798FC();
        (*(v53 + 8))(v20, v41);
        (*(v36 + 8))(v14, v11);
        swift_unknownObjectRelease();
        v25 = v40 | 0xC000000000000000;
        goto LABEL_21;
      }

LABEL_17:
      (*(v58 + 8))(v14, v11);
      goto LABEL_9;
    }

    v64 = 2;
    sub_1D916CED0();
    v31 = v18;
    v32 = v47;
    sub_1D917982C();
    v33 = v58;
    if (!v32)
    {
      v37 = swift_allocObject();
      v64 = 0;
      *(v37 + 16) = sub_1D91798CC() & 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB778, &qword_1D91BE098);
      v64 = 1;
      sub_1D916CFCC(&qword_1ECABB7C0, sub_1D8F0B750, MEMORY[0x1E69E6330]);
      sub_1D91798FC();
      (*(v54 + 8))(v31, v19);
      (*(v33 + 8))(v14, v11);
      swift_unknownObjectRelease();
      v25 = v37 | 0x8000000000000000;
      goto LABEL_21;
    }

    (*(v58 + 8))(v14, v11);
    swift_unknownObjectRelease();
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(v59);
}

uint64_t sub_1D916CCFC()
{
  v2[9] = *v0;
  sub_1D9179DBC();
  NSPredicate.EvaluationTree.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D916CD4C(uint64_t a1)
{
  v3[9] = *v1;
  sub_1D9179DBC();
  NSPredicate.EvaluationTree.hash(into:)(v3);
  return sub_1D9179E1C();
}

void sub_1D916CD98(void *a1@<X1>, uint64_t *a2@<X8>)
{
  NSPredicate.explain(with:)(*(v2 + 16), a2);
  if (v3)
  {
    *a1 = v3;
  }
}

unint64_t sub_1D916CDD4()
{
  result = qword_1ECABB730;
  if (!qword_1ECABB730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB730);
  }

  return result;
}

unint64_t sub_1D916CE28()
{
  result = qword_1ECABB760;
  if (!qword_1ECABB760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB760);
  }

  return result;
}

unint64_t sub_1D916CE7C()
{
  result = qword_1ECABB768;
  if (!qword_1ECABB768)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB768);
  }

  return result;
}

unint64_t sub_1D916CED0()
{
  result = qword_1ECABB770;
  if (!qword_1ECABB770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB770);
  }

  return result;
}

unint64_t sub_1D916CF24()
{
  result = qword_1ECABB788;
  if (!qword_1ECABB788)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB788);
  }

  return result;
}

unint64_t sub_1D916CF78()
{
  result = qword_1ECABB790;
  if (!qword_1ECABB790)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB790);
  }

  return result;
}

uint64_t sub_1D916CFCC(unint64_t *a1, void (*a2)(void), uint64_t a3)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECABB778, &qword_1D91BE098);
    a2();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t NSPredicate.EvaluationTree.result.getter()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (v2)
  {
    v1 = *v0 & 0x3FFFFFFFFFFFFFFFLL;
  }

  if (v2 > 1)
  {
    v1 = *v0 & 0x3FFFFFFFFFFFFFFFLL;
  }

  return *(v1 + 16);
}

Swift::String __swiftcall NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(Swift::Int depth, Swift::String spacer)
{
  object = spacer._object;
  countAndFlagsBits = spacer._countAndFlagsBits;
  v6 = *v2;

  spacera = countAndFlagsBits;
  v7 = sub_1D91783BC();
  v9 = v6 >> 62;
  if ((v6 >> 62) <= 1)
  {
    if (!v9)
    {
      v10 = *(v6 + 24);
      v11 = *(v6 + 32);
      v12 = 20302;
      if (*(v6 + 16))
      {
        v12 = 5457241;
        v13 = 0xE300000000000000;
      }

      else
      {
        v13 = 0xE200000000000000;
      }

      v14 = v7;
      v15 = v8;
      MEMORY[0x1DA7298F0](v12, v13);

      MEMORY[0x1DA7298F0](539828265, 0xE400000000000000);
      MEMORY[0x1DA7298F0](v10, v11);
      v53 = v14;
      v54 = v15;

      MEMORY[0x1DA7298F0](40, 0xE100000000000000);

      goto LABEL_42;
    }

    v30 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v31 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v53 = v7;
    v54 = v8;
    MEMORY[0x1DA7298F0](0x2820444E41, 0xE500000000000000);
    if (v30)
    {
      v32 = 5457241;
    }

    else
    {
      v32 = 20302;
    }

    if (v30)
    {
      v33 = 0xE300000000000000;
    }

    else
    {
      v33 = 0xE200000000000000;
    }

    MEMORY[0x1DA7298F0](v32, v33);

    MEMORY[0x1DA7298F0](2601, 0xE200000000000000);
    v34 = *(v31 + 16);
    if (!v34)
    {
      goto LABEL_33;
    }

    v52 = MEMORY[0x1E69E7CC0];
    v21 = sub_1D8D41BE0(0, v34, 0);
    v23 = __OFADD__(depth, 1);
    v35 = depth + 1;
    if (!v23)
    {
      v36 = v31 + 32;
      do
      {
        v36 += 8;

        v37._countAndFlagsBits = spacera;
        v37._object = object;
        v38 = NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(v35, v37);

        v40 = *(v52 + 16);
        v39 = *(v52 + 24);
        if (v40 >= v39 >> 1)
        {
          sub_1D8D41BE0((v39 > 1), v40 + 1, 1);
        }

        *(v52 + 16) = v40 + 1;
        *(v52 + 16 * v40 + 32) = v38;
        --v34;
      }

      while (v34);
      goto LABEL_33;
    }

LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  if (v9 != 2)
  {
    v44 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v53 = v7;
    v54 = v8;
    MEMORY[0x1DA7298F0](0x2820544F4ELL, 0xE500000000000000);
    if (v44)
    {
      v45 = 5457241;
    }

    else
    {
      v45 = 20302;
    }

    if (v44)
    {
      v46 = 0xE300000000000000;
    }

    else
    {
      v46 = 0xE200000000000000;
    }

    MEMORY[0x1DA7298F0](v45, v46);

    MEMORY[0x1DA7298F0](2601, 0xE200000000000000);
    v21 = (depth + 1);
    if (!__OFADD__(depth, 1))
    {
      v47._countAndFlagsBits = spacera;
      v47._object = object;
      v48 = NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(v21, v47)._countAndFlagsBits;
      MEMORY[0x1DA7298F0](v48);
      goto LABEL_42;
    }

    __break(1u);
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  v16 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
  v17 = *((v6 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v53 = v7;
  v54 = v8;
  MEMORY[0x1DA7298F0](673206863, 0xE400000000000000);
  if (v16)
  {
    v18 = 5457241;
  }

  else
  {
    v18 = 20302;
  }

  if (v16)
  {
    v19 = 0xE300000000000000;
  }

  else
  {
    v19 = 0xE200000000000000;
  }

  MEMORY[0x1DA7298F0](v18, v19);

  MEMORY[0x1DA7298F0](2601, 0xE200000000000000);
  v20 = *(v17 + 16);
  if (v20)
  {
    v51 = MEMORY[0x1E69E7CC0];
    v21 = sub_1D8D41BE0(0, v20, 0);
    v23 = __OFADD__(depth, 1);
    v24 = depth + 1;
    if (!v23)
    {
      v25 = v17 + 32;
      do
      {
        v25 += 8;

        v26._countAndFlagsBits = spacera;
        v26._object = object;
        v27 = NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(v24, v26);

        v29 = *(v51 + 16);
        v28 = *(v51 + 24);
        if (v29 >= v28 >> 1)
        {
          sub_1D8D41BE0((v28 > 1), v29 + 1, 1);
        }

        *(v51 + 16) = v29 + 1;
        *(v51 + 16 * v29 + 32) = v27;
        --v20;
      }

      while (v20);
      goto LABEL_33;
    }

    goto LABEL_44;
  }

LABEL_33:
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB75E0, &qword_1D918DE30);
  sub_1D8D72B0C();
  v41 = sub_1D917817C();
  v43 = v42;

  MEMORY[0x1DA7298F0](v41, v43);
LABEL_42:

  v21 = v53;
  v22 = v54;
LABEL_46:
  result._object = v22;
  result._countAndFlagsBits = v21;
  return result;
}

void NSPredicate.EvaluationTree.prune(invertNot:by:)(char a1@<W0>, uint64_t (*a2)(uint64_t *)@<X1>, uint64_t a3@<X2>, unint64_t *a4@<X8>)
{
  v8 = *v4;
  v9 = *v4 >> 62;
  if (v9 > 1)
  {
    if (v9 == 2)
    {
      v10 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v47 = *v4;
      if ((a2(&v47) & 1) == 0)
      {
        goto LABEL_34;
      }

      v46 = a4;
      v12 = *(v11 + 16);
      if (v12)
      {
        v13 = 0;
        v14 = MEMORY[0x1E69E7CC0];
        while (2)
        {
          v43 = v14;
          v15 = v13;
          while (1)
          {
            if (v15 >= *(v11 + 16))
            {
              __break(1u);
LABEL_55:
              __break(1u);
              return;
            }

            v13 = v15 + 1;

            NSPredicate.EvaluationTree.prune(invertNot:by:)(0, a2, a3, &v47);

            if ((~v47 & 0xF000000000000007) != 0)
            {
              break;
            }

            sub_1D8F032B0(v47);
            ++v15;
            if (v12 == v13)
            {
              v14 = v43;
              goto LABEL_41;
            }
          }

          v41 = v47;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v43 = sub_1D8ECE98C(0, *(v43 + 2) + 1, 1, v43);
          }

          v14 = v43;
          v17 = *(v43 + 2);
          v16 = *(v43 + 3);
          v39 = v17 + 1;
          v18 = v41;
          if (v17 >= v16 >> 1)
          {
            v14 = sub_1D8ECE98C((v16 > 1), v39, 1, v43);
            v18 = v41;
          }

          *(v14 + 2) = v39;
          *&v14[8 * v17 + 32] = v18;
          if (v12 - 1 != v15)
          {
            continue;
          }

          break;
        }

LABEL_41:
        if (*(v14 + 2))
        {
          goto LABEL_47;
        }

        goto LABEL_50;
      }

      v14 = MEMORY[0x1E69E7CC0];
      if (!*(MEMORY[0x1E69E7CC0] + 16))
      {
LABEL_50:

        goto LABEL_51;
      }

LABEL_47:
      v35 = v14;
      v36 = swift_allocObject();
      *(v36 + 16) = v10;
      *(v36 + 24) = v35;
      v8 = v36 | 0x8000000000000000;
    }

    else
    {
      v46 = a4;
      v45 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      if (a1)
      {
        v29 = swift_allocObject();
        *(v29 + 16) = a2;
        *(v29 + 24) = a3;
        v30 = sub_1D916E3AC;
        v31 = sub_1D916E3AC;
        v32 = v29;
      }

      else
      {
        v31 = 0;
        v32 = 0;
        v30 = a2;
        v29 = a3;
      }

      v47 = v8;
      if ((a2(&v47) & 1) == 0 || (NSPredicate.EvaluationTree.prune(invertNot:by:)(a1 & 1, v30, v29, &v47), v33 = v47, (~v47 & 0xF000000000000007) == 0))
      {
        sub_1D8D15664(v31, v32);
LABEL_51:
        v8 = 0xF000000000000007;
        goto LABEL_52;
      }

      v34 = swift_allocObject();
      *(v34 + 16) = v45;
      *(v34 + 24) = v33;
      sub_1D8D15664(v31, v32);
      v8 = v34 | 0xC000000000000000;
    }

LABEL_52:
    a4 = v46;
    goto LABEL_53;
  }

  if (v9)
  {
    v19 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v20 = *((v8 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v47 = *v4;
    if ((a2(&v47) & 1) == 0)
    {
      goto LABEL_34;
    }

    v46 = a4;
    v21 = *(v20 + 16);
    if (v21)
    {
      v22 = 0;
      v23 = MEMORY[0x1E69E7CC0];
      while (2)
      {
        v44 = v23;
        v24 = v22;
        while (1)
        {
          if (v24 >= *(v20 + 16))
          {
            goto LABEL_55;
          }

          v22 = v24 + 1;

          NSPredicate.EvaluationTree.prune(invertNot:by:)(0, a2, a3, &v47);

          if ((~v47 & 0xF000000000000007) != 0)
          {
            break;
          }

          sub_1D8F032B0(v47);
          ++v24;
          if (v21 == v22)
          {
            v23 = v44;
LABEL_43:
            if (*(v23 + 2))
            {
              goto LABEL_49;
            }

            goto LABEL_50;
          }
        }

        v42 = v47;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v44 = sub_1D8ECE98C(0, *(v44 + 2) + 1, 1, v44);
        }

        v23 = v44;
        v26 = *(v44 + 2);
        v25 = *(v44 + 3);
        v40 = v26 + 1;
        v27 = v42;
        if (v26 >= v25 >> 1)
        {
          v23 = sub_1D8ECE98C((v25 > 1), v40, 1, v44);
          v27 = v42;
        }

        *(v23 + 2) = v40;
        *&v23[8 * v26 + 32] = v27;
        if (v21 - 1 != v24)
        {
          continue;
        }

        goto LABEL_43;
      }
    }

    v23 = MEMORY[0x1E69E7CC0];
    if (*(MEMORY[0x1E69E7CC0] + 16))
    {
LABEL_49:
      v37 = v23;
      v38 = swift_allocObject();
      *(v38 + 16) = v19;
      *(v38 + 24) = v37;
      v8 = v38 | 0x4000000000000000;
      goto LABEL_52;
    }

    goto LABEL_50;
  }

  v47 = *v4;
  if ((a2(&v47) & 1) == 0)
  {
LABEL_34:
    v8 = 0xF000000000000007;
    goto LABEL_53;
  }

LABEL_53:
  *a4 = v8;
}

void NSPredicate.EvaluationTree.influences.getter(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = v3 >> 62;
  if ((v3 >> 62) > 1)
  {
    if (v4 == 2)
    {
      v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v6 = swift_allocObject();
      *(v6 + 16) = v5;
      v33 = v3;
      sub_1D916DC90();
      v8 = v7;
      v9 = *(v7 + 16);
      if (v9)
      {
        v32 = MEMORY[0x1E69E7CC0];
        sub_1D8E314FC(0, v9, 0);
        v10 = 32;
        v11 = v32;
        do
        {
          v31 = *(v8 + v10);
          NSPredicate.EvaluationTree.influences.getter(&v30);
          v12 = v30;
          v32 = v11;
          v14 = *(v11 + 16);
          v13 = *(v11 + 24);
          if (v14 >= v13 >> 1)
          {
            sub_1D8E314FC((v13 > 1), v14 + 1, 1);
            v11 = v32;
          }

          *(v11 + 16) = v14 + 1;
          *(v11 + 8 * v14 + 32) = v12;
          v10 += 8;
          --v9;
        }

        while (v9);
      }

      else
      {

        v11 = MEMORY[0x1E69E7CC0];
      }

      *(v6 + 24) = v11;
      v29 = v6 | 0x8000000000000000;
    }

    else
    {
      v25 = v3 & 0x3FFFFFFFFFFFFFFFLL;
      v26 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = *(v25 + 24);
      v28 = swift_allocObject();
      *(v28 + 16) = v26;
      v33 = v27;
      NSPredicate.EvaluationTree.influences.getter((v28 + 24));
      v29 = v28 | 0xC000000000000000;
    }

    goto LABEL_24;
  }

  if (v4)
  {
    v15 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v16 = swift_allocObject();
    *(v16 + 16) = v15;
    v33 = v3;
    sub_1D916DC90();
    v18 = v17;
    v19 = *(v17 + 16);
    if (v19)
    {
      v32 = MEMORY[0x1E69E7CC0];
      sub_1D8E314FC(0, v19, 0);
      v20 = 32;
      v21 = v32;
      do
      {
        v31 = *(v18 + v20);
        NSPredicate.EvaluationTree.influences.getter(&v30);
        v22 = v30;
        v32 = v21;
        v24 = *(v21 + 16);
        v23 = *(v21 + 24);
        if (v24 >= v23 >> 1)
        {
          sub_1D8E314FC((v23 > 1), v24 + 1, 1);
          v21 = v32;
        }

        *(v21 + 16) = v24 + 1;
        *(v21 + 8 * v24 + 32) = v22;
        v20 += 8;
        --v19;
      }

      while (v19);
    }

    else
    {

      v21 = MEMORY[0x1E69E7CC0];
    }

    *(v16 + 24) = v21;
    v29 = v16 | 0x4000000000000000;
LABEL_24:
    *a1 = v29;
    return;
  }

  *a1 = v3;
}

void sub_1D916DC90()
{
  if ((*v0 >> 62) - 1 < 2)
  {
    v1 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v2 = *((*v0 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
    v3 = *(v1 + 16);

    v4 = 0;
    v5 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      while (v4 < *(v1 + 16))
      {
        v7 = *(v1 + 8 * v4 + 32);
        if ((v7 >> 62) > 1)
        {
          v6 = v7 & 0x3FFFFFFFFFFFFFFFLL;
        }

        else if (v7 >> 62)
        {
          v6 = v7 & 0x3FFFFFFFFFFFFFFFLL;
        }

        else
        {
          v6 = *(v1 + 8 * v4 + 32);
        }

        ++v4;
        if (v2 == *(v6 + 16))
        {

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1D8E314FC(0, *(v5 + 16) + 1, 1);
          }

          v9 = *(v5 + 16);
          v8 = *(v5 + 24);
          if (v9 >= v8 >> 1)
          {
            sub_1D8E314FC((v8 > 1), v9 + 1, 1);
          }

          *(v5 + 16) = v9 + 1;
          *(v5 + 8 * v9 + 32) = v7;
          if (v3 == v4)
          {
            goto LABEL_3;
          }
        }

        else if (v3 == v4)
        {
          goto LABEL_3;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_3:
    }
  }
}

uint64_t NSPredicate.EvaluationTree.flattened.getter@<X0>(unint64_t *a1@<X8>)
{
  v3 = *v1;
  v4 = *v1 >> 62;
  if (v4 > 1)
  {
    if (v4 != 2)
    {
      v24 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v25 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
      v26 = swift_allocObject();
      *(v26 + 16) = v24;
      v37 = v25;
      result = NSPredicate.EvaluationTree.flattened.getter((v26 + 24));
      v34 = v26 | 0xC000000000000000;
LABEL_31:
      *a1 = v34;
      return result;
    }

    v5 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v10 = *(v5 + 32);
      v9 = (v5 + 32);
      v8 = v10;
      if (v6 == 1)
      {

        if (v8 >> 62 == 2)
        {
LABEL_24:
          v37 = v8;
          NSPredicate.EvaluationTree.flattened.getter(&v36);

          v34 = v36;
          goto LABEL_31;
        }
      }

      else
      {
      }

      v27 = swift_allocObject();
      *(v27 + 16) = v7;
      v37 = MEMORY[0x1E69E7CC0];
      sub_1D8E314FC(0, v6, 0);
      v28 = v37;
      do
      {
        v29 = *v9++;
        v36 = v29;
        NSPredicate.EvaluationTree.flattened.getter(&v35);
        v30 = v35;
        v37 = v28;
        v32 = *(v28 + 16);
        v31 = *(v28 + 24);
        if (v32 >= v31 >> 1)
        {
          sub_1D8E314FC((v31 > 1), v32 + 1, 1);
          v28 = v37;
        }

        *(v28 + 16) = v32 + 1;
        *(v28 + 8 * v32 + 32) = v30;
        --v6;
      }

      while (v6);

      *(v27 + 24) = v28;
      v34 = v27 | 0x8000000000000000;
      goto LABEL_31;
    }

LABEL_20:
    *a1 = v3;
    goto LABEL_21;
  }

  if (v4)
  {
    v11 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
    v12 = *(v11 + 16);
    if (v12)
    {
      v13 = *((v3 & 0x3FFFFFFFFFFFFFFFLL) + 0x10);
      v15 = *(v11 + 32);
      v14 = (v11 + 32);
      v8 = v15;

      v16 = v15 & 0xC000000000000000;
      if (v12 != 1 || v16 != 0x4000000000000000)
      {
        v18 = swift_allocObject();
        *(v18 + 16) = v13;
        v37 = MEMORY[0x1E69E7CC0];
        sub_1D8E314FC(0, v12, 0);
        v19 = v37;
        do
        {
          v20 = *v14++;
          v36 = v20;
          NSPredicate.EvaluationTree.flattened.getter(&v35);
          v21 = v35;
          v37 = v19;
          v23 = *(v19 + 16);
          v22 = *(v19 + 24);
          if (v23 >= v22 >> 1)
          {
            sub_1D8E314FC((v22 > 1), v23 + 1, 1);
            v19 = v37;
          }

          *(v19 + 16) = v23 + 1;
          *(v19 + 8 * v23 + 32) = v21;
          --v12;
        }

        while (v12);

        *(v18 + 24) = v19;
        v34 = v18 | 0x4000000000000000;
        goto LABEL_31;
      }

      goto LABEL_24;
    }

    goto LABEL_20;
  }

  *a1 = v3;
LABEL_21:
}

uint64_t NSPredicate.EvaluationTree.existentially(matches:)(void *a1)
{
  v2 = *v1 >> 62;
  v3 = *a1 >> 62;
  if (v2 > 1)
  {
    if (v2 == 2)
    {
      if (v3 == 2)
      {
        return 1;
      }
    }

    else if (*a1 >> 62 == 3)
    {
      return 1;
    }
  }

  else if (v2)
  {
    if (v3 == 1)
    {
      return 1;
    }
  }

  else if (!v3)
  {
    return 1;
  }

  return 0;
}

void NSPredicate.EvaluationTree.evaluableComponents.getter()
{
  v1 = *v0;
  if ((v1 >> 62) - 1 >= 2)
  {
    if (v1 >> 62)
    {
      NSPredicate.EvaluationTree.evaluableComponents.getter();
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4540, &qword_1D9189FD0);
      v16 = swift_allocObject();
      *(v16 + 16) = xmmword_1D9189080;
      *(v16 + 32) = v1;
    }

    return;
  }

  v2 = *((v1 & 0x3FFFFFFFFFFFFFFFLL) + 0x18);
  v3 = *(v2 + 16);

  if (!v3)
  {
LABEL_23:

    return;
  }

  v4 = 0;
  v5 = MEMORY[0x1E69E7CC0];
  while (v4 < *(v2 + 16))
  {
    NSPredicate.EvaluationTree.evaluableComponents.getter();
    v7 = *(v6 + 16);
    v8 = *(v5 + 2);
    v9 = v8 + v7;
    if (__OFADD__(v8, v7))
    {
      goto LABEL_25;
    }

    v10 = v6;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && v9 <= *(v5 + 3) >> 1)
    {
      if (*(v10 + 16))
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v8 <= v9)
      {
        v12 = v8 + v7;
      }

      else
      {
        v12 = v8;
      }

      v5 = sub_1D8ECE98C(isUniquelyReferenced_nonNull_native, v12, 1, v5);
      if (*(v10 + 16))
      {
LABEL_16:
        if ((*(v5 + 3) >> 1) - *(v5 + 2) < v7)
        {
          goto LABEL_27;
        }

        swift_arrayInitWithCopy();

        if (v7)
        {
          v13 = *(v5 + 2);
          v14 = __OFADD__(v13, v7);
          v15 = v13 + v7;
          if (v14)
          {
            goto LABEL_28;
          }

          *(v5 + 2) = v15;
        }

        goto LABEL_5;
      }
    }

    if (v7)
    {
      goto LABEL_26;
    }

LABEL_5:
    if (v3 == ++v4)
    {
      goto LABEL_23;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
}

uint64_t NSPredicate.EvaluationTree.description.getter()
{
  v0._countAndFlagsBits = 8224;
  v0._object = 0xE200000000000000;
  return NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(0, v0)._countAndFlagsBits;
}

uint64_t sub_1D916E36C()
{
  v0._countAndFlagsBits = 8224;
  v0._object = 0xE200000000000000;
  return NSPredicate.EvaluationTree.printableTreeString(depth:spacer:)(0, v0)._countAndFlagsBits;
}

BOOL sub_1D916E3AC(uint64_t *a1)
{
  v2 = *(v1 + 16);
  v4 = *a1;
  return (v2(&v4) & 1) == 0;
}

unint64_t sub_1D916E3F4()
{
  result = qword_1ECABB7C8;
  if (!qword_1ECABB7C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7C8);
  }

  return result;
}

uint64_t sub_1D916E448(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 8))
  {
    return (*a1 + 125);
  }

  v3 = (((*a1 >> 57) >> 5) | (4 * ((*a1 >> 57) & 0x18 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7C)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D916E4A4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 2) & 0x1F | (32 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

unint64_t sub_1D916E57C()
{
  result = qword_1ECABB7D0;
  if (!qword_1ECABB7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7D0);
  }

  return result;
}

unint64_t sub_1D916E5D4()
{
  result = qword_1ECABB7D8;
  if (!qword_1ECABB7D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7D8);
  }

  return result;
}

unint64_t sub_1D916E62C()
{
  result = qword_1ECABB7E0;
  if (!qword_1ECABB7E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7E0);
  }

  return result;
}

unint64_t sub_1D916E684()
{
  result = qword_1ECABB7E8;
  if (!qword_1ECABB7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7E8);
  }

  return result;
}

unint64_t sub_1D916E6DC()
{
  result = qword_1ECABB7F0;
  if (!qword_1ECABB7F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7F0);
  }

  return result;
}

unint64_t sub_1D916E734()
{
  result = qword_1ECABB7F8;
  if (!qword_1ECABB7F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB7F8);
  }

  return result;
}

unint64_t sub_1D916E78C()
{
  result = qword_1ECABB800;
  if (!qword_1ECABB800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB800);
  }

  return result;
}

unint64_t sub_1D916E7E4()
{
  result = qword_1ECABB808;
  if (!qword_1ECABB808)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB808);
  }

  return result;
}

unint64_t sub_1D916E83C()
{
  result = qword_1ECABB810;
  if (!qword_1ECABB810)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB810);
  }

  return result;
}

unint64_t sub_1D916E894()
{
  result = qword_1ECABB818;
  if (!qword_1ECABB818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB818);
  }

  return result;
}

unint64_t sub_1D916E8EC()
{
  result = qword_1ECABB820;
  if (!qword_1ECABB820)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB820);
  }

  return result;
}

unint64_t sub_1D916E944()
{
  result = qword_1ECABB828;
  if (!qword_1ECABB828)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB828);
  }

  return result;
}

unint64_t sub_1D916E99C()
{
  result = qword_1ECABB830;
  if (!qword_1ECABB830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB830);
  }

  return result;
}

unint64_t sub_1D916E9F4()
{
  result = qword_1ECABB838;
  if (!qword_1ECABB838)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB838);
  }

  return result;
}

unint64_t sub_1D916EA4C()
{
  result = qword_1ECABB840;
  if (!qword_1ECABB840)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB840);
  }

  return result;
}

uint64_t sub_1D916EAA0(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x6C6261756C617665 && a2 == 0xE900000000000065;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 6581857 && a2 == 0xE300000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 29295 && a2 == 0xE200000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 7630702 && a2 == 0xE300000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D9179ACC();

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

id static PFClientUtil.widgetSupportsBlurredNowPlayingArtwork.getter()
{
  result = MTLCreateSystemDefaultDevice();
  if (result)
  {
    v1 = result;
    v2 = [result hasUnifiedMemory];
    v3 = [v1 supportsFamily_];
    swift_unknownObjectRelease();
    return (v2 & v3);
  }

  return result;
}

BOOL static PlaybackUtils.isConsideredPlayed(elapsed:duration:)(double a1, double a2)
{
  if (a2 <= 360.0)
  {
    return a2 * 0.9 <= a1;
  }

  else
  {
    return a2 + -240.0 <= a1;
  }
}

PodcastsFoundation::PlayButtonTimeFormatHelper_optional __swiftcall PlayButtonTimeFormatHelper.init(timeLeft:duration:)(Swift::Double_optional timeLeft, Swift::Double_optional duration)
{
  if (duration.is_nil)
  {
    v5 = 0;
    v6 = 0x20000;
  }

  else
  {
    v5 = 0;
    v7 = *&timeLeft.is_nil;
    v6 = 0x20000;
    if (*&timeLeft.is_nil >= 0.0 && (v3 & 1) == 0)
    {
      v8 = v2;
      if (v2 <= 0.0)
      {
        v5 = 0;
      }

      else
      {
        v9 = *&timeLeft.is_nil;
        v10 = v4;
        *&timeLeft.is_nil = sub_1D916F0C0(v2 < 240.0, *&timeLeft.is_nil);
        if (timeLeft.is_nil)
        {
          if (v7 >= 4200.0)
          {
            v11 = 5;
          }

          else
          {
            v11 = 4;
          }

          if (v7 < 3600.0)
          {
            v11 = 2;
          }

          if (v7 >= 600.0)
          {
            v12 = v11;
          }

          else
          {
            v12 = 1;
          }

          if (v7 >= 6000.0)
          {
            is_nil = 3;
          }

          else
          {
            is_nil = 2;
          }

          if (v7 < 600.0)
          {
            is_nil = 1;
          }

          if (timeLeft.is_nil)
          {
            is_nil = v12;
          }
        }

        else
        {
          is_nil = timeLeft.is_nil;
        }

        v4 = v10;
        v5 = v9;
        timeLeft.value = 240.0;
        v6 = timeLeft.is_nil | (is_nil << 8) | ((v8 >= 240.0) << 16);
      }
    }
  }

  *v4 = v5;
  *(v4 + 8) = v6;
  *(v4 + 10) = BYTE2(v6);
  result.value.timeLeft = timeLeft.value;
  result.value.formatStyle = timeLeft.is_nil;
  return result;
}

uint64_t PlayButtonTimeFormatHelper.FormatStyle.formatStyleUnits.getter(char a1)
{
  if (!a1)
  {
    return MEMORY[0x1E69E7CD0];
  }

  if (a1 == 1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB848, &qword_1D91BE930);
    sub_1D9179F4C();
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1D918A530;
    sub_1D9179F2C();
    sub_1D9179F3C();
    v2 = sub_1D8FB29F4(v1);
    swift_setDeallocating();
    swift_arrayDestroy();
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB848, &qword_1D91BE930);
    v3 = sub_1D9179F4C();
    v4 = *(v3 - 8);
    v5 = (*(v4 + 80) + 32) & ~*(v4 + 80);
    v6 = swift_allocObject();
    *(v6 + 16) = xmmword_1D9189080;
    sub_1D9179F3C();
    v2 = sub_1D8FB29F4(v6);
    swift_setDeallocating();
    (*(v4 + 8))(v6 + v5, v3);
  }

  swift_deallocClassInstance();
  return v2;
}

uint64_t _s18PodcastsFoundation26PlayButtonTimeFormatHelperV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && *(a1 + 8) == *(a2 + 8) && *(a1 + 9) == *(a2 + 9))
  {
    return (*(a2 + 10) ^ *(a1 + 10) ^ 1) & 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D916F0C0(char a1, double a2)
{
  result = 0;
  if ((a1 & 1) == 0 && a2 > 59.0)
  {
    if (qword_1EDCD5F00 != -1)
    {
      swift_once();
    }

    if (sub_1D917693C() == 49 && v4 == 0xE100000000000000)
    {

      return 2;
    }

    else
    {
      v6 = sub_1D9179ACC();

      if (v6)
      {
        return 2;
      }

      else
      {
        return 1;
      }
    }
  }

  return result;
}

uint64_t sub_1D916F1C4(uint64_t result, double a2)
{
  if (result)
  {
    if (result == 1)
    {
      if (a2 >= 4200.0)
      {
        v2 = 5;
      }

      else
      {
        v2 = 4;
      }

      if (a2 >= 3600.0)
      {
        v3 = v2;
      }

      else
      {
        v3 = 2;
      }

      if (a2 >= 600.0)
      {
        return v3;
      }

      else
      {
        return 1;
      }
    }

    else
    {
      if (a2 >= 6000.0)
      {
        v4 = 3;
      }

      else
      {
        v4 = 2;
      }

      if (a2 < 600.0)
      {
        return 1;
      }

      else
      {
        return v4;
      }
    }
  }

  return result;
}

unint64_t sub_1D916F25C()
{
  result = qword_1ECABB850;
  if (!qword_1ECABB850)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB850);
  }

  return result;
}

unint64_t sub_1D916F2B4()
{
  result = qword_1ECABB858;
  if (!qword_1ECABB858)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB858);
  }

  return result;
}

uint64_t __swift_memcpy11_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 7) = *(a2 + 7);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for PlayButtonTimeFormatHelper(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 11))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 10);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for PlayButtonTimeFormatHelper(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 10) = 0;
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 11) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 11) = 0;
    }

    if (a2)
    {
      *(result + 10) = a2 + 1;
    }
  }

  return result;
}

void PodcastsBagFeatureFlags.Key.init(rawValue:)(BOOL *a3@<X8>)
{
  v4 = sub_1D917980C();

  *a3 = v4 != 0;
}

uint64_t sub_1D916F468()
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

uint64_t sub_1D916F4DC(uint64_t a1)
{
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179E1C();
}

void sub_1D916F530(BOOL *a2@<X8>)
{
  v3 = sub_1D917980C();

  *a2 = v3 != 0;
}

unint64_t sub_1D916F5A8()
{
  result = qword_1ECABB860;
  if (!qword_1ECABB860)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB860);
  }

  return result;
}

void sub_1D916F60C(uint64_t a1)
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECABB890, &qword_1D918B960);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v9 - v2;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v5 = Strong;
    v6 = swift_unknownObjectWeakLoadStrong();

    if (v6)
    {
      v7 = sub_1D917886C();
      (*(*(v7 - 8) + 56))(v3, 1, 1, v7);
      v8 = swift_allocObject();
      v8[2] = 0;
      v8[3] = 0;
      v8[4] = v6;
      sub_1D8E91528(0, 0, v3, &unk_1D91BEDA8, v8);
    }
  }
}

uint64_t sub_1D916F824()
{
  result = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  qword_1ECABB878 = result;
  return result;
}

id static NSNotificationName.restrictionsDidChange.getter()
{
  if (qword_1ECAB3748 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECABB878;

  return v1;
}

uint64_t RestrictionsController.ExplicitContentState.debugDescription.getter(uint64_t a1)
{
  result = 0xD000000000000026;
  if (a1 > 1)
  {
    if (a1 == 2)
    {
      return 0xD000000000000044;
    }

    if (a1 == 3)
    {
      return 0x100000000000002ELL;
    }

    goto LABEL_10;
  }

  if (a1)
  {
    if (a1 == 1)
    {
      return 0x1000000000000055;
    }

LABEL_10:
    result = sub_1D9179C9C();
    __break(1u);
  }

  return result;
}

id static RestrictionsController.shared.getter()
{
  if (qword_1ECAB1CC0 != -1)
  {
    swift_once();
  }

  v1 = qword_1ECAB1CD0;

  return v1;
}

Swift::Void __swiftcall RestrictionsController.stopListening()()
{
  v1 = OBJC_IVAR___PFRestrictionsController_observation;
  v2 = *(v0 + OBJC_IVAR___PFRestrictionsController_observation);
  if (v2)
  {
    v3 = qword_1ECAB1120;
    v4 = v2;
    if (v3 != -1)
    {
      swift_once();
    }

    [qword_1ECAB1130 unregisterObserver_];

    v5 = *(v0 + v1);
    *(v0 + v1) = 0;
  }
}

uint64_t sub_1D916FB98()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D916FC4C;

  return sub_1D8D4C3A0(v1);
}

uint64_t sub_1D916FC4C(uint64_t a1)
{
  v3 = *(*v1 + 16);
  v6 = *v1;

  v4 = *(v6 + 8);

  return v4(a1);
}

uint64_t sub_1D916FD7C()
{
  v1 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  *(v0 + 16) = v1;
  v2 = swift_task_alloc();
  *(v0 + 24) = v2;
  *v2 = v0;
  v2[1] = sub_1D9170744;

  return sub_1D8D4C3A0(v1);
}

id sub_1D916FE50()
{
  result = [objc_opt_self() sharedConnection];
  if (result)
  {
    v2 = result;
    [result setBoolValue:1 forSetting:*MEMORY[0x1E69ADE68]];

    v3 = swift_task_alloc();
    *(v0 + 24) = v3;
    *v3 = v0;
    v3[1] = sub_1D916FF2C;

    return sub_1D8D4DE18();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1D916FF2C(uint64_t a1)
{
  v5 = *v1;

  v3 = *(v5 + 8);

  return v3(a1);
}

void sub_1D9170028()
{
  v0 = [objc_opt_self() defaultCenter];
  v1 = v0;
  if (qword_1ECAB3748 != -1)
  {
    swift_once();
    v0 = v1;
  }

  [v0 postNotificationName:qword_1ECABB878 object:0];
}

uint64_t sub_1D9170118()
{
  v0 = sub_1D9177E0C();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = aBlock - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D9177E9C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = aBlock - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v8 = sub_1D917744C();
  __swift_project_value_buffer(v8, qword_1ECAB0E30);
  v9 = sub_1D917741C();
  v10 = sub_1D9178CEC();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_1D8CEC000, v9, v10, "Received profileConnectionDidReceiveRestrictionChangedNotification", v11, 2u);
    MEMORY[0x1DA72CB90](v11, -1, -1);
  }

  sub_1D8CFD888();
  v12 = sub_1D9178E1C();
  v13 = swift_allocObject();
  swift_unknownObjectWeakInit();
  aBlock[4] = sub_1D917072C;
  aBlock[5] = v13;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D8CF5F60;
  aBlock[3] = &block_descriptor_108;
  v14 = _Block_copy(aBlock);

  sub_1D9177E4C();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1D8D123F8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F60, &unk_1D918B0E0);
  sub_1D8D1D5B0();
  sub_1D91792CC();
  MEMORY[0x1DA72A400](0, v7, v3, v14);
  _Block_release(v14);

  (*(v1 + 8))(v3, v0);
  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1D9170454()
{
  v18 = v0;
  v1 = v0[18];
  v2 = [v1 BOOLValue];

  if (qword_1ECAB0E28 != -1)
  {
    swift_once();
  }

  v3 = v0[20];
  v4 = sub_1D917744C();
  __swift_project_value_buffer(v4, qword_1ECAB0E30);
  v5 = v3;
  v6 = sub_1D917741C();
  v7 = sub_1D9178CEC();

  v8 = os_log_type_enabled(v6, v7);
  v9 = v0[21];
  if (v8)
  {
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v17 = v11;
    *v10 = 136315394;
    v12 = sub_1D917820C();
    v14 = sub_1D8CFA924(v12, v13, &v17);

    *(v10 + 4) = v14;
    *(v10 + 12) = 1024;
    *(v10 + 14) = v2;
    __swift_destroy_boxed_opaque_existential_1Tm(v11);
    MEMORY[0x1DA72CB90](v11, -1, -1);
    MEMORY[0x1DA72CB90](v10, -1, -1);
  }

  v15 = v0[1];

  return v15(v2);
}

unint64_t sub_1D9170624()
{
  result = qword_1ECABB8A8;
  if (!qword_1ECABB8A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECABB8A8);
  }

  return result;
}

uint64_t sub_1D9170678(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1D8D58924;

  return sub_1D8D333C0(a1);
}

uint64_t SearchTrie.add<A>(matchCandidate:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v37 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v11 = &v37 - v10;
  result = sub_1D9178BAC();
  if (result)
  {
    return result;
  }

  v13 = *(v3 + OBJC_IVAR___MTSearchTrie_rootNode);
  (*(v6 + 16))(v8, a1, a2);

  sub_1D91783FC();
  swift_getAssociatedConformanceWitness();
  sub_1D91791DC();
  v14 = v40;
  if (!v40)
  {
    v22 = v13;
LABEL_21:
    (*(v37 + 8))(v11, AssociatedTypeWitness);
    *(v22 + 16) = 1;
  }

  v15 = v39;
  while (1)
  {
    swift_beginAccess();
    v18 = *(v13 + 24);
    if (*(v18 + 16))
    {
      v19 = sub_1D8D4A13C(v15, v14);
      if (v20)
      {
        v21 = v19;

        v22 = *(*(v18 + 56) + 8 * v21);

        goto LABEL_6;
      }
    }

    type metadata accessor for SearchTrie.Node();
    v22 = swift_allocObject();
    *(v22 + 16) = 0;
    *(v22 + 24) = MEMORY[0x1E69E7CC8];
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v38 = *(v13 + 24);
    v24 = v38;
    *(v13 + 24) = 0x8000000000000000;
    v25 = sub_1D8D4A13C(v15, v14);
    v27 = v24[2];
    v28 = (v26 & 1) == 0;
    v29 = __OFADD__(v27, v28);
    v30 = v27 + v28;
    if (v29)
    {
      break;
    }

    v31 = v26;
    if (v24[3] < v30)
    {
      sub_1D8D4A168(v30, isUniquelyReferenced_nonNull_native);
      v25 = sub_1D8D4A13C(v15, v14);
      if ((v31 & 1) != (v32 & 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      if ((v31 & 1) == 0)
      {
        goto LABEL_16;
      }

      goto LABEL_4;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_15;
    }

    v36 = v25;
    sub_1D8F86CF0();
    v25 = v36;
    if ((v31 & 1) == 0)
    {
LABEL_16:
      v17 = v38;
      v38[(v25 >> 6) + 8] |= 1 << v25;
      v33 = (v17[6] + 16 * v25);
      *v33 = v15;
      v33[1] = v14;
      *(v17[7] + 8 * v25) = v22;
      v34 = v17[2];
      v29 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v29)
      {
        goto LABEL_24;
      }

      v17[2] = v35;
      goto LABEL_5;
    }

LABEL_4:
    v16 = v25;

    v17 = v38;
    *(v38[7] + 8 * v16) = v22;

LABEL_5:
    *(v13 + 24) = v17;
    swift_endAccess();
LABEL_6:

    sub_1D91791DC();
    v15 = v39;
    v14 = v40;
    v13 = v22;
    if (!v40)
    {
      goto LABEL_21;
    }
  }

  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

uint64_t SearchTrie.fullMatch<A>(for:)(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v8 = &v23 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v12 = &v23 - v11;
  if (sub_1D9178BAC())
  {
    return 0;
  }

  v13 = *(v3 + OBJC_IVAR___MTSearchTrie_rootNode);
  (*(v6 + 16))(v8, a1, a2);

  sub_1D91783FC();
  swift_getAssociatedConformanceWitness();
  sub_1D91791DC();
  v14 = v25;
  if (v25)
  {
    v15 = v24;
    while (1)
    {
      swift_beginAccess();
      v16 = *(v13 + 24);
      if (!*(v16 + 16))
      {

        goto LABEL_12;
      }

      v17 = sub_1D8D4A13C(v15, v14);
      v19 = v18;

      if ((v19 & 1) == 0)
      {
        break;
      }

      v20 = *(*(v16 + 56) + 8 * v17);

      sub_1D91791DC();
      v15 = v24;
      v14 = v25;
      v13 = v20;
      if (!v25)
      {
        goto LABEL_9;
      }
    }

LABEL_12:
    (*(v10 + 8))(v12, AssociatedTypeWitness);
    return 0;
  }

  v20 = v13;
LABEL_9:
  (*(v10 + 8))(v12, AssociatedTypeWitness);
  v21 = *(v20 + 16);

  return v21;
}

uint64_t SearchTrie.containsMatch<A>(for:)(uint64_t a1, uint64_t a2)
{
  v5 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v7 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v39 = *(AssociatedTypeWitness - 8);
  MEMORY[0x1EEE9AC00](AssociatedTypeWitness);
  v10 = &v38 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D9189070;
  v41 = OBJC_IVAR___MTSearchTrie_rootNode;
  v42 = v2;
  *(inited + 32) = *(v2 + OBJC_IVAR___MTSearchTrie_rootNode);
  (*(v5 + 16))(v7, a1, a2);

  sub_1D91783FC();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v43 = v10;
  v44 = AssociatedTypeWitness;
  result = sub_1D91791DC();
  v14 = v46;
  if (!v46)
  {
LABEL_37:
    (*(v39 + 8))(v43, v44);

    return 0;
  }

  v15 = v45;
  v40 = AssociatedConformanceWitness;
  while (1)
  {
    v45 = MEMORY[0x1E69E7CC0];
    if (inited >> 62)
    {
      break;
    }

    v16 = *((inited & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v16)
    {
      goto LABEL_7;
    }

LABEL_29:

    v18 = MEMORY[0x1E69E7CC0];
LABEL_30:
    v31 = *(v42 + v41);
    swift_beginAccess();
    v32 = *(v31 + 24);
    if (!*(v32 + 16))
    {
      goto LABEL_3;
    }

    v33 = sub_1D8D4A13C(v15, v14);
    v35 = v34;

    if ((v35 & 1) == 0)
    {

LABEL_3:

      goto LABEL_4;
    }

    v36 = *(*(v32 + 56) + 8 * v33);

    if (*(v36 + 16))
    {
      (*(v39 + 8))(v43, v44);

LABEL_40:

      return 1;
    }

    MEMORY[0x1DA729B90](v37);
    if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_1D917863C();
    }

    sub_1D917869C();

    v18 = v45;
LABEL_4:
    result = sub_1D91791DC();
    v15 = v45;
    v14 = v46;
    inited = v18;
    if (!v46)
    {
      goto LABEL_37;
    }
  }

  result = sub_1D917935C();
  v16 = result;
  if (!result)
  {
    goto LABEL_29;
  }

LABEL_7:
  if ((inited & 0xC000000000000001) != 0)
  {
    v17 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      result = MEMORY[0x1DA72AA90](v17, inited);
      v19 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      v20 = result;
      swift_beginAccess();
      v21 = *(v20 + 24);
      if (*(v21 + 16) && (v22 = sub_1D8D4A13C(v15, v14), (v23 & 1) != 0))
      {
        v24 = *(*(*(v21 + 56) + 8 * v22) + 16);

        if (v24)
        {

          (*(v39 + 8))(v43, v44);

          swift_unknownObjectRelease();
          return 1;
        }

        MEMORY[0x1DA729B90](v25);
        if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1D917863C();
        }

        sub_1D917869C();

        swift_unknownObjectRelease();
        v18 = v45;
      }

      else
      {
        swift_unknownObjectRelease();
      }

      ++v17;
      if (v19 == v16)
      {
        goto LABEL_27;
      }
    }

    __break(1u);
  }

  else
  {
    v26 = 0;
    v18 = MEMORY[0x1E69E7CC0];
    while (v26 < *((inited & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      v27 = *(inited + 8 * v26 + 32);
      result = swift_beginAccess();
      v28 = *(v27 + 24);
      if (*(v28 + 16))
      {
        result = sub_1D8D4A13C(v15, v14);
        if (v29)
        {
          if (*(*(*(v28 + 56) + 8 * result) + 16) == 1)
          {

            (*(v39 + 8))(v43, v44);

            goto LABEL_40;
          }

          swift_retain_n();

          MEMORY[0x1DA729B90](v30);
          if (*((v45 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v45 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_1D917863C();
          }

          sub_1D917869C();

          v18 = v45;
        }
      }

      if (v16 == ++v26)
      {
LABEL_27:

        goto LABEL_30;
      }
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D91714B4()
{

  return swift_deallocClassInstance();
}

id SearchTrie.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchTrie.init()()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR___MTSearchTrie_rootNode;
  type metadata accessor for SearchTrie.Node();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  *(v3 + 24) = MEMORY[0x1E69E7CC8];
  *&v0[v2] = v3;
  v5.receiver = v0;
  v5.super_class = ObjectType;
  return objc_msgSendSuper2(&v5, sel_init);
}

id SearchTrie.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

Swift::Void __swiftcall SearchTrie.add(matchCandidate:)(NSString matchCandidate)
{
  v1 = sub_1D917820C();
  sub_1D8D49E98(v1, v2);
}

uint64_t NSString.containsMatch(in:)()
{
  v0 = sub_1D917820C();
  v2 = sub_1D8D42E68(v0, v1);

  return v2 & 1;
}

uint64_t Synchronized<A>.enableIfDisabled()(uint64_t a1)
{
  os_unfair_lock_lock((a1 + 20));
  v2 = *(a1 + 16);
  if ((v2 & 1) == 0)
  {
    *(a1 + 16) = 1;
  }

  os_unfair_lock_unlock((a1 + 20));
  return v2 ^ 1u;
}

void (*Synchronized.wrappedValue.modify(void *a1, uint64_t a2))(uint64_t a1, char a2)
{
  v5 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x68uLL);
  }

  v7 = v6;
  *a1 = v6;
  v6[8] = v2;
  v8 = *(a2 + 16);
  v6[9] = v8;
  v9 = *(v8 - 8);
  v6[10] = v9;
  v10 = *(v9 + 64);
  if (v5)
  {
    v6[11] = swift_coroFrameAlloc();
    v11 = swift_coroFrameAlloc();
  }

  else
  {
    v6[11] = malloc(*(v9 + 64));
    v11 = malloc(v10);
  }

  v7[12] = v11;
  OSAllocatedUnfairLock.current.getter(*v2, v11);
  return sub_1D9171818;
}

void sub_1D9171818(uint64_t a1, char a2)
{
  v2 = *a1;
  v4 = *(*a1 + 88);
  v3 = *(*a1 + 96);
  v5 = *(*a1 + 72);
  v6 = *(*a1 + 80);
  if (a2)
  {
    v7 = v2[8];
    (*(v2[10] + 16))(v2[11], v2[12], v2[9]);
    v8 = *v7;
    v2[2] = v5;
    v2[3] = v4;
    sub_1D8D056BC(sub_1D8D3E424, v2, v8);
    v9 = *(v6 + 8);
    v9(v4, v5);
    v9(v3, v5);
  }

  else
  {
    v10 = *v2[8];
    v2[6] = v5;
    v2[7] = v3;
    sub_1D8D056BC(sub_1D8D3E424, (v2 + 4), v10);
    (*(v6 + 8))(v3, v5);
  }

  free(v3);
  free(v4);

  free(v2);
}

uint64_t Synchronized<A>.compareExchange(expected:desired:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6[2] = a4;
  v6[3] = a5;
  v6[4] = a1;
  v6[5] = a2;
  sub_1D8D056BC(sub_1D9171AA0, v6, a3);
  return v7;
}

uint64_t sub_1D91719C4@<X0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a6@<X8>)
{
  result = sub_1D91781BC();
  if (result)
  {
    v11 = *(a4 - 8);
    (*(v11 + 8))(a1, a4);
    result = (*(v11 + 16))(a1, a3, a4);
    v12 = 1;
  }

  else
  {
    v12 = 0;
  }

  *a6 = v12;
  return result;
}

uint64_t sub_1D9171AC0(uint64_t a1)
{
  v1 = *(a1 + 16);
  v2 = MEMORY[0x1E69E7CC0];
  if (v1)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v1, 0);
    v2 = v13;
    v4 = a1 + 32;
    do
    {
      ++v4;
      v5 = MediaRequest.IncludeExtendTypes.rawValue.getter();
      v14 = v2;
      v8 = *(v2 + 16);
      v7 = *(v2 + 24);
      if (v8 >= v7 >> 1)
      {
        v10 = v5;
        v11 = v6;
        sub_1D8D41BE0((v7 > 1), v8 + 1, 1);
        v6 = v11;
        v5 = v10;
        v2 = v14;
      }

      *(v2 + 16) = v8 + 1;
      v9 = v2 + 16 * v8;
      *(v9 + 32) = v5;
      *(v9 + 40) = v6;
      --v1;
    }

    while (v1);
  }

  return v2;
}

uint64_t sub_1D9171BAC(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v2)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1D8D41BE0(0, v2, 0);
    v4 = (a1 + 32);
    result = v15;
    v5 = 0x80000001D91C81A0;
    v6 = 0x80000001D91C8180;
    do
    {
      v7 = *v4++;
      v8 = 0xE700000000000000;
      v9 = 0x6B726F77747261;
      switch(v7)
      {
        case 1:
          v9 = 0x5479616C70736964;
          v8 = 0xEB00000000657079;
          break;
        case 2:
          v8 = 0xE200000000000000;
          v9 = 25705;
          break;
        case 3:
          v9 = 0x657373416C6D7474;
          v8 = 0xED0000736C725574;
          break;
        case 4:
          v8 = 0xE90000000000006ELL;
          v9 = 0x656B6F546C6D7474;
          break;
        case 5:
          v9 = 0xD000000000000016;
          v8 = 0x80000001D91C8150;
          break;
        case 6:
          v9 = 0x6574656C706D6F63;
          v8 = 0xE900000000000064;
          break;
        case 7:
          v9 = 0xD000000000000016;
          v8 = v6;
          break;
        case 8:
          v9 = 0xD000000000000013;
          v8 = v5;
          break;
        case 9:
          v8 = 0xE900000000000079;
          v9 = 0x72617262694C6E69;
          break;
        case 10:
          v8 = 0xE400000000000000;
          v9 = 1701667182;
          break;
        case 11:
          v8 = 0xEA0000000000656DLL;
          v9 = 0x614E747369747261;
          break;
        case 12:
          v8 = 0xE400000000000000;
          v9 = 1701869940;
          break;
        default:
          break;
      }

      v16 = result;
      v11 = *(result + 16);
      v10 = *(result + 24);
      if (v11 >= v10 >> 1)
      {
        v13 = v6;
        v14 = v5;
        sub_1D8D41BE0((v10 > 1), v11 + 1, 1);
        v6 = v13;
        v5 = v14;
        result = v16;
      }

      *(result + 16) = v11 + 1;
      v12 = result + 16 * v11;
      *(v12 + 32) = v9;
      *(v12 + 40) = v8;
      --v2;
    }

    while (v2);
  }

  return result;
}

id sub_1D9171EA8(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, void *a6)
{
  v9 = type metadata accessor for MediaRequest.Params(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D91767FC();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v38 = (&v37 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D91767EC();
  v15 = [a2 absoluteString];
  if (v15)
  {
    v16 = v12;
    v17 = v15;
    v18 = sub_1D917820C();
    v20 = v19;

    v12 = v16;
  }

  else
  {
    v18 = 0;
    v20 = 0;
  }

  v21 = v38;
  MEMORY[0x1DA727D30](v18, v20);
  v22 = sub_1D917820C();
  MEMORY[0x1DA727D50](v22);
  sub_1D91767AC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6128, &unk_1D9192130);
  sub_1D91766EC();
  *(swift_allocObject() + 16) = xmmword_1D9189080;
  sub_1D917820C();
  sub_1D91766BC();

  sub_1D917671C();
  sub_1D8D85B08(a5, v11);
  if ([a6 BOOLValue])
  {
    v23 = *(v11 + 16);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v23 = sub_1D8D883A0(0, *(v23 + 2) + 1, 1, v23);
    }

    v25 = *(v23 + 2);
    v24 = *(v23 + 3);
    if (v25 >= v24 >> 1)
    {
      v23 = sub_1D8D883A0((v24 > 1), v25 + 1, 1, v23);
    }

    *(v23 + 2) = v25 + 1;
    v23[v25 + 32] = 1;
    *(v11 + 16) = v23;
  }

  sub_1D8D88524(v21, v11);
  sub_1D8D889F8(v21, v11);
  if ((v11[152] & 1) == 0)
  {
    sub_1D91767DC();
  }

  v26 = v11[43];
  if (v26 != 5)
  {
    sub_1D917677C();
    v27 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v28 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

    v29 = [v27 stringByAppendingPathComponent_];

    v30 = sub_1D917820C();
    v32 = v31;

    MEMORY[0x1DA727D50](v30, v32);
  }

  if (v11[40] == 3)
  {
    v33 = sub_1D917820C();
    MEMORY[0x1DA727D50](v33);
  }

  v34 = sub_1D917672C();
  v35 = [objc_opt_self() promiseWithResult_];

  (*(v13 + 8))(v21, v12);
  sub_1D8D90BEC(v11);
  return v35;
}

id sub_1D9172384(uint64_t a1)
{
  v3 = *(type metadata accessor for MediaRequest.Params(0) - 8);
  v4 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  v8 = *(v1 + ((*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D9171EA8(a1, v5, v6, v7, v1 + v4, v8);
}

uint64_t sub_1D917248C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  v20 = -191875503 * (v19 ^ 1) - 2 * v19 + 5;
  *(&a19 + 16 * &a19 - 144 * ((&a9 - 0x36F214C141B3E0BELL) / 9) - 0x6F214C141B3E10D1) = *(qword_1E856C5E0[v20 + 6] + 8) ^ *(a2 + 15) ^ 0xD1 ^ *(qword_1E856C5E0[v20 + 1] + 13) ^ *(qword_1E856C5E0[v20 + 5] + 14);
  return (*(a5 + 8 * v20))();
}

CGRect AVMakeRectWithAspectRatioInsideRect(CGSize aspectRatio, CGRect boundingRect)
{
  MEMORY[0x1EEDE99E0](aspectRatio, *&aspectRatio.height, boundingRect.origin, *&boundingRect.origin.y, boundingRect.size, *&boundingRect.size.height);
  result.size.height = v5;
  result.size.width = v4;
  result.origin.y = v3;
  result.origin.x = v2;
  return result;
}