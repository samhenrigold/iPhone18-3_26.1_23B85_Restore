id static MusicCurator.curateMusic(for:context:progressReporter:)(char *a1, char *a2)
{
  v5 = OBJC_IVAR___PGMusicCuratorContext_musicCurationOverrideDictionary;
  swift_beginAccess();
  if (*&a2[v5])
  {

    v7 = sub_22F357A90(v6);
  }

  else
  {
    v69 = a1;
    if (qword_2810A9BD0 != -1)
    {
      swift_once();
    }

    v8 = qword_2810B4E90;
    *&v9 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation", 14, 2u, v9, 0, v8, v79);
    sub_22F741700();
    v10 = *__src;
    v11 = *&__src[16];
    v73 = *&__src[8];
    v72 = *&__src[32];
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D90);
    v13 = a2;
    v14 = sub_22F740B70();
    v15 = sub_22F7415C0();

    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      v17 = swift_slowAlloc();
      *v16 = 138412290;
      *(v16 + 4) = v13;
      *v17 = v13;
      v18 = v13;
      _os_log_impl(&dword_22F0FC000, v14, v15, "[MemoriesMusic] Music curation context:\n%@", v16, 0xCu);
      sub_22F120ADC(v17, &qword_27DAB07D0, &qword_22F779400);
      MEMORY[0x2319033A0](v17, -1, -1);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    *&v19 = CACurrentMediaTime();
    sub_22F1B560C("Music Curation - Election", 25, 2u, v19, 0, v8, v80);
    sub_22F7416F0();
    v7 = *&__src[8];
    v100 = *&__src[32];
    v20 = sub_22F7416D0();
    v22 = v21;
    v24 = v23;
    v25 = sub_22F15D3D0(v13, v20);
    if (v2)
    {
    }

    else
    {
      v65 = v10;
      v66 = v25;
      v26 = sub_22F15D508(v13, v22);
      v59 = sub_22F15D53C(v13, v24);
      v28 = sub_22F3EF030(v69, v13, *&__src[8]);
      v57 = static MusicForTimeElector.electMusic(for:context:progressReporter:)(v69, v13, *&__src[16]);
      sub_22F254FB4(v69, v13, *&__src[24]);
      v55 = v29;
      v53 = sub_22F34D844(v69, v13, v100);
      sub_22F7416A0();
      sub_22F1B2BBC(0);

      *&v75 = v66;
      *(&v75 + 1) = v26;
      *&v76 = v59;
      *(&v76 + 1) = v28;
      *&v77 = v57;
      *(&v77 + 1) = v55;
      v78 = v53;
      sub_22F355900();
      v100 = v30;
      sub_22F1ACF28(&v75, v30, __src, v13);

      v75 = *__src;
      v76 = *&__src[16];
      v77 = *&__src[32];
      v78 = *&__src[48];
      v100 = v13;
      sub_22F35C2A4(&v75, v13, v11, __src);

      v98[0] = *__src;
      v98[1] = *&__src[16];
      v98[2] = *&__src[32];
      v99 = *&__src[48];
      *&v31 = CACurrentMediaTime();
      sub_22F1B560C("Music Curation - Ranking", 24, 2u, v31, 0, v8, v81);
      sub_22F741710();
      v32 = *__src;
      v33 = *&__src[16];
      v70 = *&__src[40];
      v71 = *&__src[32];
      v68 = *&__src[48];
      sub_22F3559B8(v98, v69, v100, sub_22F1E2264, v82);
      v67 = v82[0];
      v63 = v82[2];
      v64 = v82[1];
      v34 = v83;
      sub_22F3559B8(v98, v69, v100, sub_22F34C978, v84);
      v61 = v84[1];
      v62 = v84[0];
      v60 = v84[2];
      v35 = v85;
      sub_22F3559B8(v98, v69, v100, sub_22F203290, v86);
      v56 = v86[0];
      v52 = v86[2];
      v54 = v86[1];
      v58 = v87;
      sub_22F3559B8(v98, v69, v100, sub_22F3925BC, v88);
      v49 = v88[1];
      v50 = v88[0];
      v48 = v88[2];
      v51 = v89;
      sub_22F3559B8(v98, v69, v100, sub_22F26E730, v90);
      v45 = v90[1];
      v46 = v90[0];
      v44 = v90[2];
      v47 = v91;
      sub_22F357480(v98, v100, sub_22F2BC97C, v92);
      v42 = v92[1];
      v43 = v92[0];
      v41 = v92[2];
      v36 = v93;
      sub_22F357480(v98, v100, sub_22F16F69C, v94);
      v39 = v94[1];
      v40 = v94[0];
      v38 = v94[2];
      v37 = v95;
      sub_22F1B2BBC(0);
      sub_22F7416A0();
      sub_22F3573D8(v98);

      *__src = v67;
      *&__src[16] = v64;
      *&__src[32] = v63;
      *&__src[48] = v34;
      *&__src[56] = v62;
      *&__src[72] = v61;
      *&__src[88] = v60;
      *&__src[104] = v35;
      *&__src[112] = v56;
      *&__src[128] = v54;
      *&__src[144] = v52;
      *&__src[168] = v50;
      *&__src[184] = v49;
      *&__src[200] = v48;
      *&__src[160] = v58;
      *&__src[216] = v51;
      *&__src[224] = v46;
      *&__src[240] = v45;
      *&__src[256] = v44;
      *&__src[280] = v43;
      *&__src[296] = v42;
      *&__src[312] = v41;
      *&__src[272] = v47;
      *&__src[328] = v36;
      *&__src[336] = v40;
      *&__src[352] = v39;
      *&__src[368] = v38;
      *&__src[384] = v37;
      memcpy(__dst, __src, sizeof(__dst));
      sub_22F25C054(__dst, v100, v72, v96);
      sub_22F25DEEC(__src);
      v7 = sub_22F2B5C8C(v96, v69, v100, *(&v72 + 1));
      sub_22F35775C(v96);
      sub_22F1B2BBC(0);
      sub_22F7416A0();
    }
  }

  return v7;
}

id MusicCurator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicCurator.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicCurator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void sub_22F357480(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(uint64_t, uint64_t)@<X3>, uint64_t *a4@<X8>)
{
  v8 = *a1;
  sub_22F7416F0();
  v9 = a3(v8, a2);
  if (v4)
  {
  }

  else
  {
    v16 = v9;
    v15 = a3(a1[1], a2);
    v14 = a3(a1[2], a2);
    v10 = a3(a1[3], a2);
    v11 = (a3)(a1[4]);
    v13 = a3(a1[5], a2);
    v12 = a3(a1[6], a2);

    *a4 = v16;
    a4[1] = v15;
    a4[2] = v14;
    a4[3] = v10;
    a4[4] = v11;
    a4[5] = v13;
    a4[6] = v12;
  }
}

void *sub_22F3577B0(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v5 = v26 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a1)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = *(a1 + 16);
  if (!v6)
  {
    return MEMORY[0x277D84F90];
  }

  v28 = sub_22F73F7C0();
  v7 = *(v28 - 8);
  v8 = *(v7 + 56);
  v26[1] = v7 + 56;
  v27 = v8;
  v9 = (a1 + 40);
  v10 = MEMORY[0x277D84F90];
  do
  {
    v11 = *(v9 - 1);
    v12 = *v9;
    v27(&v5[v2[15]], 1, 1, v28);
    v13 = v2[16];
    v14 = sub_22F73F690();
    (*(*(v14 - 8) + 56))(&v5[v13], 1, 1, v14);
    *v5 = v11;
    *(v5 + 1) = v12;
    *(v5 + 1) = 0u;
    *(v5 + 2) = 0u;
    *(v5 + 3) = 0u;
    *(v5 + 8) = 0;
    v5[72] = 2;
    *(v5 + 10) = 0;
    v5[88] = 1;
    *(v5 + 23) = 0;
    v5[96] = 1;
    *(v5 + 104) = 0u;
    *(v5 + 120) = 0u;
    *(v5 + 136) = 0u;
    v15 = &v5[v2[26]];
    *v15 = 1;
    *(v15 + 24) = 0u;
    *(v15 + 37) = 0;
    *(v15 + 8) = 0u;
    *&v5[v2[17]] = 0;
    v16 = &v5[v2[18]];
    *v16 = 0;
    v16[4] = 1;
    v17 = &v5[v2[19]];
    *v17 = 0;
    v17[4] = 1;
    v18 = &v5[v2[20]];
    *v18 = 0;
    v18[4] = 1;
    v19 = &v5[v2[21]];
    *v19 = 0;
    v19[4] = 1;
    v20 = &v5[v2[22]];
    *v20 = 0;
    v20[4] = 1;
    v21 = &v5[v2[23]];
    *v21 = 0;
    v21[4] = 1;
    v5[v2[24]] = 2;
    v22 = &v5[v2[25]];
    *v22 = 0;
    *(v22 + 1) = 0;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_22F13E558(0, v10[2] + 1, 1, v10);
    }

    v24 = v10[2];
    v23 = v10[3];
    if (v24 >= v23 >> 1)
    {
      v10 = sub_22F13E558((v23 > 1), v24 + 1, 1, v10);
    }

    v10[2] = v24 + 1;
    sub_22F15CB04(v5, v10 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v24);
    v9 += 2;
    --v6;
  }

  while (v6);
  return v10;
}

id sub_22F357A90(uint64_t a1)
{
  if (*(a1 + 16) && (v2 = sub_22F1229E8(0xD000000000000014, 0x800000022F799190), (v3 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v2, v39);
  }

  else
  {
    memset(v39, 0, sizeof(v39));
  }

  sub_22F1BCD04(v39, &v37);
  if (*(&v38 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v4 = v35;
    }

    else
    {
      v4 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v37, &qword_27DAB0C28, &qword_22F778980);
    v4 = 0;
  }

  v5 = sub_22F3577B0(v4);

  if (*(a1 + 16) && (v6 = sub_22F1229E8(0x726F46636973756DLL, 0xEB00000000756F59), (v7 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v6, &v37);
  }

  else
  {
    v37 = 0u;
    v38 = 0u;
  }

  sub_22F1BCD04(&v37, &v35);
  if (*(&v36 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v8 = v33;
    }

    else
    {
      v8 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v35, &qword_27DAB0C28, &qword_22F778980);
    v8 = 0;
  }

  v9 = sub_22F3577B0(v8);

  if (*(a1 + 16) && (v10 = sub_22F1229E8(0xD000000000000010, 0x800000022F7991C0), (v11 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v10, &v35);
  }

  else
  {
    v36 = 0u;
    v35 = 0u;
  }

  sub_22F1BCD04(&v35, &v33);
  if (*(&v34 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v12 = v31;
    }

    else
    {
      v12 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v33, &qword_27DAB0C28, &qword_22F778980);
    v12 = 0;
  }

  v13 = sub_22F3577B0(v12);

  if (*(a1 + 16) && (v14 = sub_22F1229E8(0x726F46636973756DLL, 0xEC000000656D6954), (v15 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v14, &v33);
  }

  else
  {
    v33 = 0u;
    v34 = 0u;
  }

  sub_22F1BCD04(&v33, &v31);
  if (*(&v32 + 1))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v16 = v30[0];
    }

    else
    {
      v16 = 0;
    }
  }

  else
  {
    sub_22F120ADC(&v31, &qword_27DAB0C28, &qword_22F778980);
    v16 = 0;
  }

  v17 = sub_22F3577B0(v16);

  if (*(a1 + 16) && (v18 = sub_22F1229E8(0xD000000000000011, 0x800000022F7924F0), (v19 & 1) != 0))
  {
    sub_22F13A100(*(a1 + 56) + 32 * v18, &v31);
  }

  else
  {
    v31 = 0u;
    v32 = 0u;
  }

  sub_22F1BCD04(&v31, v30);
  if (v30[3])
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    if (swift_dynamicCast())
    {
      v20 = v28;
    }

    else
    {
      v20 = 0;
    }
  }

  else
  {
    sub_22F120ADC(v30, &qword_27DAB0C28, &qword_22F778980);
    v20 = 0;
  }

  v21 = sub_22F3577B0(v20);

  v22 = type metadata accessor for MusicCuration();
  v23 = objc_allocWithZone(v22);
  *&v23[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  *&v23[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v5;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForYou] = v9;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForLocation] = v13;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForTime] = v17;
  *&v23[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v21;
  v24 = &v23[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  v25 = MEMORY[0x277D84F90];
  *v24 = MEMORY[0x277D84F90];
  *(v24 + 1) = 0;
  *(v24 + 2) = 0;
  *&v23[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v25;
  v29.receiver = v23;
  v29.super_class = v22;
  v26 = objc_msgSendSuper2(&v29, sel_init);
  sub_22F120ADC(&v31, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v33, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v35, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(&v37, &qword_27DAB0C28, &qword_22F778980);
  sub_22F120ADC(v39, &qword_27DAB0C28, &qword_22F778980);
  return v26;
}

id _s11PhotosGraph12MusicCuratorC13emptyCurationAA0cF0CyFZ_0()
{
  v0 = type metadata accessor for MusicCuration();
  v1 = objc_allocWithZone(v0);
  *&v1[OBJC_IVAR___PGMusicCuration_curatorVersion] = 2;
  v2 = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = MEMORY[0x277D84F90];
  *&v1[OBJC_IVAR___PGMusicCuration_musicForYou] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForLocation] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForTime] = v2;
  *&v1[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v2;
  v3 = &v1[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v3 = v2;
  *(v3 + 1) = 0;
  *(v3 + 2) = 0;
  *&v1[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v2;
  v5.receiver = v1;
  v5.super_class = v0;
  return objc_msgSendSuper2(&v5, sel_init);
}

uint64_t sub_22F358104(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(a1 + 32);
  sub_22F73F640();
  v11(a2, v10, a4);
  return (*(v8 + 8))(v10, v7);
}

void sub_22F358208(uint64_t *a1)
{
  v2 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530) - 8);
  v3 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_22F3F65D0(v3);
  }

  v4 = v3[2];
  v5[0] = v3 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
  v5[1] = v4;
  sub_22F35878C(v5);
  *a1 = v3;
}

void sub_22F3582BC(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F65F8(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22F3588D0(v4);
  *a1 = v2;
}

uint64_t MomentSampler.SamplingStrategy.hashValue.getter()
{
  v1 = *v0;
  sub_22F742170();
  MEMORY[0x231901D30](v1);
  return sub_22F7421D0();
}

id sub_22F3583B0(uint64_t a1, void *a2, _BYTE *a3)
{
  if (*a3)
  {
    if (*a3 == 1)
    {

      return sub_22F35A52C(a1, a2);
    }

    else
    {
      v7 = a1 / 2;
      v9 = sub_22F35A52C(a1 / 2, a2);
      v10 = [a2 collectionBySubtracting_];
      swift_beginAccess();
      v11 = sub_22F35AA00(v7, v10);
      swift_endAccess();
      v12 = [v9 collectionByFormingUnionWith_];

      return v12;
    }
  }

  else
  {
    swift_beginAccess();
    v6 = sub_22F35AA00(a1, a2);
    swift_endAccess();
    return v6;
  }
}

uint64_t sub_22F358504(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_22F73F690();
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a2, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return sub_22F121FF8(v6, a1);
}

unint64_t sub_22F35860C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t *a5)
{

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v11 = *a5;
  *a5 = 0x8000000000000000;
  result = sub_22F1319BC(a2, a3, a1, isUniquelyReferenced_nonNull_native);
  *a5 = v11;
  return result;
}

uint64_t MomentSampler.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
  v2 = sub_22F740840();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  return v0;
}

uint64_t MomentSampler.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph13MomentSampler_rng;
  v2 = sub_22F740840();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_22F35878C(unint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
        v6 = sub_22F741200();
        *(v6 + 16) = v5;
      }

      v7 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530) - 8);
      v8[0] = v6 + ((*(v7 + 80) + 32) & ~*(v7 + 80));
      v8[1] = v5;
      sub_22F358CC4(v8, v9, a1, v4);
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
    sub_22F3589D8(0, v2, 1, a1);
  }
}

void sub_22F3588D0(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10D0, &unk_22F771520);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_22F359530(v7, v8, a1, v4);
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
    sub_22F358BE4(0, v2, 1, a1);
  }
}

void sub_22F3589D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  MEMORY[0x28223BE20](v8);
  v10 = &v26 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v26 - v12;
  MEMORY[0x28223BE20](v14);
  v17 = &v26 - v16;
  v28 = a2;
  if (a3 != a2)
  {
    v18 = *a4;
    v19 = *(v15 + 72);
    v20 = *a4 + v19 * (a3 - 1);
    v21 = -v19;
    v22 = a1 - a3;
    v33 = v18;
    v27 = v19;
    v23 = v18 + v19 * a3;
LABEL_5:
    v31 = v20;
    v32 = a3;
    v29 = v23;
    v30 = v22;
    while (1)
    {
      sub_22F35AFCC(v23, v17);
      sub_22F35AFCC(v20, v13);
      v24 = sub_22F73F5D0();
      sub_22F35B0AC(v13);
      sub_22F35B0AC(v17);
      if ((v24 & 1) == 0)
      {
LABEL_4:
        a3 = v32 + 1;
        v20 = v31 + v27;
        v22 = v30 - 1;
        v23 = v29 + v27;
        if (v32 + 1 == v28)
        {
          return;
        }

        goto LABEL_5;
      }

      if (!v33)
      {
        break;
      }

      sub_22F35B03C(v23, v10);
      swift_arrayInitWithTakeFrontToBack();
      sub_22F35B03C(v10, v20);
      v20 += v21;
      v23 += v21;
      if (__CFADD__(v22++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }
}

uint64_t sub_22F358BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 24 * a3 - 24;
    v8 = result - a3;
LABEL_5:
    v9 = v6 + 24 * v4;
    result = *(v9 + 8);
    v10 = *(v9 + 16);
    v11 = v8;
    v12 = v7;
    while (1)
    {
      v13 = result == *(v12 + 8) && v10 == *(v12 + 16);
      if (v13 || (result = sub_22F742040(), (result & 1) == 0))
      {
LABEL_4:
        ++v4;
        v7 += 24;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v6)
      {
        break;
      }

      result = *(v12 + 32);
      v10 = *(v12 + 40);
      v15 = *(v12 + 16);
      v14 = *(v12 + 24);
      *(v12 + 24) = *v12;
      *(v12 + 40) = v15;
      *v12 = v14;
      *(v12 + 8) = result;
      *(v12 + 16) = v10;
      v12 -= 24;
      if (__CFADD__(v11++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F358CC4(unint64_t *a1, uint64_t a2, unint64_t *a3, unint64_t a4)
{
  v6 = v4;
  v102 = a1;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v110 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v104 = &v99 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v113 = &v99 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = &v99 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v99 - v17;
  v112 = a3;
  v19 = a3[1];
  if (v19 < 1)
  {
    v21 = MEMORY[0x277D84F90];
LABEL_96:
    v5 = *v102;
    if (!*v102)
    {
      goto LABEL_135;
    }

    a4 = v21;
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v94 = a4;
    }

    else
    {
LABEL_129:
      v94 = sub_22F3F5F98(a4);
    }

    v115 = v94;
    a4 = *(v94 + 2);
    if (a4 >= 2)
    {
      while (*v112)
      {
        v95 = *&v94[16 * a4];
        v96 = v94;
        v97 = *&v94[16 * a4 + 24];
        sub_22F359B30(*v112 + *(v110 + 72) * v95, *v112 + *(v110 + 72) * *&v94[16 * a4 + 16], *v112 + *(v110 + 72) * v97, v5);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v97 < v95)
        {
          goto LABEL_122;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v96 = sub_22F3F5F98(v96);
        }

        if (a4 - 2 >= *(v96 + 2))
        {
          goto LABEL_123;
        }

        v98 = &v96[16 * a4];
        *v98 = v95;
        *(v98 + 1) = v97;
        v115 = v96;
        sub_22F3F5F0C(a4 - 1);
        v94 = v115;
        a4 = *(v115 + 2);
        if (a4 <= 1)
        {
          goto LABEL_107;
        }
      }

      goto LABEL_133;
    }

LABEL_107:

    return;
  }

  v20 = 0;
  v21 = MEMORY[0x277D84F90];
  v101 = a4;
  v114 = v9;
  while (1)
  {
    v22 = v20;
    v23 = v20 + 1;
    v105 = v21;
    if (v23 >= v19)
    {
      v19 = v23;
    }

    else
    {
      v24 = *v112;
      v25 = v22;
      v26 = *(v110 + 72);
      v5 = *v112 + v26 * v23;
      sub_22F35AFCC(v5, v18);
      sub_22F35AFCC(v24 + v26 * v25, v15);
      LODWORD(v109) = sub_22F73F5D0();
      sub_22F35B0AC(v15);
      sub_22F35B0AC(v18);
      v100 = v25;
      v27 = v25 + 2;
      v111 = v26;
      v28 = v24 + v26 * v27;
      v29 = v109;
      while (v19 != v27)
      {
        sub_22F35AFCC(v28, v18);
        sub_22F35AFCC(v5, v15);
        v30 = sub_22F73F5D0() & 1;
        sub_22F35B0AC(v15);
        sub_22F35B0AC(v18);
        ++v27;
        v28 += v111;
        v5 += v111;
        if ((v29 & 1) != v30)
        {
          v31 = v29;
          v19 = v27 - 1;
          goto LABEL_11;
        }
      }

      v31 = v29;
LABEL_11:
      v22 = v100;
      a4 = v101;
      if (v31)
      {
        if (v19 < v100)
        {
          goto LABEL_126;
        }

        if (v100 < v19)
        {
          v99 = v6;
          v32 = v111 * (v19 - 1);
          v33 = v19 * v111;
          v109 = v19;
          v34 = v19;
          v35 = v100;
          v36 = v100 * v111;
          do
          {
            if (v35 != --v34)
            {
              v37 = *v112;
              if (!*v112)
              {
                goto LABEL_132;
              }

              v5 = v37 + v36;
              sub_22F35B03C(v37 + v36, v104);
              if (v36 < v32 || v5 >= v37 + v33)
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v36 != v32)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              sub_22F35B03C(v104, v37 + v32);
            }

            ++v35;
            v32 -= v111;
            v33 -= v111;
            v36 += v111;
          }

          while (v35 < v34);
          v6 = v99;
          v22 = v100;
          a4 = v101;
          v19 = v109;
        }
      }
    }

    v38 = v112[1];
    if (v19 < v38)
    {
      if (__OFSUB__(v19, v22))
      {
        goto LABEL_125;
      }

      if (v19 - v22 < a4)
      {
        if (__OFADD__(v22, a4))
        {
          goto LABEL_127;
        }

        if ((v22 + a4) >= v38)
        {
          v39 = v112[1];
        }

        else
        {
          v39 = v22 + a4;
        }

        if (v39 < v22)
        {
LABEL_128:
          __break(1u);
          goto LABEL_129;
        }

        if (v19 != v39)
        {
          break;
        }
      }
    }

    v40 = v19;
    if (v19 < v22)
    {
      goto LABEL_124;
    }

LABEL_35:
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v21 = v105;
    }

    else
    {
      v21 = sub_22F13D970(0, *(v105 + 2) + 1, 1, v105);
    }

    a4 = *(v21 + 2);
    v41 = *(v21 + 3);
    v5 = a4 + 1;
    if (a4 >= v41 >> 1)
    {
      v21 = sub_22F13D970((v41 > 1), a4 + 1, 1, v21);
    }

    *(v21 + 2) = v5;
    v42 = &v21[16 * a4];
    *(v42 + 4) = v22;
    *(v42 + 5) = v40;
    v43 = *v102;
    if (!*v102)
    {
      goto LABEL_134;
    }

    v106 = v40;
    if (a4)
    {
      while (1)
      {
        v44 = v5 - 1;
        if (v5 >= 4)
        {
          break;
        }

        if (v5 == 3)
        {
          v45 = *(v21 + 4);
          v46 = *(v21 + 5);
          v55 = __OFSUB__(v46, v45);
          v47 = v46 - v45;
          v48 = v55;
LABEL_54:
          if (v48)
          {
            goto LABEL_113;
          }

          v61 = &v21[16 * v5];
          v63 = *v61;
          v62 = *(v61 + 1);
          v64 = __OFSUB__(v62, v63);
          v65 = v62 - v63;
          v66 = v64;
          if (v64)
          {
            goto LABEL_116;
          }

          v67 = &v21[16 * v44 + 32];
          v69 = *v67;
          v68 = *(v67 + 1);
          v55 = __OFSUB__(v68, v69);
          v70 = v68 - v69;
          if (v55)
          {
            goto LABEL_119;
          }

          if (__OFADD__(v65, v70))
          {
            goto LABEL_120;
          }

          if (v65 + v70 >= v47)
          {
            if (v47 < v70)
            {
              v44 = v5 - 2;
            }

            goto LABEL_75;
          }

          goto LABEL_68;
        }

        v71 = &v21[16 * v5];
        v73 = *v71;
        v72 = *(v71 + 1);
        v55 = __OFSUB__(v72, v73);
        v65 = v72 - v73;
        v66 = v55;
LABEL_68:
        if (v66)
        {
          goto LABEL_115;
        }

        v74 = &v21[16 * v44];
        v76 = *(v74 + 4);
        v75 = *(v74 + 5);
        v55 = __OFSUB__(v75, v76);
        v77 = v75 - v76;
        if (v55)
        {
          goto LABEL_118;
        }

        if (v77 < v65)
        {
          goto LABEL_3;
        }

LABEL_75:
        a4 = v44 - 1;
        if (v44 - 1 >= v5)
        {
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
LABEL_124:
          __break(1u);
LABEL_125:
          __break(1u);
LABEL_126:
          __break(1u);
LABEL_127:
          __break(1u);
          goto LABEL_128;
        }

        if (!*v112)
        {
          goto LABEL_131;
        }

        v82 = v21;
        v83 = *&v21[16 * a4 + 32];
        v5 = *&v21[16 * v44 + 40];
        sub_22F359B30(*v112 + *(v110 + 72) * v83, *v112 + *(v110 + 72) * *&v21[16 * v44 + 32], *v112 + *(v110 + 72) * v5, v43);
        if (v6)
        {
          goto LABEL_107;
        }

        if (v5 < v83)
        {
          goto LABEL_109;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v82 = sub_22F3F5F98(v82);
        }

        if (a4 >= *(v82 + 2))
        {
          goto LABEL_110;
        }

        v84 = &v82[16 * a4];
        *(v84 + 4) = v83;
        *(v84 + 5) = v5;
        v115 = v82;
        sub_22F3F5F0C(v44);
        v21 = v115;
        v5 = *(v115 + 2);
        if (v5 <= 1)
        {
          goto LABEL_3;
        }
      }

      v49 = &v21[16 * v5 + 32];
      v50 = *(v49 - 64);
      v51 = *(v49 - 56);
      v55 = __OFSUB__(v51, v50);
      v52 = v51 - v50;
      if (v55)
      {
        goto LABEL_111;
      }

      v54 = *(v49 - 48);
      v53 = *(v49 - 40);
      v55 = __OFSUB__(v53, v54);
      v47 = v53 - v54;
      v48 = v55;
      if (v55)
      {
        goto LABEL_112;
      }

      v56 = &v21[16 * v5];
      v58 = *v56;
      v57 = *(v56 + 1);
      v55 = __OFSUB__(v57, v58);
      v59 = v57 - v58;
      if (v55)
      {
        goto LABEL_114;
      }

      v55 = __OFADD__(v47, v59);
      v60 = v47 + v59;
      if (v55)
      {
        goto LABEL_117;
      }

      if (v60 >= v52)
      {
        v78 = &v21[16 * v44 + 32];
        v80 = *v78;
        v79 = *(v78 + 1);
        v55 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v55)
        {
          goto LABEL_121;
        }

        if (v47 < v81)
        {
          v44 = v5 - 2;
        }

        goto LABEL_75;
      }

      goto LABEL_54;
    }

LABEL_3:
    v19 = v112[1];
    v20 = v106;
    a4 = v101;
    if (v106 >= v19)
    {
      goto LABEL_96;
    }
  }

  v99 = v6;
  v100 = v22;
  a4 = *v112;
  v85 = *(v110 + 72);
  v86 = *v112 + v85 * (v19 - 1);
  v87 = v19;
  v88 = -v85;
  v89 = v22 - v87;
  v109 = v87;
  v103 = v85;
  v5 = a4 + v87 * v85;
  v106 = v39;
LABEL_86:
  v107 = v5;
  v108 = v89;
  v111 = v86;
  v90 = v86;
  while (1)
  {
    sub_22F35AFCC(v5, v18);
    sub_22F35AFCC(v90, v15);
    v91 = sub_22F73F5D0();
    sub_22F35B0AC(v15);
    sub_22F35B0AC(v18);
    if ((v91 & 1) == 0)
    {
LABEL_85:
      v86 = v111 + v103;
      v89 = v108 - 1;
      v40 = v106;
      v5 = v107 + v103;
      if (++v109 != v106)
      {
        goto LABEL_86;
      }

      v6 = v99;
      v22 = v100;
      if (v106 < v100)
      {
        goto LABEL_124;
      }

      goto LABEL_35;
    }

    if (!a4)
    {
      break;
    }

    v92 = v113;
    sub_22F35B03C(v5, v113);
    swift_arrayInitWithTakeFrontToBack();
    sub_22F35B03C(v92, v90);
    v90 += v88;
    v5 += v88;
    if (__CFADD__(v89++, 1))
    {
      goto LABEL_85;
    }
  }

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
}

void sub_22F359530(char *a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v5 = a3;
  v6 = a3[1];
  if (v6 < 1)
  {
    v8 = MEMORY[0x277D84F90];
LABEL_105:
    a1 = *a1;
    if (!a1)
    {
      goto LABEL_143;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_137:
      v8 = sub_22F3F5F98(v8);
    }

    v90 = v8 + 16;
    v91 = *(v8 + 2);
    if (v91 >= 2)
    {
      do
      {
        v92 = *v5;
        if (!*v5)
        {
          goto LABEL_141;
        }

        v93 = &v8[16 * v91];
        v5 = *v93;
        v94 = &v90[2 * v91];
        v95 = v94[1];
        sub_22F359FC4((v92 + 24 * *v93), (v92 + 24 * *v94), v92 + 24 * v95, a1);
        if (v4)
        {
          break;
        }

        if (v95 < v5)
        {
          goto LABEL_129;
        }

        if (v91 - 2 >= *v90)
        {
          goto LABEL_130;
        }

        *v93 = v5;
        *(v93 + 1) = v95;
        v96 = *v90 - v91;
        if (*v90 < v91)
        {
          goto LABEL_131;
        }

        v91 = *v90 - 1;
        memmove(v94, v94 + 2, 16 * v96);
        *v90 = v91;
        v5 = a3;
      }

      while (v91 > 1);
    }

LABEL_114:

    return;
  }

  v7 = 0;
  v8 = MEMORY[0x277D84F90];
  while (1)
  {
    v9 = v7++;
    if (v7 < v6)
    {
      v10 = *v5;
      v11 = *v5 + 24 * v7;
      v12 = *(v11 + 8);
      v13 = *(v11 + 16);
      v14 = *v5 + 24 * v9;
      if (v12 == *(v14 + 8) && v13 == *(v14 + 16))
      {
        v16 = 0;
      }

      else
      {
        v16 = sub_22F742040();
      }

      v7 = v9 + 2;
      if (v9 + 2 < v6)
      {
        v17 = (v10 + 24 * v9 + 64);
        do
        {
          if (*(v17 - 1) == *(v17 - 4) && *v17 == *(v17 - 3))
          {
            if (v16)
            {
              goto LABEL_24;
            }
          }

          else if ((v16 ^ sub_22F742040()))
          {
            goto LABEL_23;
          }

          v17 += 3;
          ++v7;
        }

        while (v6 != v7);
        v7 = v6;
      }

LABEL_23:
      if (v16)
      {
LABEL_24:
        if (v7 < v9)
        {
          goto LABEL_134;
        }

        if (v9 < v7)
        {
          v19 = 0;
          v20 = 24 * v7;
          v21 = 24 * v9;
          v22 = v9;
          do
          {
            if (v22 != v7 + v19 - 1)
            {
              v28 = *v5;
              if (!*v5)
              {
                goto LABEL_140;
              }

              v23 = v28 + v21;
              v24 = v28 + v20;
              v25 = *(v23 + 16);
              v26 = *v23;
              v27 = *(v24 - 8);
              *v23 = *(v24 - 24);
              *(v23 + 16) = v27;
              *(v24 - 24) = v26;
              *(v24 - 8) = v25;
            }

            ++v22;
            --v19;
            v20 -= 24;
            v21 += 24;
          }

          while (v22 < v7 + v19);
        }
      }
    }

    v29 = v5[1];
    if (v7 < v29)
    {
      if (__OFSUB__(v7, v9))
      {
        goto LABEL_133;
      }

      if (v7 - v9 < a4)
      {
        if (__OFADD__(v9, a4))
        {
          goto LABEL_135;
        }

        if (v9 + a4 >= v29)
        {
          v30 = v5[1];
        }

        else
        {
          v30 = v9 + a4;
        }

        if (v30 < v9)
        {
LABEL_136:
          __break(1u);
          goto LABEL_137;
        }

        if (v7 != v30)
        {
          break;
        }
      }
    }

LABEL_54:
    if (v7 < v9)
    {
      goto LABEL_132;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v8 = sub_22F13D970(0, *(v8 + 2) + 1, 1, v8);
    }

    v44 = *(v8 + 2);
    v43 = *(v8 + 3);
    v45 = v44 + 1;
    if (v44 >= v43 >> 1)
    {
      v8 = sub_22F13D970((v43 > 1), v44 + 1, 1, v8);
    }

    *(v8 + 2) = v45;
    v46 = &v8[16 * v44];
    *(v46 + 4) = v9;
    *(v46 + 5) = v7;
    v47 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if (v44)
    {
      while (1)
      {
        v48 = v45 - 1;
        if (v45 >= 4)
        {
          break;
        }

        if (v45 == 3)
        {
          v49 = *(v8 + 4);
          v50 = *(v8 + 5);
          v59 = __OFSUB__(v50, v49);
          v51 = v50 - v49;
          v52 = v59;
LABEL_74:
          if (v52)
          {
            goto LABEL_120;
          }

          v65 = &v8[16 * v45];
          v67 = *v65;
          v66 = *(v65 + 1);
          v68 = __OFSUB__(v66, v67);
          v69 = v66 - v67;
          v70 = v68;
          if (v68)
          {
            goto LABEL_123;
          }

          v71 = &v8[16 * v48 + 32];
          v73 = *v71;
          v72 = *(v71 + 1);
          v59 = __OFSUB__(v72, v73);
          v74 = v72 - v73;
          if (v59)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v69, v74))
          {
            goto LABEL_127;
          }

          if (v69 + v74 >= v51)
          {
            if (v51 < v74)
            {
              v48 = v45 - 2;
            }

            goto LABEL_95;
          }

          goto LABEL_88;
        }

        v75 = &v8[16 * v45];
        v77 = *v75;
        v76 = *(v75 + 1);
        v59 = __OFSUB__(v76, v77);
        v69 = v76 - v77;
        v70 = v59;
LABEL_88:
        if (v70)
        {
          goto LABEL_122;
        }

        v78 = &v8[16 * v48];
        v80 = *(v78 + 4);
        v79 = *(v78 + 5);
        v59 = __OFSUB__(v79, v80);
        v81 = v79 - v80;
        if (v59)
        {
          goto LABEL_125;
        }

        if (v81 < v69)
        {
          goto LABEL_3;
        }

LABEL_95:
        v86 = v48 - 1;
        if (v48 - 1 >= v45)
        {
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
          goto LABEL_136;
        }

        if (!*v5)
        {
          goto LABEL_139;
        }

        v87 = *&v8[16 * v86 + 32];
        v88 = *&v8[16 * v48 + 40];
        sub_22F359FC4((*v5 + 24 * v87), (*v5 + 24 * *&v8[16 * v48 + 32]), *v5 + 24 * v88, v47);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v88 < v87)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_22F3F5F98(v8);
        }

        if (v86 >= *(v8 + 2))
        {
          goto LABEL_117;
        }

        v89 = &v8[16 * v86];
        *(v89 + 4) = v87;
        *(v89 + 5) = v88;
        sub_22F3F5F0C(v48);
        v45 = *(v8 + 2);
        if (v45 <= 1)
        {
          goto LABEL_3;
        }
      }

      v53 = &v8[16 * v45 + 32];
      v54 = *(v53 - 64);
      v55 = *(v53 - 56);
      v59 = __OFSUB__(v55, v54);
      v56 = v55 - v54;
      if (v59)
      {
        goto LABEL_118;
      }

      v58 = *(v53 - 48);
      v57 = *(v53 - 40);
      v59 = __OFSUB__(v57, v58);
      v51 = v57 - v58;
      v52 = v59;
      if (v59)
      {
        goto LABEL_119;
      }

      v60 = &v8[16 * v45];
      v62 = *v60;
      v61 = *(v60 + 1);
      v59 = __OFSUB__(v61, v62);
      v63 = v61 - v62;
      if (v59)
      {
        goto LABEL_121;
      }

      v59 = __OFADD__(v51, v63);
      v64 = v51 + v63;
      if (v59)
      {
        goto LABEL_124;
      }

      if (v64 >= v56)
      {
        v82 = &v8[16 * v48 + 32];
        v84 = *v82;
        v83 = *(v82 + 1);
        v59 = __OFSUB__(v83, v84);
        v85 = v83 - v84;
        if (v59)
        {
          goto LABEL_128;
        }

        if (v51 < v85)
        {
          v48 = v45 - 2;
        }

        goto LABEL_95;
      }

      goto LABEL_74;
    }

LABEL_3:
    v6 = v5[1];
    if (v7 >= v6)
    {
      goto LABEL_105;
    }
  }

  v31 = *v5;
  v32 = *v5 + 24 * v7 - 24;
  v97 = v9;
  v33 = v9 - v7;
LABEL_43:
  v34 = v31 + 24 * v7;
  v35 = *(v34 + 8);
  v36 = *(v34 + 16);
  v37 = v33;
  v38 = v32;
  while (1)
  {
    v39 = v35 == *(v38 + 8) && v36 == *(v38 + 16);
    if (v39 || (sub_22F742040() & 1) == 0)
    {
LABEL_42:
      ++v7;
      v32 += 24;
      --v33;
      if (v7 != v30)
      {
        goto LABEL_43;
      }

      v7 = v30;
      v5 = a3;
      v9 = v97;
      goto LABEL_54;
    }

    if (!v31)
    {
      break;
    }

    v35 = *(v38 + 32);
    v36 = *(v38 + 40);
    v41 = *(v38 + 16);
    v40 = *(v38 + 24);
    *(v38 + 24) = *v38;
    *(v38 + 40) = v41;
    *v38 = v40;
    *(v38 + 8) = v35;
    *(v38 + 16) = v36;
    v38 -= 24;
    if (__CFADD__(v37++, 1))
    {
      goto LABEL_42;
    }
  }

  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
LABEL_143:
  __break(1u);
}

void sub_22F359B30(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  v43 = a3;
  v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  MEMORY[0x28223BE20](v42);
  v41 = v37 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v37 - v10;
  v13 = *(v12 + 72);
  if (!v13)
  {
    __break(1u);
LABEL_61:
    __break(1u);
LABEL_62:
    __break(1u);
    return;
  }

  if (a2 - a1 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_61;
  }

  v14 = v43 - a2;
  if (v43 - a2 == 0x8000000000000000 && v13 == -1)
  {
    goto LABEL_62;
  }

  v15 = (a2 - a1) / v13;
  v46 = a1;
  v45 = a4;
  if (v15 >= v14 / v13)
  {
    v17 = v14 / v13 * v13;
    if (a4 < a2 || a2 + v17 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a2)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v37[1] = v4;
    v22 = a4 + v17;
    if (v17 < 1)
    {
      v25 = a4 + v17;
    }

    else
    {
      v23 = -v13;
      v24 = a4 + v17;
      v25 = v22;
      v39 = v23;
      v40 = a4;
      do
      {
        v37[0] = v25;
        v26 = a2;
        v27 = a2 + v23;
        while (1)
        {
          v29 = v43;
          if (v26 <= a1)
          {
            v46 = v26;
            v44 = v37[0];
            goto LABEL_59;
          }

          v38 = v25;
          v43 += v23;
          v30 = v24 + v23;
          sub_22F35AFCC(v30, v11);
          v31 = v27;
          v32 = v27;
          v33 = v11;
          v34 = v41;
          sub_22F35AFCC(v32, v41);
          v35 = sub_22F73F5D0();
          v36 = v34;
          v11 = v33;
          sub_22F35B0AC(v36);
          sub_22F35B0AC(v33);
          if (v35)
          {
            break;
          }

          v25 = v30;
          if (v29 < v24 || v43 >= v24)
          {
            swift_arrayInitWithTakeFrontToBack();
            v27 = v31;
          }

          else
          {
            v27 = v31;
            if (v29 != v24)
            {
              swift_arrayInitWithTakeBackToFront();
            }
          }

          v24 = v30;
          v28 = v30 > v40;
          v23 = v39;
          if (!v28)
          {
            a2 = v26;
            goto LABEL_58;
          }
        }

        if (v29 < v26 || v43 >= v26)
        {
          a2 = v31;
          swift_arrayInitWithTakeFrontToBack();
          v25 = v38;
          v23 = v39;
        }

        else
        {
          v25 = v38;
          v23 = v39;
          a2 = v31;
          if (v29 != v26)
          {
            swift_arrayInitWithTakeBackToFront();
          }
        }
      }

      while (v24 > v40);
    }

LABEL_58:
    v46 = a2;
    v44 = v25;
  }

  else
  {
    v16 = v15 * v13;
    if (a4 < a1 || a1 + v16 <= a4)
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (a4 != a1)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    v18 = a4 + v16;
    v44 = a4 + v16;
    if (v16 >= 1 && a2 < v43)
    {
      do
      {
        sub_22F35AFCC(a2, v11);
        v20 = v41;
        sub_22F35AFCC(a4, v41);
        v21 = sub_22F73F5D0();
        sub_22F35B0AC(v20);
        sub_22F35B0AC(v11);
        if (v21)
        {
          if (a1 < a2 || a1 >= a2 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a2)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 += v13;
        }

        else
        {
          if (a1 < a4 || a1 >= a4 + v13)
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (a1 != a4)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          v45 = a4 + v13;
          a4 += v13;
        }

        a1 += v13;
        v46 = a1;
      }

      while (a4 < v18 && a2 < v43);
    }
  }

LABEL_59:
  sub_22F3B6830(&v46, &v45, &v44);
}

uint64_t sub_22F359FC4(char *__dst, char *__src, unint64_t a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = (__src - __dst) / 24;
  v10 = a3 - __src;
  v11 = (a3 - __src) / 24;
  if (v9 < v11)
  {
    if (a4 != __dst || &__dst[24 * v9] <= a4)
    {
      memmove(a4, __dst, 24 * v9);
    }

    v12 = &v4[24 * v9];
    if (v8 < 24)
    {
LABEL_6:
      v6 = v7;
      goto LABEL_39;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_6;
      }

      v15 = *(v6 + 1) == *(v4 + 1) && *(v6 + 2) == *(v4 + 2);
      if (!v15 && (sub_22F742040() & 1) != 0)
      {
        break;
      }

      v13 = v4;
      v15 = v7 == v4;
      v4 += 24;
      if (!v15)
      {
        goto LABEL_8;
      }

LABEL_9:
      v7 += 24;
      if (v4 >= v12)
      {
        goto LABEL_6;
      }
    }

    v13 = v6;
    v15 = v7 == v6;
    v6 += 24;
    if (v15)
    {
      goto LABEL_9;
    }

LABEL_8:
    v14 = *v13;
    *(v7 + 2) = *(v13 + 2);
    *v7 = v14;
    goto LABEL_9;
  }

  if (a4 != __src || &__src[24 * v11] <= a4)
  {
    memmove(a4, __src, 24 * v11);
  }

  v12 = &v4[24 * v11];
  if (v10 >= 24 && v6 > v7)
  {
LABEL_24:
    v5 -= 24;
    do
    {
      v16 = *(v12 - 2) == *(v6 - 2) && *(v12 - 1) == *(v6 - 1);
      if (!v16 && (sub_22F742040() & 1) != 0)
      {
        v19 = v6 - 24;
        if ((v5 + 24) != v6)
        {
          v20 = *v19;
          *(v5 + 16) = *(v6 - 1);
          *v5 = v20;
        }

        if (v12 <= v4 || (v6 -= 24, v19 <= v7))
        {
          v6 = v19;
          goto LABEL_39;
        }

        goto LABEL_24;
      }

      v17 = v12 - 24;
      if ((v5 + 24) != v12)
      {
        v18 = *v17;
        *(v5 + 16) = *(v12 - 1);
        *v5 = v18;
      }

      v5 -= 24;
      v12 -= 24;
    }

    while (v17 > v4);
    v12 = v17;
  }

LABEL_39:
  v21 = (v12 - v4) / 24;
  if (v6 != v4 || v6 >= &v4[24 * v21])
  {
    memmove(v6, v4, 24 * v21);
  }

  return 1;
}

void sub_22F35A224()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v20 = v2 - 2;
  if (v2 >= 2)
  {
    sub_22F740840();
    sub_22F20F7E0();
    v3 = 0;
    while (1)
    {
      v5 = sub_22F740D30();
      v6 = (v5 * v2) >> 64;
      if (v2 > v5 * v2)
      {
        v7 = -v2 % v2;
        if (v7 > v5 * v2)
        {
          do
          {
            v8 = sub_22F740D30();
          }

          while (v7 > v8 * v2);
          v6 = (v8 * v2) >> 64;
        }
      }

      v9 = v3 + v6;
      if (__OFADD__(v3, v6))
      {
        break;
      }

      if (v3 != v9)
      {
        v10 = *(v1 + 2);
        if (v3 >= v10)
        {
          goto LABEL_19;
        }

        if (v9 >= v10)
        {
          goto LABEL_20;
        }

        v11 = &v1[16 * v3 + 32];
        v12 = *v11;
        v13 = *(v11 + 1);
        v14 = &v1[16 * v9 + 32];
        v15 = *(v14 + 1);
        v19 = *v14;

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_22F3F651C(v1);
        }

        if (v3 >= *(v1 + 2))
        {
          goto LABEL_21;
        }

        v16 = &v1[16 * v3 + 32];
        *v16 = v19;
        *(v16 + 1) = v15;

        if (v9 >= *(v1 + 2))
        {
          goto LABEL_22;
        }

        v17 = &v1[16 * v9 + 32];
        *v17 = v12;
        *(v17 + 1) = v13;

        *v18 = v1;
      }

      --v2;
      if (v3++ == v20)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

void sub_22F35A3CC()
{
  v1 = *v0;
  v2 = *(*v0 + 2);
  v3 = v2 - 2;
  if (v2 >= 2)
  {
    sub_22F740840();
    sub_22F20F7E0();
    v4 = 0;
    while (1)
    {
      v6 = sub_22F740D30();
      v7 = (v6 * v2) >> 64;
      if (v2 > v6 * v2)
      {
        v8 = -v2 % v2;
        if (v8 > v6 * v2)
        {
          do
          {
            v9 = sub_22F740D30();
          }

          while (v8 > v9 * v2);
          v7 = (v9 * v2) >> 64;
        }
      }

      v10 = v4 + v7;
      if (__OFADD__(v4, v7))
      {
        break;
      }

      if (v4 != v10)
      {
        v11 = *(v1 + 2);
        if (v4 >= v11)
        {
          goto LABEL_19;
        }

        if (v10 >= v11)
        {
          goto LABEL_20;
        }

        v12 = *&v1[8 * v4 + 32];
        v13 = *&v1[8 * v10 + 32];
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v1 = sub_22F3F65E4(v1);
        }

        v14 = *(v1 + 2);
        if (v4 >= v14)
        {
          goto LABEL_21;
        }

        *&v1[8 * v4 + 32] = v13;
        if (v10 >= v14)
        {
          goto LABEL_22;
        }

        *&v1[8 * v10 + 32] = v12;
        *v15 = v1;
      }

      --v2;
      if (v4++ == v3)
      {
        return;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }
}

id sub_22F35A52C(uint64_t a1, void *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = v38 - v9;
  v46 = MEMORY[0x277D84F98];
  v11 = swift_allocObject();
  *(v11 + 16) = &v46;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22F35AF9C;
  *(v12 + 24) = v11;
  v40 = v11;
  v44 = sub_22F35AFA4;
  v45 = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F358104;
  aBlock[3] = &block_descriptor_23_3;
  v13 = _Block_copy(aBlock);

  v41 = a2;
  [a2 enumerateUniversalStartDatesUsingBlock_];
  _Block_release(v13);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    goto LABEL_22;
  }

  v42 = a1;
  v15 = v46;
  v16 = *(v46 + 16);
  if (!v16)
  {

    isEscapingClosureAtFileLocation = MEMORY[0x277D84F90];
LABEL_6:
    aBlock[0] = isEscapingClosureAtFileLocation;
    isEscapingClosureAtFileLocation = 0;
    sub_22F358208(aBlock);

    v19 = aBlock[0];
    v20 = *(aBlock[0] + 16);
    if (v20)
    {
      aBlock[0] = MEMORY[0x277D84F90];
      sub_22F146CD8(0, v20, 0);
      v21 = aBlock[0];
      v22 = *(v5 + 80);
      v39 = v19;
      v23 = v19 + ((v22 + 32) & ~v22);
      v24 = *(v5 + 72);
      do
      {
        sub_22F35AFCC(v23, v10);
        sub_22F35B03C(v10, v7);
        v25 = *v7;
        v26 = *(v4 + 48);
        v27 = sub_22F73F690();
        (*(*(v27 - 8) + 8))(&v7[v26], v27);
        aBlock[0] = v21;
        isEscapingClosureAtFileLocation = *(v21 + 16);
        v28 = *(v21 + 24);
        if (isEscapingClosureAtFileLocation >= v28 >> 1)
        {
          sub_22F146CD8((v28 > 1), isEscapingClosureAtFileLocation + 1, 1);
          v21 = aBlock[0];
        }

        *(v21 + 16) = isEscapingClosureAtFileLocation + 1;
        *(v21 + 8 * isEscapingClosureAtFileLocation + 32) = v25;
        v23 += v24;
        --v20;
      }

      while (v20);
    }

    else
    {

      v21 = MEMORY[0x277D84F90];
    }

    v29 = *(v21 + 16);
    v30 = v29 - v42;
    if (!__OFSUB__(v29, v42))
    {
      if (v30 <= v29)
      {
        v31 = v30 & ~(v30 >> 63);
        isEscapingClosureAtFileLocation = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
        v32 = v29 >= v31;
        v33 = v29 - v31;
        if (v33)
        {
          if (v33 == 0 || !v32)
          {
            goto LABEL_25;
          }

          v34 = (v21 + 8 * v31 + 32);
          do
          {
            v35 = *v34++;
            [isEscapingClosureAtFileLocation addIdentifier_];
            --v33;
          }

          while (v33);
        }

        v36 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:objc_msgSend(v41 elementIdentifiers:{sel_graph), isEscapingClosureAtFileLocation}];

        swift_unknownObjectRelease();

        return v36;
      }

      goto LABEL_23;
    }

LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  isEscapingClosureAtFileLocation = sub_22F10B5B0(*(v46 + 16), 0);
  v38[0] = v5;
  sub_22F11C560(aBlock, isEscapingClosureAtFileLocation + ((*(v5 + 80) + 32) & ~*(v5 + 80)), v16, v15);
  v17 = aBlock[0];
  v38[1] = v44;
  v39 = v18;
  swift_bridgeObjectRetain_n();
  sub_22F0FF590(v17);
  if (v39 == v16)
  {
    v5 = v38[0];
    goto LABEL_6;
  }

LABEL_24:
  __break(1u);
LABEL_25:
  __break(1u);

  __break(1u);
  return result;
}

id sub_22F35AA00(uint64_t a1, void *a2)
{
  v31 = MEMORY[0x277D84F98];
  v4 = swift_allocObject();
  *(v4 + 16) = &v31;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_22F35AF7C;
  *(v5 + 24) = v4;
  aBlock[4] = sub_22F15A678;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2136B4;
  aBlock[3] = &block_descriptor_38;
  v6 = _Block_copy(aBlock);

  [a2 enumerateUUIDsUsingBlock_];
  _Block_release(v6);
  LOBYTE(v6) = swift_isEscapingClosureAtFileLocation();

  if (v6)
  {
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v9 = v31;
  v10 = *(v31 + 16);
  if (v10)
  {
    v11 = a2;
    v12 = sub_22F10B5D4(v10, 0);
    v13 = sub_22F11C814(aBlock, v12 + 4, v10, v9);
    v14 = aBlock[0];
    swift_bridgeObjectRetain_n();
    sub_22F0FF590(v14);
    if (v13 != v10)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    a2 = v11;
  }

  else
  {

    v12 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v12;
  sub_22F3582BC(aBlock);

  v15 = aBlock[0];
  v16 = *(aBlock[0] + 16);
  if (v16)
  {
    aBlock[0] = MEMORY[0x277D84F90];
    sub_22F146CD8(0, v16, 0);
    v17 = aBlock[0];
    v18 = *(aBlock[0] + 16);
    v19 = 32;
    do
    {
      v20 = *(v15 + v19);
      aBlock[0] = v17;
      v21 = *(v17 + 24);
      if (v18 >= v21 >> 1)
      {
        sub_22F146CD8((v21 > 1), v18 + 1, 1);
        v17 = aBlock[0];
      }

      *(v17 + 16) = v18 + 1;
      *(v17 + 8 * v18 + 32) = v20;
      v19 += 24;
      ++v18;
      --v16;
    }

    while (v16);
  }

  else
  {

    v17 = MEMORY[0x277D84F90];
  }

  aBlock[0] = v17;
  sub_22F35A3CC();
  v5 = aBlock[0];
  v7 = *(aBlock[0] + 16);
  v8 = v7 - a1;
  if (__OFSUB__(v7, a1))
  {
    goto LABEL_21;
  }

  if (v8 > v7)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  if (v8 >= 1)
  {
LABEL_23:
    sub_22F10AE8C(v5, v5 + 32, v8 & ~(v8 >> 63), (2 * v7) | 1);
    v29 = v28;

    v5 = v29;
  }

  v22 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v23 = *(v5 + 16);
  if (v23)
  {
    v24 = (v5 + 32);
    do
    {
      v25 = *v24++;
      [v22 addIdentifier_];
      --v23;
    }

    while (v23);
  }

  v26 = [objc_allocWithZone(PGGraphMomentNodeCollection) initWithGraph:objc_msgSend(a2 elementIdentifiers:{sel_graph), v22}];

  swift_unknownObjectRelease();

  return v26;
}

unint64_t sub_22F35ADF8()
{
  result = qword_27DAB3C70;
  if (!qword_27DAB3C70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C70);
  }

  return result;
}

uint64_t type metadata accessor for MomentSampler(uint64_t a1)
{
  result = qword_27DAB3C78;
  if (!qword_27DAB3C78)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F35AEA0(uint64_t a1)
{
  result = sub_22F740840();
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

uint64_t block_copy_helper_38(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F35AFCC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F35B03C(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_22F35B0AC(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB10E0, &unk_22F771530);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_22F35B11C(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  v2 = v1;
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_47;
  }

  v3 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v3)
  {
    v4 = 0;
    v33 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v34 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v5 = MEMORY[0x277D84F90];
    v29 = isUniquelyReferenced_nonNull_bridgeObject;
    v31 = v3;
    v32 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    while (1)
    {
      if (v34)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x2319016F0](v4, v29);
      }

      else
      {
        if (v4 >= *(v33 + 16))
        {
          goto LABEL_42;
        }

        isUniquelyReferenced_nonNull_bridgeObject = *(v32 + 8 * v4);
      }

      v6 = isUniquelyReferenced_nonNull_bridgeObject;
      v7 = __OFADD__(v4++, 1);
      if (v7)
      {
        break;
      }

      v39 = isUniquelyReferenced_nonNull_bridgeObject;
      v8 = v2;
      sub_22F35B630(&v39, &v38);
      if (v2)
      {
        goto LABEL_40;
      }

      v9 = v38;
      v6 = (v38 >> 62);
      if (v38 >> 62)
      {
        v10 = sub_22F741A00();
      }

      else
      {
        v10 = *((v38 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v11 = v5 >> 62;
      if (v5 >> 62)
      {
        v26 = sub_22F741A00();
        v13 = v26 + v10;
        if (__OFADD__(v26, v10))
        {
LABEL_39:
          __break(1u);
LABEL_40:

          return v5;
        }
      }

      else
      {
        v12 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        v13 = v12 + v10;
        if (__OFADD__(v12, v10))
        {
          goto LABEL_39;
        }
      }

      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v36 = v10;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v11)
        {
          v14 = v5 & 0xFFFFFFFFFFFFFF8;
          if (v13 <= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_22;
          }

          goto LABEL_21;
        }

LABEL_20:
        sub_22F741A00();
        goto LABEL_21;
      }

      if (v11)
      {
        goto LABEL_20;
      }

LABEL_21:
      isUniquelyReferenced_nonNull_bridgeObject = sub_22F741B50();
      v5 = isUniquelyReferenced_nonNull_bridgeObject;
      v14 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_22:
      v15 = *(v14 + 16);
      v16 = *(v14 + 24);
      if (v6)
      {
        v18 = v14;
        isUniquelyReferenced_nonNull_bridgeObject = sub_22F741A00();
        v14 = v18;
        v17 = isUniquelyReferenced_nonNull_bridgeObject;
        if (!isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_4:

          if (v36 > 0)
          {
            goto LABEL_43;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v17 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v17)
        {
          goto LABEL_4;
        }
      }

      if (((v16 >> 1) - v15) < v36)
      {
        goto LABEL_44;
      }

      v35 = v5;
      v19 = v14 + 8 * v15 + 32;
      v30 = v14;
      if (v6)
      {
        if (v17 < 1)
        {
          goto LABEL_46;
        }

        sub_22F35BA84();
        for (i = 0; i != v17; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C88, &qword_22F788488);
          v21 = sub_22F14E004(v37, i, v9);
          v23 = *v22;
          (v21)(v37, 0);
          *(v19 + 8 * i) = v23;
        }
      }

      else
      {
        sub_22F35BA38();
        swift_arrayInitWithCopy();
      }

      v2 = v8;
      v5 = v35;
      if (v36 >= 1)
      {
        v24 = *(v30 + 16);
        v7 = __OFADD__(v24, v36);
        v25 = v24 + v36;
        if (v7)
        {
          goto LABEL_45;
        }

        *(v30 + 16) = v25;
      }

LABEL_5:
      if (v4 == v31)
      {
        return v5;
      }
    }

    __break(1u);
LABEL_42:
    __break(1u);
LABEL_43:
    __break(1u);
LABEL_44:
    __break(1u);
LABEL_45:
    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    v27 = isUniquelyReferenced_nonNull_bridgeObject;
    v3 = sub_22F741A00();
    isUniquelyReferenced_nonNull_bridgeObject = v27;
  }

  return MEMORY[0x277D84F90];
}

void static FlexMusicCacher.cacheSongAudioAndArtwork(forUIDs:)(void *a1)
{
  v1 = sub_22F35B860(a1);
  v2 = v1;
  if (v1 >> 62)
  {
    v3 = sub_22F741A00();
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v3)
    {
      goto LABEL_10;
    }
  }

  if (v3 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v3; ++i)
  {
    if ((v2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x2319016F0](i, v2);
    }

    else
    {
      v5 = *(v2 + 8 * i + 32);
    }

    v6 = v5;
    [v5 pg_requestDownloadIfNeeded];
  }

LABEL_10:
}

uint64_t sub_22F35B630@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  v9[4] = [*a1 assetWithID_];
  v4 = 0;
  v9[5] = [v3 assetWithID_];
  v5 = MEMORY[0x277D84F90];
  v10 = MEMORY[0x277D84F90];
  while (v4 != 2)
  {
    v6 = v9[v4++ + 4];
    if (v6)
    {
      v7 = v6;
      MEMORY[0x231900D00]();
      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v5 = v10;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3C98, &qword_22F788490);
  result = swift_arrayDestroy();
  *a2 = v5;
  return result;
}

id FlexMusicCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id FlexMusicCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id FlexMusicCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F35B860(void *a1)
{
  if (qword_2810A91C0 != -1)
  {
LABEL_14:
    swift_once();
  }

  swift_beginAccess();
  v2 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v3 = a1[2];
  v4 = qword_2810A91C8;
  v5 = 0;
  v6 = a1 + 5;
  v12 = a1 + 5;
LABEL_3:
  v7 = &v6[2 * v5];
  while (v3 != v5)
  {
    if (v5 >= v3)
    {
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    v8 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      goto LABEL_13;
    }

    v9 = sub_22F740DF0();
    a1 = [v4 fetchSongWithUID_];

    ++v5;
    v7 += 2;
    if (a1)
    {
      MEMORY[0x231900D00]();
      if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
      v2 = v13;
      v5 = v8;
      v6 = v12;
      goto LABEL_3;
    }
  }

  v10 = sub_22F35B11C(v2);

  return v10;
}

unint64_t sub_22F35BA38()
{
  result = qword_2810A91E8;
  if (!qword_2810A91E8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A91E8);
  }

  return result;
}

unint64_t sub_22F35BA84()
{
  result = qword_27DAB3C90;
  if (!qword_27DAB3C90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27DAB3C88, &qword_22F788488);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3C90);
  }

  return result;
}

uint64_t sub_22F35BAE8(uint64_t a1)
{
  v3 = type metadata accessor for Song(0);
  v28 = *(v3 - 8);
  MEMORY[0x28223BE20](v3 - 8);
  v27 = (&v24 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = *(a1 + 16);
  v6 = MEMORY[0x277D84F90];
  if (!v5)
  {
    return v6;
  }

  v24 = v1;
  v32 = MEMORY[0x277D84F90];
  sub_22F146454(0, v5, 0);
  v6 = v32;
  v31 = a1 + 56;
  result = sub_22F741980();
  v8 = result;
  v9 = 0;
  v25 = a1 + 64;
  v26 = v5;
  while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(a1 + 32))
  {
    v11 = v8 >> 6;
    if ((*(v31 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
    {
      goto LABEL_21;
    }

    v29 = *(a1 + 36);
    v12 = v27;
    sub_22F15CAA0(*(a1 + 48) + *(v28 + 72) * v8, v27);
    v13 = v12[1];
    v30 = *v12;

    result = sub_22F15CBD8(v12);
    v32 = v6;
    v15 = *(v6 + 16);
    v14 = *(v6 + 24);
    if (v15 >= v14 >> 1)
    {
      result = sub_22F146454((v14 > 1), v15 + 1, 1);
      v6 = v32;
    }

    *(v6 + 16) = v15 + 1;
    v16 = v6 + 16 * v15;
    *(v16 + 32) = v30;
    *(v16 + 40) = v13;
    v10 = 1 << *(a1 + 32);
    if (v8 >= v10)
    {
      goto LABEL_22;
    }

    v17 = *(v31 + 8 * v11);
    if ((v17 & (1 << v8)) == 0)
    {
      goto LABEL_23;
    }

    if (v29 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v18 = v17 & (-2 << (v8 & 0x3F));
    if (v18)
    {
      v10 = __clz(__rbit64(v18)) | v8 & 0x7FFFFFFFFFFFFFC0;
    }

    else
    {
      v19 = v11 << 6;
      v20 = v11 + 1;
      v21 = (v25 + 8 * v11);
      while (v20 < (v10 + 63) >> 6)
      {
        v23 = *v21++;
        v22 = v23;
        v19 += 64;
        ++v20;
        if (v23)
        {
          result = sub_22F107D18(v8, v29, 0);
          v10 = __clz(__rbit64(v22)) + v19;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v8, v29, 0);
    }

LABEL_4:
    ++v9;
    v8 = v10;
    if (v9 == v26)
    {
      return v6;
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
  return result;
}

void *sub_22F35BDA4(void *a1, uint64_t a2, uint64_t *a3)
{
  v76 = a3;
  v5 = type metadata accessor for Song(0);
  v75 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v70 = &v67 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v77 = &v67 - v8;
  MEMORY[0x28223BE20](v9);
  v68 = &v67 - v10;
  MEMORY[0x28223BE20](v11);
  v69 = &v67 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v67 - v14);
  v16 = a2 + 56;
  v17 = 1 << *(a2 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = v18 & *(a2 + 56);
  v20 = (v17 + 63) >> 6;

  v21 = 0;
  v73 = v20;
  v74 = v15;
  v71 = a2;
  v72 = a2 + 56;
  while (v19)
  {
LABEL_12:
    v23 = *(v75 + 72);
    sub_22F15CAA0(*(a2 + 48) + v23 * (__clz(__rbit64(v19)) | (v21 << 6)), v15);
    v24 = *v15;
    v25 = v15[1];
    v26 = v76;
    swift_beginAccess();
    v27 = *v26;
    v28 = *(v27 + 16);
    v79 = v23;
    if (!v28 || (v29 = sub_22F1229E8(v24, v25), (v30 & 1) == 0))
    {
      swift_endAccess();
      sub_22F15CAA0(v15, v77);

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v78 = a1;
      v48 = v24;
      v49 = v24;
      v50 = v25;
      v52 = sub_22F1229E8(v49, v25);
      v53 = a1[2];
      v54 = (v51 & 1) == 0;
      v55 = v53 + v54;
      if (__OFADD__(v53, v54))
      {
        goto LABEL_38;
      }

      v56 = v51;
      if (a1[3] >= v55)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          a1 = v78;
          if ((v51 & 1) == 0)
          {
            goto LABEL_25;
          }
        }

        else
        {
          sub_22F134A90();
          a1 = v78;
          if ((v56 & 1) == 0)
          {
            goto LABEL_25;
          }
        }
      }

      else
      {
        sub_22F126640(v55, isUniquelyReferenced_nonNull_native);
        v57 = sub_22F1229E8(v48, v50);
        if ((v56 & 1) != (v58 & 1))
        {
          goto LABEL_42;
        }

        v52 = v57;
        a1 = v78;
        if ((v56 & 1) == 0)
        {
LABEL_25:
          a1[(v52 >> 6) + 8] |= 1 << v52;
          v59 = (a1[6] + 16 * v52);
          *v59 = v48;
          v59[1] = v50;
          sub_22F15CB04(v77, a1[7] + v52 * v79);
          v60 = a1[2];
          v43 = __OFADD__(v60, 1);
          v61 = v60 + 1;
          if (v43)
          {
            goto LABEL_39;
          }

          a1[2] = v61;
          goto LABEL_5;
        }
      }

      sub_22F1A2A44(v77, a1[7] + v52 * v79);

LABEL_5:
      a2 = v71;
      goto LABEL_6;
    }

    v31 = *(v27 + 56) + v29 * v23;
    v32 = v68;
    sub_22F15CAA0(v31, v68);
    v33 = v32;
    v34 = v69;
    sub_22F15CB04(v33, v69);
    swift_endAccess();
    sub_22F15CAA0(v34, v70);

    v35 = swift_isUniquelyReferenced_nonNull_native();
    v78 = a1;
    v36 = v24;
    v37 = v24;
    v38 = v25;
    v39 = sub_22F1229E8(v37, v25);
    v41 = a1[2];
    v42 = (v40 & 1) == 0;
    v43 = __OFADD__(v41, v42);
    v44 = v41 + v42;
    if (v43)
    {
      goto LABEL_40;
    }

    v45 = v40;
    if (a1[3] < v44)
    {
      sub_22F126640(v44, v35);
      v39 = sub_22F1229E8(v36, v38);
      if ((v45 & 1) != (v46 & 1))
      {
        goto LABEL_42;
      }

LABEL_28:
      a1 = v78;
      if ((v45 & 1) == 0)
      {
        goto LABEL_33;
      }

      goto LABEL_29;
    }

    if (v35)
    {
      goto LABEL_28;
    }

    v62 = v39;
    sub_22F134A90();
    v39 = v62;
    a1 = v78;
    if ((v45 & 1) == 0)
    {
LABEL_33:
      a1[(v39 >> 6) + 8] |= 1 << v39;
      v63 = (a1[6] + 16 * v39);
      *v63 = v36;
      v63[1] = v38;
      sub_22F15CB04(v70, a1[7] + v39 * v79);
      v64 = a1[2];
      v43 = __OFADD__(v64, 1);
      v65 = v64 + 1;
      if (v43)
      {
        goto LABEL_41;
      }

      a1[2] = v65;
      goto LABEL_35;
    }

LABEL_29:
    sub_22F1A2A44(v70, a1[7] + v39 * v79);

LABEL_35:
    sub_22F15CBD8(v69);
LABEL_6:
    v20 = v73;
    v15 = v74;
    v16 = v72;
    v19 &= v19 - 1;
    sub_22F15CBD8(v74);
  }

  while (1)
  {
    v22 = v21 + 1;
    if (__OFADD__(v21, 1))
    {
      break;
    }

    if (v22 >= v20)
    {

      return a1;
    }

    v19 = *(v16 + 8 * v22);
    ++v21;
    if (v19)
    {
      v21 = v22;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
LABEL_40:
  __break(1u);
LABEL_41:
  __break(1u);
LABEL_42:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

void sub_22F35C2A4(uint64_t *a1@<X0>, int64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = v4;
  v333 = *MEMORY[0x277D85DE8];
  v10 = sub_22F740BB0();
  v284 = *(v10 - 8);
  v285 = v10;
  MEMORY[0x28223BE20](v10);
  v281 = (v248 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  v12 = sub_22F740C30();
  v282 = *(v12 - 8);
  v283 = v12;
  MEMORY[0x28223BE20](v12);
  v279 = v248 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v14);
  v280 = v248 - v15;
  v301 = sub_22F740AD0();
  v287 = *(v301 - 8);
  MEMORY[0x28223BE20](v301);
  v300 = v248 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_22F73EEC0();
  v18 = *(v17 - 8);
  v304 = v17;
  v305 = v18;
  MEMORY[0x28223BE20](v17);
  v299 = v248 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v286 = v19;
  MEMORY[0x28223BE20](v20);
  v307 = v248 - v21;
  v22 = sub_22F73EEE0();
  v276 = *(v22 - 8);
  v277 = v22;
  MEMORY[0x28223BE20](v22);
  v275 = (v248 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v24 - 8);
  v289 = (v248 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v26);
  v293 = v248 - v27;
  v292 = type metadata accessor for Song(0);
  v303 = *(v292 - 8);
  MEMORY[0x28223BE20](v292);
  v273 = v248 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v272 = v248 - v30;
  MEMORY[0x28223BE20](v31);
  v290 = (v248 - v32);
  MEMORY[0x28223BE20](v33);
  v298 = (v248 - v34);
  v35 = sub_22F740C00();
  MEMORY[0x28223BE20](v35 - 8);
  v37 = v248 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = a1[1];
  v294 = *a1;
  v295 = v38;
  v39 = a1[3];
  v296 = a1[2];
  v306 = v39;
  v40 = a1[4];
  v302 = a1[5];
  v41 = a1[6];
  v42 = OBJC_IVAR___PGMusicCuratorContext_refreshSongMetadata;
  swift_beginAccess();
  v288 = a2;
  v43 = *(a2 + v42);
  v297 = a3;
  if (v43 != 1)
  {
    a2 = v41;
    if (qword_2810A9460 != -1)
    {
      goto LABEL_113;
    }

    goto LABEL_12;
  }

  v44 = sub_22F7416D0();
  v274 = v45;
  v278 = v46;
  v47 = _s11PhotosGraph19MusicCatalogMonitorC05checkcD11Eligibility16progressReporterSbSo010MAProgressI0C_tFZ_0();
  v270 = v41;
  if ((v47 & 1) == 0)
  {
    v72 = v44;
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v73 = sub_22F740B90();
    __swift_project_value_buffer(v73, qword_2810B4D90);
    v74 = sub_22F740B70();
    v75 = sub_22F7415C0();
    if (os_log_type_enabled(v74, v75))
    {
      v76 = swift_slowAlloc();
      *v76 = 0;
      _os_log_impl(&dword_22F0FC000, v74, v75, "[MemoriesMusic] Skipping refreshing step because the user is a non-subscriber.", v76, 2u);
      MEMORY[0x2319033A0](v76, -1, -1);
    }

    sub_22F7416A0();
    if (v4)
    {
    }

    else
    {
LABEL_48:

      v113 = v295;
      *a4 = v294;
      a4[1] = v113;
      v114 = v306;
      a4[2] = v296;
      a4[3] = v114;
      v115 = v302;
      a4[4] = v40;
      a4[5] = v115;
      a4[6] = v270;
    }

    return;
  }

  v258 = v44;
  if (qword_2810A9BD0 != -1)
  {
    swift_once();
  }

  v48 = qword_2810B4E90;
  *&v49 = CACurrentMediaTime();
  sub_22F1B560C("Music Curation - Refreshing", 27, 2u, v49, 0, v48, v329);
  v50 = swift_allocObject();
  v264 = v50;
  *(v50 + 16) = MEMORY[0x277D84F98];
  v259 = (v50 + 16);
  sub_22F740BD0();
  v51 = sub_22F22FB24(v37, 0);
  v52 = v4;
  v268 = a4;
  v269 = v40;
  if (v4)
  {
    v53 = 0;
    v54 = v302;
LABEL_7:
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v55 = sub_22F740B90();
    __swift_project_value_buffer(v55, qword_2810B4D90);
    v56 = v52;
    v57 = sub_22F740B70();
    v58 = sub_22F7415E0();

    if (os_log_type_enabled(v57, v58))
    {
      v59 = swift_slowAlloc();
      v60 = swift_slowAlloc();
      *&v325 = v60;
      *v59 = 136315138;
      swift_getErrorValue();
      v61 = sub_22F7420F0();
      v63 = sub_22F145F20(v61, v62, &v325);

      *(v59 + 4) = v63;
      _os_log_impl(&dword_22F0FC000, v57, v58, "[MemoriesMusic] (Refresh) Refreshing failed, returning original election: %s", v59, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v60);
      v64 = v60;
      v54 = v302;
      MEMORY[0x2319033A0](v64, -1, -1);
      MEMORY[0x2319033A0](v59, -1, -1);
    }

    else
    {
    }

    while (1)
    {
      v77 = v259;
      swift_beginAccess();
      v78 = *v77;
      v79 = *(*v77 + 16);
      if (!v79)
      {
        sub_22F1B2BBC(0);
        sub_22F7416A0();

        if (v53)
        {
        }

        else
        {

          v160 = v294;

          v161 = v295;

          v162 = v296;

          v163 = v306;

          v164 = v269;

          v165 = v270;

          v166 = v268;
          *v268 = v160;
          v166[1] = v161;
          v166[2] = v162;
          v166[3] = v163;
          v166[4] = v164;
          v166[5] = v54;
          v166[6] = v165;
        }

        return;
      }

      v298 = v53;
      v80 = sub_22F10B35C(v79, 0);
      v307 = (*(v303 + 80) + 32) & ~*(v303 + 80);
      sub_22F11C534(&v325, v80 + v307, v79, v78);
      v5 = v81;
      v82 = v325;
      a2 = v326;

      sub_22F1534EC(v82);
      if (v5 == v79)
      {
        v83 = sub_22F35FFDC(v80);

        v84 = v278;
        v85 = v298;
        MusicCache.update(songs:progressReporter:)(v83);
        v5 = v85;
        if (!v85)
        {

          v135 = v306;
          v136 = sub_22F35BDA4(MEMORY[0x277D84F98], v306, v259);
          v305 = 0;
          a4 = (v135 + 56);
          v137 = 1 << *(v135 + 32);
          v138 = -1;
          if (v137 < 64)
          {
            v138 = ~(-1 << v137);
          }

          v40 = v138 & *(v135 + 56);
          a2 = (v137 + 63) >> 6;

          v139 = 0;
          v140 = MEMORY[0x277D84F90];
          while (v40)
          {
            while (1)
            {
              v141 = v290;
LABEL_69:
              v143 = __clz(__rbit64(v40));
              v40 &= v40 - 1;
              v5 = *(v303 + 72);
              sub_22F15CAA0(*(v306 + 48) + v5 * (v143 | (v139 << 6)), v141);
              if (v136[2])
              {
                v144 = sub_22F1229E8(*v141, v141[1]);
                if (v145)
                {
                  break;
                }
              }

              sub_22F15CBD8(v141);
              if (!v40)
              {
                goto LABEL_64;
              }
            }

            sub_22F15CAA0(v136[7] + v144 * v5, v273);
            sub_22F15CBD8(v141);
            sub_22F15CB04(v273, v272);
            if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
            {
              v140 = sub_22F13E558(0, v140[2] + 1, 1, v140);
            }

            v147 = v140[2];
            v146 = v140[3];
            v148 = v147 + 1;
            if (v147 >= v146 >> 1)
            {
              v304 = v147 + 1;
              v149 = sub_22F13E558((v146 > 1), v147 + 1, 1, v140);
              v148 = v304;
              v140 = v149;
            }

            v140[2] = v148;
            sub_22F15CB04(v272, v140 + v307 + v147 * v5);
          }

LABEL_64:
          v141 = v290;
          while (1)
          {
            v142 = v139 + 1;
            if (__OFADD__(v139, 1))
            {
              goto LABEL_111;
            }

            if (v142 >= a2)
            {

              v150 = sub_22F151734(v140);

              v151 = v269;

              v152 = v302;

              v153 = v270;

              sub_22F1B2BBC(0);
              v154 = v305;
              sub_22F7416A0();
              if (v154)
              {
              }

              else
              {

                v170 = v268;
                v171 = v295;
                *v268 = v294;
                v170[1] = v171;
                v170[2] = v296;
                v170[3] = v150;
                v170[4] = v151;
                v170[5] = v152;
                v170[6] = v153;
              }

              return;
            }

            v40 = a4[v142];
            ++v139;
            if (v40)
            {
              v139 = v142;
              goto LABEL_69;
            }
          }
        }

        return;
      }

      __break(1u);
LABEL_115:

      if (swift_stdlib_isStackAllocationSafe())
      {

        a4 = v268;
        v40 = v269;
        goto LABEL_29;
      }

      v245 = swift_slowAlloc();
      v246 = v263;
      v247 = sub_22F35EFB8(v245, v260, v306, sub_22F35F888);
      v263 = v246;
      if (v246)
      {

        MEMORY[0x2319033A0](v245, -1, -1);
        __break(1u);
        return;
      }

      v116 = v247;

      MEMORY[0x2319033A0](v245, -1, -1);
      a4 = v268;
      v40 = v269;
LABEL_50:
      v117 = v270;
      v118 = v263;
      if (!*(v116 + 16))
      {

        v155 = v294;

        v156 = v295;

        v157 = v296;

        v158 = v306;

        v159 = v302;

        *a4 = v155;
        a4[1] = v156;
        a4[2] = v157;
        a4[3] = v158;
        a4[4] = v40;
        a4[5] = v159;
        a4[6] = v117;
        return;
      }

      v119 = sub_22F35BAE8(v116);
      v120 = swift_allocObject();
      *(v120 + 16) = 0;
      v121 = dispatch_group_create();
      dispatch_group_enter(v121);
      static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0xD000000000000021, 0x800000022F79BEE0, &v325);
      v308 = v325;
      v309 = v326;
      v310 = v327;
      v311 = v328;
      v122 = swift_allocObject();
      v123 = v264;
      v122[2] = v116;
      v122[3] = v123;
      v122[4] = v121;
      v122[5] = v120;
      v255 = v120;
      v256 = v119;
      v124 = *(v119 + 16);
      v253 = (v120 + 16);
      v298 = v118;
      if (!v124)
      {
        swift_retain_n();
        swift_retain_n();
        v167 = v121;
        swift_retain_n();
        v168 = v167;
        sub_22F35E7B8(MEMORY[0x277D84F90], 0, v116, v123, v168, v120);

        v54 = v302;
        v169 = v121;
        goto LABEL_107;
      }

      v252 = v122;
      v125 = qword_2810A9B98;
      swift_retain_n();
      swift_retain_n();
      v250 = v121;
      v126 = v121;
      swift_retain_n();
      v249 = v126;
      if (v125 != -1)
      {
        swift_once();
      }

      v127 = qword_2810B4E70;
      *&v128 = CACurrentMediaTime();
      sub_22F1B560C("MusicKitClient Fetch Songs By Ids", 33, 2u, v128, 0, v127, v330);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2938, &qword_22F77BEE0);
      v129 = swift_allocObject();
      v130 = &selRef_floatVector;
      v131 = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
      *(v129 + 16) = MEMORY[0x277D84F90];
      *(v129 + 24) = v131;
      v271 = v129;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2940, &qword_22F77BEE8);
      v132 = swift_allocObject();
      *(v132 + 24) = [objc_allocWithZone(MEMORY[0x277CCAAF8]) init];
      v267 = v132;
      *(v132 + 16) = 0;
      v133 = v132 + 16;
      v40 = v291;
      if (*(v291 + 3) == v254 && *(v291 + 4) == v257 || (sub_22F742040() & 1) != 0)
      {
        Batch = MusicBag.songQueryBatchSize()();
        LODWORD(v265) = 0;
      }

      else
      {
        Batch = MusicBag.songEquivalentQueryBatchSize()();
        LODWORD(v265) = 1;
      }

      if (Batch)
      {
        v248[1] = v133;
        v172 = v256;

        v292 = v124;
        v173 = Batch;
        v174 = Batch;
        v175 = v298;
        sub_22F233C24(0, v124, v173, v172, v174);
        v124 = v176;
        v130 = v175;

        if (qword_2810A9440 == -1)
        {
          goto LABEL_89;
        }
      }

      else
      {
        __break(1u);
      }

      swift_once();
LABEL_89:
      v177 = sub_22F740B90();
      __swift_project_value_buffer(v177, qword_2810B4D48);

      v178 = sub_22F740B70();
      v179 = sub_22F7415C0();
      v180 = os_log_type_enabled(v178, v179);
      v298 = v130;
      v248[2] = v116;
      if (v180)
      {
        v181 = swift_slowAlloc();
        *v181 = 134218240;
        *(v181 + 4) = v292;

        *(v181 + 12) = 2048;
        *(v181 + 14) = *(v124 + 16);

        _os_log_impl(&dword_22F0FC000, v178, v179, "[MemoriesMusic] fetching metadata for %ld songs in %ld batches", v181, 0x16u);
        v182 = v181;
        v40 = v291;
        MEMORY[0x2319033A0](v182, -1, -1);
      }

      else
      {
      }

      v293 = v124;
      v183 = *(v124 + 16);
      v254 = *(&v331 + 1);
      v251 = v332;
      v184 = swift_allocObject();
      v185 = v330[1];
      *(v184 + 16) = v330[0];
      *(v184 + 32) = v185;
      *(v184 + 48) = v331;
      v186 = v274;
      *(v184 + 64) = v332;
      *(v184 + 72) = v186;
      v187 = v252;
      *(v184 + 80) = sub_22F360600;
      *(v184 + 88) = v187;
      a2 = v267;
      v188 = v271;
      *(v184 + 96) = v267;
      *(v184 + 104) = v188;
      type metadata accessor for CompletionCounter();
      v189 = swift_allocObject();
      v189[2] = sub_22F235BF4;
      v189[3] = v184;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB2290, &qword_22F779380);
      v190 = swift_allocObject();
      *(v190 + 32) = 0;
      *(v190 + 16) = 0;
      v292 = v183;
      *(v190 + 24) = v183;
      v266 = v189;
      v189[4] = v190;
      sub_22F73EF30();
      swift_allocObject();

      v191 = v186;

      v192 = sub_22F73EF20();
      if (qword_2810A9168 != -1)
      {
        swift_once();
      }

      v193 = qword_2810A9170;
      v195 = v275;
      v194 = v276;
      *v275 = qword_2810A9170;
      (*(v194 + 104))(v195, *MEMORY[0x277CC86D8], v277);
      v196 = v193;
      sub_22F73EF00();
      v197 = [v191 progressReportersForParallelOperationsWithCount_];
      sub_22F360610();
      v198 = sub_22F741180();

      v276 = v305 + 16;
      v277 = (v287 + 8);
      v275 = (v286 + 7);
      v320 = v198;
      v321 = 0;
      v261 = &v316;
      v262 = v305 + 32;
      v260 = v305 + 8;
      v322 = v293;
      v323 = 0;
      v324 = 0;
      v263 = v192;
      while (1)
      {
        v199 = sub_22F226D78();
        if (!v199)
        {

          goto LABEL_106;
        }

        v201 = v199;
        v202 = v200;
        v203 = *(v40 + 32);
        v204 = *(v40 + 40);
        v205 = *(v40 + 48);
        v206 = *(v40 + 56);
        v207 = *(v40 + 64);
        v314 = *(v40 + 24);
        v315 = v203;
        v316 = v204;
        v317 = v205;
        v318 = v206;
        v319 = v207;
        v312[0] = v308;
        v312[1] = v309;
        v312[2] = v310;
        v313 = v311;

        v208 = v298;
        MusicKitRequestFactory.requestForSongs(adamIDs:options:isCrossStorefrontRequest:)(v202, v312, v265, v307);
        if (v208)
        {
          break;
        }

        v293 = v201;
        v298 = 0;

        v209 = swift_allocObject();
        v210 = v271;
        v209[2] = v192;
        v209[3] = v210;
        v209[4] = v266;
        v209[5] = a2;
        v292 = v209;

        sub_22F741740();
        if (qword_2810A8E30 != -1)
        {
          swift_once();
        }

        v211 = v300;
        sub_22F740AC0();
        sub_22F740A90();
        (*v277)(v211, v301);
        v289 = *(v40 + 72);
        v213 = v304;
        v212 = v305;
        v214 = v299;
        (*(v305 + 16))(v299, v307, v304);
        v215 = (*(v212 + 80) + 16) & ~*(v212 + 80);
        v216 = (v275 + v215) & 0xFFFFFFFFFFFFFFF8;
        v217 = (v216 + 63) & 0xFFFFFFFFFFFFFFF8;
        v286 = (v217 + 15) & 0xFFFFFFFFFFFFFFF8;
        v287 = (v217 + 39) & 0xFFFFFFFFFFFFFFF8;
        v218 = (v287 + 15) & 0xFFFFFFFFFFFFFFF8;
        v219 = swift_allocObject();
        (*(v212 + 32))(v219 + v215, v214, v213);
        v220 = v219 + v216;
        v221 = v309;
        *v220 = v308;
        *(v220 + 16) = v221;
        *(v220 + 32) = v310;
        *(v220 + 48) = v311;
        a4 = v292;
        *(v219 + v217) = v291;
        v222 = v219 + v286;
        v223 = v291;
        *v222 = "MusicKitClient HTTP Request";
        *(v222 + 8) = 27;
        *(v222 + 16) = 2;
        v224 = v293;
        *(v219 + v287) = v293;
        v225 = (v219 + v218);
        *v225 = sub_22F235C58;
        v225[1] = a4;
        v226 = swift_allocObject();
        *(v226 + 16) = sub_22F235DC4;
        *(v226 + 24) = v219;
        v318 = sub_22F2915BC;
        v319 = v226;
        v314 = MEMORY[0x277D85DD0];
        v315 = 1107296256;
        v316 = sub_22F2280B0;
        v317 = &block_descriptor_39;
        v5 = _Block_copy(&v314);
        sub_22F1D20B0(&v308, v312);

        v227 = v224;
        v40 = v223;
        v228 = v227;

        dispatch_sync(v289, v5);
        _Block_release(v5);

        (*(v305 + 8))(v307, v304);
        LOBYTE(v223) = swift_isEscapingClosureAtFileLocation();

        a2 = v267;
        v192 = v263;
        if (v223)
        {
          goto LABEL_112;
        }
      }

      [*(a2 + 24) lock];
      swift_beginAccess();
      v229 = *(a2 + 16);
      *(a2 + 16) = v208;

      v230 = *(a2 + 24);
      v231 = v208;
      [v230 unlock];
      v232 = v266;
      v233 = v266[4];

      os_unfair_lock_lock((v233 + 32));
      if (*(v233 + 16))
      {
        os_unfair_lock_unlock((v233 + 32));
      }

      else
      {
        *(v233 + 16) = 1;
        os_unfair_lock_unlock((v233 + 32));

        (v232[2])(v234);
      }

      v298 = 0;
LABEL_106:
      v54 = v302;
      v169 = v250;
LABEL_107:

      sub_22F1D210C(&v308);
      v235 = v279;
      sub_22F740C10();
      v236 = v281;
      *v281 = 10000;
      v238 = v284;
      v237 = v285;
      (*(v284 + 104))(v236, *MEMORY[0x277D85178], v285);
      v239 = v280;
      MEMORY[0x2319007F0](v235, v236);
      (*(v238 + 8))(v236, v237);
      v240 = v283;
      v241 = *(v282 + 8);
      v241(v235, v283);
      sub_22F741610();
      v241(v239, v240);
      v242 = v253;
      swift_beginAccess();
      v243 = *v242;
      if (v243)
      {
        swift_willThrow();
        v244 = v243;

        v53 = 0;
        v52 = v243;
        goto LABEL_7;
      }

      v53 = v298;
    }
  }

  v86 = *(v51 + 4);
  v254 = *(v51 + 3);
  v291 = v51;
  v87 = *(v306 + 32);
  v88 = v87 & 0x3F;
  v260 = ((1 << v87) + 63) >> 6;
  v80 = (8 * v260);

  v257 = v86;
  v263 = 0;
  if (v88 > 0xD)
  {
    goto LABEL_115;
  }

LABEL_29:
  v256 = v248;
  MEMORY[0x28223BE20](v89);
  v261 = (v248 - ((v80 + 15) & 0x3FFFFFFFFFFFFFF0));
  bzero(v261, v80);
  v262 = 0;
  v72 = 0;
  v90 = *(v306 + 56);
  v266 = (v306 + 56);
  v91 = 1 << *(v306 + 32);
  v92 = -1;
  if (v91 < 64)
  {
    v92 = ~(-1 << v91);
  }

  v93 = v92 & v90;
  v265 = (v91 + 63) >> 6;
  v94 = v298;
  while (v93)
  {
    v96 = __clz(__rbit64(v93));
    v271 = (v93 - 1) & v93;
LABEL_40:
    v99 = v96 | (v72 << 6);
    v100 = *(v306 + 48);
    v101 = *(v303 + 72);
    v267 = v99;
    sub_22F15CAA0(v100 + v101 * v99, v94);
    v102 = *(v292 + 64);
    v103 = v94 + v102;
    v104 = v293;
    sub_22F13BA9C(v103, v293, &qword_27DAB0920, &qword_22F770B20);
    v5 = sub_22F73F690();
    a2 = *(v5 - 8);
    v105 = *(a2 + 48);
    v106 = v105(v104, 1, v5);
    v107 = v104;
    v94 = v298;
    sub_22F15FCF0(v107);
    if (v106 == 1)
    {
      goto LABEL_32;
    }

    v108 = v289;
    sub_22F13BA9C(v94 + v102, v289, &qword_27DAB0920, &qword_22F770B20);
    if (v105(v108, 1, v5) == 1)
    {
      sub_22F15FCF0(v108);
      goto LABEL_44;
    }

    sub_22F73F600();
    v110 = v109;
    v111 = *(a2 + 8);
    a2 += 8;
    v111(v108, v5);
    if (v110 < -604800.0)
    {
LABEL_32:
      v95 = *(v94 + 96);
      sub_22F15CBD8(v94);
      a4 = v268;
      v40 = v269;
      v93 = v271;
      if (v95)
      {
        *(v261 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) = (*(v261 + ((v267 >> 3) & 0x1FFFFFFFFFFFFFF8)) | (1 << v267));
        if (__OFADD__(v262++, 1))
        {
          __break(1u);
          goto LABEL_48;
        }
      }
    }

    else
    {
LABEL_44:
      sub_22F15CBD8(v94);
      a4 = v268;
      v40 = v269;
      v93 = v271;
    }
  }

  v97 = v72;
  while (1)
  {
    v72 = v97 + 1;
    if (__OFADD__(v97, 1))
    {
      break;
    }

    if (v72 >= v265)
    {
      v116 = sub_22F1B9048(v261, v260, v262, v306);
      goto LABEL_50;
    }

    v98 = v266[v72];
    ++v97;
    if (v98)
    {
      v96 = __clz(__rbit64(v98));
      v271 = (v98 - 1) & v98;
      goto LABEL_40;
    }
  }

  __break(1u);
LABEL_111:
  __break(1u);
LABEL_112:
  __break(1u);
LABEL_113:
  swift_once();
LABEL_12:
  v65 = sub_22F740B90();
  __swift_project_value_buffer(v65, qword_2810B4D90);
  v66 = sub_22F740B70();
  v67 = sub_22F7415C0();
  if (os_log_type_enabled(v66, v67))
  {
    v68 = swift_slowAlloc();
    *v68 = 0;
    _os_log_impl(&dword_22F0FC000, v66, v67, "[MemoriesMusic] Skipping song metadata refresh because not specified, e.g. because on-demand curation.", v68, 2u);
    MEMORY[0x2319033A0](v68, -1, -1);
  }

  sub_22F7416A0();
  if (!v5)
  {
    v69 = v295;
    *a4 = v294;
    a4[1] = v69;
    v70 = v306;
    a4[2] = v296;
    a4[3] = v70;
    v71 = v302;
    a4[4] = v40;
    a4[5] = v71;
    a4[6] = a2;
  }
}

void *static MusicCurator.songsNeedingRefresh(songs:)(uint64_t a1)
{
  v2 = 0;
  v48 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v3 - 8);
  v41 = v36 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v46 = v36 - v6;
  v7 = type metadata accessor for Song(0);
  v44 = *(v7 - 8);
  v45 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v8) = *(a1 + 32);
  v10 = v8 & 0x3F;
  v11 = ((1 << v8) + 63) >> 6;
  v12 = 8 * v11;

  if (v10 > 0xD)
  {
    goto LABEL_23;
  }

  do
  {
    v36[1] = v2;
    v36[2] = v36;
    v37 = v11;
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v38 = v36 - ((v12 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v38, v12);
    v2 = 0;
    v14 = a1 + 56;
    v15 = 1 << *(a1 + 32);
    v16 = -1;
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    v17 = v16 & *(a1 + 56);
    v39 = 0;
    v40 = (v15 + 63) >> 6;
    v43 = a1;
    while (v17)
    {
      v18 = __clz(__rbit64(v17));
      v47 = (v17 - 1) & v17;
LABEL_13:
      v21 = v18 | (v2 << 6);
      v22 = *(a1 + 48);
      v23 = *(v44 + 72);
      v42 = v21;
      sub_22F15CAA0(v22 + v23 * v21, v9);
      v11 = v46;
      v24 = *(v45 + 64);
      sub_22F13BA9C(&v9[v24], v46, &qword_27DAB0920, &qword_22F770B20);
      v25 = sub_22F73F690();
      v26 = *(v25 - 8);
      v27 = *(v26 + 48);
      v28 = v27(v11, 1, v25);
      sub_22F15FCF0(v11);
      if (v28 == 1)
      {
        goto LABEL_5;
      }

      v29 = &v9[v24];
      v12 = v41;
      sub_22F13BA9C(v29, v41, &qword_27DAB0920, &qword_22F770B20);
      if (v27(v12, 1, v25) == 1)
      {
        sub_22F15FCF0(v12);
        goto LABEL_17;
      }

      sub_22F73F600();
      v31 = v30;
      (*(v26 + 8))(v12, v25);
      if (v31 < -604800.0)
      {
LABEL_5:
        v12 = v9[96];
        sub_22F15CBD8(v9);
        a1 = v43;
        v17 = v47;
        if (v12)
        {
          *&v38[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
          if (__OFADD__(v39++, 1))
          {
            __break(1u);
            return sub_22F1B9048(v38, v37, v39, a1);
          }
        }
      }

      else
      {
LABEL_17:
        sub_22F15CBD8(v9);
        a1 = v43;
        v17 = v47;
      }
    }

    v19 = v2;
    while (1)
    {
      v2 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v2 >= v40)
      {
        return sub_22F1B9048(v38, v37, v39, a1);
      }

      v20 = *(v14 + 8 * v2);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v47 = (v20 - 1) & v20;
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_23:
    isStackAllocationSafe = swift_stdlib_isStackAllocationSafe();
  }

  while ((isStackAllocationSafe & 1) != 0);
  v34 = swift_slowAlloc();
  v35 = sub_22F35EFB8(v34, v11, a1, sub_22F35F888);
  MEMORY[0x2319033A0](v34, -1, -1);
  return v35;
}

void sub_22F35E7B8(char *a1, char a2, uint64_t a3, uint64_t a4, NSObject *a5, uint64_t a6)
{
  v101 = a4;
  v10 = type metadata accessor for Song(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v98 = &v90 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v95 = (&v90 - v14);
  MEMORY[0x28223BE20](v15);
  v100 = &v90 - v16;
  MEMORY[0x28223BE20](v17);
  v99 = (&v90 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = &v90 - v20;
  if (a2)
  {
    v104[0] = a1;
    v22 = a1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    sub_22F360674();
    v23 = swift_allocError();
    *v24 = a1;
    *(v24 + 8) = 0;
    swift_beginAccess();
    v25 = *(a6 + 16);
    *(a6 + 16) = v23;
    v26 = a1;

    dispatch_group_leave(a5);
    sub_22F1D20A4(a1, 1);
    return;
  }

  v27 = *(a1 + 2);
  v28 = MEMORY[0x277D84F90];
  if (v27)
  {
    v105 = MEMORY[0x277D84F90];
    sub_22F146514(0, v27, 0);
    v28 = v105;
    v29 = a1 + 32;
    do
    {
      memcpy(v104, v29, sizeof(v104));
      memcpy(v103, v29, sizeof(v103));
      sub_22F18C4EC(v104, &v102);
      Song.init(_:)(v103);
      v105 = v28;
      v31 = *(v28 + 16);
      v30 = *(v28 + 24);
      if (v31 >= v30 >> 1)
      {
        sub_22F146514((v30 > 1), v31 + 1, 1);
        v28 = v105;
      }

      *(v28 + 16) = v31 + 1;
      sub_22F15CB04(v21, v28 + ((*(v11 + 80) + 32) & ~*(v11 + 80)) + *(v11 + 72) * v31);
      v29 += 296;
      --v27;
    }

    while (v27);
  }

  v32 = sub_22F151734(v28);

  v33 = sub_22F35BAE8(v32);

  v96 = sub_22F35FC90(v34, v33);

  v35 = *(v32 + 16);
  v94 = a5;
  v97 = v11;
  if (!v35)
  {

    goto LABEL_32;
  }

  v36 = v32 + 56;
  v37 = 1 << *(v32 + 32);
  v38 = -1;
  if (v37 < 64)
  {
    v38 = ~(-1 << v37);
  }

  v39 = v38 & *(v32 + 56);
  v40 = (v37 + 63) >> 6;

  v41 = 0;
  v42 = MEMORY[0x277D84F98];
  v91 = v40;
  v92 = v32 + 56;
  v93 = v32;
  while (v39)
  {
LABEL_19:
    v44 = *(v11 + 72);
    v45 = *(v32 + 48) + v44 * (__clz(__rbit64(v39)) | (v41 << 6));
    v46 = v99;
    sub_22F15CAA0(v45, v99);
    v47 = *v46;
    v48 = v46[1];
    sub_22F15CAA0(v46, v100);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v104[0] = v42;
    v51 = sub_22F1229E8(v47, v48);
    v52 = v42[2];
    v53 = (v50 & 1) == 0;
    v54 = v52 + v53;
    if (__OFADD__(v52, v53))
    {
      goto LABEL_56;
    }

    v55 = v50;
    if (v42[3] >= v54)
    {
      if (isUniquelyReferenced_nonNull_native)
      {
        v42 = v104[0];
        if (v50)
        {
          goto LABEL_12;
        }
      }

      else
      {
        sub_22F134A90();
        v42 = v104[0];
        if (v55)
        {
          goto LABEL_12;
        }
      }
    }

    else
    {
      sub_22F126640(v54, isUniquelyReferenced_nonNull_native);
      v56 = sub_22F1229E8(v47, v48);
      if ((v55 & 1) != (v57 & 1))
      {
        goto LABEL_60;
      }

      v51 = v56;
      v42 = v104[0];
      if (v55)
      {
LABEL_12:
        sub_22F1A2A44(v100, v42[7] + v51 * v44);
        goto LABEL_13;
      }
    }

    v42[(v51 >> 6) + 8] |= 1 << v51;
    v58 = (v42[6] + 16 * v51);
    *v58 = v47;
    v58[1] = v48;
    sub_22F15CB04(v100, v42[7] + v51 * v44);
    v59 = v42[2];
    v60 = __OFADD__(v59, 1);
    v61 = v59 + 1;
    if (v60)
    {
      goto LABEL_58;
    }

    v42[2] = v61;

LABEL_13:
    v39 &= v39 - 1;
    sub_22F15CBD8(v99);
    v11 = v97;
    v36 = v92;
    v32 = v93;
    v40 = v91;
  }

  while (1)
  {
    v43 = v41 + 1;
    if (__OFADD__(v41, 1))
    {
      __break(1u);
      goto LABEL_55;
    }

    if (v43 >= v40)
    {
      break;
    }

    v39 = *(v36 + 8 * v43);
    ++v41;
    if (v39)
    {
      v41 = v43;
      goto LABEL_19;
    }
  }

  v62 = v101;
  swift_beginAccess();
  *(v62 + 16) = v42;

  a5 = v94;
LABEL_32:
  if (!*(v96 + 16))
  {
LABEL_53:

    dispatch_group_leave(a5);
    return;
  }

  v63 = 0;
  v64 = v96 + 56;
  v65 = 1 << *(v96 + 32);
  v66 = -1;
  if (v65 < 64)
  {
    v66 = ~(-1 << v65);
  }

  v67 = v66 & *(v96 + 56);
  v68 = (v65 + 63) >> 6;
  v100 = v68;
  while (2)
  {
    if (v67)
    {
LABEL_43:
      v72 = *(v97 + 72);
      v73 = v95;
      sub_22F15CAA0(*(v96 + 48) + v72 * (__clz(__rbit64(v67)) | (v63 << 6)), v95);
      v75 = *v73;
      v74 = v73[1];
      v76 = v101;
      swift_beginAccess();
      sub_22F15CB04(v73, v98);

      v77 = swift_isUniquelyReferenced_nonNull_native();
      v102 = *(v76 + 16);
      v78 = v102;
      *(v76 + 16) = 0x8000000000000000;
      v79 = sub_22F1229E8(v75, v74);
      v81 = v78[2];
      v82 = (v80 & 1) == 0;
      v60 = __OFADD__(v81, v82);
      v83 = v81 + v82;
      if (v60)
      {
        goto LABEL_57;
      }

      v84 = v80;
      if (v78[3] >= v83)
      {
        if ((v77 & 1) == 0)
        {
          v89 = v79;
          sub_22F134A90();
          v79 = v89;
          if ((v84 & 1) == 0)
          {
            goto LABEL_49;
          }

          goto LABEL_36;
        }
      }

      else
      {
        sub_22F126640(v83, v77);
        v79 = sub_22F1229E8(v75, v74);
        if ((v84 & 1) != (v85 & 1))
        {
          goto LABEL_60;
        }
      }

      if ((v84 & 1) == 0)
      {
LABEL_49:
        v70 = v102;
        v102[(v79 >> 6) + 8] |= 1 << v79;
        v86 = (v70[6] + 16 * v79);
        *v86 = v75;
        v86[1] = v74;
        sub_22F15CB04(v98, v70[7] + v79 * v72);
        v87 = v70[2];
        v60 = __OFADD__(v87, 1);
        v88 = v87 + 1;
        if (v60)
        {
          goto LABEL_59;
        }

        v70[2] = v88;
        goto LABEL_37;
      }

LABEL_36:
      v69 = v79;

      v70 = v102;
      sub_22F1A2A44(v98, v102[7] + v69 * v72);
LABEL_37:
      v67 &= v67 - 1;
      *(v101 + 16) = v70;

      swift_endAccess();
      a5 = v94;
      v68 = v100;
      continue;
    }

    break;
  }

  while (1)
  {
    v71 = v63 + 1;
    if (__OFADD__(v63, 1))
    {
      break;
    }

    if (v71 >= v68)
    {
      goto LABEL_53;
    }

    v67 = *(v64 + 8 * v71);
    ++v63;
    if (v67)
    {
      v63 = v71;
      goto LABEL_43;
    }
  }

LABEL_55:
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
  sub_22F7420C0();
  __break(1u);
}

unint64_t *sub_22F35EF1C(unint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    v7 = result;
    if (a2)
    {
      bzero(result, 8 * a2);
    }

    sub_22F35FA68(v7, a2, a3, a4);
    v9 = v8;
    swift_bridgeObjectRelease_n();

    return v9;
  }

  return result;
}

void *sub_22F35EFB8(void *result, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v5 = result;
      v6 = a2;
      v7 = a4;
      bzero(result, 8 * a2);
      result = v5;
      a2 = v6;
      a4 = v7;
    }

    sub_22F35F358(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

void *sub_22F35F048(uint64_t (*a1)(char *), uint64_t a2, uint64_t a3)
{
  v31 = a1;
  v33 = *MEMORY[0x277D85DE8];
  v5 = type metadata accessor for Song(0);
  v30 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v8 = &v26 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(v7) = *(a3 + 32);
  v9 = ((1 << v7) + 63) >> 6;
  if ((v7 & 0x3Fu) > 0xD)
  {
    goto LABEL_21;
  }

  while (1)
  {
    v26 = v9;
    v28 = &v26;
    MEMORY[0x28223BE20](v6);
    v27 = &v26 - ((v10 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v27, v10);
    v29 = 0;
    v9 = 0;
    v32 = a3;
    v12 = *(a3 + 56);
    a3 += 56;
    v11 = v12;
    v13 = 1 << *(a3 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v16 = (v13 + 63) >> 6;
    while (v15)
    {
      v17 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v20 = v17 | (v9 << 6);
      sub_22F15CAA0(*(v32 + 48) + *(v30 + 72) * v20, v8);
      v21 = v31(v8);
      sub_22F15CBD8(v8);
      if (v3)
      {

        return swift_willThrow();
      }

      if (v21)
      {
        *&v27[(v20 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v20;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
          return sub_22F1B9048(v27, v26, v29, v32);
        }
      }
    }

    v18 = v9;
    while (1)
    {
      v9 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        break;
      }

      if (v9 >= v16)
      {
        return sub_22F1B9048(v27, v26, v29, v32);
      }

      v19 = *(a3 + 8 * v9);
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v15 = (v19 - 1) & v19;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_21:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v24 = swift_slowAlloc();
  v25 = sub_22F35EFB8(v24, v9, a3, v31);

  result = MEMORY[0x2319033A0](v24, -1, -1);
  if (!v3)
  {
    return v25;
  }

  return result;
}

void sub_22F35F358(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(char *))
{
  v29 = a4;
  v25 = a2;
  v26 = a1;
  v6 = type metadata accessor for Song(0);
  v28 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = 0;
  v9 = 0;
  v30 = a3;
  v12 = *(a3 + 56);
  v11 = a3 + 56;
  v10 = v12;
  v13 = 1 << *(v11 - 24);
  v14 = -1;
  if (v13 < 64)
  {
    v14 = ~(-1 << v13);
  }

  v15 = v14 & v10;
  v16 = (v13 + 63) >> 6;
  while (v15)
  {
    v17 = __clz(__rbit64(v15));
    v15 &= v15 - 1;
LABEL_11:
    v20 = v17 | (v9 << 6);
    sub_22F15CAA0(*(v30 + 48) + *(v28 + 72) * v20, v8);
    v21 = v29(v8);
    sub_22F15CBD8(v8);
    if (v4)
    {
      return;
    }

    if (v21)
    {
      *(v26 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      if (__OFADD__(v27++, 1))
      {
        __break(1u);
LABEL_16:
        v23 = v30;

        sub_22F1B9048(v26, v25, v27, v23);
        return;
      }
    }
  }

  v18 = v9;
  while (1)
  {
    v9 = v18 + 1;
    if (__OFADD__(v18, 1))
    {
      break;
    }

    if (v9 >= v16)
    {
      goto LABEL_16;
    }

    v19 = *(v11 + 8 * v9);
    ++v18;
    if (v19)
    {
      v17 = __clz(__rbit64(v19));
      v15 = (v19 - 1) & v19;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_22F35F548(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(void *, __n128))
{
  v25 = a3;
  v22 = 0;
  v5 = 0;
  v6 = a3 + 56;
  v7 = 1 << *(a3 + 32);
  v8 = -1;
  if (v7 < 64)
  {
    v8 = ~(-1 << v7);
  }

  v9 = v8 & *(a3 + 56);
  v10 = (v7 + 63) >> 6;
  while (v9)
  {
    v11 = __clz(__rbit64(v9));
    v9 &= v9 - 1;
LABEL_11:
    v14 = v11 | (v5 << 6);
    v15 = (*(v25 + 48) + 16 * v14);
    v16 = v15[1];
    v24[0] = *v15;
    v24[1] = v16;

    v17 = (a4)(v24);

    if (v4)
    {
      return;
    }

    if (v17)
    {
      *(a1 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      if (__OFADD__(v22++, 1))
      {
        __break(1u);
LABEL_16:
        v19 = v25;

        sub_22F1B8E24(a1, a2, v22, v19);
        return;
      }
    }
  }

  v12 = v5;
  while (1)
  {
    v5 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v5 >= v10)
    {
      goto LABEL_16;
    }

    v13 = *(v6 + 8 * v5);
    ++v12;
    if (v13)
    {
      v11 = __clz(__rbit64(v13));
      v9 = (v13 - 1) & v13;
      goto LABEL_11;
    }
  }

  __break(1u);
}

void sub_22F35F714(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(id *), uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t, uint64_t))
{
  v23 = 0;
  v7 = 0;
  v8 = a3 + 56;
  v9 = 1 << *(a3 + 32);
  v10 = -1;
  if (v9 < 64)
  {
    v10 = ~(-1 << v9);
  }

  v11 = v10 & *(a3 + 56);
  v12 = (v9 + 63) >> 6;
  while (v11)
  {
    v13 = __clz(__rbit64(v11));
    v11 &= v11 - 1;
LABEL_11:
    v16 = v13 | (v7 << 6);
    v26 = *(*(a3 + 48) + 8 * v16);
    v17 = v26;
    v18 = a4(&v26);

    if (v6)
    {
      return;
    }

    if (v18)
    {
      *(a1 + ((v16 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v16;
      if (__OFADD__(v23++, 1))
      {
        __break(1u);
LABEL_16:

        a6(a1, a2, v23, a3);
        return;
      }
    }
  }

  v14 = v7;
  while (1)
  {
    v7 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_16;
    }

    v15 = *(v8 + 8 * v7);
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v11 = (v15 - 1) & v15;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F35F888(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v16 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = *(type metadata accessor for Song(0) + 64);
  sub_22F13BA9C(a1 + v8, v7, &qword_27DAB0920, &qword_22F770B20);
  v9 = sub_22F73F690();
  v10 = *(v9 - 8);
  v11 = *(v10 + 48);
  v12 = v11(v7, 1, v9);
  sub_22F15FCF0(v7);
  if (v12 == 1)
  {
    return *(a1 + 96);
  }

  sub_22F13BA9C(a1 + v8, v4, &qword_27DAB0920, &qword_22F770B20);
  if (v11(v4, 1, v9) == 1)
  {
    sub_22F15FCF0(v4);
  }

  else
  {
    sub_22F73F600();
    v15 = v14;
    (*(v10 + 8))(v4, v9);
    if (v15 < -604800.0)
    {
      return *(a1 + 96);
    }
  }

  return 0;
}

void sub_22F35FA68(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a4;
  v26 = a2;
  v27 = a1;
  v5 = type metadata accessor for Song(0);
  v29 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = (&v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v28 = 0;
  v8 = 0;
  v32 = a3;
  v11 = *(a3 + 56);
  v10 = a3 + 56;
  v9 = v11;
  v12 = 1 << *(v10 - 24);
  v13 = -1;
  if (v12 < 64)
  {
    v13 = ~(-1 << v12);
  }

  v14 = v13 & v9;
  v15 = (v12 + 63) >> 6;
  while (v14)
  {
    v16 = __clz(__rbit64(v14));
    v14 &= v14 - 1;
LABEL_11:
    v19 = v16 | (v8 << 6);
    v20 = sub_22F15CAA0(*(v32 + 48) + *(v29 + 72) * v19, v7);
    v21 = v7[1];
    v31[0] = *v7;
    v31[1] = v21;
    MEMORY[0x28223BE20](v20);
    *(&v25 - 2) = v31;
    v22 = sub_22F1C0E04(sub_22F1D0468, (&v25 - 4), v30);
    sub_22F15CBD8(v7);
    if ((v22 & 1) == 0)
    {
      *(v27 + ((v19 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v19;
      if (__OFADD__(v28++, 1))
      {
        __break(1u);
LABEL_15:
        v24 = v32;

        sub_22F1B9048(v27, v26, v28, v24);
        return;
      }
    }
  }

  v17 = v8;
  while (1)
  {
    v8 = v17 + 1;
    if (__OFADD__(v17, 1))
    {
      break;
    }

    if (v8 >= v15)
    {
      goto LABEL_15;
    }

    v18 = *(v10 + 8 * v8);
    ++v17;
    if (v18)
    {
      v16 = __clz(__rbit64(v18));
      v14 = (v18 - 1) & v18;
      goto LABEL_11;
    }
  }

  __break(1u);
}

uint64_t sub_22F35FC90(uint64_t a1, uint64_t a2)
{
  v35[2] = *MEMORY[0x277D85DE8];
  v4 = type metadata accessor for Song(0);
  v32 = *(v4 - 8);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = (&v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  LOBYTE(v5) = *(a1 + 32);
  v7 = v5 & 0x3F;
  v8 = ((1 << v5) + 63) >> 6;
  v9 = 8 * v8;
  v34 = a2;

  if (v7 > 0xD)
  {
    goto LABEL_19;
  }

  while (1)
  {
    v28 = &v28;
    v29 = v8;
    MEMORY[0x28223BE20](v10);
    v30 = &v28 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v30, v9);
    v31 = 0;
    v9 = 0;
    v33 = a1;
    v12 = *(a1 + 56);
    a1 += 56;
    v11 = v12;
    v13 = 1 << *(a1 - 24);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & v11;
    v8 = (v13 + 63) >> 6;
    while (v15)
    {
      v16 = __clz(__rbit64(v15));
      v15 &= v15 - 1;
LABEL_12:
      v19 = v16 | (v9 << 6);
      v20 = sub_22F15CAA0(*(v33 + 48) + *(v32 + 72) * v19, v6);
      v21 = v6[1];
      v35[0] = *v6;
      v35[1] = v21;
      MEMORY[0x28223BE20](v20);
      *(&v28 - 2) = v35;
      v22 = sub_22F1C0E04(sub_22F15A388, (&v28 - 4), v34);
      sub_22F15CBD8(v6);
      if ((v22 & 1) == 0)
      {
        *&v30[(v19 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v19;
        if (__OFADD__(v31++, 1))
        {
          __break(1u);
LABEL_16:
          v24 = sub_22F1B9048(v30, v29, v31, v33);

          return v24;
        }
      }
    }

    v17 = v9;
    while (1)
    {
      v9 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        break;
      }

      if (v9 >= v8)
      {
        goto LABEL_16;
      }

      v18 = *(a1 + 8 * v9);
      ++v17;
      if (v18)
      {
        v16 = __clz(__rbit64(v18));
        v15 = (v18 - 1) & v18;
        goto LABEL_12;
      }
    }

    __break(1u);
LABEL_19:

    if (!swift_stdlib_isStackAllocationSafe())
    {
      break;
    }
  }

  v26 = swift_slowAlloc();
  v27 = v34;

  v24 = sub_22F35EF1C(v26, v8, a1, v27);

  MEMORY[0x2319033A0](v26, -1, -1);

  return v24;
}

void *sub_22F35FFDC(uint64_t a1)
{
  v2 = type metadata accessor for Song(0);
  v3 = *(v2 - 1);
  MEMORY[0x28223BE20](v2);
  v94 = &v66 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v66 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v66 - v9;
  v73 = sub_22F73F690();
  v11 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v72 = &v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F73F680();
  v13 = *(a1 + 16);
  if (v13)
  {
    v70 = (*(v3 + 80) + 32) & ~*(v3 + 80);
    v14 = a1 + v70;
    v69 = *(v3 + 72);
    v68 = (v11 + 16);
    v67 = (v11 + 56);
    v15 = MEMORY[0x277D84F90];
    v71 = v11;
    do
    {
      v92 = v14;
      v93 = v13;
      sub_22F15CAA0(v14, v10);
      v16 = *(v10 + 1);
      v90 = *v10;
      v17 = *(v10 + 3);
      v75 = *(v10 + 2);
      v80 = v17;
      v18 = *(v10 + 5);
      v74 = *(v10 + 4);
      v89 = v18;
      v19 = *(v10 + 7);
      v77 = *(v10 + 6);
      v95 = v19;
      v101 = *(v10 + 8);
      v76 = v10[72];
      v79 = *(v10 + 10);
      v78 = v10[88];
      v20 = *(v10 + 23);
      v81 = v10[96];
      v82 = v20;
      v21 = *(v10 + 13);
      v22 = *(v10 + 14);
      v23 = *(v10 + 16);
      v83 = *(v10 + 15);
      v84 = v21;
      v99 = v23;
      v100 = v22;
      v24 = *(v10 + 17);
      v85 = *(v10 + 18);
      v86 = v24;
      sub_22F13BA9C(&v10[v2[15]], &v7[v2[15]], &qword_27DAB0C90, &unk_22F785B70);
      v25 = &v10[v2[26]];
      v26 = *v25;
      v87 = *(v25 + 1);
      v88 = v26;
      v27 = *(v25 + 2);
      v97 = *(v25 + 3);
      v98 = v27;
      v96 = *(v25 + 4);
      v28 = v25[44];
      v29 = *(v25 + 10);
      v91 = v29 | (v28 << 32);
      v30 = v2[16];
      v31 = v73;
      (*v68)(&v7[v30], v72, v73);
      (*v67)(&v7[v30], 0, 1, v31);
      v32 = v2[17];
      v33 = v2[18];
      *(v7 + 2) = v75;
      *(v7 + 4) = v74;
      v35 = v2[19];
      v34 = v2[20];
      *(v7 + 6) = v77;
      v7[72] = v76;
      v37 = v2[21];
      v36 = v2[22];
      *(v7 + 10) = v79;
      v7[88] = v78;
      v38 = v2[23];
      *(v7 + 23) = v82;
      v7[96] = v81;
      v39 = v2[25];
      v40 = v85;
      *(v7 + 13) = v84;
      *(v7 + 15) = v83;
      *v7 = v90;
      *(v7 + 1) = v16;
      *(v7 + 3) = v17;
      *(v7 + 5) = v89;
      *(v7 + 7) = v95;
      *(v7 + 8) = v101;
      *(v7 + 14) = v100;
      v41 = v98;
      *(v7 + 16) = v99;
      *(v7 + 17) = v86;
      *(v7 + 18) = v40;
      v42 = &v7[v2[26]];
      v42[44] = v28;
      v90 = *&v10[v32];
      v43 = v90;
      v44 = &v10[v33];
      *(v42 + 10) = v29;
      LODWORD(v33) = *&v10[v33];
      v45 = v87;
      v46 = v88;
      *v42 = v88;
      *(v42 + 1) = v45;
      *(v42 + 2) = v41;
      *(v42 + 3) = v97;
      *(v42 + 4) = v96;
      *&v7[v2[17]] = v43;
      v47 = &v7[v2[18]];
      *v47 = v33;
      v48 = &v10[v35];
      v47[4] = v44[4];
      LODWORD(v44) = *&v10[v35];
      v49 = &v7[v2[19]];
      *v49 = v44;
      LOBYTE(v44) = v48[4];
      v50 = &v10[v34];
      v49[4] = v44;
      LODWORD(v44) = *&v10[v34];
      v51 = &v7[v2[20]];
      *v51 = v44;
      LOBYTE(v44) = v50[4];
      v52 = &v10[v37];
      v51[4] = v44;
      LODWORD(v44) = *&v10[v37];
      v53 = &v7[v2[21]];
      *v53 = v44;
      LOBYTE(v44) = v52[4];
      v54 = &v10[v36];
      v53[4] = v44;
      LODWORD(v44) = *&v10[v36];
      v55 = &v7[v2[22]];
      *v55 = v44;
      LOBYTE(v44) = v54[4];
      v56 = &v10[v38];
      v55[4] = v44;
      LODWORD(v44) = *&v10[v38];
      v57 = &v7[v2[23]];
      *v57 = v44;
      v58 = &v10[v39];
      v57[4] = v56[4];
      v59 = *v58;
      v60 = *(v58 + 1);
      v7[v2[24]] = 0;
      v61 = &v7[v2[25]];
      *v61 = v59;
      *(v61 + 1) = v60;
      sub_22F15CAA0(v7, v94);

      sub_22F13BB04(v46, v45, v98, v97, v96);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v15 = sub_22F13E558(0, v15[2] + 1, 1, v15);
      }

      v63 = v15[2];
      v62 = v15[3];
      v11 = v71;
      if (v63 >= v62 >> 1)
      {
        v15 = sub_22F13E558((v62 > 1), v63 + 1, 1, v15);
      }

      sub_22F15CBD8(v7);
      sub_22F15CBD8(v10);
      v15[2] = v63 + 1;
      v64 = v69;
      sub_22F15CB04(v94, v15 + v70 + v63 * v69);
      v14 = v92 + v64;
      v13 = v93 - 1;
    }

    while (v93 != 1);
  }

  else
  {
    v15 = MEMORY[0x277D84F90];
  }

  (*(v11 + 8))(v72, v73);
  return v15;
}

unint64_t sub_22F360610()
{
  result = qword_2810A90B0;
  if (!qword_2810A90B0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A90B0);
  }

  return result;
}

uint64_t block_copy_helper_39(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_22F360674()
{
  result = qword_27DAB3CA0;
  if (!qword_27DAB3CA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3CA0);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph12MusicCuratorC12RefreshError33_568E390FF9884D08D41612BA001887D1LLO(uint64_t a1)
{
  if ((*(a1 + 8) & 2) != 0)
  {
    return (*a1 + 2);
  }

  else
  {
    return *(a1 + 8) & 3;
  }
}

uint64_t sub_22F3606E4(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 8) = a2;
  return result;
}

uint64_t sub_22F36073C(uint64_t a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 1;
  }

  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1;
  }

  v4 = 0;
  v5 = a1 + 32;
  v6 = a2 + 56;
  while (1)
  {
    if (!*(a2 + 16))
    {
      goto LABEL_5;
    }

    v7 = (v5 + 16 * v4);
    v9 = *v7;
    v8 = v7[1];
    sub_22F742170();

    sub_22F740D60();
    v10 = sub_22F7421D0();
    v11 = -1 << *(a2 + 32);
    v12 = v10 & ~v11;
    if ((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12))
    {
      break;
    }

LABEL_4:

LABEL_5:
    if (++v4 == v2)
    {
      return 1;
    }
  }

  v13 = ~v11;
  while (1)
  {
    v14 = (*(a2 + 48) + 16 * v12);
    v15 = *v14 == v9 && v14[1] == v8;
    if (v15 || (sub_22F742040() & 1) != 0)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v6 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_4;
    }
  }

  return 0;
}

uint64_t sub_22F360888(void *a1, uint64_t a2)
{
  v3 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration);
  v4 = *(a2 + OBJC_IVAR___PGMusicCuratorContext_blocklistConfiguration + 8);
  v5 = a1[1];
  v10[0] = *a1;
  v10[1] = v5;
  v9[2] = v10;
  if (sub_22F1C0E04(sub_22F15A388, v9, v3))
  {
    v6 = 0;
  }

  else if (v4 && (v7 = a1[8]) != 0)
  {

    v6 = sub_22F36073C(v7, v4);
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void sub_22F360944(void (*a1)(void *, __n128), uint64_t a2, uint64_t a3, __n128 a4)
{
  v36 = a1;
  v37 = a2;
  v35 = sub_22F740400();
  MEMORY[0x28223BE20](v35);
  v40 = &v30 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a3 + 16);
  if (v8)
  {
    v43 = MEMORY[0x277D84F90];
    v9 = v6;
    sub_22F146CF8(0, v8, 0);
    v41 = v43;
    v39 = a3 + 56;
    v10 = sub_22F741980();
    v11 = 0;
    v33 = v9 + 32;
    v34 = v9;
    v31 = a3 + 64;
    v32 = v8;
    while ((v10 & 0x8000000000000000) == 0 && v10 < 1 << *(a3 + 32))
    {
      v14 = v10 >> 6;
      if ((*(v39 + 8 * (v10 >> 6)) & (1 << v10)) == 0)
      {
        goto LABEL_23;
      }

      v15 = *(a3 + 36);
      v16 = a3;
      v17 = (*(a3 + 48) + 16 * v10);
      v18 = v17[1];
      v42[0] = *v17;
      v42[1] = v18;

      v36(v42);
      v38 = v4;
      if (v4)
      {
        goto LABEL_27;
      }

      v19 = v41;
      v43 = v41;
      v21 = *(v41 + 16);
      v20 = *(v41 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22F146CF8((v20 > 1), v21 + 1, 1);
        v19 = v43;
      }

      *(v19 + 16) = v21 + 1;
      v22 = (*(v34 + 80) + 32) & ~*(v34 + 80);
      v41 = v19;
      (*(v34 + 32))(v19 + v22 + *(v34 + 72) * v21, v40, v35);
      v12 = 1 << *(v16 + 32);
      if (v10 >= v12)
      {
        goto LABEL_24;
      }

      v23 = *(v39 + 8 * v14);
      if ((v23 & (1 << v10)) == 0)
      {
        goto LABEL_25;
      }

      a3 = v16;
      if (v15 != *(v16 + 36))
      {
        goto LABEL_26;
      }

      v24 = v23 & (-2 << (v10 & 0x3F));
      if (v24)
      {
        v12 = __clz(__rbit64(v24)) | v10 & 0x7FFFFFFFFFFFFFC0;
        v13 = v32;
      }

      else
      {
        v25 = v14 << 6;
        v26 = v14 + 1;
        v13 = v32;
        v27 = (v31 + 8 * v14);
        while (v26 < (v12 + 63) >> 6)
        {
          v29 = *v27++;
          v28 = v29;
          v25 += 64;
          ++v26;
          if (v29)
          {
            sub_22F107D18(v10, v15, 0);
            v12 = __clz(__rbit64(v28)) + v25;
            goto LABEL_4;
          }
        }

        sub_22F107D18(v10, v15, 0);
      }

LABEL_4:
      ++v11;
      v10 = v12;
      v4 = v38;
      if (v11 == v13)
      {
        return;
      }
    }

    __break(1u);
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:

    __break(1u);
  }
}

void sub_22F360C78(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 16) >= *(a2 + 16))
  {
    v2 = a2;
    v4 = a2 + 56;
    v5 = 1 << *(a2 + 32);
    if (v5 < 64)
    {
      v6 = ~(-1 << v5);
    }

    else
    {
      v6 = -1;
    }

    v7 = v6 & *(a2 + 56);
    v8 = (v5 + 63) >> 6;
    v9 = a1 + 56;

    v10 = 0;
    for (i = v2; ; v2 = i)
    {
      if (!v7)
      {
        do
        {
          v20 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            __break(1u);
            return;
          }

          if (v20 >= v8)
          {
            goto LABEL_22;
          }

          v7 = *(v4 + 8 * v20);
          ++v10;
        }

        while (!v7);
        v10 = v20;
        if (*(a1 + 16))
        {
          goto LABEL_9;
        }

LABEL_22:

        return;
      }

      if (!*(a1 + 16))
      {
        goto LABEL_22;
      }

LABEL_9:
      v11 = (*(v2 + 48) + ((v10 << 10) | (16 * __clz(__rbit64(v7)))));
      v13 = *v11;
      v12 = v11[1];
      sub_22F742170();

      sub_22F740D60();
      v14 = sub_22F7421D0();
      v15 = -1 << *(a1 + 32);
      v16 = v14 & ~v15;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        break;
      }

      v7 &= v7 - 1;
      v17 = ~v15;
      while (1)
      {
        v18 = (*(a1 + 48) + 16 * v16);
        v19 = *v18 == v13 && v18[1] == v12;
        if (v19 || (sub_22F742040() & 1) != 0)
        {
          break;
        }

        v16 = (v16 + 1) & v17;
        if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
        {
          goto LABEL_23;
        }
      }
    }

LABEL_23:
  }
}

PGGraphLocationCityNodeCollection __swiftcall ExtendedTokenCollectionGenerator.generateHomeCityNodes(for:)(PGGraphMomentNodeCollection a1)
{
  isa = a1.super.super.super.super.isa;
  v3 = *(v1 + 16);
  v4 = [v3 meNodeWithFallbackInferredMeNode];
  if (v4)
  {
    v5 = v4;
    v6 = [v4 collection];
    v7 = [v6 homeNodes];

    v8 = [v7 addressNodes];
    v9 = [v8 cityNodes];

    v10 = [(objc_class *)isa cityNodes];
    v11 = [v9 collectionByIntersecting_];
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v12 = sub_22F740B90();
    __swift_project_value_buffer(v12, qword_2810B4D00);
    v13 = v11;
    v14 = sub_22F740B70();
    v15 = sub_22F7415F0();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 134217984;
      *(v16 + 4) = [v13 count];

      _os_log_impl(&dword_22F0FC000, v14, v15, "%ld home cities.", v16, 0xCu);
      MEMORY[0x2319033A0](v16, -1, -1);
    }

    else
    {
    }

    v24 = v13;
  }

  else
  {
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v19 = sub_22F740B90();
    __swift_project_value_buffer(v19, qword_2810B4D00);
    v20 = sub_22F740B70();
    v21 = sub_22F7415F0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "No meNode, so no home location data.", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

    v23 = objc_allocWithZone(PGGraphLocationCityNodeCollection);

    v24 = [v23 initWithGraph_];
  }

  result.super.super.super.super.super._elementIdentifiers = v18;
  result.super.super.super.super.super._graphReference = v17;
  result.super.super.super.super.super.super.isa = v24;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.generateLocationExtendedTokens(for:areaInfoByAreaNodeIdentifier:homeCityNodes:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v26 = a2;
  v5 = sub_22F740270();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  v25[1] = __swift_project_value_buffer(v9, qword_2810B4D00);
  v10 = sub_22F740B70();
  v11 = sub_22F7415C0();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    *v12 = 0;
    _os_log_impl(&dword_22F0FC000, v10, v11, "generateLocationExtendedTokens for collection has started.", v12, 2u);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  v13 = *MEMORY[0x277D3C2B0];
  v14 = *(v6 + 104);
  v14(v8, v13, v5);
  sub_22F3630A8(a1, v8, 5, a3);
  v16 = v15;
  v17 = *(v6 + 8);
  v17(v8, v5);
  v14(v8, v13, v5);
  v18 = sub_22F363E90(v26, v8, 2);
  v19.n128_f64[0] = v17(v8, v5);
  v27 = v16;
  sub_22F144B08(v19, v18);
  v20 = v27;
  v21 = sub_22F740B70();
  v22 = sub_22F7415C0();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    *v23 = 0;
    _os_log_impl(&dword_22F0FC000, v21, v22, "generateLocationExtendedTokens for collection complete.", v23, 2u);
    MEMORY[0x2319033A0](v23, -1, -1);
  }

  return v20;
}

uint64_t ExtendedTokenCollectionGenerator.generateHomeExtendedTokens(for:cityInfoByCityNodeIdentifier:)(void *a1, uint64_t a2)
{
  v4 = sub_22F740270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v8 = sub_22F740B90();
  __swift_project_value_buffer(v8, qword_2810B4D00);
  v9 = sub_22F740B70();
  v10 = sub_22F7415C0();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 0;
    _os_log_impl(&dword_22F0FC000, v9, v10, "generateHomeExtendedTokens has started.", v11, 2u);
    MEMORY[0x2319033A0](v11, -1, -1);
  }

  if ([a1 count] < 1)
  {
    v23 = sub_22F740B70();
    v24 = sub_22F7415F0();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_22F0FC000, v23, v24, "No home city location data.", v25, 2u);
      MEMORY[0x2319033A0](v25, -1, -1);
    }

    return MEMORY[0x277D84F90];
  }

  v28 = a2;
  v30 = MEMORY[0x277D84F90];
  v12 = [a1 elementIdentifiers];
  v13 = swift_allocObject();
  *(v13 + 16) = &v30;
  v14 = swift_allocObject();
  *(v14 + 16) = sub_22F367B54;
  *(v14 + 24) = v13;
  aBlock[4] = sub_22F367B5C;
  aBlock[5] = v14;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F3618B8;
  aBlock[3] = &block_descriptor_40;
  v15 = _Block_copy(aBlock);

  [v12 enumerateIdentifiersWithBlock_];

  _Block_release(v15);
  LOBYTE(v12) = swift_isEscapingClosureAtFileLocation();

  if ((v12 & 1) == 0)
  {
    (*(v5 + 104))(v7, *MEMORY[0x277D3C2B0], v4);

    v17 = sub_22F36428C(v16, v7, v28);

    (*(v5 + 8))(v7, v4);
    v18 = sub_22F740B70();
    v19 = sub_22F7415C0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      _os_log_impl(&dword_22F0FC000, v18, v19, "generateHomeExtendedTokens complete.", v20, 2u);
      MEMORY[0x2319033A0](v20, -1, -1);
    }

    aBlock[0] = v17;

    sub_22F361954(aBlock, v21);

    v22 = aBlock[0];

    return v22;
  }

  __break(1u);

  __break(1u);
  return result;
}

void sub_22F3618E8(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_22F3F64CC(v2);
  }

  v3 = v2[2];
  v4[0] = (v2 + 4);
  v4[1] = v3;
  sub_22F364F84(v4);
  *a1 = v2;
}

void sub_22F361954(uint64_t *a1, __n128 a2)
{
  v3 = *(sub_22F740400() - 8);
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_22F3F64E0(v4);
  }

  v5 = v4[2];
  v6[0] = v4 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
  v6[1] = v5;
  sub_22F36508C(v6);
  *a1 = v4;
}

uint64_t ExtendedTokenCollectionGenerator.CityInfo.init(numberOfRelevantAssets:numberOfAssetsInAllMoments:assetUUIDs:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  *a4 = result;
  a4[1] = a2;
  a4[2] = a3;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.CityInfo.description.getter()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79BF20);
  v0 = sub_22F742010();
  MEMORY[0x231900B10](v0);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79BF40);
  v1 = sub_22F742010();
  MEMORY[0x231900B10](v1);

  return 0;
}

uint64_t ExtendedTokenCollectionGenerator.AreaInfo.init(numberOfRelevantAssets:numberOfAssetsInAllMoments:assetUUIDs:popularityScore:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, double a5@<D0>)
{
  *a4 = result;
  *(a4 + 8) = a2;
  *(a4 + 16) = a3;
  *(a4 + 24) = a5;
  return result;
}

uint64_t ExtendedTokenCollectionGenerator.AreaInfo.description.getter()
{
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000018, 0x800000022F79BF20);
  v0 = sub_22F742010();
  MEMORY[0x231900B10](v0);

  MEMORY[0x231900B10](0xD00000000000001ELL, 0x800000022F79BF40);
  v1 = sub_22F742010();
  MEMORY[0x231900B10](v1);

  MEMORY[0x231900B10](0xD000000000000013, 0x800000022F79BF60);
  sub_22F7413B0();
  return 0;
}

void sub_22F361CA4(void *a1@<X0>, SEL *a3@<X2>, SEL *a4@<X3>, SEL *a5@<X4>, void *a6@<X8>)
{
  v11 = objc_opt_self();
  v12 = a1;
  v13 = [v11 *a3];
  v14 = [objc_msgSend(v12 graph)];
  swift_unknownObjectRelease();
  v15 = [v14 concreteGraph];

  if (v15 && (v16 = [v12 elementIdentifiers], v17 = objc_msgSend(v15, sel_adjacencyWithSources_relation_, v16, v13), v16, v12, v13, *a6 = v17, a6[1] = v15, v18 = v12, v19 = objc_msgSend(v11, *a4), v20 = objc_msgSend(objc_msgSend(v18, sel_graph), sel_graphReference), swift_unknownObjectRelease(), v21 = objc_msgSend(v20, sel_concreteGraph), v20, v21) && (v22 = objc_msgSend(v18, sel_elementIdentifiers), v23 = objc_msgSend(v21, sel_adjacencyWithSources_relation_, v22, v19), v22, v18, v19, a6[2] = v23, a6[3] = v21, v24 = objc_msgSend(v11, *a5), v25 = objc_msgSend(objc_msgSend(v18, sel_graph), sel_graphReference), swift_unknownObjectRelease(), v26 = objc_msgSend(v25, sel_concreteGraph), v25, v26))
  {
    v27 = [v18 elementIdentifiers];
    v28 = [v26 adjacencyWithSources:v27 relation:v24];

    a6[4] = v28;
    a6[5] = v26;
  }

  else
  {
    sub_22F741D40();
    __break(1u);
  }
}

void sub_22F361FB0(void *a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, uint64_t a8, uint64_t a9, char a10, void *a11, uint64_t a12, uint64_t a13)
{
  if (!*(a4 + 16))
  {
    goto LABEL_17;
  }

  v20 = sub_22F1236C4(a1);
  if ((v21 & 1) == 0 || !*(a5 + 16))
  {
    goto LABEL_17;
  }

  v22 = (*(a4 + 56) + 16 * v20);
  v23 = *v22;
  v24 = v22[1];

  v25 = sub_22F1229E8(v23, v24);
  if ((v26 & 1) == 0 || !*(a6 + 16) || (v27 = *(*(a5 + 56) + 8 * v25), , v28 = sub_22F1229E8(v23, v24), v30 = v29, , (v30 & 1) == 0))
  {

LABEL_17:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D00);
    v39 = a1;
    oslog = sub_22F740B70();
    v40 = sub_22F7415E0();

    if (!os_log_type_enabled(oslog, v40))
    {
      goto LABEL_22;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    *v41 = 138412290;
    *(v41 + 4) = v39;
    *v42 = v39;
    v43 = v39;
    _os_log_impl(&dword_22F0FC000, oslog, v40, "No momentUUID, assetUUIDs, or numberOfAssetsInMoment for momentNodeAsCollection %@!", v41, 0xCu);
    sub_22F2A87F0(v42);
    MEMORY[0x2319033A0](v42, -1, -1);
    v37 = v41;
    goto LABEL_21;
  }

  v31 = *(*(a6 + 56) + 8 * v28);
  v32 = *(v27 + 16);
  if (v32)
  {
    v33 = v31 < 1;
  }

  else
  {
    v33 = 1;
  }

  if (v33)
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D00);
    oslog = sub_22F740B70();
    v35 = sub_22F7415E0();
    if (!os_log_type_enabled(oslog, v35))
    {
      goto LABEL_22;
    }

    v36 = swift_slowAlloc();
    *v36 = 134218240;
    *(v36 + 4) = v32;
    *(v36 + 12) = 2048;
    *(v36 + 14) = v31;
    _os_log_impl(&dword_22F0FC000, oslog, v35, "No retrieved %ld or total assets %ld in moment.", v36, 0x16u);
    v37 = v36;
LABEL_21:
    MEMORY[0x2319033A0](v37, -1, -1);
LABEL_22:

    return;
  }

  v44 = [a2 elementIdentifiers];
  v45 = [a7 targetsForSources_];

  v46 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:a8 elementIdentifiers:v45];
  v47 = swift_allocObject();
  v47[2] = v32;
  v47[3] = v31;
  v47[4] = v27;
  v47[5] = a9;
  v48 = swift_allocObject();
  *(v48 + 16) = sub_22F369048;
  *(v48 + 24) = v47;
  v62 = sub_22F20AE34;
  v63 = v48;
  aBlock = MEMORY[0x277D85DD0];
  v59 = 1107296256;
  v60 = sub_22F107F34;
  v61 = &block_descriptor_38;
  v49 = _Block_copy(&aBlock);

  [v46 enumerateIdentifiersAsCollectionsWithBlock_];
  _Block_release(v49);
  isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

  if (isEscapingClosureAtFileLocation)
  {
    __break(1u);
    return;
  }

  if (a10)
  {
    v51 = [a2 elementIdentifiers];
    v52 = [a11 targetsForSources_];

    v53 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:a12 elementIdentifiers:v52];
    v54 = swift_allocObject();
    v54[2] = v32;
    v54[3] = v31;
    v54[4] = v27;
    v54[5] = a13;
    v55 = swift_allocObject();
    *(v55 + 16) = sub_22F369054;
    *(v55 + 24) = v54;
    v62 = sub_22F369060;
    v63 = v55;
    aBlock = MEMORY[0x277D85DD0];
    v59 = 1107296256;
    v60 = sub_22F3627FC;
    v61 = &block_descriptor_47_0;
    v56 = _Block_copy(&aBlock);

    [v53 enumeratePopularityScoresUsingBlock_];

    _Block_release(v56);
    LOBYTE(v53) = swift_isEscapingClosureAtFileLocation();

    if ((v53 & 1) == 0)
    {
      return;
    }

    __break(1u);
  }
}

unint64_t sub_22F362600(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{

  v12 = sub_22F1515F8(a6);

  v13 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_6;
  }

  result = sub_22F122B68(a1);
  if ((v15 & 1) == 0)
  {
    goto LABEL_6;
  }

  v16 = (*(v13 + 56) + 24 * result);
  v17 = __OFADD__(a4, *v16);
  a4 += *v16;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    v18 = v16[1];
    v17 = __OFADD__(a5, v18);
    a5 += v18;
    if (!v17)
    {

      v12 = sub_22F144608(v19, v12);
LABEL_6:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v21 = *a7;
      *a7 = 0x8000000000000000;
      result = sub_22F1309B4(a4, a5, v12, a1, isUniquelyReferenced_nonNull_native);
      *a7 = v21;
      return result;
    }
  }

  __break(1u);
  return result;
}

unint64_t sub_22F3626F8(uint64_t a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7)
{

  v13 = sub_22F1515F8(a6);

  v14 = *a7;
  if (!*(*a7 + 16))
  {
    goto LABEL_6;
  }

  result = sub_22F122B68(a1);
  if ((v16 & 1) == 0)
  {
    goto LABEL_6;
  }

  v17 = (*(v14 + 56) + 32 * result);
  v18 = __OFADD__(a4, *v17);
  a4 += *v17;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    v19 = v17[1];
    v18 = __OFADD__(a5, v19);
    a5 += v19;
    if (!v18)
    {

      v13 = sub_22F144608(v20, v13);
LABEL_6:
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v22 = *a7;
      *a7 = 0x8000000000000000;
      result = sub_22F13300C(a4, a5, v13, a1, isUniquelyReferenced_nonNull_native, a2);
      *a7 = v22;
      return result;
    }
  }

  __break(1u);
  return result;
}

void sub_22F36282C(uint64_t a1@<X0>, void *a2@<X8>)
{
  v4 = sub_22F740020();
  v5 = *(v4 - 8);
  v73 = v4;
  v74 = v5;
  MEMORY[0x28223BE20](v4);
  v72 = v64 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_22F7404D0();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = (v64 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0));
  v11 = sub_22F7403B0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = v64 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v17 = v64 - v16;
  v69 = a1;
  v18 = sub_22F73FD40();
  if (!*(v18 + 16))
  {

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D00);
    v35 = sub_22F740B70();
    v36 = sub_22F7415E0();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_22F0FC000, v35, v36, "The query token does not have any suggestions", v37, 2u);
      MEMORY[0x2319033A0](v37, -1, -1);
    }

    goto LABEL_19;
  }

  (*(v12 + 16))(v14, v18 + ((*(v12 + 80) + 32) & ~*(v12 + 80)), v11);

  (*(v12 + 32))(v17, v14, v11);
  v68 = v17;
  sub_22F7403A0();
  if ((*(v8 + 88))(v10, v7) != *MEMORY[0x277D3C510])
  {
    (*(v8 + 8))(v10, v7);
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v38 = sub_22F740B90();
    __swift_project_value_buffer(v38, qword_2810B4D00);
    v39 = sub_22F740B70();
    v40 = sub_22F7415E0();
    v41 = os_log_type_enabled(v39, v40);
    v42 = v68;
    if (v41)
    {
      v43 = swift_slowAlloc();
      *v43 = 0;
      _os_log_impl(&dword_22F0FC000, v39, v40, "The query token is not a location token", v43, 2u);
      MEMORY[0x2319033A0](v43, -1, -1);
    }

    (*(v12 + 8))(v42, v11);
LABEL_19:
    v44 = MEMORY[0x277D84F90];
    goto LABEL_29;
  }

  v65 = v12;
  v66 = v11;
  v67 = a2;
  (*(v8 + 96))(v10, v7);
  v19 = *v10;

  v20 = *(v19 + 16);
  if (v20)
  {
    v75 = MEMORY[0x277D84F90];
    sub_22F146454(0, v20, 0);
    v21 = v75;
    v22 = *(v74 + 16);
    v23 = *(v74 + 80);
    v64[1] = v19;
    v24 = v19 + ((v23 + 32) & ~v23);
    v70 = *(v74 + 72);
    v71 = v22;
    v74 += 16;
    v25 = (v74 - 8);
    do
    {
      v26 = v72;
      v27 = v73;
      v71(v72, v24, v73);
      v28 = sub_22F740010();
      v30 = v29;
      (*v25)(v26, v27);
      v75 = v21;
      v32 = *(v21 + 16);
      v31 = *(v21 + 24);
      if (v32 >= v31 >> 1)
      {
        sub_22F146454((v31 > 1), v32 + 1, 1);
        v21 = v75;
      }

      *(v21 + 16) = v32 + 1;
      v33 = v21 + 16 * v32;
      *(v33 + 32) = v28;
      *(v33 + 40) = v30;
      v24 += v70;
      --v20;
    }

    while (v20);
  }

  else
  {

    v21 = MEMORY[0x277D84F90];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = sub_22F73FD50();
  *(inited + 40) = v46;
  v75 = v21;
  sub_22F144A14(inited);
  v47 = v75;
  v48 = *(v75 + 16);
  if (v48)
  {
    v77 = MEMORY[0x277D84F90];
    sub_22F146454(0, v48, 0);
    v49 = v77;
    sub_22F160DE4();
    v50 = (v47 + 40);
    do
    {
      v51 = *v50;
      v75 = *(v50 - 1);
      v76 = v51;
      v52 = sub_22F7418C0();
      v77 = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        v74 = v52;
        v57 = v53;
        sub_22F146454((v54 > 1), v55 + 1, 1);
        v53 = v57;
        v52 = v74;
        v49 = v77;
      }

      *(v49 + 16) = v55 + 1;
      v56 = v49 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v50 += 2;
      --v48;
    }

    while (v48);
  }

  else
  {

    v49 = MEMORY[0x277D84F90];
  }

  v58 = sub_22F1515F8(v49);

  v59 = v69;
  v60 = sub_22F73FD90();
  v61 = MEMORY[0x28223BE20](v60);
  v64[-2] = v59;
  v64[-1] = v62;
  sub_22F360944(sub_22F368F6C, &v64[-4], v58, v61);
  v44 = v63;

  (*(v65 + 8))(v68, v66);
  a2 = v67;
LABEL_29:
  *a2 = v44;
}

uint64_t sub_22F362F60(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_22F740270();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = (&v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  swift_bridgeObjectRetain_n();
  *v7 = sub_22F73FD80();
  (*(v5 + 104))(v7, *MEMORY[0x277D3C2B8], v4);
  result = sub_22F7403F0();
  if (a3)
  {
    if (*(a3 + 16))
    {

      return sub_22F7403D0();
    }
  }

  return result;
}

void sub_22F3630A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (qword_2810A9B10 != -1)
  {
LABEL_92:
    swift_once();
  }

  v7 = qword_2810B4E10;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("ExtendedTokenGenerator: sortAndCreateLocationExtendedTokens", 59, 2u, v8, 0, v7, v127);
  if (qword_2810A9418 != -1)
  {
    swift_once();
  }

  v9 = sub_22F740B90();
  __swift_project_value_buffer(v9, qword_2810B4D00);

  v10 = sub_22F740B70();
  v11 = sub_22F7415F0();

  v122 = a4;
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v125[0] = v13;
    *v12 = 136380675;
    type metadata accessor for KGElementIdentifier(0);
    sub_22F36892C();
    v14 = sub_22F740CB0();
    v16 = sub_22F145F20(v14, v15, v125);

    *(v12 + 4) = v16;
    _os_log_impl(&dword_22F0FC000, v10, v11, "unfilteredCityInfoByCityNodeIdentifier: %{private}s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v13);
    MEMORY[0x2319033A0](v13, -1, -1);
    MEMORY[0x2319033A0](v12, -1, -1);
  }

  a4 = _s11PhotosGraph32ExtendedTokenCollectionGeneratorC016filterCityInfoByH14NodeIdentifier3forSDySo09KGElementL0VAC0hI0VGAJ_tFZ_0(a1);
  v126 = a4;

  v17 = sub_22F740B70();
  v18 = sub_22F7415F0();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    *v19 = 134218240;
    *(v19 + 4) = *(a1 + 16);

    *(v19 + 12) = 2048;
    *(v19 + 14) = *(a4 + 16);
    _os_log_impl(&dword_22F0FC000, v17, v18, "%ld cities filtered to %ld cities by removing cities that are complete subsets of other cities.", v19, 0x16u);
    MEMORY[0x2319033A0](v19, -1, -1);
  }

  else
  {
  }

  v20 = sub_22F740B70();
  v21 = sub_22F7415F0();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    v23 = swift_slowAlloc();
    v125[0] = v23;
    *v22 = 136380675;
    type metadata accessor for KGElementIdentifier(0);
    sub_22F36892C();

    v24 = sub_22F740CB0();
    v26 = v25;

    v27 = sub_22F145F20(v24, v26, v125);

    *(v22 + 4) = v27;
    _os_log_impl(&dword_22F0FC000, v20, v21, "cityInfoByCityNodeIdentifier after filter: %{private}s", v22, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v23);
    MEMORY[0x2319033A0](v23, -1, -1);
    MEMORY[0x2319033A0](v22, -1, -1);
  }

  v28 = 0;
  v29 = 0;
  a1 = a4 + 64;
  v30 = 1 << *(a4 + 32);
  v31 = -1;
  if (v30 < 64)
  {
    v31 = ~(-1 << v30);
  }

  v32 = v31 & *(a4 + 64);
  do
  {
    if (!v32)
    {
      while (1)
      {
        v33 = v28 + 1;
        if (__OFADD__(v28, 1))
        {
          break;
        }

        if (v33 >= ((v30 + 63) >> 6))
        {
          goto LABEL_23;
        }

        v32 = *(a1 + 8 * v33);
        ++v28;
        if (v32)
        {
          v28 = v33;
          goto LABEL_20;
        }
      }

      __break(1u);
LABEL_88:
      __break(1u);
      goto LABEL_89;
    }

    v33 = v28;
LABEL_20:
    v34 = __clz(__rbit64(v32));
    v32 &= v32 - 1;
    v35 = *(*(a4 + 56) + 24 * (v34 | (v33 << 6)) + 8);
    v36 = __OFADD__(v29, v35);
    v29 += v35;
  }

  while (!v36);
  __break(1u);
LABEL_23:
  if (v29 >= 1)
  {
    v37 = v29;
    [objc_opt_self() minimumCumulativeDistributionOfCityFrequency];
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3CB8, &unk_22F788770);
    v38 = sub_22F741DC0();
    v39 = 0;
    v40 = 1 << *(a4 + 32);
    v41 = -1;
    if (v40 < 64)
    {
      v41 = ~(-1 << v40);
    }

    v42 = v41 & *(a4 + 64);
    v43 = (v40 + 63) >> 6;
    if (v42)
    {
      while (1)
      {
        v44 = __clz(__rbit64(v42));
        v42 &= v42 - 1;
        v45 = v44 | (v39 << 6);
LABEL_33:
        v48 = *(*(a4 + 48) + 8 * v45);
        v49 = *(*(a4 + 56) + 24 * v45);
        *(v38 + ((v45 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v45;
        *(v38[6] + 8 * v45) = v48;
        *(v38[7] + 8 * v45) = v49 / v37;
        v50 = v38[2];
        v36 = __OFADD__(v50, 1);
        v51 = v50 + 1;
        if (v36)
        {
          break;
        }

        v38[2] = v51;
        if (!v42)
        {
          goto LABEL_28;
        }
      }

LABEL_89:
      __break(1u);
LABEL_90:
      __break(1u);
LABEL_91:
      __break(1u);
      goto LABEL_92;
    }

LABEL_28:
    v46 = v39;
    while (1)
    {
      v39 = v46 + 1;
      if (__OFADD__(v46, 1))
      {
        goto LABEL_88;
      }

      if (v39 >= v43)
      {
        break;
      }

      v47 = *(a1 + 8 * v39);
      ++v46;
      if (v47)
      {
        v42 = (v47 - 1) & v47;
        v45 = __clz(__rbit64(v47)) | (v39 << 6);
        goto LABEL_33;
      }
    }

    type metadata accessor for KGElementIdentifier(0);
    v53 = v52;
    sub_22F36892C();
    v54 = sub_22F7405B0();
    v55 = sub_22F740B70();
    v56 = sub_22F7415F0();
    v121 = a2;
    if (os_log_type_enabled(v55, v56))
    {
      v120 = v53;
      v57 = swift_slowAlloc();
      v58 = swift_slowAlloc();
      v125[0] = v58;
      *v57 = 136380675;
      v59 = MEMORY[0x231900D40](v54, v120);
      v61 = sub_22F145F20(v59, v60, v125);

      *(v57 + 4) = v61;
      _os_log_impl(&dword_22F0FC000, v55, v56, "City gaussian locations: %{private}s", v57, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v58);
      MEMORY[0x2319033A0](v58, -1, -1);
      v62 = v57;
      v53 = v120;
      MEMORY[0x2319033A0](v62, -1, -1);
    }

    v63 = *(v54 + 16);
    a2 = a3 - v63;
    if (!__OFSUB__(a3, v63))
    {
      if (a2 < 1)
      {

        v67 = sub_22F740B70();
        v78 = sub_22F7415F0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "Maximum number of cities achieved, no need to re run for new gaussian results";
      }

      else if (v63 && (v64 = *(v54 + 32), v65 = [v122 elementIdentifiers], v66 = objc_msgSend(v65, sel_containsIdentifier_, v64), v65, v66))
      {
        if (*(a4 + 16) < 3uLL)
        {

          v67 = sub_22F740B70();
          v68 = sub_22F7415F0();
          if (os_log_type_enabled(v67, v68))
          {
            v69 = swift_slowAlloc();
            *v69 = 134217984;
            *(v69 + 4) = *(a4 + 16);
            v70 = "Not enough non-home cities (%ld < 3), no need to re run for new gaussian results";
            v71 = v68;
            v72 = v67;
            v73 = v69;
            v74 = 12;
LABEL_53:
            _os_log_impl(&dword_22F0FC000, v72, v71, v70, v73, v74);
            MEMORY[0x2319033A0](v69, -1, -1);
          }

LABEL_54:

          sub_22F36428C(v54, v121, a4);

          swift_bridgeObjectRelease_n();
          sub_22F1B2BBC(0);

          return;
        }

        v79 = sub_22F740B70();
        v80 = sub_22F7415F0();
        if (os_log_type_enabled(v79, v80))
        {
          v81 = v64;
          v82 = swift_slowAlloc();
          *v82 = 0;
          _os_log_impl(&dword_22F0FC000, v79, v80, "Re running distribution without home", v82, 2u);
          v83 = v82;
          v64 = v81;
          MEMORY[0x2319033A0](v83, -1, -1);
        }

        swift_beginAccess();
        sub_22F2B7160(v64, v125);
        swift_endAccess();

        v84 = 0;
        v85 = 0;
        a4 = v126;
        v86 = 1 << *(v126 + 32);
        v87 = -1;
        if (v86 < 64)
        {
          v87 = ~(-1 << v86);
        }

        a1 = v126 + 64;
        v88 = v87 & *(v126 + 64);
        v89 = (v86 + 63) >> 6;
        do
        {
          if (!v88)
          {
            while (1)
            {
              v90 = v84 + 1;
              if (__OFADD__(v84, 1))
              {
                goto LABEL_90;
              }

              if (v90 >= v89)
              {
                goto LABEL_69;
              }

              v88 = *(a1 + 8 * v90);
              ++v84;
              if (v88)
              {
                v84 = v90;
                goto LABEL_66;
              }
            }
          }

          v90 = v84;
LABEL_66:
          v91 = __clz(__rbit64(v88));
          v88 &= v88 - 1;
          v92 = *(*(v126 + 56) + 24 * (v91 | (v90 << 6)) + 8);
          v36 = __OFADD__(v85, v92);
          v85 += v92;
        }

        while (!v36);
        __break(1u);
LABEL_69:
        if (v85 >= 1)
        {
          v93 = v85;

          v94 = sub_22F741DC0();
          v95 = 0;
          v96 = 1 << *(a4 + 32);
          v97 = -1;
          if (v96 < 64)
          {
            v97 = ~(-1 << v96);
          }

          v98 = v97 & *(a4 + 64);
          v99 = (v96 + 63) >> 6;
          if (!v98)
          {
LABEL_74:
            v102 = v95;
            while (1)
            {
              v95 = v102 + 1;
              if (__OFADD__(v102, 1))
              {
                goto LABEL_91;
              }

              if (v95 >= v99)
              {
                v124 = v64;

                v108 = sub_22F7405B0();

                v109 = sub_22F740B70();
                v110 = sub_22F7415F0();

                if (os_log_type_enabled(v109, v110))
                {
                  v111 = swift_slowAlloc();
                  v112 = swift_slowAlloc();
                  v113 = v53;
                  v114 = v112;
                  v125[0] = v112;
                  *v111 = 136380675;
                  v115 = MEMORY[0x231900D40](v108, v113);
                  v117 = sub_22F145F20(v115, v116, v125);

                  *(v111 + 4) = v117;
                  _os_log_impl(&dword_22F0FC000, v109, v110, "City gaussian locations without home: %{private}s", v111, 0xCu);
                  __swift_destroy_boxed_opaque_existential_0(v114);
                  MEMORY[0x2319033A0](v114, -1, -1);
                  MEMORY[0x2319033A0](v111, -1, -1);
                }

                __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB0EC0, &unk_22F771510);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_22F771340;
                *(inited + 32) = v124;
                v125[0] = inited;
                sub_22F144B34(v108);
                v119 = v125[0];

                sub_22F36428C(v119, v121, a4);

                sub_22F1B2BBC(0);

                return;
              }

              v103 = *(a1 + 8 * v95);
              ++v102;
              if (v103)
              {
                v98 = (v103 - 1) & v103;
                v101 = __clz(__rbit64(v103)) | (v95 << 6);
                goto LABEL_79;
              }
            }
          }

          while (1)
          {
            v100 = __clz(__rbit64(v98));
            v98 &= v98 - 1;
            v101 = v100 | (v95 << 6);
LABEL_79:
            v104 = *(*(a4 + 48) + 8 * v101);
            v105 = *(*(a4 + 56) + 24 * v101);
            *(v94 + ((v101 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v101;
            *(v94[6] + 8 * v101) = v104;
            *(v94[7] + 8 * v101) = v105 / v93;
            v106 = v94[2];
            v36 = __OFADD__(v106, 1);
            v107 = v106 + 1;
            if (v36)
            {
              goto LABEL_94;
            }

            v94[2] = v107;
            if (!v98)
            {
              goto LABEL_74;
            }
          }
        }

        v67 = sub_22F740B70();
        v78 = sub_22F7415E0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "totalAssets was 0 during re run! This is not possible at this point!";
      }

      else
      {

        v67 = sub_22F740B70();
        v78 = sub_22F7415F0();
        if (!os_log_type_enabled(v67, v78))
        {
          goto LABEL_54;
        }

        v69 = swift_slowAlloc();
        *v69 = 0;
        v70 = "Home city is not top result, no need to re run for new gaussian results";
      }

      v71 = v78;
      v72 = v67;
      v73 = v69;
      v74 = 2;
      goto LABEL_53;
    }

    __break(1u);
LABEL_94:
    __break(1u);
    return;
  }

  v75 = sub_22F740B70();
  v76 = sub_22F7415E0();
  if (os_log_type_enabled(v75, v76))
  {
    v77 = swift_slowAlloc();
    *v77 = 0;
    _os_log_impl(&dword_22F0FC000, v75, v76, "totalAssets was 0! This is not possible at this point!", v77, 2u);
    MEMORY[0x2319033A0](v77, -1, -1);
  }

  sub_22F1B2BBC(0);
}

void *sub_22F363E90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = objc_opt_self();
  if ([v5 useAOIsInExtendedTokens])
  {
    v6 = 0;
    v7 = 0;
    v8 = a1 + 64;
    v9 = 1 << *(a1 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(a1 + 64);
    v12 = (v9 + 63) >> 6;
    while (v11)
    {
      v13 = v6;
LABEL_11:
      v14 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v15 = *(*(a1 + 56) + ((v13 << 11) | (32 * v14)) + 8);
      v16 = __OFADD__(v7, v15);
      v7 += v15;
      if (v16)
      {
        __break(1u);
        goto LABEL_14;
      }
    }

    while (1)
    {
      v13 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        __break(1u);
        goto LABEL_38;
      }

      if (v13 >= v12)
      {
        break;
      }

      v11 = *(v8 + 8 * v13);
      ++v6;
      if (v11)
      {
        v6 = v13;
        goto LABEL_11;
      }
    }

    if (v7 >= 1)
    {
      v22 = v7;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3CB8, &unk_22F788770);
      v23 = sub_22F741DC0();
      v24 = 0;
      v25 = 1 << *(a1 + 32);
      v26 = -1;
      if (v25 < 64)
      {
        v26 = ~(-1 << v25);
      }

      v27 = v26 & *(a1 + 64);
      for (i = (v25 + 63) >> 6; v27; v23[2] = v38)
      {
        v29 = __clz(__rbit64(v27));
        v27 &= v27 - 1;
        v30 = v29 | (v24 << 6);
LABEL_27:
        v33 = *(*(a1 + 48) + 8 * v30);
        v34 = *(a1 + 56) + 32 * v30;
        v35 = *(v34 + 24);
        v36 = *v34 / v22;
        *(v23 + ((v30 >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << v30;
        *(v23[6] + 8 * v30) = v33;
        *(v23[7] + 8 * v30) = v35 * v36;
        v37 = v23[2];
        v16 = __OFADD__(v37, 1);
        v38 = v37 + 1;
        if (v16)
        {
          goto LABEL_39;
        }
      }

      v31 = v24;
      while (1)
      {
        v24 = v31 + 1;
        if (__OFADD__(v31, 1))
        {
          break;
        }

        if (v24 >= i)
        {
          [v5 minimumCumulativeDistributionOfAreaFrequency];
          type metadata accessor for KGElementIdentifier(0);
          sub_22F36892C();
          v39 = sub_22F7405B0();

          v40 = sub_22F3648CC(v39, a2, a1);

          return v40;
        }

        v32 = *(v8 + 8 * v24);
        ++v31;
        if (v32)
        {
          v27 = (v32 - 1) & v32;
          v30 = __clz(__rbit64(v32)) | (v24 << 6);
          goto LABEL_27;
        }
      }

LABEL_38:
      __break(1u);
LABEL_39:
      __break(1u);
      goto LABEL_40;
    }

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v42 = sub_22F740B90();
    __swift_project_value_buffer(v42, qword_2810B4D00);
    v18 = sub_22F740B70();
    v19 = sub_22F7415E0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "totalAssets was 0! This is not possible at this point!";
      goto LABEL_35;
    }
  }

  else
  {
LABEL_14:
    if (qword_2810A9418 != -1)
    {
LABEL_40:
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D00);
    v18 = sub_22F740B70();
    v19 = sub_22F7415F0();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      *v20 = 0;
      v21 = "useAOIsInExtendedTokens is false, so skipping area location generation.";
LABEL_35:
      _os_log_impl(&dword_22F0FC000, v18, v19, v21, v20, 2u);
      MEMORY[0x2319033A0](v20, -1, -1);
    }
  }

  return MEMORY[0x277D84F90];
}

void *sub_22F36428C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      [v7 addIdentifier_];
      --v8;
    }

    while (v8);
  }

  v11 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:*(v3 + 16) elementIdentifiers:v7];
  sub_22F361CA4(v11, &selRef_countyOfCity, &selRef_stateOfCity, &selRef_countryOfCity, v16);
  MEMORY[0x28223BE20](v12);
  v15[2] = v3;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a2;
  v13 = sub_22F2CFE8C(sub_22F368320, v15, a1);

  sub_22F368340(v16);
  return v13;
}

uint64_t sub_22F3643DC@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v52 = a6;
  v10 = sub_22F740270();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a2 + 16);
  v16 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v17 = v15;
  v18 = [v16 initWithElementIdentifier_];
  v19 = [objc_allocWithZone(PGGraphLocationCityNodeCollection) initWithGraph:v17 elementIdentifiers:v18];

  v20 = a3[1];
  v49 = *a3;
  v50 = v20;
  v51 = a3[2];
  v21 = sub_22F368370(v19, &v49);
  if (!v21)
  {
LABEL_9:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location hierarchy from city node doesn't have expected city component!";
LABEL_18:
    _os_log_impl(&dword_22F0FC000, v32, v33, v35, v34, 2u);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_19:

    v37 = sub_22F740400();
    return (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  if (!*(v21 + 2))
  {
LABEL_8:

    goto LABEL_9;
  }

  if (!*(a4 + 16))
  {
LABEL_14:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Assets expected from city node!";
    goto LABEL_18;
  }

  v23 = *(v21 + 4);
  v22 = *(v21 + 5);
  v46 = v21;

  v24 = sub_22F122B68(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_14;
  }

  v44 = v23;
  v45 = v22;
  v26 = *(*(a4 + 56) + 24 * v24 + 16);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = sub_22F10B348(*(v26 + 16), 0);
    v29 = sub_22F11A438(&v49, v28 + 4, v27, v26);
    v30 = v49;
    v42[1] = *(&v50 + 1);
    v43 = v29;
    v42[0] = v51;

    sub_22F0FF590(v30);
    if (v43 != v27)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  *&v49 = v28;

  v39 = v48;
  sub_22F1AB0EC(&v49);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    *&v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    (*(v11 + 16))(v13, v47, v10);
    v40 = v52;
    sub_22F7403F0();

    v41 = sub_22F740400();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  return result;
}

void *sub_22F3648CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = [objc_allocWithZone(MEMORY[0x277D22BD0]) init];
  v8 = *(a1 + 16);
  if (v8)
  {
    v9 = (a1 + 32);
    do
    {
      v10 = *v9++;
      [v7 addIdentifier_];
      --v8;
    }

    while (v8);
  }

  v11 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:*(v3 + 16) elementIdentifiers:v7];
  sub_22F361CA4(v11, &selRef_countyOfArea, &selRef_stateOfArea, &selRef_countryOfArea, v16);
  MEMORY[0x28223BE20](v12);
  v15[2] = v3;
  v15[3] = v16;
  v15[4] = a3;
  v15[5] = a2;
  v13 = sub_22F2CFE8C(sub_22F368984, v15, a1);

  sub_22F3689A4(v16);
  return v13;
}

uint64_t sub_22F364A1C@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, __int128 *a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v47 = a5;
  v52 = a6;
  v10 = sub_22F740270();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = v42 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a1;
  v15 = *(a2 + 16);
  v16 = objc_allocWithZone(MEMORY[0x277D22BB0]);
  v17 = v15;
  v18 = [v16 initWithElementIdentifier_];
  v19 = [objc_allocWithZone(PGGraphAreaNodeCollection) initWithGraph:v17 elementIdentifiers:v18];

  v20 = a3[1];
  v49 = *a3;
  v50 = v20;
  v51 = a3[2];
  v21 = sub_22F3689D4(v19, &v49);
  if (!v21)
  {
LABEL_9:
    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v31 = sub_22F740B90();
    __swift_project_value_buffer(v31, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location hierarchy from area node doesn't have expected area component!";
LABEL_18:
    _os_log_impl(&dword_22F0FC000, v32, v33, v35, v34, 2u);
    MEMORY[0x2319033A0](v34, -1, -1);
LABEL_19:

    v37 = sub_22F740400();
    return (*(*(v37 - 8) + 56))(v52, 1, 1, v37);
  }

  if (!*(v21 + 2))
  {
LABEL_8:

    goto LABEL_9;
  }

  if (!*(a4 + 16))
  {
LABEL_14:

    if (qword_2810A9418 != -1)
    {
      swift_once();
    }

    v36 = sub_22F740B90();
    __swift_project_value_buffer(v36, qword_2810B4D00);
    v32 = sub_22F740B70();
    v33 = sub_22F7415E0();
    if (!os_log_type_enabled(v32, v33))
    {
      goto LABEL_19;
    }

    v34 = swift_slowAlloc();
    *v34 = 0;
    v35 = "Location should have assetUUIDs";
    goto LABEL_18;
  }

  v23 = *(v21 + 4);
  v22 = *(v21 + 5);
  v46 = v21;

  v24 = sub_22F122B68(v14);
  if ((v25 & 1) == 0)
  {

    goto LABEL_14;
  }

  v44 = v23;
  v45 = v22;
  v26 = *(*(a4 + 56) + 32 * v24 + 16);
  v27 = *(v26 + 16);
  if (v27)
  {
    v28 = sub_22F10B348(*(v26 + 16), 0);
    v29 = sub_22F11A438(&v49, v28 + 4, v27, v26);
    v30 = v49;
    v42[1] = *(&v50 + 1);
    v43 = v29;
    v42[0] = v51;

    sub_22F0FF590(v30);
    if (v43 != v27)
    {
      __break(1u);
      goto LABEL_8;
    }
  }

  else
  {
    v28 = MEMORY[0x277D84F90];
  }

  *&v49 = v28;

  v39 = v48;
  sub_22F1AB0EC(&v49);
  if (v39)
  {

    __break(1u);
  }

  else
  {

    *&v49 = v46;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    sub_22F740DA0();

    (*(v11 + 16))(v13, v47, v10);
    v40 = v52;
    sub_22F7403F0();

    v41 = sub_22F740400();
    return (*(*(v41 - 8) + 56))(v40, 0, 1, v41);
  }

  return result;
}

char *sub_22F364ED8(uint64_t a1, uint64_t a2, char **a3)
{
  v5 = *a3;
  result = swift_isUniquelyReferenced_nonNull_native();
  *a3 = v5;
  if ((result & 1) == 0)
  {
    result = sub_22F13E910(0, *(v5 + 2) + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  v8 = *(v5 + 2);
  v7 = *(v5 + 3);
  if (v8 >= v7 >> 1)
  {
    result = sub_22F13E910((v7 > 1), v8 + 1, 1, v5);
    v5 = result;
    *a3 = result;
  }

  *(v5 + 2) = v8 + 1;
  *&v5[8 * v8 + 32] = a1;
  return result;
}

void sub_22F364F84(uint64_t *a1)
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
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB10C8, &qword_22F771508);
        v5 = sub_22F741200();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = (v5 + 32);
      v7[1] = (v2 / 2);
      v6 = v5;
      sub_22F3655AC(v7, v8, a1, v4);
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
    sub_22F3651B8(0, v2, 1, a1);
  }
}

void sub_22F36508C(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_22F742000();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v5 = v3;
      v6 = v2 / 2;
      if (v2 <= 1)
      {
        v7 = MEMORY[0x277D84F90];
      }

      else
      {
        sub_22F740400();
        v7 = sub_22F741200();
        *(v7 + 16) = v6;
      }

      v8 = *(sub_22F740400() - 8);
      v10[0] = v7 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
      v10[1] = v6;
      sub_22F365BF0(v10, v9, v11, a1, v5);
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
    sub_22F3652A0(0, v2, 1, a1, v4);
  }
}

uint64_t sub_22F3651B8(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = a3;
    v6 = *a4;
    v7 = *a4 + 32 * a3;
    v8 = result - a3;
LABEL_5:
    v9 = *(v6 + 32 * v4 + 8);
    v10 = v8;
    v11 = v7;
    while (1)
    {
      v12 = *(v11 - 24);
      if (v9 == v12)
      {
        result = sub_22F741770();
        if (result < 1)
        {
          goto LABEL_4;
        }
      }

      else if (v12 >= v9)
      {
        goto LABEL_4;
      }

      if (!v6)
      {
        break;
      }

      v13 = *v11;
      v14 = *(v11 + 24);
      v15 = *(v11 + 8);
      v16 = *(v11 - 16);
      *v11 = *(v11 - 32);
      *(v11 + 16) = v16;
      *(v11 - 24) = v15;
      *(v11 - 8) = v14;
      *(v11 - 32) = v13;
      v11 -= 32;
      v9 = v15;
      if (__CFADD__(v10++, 1))
      {
LABEL_4:
        ++v4;
        v7 += 32;
        --v8;
        if (v4 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_22F3652A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t *a4, __n128 a5)
{
  v9 = sub_22F740400();
  MEMORY[0x28223BE20](v9);
  v45 = &v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v49 = &v35 - v12;
  v15 = MEMORY[0x28223BE20](v13);
  v48 = &v35 - v16;
  v37 = a2;
  if (a3 != a2)
  {
    v17 = *a4;
    v46 = *(v14 + 16);
    v47 = v14 + 16;
    v18 = *(v14 + 72);
    v19 = (v14 + 8);
    v43 = (v14 + 32);
    v44 = v17;
    v20 = (v17 + v18 * (a3 - 1));
    v42 = -v18;
    v21 = a1 - a3;
    v36 = v18;
    v22 = v17 + v18 * a3;
LABEL_6:
    v40 = v20;
    v41 = a3;
    v38 = v22;
    v39 = v21;
    v24 = v20;
    while (1)
    {
      v25 = v46;
      (v46)(v48, v22, v9, v15);
      v25(v49, v24, v9);
      v26 = sub_22F7403E0();
      v28 = v27;
      if (v26 == sub_22F7403E0() && v28 == v29)
      {

        v23 = *v19;
        (*v19)(v49, v9);
        v23(v48, v9);
LABEL_5:
        a3 = v41 + 1;
        v20 = &v40[v36];
        v21 = v39 - 1;
        v22 = v38 + v36;
        if (v41 + 1 == v37)
        {
          return;
        }

        goto LABEL_6;
      }

      v30 = sub_22F742040();

      v31 = *v19;
      (*v19)(v49, v9);
      v31(v48, v9);
      if ((v30 & 1) == 0)
      {
        goto LABEL_5;
      }

      if (!v44)
      {
        break;
      }

      v32 = *v43;
      v33 = v45;
      (*v43)(v45, v22, v9);
      swift_arrayInitWithTakeFrontToBack();
      v32(v24, v33, v9);
      v24 += v42;
      v22 += v42;
      if (__CFADD__(v21++, 1))
      {
        goto LABEL_5;
      }
    }

    __break(1u);
  }
}

void sub_22F3655AC(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v6 = a3;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x277D84F90];
LABEL_98:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_136;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_130:
      v9 = sub_22F3F5F98(v9);
    }

    v91 = *(v9 + 2);
    if (v91 >= 2)
    {
      while (*v6)
      {
        v92 = *&v9[16 * v91];
        v93 = *&v9[16 * v91 + 24];
        sub_22F3667AC((*v6 + 32 * v92), (*v6 + 32 * *&v9[16 * v91 + 16]), (*v6 + 32 * v93), v5);
        if (v4)
        {
          goto LABEL_108;
        }

        if (v93 < v92)
        {
          goto LABEL_123;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v9 = sub_22F3F5F98(v9);
        }

        if (v91 - 2 >= *(v9 + 2))
        {
          goto LABEL_124;
        }

        v94 = &v9[16 * v91];
        *v94 = v92;
        *(v94 + 1) = v93;
        sub_22F3F5F0C(v91 - 1);
        v91 = *(v9 + 2);
        if (v91 <= 1)
        {
          goto LABEL_108;
        }
      }

      goto LABEL_134;
    }

LABEL_108:

    return;
  }

  v8 = 0;
  v9 = MEMORY[0x277D84F90];
LABEL_4:
  v10 = v8++;
  if (v8 < v7)
  {
    v11 = *v6;
    v12 = *(*v6 + 32 * v8 + 8);
    v13 = *(*v6 + 32 * v10 + 8);
    if (v12 == v13)
    {
      v14 = sub_22F741770() > 0;
    }

    else
    {
      v14 = v13 < v12;
    }

    v15 = 0;
    v16 = (v10 + 2);
    v97 = v10;
    v95 = 32 * v10;
    v17 = (v11 + 32 * v10 + 40);
    do
    {
      v6 = v16;
      v19 = v8;
      v5 = v15;
      if (v16 >= v7)
      {
        break;
      }

      v20 = v17[4];
      v18 = v20 == *v17 ? sub_22F741770() > 0 : *v17 < v20;
      v16 = (v6 + 1);
      v17 += 4;
      ++v8;
      v15 = v5 + 32;
    }

    while (v14 == v18);
    if (!v14)
    {
LABEL_24:
      v8 = v6;
      v6 = a3;
      v10 = v97;
      goto LABEL_26;
    }

    v21 = v97;
    if (v6 < v97)
    {
      goto LABEL_127;
    }

    if (v97 < v6)
    {
      v22 = 0;
      do
      {
        if (v21 != v19)
        {
          if (!*a3)
          {
            goto LABEL_133;
          }

          v23 = *a3 + v95;
          v24 = (v23 + v22);
          v25 = &v5[v23];
          v26 = *(v24 + 2);
          v27 = *(v24 + 3);
          v28 = *v24;
          v29 = *(v25 + 3);
          *v24 = *(v25 + 2);
          v24[1] = v29;
          *(v25 + 2) = v28;
          *(v25 + 6) = v26;
          *(v25 + 7) = v27;
        }

        ++v21;
        v5 -= 32;
        v22 += 32;
      }

      while (v21 < v19--);
      goto LABEL_24;
    }

    v8 = v6;
    v6 = a3;
    v10 = v97;
  }

LABEL_26:
  v31 = v6[1];
  if (v8 >= v31)
  {
    goto LABEL_47;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_126;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_47;
  }

  if (__OFADD__(v10, a4))
  {
    goto LABEL_128;
  }

  if (v10 + a4 >= v31)
  {
    v5 = v6[1];
  }

  else
  {
    v5 = (v10 + a4);
  }

  if (v5 < v10)
  {
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  if (v8 == v5)
  {
    goto LABEL_47;
  }

  v32 = v10;
  v33 = *v6;
  v34 = *v6 + 32 * v8;
  v98 = v32;
  v35 = v32 - v8;
LABEL_37:
  v36 = *(v33 + 32 * v8 + 8);
  v37 = v35;
  v38 = v34;
  while (1)
  {
    v39 = *(v38 - 24);
    if (v36 == v39)
    {
      if (sub_22F741770() < 1)
      {
        goto LABEL_36;
      }
    }

    else if (v39 >= v36)
    {
      goto LABEL_36;
    }

    if (!v33)
    {
      break;
    }

    v40 = *v38;
    v41 = *(v38 + 24);
    v42 = *(v38 + 8);
    v43 = *(v38 - 16);
    *v38 = *(v38 - 32);
    *(v38 + 16) = v43;
    *(v38 - 24) = v42;
    *(v38 - 8) = v41;
    *(v38 - 32) = v40;
    v38 -= 32;
    v36 = v42;
    if (__CFADD__(v37++, 1))
    {
LABEL_36:
      ++v8;
      v34 += 32;
      --v35;
      if (v8 != v5)
      {
        goto LABEL_37;
      }

      v8 = v5;
      v6 = a3;
      v10 = v98;
LABEL_47:
      if (v8 < v10)
      {
        goto LABEL_125;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v9 = sub_22F13D970(0, *(v9 + 2) + 1, 1, v9);
      }

      v46 = *(v9 + 2);
      v45 = *(v9 + 3);
      v47 = v46 + 1;
      if (v46 >= v45 >> 1)
      {
        v9 = sub_22F13D970((v45 > 1), v46 + 1, 1, v9);
      }

      *(v9 + 2) = v47;
      v48 = &v9[16 * v46];
      *(v48 + 4) = v10;
      *(v48 + 5) = v8;
      v5 = *a1;
      if (!*a1)
      {
        goto LABEL_135;
      }

      if (v46)
      {
        while (1)
        {
          v49 = v47 - 1;
          if (v47 >= 4)
          {
            break;
          }

          if (v47 == 3)
          {
            v50 = *(v9 + 4);
            v51 = *(v9 + 5);
            v60 = __OFSUB__(v51, v50);
            v52 = v51 - v50;
            v53 = v60;
LABEL_67:
            if (v53)
            {
              goto LABEL_114;
            }

            v66 = &v9[16 * v47];
            v68 = *v66;
            v67 = *(v66 + 1);
            v69 = __OFSUB__(v67, v68);
            v70 = v67 - v68;
            v71 = v69;
            if (v69)
            {
              goto LABEL_117;
            }

            v72 = &v9[16 * v49 + 32];
            v74 = *v72;
            v73 = *(v72 + 1);
            v60 = __OFSUB__(v73, v74);
            v75 = v73 - v74;
            if (v60)
            {
              goto LABEL_120;
            }

            if (__OFADD__(v70, v75))
            {
              goto LABEL_121;
            }

            if (v70 + v75 >= v52)
            {
              if (v52 < v75)
              {
                v49 = v47 - 2;
              }

              goto LABEL_88;
            }

            goto LABEL_81;
          }

          v76 = &v9[16 * v47];
          v78 = *v76;
          v77 = *(v76 + 1);
          v60 = __OFSUB__(v77, v78);
          v70 = v77 - v78;
          v71 = v60;
LABEL_81:
          if (v71)
          {
            goto LABEL_116;
          }

          v79 = &v9[16 * v49];
          v81 = *(v79 + 4);
          v80 = *(v79 + 5);
          v60 = __OFSUB__(v80, v81);
          v82 = v80 - v81;
          if (v60)
          {
            goto LABEL_119;
          }

          if (v82 < v70)
          {
            goto LABEL_3;
          }

LABEL_88:
          v87 = v49 - 1;
          if (v49 - 1 >= v47)
          {
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
            goto LABEL_129;
          }

          if (!*v6)
          {
            goto LABEL_132;
          }

          v88 = *&v9[16 * v87 + 32];
          v89 = *&v9[16 * v49 + 40];
          sub_22F3667AC((*v6 + 32 * v88), (*v6 + 32 * *&v9[16 * v49 + 32]), (*v6 + 32 * v89), v5);
          if (v4)
          {
            goto LABEL_108;
          }

          if (v89 < v88)
          {
            goto LABEL_110;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_22F3F5F98(v9);
          }

          if (v87 >= *(v9 + 2))
          {
            goto LABEL_111;
          }

          v90 = &v9[16 * v87];
          *(v90 + 4) = v88;
          *(v90 + 5) = v89;
          sub_22F3F5F0C(v49);
          v47 = *(v9 + 2);
          if (v47 <= 1)
          {
            goto LABEL_3;
          }
        }

        v54 = &v9[16 * v47 + 32];
        v55 = *(v54 - 64);
        v56 = *(v54 - 56);
        v60 = __OFSUB__(v56, v55);
        v57 = v56 - v55;
        if (v60)
        {
          goto LABEL_112;
        }

        v59 = *(v54 - 48);
        v58 = *(v54 - 40);
        v60 = __OFSUB__(v58, v59);
        v52 = v58 - v59;
        v53 = v60;
        if (v60)
        {
          goto LABEL_113;
        }

        v61 = &v9[16 * v47];
        v63 = *v61;
        v62 = *(v61 + 1);
        v60 = __OFSUB__(v62, v63);
        v64 = v62 - v63;
        if (v60)
        {
          goto LABEL_115;
        }

        v60 = __OFADD__(v52, v64);
        v65 = v52 + v64;
        if (v60)
        {
          goto LABEL_118;
        }

        if (v65 >= v57)
        {
          v83 = &v9[16 * v49 + 32];
          v85 = *v83;
          v84 = *(v83 + 1);
          v60 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v60)
          {
            goto LABEL_122;
          }

          if (v52 < v86)
          {
            v49 = v47 - 2;
          }

          goto LABEL_88;
        }

        goto LABEL_67;
      }

LABEL_3:
      v7 = v6[1];
      if (v8 >= v7)
      {
        goto LABEL_98;
      }

      goto LABEL_4;
    }
  }

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
}

void sub_22F365BF0(uint64_t *a1, __n128 a2, uint64_t a3, void *a4, uint64_t a5)
{
  v7 = v5;
  v137 = a1;
  v10 = sub_22F740400();
  MEMORY[0x28223BE20](v10);
  v141 = &v131 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v152 = &v131 - v13;
  MEMORY[0x28223BE20](v14);
  v157 = &v131 - v15;
  MEMORY[0x28223BE20](v16);
  v156 = &v131 - v17;
  MEMORY[0x28223BE20](v18);
  v149 = &v131 - v19;
  MEMORY[0x28223BE20](v20);
  v148 = &v131 - v21;
  MEMORY[0x28223BE20](v22);
  v136 = &v131 - v23;
  v26 = MEMORY[0x28223BE20](v24);
  v135 = &v131 - v27;
  v28 = a4[1];
  v146 = v25;
  if (v28 < 1)
  {
    v30 = MEMORY[0x277D84F90];
LABEL_103:
    v32 = *v137;
    if (!*v137)
    {
      goto LABEL_141;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v6 = v146;
    if (isUniquelyReferenced_nonNull_native)
    {
LABEL_105:
      v158 = v30;
      v125 = *(v30 + 16);
      if (v125 >= 2)
      {
        do
        {
          v126 = *a4;
          if (!*a4)
          {
            goto LABEL_139;
          }

          v127 = a4;
          v128 = *(v30 + 16 * v125);
          a4 = v30;
          v129 = *(v30 + 16 * (v125 - 1) + 32);
          v30 = *(v30 + 16 * (v125 - 1) + 40);
          sub_22F3669F4(v126 + *(v6 + 72) * v128, (v126 + *(v6 + 72) * v129), (v126 + *(v6 + 72) * v30), v32, v124);
          if (v7)
          {
            break;
          }

          if (v30 < v128)
          {
            goto LABEL_128;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            a4 = sub_22F3F5F98(a4);
          }

          if (v125 - 2 >= a4[2])
          {
            goto LABEL_129;
          }

          v130 = &a4[2 * v125];
          *v130 = v128;
          v130[1] = v30;
          v158 = a4;
          sub_22F3F5F0C(v125 - 1);
          v30 = v158;
          v125 = v158[2];
          a4 = v127;
        }

        while (v125 > 1);
      }

LABEL_113:

      return;
    }

LABEL_135:
    v30 = sub_22F3F5F98(v30);
    goto LABEL_105;
  }

  v132 = a5;
  v29 = 0;
  v154 = v25 + 16;
  v155 = (v25 + 8);
  v153 = (v25 + 32);
  v30 = MEMORY[0x277D84F90];
  v138 = a4;
  while (1)
  {
    v31 = v29;
    v32 = v29 + 1;
    v140 = v29;
    if (v29 + 1 < v28)
    {
      v144 = v28;
      v133 = v30;
      v33 = *a4;
      v34 = *(v146 + 72);
      v6 = v29 + 1;
      v35 = v33 + v34 * v32;
      v36 = *(v146 + 16);
      v36(v135, v35, v10, v26);
      v147 = v34;
      v143 = v36;
      (v36)(v136, v33 + v34 * v31, v10);
      v32 = sub_22F7403E0();
      v38 = v37;
      v39 = sub_22F7403E0();
      v134 = v7;
      if (v32 == v39 && v38 == v40)
      {
        LODWORD(v145) = 0;
      }

      else
      {
        LODWORD(v145) = sub_22F742040();
      }

      v41 = *v155;
      (*v155)(v136, v10);
      v142 = v41;
      v41(v135, v10);
      v42 = (v140 + 2);
      v43 = v147 * (v140 + 2);
      v44 = v33 + v43;
      v45 = v147 * v6;
      v46 = v33 + v147 * v6;
      do
      {
        a4 = v42;
        v49 = v6;
        v7 = v45;
        v30 = v43;
        if (v42 >= v144)
        {
          break;
        }

        v150 = v6;
        v151 = v42;
        v50 = v143;
        (v143)(v148, v44, v10);
        v50(v149, v46, v10);
        v51 = sub_22F7403E0();
        v53 = v52;
        if (v51 == sub_22F7403E0() && v53 == v54)
        {
          v47 = 0;
        }

        else
        {
          v47 = sub_22F742040();
        }

        a4 = v151;

        v32 = v142;
        v142(v149, v10);
        (v32)(v148, v10);
        v48 = v145 ^ v47;
        v42 = (a4 + 1);
        v44 += v147;
        v46 += v147;
        v49 = v150;
        v6 = v150 + 1;
        v45 = v7 + v147;
        v43 = v30 + v147;
      }

      while ((v48 & 1) == 0);
      if (v145)
      {
        v31 = v140;
        if (a4 < v140)
        {
          goto LABEL_132;
        }

        if (v140 < a4)
        {
          v55 = v140 * v147;
          v56 = v140;
          do
          {
            if (v56 != v49)
            {
              v58 = *v138;
              if (!*v138)
              {
                goto LABEL_138;
              }

              v6 = v49;
              v151 = *v153;
              v151(v141, (v58 + v55), v10);
              if (v55 < v7 || v58 + v55 >= (v58 + v30))
              {
                swift_arrayInitWithTakeFrontToBack();
              }

              else if (v55 != v7)
              {
                swift_arrayInitWithTakeBackToFront();
              }

              v151((v58 + v7), v141, v10);
              v31 = v140;
              v49 = v6;
            }

            ++v56;
            v7 -= v147;
            v30 -= v147;
            v55 += v147;
          }

          while (v56 < v49--);
        }

        v32 = a4;
        v7 = v134;
        a4 = v138;
        v30 = v133;
      }

      else
      {
        v32 = a4;
        v7 = v134;
        a4 = v138;
        v30 = v133;
        v31 = v140;
      }
    }

    v59 = a4[1];
    if (v32 < v59)
    {
      if (__OFSUB__(v32, v31))
      {
        goto LABEL_131;
      }

      if (v32 - v31 < v132)
      {
        break;
      }
    }

LABEL_52:
    if (v32 < v31)
    {
      goto LABEL_130;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v30 = sub_22F13D970(0, *(v30 + 16) + 1, 1, v30);
    }

    v77 = *(v30 + 16);
    v76 = *(v30 + 24);
    v78 = v77 + 1;
    if (v77 >= v76 >> 1)
    {
      v30 = sub_22F13D970((v76 > 1), v77 + 1, 1, v30);
    }

    *(v30 + 16) = v78;
    v79 = v30 + 16 * v77;
    *(v79 + 32) = v31;
    *(v79 + 40) = v32;
    v80 = *v137;
    if (!*v137)
    {
      goto LABEL_140;
    }

    v147 = v32;
    if (v77)
    {
      while (1)
      {
        v32 = v78 - 1;
        if (v78 >= 4)
        {
          break;
        }

        if (v78 == 3)
        {
          v81 = *(v30 + 32);
          v82 = *(v30 + 40);
          v91 = __OFSUB__(v82, v81);
          v83 = v82 - v81;
          v84 = v91;
LABEL_72:
          if (v84)
          {
            goto LABEL_119;
          }

          v97 = (v30 + 16 * v78);
          v99 = *v97;
          v98 = v97[1];
          v100 = __OFSUB__(v98, v99);
          v101 = v98 - v99;
          v102 = v100;
          if (v100)
          {
            goto LABEL_122;
          }

          v103 = (v30 + 32 + 16 * v32);
          v105 = *v103;
          v104 = v103[1];
          v91 = __OFSUB__(v104, v105);
          v106 = v104 - v105;
          if (v91)
          {
            goto LABEL_125;
          }

          if (__OFADD__(v101, v106))
          {
            goto LABEL_126;
          }

          if (v101 + v106 >= v83)
          {
            if (v83 < v106)
            {
              v32 = v78 - 2;
            }

            goto LABEL_93;
          }

          goto LABEL_86;
        }

        v107 = (v30 + 16 * v78);
        v109 = *v107;
        v108 = v107[1];
        v91 = __OFSUB__(v108, v109);
        v101 = v108 - v109;
        v102 = v91;
LABEL_86:
        if (v102)
        {
          goto LABEL_121;
        }

        v110 = v30 + 16 * v32;
        v112 = *(v110 + 32);
        v111 = *(v110 + 40);
        v91 = __OFSUB__(v111, v112);
        v113 = v111 - v112;
        if (v91)
        {
          goto LABEL_124;
        }

        if (v113 < v101)
        {
          goto LABEL_3;
        }

LABEL_93:
        v118 = v32 - 1;
        if (v32 - 1 >= v78)
        {
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
          goto LABEL_134;
        }

        v119 = *a4;
        if (!*a4)
        {
          goto LABEL_137;
        }

        v6 = a4;
        a4 = v30;
        v120 = *(v30 + 32 + 16 * v118);
        v121 = *(v30 + 32 + 16 * v32);
        v30 = *(v30 + 32 + 16 * v32 + 8);
        sub_22F3669F4(v119 + *(v146 + 72) * v120, (v119 + *(v146 + 72) * v121), (v119 + *(v146 + 72) * v30), v80, v26);
        if (v7)
        {
          goto LABEL_113;
        }

        if (v30 < v120)
        {
          goto LABEL_115;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a4 = sub_22F3F5F98(a4);
        }

        if (v118 >= a4[2])
        {
          goto LABEL_116;
        }

        v122 = &a4[2 * v118];
        v122[4] = v120;
        v122[5] = v30;
        v158 = a4;
        sub_22F3F5F0C(v32);
        v30 = v158;
        v78 = v158[2];
        a4 = v6;
        if (v78 <= 1)
        {
          goto LABEL_3;
        }
      }

      v85 = v30 + 32 + 16 * v78;
      v86 = *(v85 - 64);
      v87 = *(v85 - 56);
      v91 = __OFSUB__(v87, v86);
      v88 = v87 - v86;
      if (v91)
      {
        goto LABEL_117;
      }

      v90 = *(v85 - 48);
      v89 = *(v85 - 40);
      v91 = __OFSUB__(v89, v90);
      v83 = v89 - v90;
      v84 = v91;
      if (v91)
      {
        goto LABEL_118;
      }

      v92 = (v30 + 16 * v78);
      v94 = *v92;
      v93 = v92[1];
      v91 = __OFSUB__(v93, v94);
      v95 = v93 - v94;
      if (v91)
      {
        goto LABEL_120;
      }

      v91 = __OFADD__(v83, v95);
      v96 = v83 + v95;
      if (v91)
      {
        goto LABEL_123;
      }

      if (v96 >= v88)
      {
        v114 = (v30 + 32 + 16 * v32);
        v116 = *v114;
        v115 = v114[1];
        v91 = __OFSUB__(v115, v116);
        v117 = v115 - v116;
        if (v91)
        {
          goto LABEL_127;
        }

        if (v83 < v117)
        {
          v32 = v78 - 2;
        }

        goto LABEL_93;
      }

      goto LABEL_72;
    }

LABEL_3:
    v28 = a4[1];
    v29 = v147;
    if (v147 >= v28)
    {
      goto LABEL_103;
    }
  }

  v60 = (v31 + v132);
  if (__OFADD__(v31, v132))
  {
    goto LABEL_133;
  }

  if (v60 >= v59)
  {
    v60 = a4[1];
  }

  if (v60 < v31)
  {
LABEL_134:
    __break(1u);
    goto LABEL_135;
  }

  if (v32 == v60)
  {
    goto LABEL_52;
  }

  v133 = v30;
  v134 = v7;
  v61 = *a4;
  v62 = *(v146 + 72);
  v63 = *(v146 + 16);
  v64 = *a4 + v62 * (v32 - 1);
  v150 = -v62;
  v151 = v61;
  v65 = v31 - v32;
  v139 = v62;
  v66 = v61 + v32 * v62;
  v142 = v60;
LABEL_43:
  v147 = v32;
  v143 = v66;
  v144 = v65;
  v145 = v64;
  v68 = v64;
  while (1)
  {
    v63(v156, v66, v10);
    (v63)(v157, v68);
    v6 = sub_22F7403E0();
    v70 = v69;
    if (v6 == sub_22F7403E0() && v70 == v71)
    {

      v67 = *v155;
      (*v155)(v157, v10);
      v67(v156, v10);
LABEL_42:
      v32 = v147 + 1;
      v64 = v145 + v139;
      v65 = v144 - 1;
      v66 = &v143[v139];
      if ((v147 + 1) == v142)
      {
        v32 = v142;
        v7 = v134;
        a4 = v138;
        v30 = v133;
        v31 = v140;
        goto LABEL_52;
      }

      goto LABEL_43;
    }

    v6 = sub_22F742040();

    v72 = *v155;
    (*v155)(v157, v10);
    v72(v156, v10);
    if ((v6 & 1) == 0)
    {
      goto LABEL_42;
    }

    if (!v151)
    {
      break;
    }

    v73 = v152;
    v6 = v153;
    v74 = *v153;
    (*v153)(v152, v66, v10);
    swift_arrayInitWithTakeFrontToBack();
    v74(v68, v73, v10);
    v68 += v150;
    v66 += v150;
    if (__CFADD__(v65++, 1))
    {
      goto LABEL_42;
    }
  }

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
}

uint64_t sub_22F3667AC(char *__dst, char *__src, char *a3, char *a4)
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
    if (a4 != __dst || &__dst[32 * v10] <= a4)
    {
      memmove(a4, __dst, 32 * v10);
    }

    v14 = &v4[32 * v10];
    if (v8 < 32)
    {
LABEL_10:
      v6 = v7;
      goto LABEL_41;
    }

    while (1)
    {
      if (v6 >= v5)
      {
        goto LABEL_10;
      }

      v18 = *(v6 + 1);
      v19 = *(v4 + 1);
      if (v18 == v19)
      {
        if (sub_22F741770() >= 1)
        {
          goto LABEL_19;
        }
      }

      else if (v19 < v18)
      {
LABEL_19:
        v15 = v6;
        v16 = v7 == v6;
        v6 += 32;
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

      v15 = v4;
      v16 = v7 == v4;
      v4 += 32;
      if (!v16)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 32;
      if (v4 >= v14)
      {
        goto LABEL_10;
      }
    }
  }

  if (a4 != __src || &__src[32 * v13] <= a4)
  {
    memmove(a4, __src, 32 * v13);
  }

  v14 = &v4[32 * v13];
  if (v11 >= 32 && v6 > v7)
  {
LABEL_27:
    v20 = v6 - 32;
    v21 = v5;
    do
    {
      v22 = v14 - 32;
      v23 = *(v14 - 3);
      v24 = *(v6 - 3);
      if (v23 == v24)
      {
        v5 = v21 - 32;
        if (sub_22F741770() >= 1)
        {
          goto LABEL_35;
        }
      }

      else
      {
        v5 = v21 - 32;
        if (v24 < v23)
        {
LABEL_35:
          if (v21 != v6)
          {
            v26 = *(v6 - 1);
            *v5 = *v20;
            *(v5 + 1) = v26;
          }

          if (v14 <= v4 || (v6 -= 32, v20 <= v7))
          {
            v6 = v20;
            goto LABEL_41;
          }

          goto LABEL_27;
        }
      }

      if (v14 != v21)
      {
        v25 = *(v14 - 1);
        *v5 = *v22;
        *(v5 + 1) = v25;
      }

      v14 -= 32;
      v21 = v5;
    }

    while (v22 > v4);
    v14 = v22;
  }

LABEL_41:
  if (v6 != v4 || v6 >= &v4[(v14 - v4 + (v14 - v4 < 0 ? 0x1FuLL : 0)) & 0xFFFFFFFFFFFFFFE0])
  {
    memmove(v6, v4, 32 * ((v14 - v4) / 32));
  }

  return 1;
}