unint64_t sub_1E1093480()
{
  result = qword_1ECE8B3D0;
  if (!qword_1ECE8B3D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3D0);
  }

  return result;
}

uint64_t sub_1E10934D4@<X0>(unint64_t a1@<X0>, unint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v5 = a3;
  v9 = a4 + 32;
  v10 = *(a4 + 16) + 1;
  while (--v10)
  {
    v11 = *(v9 + 112);
    v34[6] = *(v9 + 96);
    v34[7] = v11;
    v35 = *(v9 + 128);
    v12 = *(v9 + 48);
    v34[2] = *(v9 + 32);
    v34[3] = v12;
    v13 = *(v9 + 80);
    v34[4] = *(v9 + 64);
    v34[5] = v13;
    v14 = *(v9 + 16);
    v34[0] = *v9;
    v34[1] = v14;
    if (v34[0] != __PAIR128__(a2, a1))
    {
      v9 += 136;
      if ((sub_1E10AE8FC() & 1) == 0)
      {
        continue;
      }
    }

    sub_1E10968F0(v34, v33);
    sub_1E1095C84(a5);
    return sub_1E109694C(v34);
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v16 = sub_1E10ADF9C();
  __swift_project_value_buffer(v16, qword_1EE185540);

  v17 = sub_1E10ADF7C();
  v18 = sub_1E10AE44C();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v33[0] = v20;
    *v19 = 136315138;
    v21 = 0xE500000000000000;
    v22 = 0x636973756DLL;
    v23 = 0x80000001E10BF070;
    v24 = 0xD000000000000011;
    if (v5 != 6)
    {
      v24 = 0x66696C746867696ELL;
      v23 = 0xE900000000000065;
    }

    v25 = 0xE700000000000000;
    v26 = 0x72657461656874;
    if (v5 != 4)
    {
      v26 = 0x657665656C707061;
      v25 = 0xEA0000000000746ELL;
    }

    if (v5 <= 5u)
    {
      v24 = v26;
      v23 = v25;
    }

    v27 = 0xEE00736D75657375;
    v28 = 0x6D646E6173747261;
    if (v5 != 2)
    {
      v28 = 0x65636E6164;
      v27 = 0xE500000000000000;
    }

    if (v5)
    {
      v22 = 0x74726F7073;
      v21 = 0xE500000000000000;
    }

    if (v5 > 1u)
    {
      v22 = v28;
      v21 = v27;
    }

    if (v5 <= 3u)
    {
      v29 = v22;
    }

    else
    {
      v29 = v24;
    }

    if (v5 <= 3u)
    {
      v30 = v21;
    }

    else
    {
      v30 = v23;
    }

    v31 = sub_1E1078CFC(v29, v30, v33);

    *(v19 + 4) = v31;
    _os_log_impl(&dword_1E0FDF000, v17, v18, "Failed to find %s result in response", v19, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v20);
    MEMORY[0x1E12EE9E0](v20, -1, -1);
    MEMORY[0x1E12EE9E0](v19, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v32 = xmmword_1E10B4430;
  return swift_willThrow();
}

uint64_t sub_1E1093818(uint64_t a1)
{
  v3 = *(v1 + 56);
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  if (v3)
  {
    v11 = *(v1 + 32);
    v13 = *(v1 + 64);
    v14 = *(v1 + 80);
    v15 = *(v1 + 96);
    *&v12 = *(v1 + 48);
    *(&v12 + 1) = v3;
    sub_1E10AE9EC();
    v16 = *(v1 + 32);
    v17 = *(v1 + 48);
    v18 = v3;
    v4 = *(v1 + 80);
    v19 = *(v1 + 64);
    v20 = v4;
    v21 = *(v1 + 96);
    sub_1E1004E80(&v16, v22);
    Artwork.hash(into:)(a1);
    v22[2] = v13;
    v22[3] = v14;
    v23 = v15;
    v22[0] = v11;
    v22[1] = v12;
    sub_1E1004EDC(v22);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v5 = *(v1 + 104);
  *&v22[0] = v5;
  v6 = *(v5 + 16);
  result = MEMORY[0x1E12EE160](v6);
  if (v6)
  {
    v8 = *(type metadata accessor for Music(0) - 8);
    v9 = v5 + ((*(v8 + 80) + 32) & ~*(v8 + 80));
    v10 = *(v8 + 72);

    do
    {
      Music.hash(into:)(a1);
      v9 += v10;
      --v6;
    }

    while (v6);
    return sub_1E0FF0440(v22, &qword_1ECE8B458, &unk_1E10BB500);
  }

  return result;
}

uint64_t ArtistPromotionalAssets.promotionalContent.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  *a1 = *v1;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  return sub_1E10939CC(v2, v3, v4, v5);
}

uint64_t sub_1E10939CC(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t type metadata accessor for ArtistPromotionalAssets(uint64_t a1)
{
  result = qword_1ECE8B418;
  if (!qword_1ECE8B418)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t ArtistPromotionalAssets.schedule.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for ArtistPromotionalAssets(0) + 24));
  v5 = v3[5];
  v15 = v3[4];
  v4 = v15;
  v16 = v5;
  v17 = v3[6];
  v6 = v17;
  v7 = v3[3];
  v13 = v3[2];
  v8 = v13;
  v14 = v7;
  v9 = v3[1];
  v12[0] = *v3;
  v12[1] = v9;
  *a1 = v12[0];
  a1[1] = v9;
  a1[4] = v4;
  a1[5] = v5;
  a1[2] = v8;
  a1[3] = v7;
  a1[6] = v6;
  return sub_1E1093B38(v12, &v11);
}

uint64_t sub_1E1093B38(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t ArtistPromotionalAssets.init(artistID:service:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[3] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3E0, &qword_1E10BB2E0);
  v8 = swift_task_alloc();
  v4[4] = v8;
  v4[2] = *a4;
  v9 = swift_task_alloc();
  v4[5] = v9;
  *v9 = v4;
  v9[1] = sub_1E1093CA8;

  return sub_1E1093F60(v8, a2, a3, v4 + 2);
}

uint64_t sub_1E1093CA8()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1E1093EFC;
  }

  else
  {
    v2 = sub_1E1093DBC;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E1093DBC()
{
  v1 = v0[4];
  v2 = type metadata accessor for ArtistPromotionalAssets(0);
  v3 = *(v2 - 8);
  if ((*(v3 + 48))(v1, 1, v2))
  {
    sub_1E0FF0440(v1, &qword_1ECE8B3E0, &qword_1E10BB2E0);
    v4 = 1;
  }

  else
  {
    sub_1E1096278(v1, v0[3], type metadata accessor for ArtistPromotionalAssets);
    v4 = 0;
  }

  (*(v3 + 56))(v0[3], v4, 1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_1E1093EFC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1E1093F60(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[52] = a2;
  v4[53] = a3;
  v4[51] = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A060, &qword_1E10B4E38);
  v4[54] = swift_task_alloc();
  v4[55] = swift_task_alloc();
  v6 = type metadata accessor for Music(0);
  v4[56] = v6;
  v4[57] = *(v6 - 8);
  v4[58] = swift_task_alloc();
  v4[59] = swift_task_alloc();
  v4[60] = swift_task_alloc();
  v4[61] = swift_task_alloc();
  v4[62] = swift_task_alloc();
  v7 = sub_1E10ADCBC();
  v4[63] = v7;
  v4[64] = *(v7 - 8);
  v4[65] = swift_task_alloc();
  v4[66] = swift_task_alloc();
  v4[67] = swift_task_alloc();
  v8 = sub_1E10ADCFC();
  v4[68] = v8;
  v4[69] = *(v8 - 8);
  v4[70] = swift_task_alloc();
  v4[71] = *a4;

  return MEMORY[0x1EEE6DFA0](sub_1E1094174, 0, 0);
}

uint64_t sub_1E1094174(uint64_t a1)
{
  v2 = v1[71];
  v3 = v1[70];
  v4 = v1[69];
  v5 = v1[68];
  v6 = v1[67];
  v8 = v1[52];
  v7 = v1[53];
  sub_1E10ADCEC();
  v9 = sub_1E10ADCDC();
  v11 = v10;
  v1[72] = v9;
  v1[73] = v10;
  (*(v4 + 8))(v3, v5);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE896B0, &unk_1E10BB510);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E10B2E70;
  *(inited + 32) = v9;
  *(inited + 40) = v11;
  *(inited + 48) = 0;

  v13 = sub_1E1017314(inited);
  v1[74] = v13;
  swift_setDeallocating();
  sub_1E0FF0440(inited + 32, &qword_1ECE896B8, &qword_1E10B2E90);
  sub_1E1094D1C(v6);
  v14 = swift_task_alloc();
  v1[75] = v14;
  v14[2] = v2;
  v14[3] = v8;
  v14[4] = v7;
  v14[5] = v13;
  v14[6] = v6;
  v15 = swift_task_alloc();
  v1[76] = v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89410, qword_1E10B2400);
  *v15 = v1;
  v15[1] = sub_1E1094360;

  return MEMORY[0x1EEE6DE38](v1 + 50, 0, 0, 0xD000000000000037, 0x80000001E10BFBA0, sub_1E1096870, v14, v16);
}

uint64_t sub_1E1094360()
{
  *(*v1 + 616) = v0;

  if (v0)
  {

    v2 = sub_1E1094BFC;
  }

  else
  {

    v2 = sub_1E10944E8;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E10944E8()
{
  v72 = v0;
  v1 = *(v0 + 616);
  v2 = *(v0 + 584);
  v3 = *(v0 + 576);
  v4 = *(v0 + 536);
  v5 = *(v0 + 504);
  v6 = *(v0 + 512);

  v7 = *(v0 + 400);
  v8 = *(v6 + 8);
  v8(v4, v5);
  sub_1E10934D4(v3, v2, 0, v7, v70);
  if (!v1)
  {

    v11 = v70[6];
    v12 = v70[4];
    *(v0 + 96) = v70[5];
    *(v0 + 112) = v11;
    v13 = v70[1];
    *(v0 + 16) = v70[0];
    *(v0 + 32) = v13;
    v14 = v70[2];
    *(v0 + 64) = v70[3];
    *(v0 + 80) = v12;
    *(v0 + 48) = v14;
    v15 = *(v0 + 120);
    v68 = *(v15 + 16);
    v69 = v15;
    if (v68)
    {
      v67 = v8;
      v16 = 0;
      v66 = *(v0 + 456);
      v17 = MEMORY[0x1E69E7CC0];
      while (v16 < *(v15 + 16))
      {
        v18 = *(v0 + 528);
        v19 = *(v0 + 520);
        v20 = *(v0 + 504);
        v21 = (*(v66 + 80) + 32) & ~*(v66 + 80);
        v22 = *(v66 + 72);
        sub_1E1096330(v15 + v21 + v22 * v16, *(v0 + 496), type metadata accessor for Music);
        sub_1E10ADAAC();
        sub_1E10ADC9C();
        v23 = sub_1E10ADC4C();
        v67(v19, v20);
        v67(v18, v20);
        v24 = *(v0 + 496);
        if (v23)
        {
          sub_1E1096278(v24, *(v0 + 488), type metadata accessor for Music);
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          v71 = v17;
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_1E1059EB4(0, *(v17 + 16) + 1, 1);
            v17 = v71;
          }

          v27 = *(v17 + 16);
          v26 = *(v17 + 24);
          if (v27 >= v26 >> 1)
          {
            sub_1E1059EB4((v26 > 1), v27 + 1, 1);
            v17 = v71;
          }

          v28 = *(v0 + 488);
          *(v17 + 16) = v27 + 1;
          result = sub_1E1096278(v28, v17 + v21 + v27 * v22, type metadata accessor for Music);
        }

        else
        {
          result = sub_1E1096398(v24, type metadata accessor for Music);
        }

        ++v16;
        v15 = v69;
        if (v68 == v16)
        {
          v29 = *(v69 + 16);
          goto LABEL_16;
        }
      }

      __break(1u);
    }

    else
    {
      v29 = 0;
      v17 = MEMORY[0x1E69E7CC0];
LABEL_16:
      v30 = *(v0 + 96);
      *(v0 + 192) = *(v0 + 80);
      *(v0 + 208) = v30;
      v31 = *(v0 + 112);
      v32 = *(v0 + 32);
      *(v0 + 128) = *(v0 + 16);
      *(v0 + 144) = v32;
      v33 = *(v0 + 64);
      *(v0 + 160) = *(v0 + 48);
      *(v0 + 176) = v33;
      *(v0 + 224) = v31;
      *(v0 + 232) = v17;
      result = sub_1E0FF02C8(v0 + 16, v0 + 240);
      if (!v29)
      {
LABEL_25:
        sub_1E0FF0440(v0 + 16, &qword_1ECE8B3D8, &qword_1E10BB2D0);
        v40 = 1;
LABEL_27:
        v43 = *(v0 + 448);
        v44 = *(v0 + 456);
        v46 = *(v0 + 432);
        v45 = *(v0 + 440);
        (*(v44 + 56))(v45, v40, 1, v43);
        sub_1E1096880(v45, v46);
        if ((*(v44 + 48))(v46, 1, v43) == 1)
        {
          v47 = *(v0 + 432);
          v48 = *(v0 + 408);
          sub_1E0FF0440(v0 + 128, &qword_1ECE8B3D8, &qword_1E10BB2D0);
          sub_1E0FF0440(v47, &qword_1ECE8A060, &qword_1E10B4E38);
          v49 = type metadata accessor for ArtistPromotionalAssets(0);
          (*(*(v49 - 8) + 56))(v48, 1, 1, v49);
        }

        else
        {
          v51 = *(v0 + 464);
          v50 = *(v0 + 472);
          v52 = *(v0 + 448);
          v53 = *(v0 + 408);
          sub_1E1096278(*(v0 + 432), v50, type metadata accessor for Music);
          sub_1E1096278(v50, v51, type metadata accessor for Music);
          v54 = type metadata accessor for ArtistPromotionalAssets(0);
          sub_1E1096330(v51, v53 + *(v54 + 20), type metadata accessor for Music);
          v55 = (v51 + *(v52 + 60));
          v56 = *v55;
          v57 = v55[1];
          v58 = v55[2];
          v59 = v55[3];

          sub_1E1096398(v51, type metadata accessor for Music);
          *v53 = v56;
          v53[1] = v57;
          v53[2] = v58;
          v53[3] = v59;
          v60 = (v53 + *(v54 + 24));
          v61 = *(v0 + 176);
          v62 = *(v0 + 192);
          v63 = *(v0 + 224);
          v60[5] = *(v0 + 208);
          v60[6] = v63;
          v60[3] = v61;
          v60[4] = v62;
          v65 = *(v0 + 144);
          v64 = *(v0 + 160);
          *v60 = *(v0 + 128);
          v60[1] = v65;
          v60[2] = v64;
          (*(*(v54 - 8) + 56))(v53, 0, 1, v54);
        }

        v9 = *(v0 + 8);
        goto LABEL_31;
      }

      v34 = 0;
      v36 = *(v0 + 448);
      v35 = *(v0 + 456);
      while (v34 < *(v69 + 16))
      {
        v37 = *(v0 + 480);
        sub_1E1096330(v69 + ((*(v35 + 80) + 32) & ~*(v35 + 80)) + *(v35 + 72) * v34, v37, type metadata accessor for Music);
        v38 = (v37 + *(v36 + 60));
        if (*(*v38 + 16) || *(v38[3] + 16) || *(v38[1] + 16) || *(v38[2] + 16) || (v39 = *(v0 + 480), *(*(v39 + *(v36 + 64)) + 16)))
        {
          v41 = *(v0 + 480);
          v42 = *(v0 + 440);
          sub_1E0FF0440(v0 + 16, &qword_1ECE8B3D8, &qword_1E10BB2D0);
          sub_1E1096278(v41, v42, type metadata accessor for Music);
          v40 = 0;
          goto LABEL_27;
        }

        ++v34;
        result = sub_1E1096398(v39, type metadata accessor for Music);
        if (v29 == v34)
        {
          goto LABEL_25;
        }
      }
    }

    __break(1u);
    return result;
  }

  v9 = *(v0 + 8);
LABEL_31:

  return v9();
}

uint64_t sub_1E1094BFC()
{
  v1 = v0[67];
  v2 = v0[63];
  v3 = v0[64];

  (*(v3 + 8))(v1, v2);

  v4 = v0[1];

  return v4();
}

uint64_t sub_1E1094D1C@<X0>(uint64_t a1@<X8>)
{
  v26 = a1;
  v1 = sub_1E10ADCBC();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1E10ADE1C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1E10ADE2C();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v15, v16);
  v18 = &v25 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B220, &qword_1E10BA788);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v25 - v21;
  sub_1E10ADDEC();
  (*(v8 + 104))(v12, *MEMORY[0x1E6969A48], v7);
  sub_1E10ADC9C();
  sub_1E10ADDFC();
  (*(v2 + 8))(v6, v1);
  (*(v8 + 8))(v12, v7);
  (*(v14 + 8))(v18, v13);
  v23 = *(v2 + 48);
  if (v23(v22, 1, v1) != 1)
  {
    return (*(v2 + 32))(v26, v22, v1);
  }

  sub_1E10ADC9C();
  result = (v23)(v22, 1, v1);
  if (result != 1)
  {
    return sub_1E0FF0440(v22, &unk_1ECE8B220, &qword_1E10BA788);
  }

  return result;
}

unint64_t sub_1E1095040()
{
  v1 = 0x656C756465686373;
  if (*v0 == 1)
  {
    v1 = 0xD00000000000001ALL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0xD000000000000012;
  }
}

uint64_t sub_1E10950A0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1096748(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E10950C8(uint64_t a1)
{
  v2 = sub_1E10961C4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1095104(uint64_t a1)
{
  v2 = sub_1E10961C4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t ArtistPromotionalAssets.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3E8, &qword_1E10BB2F0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10961C4();
  sub_1E10AEA5C();
  v11 = v3[1];
  v12 = v3[2];
  v13 = v3[3];
  *&v32 = *v3;
  *(&v32 + 1) = v11;
  *&v33 = v12;
  *(&v33 + 1) = v13;
  LOBYTE(v25) = 0;
  sub_1E10939CC(v32, v11, v12, v13);
  sub_1E1004AA8();
  sub_1E10AE85C();
  sub_1E1096218(v32, *(&v32 + 1), v33, *(&v33 + 1));
  if (!v2)
  {
    v14 = type metadata accessor for ArtistPromotionalAssets(0);
    v40 = 1;
    type metadata accessor for Music(0);
    sub_1E10965E8(&qword_1EE17EB70, type metadata accessor for Music, &protocol conformance descriptor for Music);
    sub_1E10AE8AC();
    v16 = (v3 + *(v14 + 24));
    v17 = v16[3];
    v18 = v16[5];
    v36 = v16[4];
    v37 = v18;
    v19 = v16[5];
    v38 = v16[6];
    v20 = v16[1];
    v32 = *v16;
    v33 = v20;
    v21 = v16[3];
    v23 = *v16;
    v22 = v16[1];
    v34 = v16[2];
    v35 = v21;
    v29 = v36;
    v30 = v19;
    v31 = v16[6];
    v25 = v23;
    v26 = v22;
    v27 = v34;
    v28 = v17;
    v39 = 2;
    sub_1E1093B38(&v32, v24);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    sub_1E10962E0(&qword_1ECE8B3F8, &protocol conformance descriptor for ParticipantSchedule<A>);
    sub_1E10AE8AC();
    v24[4] = v29;
    v24[5] = v30;
    v24[6] = v31;
    v24[0] = v25;
    v24[1] = v26;
    v24[2] = v27;
    v24[3] = v28;
    sub_1E0FF0440(v24, &qword_1ECE8B3D8, &qword_1E10BB2D0);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t ArtistPromotionalAssets.hash(into:)(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = v1[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(a1, v3);
    sub_1E0FEC1BC(a1, v6);
    sub_1E0FEC108(a1, v5);
    sub_1E0FEBFF0(a1, v4);
  }

  else
  {
    sub_1E10AE9EC();
  }

  type metadata accessor for ArtistPromotionalAssets(0);
  Music.hash(into:)(a1);
  return sub_1E1093818(a1);
}

uint64_t ArtistPromotionalAssets.hashValue.getter()
{
  sub_1E10AE9CC();
  v1 = *v0;
  if (*v0)
  {
    v3 = v0[2];
    v2 = v0[3];
    v4 = v0[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(v11, v1);
    sub_1E0FEC1BC(v11, v4);
    sub_1E0FEC108(v11, v3);
    sub_1E0FEBFF0(v11, v2);
  }

  else
  {
    sub_1E10AE9EC();
  }

  v5 = type metadata accessor for ArtistPromotionalAssets(0);
  Music.hash(into:)(v11);
  v6 = (v0 + *(v5 + 24));
  v7 = v6[5];
  v16 = v6[4];
  v17 = v7;
  v18 = v6[6];
  v8 = v6[1];
  v12 = *v6;
  v13 = v8;
  v9 = v6[3];
  v14 = v6[2];
  v15 = v9;
  sub_1E1093818(v11);
  return sub_1E10AEA0C();
}

uint64_t ArtistPromotionalAssets.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v27 = a2;
  type metadata accessor for Music(0);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v27 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B400, &qword_1E10BB2F8);
  v28 = *(v8 - 8);
  v29 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v27 - v11;
  v13 = type metadata accessor for ArtistPromotionalAssets(0);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v27 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E10961C4();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v19 = v17;
  v38 = 0;
  sub_1E1004D30();
  v20 = v29;
  sub_1E10AE7AC();
  v21 = v32;
  *v19 = v31;
  v19[1] = v21;
  LOBYTE(v31) = 1;
  sub_1E10965E8(&qword_1EE17EB58, type metadata accessor for Music, &protocol conformance descriptor for Music);
  sub_1E10AE7FC();
  sub_1E1096278(v7, v19 + *(v13 + 20), type metadata accessor for Music);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
  v38 = 2;
  sub_1E10962E0(&qword_1ECE8B408, &protocol conformance descriptor for ParticipantSchedule<A>);
  sub_1E10AE7FC();
  (*(v28 + 8))(v12, v20);
  v22 = (v19 + *(v13 + 24));
  v23 = v36;
  v22[4] = v35;
  v22[5] = v23;
  v22[6] = v37;
  v24 = v32;
  *v22 = v31;
  v22[1] = v24;
  v25 = v34;
  v22[2] = v33;
  v22[3] = v25;
  sub_1E1096330(v19, v27, type metadata accessor for ArtistPromotionalAssets);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1E1096398(v19, type metadata accessor for ArtistPromotionalAssets);
}

uint64_t sub_1E1095A68(uint64_t a1)
{
  v3 = *v1;
  if (*v1)
  {
    v5 = v1[2];
    v4 = v1[3];
    v6 = v1[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(a1, v3);
    sub_1E0FEC1BC(a1, v6);
    sub_1E0FEC108(a1, v5);
    sub_1E0FEBFF0(a1, v4);
  }

  else
  {
    sub_1E10AE9EC();
  }

  Music.hash(into:)(a1);
  return sub_1E1093818(a1);
}

uint64_t sub_1E1095B50(uint64_t a1, uint64_t a2)
{
  sub_1E10AE9CC();
  v4 = *v2;
  if (*v2)
  {
    v6 = v2[2];
    v5 = v2[3];
    v7 = v2[1];
    sub_1E10AE9EC();
    sub_1E0FEC1BC(v13, v4);
    sub_1E0FEC1BC(v13, v7);
    sub_1E0FEC108(v13, v6);
    sub_1E0FEBFF0(v13, v5);
  }

  else
  {
    sub_1E10AE9EC();
  }

  Music.hash(into:)(v13);
  v8 = (v2 + *(a2 + 24));
  v9 = v8[5];
  v18 = v8[4];
  v19 = v9;
  v20 = v8[6];
  v10 = v8[1];
  v14 = *v8;
  v15 = v10;
  v11 = v8[3];
  v16 = v8[2];
  v17 = v11;
  sub_1E1093818(v13);
  return sub_1E10AEA0C();
}

uint64_t sub_1E1095C84@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 128))
  {
    v2 = *(v1 + 32);
    v21 = *(v1 + 16);
    v22 = v2;
    v3 = *(v1 + 64);
    v23 = *(v1 + 48);
    v24 = v3;
    *&v25 = *(v1 + 80);
    sub_1E0FEE058(&v21, v20);

    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v4 = sub_1E10ADF9C();
    __swift_project_value_buffer(v4, qword_1EE185540);
    v5 = sub_1E10ADF7C();
    v6 = sub_1E10AE44C();
    if (os_log_type_enabled(v5, v6))
    {
      v7 = swift_slowAlloc();
      v8 = swift_slowAlloc();
      v20[0] = v8;
      *v7 = 136315138;
      *(v7 + 4) = sub_1E1078CFC(0x636973754DLL, 0xE500000000000000, v20);
      _os_log_impl(&dword_1E0FDF000, v5, v6, "Failed to cast ParticipantSchedule to %s", v7, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v8);
      MEMORY[0x1E12EE9E0](v8, -1, -1);
      MEMORY[0x1E12EE9E0](v7, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v9 = xmmword_1E10B4430;
    return swift_willThrow();
  }

  else
  {
    v11 = *(v1 + 112);
    v26 = *(v1 + 96);
    v12 = v26;
    v27 = v11;
    v13 = *(v1 + 80);
    v24 = *(v1 + 64);
    v14 = v24;
    v25 = v13;
    v16 = *(v1 + 32);
    v21 = *(v1 + 16);
    v15 = v21;
    v22 = v16;
    v23 = *(v1 + 48);
    v17 = v23;
    v18 = *(&v27 + 1);
    *(a1 + 64) = v13;
    *(a1 + 80) = v12;
    v19 = *(v1 + 112);
    *a1 = v15;
    *(a1 + 16) = v16;
    *(a1 + 32) = v17;
    *(a1 + 48) = v14;
    *(a1 + 96) = v19;
    *(a1 + 104) = v18;
    sub_1E0FF02C8(&v21, v20);
  }
}

uint64_t _s12ShazamEvents23ArtistPromotionalAssetsV2eeoiySbAC_ACtFZ_0(uint64_t *a1, uint64_t *a2)
{
  v5 = *a1;
  v4 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v9 = *a2;
  v8 = a2[1];
  v11 = a2[2];
  v10 = a2[3];
  if (*a1)
  {
    v12 = *a1;
    if (v9)
    {
      if (sub_1E0FFE8B4(v12, *a2) & 1) != 0 && (sub_1E0FFE8B4(v4, v8) & 1) != 0 && (sub_1E0FFE958(v7, v11))
      {
        v32 = sub_1E0FFEA58(v6, v10);
        sub_1E10939CC(v5, v4, v7, v6);
        sub_1E10939CC(v9, v8, v11, v10);
        sub_1E10939CC(v5, v4, v7, v6);
        sub_1E1096218(v9, v8, v11, v10);

        sub_1E1096218(v5, v4, v7, v6);
        if ((v32 & 1) == 0)
        {
          return 0;
        }

        goto LABEL_17;
      }

      sub_1E10939CC(v5, v4, v7, v6);
      sub_1E10939CC(v9, v8, v11, v10);
      sub_1E10939CC(v5, v4, v7, v6);
      sub_1E1096218(v9, v8, v11, v10);

      v13 = v5;
      v14 = v4;
      v15 = v7;
      v16 = v6;
LABEL_13:
      sub_1E1096218(v13, v14, v15, v16);
      return 0;
    }

    sub_1E10939CC(v12, v4, v7, v6);
    sub_1E10939CC(0, v8, v11, v10);
    sub_1E10939CC(v5, v4, v7, v6);

LABEL_12:
    sub_1E1096218(v5, v4, v7, v6);
    v13 = v9;
    v14 = v8;
    v15 = v11;
    v16 = v10;
    goto LABEL_13;
  }

  sub_1E10939CC(0, v4, v7, v6);
  if (v9)
  {
    sub_1E10939CC(v9, v8, v11, v10);
    goto LABEL_12;
  }

  sub_1E10939CC(0, v8, v11, v10);
  sub_1E1096218(0, v4, v7, v6);
LABEL_17:
  v18 = type metadata accessor for ArtistPromotionalAssets(0);
  if (_s12ShazamEvents5MusicV2eeoiySbAC_ACtFZ_0((a1 + *(v18 + 20)), (a2 + *(v18 + 20))))
  {
    v19 = *(v18 + 24);
    v20 = a1 + v19;
    v21 = a2 + v19;
    v22 = *(v21 + 5);
    v33[4] = *(v21 + 4);
    v33[5] = v22;
    v23 = *(v21 + 1);
    v33[0] = *v21;
    v33[1] = v23;
    v24 = *(v21 + 3);
    v33[2] = *(v21 + 2);
    v33[3] = v24;
    v25 = *(v21 + 12);
    v26 = *(v21 + 13);
    v27 = *(v20 + 5);
    v36[4] = *(v20 + 4);
    v36[5] = v27;
    v28 = *(v20 + 1);
    v36[0] = *v20;
    v36[1] = v28;
    v29 = *(v20 + 3);
    v30 = *(v20 + 12);
    v31 = *(v20 + 13);
    v36[2] = *(v20 + 2);
    v36[3] = v29;
    v37 = v30;
    v38 = v31;
    v34 = v25;
    v35 = v26;
    if (_s12ShazamEvents5MusicV6ArtistV2eeoiySbAE_AEtFZ_0(v36, v33) & 1) != 0 && (sub_1E0FFE6FC(v31, v26))
    {
      return 1;
    }
  }

  return 0;
}

unint64_t sub_1E10961C4()
{
  result = qword_1ECE8B3F0;
  if (!qword_1ECE8B3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B3F0);
  }

  return result;
}

uint64_t sub_1E1096218(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1E1096278(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10962E0(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E1096330(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E1096398(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1E1096468(uint64_t a1)
{
  sub_1E1096504();
  if (v1 <= 0x3F)
  {
    type metadata accessor for Music(319);
    if (v2 <= 0x3F)
    {
      sub_1E1096554(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E1096504()
{
  if (!qword_1ECE8B428)
  {
    v0 = sub_1E10AE4EC();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECE8B428);
    }
  }
}

void sub_1E1096554(uint64_t a1)
{
  if (!qword_1ECE8B430)
  {
    v2 = type metadata accessor for Music(255);
    v3 = sub_1E10965E8(&qword_1ECE8B438, type metadata accessor for Music, &protocol conformance descriptor for Music);
    v5 = type metadata accessor for ParticipantSchedule(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECE8B430);
    }
  }
}

uint64_t sub_1E10965E8(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E1096644()
{
  result = qword_1ECE8B440;
  if (!qword_1ECE8B440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B440);
  }

  return result;
}

unint64_t sub_1E109669C()
{
  result = qword_1ECE8B448;
  if (!qword_1ECE8B448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B448);
  }

  return result;
}

unint64_t sub_1E10966F4()
{
  result = qword_1ECE8B450;
  if (!qword_1ECE8B450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B450);
  }

  return result;
}

uint64_t sub_1E1096748(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000012 && 0x80000001E10BF780 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0xD00000000000001ALL && 0x80000001E10C0E20 == a2 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x656C756465686373 && a2 == 0xE800000000000000)
  {

    return 2;
  }

  else
  {
    v5 = sub_1E10AE8FC();

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

uint64_t sub_1E1096880(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8A060, &qword_1E10B4E38);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E10969E0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a5;
  v14[1] = a4;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B618, &qword_1E10BBDB0);
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E5C();
  sub_1E10AEA5C();
  v17 = 0;
  sub_1E10AE86C();
  if (v5)
  {
    return (*(v8 + 8))(v12, v7);
  }

  v16 = 1;
  sub_1E10AE89C();
  v15 = 2;
  sub_1E10AE89C();
  return (*(v8 + 8))(v12, v7);
}

uint64_t sub_1E1096B94()
{
  v1 = 0x6874646977;
  if (*v0 != 1)
  {
    v1 = 0x746867696568;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E1096BE0@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1098240(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E1096C08(uint64_t a1)
{
  v2 = sub_1E1099E5C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1096C44(uint64_t a1)
{
  v2 = sub_1E1099E5C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E1096C80@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E1098350(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_1E1096CD0(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B570, &qword_1E10BB7B8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099868();
  sub_1E10AEA5C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
  sub_1E1099790();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E1096E40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736F746F6870 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1096EC4(uint64_t a1)
{
  v2 = sub_1E1099868();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1096F00(uint64_t a1)
{
  v2 = sub_1E1099868();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E1096F3C@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E1098558(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E1096FB0()
{
  result = qword_1ECE8B460;
  if (!qword_1ECE8B460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B460);
  }

  return result;
}

unint64_t sub_1E1097004()
{
  result = qword_1ECE8B468;
  if (!qword_1ECE8B468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B468);
  }

  return result;
}

uint64_t sub_1E1097058(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B548, &qword_1E10BB7A8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099664();
  sub_1E10AEA5C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
  sub_1E1099790();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E10971D0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x657061706C6C6177 && a2 == 0xEA00000000007372)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097260(uint64_t a1)
{
  v2 = sub_1E1099664();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109729C(uint64_t a1)
{
  v2 = sub_1E1099664();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E10972D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E10986DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E109734C()
{
  result = qword_1ECE8B470;
  if (!qword_1ECE8B470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B470);
  }

  return result;
}

unint64_t sub_1E10973A0()
{
  result = qword_1ECE8B478;
  if (!qword_1ECE8B478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B478);
  }

  return result;
}

uint64_t sub_1E10973F4(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5E8, &qword_1E10BBD90);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099D4C();
  sub_1E10AEA5C();
  LOBYTE(v14) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    LOBYTE(v14) = 1;
    sub_1E10AE86C();
    v12 = *(v3 + 48);
    v14 = *(v3 + 32);
    v15 = v12;
    v13[15] = 2;
    sub_1E1099814();
    sub_1E10AE8AC();
    LOBYTE(v14) = 3;
    sub_1E10AE86C();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E10975F4(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4C8, &qword_1E10BB778);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1098ED0();
  sub_1E10AEA5C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4B0, &qword_1E10BB770);
  sub_1E1098FFC();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E1097750()
{
  v1 = 25705;
  v2 = 0x4177656976657270;
  if (*v0 != 2)
  {
    v2 = 0x656C746974;
  }

  if (*v0)
  {
    v1 = 0x6C7255736C68;
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

uint64_t sub_1E10977C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E1098860(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E10977EC(uint64_t a1)
{
  v2 = sub_1E1099D4C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097828(uint64_t a1)
{
  v2 = sub_1E1099D4C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

__n128 sub_1E1097864@<Q0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_1E10989BC(a2, v6);
  if (!v2)
  {
    v5 = v6[3];
    *(a1 + 32) = v6[2];
    *(a1 + 48) = v5;
    *(a1 + 64) = v6[4];
    result = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = result;
  }

  return result;
}

uint64_t sub_1E10978DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x736F65646976 && a2 == 0xE600000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097960(uint64_t a1)
{
  v2 = sub_1E1098ED0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109799C(uint64_t a1)
{
  v2 = sub_1E1098ED0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E10979D8@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E1098D4C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E1097A20(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B600, &qword_1E10BBDA0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v13[-v9];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E08();
  sub_1E10AEA5C();
  LOBYTE(v14) = 0;
  sub_1E10AE86C();
  if (!v2)
  {
    v11 = *(v3 + 32);
    v14 = *(v3 + 16);
    v15 = v11;
    v13[15] = 1;
    sub_1E1099814();
    sub_1E10AE8AC();
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E1097B9C(void *a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B508, &qword_1E10BB790);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = v11 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099460();
  sub_1E10AEA5C();
  v11[1] = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4F0, &qword_1E10BB788);
  sub_1E109958C();
  sub_1E10AE8AC();
  return (*(v5 + 8))(v9, v4);
}

uint64_t sub_1E1097CF8()
{
  if (*v0)
  {
    return 0x4177656976657270;
  }

  else
  {
    return 7107189;
  }
}

uint64_t sub_1E1097D38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E1097E1C(uint64_t a1)
{
  v2 = sub_1E1099E08();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097E58(uint64_t a1)
{
  v2 = sub_1E1099E08();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E1097E94@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E10990D4(a2, v6);
  if (!v2)
  {
    v5 = v6[1];
    *a1 = v6[0];
    a1[1] = v5;
    result = *&v7;
    a1[2] = v7;
  }

  return result;
}

uint64_t sub_1E1097F0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x6361466863746177 && a2 == 0xEA00000000007365)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E1097F9C(uint64_t a1)
{
  v2 = sub_1E1099460();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E1097FD8(uint64_t a1)
{
  v2 = sub_1E1099460();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *sub_1E1098014@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1E10992DC(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E1098088()
{
  result = qword_1ECE8B480;
  if (!qword_1ECE8B480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B480);
  }

  return result;
}

unint64_t sub_1E10980DC()
{
  result = qword_1ECE8B488;
  if (!qword_1ECE8B488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B488);
  }

  return result;
}

uint64_t sub_1E109815C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  *(a1 + 8) = a4(a1, a2, a3);
  result = a5();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E1098198()
{
  result = qword_1ECE8B490;
  if (!qword_1ECE8B490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B490);
  }

  return result;
}

unint64_t sub_1E10981EC()
{
  result = qword_1ECE8B498;
  if (!qword_1ECE8B498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B498);
  }

  return result;
}

uint64_t sub_1E1098240(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 7107189 && a2 == 0xE300000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6874646977 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x746867696568 && a2 == 0xE600000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E1098350(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B608, &qword_1E10BBDA8);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = &v11 - v7;
  v9 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E5C();
  sub_1E10AEA3C();
  if (!v1)
  {
    v14 = 0;
    v9 = sub_1E10AE7BC();
    v13 = 1;
    sub_1E10AE7EC();
    v12 = 2;
    sub_1E10AE7EC();
    (*(v4 + 8))(v8, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

void *sub_1E1098558(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B560, &qword_1E10BB7B0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099868();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E10996B8();
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

void *sub_1E10986DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B520, &qword_1E10BB798);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099664();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E10996B8();
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

uint64_t sub_1E1098860(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6C7255736C68 && a2 == 0xE600000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x4177656976657270 && a2 == 0xEE006B726F777472 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x656C746974 && a2 == 0xE500000000000000)
  {

    return 3;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E10989BC@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5D8, &qword_1E10BBD88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v24 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099D4C();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v34) = 0;
  v11 = sub_1E10AE7BC();
  v28 = v12;
  LOBYTE(v34) = 1;
  v13 = sub_1E10AE7BC();
  *(&v27 + 1) = v14;
  *&v27 = v13;
  LOBYTE(v29) = 2;
  sub_1E109973C();
  sub_1E10AE7FC();
  v26 = v34;
  v24 = *(&v35 + 1);
  v25 = v35;
  v42 = 3;
  v15 = sub_1E10AE7BC();
  v17 = v16;
  (*(v6 + 8))(v10, v5);
  v18 = v28;
  *&v29 = v11;
  *(&v29 + 1) = v28;
  v19 = v27;
  v30 = v27;
  v20 = *(&v26 + 1);
  v31 = v26;
  *&v32 = v25;
  *(&v32 + 1) = v24;
  *&v33 = v15;
  *(&v33 + 1) = v17;
  sub_1E1099DA0(&v29, &v34);
  __swift_destroy_boxed_opaque_existential_1(a1);
  *&v34 = v11;
  *(&v34 + 1) = v18;
  v35 = __PAIR128__(*(&v27 + 1), v19);
  v36 = v26;
  v37 = v20;
  v38 = v25;
  v39 = v24;
  v40 = v15;
  v41 = v17;
  result = sub_1E1099DD8(&v34);
  v22 = v32;
  a2[2] = v31;
  a2[3] = v22;
  a2[4] = v33;
  v23 = v30;
  *a2 = v29;
  a2[1] = v23;
  return result;
}

void *sub_1E1098D4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4A0, &qword_1E10BB768);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1098ED0();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1098F24();
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1E1098ED0()
{
  result = qword_1ECE8B4A8;
  if (!qword_1ECE8B4A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4A8);
  }

  return result;
}

unint64_t sub_1E1098F24()
{
  result = qword_1ECE8B4B8;
  if (!qword_1ECE8B4B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1098FA8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4B8);
  }

  return result;
}

unint64_t sub_1E1098FA8()
{
  result = qword_1ECE8B4C0;
  if (!qword_1ECE8B4C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4C0);
  }

  return result;
}

unint64_t sub_1E1098FFC()
{
  result = qword_1ECE8B4D0;
  if (!qword_1ECE8B4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4B0, &qword_1E10BB770);
    sub_1E1099080();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4D0);
  }

  return result;
}

unint64_t sub_1E1099080()
{
  result = qword_1ECE8B4D8;
  if (!qword_1ECE8B4D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4D8);
  }

  return result;
}

uint64_t sub_1E10990D4@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B5F0, &qword_1E10BBD98);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v18 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099E08();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  LOBYTE(v19) = 0;
  v11 = sub_1E10AE7BC();
  v13 = v12;
  v14 = v11;
  v22 = 1;
  sub_1E109973C();
  sub_1E10AE7FC();
  (*(v6 + 8))(v10, v5);
  v18 = v19;
  v15 = v20;
  v16 = v21;
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  *a2 = v14;
  *(a2 + 8) = v13;
  *(a2 + 16) = v18;
  *(a2 + 32) = v15;
  *(a2 + 40) = v16;
  return result;
}

void *sub_1E10992DC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4E0, &qword_1E10BB780);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v8 = v11 - v7;
  v9 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E1099460();
  sub_1E10AEA3C();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E10994B4();
    sub_1E10AE7FC();
    (*(v4 + 8))(v8, v3);
    v9 = v11[1];
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  return v9;
}

unint64_t sub_1E1099460()
{
  result = qword_1ECE8B4E8;
  if (!qword_1ECE8B4E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4E8);
  }

  return result;
}

unint64_t sub_1E10994B4()
{
  result = qword_1ECE8B4F8;
  if (!qword_1ECE8B4F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E1099538();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B4F8);
  }

  return result;
}

unint64_t sub_1E1099538()
{
  result = qword_1ECE8B500;
  if (!qword_1ECE8B500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B500);
  }

  return result;
}

unint64_t sub_1E109958C()
{
  result = qword_1ECE8B510;
  if (!qword_1ECE8B510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B4F0, &qword_1E10BB788);
    sub_1E1099610();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B510);
  }

  return result;
}

unint64_t sub_1E1099610()
{
  result = qword_1ECE8B518;
  if (!qword_1ECE8B518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B518);
  }

  return result;
}

unint64_t sub_1E1099664()
{
  result = qword_1ECE8B528;
  if (!qword_1ECE8B528)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B528);
  }

  return result;
}

unint64_t sub_1E10996B8()
{
  result = qword_1ECE8B538;
  if (!qword_1ECE8B538)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E109973C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B538);
  }

  return result;
}

unint64_t sub_1E109973C()
{
  result = qword_1ECE8B540;
  if (!qword_1ECE8B540)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B540);
  }

  return result;
}

unint64_t sub_1E1099790()
{
  result = qword_1ECE8B550;
  if (!qword_1ECE8B550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B530, &qword_1E10BB7A0);
    sub_1E1099814();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B550);
  }

  return result;
}

unint64_t sub_1E1099814()
{
  result = qword_1ECE8B558;
  if (!qword_1ECE8B558)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B558);
  }

  return result;
}

unint64_t sub_1E1099868()
{
  result = qword_1ECE8B568;
  if (!qword_1ECE8B568)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B568);
  }

  return result;
}

unint64_t sub_1E1099930()
{
  result = qword_1ECE8B578;
  if (!qword_1ECE8B578)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B578);
  }

  return result;
}

unint64_t sub_1E1099988()
{
  result = qword_1ECE8B580;
  if (!qword_1ECE8B580)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B580);
  }

  return result;
}

unint64_t sub_1E10999E0()
{
  result = qword_1ECE8B588;
  if (!qword_1ECE8B588)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B588);
  }

  return result;
}

unint64_t sub_1E1099A38()
{
  result = qword_1ECE8B590;
  if (!qword_1ECE8B590)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B590);
  }

  return result;
}

unint64_t sub_1E1099A90()
{
  result = qword_1ECE8B598;
  if (!qword_1ECE8B598)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B598);
  }

  return result;
}

unint64_t sub_1E1099AE8()
{
  result = qword_1ECE8B5A0;
  if (!qword_1ECE8B5A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5A0);
  }

  return result;
}

unint64_t sub_1E1099B40()
{
  result = qword_1ECE8B5A8;
  if (!qword_1ECE8B5A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5A8);
  }

  return result;
}

unint64_t sub_1E1099B98()
{
  result = qword_1ECE8B5B0;
  if (!qword_1ECE8B5B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5B0);
  }

  return result;
}

unint64_t sub_1E1099BF0()
{
  result = qword_1ECE8B5B8;
  if (!qword_1ECE8B5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5B8);
  }

  return result;
}

unint64_t sub_1E1099C48()
{
  result = qword_1ECE8B5C0;
  if (!qword_1ECE8B5C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5C0);
  }

  return result;
}

unint64_t sub_1E1099CA0()
{
  result = qword_1ECE8B5C8;
  if (!qword_1ECE8B5C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5C8);
  }

  return result;
}

unint64_t sub_1E1099CF8()
{
  result = qword_1ECE8B5D0;
  if (!qword_1ECE8B5D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5D0);
  }

  return result;
}

unint64_t sub_1E1099D4C()
{
  result = qword_1ECE8B5E0;
  if (!qword_1ECE8B5E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5E0);
  }

  return result;
}

unint64_t sub_1E1099E08()
{
  result = qword_1ECE8B5F8;
  if (!qword_1ECE8B5F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B5F8);
  }

  return result;
}

unint64_t sub_1E1099E5C()
{
  result = qword_1ECE8B610;
  if (!qword_1ECE8B610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B610);
  }

  return result;
}

unint64_t sub_1E1099EE4()
{
  result = qword_1ECE8B620;
  if (!qword_1ECE8B620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B620);
  }

  return result;
}

unint64_t sub_1E1099F3C()
{
  result = qword_1ECE8B628;
  if (!qword_1ECE8B628)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B628);
  }

  return result;
}

unint64_t sub_1E1099F94()
{
  result = qword_1ECE8B630;
  if (!qword_1ECE8B630)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B630);
  }

  return result;
}

unint64_t sub_1E1099FEC()
{
  result = qword_1ECE8B638;
  if (!qword_1ECE8B638)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B638);
  }

  return result;
}

unint64_t sub_1E109A044()
{
  result = qword_1ECE8B640;
  if (!qword_1ECE8B640)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B640);
  }

  return result;
}

unint64_t sub_1E109A09C()
{
  result = qword_1ECE8B648;
  if (!qword_1ECE8B648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B648);
  }

  return result;
}

unint64_t sub_1E109A0F4()
{
  result = qword_1ECE8B650;
  if (!qword_1ECE8B650)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B650);
  }

  return result;
}

unint64_t sub_1E109A14C()
{
  result = qword_1ECE8B658;
  if (!qword_1ECE8B658)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B658);
  }

  return result;
}

unint64_t sub_1E109A1A4()
{
  result = qword_1ECE8B660;
  if (!qword_1ECE8B660)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B660);
  }

  return result;
}

uint64_t sub_1E109A208()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E109A270(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_1E109A2C0(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  return sub_1E10AEA0C();
}

uint64_t sub_1E109A324(void *a1, void *a2)
{
  v2 = a1[4];
  v3 = a1[5];
  v4 = a2[4];
  v5 = a2[5];
  v6 = a1[2] == a2[2] && a1[3] == a2[3];
  if (v6 || (v7 = sub_1E10AE8FC(), result = 0, (v7 & 1) != 0))
  {
    if (v2 == v4 && v3 == v5)
    {
      return 1;
    }

    else
    {

      return sub_1E10AE8FC();
    }
  }

  return result;
}

unint64_t sub_1E109A3CC()
{
  result = qword_1ECE8B668;
  if (!qword_1ECE8B668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B668);
  }

  return result;
}

unint64_t sub_1E109A424()
{
  result = qword_1ECE8B670;
  if (!qword_1ECE8B670)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B670);
  }

  return result;
}

uint64_t sub_1E109A488@<X0>(void *a1@<X8>)
{
  v4 = *v1;
  v3 = v1[1];
  v5 = v1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89E18, &qword_1E10B6B80) + 44);
  v6 = *v5;
  v7 = *(v5 + 1);
  v8 = *(v5 + 7);
  v58 = *(v5 + 6);
  v59 = v8;
  v9 = *(v5 + 5);
  v56 = *(v5 + 4);
  v57 = v9;
  v10 = *(v5 + 3);
  v54 = *(v5 + 2);
  v55 = v10;
  v53 = *(v5 + 1);
  v52[0] = v6;
  v52[1] = v7;
  if (sub_1E10306A0(v52) == 1)
  {
    goto LABEL_8;
  }

  v11 = *(v5 + 1);
  v43[0] = *v5;
  v43[1] = v11;
  v43[2] = *(v5 + 2);
  v12 = *(v5 + 6);
  v13 = v5 + 56;
  v14 = *(v5 + 7);
  v15 = *(v5 + 8);
  v47 = *(v5 + 72);
  v48 = *(v5 + 88);
  v16 = *(v5 + 13);
  v17 = *(v5 + 14);
  v18 = *(v5 + 15);
  v44 = v12;
  v45 = v14;
  v49 = v16;
  v50 = v17;
  v46 = v15;
  v31 = v17;
  v51 = v18;
  if (sub_1E10306A0(v43) == 1)
  {
    goto LABEL_8;
  }

  v29 = v4;
  v30 = v3;
  v28 = v6;
  if (v15)
  {
    v27 = v14;
  }

  else
  {
    v31 = 0;
    v18 = 0;
    v27 = 0;
  }

  v32 = *v5;
  v19 = *v13;
  v39 = *(v5 + 72);
  v20 = *(v5 + 104);
  v40 = *(v5 + 88);
  v41 = v20;
  v21 = *(v5 + 2);
  v22 = *(v5 + 3);
  v23 = *(v5 + 4);
  v24 = *(v5 + 5);
  v25 = *(v5 + 6);
  v42 = *(v13 + 8);
  v38 = v19;
  v33 = v21;
  v34 = v22;
  v35 = v23;
  v36 = v24;
  v37 = v25;
  if (sub_1E10306A0(&v32) == 1)
  {
LABEL_8:
    result = sub_1E10AE6FC();
    __break(1u);
  }

  else
  {
    *a1 = v29;
    a1[1] = v30;
    a1[2] = v28;
    a1[3] = v7;
    a1[4] = v31;
    a1[5] = v18;
    a1[6] = v27;
    a1[7] = v15;
    a1[8] = v21;
    a1[9] = v22;
    a1[10] = v23;
    a1[11] = v24;
    a1[12] = v25;
  }

  return result;
}

__n128 __swift_memcpy128_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[7];
  *(a1 + 96) = a2[6];
  *(a1 + 112) = v7;
  *(a1 + 64) = result;
  *(a1 + 80) = v6;
  return result;
}

uint64_t sub_1E109A6B4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1E109A6FC(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0;
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
      *(result + 128) = 1;
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

    *(result + 128) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E109A76C(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B698, &unk_1E10BC300);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v17 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109B0A0();
  sub_1E10AEA5C();
  v19 = *v3;
  LOBYTE(v17[0]) = 0;
  sub_1E0FF4F38();
  sub_1E10AE8AC();
  if (!v2)
  {
    v11 = v3[2];
    v19 = v3[1];
    v20 = v11;
    *&v21 = *(v3 + 6);
    LOBYTE(v17[0]) = 1;
    sub_1E0FEE620();
    sub_1E10AE85C();
    v12 = *(v3 + 72);
    v13 = *(v3 + 104);
    v24[2] = *(v3 + 88);
    v24[3] = v13;
    v25 = *(v3 + 15);
    v24[0] = *(v3 + 56);
    v24[1] = v12;
    v14 = *(v3 + 72);
    v15 = *(v3 + 104);
    v21 = *(v3 + 88);
    v22 = v15;
    v23 = *(v3 + 15);
    v19 = *(v3 + 56);
    v20 = v14;
    v26 = 2;
    sub_1E1028CE0(v24, v17);
    sub_1E1028D50();
    sub_1E10AE85C();
    v17[2] = v21;
    v17[3] = v22;
    v18 = v23;
    v17[1] = v20;
    v17[0] = v19;
    sub_1E1028DA4(v17);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t sub_1E109A9F4()
{
  v1 = 0x726F6C6F436762;
  if (*v0 != 1)
  {
    v1 = 1869049708;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 1701667182;
  }
}

uint64_t sub_1E109AA40@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E109AC24(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E109AA68(uint64_t a1)
{
  v2 = sub_1E109B0A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109AAA4(uint64_t a1)
{
  v2 = sub_1E109B0A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

double sub_1E109AAE0@<D0>(_OWORD *a1@<X8>, void *a2@<X0>)
{
  sub_1E109AD3C(a2, v9);
  if (!v2)
  {
    v5 = v13;
    a1[4] = v12;
    a1[5] = v5;
    v6 = v15;
    a1[6] = v14;
    a1[7] = v6;
    v7 = v9[1];
    *a1 = v9[0];
    a1[1] = v7;
    result = *&v10;
    v8 = v11;
    a1[2] = v10;
    a1[3] = v8;
  }

  return result;
}

unint64_t sub_1E109AB4C(uint64_t a1)
{
  *(a1 + 8) = sub_1E109AB7C();
  result = sub_1E109ABD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_1E109AB7C()
{
  result = qword_1ECE8B678;
  if (!qword_1ECE8B678)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B678);
  }

  return result;
}

unint64_t sub_1E109ABD0()
{
  result = qword_1ECE8B680;
  if (!qword_1ECE8B680)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B680);
  }

  return result;
}

uint64_t sub_1E109AC24(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1701667182 && a2 == 0xE400000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x726F6C6F436762 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1869049708 && a2 == 0xE400000000000000)
  {

    return 2;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E109AD3C@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B688, &qword_1E10BC2F8);
  v5 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v26 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E109B0A0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v33 = a2;
  LOBYTE(v34) = 0;
  sub_1E0FF4EE4();
  v11 = v61;
  sub_1E10AE7FC();
  v12 = v38;
  v32 = v39;
  LOBYTE(v34) = 1;
  sub_1E0FEE674();
  sub_1E10AE7AC();
  v29 = v38;
  v30 = v12;
  v27 = v40;
  v28 = v39;
  v31 = v41;
  v13 = v42;
  v50 = 2;
  sub_1E1028C24();
  sub_1E10AE7AC();
  (*(v10 + 8))(v9, v11);
  v58 = v53;
  v59 = v54;
  v60 = v55;
  v56 = v51;
  v57 = v52;
  v15 = v29;
  v14 = v30;
  v16 = v13;
  v26 = v13;
  v17 = v32;
  *&v34 = v30;
  *(&v34 + 1) = v32;
  v18 = v27;
  v19 = v28;
  *&v35 = v29;
  *(&v35 + 1) = v28;
  *&v36 = v27;
  *(&v36 + 1) = v31;
  *&v37[0] = v16;
  *(&v37[1] + 8) = v52;
  *(&v37[2] + 8) = v53;
  *(&v37[3] + 8) = v54;
  *(&v37[4] + 1) = v55;
  *(v37 + 8) = v51;
  sub_1E109B0F4(&v34, &v38);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v46 = v57;
  v47 = v58;
  v48 = v59;
  v38 = v14;
  v39 = v17;
  v40 = v15;
  v41 = v19;
  v42 = v18;
  v43 = v31;
  v44 = v26;
  v49 = v60;
  v45 = v56;
  result = sub_1E109B12C(&v38);
  v21 = v37[2];
  v22 = v33;
  v33[4] = v37[1];
  v22[5] = v21;
  v23 = v37[4];
  v22[6] = v37[3];
  v22[7] = v23;
  v24 = v35;
  *v22 = v34;
  v22[1] = v24;
  v25 = v37[0];
  v22[2] = v36;
  v22[3] = v25;
  return result;
}

unint64_t sub_1E109B0A0()
{
  result = qword_1ECE8B690;
  if (!qword_1ECE8B690)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B690);
  }

  return result;
}

unint64_t sub_1E109B170()
{
  result = qword_1ECE8B6A0;
  if (!qword_1ECE8B6A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6A0);
  }

  return result;
}

unint64_t sub_1E109B1C8()
{
  result = qword_1ECE8B6A8;
  if (!qword_1ECE8B6A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6A8);
  }

  return result;
}

unint64_t sub_1E109B220()
{
  result = qword_1ECE8B6B0;
  if (!qword_1ECE8B6B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6B0);
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_1E109B324(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 56);
    v8 = MEMORY[0x1E69E7CC0];
    v20 = a1[1];
    do
    {
      v12 = *(v7 - 3);
      v13 = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = *v7;
      v16 = v12 == v4 && v13 == v5;
      if (v16 || (sub_1E10AE8FC() & 1) != 0)
      {

        v21 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E1059C7C(0, *(v8 + 16) + 1, 1);
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1E1059C7C((v9 > 1), v10 + 1, 1);
        }

        *(v8 + 16) = v10 + 1;
        v11 = v8 + 32 * v10;
        *(v11 + 32) = v12;
        *(v11 + 40) = v13;
        *(v11 + 48) = v14;
        *(v11 + 56) = v15;
        v5 = v20;
      }

      v7 += 32;
      --v6;
    }

    while (v6);
  }

  sub_1E10ADFAC();
  MEMORY[0x1EEE9AC00](v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE893C0, qword_1E10B23B0);
  sub_1E10AE20C();
  sub_1E0FEDEAC(&qword_1ECE8BAE0, &qword_1ECE893C0, qword_1E10B23B0, MEMORY[0x1E69E6328]);
  sub_1E10AE13C();

  return v21;
}

uint64_t sub_1E109B560@<X0>(unint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v71 = a4;
  v6 = a1[1];
  v40 = *(a1 + 16);
  v7 = *(a2 + 16);
  if (v7)
  {
    v8 = *a1;
    v9 = (a2 + 48);
    while (1)
    {
      v10 = v9[4];
      v11 = v9[6];
      v68 = v9[5];
      v69 = v11;
      v12 = *v9;
      v13 = v9[2];
      v64 = v9[1];
      v65 = v13;
      v14 = v9[2];
      v15 = v9[4];
      v66 = v9[3];
      v67 = v15;
      v16 = *v9;
      v63[0] = *(v9 - 1);
      v63[1] = v16;
      v59 = v10;
      v60 = v68;
      v61 = v9[6];
      v55 = v12;
      v56 = v64;
      v70 = *(v9 + 112);
      v17 = *(&v63[0] + 1);
      v18 = *&v63[0];
      v62 = *(v9 + 112);
      v57 = v14;
      v58 = v66;
      if (v63[0] == __PAIR128__(v6, v8))
      {
        break;
      }

      v19 = sub_1E10AE8FC();
      if (v5)
      {
        goto LABEL_32;
      }

      if (v19)
      {
        goto LABEL_31;
      }

      v46 = __PAIR128__(v17, v18);
      v51 = v59;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v47 = v55;
      v48 = v56;
      v49 = v57;
      v50 = v58;
      sub_1E10968F0(v63, v44);
      sub_1E109694C(&v46);
      v9 = (v9 + 136);
      if (!--v7)
      {
        goto LABEL_7;
      }
    }

    v18 = v8;
    if (!v5)
    {
LABEL_31:
      v38 = v71;
      *&v46 = v18;
      *(&v46 + 1) = v17;
      v51 = v59;
      v52 = v60;
      v53 = v61;
      v54 = v62;
      v47 = v55;
      v48 = v56;
      v49 = v57;
      v50 = v58;
      v44[6] = v60;
      v44[7] = v61;
      v45 = v62;
      v44[2] = v56;
      v44[3] = v57;
      v44[4] = v58;
      v44[5] = v59;
      v44[0] = v46;
      v44[1] = v55;
      sub_1E10968F0(v63, v43);
      sub_1E109E1C8(a3, v38, v39, a5);
      return sub_1E109694C(&v46);
    }

LABEL_32:
    sub_1E10968F0(v63, &v46);

    *&v46 = v18;
    *(&v46 + 1) = v17;
    v51 = v59;
    v52 = v60;
    v53 = v61;
    v54 = v62;
    v47 = v55;
    v48 = v56;
    v49 = v57;
    v50 = v58;
    result = sub_1E109694C(&v46);
    __break(1u);
  }

  else
  {
LABEL_7:
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v20 = sub_1E10ADF9C();
    __swift_project_value_buffer(v20, qword_1EE185540);

    v21 = sub_1E10ADF7C();
    v22 = sub_1E10AE44C();

    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      *&v63[0] = v24;
      v25 = 0xE500000000000000;
      v26 = 0x636973756DLL;
      *v23 = 136315138;
      v27 = 0x80000001E10BF070;
      v28 = 0xD000000000000011;
      if (v40 != 6)
      {
        v28 = 0x66696C746867696ELL;
        v27 = 0xE900000000000065;
      }

      v29 = 0xE700000000000000;
      v30 = 0x72657461656874;
      if (v40 != 4)
      {
        v30 = 0x657665656C707061;
        v29 = 0xEA0000000000746ELL;
      }

      if (v40 <= 5)
      {
        v28 = v30;
        v27 = v29;
      }

      v31 = 0xEE00736D75657375;
      v32 = 0x6D646E6173747261;
      if (v40 != 2)
      {
        v32 = 0x65636E6164;
        v31 = 0xE500000000000000;
      }

      if (v40)
      {
        v26 = 0x74726F7073;
        v25 = 0xE500000000000000;
      }

      if (v40 > 1)
      {
        v26 = v32;
        v25 = v31;
      }

      if (v40 <= 3)
      {
        v33 = v26;
      }

      else
      {
        v33 = v28;
      }

      if (v40 <= 3)
      {
        v34 = v25;
      }

      else
      {
        v34 = v27;
      }

      v35 = sub_1E1078CFC(v33, v34, v63);

      *(v23 + 4) = v35;
      _os_log_impl(&dword_1E0FDF000, v21, v22, "Failed to find %s result in response", v23, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v24);
      MEMORY[0x1E12EE9E0](v24, -1, -1);
      MEMORY[0x1E12EE9E0](v23, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v36 = xmmword_1E10B4430;
    return swift_willThrow();
  }

  return result;
}

uint64_t sub_1E109BA18@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v55 = a4;
  v51 = a6;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE89740, &unk_1E10BCCC0);
  swift_getTupleTypeMetadata2();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE88F88, &qword_1E10B07B0);
  v12 = sub_1E10AE3BC();
  v13 = sub_1E10AE4EC();
  v48 = *(v13 - 8);
  v49 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v56 = &v45 - v16;
  v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAC8, &qword_1E10BCCD0);
  v50 = *(v53 - 8);
  MEMORY[0x1EEE9AC00](v17, v18);
  v20 = &v45 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAD0, &qword_1E10BCCD8);
  MEMORY[0x1EEE9AC00](v21, v22);
  type metadata accessor for EventService.GeoRequest(0);
  if (swift_dynamicCastMetatype())
  {
    v46 = a7;
    v47 = &v45;
    v57 = a1;
    MEMORY[0x1EEE9AC00](v23, v24);
    v25 = v51;
    *(&v45 - 2) = a5;
    *(&v45 - 1) = v25;
    sub_1E10AE20C();

    swift_getWitnessTable();
    sub_1E10AE12C();
    v54 = v12;
    *(&v45 - 4) = MEMORY[0x1EEE9AC00](v26, v27);
    *(&v45 - 3) = a2;
    v28 = v55;
    *(&v45 - 2) = a3;
    *(&v45 - 1) = v28;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89970, &qword_1E10BCCE0);
    (*(v50 + 104))(v20, *MEMORY[0x1E69E8790], v53);
    sub_1E10AE3CC();

    v29 = v54;
    v30 = v56;
    if (swift_dynamicCast())
    {

      v31 = *(v29 - 8);
      (*(v31 + 56))(v30, 0, 1, v29);
      return (*(v31 + 32))(v46, v30, v29);
    }

    else
    {
      (*(*(v29 - 8) + 56))(v30, 1, 1, v29);
      (*(v48 + 8))(v30, v49);
      if (qword_1EE180170 != -1)
      {
        swift_once();
      }

      v39 = sub_1E10ADF9C();
      __swift_project_value_buffer(v39, qword_1EE185540);
      v40 = sub_1E10ADF7C();
      v41 = sub_1E10AE44C();
      if (os_log_type_enabled(v40, v41))
      {
        v42 = swift_slowAlloc();
        v43 = swift_slowAlloc();
        v57 = v43;
        *v42 = 136315138;
        *(v42 + 4) = sub_1E1078CFC(0x65757165526F6547, 0xEA00000000007473, &v57);
        _os_log_impl(&dword_1E0FDF000, v40, v41, "Failed to cast result of a %s", v42, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v43);
        MEMORY[0x1E12EE9E0](v43, -1, -1);
        MEMORY[0x1E12EE9E0](v42, -1, -1);
      }

      sub_1E10095EC();
      swift_allocError();
      *v44 = xmmword_1E10B4430;
      swift_willThrow();
    }
  }

  else
  {
    if (qword_1EE180170 != -1)
    {
      swift_once();
    }

    v33 = sub_1E10ADF9C();
    __swift_project_value_buffer(v33, qword_1EE185540);
    v34 = sub_1E10ADF7C();
    v35 = sub_1E10AE44C();
    if (os_log_type_enabled(v34, v35))
    {
      v36 = swift_slowAlloc();
      v37 = swift_slowAlloc();
      v57 = v37;
      *v36 = 136315138;
      *(v36 + 4) = sub_1E1078CFC(0xD000000000000013, 0x80000001E10C0E40, &v57);
      _os_log_impl(&dword_1E0FDF000, v34, v35, "This type of %s is not supported", v36, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v37);
      MEMORY[0x1E12EE9E0](v37, -1, -1);
      MEMORY[0x1E12EE9E0](v36, -1, -1);
    }

    sub_1E10095EC();
    swift_allocError();
    *v38 = xmmword_1E10B4430;
    return swift_willThrow();
  }
}

uint64_t sub_1E109C148(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = a1[1];
  v6 = *(a2 + 16);
  if (v6)
  {
    v7 = (a2 + 56);
    v8 = MEMORY[0x1E69E7CC0];
    v22 = a1[1];
    do
    {
      v12 = *(v7 - 3);
      v13 = *(v7 - 2);
      v14 = *(v7 - 1);
      v15 = *v7;
      v16 = v12 == v4 && v13 == v5;
      if (v16 || (sub_1E10AE8FC() & 1) != 0)
      {

        v23 = v8;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1E1059CB4(0, *(v8 + 16) + 1, 1);
        }

        v10 = *(v8 + 16);
        v9 = *(v8 + 24);
        if (v10 >= v9 >> 1)
        {
          sub_1E1059CB4((v9 > 1), v10 + 1, 1);
        }

        *(v8 + 16) = v10 + 1;
        v11 = v8 + 32 * v10;
        *(v11 + 32) = v12;
        *(v11 + 40) = v13;
        *(v11 + 48) = v14;
        *(v11 + 56) = v15;
        v5 = v22;
      }

      v7 += 32;
      --v6;
    }

    while (v6);
  }

  type metadata accessor for PartialEvent(0, a3, a4, a4);
  sub_1E10ADFAC();
  MEMORY[0x1EEE9AC00](v17, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89740, &unk_1E10BCCC0);
  sub_1E10AE20C();
  sub_1E0FEDEAC(&qword_1ECE8BAC0, &qword_1ECE89740, &unk_1E10BCCC0, MEMORY[0x1E69E6328]);
  sub_1E10AE13C();

  return v23;
}

uint64_t sub_1E109C394(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 > 3u)
  {
    if (a3 > 5u)
    {
      if (a3 != 6)
      {
        if (a1 > 3u && a1 > 5u && a1 != 6)
        {
          v3 = 1;
          goto LABEL_40;
        }

        goto LABEL_39;
      }

      if (a1 <= 3u || a1 != 6)
      {
LABEL_39:
        v3 = sub_1E10AE8FC();
        goto LABEL_40;
      }

      v3 = 1;
    }

    else if (a3 == 4)
    {
      if (a1 != 4)
      {
        goto LABEL_39;
      }

      v3 = 1;
    }

    else
    {
      if (a1 <= 3u || a1 > 5u || a1 == 4)
      {
        goto LABEL_39;
      }

      v3 = 1;
    }
  }

  else
  {
    if (a3 <= 1u)
    {
      if (a3)
      {
        if (a1 != 1)
        {
          goto LABEL_39;
        }
      }

      else if (a1)
      {
        goto LABEL_39;
      }

      goto LABEL_33;
    }

    if (a3 != 2)
    {
      if (a1 != 3)
      {
        goto LABEL_39;
      }

LABEL_33:
      v3 = 1;
      goto LABEL_40;
    }

    if (a1 != 2)
    {
      goto LABEL_39;
    }

    v3 = 1;
  }

LABEL_40:

  return v3 & 1;
}

uint64_t sub_1E109CC6C(uint64_t a1, unsigned __int8 a2)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();

  return sub_1E10AEA0C();
}

unint64_t sub_1E109CDE0@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1E10A215C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1E109CE10(unint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0x636973756DLL;
  v5 = 0x80000001E10BF070;
  v6 = 0xD000000000000011;
  if (v2 != 6)
  {
    v6 = 0x66696C746867696ELL;
    v5 = 0xE900000000000065;
  }

  v7 = 0xE700000000000000;
  v8 = 0x72657461656874;
  if (v2 != 4)
  {
    v8 = 0x657665656C707061;
    v7 = 0xEA0000000000746ELL;
  }

  if (*v1 <= 5u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0xEE00736D75657375;
  v10 = 0x6D646E6173747261;
  if (v2 != 2)
  {
    v10 = 0x65636E6164;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = 0x74726F7073;
    v3 = 0xE500000000000000;
  }

  if (*v1 > 1u)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 3);
  v11 = v2 == 3;
  v12 = v2 - 3 < 0;
  if (*v1 <= 3u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

unint64_t sub_1E109CF2C()
{
  result = qword_1ECE8B6C8;
  if (!qword_1ECE8B6C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6C8);
  }

  return result;
}

uint64_t sub_1E109CF80(uint64_t a1)
{
  v2 = sub_1E10A56D0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109CFBC(uint64_t a1)
{
  v2 = sub_1E10A56D0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109CFF8(uint64_t a1)
{
  v2 = sub_1E10A59E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D034(uint64_t a1)
{
  v2 = sub_1E10A59E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D070(uint64_t a1)
{
  v2 = sub_1E10A546C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D0AC(uint64_t a1)
{
  v2 = sub_1E10A546C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D0E8(uint64_t a1)
{
  v2 = sub_1E10A58E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D124(uint64_t a1)
{
  v2 = sub_1E10A58E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D160(uint64_t a1)
{
  v2 = sub_1E10A55C8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D19C(uint64_t a1)
{
  v2 = sub_1E10A55C8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D1D8(uint64_t a1)
{
  v2 = sub_1E10A5BF8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D214(uint64_t a1)
{
  v2 = sub_1E10A5BF8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D250(uint64_t a1)
{
  v2 = sub_1E10A54C0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D28C(uint64_t a1)
{
  v2 = sub_1E10A54C0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D2C8(uint64_t a1)
{
  v2 = sub_1E10A5AF0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D304(uint64_t a1)
{
  v2 = sub_1E10A5AF0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D340(uint64_t a1)
{
  v2 = sub_1E10A57D8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D37C(uint64_t a1)
{
  v2 = sub_1E10A57D8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D3B8(uint64_t a1)
{
  v2 = sub_1E10A4378();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D3F4(uint64_t a1)
{
  v2 = sub_1E10A4378();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D444@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E109D4C8(uint64_t a1)
{
  v2 = sub_1E10A62E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D504(uint64_t a1)
{
  v2 = sub_1E10A62E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D540(uint64_t a1)
{
  v2 = sub_1E10A633C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D57C(uint64_t a1)
{
  v2 = sub_1E10A633C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D5B8(uint64_t a1)
{
  v2 = sub_1E10A4474();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D5F4(uint64_t a1)
{
  v2 = sub_1E10A4474();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D630()
{
  if (*v0)
  {
    return 0x74726F7073;
  }

  else
  {
    return 0x636973756DLL;
  }
}

uint64_t sub_1E109D65C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109D730(uint64_t a1)
{
  v2 = sub_1E10A6390();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D76C(uint64_t a1)
{
  v2 = sub_1E10A6390();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D7A8(uint64_t a1)
{
  v2 = sub_1E10A6438();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D7E4(uint64_t a1)
{
  v2 = sub_1E10A6438();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D820@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109D8EC(uint64_t a1)
{
  v2 = sub_1E10A63E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D928(uint64_t a1)
{
  v2 = sub_1E10A63E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D964(uint64_t a1)
{
  v2 = sub_1E10A45A0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109D9A0(uint64_t a1)
{
  v2 = sub_1E10A45A0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109D9DC(uint64_t a1)
{
  v2 = sub_1E10A76EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DA18(uint64_t a1)
{
  v2 = sub_1E10A76EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DA54(uint64_t a1)
{
  v2 = sub_1E10A79F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DA90(uint64_t a1)
{
  v2 = sub_1E10A79F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DACC()
{
  v1 = *v0;
  v2 = 0x636973756DLL;
  v3 = 0x6C61766974736566;
  if (v1 != 6)
  {
    v3 = 0x66696C746867696ELL;
  }

  v4 = 0x72657461656874;
  if (v1 != 4)
  {
    v4 = 0x656C707061;
  }

  if (*v0 <= 5u)
  {
    v3 = v4;
  }

  v5 = 7631457;
  if (v1 != 2)
  {
    v5 = 0x65636E6164;
  }

  if (*v0)
  {
    v2 = 0x74726F7073;
  }

  if (*v0 > 1u)
  {
    v2 = v5;
  }

  if (*v0 <= 3u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

uint64_t sub_1E109DBAC(uint64_t a1)
{
  v2 = sub_1E10A7490();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DBE8(uint64_t a1)
{
  v2 = sub_1E10A7490();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DC24(uint64_t a1)
{
  v2 = sub_1E10A78F4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DC60(uint64_t a1)
{
  v2 = sub_1E10A78F4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DC9C(uint64_t a1)
{
  v2 = sub_1E10A75E8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DCD8(uint64_t a1)
{
  v2 = sub_1E10A75E8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DD14(uint64_t a1)
{
  v2 = sub_1E10A7C00();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DD50(uint64_t a1)
{
  v2 = sub_1E10A7C00();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DD8C(uint64_t a1)
{
  v2 = sub_1E10A74E4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DDC8(uint64_t a1)
{
  v2 = sub_1E10A74E4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DE04(uint64_t a1)
{
  v2 = sub_1E10A7AFC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DE40(uint64_t a1)
{
  v2 = sub_1E10A7AFC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DE7C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 12383 && a2 == 0xE200000000000000)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_1E10AE8FC();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_1E109DEFC(uint64_t a1)
{
  v2 = sub_1E10A77F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109DF38(uint64_t a1)
{
  v2 = sub_1E10A77F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109DF74@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x5474736575716572 && a2 == 0xED00004449657079;
  if (v6 || (sub_1E10AE8FC() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x65756C6176 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1E10AE8FC();

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

uint64_t sub_1E109E054(uint64_t a1)
{
  v2 = sub_1E10A6680();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E109E090(uint64_t a1)
{
  v2 = sub_1E10A6680();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1E109E0CC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t (*a3)(void)@<X3>, uint64_t (*a4)(void)@<X4>, uint64_t a5@<X8>)
{
  a3(0);
  MEMORY[0x1EEE9AC00](v9, v10);
  sub_1E10A86B0(a1, &v14 - v11, a4);
  v12 = swift_dynamicCast();
  return (*(*(a2 - 8) + 56))(a5, v12 ^ 1u, 1, a2);
}

uint64_t sub_1E109E1C8@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  v41[1] = a1;
  v42 = a4;
  v5 = type metadata accessor for ParticipantSchedule(255, a1, a2, a3);
  v6 = sub_1E10AE4EC();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = v41 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = v41 - v14;
  v56 = *(v4 + 128);
  v16 = *(v4 + 96);
  v53 = *(v4 + 80);
  v54 = v16;
  v55 = *(v4 + 112);
  v17 = *(v4 + 32);
  v52[0] = *(v4 + 16);
  v52[1] = v17;
  v18 = *(v4 + 64);
  v52[2] = *(v4 + 48);
  v52[3] = v18;
  if (v56)
  {
    v19 = *(v4 + 32);
    v44 = *(v4 + 16);
    v45 = v19;
    v20 = *(v4 + 64);
    v46 = *(v4 + 48);
    v47 = v20;
    *&v48 = v53;
    sub_1E0FEE058(v52, v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BAD8, &qword_1E10BCCE8);
    v21 = swift_dynamicCast();
    v22 = *(*(v5 - 8) + 56);
    if (v21)
    {
      v23 = *(v5 - 8);
      v22(v11, 0, 1, v5);
      return (*(v23 + 32))(v42, v11, v5);
    }

    v22(v11, 1, 1, v5);
    (*(v7 + 8))(v11, v6);
  }

  else
  {
    v25 = *(v4 + 96);
    v48 = *(v4 + 80);
    v49 = v25;
    v26 = *(v4 + 112);
    v27 = *(v4 + 32);
    v44 = *(v4 + 16);
    v45 = v27;
    v28 = *(v4 + 64);
    v46 = *(v4 + 48);
    v47 = v28;
    v50 = v26;
    v51 = *(&v55 + 1);
    sub_1E0FF02C8(v52, v43);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B3D8, &qword_1E10BB2D0);
    v29 = swift_dynamicCast();
    v30 = *(*(v5 - 8) + 56);
    if (v29)
    {
      v31 = *(v5 - 8);
      v30(v15, 0, 1, v5);
      return (*(v31 + 32))(v42, v15, v5);
    }

    v30(v15, 1, 1, v5);
    (*(v7 + 8))(v15, v6);
  }

  if (qword_1EE180170 != -1)
  {
    swift_once();
  }

  v32 = sub_1E10ADF9C();
  __swift_project_value_buffer(v32, qword_1EE185540);
  v33 = sub_1E10ADF7C();
  v34 = sub_1E10AE44C();
  if (os_log_type_enabled(v33, v34))
  {
    v35 = swift_slowAlloc();
    v36 = swift_slowAlloc();
    *&v44 = v36;
    *v35 = 136315138;
    v37 = sub_1E10AEAEC();
    v39 = sub_1E1078CFC(v37, v38, &v44);

    *(v35 + 4) = v39;
    _os_log_impl(&dword_1E0FDF000, v33, v34, "Failed to cast ParticipantSchedule to %s", v35, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v36);
    MEMORY[0x1E12EE9E0](v36, -1, -1);
    MEMORY[0x1E12EE9E0](v35, -1, -1);
  }

  sub_1E10095EC();
  swift_allocError();
  *v40 = xmmword_1E10B4430;
  return swift_willThrow();
}

uint64_t sub_1E109E62C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, uint64_t a6@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a4, a5);
  MEMORY[0x1EEE9AC00](v12, v13);
  sub_1E0FEDC50(a1, &v19 - v14, a4, a5);
  v16 = type metadata accessor for PartialEvent(0, a2, a3, v15);
  v17 = swift_dynamicCast();
  return (*(*(v16 - 8) + 56))(a6, v17 ^ 1u, 1, v16);
}

uint64_t sub_1E109E800(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v17 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B6E8, &qword_1E10BCA50);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4378();
  sub_1E10AEA5C();
  v18 = a2;
  v19 = a3;
  v21 = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v5)
  {
    v18 = v17;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_1E10A4420();
    sub_1E10AE8AC();
  }

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1E109E9AC(void *a1, uint64_t a2, int a3)
{
  v73 = a3;
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B858, &qword_1E10BCB08);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v70 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B860, &qword_1E10BCB10);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B868, &qword_1E10BCB18);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v64 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B870, &qword_1E10BCB20);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B878, &qword_1E10BCB28);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v58 = &v53 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B880, &qword_1E10BCB30);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B888, &qword_1E10BCB38);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v53 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B890, &qword_1E10BCB40);
  v53 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v53 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B898, &qword_1E10BCB48);
  v38 = *(v37 - 8);
  v75 = v37;
  v76 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v53 - v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A546C();
  sub_1E10AEA5C();
  if (v73 > 3u)
  {
    if (v73 > 5u)
    {
      v45 = v75;
      if (v73 == 6)
      {
        LOBYTE(v77) = 6;
        sub_1E10A55C8();
        v46 = v67;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
        sub_1E10A5DB4();
        v47 = v69;
        sub_1E10AE8AC();
        v48 = v68;
      }

      else
      {
        LOBYTE(v77) = 7;
        sub_1E10A54C0();
        v46 = v70;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
        sub_1E10A5D00();
        v47 = v72;
        sub_1E10AE8AC();
        v48 = v71;
      }
    }

    else
    {
      v45 = v75;
      if (v73 == 4)
      {
        LOBYTE(v77) = 4;
        sub_1E10A57D8();
        v46 = v61;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
        sub_1E10A5F1C();
        v47 = v63;
        sub_1E10AE8AC();
        v48 = v62;
      }

      else
      {
        LOBYTE(v77) = 5;
        sub_1E10A56D0();
        v46 = v64;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
        sub_1E10A5E68();
        v47 = v66;
        sub_1E10AE8AC();
        v48 = v65;
      }
    }

    goto LABEL_16;
  }

  if (v73 > 1u)
  {
    if (v73 == 2)
    {
      LOBYTE(v77) = 2;
      sub_1E10A59E8();
      v45 = v75;
      sub_1E10AE82C();
      v77 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B820, &qword_1E10BCAF0);
      sub_1E10A6084();
      v49 = v57;
      sub_1E10AE8AC();
      (*(v56 + 8))(v27, v49);
      v50 = *(v76 + 8);
      v51 = v42;
      return v50(v51, v45);
    }

    LOBYTE(v77) = 3;
    sub_1E10A58E0();
    v46 = v58;
    v45 = v75;
    sub_1E10AE82C();
    v77 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E10A5FD0();
    v47 = v60;
    sub_1E10AE8AC();
    v48 = v59;
LABEL_16:
    (*(v48 + 8))(v46, v47);
    v50 = *(v76 + 8);
    v51 = v42;
    return v50(v51, v45);
  }

  if (!v73)
  {
    LOBYTE(v77) = 0;
    sub_1E10A5BF8();
    v43 = v75;
    sub_1E10AE82C();
    v77 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
    sub_1E10A61EC();
    sub_1E10AE8AC();
    (*(v53 + 8))(v36, v32);
    return (*(v76 + 8))(v42, v43);
  }

  LOBYTE(v77) = 1;
  sub_1E10A5AF0();
  v45 = v75;
  sub_1E10AE82C();
  v77 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
  sub_1E10A6138();
  v52 = v55;
  sub_1E10AE8AC();
  (*(v54 + 8))(v31, v52);
  v50 = *(v76 + 8);
  v51 = v42;
  return v50(v51, v45);
}

uint64_t sub_1E109F3D8(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B710, &qword_1E10BCA60);
  v14 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v13 - v6;
  v8 = *v1;
  v9 = v1[1];
  sub_1E10485A8((v1 + 2), v17);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4474();

  sub_1E10AEA5C();
  v16[0] = v8;
  v16[1] = v9;
  v15[0] = 0;
  sub_1E0FED9C8();
  v10 = v13[1];
  sub_1E10AE8AC();

  if (v10)
  {
    return (*(v14 + 8))(v7, v3);
  }

  sub_1E10485A8(v17, v16);
  v17[135] = 1;
  sub_1E106C7A4(v17, v15);
  sub_1E10A451C();
  sub_1E10AE8AC();
  v12 = (v14 + 8);
  sub_1E10485A8(v16, v15);
  sub_1E10A4570(v15);
  return (*v12)(v7, v3);
}

uint64_t sub_1E109F5E0@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v21 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B6F8, &qword_1E10BCA58);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v20 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4474();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v21;
  LOBYTE(v23[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v26 = v24[0];
  v34 = 1;
  sub_1E10A44C8();
  sub_1E10AE7FC();
  (*(v10 + 8))(v9, v4);
  sub_1E10485A8(&v25, v22);
  sub_1E10485A8(v22, &v27);
  v12 = v30;
  v13 = v31;
  v23[4] = v30;
  v23[5] = v31;
  v14 = v33;
  v23[6] = v32;
  v23[7] = v33;
  v15 = v26;
  v16 = v27;
  v23[0] = v26;
  v23[1] = v27;
  v17 = v28;
  v18 = v29;
  v23[2] = v28;
  v23[3] = v29;
  v11[6] = v32;
  v11[7] = v14;
  v11[4] = v12;
  v11[5] = v13;
  v11[2] = v17;
  v11[3] = v18;
  *v11 = v15;
  v11[1] = v16;
  sub_1E106C748(v23, v24);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v24[4] = v30;
  v24[5] = v31;
  v24[6] = v32;
  v24[7] = v33;
  v24[0] = v26;
  v24[1] = v27;
  v24[2] = v28;
  v24[3] = v29;
  return sub_1E106C800(v24);
}

uint64_t sub_1E109F890(void *a1)
{
  v2 = v1;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B900, &qword_1E10BCB60);
  v28 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v21 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B908, &qword_1E10BCB68);
  v27 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v21 - v11;
  v23 = *v2;
  v14 = *(v2 + 2);
  v13 = *(v2 + 3);
  v15 = *(v2 + 13);
  v24 = *(v2 + 12);
  v22 = v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A62E8();
  sub_1E10AEA5C();
  sub_1E10A633C();
  sub_1E10AE82C();
  v29 = v23;
  v30 = v14;
  v31 = v13;
  v16 = v25;
  v17 = v2[3];
  v32 = v2[2];
  v33 = v17;
  v18 = v2[5];
  v34 = v2[4];
  v35 = v18;
  v36 = v24;
  v37 = 0;
  sub_1E0FEDBA8();
  v19 = v26;
  sub_1E10AE8AC();
  if (!v19)
  {
    *&v29 = v22;
    v37 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    sub_1E10A6138();
    sub_1E10AE8AC();
  }

  (*(v28 + 8))(v7, v16);
  return (*(v27 + 8))(v12, v8);
}

uint64_t sub_1E109FB40@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v25 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B8E0, &qword_1E10BCB50);
  v26 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v24 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B8E8, &qword_1E10BCB58);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v10, v11);
  v13 = &v24 - v12;
  v14 = a1[3];
  v47 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1E10A62E8();
  v15 = v27;
  sub_1E10AEA3C();
  if (!v15)
  {
    v16 = v26;
    v27 = v9;
    v17 = sub_1E10AE80C();
    v18 = (2 * *(v17 + 16)) | 1;
    v43 = v17;
    v44 = v17 + 32;
    v45 = 0;
    v46 = v18;
    if (sub_1E101A824() || v45 != v46 >> 1)
    {
      v20 = sub_1E10AE62C();
      swift_allocError();
      v22 = v21;
      __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
      *v22 = &_s13GroupResponseV9ValueTypeON;
      sub_1E10AE77C();
      sub_1E10AE61C();
      (*(*(v20 - 8) + 104))(v22, *MEMORY[0x1E69E6AF8], v20);
      swift_willThrow();
      (*(v27 + 8))(v13, v8);
      swift_unknownObjectRelease();
    }

    else
    {
      sub_1E10A633C();
      sub_1E10AE76C();
      v40 = 0;
      sub_1E0FEDF5C();
      sub_1E10AE7FC();
      v19 = v27;
      v24 = v8;
      v37 = v41[4];
      v38 = v41[5];
      v39 = v42;
      v33 = v41[0];
      v34 = v41[1];
      v35 = v41[2];
      v36 = v41[3];
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      v31 = 1;
      sub_1E10A5B44();
      sub_1E10AE7FC();
      (*(v16 + 8))(v7, v3);
      (*(v19 + 8))(v13, v24);
      swift_unknownObjectRelease();
      v28[4] = v37;
      v28[5] = v38;
      v28[0] = v33;
      v28[1] = v34;
      v28[2] = v35;
      v28[3] = v36;
      v29 = v39;
      v30 = v32;
      sub_1E10485A8(v28, v25);
    }
  }

  return __swift_destroy_boxed_opaque_existential_1(v47);
}

uint64_t sub_1E109FFF0(void *a1)
{
  v3 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B738, &qword_1E10BCA70) - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = v19 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = *(v1 + 6);
  v34 = *(v1 + 5);
  v35 = v10;
  v36 = *(v1 + 7);
  v37 = *(v1 + 128);
  v11 = *(v1 + 2);
  v30 = *(v1 + 1);
  v31 = v11;
  v12 = *(v1 + 4);
  v32 = *(v1 + 3);
  v33 = v12;
  v13 = a1[3];
  v14 = a1;
  v16 = v15;
  __swift_project_boxed_opaque_existential_1(v14, v13);
  sub_1E10A45A0();

  sub_1E10AEA5C();
  *&v22 = v8;
  *(&v22 + 1) = v9;
  LOBYTE(v20[0]) = 0;
  sub_1E0FED9C8();
  v17 = v19[1];
  sub_1E10AE8AC();

  if (!v17)
  {
    v26 = v34;
    v27 = v35;
    v28 = v36;
    v29 = v37;
    v22 = v30;
    v23 = v31;
    v24 = v32;
    v25 = v33;
    v38 = 1;
    sub_1E10A4648(&v30, v20);
    sub_1E10A4680();
    sub_1E10AE8AC();
    v20[4] = v26;
    v20[5] = v27;
    v20[6] = v28;
    v21 = v29;
    v20[0] = v22;
    v20[1] = v23;
    v20[2] = v24;
    v20[3] = v25;
    sub_1E10A46D4(v20);
  }

  return (*(v3 + 8))(v7, v16);
}

uint64_t sub_1E10A0248@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v57 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B720, &qword_1E10BCA68);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v6, v7);
  v9 = &v23 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A45A0();
  sub_1E10AEA3C();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v10 = v5;
  v11 = v57;
  LOBYTE(v24[0]) = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v12 = v31;
  v23 = v30;
  v40 = 1;
  sub_1E10A45F4();
  sub_1E10AE7FC();
  (*(v10 + 8))(v9, v4);
  v13 = v45;
  v53 = v45;
  v54 = v46;
  v55 = v47;
  v14 = v41;
  v49 = v41;
  v50 = v42;
  v15 = v43;
  v51 = v43;
  v52 = v44;
  v25 = v44;
  v24[3] = v43;
  v56 = v48;
  v16 = v23;
  *&v24[0] = v23;
  *(&v24[0] + 1) = v12;
  v24[2] = v42;
  v24[1] = v41;
  v17 = v48;
  v29 = v48;
  v28 = v47;
  v27 = v46;
  v26 = v45;
  v18 = v24[0];
  *(v11 + 32) = v42;
  *(v11 + 48) = v15;
  *v11 = v18;
  *(v11 + 16) = v14;
  v19 = v25;
  v20 = v27;
  v21 = v28;
  *(v11 + 128) = v17;
  *(v11 + 96) = v20;
  *(v11 + 112) = v21;
  *(v11 + 64) = v19;
  *(v11 + 80) = v13;
  sub_1E10968F0(v24, &v30);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v30 = v16;
  v31 = v12;
  v36 = v53;
  v37 = v54;
  v38 = v55;
  v39 = v56;
  v32 = v49;
  v33 = v50;
  v34 = v51;
  v35 = v52;
  return sub_1E109694C(&v30);
}

uint64_t sub_1E10A0584(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B940, &qword_1E10BCB88);
  v36 = *(v4 - 8);
  v37 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v33 = &v31 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B948, &qword_1E10BCB90);
  v34 = *(v8 - 8);
  v35 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v31 - v11;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B950, &qword_1E10BCB98);
  v40 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v31 - v15;
  v17 = *(v2 + 8);
  v32 = *(v2 + 13);
  v18 = *(v2 + 112);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A6390();
  v19 = v16;
  sub_1E10AEA5C();
  if (v18)
  {
    LOBYTE(v41) = 1;
    sub_1E10A63E4();
    v20 = v33;
    v21 = v38;
    sub_1E10AE82C();
    v22 = v2[1];
    v41 = *v2;
    v42 = v22;
    v23 = v2[3];
    v43 = v2[2];
    v44 = v23;
    v48 = 0;
    sub_1E0FEEB48();
    v24 = v37;
    v25 = v39;
    sub_1E10AE8AC();
    if (!v25)
    {
      *&v41 = v17;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      sub_1E10A6138();
      sub_1E10AE8AC();
    }

    (*(v36 + 8))(v20, v24);
  }

  else
  {
    LOBYTE(v41) = 0;
    sub_1E10A6438();
    v21 = v38;
    sub_1E10AE82C();
    v26 = v2[1];
    v41 = *v2;
    v42 = v26;
    v27 = v2[3];
    v43 = v2[2];
    v44 = v27;
    v45 = v17;
    v46 = *(v2 + 72);
    v47 = *(v2 + 88);
    v48 = 0;
    sub_1E1005408();
    v28 = v35;
    v29 = v39;
    sub_1E10AE8AC();
    if (!v29)
    {
      *&v41 = v32;
      v48 = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
      sub_1E10A61EC();
      sub_1E10AE8AC();
    }

    (*(v34 + 8))(v12, v28);
  }

  return (*(v40 + 8))(v19, v21);
}

uint64_t sub_1E10A099C@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v42 = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B910, &qword_1E10BCB70);
  v40 = *(v3 - 8);
  v41 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v38 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B918, &qword_1E10BCB78);
  v39 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v38 - v11;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B920, &qword_1E10BCB80);
  v43 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v14, v15);
  v17 = &v38 - v16;
  v18 = a1[3];
  v45 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v18);
  sub_1E10A6390();
  v19 = v44;
  sub_1E10AEA3C();
  if (v19)
  {
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  v44 = v8;
  v20 = v41;
  v21 = v42;
  v22 = sub_1E10AE80C();
  v23 = (2 * *(v22 + 16)) | 1;
  v65 = v22;
  v66 = v22 + 32;
  v67 = 0;
  v68 = v23;
  v24 = sub_1E101A850();
  if (v24 == 2 || v67 != v68 >> 1)
  {
    v25 = sub_1E10AE62C();
    swift_allocError();
    v27 = v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
    *v27 = &_s19ParticipantResponseV9ValueTypeON;
    sub_1E10AE77C();
    sub_1E10AE61C();
    (*(*(v25 - 8) + 104))(v27, *MEMORY[0x1E69E6AF8], v25);
    swift_willThrow();
    (*(v43 + 8))(v17, v13);
    swift_unknownObjectRelease();
    return __swift_destroy_boxed_opaque_existential_1(v45);
  }

  if (v24)
  {
    LOBYTE(v51) = 1;
    sub_1E10A63E4();
    sub_1E10AE76C();
    v71 = 0;
    sub_1E0FEEAF4();
    sub_1E10AE7FC();
    v44 = v17;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    v32 = 1;
    v70 = 1;
    sub_1E10A5B44();
    sub_1E10AE7FC();
    (*(v40 + 8))(v7, v20);
    (*(v43 + 8))(v44, v13);
    swift_unknownObjectRelease();
    v34 = v58;
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v64 = v49;
    v69 = 1;
  }

  else
  {
    LOBYTE(v51) = 0;
    sub_1E10A6438();
    v29 = v12;
    sub_1E10AE76C();
    v71 = 0;
    sub_1E10053B4();
    v30 = v44;
    sub_1E10AE7FC();
    v31 = v43;
    v50[0] = v55;
    v50[1] = v56;
    *&v50[2] = v57;
    v46 = v51;
    v47 = v52;
    v48 = v53;
    v49 = v54;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
    v70 = 1;
    sub_1E10A5C4C();
    sub_1E10AE7FC();
    (*(v39 + 8))(v29, v30);
    (*(v31 + 8))(v17, v13);
    swift_unknownObjectRelease();
    v32 = 0;
    v33 = v58;
    v61 = v46;
    v62 = v47;
    v63 = v48;
    v64 = v49;
    v34 = *&v50[0];
    v59 = *(v50 + 8);
    v60 = *(&v50[1] + 8);
    v69 = 0;
  }

  v35 = v62;
  *v21 = v61;
  *(v21 + 16) = v35;
  v36 = v64;
  *(v21 + 32) = v63;
  *(v21 + 48) = v36;
  v37 = v60;
  *(v21 + 72) = v59;
  *(v21 + 64) = v34;
  *(v21 + 88) = v37;
  *(v21 + 104) = v33;
  *(v21 + 112) = v32;
  return __swift_destroy_boxed_opaque_existential_1(v45);
}

uint64_t sub_1E10A10B0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, int a5)
{
  v20 = a5;
  v17 = a4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B960, &qword_1E10BCBA8);
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v16 - v13;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A6680();
  sub_1E10AEA5C();
  v18 = a2;
  v19 = a3;
  v21 = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v5)
  {
    v18 = v17;
    LOBYTE(v19) = v20;
    v21 = 1;
    sub_1E10A6728();
    sub_1E10AE8AC();
  }

  return (*(v10 + 8))(v14, v9);
}

uint64_t sub_1E10A125C(void *a1, uint64_t a2, int a3)
{
  v73 = a3;
  v74 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F8, &qword_1E10BCC78);
  v71 = *(v4 - 8);
  v72 = v4;
  MEMORY[0x1EEE9AC00](v5, v6);
  v70 = &v53 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA00, &qword_1E10BCC80);
  v68 = *(v8 - 8);
  v69 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v67 = &v53 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA08, &qword_1E10BCC88);
  v65 = *(v12 - 8);
  v66 = v12;
  MEMORY[0x1EEE9AC00](v13, v14);
  v64 = &v53 - v15;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA10, &qword_1E10BCC90);
  v62 = *(v16 - 8);
  v63 = v16;
  MEMORY[0x1EEE9AC00](v17, v18);
  v61 = &v53 - v19;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA18, &qword_1E10BCC98);
  v59 = *(v20 - 8);
  v60 = v20;
  MEMORY[0x1EEE9AC00](v21, v22);
  v58 = &v53 - v23;
  v57 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA20, &qword_1E10BCCA0);
  v56 = *(v57 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v27 = &v53 - v26;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA28, &qword_1E10BCCA8);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v28, v29);
  v31 = &v53 - v30;
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA30, &qword_1E10BCCB0);
  v53 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v33, v34);
  v36 = &v53 - v35;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BA38, &qword_1E10BCCB8);
  v38 = *(v37 - 8);
  v75 = v37;
  v76 = v38;
  MEMORY[0x1EEE9AC00](v39, v40);
  v42 = &v53 - v41;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A7490();
  sub_1E10AEA5C();
  if (v73 > 3u)
  {
    if (v73 > 5u)
    {
      v45 = v75;
      if (v73 == 6)
      {
        LOBYTE(v77) = 6;
        sub_1E10A75E8();
        v46 = v67;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
        sub_1E10A7DB4();
        v47 = v69;
        sub_1E10AE8AC();
        v48 = v68;
      }

      else
      {
        LOBYTE(v77) = 7;
        sub_1E10A74E4();
        v46 = v70;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
        sub_1E10A7D04();
        v47 = v72;
        sub_1E10AE8AC();
        v48 = v71;
      }
    }

    else
    {
      v45 = v75;
      if (v73 == 4)
      {
        LOBYTE(v77) = 4;
        sub_1E10A77F0();
        v46 = v61;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
        sub_1E10A7F14();
        v47 = v63;
        sub_1E10AE8AC();
        v48 = v62;
      }

      else
      {
        LOBYTE(v77) = 5;
        sub_1E10A76EC();
        v46 = v64;
        sub_1E10AE82C();
        v77 = v74;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
        sub_1E10A7E64();
        v47 = v66;
        sub_1E10AE8AC();
        v48 = v65;
      }
    }

    goto LABEL_16;
  }

  if (v73 > 1u)
  {
    if (v73 == 2)
    {
      LOBYTE(v77) = 2;
      sub_1E10A79F8();
      v45 = v75;
      sub_1E10AE82C();
      v77 = v74;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
      sub_1E10A8074();
      v49 = v57;
      sub_1E10AE8AC();
      (*(v56 + 8))(v27, v49);
      v50 = *(v76 + 8);
      v51 = v42;
      return v50(v51, v45);
    }

    LOBYTE(v77) = 3;
    sub_1E10A78F4();
    v46 = v58;
    v45 = v75;
    sub_1E10AE82C();
    v77 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
    sub_1E10A7FC4();
    v47 = v60;
    sub_1E10AE8AC();
    v48 = v59;
LABEL_16:
    (*(v48 + 8))(v46, v47);
    v50 = *(v76 + 8);
    v51 = v42;
    return v50(v51, v45);
  }

  if (!v73)
  {
    LOBYTE(v77) = 0;
    sub_1E10A7C00();
    v43 = v75;
    sub_1E10AE82C();
    v77 = v74;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
    sub_1E10A81D4();
    sub_1E10AE8AC();
    (*(v53 + 8))(v36, v32);
    return (*(v76 + 8))(v42, v43);
  }

  LOBYTE(v77) = 1;
  sub_1E10A7AFC();
  v45 = v75;
  sub_1E10AE82C();
  v77 = v74;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
  sub_1E10A8124();
  v52 = v55;
  sub_1E10AE8AC();
  (*(v54 + 8))(v31, v52);
  v50 = *(v76 + 8);
  v51 = v42;
  return v50(v51, v45);
}

uint64_t sub_1E10A1E10@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
    *(a2 + 16) = v6;
    *(a2 + 24) = v7;
  }

  return result;
}

uint64_t sub_1E10A1E98@<X0>(uint64_t (*a1)(void)@<X3>, uint64_t a2@<X8>)
{
  result = a1();
  if (!v2)
  {
    *a2 = result;
    *(a2 + 8) = v5;
  }

  return result;
}

uint64_t sub_1E10A1EEC@<X0>(uint64_t a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>)
{
  MEMORY[0x1EEE9AC00](a3, a4);
  (*(v6 + 16))(&v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = type metadata accessor for EventService.GeoRequest(0);
  v8 = swift_dynamicCast();
  return (*(*(v7 - 8) + 56))(a2, v8 ^ 1u, 1, v7);
}

uint64_t sub_1E10A2010(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1E10A2434(a5, *(a2 + 16), *(a2 + 24), a6, a7);
  sub_1E10AE20C();
  swift_getWitnessTable();
  return sub_1E10AE1FC();
}

uint64_t sub_1E10A20A8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  sub_1E10A3280(a5, *(a2 + 16), *(a2 + 24), a6, a7);
  type metadata accessor for PartialEvent(255, a6, a7, v9);
  sub_1E10AE20C();
  swift_getWitnessTable();
  return sub_1E10AE1FC();
}

unint64_t sub_1E10A215C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E10AE74C();

  if (v2 >= 8)
  {
    return 8;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1E10A21A8(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x636973756DLL && a2 == 0xE500000000000000;
  if (v4 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x74726F7073 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 7631457 && a2 == 0xE300000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x65636E6164 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x72657461656874 && a2 == 0xE700000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x656C707061 && a2 == 0xE500000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x6C61766974736566 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x66696C746867696ELL && a2 == 0xE900000000000065)
  {

    return 7;
  }

  else
  {
    v6 = sub_1E10AE8FC();

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

uint64_t sub_1E10A2434(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4)
      {
        if (a1 <= 3u || a1 > 5u || a1 == 4)
        {
          v20 = sub_1E10AE8FC();

          if ((v20 & 1) == 0)
          {
            return sub_1E10AE1BC();
          }
        }

        else
        {
        }

        MEMORY[0x1EEE9AC00](v21, v22);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
        sub_1E0FEDEAC(&qword_1ECE8BAF8, &qword_1ECE8B7D8, &qword_1E10BCAD8, MEMORY[0x1E69E6328]);
        return sub_1E10AE12C();
      }

      if (a1 == 4)
      {
      }

      else
      {
        v27 = sub_1E10AE8FC();

        if ((v27 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
      sub_1E0FEDEAC(&qword_1ECE8BB00, &qword_1ECE8B7F0, &qword_1E10BCAE0, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (a3 == 6)
    {
      if (a1 > 3u && a1 == 6)
      {
      }

      else
      {
        v28 = sub_1E10AE8FC();

        if ((v28 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v18, v19);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
      sub_1E0FEDEAC(&qword_1ECE8BAF0, &qword_1ECE8B7C0, &qword_1E10BCAD0, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (a1 <= 3u || a1 <= 5u || a1 == 6)
    {
      v23 = sub_1E10AE8FC();

      if ((v23 & 1) == 0)
      {
        return sub_1E10AE1BC();
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v24, v25);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
    sub_1E0FEDEAC(&qword_1ECE8BAE8, &qword_1ECE8B7A8, &qword_1E10BCAC8, MEMORY[0x1E69E6328]);
    return sub_1E10AE12C();
  }

  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a1 == 1)
      {
      }

      else
      {
        v15 = sub_1E10AE8FC();

        if ((v15 & 1) == 0)
        {
          return sub_1E10AE1BC();
        }
      }

      MEMORY[0x1EEE9AC00](v16, v17);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
      sub_1E0FEDEAC(&qword_1ECE8BB18, &qword_1ECE8B838, &unk_1E10BCAF8, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (!a1)
    {

LABEL_51:
      MEMORY[0x1EEE9AC00](v5, v6);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
      sub_1E0FEDEAC(&qword_1ECE8BB20, &qword_1ECE8B458, &unk_1E10BB500, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    v26 = sub_1E10AE8FC();

    if (v26)
    {
      goto LABEL_51;
    }

    return sub_1E10AE1BC();
  }

  if (a3 != 2)
  {
    if (a1 > 3u || a1 <= 1u || a1 == 2)
    {
      v12 = sub_1E10AE8FC();

      if ((v12 & 1) == 0)
      {
        return sub_1E10AE1BC();
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v13, v14);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E0FEDEAC(&qword_1ECE8BB08, &qword_1ECE8B808, &qword_1E10BCAE8, MEMORY[0x1E69E6328]);
    return sub_1E10AE12C();
  }

  if (a1 == 2)
  {
  }

  else
  {
    v9 = sub_1E10AE8FC();

    if ((v9 & 1) == 0)
    {
      return sub_1E10AE1BC();
    }
  }

  MEMORY[0x1EEE9AC00](v10, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B820, &qword_1E10BCAF0);
  sub_1E0FEDEAC(&qword_1ECE8BB10, &qword_1ECE8B820, &qword_1E10BCAF0, MEMORY[0x1E69E6328]);
  return sub_1E10AE12C();
}

uint64_t sub_1E10A3280(unsigned __int8 a1, uint64_t a2, unsigned __int8 a3, uint64_t a4, uint64_t a5)
{
  if (a3 > 3u)
  {
    if (a3 <= 5u)
    {
      if (a3 != 4)
      {
        if (a1 <= 3u || a1 > 5u || a1 == 4)
        {
          v24 = sub_1E10AE8FC();

          if ((v24 & 1) == 0)
          {
            goto LABEL_62;
          }
        }

        else
        {
        }

        MEMORY[0x1EEE9AC00](v25, v26);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
        type metadata accessor for PartialEvent(0, a4, a5, v35);
        sub_1E0FEDEAC(&qword_1EE17E4C8, &qword_1ECE8B9C8, &qword_1E10BCC18, MEMORY[0x1E69E6328]);
        return sub_1E10AE12C();
      }

      if (a1 == 4)
      {
      }

      else
      {
        v33 = sub_1E10AE8FC();

        if ((v33 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      MEMORY[0x1EEE9AC00](v9, v10);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
      type metadata accessor for PartialEvent(0, a4, a5, v34);
      sub_1E0FEDEAC(&qword_1EE17E488, &qword_1ECE8B9D0, &qword_1E10BCC28, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (a3 == 6)
    {
      if (a1 > 3u && a1 == 6)
      {
      }

      else
      {
        v37 = sub_1E10AE8FC();

        if ((v37 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      MEMORY[0x1EEE9AC00](v22, v23);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
      type metadata accessor for PartialEvent(0, a4, a5, v38);
      sub_1E0FEDEAC(&qword_1EE17E478, &qword_1ECE8B9C0, &qword_1E10BCC08, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (a1 <= 3u || a1 <= 5u || a1 == 6)
    {
      v27 = sub_1E10AE8FC();

      if ((v27 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v28, v29);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
    type metadata accessor for PartialEvent(0, a4, a5, v40);
    sub_1E0FEDEAC(&qword_1EE17E468, &qword_1ECE8B9B8, &qword_1E10BCBF8, MEMORY[0x1E69E6328]);
    return sub_1E10AE12C();
  }

  if (a3 <= 1u)
  {
    if (a3)
    {
      if (a1 == 1)
      {
      }

      else
      {
        v19 = sub_1E10AE8FC();

        if ((v19 & 1) == 0)
        {
          goto LABEL_62;
        }
      }

      MEMORY[0x1EEE9AC00](v20, v21);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
      type metadata accessor for PartialEvent(0, a4, a5, v32);
      sub_1E0FEDEAC(&qword_1EE17E498, &qword_1ECE8B9E8, &qword_1E10BCC58, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    if (!a1)
    {

LABEL_51:
      MEMORY[0x1EEE9AC00](v7, v8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
      type metadata accessor for PartialEvent(0, a4, a5, v31);
      sub_1E0FEDEAC(&qword_1EE17E4A8, &qword_1ECE8B9F0, &qword_1E10BCC68, MEMORY[0x1E69E6328]);
      return sub_1E10AE12C();
    }

    v30 = sub_1E10AE8FC();

    if (v30)
    {
      goto LABEL_51;
    }

LABEL_62:
    type metadata accessor for PartialEvent(0, a4, a5, v12);
    return sub_1E10AE1BC();
  }

  if (a3 != 2)
  {
    if (a1 > 3u || a1 <= 1u || a1 == 2)
    {
      v15 = sub_1E10AE8FC();

      if ((v15 & 1) == 0)
      {
        goto LABEL_62;
      }
    }

    else
    {
    }

    MEMORY[0x1EEE9AC00](v16, v17);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
    type metadata accessor for PartialEvent(0, a4, a5, v36);
    sub_1E0FEDEAC(&qword_1EE17E4B8, &qword_1ECE8B9D8, &qword_1E10BCC38, MEMORY[0x1E69E6328]);
    return sub_1E10AE12C();
  }

  if (a1 == 2)
  {
  }

  else
  {
    v11 = sub_1E10AE8FC();

    if ((v11 & 1) == 0)
    {
      goto LABEL_62;
    }
  }

  MEMORY[0x1EEE9AC00](v13, v14);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
  type metadata accessor for PartialEvent(0, a4, a5, v18);
  sub_1E0FEDEAC(&qword_1EE17E4D8, &qword_1ECE8B9E0, &qword_1E10BCC48, MEMORY[0x1E69E6328]);
  return sub_1E10AE12C();
}

uint64_t sub_1E10A4184(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B6D0, &qword_1E10BCA48);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A4378();
  sub_1E10AEA3C();
  v11 = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v9 = v12;
  v11 = 1;
  sub_1E10A43CC();
  sub_1E10AE7FC();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1E10A4378()
{
  result = qword_1ECE8B6D8;
  if (!qword_1ECE8B6D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6D8);
  }

  return result;
}

unint64_t sub_1E10A43CC()
{
  result = qword_1ECE8B6E0;
  if (!qword_1ECE8B6E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6E0);
  }

  return result;
}

unint64_t sub_1E10A4420()
{
  result = qword_1ECE8B6F0;
  if (!qword_1ECE8B6F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B6F0);
  }

  return result;
}

unint64_t sub_1E10A4474()
{
  result = qword_1ECE8B700;
  if (!qword_1ECE8B700)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B700);
  }

  return result;
}

unint64_t sub_1E10A44C8()
{
  result = qword_1ECE8B708;
  if (!qword_1ECE8B708)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B708);
  }

  return result;
}

unint64_t sub_1E10A451C()
{
  result = qword_1ECE8B718;
  if (!qword_1ECE8B718)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B718);
  }

  return result;
}

unint64_t sub_1E10A45A0()
{
  result = qword_1ECE8B728;
  if (!qword_1ECE8B728)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B728);
  }

  return result;
}

unint64_t sub_1E10A45F4()
{
  result = qword_1ECE8B730;
  if (!qword_1ECE8B730)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B730);
  }

  return result;
}

unint64_t sub_1E10A4680()
{
  result = qword_1ECE8B740;
  if (!qword_1ECE8B740)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B740);
  }

  return result;
}

unint64_t sub_1E10A4704()
{
  result = qword_1ECE8B748;
  if (!qword_1ECE8B748)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B748);
  }

  return result;
}

uint64_t sub_1E10A4758(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B750, &qword_1E10BCA78);
  v3 = *(v2 - 8);
  v94 = v2;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v97 = v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B758, &qword_1E10BCA80);
  v8 = *(v7 - 8);
  v92 = v7;
  v93 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v101 = v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B760, &qword_1E10BCA88);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B768, &qword_1E10BCA90);
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v99 = v77 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B770, &qword_1E10BCA98);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v98 = v77 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B778, &qword_1E10BCAA0);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v96 = v77 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B780, &qword_1E10BCAA8);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B788, &qword_1E10BCAB0);
  v81 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v77 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B790, &unk_1E10BCAB8);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v77 - v40;
  v42 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1E10A546C();
  v43 = v102;
  sub_1E10AEA3C();
  if (v43)
  {
    goto LABEL_11;
  }

  v79 = v35;
  v78 = v31;
  v44 = v30;
  v80 = 0;
  v46 = v98;
  v45 = v99;
  v48 = v100;
  v47 = v101;
  v102 = v37;
  v49 = sub_1E10AE80C();
  v50 = (2 * *(v49 + 16)) | 1;
  v104 = v49;
  v105 = v49 + 32;
  v106 = 0;
  v107 = v50;
  v51 = sub_1E101B6F0();
  if (v51 != 8 && v106 == v107 >> 1)
  {
    v77[1] = v51;
    if (v51 <= 3u)
    {
      if (v51 > 1u)
      {
        if (v51 == 2)
        {
          LOBYTE(v108) = 2;
          sub_1E10A59E8();
          v61 = v96;
          v62 = v80;
          sub_1E10AE76C();
          v63 = v102;
          if (v62)
          {
LABEL_31:
            (*(v63 + 8))(v41, v36);
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B820, &qword_1E10BCAF0);
          sub_1E10A5A3C();
          v64 = v85;
          sub_1E10AE7FC();
          v65 = &v109;
        }

        else
        {
          LOBYTE(v108) = 3;
          sub_1E10A58E0();
          v61 = v46;
          v69 = v80;
          sub_1E10AE76C();
          v63 = v102;
          if (v69)
          {
            goto LABEL_31;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B808, &qword_1E10BCAE8);
          sub_1E10A5934();
          v64 = v87;
          sub_1E10AE7FC();
          v65 = &v110;
        }

        (*(*(v65 - 32) + 8))(v61, v64);
      }

      else
      {
        if (!v51)
        {
          LOBYTE(v108) = 0;
          sub_1E10A5BF8();
          v52 = v79;
          v53 = v80;
          sub_1E10AE76C();
          if (!v53)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B458, &unk_1E10BB500);
            sub_1E10A5C4C();
            v54 = v78;
            sub_1E10AE7FC();
            (*(v81 + 8))(v52, v54);
            (*(v102 + 8))(v41, v36);
            swift_unknownObjectRelease();
LABEL_40:
            v37 = v108;
            __swift_destroy_boxed_opaque_existential_1(v103);
            return v37;
          }

          goto LABEL_26;
        }

        LOBYTE(v108) = 1;
        sub_1E10A5AF0();
        v67 = v80;
        sub_1E10AE76C();
        if (v67)
        {
LABEL_26:
          v63 = v102;
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B838, &unk_1E10BCAF8);
        sub_1E10A5B44();
        v68 = v83;
        sub_1E10AE7FC();
        (*(v82 + 8))(v44, v68);
        v63 = v102;
      }

      (*(v63 + 8))(v41, v36);
LABEL_39:
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    v58 = v102;
    v59 = v80;
    if (v51 > 5u)
    {
      if (v51 == 6)
      {
        LOBYTE(v108) = 6;
        sub_1E10A55C8();
        v66 = v47;
        sub_1E10AE76C();
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
          sub_1E10A561C();
          v60 = v92;
          sub_1E10AE7FC();
          v74 = *(v93 + 8);
          v75 = v66;
LABEL_37:
          v76 = v60;
          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v108) = 7;
        sub_1E10A54C0();
        v70 = v97;
        sub_1E10AE76C();
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
          sub_1E10A5514();
          v71 = v94;
          sub_1E10AE7FC();
          v74 = *(v95 + 8);
          v75 = v70;
          v76 = v71;
LABEL_38:
          v74(v75, v76);
          (*(v58 + 8))(v41, v36);
          goto LABEL_39;
        }
      }
    }

    else if (v51 == 4)
    {
      LOBYTE(v108) = 4;
      sub_1E10A57D8();
      v48 = v45;
      sub_1E10AE76C();
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
        sub_1E10A582C();
        v60 = v89;
        sub_1E10AE7FC();
        v73 = v88;
LABEL_36:
        v74 = *(v73 + 8);
        v75 = v48;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v108) = 5;
      sub_1E10A56D0();
      sub_1E10AE76C();
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
        sub_1E10A5724();
        v60 = v90;
        sub_1E10AE7FC();
        v73 = v91;
        goto LABEL_36;
      }
    }

    v72 = *(v58 + 8);
    v37 = v58 + 8;
    v72(v41, v36);
    goto LABEL_10;
  }

  v37 = sub_1E10AE62C();
  swift_allocError();
  v56 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
  *v56 = &_s13EventResponseV9ValueTypeON;
  sub_1E10AE77C();
  sub_1E10AE61C();
  (*(*(v37 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v37);
  swift_willThrow();
  (*(v102 + 8))(v41, v36);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v103);
  return v37;
}

unint64_t sub_1E10A546C()
{
  result = qword_1ECE8B798;
  if (!qword_1ECE8B798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B798);
  }

  return result;
}

unint64_t sub_1E10A54C0()
{
  result = qword_1ECE8B7A0;
  if (!qword_1ECE8B7A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7A0);
  }

  return result;
}

unint64_t sub_1E10A5514()
{
  result = qword_1ECE8B7B0;
  if (!qword_1ECE8B7B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
    sub_1E10A62A0(&qword_1EE17E5B0, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7B0);
  }

  return result;
}

unint64_t sub_1E10A55C8()
{
  result = qword_1ECE8B7B8;
  if (!qword_1ECE8B7B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7B8);
  }

  return result;
}

unint64_t sub_1E10A561C()
{
  result = qword_1ECE8B7C8;
  if (!qword_1ECE8B7C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
    sub_1E10A62A0(&qword_1EE17E690, type metadata accessor for Festival, &protocol conformance descriptor for Festival);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7C8);
  }

  return result;
}

unint64_t sub_1E10A56D0()
{
  result = qword_1ECE8B7D0;
  if (!qword_1ECE8B7D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7D0);
  }

  return result;
}

unint64_t sub_1E10A5724()
{
  result = qword_1ECE8B7E0;
  if (!qword_1ECE8B7E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
    sub_1E10A62A0(&qword_1EE17EDD8, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7E0);
  }

  return result;
}

unint64_t sub_1E10A57D8()
{
  result = qword_1ECE8B7E8;
  if (!qword_1ECE8B7E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7E8);
  }

  return result;
}

unint64_t sub_1E10A582C()
{
  result = qword_1ECE8B7F8;
  if (!qword_1ECE8B7F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
    sub_1E10A62A0(&qword_1EE17E770, type metadata accessor for Theater, &protocol conformance descriptor for Theater);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B7F8);
  }

  return result;
}

unint64_t sub_1E10A58E0()
{
  result = qword_1ECE8B800;
  if (!qword_1ECE8B800)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B800);
  }

  return result;
}

unint64_t sub_1E10A5934()
{
  result = qword_1ECE8B810;
  if (!qword_1ECE8B810)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E10A62A0(&qword_1EE17ECF8, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B810);
  }

  return result;
}

unint64_t sub_1E10A59E8()
{
  result = qword_1ECE8B818;
  if (!qword_1ECE8B818)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B818);
  }

  return result;
}

unint64_t sub_1E10A5A3C()
{
  result = qword_1ECE8B828;
  if (!qword_1ECE8B828)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B820, &qword_1E10BCAF0);
    sub_1E10A62A0(&qword_1EE17EF68, type metadata accessor for Art, &protocol conformance descriptor for Art);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B828);
  }

  return result;
}

unint64_t sub_1E10A5AF0()
{
  result = qword_1ECE8B830;
  if (!qword_1ECE8B830)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B830);
  }

  return result;
}

unint64_t sub_1E10A5B44()
{
  result = qword_1ECE8B840;
  if (!qword_1ECE8B840)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    sub_1E10A62A0(&qword_1EE17E930, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B840);
  }

  return result;
}

unint64_t sub_1E10A5BF8()
{
  result = qword_1ECE8B848;
  if (!qword_1ECE8B848)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B848);
  }

  return result;
}

unint64_t sub_1E10A5C4C()
{
  result = qword_1ECE8B850;
  if (!qword_1ECE8B850)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B458, &unk_1E10BB500);
    sub_1E10A62A0(&qword_1EE17EB58, type metadata accessor for Music, &protocol conformance descriptor for Music);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B850);
  }

  return result;
}

unint64_t sub_1E10A5D00()
{
  result = qword_1ECE8B8A0;
  if (!qword_1ECE8B8A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7A8, &qword_1E10BCAC8);
    sub_1E10A62A0(qword_1EE17E5C8, type metadata accessor for Nightlife, &protocol conformance descriptor for Nightlife);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8A0);
  }

  return result;
}

unint64_t sub_1E10A5DB4()
{
  result = qword_1ECE8B8A8;
  if (!qword_1ECE8B8A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7C0, &qword_1E10BCAD0);
    sub_1E10A62A0(qword_1EE17E6A8, type metadata accessor for Festival, &protocol conformance descriptor for Festival);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8A8);
  }

  return result;
}

unint64_t sub_1E10A5E68()
{
  result = qword_1ECE8B8B0;
  if (!qword_1ECE8B8B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7D8, &qword_1E10BCAD8);
    sub_1E10A62A0(qword_1EE17EDF0, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8B0);
  }

  return result;
}

unint64_t sub_1E10A5F1C()
{
  result = qword_1ECE8B8B8;
  if (!qword_1ECE8B8B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B7F0, &qword_1E10BCAE0);
    sub_1E10A62A0(qword_1EE17E788, type metadata accessor for Theater, &protocol conformance descriptor for Theater);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8B8);
  }

  return result;
}

unint64_t sub_1E10A5FD0()
{
  result = qword_1ECE8B8C0;
  if (!qword_1ECE8B8C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B808, &qword_1E10BCAE8);
    sub_1E10A62A0(&qword_1EE17ED10, type metadata accessor for Dance, &protocol conformance descriptor for Dance);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8C0);
  }

  return result;
}

unint64_t sub_1E10A6084()
{
  result = qword_1ECE8B8C8;
  if (!qword_1ECE8B8C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B820, &qword_1E10BCAF0);
    sub_1E10A62A0(qword_1EE17EF80, type metadata accessor for Art, &protocol conformance descriptor for Art);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8C8);
  }

  return result;
}

unint64_t sub_1E10A6138()
{
  result = qword_1ECE8B8D0;
  if (!qword_1ECE8B8D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B838, &unk_1E10BCAF8);
    sub_1E10A62A0(&qword_1EE17E948, type metadata accessor for Sport, &protocol conformance descriptor for Sport);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8D0);
  }

  return result;
}

unint64_t sub_1E10A61EC()
{
  result = qword_1ECE8B8D8;
  if (!qword_1ECE8B8D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B458, &unk_1E10BB500);
    sub_1E10A62A0(&qword_1EE17EB70, type metadata accessor for Music, &protocol conformance descriptor for Music);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8D8);
  }

  return result;
}

uint64_t sub_1E10A62A0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E10A62E8()
{
  result = qword_1ECE8B8F0;
  if (!qword_1ECE8B8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8F0);
  }

  return result;
}

unint64_t sub_1E10A633C()
{
  result = qword_1ECE8B8F8;
  if (!qword_1ECE8B8F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B8F8);
  }

  return result;
}

unint64_t sub_1E10A6390()
{
  result = qword_1ECE8B928;
  if (!qword_1ECE8B928)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B928);
  }

  return result;
}

unint64_t sub_1E10A63E4()
{
  result = qword_1ECE8B930;
  if (!qword_1ECE8B930)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B930);
  }

  return result;
}

unint64_t sub_1E10A6438()
{
  result = qword_1ECE8B938;
  if (!qword_1ECE8B938)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B938);
  }

  return result;
}

uint64_t sub_1E10A648C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B958, &qword_1E10BCBA0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v4, v5);
  v7 = &v10 - v6;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10A6680();
  sub_1E10AEA3C();
  v11 = 0;
  sub_1E0FEDD04();
  sub_1E10AE7FC();
  v9 = v12;
  v11 = 1;
  sub_1E10A66D4();
  sub_1E10AE7FC();
  (*(v3 + 8))(v7, v2);
  __swift_destroy_boxed_opaque_existential_1(a1);
  return v9;
}

unint64_t sub_1E10A6680()
{
  result = qword_1EE17FD58[0];
  if (!qword_1EE17FD58[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17FD58);
  }

  return result;
}

unint64_t sub_1E10A66D4()
{
  result = qword_1EE17FC68;
  if (!qword_1EE17FC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC68);
  }

  return result;
}

unint64_t sub_1E10A6728()
{
  result = qword_1ECE8B968;
  if (!qword_1ECE8B968)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8B968);
  }

  return result;
}

uint64_t sub_1E10A677C(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B970, &qword_1E10BCBB0);
  v3 = *(v2 - 8);
  v94 = v2;
  v95 = v3;
  MEMORY[0x1EEE9AC00](v4, v5);
  v97 = v77 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B978, &qword_1E10BCBB8);
  v8 = *(v7 - 8);
  v92 = v7;
  v93 = v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v101 = v77 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B980, &qword_1E10BCBC0);
  v13 = *(v12 - 8);
  v90 = v12;
  v91 = v13;
  MEMORY[0x1EEE9AC00](v14, v15);
  v100 = v77 - v16;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B988, &qword_1E10BCBC8);
  v88 = *(v17 - 8);
  v89 = v17;
  MEMORY[0x1EEE9AC00](v18, v19);
  v99 = v77 - v20;
  v87 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B990, &qword_1E10BCBD0);
  v86 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v21, v22);
  v98 = v77 - v23;
  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B998, &qword_1E10BCBD8);
  v84 = *(v85 - 8);
  MEMORY[0x1EEE9AC00](v24, v25);
  v96 = v77 - v26;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9A0, &qword_1E10BCBE0);
  v82 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v27, v28);
  v30 = v77 - v29;
  v31 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9A8, &qword_1E10BCBE8);
  v81 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v32, v33);
  v35 = v77 - v34;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9B0, &qword_1E10BCBF0);
  v37 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v38, v39);
  v41 = v77 - v40;
  v42 = a1[3];
  v103 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v42);
  sub_1E10A7490();
  v43 = v102;
  sub_1E10AEA3C();
  if (v43)
  {
    goto LABEL_11;
  }

  v79 = v35;
  v78 = v31;
  v44 = v30;
  v80 = 0;
  v46 = v98;
  v45 = v99;
  v48 = v100;
  v47 = v101;
  v102 = v37;
  v49 = sub_1E10AE80C();
  v50 = (2 * *(v49 + 16)) | 1;
  v104 = v49;
  v105 = v49 + 32;
  v106 = 0;
  v107 = v50;
  v51 = sub_1E101B6F0();
  if (v51 != 8 && v106 == v107 >> 1)
  {
    v77[1] = v51;
    if (v51 <= 3u)
    {
      if (v51 > 1u)
      {
        if (v51 == 2)
        {
          LOBYTE(v108) = 2;
          sub_1E10A79F8();
          v61 = v96;
          v62 = v80;
          sub_1E10AE76C();
          v63 = v102;
          if (v62)
          {
LABEL_31:
            (*(v63 + 8))(v41, v36);
            goto LABEL_10;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
          sub_1E10A7A4C();
          v64 = v85;
          sub_1E10AE7FC();
          v65 = &v109;
        }

        else
        {
          LOBYTE(v108) = 3;
          sub_1E10A78F4();
          v61 = v46;
          v69 = v80;
          sub_1E10AE76C();
          v63 = v102;
          if (v69)
          {
            goto LABEL_31;
          }

          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
          sub_1E10A7948();
          v64 = v87;
          sub_1E10AE7FC();
          v65 = &v110;
        }

        (*(*(v65 - 32) + 8))(v61, v64);
      }

      else
      {
        if (!v51)
        {
          LOBYTE(v108) = 0;
          sub_1E10A7C00();
          v52 = v79;
          v53 = v80;
          sub_1E10AE76C();
          if (!v53)
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
            sub_1E10A7C54();
            v54 = v78;
            sub_1E10AE7FC();
            (*(v81 + 8))(v52, v54);
            (*(v102 + 8))(v41, v36);
            swift_unknownObjectRelease();
LABEL_40:
            v37 = v108;
            __swift_destroy_boxed_opaque_existential_1(v103);
            return v37;
          }

          goto LABEL_26;
        }

        LOBYTE(v108) = 1;
        sub_1E10A7AFC();
        v67 = v80;
        sub_1E10AE76C();
        if (v67)
        {
LABEL_26:
          v63 = v102;
          goto LABEL_31;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
        sub_1E10A7B50();
        v68 = v83;
        sub_1E10AE7FC();
        (*(v82 + 8))(v44, v68);
        v63 = v102;
      }

      (*(v63 + 8))(v41, v36);
LABEL_39:
      swift_unknownObjectRelease();
      goto LABEL_40;
    }

    v58 = v102;
    v59 = v80;
    if (v51 > 5u)
    {
      if (v51 == 6)
      {
        LOBYTE(v108) = 6;
        sub_1E10A75E8();
        v66 = v47;
        sub_1E10AE76C();
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
          sub_1E10A763C();
          v60 = v92;
          sub_1E10AE7FC();
          v74 = *(v93 + 8);
          v75 = v66;
LABEL_37:
          v76 = v60;
          goto LABEL_38;
        }
      }

      else
      {
        LOBYTE(v108) = 7;
        sub_1E10A74E4();
        v70 = v97;
        sub_1E10AE76C();
        if (!v59)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
          sub_1E10A7538();
          v71 = v94;
          sub_1E10AE7FC();
          v74 = *(v95 + 8);
          v75 = v70;
          v76 = v71;
LABEL_38:
          v74(v75, v76);
          (*(v58 + 8))(v41, v36);
          goto LABEL_39;
        }
      }
    }

    else if (v51 == 4)
    {
      LOBYTE(v108) = 4;
      sub_1E10A77F0();
      v48 = v45;
      sub_1E10AE76C();
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
        sub_1E10A7844();
        v60 = v89;
        sub_1E10AE7FC();
        v73 = v88;
LABEL_36:
        v74 = *(v73 + 8);
        v75 = v48;
        goto LABEL_37;
      }
    }

    else
    {
      LOBYTE(v108) = 5;
      sub_1E10A76EC();
      sub_1E10AE76C();
      if (!v59)
      {
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
        sub_1E10A7740();
        v60 = v90;
        sub_1E10AE7FC();
        v73 = v91;
        goto LABEL_36;
      }
    }

    v72 = *(v58 + 8);
    v37 = v58 + 8;
    v72(v41, v36);
    goto LABEL_10;
  }

  v37 = sub_1E10AE62C();
  swift_allocError();
  v56 = v55;
  __swift_instantiateConcreteTypeFromMangledNameV2(qword_1ECE899E0, &qword_1E10B32F0);
  *v56 = &_s20PartialEventResponseV9ValueTypeON;
  sub_1E10AE77C();
  sub_1E10AE61C();
  (*(*(v37 - 8) + 104))(v56, *MEMORY[0x1E69E6AF8], v37);
  swift_willThrow();
  (*(v102 + 8))(v41, v36);
LABEL_10:
  swift_unknownObjectRelease();
LABEL_11:
  __swift_destroy_boxed_opaque_existential_1(v103);
  return v37;
}

unint64_t sub_1E10A7490()
{
  result = qword_1EE17FD40;
  if (!qword_1EE17FD40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD40);
  }

  return result;
}

unint64_t sub_1E10A74E4()
{
  result = qword_1EE17FC80;
  if (!qword_1EE17FC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC80);
  }

  return result;
}

unint64_t sub_1E10A7538()
{
  result = qword_1EE17E460;
  if (!qword_1EE17E460)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
    sub_1E0FEDEAC(&qword_1EE17F9F8, &qword_1ECE8A938, &qword_1E10BCC00, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E460);
  }

  return result;
}

unint64_t sub_1E10A75E8()
{
  result = qword_1EE17FC98;
  if (!qword_1EE17FC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC98);
  }

  return result;
}

unint64_t sub_1E10A763C()
{
  result = qword_1EE17E470;
  if (!qword_1EE17E470)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
    sub_1E0FEDEAC(&qword_1EE17FA00, &qword_1ECE8A948, &qword_1E10BCC10, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E470);
  }

  return result;
}

unint64_t sub_1E10A76EC()
{
  result = qword_1EE17FD10;
  if (!qword_1EE17FD10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD10);
  }

  return result;
}

unint64_t sub_1E10A7740()
{
  result = qword_1EE17E4C0;
  if (!qword_1EE17E4C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
    sub_1E0FEDEAC(&qword_1EE17FA28, &qword_1ECE8A958, &qword_1E10BCC20, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E4C0);
  }

  return result;
}

unint64_t sub_1E10A77F0()
{
  result = qword_1EE17FCB0;
  if (!qword_1EE17FCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCB0);
  }

  return result;
}

unint64_t sub_1E10A7844()
{
  result = qword_1EE17E480;
  if (!qword_1EE17E480)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
    sub_1E0FEDEAC(&qword_1EE17FA08, &qword_1ECE8A988, &qword_1E10BCC30, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E480);
  }

  return result;
}

unint64_t sub_1E10A78F4()
{
  result = qword_1EE17FCF8;
  if (!qword_1EE17FCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCF8);
  }

  return result;
}

unint64_t sub_1E10A7948()
{
  result = qword_1EE17E4B0;
  if (!qword_1EE17E4B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
    sub_1E0FEDEAC(&qword_1EE17FA20, &qword_1ECE8A978, &qword_1E10BCC40, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E4B0);
  }

  return result;
}

unint64_t sub_1E10A79F8()
{
  result = qword_1EE17FD28;
  if (!qword_1EE17FD28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD28);
  }

  return result;
}

unint64_t sub_1E10A7A4C()
{
  result = qword_1EE17E4D0;
  if (!qword_1EE17E4D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
    sub_1E0FEDEAC(qword_1EE17FA30, &qword_1ECE8A968, &qword_1E10BCC50, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E4D0);
  }

  return result;
}

unint64_t sub_1E10A7AFC()
{
  result = qword_1EE17FCC8;
  if (!qword_1EE17FCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCC8);
  }

  return result;
}

unint64_t sub_1E10A7B50()
{
  result = qword_1EE17E490;
  if (!qword_1EE17E490)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
    sub_1E0FEDEAC(&qword_1EE17FA10, &qword_1ECE8A998, &qword_1E10BCC60, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E490);
  }

  return result;
}

unint64_t sub_1E10A7C00()
{
  result = qword_1EE17FCE0;
  if (!qword_1EE17FCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCE0);
  }

  return result;
}

unint64_t sub_1E10A7C54()
{
  result = qword_1EE17E4A0;
  if (!qword_1EE17E4A0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
    sub_1E0FEDEAC(&qword_1EE17FA18, &qword_1ECE8A9A8, &qword_1E10BCC70, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17E4A0);
  }

  return result;
}

unint64_t sub_1E10A7D04()
{
  result = qword_1ECE8BA40;
  if (!qword_1ECE8BA40)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9B8, &qword_1E10BCBF8);
    sub_1E0FEDEAC(&qword_1ECE8BA48, &qword_1ECE8A938, &qword_1E10BCC00, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA40);
  }

  return result;
}

unint64_t sub_1E10A7DB4()
{
  result = qword_1ECE8BA50;
  if (!qword_1ECE8BA50)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9C0, &qword_1E10BCC08);
    sub_1E0FEDEAC(&qword_1ECE8BA58, &qword_1ECE8A948, &qword_1E10BCC10, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA50);
  }

  return result;
}

unint64_t sub_1E10A7E64()
{
  result = qword_1ECE8BA60;
  if (!qword_1ECE8BA60)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9C8, &qword_1E10BCC18);
    sub_1E0FEDEAC(&qword_1ECE8BA68, &qword_1ECE8A958, &qword_1E10BCC20, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA60);
  }

  return result;
}

unint64_t sub_1E10A7F14()
{
  result = qword_1ECE8BA70;
  if (!qword_1ECE8BA70)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9D0, &qword_1E10BCC28);
    sub_1E0FEDEAC(&qword_1ECE8BA78, &qword_1ECE8A988, &qword_1E10BCC30, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA70);
  }

  return result;
}

unint64_t sub_1E10A7FC4()
{
  result = qword_1ECE8BA80;
  if (!qword_1ECE8BA80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9D8, &qword_1E10BCC38);
    sub_1E0FEDEAC(&qword_1ECE8BA88, &qword_1ECE8A978, &qword_1E10BCC40, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA80);
  }

  return result;
}

unint64_t sub_1E10A8074()
{
  result = qword_1ECE8BA90;
  if (!qword_1ECE8BA90)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9E0, &qword_1E10BCC48);
    sub_1E0FEDEAC(&qword_1ECE8BA98, &qword_1ECE8A968, &qword_1E10BCC50, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BA90);
  }

  return result;
}

unint64_t sub_1E10A8124()
{
  result = qword_1ECE8BAA0;
  if (!qword_1ECE8BAA0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9E8, &qword_1E10BCC58);
    sub_1E0FEDEAC(&qword_1ECE8BAA8, &qword_1ECE8A998, &qword_1E10BCC60, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BAA0);
  }

  return result;
}

unint64_t sub_1E10A81D4()
{
  result = qword_1ECE8BAB0;
  if (!qword_1ECE8BAB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8B9F0, &qword_1E10BCC68);
    sub_1E0FEDEAC(&qword_1ECE8BAB8, &qword_1ECE8A9A8, &qword_1E10BCC70, &protocol conformance descriptor for PartialEvent<A>);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BAB0);
  }

  return result;
}

uint64_t sub_1E10A86B0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10A88C8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1E10A8910(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t sub_1E10A8988(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xF9 && *(a1 + 9))
  {
    return (*a1 + 249);
  }

  v3 = *(a1 + 8);
  if (v3 <= 7)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E10A89D0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF8)
  {
    *(result + 8) = 0;
    *result = a2 - 249;
    if (a3 >= 0xF9)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xF9)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

__n128 __swift_memcpy112_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = result;
  *(a1 + 64) = v5;
  return result;
}

uint64_t sub_1E10A8A48(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 112))
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

uint64_t sub_1E10A8A90(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 112) = 1;
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

    *(result + 112) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy113_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 112);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E10A8B28(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 113))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 112);
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

uint64_t sub_1E10A8B70(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 104) = 0;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 112) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 113) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 113) = 0;
    }

    if (a2)
    {
      *(result + 112) = -a2;
    }
  }

  return result;
}

unint64_t sub_1E10A8BF4()
{
  result = qword_1ECE8BB28;
  if (!qword_1ECE8BB28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB28);
  }

  return result;
}

unint64_t sub_1E10A8C4C()
{
  result = qword_1ECE8BB30;
  if (!qword_1ECE8BB30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB30);
  }

  return result;
}

unint64_t sub_1E10A8CA4()
{
  result = qword_1ECE8BB38;
  if (!qword_1ECE8BB38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB38);
  }

  return result;
}

unint64_t sub_1E10A8CFC()
{
  result = qword_1ECE8BB40;
  if (!qword_1ECE8BB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB40);
  }

  return result;
}

unint64_t sub_1E10A8D54()
{
  result = qword_1ECE8BB48;
  if (!qword_1ECE8BB48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB48);
  }

  return result;
}

unint64_t sub_1E10A8DAC()
{
  result = qword_1ECE8BB50;
  if (!qword_1ECE8BB50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB50);
  }

  return result;
}

unint64_t sub_1E10A8E04()
{
  result = qword_1ECE8BB58;
  if (!qword_1ECE8BB58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB58);
  }

  return result;
}

unint64_t sub_1E10A8E5C()
{
  result = qword_1ECE8BB60;
  if (!qword_1ECE8BB60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB60);
  }

  return result;
}

unint64_t sub_1E10A8EB4()
{
  result = qword_1ECE8BB68;
  if (!qword_1ECE8BB68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB68);
  }

  return result;
}

unint64_t sub_1E10A8F0C()
{
  result = qword_1ECE8BB70;
  if (!qword_1ECE8BB70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB70);
  }

  return result;
}

unint64_t sub_1E10A8F64()
{
  result = qword_1ECE8BB78;
  if (!qword_1ECE8BB78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB78);
  }

  return result;
}

unint64_t sub_1E10A8FBC()
{
  result = qword_1ECE8BB80;
  if (!qword_1ECE8BB80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB80);
  }

  return result;
}

unint64_t sub_1E10A9014()
{
  result = qword_1ECE8BB88;
  if (!qword_1ECE8BB88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB88);
  }

  return result;
}

unint64_t sub_1E10A906C()
{
  result = qword_1ECE8BB90;
  if (!qword_1ECE8BB90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB90);
  }

  return result;
}

unint64_t sub_1E10A90C4()
{
  result = qword_1ECE8BB98;
  if (!qword_1ECE8BB98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BB98);
  }

  return result;
}

unint64_t sub_1E10A911C()
{
  result = qword_1ECE8BBA0;
  if (!qword_1ECE8BBA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBA0);
  }

  return result;
}

unint64_t sub_1E10A9174()
{
  result = qword_1ECE8BBA8;
  if (!qword_1ECE8BBA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBA8);
  }

  return result;
}

unint64_t sub_1E10A91CC()
{
  result = qword_1ECE8BBB0;
  if (!qword_1ECE8BBB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBB0);
  }

  return result;
}

unint64_t sub_1E10A9224()
{
  result = qword_1ECE8BBB8;
  if (!qword_1ECE8BBB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBB8);
  }

  return result;
}

unint64_t sub_1E10A927C()
{
  result = qword_1ECE8BBC0;
  if (!qword_1ECE8BBC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBC0);
  }

  return result;
}

unint64_t sub_1E10A92D4()
{
  result = qword_1ECE8BBC8;
  if (!qword_1ECE8BBC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBC8);
  }

  return result;
}

unint64_t sub_1E10A932C()
{
  result = qword_1ECE8BBD0;
  if (!qword_1ECE8BBD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBD0);
  }

  return result;
}

unint64_t sub_1E10A9384()
{
  result = qword_1ECE8BBD8;
  if (!qword_1ECE8BBD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBD8);
  }

  return result;
}

unint64_t sub_1E10A93DC()
{
  result = qword_1ECE8BBE0;
  if (!qword_1ECE8BBE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBE0);
  }

  return result;
}

unint64_t sub_1E10A9434()
{
  result = qword_1ECE8BBE8;
  if (!qword_1ECE8BBE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBE8);
  }

  return result;
}

unint64_t sub_1E10A948C()
{
  result = qword_1ECE8BBF0;
  if (!qword_1ECE8BBF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBF0);
  }

  return result;
}

unint64_t sub_1E10A94E4()
{
  result = qword_1ECE8BBF8;
  if (!qword_1ECE8BBF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BBF8);
  }

  return result;
}

unint64_t sub_1E10A953C()
{
  result = qword_1EE17FCD0;
  if (!qword_1EE17FCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCD0);
  }

  return result;
}

unint64_t sub_1E10A9594()
{
  result = qword_1EE17FCD8;
  if (!qword_1EE17FCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCD8);
  }

  return result;
}

unint64_t sub_1E10A95EC()
{
  result = qword_1EE17FCB8;
  if (!qword_1EE17FCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCB8);
  }

  return result;
}

unint64_t sub_1E10A9644()
{
  result = qword_1EE17FCC0;
  if (!qword_1EE17FCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCC0);
  }

  return result;
}

unint64_t sub_1E10A969C()
{
  result = qword_1EE17FD18;
  if (!qword_1EE17FD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD18);
  }

  return result;
}

unint64_t sub_1E10A96F4()
{
  result = qword_1EE17FD20;
  if (!qword_1EE17FD20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD20);
  }

  return result;
}

unint64_t sub_1E10A974C()
{
  result = qword_1EE17FCE8;
  if (!qword_1EE17FCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCE8);
  }

  return result;
}

unint64_t sub_1E10A97A4()
{
  result = qword_1EE17FCF0;
  if (!qword_1EE17FCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCF0);
  }

  return result;
}

unint64_t sub_1E10A97FC()
{
  result = qword_1EE17FCA0;
  if (!qword_1EE17FCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCA0);
  }

  return result;
}

unint64_t sub_1E10A9854()
{
  result = qword_1EE17FCA8;
  if (!qword_1EE17FCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FCA8);
  }

  return result;
}

unint64_t sub_1E10A98AC()
{
  result = qword_1EE17FD00;
  if (!qword_1EE17FD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD00);
  }

  return result;
}

unint64_t sub_1E10A9904()
{
  result = qword_1EE17FD08;
  if (!qword_1EE17FD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD08);
  }

  return result;
}

unint64_t sub_1E10A995C()
{
  result = qword_1EE17FC88;
  if (!qword_1EE17FC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC88);
  }

  return result;
}

unint64_t sub_1E10A99B4()
{
  result = qword_1EE17FC90;
  if (!qword_1EE17FC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC90);
  }

  return result;
}

unint64_t sub_1E10A9A0C()
{
  result = qword_1EE17FC70;
  if (!qword_1EE17FC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC70);
  }

  return result;
}

unint64_t sub_1E10A9A64()
{
  result = qword_1EE17FC78;
  if (!qword_1EE17FC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FC78);
  }

  return result;
}

unint64_t sub_1E10A9ABC()
{
  result = qword_1EE17FD30;
  if (!qword_1EE17FD30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD30);
  }

  return result;
}

unint64_t sub_1E10A9B14()
{
  result = qword_1EE17FD38;
  if (!qword_1EE17FD38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD38);
  }

  return result;
}

unint64_t sub_1E10A9B6C()
{
  result = qword_1EE17FD48;
  if (!qword_1EE17FD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD48);
  }

  return result;
}

unint64_t sub_1E10A9BC4()
{
  result = qword_1EE17FD50;
  if (!qword_1EE17FD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FD50);
  }

  return result;
}

unint64_t sub_1E10A9C1C()
{
  result = qword_1ECE8BC00;
  if (!qword_1ECE8BC00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC00);
  }

  return result;
}

unint64_t sub_1E10A9C74()
{
  result = qword_1ECE8BC08;
  if (!qword_1ECE8BC08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC08);
  }

  return result;
}

unint64_t sub_1E10A9CCC()
{
  result = qword_1ECE8BC10;
  if (!qword_1ECE8BC10)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC10);
  }

  return result;
}

unint64_t sub_1E10A9D24()
{
  result = qword_1ECE8BC18;
  if (!qword_1ECE8BC18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC18);
  }

  return result;
}

unint64_t sub_1E10A9D7C()
{
  result = qword_1ECE8BC20;
  if (!qword_1ECE8BC20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC20);
  }

  return result;
}

unint64_t sub_1E10A9DD4()
{
  result = qword_1ECE8BC28;
  if (!qword_1ECE8BC28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC28);
  }

  return result;
}

unint64_t sub_1E10A9E2C()
{
  result = qword_1ECE8BC30;
  if (!qword_1ECE8BC30)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC30);
  }

  return result;
}

unint64_t sub_1E10A9E84()
{
  result = qword_1ECE8BC38;
  if (!qword_1ECE8BC38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC38);
  }

  return result;
}

unint64_t sub_1E10A9EDC()
{
  result = qword_1ECE8BC40;
  if (!qword_1ECE8BC40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC40);
  }

  return result;
}

unint64_t sub_1E10A9F34()
{
  result = qword_1ECE8BC48;
  if (!qword_1ECE8BC48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC48);
  }

  return result;
}

unint64_t sub_1E10A9F8C()
{
  result = qword_1ECE8BC50;
  if (!qword_1ECE8BC50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC50);
  }

  return result;
}

unint64_t sub_1E10A9FE4()
{
  result = qword_1ECE8BC58;
  if (!qword_1ECE8BC58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC58);
  }

  return result;
}

unint64_t sub_1E10AA03C()
{
  result = qword_1ECE8BC60;
  if (!qword_1ECE8BC60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC60);
  }

  return result;
}

unint64_t sub_1E10AA094()
{
  result = qword_1ECE8BC68;
  if (!qword_1ECE8BC68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC68);
  }

  return result;
}

unint64_t sub_1E10AA0EC()
{
  result = qword_1ECE8BC70;
  if (!qword_1ECE8BC70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC70);
  }

  return result;
}

unint64_t sub_1E10AA144()
{
  result = qword_1ECE8BC78;
  if (!qword_1ECE8BC78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC78);
  }

  return result;
}

unint64_t sub_1E10AA19C()
{
  result = qword_1ECE8BC80;
  if (!qword_1ECE8BC80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC80);
  }

  return result;
}

unint64_t sub_1E10AA1F4()
{
  result = qword_1ECE8BC88;
  if (!qword_1ECE8BC88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC88);
  }

  return result;
}

unint64_t sub_1E10AA24C()
{
  result = qword_1ECE8BC90;
  if (!qword_1ECE8BC90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC90);
  }

  return result;
}

unint64_t sub_1E10AA2A4()
{
  result = qword_1ECE8BC98;
  if (!qword_1ECE8BC98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BC98);
  }

  return result;
}

unint64_t sub_1E10AA2FC()
{
  result = qword_1ECE8BCA0;
  if (!qword_1ECE8BCA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCA0);
  }

  return result;
}

unint64_t sub_1E10AA354()
{
  result = qword_1ECE8BCA8;
  if (!qword_1ECE8BCA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCA8);
  }

  return result;
}

unint64_t sub_1E10AA3AC()
{
  result = qword_1ECE8BCB0;
  if (!qword_1ECE8BCB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCB0);
  }

  return result;
}

unint64_t sub_1E10AA404()
{
  result = qword_1ECE8BCB8;
  if (!qword_1ECE8BCB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCB8);
  }

  return result;
}

unint64_t sub_1E10AA45C()
{
  result = qword_1ECE8BCC0;
  if (!qword_1ECE8BCC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCC0);
  }

  return result;
}

unint64_t sub_1E10AA4B4()
{
  result = qword_1ECE8BCC8;
  if (!qword_1ECE8BCC8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCC8);
  }

  return result;
}

unint64_t sub_1E10AA50C()
{
  result = qword_1ECE8BCD0;
  if (!qword_1ECE8BCD0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCD0);
  }

  return result;
}

unint64_t sub_1E10AA564()
{
  result = qword_1ECE8BCD8;
  if (!qword_1ECE8BCD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCD8);
  }

  return result;
}

unint64_t sub_1E10AA5BC()
{
  result = qword_1ECE8BCE0;
  if (!qword_1ECE8BCE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCE0);
  }

  return result;
}

unint64_t sub_1E10AA614()
{
  result = qword_1ECE8BCE8;
  if (!qword_1ECE8BCE8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCE8);
  }

  return result;
}

unint64_t sub_1E10AA66C()
{
  result = qword_1ECE8BCF0;
  if (!qword_1ECE8BCF0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCF0);
  }

  return result;
}

unint64_t sub_1E10AA6C4()
{
  result = qword_1ECE8BCF8;
  if (!qword_1ECE8BCF8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BCF8);
  }

  return result;
}

unint64_t sub_1E10AA71C()
{
  result = qword_1ECE8BD00;
  if (!qword_1ECE8BD00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD00);
  }

  return result;
}

unint64_t sub_1E10AA774()
{
  result = qword_1ECE8BD08;
  if (!qword_1ECE8BD08)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD08);
  }

  return result;
}

uint64_t Apple.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t Apple.category.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t Apple.name.getter()
{
  v1 = *(v0 + 48);

  return v1;
}

uint64_t type metadata accessor for Apple(uint64_t a1)
{
  result = qword_1EE17EDB0;
  if (!qword_1EE17EDB0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t Apple.venue.getter@<X0>(_OWORD *a1@<X8>)
{
  v3 = (v1 + *(type metadata accessor for Apple(0) + 32));
  v4 = v3[7];
  v5 = v3[5];
  v25 = v3[6];
  v26 = v4;
  v6 = v3[7];
  v7 = v3[9];
  v27 = v3[8];
  v8 = v27;
  v28 = v7;
  v9 = v3[3];
  v11 = v3[1];
  v21 = v3[2];
  v10 = v21;
  v22 = v9;
  v12 = v3[3];
  v13 = v3[5];
  v23 = v3[4];
  v14 = v23;
  v24 = v13;
  v15 = v3[1];
  v20[0] = *v3;
  v16 = v20[0];
  v20[1] = v15;
  a1[6] = v25;
  a1[7] = v6;
  v17 = v3[9];
  a1[8] = v8;
  a1[9] = v17;
  a1[2] = v10;
  a1[3] = v12;
  a1[4] = v14;
  a1[5] = v5;
  *a1 = v16;
  a1[1] = v11;
  return sub_1E0FE6720(v20, &v19);
}

uint64_t sub_1E10AA9E4()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 1701667182;
  v4 = 1701669236;
  if (v1 != 3)
  {
    v4 = 0x65756E6576;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x79726F6765746163;
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

uint64_t sub_1E10AAA64@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1E10AC1F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1E10AAA8C(uint64_t a1)
{
  v2 = sub_1E10ABC0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1E10AAAC8(uint64_t a1)
{
  v2 = sub_1E10ABC0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Apple.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BD10, &qword_1E10BEBB8);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v26 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10ABC0C();
  sub_1E10AEA5C();
  v11 = *(v3 + 8);
  *&v37 = *v3;
  *(&v37 + 1) = v11;
  LOBYTE(v27) = 0;
  sub_1E0FED9C8();
  sub_1E10AE8AC();
  if (!v2)
  {
    v12 = *(v3 + 24);
    *&v37 = *(v3 + 16);
    *(&v37 + 1) = v12;
    v38 = *(v3 + 32);
    LOBYTE(v27) = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BD20, &qword_1E10BEBC0);
    sub_1E10ABC60(&qword_1ECE8BD28, &protocol conformance descriptor for EventCategory<A>);
    sub_1E10AE8AC();
    LOBYTE(v37) = 2;
    sub_1E10AE86C();
    v13 = type metadata accessor for Apple(0);
    v48 = 3;
    type metadata accessor for Time(0);
    sub_1E10ABF34(&qword_1ECE88CB0, type metadata accessor for Time, &protocol conformance descriptor for Time);
    sub_1E10AE8AC();
    v14 = (v3 + *(v13 + 32));
    v15 = v14[7];
    v16 = v14[5];
    v43 = v14[6];
    v44 = v15;
    v17 = v14[7];
    v18 = v14[9];
    v45 = v14[8];
    v46 = v18;
    v19 = v14[3];
    v20 = v14[1];
    v39 = v14[2];
    v40 = v19;
    v21 = v14[3];
    v22 = v14[5];
    v41 = v14[4];
    v42 = v22;
    v23 = v14[1];
    v37 = *v14;
    v38 = v23;
    v33 = v43;
    v34 = v17;
    v24 = v14[9];
    v35 = v45;
    v36 = v24;
    v29 = v39;
    v30 = v21;
    v31 = v41;
    v32 = v16;
    v27 = v37;
    v28 = v20;
    v47 = 4;
    sub_1E0FE6720(&v37, v26);
    sub_1E0FEDA64();
    sub_1E10AE8AC();
    v26[6] = v33;
    v26[7] = v34;
    v26[8] = v35;
    v26[9] = v36;
    v26[2] = v29;
    v26[3] = v30;
    v26[4] = v31;
    v26[5] = v32;
    v26[0] = v27;
    v26[1] = v28;
    sub_1E0FEDAB8(v26);
  }

  return (*(v6 + 8))(v10, v5);
}

uint64_t Apple.hash(into:)(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for Apple(0);
  sub_1E10ADACC();
  sub_1E10ABF34(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E10ABF34(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  return Venue.hash(into:)(a1);
}

uint64_t Apple.hashValue.getter()
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  type metadata accessor for Apple(0);
  sub_1E10ADACC();
  sub_1E10ABF34(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E10ABF34(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  Venue.hash(into:)(v1);
  return sub_1E10AEA0C();
}

uint64_t Apple.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v35 = a2;
  v36 = type metadata accessor for Time(0);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = &v33 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BD30, &qword_1E10BEBC8);
  v37 = *(v38 - 8);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = &v33 - v9;
  v11 = type metadata accessor for Apple(0);
  MEMORY[0x1EEE9AC00](v12, v13);
  v15 = &v33 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1E10ABC0C();
  v16 = v10;
  v17 = v39;
  sub_1E10AEA3C();
  if (v17)
  {
    return __swift_destroy_boxed_opaque_existential_1(a1);
  }

  v34 = v6;
  v39 = a1;
  v18 = v37;
  v19 = v15;
  v50 = 0;
  sub_1E0FEDD04();
  v20 = v38;
  sub_1E10AE7FC();
  v21 = *(&v40 + 1);
  *v19 = v40;
  *(v19 + 8) = v21;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BD20, &qword_1E10BEBC0);
  v50 = 1;
  sub_1E10ABC60(&qword_1ECE8BD38, &protocol conformance descriptor for EventCategory<A>);
  sub_1E10AE7FC();
  v22 = v18;
  v23 = *(&v40 + 1);
  *(v19 + 16) = v40;
  *(v19 + 24) = v23;
  *(v19 + 32) = v41;
  LOBYTE(v40) = 2;
  v33 = 0;
  *(v19 + 48) = sub_1E10AE7BC();
  *(v19 + 56) = v24;
  LOBYTE(v40) = 3;
  sub_1E10ABF34(&qword_1EE17EE88, type metadata accessor for Time, &protocol conformance descriptor for Time);
  v25 = v34;
  sub_1E10AE7FC();
  sub_1E10807C8(v25, v19 + *(v11 + 28));
  v50 = 4;
  sub_1E0FEDDC0();
  sub_1E10AE7FC();
  (*(v22 + 8))(v16, v20);
  v27 = (v19 + *(v11 + 32));
  v28 = v47;
  v27[6] = v46;
  v27[7] = v28;
  v29 = v49;
  v27[8] = v48;
  v27[9] = v29;
  v30 = v43;
  v27[2] = v42;
  v27[3] = v30;
  v31 = v45;
  v27[4] = v44;
  v27[5] = v31;
  v32 = v41;
  *v27 = v40;
  v27[1] = v32;
  sub_1E10ABCB0(v19, v35, type metadata accessor for Apple);
  __swift_destroy_boxed_opaque_existential_1(v39);
  return sub_1E10ABD18(v19, type metadata accessor for Apple);
}

uint64_t sub_1E10AB6D4(uint64_t a1)
{
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADACC();
  sub_1E10ABF34(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E10ABF34(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  return Venue.hash(into:)(a1);
}

uint64_t sub_1E10AB828(uint64_t a1)
{
  sub_1E10AE9CC();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  _s12ShazamEvents13EventCategoryV4hash4intoys6HasherVz_tF_0();
  sub_1E10ADACC();
  sub_1E10ABF34(&qword_1EE17FF80, MEMORY[0x1E6968130], MEMORY[0x1E6968140]);
  sub_1E10ADFFC();
  type metadata accessor for Time(0);
  sub_1E10ADE6C();
  sub_1E10ABF34(&unk_1EE17FF40, MEMORY[0x1E6969BC0], MEMORY[0x1E6969BD0]);
  sub_1E10ADFFC();
  Venue.hash(into:)(v2);
  return sub_1E10AEA0C();
}

BOOL _s12ShazamEvents5AppleV2eeoiySbAC_ACtFZ_0(uint64_t *a1, void *a2)
{
  v4 = *a1 == *a2 && a1[1] == a2[1];
  if (v4 || (sub_1E10AE8FC()) && (a1[2] == a2[2] ? (v5 = a1[3] == a2[3]) : (v5 = 0), (v5 || (sub_1E10AE8FC()) && (a1[6] == a2[6] && a1[7] == a2[7] || (sub_1E10AE8FC())) && (v6 = type metadata accessor for Apple(0), v7 = *(v6 + 28), v8 = a1 + v7, v9 = a2 + v7, (sub_1E10ADA7C()) && (v10 = type metadata accessor for Time(0), (MEMORY[0x1E12ED5E0](&v8[*(v10 + 20)], &v9[*(v10 + 20)])))
  {
    v11 = (a1 + *(v6 + 32));
    v12 = v11[5];
    v13 = v11[7];
    v60 = v11[6];
    v61 = v13;
    v14 = v11[9];
    v15 = v11[7];
    v62 = v11[8];
    v63 = v14;
    v16 = v11[3];
    v17 = v11[1];
    v56 = v11[2];
    v57 = v16;
    v18 = v11[5];
    v19 = v11[3];
    v58 = v11[4];
    v59 = v18;
    v20 = v11[1];
    v55[0] = *v11;
    v55[1] = v20;
    v49 = v58;
    v50 = v12;
    v47 = v56;
    v48 = v19;
    v21 = v11[9];
    v53 = v62;
    v54 = v21;
    v51 = v60;
    v52 = v15;
    v45 = v55[0];
    v46 = v17;
    v22 = (a2 + *(v6 + 32));
    v23 = v22[7];
    v24 = v22[5];
    v69 = v22[6];
    v70 = v23;
    v25 = v22[7];
    v26 = v22[9];
    v71 = v22[8];
    v72 = v26;
    v27 = v22[3];
    v28 = v22[1];
    v65 = v22[2];
    v66 = v27;
    v29 = v22[3];
    v30 = v22[5];
    v67 = v22[4];
    v68 = v30;
    v31 = v22[1];
    v64[0] = *v22;
    v64[1] = v31;
    v41 = v69;
    v42 = v25;
    v32 = v22[9];
    v43 = v71;
    v44 = v32;
    v37 = v65;
    v38 = v29;
    v39 = v67;
    v40 = v24;
    v35 = v64[0];
    v36 = v28;
    sub_1E0FE6720(v55, v74);
    sub_1E0FE6720(v64, v74);
    v33 = _s12ShazamEvents5VenueV2eeoiySbAC_ACtFZ_0(&v45, &v35);
    v73[6] = v41;
    v73[7] = v42;
    v73[8] = v43;
    v73[9] = v44;
    v73[2] = v37;
    v73[3] = v38;
    v73[4] = v39;
    v73[5] = v40;
    v73[0] = v35;
    v73[1] = v36;
    sub_1E0FEDAB8(v73);
    v74[6] = v51;
    v74[7] = v52;
    v74[8] = v53;
    v74[9] = v54;
    v74[2] = v47;
    v74[3] = v48;
    v74[4] = v49;
    v74[5] = v50;
    v74[0] = v45;
    v74[1] = v46;
    sub_1E0FEDAB8(v74);
  }

  else
  {
    return 0;
  }

  return v33;
}

unint64_t sub_1E10ABC0C()
{
  result = qword_1ECE8BD18;
  if (!qword_1ECE8BD18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD18);
  }

  return result;
}

uint64_t sub_1E10ABC60(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECE8BD20, &qword_1E10BEBC0);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1E10ABCB0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E10ABD18(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1E10ABD78(uint64_t a1)
{
  result = sub_1E10ABF34(&qword_1EE17EDC0, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1E10ABE18(void *a1)
{
  a1[1] = sub_1E10ABF34(&qword_1EE17EDD8, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
  a1[2] = sub_1E10ABF34(qword_1EE17EDF0, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
  a1[3] = sub_1E10ABF34(&qword_1EE17EDE8, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
  result = sub_1E10ABF34(&qword_1EE17EDD0, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
  a1[4] = result;
  return result;
}

uint64_t sub_1E10ABF34(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1E10ABFA4(uint64_t a1)
{
  sub_1E10AC048(319);
  if (v1 <= 0x3F)
  {
    type metadata accessor for Time(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1E10AC048(uint64_t a1)
{
  if (!qword_1ECE8BD40)
  {
    v2 = type metadata accessor for Apple(255);
    v3 = sub_1E10ABF34(&qword_1EE17EDC8, type metadata accessor for Apple, &protocol conformance descriptor for Apple);
    v5 = type metadata accessor for EventCategory(a1, v2, v3, v4);
    if (!v6)
    {
      atomic_store(v5, &qword_1ECE8BD40);
    }
  }
}

unint64_t sub_1E10AC0F0()
{
  result = qword_1ECE8BD48;
  if (!qword_1ECE8BD48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD48);
  }

  return result;
}

unint64_t sub_1E10AC148()
{
  result = qword_1ECE8BD50;
  if (!qword_1ECE8BD50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD50);
  }

  return result;
}

unint64_t sub_1E10AC1A0()
{
  result = qword_1ECE8BD58;
  if (!qword_1ECE8BD58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD58);
  }

  return result;
}

uint64_t sub_1E10AC1F4(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x79726F6765746163 && a2 == 0xE800000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1701667182 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 1701669236 && a2 == 0xE400000000000000 || (sub_1E10AE8FC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x65756E6576 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1E10AE8FC();

    if (v6)
    {
      return 4;
    }

    else
    {
      return 5;
    }
  }
}

uint64_t sub_1E10AC394@<X0>(uint64_t a1@<X8>)
{
  v25[1] = a1;
  v1 = sub_1E10ADD7C();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v3, v4);
  v6 = v25 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB68, &qword_1E10B78B0);
  MEMORY[0x1EEE9AC00](v7, v8);
  v10 = v25 - v9;
  v11 = sub_1E10ADD4C();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = v25 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v12 + 104))(v16, *MEMORY[0x1E6969640], v11);
  v17 = sub_1E10ADD1C();
  v19 = v18;
  (*(v12 + 8))(v16, v11);
  v28[0] = v17;
  v28[1] = v19;
  v27 = v28;
  if ((sub_1E10AC6FC(sub_1E10AC7A8, v26, &unk_1F5BECE60) & 1) == 0)
  {

    sub_1E10ADD8C();
    sub_1E10ADD6C();
    (*(v2 + 8))(v6, v1);
    v20 = sub_1E10ADD3C();
    v21 = *(v20 - 8);
    if ((*(v21 + 48))(v10, 1, v20) == 1)
    {
      sub_1E10AC800(v10);
    }

    else
    {
      sub_1E10ADD2C();
      (*(v21 + 8))(v10, v20);
      v22 = &unk_1F5BECE88;
      v23 = 41;
      do
      {

        if (sub_1E10AE0EC())
        {
          break;
        }

        v22 += 16;
        --v23;
      }

      while (v23);
    }
  }

  return sub_1E10ADD0C();
}

uint64_t sub_1E10AC6FC(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (v4)
  {
    v6 = v4 - 1;
    v7 = (a3 + 40);
    do
    {
      v8 = *v7;
      v12[0] = *(v7 - 1);
      v12[1] = v8;

      v9 = a1(v12);

      if (v3)
      {
        break;
      }

      v10 = v6-- == 0;
      v7 += 2;
    }

    while (((v9 | v10) & 1) == 0);
  }

  else
  {
    LOBYTE(v9) = 0;
  }

  return v9 & 1;
}

uint64_t sub_1E10AC7A8(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_1E10AE8FC() & 1;
  }
}

uint64_t sub_1E10AC800(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8AB68, &qword_1E10B78B0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E10AC868(uint64_t result, uint64_t a2, double a3, double a4)
{
  v4 = ceil(result * 5.0 * 0.5);
  if ((*&v4 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
LABEL_120:
    __break(1u);
    goto LABEL_121;
  }

  if (v4 <= -9.22337204e18)
  {
LABEL_121:
    __break(1u);
    goto LABEL_122;
  }

  if (v4 >= 9.22337204e18)
  {
LABEL_122:
    __break(1u);
    goto LABEL_123;
  }

  v5 = v4;
  if (v4 < 0)
  {
LABEL_123:
    __break(1u);
    goto LABEL_124;
  }

  v6 = result;
  v119 = v4;
  if (!v5)
  {
    v7 = MEMORY[0x1E69E7CC0];
    goto LABEL_14;
  }

  result = sub_1E10AE1CC();
  v7 = result;
  *(result + 16) = v5;
  v8 = (result + 32);
  if (v5 < 4)
  {
    v9 = 0;
    v10 = a3;
LABEL_12:
    v14 = v5 - v9;
    do
    {
      *v8++ = v10;
      --v14;
    }

    while (v14);
    goto LABEL_14;
  }

  v9 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  v8 += v5 & 0x7FFFFFFFFFFFFFFCLL;
  v10 = a3;
  v11 = vdupq_lane_s64(*&a3, 0);
  v12 = (result + 48);
  v13 = v5 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v12[-1] = v11;
    *v12 = v11;
    v12 += 2;
    v13 -= 4;
  }

  while (v13);
  if (v9 != v5)
  {
    goto LABEL_12;
  }

LABEL_14:
  v112 = v6;
  v15 = *(v7 + 16);
  if (v15)
  {
    v16 = 0;
    v17 = MEMORY[0x1E69E7CC0];
    v18 = 90.0;
    v19 = -90.0;
    do
    {
      v20 = v18;
      v21 = v17;
      v22 = v16;
      while (1)
      {
        if (v22 >= *(v7 + 16))
        {
          __break(1u);
          goto LABEL_110;
        }

        v16 = v22 + 1;
        v23 = *(v7 + 32 + 8 * v22);
        v18 = (v20 + v19) * 0.5;

        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v25 = v21;
        if (v23 < v18)
        {
          break;
        }

        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_1E1058744(0, *(v21 + 2) + 1, 1, v21);
        }

        v27 = *(v25 + 2);
        v26 = *(v25 + 3);
        if (v27 >= v26 >> 1)
        {
          v25 = sub_1E1058744((v26 > 1), v27 + 1, 1, v25);
        }

        *(v25 + 2) = v27 + 1;
        v28 = &v25[16 * v27];
        *(v28 + 4) = 49;
        *(v28 + 5) = 0xE100000000000000;
        v29 = v25;

        v17 = v29;
        v19 = (v20 + v19) * 0.5;
        v21 = v29;
        ++v22;
        if (v15 == v16)
        {
          goto LABEL_32;
        }
      }

      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v25 = sub_1E1058744(0, *(v21 + 2) + 1, 1, v21);
      }

      v31 = *(v25 + 2);
      v30 = *(v25 + 3);
      if (v31 >= v30 >> 1)
      {
        v25 = sub_1E1058744((v30 > 1), v31 + 1, 1, v25);
      }

      *(v25 + 2) = v31 + 1;
      v32 = &v25[16 * v31];
      *(v32 + 4) = 48;
      *(v32 + 5) = 0xE100000000000000;
      v33 = v25;

      v17 = v33;
    }

    while (v15 - 1 != v22);
  }

  else
  {
    v17 = MEMORY[0x1E69E7CC0];
  }

LABEL_32:
  v116 = v17;

  if (!v119)
  {
    v34 = MEMORY[0x1E69E7CC0];
    goto LABEL_41;
  }

  result = sub_1E10AE1CC();
  v34 = result;
  *(result + 16) = v119;
  v35 = (result + 32);
  if (v119 < 4)
  {
    v36 = 0;
    v37 = a4;
LABEL_39:
    v41 = v119 - v36;
    do
    {
      *v35++ = v37;
      --v41;
    }

    while (v41);
    goto LABEL_41;
  }

  v36 = v119 & 0x7FFFFFFFFFFFFFFCLL;
  v35 += v119 & 0x7FFFFFFFFFFFFFFCLL;
  v37 = a4;
  v38 = vdupq_lane_s64(*&a4, 0);
  v39 = (result + 48);
  v40 = v119 & 0x7FFFFFFFFFFFFFFCLL;
  do
  {
    v39[-1] = v38;
    *v39 = v38;
    v39 += 2;
    v40 -= 4;
  }

  while (v40);
  if (v36 != v119)
  {
    goto LABEL_39;
  }

LABEL_41:
  v42 = *(v34 + 16);
  if (v42)
  {
    v43 = 0;
    v44 = MEMORY[0x1E69E7CC0];
    v45 = 180.0;
    v46 = -180.0;
LABEL_43:
    v47 = v45;
    v48 = v44;
    v49 = v43;
    while (v49 < *(v34 + 16))
    {
      v43 = v49 + 1;
      v50 = *(v34 + 32 + 8 * v49);
      v45 = (v47 + v46) * 0.5;

      v51 = swift_isUniquelyReferenced_nonNull_native();
      v44 = v48;
      if (v50 < v45)
      {
        if ((v51 & 1) == 0)
        {
          v44 = sub_1E1058744(0, *(v48 + 2) + 1, 1, v48);
        }

        v56 = *(v44 + 2);
        v55 = *(v44 + 3);
        if (v56 >= v55 >> 1)
        {
          v44 = sub_1E1058744((v55 > 1), v56 + 1, 1, v44);
        }

        *(v44 + 2) = v56 + 1;
        v57 = &v44[16 * v56];
        *(v57 + 4) = 48;
        *(v57 + 5) = 0xE100000000000000;

        if (v42 - 1 != v49)
        {
          goto LABEL_43;
        }

        goto LABEL_59;
      }

      if ((v51 & 1) == 0)
      {
        v44 = sub_1E1058744(0, *(v48 + 2) + 1, 1, v48);
      }

      v53 = *(v44 + 2);
      v52 = *(v44 + 3);
      if (v53 >= v52 >> 1)
      {
        v44 = sub_1E1058744((v52 > 1), v53 + 1, 1, v44);
      }

      *(v44 + 2) = v53 + 1;
      v54 = &v44[16 * v53];
      *(v54 + 4) = 49;
      *(v54 + 5) = 0xE100000000000000;

      v46 = (v47 + v46) * 0.5;
      v48 = v44;
      ++v49;
      if (v42 == v43)
      {
        goto LABEL_59;
      }
    }

LABEL_110:
    __break(1u);
    goto LABEL_111;
  }

  v44 = MEMORY[0x1E69E7CC0];
LABEL_59:

  v114 = *(v44 + 2);
  if (v114)
  {
    v58 = 0;
    v59 = v116 + 40;
    v60 = v44 + 40;
    v61 = MEMORY[0x1E69E7CC0];
    while (v58 < *(v44 + 2))
    {
      v62 = *(v60 - 1);
      v63 = *v60;
      v120 = v60;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE89768, &qword_1E10B3278);
      result = swift_initStackObject();
      *(result + 16) = xmmword_1E10B0870;
      *(result + 32) = v62;
      *(result + 40) = v63;
      if (v58 >= *(v116 + 2))
      {
        goto LABEL_112;
      }

      v64 = v44;
      v65 = v59;
      v66 = *(v59 - 1);
      v67 = *v59;
      *(result + 48) = v66;
      *(result + 56) = v67;
      v68 = *(v61 + 16);
      v69 = v68 + 2;
      if (__OFADD__(v68, 2))
      {
        goto LABEL_113;
      }

      result = swift_isUniquelyReferenced_nonNull_native();
      if (!result || (v70 = *(v61 + 24) >> 1, v70 < v69))
      {
        if (v68 <= v69)
        {
          v71 = v68 + 2;
        }

        else
        {
          v71 = v68;
        }

        result = sub_1E1058744(result, v71, 1, v61);
        v61 = result;
        v70 = *(result + 24) >> 1;
      }

      v44 = v64;
      if (v70 - *(v61 + 16) < 2)
      {
        goto LABEL_114;
      }

      swift_arrayInitWithCopy();

      v72 = *(v61 + 16);
      v73 = __OFADD__(v72, 2);
      v74 = v72 + 2;
      if (v73)
      {
        goto LABEL_115;
      }

      ++v58;
      *(v61 + 16) = v74;
      v59 = v65 + 2;
      v60 = v120 + 2;
      if (v114 == v58)
      {
        goto LABEL_75;
      }
    }

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
    goto LABEL_116;
  }

  v61 = MEMORY[0x1E69E7CC0];
LABEL_75:

  v117 = *(v61 + 16);
  if (v117)
  {
    v75 = 0;
    v76 = 0;
    v77 = v61 + 40;
    v78 = MEMORY[0x1E69E7CC0];
    while (v76 < *(v61 + 16))
    {
      swift_bridgeObjectRetain_n();

      result = sub_1E10AE11C();
      v80 = result;
      v82 = v81;
      if (v75 + 5 * (v76 / 5))
      {
        if (!*(v78 + 16))
        {
          goto LABEL_118;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        v83 = v78;
        if (result)
        {
          v84 = *(v78 + 16);
          if (!v84)
          {
            goto LABEL_119;
          }
        }

        else
        {
          result = sub_1E10AD670(v78);
          v83 = result;
          v84 = *(result + 16);
          if (!v84)
          {
            goto LABEL_119;
          }
        }

        v85 = v84 - 1;
        v86 = &v83[16 * v85];
        v88 = *(v86 + 4);
        v87 = *(v86 + 5);
        *(v83 + 2) = v85;
        v121 = v88;
        v122 = v87;
        MEMORY[0x1E12ED840](v80, v82);

        v90 = *(v83 + 2);
        v89 = *(v83 + 3);
        if (v90 >= v89 >> 1)
        {
          v83 = sub_1E1058744((v89 > 1), v90 + 1, 1, v83);
        }

        *(v83 + 2) = v90 + 1;
        v79 = &v83[16 * v90];
        *(v79 + 4) = v121;
        *(v79 + 5) = v122;
        v78 = v83;
      }

      else
      {
        v91 = v78;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v91 = sub_1E1058744(0, *(v78 + 16) + 1, 1, v78);
        }

        v93 = *(v91 + 2);
        v92 = *(v91 + 3);
        if (v93 >= v92 >> 1)
        {
          v91 = sub_1E1058744((v92 > 1), v93 + 1, 1, v91);
        }

        *(v91 + 2) = v93 + 1;
        v94 = &v91[16 * v93];
        *(v94 + 4) = v80;
        *(v94 + 5) = v82;
        v78 = v91;
      }

      ++v76;
      --v75;
      v77 += 16;
      if (v117 == v76)
      {
        goto LABEL_94;
      }
    }

LABEL_116:
    __break(1u);
LABEL_117:
    __break(1u);
LABEL_118:
    __break(1u);
LABEL_119:
    __break(1u);
    goto LABEL_120;
  }

  v78 = MEMORY[0x1E69E7CC0];
LABEL_94:

  v95 = *(v78 + 16);
  if (v95)
  {
    v96 = 0;
    v97 = v78 + 40;
    v98 = MEMORY[0x1E69E7CC0];
LABEL_96:
    v99 = (v97 + 16 * v96);
    v100 = v96;
    while (v100 < *(v78 + 16))
    {
      if (*(a2 + 16))
      {
        v101 = *(v99 - 1);
        v102 = *v99;

        v103 = sub_1E1014100(v101, v102);
        if (v104)
        {
          v105 = (*(a2 + 56) + 16 * v103);
          v107 = *v105;
          v106 = v105[1];

          result = swift_isUniquelyReferenced_nonNull_native();
          v108 = v78;
          if ((result & 1) == 0)
          {
            result = sub_1E1058850(0, *(v98 + 16) + 1, 1, v98);
            v98 = result;
          }

          v110 = *(v98 + 16);
          v109 = *(v98 + 24);
          if (v110 >= v109 >> 1)
          {
            result = sub_1E1058850((v109 > 1), v110 + 1, 1, v98);
            v98 = result;
          }

          v96 = v100 + 1;
          *(v98 + 16) = v110 + 1;
          v111 = v98 + 16 * v110;
          *(v111 + 32) = v107;
          *(v111 + 40) = v106;
          v78 = v108;
          if (v95 - 1 != v100)
          {
            goto LABEL_96;
          }

          goto LABEL_107;
        }
      }

      ++v100;
      v99 += 2;
      if (v95 == v100)
      {
        goto LABEL_107;
      }
    }

    goto LABEL_117;
  }

LABEL_107:

  if ((v112 & 0x8000000000000000) == 0)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECE8BD60, &qword_1E10BEE50);
    sub_1E0FEDEAC(&qword_1EE17E400, &qword_1ECE8BD60, &qword_1E10BEE50, MEMORY[0x1E69E6968]);
    return sub_1E10AE10C();
  }

LABEL_124:
  __break(1u);
  return result;
}

void *sub_1E10AD2C4(uint64_t a1)
{
  v1 = sub_1E10AE0CC();
  if (!v2)
  {
    v6 = MEMORY[0x1E69E7CC8];
LABEL_29:

    return v6;
  }

  v3 = v1;
  v4 = v2;
  v5 = 0;
  v6 = MEMORY[0x1E69E7CC8];
  while (!__OFADD__(v5, 1))
  {
    v41 = v5 + 1;
    sub_1E10AD684();
    v10 = sub_1E10AE0FC();
    v12 = v11;
    v13 = sub_1E10AE0AC();
    if ((5 - v13 % 5) >= 5)
    {
      v14 = -(v13 % 5);
    }

    else
    {
      v14 = 5 - v13 % 5;
    }

    v42 = v3;
    if (v14)
    {
      v15 = sub_1E10AE1CC();
      *(v15 + 16) = v14;
      v16 = (v15 + 32);
      if (v14 < 4)
      {
        v17 = 0;
LABEL_16:
        v20 = v14 - v17;
        do
        {
          *v16 = 48;
          v16[1] = 0xE100000000000000;
          v16 += 2;
          --v20;
        }

        while (v20);
        goto LABEL_18;
      }

      v17 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      v16 += 2 * (v14 & 0xFFFFFFFFFFFFFFFCLL);
      v18 = (v15 + 64);
      v19 = v14 & 0xFFFFFFFFFFFFFFFCLL;
      do
      {
        *(v18 - 2) = xmmword_1E10BEE40;
        *(v18 - 1) = xmmword_1E10BEE40;
        *v18 = xmmword_1E10BEE40;
        v18[1] = xmmword_1E10BEE40;
        v18 += 4;
        v19 -= 4;
      }

      while (v19);
      if (v14 != v17)
      {
        goto LABEL_16;
      }
    }

LABEL_18:
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECE8B270, &qword_1E10B17E0);
    sub_1E0FEDEAC(&qword_1EE17E418, &unk_1ECE8B270, &qword_1E10B17E0, MEMORY[0x1E69E6310]);
    v21 = sub_1E10AE01C();
    v23 = v22;

    MEMORY[0x1E12ED840](v10, v12);

    v24 = v23;

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v26 = sub_1E1014100(v21, v24);
    v28 = v6[2];
    v29 = (v27 & 1) == 0;
    v30 = __OFADD__(v28, v29);
    v31 = v28 + v29;
    if (v30)
    {
      goto LABEL_31;
    }

    v32 = v27;
    if (v6[3] < v31)
    {
      sub_1E1015214(v31, isUniquelyReferenced_nonNull_native);
      v26 = sub_1E1014100(v21, v24);
      if ((v32 & 1) != (v33 & 1))
      {
        goto LABEL_33;
      }

LABEL_23:
      v34 = v42;
      if (v32)
      {
        goto LABEL_3;
      }

      goto LABEL_24;
    }

    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_23;
    }

    v39 = v26;
    sub_1E10167BC();
    v26 = v39;
    v34 = v42;
    if (v32)
    {
LABEL_3:
      v7 = v26;

      v8 = (v6[7] + 16 * v7);
      *v8 = v34;
      v8[1] = v4;

      goto LABEL_4;
    }

LABEL_24:
    v6[(v26 >> 6) + 8] |= 1 << v26;
    v35 = (v6[6] + 16 * v26);
    *v35 = v21;
    v35[1] = v24;
    v36 = (v6[7] + 16 * v26);
    *v36 = v34;
    v36[1] = v4;

    v37 = v6[2];
    v30 = __OFADD__(v37, 1);
    v38 = v37 + 1;
    if (v30)
    {
      goto LABEL_32;
    }

    v6[2] = v38;
LABEL_4:
    v3 = sub_1E10AE0CC();
    v4 = v9;
    v5 = v41;
    if (!v9)
    {
      goto LABEL_29;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
LABEL_33:
  result = sub_1E10AE94C();
  __break(1u);
  return result;
}

unint64_t sub_1E10AD684()
{
  result = qword_1EE17E4E8[0];
  if (!qword_1EE17E4E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE17E4E8);
  }

  return result;
}

unint64_t sub_1E10AD714()
{
  result = qword_1EE17FE80;
  if (!qword_1EE17FE80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE80);
  }

  return result;
}

unint64_t sub_1E10AD81C()
{
  result = qword_1ECE8BD68;
  if (!qword_1ECE8BD68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD68);
  }

  return result;
}

unint64_t sub_1E10AD874()
{
  result = qword_1ECE8BD70;
  if (!qword_1ECE8BD70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECE8BD70);
  }

  return result;
}

unint64_t sub_1E10AD8D8()
{
  result = qword_1EE17FE78;
  if (!qword_1EE17FE78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE17FE78);
  }

  return result;
}