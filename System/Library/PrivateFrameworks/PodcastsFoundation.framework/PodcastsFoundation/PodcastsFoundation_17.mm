uint64_t sub_1D8EEF814@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t *a3@<X8>)
{
  v6 = *(a2(0) - 8);
  result = (*(v3 + 16))(a1, v3 + ((*(v6 + 80) + 32) & ~*(v6 + 80)));
  *a3 = result;
  return result;
}

uint64_t objectdestroy_246Tm()
{
  if (*(v0 + 40))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));
  }

  return swift_deallocObject();
}

uint64_t objectdestroy_249Tm(uint64_t (*a1)(void))
{
  v2 = a1(0);
  v3 = (*(*(v2 - 8) + 80) + 16) & ~*(*(v2 - 8) + 80);
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v1 + v3, 1, v4))
  {
    (*(v5 + 8))(v1 + v3, v4);
  }

  v6 = (v1 + v3 + *(v2 + 36));
  if (v6[3])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v6);
  }

  return swift_deallocObject();
}

void sub_1D8EEFA84(uint64_t a1)
{

  v2 = MEMORY[0x1E69E7CC8];
  *(a1 + 8) = 0;
  *(a1 + 16) = v2;
}

uint64_t sub_1D8EEFAF8@<X0>(uint64_t a1@<X8>)
{
  v3 = *(sub_1D9176C2C() - 8);
  v4 = (*(v3 + 80) + 16) & ~*(v3 + 80);
  v5 = (*(v3 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  v6 = *(v1 + v5);

  return sub_1D8EEB4B0(v1 + v4, v6, v1 + ((v5 + 15) & 0xFFFFFFFFFFFFFFF8), a1);
}

void sub_1D8EEFBB4(uint64_t a1, uint64_t a2)
{
  v5 = *(sub_1D9176C2C() - 8);
  v6 = (*(v5 + 80) + 16) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v2 + v7);
  v10 = *(v2 + ((v8 + 271) & 0xFFFFFFFFFFFFFFF8));

  sub_1D8EEBD70(a1, a2, v2 + v6, v9, v2 + v8, v10);
}

SHCatalog_optional __swiftcall TranscriptData.catalog()()
{
  if (*(v0 + 64) == 1)
  {
    v1 = 0;
  }

  else
  {
    v1 = *v0;
    v2 = *v0;
  }

  v4 = v1;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

void TranscriptData.transcriptModel()(void *a1@<X8>)
{
  if (*(v1 + 64))
  {
    v3 = v1[1];
    v4 = *(v1 + 16);
    v6 = v1[3];
    v5 = v1[4];
    v8 = v1[5];
    v7 = v1[6];
    if (*(v1 + 64) == 1)
    {
      v9 = *v1;
      sub_1D8D752C4(v6, v5);
    }

    else
    {
      v10 = v1[7];
      v11 = v1[5];
      v4 |= (*(v1 + 17) << 8) | ((*(v1 + 21) | (*(v1 + 23) << 16)) << 40);
      sub_1D8D752C4(v1[4], v11);
      v8 = v7;
      v7 = v10;
      v9 = v3;
      v3 = v4;
      LOBYTE(v4) = v6;
      v6 = v5;
      v5 = v11;
    }

    *a1 = v9;
    a1[1] = v3;
    a1[2] = v4 & 1;
    a1[3] = v6;
    a1[4] = v5;
    a1[5] = v8;
    a1[6] = v7;
  }

  else
  {
    a1[6] = 0;
    *(a1 + 1) = 0u;
    *(a1 + 2) = 0u;
    *a1 = 0u;
  }
}

uint64_t _s18PodcastsFoundation14TranscriptDataO2eeoiySbAC_ACtFZ_0(__int128 *a1, uint64_t a2)
{
  v2 = a1[1];
  v3 = a1[3];
  v42 = a1[2];
  v43 = v3;
  v4 = a1[1];
  v40 = *a1;
  v41 = v4;
  v5 = *(a2 + 16);
  v6 = *(a2 + 48);
  *&v45[32] = *(a2 + 32);
  *&v45[48] = v6;
  v7 = *(a2 + 16);
  *v45 = *a2;
  *&v45[16] = v7;
  v8 = a1[3];
  v47[2] = v42;
  v47[3] = v8;
  v47[0] = v40;
  v47[1] = v2;
  v50 = v5;
  v51 = *&v45[32];
  v52 = *(a2 + 48);
  v44 = *(a1 + 64);
  v46 = *(a2 + 64);
  v48 = *(a1 + 64);
  v53 = *(a2 + 64);
  v49 = *v45;
  if (!v44)
  {
    if (!v46)
    {
      sub_1D8D6F530();
      sub_1D8EC8878(v45, &v31);
      sub_1D8EC8878(&v40, &v31);
      v11 = sub_1D917914C();
LABEL_12:
      sub_1D8EF0464(v47);
      return v11 & 1;
    }

    goto LABEL_10;
  }

  v9 = v42;
  v10 = v43;
  if (v44 != 1)
  {
    if (v46 == 2)
    {
      v21 = *(&v40 + 1);
      v22 = v41;
      v23 = BYTE8(v41);
      v17 = *(&v41 + 5);
      v18 = BYTE7(v41);
      v16 = *(&v41 + 1);
      v12 = *(&v43 + 1);
      v20 = *&v45[8];
      v19 = v45[24];
      v13 = *&v45[32];
      v14 = *&v45[48];
      sub_1D8D6F530();
      sub_1D8EC8878(v45, &v31);
      sub_1D8EC8878(&v40, &v31);
      sub_1D8D752C4(v9, *(&v9 + 1));

      sub_1D8D752C4(v13, *(&v13 + 1));

      if (sub_1D917914C())
      {
        v31 = v21;
        v32 = v22;
        v33 = v16;
        v35 = (v16 | ((v17 | (v18 << 16)) << 32)) >> 48;
        v34 = (v16 | ((v17 | (v18 << 16)) << 32)) >> 32;
        v36 = v23 & 1;
        v37 = v9;
        v38 = v10;
        v39 = v12;
        v28 = v20;
        v29 = v19 & 1;
        *v30 = v13;
        *&v30[16] = v14;
        v11 = _s18PodcastsFoundation15TranscriptModelV2eeoiySbAC_ACtFZ_0(&v31, &v28);
        sub_1D8EF0464(v47);
        sub_1D8D7567C(v13, *(&v13 + 1));

        sub_1D8D7567C(v9, *(&v9 + 1));

        return v11 & 1;
      }

      sub_1D8D7567C(v13, *(&v13 + 1));

      sub_1D8D7567C(v9, *(&v9 + 1));

      goto LABEL_11;
    }

LABEL_10:
    sub_1D8EC8878(v45, &v31);
    sub_1D8EC8878(&v40, &v31);
LABEL_11:
    v11 = 0;
    goto LABEL_12;
  }

  if (v46 != 1)
  {
    goto LABEL_10;
  }

  v24 = *v45;
  v26 = *&v45[24];
  v28 = v40;
  v29 = v41 & 1;
  v30[0] = BYTE8(v41);
  *&v30[1] = *(&v41 + 9);
  v30[7] = (*(&v41 + 9) | ((*(&v41 + 13) | (HIBYTE(v41) << 16)) << 32)) >> 48;
  *&v30[5] = *(&v41 + 13);
  *&v30[8] = v42;
  *&v30[24] = v43;
  v25 = v45[16] & 1;
  v27 = *&v45[40];
  sub_1D8EC8878(v45, &v31);
  sub_1D8EC8878(&v40, &v31);
  sub_1D8EC8878(v45, &v31);
  sub_1D8EC8878(&v40, &v31);
  v11 = _s18PodcastsFoundation15TranscriptModelV2eeoiySbAC_ACtFZ_0(&v28, &v24);
  sub_1D8EF0464(v47);
  sub_1D8EC88D4(v45);
  sub_1D8EC88D4(&v40);
  return v11 & 1;
}

__n128 __swift_memcpy65_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1D8EF03AC(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 65))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 64);
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

uint64_t sub_1D8EF03F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 64) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 65) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 65) = 0;
    }

    if (a2)
    {
      *(result + 64) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8EF0464(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB65F8, &qword_1D9192AB0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double TranscriptEpisodeContext.transcriptRequest(priority:lifetime:)@<D0>(char *a1@<X0>, char *a2@<X1>, uint64_t a3@<X8>)
{
  v5 = *a1;
  v6 = *a2;
  v7 = *v3;
  v8 = v3[4];
  if (v8)
  {
    v9 = v3[3];
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    *(a3 + 48) = 0u;
    *(a3 + 32) = 0u;
    *(a3 + 64) = 0;
    *a3 = v7;
    *(a3 + 8) = v9;
    *(a3 + 16) = v8;
    *(a3 + 24) = v5;
    *(a3 + 25) = v6;

    sub_1D8D412B0(&v14, a3 + 32);
  }

  else
  {
    v11 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v12 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v13 = [v11 BOOLForKey_];

    if (v13)
    {
      v16 = 0;
      v14 = 0u;
      v15 = 0u;
      *(a3 + 48) = 0u;
      *(a3 + 64) = 0;
      *(a3 + 32) = 0u;
      *a3 = v7;
      *(a3 + 8) = 5852737;
      *(a3 + 16) = 0xE300000000000000;
      *(a3 + 24) = v5;
      *(a3 + 25) = v6;
      sub_1D8D412B0(&v14, a3 + 32);
    }

    else
    {
      *(a3 + 64) = 0;
      result = 0.0;
      *(a3 + 32) = 0u;
      *(a3 + 48) = 0u;
      *a3 = 0u;
      *(a3 + 16) = 0u;
    }
  }

  return result;
}

uint64_t TranscriptEpisodeContext.init(adamID:priceType:transcriptIdentifier:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, void *a6@<X8>)
{
  *a6 = result;
  a6[1] = a2;
  a6[2] = a3;
  a6[3] = a4;
  a6[4] = a5;
  return result;
}

uint64_t TranscriptEpisodeContext.priceType.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t TranscriptEpisodeContext.transcriptIdentifier.getter()
{
  v1 = *(v0 + 24);

  return v1;
}

uint64_t TranscriptEpisodeContext.isAppleHosted.getter()
{
  if (!*(v0 + 16))
  {
    return 0;
  }

  v1 = sub_1D917980C();

  if (v1 > 3)
  {
    return 0;
  }

  v2 = sub_1D8FC10EC(&unk_1F545D950);
  v3 = sub_1D8EF0724(v1, v2);

  return v3 & 1;
}

uint64_t sub_1D8EF0724(char a1, uint64_t a2)
{
  if (*(a2 + 16) && (sub_1D9179DBC(), _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0(), , v4 = sub_1D9179E1C(), v5 = -1 << *(a2 + 32), v6 = v4 & ~v5, ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0))
  {
    v7 = ~v5;
    v8 = *&aStdq_4[8 * a1];
    while (*&aStdq_4[8 * *(*(a2 + 48) + v6)] != v8)
    {
      v9 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      if ((v9 & 1) == 0)
      {
        v6 = (v6 + 1) & v7;
        if ((*(a2 + 56 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
        {
          continue;
        }
      }

      return v9 & 1;
    }

    swift_bridgeObjectRelease_n();
    v9 = 1;
  }

  else
  {
    v9 = 0;
  }

  return v9 & 1;
}

uint64_t sub_1D8EF0850(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  v6 = sub_1D9179E1C();
  v7 = -1 << *(a3 + 32);
  v8 = v6 & ~v7;
  if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 0;
  }

  v9 = ~v7;
  while (1)
  {
    v10 = (*(a3 + 48) + 16 * v8);
    v11 = *v10 == a1 && v10[1] == a2;
    if (v11 || (sub_1D9179ACC() & 1) != 0)
    {
      break;
    }

    v8 = (v8 + 1) & v9;
    if (((*(a3 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 0;
    }
  }

  return 1;
}

Swift::Bool __swiftcall TranscriptEpisodeContext.shouldShazamMatch(_:)(AVURLAsset_optional a1)
{
  isa = a1.value.super.super.isa;
  v3 = sub_1D9176C2C();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v1 + 16))
  {

    v7 = sub_1D917980C();

    if (v7 <= 3)
    {
      v8 = sub_1D8FC10EC(&unk_1F545D978);
      v9 = sub_1D8EF0724(v7, v8);

      if (v9)
      {
        return 0;
      }
    }
  }

  if (!isa)
  {
    return 1;
  }

  v10 = isa;
  v11 = [(objc_class *)v10 URL];
  sub_1D9176B9C();

  v12 = sub_1D9176B1C();
  v13 = [v12 isHLSPlaylist];

  v14 = *(v4 + 8);
  v14(v6, v3);
  if (v13)
  {

    return 0;
  }

  v16 = [(objc_class *)v10 URL];
  sub_1D9176B9C();

  v17 = sub_1D9176B1C();
  v18 = [v17 isPackagedMedia];

  v14(v6, v3);
  return (v18 & 1) == 0;
}

uint64_t sub_1D8EF0B48(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 40))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 16);
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

uint64_t sub_1D8EF0BA4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 40) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2;
    }
  }

  return result;
}

uint64_t sub_1D8EF0CA0@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void, __n128)@<X1>, char a3@<W2>, uint64_t a4@<X8>)
{
  sub_1D8D088B4(a1, a4, &unk_1ECAB5910, &qword_1D9188C90);
  v8 = *(v4 + 24);
  v15 = *(v4 + 8);
  v16 = *(v4 + 16);

  MEMORY[0x1DA7298F0](45, 0xE100000000000000);
  sub_1D8E40D20();
  v9 = sub_1D917927C();
  MEMORY[0x1DA7298F0](v9);

  v10 = *(v4 + 25);
  v11 = (a2)(0);
  v12 = a4 + v11[9];
  *(v12 + 32) = 0;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(a4 + v11[5]) = v8;
  v13 = (a4 + v11[6]);
  *v13 = v15;
  v13[1] = v16;
  *(a4 + v11[8]) = v10;
  *(a4 + v11[7]) = a3;
  return sub_1D8EDC2A8(v4 + 32, v12);
}

uint64_t TranscriptRequest.init(episodeAdamID:ttmlIdentifier:priority:lifetime:trace:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, char *a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v7 = *a4;
  v8 = *a5;
  *(a7 + 48) = 0u;
  *(a7 + 64) = 0;
  *a7 = a1;
  *(a7 + 8) = a2;
  *(a7 + 16) = a3;
  *(a7 + 24) = v7;
  *(a7 + 25) = v8;
  *(a7 + 32) = 0u;
  return sub_1D8D412B0(a6, a7 + 32);
}

uint64_t TranscriptRequest.ttmlIdentifier.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

uint64_t sub_1D8EF0E88()
{
  v1 = 0x4165646F73697065;
  v2 = 0x797469726F697270;
  if (*v0 != 2)
  {
    v2 = 0x656D69746566696CLL;
  }

  if (*v0)
  {
    v1 = 0x6E6564496C6D7474;
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

uint64_t sub_1D8EF0F1C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8EF1978(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8EF0F44(uint64_t a1)
{
  v2 = sub_1D8EF16CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF0F80(uint64_t a1)
{
  v2 = sub_1D8EF16CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptRequest.hash(into:)(uint64_t a1)
{
  MEMORY[0x1DA72B3C0](*v1);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D9179DEC();
}

uint64_t TranscriptRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6600, &qword_1D9192B90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v10[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF16CC();
  sub_1D9179F1C();
  v11 = *v3;
  v10[7] = 0;
  sub_1D8EF1720();
  sub_1D91799FC();
  if (!v2)
  {
    v10[6] = 1;
    sub_1D91799BC();
    v10[5] = *(v3 + 24);
    v10[4] = 2;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v10[3] = *(v3 + 25);
    v10[2] = 3;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TranscriptRequest.hashValue.getter()
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t TranscriptRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6610, &qword_1D9192B98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v12[-1] - v7;
  v16 = 0;
  memset(v15, 0, sizeof(v15));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF16CC();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1D8D7621C(v15);
  }

  else
  {
    HIBYTE(v11) = 0;
    sub_1D8EF1774();
    sub_1D91798FC();
    v12[0] = v17;
    LOBYTE(v17) = 1;
    v12[1] = sub_1D91798BC();
    v12[2] = v9;
    HIBYTE(v11) = 2;
    sub_1D8ECF064();
    sub_1D91798FC();
    v13 = v17;
    HIBYTE(v11) = 3;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v6 + 8))(v8, v5);
    v14 = v17;
    sub_1D8EC8C5C(v12, a2);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    return sub_1D8EC8D90(v12);
  }
}

uint64_t sub_1D8EF155C()
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF15A0(uint64_t a1)
{
  sub_1D9179DBC();
  TranscriptRequest.hash(into:)(v2);
  return sub_1D9179E1C();
}

BOOL _s18PodcastsFoundation17TranscriptRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if (*a1 == *a2 && (*(a1 + 8) == *(a2 + 8) ? (v2 = *(a1 + 16) == *(a2 + 16)) : (v2 = 0), v2 || (v3 = a1, v4 = a2, v5 = sub_1D9179ACC(), a2 = v4, v6 = v5, a1 = v3, (v6 & 1) != 0)))
  {
    return flt_1D918CD50[*(a1 + 24)] == flt_1D918CD50[*(a2 + 24)];
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D8EF16CC()
{
  result = qword_1ECAB6608;
  if (!qword_1ECAB6608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6608);
  }

  return result;
}

unint64_t sub_1D8EF1720()
{
  result = qword_1EDCD5F20;
  if (!qword_1EDCD5F20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5F20);
  }

  return result;
}

unint64_t sub_1D8EF1774()
{
  result = qword_1EDCD5F18;
  if (!qword_1EDCD5F18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDCD5F18);
  }

  return result;
}

uint64_t sub_1D8EF17C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_1D8EF1810(uint64_t result, int a2, int a3)
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
      *(result + 16) = (a2 - 1);
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

unint64_t sub_1D8EF1874()
{
  result = qword_1ECAB6618;
  if (!qword_1ECAB6618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6618);
  }

  return result;
}

unint64_t sub_1D8EF18CC()
{
  result = qword_1ECAB6620;
  if (!qword_1ECAB6620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6620);
  }

  return result;
}

unint64_t sub_1D8EF1924()
{
  result = qword_1ECAB6628;
  if (!qword_1ECAB6628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6628);
  }

  return result;
}

uint64_t sub_1D8EF1978(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x4165646F73697065 && a2 == 0xED000044496D6164;
  if (v4 || (sub_1D9179ACC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6E6564496C6D7474 && a2 == 0xEE00726569666974 || (sub_1D9179ACC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x797469726F697270 && a2 == 0xE800000000000000 || (sub_1D9179ACC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656D69746566696CLL && a2 == 0xE800000000000000)
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

uint64_t TranscriptData.TimeBombedURLs.init(shazamSignatureURL:ttmlURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  sub_1D8D5DE80(a1, a3);
  v5 = a3 + *(type metadata accessor for TranscriptData.TimeBombedURLs(0) + 20);

  return sub_1D8D5DE80(a2, v5);
}

uint64_t TranscriptData.TimeBombedURLs.ttmlURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for TranscriptData.TimeBombedURLs(0) + 20);

  return sub_1D8ECA48C(v3, a1);
}

uint64_t TranscriptData.TimeBombedURLs.inMemorySize.getter()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v25 - v6;
  v8 = sub_1D9176C2C();
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - v13;
  sub_1D8ECA48C(v1, v7);
  v15 = *(v9 + 48);
  if (v15(v7, 1, v8) == 1)
  {
    sub_1D8E677CC(v7);
    v16 = 0;
  }

  else
  {
    (*(v9 + 32))(v14, v7, v8);
    v17 = sub_1D9176BCC();
    v16 = String.inMemorySize.getter(v17, v18);

    (*(v9 + 8))(v14, v8);
  }

  v19 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  sub_1D8ECA48C(v1 + *(v19 + 20), v4);
  if (v15(v4, 1, v8) == 1)
  {
    sub_1D8E677CC(v4);
    return v16;
  }

  (*(v9 + 32))(v11, v4, v8);
  v20 = sub_1D9176BCC();
  v22 = String.inMemorySize.getter(v20, v21);

  result = (*(v9 + 8))(v11, v8);
  v24 = __CFADD__(v16, v22);
  v16 += v22;
  if (!v24)
  {
    return v16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1D8EF1E1C()
{
  if (*v0)
  {
    return 0x4C52556C6D7474;
  }

  else
  {
    return 0xD000000000000012;
  }
}

void sub_1D8EF1E5C(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  if (a1 == 0xD000000000000012 && 0x80000001D91CCC30 == a2 || (sub_1D9179ACC() & 1) != 0)
  {

    v6 = 0;
  }

  else if (a1 == 0x4C52556C6D7474 && a2 == 0xE700000000000000)
  {

    v6 = 1;
  }

  else
  {
    v7 = sub_1D9179ACC();

    if (v7)
    {
      v6 = 1;
    }

    else
    {
      v6 = 2;
    }
  }

  *a3 = v6;
}

uint64_t sub_1D8EF1F44(uint64_t a1)
{
  v2 = sub_1D8EF216C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF1F80(uint64_t a1)
{
  v2 = sub_1D8EF216C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TranscriptData.TimeBombedURLs.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6630, &qword_1D9192E18);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v8[-v5];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF216C();
  sub_1D9179F1C();
  v8[15] = 0;
  sub_1D9176C2C();
  sub_1D8EF24D0(&qword_1ECAB2CB0, MEMORY[0x1E6968FB8]);
  sub_1D917999C();
  if (!v1)
  {
    type metadata accessor for TranscriptData.TimeBombedURLs(0);
    v8[14] = 1;
    sub_1D917999C();
  }

  return (*(v4 + 8))(v6, v3);
}

unint64_t sub_1D8EF216C()
{
  result = qword_1ECAB6638;
  if (!qword_1ECAB6638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6638);
  }

  return result;
}

uint64_t TranscriptData.TimeBombedURLs.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v28 = &v21 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6640, &qword_1D9192E20);
  v26 = *(v9 - 8);
  v27 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v21 - v10;
  v12 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v21 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF216C();
  sub_1D9179EEC();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v22 = v12;
  v23 = v14;
  v15 = v26;
  v24 = v6;
  sub_1D9176C2C();
  v30 = 0;
  sub_1D8EF24D0(&qword_1ECAB2C98, MEMORY[0x1E6968FD0]);
  v17 = v27;
  v16 = v28;
  sub_1D917989C();
  v18 = v23;
  sub_1D8D5DE80(v16, v23);
  v29 = 1;
  v19 = v24;
  sub_1D917989C();
  (*(v15 + 8))(v11, v17);
  sub_1D8D5DE80(v19, v18 + *(v22 + 20));
  sub_1D8EF2514(v18, v25);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_1D8EF2578(v18);
}

uint64_t sub_1D8EF24D0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_1D9176C2C();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8EF2514(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF2578(uint64_t a1)
{
  v2 = type metadata accessor for TranscriptData.TimeBombedURLs(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t TranscriptDataError.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

unint64_t sub_1D8EF2680()
{
  result = qword_1ECAB6648;
  if (!qword_1ECAB6648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6648);
  }

  return result;
}

unint64_t sub_1D8EF2734()
{
  result = qword_1ECAB6650;
  if (!qword_1ECAB6650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6650);
  }

  return result;
}

unint64_t sub_1D8EF278C()
{
  result = qword_1ECAB6658;
  if (!qword_1ECAB6658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6658);
  }

  return result;
}

unint64_t sub_1D8EF27E4()
{
  result = qword_1ECAB6660;
  if (!qword_1ECAB6660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6660);
  }

  return result;
}

uint64_t TTMLRequest.init(remoteUrl:priority:fileName:lifetime:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v10 = *a2;
  v11 = *a5;
  v12 = type metadata accessor for TTMLRequest(0);
  v13 = a6 + v12[9];
  *(v13 + 32) = 0;
  *v13 = 0u;
  *(v13 + 16) = 0u;
  result = sub_1D8D5DE80(a1, a6);
  *(a6 + v12[5]) = v10;
  v15 = (a6 + v12[6]);
  *v15 = a3;
  v15[1] = a4;
  *(a6 + v12[8]) = v11;
  *(a6 + v12[7]) = 7;
  return result;
}

uint64_t TTMLRequest.priority.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest(0);
  *a1 = *(v1 + *(result + 20));
  return result;
}

uint64_t TTMLRequest.fileFormat.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest(0);
  *a1 = *(v1 + *(result + 28));
  return result;
}

uint64_t TTMLRequest.lifetime.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for TTMLRequest(0);
  *a1 = *(v1 + *(result + 32));
  return result;
}

uint64_t TTMLRequest.trace.setter(uint64_t a1)
{
  v3 = v1 + *(type metadata accessor for TTMLRequest(0) + 36);

  return sub_1D8D412B0(a1, v3);
}

uint64_t sub_1D8EF2A7C()
{
  v1 = *(v0 + *(type metadata accessor for TTMLRequest(0) + 24));

  return v1;
}

uint64_t sub_1D8EF2ABC(uint64_t a1)
{
  v2 = sub_1D8EF3A1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF2AF8(uint64_t a1)
{
  v2 = sub_1D8EF3A1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double TTMLRequest.hash(into:)(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v13 - v9;
  sub_1D8D088B4(v2, &v13 - v9, &unk_1ECAB5910, &qword_1D9188C90);
  if ((*(v5 + 48))(v10, 1, v4) == 1)
  {
    sub_1D9179DDC();
  }

  else
  {
    (*(v5 + 32))(v7, v10, v4);
    sub_1D9179DDC();
    sub_1D8D68C10(&qword_1ECAB2CA8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
    sub_1D917814C();
    (*(v5 + 8))(v7, v4);
  }

  v11 = type metadata accessor for TTMLRequest(0);
  sub_1D9179DEC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  return sub_1D8ECAD60(a1, *(v2 + *(v11 + 28)));
}

uint64_t TTMLRequest.encode(_:)(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1D8D752C4(v1, *(a1 + 32));
  return v1;
}

uint64_t TTMLRequest.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6668, &qword_1D91930D0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF3A1C();
  sub_1D9179F1C();
  v11[15] = 0;
  sub_1D9176C2C();
  sub_1D8D68C10(&qword_1ECAB2CB0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FB8]);
  sub_1D917999C();
  if (!v2)
  {
    v9 = type metadata accessor for TTMLRequest(0);
    v11[14] = *(v3 + v9[5]);
    v11[13] = 1;
    sub_1D8ECEF68();
    sub_1D91799FC();
    v11[12] = 2;
    sub_1D91799BC();
    v11[11] = *(v3 + v9[7]);
    v11[10] = 3;
    sub_1D8ECEFBC();
    sub_1D91799FC();
    v11[9] = *(v3 + v9[8]);
    v11[8] = 4;
    sub_1D8ECF010();
    sub_1D91799FC();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t TTMLRequest.hashValue.getter()
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t TTMLRequest.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v23 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v22 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6670, &qword_1D91930D8);
  v24 = *(v7 - 8);
  v25 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v22 - v8;
  v10 = type metadata accessor for TTMLRequest(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v22 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = &v12[*(v13 + 36)];
  *(v14 + 32) = 0;
  *v14 = 0u;
  *(v14 + 16) = 0u;
  v26 = v14;
  v27 = a1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF3A1C();
  sub_1D9179EEC();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return sub_1D8D08A50(v26, &qword_1ECAB4928, &qword_1D918B380);
  }

  else
  {
    v15 = v24;
    v16 = v12;
    sub_1D9176C2C();
    v35 = 0;
    sub_1D8D68C10(&qword_1ECAB2C98, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FD0]);
    v17 = v25;
    sub_1D917989C();
    sub_1D8D5DE80(v6, v16);
    v33 = 1;
    sub_1D8ECF064();
    sub_1D91798FC();
    *(v16 + v10[5]) = v34;
    v32 = 2;
    v18 = sub_1D91798BC();
    v19 = (v16 + v10[6]);
    *v19 = v18;
    v19[1] = v20;
    v30 = 3;
    sub_1D8ECF0B8();
    sub_1D91798FC();
    *(v16 + v10[7]) = v31;
    v28 = 4;
    sub_1D8ECF10C();
    sub_1D91798FC();
    (*(v15 + 8))(v9, v17);
    *(v16 + v10[8]) = v29;
    sub_1D8EF3A70(v16, v23);
    __swift_destroy_boxed_opaque_existential_1Tm(v27);
    return sub_1D8EF3AD4(v16);
  }
}

uint64_t sub_1D8EF34EC()
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)(v1);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF3530(uint64_t a1)
{
  sub_1D9179DBC();
  TTMLRequest.hash(into:)(v2);
  return sub_1D9179E1C();
}

uint64_t sub_1D8EF356C(uint64_t a1)
{
  v1 = *(a1 + 24);
  sub_1D8D752C4(v1, *(a1 + 32));
  return v1;
}

uint64_t TTMLError.hashValue.getter()
{
  v1 = *v0;
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](v1);
  return sub_1D9179E1C();
}

uint64_t _s18PodcastsFoundation11TTMLRequestV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D9176C2C();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v31 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v31 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6178, &unk_1D9193430);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v31 - v12;
  v15 = *(v14 + 56);
  sub_1D8D088B4(a1, &v31 - v12, &unk_1ECAB5910, &qword_1D9188C90);
  sub_1D8D088B4(a2, &v13[v15], &unk_1ECAB5910, &qword_1D9188C90);
  v16 = *(v5 + 48);
  if (v16(v13, 1, v4) != 1)
  {
    sub_1D8D088B4(v13, v10, &unk_1ECAB5910, &qword_1D9188C90);
    if (v16(&v13[v15], 1, v4) != 1)
    {
      (*(v5 + 32))(v7, &v13[v15], v4);
      sub_1D8D68C10(&qword_1ECAB2CA0, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC8]);
      v19 = sub_1D91781BC();
      v20 = *(v5 + 8);
      v20(v7, v4);
      v20(v10, v4);
      sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
      if ((v19 & 1) == 0)
      {
        goto LABEL_7;
      }

      goto LABEL_10;
    }

    (*(v5 + 8))(v10, v4);
LABEL_6:
    sub_1D8D08A50(v13, &qword_1ECAB6178, &unk_1D9193430);
    goto LABEL_7;
  }

  if (v16(&v13[v15], 1, v4) != 1)
  {
    goto LABEL_6;
  }

  sub_1D8D08A50(v13, &unk_1ECAB5910, &qword_1D9188C90);
LABEL_10:
  v21 = type metadata accessor for TTMLRequest(0);
  v22 = v21[5];
  v23 = *(a1 + v22);
  v24 = *(a2 + v22);
  if (v24 > 1)
  {
    if (v24 == 2)
    {
      if (v23 != 2)
      {
        goto LABEL_7;
      }
    }

    else if (v23 != 3)
    {
      goto LABEL_7;
    }
  }

  else if (v24)
  {
    if (v23 != 1)
    {
      goto LABEL_7;
    }
  }

  else if (v23)
  {
    goto LABEL_7;
  }

  v25 = v21[6];
  v27 = *(a1 + v25);
  v26 = *(a1 + v25 + 8);
  v28 = (a2 + v25);
  if (v27 == *v28 && v26 == v28[1] || (v29 = v21, v30 = sub_1D9179ACC(), v21 = v29, (v30 & 1) != 0))
  {
    v17 = sub_1D8FDD9D0(*(a1 + v21[7]), *(a2 + v21[7]));
    return v17 & 1;
  }

LABEL_7:
  v17 = 0;
  return v17 & 1;
}

unint64_t sub_1D8EF3A1C()
{
  result = qword_1ECAB2AA0;
  if (!qword_1ECAB2AA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2AA0);
  }

  return result;
}

uint64_t sub_1D8EF3A70(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTMLRequest(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF3AD4(uint64_t a1)
{
  v2 = type metadata accessor for TTMLRequest(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1D8EF3B34()
{
  result = qword_1ECAB6678;
  if (!qword_1ECAB6678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6678);
  }

  return result;
}

unint64_t sub_1D8EF3BD4()
{
  result = qword_1ECAB6680;
  if (!qword_1ECAB6680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6680);
  }

  return result;
}

unint64_t sub_1D8EF3C2C()
{
  result = qword_1ECAB2A90;
  if (!qword_1ECAB2A90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A90);
  }

  return result;
}

unint64_t sub_1D8EF3C84()
{
  result = qword_1ECAB2A98;
  if (!qword_1ECAB2A98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB2A98);
  }

  return result;
}

uint64_t AutoDownloadRetentionPolicyHistory.init(transitions:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = a1;
  *a2 = result;
  return result;
}

uint64_t AutoDownloadRetentionPolicyHistory.recordTransition(from:to:transitionTime:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v15[-v8];
  v10 = *v3;
  v12 = *(v11 + 56);
  v13 = sub_1D9176E3C();
  (*(*(v13 - 8) + 16))(&v9[v12], a3, v13);
  *v9 = a1;
  *(v9 + 1) = a2;
  v16 = v9;
  os_unfair_lock_lock((v10 + 24));
  sub_1D8EF3F88((v10 + 16));
  os_unfair_lock_unlock((v10 + 24));
  return sub_1D8EF3FA4(v9);
}

uint64_t sub_1D8EF3E34(uint64_t *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = v12 - v6;
  sub_1D8EF4D74(a2, v12 - v6);
  v8 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v8 = sub_1D8ECCA10(0, v8[2] + 1, 1, v8);
  }

  v10 = v8[2];
  v9 = v8[3];
  if (v10 >= v9 >> 1)
  {
    v8 = sub_1D8ECCA10((v9 > 1), v10 + 1, 1, v8);
  }

  v8[2] = v10 + 1;
  result = sub_1D8EF4DE4(v7, v8 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v10);
  *a1 = v8;
  return result;
}

uint64_t sub_1D8EF3FA4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

void AutoDownloadRetentionPolicyHistory.CodingKeys.init(stringValue:)(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t AutoDownloadRetentionPolicyHistory.CodingKeys.hashValue.getter()
{
  sub_1D9179DBC();
  MEMORY[0x1DA72B390](0);
  return sub_1D9179E1C();
}

void sub_1D8EF4164(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x697469736E617274 && a2 == 0xEB00000000736E6FLL)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_1D9179ACC();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_1D8EF41F0(uint64_t a1)
{
  v2 = sub_1D8EF4478();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8EF422C(uint64_t a1)
{
  v2 = sub_1D8EF4478();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t AutoDownloadRetentionPolicyHistory.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6690, &qword_1D9193450);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF4478();
  sub_1D9179EEC();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66A0, &qword_1D9193458);
    sub_1D8EF4688(&qword_1ECAB66A8, &qword_1ECAB66B0, &protocol conformance descriptor for SettingTransition<A>, MEMORY[0x1E69E6330]);
    sub_1D91798FC();
    v9 = v13[1];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
    v10 = swift_allocObject();
    *(v10 + 24) = 0;
    v11 = *(v6 + 8);

    v11(v8, v5);
    *(v10 + 16) = v9;

    *a2 = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

unint64_t sub_1D8EF4478()
{
  result = qword_1ECAB6698;
  if (!qword_1ECAB6698)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB6698);
  }

  return result;
}

double AutoDownloadRetentionPolicyHistory.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66B8, &qword_1D9193460);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v10 - v5;
  v7 = *v1;
  os_unfair_lock_lock((v7 + 24));
  v8 = *(v7 + 16);

  os_unfair_lock_unlock((v7 + 24));
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8EF4478();
  sub_1D9179F1C();
  v10[1] = v8;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66A0, &qword_1D9193458);
  sub_1D8EF4688(&qword_1ECAB66C0, &qword_1ECAB66C8, &protocol conformance descriptor for SettingTransition<A>, MEMORY[0x1E69E6300]);
  sub_1D91799FC();
  (*(v4 + 8))(v6, v3);

  return result;
}

uint64_t sub_1D8EF4688(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB66A0, &qword_1D9193458);
    sub_1D8EF4710(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8EF4710(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECAB6170, &unk_1D91921B0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void NSUserDefaults.recordRetentionPolicyChange(from:to:transitionTime:)(objc_class *a1, objc_class *a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = (&v28 - v7);
  if (a1 == a2)
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v9 = sub_1D917744C();
    __swift_project_value_buffer(v9, qword_1EDCD0F20);
    v28 = sub_1D917741C();
    v10 = sub_1D9178CDC();
    if (os_log_type_enabled(v28, v10))
    {
      v11 = swift_slowAlloc();
      v12 = swift_slowAlloc();
      v30 = v12;
      *v11 = 136315394;
      v29 = a1;
      type metadata accessor for MTPodcastEpisodeLimit(0);
      v13 = sub_1D917826C();
      v15 = sub_1D8CFA924(v13, v14, &v30);

      *(v11 + 4) = v15;
      *(v11 + 12) = 2080;
      v29 = a1;
      v16 = sub_1D917826C();
      v18 = sub_1D8CFA924(v16, v17, &v30);

      *(v11 + 14) = v18;
      _os_log_impl(&dword_1D8CEC000, v28, v10, "Skipping updating retention policy history for equivilent change: %s -> %s", v11, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1DA72CB90](v12, -1, -1);
      MEMORY[0x1DA72CB90](v11, -1, -1);
    }

    else
    {
      v27 = v28;
    }
  }

  else
  {
    v19 = sub_1D917820C();
    sub_1D8E7500C(v19, v20, &v30);

    v21 = v30;
    if (!v30)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6688, &unk_1D9193440);
      v21 = swift_allocObject();
      *(v21 + 24) = 0;
      *(v21 + 16) = MEMORY[0x1E69E7CC0];
    }

    v22 = *(v6 + 48);
    v23 = sub_1D9176E3C();
    v24 = (*(*(v23 - 8) + 16))(v8 + v22, a3, v23);
    v8->isa = a1;
    v8[1].isa = a2;
    MEMORY[0x1EEE9AC00](v24);
    *(&v28 - 2) = v8;
    os_unfair_lock_lock((v21 + 24));
    sub_1D8EF4E54((v21 + 16));
    os_unfair_lock_unlock((v21 + 24));
    sub_1D8EF3FA4(v8);
    v25 = sub_1D917820C();
    sub_1D8E75AD0(v21, v25, v26);
  }
}

uint64_t NSUserDefaults.transitionGlobalDownloadRetentionPolicy(to:)(objc_class *a1)
{
  v3 = sub_1D9176E3C();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = &v11 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = [v1 episodeLimitForKey_];
  v9 = sub_1D9179D9C();
  [v1 setObject:v9 forKey:@"MTPodcastEpisodeLimitDefaultKey"];

  sub_1D9176E0C();
  NSUserDefaults.recordRetentionPolicyChange(from:to:transitionTime:)(v8, a1, v7);
  return (*(v4 + 8))(v7, v3);
}

unint64_t sub_1D8EF4C50()
{
  result = qword_1ECAB66D0;
  if (!qword_1ECAB66D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66D0);
  }

  return result;
}

unint64_t sub_1D8EF4CA8()
{
  result = qword_1ECAB66D8;
  if (!qword_1ECAB66D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66D8);
  }

  return result;
}

unint64_t sub_1D8EF4D00()
{
  result = qword_1ECAB66E0;
  if (!qword_1ECAB66E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECAB66E0);
  }

  return result;
}

uint64_t sub_1D8EF4D74(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8EF4DE4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6170, &unk_1D91921B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t DownloadStateChecker.init(context:episodePropertiesToReport:showPropertiesToReport:allEpisodes:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X8>)
{
  *a5 = result;
  *(a5 + 8) = a2;
  *(a5 + 16) = a3;
  *(a5 + 24) = a4;
  return result;
}

void DownloadStateChecker.report(for:completionHandler:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = *v3;
  v7 = *(v3 + 8);
  v9 = *(v3 + 16);
  v10 = *(v3 + 24);
  v11 = swift_allocObject();
  *(v11 + 16) = v8;
  *(v11 + 24) = v7;
  *(v11 + 32) = v9;
  *(v11 + 40) = v10;
  *(v11 + 48) = a1;
  *(v11 + 56) = a2;
  *(v11 + 64) = a3;
  v14[4] = sub_1D8EF54F8;
  v14[5] = v11;
  v14[0] = MEMORY[0x1E69E9820];
  v14[1] = 1107296256;
  v14[2] = sub_1D8CF5F60;
  v14[3] = &block_descriptor_29;
  v12 = _Block_copy(v14);
  v13 = v8;

  [v13 performBlock_];
  _Block_release(v12);
}

char *sub_1D8EF4FAC(void *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5, unint64_t a6, unint64_t a7)
{
  LOBYTE(v10) = a4;
  v52 = a3;
  v53 = a2;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB67B0, &unk_1D9193750);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v43 - v13;
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  v15 = [swift_getObjCClassFromMetadata() fetchRequest];
  v16 = *(a5 + 16);
  v17 = objc_opt_self();
  v18 = v17;
  if (v16)
  {

    sub_1D8FC0F28(v19);

    v20 = sub_1D9178A8C();

    v21 = [v18 predicateForPodcastUuids_];
  }

  else
  {
    v22 = [v17 predicateForPodcastToAutoRemove];
    v20 = [v18 predicateForPodcastsToAutodownload];
    v21 = [v22 OR:v20];
  }

  [v15 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v23 = sub_1D917908C();
  v47 = v14;
  v24 = sub_1D8FBEED8(v23);

  v25 = MEMORY[0x1E69E7CC0];
  if (!v24)
  {
    v38 = MEMORY[0x1E69E7CC0];
LABEL_23:
    v41 = v47;
    sub_1D9176E2C();
    v42 = type metadata accessor for DownloadStateReport(0);
    *(v41 + *(v42 + 20)) = v38;
    (*(*(v42 - 8) + 56))(v41, 0, 1, v42);
    (a6)(v41, 0);
    return sub_1D8D08A50(v41, &unk_1ECAB67B0, &unk_1D9193750);
  }

  v26 = v24 & 0xFFFFFFFFFFFFFF8;
  if (v24 >> 62)
  {
    goto LABEL_21;
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v27)
  {
LABEL_22:
    v40 = a1;

    v38 = MEMORY[0x1E69E7CC0];
    goto LABEL_23;
  }

  while (1)
  {
    v48 = v26;
    v45 = a7;
    v46 = a6;
    v60[0] = v25;
    v51 = a1;

    a1 = v60;
    result = sub_1D8E314BC(0, v27 & ~(v27 >> 63), 0);
    if (v27 < 0)
    {
      break;
    }

    a7 = 0;
    v25 = v60[0];
    v50 = v24 & 0xC000000000000001;
    v49 = v10 & 1;
    while (1)
    {
      v26 = a7 + 1;
      if (__OFADD__(a7, 1))
      {
        break;
      }

      if (v50)
      {
        v29 = v25;
        v30 = MEMORY[0x1DA72AA90](a7, v24);
      }

      else
      {
        if (a7 >= *(v48 + 16))
        {
          goto LABEL_20;
        }

        v29 = v25;
        v30 = *(v24 + 8 * a7 + 32);
      }

      v31 = v30;
      v54[0] = v51;
      v54[1] = v53;
      v54[2] = v52;
      v55 = v49;
      a1 = v54;
      sub_1D8EF5510(v30, &v56);
      v10 = v27;

      v32 = v56;
      v33 = v57;
      v34 = v58;
      v35 = v59;
      v25 = v29;
      v60[0] = v29;
      a6 = *(v29 + 16);
      v36 = *(v25 + 24);
      if (a6 >= v36 >> 1)
      {
        a1 = v60;
        v44 = v57;
        v43 = v59;
        sub_1D8E314BC((v36 > 1), a6 + 1, 1);
        v35 = v43;
        v33 = v44;
        v25 = v60[0];
      }

      *(v25 + 16) = a6 + 1;
      v37 = v25 + 48 * a6;
      *(v37 + 32) = v32;
      *(v37 + 40) = v33;
      *(v37 + 56) = v34;
      *(v37 + 64) = v35;
      ++a7;
      v27 = v10;
      if (v26 == v10)
      {
        v38 = v25;

        a6 = v46;
        goto LABEL_23;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    v39 = v25;
    v27 = sub_1D917935C();
    v25 = v39;
    if (!v27)
    {
      goto LABEL_22;
    }
  }

  __break(1u);
  return result;
}

void sub_1D8EF5510(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v74 = a2;
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = *(v2 + 24);
  v78 = a1;
  v7 = [a1 uuid];
  if (v7)
  {
    v8 = v7;
    v9 = sub_1D917820C();
    v11 = v10;

    v12 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
    v13 = [v12 episodeLimitForKey_];

    MEMORY[0x1EEE9AC00](v14);
    v66[2] = v9;
    v66[3] = v11;
    v66[4] = v3;
    v66[5] = v4;
    v76 = v4;
    v77 = v5;
    v66[6] = v5;
    v75 = v6;
    v67 = v6;
    v68 = v13;
    v82 = v3;
    v15 = sub_1D90ACCB8(sub_1D8F03298, v66);

    v16 = v15 + 64;
    v17 = 1 << *(v15 + 32);
    v18 = -1;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    v19 = v18 & *(v15 + 64);
    v20 = (v17 + 63) >> 6;
    v81 = v15;

    v21 = 0;
    v79 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      v22 = v21;
      if (!v19)
      {
        break;
      }

LABEL_9:
      v23 = __clz(__rbit64(v19));
      v19 &= v19 - 1;
      v24 = v23 | (v21 << 6);
      v25 = (*(v81 + 48) + 16 * v24);
      v27 = *v25;
      v26 = v25[1];
      v28 = *(*(v81 + 56) + 8 * v24);

      v15 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v13 = [v82 episodeForUuid_];

      if (v13)
      {
        v84 = v82;
        v85 = v76;
        v86 = v77;
        LOBYTE(v87) = v75;
        v73 = sub_1D8EF5C9C(v76, v13);
        v29 = v78;
        v30 = [v78 uuid];
        if (v30)
        {
          v72 = v30;
          v71 = objc_opt_self();
          LODWORD(v70) = [v29 deletePlayedEpisodesResolvedValue];
          v31 = [v29 episodeLimitResolvedValue];
          v32 = [v71 predicateForAutomaticDownloadsOnShow:v72 deletePlayedEpisodes:v70 episodeLimit:v31 serialNextEpisodesSort:0 includePlayableWithoutAccount:0];

          v87 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
          v84 = v13;
          v72 = v13;
          v33 = v80;
          NSPredicate.explain(with:)(&v84, &v88);
          v80 = v33;
          if (v33)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v84);

            goto LABEL_35;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          v34 = v88;
        }

        else
        {
          v34 = 0xF000000000000007;
        }

        v72 = v34;
        v35 = v78;
        v36 = [v78 uuid];
        if (v36)
        {
          v71 = v36;
          v70 = objc_opt_self();
          v69 = [v35 deletePlayedEpisodesResolvedValue];
          v37 = [v35 episodeLimitResolvedValue];
          v38 = [v70 predicateForAutomaticDeletionOnShow:v71 deletePlayedEpisodes:v69 episodeLimit:v37];

          v87 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
          v84 = v13;
          v71 = v13;
          v39 = v80;
          NSPredicate.explain(with:)(&v84, &v88);
          v80 = v39;
          if (v39)
          {

            __swift_destroy_boxed_opaque_existential_1Tm(&v84);
            sub_1D8F032B0(v72);

            goto LABEL_35;
          }

          __swift_destroy_boxed_opaque_existential_1Tm(&v84);
          v15 = v88;
        }

        else
        {
          v15 = 0xF000000000000007;
        }

        v40 = v80;
        sub_1D8EF5F6C(v13, &v84);
        v80 = v40;
        if (v40)
        {
LABEL_32:
          sub_1D8F032B0(v15);
          sub_1D8F032B0(v72);

LABEL_35:

          return;
        }

        v70 = v84;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v71 = v15;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v79 = sub_1D8ECCA34(0, *(v79 + 2) + 1, 1, v79);
        }

        v15 = *(v79 + 2);
        v42 = *(v79 + 3);
        v13 = (v15 + 1);
        if (v15 >= v42 >> 1)
        {
          v79 = sub_1D8ECCA34((v42 > 1), v15 + 1, 1, v79);
        }

        v43 = v79;
        *(v79 + 2) = v13;
        v44 = &v43[56 * v15];
        *(v44 + 4) = v27;
        *(v44 + 5) = v26;
        v45 = v72;
        *(v44 + 6) = v73;
        *(v44 + 7) = v28;
        v46 = v70;
        v47 = v71;
        *(v44 + 8) = v45;
        *(v44 + 9) = v47;
        *(v44 + 10) = v46;
      }

      else
      {
      }
    }

    while (1)
    {
      v21 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v21 >= v20)
      {
        break;
      }

      v19 = *(v16 + 8 * v21);
      ++v22;
      if (v19)
      {
        goto LABEL_9;
      }
    }

    v48 = v78;
    v49 = [v78 uuid];
    if (v49)
    {
      v50 = v49;
      v51 = sub_1D917820C();
      v53 = v52;
    }

    else
    {
      v53 = 0xE300000000000000;
      v51 = 4999502;
    }

    v54 = v80;
    v84 = v82;
    v85 = v76;
    v86 = v77;
    LOBYTE(v87) = v75;
    v55 = sub_1D8EF5C9C(v77, v48);
    v56 = objc_opt_self();
    v57 = [v56 predicateForPodcastsToAutodownload];
    v58 = sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
    v87 = v58;
    v84 = v48;
    v59 = v48;
    NSPredicate.explain(with:)(&v84, &v88);

    if (v54)
    {

      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      v60 = v88;
      v61 = [v56 predicateForPodcastToAutoRemove];
      v87 = v58;
      v84 = v59;
      v62 = v59;
      NSPredicate.explain(with:)(&v84, &v83);

      __swift_destroy_boxed_opaque_existential_1Tm(&v84);
      v63 = v83;
      v64 = v74;
      *v74 = v51;
      v64[1] = v53;
      v65 = v79;
      v64[2] = v55;
      v64[3] = v65;
      v64[4] = v60;
      v64[5] = v63;
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1D8EF5C9C(uint64_t a1, void *a2)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  v26 = *(v2 + 16);
  if (v4)
  {
    *&v27 = MEMORY[0x1E69E7CC0];

    v7 = a2;
    sub_1D8E314DC(0, v4, 0);
    v8 = v27;
    v9 = a1 + 40;
    do
    {

      v10 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
      v11 = [v7 valueForKey_];

      if (v11)
      {
        sub_1D917928C();
        swift_unknownObjectRelease();
      }

      else
      {
        v30 = 0u;
        v31 = 0u;
      }

      v32 = v30;
      v33 = v31;

      *&v27 = v8;
      v13 = *(v8 + 16);
      v12 = *(v8 + 24);
      if (v13 >= v12 >> 1)
      {
        sub_1D8E314DC((v12 > 1), v13 + 1, 1);
        v8 = v27;
      }

      *(v8 + 16) = v13 + 1;
      v14 = v8 + 32 * v13;
      v15 = v33;
      *(v14 + 32) = v32;
      *(v14 + 48) = v15;
      v9 += 16;
      --v4;
    }

    while (v4);

    v16 = *(v8 + 16);
    if (v16)
    {
      goto LABEL_10;
    }

LABEL_19:

    v17 = MEMORY[0x1E69E7CC0];
    return sub_1D8EFA814(v26, v17);
  }

  v8 = MEMORY[0x1E69E7CC0];
  v16 = *(MEMORY[0x1E69E7CC0] + 16);
  if (!v16)
  {
    goto LABEL_19;
  }

LABEL_10:
  v29 = v5;
  sub_1D8D41BE0(0, v16, 0);
  v17 = v5;
  v18 = v8 + 32;
  do
  {
    sub_1D8D088B4(v18, &v32, &qword_1ECAB57F0, &unk_1D9190AA0);
    sub_1D8D088B4(&v32, &v27, &qword_1ECAB57F0, &unk_1D9190AA0);
    if (v28)
    {
      sub_1D8D65618(&v27, &v30);
      sub_1D8CFAD1C(&v30, &v27);
      v19 = sub_1D917826C();
      v21 = v20;
      __swift_destroy_boxed_opaque_existential_1Tm(&v30);
      sub_1D8D08A50(&v32, &qword_1ECAB57F0, &unk_1D9190AA0);
    }

    else
    {
      sub_1D8D08A50(&v27, &qword_1ECAB57F0, &unk_1D9190AA0);
      sub_1D8D08A50(&v32, &qword_1ECAB57F0, &unk_1D9190AA0);
      v21 = 0xE300000000000000;
      v19 = 4999502;
    }

    v29 = v17;
    v23 = *(v17 + 16);
    v22 = *(v17 + 24);
    if (v23 >= v22 >> 1)
    {
      sub_1D8D41BE0((v22 > 1), v23 + 1, 1);
      v17 = v29;
    }

    *(v17 + 16) = v23 + 1;
    v24 = v17 + 16 * v23;
    *(v24 + 32) = v19;
    *(v24 + 40) = v21;
    v18 += 32;
    --v16;
  }

  while (v16);

  return sub_1D8EFA814(v26, v17);
}

uint64_t sub_1D8EF5F6C@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v21 = a1;
  v20 = a2;
  v2 = sub_1D9176FDC();
  v3 = *(v2 - 1);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D9176E3C();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v19 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = [objc_opt_self() _applePodcastsFoundationSharedUserDefaults];
  v11 = [v10 episodeLimitForKey_];

  v12 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  sub_1D9176E0C();
  sub_1D9176FAC();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v13 = swift_allocObject();
  *(v13 + 16) = xmmword_1D918C190;
  *(v13 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
  *(v13 + 40) = sub_1D8FCD114(v11, v9);
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v14 = sub_1D91785DC();

  v15 = [objc_opt_self() andPredicateWithSubpredicates_];

  (*(v3 + 8))(v5, v2);
  (*(v7 + 8))(v9, v6);
  v23[3] = v12;
  v23[0] = v21;
  v16 = v21;
  v17 = v22;
  NSPredicate.explain(with:)(v23, &v24);

  result = __swift_destroy_boxed_opaque_existential_1Tm(v23);
  if (!v17)
  {
    *v20 = v24;
  }

  return result;
}

uint64_t sub_1D8EF6238@<X0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, void (*a4)(void *@<X8>)@<X3>, void (*a5)(void *@<X8>)@<X4>, int a6@<W5>, void (*a7)(void *@<X8>)@<X6>, unint64_t *a8@<X8>)
{
  v517 = a7;
  LODWORD(v511) = a6;
  v522 = a4;
  i = a5;
  v520 = a8;
  v521 = sub_1D9176FDC();
  v519 = *(v521 - 1);
  MEMORY[0x1EEE9AC00](v521);
  v12 = &v494 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1D9176E3C();
  v518 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v494 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8CF2154(0, &qword_1EDCD0790, off_1E8567640);
  isUniquelyReferenced_nonNull_native = [swift_getObjCClassFromMetadata() fetchRequest];
  v17 = objc_opt_self();
  v510 = a1;
  v18 = a2;
  v19 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v20 = [v17 predicateForPodcastUUID_];

  [isUniquelyReferenced_nonNull_native setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v21 = sub_1D917908C();
  v514 = 0;
  v515 = v15;
  v512 = v12;
  v28 = i;
  v505 = v18;
  v508 = a3;
  if (v21 >> 62)
  {
    goto LABEL_369;
  }

  v29 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (1)
  {
    v30 = v511;
    v31 = v13;
    v32 = v17;
    v33 = v520;
    if (!v29)
    {

LABEL_15:
      v41 = sub_1D8E26F08(MEMORY[0x1E69E7CC0]);

      v42 = 0;
      v24 = 0;
      v26 = 0;
      v25 = 0;
      v27 = 0;
      v518 = 0;
      v519 = 0;
      v522 = 0;
      i = 0;
      isUniquelyReferenced_nonNull_native = 0;
      v521 = 0;
      v28 = 0;
      v17 = 0;
      *v33 = v41;
LABEL_16:
      sub_1D8D15664(v42, 0);
      sub_1D8D15664(v24, 0);
      sub_1D8D15664(v26, 0);
      sub_1D8D15664(v25, 0);
      sub_1D8D15664(v27, 0);
      sub_1D8D15664(v519, 0);
      sub_1D8D15664(i, 0);
      sub_1D8D15664(v518, 0);
      sub_1D8D15664(v522, 0);
      sub_1D8D15664(isUniquelyReferenced_nonNull_native, 0);
      sub_1D8D15664(v521, 0);
      sub_1D8D15664(v28, 0);
      return sub_1D8D15664(v17, 0);
    }

    if ((v21 & 0xC000000000000001) != 0)
    {
      v34 = MEMORY[0x1DA72AA90](0);
    }

    else
    {
      if (!*((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_372:
        __break(1u);
LABEL_373:
        __break(1u);
LABEL_374:
        __break(1u);
LABEL_375:
        __break(1u);
        goto LABEL_376;
      }

      v34 = *(v21 + 32);
      swift_unknownObjectRetain();
    }

    objc_opt_self();
    v35 = swift_dynamicCastObjCClass();
    if (!v35)
    {
      swift_unknownObjectRelease();
      v33 = v520;
      goto LABEL_15;
    }

    v36 = v35;
    v513 = isUniquelyReferenced_nonNull_native;
    v37 = [v17 predicateForAutoDownloadEnabled];
    v38 = [v37 evaluateWithObject_];

    v507 = v31;
    if (v38)
    {
      v39 = v508;
      v40 = v522;
      v525 = v508;
      v526 = v522;
      v527 = v28;
      v528 = v30 & 1;
      v499 = sub_1D8EF9090(v36, v508, &selRef_predicateForEpisodesThatShouldBeAutodownloadedForShow_deletePlayedEpisodes_episodeLimit_serialNextEpisodesSort_includePlayableWithoutAccount_);
      v525 = v39;
      v526 = v40;
      v527 = v28;
      v528 = v30 & 1;
      v516 = sub_1D8EF9090(v36, v39, &selRef_predicateForAutomaticDownloadsOnShow_deletePlayedEpisodes_episodeLimit_serialNextEpisodesSort_includePlayableWithoutAccount_);
    }

    else
    {
      v516 = MEMORY[0x1E69E7CD0];
      v499 = MEMORY[0x1E69E7CD0];
    }

    v44 = v515;
    v498 = v34;
    v45 = [v32 predicateForPodcastToAutoRemove];
    v46 = [v45 evaluateWithObject_];

    if (v46)
    {
      v47 = v508;
      v48 = v522;
      v525 = v508;
      v526 = v522;
      v527 = v28;
      v49 = v30 & 1;
      v528 = v30 & 1;
      v515 = sub_1D8EF9198(v36, v508);
    }

    else
    {
      v49 = v30 & 1;
      v515 = MEMORY[0x1E69E7CD0];
      v47 = v508;
      v48 = v522;
    }

    v525 = v47;
    v526 = v48;
    v527 = v28;
    v528 = v49;
    v50 = [v36 uuid];
    if (!v50)
    {
      goto LABEL_405;
    }

    v51 = v50;
    v52 = objc_opt_self();
    v53 = [v52 predicateForDownloadedEpisodesOnPodcastUuid_];

    v509 = sub_1D8EF9BA0(v53, v47);
    v525 = v47;
    v526 = v48;
    v527 = v28;
    v528 = v49;
    v504 = sub_1D8EF9298(v36, v47);
    v54 = [v52 predicateForHasValidPersistentId_];
    v525 = v47;
    v526 = v48;
    v527 = v28;
    LODWORD(v503) = v49;
    v528 = v49;
    v522 = sub_1D8EF9BA0(v54, v47);

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
    v55 = swift_allocObject();
    v506 = xmmword_1D918C190;
    *(v55 + 16) = xmmword_1D918C190;
    v56 = sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
    sub_1D9176E0C();
    v57 = v44;
    v58 = v512;
    sub_1D9176FAC();
    v59 = swift_allocObject();
    *(v59 + 16) = v506;
    *(v59 + 32) = _sSo9MTEpisodeC18PodcastsFoundationE43predicateForAutomaticallyDownloadedEpisodesSo11NSPredicateCyFZ_0();
    v497 = v56;
    *(v59 + 40) = sub_1D8FCD114(v517, v57);
    sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
    v60 = sub_1D91785DC();

    v61 = objc_opt_self();
    v62 = [v61 andPredicateWithSubpredicates_];

    (*(v519 + 1))(v58, v521);
    (*(v518 + 1))(v57, v507);
    *(v55 + 32) = v62;
    v63 = v48;
    v64 = v508;
    v65 = v510;
    v66 = v505;
    v67 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
    v68 = v52;
    v69 = [v52 predicateForAllEpisodesOnPodcastUuid_];

    *(v55 + 40) = v69;
    v70 = sub_1D91785DC();

    v71 = [v61 andPredicateWithSubpredicates_];

    v72 = v514;
    v73 = DownloadStateChecker.episodesToBePurged(in:for:)(v64, v65, v66);
    if (v72)
    {

      swift_unknownObjectRelease();

      v77 = 0;
      v78 = 0;
      v79 = 0;
      v42 = 0;
      v516 = 0;
      v517 = 0;
      v512 = 0;
      v515 = 0;
      v518 = 0;
      v519 = 0;
      v522 = 0;
      i = 0;
      isUniquelyReferenced_nonNull_native = 0;
      v521 = 0;
      v28 = 0;
      v17 = 0;
      v22 = v520;
LABEL_2:
      v23 = sub_1D8E26F08(MEMORY[0x1E69E7CC0]);

      sub_1D8D15664(v77, 0);
      sub_1D8D15664(v78, 0);
      sub_1D8D15664(v79, 0);
      *v22 = v23;
LABEL_3:
      v25 = v516;
      v24 = v517;
      v26 = v512;
      v27 = v515;
      goto LABEL_16;
    }

    v80 = v73;
    v81 = v74;
    v82 = v75;
    isUniquelyReferenced_nonNull_native = v76;
    v495 = v68;
    v525 = v64;
    v526 = v63;
    v527 = i;
    v528 = v503;
    v83 = sub_1D8EF9BA0(v71, v64);
    v84 = v80;
    if (*(v80 + 16) <= *(v83 + 16) >> 3)
    {
      v525 = v83;
      sub_1D910E6BC(v80);
      v85 = v525;
    }

    else
    {
      v85 = sub_1D90A4A60(v80, v83);
    }

    v86 = &selRef_redirectURLForStoreCollectionId_;
    v28 = v509;
    if (*(v81 + 16) <= *(v85 + 16) >> 3)
    {
      v525 = v85;
      sub_1D910E6BC(v81);
      v87 = v525;
    }

    else
    {
      v87 = sub_1D90A4A60(v81, v85);
    }

    if (*(v82 + 16) <= *(v87 + 16) >> 3)
    {
      v525 = v87;
      sub_1D910E6BC(v82);
      v88 = v525;
    }

    else
    {
      v88 = sub_1D90A4A60(v82, v87);
    }

    v89 = *(isUniquelyReferenced_nonNull_native + 16);
    v90 = *(v88 + 16);
    v500 = isUniquelyReferenced_nonNull_native;
    v502 = v82;
    v503 = v81;
    v521 = v84;
    v514 = 0;
    v496 = v71;
    if (v89 > v90 >> 3)
    {
      v501 = sub_1D90A4A60(isUniquelyReferenced_nonNull_native, v88);
    }

    else
    {
      v525 = v88;
      sub_1D910E6BC(isUniquelyReferenced_nonNull_native);
      v501 = v525;
    }

    v525 = MEMORY[0x1E69E7CC8];
    v91 = (v28 + 56);
    v92 = 1 << *(v28 + 32);
    v93 = -1;
    if (v92 < 64)
    {
      v93 = ~(-1 << v92);
    }

    v94 = v93 & *(v28 + 56);
    v17 = (v92 + 63) >> 6;

    v507 = 0;
    v13 = 0;
    for (i = (v28 + 56); v94; v91 = i)
    {
LABEL_43:
      v96 = (*(v509 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v94)))));
      v98 = *v96;
      v97 = v96[1];

      sub_1D8D15664(v507, 0);
      v99 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v99;
      v28 = sub_1D8D33C70(v98, v97);
      v101 = v99[2];
      v102 = (v100 & 1) == 0;
      v103 = v101 + v102;
      if (__OFADD__(v101, v102))
      {
        goto LABEL_372;
      }

      v104 = v100;
      if (v99[3] >= v103)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v525 = v99;
          if (v100)
          {
            goto LABEL_50;
          }
        }

        else
        {
          sub_1D8F83490();
          v99 = v524;
          v525 = v524;
          if (v104)
          {
            goto LABEL_50;
          }
        }
      }

      else
      {
        sub_1D9006290(v103, isUniquelyReferenced_nonNull_native);
        v99 = v524;
        v105 = sub_1D8D33C70(v98, v97);
        if ((v104 & 1) != (v106 & 1))
        {
          goto LABEL_406;
        }

        v28 = v105;
        v525 = v99;
        if (v104)
        {
LABEL_50:

          goto LABEL_54;
        }
      }

      v99[(v28 >> 6) + 8] |= 1 << v28;
      v107 = (v99[6] + 16 * v28);
      *v107 = v98;
      v107[1] = v97;
      *(v99[7] + 8 * v28) = MEMORY[0x1E69E7CC0];
      v108 = v99[2];
      v109 = __OFADD__(v108, 1);
      v110 = v108 + 1;
      if (v109)
      {
        goto LABEL_386;
      }

      v99[2] = v110;
LABEL_54:
      v111 = v99[7];
      v112 = *(v111 + 8 * v28);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v111 + 8 * v28) = v112;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v112 + 16) + 1, 1, v112);
        v112 = v21;
        *(v111 + 8 * v28) = v21;
      }

      v114 = *(v112 + 16);
      v113 = *(v112 + 24);
      if (v114 >= v113 >> 1)
      {
        v21 = sub_1D8ECCB5C((v113 > 1), v114 + 1, 1, v112);
        v112 = v21;
        *(v111 + 8 * v28) = v21;
      }

      v94 &= v94 - 1;
      *(v112 + 16) = v114 + 1;
      *(v112 + v114 + 32) = 0;
      v507 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
    }

LABEL_39:
    v95 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      break;
    }

    __break(1u);
LABEL_359:
    __break(1u);
LABEL_360:
    __break(1u);
LABEL_361:
    __break(1u);
LABEL_362:
    __break(1u);
LABEL_363:
    __break(1u);
LABEL_364:
    __break(1u);
LABEL_365:
    __break(1u);
LABEL_366:
    __break(1u);
LABEL_367:
    __break(1u);
LABEL_368:
    __break(1u);
LABEL_369:
    v493 = v21;
    v29 = sub_1D917935C();
    v21 = v493;
  }

  if (v95 < v17)
  {
    v94 = *(v91 + v95);
    ++v13;
    if (v94)
    {
      v13 = v95;
      goto LABEL_43;
    }

    goto LABEL_39;
  }

  *&v506 = 0;
  v13 = 0;
  v21 = v504;
  v115 = v504 + 56;
  v116 = 1 << v504[32];
  v117 = -1;
  if (v116 < 64)
  {
    v117 = ~(-1 << v116);
  }

  v17 = v117 & *(v504 + 7);
  v118 = ((v116 + 63) >> 6);
  i = v118;
  if (v17)
  {
    while (1)
    {
LABEL_67:
      v120 = (*(v21 + 48) + ((v13 << 10) | (16 * __clz(__rbit64(v17)))));
      v122 = *v120;
      v121 = v120[1];

      sub_1D8D15664(v506, 0);
      v123 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v123;
      v28 = sub_1D8D33C70(v122, v121);
      v125 = v123[2];
      v126 = (v124 & 1) == 0;
      v127 = v125 + v126;
      if (__OFADD__(v125, v126))
      {
        goto LABEL_373;
      }

      v128 = v124;
      if (v123[3] >= v127)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v525 = v123;
          if (v124)
          {
            goto LABEL_74;
          }
        }

        else
        {
          sub_1D8F83490();
          v123 = v524;
          v525 = v524;
          if (v128)
          {
            goto LABEL_74;
          }
        }
      }

      else
      {
        sub_1D9006290(v127, isUniquelyReferenced_nonNull_native);
        v123 = v524;
        v129 = sub_1D8D33C70(v122, v121);
        if ((v128 & 1) != (v130 & 1))
        {
          goto LABEL_406;
        }

        v28 = v129;
        v525 = v123;
        if (v128)
        {
LABEL_74:

          goto LABEL_78;
        }
      }

      v123[(v28 >> 6) + 8] |= 1 << v28;
      v131 = (v123[6] + 16 * v28);
      *v131 = v122;
      v131[1] = v121;
      *(v123[7] + 8 * v28) = MEMORY[0x1E69E7CC0];
      v132 = v123[2];
      v109 = __OFADD__(v132, 1);
      v133 = v132 + 1;
      if (v109)
      {
        goto LABEL_387;
      }

      v123[2] = v133;
LABEL_78:
      v134 = v123[7];
      v135 = *(v134 + 8 * v28);
      v136 = swift_isUniquelyReferenced_nonNull_native();
      *(v134 + 8 * v28) = v135;
      if ((v136 & 1) == 0)
      {
        v135 = sub_1D8ECCB5C(0, *(v135 + 2) + 1, 1, v135);
        *(v134 + 8 * v28) = v135;
      }

      v138 = *(v135 + 2);
      v137 = *(v135 + 3);
      if (v138 >= v137 >> 1)
      {
        v135 = sub_1D8ECCB5C((v137 > 1), v138 + 1, 1, v135);
        *(v134 + 8 * v28) = v135;
      }

      v118 = i;
      v17 &= v17 - 1;
      *(v135 + 2) = v138 + 1;
      v135[v138 + 32] = 4;
      *&v506 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      v21 = v504;
      if (!v17)
      {
        goto LABEL_63;
      }
    }
  }

  while (1)
  {
LABEL_63:
    v119 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_359;
    }

    if (v119 >= v118)
    {
      break;
    }

    v17 = *&v115[8 * v119];
    ++v13;
    if (v17)
    {
      v13 = v119;
      goto LABEL_67;
    }
  }

  v21 = sub_1D90701C4(v509, v499);
  v139 = 0;
  v17 = 0;
  i = v21;
  v140 = 1 << *(v21 + 32);
  v141 = -1;
  if (v140 < 64)
  {
    v141 = ~(-1 << v140);
  }

  v142 = v21 + 56;
  v13 = v141 & *(v21 + 56);
  v28 = (v140 + 63) >> 6;
  v519 = (v21 + 56);
  if (v13)
  {
    while (1)
    {
LABEL_91:
      v144 = (*(i + 6) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v146 = *v144;
      v145 = v144[1];

      sub_1D8D15664(v139, 0);
      v147 = v525;
      v148 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v147;
      v150 = sub_1D8D33C70(v146, v145);
      v151 = v147[2];
      v152 = (v149 & 1) == 0;
      v153 = v151 + v152;
      if (__OFADD__(v151, v152))
      {
        goto LABEL_374;
      }

      v154 = v149;
      if (v147[3] >= v153)
      {
        if (v148)
        {
          v525 = v147;
          if (v149)
          {
            goto LABEL_98;
          }
        }

        else
        {
          sub_1D8F83490();
          v147 = v524;
          v525 = v524;
          if (v154)
          {
            goto LABEL_98;
          }
        }
      }

      else
      {
        sub_1D9006290(v153, v148);
        v147 = v524;
        v155 = sub_1D8D33C70(v146, v145);
        if ((v154 & 1) != (v156 & 1))
        {
          goto LABEL_406;
        }

        v150 = v155;
        v525 = v147;
        if (v154)
        {
LABEL_98:

          goto LABEL_102;
        }
      }

      v147[(v150 >> 6) + 8] |= 1 << v150;
      v157 = (v147[6] + 16 * v150);
      *v157 = v146;
      v157[1] = v145;
      *(v147[7] + 8 * v150) = MEMORY[0x1E69E7CC0];
      v158 = v147[2];
      v109 = __OFADD__(v158, 1);
      v159 = v158 + 1;
      if (v109)
      {
        goto LABEL_388;
      }

      v147[2] = v159;
LABEL_102:
      v160 = v147[7];
      v161 = *(v160 + 8 * v150);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v160 + 8 * v150) = v161;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v161 + 16) + 1, 1, v161);
        v161 = v21;
        *(v160 + 8 * v150) = v21;
      }

      isUniquelyReferenced_nonNull_native = *(v161 + 16);
      v162 = *(v161 + 24);
      if (isUniquelyReferenced_nonNull_native >= v162 >> 1)
      {
        v21 = sub_1D8ECCB5C((v162 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v161);
        v161 = v21;
        *(v160 + 8 * v150) = v21;
      }

      v86 = &selRef_redirectURLForStoreCollectionId_;
      v13 &= v13 - 1;
      *(v161 + 16) = isUniquelyReferenced_nonNull_native + 1;
      *(v161 + isUniquelyReferenced_nonNull_native + 32) = 3;
      v139 = sub_1D8F034F0;
      v142 = v519;
      if (!v13)
      {
        goto LABEL_87;
      }
    }
  }

  while (1)
  {
LABEL_87:
    v143 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_360;
    }

    if (v143 >= v28)
    {
      break;
    }

    v13 = *(v142 + 8 * v143);
    ++v17;
    if (v13)
    {
      v17 = v143;
      goto LABEL_91;
    }
  }

  v499 = v139;

  v504 = 0;
  v13 = 0;
  v163 = v516 + 56;
  v164 = 1 << v516[32];
  v165 = -1;
  if (v164 < 64)
  {
    v165 = ~(-1 << v164);
  }

  v17 = v165 & *(v516 + 7);
  v166 = ((v164 + 63) >> 6);
  v28 = v522;
  i = v166;
  if (v17)
  {
    while (1)
    {
LABEL_115:
      v168 = (*(v516 + 6) + ((v13 << 10) | (16 * __clz(__rbit64(v17)))));
      v170 = *v168;
      v169 = v168[1];

      sub_1D8D15664(v504, 0);
      v171 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v171;
      v173 = sub_1D8D33C70(v170, v169);
      v174 = v171[2];
      v175 = (v172 & 1) == 0;
      v176 = v174 + v175;
      if (__OFADD__(v174, v175))
      {
        goto LABEL_375;
      }

      v177 = v172;
      if (v171[3] >= v176)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v525 = v171;
          if (v172)
          {
            goto LABEL_122;
          }
        }

        else
        {
          sub_1D8F83490();
          v171 = v524;
          v525 = v524;
          if (v177)
          {
            goto LABEL_122;
          }
        }
      }

      else
      {
        sub_1D9006290(v176, isUniquelyReferenced_nonNull_native);
        v171 = v524;
        v178 = sub_1D8D33C70(v170, v169);
        if ((v177 & 1) != (v179 & 1))
        {
          goto LABEL_406;
        }

        v173 = v178;
        v525 = v171;
        if (v177)
        {
LABEL_122:

          goto LABEL_126;
        }
      }

      v171[(v173 >> 6) + 8] |= 1 << v173;
      v180 = (v171[6] + 16 * v173);
      *v180 = v170;
      v180[1] = v169;
      *(v171[7] + 8 * v173) = MEMORY[0x1E69E7CC0];
      v181 = v171[2];
      v109 = __OFADD__(v181, 1);
      v182 = v181 + 1;
      if (v109)
      {
        goto LABEL_389;
      }

      v171[2] = v182;
LABEL_126:
      v183 = v171[7];
      v184 = *(v183 + 8 * v173);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v183 + 8 * v173) = v184;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v184 + 16) + 1, 1, v184);
        v184 = v21;
        *(v183 + 8 * v173) = v21;
      }

      v186 = *(v184 + 16);
      v185 = *(v184 + 24);
      if (v186 >= v185 >> 1)
      {
        v21 = sub_1D8ECCB5C((v185 > 1), v186 + 1, 1, v184);
        v184 = v21;
        *(v183 + 8 * v173) = v21;
      }

      v28 = v522;
      v166 = i;
      v17 &= v17 - 1;
      *(v184 + 16) = v186 + 1;
      *(v184 + v186 + 32) = 1;
      v504 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      if (!v17)
      {
        goto LABEL_111;
      }
    }
  }

  while (1)
  {
LABEL_111:
    v167 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_361;
    }

    if (v167 >= v166)
    {
      break;
    }

    v17 = *&v163[8 * v167];
    ++v13;
    if (v17)
    {
      v13 = v167;
      goto LABEL_115;
    }
  }

  v517 = 0;
  v13 = 0;
  v187 = v515 + 56;
  v188 = 1 << v515[32];
  v189 = -1;
  if (v188 < 64)
  {
    v189 = ~(-1 << v188);
  }

  v17 = v189 & *(v515 + 7);
  v190 = ((v188 + 63) >> 6);
  i = v190;
  if (v17)
  {
LABEL_139:
    while (1)
    {
      v192 = (*(v515 + 6) + ((v13 << 10) | (16 * __clz(__rbit64(v17)))));
      v194 = *v192;
      v193 = v192[1];

      sub_1D8D15664(v517, 0);
      v195 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v195;
      v196 = sub_1D8D33C70(v194, v193);
      v198 = v197;
      v199 = v195[2];
      v200 = (v197 & 1) == 0;
      if (__OFADD__(v199, v200))
      {
        break;
      }

      v201 = v196;
      v202 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v199 + v200);
      v203 = v524;
      if (v202)
      {
        v204 = sub_1D8D33C70(v194, v193);
        if ((v198 & 1) != (v205 & 1))
        {
          goto LABEL_406;
        }

        v201 = v204;
      }

      v525 = v203;
      if (v198)
      {
      }

      else
      {
        v203[(v201 >> 6) + 8] |= 1 << v201;
        v206 = (v203[6] + 16 * v201);
        *v206 = v194;
        v206[1] = v193;
        *(v203[7] + 8 * v201) = MEMORY[0x1E69E7CC0];
        v207 = v203[2];
        v109 = __OFADD__(v207, 1);
        v208 = v207 + 1;
        if (v109)
        {
          goto LABEL_390;
        }

        v203[2] = v208;
      }

      v209 = v203[7];
      v210 = *(v209 + 8 * v201);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v209 + 8 * v201) = v210;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v210 + 16) + 1, 1, v210);
        v210 = v21;
        *(v209 + 8 * v201) = v21;
      }

      v212 = *(v210 + 16);
      v211 = *(v210 + 24);
      if (v212 >= v211 >> 1)
      {
        v21 = sub_1D8ECCB5C((v211 > 1), v212 + 1, 1, v210);
        v210 = v21;
        *(v209 + 8 * v201) = v21;
      }

      v17 &= v17 - 1;
      *(v210 + 16) = v212 + 1;
      *(v210 + v212 + 32) = 2;
      v517 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      v28 = v522;
      v190 = i;
      if (!v17)
      {
        goto LABEL_135;
      }
    }

LABEL_376:
    __break(1u);
LABEL_377:
    __break(1u);
LABEL_378:
    __break(1u);
LABEL_379:
    __break(1u);
    goto LABEL_380;
  }

  while (1)
  {
LABEL_135:
    v191 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      goto LABEL_362;
    }

    if (v191 >= v190)
    {
      break;
    }

    v17 = *&v187[8 * v191];
    ++v13;
    if (v17)
    {
      v13 = v191;
      goto LABEL_139;
    }
  }

  v21 = sub_1D90701C4(v509, v28);
  v213 = 0;
  v17 = 0;
  v214 = 1 << *(v21 + 32);
  v215 = -1;
  if (v214 < 64)
  {
    v215 = ~(-1 << v214);
  }

  v216 = (v21 + 56);
  v13 = v215 & *(v21 + 56);
  v28 = (v214 + 63) >> 6;
  v522 = (v21 + 56);
  i = v21;
  if (v13)
  {
LABEL_160:
    while (1)
    {
      v218 = (*(i + 6) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v220 = *v218;
      v219 = v218[1];

      sub_1D8D15664(v213, 0);
      v221 = v525;
      v222 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v221;
      v223 = sub_1D8D33C70(v220, v219);
      v225 = v224;
      v226 = v221[2];
      v227 = (v224 & 1) == 0;
      if (__OFADD__(v226, v227))
      {
        goto LABEL_377;
      }

      v228 = v223;
      v229 = sub_1D8F0312C(v222, v226 + v227);
      v230 = v524;
      if (v229)
      {
        v231 = sub_1D8D33C70(v220, v219);
        if ((v225 & 1) != (v232 & 1))
        {
          goto LABEL_406;
        }

        v228 = v231;
      }

      v525 = v230;
      if (v225)
      {
      }

      else
      {
        v230[(v228 >> 6) + 8] |= 1 << v228;
        v233 = (v230[6] + 16 * v228);
        *v233 = v220;
        v233[1] = v219;
        *(v230[7] + 8 * v228) = MEMORY[0x1E69E7CC0];
        v234 = v230[2];
        v109 = __OFADD__(v234, 1);
        v235 = v234 + 1;
        if (v109)
        {
          goto LABEL_391;
        }

        v230[2] = v235;
      }

      v236 = v230[7];
      v237 = *(v236 + 8 * v228);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v236 + 8 * v228) = v237;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v237 + 16) + 1, 1, v237);
        v237 = v21;
        *(v236 + 8 * v228) = v21;
      }

      isUniquelyReferenced_nonNull_native = *(v237 + 16);
      v238 = *(v237 + 24);
      if (isUniquelyReferenced_nonNull_native >= v238 >> 1)
      {
        v21 = sub_1D8ECCB5C((v238 > 1), isUniquelyReferenced_nonNull_native + 1, 1, v237);
        v237 = v21;
        *(v236 + 8 * v228) = v21;
      }

      v86 = &selRef_redirectURLForStoreCollectionId_;
      v13 &= v13 - 1;
      *(v237 + 16) = isUniquelyReferenced_nonNull_native + 1;
      *(v237 + isUniquelyReferenced_nonNull_native + 32) = 5;
      v213 = sub_1D8F034F0;
      v216 = v522;
      if (!v13)
      {
        goto LABEL_156;
      }
    }
  }

  while (1)
  {
LABEL_156:
    v217 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_363;
    }

    if (v217 >= v28)
    {
      break;
    }

    v13 = *(v216 + v217);
    ++v17;
    if (v13)
    {
      v17 = v217;
      goto LABEL_160;
    }
  }

  v512 = v213;

  v239 = v521 + 7;
  v240 = 1 << *(v521 + 32);
  v241 = -1;
  if (v240 < 64)
  {
    v241 = ~(-1 << v240);
  }

  v13 = v241 & v521[7];
  v242 = ((v240 + 63) >> 6);

  v515 = 0;
  v516 = 0;
  v17 = 0;
  i = v242;
  if (v13)
  {
LABEL_181:
    while (1)
    {
      v244 = (v521[6] + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v246 = *v244;
      v245 = v244[1];

      sub_1D8D15664(v516, 0);
      v247 = v525;
      v248 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v247;
      v249 = sub_1D8D33C70(v246, v245);
      v251 = v250;
      v252 = v247[2];
      v253 = (v250 & 1) == 0;
      if (__OFADD__(v252, v253))
      {
        goto LABEL_378;
      }

      v254 = v249;
      v255 = sub_1D8F0312C(v248, v252 + v253);
      v256 = v524;
      if (v255)
      {
        v257 = sub_1D8D33C70(v246, v245);
        if ((v251 & 1) != (v258 & 1))
        {
          goto LABEL_406;
        }

        v254 = v257;
      }

      v525 = v256;
      if ((v251 & 1) == 0)
      {
        v256[(v254 >> 6) + 8] |= 1 << v254;
        v259 = (v256[6] + 16 * v254);
        *v259 = v246;
        v259[1] = v245;
        *(v256[7] + 8 * v254) = MEMORY[0x1E69E7CC0];
        v260 = v256[2];
        v109 = __OFADD__(v260, 1);
        v261 = v260 + 1;
        if (v109)
        {
          goto LABEL_392;
        }

        v256[2] = v261;
      }

      v262 = v256[7];
      v263 = *(v262 + 8 * v254);
      v264 = swift_isUniquelyReferenced_nonNull_native();
      *(v262 + 8 * v254) = v263;
      if ((v264 & 1) == 0)
      {
        v263 = sub_1D8ECCB5C(0, *(v263 + 2) + 1, 1, v263);
        *(v262 + 8 * v254) = v263;
      }

      v266 = *(v263 + 2);
      v265 = *(v263 + 3);
      if (v266 >= v265 >> 1)
      {
        v263 = sub_1D8ECCB5C((v265 > 1), v266 + 1, 1, v263);
        *(v262 + 8 * v254) = v263;
      }

      *(v263 + 2) = v266 + 1;
      v263[v266 + 32] = 8;
      sub_1D8D15664(v515, 0);
      v267 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v267;
      v268 = sub_1D8D33C70(v246, v245);
      v270 = v269;
      v271 = v267[2];
      v272 = (v269 & 1) == 0;
      if (__OFADD__(v271, v272))
      {
        goto LABEL_379;
      }

      v273 = v268;
      v274 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v271 + v272);
      v275 = v524;
      if (v274)
      {
        v276 = sub_1D8D33C70(v246, v245);
        if ((v270 & 1) != (v277 & 1))
        {
          goto LABEL_406;
        }

        v273 = v276;
      }

      v525 = v275;
      if (v270)
      {
      }

      else
      {
        v275[(v273 >> 6) + 8] |= 1 << v273;
        v278 = (v275[6] + 16 * v273);
        *v278 = v246;
        v278[1] = v245;
        *(v275[7] + 8 * v273) = MEMORY[0x1E69E7CC0];
        v279 = v275[2];
        v109 = __OFADD__(v279, 1);
        v280 = v279 + 1;
        if (v109)
        {
          goto LABEL_393;
        }

        v275[2] = v280;
      }

      v281 = v275[7];
      v28 = *(v281 + 8 * v273);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v281 + 8 * v273) = v28;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v28 + 16) + 1, 1, v28);
        v28 = v21;
        *(v281 + 8 * v273) = v21;
      }

      v283 = *(v28 + 16);
      v282 = *(v28 + 24);
      if (v283 >= v282 >> 1)
      {
        v21 = sub_1D8ECCB5C((v282 > 1), v283 + 1, 1, v28);
        v28 = v21;
        *(v281 + 8 * v273) = v21;
      }

      v242 = i;
      v13 &= v13 - 1;
      *(v28 + 16) = v283 + 1;
      *(v28 + v283 + 32) = 0;
      v515 = sub_1D8F034F0;
      v516 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      if (!v13)
      {
        goto LABEL_177;
      }
    }
  }

  while (1)
  {
LABEL_177:
    v243 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_364;
    }

    if (v243 >= v242)
    {
      break;
    }

    v13 = v239[v243];
    ++v17;
    if (v13)
    {
      v17 = v243;
      goto LABEL_181;
    }
  }

  v284 = v503 + 56;
  v285 = 1 << *(v503 + 32);
  v286 = -1;
  if (v285 < 64)
  {
    v286 = ~(-1 << v285);
  }

  v13 = v286 & *(v503 + 56);
  v28 = (v285 + 63) >> 6;

  v287 = 0;
  v17 = 0;
  v522 = v28;
  i = 0;
  if (v13)
  {
LABEL_213:
    while (1)
    {
      v289 = (*(v503 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v291 = *v289;
      v290 = v289[1];

      sub_1D8D15664(v287, 0);
      v292 = v525;
      v293 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v292;
      v294 = sub_1D8D33C70(v291, v290);
      v296 = v295;
      v297 = v292[2];
      v298 = (v295 & 1) == 0;
      if (__OFADD__(v297, v298))
      {
        break;
      }

      v299 = v294;
      v300 = sub_1D8F0312C(v293, v297 + v298);
      v301 = v524;
      if (v300)
      {
        v302 = sub_1D8D33C70(v291, v290);
        if ((v296 & 1) != (v303 & 1))
        {
          goto LABEL_406;
        }

        v299 = v302;
      }

      v525 = v301;
      if ((v296 & 1) == 0)
      {
        v301[(v299 >> 6) + 8] |= 1 << v299;
        v304 = (v301[6] + 16 * v299);
        *v304 = v291;
        v304[1] = v290;
        *(v301[7] + 8 * v299) = MEMORY[0x1E69E7CC0];
        v305 = v301[2];
        v109 = __OFADD__(v305, 1);
        v306 = v305 + 1;
        if (v109)
        {
          goto LABEL_394;
        }

        v301[2] = v306;
      }

      v307 = v301[7];
      v308 = *(v307 + 8 * v299);
      v309 = swift_isUniquelyReferenced_nonNull_native();
      *(v307 + 8 * v299) = v308;
      if ((v309 & 1) == 0)
      {
        v308 = sub_1D8ECCB5C(0, *(v308 + 2) + 1, 1, v308);
        *(v307 + 8 * v299) = v308;
      }

      v311 = *(v308 + 2);
      v310 = *(v308 + 3);
      v312 = i;
      if (v311 >= v310 >> 1)
      {
        v308 = sub_1D8ECCB5C((v310 > 1), v311 + 1, 1, v308);
        v312 = i;
        *(v307 + 8 * v299) = v308;
      }

      *(v308 + 2) = v311 + 1;
      v308[v311 + 32] = 9;
      sub_1D8D15664(v312, 0);
      v313 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v313;
      v314 = sub_1D8D33C70(v291, v290);
      v316 = v315;
      v317 = v313[2];
      v318 = (v315 & 1) == 0;
      if (__OFADD__(v317, v318))
      {
        goto LABEL_381;
      }

      v319 = v314;
      v320 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v317 + v318);
      v321 = v524;
      if (v320)
      {
        v322 = sub_1D8D33C70(v291, v290);
        if ((v316 & 1) != (v323 & 1))
        {
          goto LABEL_406;
        }

        v319 = v322;
      }

      v525 = v321;
      if (v316)
      {
      }

      else
      {
        v321[(v319 >> 6) + 8] |= 1 << v319;
        v324 = (v321[6] + 16 * v319);
        *v324 = v291;
        v324[1] = v290;
        *(v321[7] + 8 * v319) = MEMORY[0x1E69E7CC0];
        v325 = v321[2];
        v109 = __OFADD__(v325, 1);
        v326 = v325 + 1;
        if (v109)
        {
          goto LABEL_395;
        }

        v321[2] = v326;
      }

      v327 = v321[7];
      v328 = *(v327 + 8 * v319);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v327 + 8 * v319) = v328;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v328 + 16) + 1, 1, v328);
        v328 = v21;
        *(v327 + 8 * v319) = v21;
      }

      v330 = *(v328 + 16);
      v329 = *(v328 + 24);
      if (v330 >= v329 >> 1)
      {
        v21 = sub_1D8ECCB5C((v329 > 1), v330 + 1, 1, v328);
        v328 = v21;
        *(v327 + 8 * v319) = v21;
      }

      v13 &= v13 - 1;
      *(v328 + 16) = v330 + 1;
      *(v328 + v330 + 32) = 0;
      v287 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      v28 = v522;
      i = sub_1D8F034F0;
      if (!v13)
      {
        goto LABEL_209;
      }
    }

LABEL_380:
    __break(1u);
LABEL_381:
    __break(1u);
    goto LABEL_382;
  }

  while (1)
  {
LABEL_209:
    v288 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_365;
    }

    if (v288 >= v28)
    {
      break;
    }

    v13 = *(v284 + 8 * v288);
    ++v17;
    if (v13)
    {
      v17 = v288;
      goto LABEL_213;
    }
  }

  v331 = v502 + 56;
  v332 = 1 << *(v502 + 32);
  v333 = -1;
  if (v332 < 64)
  {
    v333 = ~(-1 << v332);
  }

  v13 = v333 & *(v502 + 56);
  v334 = (v332 + 63) >> 6;

  v335 = 0;
  v17 = 0;
  v518 = v334;
  v519 = v287;
  v522 = 0;
  if (v13)
  {
LABEL_245:
    while (1)
    {
      v337 = (*(v502 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v339 = *v337;
      v338 = v337[1];

      sub_1D8D15664(v335, 0);
      v340 = v525;
      v341 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v340;
      v342 = sub_1D8D33C70(v339, v338);
      v344 = v343;
      v345 = v340[2];
      v346 = (v343 & 1) == 0;
      if (__OFADD__(v345, v346))
      {
        break;
      }

      v347 = v342;
      v348 = sub_1D8F0312C(v341, v345 + v346);
      v349 = v524;
      if (v348)
      {
        v350 = sub_1D8D33C70(v339, v338);
        if ((v344 & 1) != (v351 & 1))
        {
          goto LABEL_406;
        }

        v347 = v350;
      }

      v525 = v349;
      if ((v344 & 1) == 0)
      {
        v349[(v347 >> 6) + 8] |= 1 << v347;
        v352 = (v349[6] + 16 * v347);
        *v352 = v339;
        v352[1] = v338;
        *(v349[7] + 8 * v347) = MEMORY[0x1E69E7CC0];
        v353 = v349[2];
        v109 = __OFADD__(v353, 1);
        v354 = v353 + 1;
        if (v109)
        {
          goto LABEL_396;
        }

        v349[2] = v354;
      }

      v355 = v349[7];
      v356 = *(v355 + 8 * v347);
      v357 = swift_isUniquelyReferenced_nonNull_native();
      *(v355 + 8 * v347) = v356;
      if ((v357 & 1) == 0)
      {
        v356 = sub_1D8ECCB5C(0, *(v356 + 2) + 1, 1, v356);
        *(v355 + 8 * v347) = v356;
      }

      v359 = *(v356 + 2);
      v358 = *(v356 + 3);
      if (v359 >= v358 >> 1)
      {
        v356 = sub_1D8ECCB5C((v358 > 1), v359 + 1, 1, v356);
        *(v355 + 8 * v347) = v356;
      }

      *(v356 + 2) = v359 + 1;
      v356[v359 + 32] = 10;
      sub_1D8D15664(v522, 0);
      v360 = v525;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v524 = v360;
      v361 = sub_1D8D33C70(v339, v338);
      v363 = v362;
      v364 = v360[2];
      v365 = (v362 & 1) == 0;
      if (__OFADD__(v364, v365))
      {
        goto LABEL_383;
      }

      v366 = v361;
      v367 = sub_1D8F0312C(isUniquelyReferenced_nonNull_native, v364 + v365);
      v368 = v524;
      if (v367)
      {
        v369 = sub_1D8D33C70(v339, v338);
        if ((v363 & 1) != (v370 & 1))
        {
          goto LABEL_406;
        }

        v366 = v369;
      }

      v525 = v368;
      if (v363)
      {
      }

      else
      {
        v368[(v366 >> 6) + 8] |= 1 << v366;
        v371 = (v368[6] + 16 * v366);
        *v371 = v339;
        v371[1] = v338;
        *(v368[7] + 8 * v366) = MEMORY[0x1E69E7CC0];
        v372 = v368[2];
        v109 = __OFADD__(v372, 1);
        v373 = v372 + 1;
        if (v109)
        {
          goto LABEL_397;
        }

        v368[2] = v373;
      }

      v374 = v368[7];
      v28 = *(v374 + 8 * v366);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v374 + 8 * v366) = v28;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v28 + 16) + 1, 1, v28);
        v28 = v21;
        *(v374 + 8 * v366) = v21;
      }

      v376 = *(v28 + 16);
      v375 = *(v28 + 24);
      if (v376 >= v375 >> 1)
      {
        v21 = sub_1D8ECCB5C((v375 > 1), v376 + 1, 1, v28);
        v28 = v21;
        *(v374 + 8 * v366) = v21;
      }

      v334 = v518;
      v13 &= v13 - 1;
      *(v28 + 16) = v376 + 1;
      *(v28 + v376 + 32) = 0;
      v335 = sub_1D8F034F0;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      v522 = sub_1D8F034F0;
      if (!v13)
      {
        goto LABEL_241;
      }
    }

LABEL_382:
    __break(1u);
LABEL_383:
    __break(1u);
LABEL_384:
    __break(1u);
LABEL_385:
    __break(1u);
LABEL_386:
    __break(1u);
LABEL_387:
    __break(1u);
LABEL_388:
    __break(1u);
LABEL_389:
    __break(1u);
LABEL_390:
    __break(1u);
LABEL_391:
    __break(1u);
LABEL_392:
    __break(1u);
LABEL_393:
    __break(1u);
LABEL_394:
    __break(1u);
LABEL_395:
    __break(1u);
LABEL_396:
    __break(1u);
LABEL_397:
    __break(1u);
LABEL_398:
    __break(1u);
LABEL_399:
    __break(1u);
LABEL_400:
    __break(1u);
LABEL_401:
    __break(1u);
    goto LABEL_402;
  }

  while (1)
  {
LABEL_241:
    v336 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_366;
    }

    if (v336 >= v334)
    {
      break;
    }

    v13 = *(v331 + 8 * v336);
    ++v17;
    if (v13)
    {
      v17 = v336;
      goto LABEL_245;
    }
  }

  v518 = v335;

  v28 = v502;

  isUniquelyReferenced_nonNull_native = 0;
  v17 = 0;
  v377 = v500;
  v378 = v500 + 56;
  v379 = 1 << *(v500 + 32);
  v380 = -1;
  if (v379 < 64)
  {
    v380 = ~(-1 << v379);
  }

  v13 = v380 & *(v500 + 56);
  v381 = (v379 + 63) >> 6;
  v503 = v381;
  v521 = 0;
  if (v13)
  {
    while (1)
    {
LABEL_277:
      v383 = (*(v377 + 48) + ((v17 << 10) | (16 * __clz(__rbit64(v13)))));
      v385 = *v383;
      v384 = v383[1];

      sub_1D8D15664(isUniquelyReferenced_nonNull_native, 0);
      v386 = v525;
      v387 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v386;
      v388 = sub_1D8D33C70(v385, v384);
      v390 = v389;
      v391 = v386[2];
      v392 = (v389 & 1) == 0;
      if (__OFADD__(v391, v392))
      {
        goto LABEL_384;
      }

      v393 = v388;
      v394 = sub_1D8F0312C(v387, v391 + v392);
      v395 = v524;
      if (v394)
      {
        v396 = sub_1D8D33C70(v385, v384);
        if ((v390 & 1) != (v397 & 1))
        {
          goto LABEL_406;
        }

        v393 = v396;
      }

      v525 = v395;
      if ((v390 & 1) == 0)
      {
        v395[(v393 >> 6) + 8] |= 1 << v393;
        v398 = (v395[6] + 16 * v393);
        *v398 = v385;
        v398[1] = v384;
        *(v395[7] + 8 * v393) = MEMORY[0x1E69E7CC0];
        v399 = v395[2];
        v109 = __OFADD__(v399, 1);
        v400 = v399 + 1;
        if (v109)
        {
          goto LABEL_398;
        }

        v395[2] = v400;
      }

      v401 = v395[7];
      v402 = *(v401 + 8 * v393);
      v403 = swift_isUniquelyReferenced_nonNull_native();
      *(v401 + 8 * v393) = v402;
      if ((v403 & 1) == 0)
      {
        v402 = sub_1D8ECCB5C(0, *(v402 + 2) + 1, 1, v402);
        *(v401 + 8 * v393) = v402;
      }

      v405 = *(v402 + 2);
      v404 = *(v402 + 3);
      if (v405 >= v404 >> 1)
      {
        v402 = sub_1D8ECCB5C((v404 > 1), v405 + 1, 1, v402);
        *(v401 + 8 * v393) = v402;
      }

      *(v402 + 2) = v405 + 1;
      v402[v405 + 32] = 11;
      sub_1D8D15664(v521, 0);
      v406 = v525;
      v407 = swift_isUniquelyReferenced_nonNull_native();
      v524 = v406;
      v408 = sub_1D8D33C70(v385, v384);
      v410 = v409;
      v411 = v406[2];
      v412 = (v409 & 1) == 0;
      if (__OFADD__(v411, v412))
      {
        goto LABEL_385;
      }

      v413 = v408;
      v414 = sub_1D8F0312C(v407, v411 + v412);
      v415 = v524;
      if (v414)
      {
        v416 = sub_1D8D33C70(v385, v384);
        v377 = v500;
        if ((v410 & 1) != (v417 & 1))
        {
          goto LABEL_406;
        }

        v413 = v416;
        v525 = v415;
        if (v410)
        {
LABEL_295:

          goto LABEL_296;
        }
      }

      else
      {
        v377 = v500;
        v525 = v524;
        if (v410)
        {
          goto LABEL_295;
        }
      }

      v415[(v413 >> 6) + 8] |= 1 << v413;
      v418 = (v415[6] + 16 * v413);
      *v418 = v385;
      v418[1] = v384;
      *(v415[7] + 8 * v413) = MEMORY[0x1E69E7CC0];
      v419 = v415[2];
      v109 = __OFADD__(v419, 1);
      v420 = v419 + 1;
      if (v109)
      {
        goto LABEL_399;
      }

      v415[2] = v420;
LABEL_296:
      v421 = v415[7];
      v28 = *(v421 + 8 * v413);
      v21 = swift_isUniquelyReferenced_nonNull_native();
      *(v421 + 8 * v413) = v28;
      if ((v21 & 1) == 0)
      {
        v21 = sub_1D8ECCB5C(0, *(v28 + 16) + 1, 1, v28);
        v28 = v21;
        *(v421 + 8 * v413) = v21;
      }

      v423 = *(v28 + 16);
      v422 = *(v28 + 24);
      if (v423 >= v422 >> 1)
      {
        v21 = sub_1D8ECCB5C((v422 > 1), v423 + 1, 1, v28);
        v28 = v21;
        *(v421 + 8 * v413) = v21;
      }

      v86 = &selRef_redirectURLForStoreCollectionId_;
      v13 &= v13 - 1;
      *(v28 + 16) = v423 + 1;
      *(v28 + v423 + 32) = 0;
      isUniquelyReferenced_nonNull_native = sub_1D8F034F0;
      v381 = v503;
      v521 = sub_1D8F034F0;
      if (!v13)
      {
        goto LABEL_273;
      }
    }
  }

  while (1)
  {
LABEL_273:
    v382 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      goto LABEL_367;
    }

    if (v382 >= v381)
    {
      break;
    }

    v13 = *(v378 + 8 * v382);
    ++v17;
    if (v13)
    {
      v17 = v382;
      goto LABEL_277;
    }
  }

  v17 = 0;
  v28 = 0;
  v424 = 0;
  v425 = v501 + 56;
  v426 = 1 << *(v501 + 32);
  v427 = -1;
  if (v426 < 64)
  {
    v427 = ~(-1 << v426);
  }

  v428 = v427 & *(v501 + 56);
  v429 = (v426 + 63) >> 6;
  if (v428)
  {
    while (1)
    {
      v13 = v424;
LABEL_309:
      v430 = __clz(__rbit64(v428));
      v428 &= v428 - 1;
      v431 = (*(v501 + 48) + ((v13 << 10) | (16 * v430)));
      v432 = *v431;
      v433 = v431[1];

      if (sub_1D8EF0850(v432, v433, v509))
      {
        sub_1D8D15664(v28, 0);
        v434 = v432;
        v435 = v525;
        v436 = swift_isUniquelyReferenced_nonNull_native();
        v524 = v435;
        v503 = v434;
        v502 = sub_1D8D33C70(v434, v433);
        v438 = v437;
        v439 = v435[2];
        v440 = (v437 & 1) == 0;
        if (__OFADD__(v439, v440))
        {
          goto LABEL_400;
        }

        v441 = sub_1D8F0312C(v436, v439 + v440);
        v442 = v524;
        if (v441)
        {
          v443 = sub_1D8D33C70(v503, v433);
          if ((v438 & 1) != (v444 & 1))
          {
            goto LABEL_406;
          }

          v445 = v443;
        }

        else
        {
          v445 = v502;
        }

        v525 = v442;
        if ((v438 & 1) == 0)
        {
          v442[(v445 >> 6) + 8] |= 1 << v445;
          v446 = (v442[6] + 16 * v445);
          *v446 = v503;
          v446[1] = v433;
          *(v442[7] + 8 * v445) = MEMORY[0x1E69E7CC0];
          v447 = v442[2];
          v109 = __OFADD__(v447, 1);
          v448 = v447 + 1;
          if (v109)
          {
            goto LABEL_403;
          }

          v442[2] = v448;
        }

        v449 = v442[7];
        v450 = *(v449 + 8 * v445);
        v451 = swift_isUniquelyReferenced_nonNull_native();
        *(v449 + 8 * v445) = v450;
        v502 = v445;
        v500 = v449;
        if ((v451 & 1) == 0)
        {
          v450 = sub_1D8ECCB5C(0, *(v450 + 2) + 1, 1, v450);
          *(v449 + 8 * v445) = v450;
        }

        v453 = *(v450 + 2);
        v452 = *(v450 + 3);
        if (v453 >= v452 >> 1)
        {
          v450 = sub_1D8ECCB5C((v452 > 1), v453 + 1, 1, v450);
          *(v500 + 8 * v502) = v450;
        }

        *(v450 + 2) = v453 + 1;
        v450[v453 + 32] = 12;
        sub_1D8D15664(v17, 0);
        v454 = v525;
        v455 = swift_isUniquelyReferenced_nonNull_native();
        v524 = v454;
        v456 = sub_1D8D33C70(v503, v433);
        v458 = v457;
        v459 = v454[2];
        v460 = (v457 & 1) == 0;
        if (__OFADD__(v459, v460))
        {
          goto LABEL_401;
        }

        v461 = v456;
        v462 = sub_1D8F0312C(v455, v459 + v460);
        v463 = v524;
        if (v462)
        {
          v464 = sub_1D8D33C70(v503, v433);
          if ((v458 & 1) != (v465 & 1))
          {
            goto LABEL_406;
          }

          v461 = v464;
        }

        v466 = v503;
        v525 = v463;
        if (v458)
        {
        }

        else
        {
          v463[(v461 >> 6) + 8] |= 1 << v461;
          v467 = (v463[6] + 16 * v461);
          *v467 = v466;
          v467[1] = v433;
          *(v463[7] + 8 * v461) = MEMORY[0x1E69E7CC0];
          v468 = v463[2];
          v109 = __OFADD__(v468, 1);
          v469 = v468 + 1;
          if (v109)
          {
            goto LABEL_404;
          }

          v463[2] = v469;
        }

        v470 = v463[7];
        v471 = *(v470 + 8 * v461);
        v21 = swift_isUniquelyReferenced_nonNull_native();
        *(v470 + 8 * v461) = v471;
        v503 = v470;
        if ((v21 & 1) == 0)
        {
          v21 = sub_1D8ECCB5C(0, *(v471 + 16) + 1, 1, v471);
          v471 = v21;
          *(v470 + 8 * v461) = v21;
        }

        v473 = *(v471 + 16);
        v472 = *(v471 + 24);
        if (v473 >= v472 >> 1)
        {
          v21 = sub_1D8ECCB5C((v472 > 1), v473 + 1, 1, v471);
          v471 = v21;
          *(v503 + 8 * v461) = v21;
        }

        *(v471 + 16) = v473 + 1;
        *(v471 + v473 + 32) = 0;
        v17 = sub_1D8F034F0;
        v28 = sub_1D8F034F0;
      }

      else
      {
      }

      v424 = v13;
      v86 = &selRef_redirectURLForStoreCollectionId_;
      if (!v428)
      {
        goto LABEL_306;
      }
    }
  }

  while (1)
  {
LABEL_306:
    v13 = v424 + 1;
    if (__OFADD__(v424, 1))
    {
      goto LABEL_368;
    }

    if (v13 >= v429)
    {
      break;
    }

    v428 = *(v425 + 8 * v13);
    ++v424;
    if (v428)
    {
      goto LABEL_309;
    }
  }

  if ((v511 & 1) == 0)
  {

    swift_unknownObjectRelease();
    v22 = v520;
    v79 = v499;
LABEL_342:

    sub_1D8D15664(v507, 0);
    sub_1D8D15664(v506, 0);
    sub_1D8D15664(v79, 0);
    *v22 = v525;
    v42 = v504;
    goto LABEL_3;
  }

  v474 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  v475 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v476 = [v495 predicateForAllEpisodesOnPodcastUuid_];

  [v474 v86[283]];
  v72 = v514;
  v477 = sub_1D917908C();
  v22 = v520;
  v79 = v499;
  if (v72)
  {

    swift_unknownObjectRelease();
    v77 = v507;
    v78 = v506;
    v42 = v504;
    goto LABEL_2;
  }

  v478 = v477;
  v479 = sub_1D8FBFDC8(v477);
  if (!v479)
  {
    swift_unknownObjectRelease();

    goto LABEL_342;
  }

  v480 = v479;
  v510 = v474;
  if (v479 >= 1)
  {
    v481 = 0;
    v511 = v478 & 0xC000000000000001;
    v514 = isUniquelyReferenced_nonNull_native;
    do
    {
      if (v511)
      {
        v482 = MEMORY[0x1DA72AA90](v481, v478);
      }

      else
      {
        v482 = *(v478 + 8 * v481 + 32);
      }

      v483 = v482;
      v484 = [v482 uuid];
      if (v484)
      {
        v485 = v480;
        v486 = v478;
        v487 = v484;
        v488 = sub_1D917820C();
        v490 = v489;

        if (v525[2] && (, sub_1D8D33C70(v488, v490), v492 = v491, , (v492 & 1) != 0))
        {
        }

        else
        {
          sub_1D8F7CF00(&unk_1F545D9A0, v488, v490);
        }

        v79 = v499;
        v478 = v486;
        v480 = v485;
      }

      ++v481;

      isUniquelyReferenced_nonNull_native = v514;
    }

    while (v480 != v481);
    swift_unknownObjectRelease();

    v22 = v520;
    goto LABEL_342;
  }

LABEL_402:
  __break(1u);
LABEL_403:
  __break(1u);
LABEL_404:
  __break(1u);
LABEL_405:
  __break(1u);
LABEL_406:
  result = sub_1D9179CFC();
  __break(1u);
  return result;
}

id sub_1D8EF9090(void *a1, uint64_t a2, SEL *a3)
{
  result = [a1 uuid];
  if (result)
  {
    v7 = result;
    v8 = [objc_opt_self() *a3];

    v9 = sub_1D8EF9BA0(v8, a2);
    return v9;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8EF9198(void *a1, uint64_t a2)
{
  result = [a1 uuid];
  if (result)
  {
    v5 = result;
    v6 = [objc_opt_self() predicateForAutomaticDeletionOnShow:result deletePlayedEpisodes:objc_msgSend(a1 episodeLimit:{sel_deletePlayedEpisodesResolvedValue), objc_msgSend(a1, sel_episodeLimitResolvedValue)}];

    v7 = sub_1D8EF9BA0(v6, a2);
    return v7;
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1D8EF9298(void *a1, uint64_t a2)
{
  v4 = objc_opt_self();
  v5 = [v4 predicateForDownloadBehavior_];
  result = [a1 uuid];
  if (result)
  {
    v7 = result;
    v8 = [v4 predicateForAllEpisodesOnPodcastUuid_];

    v9 = [v5 AND_];
    v10 = sub_1D8EF9BA0(v9, a2);

    return v10;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void *DownloadStateChecker.episodesToBePurged(in:for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v82 = *MEMORY[0x1E69E9840];
  v74 = sub_1D9176C2C();
  v7 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v75 = v61 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F0, &qword_1D9192190);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = (v61 - v11);
  v76[3] = MEMORY[0x1E69E7CD0];
  v77 = MEMORY[0x1E69E7CD0];
  v76[2] = MEMORY[0x1E69E7CD0];
  v76[1] = MEMORY[0x1E69E7CD0];
  v78 = a2;
  v79 = a3;
  v80 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F8, &qword_1D9193648);
  result = sub_1D917905C();
  if (!v3)
  {
    v73 = v12;
    v14 = v81;
    v15 = *(v81 + 16);
    if (v15)
    {
      v72 = *(v9 + 48);
      v16 = objc_opt_self();
      v17 = v7;
      v18 = v16;
      v19 = (*(v10 + 80) + 32) & ~*(v10 + 80);
      v61[1] = v14;
      v20 = v14 + v19;
      v71 = (v17 + 32);
      v64 = (v17 + 16);
      v70 = *(v10 + 72);
      v67 = *"GJ\b@";
      v69 = (v17 + 8);
      v63 = *MEMORY[0x1E696A998];
      *&v21 = 136315138;
      v65 = v21;
      v62 = xmmword_1D9189080;
      v66 = v16;
      while (1)
      {
        v22 = v73;
        sub_1D8D088B4(v20, v73, &qword_1ECAB66F0, &qword_1D9192190);
        v24 = *v22;
        v23 = v22[1];
        (*v71)(v75, v22 + v72, v74);
        v81 = 65542;
        v25 = sub_1D9176B1C();
        v76[0] = 0;
        v26 = [v18 fileHandleForReadingFromURL:v25 error:v76];

        if (v26)
        {
          v27 = v76[0];
          v28 = [v26 fileDescriptor];
          v29 = ffsctl(v28, v67, &v81, 0);
          if (!v29)
          {

            if ((v81 & 0x8000) == 0 || (v81 & 6) == 0)
            {
              sub_1D8F4EC88();
              if ((v58 & 0x800) == 0 || (v58 & 6) == 0)
              {
                sub_1D8F4EC88();
                if ((v59 & 0x400) == 0 || (v59 & 6) == 0)
                {
                  sub_1D8F4EC88();
                  if ((v60 & 0x200) == 0 || (v60 & 6) == 0)
                  {
                    (*v69)(v75, v74);

                    goto LABEL_17;
                  }
                }
              }
            }

            sub_1D8D19AFC(&v81, v24, v23);

            goto LABEL_16;
          }

          v30 = v29;

          sub_1D8CF2154(0, &qword_1ECAAFC88, 0x1E696ABC0);
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6700, &unk_1D918C310);
          v31 = v15;
          inited = swift_initStackObject();
          *(inited + 16) = v62;
          *(inited + 32) = sub_1D917820C();
          v33 = inited + 32;
          *(inited + 40) = v34;
          v35 = v20;
          v36 = v74;
          *(inited + 72) = v74;
          boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
          (*v64)(boxed_opaque_existential_0, v75, v36);
          v38 = sub_1D8E2696C(inited);
          v15 = v31;
          swift_setDeallocating();
          sub_1D8D08A50(v33, &qword_1ECAB42E8, &qword_1D9193650);
          v83.value._rawValue = v38;
          v20 = v35;
          NSError.init(fsctlCode:userInfo:)(v39, v30, v83);
          v41 = v40;
          swift_willThrow();
        }

        else
        {
          v42 = v76[0];

          v41 = sub_1D9176A6C();

          swift_willThrow();
        }

        if (qword_1EDCD0F18 != -1)
        {
          swift_once();
        }

        v43 = sub_1D917744C();
        __swift_project_value_buffer(v43, qword_1EDCD0F20);
        v44 = v41;
        v45 = sub_1D917741C();
        v46 = sub_1D9178CFC();

        if (!os_log_type_enabled(v45, v46))
        {

LABEL_16:
          (*v69)(v75, v74);
          goto LABEL_17;
        }

        v47 = swift_slowAlloc();
        v48 = swift_slowAlloc();
        v68 = v20;
        v49 = v48;
        v81 = v48;
        *v47 = v65;
        v76[0] = v41;
        v50 = v41;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
        v51 = sub_1D917826C();
        v53 = sub_1D8CFA924(v51, v52, &v81);

        *(v47 + 4) = v53;
        v54 = v74;
        v55 = v75;
        _os_log_impl(&dword_1D8CEC000, v45, v46, "Unable to evaluate media for purgeability: %s", v47, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v49);
        v56 = v49;
        v20 = v68;
        MEMORY[0x1DA72CB90](v56, -1, -1);
        MEMORY[0x1DA72CB90](v47, -1, -1);

        v57 = v55;
        v18 = v66;
        (*v69)(v57, v54);
LABEL_17:
        v20 += v70;
        if (!--v15)
        {

          return v77;
        }
      }
    }

    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

uint64_t sub_1D8EF9BA0(uint64_t a1, uint64_t a2)
{
  v5 = *(v2 + 8);
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v6 = [swift_getObjCClassFromMetadata() fetchRequest];
  [v6 setPredicate_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D9189070;
  sub_1D917820C();
  v8 = objc_allocWithZone(MEMORY[0x1E696AEB0]);
  v9 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();

  v10 = [v8 initWithKey:v9 ascending:1];

  *(v7 + 32) = v10;
  sub_1D8CF2154(0, &qword_1EDCD09F0, 0x1E696AEB0);
  v11 = sub_1D91785DC();

  [v6 setSortDescriptors_];

  [v6 setResultType_];
  sub_1D8F60B24(v5);
  v12 = sub_1D91785DC();

  [v6 setPropertiesToFetch_];

  v15[2] = a2;
  v15[3] = v6;
  v13 = sub_1D90ACE28(sub_1D8F034E8, v15);

  return v13;
}

void sub_1D8EF9D98(uint64_t *i@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5250, &unk_1D9193760);
  v3 = sub_1D917908C();
  v15 = sub_1D8FBED0C(v3);

  if (v15)
  {
    v35 = i;
    v16 = v15[2];
    if (v16)
    {
      v17 = MEMORY[0x1E69E7CC0];
      for (i = 0; ; i = (i + 1))
      {
        while (1)
        {
          if (i >= v15[2])
          {
            __break(1u);
            swift_once();
            v4 = sub_1D917744C();
            __swift_project_value_buffer(v4, qword_1EDCD0F20);
            v5 = v15;
            v6 = sub_1D917741C();
            v7 = sub_1D9178CFC();

            if (os_log_type_enabled(v6, v7))
            {
              v8 = swift_slowAlloc();
              v9 = swift_slowAlloc();
              v36[0] = v9;
              *v8 = 136315138;
              v37[0] = v15;
              v10 = v15;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB4F40, &qword_1D918B680);
              v11 = sub_1D917826C();
              v13 = sub_1D8CFA924(v11, v12, v36);

              *(v8 + 4) = v13;
              _os_log_impl(&dword_1D8CEC000, v6, v7, "Failed to request episodes with expected downloads: %s", v8, 0xCu);
              __swift_destroy_boxed_opaque_existential_1Tm(v9);
              MEMORY[0x1DA72CB90](v9, -1, -1);
              MEMORY[0x1DA72CB90](v8, -1, -1);
            }

            goto LABEL_5;
          }

          v18 = v15[i + 4];
          sub_1D917820C();

          sub_1D91793EC();
          if (*(v18 + 16))
          {
            v19 = sub_1D8D6550C(v36);
            if (v20)
            {
              break;
            }
          }

          sub_1D8D9A308(v36);
LABEL_10:
          i = (i + 1);
          if (v16 == i)
          {
            goto LABEL_28;
          }
        }

        sub_1D8CFAD1C(*(v18 + 56) + 32 * v19, v37);
        sub_1D8D9A308(v36);

        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_10;
        }

        v21 = v38;
        if (!v38)
        {
          goto LABEL_10;
        }

        v34 = v37[4];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v17 = sub_1D8D4241C(0, *(v17 + 2) + 1, 1, v17);
        }

        v23 = *(v17 + 2);
        v22 = *(v17 + 3);
        v24 = v23 + 1;
        if (v23 >= v22 >> 1)
        {
          v33 = v23 + 1;
          v26 = v17;
          v27 = *(v17 + 2);
          v28 = sub_1D8D4241C((v22 > 1), v23 + 1, 1, v26);
          v24 = v33;
          v23 = v27;
          v17 = v28;
        }

        *(v17 + 2) = v24;
        v25 = &v17[16 * v23];
        *(v25 + 4) = v34;
        *(v25 + 5) = v21;
        if ((v16 - 1) == i)
        {
          goto LABEL_28;
        }
      }
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_28:

    v14 = sub_1D8FC0F28(v17);

    i = v35;
  }

  else
  {
    if (qword_1EDCD0F18 != -1)
    {
      swift_once();
    }

    v29 = sub_1D917744C();
    __swift_project_value_buffer(v29, qword_1EDCD0F20);
    v30 = sub_1D917741C();
    v31 = sub_1D9178CFC();
    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      *v32 = 0;
      _os_log_impl(&dword_1D8CEC000, v30, v31, "Unable to fetch episodes: Result is unexpected", v32, 2u);
      MEMORY[0x1DA72CB90](v32, -1, -1);
    }

LABEL_5:
    v14 = MEMORY[0x1E69E7CD0];
  }

  *i = v14;
}

void sub_1D8EFA1FC(uint64_t a3@<X2>, void *a4@<X8>)
{
  v64 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB5910, &qword_1D9188C90);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v63 = &v49 - v6;
  v7 = sub_1D9176C2C();
  v8 = *(v7 - 8);
  v61 = v7;
  v62 = v8;
  MEMORY[0x1EEE9AC00](v7);
  v54 = &v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB66F0, &qword_1D9192190);
  v55 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v53);
  v11 = (&v49 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v49 - v13;
  v15 = [objc_allocWithZone(MEMORY[0x1E695D5E0]) initWithEntityName_];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB75D0, &qword_1D9189180);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1D918C190;
  v17 = objc_opt_self();
  *(v16 + 32) = [v17 predicateForDownloaded:1 excludeHidden:0];
  v18 = _sSS18PodcastsFoundationE18userDefaultsObjectSo8NSStringCSgyF_0();
  v19 = [v17 predicateForAllEpisodesOnPodcastUuid_];

  *(v16 + 40) = v19;
  sub_1D8CF2154(0, &qword_1EDCD5B90, 0x1E696AE18);
  v20 = sub_1D91785DC();

  v21 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v15 setPredicate_];
  v22 = v15;
  sub_1D8CF2154(0, &qword_1EDCD5B00, off_1E85675C8);
  v23 = v65;
  v24 = sub_1D917908C();
  v52 = v23;
  if (v23)
  {

    return;
  }

  v25 = v24;
  v26 = v62;
  v60 = v14;
  v51 = v11;
  if (v24 >> 62)
  {
    goto LABEL_25;
  }

  v27 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
  v49 = v22;
  if (v27)
  {
LABEL_5:
    v22 = 0;
    v65 = v25 & 0xC000000000000001;
    v64 = v25 & 0xFFFFFFFFFFFFFF8;
    v57 = (v26 + 6);
    v50 = (v26 + 4);
    v62 = MEMORY[0x1E69E7CC0];
    v58 = v27;
    v59 = v25;
    v56 = a4;
    while (1)
    {
      if (v65)
      {
        v28 = MEMORY[0x1DA72AA90](v22, v25);
      }

      else
      {
        if (v22 >= *(v64 + 16))
        {
          goto LABEL_24;
        }

        v28 = *(v25 + 8 * v22 + 32);
      }

      v29 = v28;
      v26 = (v22 + 1);
      if (__OFADD__(v22, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
LABEL_25:
        v27 = sub_1D917935C();
        v49 = v22;
        if (!v27)
        {
          break;
        }

        goto LABEL_5;
      }

      v30 = [v28 uuid];
      if (v30)
      {
        v31 = v30;
        v32 = sub_1D917820C();
        v34 = v33;

        v35 = [v29 assetURL];
        if (v35)
        {
          v36 = v35;
          sub_1D917820C();

          sub_1D9176BFC();
          v37 = v63;

          v38 = v61;
          if ((*v57)(v37, 1, v61) == 1)
          {

            sub_1D8D08A50(v37, &unk_1ECAB5910, &qword_1D9188C90);
            a4 = v56;
            v27 = v58;
            v25 = v59;
          }

          else
          {
            v39 = *v50;
            v40 = v54;
            (*v50)(v54, v37, v38);
            v41 = *(v53 + 48);
            v42 = v51;
            *v51 = v32;
            v42[1] = v34;
            v43 = v42;
            v39(v42 + v41, v40, v38);
            sub_1D8F03228(v43, v60);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v62 = sub_1D8ECCB70(0, v62[2] + 1, 1, v62);
            }

            v27 = v58;
            v45 = v62[2];
            v44 = v62[3];
            v46 = v55;
            if (v45 >= v44 >> 1)
            {
              v48 = sub_1D8ECCB70((v44 > 1), v45 + 1, 1, v62);
              v46 = v55;
              v62 = v48;
            }

            v47 = v62;
            v62[2] = v45 + 1;
            sub_1D8F03228(v60, v47 + ((*(v46 + 80) + 32) & ~*(v46 + 80)) + *(v46 + 72) * v45);
            a4 = v56;
            v25 = v59;
          }

          goto LABEL_8;
        }
      }

LABEL_8:
      ++v22;
      if (v26 == v27)
      {
        goto LABEL_27;
      }
    }
  }

  v62 = MEMORY[0x1E69E7CC0];
LABEL_27:

  *a4 = v62;
}

uint64_t sub_1D8EFA814(uint64_t a1, uint64_t a2)
{
  if (*(a2 + 16) >= *(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    v5 = *(a2 + 16);
  }

  if (v5)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6820, &qword_1D9193770);
    v6 = sub_1D91797AC();
  }

  else
  {
    v6 = MEMORY[0x1E69E7CC8];
  }

  v9 = v6;
  sub_1D8F032C8(a1, a2, 1, &v9);

  v7 = v9;
  if (v2)
  {
  }

  return v7;
}

id sub_1D8EFA8D8(uint64_t a1)
{
  v11[1] = *MEMORY[0x1E69E9840];
  v2 = sub_1D9176B1C();
  v11[0] = 0;
  v3 = [swift_getObjCClassFromMetadata() fileHandleForReadingFromURL:v2 error:v11];

  v4 = v11[0];
  if (v3)
  {
    v5 = sub_1D9176C2C();
    v6 = *(*(v5 - 8) + 8);
    v7 = v4;
    v6(a1, v5);
  }

  else
  {
    v8 = v11[0];
    sub_1D9176A6C();

    swift_willThrow();
    v9 = sub_1D9176C2C();
    (*(*(v9 - 8) + 8))(a1, v9);
  }

  return v3;
}

uint64_t sub_1D8EFAA74(double *a1, double a2)
{
  v5 = *v2;
  v6 = sub_1D9179DAC();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if ((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
  {
    v9 = ~v7;
    while (1)
    {
      v10 = *(v5 + 48);
      if (*(v10 + 8 * v8) == a2)
      {
        break;
      }

      v8 = (v8 + 1) & v9;
      if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    a2 = *(v10 + 8 * v8);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_1D8EFE794(v8, isUniquelyReferenced_nonNull_native, a2);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFAB8C(uint64_t a1, void *a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v7 = *v4;
  sub_1D9179DBC();
  v25 = v4;
  v26 = a1;
  if (v5)
  {
    if (v5 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a2);
  }

  v8 = sub_1D9179E1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_25:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v29 = *v25;
    sub_1D8D5055C(a2, a3, v5);
    sub_1D8EFEA50(a2, a3, v5, v10, isUniquelyReferenced_nonNull_native);
    *v25 = v29;
    *v26 = a2;
    *(v26 + 8) = a3;
    *(v26 + 16) = v5;
    return 1;
  }

  v11 = ~v9;
  while (1)
  {
    v12 = *(v7 + 48) + 24 * v10;
    v13 = *v12;
    v14 = *(v12 + 16);
    if (!*(v12 + 16))
    {
      if (!v5 && v13 == a2)
      {
        goto LABEL_24;
      }

      goto LABEL_8;
    }

    v15 = *(v12 + 8);
    if (v14 != 1)
    {
      break;
    }

    if (v5 == 1)
    {
      sub_1D8CF2154(0, &qword_1EDCD07F8, 0x1E69E58C0);
      v16 = v13;
      v17 = sub_1D917914C();
      sub_1D8DA8564(v13, v15, 1);
      if (v17)
      {
        goto LABEL_23;
      }
    }

LABEL_8:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_25;
    }
  }

  if (v5 != 2)
  {
    goto LABEL_8;
  }

  v18 = v13 == a2 && v15 == a3;
  if (!v18 && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_8;
  }

LABEL_23:
  sub_1D8DA8564(a2, a3, v14);
LABEL_24:
  v19 = *(v7 + 48) + 24 * v10;
  v20 = *v19;
  v21 = *(v19 + 8);
  *v26 = *v19;
  *(v26 + 8) = v21;
  v22 = *(v19 + 16);
  *(v26 + 16) = v22;
  sub_1D8D5055C(v20, v21, v22);
  return 0;
}

uint64_t sub_1D8EFADF0(_BYTE *a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v7 = sub_1D9179E1C();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v11 = *&aStdq_5[8 * a2];
    while (*&aStdq_5[8 * *(*(v6 + 48) + v9)] != v11)
    {
      v12 = sub_1D9179ACC();
      swift_bridgeObjectRelease_n();
      if (v12)
      {
        goto LABEL_8;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    swift_bridgeObjectRelease_n();
LABEL_8:
    result = 0;
    LOBYTE(a2) = *(*(v6 + 48) + v9);
  }

  else
  {
LABEL_6:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D8EFECE0(a2, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFAF78(uint64_t *a1, void *a2, unint64_t *a3, void *a4, uint64_t *a5, uint64_t *a6)
{
  v11 = v6;
  v14 = *v6;
  if ((*v6 & 0xC000000000000001) != 0)
  {
    if (v14 < 0)
    {
      v15 = *v6;
    }

    else
    {
      v15 = v14 & 0xFFFFFFFFFFFFFF8;
    }

    v16 = a2;

    v17 = sub_1D917936C();

    if (v17)
    {

      sub_1D8CF2154(0, a3, a4);
      swift_dynamicCast();
      result = 0;
      *a1 = v36;
    }

    else
    {
      result = sub_1D917935C();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v27 = sub_1D8EFBF50(v15, result + 1, a5, a6, a3, a4);
        v28 = *(v27 + 16);
        if (*(v27 + 24) <= v28)
        {
          sub_1D8EFCB18(v28 + 1, a5, a6);
        }

        v29 = v16;
        sub_1D8EFE710(v29, v27);

        *v11 = v27;
        *a1 = v29;
        return 1;
      }
    }
  }

  else
  {
    sub_1D8CF2154(0, a3, a4);
    v19 = sub_1D917913C();
    v20 = -1 << *(v14 + 32);
    v21 = v19 & ~v20;
    if ((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21))
    {
      v22 = ~v20;
      while (1)
      {
        v23 = *(*(v14 + 48) + 8 * v21);
        v24 = sub_1D917914C();

        if (v24)
        {
          break;
        }

        v21 = (v21 + 1) & v22;
        if (((*(v14 + 56 + ((v21 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v21) & 1) == 0)
        {
          goto LABEL_11;
        }
      }

      v30 = *(*(v14 + 48) + 8 * v21);
      *a1 = v30;
      v31 = v30;
      return 0;
    }

    else
    {
LABEL_11:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v37 = *v11;
      v26 = a2;
      sub_1D8EFE8C0(v26, v21, isUniquelyReferenced_nonNull_native, a5, a6, a3, a4);
      *v11 = v37;
      *a1 = v26;
      return 1;
    }
  }

  return result;
}

uint64_t sub_1D8EFB1EC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_1D91793CC();
  v8 = -1 << *(v6 + 32);
  v9 = v7 & ~v8;
  if ((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (1)
    {
      sub_1D8D9A2A4(*(v6 + 48) + 40 * v9, v16);
      v11 = MEMORY[0x1DA72A9A0](v16, a2);
      sub_1D8D9A308(v16);
      if (v11)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      if (((*(v6 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    sub_1D8D9A308(a2);
    sub_1D8D9A2A4(*(v6 + 48) + 40 * v9, a1);
    return 0;
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    sub_1D8D9A2A4(a2, v16);
    v15 = *v3;
    sub_1D8EFEEA4(v16, v9, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    v13 = *(a2 + 16);
    *a1 = *a2;
    *(a1 + 16) = v13;
    *(a1 + 32) = *(a2 + 32);
    return 1;
  }
}

uint64_t sub_1D8EFB338(uint64_t a1, unint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a4;
  v35 = *v4;
  sub_1D9179DBC();
  v34 = v4;
  if (v5 > 1u)
  {
    if (v5 == 2)
    {
      v9 = 8;
    }

    else if (a2 > 1)
    {
      if (a2 ^ 2 | a3)
      {
        v9 = 6;
      }

      else
      {
        v9 = 4;
      }
    }

    else if (a2 | a3)
    {
      v9 = 2;
    }

    else
    {
      v9 = 1;
    }

    goto LABEL_6;
  }

  if (!v5)
  {
    v9 = 3;
LABEL_6:
    MEMORY[0x1DA72B390](v9);
    goto LABEL_8;
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_8:
  v10 = sub_1D9179E1C();
  v11 = -1 << *(v35 + 32);
  v12 = v10 & ~v11;
  if ((*(v35 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
  {
    v13 = ~v11;
    v14 = a2 != 3;
    v15 = a2 != 2;
    v16 = a2 != 1;
    if (a3)
    {
      v14 = 1;
      v15 = 1;
      v16 = 1;
    }

    v17 = v5 == 3;
    if (v5 != 3)
    {
      v14 = 1;
    }

    v33 = v14;
    v18 = v5 != 3 || v15;
    v32 = v18;
    v19 = v5 != 3 || v16;
    if (a3 | a2)
    {
      v17 = 0;
    }

    v30 = v17;
    v31 = v19;
    do
    {
      v20 = *(v35 + 48) + 24 * v12;
      v21 = *v20;
      v22 = *(v20 + 8);
      v23 = *(v20 + 16);
      if (v23 > 1)
      {
        if (v23 == 2)
        {
          if (v5 == 2)
          {
            goto LABEL_41;
          }
        }

        else if (v21 > 1)
        {
          if (v21 ^ 2 | v22)
          {
            if (!v33)
            {
LABEL_41:
              sub_1D8D02FE4(a2, a3, v5);
              sub_1D8D02FCC(v21, v22, v23);
              sub_1D8D02FCC(a2, a3, v5);
              v24 = *(v35 + 48) + 24 * v12;
              v25 = *v24;
              v26 = *(v24 + 8);
              *a1 = *v24;
              *(a1 + 8) = v26;
              v27 = *(v24 + 16);
              *(a1 + 16) = v27;
              sub_1D8D02FE4(v25, v26, v27);
              return 0;
            }
          }

          else if ((v32 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v21 | v22)
        {
          if ((v31 & 1) == 0)
          {
            goto LABEL_41;
          }
        }

        else if (v30)
        {
          goto LABEL_41;
        }
      }

      else if (*(v20 + 16))
      {
      }

      else if (!v5)
      {
        goto LABEL_41;
      }

      sub_1D8D02FE4(a2, a3, v5);
      sub_1D8D02FCC(v21, v22, v23);
      sub_1D8D02FCC(a2, a3, v5);
      v12 = (v12 + 1) & v13;
    }

    while (((*(v35 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) != 0);
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v36 = *v34;
  sub_1D8D02FE4(a2, a3, v5);
  sub_1D8EFF01C(a2, a3, v5, v12, isUniquelyReferenced_nonNull_native);
  *v34 = v36;
  *a1 = a2;
  *(a1 + 8) = a3;
  *(a1 + 16) = v5;
  return 1;
}

uint64_t sub_1D8EFB66C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (a3)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v8 = sub_1D9179E1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
LABEL_16:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1D8EFF388(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }

  v11 = ~v9;
  v12 = *(v7 + 48);
  while (1)
  {
    v13 = (v12 + 16 * v10);
    v14 = v13[1];
    if (v14)
    {
      break;
    }

    if (!a3)
    {
      goto LABEL_15;
    }

LABEL_6:
    v10 = (v10 + 1) & v11;
    if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      goto LABEL_16;
    }
  }

  if (!a3)
  {
    goto LABEL_6;
  }

  v15 = *v13 == a2 && v14 == a3;
  if (!v15 && (sub_1D9179ACC() & 1) == 0)
  {
    goto LABEL_6;
  }

LABEL_15:
  *a1 = *(*(v7 + 48) + 16 * v10);

  return 0;
}

uint64_t sub_1D8EFB7F4(_BYTE *a1, uint64_t a2)
{
  v4 = *v2;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v5 = sub_1D9179E1C();
  v6 = -1 << *(v4 + 32);
  v7 = v5 & ~v6;
  v25 = v4 + 56;
  if ((*(v4 + 56 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7))
  {
    v24 = ~v6;
    v8 = 0xEB00000000747361;
    v9 = 0xE900000000000065;
    v26 = v4;
    while (1)
    {
      v10 = *(*(v4 + 48) + v7);
      if (v10 <= 1)
      {
        if (*(*(v4 + 48) + v7))
        {
          v12 = v8;
        }

        else
        {
          v12 = 0xEC00000073747361;
        }

        v11 = 0x63646F5079616C70;
      }

      else if (v10 == 2)
      {
        v11 = 0x7461745379616C70;
        v12 = 0xEB000000006E6F69;
      }

      else
      {
        if (v10 == 3)
        {
          v11 = 0x6269726373627573;
        }

        else
        {
          v11 = 0x6D65744979616C70;
        }

        if (v10 == 3)
        {
          v12 = 0xE900000000000065;
        }

        else
        {
          v12 = 0xE800000000000000;
        }
      }

      if (a2 == 3)
      {
        v13 = 0x6269726373627573;
      }

      else
      {
        v13 = 0x6D65744979616C70;
      }

      if (a2 != 3)
      {
        v9 = 0xE800000000000000;
      }

      if (a2 == 2)
      {
        v13 = 0x7461745379616C70;
        v9 = 0xEB000000006E6F69;
      }

      v14 = a2 ? v8 : 0xEC00000073747361;
      v15 = a2 <= 1u ? 0x63646F5079616C70 : v13;
      v16 = a2 <= 1u ? v14 : v9;
      if (v11 == v15 && v12 == v16)
      {
        break;
      }

      v17 = a2;
      v18 = v8;
      v19 = sub_1D9179ACC();

      if (v19)
      {
        goto LABEL_38;
      }

      v7 = (v7 + 1) & v24;
      v8 = v18;
      a2 = v17;
      v9 = 0xE900000000000065;
      v4 = v26;
      if (((*(v25 + ((v7 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v7) & 1) == 0)
      {
        goto LABEL_36;
      }
    }

LABEL_38:
    result = 0;
    LOBYTE(a2) = *(*(v26 + 48) + v7);
  }

  else
  {
LABEL_36:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v27 = *v22;
    sub_1D8EFF544(a2, v7, isUniquelyReferenced_nonNull_native);
    *v22 = v27;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_1D8EFBAF4(uint64_t a1, uint64_t a2, __int16 a3)
{
  v7 = *v3;
  sub_1D9179DBC();
  v34 = v3;
  v35 = a1;
  sub_1D9179DDC();
  if ((a3 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a2);
  }

  v36 = a2;
  v39 = HIBYTE(a3);
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v8 = sub_1D9179E1C();
  v9 = v7 + 56;
  v10 = -1 << *(v7 + 32);
  v11 = v8 & ~v10;
  if (((*(v7 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
LABEL_52:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v40 = *v34;
    v32 = v36;
    sub_1D8EFF8C0(v36, a3 & 0xFF01, v11, isUniquelyReferenced_nonNull_native);
    *v34 = v40;
    result = 1;
    goto LABEL_53;
  }

  v12 = ~v10;
  v13 = 0x6C61727475656ELL;
  v38 = v7;
  v37 = a3;
  while (1)
  {
    v16 = *(v7 + 48) + 16 * v11;
    v17 = *(v16 + 9);
    if (*(v16 + 8))
    {
      if ((a3 & 1) == 0)
      {
        goto LABEL_6;
      }
    }

    else if ((a3 & 1) != 0 || *v16 != v36)
    {
      goto LABEL_6;
    }

    v18 = v17 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v19 = v17 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v20 = v17 ? v13 : 0x4C74736567677573;
    v21 = v17 ? 0xE700000000000000 : 0xEB00000000737365;
    v22 = v17 <= 1 ? v20 : v18;
    v23 = v17 <= 1 ? v21 : v19;
    v24 = v39 == 2 ? 0x657469726F766166 : 0x6E776F6E6B6E75;
    v25 = v39 == 2 ? 0xE900000000000064 : 0xE700000000000000;
    v26 = v39 ? v13 : 0x4C74736567677573;
    v27 = v39 ? 0xE700000000000000 : 0xEB00000000737365;
    v28 = v39 <= 1 ? v26 : v24;
    v29 = v39 <= 1 ? v27 : v25;
    if (v22 == v28 && v23 == v29)
    {
      break;
    }

    v14 = v13;
    v15 = sub_1D9179ACC();

    v13 = v14;
    a3 = v37;
    v7 = v38;
    if (v15)
    {
      goto LABEL_51;
    }

LABEL_6:
    v11 = (v11 + 1) & v12;
    if (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      goto LABEL_52;
    }
  }

  v7 = v38;
LABEL_51:
  result = 0;
  v31 = *(v7 + 48) + 16 * v11;
  v32 = *v31;
  LOBYTE(a3) = *(v31 + 8);
  LOBYTE(v39) = *(v31 + 9);
LABEL_53:
  *v35 = v32;
  *(v35 + 8) = a3 & 1;
  *(v35 + 9) = v39;
  return result;
}

uint64_t sub_1D8EFBE2C(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1D9179DBC();
  sub_1D9179FAC();
  v8 = sub_1D9179E1C();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while ((sub_1D9179F9C() & 1) == 0)
    {
      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    v14 = (*(v7 + 48) + 16 * v10);
    a2 = *v14;
    a3 = v14[1];
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v15 = *v3;
    sub_1D8EFFC50(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v15;
    result = 1;
  }

  *a1 = a2;
  a1[1] = a3;
  return result;
}

uint64_t sub_1D8EFBF50(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, unint64_t *a5, void *a6)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
    v10 = sub_1D917941C();
    v23 = v10;
    sub_1D917931C();
    if (sub_1D917938C())
    {
      sub_1D8CF2154(0, a5, a6);
      do
      {
        swift_dynamicCast();
        v17 = *(v10 + 16);
        if (*(v10 + 24) <= v17)
        {
          sub_1D8EFCB18(v17 + 1, a3, a4);
        }

        v10 = v23;
        result = sub_1D917913C();
        v12 = v23 + 56;
        v13 = -1 << *(v23 + 32);
        v14 = result & ~v13;
        v15 = v14 >> 6;
        if (((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6))) != 0)
        {
          v16 = __clz(__rbit64((-1 << v14) & ~*(v23 + 56 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v18 = 0;
          v19 = (63 - v13) >> 6;
          do
          {
            if (++v15 == v19 && (v18 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v20 = v15 == v19;
            if (v15 == v19)
            {
              v15 = 0;
            }

            v18 |= v20;
            v21 = *(v12 + 8 * v15);
          }

          while (v21 == -1);
          v16 = __clz(__rbit64(~v21)) + (v15 << 6);
        }

        *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
        *(*(v23 + 48) + 8 * v16) = v22;
        ++*(v23 + 16);
      }

      while (sub_1D917938C());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return v10;
}

uint64_t sub_1D8EFC188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6848, &qword_1D9193788);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1D9179DAC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFC3BC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6840, &qword_1D9193780);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9179DBC();
      if (v21)
      {
        if (v21 == 1)
        {
          MEMORY[0x1DA72B390](1);
          sub_1D917915C();
        }

        else
        {
          MEMORY[0x1DA72B390](2);
          _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        }
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v19);
      }

      result = sub_1D9179E1C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_35;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFC678(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6720, &unk_1D91936D8);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    v25 = v2;
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      result = sub_1D9179DAC();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + 8 * v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    if (v8 >= 64)
    {
      bzero((v3 + 56), 8 * v11);
    }

    else
    {
      *v7 = -1 << v8;
    }

    v2 = v25;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFC89C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6830, &qword_1D9193778);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFCB18(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = v3;
  v5 = *v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  result = sub_1D917940C();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(*(v5 + 48) + 8 * (v16 | (v8 << 6)));
      result = sub_1D917913C();
      v20 = -1 << *(v7 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v14 + 8 * (v21 >> 6))) == 0)
      {
        v23 = 0;
        v24 = (63 - v20) >> 6;
        while (++v22 != v24 || (v23 & 1) == 0)
        {
          v25 = v22 == v24;
          if (v22 == v24)
          {
            v22 = 0;
          }

          v23 |= v25;
          v26 = *(v14 + 8 * v22);
          if (v26 != -1)
          {
            v15 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v21) & ~*(v14 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + 8 * v15) = v19;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v27 = 1 << *(v5 + 32);
    if (v27 >= 64)
    {
      bzero((v5 + 56), ((v27 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v27;
    }

    *(v5 + 16) = 0;
  }

  *v4 = v7;
  return result;
}

uint64_t sub_1D8EFCD38(uint64_t a1)
{
  v2 = v1;
  v36 = sub_1D9176EAC();
  v3 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v35 = &v29 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB67A8, &qword_1D9193748);
  result = sub_1D917940C();
  v7 = result;
  if (*(v5 + 16))
  {
    v30 = v1;
    v31 = v5;
    v8 = 0;
    v9 = (v5 + 56);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 56);
    v13 = (v10 + 63) >> 6;
    v34 = v3 + 32;
    v14 = result + 56;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = *(v5 + 48) + *(v3 + 72) * (v16 | (v8 << 6));
      v20 = *(v3 + 32);
      v32 = *(v3 + 72);
      v33 = v20;
      v20(v35, v19, v36);
      sub_1D8D11168(&qword_1EDCD5920, MEMORY[0x1E69695B8]);
      result = sub_1D917813C();
      v21 = -1 << *(v7 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v14 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v14 + 8 * v23);
          if (v27 != -1)
          {
            v15 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v22) & ~*(v14 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      result = v33(*(v7 + 48) + v15 * v32, v35, v36);
      ++*(v7 + 16);
      v5 = v31;
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v8 >= v13)
      {
        break;
      }

      v18 = v9[v8];
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v12 = (v18 - 1) & v18;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v5 + 32);
    if (v28 >= 64)
    {
      bzero(v9, ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v28;
    }

    v2 = v30;
    *(v5 + 16) = 0;
  }

  *v2 = v7;
  return result;
}

uint64_t sub_1D8EFD080(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6798, &qword_1D9193738);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 40 * (v15 | (v6 << 6));
      v27 = *v18;
      v28 = *(v18 + 16);
      v29 = *(v18 + 32);
      result = sub_1D91793CC();
      v19 = -1 << *(v5 + 32);
      v20 = result & ~v19;
      v21 = v20 >> 6;
      if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
      {
        v22 = 0;
        v23 = (63 - v19) >> 6;
        while (++v21 != v23 || (v22 & 1) == 0)
        {
          v24 = v21 == v23;
          if (v21 == v23)
          {
            v21 = 0;
          }

          v22 |= v24;
          v25 = *(v12 + 8 * v21);
          if (v25 != -1)
          {
            v13 = __clz(__rbit64(~v25)) + (v21 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 40 * v13;
      *v14 = v27;
      *(v14 + 16) = v28;
      *(v14 + 32) = v29;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      bzero((v3 + 56), ((v26 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v26;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFD2E0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6790, &qword_1D9193730);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9179DBC();
      if (v21 == 1)
      {
        MEMORY[0x1DA72B390](1);
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      else
      {
        MEMORY[0x1DA72B390](0);
        MEMORY[0x1DA72B3C0](v19);
      }

      result = sub_1D9179E1C();
      v22 = -1 << *(v5 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v12 + 8 * (v23 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v22) >> 6;
        while (++v24 != v26 || (v25 & 1) == 0)
        {
          v27 = v24 == v26;
          if (v24 == v26)
          {
            v24 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v24);
          if (v28 != -1)
          {
            v13 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_33:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v30;
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_33;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFD580(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6788, &unk_1D91B3630);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v31 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (1)
    {
      if (!v10)
      {
        v16 = v6;
        while (1)
        {
          v6 = v16 + 1;
          if (__OFADD__(v16, 1))
          {
            __break(1u);
            goto LABEL_44;
          }

          if (v6 >= v11)
          {
            break;
          }

          v17 = v7[v6];
          ++v16;
          if (v17)
          {
            v15 = __clz(__rbit64(v17));
            v10 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v30 = 1 << *(v3 + 32);
        if (v30 >= 64)
        {
          bzero(v7, ((v30 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
        }

        else
        {
          *v7 = -1 << v30;
        }

        v2 = v1;
        *(v3 + 16) = 0;
        goto LABEL_42;
      }

      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = *(v3 + 48) + 24 * (v15 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      sub_1D9179DBC();
      if (v21 > 1)
      {
        break;
      }

      if (!v21)
      {
        v22 = 3;
LABEL_20:
        MEMORY[0x1DA72B390](v22);
        goto LABEL_22;
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
LABEL_22:
      result = sub_1D9179E1C();
      v23 = -1 << *(v5 + 32);
      v24 = result & ~v23;
      v25 = v24 >> 6;
      if (((-1 << v24) & ~*(v12 + 8 * (v24 >> 6))) == 0)
      {
        v26 = 0;
        v27 = (63 - v23) >> 6;
        while (++v25 != v27 || (v26 & 1) == 0)
        {
          v28 = v25 == v27;
          if (v25 == v27)
          {
            v25 = 0;
          }

          v26 |= v28;
          v29 = *(v12 + 8 * v25);
          if (v29 != -1)
          {
            v13 = __clz(__rbit64(~v29)) + (v25 << 6);
            goto LABEL_7;
          }
        }

LABEL_44:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v24) & ~*(v12 + 8 * (v24 >> 6)))) | v24 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = *(v5 + 48) + 24 * v13;
      *v14 = v19;
      *(v14 + 8) = v20;
      *(v14 + 16) = v21;
      ++*(v5 + 16);
      v3 = v31;
    }

    if (v21 == 2)
    {
      v22 = 8;
    }

    else if (v19 > 1)
    {
      if (v19 ^ 2 | v20)
      {
        v22 = 6;
      }

      else
      {
        v22 = 4;
      }
    }

    else if (v19 | v20)
    {
      v22 = 2;
    }

    else
    {
      v22 = 1;
    }

    goto LABEL_20;
  }

LABEL_42:

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFD870(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECAB6730, &qword_1D91936E8);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v20 = *v18;
      v19 = v18[1];
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v19)
      {
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      }

      result = sub_1D9179E1C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v20;
      v14[1] = v19;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFDAEC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6780, &unk_1D9193720);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_1D9179DBC();
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v18 = -1 << *(v5 + 32);
      v19 = result & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
      {
        v21 = 0;
        v22 = (63 - v18) >> 6;
        while (++v20 != v22 || (v21 & 1) == 0)
        {
          v23 = v20 == v22;
          if (v20 == v22)
          {
            v20 = 0;
          }

          v21 |= v23;
          v24 = *(v12 + 8 * v20);
          if (v24 != -1)
          {
            v13 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      *(*(v5 + 48) + v13) = v17;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v16 = v7[v6];
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v10 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    v25 = 1 << *(v3 + 32);
    if (v25 >= 64)
    {
      bzero((v3 + 56), ((v25 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v25;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFDDD8(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6778, &qword_1D9193718);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v30 = v3;
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v18 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_16:
      v21 = *(v3 + 48) + 16 * (v18 | (v6 << 6));
      v22 = *v21;
      v23 = *(v21 + 8);
      v24 = *(v21 + 9);
      sub_1D9179DBC();
      sub_1D9179DDC();
      if (v23 != 1)
      {
        MEMORY[0x1DA72B3C0](v22);
      }

      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

      result = sub_1D9179E1C();
      v13 = -1 << *(v5 + 32);
      v14 = result & ~v13;
      v15 = v14 >> 6;
      if (((-1 << v14) & ~*(v12 + 8 * (v14 >> 6))) == 0)
      {
        v25 = 0;
        v26 = (63 - v13) >> 6;
        while (++v15 != v26 || (v25 & 1) == 0)
        {
          v27 = v15 == v26;
          if (v15 == v26)
          {
            v15 = 0;
          }

          v25 |= v27;
          v28 = *(v12 + 8 * v15);
          if (v28 != -1)
          {
            v16 = __clz(__rbit64(~v28)) + (v15 << 6);
            goto LABEL_8;
          }
        }

LABEL_32:
        __break(1u);
        return result;
      }

      v16 = __clz(__rbit64((-1 << v14) & ~*(v12 + 8 * (v14 >> 6)))) | v14 & 0x7FFFFFFFFFFFFFC0;
LABEL_8:
      *(v12 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      v17 = *(v5 + 48) + 16 * v16;
      *v17 = v22;
      *(v17 + 8) = v23;
      *(v17 + 9) = v24;
      ++*(v5 + 16);
      v3 = v30;
    }

    v19 = v6;
    while (1)
    {
      v6 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        __break(1u);
        goto LABEL_32;
      }

      if (v6 >= v11)
      {
        break;
      }

      v20 = v7[v6];
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v10 = (v20 - 1) & v20;
        goto LABEL_16;
      }
    }

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero(v7, ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

uint64_t sub_1D8EFE0FC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6718, &qword_1D91936D0);
  v4 = sub_1D917940C();
  v5 = v4;
  if (*(v3 + 16))
  {
    v42 = v1;
    v6 = 0;
    v43 = (v3 + 56);
    v44 = v3;
    v7 = 1 << *(v3 + 32);
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v9 = v8 & *(v3 + 56);
    v10 = (v7 + 63) >> 6;
    v11 = v4 + 56;
    v45 = v4;
    while (1)
    {
      if (!v9)
      {
        v15 = v6;
        result = v43;
        while (1)
        {
          v6 = v15 + 1;
          if (__OFADD__(v15, 1))
          {
            __break(1u);
            goto LABEL_41;
          }

          if (v6 >= v10)
          {
            break;
          }

          v17 = v43[v6];
          ++v15;
          if (v17)
          {
            v14 = __clz(__rbit64(v17));
            v46 = (v17 - 1) & v17;
            goto LABEL_15;
          }
        }

        v39 = 1 << *(v3 + 32);
        if (v39 >= 64)
        {
          v40 = v5;
          bzero(v43, ((v39 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
          v5 = v40;
        }

        else
        {
          *v43 = -1 << v39;
        }

        v2 = v42;
        *(v3 + 16) = 0;
        goto LABEL_39;
      }

      v14 = __clz(__rbit64(v9));
      v46 = (v9 - 1) & v9;
LABEL_15:
      v18 = *(v3 + 48) + 72 * (v14 | (v6 << 6));
      v19 = *v18;
      v20 = *(v18 + 8);
      v21 = *(v18 + 16);
      v22 = *(v18 + 24);
      *v51 = *(v18 + 25);
      *&v51[3] = *(v18 + 28);
      v23 = *(v18 + 32);
      v24 = *(v18 + 40);
      v25 = *(v18 + 48);
      v49 = *(v18 + 64);
      v50 = *(v18 + 56);
      sub_1D9179DBC();
      v47 = v20;
      v48 = v19;
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      if (v22)
      {
        v26 = v21;
        sub_1D9179DDC();
      }

      else
      {
        sub_1D9179DDC();
        v26 = v21;
        MEMORY[0x1DA72B3C0](v21);
      }

      v27 = v23;
      v28 = v25;
      if (!v25)
      {
        break;
      }

      v29 = v24;
      if (v25 == 1)
      {
        MEMORY[0x1DA72B390](1);
LABEL_24:
        v31 = v49;
        v30 = v50;
        goto LABEL_26;
      }

      v31 = v49;
      v30 = v50;
      if (v28 == 2)
      {
        MEMORY[0x1DA72B390](3);
      }

      else
      {
        MEMORY[0x1DA72B390](2);
        sub_1D9179DDC();
        _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
        sub_1D9179DDC();
        MEMORY[0x1DA72B3C0](v49);
      }

LABEL_26:
      result = sub_1D9179E1C();
      v5 = v45;
      v32 = -1 << *(v45 + 32);
      v33 = result & ~v32;
      v34 = v33 >> 6;
      if (((-1 << v33) & ~*(v11 + 8 * (v33 >> 6))) == 0)
      {
        v35 = 0;
        v36 = (63 - v32) >> 6;
        while (++v34 != v36 || (v35 & 1) == 0)
        {
          v37 = v34 == v36;
          if (v34 == v36)
          {
            v34 = 0;
          }

          v35 |= v37;
          v38 = *(v11 + 8 * v34);
          if (v38 != -1)
          {
            v12 = __clz(__rbit64(~v38)) + (v34 << 6);
            goto LABEL_7;
          }
        }

LABEL_41:
        __break(1u);
        return result;
      }

      v12 = __clz(__rbit64((-1 << v33) & ~*(v11 + 8 * (v33 >> 6)))) | v33 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = *(v45 + 48) + 72 * v12;
      *v13 = v48;
      *(v13 + 8) = v47;
      *(v13 + 16) = v26;
      *(v13 + 24) = v22;
      *(v13 + 25) = *v51;
      *(v13 + 28) = *&v51[3];
      *(v13 + 32) = v27;
      *(v13 + 40) = v29;
      *(v13 + 48) = v28;
      *(v13 + 56) = v30;
      *(v13 + 64) = v31;
      ++*(v45 + 16);
      v3 = v44;
      v9 = v46;
    }

    MEMORY[0x1DA72B390](0);
    v29 = v24;
    goto LABEL_24;
  }

LABEL_39:
  v41 = v5;

  *v2 = v41;
  return result;
}

uint64_t sub_1D8EFE4B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6770, &qword_1D9193710);
  result = sub_1D917940C();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
    v7 = (v3 + 56);
    v8 = 1 << *(v3 + 32);
    if (v8 < 64)
    {
      v9 = ~(-1 << v8);
    }

    else
    {
      v9 = -1;
    }

    v10 = v9 & *(v3 + 56);
    v11 = (v8 + 63) >> 6;
    v12 = result + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_1D9179DBC();
      sub_1D9179FAC();
      result = sub_1D9179E1C();
      v21 = -1 << *(v5 + 32);
      v22 = result & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v12 + 8 * (v22 >> 6))) == 0)
      {
        v24 = 0;
        v25 = (63 - v21) >> 6;
        while (++v23 != v25 || (v24 & 1) == 0)
        {
          v26 = v23 == v25;
          if (v23 == v25)
          {
            v23 = 0;
          }

          v24 |= v26;
          v27 = *(v12 + 8 * v23);
          if (v27 != -1)
          {
            v13 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

LABEL_30:
        __break(1u);
        return result;
      }

      v13 = __clz(__rbit64((-1 << v22) & ~*(v12 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v12 + ((v13 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v13;
      v14 = (*(v5 + 48) + 16 * v13);
      *v14 = v19;
      v14[1] = v20;
      ++*(v5 + 16);
    }

    v16 = v6;
    while (1)
    {
      v6 = v16 + 1;
      if (__OFADD__(v16, 1))
      {
        __break(1u);
        goto LABEL_30;
      }

      if (v6 >= v11)
      {
        break;
      }

      v17 = v7[v6];
      ++v16;
      if (v17)
      {
        v15 = __clz(__rbit64(v17));
        v10 = (v17 - 1) & v17;
        goto LABEL_15;
      }
    }

    v28 = 1 << *(v3 + 32);
    if (v28 >= 64)
    {
      bzero((v3 + 56), ((v28 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v28;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
  return result;
}

unint64_t sub_1D8EFE710(uint64_t a1, uint64_t a2)
{
  sub_1D917913C();
  result = sub_1D91792FC();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

unint64_t sub_1D8EFE794(unint64_t result, char a2, double a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a2 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a2)
  {
    sub_1D8EFC188(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = result;
      sub_1D8EFFF00();
      result = v7;
      goto LABEL_12;
    }

    sub_1D8F01160(v5 + 1);
  }

  v8 = *v3;
  v9 = sub_1D9179DAC();
  v10 = -1 << *(v8 + 32);
  result = v9 & ~v10;
  if ((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result))
  {
    v11 = ~v10;
    while (*(*(v8 + 48) + 8 * result) != a3)
    {
      result = (result + 1) & v11;
      if (((*(v8 + 56 + ((result >> 3) & 0xFFFFFFFFFFFFFF8)) >> result) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v12 = *v3;
  *(*v3 + 8 * (result >> 6) + 56) |= 1 << result;
  *(*(v12 + 48) + 8 * result) = a3;
  v13 = *(v12 + 16);
  v14 = __OFADD__(v13, 1);
  v15 = v13 + 1;
  if (!v14)
  {
    *(v12 + 16) = v15;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

void sub_1D8EFE8C0(uint64_t a1, unint64_t a2, char a3, uint64_t *a4, uint64_t *a5, unint64_t *a6, void *a7)
{
  v10 = *(*v7 + 16);
  v11 = *(*v7 + 24);
  if (v11 > v10 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    v12 = a6;
    v13 = a7;
    sub_1D8EFCB18(v10 + 1, a4, a5);
  }

  else
  {
    if (v11 > v10)
    {
      sub_1D8F002F0(a4, a5);
      goto LABEL_12;
    }

    v12 = a6;
    v13 = a7;
    sub_1D8F01A20(v10 + 1, a4, a5);
  }

  v14 = *v7;
  v15 = sub_1D917913C();
  v16 = -1 << *(v14 + 32);
  a2 = v15 & ~v16;
  if ((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v17 = ~v16;
    sub_1D8CF2154(0, v12, v13);
    do
    {
      v18 = *(*(v14 + 48) + 8 * a2);
      v19 = sub_1D917914C();

      if (v19)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v17;
    }

    while (((*(v14 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v20 = *v7;
  *(*v7 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v20 + 48) + 8 * a2) = a1;
  v21 = *(v20 + 16);
  v22 = __OFADD__(v21, 1);
  v23 = v21 + 1;
  if (!v22)
  {
    *(v20 + 16) = v23;
    return;
  }

  __break(1u);
LABEL_15:
  sub_1D9179CEC();
  __break(1u);
}

void sub_1D8EFEA50(void *a1, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = *(*v5 + 16);
  v10 = *(*v5 + 24);
  if (v10 > v9 && (a5 & 1) != 0)
  {
    goto LABEL_31;
  }

  if (a5)
  {
    sub_1D8EFC3BC(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1D8F00948(&qword_1ECAB6840, &qword_1D9193780, sub_1D8D5055C);
      goto LABEL_31;
    }

    sub_1D8F01360(v9 + 1);
  }

  v11 = *v5;
  sub_1D9179DBC();
  if (a3)
  {
    if (a3 == 1)
    {
      MEMORY[0x1DA72B390](1);
      sub_1D917915C();
    }

    else
    {
      MEMORY[0x1DA72B390](2);
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
    }
  }

  else
  {
    MEMORY[0x1DA72B390](0);
    MEMORY[0x1DA72B3C0](a1);
  }

  v12 = sub_1D9179E1C();
  v13 = -1 << *(v11 + 32);
  a4 = v12 & ~v13;
  if ((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4))
  {
    v14 = ~v13;
    do
    {
      v15 = *(v11 + 48) + 24 * a4;
      v16 = *v15;
      if (*(v15 + 16))
      {
        v17 = *(v15 + 8);
        if (*(v15 + 16) == 1)
        {
          if (a3 == 1)
          {
            sub_1D8CF2154(0, &qword_1EDCD07F8, 0x1E69E58C0);
            v18 = v16;
            v19 = sub_1D917914C();
            sub_1D8DA8564(v16, v17, 1);
            if (v19)
            {
              goto LABEL_30;
            }
          }
        }

        else if (a3 == 2)
        {
          v20 = v16 == a1 && v17 == a2;
          if (v20 || (sub_1D9179ACC() & 1) != 0)
          {
LABEL_30:
            sub_1D9179CEC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a3 && v16 == a1)
      {
        goto LABEL_30;
      }

      a4 = (a4 + 1) & v14;
    }

    while (((*(v11 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) != 0);
  }

LABEL_31:
  v21 = *v26;
  *(*v26 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v22 = *(v21 + 48) + 24 * a4;
  *v22 = a1;
  *(v22 + 8) = a2;
  *(v22 + 16) = a3;
  v23 = *(v21 + 16);
  v24 = __OFADD__(v23, 1);
  v25 = v23 + 1;
  if (v24)
  {
    __break(1u);
  }

  else
  {
    *(v21 + 16) = v25;
  }
}

uint64_t sub_1D8EFECE0(uint64_t result, unint64_t a2, uint64_t a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_13;
  }

  if (a3)
  {
    sub_1D8EFC89C(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D8F00C00(&unk_1ECAB6830, &qword_1D9193778);
      goto LABEL_13;
    }

    sub_1D8F017E8(v7 + 1);
  }

  v9 = *v3;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  result = sub_1D9179E1C();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = *&aStdq_5[8 * v6];
    while (*&aStdq_5[8 * *(*(v9 + 48) + a2)] != v12)
    {
      v13 = sub_1D9179ACC();
      result = swift_bridgeObjectRelease_n();
      if (v13)
      {
        goto LABEL_17;
      }

      a2 = (a2 + 1) & v11;
      if (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_13;
      }
    }

    goto LABEL_16;
  }

LABEL_13:
  v14 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + a2) = v6;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_16:
  swift_bridgeObjectRelease_n();
LABEL_17:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

uint64_t sub_1D8EFEEA4(uint64_t result, unint64_t a2, char a3)
{
  v4 = v3;
  v6 = result;
  v7 = *(*v3 + 16);
  v8 = *(*v3 + 24);
  if (v8 > v7 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1D8EFD080(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      result = sub_1D8F00668();
      goto LABEL_12;
    }

    sub_1D8F01C2C(v7 + 1);
  }

  v9 = *v3;
  result = sub_1D91793CC();
  v10 = -1 << *(v9 + 32);
  a2 = result & ~v10;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    do
    {
      sub_1D8D9A2A4(*(v9 + 48) + 40 * a2, v19);
      v12 = MEMORY[0x1DA72A9A0](v19, v6);
      result = sub_1D8D9A308(v19);
      if (v12)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  v14 = *(v13 + 48) + 40 * a2;
  v15 = *(v6 + 16);
  *v14 = *v6;
  *(v14 + 16) = v15;
  *(v14 + 32) = *(v6 + 32);
  v16 = *(v13 + 16);
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (!v17)
  {
    *(v13 + 16) = v18;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

unint64_t sub_1D8EFF01C(unint64_t result, uint64_t a2, char a3, unint64_t a4, char a5)
{
  v9 = result;
  v10 = *(*v5 + 16);
  v11 = *(*v5 + 24);
  if (v11 > v10 && (a5 & 1) != 0)
  {
    goto LABEL_48;
  }

  if (a5)
  {
    sub_1D8EFD580(v10 + 1);
  }

  else
  {
    if (v11 > v10)
    {
      result = sub_1D8F00948(&qword_1ECAB6788, &unk_1D91B3630, sub_1D8D02FE4);
      goto LABEL_48;
    }

    sub_1D8F020D0(v10 + 1);
  }

  v12 = *v5;
  sub_1D9179DBC();
  if (a3 > 1u)
  {
    if (a3 == 2)
    {
      v13 = 8;
    }

    else if (v9 > 1)
    {
      if (v9 ^ 2 | a2)
      {
        v13 = 6;
      }

      else
      {
        v13 = 4;
      }
    }

    else if (v9 | a2)
    {
      v13 = 2;
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    if (a3)
    {
      _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
      goto LABEL_15;
    }

    v13 = 3;
  }

  MEMORY[0x1DA72B390](v13);
LABEL_15:
  result = sub_1D9179E1C();
  v14 = -1 << *(v12 + 32);
  a4 = result & ~v14;
  if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
  {
    goto LABEL_48;
  }

  v15 = ~v14;
  v16 = v9 != 3;
  v17 = v9 != 2;
  v18 = v9 != 1;
  if (a2)
  {
    v16 = 1;
    v17 = 1;
    v18 = 1;
  }

  v19 = a3 == 3;
  if (a3 != 3)
  {
    v16 = 1;
  }

  v34 = v16;
  v20 = a3 != 3 || v17;
  v33 = v20;
  v21 = a3 != 3 || v18;
  if (a2 | v9)
  {
    v19 = 0;
  }

  v31 = v19;
  v32 = v21;
  while (1)
  {
    v22 = *(v12 + 48) + 24 * a4;
    v23 = *v22;
    v24 = *(v22 + 8);
    v25 = *(v22 + 16);
    if (v25 <= 1)
    {
      if (*(v22 + 16))
      {
      }

      else if (!a3)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v25 == 2)
    {
      if (a3 == 2)
      {
        goto LABEL_47;
      }

      goto LABEL_30;
    }

    if (v23 > 1)
    {
      break;
    }

    if (v23 | v24)
    {
      if ((v32 & 1) == 0)
      {
        goto LABEL_47;
      }
    }

    else if (v31)
    {
      goto LABEL_47;
    }

LABEL_30:
    sub_1D8D02FE4(v9, a2, a3);
    sub_1D8D02FCC(v23, v24, v25);
    result = sub_1D8D02FCC(v9, a2, a3);
    a4 = (a4 + 1) & v15;
    if (((*(v12 + 56 + ((a4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a4) & 1) == 0)
    {
      goto LABEL_48;
    }
  }

  if (!(v23 ^ 2 | v24))
  {
    if ((v33 & 1) == 0)
    {
      goto LABEL_47;
    }

    goto LABEL_30;
  }

  if (v34)
  {
    goto LABEL_30;
  }

LABEL_47:
  sub_1D8D02FE4(v9, a2, a3);
  sub_1D8D02FCC(v23, v24, v25);
  sub_1D8D02FCC(v9, a2, a3);
  result = sub_1D9179CEC();
  __break(1u);
LABEL_48:
  v26 = *v35;
  *(*v35 + 8 * (a4 >> 6) + 56) |= 1 << a4;
  v27 = *(v26 + 48) + 24 * a4;
  *v27 = v9;
  *(v27 + 8) = a2;
  *(v27 + 16) = a3;
  v28 = *(v26 + 16);
  v29 = __OFADD__(v28, 1);
  v30 = v28 + 1;
  if (v29)
  {
    __break(1u);
  }

  else
  {
    *(v26 + 16) = v30;
  }

  return result;
}

void sub_1D8EFF388(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v5 = v4;
  v9 = *(*v4 + 16);
  v10 = *(*v4 + 24);
  if (v10 > v9 && (a4 & 1) != 0)
  {
    goto LABEL_22;
  }

  if (a4)
  {
    sub_1D8EFD870(v9 + 1);
  }

  else
  {
    if (v10 > v9)
    {
      sub_1D8F00AA8();
      goto LABEL_22;
    }

    sub_1D8F02398(v9 + 1);
  }

  v11 = *v4;
  sub_1D9179DBC();
  sub_1D9179DDC();
  if (a2)
  {
    _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();
  }

  v12 = sub_1D9179E1C();
  v13 = v11 + 56;
  v14 = -1 << *(v11 + 32);
  a3 = v12 & ~v14;
  if ((*(v11 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v15 = ~v14;
    v16 = *(v11 + 48);
    do
    {
      v17 = (v16 + 16 * a3);
      v18 = v17[1];
      if (v18)
      {
        if (a2)
        {
          v19 = *v17 == result && v18 == a2;
          if (v19 || (sub_1D9179ACC() & 1) != 0)
          {
LABEL_21:
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB5900, &unk_1D9191B80);
            sub_1D9179CEC();
            __break(1u);
            break;
          }
        }
      }

      else if (!a2)
      {
        goto LABEL_21;
      }

      a3 = (a3 + 1) & v15;
    }

    while (((*(v13 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_22:
  v20 = *v5;
  *(*v5 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v21 = (*(v20 + 48) + 16 * a3);
  *v21 = result;
  v21[1] = a2;
  v22 = *(v20 + 16);
  v23 = __OFADD__(v22, 1);
  v24 = v22 + 1;
  if (v23)
  {
    __break(1u);
  }

  else
  {
    *(v20 + 16) = v24;
  }
}

void sub_1D8EFF544(unsigned __int8 a1, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_42;
  }

  if (a3)
  {
    sub_1D8EFDAEC(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      sub_1D8F00C00(&qword_1ECAB6780, &unk_1D9193720);
      goto LABEL_42;
    }

    sub_1D8F025EC(v5 + 1);
  }

  v7 = 0xEC00000073747361;
  v8 = 0x63646F5079616C70;
  v9 = *v3;
  sub_1D9179DBC();
  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v10 = sub_1D9179E1C();
  v11 = -1 << *(v9 + 32);
  a2 = v10 & ~v11;
  v35 = v9 + 56;
  if ((*(v9 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v34 = ~v11;
    v12 = 0xEB00000000747361;
    v13 = 0x6D65744979616C70;
    v14 = 0x6269726373627573;
    v15 = v9;
    do
    {
      v16 = *(*(v9 + 48) + a2);
      if (v16 <= 1)
      {
        if (*(*(v9 + 48) + a2))
        {
          v18 = v12;
        }

        else
        {
          v18 = v7;
        }

        v17 = v8;
      }

      else if (v16 == 2)
      {
        v17 = 0x7461745379616C70;
        v18 = 0xEB000000006E6F69;
      }

      else
      {
        if (v16 == 3)
        {
          v17 = v14;
        }

        else
        {
          v17 = v13;
        }

        if (v16 == 3)
        {
          v18 = 0xE900000000000065;
        }

        else
        {
          v18 = 0xE800000000000000;
        }
      }

      v19 = v13;
      v20 = v14;
      if (a1 == 3)
      {
        v21 = v14;
      }

      else
      {
        v21 = v13;
      }

      v22 = 0xE900000000000065;
      if (a1 != 3)
      {
        v22 = 0xE800000000000000;
      }

      if (a1 == 2)
      {
        v21 = 0x7461745379616C70;
        v22 = 0xEB000000006E6F69;
      }

      v23 = v7;
      v24 = v12;
      if (!a1)
      {
        v12 = v7;
      }

      v25 = a1 <= 1u ? v8 : v21;
      v26 = a1 <= 1u ? v12 : v22;
      v27 = v8;
      if (v17 == v25 && v18 == v26)
      {
        goto LABEL_45;
      }

      v28 = sub_1D9179ACC();

      if (v28)
      {
        goto LABEL_46;
      }

      a2 = (a2 + 1) & v34;
      v7 = v23;
      v8 = v27;
      v12 = v24;
      v13 = v19;
      v9 = v15;
      v14 = v20;
    }

    while (((*(v35 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_42:
  v29 = *v33;
  *(*v33 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v29 + 48) + a2) = a1;
  v30 = *(v29 + 16);
  v31 = __OFADD__(v30, 1);
  v32 = v30 + 1;
  if (!v31)
  {
    *(v29 + 16) = v32;
    return;
  }

  __break(1u);
LABEL_45:

LABEL_46:
  sub_1D9179CEC();
  __break(1u);
}

void sub_1D8EFF8C0(uint64_t a1, __int16 a2, unint64_t a3, char a4)
{
  v7 = *(*v4 + 16);
  v8 = *(*v4 + 24);
  if (v8 > v7 && (a4 & 1) != 0)
  {
    goto LABEL_43;
  }

  if (a4)
  {
    sub_1D8EFDDD8(v7 + 1);
  }

  else
  {
    if (v8 > v7)
    {
      sub_1D8F00D30();
      goto LABEL_43;
    }

    sub_1D8F028A8(v7 + 1);
  }

  v9 = *v4;
  sub_1D9179DBC();
  sub_1D9179DDC();
  if ((a2 & 1) == 0)
  {
    MEMORY[0x1DA72B3C0](a1);
  }

  _s18PodcastsFoundation12MetricsFieldV4hash4intoys6HasherVz_tF_0();

  v10 = sub_1D9179E1C();
  v11 = -1 << *(v9 + 32);
  a3 = v10 & ~v11;
  if ((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v14 = *(v9 + 48) + 16 * a3;
      if (*(v14 + 8))
      {
        if ((a2 & 1) == 0)
        {
          goto LABEL_13;
        }
      }

      else if ((a2 & 1) != 0 || *v14 != a1)
      {
        goto LABEL_13;
      }

      if (*(v14 + 9) > 1u)
      {
        if (*(v14 + 9) == 2)
        {
          v15 = 0x657469726F766166;
          v16 = 0xE900000000000064;
        }

        else
        {
          v16 = 0xE700000000000000;
          v15 = 0x6E776F6E6B6E75;
        }
      }

      else
      {
        v15 = 0x4C74736567677573;
        v16 = 0xEB00000000737365;
        if (*(v14 + 9))
        {
          v16 = 0xE700000000000000;
          v15 = 0x6C61727475656ELL;
        }
      }

      v17 = 0x657469726F766166;
      if (HIBYTE(a2) != 2)
      {
        v17 = 0x6E776F6E6B6E75;
      }

      v18 = 0xE900000000000064;
      if (HIBYTE(a2) != 2)
      {
        v18 = 0xE700000000000000;
      }

      v19 = 0x4C74736567677573;
      if (HIBYTE(a2))
      {
        v19 = 0x6C61727475656ELL;
      }

      v20 = 0xEB00000000737365;
      if (HIBYTE(a2))
      {
        v20 = 0xE700000000000000;
      }

      if (HIBYTE(a2) <= 1u)
      {
        v21 = v19;
      }

      else
      {
        v21 = v17;
      }

      if (HIBYTE(a2) <= 1u)
      {
        v22 = v20;
      }

      else
      {
        v22 = v18;
      }

      if (v15 == v21 && v16 == v22)
      {

LABEL_42:
        sub_1D9179CEC();
        __break(1u);
        break;
      }

      v13 = sub_1D9179ACC();

      if (v13)
      {
        goto LABEL_42;
      }

LABEL_13:
      a3 = (a3 + 1) & v12;
    }

    while (((*(v9 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_43:
  v23 = *v28;
  *(*v28 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v24 = *(v23 + 48) + 16 * a3;
  *v24 = a1;
  *(v24 + 8) = a2 & 1;
  *(v24 + 9) = HIBYTE(a2);
  v25 = *(v23 + 16);
  v26 = __OFADD__(v25, 1);
  v27 = v25 + 1;
  if (v26)
  {
    __break(1u);
  }

  else
  {
    *(v23 + 16) = v27;
  }
}

uint64_t sub_1D8EFFC50(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a4)
  {
    sub_1D8EFE4B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1D8F0101C();
      goto LABEL_12;
    }

    sub_1D8F02EFC(v8 + 1);
  }

  v10 = *v4;
  sub_1D9179DBC();
  sub_1D9179FAC();
  result = sub_1D9179E1C();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      result = sub_1D9179F9C();
      if (result)
      {
        goto LABEL_15;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_12:
  v13 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v14 = (*(v13 + 48) + 16 * a3);
  *v14 = v7;
  v14[1] = a2;
  v15 = *(v13 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v13 + 16) = v17;
    return result;
  }

  __break(1u);
LABEL_15:
  result = sub_1D9179CEC();
  __break(1u);
  return result;
}

void *sub_1D8EFFDC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6710, &unk_1D91B3620);
  v2 = *v0;
  v3 = sub_1D91793FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}

void *sub_1D8EFFF00()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECAB6848, &qword_1D9193788);
  v2 = *v0;
  v3 = sub_1D91793FC();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 56 + 8 * v6)
    {
      result = memmove(result, (v2 + 56), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 56);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      ;
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v11 = (v16 - 1) & v16;
        v14 = __clz(__rbit64(v16)) | (v8 << 6);
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_19:

    *v1 = v4;
  }

  return result;
}