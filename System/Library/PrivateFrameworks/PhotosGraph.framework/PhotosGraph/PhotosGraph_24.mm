id MusicForYouCacher.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id MusicForYouCacher.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id MusicForYouCacher.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t sub_22F2CCB40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v35 = a3;
  v36 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v34 - v5;
  v7 = sub_22F73F690();
  v38 = *(v7 - 8);
  v39 = v7;
  MEMORY[0x28223BE20](v7);
  v34 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v37 = &v34 - v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  MEMORY[0x28223BE20](v11 - 8);
  v13 = &v34 - v12;
  v14 = type metadata accessor for CacherStatus(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = &v34 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F13BA9C(a1, v13, &qword_27DAB1DA0, &unk_22F7771B0);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    v18 = &qword_27DAB1DA0;
    v19 = &unk_22F7771B0;
    v20 = v13;
LABEL_5:
    sub_22F120ADC(v20, v18, v19);
    LOBYTE(v23) = 1;
    return v23 & 1;
  }

  sub_22F294B10(v13, v17, type metadata accessor for CacherStatus);
  sub_22F13BA9C(&v17[*(v14 + 20)], v6, &qword_27DAB0920, &qword_22F770B20);
  v22 = v38;
  v21 = v39;
  if ((*(v38 + 48))(v6, 1, v39) == 1)
  {
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
    v18 = &qword_27DAB0920;
    v19 = &qword_22F770B20;
    v20 = v6;
    goto LABEL_5;
  }

  v25 = v37;
  (*(v22 + 32))(v37, v6, v21);
  sub_22F1E3F74(v43);
  memcpy(v44, v43, 0x121uLL);
  if (sub_22F1EDAB8(v44) == 1)
  {
    GEOLocationCoordinate2DMake();
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v23 = *v26;
    v42 = *v26;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
    swift_willThrowTypedImpl();
    (*(v22 + 8))(v25, v21);
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
  }

  else
  {
    GEOLocationCoordinate2DMake();
    sub_22F120ADC(v43, &qword_27DAB2448, &unk_22F788C80);
    memcpy(v41, v43, sizeof(v41));
    GEOLocationCoordinate2DMake();
    v28 = v27;
    v23 = v34;
    sub_22F73F680();
    sub_22F73F590();
    v30 = v29;
    v31 = v25;
    v32 = *(v22 + 8);
    v32(v23, v21);
    LOBYTE(v23) = v35;
    v33 = v40;
    sub_22F7416A0();
    if (!v33)
    {
      LOBYTE(v23) = *(v28 + 8) < v30;
    }

    v32(v31, v21);
    sub_22F2CE854(v17, type metadata accessor for CacherStatus);
  }

  return v23 & 1;
}

void sub_22F2CD024(void (*a1)(void, void, __n128), uint64_t a2, void *a3)
{
  v67 = a1;
  v68 = a3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v55 - v6;
  object = sub_22F73F690();
  v70 = *(object - 1);
  MEMORY[0x28223BE20](object);
  v10 = &v55 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for SongSource(0);
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = (&v55 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  v15 = MusicBag.personalMixNames()();
  if (!v3)
  {
    v61 = v10;
    v62 = v11;
    v16 = v15;
    v17 = v70;
    v63 = v7;
    v64 = v12;
    v65 = v14;
    v18 = MusicBag.personalMixIdentifers()();
    v66 = 0;
    v19 = v18;
    v82 = v18;
    sub_22F1E3F74(v79);
    memcpy(v80, v79, 0x121uLL);
    memcpy(v81, v79, 0x121uLL);
    if (sub_22F1EDAB8(v81) == 1)
    {
      GEOLocationCoordinate2DMake();

      memcpy(v77, v80, sizeof(v77));
      GEOLocationCoordinate2DMake();
      v78 = *v20;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
      swift_willThrowTypedImpl();
      return;
    }

    countAndFlagsBits = v16;
    v58 = v19;
    v60 = a2;
    GEOLocationCoordinate2DMake();
    memcpy(v77, v80, sizeof(v77));
    GEOLocationCoordinate2DMake();

    v23 = sub_22F144294(v22);
    if (qword_2810AB5D8 != -1)
    {
      goto LABEL_38;
    }

LABEL_6:

    v25 = sub_22F1E8F80(v24, v23);

    v76[0] = v25;
    sub_22F1E7F04(&unk_2843DD3A0);
    sub_22F1DF3B0(&unk_2843DD3C0);
    sub_22F120ADC(v80, &qword_27DAB2448, &unk_22F788C80);
    v69 = v76[0];
    v26 = countAndFlagsBits;
    v27 = *(countAndFlagsBits + 16);
    v28 = v17;
    countAndFlagsBits = object;
    if (v27)
    {
      v29 = sub_22F10B348(v27, 0);
      v30 = v26;
      v31 = v29;
      v32 = sub_22F11A438(v76, v29 + 4, v27, v30);
      sub_22F1534EC(v76[0]);
      if (v32 == v27)
      {
LABEL_10:
        sub_22F25F004();
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
        v33 = swift_allocObject();
        *(v33 + 16) = xmmword_22F770DF0;
        *(v33 + 56) = MEMORY[0x277D837D0];
        *(v33 + 64) = sub_22F153470();
        *(v33 + 32) = 0x696669746E656469;
        *(v33 + 40) = 0xEA00000000007265;
        *(v33 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
        *(v33 + 104) = sub_22F25F050();
        *(v33 + 72) = v31;

        object = sub_22F741560();
        v34 = v66;
        v35 = sub_22F1935BC(object);
        v66 = v34;
        if (v34)
        {

          return;
        }

        v17 = v35;
        v58 = countAndFlagsBits;

        v36 = v64;
        v23 = v65;
        v67 = v17[2];
        if (!v67)
        {
LABEL_35:

          return;
        }

        v37 = 0;
        v68 = (v69 + 56);
        v56 = (v28 + 4);
        v57 = (v28 + 6);
        v70 = (v28 + 1);
        v59 = v17;
        while (1)
        {
          if (v37 >= v17[2])
          {
            __break(1u);
LABEL_38:
            swift_once();
            goto LABEL_6;
          }

          sub_22F1684A8(v17 + ((*(v36 + 80) + 32) & ~*(v36 + 80)) + *(v36 + 72) * v37, v23);
          v38 = *v23;
          v39 = v23[1];

          sub_22F1E3F74(v75);
          memcpy(v76, v75, 0x121uLL);
          if (sub_22F1EDAB8(v76) == 1)
          {
            GEOLocationCoordinate2DMake();

            memcpy(v73, v75, sizeof(v73));
            GEOLocationCoordinate2DMake();
            v74 = *v54;
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1518, &qword_22F77A7E0);
            swift_willThrowTypedImpl();
            sub_22F2CE854(v65, type metadata accessor for SongSource);
            return;
          }

          GEOLocationCoordinate2DMake();
          memcpy(v73, v75, sizeof(v73));
          GEOLocationCoordinate2DMake();
          memcpy(v71, v40, sizeof(v71));
          v41._countAndFlagsBits = v38;
          v41._object = v39;
          v42 = MusicBagContents.personalMixIdentifier(for:)(v41);
          countAndFlagsBits = v42.value._countAndFlagsBits;
          object = v42.value._object;
          memcpy(v72, v71, sizeof(v72));
          sub_22F162EC8(v72);
          if (v42.value._object)
          {
            if (*(v69 + 16))
            {
              v43 = v69;
              sub_22F742170();
              sub_22F740D60();
              v44 = sub_22F7421D0();
              v45 = -1 << *(v43 + 32);
              v46 = v44 & ~v45;
              if ((*(v68 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46))
              {
                v47 = ~v45;
                while (1)
                {
                  v48 = (*(v69 + 48) + 16 * v46);
                  v49 = *v48 == v38 && v48[1] == v39;
                  if (v49 || (sub_22F742040() & 1) != 0)
                  {
                    break;
                  }

                  v46 = (v46 + 1) & v47;
                  if (((*(v68 + ((v46 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v46) & 1) == 0)
                  {
                    goto LABEL_28;
                  }
                }

                sub_22F164408(v42.value._countAndFlagsBits, v42.value._object);

                goto LABEL_34;
              }
            }

LABEL_28:

            v50 = v63;
            v23 = v65;
            sub_22F13BA9C(v65 + *(v62 + 20), v63, &qword_27DAB0920, &qword_22F770B20);
            v51 = v58;
            if ((*v57)(v50, 1, v58) != 1)
            {
              v52 = v61;
              (*v56)(v61, v50, v51);
              sub_22F73F600();
              if (v53 > -604800.0)
              {
                sub_22F164408(v42.value._countAndFlagsBits, v42.value._object);
              }

              (*v70)(v52, v51);
LABEL_34:
              v23 = v65;
              sub_22F2CE854(v65, type metadata accessor for SongSource);
              goto LABEL_15;
            }

            sub_22F2CE854(v23, type metadata accessor for SongSource);

            sub_22F120ADC(v50, &qword_27DAB0920, &qword_22F770B20);
          }

          else
          {
            v23 = v65;
            sub_22F2CE854(v65, type metadata accessor for SongSource);
          }

LABEL_15:
          ++v37;
          v36 = v64;
          v17 = v59;
          if (v37 == v67)
          {
            goto LABEL_35;
          }
        }
      }

      __break(1u);
    }

    v31 = MEMORY[0x277D84F90];
    goto LABEL_10;
  }
}

uint64_t sub_22F2CD924(void *a1, int a2, void *a3, uint64_t a4, void (**a5)(void, void, void))
{
  v58 = a4;
  v9 = sub_22F740C00();
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v50 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0);
  v13 = *(v12 - 8);
  v14 = *(v13 + 8);
  MEMORY[0x28223BE20](v12 - 8);
  MEMORY[0x28223BE20](v15);
  v17 = &v50 - v16;
  v61 = swift_allocObject();
  *(v61 + 16) = a5;
  _Block_copy(a5);
  v62 = sub_22F7416E0();
  v19 = v18;
  v59 = v21;
  v60 = v20;
  v22 = sub_22F1A26E0(a1);
  v55 = v11;
  v53 = &v50 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v56 = a3;
  v54 = v13;
  v57 = v19;
  v23 = v22;
  v24 = objc_allocWithZone(type metadata accessor for MusicBag());
  v25 = v23;
  v26 = sub_22F1ED5B0(v23);

  MusicCache.readCacherStatus(category:)(0x726F46636973756DLL, 0xEB00000000756F59, v17);
  v52 = v25;
  v27 = sub_22F2CCB40(v17, v26, v62);
  if (((v27 | a2) & 1) == 0)
  {
    sub_22F7416A0();
    v30 = v52;
    a5[2](a5, 1, 0);

LABEL_8:
    sub_22F120ADC(v17, &qword_27DAB1DA0, &unk_22F7771B0);
  }

  sub_22F2CD024(v52, v26, v57);
  if (!*(v29 + 16))
  {

    sub_22F7416A0();
    a5[2](a5, 1, 0);

    goto LABEL_8;
  }

  v31 = v55;
  v32 = v29;
  sub_22F740BD0();

  v55 = v32;
  v51 = sub_22F22FB24(v31, v32);
  static MusicKitClient.FetchOptions.personalizedMemoriesCuration(musicKitSource:)(0x726F46636973756DLL, 0xEB00000000756F59, v63);
  v33 = v53;
  sub_22F13BA9C(v17, v53, &qword_27DAB1DA0, &unk_22F7771B0);
  v34 = v54[80];
  v54 = v26;
  v35 = (v34 + 24) & ~v34;
  v50 = (v14 + v35 + 7) & 0xFFFFFFFFFFFFFFF8;
  v36 = (v50 + 15) & 0xFFFFFFFFFFFFFFF8;
  v37 = (v36 + 15) & 0xFFFFFFFFFFFFFFF8;
  v38 = (v37 + 15) & 0xFFFFFFFFFFFFFFF8;
  v39 = (v38 + 15) & 0xFFFFFFFFFFFFFFF8;
  v40 = swift_allocObject();
  *(v40 + 16) = v58;
  sub_22F1207AC(v33, v40 + v35, &qword_27DAB1DA0, &unk_22F7771B0);
  v41 = v52;
  *(v40 + v50) = v52;
  *(v40 + v36) = v55;
  v42 = v59;
  *(v40 + v37) = v59;
  *(v40 + v38) = v51;
  v43 = v56;
  *(v40 + v39) = v56;
  v44 = (v40 + ((v39 + 15) & 0xFFFFFFFFFFFFFFF8));
  v45 = v61;
  *v44 = sub_22F1E088C;
  v44[1] = v45;
  v46 = v41;
  v47 = v42;

  v48 = v43;

  v49 = v60;
  sub_22F229248(v63, v60, sub_22F2CE8B4, v40);

  v65[0] = v63[0];
  v65[1] = v63[1];
  v65[2] = v63[2];
  v66 = v64;
  sub_22F1D210C(v65);
  sub_22F120ADC(v17, &qword_27DAB1DA0, &unk_22F7771B0);
}

uint64_t objectdestroyTm_5()
{
  v1 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);
  v5 = v0 + v3;
  v6 = type metadata accessor for CacherStatus(0);
  if (!(*(*(v6 - 8) + 48))(v0 + v3, 1, v6))
  {
    v16 = v4;

    v7 = *(v6 + 20);
    v8 = sub_22F73F690();
    v9 = *(v8 - 8);
    v10 = *(v9 + 48);
    if (!v10(v5 + v7, 1, v8))
    {
      (*(v9 + 8))(v5 + v7, v8);
    }

    v11 = *(v6 + 24);
    v4 = v16;
    if (!v10(v5 + v11, 1, v8))
    {
      (*(v9 + 8))(v5 + v11, v8);
    }
  }

  v12 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  v13 = (((v12 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  v14 = (((v13 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;

  return MEMORY[0x2821FE8E8](v0, ((v14 + 15) & 0xFFFFFFFFFFFFFFF8) + 16, v2 | 7);
}

void sub_22F2CE1C8(void *a1, char a2)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1DA0, &unk_22F7771B0) - 8);
  v6 = (*(v5 + 80) + 24) & ~*(v5 + 80);
  v7 = (*(v5 + 64) + v6 + 7) & 0xFFFFFFFFFFFFFFF8;
  v8 = (v7 + 15) & 0xFFFFFFFFFFFFFFF8;
  v9 = (v8 + 15) & 0xFFFFFFFFFFFFFFF8;
  v10 = (v9 + 15) & 0xFFFFFFFFFFFFFFF8;
  sub_22F2CB144(a1, a2 & 1, *(v2 + 16), (v2 + v6), *(v2 + v7), *(v2 + v8), *(v2 + v9), *(v2 + v10), *(v2 + ((v10 + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8)), *(v2 + ((((v10 + 15) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8) + 8));
}

void sub_22F2CE2C8(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v48 = a1;
  v51 = sub_22F740AD0();
  v5 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v50 = &v44 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a2 + 16);
  if (v7)
  {
    if (v7 != 1)
    {
      v47 = v5;
      v49 = v2;
      *&v55 = MEMORY[0x277D84F90];
      sub_22F146A6C(0, v7 - 1, 0);
      v8 = v55;
      v9 = *(v55 + 16);
      for (i = 1; i != v7; ++i)
      {
        v11 = *(a2 + 16);
        *&v55 = v8;
        v12 = *(v8 + 24);
        if (v9 >= v12 >> 1)
        {
          sub_22F146A6C((v12 > 1), v9 + 1, 1);
          v8 = v55;
        }

        *(v8 + 16) = v9 + 1;
        *(v8 + 8 * v9++ + 32) = i / v11;
      }

      v3 = v49;
      v5 = v47;
    }

    v13 = sub_22F7416C0();

    v14 = -1 << *(a2 + 32);
    v15 = ~v14;
    v16 = *(a2 + 56);
    v17 = -v14;
    if (v17 < 64)
    {
      v18 = ~(-1 << v17);
    }

    else
    {
      v18 = -1;
    }

    *&v55 = a2;
    *(&v55 + 1) = a2 + 56;
    v56 = v15;
    *v57 = v18 & v16;
    *&v57[8] = v13;
    *&v57[16] = 0;
    v57[24] = 0;
    v47 = OBJC_IVAR___PGMusicCache_managedObjectContext;

    sub_22F226E88(v19);
    if (v20)
    {
      v22 = v20;
      v23 = v21;
      v24 = (v5 + 8);
      v46 = xmmword_22F782A30;
      v45 = v24;
      while (1)
      {
        sub_22F741740();
        if (qword_2810A8E80 != -1)
        {
          swift_once();
        }

        v25 = v50;
        sub_22F740AC0();
        sub_22F740A90();
        v26 = *v24;
        (*v24)(v25, v51);
        sub_22F741690();
        if (v3)
        {
          break;
        }

        v27 = sub_22F7416E0();
        v29 = v28;
        v31 = v30;
        v49 = v23;
        v33 = v32;
        MEMORY[0x28223BE20](v27);
        *(&v44 - 14) = v34;
        *(&v44 - 13) = v22;
        *(&v44 - 11) = 0;
        *(&v44 - 10) = 0;
        *(&v44 - 12) = v35;
        *(&v44 - 9) = v46;
        *(&v44 - 7) = v36;
        *(&v44 - 6) = MEMORY[0x277D84F90];
        *(&v44 - 10) = 16777472;
        *(&v44 - 4) = v29;
        *(&v44 - 3) = v37;
        *(&v44 - 2) = v38;
        sub_22F7417A0();

        sub_22F741730();
        v39 = v50;
        sub_22F740AC0();
        sub_22F740A90();

        v40 = v39;
        v24 = v45;
        v41 = v26(v40, v51);
        sub_22F226E88(v41);
        v23 = v42;
        v3 = 0;
        v22 = v43;
        if (!v43)
        {
          goto LABEL_17;
        }
      }

      v52 = v55;
      v53 = v56;
      v54[0] = *v57;
      *(v54 + 9) = *&v57[9];
      sub_22F120ADC(&v52, qword_27DAB31F8, &unk_22F782A88);
    }

    else
    {
LABEL_17:
      v52 = v55;
      v53 = v56;
      v54[0] = *v57;
      *(v54 + 9) = *&v57[9];
      sub_22F120ADC(&v52, qword_27DAB31F8, &unk_22F782A88);
    }
  }

  else
  {
    __break(1u);
  }
}

unint64_t sub_22F2CE800()
{
  result = qword_27DAB31F0;
  if (!qword_27DAB31F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB31F0);
  }

  return result;
}

uint64_t sub_22F2CE854(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_22F2CE8B8()
{
  v0 = sub_22F73F7C0();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_allocWithZone(MEMORY[0x277CCA968]) init];
  sub_22F73F6E0();
  v5 = sub_22F73F730();
  (*(v1 + 8))(v3, v0);
  [v4 setLocale_];

  v6 = sub_22F740DF0();
  [v4 setDateFormat_];

  qword_2810A9170 = v4;
}

id static NSDateFormatter.yearMonthDay.getter()
{
  if (qword_2810A9168 != -1)
  {
    swift_once();
  }

  v1 = qword_2810A9170;

  return v1;
}

uint64_t PGTuningExperiment.__allocating_init<>(withEventFactory:withProgressReporter:)(uint64_t a1, void *a2)
{
  v4 = swift_allocObject();
  PGTuningExperiment.init<>(withEventFactory:withProgressReporter:)(a1, a2);
  return v4;
}

uint64_t *PGTuningExperiment.init<>(withEventFactory:withProgressReporter:)(uint64_t a1, void *a2)
{
  v4 = v3;
  v38 = a2;
  v6 = *v2;
  v7 = *(*v2 + 80);
  v8 = sub_22F741860();
  v29 = *(v8 - 8);
  v30 = v8;
  MEMORY[0x28223BE20](v8);
  v10 = &v29 - v9;
  v11 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v14 = &v29 - v13;
  v2[2] = sub_22F740C60();
  v31 = v2 + 2;
  v15 = *(v6 + 104);
  v16 = *(v15 + 24);
  v39 = v2;
  v36 = *(v6 + 88);
  v37 = a1;
  v34 = v16;
  v35 = v15;
  v16();
  v33 = *(v11 + 48);
  if (v33(v10, 1, v7) == 1)
  {
LABEL_5:
    (*(v29 + 8))(v10, v30);
    v21 = v31;
    v22 = swift_beginAccess();
    v40[4] = *v21;
    MEMORY[0x28223BE20](v22);
    v23 = v35;
    v24 = v36;
    *(&v29 - 4) = v7;
    *(&v29 - 3) = v24;
    *(&v29 - 2) = v23;
    sub_22F741280();

    swift_getWitnessTable();
    v25 = sub_22F7410A0();

    *v21 = v25;

    v26 = v38;
    sub_22F7416A0();
    (*(*(v24 - 8) + 8))(v37, v24);
    if (v4)
    {
      v27 = v39;
    }

    else
    {

      return v39;
    }
  }

  else
  {
    v17 = v11 + 32;
    v32 = *(v11 + 32);
    v18 = (v11 + 8);
    while (1)
    {
      v19 = v17;
      v32(v14, v10, v7);
      v20 = objc_autoreleasePoolPush();
      sub_22F2CEF0C(v39, v14, v38, v40);
      if (v4)
      {
        break;
      }

      v4 = 0;
      objc_autoreleasePoolPop(v20);
      (*v18)(v14, v7);
      (v34)(v36, v35);
      v17 = v19;
      if (v33(v10, 1, v7) == 1)
      {
        goto LABEL_5;
      }
    }

    objc_autoreleasePoolPop(v20);

    v27 = v39;

    (*(*(v36 - 8) + 8))(v37);
    (*v18)(v14, v7);
  }

  return v27;
}

void sub_22F2CEF0C(void *a1, uint64_t a2, uint64_t a3, void *a4)
{
  v6 = MEMORY[0x28223BE20](a1);
  (*(v8 + 16))(&v10[-v7], v6);
  swift_beginAccess();
  sub_22F741280();
  sub_22F741240();
  swift_endAccess();
  swift_beginAccess();

  sub_22F741230();

  swift_beginAccess();

  v9 = sub_22F741230();

  if (__OFADD__(v9, 1))
  {
    __break(1u);
  }

  else
  {
    sub_22F741690();
    if (v4)
    {
      *a4 = v4;
    }
  }
}

uint64_t sub_22F2CF0BC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18[0] = a1;
  v18[1] = a2;
  v6 = sub_22F73F690();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = v18 - v11;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v14 = *(AssociatedConformanceWitness + 8);
  v14(a3, AssociatedConformanceWitness);
  v14(a3, AssociatedConformanceWitness);
  v15 = sub_22F73F5D0();
  v16 = *(v7 + 8);
  v16(v9, v6);
  v16(v12, v6);
  return v15 & 1;
}

uint64_t sub_22F2CF278@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t x8_0@<X8>, uint64_t a10, uint64_t a11, uint64_t a12)
{
  v15 = *v13;
  v16 = *(v15 + 80);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v18 = *(v15 + 96);
  v29[0] = v16;
  v29[1] = AssociatedTypeWitness;
  v29[2] = v18;
  v29[3] = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for PGTuningContextNone(0, v29);
  v29[0] = PGTuningContextNone.__allocating_init()();
  sub_22F2CF3B0(a1, a2, a3, v29, a4, a5, a6, a7, x8_0, a8, a10, v19, a11, a12);
}

void sub_22F2CF3B0(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14)
{
  v16 = v15;
  v17 = v14;
  v57 = a8;
  v61 = a7;
  v48 = a6;
  v47[1] = a5;
  v63 = a4;
  v47[2] = a3;
  v55 = a1;
  v56 = a2;
  v49 = a9;
  v60 = a14;
  v18 = *(*v14 + 80);
  v19 = *(v18 - 8);
  v59 = a11;
  MEMORY[0x28223BE20](a1);
  v21 = v47 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47[0] = v20;
  MEMORY[0x28223BE20](v22);
  v64 = v47 - v23;
  v24 = *(a12 - 8);
  MEMORY[0x28223BE20](v25);
  v27 = v47 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v53 = v29;
  v54 = v28;
  swift_getAssociatedTypeWitness();
  v30 = sub_22F7411F0();
  v69 = v30;
  v50 = v24;
  v31 = *(v24 + 16);
  v32 = v63;
  v62 = v27;
  v63 = a12;
  v31(v27, v32, a12);
  v68 = 0;
  swift_beginAccess();
  v58 = v17;
  v33 = v17[2];

  if (sub_22F741230())
  {
    v34 = 0;
    v52 = (v19 + 16);
    v51 = (v19 + 8);
    while (1)
    {
      v35 = sub_22F741210();
      sub_22F7411B0();
      if (v35)
      {
        (*(v19 + 16))(v64, v33 + ((*(v19 + 80) + 32) & ~*(v19 + 80)) + *(v19 + 72) * v34, v18);
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
          goto LABEL_11;
        }
      }

      else
      {
        v37 = sub_22F741B30();
        if (v47[0] != 8)
        {
          __break(1u);
          return;
        }

        *&v65 = v37;
        v35 = v37;
        (*v52)(v64, &v65, v18);
        swift_unknownObjectRelease();
        v36 = v34 + 1;
        if (__OFADD__(v34, 1))
        {
LABEL_11:
          __break(1u);
LABEL_12:

          objc_autoreleasePoolPop(v35);
          (*v51)(v21, v18);
          v38 = v50;
          goto LABEL_18;
        }
      }

      (*(v19 + 32))(v21, v64, v18);
      v35 = objc_autoreleasePoolPush();
      sub_22F2CF958(v55, v56, v21, v62, &v69, v61, &v68, v58, v57, v53, v59, v63, v54, v60, &v65);
      if (v16)
      {
        goto LABEL_12;
      }

      v16 = 0;
      objc_autoreleasePoolPop(v35);
      (*v51)(v21, v18);
      ++v34;
      if (v36 == sub_22F741230())
      {
        v30 = v69;
        break;
      }
    }
  }

  v39 = v49;
  v38 = v50;

  (*(v60 + 24))(&v65, v30, v59);
  if (v48)
  {
    v40 = v66;
    v41 = v67;
    __swift_project_boxed_opaque_existential_1(&v65, v66);
    v42 = *((*(v41 + 8))(v40, v41) + 16);

    if (v42)
    {
      v43 = sub_22F740DF0();
      v44 = v66;
      v45 = v67;
      __swift_project_boxed_opaque_existential_1(&v65, v66);
      (*(v45 + 8))(v44, v45);
      sub_22F2CFD00();
      v46 = sub_22F740C80();

      AnalyticsSendEvent();
    }
  }

  sub_22F7416A0();
  if (v16)
  {
    __swift_destroy_boxed_opaque_existential_0(&v65);
LABEL_18:
    (*(v38 + 8))(v62, v63);
  }

  else
  {
    sub_22F100260(&v65, v39);
    (*(v38 + 8))(v62, v63);
  }
}

uint64_t sub_22F2CF958(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void *a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, void *a15)
{
  v43 = a6;
  v40 = a8;
  v41 = a7;
  v38 = a1;
  v39 = a5;
  v35 = a4;
  v36 = a2;
  v37 = a3;
  v42 = *a8;
  v16 = *(a12 - 8);
  MEMORY[0x28223BE20](a1);
  v18 = &v33 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v34 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v21 = &v33 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = MEMORY[0x28223BE20](v22);
  v25 = &v33 - v24;
  (*(v16 + 16))(v18, a4, a12, v23);
  v33 = a13;
  v26 = v37;
  (*(a13 + 72))(v36, v37, v18, a10, a13);
  (*(v16 + 8))(v18, a12);
  v27 = AssociatedTypeWitness;
  v28 = v34;
  (*(v34 + 16))(v21, v25, v27);
  sub_22F741280();
  sub_22F741240();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v30 = v41;
  (*(AssociatedConformanceWitness + 40))(v26, v25, a12, AssociatedConformanceWitness);
  swift_beginAccess();

  sub_22F741230();

  v31 = v44;
  sub_22F741690();
  if (v31)
  {
    result = (*(v28 + 8))(v25, v27);
    *a15 = v31;
  }

  else
  {
    result = (*(v28 + 8))(v25, v27);
    if (__OFADD__(*v30, 1))
    {
      __break(1u);
    }

    else
    {
      ++*v30;
    }
  }

  return result;
}

uint64_t PGTuningExperiment.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

unint64_t sub_22F2CFD00()
{
  result = qword_2810A8EC0;
  if (!qword_2810A8EC0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_2810A8EC0);
  }

  return result;
}

void *sub_22F2CFE8C(void (*a1)(void, __n128), uint64_t a2, uint64_t a3)
{
  v35 = a2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32B8, &qword_22F782B40);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v28 - v7;
  v9 = sub_22F740400();
  MEMORY[0x28223BE20](v9);
  v34 = &v28 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = MEMORY[0x28223BE20](v11);
  v32 = &v28 - v14;
  v15 = *(a3 + 16);
  if (!v15)
  {
    return MEMORY[0x277D84F90];
  }

  v16 = (a3 + 32);
  v17 = (v12 + 48);
  v31 = v12;
  v33 = (v12 + 32);
  v18 = MEMORY[0x277D84F90];
  v29 = v9;
  v30 = a1;
  v28 = (v12 + 48);
  while (1)
  {
    v19 = *v16++;
    v36 = v19;
    a1(&v36, v13);
    if (v3)
    {
      break;
    }

    if ((*v17)(v8, 1, v9) == 1)
    {
      sub_22F120ADC(v8, &qword_27DAB32B8, &qword_22F782B40);
    }

    else
    {
      v20 = v32;
      v21 = *v33;
      (*v33)(v32, v8, v9);
      v21(v34, v20, v9);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v18 = sub_22F13E8E8(0, v18[2] + 1, 1, v18);
      }

      v23 = v18[2];
      v22 = v18[3];
      v24 = v31;
      if (v23 >= v22 >> 1)
      {
        v26 = sub_22F13E8E8((v22 > 1), v23 + 1, 1, v18);
        v24 = v31;
        v18 = v26;
      }

      v18[2] = v23 + 1;
      v25 = v18 + ((*(v24 + 80) + 32) & ~*(v24 + 80)) + *(v24 + 72) * v23;
      v9 = v29;
      v21(v25, v34, v29);
      a1 = v30;
      v17 = v28;
    }

    if (!--v15)
    {
      return v18;
    }
  }

  return v18;
}

void *sub_22F2D0160(void (*a1)(uint64_t *__return_ptr, uint64_t *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  if (!v4)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = (a3 + 32);
  v7 = MEMORY[0x277D84F90];
  while (1)
  {
    v13 = *v6;

    a1(&v12, &v13);
    if (v3)
    {
      break;
    }

    v8 = v12;
    if (v12)
    {
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v7 = sub_22F13EB2C(0, v7[2] + 1, 1, v7);
      }

      v10 = v7[2];
      v9 = v7[3];
      if (v10 >= v9 >> 1)
      {
        v7 = sub_22F13EB2C((v9 > 1), v10 + 1, 1, v7);
      }

      v7[2] = v10 + 1;
      v7[v10 + 4] = v8;
    }

    ++v6;
    if (!--v4)
    {
      return v7;
    }
  }

  return v7;
}

uint64_t sub_22F2D029C(void (*a1)(uint64_t *__return_ptr, void *, __n128), uint64_t a2, uint64_t a3)
{
  v4 = MEMORY[0x277D84F90];
  v13 = MEMORY[0x277D84F90];
  v5 = *(a3 + 16);
  if (v5)
  {
    for (i = (a3 + 40); ; i += 2)
    {
      v8 = *i;
      v12[0] = *(i - 1);
      v12[1] = v8;

      (a1)(&v11, v12);
      if (v3)
      {
        break;
      }

      if (v11)
      {
        MEMORY[0x231900D00](v9);
        if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_22F7411C0();
        }

        sub_22F741220();
        v4 = v13;
      }

      if (!--v5)
      {
        return v4;
      }
    }
  }

  return v4;
}

void *SearchEntityAccumulator.mePersonEntity.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity);
  v2 = v1;
  return v1;
}

id SearchEntityAccumulator.__allocating_init(with:graphLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = objc_allocWithZone(v3);
  v8 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  v9 = MEMORY[0x277D84F90];
  *&v7[v8] = sub_22F14FCDC(MEMORY[0x277D84F90]);
  *&v7[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity] = 0;
  v10 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  *&v7[v10] = sub_22F14FCF0(v9);
  v11 = OBJC_IVAR___PGSearchEntityAccumulator_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4CE0);
  (*(*(v12 - 8) + 16))(&v7[v11], v13, v12);
  *&v7[OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask] = a1;
  v14 = &v7[OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier];
  *v14 = a2;
  *(v14 + 1) = a3;
  v16.receiver = v7;
  v16.super_class = v3;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SearchEntityAccumulator.init(with:graphLocaleIdentifier:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  ObjectType = swift_getObjectType();
  v8 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  v9 = MEMORY[0x277D84F90];
  *&v3[v8] = sub_22F14FCDC(MEMORY[0x277D84F90]);
  *&v3[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity] = 0;
  v10 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
  *&v3[v10] = sub_22F14FCF0(v9);
  v11 = OBJC_IVAR___PGSearchEntityAccumulator_logger;
  if (qword_2810A9400 != -1)
  {
    swift_once();
  }

  v12 = sub_22F740B90();
  v13 = __swift_project_value_buffer(v12, qword_2810B4CE0);
  (*(*(v12 - 8) + 16))(&v3[v11], v13, v12);
  *&v3[OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask] = a1;
  v14 = &v3[OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier];
  *v14 = a2;
  *(v14 + 1) = a3;
  v16.receiver = v3;
  v16.super_class = ObjectType;
  return objc_msgSendSuper2(&v16, sel_init);
}

id SearchEntityAccumulator.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SearchEntityAccumulator.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t SearchEntityAccumulator.accumulatePublicEvents(in:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v30 = a2;
  v5 = v4;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v29 - v10;
  v12 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v13 = sub_22F2D0DDC(v12);

  LOBYTE(v12) = sub_22F2D40D0();
  v14 = sub_22F73F090();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v12)
  {
    (*(v15 + 16))(v11, a4, v14);
    (*(v16 + 56))(v11, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v11, 1, 1, v14);
  }

  type metadata accessor for GraphSearchEntity(0);
  sub_22F2D4D78(a1, v13, v11, *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));
  v18 = v17;

  v19 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v31 = *(v5 + v19);
  v21 = v31;
  *(v5 + v19) = 0x8000000000000000;
  sub_22F1229E8(v30, a3);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_13:
    sub_22F136D68();
    v21 = v31;
    goto LABEL_9;
  }

  LOBYTE(a4) = v22;
  if (*(v21 + 24) < v26)
  {
    sub_22F12A2D0(v26, isUniquelyReferenced_nonNull_native);
    v21 = v31;
    sub_22F1229E8(v30, a3);
    if ((a4 & 1) == (v27 & 1))
    {
      goto LABEL_9;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(v5 + v19) = v21;
  if ((a4 & 1) == 0)
  {
    sub_22F1534CC();
  }

  sub_22F145844(v18);
  swift_endAccess();
  return sub_22F120ADC(v11, &qword_27DAB40E0, &unk_22F779200);
}

unint64_t sub_22F2D0DDC(void *a1)
{
  v2 = [a1 integerValue];
  v3 = *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_synonymsByCategoryMask);
  v4 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v5 = v4;
  if (*(v3 + 16) && (v6 = sub_22F122BD4(v4), (v7 & 1) != 0))
  {
    v8 = *(*(v3 + 56) + 8 * v6);

    return v8;
  }

  else
  {

    v10 = MEMORY[0x277D84F90];

    return sub_22F14FCC8(v10);
  }
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchEntityAccumulator.accumulateTrip(trip:for:)(Swift::String trip, Swift::String a2)
{
  v30 = a2;
  v3 = v2;
  object = trip._object;
  countAndFlagsBits = trip._countAndFlagsBits;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &countAndFlagsBits - v6;
  v8 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v9 = sub_22F2D0DDC(v8);

  v10 = type metadata accessor for GraphSearchEntity(0);
  v11 = sub_22F73F090();
  (*(*(v11 - 8) + 56))(v7, 1, 1, v11);
  v12 = *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v13 = *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_22F771340;
  *(inited + 32) = countAndFlagsBits;
  v15 = inited + 32;
  *(inited + 40) = object;
  v32 = v9;
  v33 = 1610;
  v34 = v10;
  v35 = v12;
  v36 = v13;
  v37 = v7;

  v16 = sub_22F2D029C(sub_22F2D42E4, v31, inited);

  v17 = v30._countAndFlagsBits;
  swift_setDeallocating();
  sub_22F1DF3B0(v15);
  v18 = v7;
  v19 = v30._object;
  sub_22F120ADC(v18, &qword_27DAB40E0, &unk_22F779200);
  v20 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v38 = *(v3 + v20);
  v22 = v38;
  *(v3 + v20) = 0x8000000000000000;
  sub_22F1229E8(v17, v19);
  v24 = *(v22 + 16);
  v25 = (v23 & 1) == 0;
  v26 = __OFADD__(v24, v25);
  v27 = v24 + v25;
  if (v26)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(v13) = v23;
  if (*(v22 + 24) < v27)
  {
    sub_22F12A2D0(v27, isUniquelyReferenced_nonNull_native);
    v22 = v38;
    sub_22F1229E8(v17, v19);
    if ((v13 & 1) == (v28 & 1))
    {
      goto LABEL_6;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    sub_22F136D68();
    *(v3 + v20) = v38;
    if (v13)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v3 + v20) = v22;
  if ((v13 & 1) == 0)
  {
LABEL_7:
    sub_22F1534CC();
  }

LABEL_8:
  sub_22F145844(v16);
  swift_endAccess();
}

Swift::Void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> SearchEntityAccumulator.accumulateMeanings(meanings:for:)(Swift::OpaquePointer meanings, Swift::String a2)
{
  v3 = v2;
  object = a2._object;
  countAndFlagsBits = a2._countAndFlagsBits;
  v7 = &qword_27DAB40E0;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v25 - v9;
  v11 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v12 = sub_22F2D0DDC(v11);

  v13 = sub_22F73F090();
  (*(*(v13 - 8) + 56))(v10, 1, 1, v13);
  sub_22F2D5A54(meanings._rawValue, v12, v10, *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v3 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));
  v15 = v14;

  sub_22F120ADC(v10, &qword_27DAB40E0, &unk_22F779200);
  v16 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v26 = *(v3 + v16);
  v18 = v26;
  *(v3 + v16) = 0x8000000000000000;
  sub_22F1229E8(countAndFlagsBits, object);
  v20 = *(v18 + 16);
  v21 = (v19 & 1) == 0;
  v22 = __OFADD__(v20, v21);
  v23 = v20 + v21;
  if (v22)
  {
    __break(1u);
LABEL_10:
    sub_22F136D68();
    v18 = v26;
    goto LABEL_6;
  }

  LOBYTE(v7) = v19;
  if (*(v18 + 24) < v23)
  {
    sub_22F12A2D0(v23, isUniquelyReferenced_nonNull_native);
    v18 = v26;
    sub_22F1229E8(countAndFlagsBits, object);
    if ((v7 & 1) == (v24 & 1))
    {
      goto LABEL_6;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_10;
  }

LABEL_6:
  *(v3 + v16) = v18;
  if ((v7 & 1) == 0)
  {
    sub_22F1534CC();
  }

  sub_22F145844(v15);
  swift_endAccess();
}

uint64_t sub_22F2D1840(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t *__return_ptr, void *, __n128))
{
  v34 = a6;
  v9 = v6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = sub_22F2D0DDC(v16);

  v18 = type metadata accessor for GraphSearchEntity(0);
  v19 = sub_22F73F090();
  (*(*(v19 - 8) + 56))(v15, 1, 1, v19);
  v21 = *(v9 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier);
  v20 = *(v9 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8);
  v36 = v17;
  v37 = a5;
  v38 = v18;
  v39 = v21;
  v40 = v20;
  v41 = v15;
  v22 = sub_22F2D029C(v34, v35, a1);

  sub_22F120ADC(v15, &qword_27DAB40E0, &unk_22F779200);
  v23 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v42 = *(v9 + v23);
  v25 = v42;
  *(v9 + v23) = 0x8000000000000000;
  sub_22F1229E8(a2, a3);
  v27 = *(v25 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_10;
  }

  LOBYTE(a5) = v26;
  if (*(v25 + 24) < v30)
  {
    sub_22F12A2D0(v30, isUniquelyReferenced_nonNull_native);
    v25 = v42;
    sub_22F1229E8(a2, a3);
    if ((a5 & 1) == (v31 & 1))
    {
      goto LABEL_6;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_10:
    sub_22F136D68();
    *(v9 + v23) = v42;
    if (a5)
    {
      goto LABEL_8;
    }

    goto LABEL_7;
  }

LABEL_6:
  *(v9 + v23) = v25;
  if ((a5 & 1) == 0)
  {
LABEL_7:
    sub_22F1534CC();
  }

LABEL_8:
  sub_22F145844(v22);
  return swift_endAccess();
}

uint64_t SearchEntityAccumulator.accumulateHomeAndWork(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v10 - 8);
  v12 = &v29 - v11;
  v13 = sub_22F2D40D0();
  v14 = sub_22F73F090();
  v15 = *(v14 - 8);
  v16 = v15;
  if (v13)
  {
    (*(v15 + 16))(v12, a4, v14);
    (*(v16 + 56))(v12, 0, 1, v14);
  }

  else
  {
    (*(v15 + 56))(v12, 1, 1, v14);
  }

  type metadata accessor for GraphSearchEntity(0);
  sub_22F2D5198(a1, v12, *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier), *(v5 + OBJC_IVAR___PGSearchEntityAccumulator_graphLocaleIdentifier + 8));
  v18 = v17;
  v19 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v30 = *(v5 + v19);
  v21 = v30;
  *(v5 + v19) = 0x8000000000000000;
  sub_22F1229E8(a2, a3);
  v23 = *(v21 + 16);
  v24 = (v22 & 1) == 0;
  v25 = __OFADD__(v23, v24);
  v26 = v23 + v24;
  if (v25)
  {
    __break(1u);
LABEL_13:
    sub_22F136D68();
    v21 = v30;
    goto LABEL_9;
  }

  LOBYTE(v14) = v22;
  if (*(v21 + 24) < v26)
  {
    sub_22F12A2D0(v26, isUniquelyReferenced_nonNull_native);
    v21 = v30;
    sub_22F1229E8(a2, a3);
    if ((v14 & 1) == (v27 & 1))
    {
      goto LABEL_9;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_9:
  *(v5 + v19) = v21;
  if ((v14 & 1) == 0)
  {
    sub_22F1534CC();
  }

  sub_22F145844(v18);
  swift_endAccess();
  return sub_22F120ADC(v12, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t SearchEntityAccumulator.accumulateLocationContinents(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_22F2D40D0();
  v13 = sub_22F73F090();
  v14 = *(v13 - 8);
  v15 = v14;
  if (v12)
  {
    (*(v14 + 16))(v11, a4, v13);
    (*(v15 + 56))(v11, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v11, 1, 1, v13);
  }

  v16 = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithInteger_];
  v17 = sub_22F2D0DDC(v16);

  v18 = type metadata accessor for GraphSearchEntity(0);
  MEMORY[0x28223BE20](v18);
  *(&v33 - 6) = v17;
  *(&v33 - 5) = 1007;
  *(&v33 - 4) = v19;
  *(&v33 - 3) = v20;
  *(&v33 - 2) = v21;
  *(&v33 - 1) = v11;
  v22 = sub_22F2D029C(sub_22F2D4D58, (&v33 - 8), a1);

  v23 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v5 + v23);
  v25 = v34;
  *(v5 + v23) = 0x8000000000000000;
  sub_22F1229E8(v33, a3);
  v27 = *(v25 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_13;
  }

  LOBYTE(v16) = v26;
  if (*(v25 + 24) < v30)
  {
    sub_22F12A2D0(v30, isUniquelyReferenced_nonNull_native);
    v25 = v34;
    sub_22F1229E8(v33, a3);
    if ((v16 & 1) == (v31 & 1))
    {
      goto LABEL_9;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    sub_22F136D68();
    *(v5 + v23) = v34;
    if (v16)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v5 + v23) = v25;
  if ((v16 & 1) == 0)
  {
LABEL_10:
    sub_22F1534CC();
  }

LABEL_11:
  sub_22F145844(v22);
  swift_endAccess();
  return sub_22F120ADC(v11, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t SearchEntityAccumulator.accumulateLocationSubcontinents(with:for:dateInterval:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v33 = a2;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v33 - v10;
  v12 = sub_22F2D40D0();
  v13 = sub_22F73F090();
  v14 = *(v13 - 8);
  v15 = v14;
  if (v12)
  {
    (*(v14 + 16))(v11, a4, v13);
    (*(v15 + 56))(v11, 0, 1, v13);
  }

  else
  {
    (*(v14 + 56))(v11, 1, 1, v13);
  }

  v16 = type metadata accessor for GraphSearchEntity(0);
  v17 = sub_22F14FCC8(MEMORY[0x277D84F90]);
  v18 = v17;
  MEMORY[0x28223BE20](v17);
  *(&v33 - 6) = v19;
  *(&v33 - 5) = 1008;
  *(&v33 - 4) = v16;
  *(&v33 - 3) = v20;
  *(&v33 - 2) = v21;
  *(&v33 - 1) = v11;
  v22 = sub_22F2D029C(sub_22F2D4D58, (&v33 - 8), a1);

  v23 = OBJC_IVAR___PGSearchEntityAccumulator_internalSearchEntitiesByMomentUUID;
  swift_beginAccess();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v34 = *(v5 + v23);
  v25 = v34;
  *(v5 + v23) = 0x8000000000000000;
  sub_22F1229E8(v33, a3);
  v27 = *(v25 + 16);
  v28 = (v26 & 1) == 0;
  v29 = __OFADD__(v27, v28);
  v30 = v27 + v28;
  if (v29)
  {
    __break(1u);
    goto LABEL_13;
  }

  v18 = v26;
  if (*(v25 + 24) < v30)
  {
    sub_22F12A2D0(v30, isUniquelyReferenced_nonNull_native);
    v25 = v34;
    sub_22F1229E8(v33, a3);
    if ((v18 & 1) == (v31 & 1))
    {
      goto LABEL_9;
    }

    sub_22F7420C0();
    __break(1u);
  }

  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_13:
    sub_22F136D68();
    *(v5 + v23) = v34;
    if (v18)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

LABEL_9:
  *(v5 + v23) = v25;
  if ((v18 & 1) == 0)
  {
LABEL_10:
    sub_22F1534CC();
  }

LABEL_11:
  sub_22F145844(v22);
  swift_endAccess();
  return sub_22F120ADC(v11, &qword_27DAB40E0, &unk_22F779200);
}

uint64_t sub_22F2D25EC(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, void (*a7)(uint64_t, uint64_t, uint64_t, char *))
{
  v9 = sub_22F73F090();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v19 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_22F741180();
  v14 = sub_22F740E20();
  v16 = v15;
  sub_22F73F020();
  v17 = a1;
  a7(v13, v14, v16, v12);
  (*(v10 + 8))(v12, v9);

  return 1;
}

uint64_t sub_22F2D27F4(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, uint64_t, uint64_t))
{
  v8 = sub_22F741180();
  v9 = sub_22F740E20();
  v11 = v10;
  v12 = a1;
  a6(v8, v9, v11);

  return 1;
}

uint64_t SearchEntityAccumulator.accumulatePersonAndPetRelationships(from:progressReporter:)(void *a1)
{
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v4 = qword_2810B4DF0;
  *&v5 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePersonAndPetRelationships", 59, 2u, v5, 0, v4, v20);
  sub_22F741690();
  if (!v2)
  {
    v6 = OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity;
    v7 = *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity);
    *(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity) = 0;

    v8 = sub_22F14FCF0(MEMORY[0x277D84F90]);
    v9 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
    swift_beginAccess();
    *(v1 + v9) = v8;

    v10 = [a1 meNode];
    if (v10)
    {
      v11 = v10;
      v12 = sub_22F20C630(v10);
      v13 = *(v1 + v6);
      *(v1 + v6) = v12;

      v14 = sub_22F7416B0();
      v16 = v15;
      sub_22F2D2AF8(a1);
      sub_22F2D45A8(v11);
    }

    else
    {
      v16 = sub_22F740B70();
      v17 = sub_22F7415C0();
      if (os_log_type_enabled(v16, v17))
      {
        v18 = swift_slowAlloc();
        *v18 = 0;
        _os_log_impl(&dword_22F0FC000, v16, v17, "No ME node so no device owner relationships", v18, 2u);
        MEMORY[0x2319033A0](v18, -1, -1);
      }
    }
  }

  sub_22F1B2BBC(0);
}

uint64_t sub_22F2D2AF8(uint64_t a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2810A9AD0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4DF0;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePersonRelationships", 53, 2u, v7, 0, v6, v69);
  sub_22F741690();
  if (v2)
  {
    goto LABEL_4;
  }

  if (!*(v1 + OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity))
  {
    sub_22F2D4C5C();
    swift_allocError();
    *v23 = 0;
    *(v23 + 8) = 0;
    *(v23 + 16) = 2;
    swift_willThrow();
LABEL_4:
    sub_22F1B2BBC(0);
  }

  v64 = ObjectType;
  v9 = sub_22F7416D0();
  v61 = v11;
  v62 = v10;
  [objc_opt_self() relationshipTagMinConfidenceThreshold];
  v13 = [objc_opt_self() personWithTagWithConfidence_];
  sub_22F120634(0, &qword_2810A8F10, off_27887B248);
  v15 = [swift_getObjCClassFromMetadata(v14) nodesInGraph_];
  v16 = v13;
  v17 = [v15 graph];
  v18 = [v17 graphReference];
  swift_unknownObjectRelease();
  v19 = [v18 concreteGraph];

  if (v19)
  {
    v20 = [v15 elementIdentifiers];
    v21 = [v19 adjacencyWithSources:v20 relation:v16];

    swift_unknownObjectRetain();
    v22 = [v21 transposed];
    swift_unknownObjectRelease();

    sub_22F7416A0();
    v58 = v16;
    v59 = v15;
    v68 = MEMORY[0x277D84F90];
    v24 = objc_autoreleasePoolPush();
    v25 = v62;
    sub_22F2D3378(v22, v19, v3, v62, &v68, v64);
    v26 = v22;
    objc_autoreleasePoolPop(v24);
    sub_22F7416A0();
    v27 = v68;
    if (v68 >> 62)
    {
LABEL_40:
      v65 = v27 & 0xFFFFFFFFFFFFFF8;
      v28 = sub_22F741A00();
    }

    else
    {
      v65 = v68 & 0xFFFFFFFFFFFFFF8;
      v28 = *((v68 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v55 = v26;
    v56 = v9;
    v60 = v27;
    if (!v28)
    {
      v57 = MEMORY[0x277D84F98];
LABEL_37:
      v51 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
      swift_beginAccess();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v66 = *(v3 + v51);
      *(v3 + v51) = 0x8000000000000000;
      sub_22F2D4320(v57, sub_22F2D4084, 0, isUniquelyReferenced_nonNull_native, &v66);

      *(v3 + v51) = v66;
      swift_endAccess();

      sub_22F7416A0();

      swift_unknownObjectRelease();
      goto LABEL_4;
    }

    v26 = 0;
    v57 = MEMORY[0x277D84F98];
    v63 = v27 & 0xC000000000000001;
    while (2)
    {
      v25 = v26;
      while (1)
      {
        if (v63)
        {
          v29 = MEMORY[0x2319016F0](v25, v27);
        }

        else
        {
          if (v25 >= *(v65 + 16))
          {
            goto LABEL_39;
          }

          v29 = *(v27 + 8 * v25 + 32);
        }

        v30 = v29;
        v26 = (v25 + 1);
        if (__OFADD__(v25, 1))
        {
          __break(1u);
LABEL_39:
          __break(1u);
          goto LABEL_40;
        }

        v31 = (*&v29[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] + OBJC_IVAR___PGGraphSearchEntity_identifier);
        v9 = v31[1];
        if (v9)
        {
          break;
        }

        v32 = sub_22F740B70();
        v9 = sub_22F7415E0();
        if (os_log_type_enabled(v32, v9))
        {
          v33 = swift_slowAlloc();
          *v33 = 0;
          _os_log_impl(&dword_22F0FC000, v32, v9, "nil identifier for Person SearchEntity", v33, 2u);
          v34 = v33;
          v27 = v60;
          MEMORY[0x2319033A0](v34, -1, -1);
        }

        ++v25;
        if (v26 == v28)
        {
          v25 = v62;
          goto LABEL_37;
        }
      }

      v54 = *v31;

      v53 = v30;
      v17 = v57;
      v35 = swift_isUniquelyReferenced_nonNull_native();
      v67 = v57;
      v36 = sub_22F1229E8(v54, v9);
      v38 = *(v57 + 16);
      v39 = (v37 & 1) == 0;
      v40 = __OFADD__(v38, v39);
      v41 = v38 + v39;
      if (v40)
      {
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      v42 = v37;
      if (*(v57 + 24) >= v41)
      {
        if ((v35 & 1) == 0)
        {
          v47 = v36;
          sub_22F136D7C();
          v36 = v47;
          v27 = v60;
          v25 = v62;
          if (v42)
          {
            goto LABEL_29;
          }

LABEL_31:
          v17 = v67;
          v67[(v36 >> 6) + 8] |= 1 << v36;
          v48 = (v17[6] + 16 * v36);
          *v48 = v54;
          v48[1] = v9;
          *(v17[7] + 8 * v36) = v53;

          v49 = v17[2];
          v40 = __OFADD__(v49, 1);
          v50 = v49 + 1;
          if (!v40)
          {
            v57 = v17;
            v17[2] = v50;
LABEL_33:
            if (v26 != v28)
            {
              continue;
            }

            goto LABEL_37;
          }

          goto LABEL_42;
        }
      }

      else
      {
        sub_22F12A2E4(v41, v35);
        v36 = sub_22F1229E8(v54, v9);
        if ((v42 & 1) != (v43 & 1))
        {
          goto LABEL_44;
        }
      }

      break;
    }

    v25 = v62;
    if (v42)
    {
LABEL_29:
      v44 = v36;

      v57 = v67;
      v45 = v67[7];
      v46 = *(v45 + 8 * v44);
      *(v45 + 8 * v44) = v53;

      v27 = v60;
      goto LABEL_33;
    }

    goto LABEL_31;
  }

LABEL_43:
  sub_22F741D40();
  __break(1u);
  objc_autoreleasePoolPop(v17);
  __break(1u);
LABEL_44:
  sub_22F7420C0();
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t sub_22F2D3378(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[2] = a3;
  v13[3] = a4;
  v13[4] = a5;
  v13[5] = a6;
  v8 = swift_allocObject();
  v8[2] = sub_22F2D4CD8;
  v8[3] = v13;
  v8[4] = a1;
  v8[5] = a2;
  v9 = swift_allocObject();
  *(v9 + 16) = sub_22F2D4CE4;
  *(v9 + 24) = v8;
  aBlock[4] = sub_22F15A3B8;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107F34;
  aBlock[3] = &block_descriptor_22_0;
  v10 = _Block_copy(aBlock);
  v11 = a1;
  swift_unknownObjectRetain();

  [v11 enumerateTargetsBySourceWith_];
  _Block_release(v10);
  LOBYTE(a2) = swift_isEscapingClosureAtFileLocation();

  if (a2)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2D350C(void *a1, void *a2, uint64_t a3, void *a4, void *a5, void *a6, uint64_t a7)
{
  v12 = [a1 firstNode];
  if (v12)
  {
    v13 = v12;
    v29 = MEMORY[0x277D84F98];
    v14 = swift_allocObject();
    v14[2] = a4;
    v14[3] = v13;
    v14[4] = &v29;
    v14[5] = a5;
    v14[6] = a7;
    v15 = swift_allocObject();
    *(v15 + 16) = sub_22F2D4CF0;
    *(v15 + 24) = v14;
    aBlock[4] = sub_22F2D4D54;
    aBlock[5] = v15;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_22F107E24;
    aBlock[3] = &block_descriptor_32;
    v16 = _Block_copy(aBlock);
    v17 = a4;
    v18 = v13;
    a5;

    [a2 enumerateNodesUsingBlock_];
    _Block_release(v16);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }

    else
    {
      sub_22F741690();
      v20 = sub_22F20C630(v18);
      v21 = v29;
      v22 = type metadata accessor for RelatedPersonEntityDescriptor();
      v23 = objc_allocWithZone(v22);
      *&v23[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] = v20;
      *&v23[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType] = v21;
      v27.receiver = v23;
      v27.super_class = v22;

      objc_msgSendSuper2(&v27, sel_init);
      MEMORY[0x231900D00]();
      if (*((*a6 & 0xFFFFFFFFFFFFFF8) + 0x10) < *((*a6 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
LABEL_4:
        sub_22F741220();

        return;
      }
    }

    sub_22F7411C0();
    goto LABEL_4;
  }

  oslog = sub_22F740B70();
  v24 = sub_22F7415E0();
  if (os_log_type_enabled(oslog, v24))
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_22F0FC000, oslog, v24, "Not a person node or missing uuid", v25, 2u);
    MEMORY[0x2319033A0](v25, -1, -1);
  }
}

void sub_22F2D3858(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t *a5)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    v10 = a1;
    v11 = [a4 edgesTowardNode_];
    sub_22F120634(0, &unk_27DAB0680, 0x277D22C10);
    sub_22F11FA28(&unk_27DAB37F0, &unk_27DAB0680, 0x277D22C10);
    v12 = sub_22F741420();

    if ((v12 & 0xC000000000000001) != 0)
    {
      if (sub_22F741A00() == 1)
      {
LABEL_4:
        v24 = sub_22F15AAB8(v12);

        if (v24)
        {
          objc_opt_self();
          v13 = swift_dynamicCastObjCClass();
          if (v13)
          {
            v14 = v13;
            v15 = sub_22F2D4D00([v9 tag]);
            [v14 confidence];
            v17 = v16;
            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v25 = *a5;
            *a5 = 0x8000000000000000;
            sub_22F131E5C(v15, isUniquelyReferenced_nonNull_native, v17);
            *a5 = v25;

            sub_22F741690();
LABEL_16:

            goto LABEL_17;
          }
        }

        v24 = sub_22F740B70();
        v21 = sub_22F7415E0();
        if (!os_log_type_enabled(v24, v21))
        {
          goto LABEL_16;
        }

        v22 = swift_slowAlloc();
        *v22 = 0;
        v23 = "Not a relationship tag edge between person node and relationship tag node";
LABEL_15:
        _os_log_impl(&dword_22F0FC000, v24, v21, v23, v22, 2u);
        MEMORY[0x2319033A0](v22, -1, -1);
        goto LABEL_16;
      }
    }

    else if (*(v12 + 16) == 1)
    {
      goto LABEL_4;
    }

    v24 = sub_22F740B70();
    v21 = sub_22F7415E0();
    if (!os_log_type_enabled(v24, v21))
    {
      goto LABEL_16;
    }

    v22 = swift_slowAlloc();
    *v22 = 0;
    v23 = "More than one edge between person node and relationship tag node";
    goto LABEL_15;
  }

  v24 = sub_22F740B70();
  v19 = sub_22F7415E0();
  if (os_log_type_enabled(v24, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_22F0FC000, v24, v19, "Not a person relationship tag node", v20, 2u);
    MEMORY[0x2319033A0](v20, -1, -1);
  }

LABEL_17:
}

uint64_t sub_22F2D3BEC(void *a1, void *a2, uint64_t a3, void *a4, uint64_t a5)
{
  v19 = 0;
  v9 = [a1 collection];
  v10 = [v9 ownedPetNodes];

  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = a4;
  v11[5] = &v19;
  v11[6] = v10;
  v11[7] = a5;
  v12 = swift_allocObject();
  *(v12 + 16) = sub_22F2D4CB0;
  *(v12 + 24) = v11;
  aBlock[4] = sub_22F250854;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F107E24;
  aBlock[3] = &block_descriptor_22;
  v13 = _Block_copy(aBlock);
  v14 = a2;
  v15 = a4;
  v16 = v10;

  [v16 enumerateNodesUsingBlock_];

  _Block_release(v13);
  LOBYTE(v16) = swift_isEscapingClosureAtFileLocation();

  if (v16)
  {
    __break(1u);
  }

  return result;
}

void sub_22F2D3DB0(void *a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, void *a6, void *a7)
{
  objc_opt_self();
  v11 = swift_dynamicCastObjCClass();
  if (!v11)
  {
    v23 = sub_22F740B70();
    v18 = sub_22F7415E0();
    if (os_log_type_enabled(v23, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_22F0FC000, v23, v18, "Non-pet node encountered when expecting a PetNode", v19, 2u);
      MEMORY[0x2319033A0](v19, -1, -1);
    }

    goto LABEL_12;
  }

  v12 = v11;
  v23 = a1;
  v13 = [v12 petSpecies];
  if (v13 >= 3)
  {
    v20 = sub_22F740B70();
    v21 = sub_22F7415E0();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_22F0FC000, v20, v21, "Unknown pet relation type", v22, 2u);
      MEMORY[0x2319033A0](v22, -1, -1);
    }

LABEL_12:

    return;
  }

  v14 = sub_22F14FD04(*(&off_27887E898 + v13));
  v15 = sub_22F20C84C(v12);
  v16 = type metadata accessor for RelatedPersonEntityDescriptor();
  v17 = objc_allocWithZone(v16);
  *&v17[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] = v15;
  *&v17[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_confidenceByRelationType] = v14;
  v24.receiver = v17;
  v24.super_class = v16;
  objc_msgSendSuper2(&v24, sel_init);
  MEMORY[0x231900D00]();
  if (*((*a4 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*a4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    sub_22F7411C0();
  }

  sub_22F741220();
  if (__OFADD__(*a6, 1))
  {
    __break(1u);
  }

  else
  {
    [a7 count];
    sub_22F741680();

    if (!__OFADD__(*a6, 1))
    {
      ++*a6;
      return;
    }
  }

  __break(1u);
}

id sub_22F2D4084@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v2 = a1[1];
  v4 = a1[2];
  *a2 = *a1;
  a2[1] = v2;
  a2[2] = v4;

  return v4;
}

uint64_t sub_22F2D40D0()
{
  v0 = sub_22F73F690();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v6 = &v14 - v5;
  sub_22F73F060();
  sub_22F73F550();
  v7 = sub_22F73F630();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v8(v6, v0);
  if (v7 & 1) != 0 || (sub_22F73F060(), sub_22F73F570(), v9 = sub_22F73F630(), v8(v3, v0), v8(v6, v0), (v9) || (sub_22F73F030(), sub_22F73F550(), v10 = sub_22F73F630(), v8(v3, v0), v8(v6, v0), (v10))
  {
    v11 = 0;
  }

  else
  {
    sub_22F73F030();
    sub_22F73F570();
    v13 = sub_22F73F630();
    v8(v3, v0);
    v8(v6, v0);
    v11 = v13 ^ 1;
  }

  return v11 & 1;
}

uint64_t sub_22F2D4320(uint64_t a1, void (*a2)(uint64_t *__return_ptr, void *), uint64_t a3, char a4, void *a5)
{
  v47 = a5;
  v6 = a1 + 64;
  v7 = -1 << *(a1 + 32);
  if (-v7 < 64)
  {
    v8 = ~(-1 << -v7);
  }

  else
  {
    v8 = -1;
  }

  v9 = v8 & *(a1 + 64);
  v10 = (63 - v7) >> 6;

  v11 = 0;
  v39 = v6;
  while (v9)
  {
    v42 = a4;
    v14 = v11;
LABEL_14:
    v16 = __clz(__rbit64(v9)) | (v14 << 6);
    v17 = (*(a1 + 48) + 16 * v16);
    v18 = v17[1];
    v19 = *(*(a1 + 56) + 8 * v16);
    v46[0] = *v17;
    v46[1] = v18;
    v46[2] = v19;

    v20 = v19;
    a2(&v43, v46);

    v21 = v43;
    v22 = v44;
    v23 = v45;
    v24 = *v47;
    v26 = sub_22F1229E8(v43, v44);
    v27 = v24[2];
    v28 = (v25 & 1) == 0;
    v29 = v27 + v28;
    if (__OFADD__(v27, v28))
    {
      goto LABEL_25;
    }

    v30 = v25;
    if (v24[3] >= v29)
    {
      if ((v42 & 1) == 0)
      {
        sub_22F136D7C();
      }
    }

    else
    {
      sub_22F12A2E4(v29, v42 & 1);
      v31 = sub_22F1229E8(v21, v22);
      if ((v30 & 1) != (v32 & 1))
      {
        goto LABEL_27;
      }

      v26 = v31;
    }

    v9 &= v9 - 1;
    v33 = *v47;
    if (v30)
    {

      v12 = v33[7];
      v13 = *(v12 + 8 * v26);
      *(v12 + 8 * v26) = v23;
    }

    else
    {
      v33[(v26 >> 6) + 8] |= 1 << v26;
      v34 = (v33[6] + 16 * v26);
      *v34 = v21;
      v34[1] = v22;
      *(v33[7] + 8 * v26) = v23;
      v35 = v33[2];
      v36 = __OFADD__(v35, 1);
      v37 = v35 + 1;
      if (v36)
      {
        goto LABEL_26;
      }

      v33[2] = v37;
    }

    a4 = 1;
    v11 = v14;
    v6 = v39;
  }

  v15 = v11;
  while (1)
  {
    v14 = v15 + 1;
    if (__OFADD__(v15, 1))
    {
      break;
    }

    if (v14 >= v10)
    {
      sub_22F0FF590(a1);
    }

    v9 = *(v6 + 8 * v14);
    ++v15;
    if (v9)
    {
      v42 = a4;
      goto LABEL_14;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
LABEL_26:
  __break(1u);
LABEL_27:
  result = sub_22F7420C0();
  __break(1u);
  return result;
}

uint64_t sub_22F2D45A8(unint64_t a1)
{
  v3 = v2;
  v4 = v1;
  ObjectType = swift_getObjectType();
  if (qword_2810A9AD0 != -1)
  {
LABEL_36:
    swift_once();
  }

  v7 = qword_2810B4DF0;
  *&v8 = CACurrentMediaTime();
  sub_22F1B560C("SearchEntityAccumulator.accumulatePetRelationships", 50, 2u, v8, 0, v7, v55);
  sub_22F741690();
  if (v3)
  {
    goto LABEL_3;
  }

  if (!*&v4[OBJC_IVAR___PGSearchEntityAccumulator_internalMePersonEntity])
  {
    sub_22F2D4C5C();
    swift_allocError();
    *v14 = 0;
    *(v14 + 8) = 0;
    *(v14 + 16) = 2;
    swift_willThrow();
LABEL_3:
    sub_22F1B2BBC(0);
  }

  v10 = sub_22F7416B0();
  v12 = v11;
  v56 = MEMORY[0x277D84F90];
  v13 = objc_autoreleasePoolPush();
  sub_22F2D3BEC(a1, v4, &v56, v10, ObjectType);
  v3 = 0;
  objc_autoreleasePoolPop(v13);
  sub_22F7416A0();
  v15 = v56;
  if (!(v56 >> 62))
  {
    v52 = v56 & 0xFFFFFFFFFFFFFF8;
    v16 = *((v56 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v48 = v12;
    v49 = v10;
    if (v16)
    {
      goto LABEL_9;
    }

LABEL_38:
    v19 = MEMORY[0x277D84F98];
LABEL_39:
    v44 = OBJC_IVAR___PGSearchEntityAccumulator_internalRelatedPersonAndPetDescriptorByPersonIdentifier;
    swift_beginAccess();

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v53 = *&v4[v44];
    *&v4[v44] = 0x8000000000000000;
    sub_22F2D4320(v19, sub_22F2D4084, 0, isUniquelyReferenced_nonNull_native, &v53);

    *&v4[v44] = v53;
    swift_endAccess();

    sub_22F7416A0();

    goto LABEL_3;
  }

  v52 = v56 & 0xFFFFFFFFFFFFFF8;
  v16 = sub_22F741A00();
  v48 = v12;
  v49 = v10;
  if (!v16)
  {
    goto LABEL_38;
  }

LABEL_9:
  v17 = v16;
  v18 = 0;
  v19 = MEMORY[0x277D84F98];
  v51 = v15 & 0xC000000000000001;
  while (2)
  {
    v50 = v19;
    v20 = v18;
    while (1)
    {
      if (v51)
      {
        v21 = MEMORY[0x2319016F0](v20, v15);
      }

      else
      {
        if (v20 >= *(v52 + 16))
        {
          goto LABEL_35;
        }

        v21 = *(v15 + 8 * v20 + 32);
      }

      a1 = v21;
      v18 = v20 + 1;
      if (__OFADD__(v20, 1))
      {
        __break(1u);
LABEL_35:
        __break(1u);
        goto LABEL_36;
      }

      v22 = (*&v21[OBJC_IVAR____TtC11PhotosGraph29RelatedPersonEntityDescriptor_personEntity] + OBJC_IVAR___PGGraphSearchEntity_identifier);
      ObjectType = v22[1];
      if (ObjectType)
      {
        break;
      }

      v23 = sub_22F740B70();
      ObjectType = sub_22F7415C0();
      if (os_log_type_enabled(v23, ObjectType))
      {
        v3 = v17;
        v24 = v15;
        v25 = swift_slowAlloc();
        *v25 = 0;
        _os_log_impl(&dword_22F0FC000, v23, ObjectType, "nil petUUID", v25, 2u);
        v26 = v25;
        v15 = v24;
        v17 = v3;
        MEMORY[0x2319033A0](v26, -1, -1);
      }

      ++v20;
      if (v18 == v17)
      {
        v19 = v50;
        goto LABEL_39;
      }
    }

    v47 = v15;
    v27 = *v22;

    v46 = a1;
    v28 = v50;
    v29 = swift_isUniquelyReferenced_nonNull_native();
    v54 = v50;
    v30 = v27;
    a1 = sub_22F1229E8(v27, ObjectType);
    v32 = v50[2];
    v33 = (v31 & 1) == 0;
    v34 = v32 + v33;
    if (__OFADD__(v32, v33))
    {
      __break(1u);
LABEL_41:
      __break(1u);
      objc_autoreleasePoolPop(v28);
      __break(1u);
      break;
    }

    v35 = v31;
    if (v50[3] >= v34)
    {
      if (v29)
      {
        v15 = v47;
        if ((v31 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      else
      {
        v28 = &v54;
        sub_22F136D7C();
        v15 = v47;
        if ((v35 & 1) == 0)
        {
          goto LABEL_29;
        }
      }

      goto LABEL_27;
    }

    sub_22F12A2E4(v34, v29);
    v28 = v54;
    v36 = sub_22F1229E8(v30, ObjectType);
    if ((v35 & 1) == (v37 & 1))
    {
      a1 = v36;
      v15 = v47;
      if ((v35 & 1) == 0)
      {
LABEL_29:
        v19 = v54;
        v54[(a1 >> 6) + 8] |= 1 << a1;
        v40 = (v19[6] + 16 * a1);
        *v40 = v30;
        v40[1] = ObjectType;
        *(v19[7] + 8 * a1) = v46;

        v41 = v19[2];
        v42 = __OFADD__(v41, 1);
        v43 = v41 + 1;
        if (!v42)
        {
          v19[2] = v43;
LABEL_31:
          v3 = 0;
          if (v18 != v17)
          {
            continue;
          }

          goto LABEL_39;
        }

        goto LABEL_41;
      }

LABEL_27:

      v19 = v54;
      v38 = v54[7];
      v39 = *(v38 + 8 * a1);
      *(v38 + 8 * a1) = v46;

      goto LABEL_31;
    }

    break;
  }

  sub_22F7420C0();
  __break(1u);

  result = swift_endAccess();
  __break(1u);
  return result;
}

uint64_t type metadata accessor for SearchEntityAccumulator(uint64_t a1)
{
  result = qword_2810AA5E8;
  if (!qword_2810AA5E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2D4B78(uint64_t a1)
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

unint64_t sub_22F2D4C5C()
{
  result = qword_27DAB32B0;
  if (!qword_27DAB32B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32B0);
  }

  return result;
}

uint64_t block_copy_helper_22(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_22F2D4D00(unint64_t a1)
{
  if (a1 > 0xE)
  {
    return 0;
  }

  else
  {
    return word_22F782C02[a1];
  }
}

uint64_t get_enum_tag_for_layout_string_11PhotosGraph23SearchEntityAccumulatorC5ErrorO(uint64_t a1)
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

void sub_22F2D4D78(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  v37 = a4;
  v38 = a5;
  v35 = a2;
  v36 = a3;
  v40 = MEMORY[0x277D84F90];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v39 = a1;

  v12 = 0;
  v13 = 0;
  while (v10)
  {
LABEL_8:
    v15 = (v12 << 9) | (8 * __clz(__rbit64(v10)));
    v16 = *(*(v39 + 56) + v15);
    v17 = *(*(v39 + 48) + v15);

    v18 = [v17 integerValue];
    if (v18 <= 3)
    {
      if (v18 == 2)
      {
        MEMORY[0x28223BE20](2);
        v28 = v35;
        v29 = 1802;
        v30 = v6;
        v31 = v37;
        v32 = v38;
        v33 = v36;
      }

      else
      {
        if (v18 != 3)
        {
LABEL_22:
          if (qword_2810A9400 != -1)
          {
            swift_once();
          }

          v20 = sub_22F740B90();
          __swift_project_value_buffer(v20, qword_2810B4CE0);
          v21 = sub_22F740B70();
          v22 = sub_22F7415E0();
          if (os_log_type_enabled(v21, v22))
          {
            v23 = swift_slowAlloc();
            v34 = v13;
            v24 = v6;
            v25 = v23;
            *v23 = 0;
            _os_log_impl(&dword_22F0FC000, v21, v22, "GraphSearchEntity+Keywords.publicEventSearchEntities: Mask value not supported", v23, 2u);
            v26 = v25;
            v6 = v24;
            v13 = v34;
            MEMORY[0x2319033A0](v26, -1, -1);
          }

          v17 = v21;
          goto LABEL_20;
        }

        MEMORY[0x28223BE20](3);
        v28 = v35;
        v29 = 1800;
        v30 = v6;
        v31 = v37;
        v32 = v38;
        v33 = v36;
      }
    }

    else
    {
      switch(v18)
      {
        case 4:
          MEMORY[0x28223BE20](4);
          v28 = v35;
          v29 = 1801;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        case 17:
          MEMORY[0x28223BE20](17);
          v28 = v35;
          v29 = 1700;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        case 18:
          MEMORY[0x28223BE20](18);
          v28 = v35;
          v29 = 1701;
          v30 = v6;
          v31 = v37;
          v32 = v38;
          v33 = v36;
          break;
        default:
          goto LABEL_22;
      }
    }

    v19 = sub_22F2D029C(sub_22F2D4D58, &v27, v16);
    swift_beginAccess();
    sub_22F145844(v19);
    swift_endAccess();

LABEL_20:
    v10 &= v10 - 1;
  }

  while (1)
  {
    v14 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v14 >= v11)
    {

      swift_beginAccess();
      return;
    }

    v10 = *(v7 + 8 * v14);
    ++v12;
    if (v10)
    {
      v12 = v14;
      goto LABEL_8;
    }
  }

  __break(1u);
}

void sub_22F2D5198(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v64 = a4;
  v61 = a2;
  v62 = a3;
  v6 = a1;
  v74 = MEMORY[0x277D84F90];
  v7 = a1 + 64;
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;
  v12 = 0;
  v66 = 0;
  v65 = xmmword_22F771340;

  v59 = v11;
  v60 = v7;
  v58 = v4;
  while (v10)
  {
LABEL_11:
    while (1)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
      v15 = v14 | (v12 << 6);
      v16 = *(*(v6 + 48) + 8 * v15);
      sub_22F13A100(*(v6 + 56) + 32 * v15, v73);
      v71 = v16;
      sub_22F107D08(v73, &v72);
      sub_22F13BA9C(&v71, &v69, &qword_27DAB32C0, qword_22F782C20);
      v17 = v69;
      v18 = v16;
      v19 = [v17 integerValue];

      __swift_destroy_boxed_opaque_existential_0(&v70);
      if (v19 == 14)
      {
        break;
      }

      if (v19 != 13)
      {
        if (qword_2810A9400 != -1)
        {
          swift_once();
        }

        v38 = sub_22F740B90();
        __swift_project_value_buffer(v38, qword_2810B4CE0);
        v39 = sub_22F740B70();
        v40 = sub_22F7415E0();
        if (!os_log_type_enabled(v39, v40))
        {
          goto LABEL_6;
        }

        v41 = swift_slowAlloc();
        *v41 = 0;
        v42 = v40;
        v43 = v39;
        v44 = "GraphSearchEntity+Keywords.homeAndWorkSearchEntities: Mask value not supported";
        goto LABEL_5;
      }

      v20 = PLSearchLocalizedHomeString();
      v21 = sub_22F740E20();
      v23 = v22;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11D8, &qword_22F771608);
      inited = swift_initStackObject();
      *(inited + 16) = v65;
      *(inited + 32) = v21;
      *(inited + 40) = v23;

      v25 = PLSearchLocalizedHomeSynonyms();
      v26 = sub_22F741420();

      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = sub_22F10B348(*(v26 + 16), 0);
        v29 = sub_22F11A438(&v69, v28 + 4, v27, v26);
        sub_22F1534EC(v69);
        if (v29 != v27)
        {
          goto LABEL_32;
        }
      }

      else
      {

        v28 = MEMORY[0x277D84F90];
      }

      *(inited + 48) = v28;
      v47 = sub_22F14FCC8(inited);
      swift_setDeallocating();
      sub_22F120ADC(inited + 32, &unk_27DAB11E0, &unk_22F771610);
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v48 = swift_initStackObject();
      *(v48 + 16) = v65;
      *(v48 + 32) = v21;
      *(v48 + 40) = v23;
      MEMORY[0x28223BE20](v48);
      v52 = v47;
      v53 = 1000;
      v5 = v58;
      v54 = v58;
      v55 = v62;
      v56 = v64;
      v57 = v61;
      v49 = v66;
      v50 = sub_22F2D029C(sub_22F2D4D58, v51, v48);
      v66 = v49;
      swift_setDeallocating();
      sub_22F1DF3B0(v48 + 32);

      swift_beginAccess();
      v37 = v50;
LABEL_28:
      sub_22F145844(v37);
      swift_endAccess();
      sub_22F120ADC(&v71, &qword_27DAB32C0, qword_22F782C20);
      v6 = v63;
      v11 = v59;
      v7 = v60;
      if (!v10)
      {
        goto LABEL_7;
      }
    }

    sub_22F13BA9C(&v71, &v69, &qword_27DAB32C0, qword_22F782C20);

    if (swift_dynamicCast())
    {
      v30 = v67;
      v31 = v68;
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
      v32 = swift_initStackObject();
      *(v32 + 16) = v65;
      *(v32 + 32) = v30;
      *(v32 + 40) = v31;
      v33 = sub_22F14FCC8(MEMORY[0x277D84F90]);
      MEMORY[0x28223BE20](v33);
      v52 = v34;
      v53 = 1001;
      v54 = v5;
      v55 = v62;
      v56 = v64;
      v57 = v61;
      v35 = v66;
      v36 = sub_22F2D029C(sub_22F2D42E4, v51, v32);
      v66 = v35;
      swift_setDeallocating();
      sub_22F1DF3B0(v32 + 32);

      swift_beginAccess();
      v37 = v36;
      goto LABEL_28;
    }

    if (qword_2810A9400 != -1)
    {
      swift_once();
    }

    v45 = sub_22F740B90();
    __swift_project_value_buffer(v45, qword_2810B4CE0);
    v39 = sub_22F740B70();
    v46 = sub_22F7415E0();
    if (os_log_type_enabled(v39, v46))
    {
      v41 = swift_slowAlloc();
      *v41 = 0;
      v42 = v46;
      v43 = v39;
      v44 = "GraphSearchEntity+Keywords.homeAndWorkSearchEntities: Could not extract localized string for Work";
LABEL_5:
      _os_log_impl(&dword_22F0FC000, v43, v42, v44, v41, 2u);
      MEMORY[0x2319033A0](v41, -1, -1);
    }

LABEL_6:

    sub_22F120ADC(&v71, &qword_27DAB32C0, qword_22F782C20);
  }

LABEL_7:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v11)
    {

      swift_beginAccess();
      return;
    }

    v10 = *(v7 + 8 * v13);
    ++v12;
    if (v10)
    {
      v12 = v13;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_32:
  __break(1u);
}

uint64_t sub_22F2D5804@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X6>, uint64_t **a7@<X8>)
{
  v38 = a5;
  v36 = a4;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v33 - v14;
  v16 = *a1;
  v17 = a1[1];
  result = sub_22F740F10();
  if (result < 1)
  {
    v32 = 0;
  }

  else
  {
    v19 = *(a2 + 16);
    v34 = a7;
    v35 = v7;
    if (v19 && (v20 = sub_22F1229E8(v16, v17), (v21 & 1) != 0))
    {
      v22 = *(*(a2 + 56) + 8 * v20);
    }

    else
    {
      v22 = MEMORY[0x277D84F90];
    }

    v23 = sub_22F1EE324(v16, v17, a3);
    v25 = v24;
    sub_22F13BA9C(a6, v15, &qword_27DAB40E0, &unk_22F779200);
    v26 = type metadata accessor for GraphSearchEntity(0);
    v27 = objc_allocWithZone(v26);
    *&v27[OBJC_IVAR___PGGraphSearchEntity_type] = a3;
    v28 = &v27[OBJC_IVAR___PGGraphSearchEntity_label];
    *v28 = v16;
    v28[1] = v17;
    v29 = &v27[OBJC_IVAR___PGGraphSearchEntity_identifier];
    *v29 = v23;
    v29[1] = v25;
    *&v27[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0x3FF0000000000000;
    *&v27[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
    v30 = &v27[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
    v31 = v38;
    *v30 = v36;
    v30[1] = v31;
    sub_22F13BA9C(v15, &v27[OBJC_IVAR___PGGraphSearchEntity_dateInterval], &qword_27DAB40E0, &unk_22F779200);
    *&v27[OBJC_IVAR___PGGraphSearchEntity_synonyms] = v22;
    v37.receiver = v27;
    v37.super_class = v26;

    v32 = objc_msgSendSuper2(&v37, sel_init);
    result = sub_22F120ADC(v15, &qword_27DAB40E0, &unk_22F779200);
    a7 = v34;
  }

  *a7 = v32;
  return result;
}

void sub_22F2D5A54(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v40 = a4;
  v41 = a5;
  v38 = a2;
  v39 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v6 - 8);
  v37 = &v33 - v7;
  v43 = MEMORY[0x277D84F90];
  v8 = 1 << *(a1 + 32);
  v9 = -1;
  if (v8 < 64)
  {
    v9 = ~(-1 << v8);
  }

  v10 = v9 & *(a1 + 64);
  v11 = (v8 + 63) >> 6;

  v12 = 0;
  while (1)
  {
    v13 = v12;
    if (!v10)
    {
      break;
    }

LABEL_8:
    v14 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
    v15 = (*(a1 + 56) + ((v12 << 10) | (16 * v14)));
    v17 = *v15;
    v16 = v15[1];

    if (sub_22F740F10() >= 1)
    {
      v18 = v38;
      if (*(v38 + 16) && (v19 = sub_22F1229E8(v17, v16), (v20 & 1) != 0))
      {
        v36 = *(*(v18 + 56) + 8 * v19);
      }

      else
      {
        v36 = MEMORY[0x277D84F90];
      }

      v21 = sub_22F740DF0();
      v22 = identifierForMeaningLabel(v21);

      if (v22)
      {
        v23 = sub_22F740E20();
        v33 = v24;
        v34 = v23;
      }

      else
      {
        v33 = 0;
        v34 = 0;
      }

      v25 = v37;
      sub_22F13BA9C(v39, v37, &qword_27DAB40E0, &unk_22F779200);
      v35 = type metadata accessor for GraphSearchEntity(0);
      v26 = objc_allocWithZone(v35);
      *&v26[OBJC_IVAR___PGGraphSearchEntity_type] = 1600;
      v27 = &v26[OBJC_IVAR___PGGraphSearchEntity_label];
      *v27 = v17;
      v27[1] = v16;
      v28 = &v26[OBJC_IVAR___PGGraphSearchEntity_identifier];
      v29 = v33;
      *v28 = v34;
      v28[1] = v29;
      *&v26[OBJC_IVAR___PGGraphSearchEntity_confidence] = 0x3FF0000000000000;
      *&v26[OBJC_IVAR___PGGraphSearchEntity_rankingScore] = 0;
      v30 = &v26[OBJC_IVAR___PGGraphSearchEntity_localeIdentifier];
      v31 = v41;
      *v30 = v40;
      v30[1] = v31;
      sub_22F13BA9C(v25, &v26[OBJC_IVAR___PGGraphSearchEntity_dateInterval], &qword_27DAB40E0, &unk_22F779200);
      *&v26[OBJC_IVAR___PGGraphSearchEntity_synonyms] = v36;
      v42.receiver = v26;
      v42.super_class = v35;

      objc_msgSendSuper2(&v42, sel_init);
      sub_22F120ADC(v25, &qword_27DAB40E0, &unk_22F779200);

      MEMORY[0x231900D00](v32);
      if (*((v43 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v43 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_22F7411C0();
      }

      sub_22F741220();
    }

    else
    {
    }
  }

  while (1)
  {
    v12 = v13 + 1;
    if (__OFADD__(v13, 1))
    {
      break;
    }

    if (v12 >= v11)
    {

      return;
    }

    v10 = *(a1 + 64 + 8 * v12);
    ++v13;
    if (v10)
    {
      goto LABEL_8;
    }
  }

  __break(1u);
}

uint64_t sub_22F2D5DEC(uint64_t a1, uint64_t (*a2)(void))
{
  v2 = *(a1 + 16);
  v3 = MEMORY[0x277D84F90];
  if (!v2)
  {
    return v3;
  }

  v28 = MEMORY[0x277D84F90];
  sub_22F146454(0, v2, 0);
  v3 = v28;
  v27 = a1 + 56;
  result = sub_22F741980();
  v6 = result;
  v7 = 0;
  v25 = v2;
  while ((v6 & 0x8000000000000000) == 0 && v6 < 1 << *(a1 + 32))
  {
    v10 = v6 >> 6;
    if ((*(v27 + 8 * (v6 >> 6)) & (1 << v6)) == 0)
    {
      goto LABEL_21;
    }

    v11 = *(a1 + 36);
    result = a2(*(*(a1 + 48) + v6));
    v14 = *(v28 + 16);
    v13 = *(v28 + 24);
    if (v14 >= v13 >> 1)
    {
      v23 = v12;
      v24 = result;
      sub_22F146454((v13 > 1), v14 + 1, 1);
      v12 = v23;
      result = v24;
    }

    *(v28 + 16) = v14 + 1;
    v15 = v28 + 16 * v14;
    *(v15 + 32) = result;
    *(v15 + 40) = v12;
    v8 = 1 << *(a1 + 32);
    if (v6 >= v8)
    {
      goto LABEL_22;
    }

    v16 = *(v27 + 8 * v10);
    if ((v16 & (1 << v6)) == 0)
    {
      goto LABEL_23;
    }

    if (v11 != *(a1 + 36))
    {
      goto LABEL_24;
    }

    v17 = v16 & (-2 << (v6 & 0x3F));
    if (v17)
    {
      v8 = __clz(__rbit64(v17)) | v6 & 0x7FFFFFFFFFFFFFC0;
      v9 = v25;
    }

    else
    {
      v18 = v10 << 6;
      v19 = v10 + 1;
      v9 = v25;
      v20 = (a1 + 64 + 8 * v10);
      while (v19 < (v8 + 63) >> 6)
      {
        v22 = *v20++;
        v21 = v22;
        v18 += 64;
        ++v19;
        if (v22)
        {
          result = sub_22F107D18(v6, v11, 0);
          v8 = __clz(__rbit64(v21)) + v18;
          goto LABEL_4;
        }
      }

      result = sub_22F107D18(v6, v11, 0);
    }

LABEL_4:
    ++v7;
    v6 = v8;
    if (v7 == v9)
    {
      return v3;
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

void sub_22F2D601C(char *a1)
{
  v3 = v1;
  v4 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Node_labels];
  v5 = *(v4 + 16);
  if (v5)
  {
    v6 = sub_22F10B348(*(v4 + 16), 0);
    v7 = sub_22F11A438(&v29, v6 + 4, v5, v4);
    v8 = v29;
    v2 = v30;

    sub_22F0FF590(v8);
    if (v7 == v5)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v6 = MEMORY[0x277D84F90];
LABEL_5:
  v29 = v6;
  sub_22F1AB0EC(&v29);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v9 = sub_22F740DA0();
  v11 = v10;

  v12 = sub_22F2B4BB8();
  v14 = v13;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v29 = *v3;
  v16 = v29;
  v18 = sub_22F1229E8(v9, v11);
  v19 = *(v16 + 2);
  v20 = (v17 & 1) == 0;
  v21 = v19 + v20;
  if (__OFADD__(v19, v20))
  {
    __break(1u);
    goto LABEL_15;
  }

  v2 = v17;
  if (*(v16 + 3) >= v21)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_22F136EDC();
    goto LABEL_10;
  }

  sub_22F12A57C(v21, isUniquelyReferenced_nonNull_native);
  v22 = sub_22F1229E8(v9, v11);
  if ((v2 & 1) != (v23 & 1))
  {
    sub_22F7420C0();
    __break(1u);
    return;
  }

  v18 = v22;
LABEL_10:
  v24 = v29;
  *v3 = v29;
  if (v2)
  {
  }

  else
  {
    sub_22F1534CC();
  }

  v25 = *(v24 + 7);
  v26 = a1;
  v27 = swift_isUniquelyReferenced_nonNull_native();
  v29 = *(v25 + 8 * v18);
  *(v25 + 8 * v18) = 0x8000000000000000;
  sub_22F131F70(v26, v12, v14, v27);

  *(v25 + 8 * v18) = v29;
}

void sub_22F2D6290(char *a1)
{
  v3 = *&a1[OBJC_IVAR____TtC11PhotosGraph4Edge_labels];
  v4 = *(v3 + 16);
  if (v4)
  {
    v5 = sub_22F10B348(*(v3 + 16), 0);
    v6 = sub_22F11A438(&v28, v5 + 4, v4, v3);
    v7 = v28;
    v1 = v29;
    swift_bridgeObjectRetain_n();
    sub_22F0FF590(v7);
    if (v6 == v4)
    {
      goto LABEL_5;
    }

    __break(1u);
  }

  v5 = MEMORY[0x277D84F90];
LABEL_5:
  v28 = v5;
  sub_22F1AB0EC(&v28);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v8 = sub_22F740DA0();
  v10 = v9;

  swift_getObjectType();
  swift_getObjectType();
  swift_unknownObjectRetain();
  swift_unknownObjectRetain();
  v11 = sub_22F2D6C28();
  v13 = v12;
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v27 + 8);
  v15 = v28;
  v17 = sub_22F1229E8(v8, v10);
  v18 = *(v15 + 2);
  v19 = (v16 & 1) == 0;
  v20 = v18 + v19;
  if (__OFADD__(v18, v19))
  {
    __break(1u);
    goto LABEL_15;
  }

  v1 = v16;
  if (*(v15 + 3) >= v20)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      goto LABEL_10;
    }

LABEL_15:
    sub_22F136EF0();
    goto LABEL_10;
  }

  sub_22F12A590(v20, isUniquelyReferenced_nonNull_native);
  v21 = sub_22F1229E8(v8, v10);
  if ((v1 & 1) != (v22 & 1))
  {
    sub_22F7420C0();
    __break(1u);
    return;
  }

  v17 = v21;
LABEL_10:
  v23 = v28;
  *(v27 + 8) = v28;
  if (v1)
  {
  }

  else
  {
    sub_22F1534CC();
  }

  v24 = *(v23 + 7);
  v25 = a1;
  v26 = swift_isUniquelyReferenced_nonNull_native();
  v28 = *(v24 + 8 * v17);
  *(v24 + 8 * v17) = 0x8000000000000000;
  sub_22F131F98(v25, v11, v13, v26);

  *(v24 + 8 * v17) = v28;
}

uint64_t sub_22F2D657C(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = sub_22F2D5DEC(a1, sub_22F2B493C);
  v5 = sub_22F1515F8(v4);

  v6 = *(v5 + 16);
  if (v6)
  {
    v20 = a2;
    v7 = sub_22F10B348(v6, 0);
    v8 = sub_22F11A438(&v21, v7 + 4, v6, v5);
    v9 = v21;

    sub_22F0FF590(v9);
    if (v8 != v6)
    {
      __break(1u);
      goto LABEL_14;
    }

    a2 = v20;
  }

  else
  {
    v7 = MEMORY[0x277D84F90];
  }

  v21 = v7;
  sub_22F1AB0EC(&v21);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v10 = sub_22F740DA0();
  v12 = v11;

  if (*(a2 + 16))
  {
    v13 = sub_22F1229E8(v10, v12);
    v15 = v14;

    if (v15)
    {
      v16 = *(*(a2 + 56) + 8 * v13);

      v3 = *(v16 + 16);
      if (!v3)
      {
LABEL_8:

        return MEMORY[0x277D84F90];
      }

      goto LABEL_11;
    }
  }

  else
  {
  }

  v3 = *(MEMORY[0x277D84F98] + 16);
  if (!v3)
  {
    goto LABEL_8;
  }

LABEL_11:
  v17 = sub_22F120B48();
  v18 = sub_22F120B44();
  sub_22F0FF590(v21);
  if (v18 == v3)
  {
    return v17;
  }

LABEL_14:
  __break(1u);

  __break(1u);
  return result;
}

id sub_22F2D67A0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F2D5DEC(a1, sub_22F2B493C);
  v6 = sub_22F1515F8(v5);

  v7 = *(v6 + 16);
  if (!v7)
  {
    v8 = MEMORY[0x277D84F90];
    goto LABEL_5;
  }

  v8 = sub_22F10B348(v7, 0);
  v9 = sub_22F11A438(&v24, v8 + 4, v7, v6);
  v10 = v24;

  sub_22F0FF590(v10);
  if (v9 == v7)
  {
LABEL_5:
    v24 = v8;
    sub_22F1AB0EC(&v24);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F15A2C0();
    v11 = sub_22F740DA0();
    v13 = v12;

    if (*(a4 + 16))
    {
      v14 = sub_22F1229E8(v11, v13);
      v16 = v15;

      if ((v16 & 1) == 0)
      {
        return 0;
      }

      v17 = *(*(a4 + 56) + 8 * v14);
      if (!*(v17 + 16))
      {
        return 0;
      }

      v18 = sub_22F1229E8(a2, a3);
      if (v19)
      {
        v20 = *(*(v17 + 56) + 8 * v18);

        return v20;
      }
    }

    return 0;
  }

  __break(1u);

  __break(1u);
  return result;
}

id sub_22F2D6994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = sub_22F2D5DEC(a1, sub_22F2897A0);
  v6 = sub_22F1515F8(v5);

  v7 = *(v6 + 16);
  if (v7)
  {
    v31 = a4;
    v8 = sub_22F10B348(v7, 0);
    v9 = sub_22F11A438(&v32, v8 + 4, v7, v6);
    v10 = v32;

    sub_22F0FF590(v10);
    if (v9 != v7)
    {
      __break(1u);

      __break(1u);
      return result;
    }

    a4 = v31;
  }

  else
  {
    v8 = MEMORY[0x277D84F90];
  }

  v32 = v8;
  sub_22F1AB0EC(&v32);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v11 = sub_22F740DA0();
  v13 = v12;

  v32 = sub_22F2B4BB8();
  v33 = v14;

  MEMORY[0x231900B10](124, 0xE100000000000000);

  v16 = v32;
  v15 = v33;
  v17 = sub_22F2B4BB8();
  v19 = v18;
  v32 = v16;
  v33 = v15;

  MEMORY[0x231900B10](v17, v19);

  v20 = v33;
  if (*(a4 + 16))
  {
    v21 = v32;
    v22 = sub_22F1229E8(v11, v13);
    v24 = v23;

    if (v24)
    {
      v25 = *(*(a4 + 56) + 8 * v22);
      if (*(v25 + 16))
      {

        v26 = sub_22F1229E8(v21, v20);
        v28 = v27;

        if (v28)
        {
          v29 = *(*(v25 + 56) + 8 * v26);

          return v29;
        }
      }
    }
  }

  else
  {
  }

  return 0;
}

uint64_t sub_22F2D6C28()
{
  v4 = sub_22F2B4BB8();

  MEMORY[0x231900B10](124, 0xE100000000000000);

  v0 = sub_22F2B4BB8();
  v2 = v1;

  MEMORY[0x231900B10](v0, v2);

  return v4;
}

uint64_t sub_22F2D6CE0(void *a1, uint64_t a2, unint64_t a3, uint64_t a4, uint64_t a5)
{
  v14[0] = a4;
  v14[1] = a5;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32E0, &qword_22F782DC0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v14 - v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2D7200();
  sub_22F742210();
  v15 = a2;
  v16 = a3;
  v17 = 0;
  sub_22F15C3C4(a2, a3);
  sub_22F15C9A0();
  sub_22F741FE0();
  sub_22F133BF0(v15, v16);
  if (!v5)
  {
    LOBYTE(v15) = 1;
    sub_22F741F80();
  }

  return (*(v10 + 8))(v12, v9);
}

uint64_t sub_22F2D6E7C()
{
  if (*v0)
  {
    return 0x6564496870617267;
  }

  else
  {
    return 1635017060;
  }
}

void sub_22F2D6EBC(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1635017060 && a2 == 0xE400000000000000;
  if (v5 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6564496870617267 && a2 == 0xEF7265696669746ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

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

uint64_t sub_22F2D6FA0(uint64_t a1)
{
  v2 = sub_22F2D7200();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2D6FDC(uint64_t a1)
{
  v2 = sub_22F2D7200();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_22F2D7018@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_22F2D7254(a2);
  if (!v2)
  {
    *a1 = result;
    a1[1] = v5;
    a1[2] = v6;
    a1[3] = v7;
  }

  return result;
}

uint64_t sub_22F2D7068()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_url;
  v2 = sub_22F73F470();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);
  sub_22F20AD9C(*(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 8), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 16), *(v0 + OBJC_IVAR____TtC11PhotosGraph21InputStreamTokenStore_token + 24));
  swift_defaultActor_destroy();

  return MEMORY[0x282200960](v0);
}

uint64_t type metadata accessor for InputStreamTokenStore(uint64_t a1)
{
  result = qword_27DAB32D0;
  if (!qword_27DAB32D0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2D714C(uint64_t a1)
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

unint64_t sub_22F2D7200()
{
  result = qword_27DAB32E8;
  if (!qword_27DAB32E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32E8);
  }

  return result;
}

uint64_t sub_22F2D7254(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB32F0, &qword_22F782DC8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v10 - v5;
  v7 = a1[3];
  __swift_project_boxed_opaque_existential_1(a1, v7);
  sub_22F2D7200();
  sub_22F742200();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    v11 = 0;
    sub_22F15C370();
    sub_22F741F10();
    v7 = v10[0];
    v9 = v10[1];
    LOBYTE(v10[0]) = 1;
    sub_22F741EB0();
    (*(v4 + 8))(v6, v3);
    sub_22F15C3C4(v7, v9);

    __swift_destroy_boxed_opaque_existential_0(a1);
    sub_22F133BF0(v7, v9);
  }

  return v7;
}

unint64_t sub_22F2D7490()
{
  result = qword_27DAB32F8;
  if (!qword_27DAB32F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB32F8);
  }

  return result;
}

unint64_t sub_22F2D74E8()
{
  result = qword_27DAB3300;
  if (!qword_27DAB3300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3300);
  }

  return result;
}

unint64_t sub_22F2D7540()
{
  result = qword_27DAB3308;
  if (!qword_27DAB3308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3308);
  }

  return result;
}

unint64_t sub_22F2D7594(unint64_t a1, unint64_t a2, int64_t a3, uint64_t a4)
{
  v9 = a1;
  if (a1 >> 62)
  {
LABEL_67:
    v56 = a4;
    v10 = sub_22F741A00();
    if (v10 < v56)
    {
LABEL_3:
      v11 = MEMORY[0x277D84F90];
      v67 = a2;
      if (v10)
      {
        v75[0] = MEMORY[0x277D84F90];
        v12 = v75;
        sub_22F146454(0, v10 & ~(v10 >> 63), 0);
        if (v10 < 0)
        {
          __break(1u);
          goto LABEL_85;
        }

        v13 = a3;
        v4 = 0;
        v14 = v75[0];
        do
        {
          if ((v9 & 0xC000000000000001) != 0)
          {
            v15 = MEMORY[0x2319016F0](v4, v9);
          }

          else
          {
            v15 = *(v9 + 8 * v4 + 32);
            swift_unknownObjectRetain();
          }

          v16 = [v15 uid];
          v5 = sub_22F740E20();
          v6 = v17;
          swift_unknownObjectRelease();

          v75[0] = v14;
          v19 = *(v14 + 16);
          v18 = *(v14 + 24);
          if (v19 >= v18 >> 1)
          {
            sub_22F146454((v18 > 1), v19 + 1, 1);
            v14 = v75[0];
          }

          ++v4;
          *(v14 + 16) = v19 + 1;
          v20 = v14 + 16 * v19;
          *(v20 + 32) = v5;
          *(v20 + 40) = v6;
        }

        while (v10 != v4);
        a3 = v13;
        v11 = MEMORY[0x277D84F90];
      }

      else
      {
        v14 = MEMORY[0x277D84F90];
      }

      v74 = sub_22F1515F8(v14);

      v76 = v11;
      v64 = a2 >> 62;
      if (a2 >> 62)
      {
        v21 = sub_22F741A00();
        if (v21)
        {
          goto LABEL_16;
        }
      }

      else
      {
        v21 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v21)
        {
LABEL_16:
          v22 = 0;
          v69 = a2 & 0xFFFFFFFFFFFFFF8;
          v70 = a2 & 0xC000000000000001;
          v68 = v21;
          v73 = v74 + 56;
          v65 = a3;
          v66 = v9;
          while (1)
          {
            if (v70)
            {
              v23 = MEMORY[0x2319016F0](v22, a2);
              v24 = __OFADD__(v22, 1);
              v25 = v22 + 1;
              if (v24)
              {
LABEL_59:
                __break(1u);
LABEL_60:
                v5 = v76;
                goto LABEL_71;
              }
            }

            else
            {
              if (v22 >= *(v69 + 16))
              {
LABEL_66:
                __break(1u);
                goto LABEL_67;
              }

              v23 = swift_unknownObjectRetain();
              v24 = __OFADD__(v22, 1);
              v25 = v22 + 1;
              if (v24)
              {
                goto LABEL_59;
              }
            }

            v71 = v25;
            v72 = v23;
            v26 = [v23 uid];
            v27 = sub_22F740E20();
            v29 = v28;

            if (*(v74 + 16) && (sub_22F742170(), sub_22F740D60(), v30 = sub_22F7421D0(), v31 = -1 << *(v74 + 32), v32 = v30 & ~v31, ((*(v73 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) != 0))
            {
              v33 = ~v31;
              while (1)
              {
                v34 = (*(v74 + 48) + 16 * v32);
                v35 = *v34 == v27 && v34[1] == v29;
                if (v35 || (sub_22F742040() & 1) != 0)
                {
                  break;
                }

                v32 = (v32 + 1) & v33;
                if (((*(v73 + ((v32 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v32) & 1) == 0)
                {
                  goto LABEL_32;
                }
              }

              swift_unknownObjectRelease();
            }

            else
            {
LABEL_32:

              v36 = [v72 weightedKeywords];
              sub_22F170D8C();
              a2 = sub_22F740CA0();

              v37 = 1 << *(a2 + 32);
              if (v37 < 64)
              {
                v38 = ~(-1 << v37);
              }

              else
              {
                v38 = -1;
              }

              v9 = v38 & *(a2 + 64);
              a3 = (v37 + 63) >> 6;

              v39 = 0;
              v40 = MEMORY[0x277D84F90];
              while (v9)
              {
LABEL_42:
                v42 = (*(a2 + 48) + ((v39 << 10) | (16 * __clz(__rbit64(v9)))));
                v44 = *v42;
                v43 = v42[1];
                v75[0] = v44;
                v75[1] = v43;
                sub_22F160DE4();
                v45 = sub_22F7418B0();
                v46 = *(v45 + 16);
                v4 = *(v40 + 2);
                v6 = (v4 + v46);
                if (__OFADD__(v4, v46))
                {
LABEL_62:
                  __break(1u);
LABEL_63:
                  __break(1u);
LABEL_64:
                  __break(1u);
LABEL_65:
                  __break(1u);
                  goto LABEL_66;
                }

                v5 = v45;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                if ((isUniquelyReferenced_nonNull_native & 1) == 0 || v6 > *(v40 + 3) >> 1)
                {
                  if (v4 <= v6)
                  {
                    v48 = v4 + v46;
                  }

                  else
                  {
                    v48 = v4;
                  }

                  v40 = sub_22F13E1A8(isUniquelyReferenced_nonNull_native, v48, 1, v40);
                }

                v9 &= v9 - 1;
                if (*(v5 + 16))
                {
                  if ((*(v40 + 3) >> 1) - *(v40 + 2) < v46)
                  {
                    goto LABEL_64;
                  }

                  swift_arrayInitWithCopy();

                  if (v46)
                  {
                    v49 = *(v40 + 2);
                    v24 = __OFADD__(v49, v46);
                    v50 = v49 + v46;
                    if (v24)
                    {
                      goto LABEL_65;
                    }

                    *(v40 + 2) = v50;
                  }
                }

                else
                {

                  if (v46)
                  {
                    goto LABEL_63;
                  }
                }
              }

              while (1)
              {
                v41 = v39 + 1;
                if (__OFADD__(v39, 1))
                {
                  __break(1u);
                  goto LABEL_62;
                }

                if (v41 >= a3)
                {
                  break;
                }

                v9 = *(a2 + 64 + 8 * v41);
                ++v39;
                if (v9)
                {
                  v39 = v41;
                  goto LABEL_42;
                }
              }

              v51 = sub_22F1515F8(v40);

              a3 = v65;

              v53 = sub_22F1515F8(v52);

              v54 = sub_22F1ABBB4(v53, v51);

              v55 = v54[2];

              if (v55)
              {
                sub_22F741BA0();
                sub_22F741BE0();
                sub_22F741BF0();
                sub_22F741BB0();
              }

              else
              {
                swift_unknownObjectRelease();
              }

              v9 = v66;
              a2 = v67;
            }

            v22 = v71;
            if (v71 == v68)
            {
              goto LABEL_60;
            }
          }
        }
      }

      v5 = MEMORY[0x277D84F90];
LABEL_71:

      if (qword_2810A9460 != -1)
      {
        swift_once();
      }

      v57 = sub_22F740B90();
      __swift_project_value_buffer(v57, qword_2810B4D90);
      swift_retain_n();
      swift_bridgeObjectRetain_n();

      v12 = sub_22F740B70();
      LOBYTE(v10) = sub_22F7415C0();

      if (!os_log_type_enabled(v12, v10))
      {

        swift_bridgeObjectRelease_n();
LABEL_82:
        v75[0] = v9;

        sub_22F144F8C(v5);
        return v75[0];
      }

      v4 = swift_slowAlloc();
      v6 = swift_slowAlloc();
      v75[0] = v6;
      *v4 = 136315650;
      v58 = MEMORY[0x231900D40](a3, MEMORY[0x277D837D0]);
      v60 = sub_22F145F20(v58, v59, v75);

      *(v4 + 4) = v60;
      *(v4 + 12) = 2048;
      if ((v5 & 0x8000000000000000) == 0 && (v5 & 0x4000000000000000) == 0)
      {
        v61 = *(v5 + 16);
LABEL_77:

        *(v4 + 14) = v61;

        *(v4 + 22) = 2048;
        if (v64)
        {
          v62 = sub_22F741A00();
        }

        else
        {
          v62 = *((v67 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        *(v4 + 24) = v62;

        _os_log_impl(&dword_22F0FC000, v12, v10, "[Flex Keyword Padder] Songs with any keywords from %s found: %ld out of %ld", v4, 0x20u);
        __swift_destroy_boxed_opaque_existential_0(v6);
        MEMORY[0x2319033A0](v6, -1, -1);
        MEMORY[0x2319033A0](v4, -1, -1);

        goto LABEL_82;
      }

LABEL_85:
      v61 = sub_22F741A00();
      goto LABEL_77;
    }
  }

  else
  {
    v10 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v10 < a4)
    {
      goto LABEL_3;
    }
  }

  return v9;
}

id AtHomeOrWorkFeatureExtractor.__allocating_init()()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v5[0] = 0;
  v1 = [objc_allocWithZone(v0) initWithError_];
  if (v1)
  {
    v2 = v5[0];
  }

  else
  {
    v3 = v5[0];
    sub_22F73F370();

    swift_willThrow();
  }

  return v1;
}

id AtHomeOrWorkFeatureExtractor.init()()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = swift_allocObject();
  *(v3 + 16) = 0;
  v4 = swift_allocObject();
  *(v4 + 16) = 0;
  v5 = swift_allocObject();
  v5[2] = v3;
  v5[3] = v4;
  v5[4] = ObjectType;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_22F7707D0;
  *(v6 + 32) = sub_22F740E20();
  *(v6 + 40) = v7;
  *(v6 + 48) = sub_22F740E20();
  *(v6 + 56) = v8;
  *(v6 + 64) = sub_22F740E20();
  *(v6 + 72) = v9;

  v10 = @"AtHomeOrWork";
  v11 = sub_22F741160();

  sub_22F120634(0, &qword_2810A90E0, off_27887B100);
  v13 = [swift_getObjCClassFromMetadata(v12) filter];
  v14 = [v13 relation];

  aBlock[4] = sub_22F2D83C4;
  aBlock[5] = v5;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_22F2D83D0;
  aBlock[3] = &block_descriptor_23;
  v15 = _Block_copy(aBlock);

  v18.receiver = v1;
  v18.super_class = ObjectType;
  v16 = objc_msgSendSuper2(&v18, sel_initWithName_featureNames_relation_labelForTargetBlock_, v10, v11, v14, v15);

  _Block_release(v15);

  return v16;
}

uint64_t sub_22F2D80AC(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  objc_opt_self();
  v8 = swift_dynamicCastObjCClass();
  if (v8)
  {
    v9 = v8;
    swift_beginAccess();
    if (*(a3 + 16) && (swift_beginAccess(), *(a4 + 16)))
    {
      v10 = a1;
    }

    else
    {
      v11 = a1;
      if ([v9 graph])
      {
        objc_opt_self();
        v12 = swift_dynamicCastObjCClass();
        if (v12)
        {
          v13 = v12;
          v14 = sub_22F2D8708(v12);
          swift_beginAccess();
          v15 = *(a3 + 16);
          *(a3 + 16) = v14;

          v24 = sub_22F2D8A00(v13);
          swift_unknownObjectRelease();
          swift_beginAccess();
          v25 = *(a4 + 16);
          *(a4 + 16) = v24;
        }

        else
        {
          swift_unknownObjectRelease();
        }
      }
    }

    swift_beginAccess();
    v17 = *(a3 + 16);
    if (v17)
    {
      v18 = v17;
      if ([v18 containsNode_])
      {
        v19 = sub_22F740E20();

        return v19;
      }
    }

    swift_beginAccess();
    v20 = *(a4 + 16);
    if (v20)
    {
      v21 = v20;
      if ([v21 containsNode_])
      {
        v22 = sub_22F740E20();

        return v22;
      }
    }

    v19 = sub_22F740E20();

    return v19;
  }

  if (a2)
  {
    sub_22F2D86B4();
    v16 = swift_allocError();
    *a2 = sub_22F73F360();
  }

  return 0;
}

id sub_22F2D83D0(uint64_t a1, void *a2)
{
  v3 = *(a1 + 32);

  v4 = a2;
  v3();
  v6 = v5;

  if (v6)
  {
    v7 = sub_22F740DF0();
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

uint64_t block_copy_helper_23(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

id AtHomeOrWorkFeatureExtractor.__allocating_init(name:featureNames:relation:labelForTargetBlock:)(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  if (a2)
  {
    v11 = sub_22F740DF0();
  }

  else
  {
    v11 = 0;
  }

  v12 = objc_allocWithZone(v7);
  v13 = sub_22F741160();

  v17[4] = a5;
  v17[5] = a6;
  v17[0] = MEMORY[0x277D85DD0];
  v17[1] = 1107296256;
  v17[2] = sub_22F2D83D0;
  v17[3] = &block_descriptor_7;
  v14 = _Block_copy(v17);
  v15 = [v12 initWithName:v11 featureNames:v13 relation:a4 labelForTargetBlock:v14];

  _Block_release(v14);

  return v15;
}

id AtHomeOrWorkFeatureExtractor.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_22F2D86B4()
{
  result = qword_27DAB3310;
  if (!qword_27DAB3310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3310);
  }

  return result;
}

id sub_22F2D8708(void *a1)
{
  v1 = [a1 meNodeCollection];
  v2 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F782F40;
  sub_22F120634(0, &qword_27DAB3318, off_27887AF38);
  v5 = [swift_getObjCClassFromMetadata(v4) filter];
  v6 = [v5 inRelation];

  *(v3 + 32) = v6;
  *(v3 + 40) = [objc_opt_self() addressOfHomeWork];
  *(v3 + 48) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v7 = sub_22F741160();

  v8 = [v2 chain_];

  v9 = v1;
  v10 = v8;
  v11 = [objc_msgSend(v9 graph)];
  swift_unknownObjectRelease();
  v12 = [v11 concreteGraph];

  if (v12)
  {
    v13 = [v9 elementIdentifiers];
    v14 = [v12 adjacencyWithSources:v13 relation:v10];

    v15 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v16 = [v14 targets];
    v17 = [v15 initWithGraph:v12 elementIdentifiers:v16];
    swift_unknownObjectRelease();

    return v17;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

id sub_22F2D8A00(uint64_t a1)
{
  sub_22F120634(0, &qword_2810A8F90, off_27887AE30);
  v3 = [swift_getObjCClassFromMetadata(v2) nodesInGraph_];
  v4 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_22F771350;
  *(v5 + 32) = [objc_opt_self() addressOfHomeWork];
  *(v5 + 40) = [objc_opt_self() momentOfAddress];
  sub_22F120634(0, &qword_2810A9218, 0x277D22C90);
  v6 = sub_22F741160();

  v7 = [v4 chain_];

  v8 = v3;
  v9 = v7;
  v10 = [objc_msgSend(v8 graph)];
  swift_unknownObjectRelease();
  v11 = [v10 concreteGraph];

  if (v11)
  {
    v12 = [v8 elementIdentifiers];
    v13 = [v11 adjacencyWithSources:v12 relation:v9];

    v14 = objc_allocWithZone(PGGraphMomentNodeCollection);
    v15 = [v13 targets];
    v16 = [v14 initWithGraph:v11 elementIdentifiers:v15];
    swift_unknownObjectRelease();

    return v16;
  }

  else
  {
    result = sub_22F741D40();
    __break(1u);
  }

  return result;
}

unint64_t sub_22F2D8CDC()
{
  result = qword_27DAB3320;
  if (!qword_27DAB3320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3320);
  }

  return result;
}

uint64_t MusicCache.songsForMemoryDisplayCached(before:progressReporter:)(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_22F770DF0;
  *(v2 + 56) = MEMORY[0x277D837D0];
  *(v2 + 64) = sub_22F153470();
  *(v2 + 32) = 0x7461446568636163;
  *(v2 + 40) = 0xE900000000000065;
  v3 = sub_22F73F5B0();
  *(v2 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v2 + 104) = sub_22F15FD58();
  *(v2 + 72) = v3;
  v4 = sub_22F741560();
  sub_22F2DA3D8(v4);
  v6 = v5;

  return v6;
}

void MusicCache.evictSongsForMemoryDisplay(before:progressReporter:)(uint64_t a1)
{
  v4 = sub_22F740AD0();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v15 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v8 = *(v5 + 8);
  v8(v7, v4);
  sub_22F741690();
  if (!v2)
  {
    v9 = sub_22F7416D0();
    v15[1] = v15;
    MEMORY[0x28223BE20](v9);
    v15[-6] = a1;
    v15[-5] = v10;
    v11 = v10;
    v15[-4] = v1;
    v15[-3] = v12;
    v16 = v12;
    v14 = v13;
    v15[-2] = v13;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v8(v7, v4);
  }
}

void MusicCache.removeAllSongsForMemoryDisplay(progressReporter:)()
{
  v1 = sub_22F740AD0();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v5 = *(v2 + 8);
  v5(v4, v1);
  sub_22F741690();
  if (!v0)
  {
    v16 = 0;
    v6 = sub_22F7416D0();
    v8 = v7;
    v10 = v9;
    v17 = &v15;
    MEMORY[0x28223BE20](v6);
    *(&v15 - 6) = 0;
    *(&v15 - 5) = v11;
    *(&v15 - 4) = v12;
    *(&v15 - 3) = v8;
    *(&v15 - 2) = v13;
    v14 = v16;
    sub_22F7417A0();

    if (!v14)
    {
      sub_22F741730();
      sub_22F740AC0();
      sub_22F740A90();
      v5(v4, v1);
    }
  }
}

uint64_t MusicCache.readSongsForMemoryDisplay(with:progressReporter:)(uint64_t a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  *(v3 + 64) = sub_22F153470();
  *(v3 + 32) = 0x44496D616461;
  *(v3 + 40) = 0xE600000000000000;
  *(v3 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v3 + 104) = sub_22F25F050();
  *(v3 + 72) = a1;

  v4 = sub_22F741560();
  sub_22F2DA3D8(v4);
  v6 = v5;

  return v6;
}

void MusicCache.writeMemoryDisplay(songs:date:progressReporter:)(void *a1, void (*a2)(uint64_t, unint64_t))
{
  v4 = v3;
  v5 = v2;
  v51 = a2;
  v7 = type metadata accessor for Song(0);
  v52 = *(v7 - 8);
  MEMORY[0x28223BE20](v7 - 8);
  v55 = &v42 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v54 = (&v42 - v10);
  v11 = sub_22F740AD0();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  isUniquelyReferenced_nonNull_native = &v42 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
LABEL_23:
    swift_once();
  }

  v15 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v18 = *(v12 + 8);
  v17 = v12 + 8;
  v16 = v18;
  v18(isUniquelyReferenced_nonNull_native, v11);
  sub_22F741690();
  if (!v4)
  {
    v53 = v15;
    v49 = v5;
    v50 = 0;
    v43 = isUniquelyReferenced_nonNull_native;
    v44 = v17;
    v45 = v11;
    v19 = sub_22F7416D0();
    v47 = v20;
    v48 = v19;
    v46 = v21;
    v5 = a1[2];
    v42 = v16;
    if (v5)
    {
      v4 = a1 + ((*(v52 + 80) + 32) & ~*(v52 + 80));
      a1 = MEMORY[0x277D84F98];
      v22 = v54;
      v52 = *(v52 + 72);
      while (1)
      {
        sub_22F15CAA0(v4, v22);
        v12 = *v22;
        v24 = v22[1];
        sub_22F15CAA0(v22, v55);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v56 = a1;
        v11 = sub_22F1229E8(v12, v24);
        v26 = a1[2];
        v27 = (v25 & 1) == 0;
        v28 = v26 + v27;
        if (__OFADD__(v26, v27))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          goto LABEL_23;
        }

        v29 = v25;
        if (a1[3] >= v28)
        {
          if ((isUniquelyReferenced_nonNull_native & 1) == 0)
          {
            sub_22F134A90();
          }
        }

        else
        {
          sub_22F126640(v28, isUniquelyReferenced_nonNull_native);
          v30 = sub_22F1229E8(v12, v24);
          if ((v29 & 1) != (v31 & 1))
          {
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v11 = v30;
        }

        isUniquelyReferenced_nonNull_native = v53;
        a1 = v56;
        if (v29)
        {
          v23 = v52;
          sub_22F1A2A44(v55, v56[7] + v11 * v52);
        }

        else
        {
          v56[(v11 >> 6) + 8] |= 1 << v11;
          v32 = (a1[6] + 16 * v11);
          *v32 = v12;
          v32[1] = v24;
          v23 = v52;
          sub_22F15CB04(v55, a1[7] + v11 * v52);
          v33 = a1[2];
          v34 = __OFADD__(v33, 1);
          v35 = v33 + 1;
          if (v34)
          {
            goto LABEL_22;
          }

          a1[2] = v35;
        }

        v22 = v54;
        v19 = sub_22F15CBD8(v54);
        v4 += v23;
        if (!--v5)
        {
          goto LABEL_17;
        }
      }
    }

    a1 = MEMORY[0x277D84F98];
LABEL_17:
    MEMORY[0x28223BE20](v19);
    v37 = v47;
    v36 = v48;
    *(&v42 - 6) = a1;
    *(&v42 - 5) = v36;
    v38 = v50;
    *(&v42 - 4) = v51;
    *(&v42 - 3) = v39;
    v40 = v46;
    *(&v42 - 2) = v37;
    *(&v42 - 1) = v40;
    sub_22F7417A0();
    if (v38)
    {
    }

    else
    {

      sub_22F741730();
      v41 = v43;
      sub_22F740AC0();
      sub_22F740A90();

      v42(v41, v45);
    }
  }
}

void sub_22F2D9968(void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v7 = v6;
  v108 = a6;
  v109 = a5;
  v111 = a4;
  v114 = a3;
  v125[5] = *MEMORY[0x277D85DE8];
  v10 = type metadata accessor for Song(0);
  v113 = *(v10 - 8);
  MEMORY[0x28223BE20](v10 - 8);
  v123 = &v108 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v12);
  v112 = &v108 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3328, &qword_22F783030);
  MEMORY[0x28223BE20](v14 - 8);
  v116 = (&v108 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v16);
  v115 = (&v108 - v17);
  v18 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v19 = sub_22F740DF0();

  v110 = [v18 initWithEntityName_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_22F770DF0;
  *(v20 + 56) = MEMORY[0x277D837D0];
  *(v20 + 64) = sub_22F153470();
  *(v20 + 32) = 0x44496D616461;
  *(v20 + 40) = 0xE600000000000000;
  v21 = a1[2];
  v121 = a1;
  if (v21)
  {
    v122 = a2;
    v124 = v6;
    v22 = sub_22F10B348(v21, 0);
    v23 = sub_22F120B3C();
    v24 = v125[0];
    isUniquelyReferenced_nonNull_native = v125[4];

    sub_22F1534EC(v24);
    if (v23 != v21)
    {
      goto LABEL_37;
    }

    v7 = v124;
  }

  else
  {
    v22 = MEMORY[0x277D84F90];
  }

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v20 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v20 + 104) = sub_22F25F050();
  *(v20 + 72) = v22;
  v26 = sub_22F741560();
  v27 = v110;
  [v110 setPredicate_];

  v125[0] = 0;
  v28 = [v27 execute_];
  v29 = v125[0];
  if (!v28)
  {
    v32 = v125[0];
    sub_22F73F370();

    swift_willThrow();
    return;
  }

  v30 = v28;
  type metadata accessor for MemoryDisplaySongEntry();
  isUniquelyReferenced_nonNull_native = sub_22F741180();
  v31 = v29;

  sub_22F7416A0();
  if (v7)
  {

    return;
  }

  v122 = 0;
  sub_22F2146C0(MEMORY[0x277D84F98]);
  a1 = v33;
  if (isUniquelyReferenced_nonNull_native >> 62)
  {
LABEL_38:
    v34 = sub_22F741A00();
    if (v34)
    {
      goto LABEL_11;
    }
  }

  else
  {
    v34 = *((isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v34)
    {
LABEL_11:
      v35 = 0;
      v119 = isUniquelyReferenced_nonNull_native & 0xFFFFFFFFFFFFFF8;
      v120 = isUniquelyReferenced_nonNull_native & 0xC000000000000001;
      v117 = v34;
      v118 = isUniquelyReferenced_nonNull_native;
      do
      {
        if (v120)
        {
          v38 = MEMORY[0x2319016F0](v35, isUniquelyReferenced_nonNull_native);
        }

        else
        {
          if (v35 >= *(v119 + 16))
          {
            goto LABEL_34;
          }

          v38 = *(isUniquelyReferenced_nonNull_native + 8 * v35 + 32);
        }

        v39 = v38;
        isUniquelyReferenced_nonNull_native = v35 + 1;
        if (__OFADD__(v35, 1))
        {
          __break(1u);
LABEL_34:
          __break(1u);
LABEL_35:
          __break(1u);
LABEL_36:
          __break(1u);
LABEL_37:
          __break(1u);
          goto LABEL_38;
        }

        v40 = [v38 adamID];
        v124 = (v35 + 1);
        if (v40)
        {
          v41 = v40;
          v42 = sub_22F740E20();
          v44 = v43;
        }

        else
        {
          v42 = 0;
          v44 = 0;
        }

        v45 = v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v125[0] = a1;
        v47 = sub_22F123310(v42, v44);
        v48 = a1[2];
        v49 = (v46 & 1) == 0;
        v50 = v48 + v49;
        if (__OFADD__(v48, v49))
        {
          goto LABEL_35;
        }

        v51 = v46;
        if (a1[3] >= v50)
        {
          if (isUniquelyReferenced_nonNull_native)
          {
            if (v46)
            {
              goto LABEL_12;
            }
          }

          else
          {
            sub_22F136F04();
            if (v51)
            {
              goto LABEL_12;
            }
          }
        }

        else
        {
          sub_22F12A5A4(v50, isUniquelyReferenced_nonNull_native);
          v52 = sub_22F123310(v42, v44);
          if ((v51 & 1) != (v53 & 1))
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB1048, &qword_22F78B5C0);
            sub_22F7420C0();
            __break(1u);
            return;
          }

          v47 = v52;
          if (v51)
          {
LABEL_12:

            a1 = v125[0];
            v36 = *(v125[0] + 7);
            v37 = *(v36 + 8 * v47);
            *(v36 + 8 * v47) = v45;

            goto LABEL_13;
          }
        }

        a1 = v125[0];
        *(v125[0] + (v47 >> 6) + 8) |= 1 << v47;
        v54 = (a1[6] + 16 * v47);
        *v54 = v42;
        v54[1] = v44;
        *(a1[7] + 8 * v47) = v45;

        v55 = a1[2];
        v56 = __OFADD__(v55, 1);
        v57 = v55 + 1;
        if (v56)
        {
          goto LABEL_36;
        }

        a1[2] = v57;
LABEL_13:
        ++v35;
        isUniquelyReferenced_nonNull_native = v118;
      }

      while (v124 != v117);
    }
  }

  v58 = v121[8];
  v119 = (v121 + 8);
  v59 = 1 << *(v121 + 32);
  v60 = -1;
  if (v59 < 64)
  {
    v60 = ~(-1 << v59);
  }

  v61 = v60 & v58;
  v120 = OBJC_IVAR___PGMusicCache_managedObjectContext;
  v118 = (v59 + 63) >> 6;

  v63 = 0;
  v64 = &unk_27DAB3330;
  v65 = &unk_22F783038;
  v124 = a1;
  while (1)
  {
    if (v61)
    {
      v66 = v63;
LABEL_52:
      v69 = __clz(__rbit64(v61));
      v61 &= v61 - 1;
      v70 = v69 | (v66 << 6);
      v71 = (*(v62 + 48) + 16 * v70);
      v73 = *v71;
      v72 = v71[1];
      v74 = v112;
      sub_22F15CAA0(*(v62 + 56) + *(v113 + 72) * v70, v112);
      v75 = __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      v76 = *(v75 + 48);
      v77 = v65;
      v78 = v64;
      v79 = v116;
      *v116 = v73;
      v79[1] = v72;
      sub_22F15CB04(v74, v79 + v76);
      (*(*(v75 - 8) + 56))(v79, 0, 1, v75);

      v68 = v66;
      v80 = v79;
      v64 = v78;
      v65 = v77;
      a1 = v124;
    }

    else
    {
      v67 = v118 <= v63 + 1 ? v63 + 1 : v118;
      v68 = v67 - 1;
      while (1)
      {
        v66 = v63 + 1;
        if (__OFADD__(v63, 1))
        {
          __break(1u);
        }

        if (v66 >= v118)
        {
          break;
        }

        v61 = *(v119 + 8 * v66);
        ++v63;
        if (v61)
        {
          goto LABEL_52;
        }
      }

      v95 = __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
      v96 = v116;
      (*(*(v95 - 8) + 56))(v116, 1, 1, v95);
      v80 = v96;
      v61 = 0;
    }

    v81 = v115;
    sub_22F2DBC84(v80, v115);
    v82 = __swift_instantiateConcreteTypeFromMangledNameV2(v64, v65);
    if ((*(*(v82 - 8) + 48))(v81, 1, v82) == 1)
    {
      break;
    }

    v83 = v81;
    v85 = *v81;
    v84 = v81[1];
    sub_22F15CB04(v83 + *(v82 + 48), v123);
    if (a1[2])
    {
      v86 = sub_22F123310(v85, v84);
      v88 = v87;

      if (v88)
      {
        v89 = *(a1[7] + 8 * v86);
        v91 = v122;
        v90 = v123;
        sub_22F3C3D98(v123);
        v122 = v91;
        if (v91)
        {
          sub_22F15CBD8(v90);

          goto LABEL_69;
        }

        sub_22F15CBD8(v90);

        goto LABEL_42;
      }
    }

    else
    {
    }

    v93 = v122;
    v92 = v123;
    v94 = sub_22F3C4C44(*(v111 + v120), v123, v114);
    v122 = v93;
    if (v93)
    {
      sub_22F15CBD8(v92);

LABEL_69:

      return;
    }

    sub_22F15CBD8(v92);
LABEL_42:
    v63 = v68;
    v62 = v121;
  }

  v97 = v122;
  sub_22F7416A0();
  if (v97)
  {
  }

  else
  {
    v98 = *(v111 + v120);
    v125[0] = 0;
    v99 = [v98 save_];
    v100 = v110;
    if (v99)
    {
      v101 = v125[0];
      sub_22F7416A0();
    }

    else
    {
      v102 = v125[0];
      v103 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v104 = sub_22F7420F0();
      v106 = v105;
      sub_22F1A297C();
      swift_allocError();
      *v107 = v104;
      *(v107 + 8) = v106;
      *(v107 + 16) = 0;
      swift_willThrow();
    }
  }
}

void sub_22F2DA3D8(uint64_t a1)
{
  v3 = sub_22F740AD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  sub_22F740AC0();
  sub_22F740A90();
  v7 = *(v4 + 8);
  v7(v6, v3);
  sub_22F741690();
  if (!v1)
  {
    v14 = MEMORY[0x277D84F90];
    v8 = sub_22F7416B0();
    v10 = v9;
    v12 = &v12;
    MEMORY[0x28223BE20](v8);
    *(&v12 - 4) = a1;
    *(&v12 - 3) = v11;
    v13 = v11;
    *(&v12 - 2) = &v14;
    *(&v12 - 1) = v10;
    sub_22F7417A0();
    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v7(v6, v3);
  }
}

void sub_22F2DA688(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v30[1] = *MEMORY[0x277D85DE8];
  v5 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v6 = sub_22F740DF0();

  v7 = [v5 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_22F770DF0;
  *(v8 + 56) = MEMORY[0x277D837D0];
  *(v8 + 64) = sub_22F153470();
  *(v8 + 32) = 0x7461446568636163;
  *(v8 + 40) = 0xE900000000000065;
  v9 = sub_22F73F5B0();
  *(v8 + 96) = sub_22F120634(0, &qword_2810A8F00, 0x277CBEAA8);
  *(v8 + 104) = sub_22F15FD58();
  *(v8 + 72) = v9;
  v10 = sub_22F741560();
  [v7 setPredicate_];

  v30[0] = 0;
  v11 = [v7 execute_];
  v12 = v30[0];
  if (v11)
  {
    v13 = v11;
    type metadata accessor for MemoryDisplaySongEntry();
    v14 = sub_22F741180();
    v15 = v12;

    sub_22F7416A0();
    if (v3)
    {

      return;
    }

    if (v14 >> 62)
    {
      v17 = sub_22F741A00();
      if (v17)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v17 = *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v17)
      {
LABEL_7:
        if (v17 < 1)
        {
          __break(1u);
        }

        v18 = 0;
        v19 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
        do
        {
          if ((v14 & 0xC000000000000001) != 0)
          {
            v20 = MEMORY[0x2319016F0](v18, v14);
          }

          else
          {
            v20 = *(v14 + 8 * v18 + 32);
          }

          v21 = v20;
          ++v18;
          [v19 deleteObject_];
        }

        while (v17 != v18);
      }
    }

    sub_22F7416A0();
    v22 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v30[0] = 0;
    if ([v22 save_])
    {
      v23 = v30[0];
      sub_22F7416A0();
    }

    else
    {
      v24 = v30[0];
      v25 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v26 = sub_22F7420F0();
      v28 = v27;
      sub_22F1A297C();
      swift_allocError();
      *v29 = v26;
      *(v29 + 8) = v28;
      *(v29 + 16) = 0;
      swift_willThrow();
    }

    goto LABEL_17;
  }

  v16 = v30[0];
  sub_22F73F370();

  swift_willThrow();
LABEL_17:
}

void MusicCache.removeSongsForMemoryDisplay(with:progressReporter:)(uint64_t a1)
{
  v3 = sub_22F740AD0();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v19 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_22F741740();
  if (qword_2810A8E80 != -1)
  {
    swift_once();
  }

  v7 = qword_2810A8E88;
  sub_22F740AC0();
  sub_22F740A90();
  v8 = *(v4 + 8);
  v8(v6, v3);
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  v22 = v3;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F770DF0;
  *(v9 + 56) = MEMORY[0x277D837D0];
  *(v9 + 64) = sub_22F153470();
  *(v9 + 32) = 0x44496D616461;
  *(v9 + 40) = 0xE600000000000000;
  *(v9 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v9 + 104) = sub_22F25F050();
  *(v9 + 72) = a1;

  v10 = sub_22F741560();
  sub_22F741690();
  if (v1)
  {
  }

  else
  {
    v20 = v8;
    v21 = v7;
    v11 = sub_22F7416D0();
    v13 = v12;
    v15 = v14;
    MEMORY[0x28223BE20](v11);
    *(&v19 - 6) = v10;
    *(&v19 - 5) = v16;
    *(&v19 - 4) = v17;
    *(&v19 - 3) = v13;
    *(&v19 - 2) = v18;
    sub_22F7417A0();

    sub_22F741730();
    sub_22F740AC0();
    sub_22F740A90();

    v20(v6, v22);
  }
}

void MusicCache.cacheDates(for:progressReporter:)(uint64_t a1)
{
  sub_22F741690();
  if (!v1)
  {
    v2 = sub_22F7416B0();
    v4 = v3;
    MEMORY[0x28223BE20](v2);
    sub_22F7417A0();
  }
}

void sub_22F2DAF0C(uint64_t a1, uint64_t a2, id *a3, uint64_t a4)
{
  v72[1] = *MEMORY[0x277D85DE8];
  v71 = sub_22F73F690();
  v67 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v70 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v69 = &v56 - v10;
  v11 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v12 = sub_22F740DF0();

  v13 = [v11 initWithEntityName_];

  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_22F770DF0;
  *(v14 + 56) = MEMORY[0x277D837D0];
  *(v14 + 64) = sub_22F153470();
  *(v14 + 32) = 0x44496D616461;
  *(v14 + 40) = 0xE600000000000000;
  *(v14 + 96) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v14 + 104) = sub_22F25F050();
  *(v14 + 72) = a1;

  v15 = sub_22F741560();
  [v13 setPredicate_];

  v72[0] = 0;
  v16 = [v13 execute_];
  v17 = v72[0];
  if (!v16)
  {
    v21 = v72[0];
    sub_22F73F370();

    swift_willThrow();
    return;
  }

  v18 = v16;
  type metadata accessor for MemoryDisplaySongEntry();
  v19 = sub_22F741180();
  v20 = v17;

  sub_22F7416A0();
  if (v4)
  {

    return;
  }

  v57 = v13;
  v58 = a4;
  v56 = 0;
  v68 = a3;
  if (v19 >> 62)
  {
LABEL_34:
    v22 = sub_22F741A00();
    if (v22)
    {
      goto LABEL_7;
    }

LABEL_35:

    sub_22F7416A0();

    return;
  }

  v22 = *((v19 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v22)
  {
    goto LABEL_35;
  }

LABEL_7:
  v23 = 0;
  v24 = v19 & 0xC000000000000001;
  v60 = v67 + 32;
  v61 = v19 & 0xFFFFFFFFFFFFFF8;
  v65 = v67 + 8;
  v66 = (v67 + 16);
  v59 = v67 + 40;
  v63 = v22;
  v64 = v19;
  v62 = v19 & 0xC000000000000001;
  while (1)
  {
    if (v24)
    {
      v25 = MEMORY[0x2319016F0](v23, v19);
    }

    else
    {
      if (v23 >= *(v61 + 16))
      {
        goto LABEL_32;
      }

      v25 = *(v19 + 8 * v23 + 32);
    }

    v26 = v25;
    v27 = v23 + 1;
    if (__OFADD__(v23, 1))
    {
      __break(1u);
LABEL_31:
      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      __break(1u);
      goto LABEL_34;
    }

    v28 = [v25 adamID];
    if (!v28)
    {
      goto LABEL_9;
    }

    v29 = v28;
    v30 = sub_22F740E20();
    v32 = v31;

    v33 = [v26 cacheDate];
    if (v33)
    {
      break;
    }

LABEL_9:

LABEL_10:
    ++v23;
    if (v27 == v22)
    {
      goto LABEL_35;
    }
  }

  v34 = v69;
  v35 = v33;
  sub_22F73F640();

  (*v66)(v70, v34, v71);
  v36 = v68;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v72[0] = *v36;
  v38 = v72[0];
  *v36 = 0x8000000000000000;
  v19 = v30;
  v40 = sub_22F1229E8(v30, v32);
  v41 = v38[2];
  v42 = (v39 & 1) == 0;
  v43 = v41 + v42;
  if (__OFADD__(v41, v42))
  {
    goto LABEL_31;
  }

  v44 = v39;
  if (v38[3] >= v43)
  {
    if (isUniquelyReferenced_nonNull_native)
    {
      if ((v39 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    else
    {
      sub_22F134004();
      if ((v44 & 1) == 0)
      {
        goto LABEL_27;
      }
    }

    goto LABEL_25;
  }

  sub_22F125428(v43, isUniquelyReferenced_nonNull_native);
  v45 = sub_22F1229E8(v19, v32);
  if ((v44 & 1) == (v46 & 1))
  {
    v40 = v45;
    if ((v44 & 1) == 0)
    {
LABEL_27:
      v50 = v71;
      v47 = v72[0];
      *(v72[0] + (v40 >> 6) + 8) |= 1 << v40;
      v51 = (v47[6] + 16 * v40);
      *v51 = v19;
      v51[1] = v32;
      v52 = v67;
      (*(v67 + 32))(v47[7] + *(v67 + 72) * v40, v70, v50);

      (*(v52 + 8))(v69, v50);
      v53 = v47[2];
      v54 = __OFADD__(v53, 1);
      v55 = v53 + 1;
      if (v54)
      {
        goto LABEL_33;
      }

      v47[2] = v55;
      goto LABEL_29;
    }

LABEL_25:

    v48 = v71;
    v47 = v72[0];
    v49 = v67;
    (*(v67 + 40))(*(v72[0] + 7) + *(v67 + 72) * v40, v70, v71);

    (*(v49 + 8))(v69, v48);
LABEL_29:
    *v68 = v47;

    v22 = v63;
    v19 = v64;
    v24 = v62;
    goto LABEL_10;
  }

  sub_22F7420C0();
  __break(1u);
}

void sub_22F2DB520(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v28[1] = *MEMORY[0x277D85DE8];
  v6 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v7 = sub_22F740DF0();

  v8 = [v6 initWithEntityName_];

  [v8 setPredicate_];
  v28[0] = 0;
  v9 = [v8 execute_];
  v10 = v28[0];
  if (v9)
  {
    v11 = v9;
    type metadata accessor for MemoryDisplaySongEntry();
    v12 = sub_22F741180();
    v13 = v10;

    sub_22F7416A0();
    if (v3)
    {

      return;
    }

    if (v12 >> 62)
    {
      v15 = sub_22F741A00();
      if (v15)
      {
        goto LABEL_7;
      }
    }

    else
    {
      v15 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v15)
      {
LABEL_7:
        if (v15 < 1)
        {
          __break(1u);
        }

        v16 = 0;
        v17 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
        do
        {
          if ((v12 & 0xC000000000000001) != 0)
          {
            v18 = MEMORY[0x2319016F0](v16, v12);
          }

          else
          {
            v18 = *(v12 + 8 * v16 + 32);
          }

          v19 = v18;
          ++v16;
          [v17 deleteObject_];
        }

        while (v15 != v16);
      }
    }

    sub_22F7416A0();
    v20 = *(a3 + OBJC_IVAR___PGMusicCache_managedObjectContext);
    v28[0] = 0;
    if ([v20 save_])
    {
      v21 = v28[0];
      sub_22F7416A0();
    }

    else
    {
      v22 = v28[0];
      v23 = sub_22F73F370();

      swift_willThrow();
      swift_getErrorValue();
      v24 = sub_22F7420F0();
      v26 = v25;
      sub_22F1A297C();
      swift_allocError();
      *v27 = v24;
      *(v27 + 8) = v26;
      *(v27 + 16) = 0;
      swift_willThrow();
    }

    goto LABEL_17;
  }

  v14 = v28[0];
  sub_22F73F370();

  swift_willThrow();
LABEL_17:
}

void sub_22F2DB848(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v33 = a4;
  v39 = a3;
  v41[1] = *MEMORY[0x277D85DE8];
  v6 = type metadata accessor for Song(0);
  v37 = *(v6 - 8);
  MEMORY[0x28223BE20](v6 - 8);
  v38 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v40 = &v33 - v9;
  v10 = objc_allocWithZone(MEMORY[0x277CBE428]);

  v11 = sub_22F740DF0();

  v12 = [v10 initWithEntityName_];

  [v12 setPredicate_];
  v41[0] = 0;
  v13 = [v12 execute_];
  v14 = v41[0];
  if (v13)
  {
    v15 = v13;
    type metadata accessor for MemoryDisplaySongEntry();
    v16 = sub_22F741180();
    v17 = v14;

    sub_22F7416A0();
    if (v4)
    {

      return;
    }

    if (v16 >> 62)
    {
      goto LABEL_22;
    }

    v19 = *((v16 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
LABEL_7:
      v20 = 0;
      v35 = v16 & 0xFFFFFFFFFFFFFF8;
      v36 = v16 & 0xC000000000000001;
      v34 = v12;
      do
      {
        if (v36)
        {
          v22 = v16;
          v23 = MEMORY[0x2319016F0](v20, v16);
          v21 = v40;
          v16 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_20;
          }
        }

        else
        {
          v21 = v40;
          if (v20 >= *(v35 + 16))
          {
            goto LABEL_21;
          }

          v22 = v16;
          v23 = *(v16 + 8 * v20 + 32);
          v16 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
LABEL_20:
            __break(1u);
LABEL_21:
            __break(1u);
LABEL_22:
            v19 = sub_22F741A00();
            if (!v19)
            {
              break;
            }

            goto LABEL_7;
          }
        }

        sub_22F3C428C(v21);
        sub_22F15CAA0(v21, v38);
        v24 = v39;
        v25 = *v39;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v24 = v25;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v25 = sub_22F13E558(0, v25[2] + 1, 1, v25);
          *v39 = v25;
        }

        v28 = v25[2];
        v27 = v25[3];
        if (v28 >= v27 >> 1)
        {
          v32 = sub_22F13E558((v27 > 1), v28 + 1, 1, v25);
          *v39 = v32;
        }

        sub_22F15CBD8(v40);
        v29 = v38;
        v30 = *v39;
        *(v30 + 16) = v28 + 1;
        sub_22F15CB04(v29, v30 + ((*(v37 + 80) + 32) & ~*(v37 + 80)) + *(v37 + 72) * v28);
        ++v20;
        v31 = v16 == v19;
        v12 = v34;
        v16 = v22;
      }

      while (!v31);
    }

    sub_22F7416A0();
  }

  else
  {
    v18 = v41[0];
    sub_22F73F370();

    swift_willThrow();
  }
}

uint64_t sub_22F2DBC84(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB3328, &qword_22F783030);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_22F2DBD2C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2DBD94()
{
  swift_beginAccess();

  return result;
}

double sub_22F2DBDDC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

uint64_t sub_22F2DBE94()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_22F2DBED8(char a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

double sub_22F2DBF88(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  *(v3 + v4) = v2;

  return result;
}

double sub_22F2DBFF0()
{
  swift_beginAccess();

  return result;
}

double sub_22F2DC038(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

unint64_t sub_22F2DC0F0(unsigned __int8 *a1, void *a2)
{
  v3 = v2;
  v78 = *v3;
  v71 = sub_22F740460();
  v70 = *(v71 - 8);
  MEMORY[0x28223BE20](v71);
  v69 = &v66 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0920, &qword_22F770B20);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v66 - v8;
  v10 = sub_22F740560();
  v75 = *(v10 - 8);
  v76 = v10;
  MEMORY[0x28223BE20](v10);
  v77 = &v66 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_22F73F990();
  v73 = *(v12 - 8);
  v74 = v12;
  MEMORY[0x28223BE20](v12);
  v72 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v84 = sub_22F73F9B0();
  v81 = *(v84 - 8);
  MEMORY[0x28223BE20](v84);
  v15 = &v66 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = sub_22F73F690();
  v85 = *(v87 - 8);
  MEMORY[0x28223BE20](v87);
  v17 = &v66 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB40E0, &unk_22F779200);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v66 - v19;
  v21 = sub_22F73F090();
  v82 = *(v21 - 8);
  v83 = v21;
  MEMORY[0x28223BE20](v21);
  v86 = &v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v80 = *a1;
  *(v3 + 16) = 1;
  sub_22F740B80();
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup) = 0;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_futureLookupResults) = 0;
  v68 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults;
  *(v3 + OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_triggerResults) = MEMORY[0x277D84F90];
  v23 = a2[3];
  v24 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v23);
  v25 = (*(v24 + 16))(v23, v24);
  v88 = a2;
  if (!v25)
  {
    v29 = sub_22F740B70();
    v30 = sub_22F7415C0();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      v32 = swift_slowAlloc();
      v89[0] = v32;
      *v31 = 136315138;
      v33 = sub_22F742240();
      v35 = sub_22F145F20(v33, v34, v89);

      *(v31 + 4) = v35;
      _os_log_impl(&dword_22F0FC000, v29, v30, "GraphWorkingContext not available. Skipping %s trigger", v31, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v32);
      MEMORY[0x2319033A0](v32, -1, -1);
      MEMORY[0x2319033A0](v31, -1, -1);
    }

    v28 = v88;
    goto LABEL_21;
  }

  v79 = v25;
  v67 = v3;
  v26 = a2[3];
  v27 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v26);
  (*(v27 + 8))(v26, v27);
  sub_22F73F970();
  v28 = a2;
  if (v80)
  {
    sub_22F73F890();
  }

  else
  {
    v37 = v72;
    v36 = v73;
    v38 = v74;
    (*(v73 + 104))(v72, *MEMORY[0x277CC9940], v74);
    sub_22F73F8C0();
    (*(v36 + 8))(v37, v38);
  }

  v40 = v82;
  v39 = v83;
  v41 = v85;
  (*(v81 + 8))(v15, v84);
  (*(v41 + 1))(v17, v87);
  if ((*(v40 + 48))(v20, 1, v39) == 1)
  {

    sub_22F120ADC(v20, &qword_27DAB40E0, &unk_22F779200);
    v3 = v67;
LABEL_21:
    __swift_destroy_boxed_opaque_existential_0(v28);
    return v3;
  }

  v42 = v86;
  (*(v40 + 32))(v86, v20, v39);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E68, &qword_22F771210);
  v43 = (*(v40 + 80) + 32) & ~*(v40 + 80);
  v44 = swift_allocObject();
  *(v44 + 16) = xmmword_22F771340;
  v45 = (*(v40 + 16))(v44 + v43, v42, v39);
  MEMORY[0x28223BE20](v45);
  v46 = v79;
  *(&v66 - 2) = v44;
  *(&v66 - 1) = v46;
  sub_22F2A1FCC(sub_22F2DD0BC, (&v66 - 4));

  v28 = v88;
  v47 = v88[3];
  v48 = v88[4];
  __swift_project_boxed_opaque_existential_1(v88, v47);
  (*(v48 + 24))(v47, v48);
  (*(v75 + 104))(v77, *MEMORY[0x277D3C570], v76);
  sub_22F740570();
  swift_allocObject();
  v49 = sub_22F740550();
  sub_22F740230();
  v50 = sub_22F740210();

  v90 = MEMORY[0x277D84F90];
  v85 = v50;
  result = [v50 count];
  if ((result & 0x8000000000000000) == 0)
  {
    v52 = result;
    v81 = v49;
    if (result)
    {
      v53 = 0;
      v84 = MEMORY[0x277D84F90];
      v54 = (v41 + 56);
      do
      {
        v55 = objc_autoreleasePoolPush();
        v56 = [v85 objectAtIndexedSubscript_];
        v58 = v28[3];
        v57 = v28[4];
        __swift_project_boxed_opaque_existential_1(v28, v58);
        sub_22F73F060();
        (*v54)(v9, 0, 1, v87);
        v59 = CurationPlannerContext.isValidSocialGroupForElection(_:after:)(v56, v9, v58, v57);
        sub_22F120ADC(v9, &qword_27DAB0920, &qword_22F770B20);
        if (v59)
        {
          v60 = v56;
          MEMORY[0x231900D00]();
          v28 = v88;
          if (*((v90 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v90 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_22F7411C0();
            v28 = v88;
          }

          sub_22F741220();

          v84 = v90;
        }

        else
        {

          v28 = v88;
        }

        ++v53;
        objc_autoreleasePoolPop(v55);
      }

      while (v52 != v53);
    }

    else
    {
      v84 = MEMORY[0x277D84F90];
    }

    v61 = v70;
    v62 = v69;
    v63 = v71;
    (*(v70 + 104))(v69, *MEMORY[0x277D3C438], v71);
    v64 = static CollectionTrigger.generateTriggerResults(from:type:)(v84, v62);

    (*(v61 + 8))(v62, v63);
    (*(v82 + 8))(v86, v83);
    v3 = v67;
    v65 = v68;
    swift_beginAccess();
    *(v3 + v65) = v64;

    goto LABEL_21;
  }

  __break(1u);
  return result;
}

uint64_t RecentSocialGroups.deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return v0;
}

uint64_t RecentSocialGroups.__deallocating_deinit()
{
  v1 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_logger;
  v2 = sub_22F740B90();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

double sub_22F2DCD04()
{
  swift_beginAccess();

  return result;
}

uint64_t sub_22F2DCD50()
{
  v1 = *v0;
  v2 = OBJC_IVAR____TtC11PhotosGraph18RecentSocialGroups_supportsFutureLookup;
  swift_beginAccess();
  return *(v1 + v2);
}

double sub_22F2DCD98()
{
  swift_beginAccess();

  return result;
}

uint64_t type metadata accessor for RecentSocialGroups(uint64_t a1)
{
  result = qword_2810AB0E8;
  if (!qword_2810AB0E8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_22F2DCE38(uint64_t a1)
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

uint64_t sub_22F2DD0C4(uint64_t a1)
{
  v2 = sub_22F2DFE3C();

  return MEMORY[0x28211F4B8](a1, v2);
}

uint64_t sub_22F2DD100(uint64_t a1)
{
  v2 = sub_22F2DFE3C();

  return MEMORY[0x28211F4A8](a1, v2);
}

uint64_t sub_22F2DD160(uint64_t a1)
{
  v2 = sub_22F2DFF40();

  return MEMORY[0x28219CB78](a1, v2);
}

id static SocialGroupCuration.selectKeyFace(for:curationManager:curationContext:)(void *a1, void *a2, void *a3)
{
  if (qword_2810A9BB0 != -1)
  {
    swift_once();
  }

  v6 = qword_2810B4E80;
  *&v7 = CACurrentMediaTime();
  sub_22F1B560C("SocialGroupHelper.selectKeyFace", 31, 2u, v7, 0, v6, v43);
  v8 = objc_autoreleasePoolPush();
  v9 = [a3 photoLibrary];
  sub_22F2DE254(a1, v9);
  v11 = v10;
  v13 = v12;

  if (v13 >> 62)
  {
    if (sub_22F741A00() >= 1)
    {
      goto LABEL_5;
    }
  }

  else if (*((v13 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
  {
LABEL_5:
    v14 = objc_opt_self();
    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v15 = sub_22F741160();
    [v14 prefetchOnAssets:v15 options:13 curationContext:a3];

    v16 = [a3 curationSession];
    v17 = sub_22F741160();
    [v16 prepareAssets_];

    v18 = sub_22F741160();

    sub_22F1515F8(v19);

    v20 = sub_22F741410();

    v21 = *(v11 + 16);

    LOBYTE(v41) = 1;
    v22 = [a2 bestAssetInAssets:v18 forReferencePersonLocalIdentifiers:v20 requiredMinimumNumberOfReferencePersons:v21 forMemories:1 forSocialGroup:1 allowGuestAsset:1 wantsGoodSquareCropScore:v41];

    goto LABEL_8;
  }

  v22 = 0;
LABEL_8:
  objc_autoreleasePoolPop(v8);
  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v23 = sub_22F740B90();
  __swift_project_value_buffer(v23, qword_2810B4D78);
  v24 = a1;
  v25 = sub_22F740B70();
  v26 = sub_22F7415F0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = 1701736302;
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v42 = v29;
    *v28 = 136315394;
    if (v22 && (v30 = [v22 uuid]) != 0)
    {
      v31 = v30;
      v27 = sub_22F740E20();
      v33 = v32;
    }

    else
    {
      v33 = 0xE400000000000000;
    }

    v34 = sub_22F145F20(v27, v33, &v42);

    *(v28 + 4) = v34;
    *(v28 + 12) = 2080;
    v35 = [v24 localIdentifier];
    v36 = sub_22F740E20();
    v38 = v37;

    v39 = sub_22F145F20(v36, v38, &v42);

    *(v28 + 14) = v39;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[keyAsset] selected %s for social group %s", v28, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  sub_22F1B2BBC(v22 == 0);

  return v22;
}

void static SocialGroupCuration.keyAssetUUIDOfSocialGroup(with:candidateAssetUUIDs:photoLibrary:)(uint64_t a1, uint64_t a2, void *a3)
{
  v68 = sub_22F73F470();
  v6 = *(v68 - 8);
  MEMORY[0x28223BE20](v68);
  v8 = &v63 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = [objc_opt_self() graphServicesURLWithPhotoLibrary_];
  sub_22F73F430();

  v10 = objc_allocWithZone(PGCurationManager);
  v67 = v8;
  v11 = sub_22F73F3F0();
  v12 = [v10 initWithPhotoLibrary:a3 cacheURL:v11];

  v13 = [objc_allocWithZone(MEMORY[0x277D3C790]) initWithPhotoLibrary_];
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata(v14);
  v66 = a1;
  v16 = sub_22F741410();
  v17 = [ObjCClassFromMetadata localIdentifiersWithUUIDs_];

  if (!v17)
  {
    __break(1u);
    goto LABEL_32;
  }

  v18 = sub_22F741420();

  v19 = *(v18 + 16);
  v70 = v13;
  if (v19)
  {
    v20 = sub_22F10B348(v19, 0);
    v21 = sub_22F11A438(v69, v20 + 4, v19, v18);
    sub_22F1534EC(v69[0]);
    if (v21 == v19)
    {
      goto LABEL_6;
    }

    __break(1u);
  }

LABEL_6:
  v22 = objc_opt_self();
  v23 = sub_22F741160();

  v24 = [a3 librarySpecificFetchOptions];
  v25 = [v22 fetchPersonsWithLocalIdentifiers:v23 options:v24];

  v26 = [v25 fetchedObjects];
  if (!v26)
  {
    v28 = v12;
    if (qword_2810A9450 == -1)
    {
LABEL_11:
      v32 = sub_22F740B90();
      __swift_project_value_buffer(v32, qword_2810B4D78);

      v33 = sub_22F740B70();
      v34 = sub_22F7415E0();

      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        v36 = swift_slowAlloc();
        v69[0] = v36;
        *v35 = 136315138;
        v37 = sub_22F741430();
        v39 = sub_22F145F20(v37, v38, v69);

        *(v35 + 4) = v39;
        _os_log_impl(&dword_22F0FC000, v33, v34, "Failed to fetch persons with identifiers: %s", v35, 0xCu);
        __swift_destroy_boxed_opaque_existential_0(v36);
        MEMORY[0x2319033A0](v36, -1, -1);
        MEMORY[0x2319033A0](v35, -1, -1);
      }

      v40 = v67;
      v41 = v70;
      goto LABEL_28;
    }

LABEL_30:
    swift_once();
    goto LABEL_11;
  }

  v27 = sub_22F741180();

  v28 = *(a2 + 16);
  if (!v28)
  {
    goto LABEL_14;
  }

  v64 = v12;
  v65 = v6;
  v29 = sub_22F10B348(v28, 0);
  v30 = sub_22F11A438(v69, v29 + 4, v28, a2);
  v31 = v69[0];
  v6 = v69[4];

  sub_22F1534EC(v31);
  if (v30 != v28)
  {
    __break(1u);
    goto LABEL_30;
  }

  v12 = v64;
  v6 = v65;
LABEL_14:
  v42 = objc_opt_self();
  v43 = sub_22F741160();

  v44 = [a3 librarySpecificFetchOptions];
  v45 = [v42 fetchAssetsWithUUIDs:v43 options:v44];

  if (v45)
  {
    v46 = [v45 fetchedObjects];

    v41 = v70;
    if (v46)
    {
      sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
      v47 = sub_22F741180();

      v48 = _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(v27, v47, v12, v41);

      if (v48)
      {
        v49 = [v48 pl_uuid];
        sub_22F740E20();

        (*(v6 + 8))(v67, v68);
        return;
      }

      v28 = v12;
      if (qword_2810A9450 != -1)
      {
        swift_once();
      }

      v59 = sub_22F740B90();
      __swift_project_value_buffer(v59, qword_2810B4D78);

      v51 = sub_22F740B70();
      v52 = sub_22F7415E0();

      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_27;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v60 = sub_22F741430();
      v62 = sub_22F145F20(v60, v61, v69);
      v41 = v70;

      *(v53 + 4) = v62;
      v58 = "No key asset candidate for social group with personUUIDs: %s";
    }

    else
    {
      v28 = v12;

      if (qword_2810A9450 != -1)
      {
        swift_once();
      }

      v50 = sub_22F740B90();
      __swift_project_value_buffer(v50, qword_2810B4D78);

      v51 = sub_22F740B70();
      v52 = sub_22F7415E0();

      if (!os_log_type_enabled(v51, v52))
      {
        goto LABEL_27;
      }

      v53 = swift_slowAlloc();
      v54 = swift_slowAlloc();
      v69[0] = v54;
      *v53 = 136315138;
      v55 = sub_22F741430();
      v57 = sub_22F145F20(v55, v56, v69);
      v41 = v70;

      *(v53 + 4) = v57;
      v58 = "Failed to fetch candidate assets for persons with identifiers: %s";
    }

    _os_log_impl(&dword_22F0FC000, v51, v52, v58, v53, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v54);
    MEMORY[0x2319033A0](v54, -1, -1);
    MEMORY[0x2319033A0](v53, -1, -1);
LABEL_27:

    v40 = v67;
LABEL_28:
    sub_22F2DECDC();
    swift_allocError();
    swift_willThrow();

    (*(v6 + 8))(v40, v68);
    return;
  }

LABEL_32:
  __break(1u);
}

id SocialGroupCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SocialGroupCuration.init()()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_init);
}

id SocialGroupCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_22F2DDF84(void *a1, uint64_t a2, char a3)
{
  result = [a1 photoLibrary];
  if (result)
  {
    v7 = result;
    v8 = [result librarySpecificFetchOptions];

    v9 = [objc_opt_self() assetPropertySetsForCuration];
    if (!v9)
    {
      sub_22F741180();
      v9 = sub_22F741160();
    }

    [v8 setFetchPropertySets_];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_22F771350;
    v11 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v12 = sub_22F740DF0();
    v13 = [v11 initWithKey:v12 ascending:0];

    *(v10 + 32) = v13;
    v14 = objc_allocWithZone(MEMORY[0x277CCAC98]);
    v15 = sub_22F740DF0();
    v16 = [v14 initWithKey:v15 ascending:1];

    *(v10 + 40) = v16;
    sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
    v17 = sub_22F741160();

    [v8 setSortDescriptors_];

    [v8 setFetchLimit_];
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_22F771EB0;
    *(v18 + 32) = [a1 exclusiveAssetInternalPredicateWithPeopleCount:a2 exactCount:a3 & 1];
    sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
    v19 = sub_22F741160();

    v20 = [objc_opt_self() andPredicateWithSubpredicates_];

    [v8 setInternalPredicate_];
    return v8;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_22F2DE254(void *a1, id a2)
{
  v3 = [a2 librarySpecificFetchOptions];
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DAB1110, &unk_22F771270);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_22F771340;
  *(v4 + 32) = sub_22F740E20();
  *(v4 + 40) = v5;
  v6 = sub_22F741160();

  [v3 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_22F771350;
  *(v7 + 32) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  *(v7 + 40) = [objc_allocWithZone(MEMORY[0x277CCABB0]) initWithShort_];
  sub_22F120634(0, &qword_2810A8ED0, 0x277CCABB0);
  v8 = sub_22F741160();

  [v3 setIncludedDetectionTypes_];

  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F782F40;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:1];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:0];

  *(v9 + 40) = v15;
  v16 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v17 = sub_22F740DF0();
  v18 = [v16 initWithKey:v17 ascending:1];

  *(v9 + 48) = v18;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v19 = sub_22F741160();

  [v3 setSortDescriptors_];

  v20 = [objc_opt_self() fetchPersonsInSocialGroup:a1 option:v3];
  v21 = [v20 fetchedObjects];
  if (!v21)
  {
    goto LABEL_34;
  }

  v22 = v21;
  sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v23 = sub_22F741180();
  v24 = v23;
  v25 = v23 >> 62;
  if (!(v23 >> 62))
  {
    v26 = *((v23 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v26 >= 1)
    {
      goto LABEL_4;
    }

    goto LABEL_33;
  }

  v26 = sub_22F741A00();
  if (v26 < 1)
  {
LABEL_33:

LABEL_34:
    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v71 = sub_22F740B90();
    __swift_project_value_buffer(v71, qword_2810B4D78);
    v72 = a1;
    v46 = sub_22F740B70();
    v73 = sub_22F7415E0();

    if (os_log_type_enabled(v46, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v86 = v75;
      *v74 = 136315138;
      v76 = [v72 localIdentifier];
      v77 = sub_22F740E20();
      v79 = v78;

      v80 = sub_22F145F20(v77, v79, &v86);

      *(v74 + 4) = v80;
      _os_log_impl(&dword_22F0FC000, v46, v73, "[keyAsset] No members for social group %s", v74, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v75);
      MEMORY[0x2319033A0](v75, -1, -1);
      MEMORY[0x2319033A0](v74, -1, -1);

      return;
    }

    goto LABEL_39;
  }

LABEL_4:
  v82 = v25;
  v84 = v3;
  v27 = sub_22F2DDF84(a1, v26, 1);
  v28 = objc_opt_self();
  v85 = v27;
  v29 = [v28 fetchAssetsContainingAllPersons:v22 options:v27];
  if (!v29)
  {

    __break(1u);
    goto LABEL_42;
  }

  v30 = v29;
  if ([v29 count])
  {
    goto LABEL_8;
  }

  v31 = sub_22F2DDF84(a1, v26, 0);

  v32 = [v28 fetchAssetsContainingAllPersons:v22 options:v31];
  if (!v32)
  {
LABEL_42:
    __break(1u);
    return;
  }

  v22 = v30;
  v85 = v31;
  v30 = v32;
LABEL_8:

  v83 = v30;
  v33 = [v30 fetchedObjects];
  if (!v33)
  {

    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v44 = sub_22F740B90();
    __swift_project_value_buffer(v44, qword_2810B4D78);
    v45 = a1;
    v46 = sub_22F740B70();
    v47 = sub_22F7415E0();

    if (os_log_type_enabled(v46, v47))
    {
      v48 = swift_slowAlloc();
      v49 = swift_slowAlloc();
      v86 = v49;
      *v48 = 136315138;
      v50 = [v45 localIdentifier];
      v51 = sub_22F740E20();
      v53 = v52;

      v54 = sub_22F145F20(v51, v53, &v86);

      *(v48 + 4) = v54;
      _os_log_impl(&dword_22F0FC000, v46, v47, "[keyAsset] No candidate assets for social group %s", v48, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v49);
      MEMORY[0x2319033A0](v49, -1, -1);
      MEMORY[0x2319033A0](v48, -1, -1);

      return;
    }

LABEL_39:
    return;
  }

  v34 = v33;
  sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
  v35 = sub_22F741180();

  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v36 = sub_22F740B90();
  __swift_project_value_buffer(v36, qword_2810B4D78);

  v37 = v20;
  v38 = a1;
  v39 = sub_22F740B70();
  v40 = sub_22F7415F0();

  if (os_log_type_enabled(v39, v40))
  {
    v41 = swift_slowAlloc();
    v81 = swift_slowAlloc();
    v86 = v81;
    *v41 = 134218754;
    if (v35 >> 62)
    {
      v42 = sub_22F741A00();
    }

    else
    {
      v42 = *((v35 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 4) = v42;

    *(v41 + 12) = 2048;
    if (v82)
    {
      v43 = sub_22F741A00();
    }

    else
    {
      v43 = *((v24 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    *(v41 + 14) = v43;

    *(v41 + 22) = 2048;
    *(v41 + 24) = [v37 count];

    *(v41 + 32) = 2080;
    v55 = [v38 localIdentifier];
    v56 = sub_22F740E20();
    v58 = v57;

    v59 = sub_22F145F20(v56, v58, &v86);

    *(v41 + 34) = v59;
    _os_log_impl(&dword_22F0FC000, v39, v40, "[keyAsset] Found %ld candidates with %ld/%ld members for %s", v41, 0x2Au);
    __swift_destroy_boxed_opaque_existential_0(v81);
    MEMORY[0x2319033A0](v81, -1, -1);
    MEMORY[0x2319033A0](v41, -1, -1);
  }

  else
  {
  }

  v86 = MEMORY[0x277D84F90];
  sub_22F146454(0, v26, 0);
  v60 = 0;
  v61 = v86;
  do
  {
    if ((v24 & 0xC000000000000001) != 0)
    {
      v62 = MEMORY[0x2319016F0](v60, v24);
    }

    else
    {
      v62 = *(v24 + 8 * v60 + 32);
    }

    v63 = v62;
    v64 = [v62 localIdentifier];
    v65 = sub_22F740E20();
    v67 = v66;

    v86 = v61;
    v69 = *(v61 + 16);
    v68 = *(v61 + 24);
    if (v69 >= v68 >> 1)
    {
      sub_22F146454((v68 > 1), v69 + 1, 1);
      v61 = v86;
    }

    ++v60;
    *(v61 + 16) = v69 + 1;
    v70 = v61 + 16 * v69;
    *(v70 + 32) = v65;
    *(v70 + 40) = v67;
  }

  while (v26 != v60);
}

unint64_t sub_22F2DECDC()
{
  result = qword_27DAB3338;
  if (!qword_27DAB3338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3338);
  }

  return result;
}

uint64_t sub_22F2DED30(char a1, uint64_t a2)
{
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_22F770DF0;
  *(v3 + 56) = MEMORY[0x277D837D0];
  v4 = sub_22F153470();
  strcpy((v3 + 32), "detectedFaces");
  *(v3 + 46) = -4864;
  v5 = MEMORY[0x277D83C10];
  *(v3 + 96) = MEMORY[0x277D83B88];
  *(v3 + 104) = v5;
  *(v3 + 64) = v4;
  *(v3 + 72) = a2;
  return sub_22F741560();
}

id sub_22F2DEE2C(unint64_t a1, char a2, id a3, unint64_t a4)
{
  LOBYTE(v5) = a2;
  v7 = [a3 librarySpecificFetchOptions];
  v8 = [objc_opt_self() assetPropertySetsForCuration];
  if (!v8)
  {
    sub_22F741180();
    v8 = sub_22F741160();
  }

  [v7 setFetchPropertySets_];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB13D0, &qword_22F7717F0);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_22F771350;
  v10 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v11 = sub_22F740DF0();
  v12 = [v10 initWithKey:v11 ascending:0];

  *(v9 + 32) = v12;
  v13 = objc_allocWithZone(MEMORY[0x277CCAC98]);
  v14 = sub_22F740DF0();
  v15 = [v13 initWithKey:v14 ascending:1];

  *(v9 + 40) = v15;
  sub_22F120634(0, &qword_2810A9138, 0x277CCAC98);
  v16 = sub_22F741160();

  [v7 setSortDescriptors_];

  [v7 setFetchLimit_];
  v17 = swift_allocObject();
  *(v17 + 16) = xmmword_22F771350;
  if (a1 >> 62)
  {
LABEL_25:
    v18 = sub_22F741A00();
  }

  else
  {
    v18 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v37 = v17;
  *(v17 + 32) = sub_22F2DED30(v5 & 1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB11A0, &qword_22F772940);
  v36 = swift_allocObject();
  *(v36 + 16) = xmmword_22F771340;
  v17 = a4 & 0xFFFFFFFFFFFFFF8;
  if (!(a4 >> 62))
  {
    v19 = *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v19)
    {
      goto LABEL_7;
    }

LABEL_27:
    v20 = MEMORY[0x277D84F90];
    goto LABEL_28;
  }

  v19 = sub_22F741A00();
  if (!v19)
  {
    goto LABEL_27;
  }

LABEL_7:
  v5 = 0;
  v20 = MEMORY[0x277D84F90];
  do
  {
    v21 = v5;
    while (1)
    {
      if ((a4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x2319016F0](v21, a4);
      }

      else
      {
        if (v21 >= *((a4 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_24;
        }

        v22 = *(a4 + 8 * v21 + 32);
      }

      v23 = v22;
      v5 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
LABEL_24:
        __break(1u);
        goto LABEL_25;
      }

      v24 = [v22 uuid];
      if (v24)
      {
        break;
      }

      ++v21;
      if (v5 == v19)
      {
        goto LABEL_28;
      }
    }

    v35 = v7;
    v25 = v24;
    v26 = sub_22F740E20();
    v34 = v27;

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v20 = sub_22F13E1A8(0, *(v20 + 2) + 1, 1, v20);
    }

    v29 = *(v20 + 2);
    v28 = *(v20 + 3);
    if (v29 >= v28 >> 1)
    {
      v20 = sub_22F13E1A8((v28 > 1), v29 + 1, 1, v20);
    }

    *(v20 + 2) = v29 + 1;
    v30 = &v20[16 * v29];
    v7 = v35;
    *(v30 + 4) = v26;
    *(v30 + 5) = v34;
  }

  while (v5 != v19);
LABEL_28:
  sub_22F120634(0, &qword_2810A91E0, 0x277CCAC30);
  *(v36 + 56) = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  *(v36 + 64) = sub_22F25F050();
  *(v36 + 32) = v20;
  *(v37 + 40) = sub_22F741560();
  v31 = sub_22F741160();

  v32 = [objc_opt_self() andPredicateWithSubpredicates_];

  [v7 setInternalPredicate_];
  return v7;
}

void sub_22F2DF2C4(unint64_t a1, unint64_t a2, void *a3)
{
  v6 = sub_22F2DEE2C(a1, 1, a3, a2);
  v7 = objc_opt_self();
  v8 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
  v9 = v6;
  v10 = sub_22F741160();
  v11 = [v7 fetchAssetsContainingAllPersons:v10 options:v9];

  if (!v11)
  {
    __break(1u);
    goto LABEL_37;
  }

  if ([v11 count])
  {
    goto LABEL_5;
  }

  v12 = sub_22F2DEE2C(a1, 0, a3, a2);

  v9 = v12;
  v13 = sub_22F741160();
  v14 = [v7 fetchAssetsContainingAllPersons:v13 options:v9];

  if (!v14)
  {
LABEL_37:
    __break(1u);
    return;
  }

  v11 = v14;
LABEL_5:
  v15 = [v11 fetchedObjects];
  if (v15)
  {
    v16 = v15;
    sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
    v8 = sub_22F741180();

    if (qword_2810A9450 != -1)
    {
      swift_once();
    }

    v17 = sub_22F740B90();
    __swift_project_value_buffer(v17, qword_2810B4D78);

    v18 = sub_22F740B70();
    v19 = sub_22F7415F0();
    v20 = a1 >> 62;
    if (os_log_type_enabled(v18, v19))
    {
      v21 = swift_slowAlloc();
      *v21 = 134218496;
      if (v8 >> 62)
      {
        v22 = sub_22F741A00();
      }

      else
      {
        v22 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      *(v21 + 4) = v22;

      *(v21 + 12) = 2048;
      if (v20)
      {
        *(v21 + 14) = sub_22F741A00();
        *(v21 + 22) = 2048;
        v23 = sub_22F741A00();
      }

      else
      {
        v23 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        *(v21 + 14) = v23;
        *(v21 + 22) = 2048;
      }

      *(v21 + 24) = v23;

      _os_log_impl(&dword_22F0FC000, v18, v19, "[keyAsset] Found %ld candidates with %ld/%ld members", v21, 0x20u);
      MEMORY[0x2319033A0](v21, -1, -1);
    }

    else
    {
    }

    if (v20)
    {
      v32 = sub_22F741A00();
      if (v32)
      {
        goto LABEL_21;
      }
    }

    else
    {
      v32 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v32)
      {
LABEL_21:
        v47 = MEMORY[0x277D84F90];
        sub_22F146454(0, v32 & ~(v32 >> 63), 0);
        if ((v32 & 0x8000000000000000) == 0)
        {
          v44 = v8;
          v45 = v11;
          v46 = v9;
          v33 = 0;
          v34 = v47;
          do
          {
            if ((a1 & 0xC000000000000001) != 0)
            {
              v35 = MEMORY[0x2319016F0](v33, a1);
            }

            else
            {
              v35 = *(a1 + 8 * v33 + 32);
            }

            v36 = v35;
            v37 = [v35 localIdentifier];
            v38 = sub_22F740E20();
            v40 = v39;

            v47 = v34;
            v42 = *(v34 + 16);
            v41 = *(v34 + 24);
            if (v42 >= v41 >> 1)
            {
              sub_22F146454((v41 > 1), v42 + 1, 1);
              v34 = v47;
            }

            ++v33;
            *(v34 + 16) = v42 + 1;
            v43 = v34 + 16 * v42;
            *(v43 + 32) = v38;
            *(v43 + 40) = v40;
          }

          while (v32 != v33);

          return;
        }

        __break(1u);
        goto LABEL_33;
      }
    }

    return;
  }

  if (qword_2810A9450 != -1)
  {
LABEL_33:
    swift_once();
  }

  v24 = sub_22F740B90();
  __swift_project_value_buffer(v24, qword_2810B4D78);

  v25 = sub_22F740B70();
  v26 = sub_22F7415E0();

  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v28 = swift_slowAlloc();
    v47 = v28;
    *v27 = 136315138;
    v29 = MEMORY[0x231900D40](a1, v8);
    v31 = sub_22F145F20(v29, v30, &v47);

    *(v27 + 4) = v31;
    _os_log_impl(&dword_22F0FC000, v25, v26, "[keyAsset] No candidate assets for members %s", v27, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v28);
    MEMORY[0x2319033A0](v28, -1, -1);
    MEMORY[0x2319033A0](v27, -1, -1);
  }
}

id _s11PhotosGraph19SocialGroupCurationC14selectKeyAsset3for15containedAssets15curationManager0L7ContextSo7PHAssetCSgSaySo8PHPersonCG_SayAJGSo010PGCurationM0CSo011CLSCurationN0CtFZ_0(unint64_t a1, unint64_t a2, void *a3, void *a4)
{
  if (a1 >> 62)
  {
    if (sub_22F741A00())
    {
LABEL_3:
      if (qword_2810A9BB0 != -1)
      {
        swift_once();
      }

      v8 = qword_2810B4E80;
      *&v9 = CACurrentMediaTime();
      sub_22F1B560C("SocialGroupHelper.selectKeyFace", 31, 2u, v9, 0, v8, v52);
      v10 = objc_autoreleasePoolPush();
      v11 = [a4 photoLibrary];
      sub_22F2DF2C4(a1, a2, v11);
      v13 = v12;
      v15 = v14;

      if (v15 >> 62)
      {
        if (sub_22F741A00() >= 1)
        {
          goto LABEL_7;
        }
      }

      else if (*((v15 & 0xFFFFFFFFFFFFFF8) + 0x10) >= 1)
      {
LABEL_7:
        v16 = objc_opt_self();
        sub_22F120634(0, &qword_2810A8EE0, 0x277CD97A8);
        v17 = sub_22F741160();
        [v16 prefetchOnAssets:v17 options:13 curationContext:a4];

        v18 = [a4 curationSession];
        v19 = sub_22F741160();
        [v18 prepareAssets_];

        v20 = sub_22F741160();

        sub_22F1515F8(v21);

        v22 = sub_22F741410();

        v23 = *(v13 + 16);

        LOBYTE(v50) = 1;
        v24 = [a3 bestAssetInAssets:v20 forReferencePersonLocalIdentifiers:v22 requiredMinimumNumberOfReferencePersons:v23 forMemories:1 forSocialGroup:1 allowGuestAsset:1 wantsGoodSquareCropScore:v50];

LABEL_16:
        objc_autoreleasePoolPop(v10);
        if (qword_2810A9450 != -1)
        {
          swift_once();
        }

        v34 = sub_22F740B90();
        __swift_project_value_buffer(v34, qword_2810B4D78);

        v35 = sub_22F740B70();
        v36 = sub_22F7415F0();

        if (os_log_type_enabled(v35, v36))
        {
          v37 = 1701736302;
          v38 = swift_slowAlloc();
          v39 = swift_slowAlloc();
          v51 = v39;
          *v38 = 136315394;
          if (v24 && (v40 = [v24 uuid]) != 0)
          {
            v41 = v40;
            v37 = sub_22F740E20();
            v43 = v42;
          }

          else
          {
            v43 = 0xE400000000000000;
          }

          v44 = sub_22F145F20(v37, v43, &v51);

          *(v38 + 4) = v44;
          *(v38 + 12) = 2080;
          v45 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
          v46 = MEMORY[0x231900D40](a1, v45);
          v48 = sub_22F145F20(v46, v47, &v51);

          *(v38 + 14) = v48;
          _os_log_impl(&dword_22F0FC000, v35, v36, "[keyAsset] selected %s for the members %s", v38, 0x16u);
          swift_arrayDestroy();
          MEMORY[0x2319033A0](v39, -1, -1);
          MEMORY[0x2319033A0](v38, -1, -1);
        }

        sub_22F1B2BBC(v24 == 0);

        return v24;
      }

      v24 = 0;
      goto LABEL_16;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_3;
  }

  if (qword_2810A9450 != -1)
  {
    swift_once();
  }

  v25 = sub_22F740B90();
  __swift_project_value_buffer(v25, qword_2810B4D78);

  v26 = sub_22F740B70();
  v27 = sub_22F7415F0();

  if (os_log_type_enabled(v26, v27))
  {
    v28 = swift_slowAlloc();
    v29 = swift_slowAlloc();
    v52[0] = v29;
    *v28 = 136315138;
    v30 = sub_22F120634(0, &qword_2810A8EA0, 0x277CD9938);
    v31 = MEMORY[0x231900D40](a1, v30);
    v33 = sub_22F145F20(v31, v32, v52);

    *(v28 + 4) = v33;
    _os_log_impl(&dword_22F0FC000, v26, v27, "[keyAsset] not selected as members array is empty %s", v28, 0xCu);
    __swift_destroy_boxed_opaque_existential_0(v29);
    MEMORY[0x2319033A0](v29, -1, -1);
    MEMORY[0x2319033A0](v28, -1, -1);
  }

  return 0;
}

unint64_t sub_22F2DFE3C()
{
  result = qword_27DAB3340;
  if (!qword_27DAB3340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3340);
  }

  return result;
}

unint64_t sub_22F2DFE94()
{
  result = qword_27DAB3348;
  if (!qword_27DAB3348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3348);
  }

  return result;
}

unint64_t sub_22F2DFEEC()
{
  result = qword_27DAB3350;
  if (!qword_27DAB3350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3350);
  }

  return result;
}

unint64_t sub_22F2DFF40()
{
  result = qword_27DAB3358;
  if (!qword_27DAB3358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DAB3358);
  }

  return result;
}

id MusicCuration.__allocating_init(curatorVersion:bestMusicSuggestions:musicForYou:musicForLocation:musicForTime:musicForPerformer:musicCurationInfo:musicCurationDebugInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  v17 = objc_allocWithZone(v8);
  v18 = *a7;
  v19 = *a8;
  *&v17[OBJC_IVAR___PGMusicCuration_curatorVersion] = a1;
  *&v17[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = a2;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForYou] = a3;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForLocation] = a4;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForTime] = a5;
  *&v17[OBJC_IVAR___PGMusicCuration_musicForPerformer] = a6;
  v20 = &v17[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v20 = v18;
  *(v20 + 8) = *(a7 + 1);
  *&v17[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v19;
  v22.receiver = v17;
  v22.super_class = v8;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t MusicCuration.description.getter()
{
  v1 = type metadata accessor for Song(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v88 = 0;
  *&v89 = 0xE000000000000000;
  sub_22F741B00();
  v90 = v88;
  v91 = v89;
  MEMORY[0x231900B10](0xD000000000000010, 0x800000022F798FC0);
  v88 = *(v0 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v5 = sub_22F742010();
  MEMORY[0x231900B10](v5);

  MEMORY[0x231900B10](0xD00000000000001CLL, 0x800000022F798FE0);
  v87 = v0;
  v6 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  v84 = v2;
  if (v7)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22F146454(0, v7, 0);
    v8 = v88;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v9, v4);
      v11 = Song.compactDescription.getter();
      v13 = v12;
      sub_22F15CBD8(v4);
      v88 = v8;
      v15 = *(v8 + 16);
      v14 = *(v8 + 24);
      if (v15 >= v14 >> 1)
      {
        sub_22F146454((v14 > 1), v15 + 1, 1);
        v8 = v88;
      }

      *(v8 + 16) = v15 + 1;
      v16 = v8 + 16 * v15;
      *(v16 + 32) = v11;
      *(v16 + 40) = v13;
      v9 += v10;
      --v7;
    }

    while (v7);
    v2 = v84;
  }

  v88 = v8;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v85 = sub_22F15A2C0();
  v86 = v17;
  v18 = sub_22F740DA0();
  v20 = v19;

  MEMORY[0x231900B10](v18, v20);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F799000);
  v21 = *(v87 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  if (v22)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22F146454(0, v22, 0);
    v23 = v88;
    v24 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v24, v4);
      v26 = Song.compactDescription.getter();
      v28 = v27;
      sub_22F15CBD8(v4);
      v88 = v23;
      v30 = *(v23 + 16);
      v29 = *(v23 + 24);
      if (v30 >= v29 >> 1)
      {
        sub_22F146454((v29 > 1), v30 + 1, 1);
        v23 = v88;
      }

      *(v23 + 16) = v30 + 1;
      v31 = v23 + 16 * v30;
      *(v31 + 32) = v26;
      *(v31 + 40) = v28;
      v24 += v25;
      --v22;
    }

    while (v22);
    v2 = v84;
  }

  v88 = v23;
  v32 = sub_22F740DA0();
  v34 = v33;

  MEMORY[0x231900B10](v32, v34);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F799020);
  v35 = *(v87 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v36 = *(v35 + 16);
  v37 = MEMORY[0x277D84F90];
  if (v36)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22F146454(0, v36, 0);
    v37 = v88;
    v38 = v35 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v39 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v38, v4);
      v40 = Song.compactDescription.getter();
      v42 = v41;
      sub_22F15CBD8(v4);
      v88 = v37;
      v44 = *(v37 + 16);
      v43 = *(v37 + 24);
      if (v44 >= v43 >> 1)
      {
        sub_22F146454((v43 > 1), v44 + 1, 1);
        v37 = v88;
      }

      *(v37 + 16) = v44 + 1;
      v45 = v37 + 16 * v44;
      *(v45 + 32) = v40;
      *(v45 + 40) = v42;
      v38 += v39;
      --v36;
    }

    while (v36);
    v2 = v84;
  }

  v88 = v37;
  v46 = sub_22F740DA0();
  v48 = v47;

  MEMORY[0x231900B10](v46, v48);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F791F90);
  v49 = *(v87 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v50 = *(v49 + 16);
  v51 = MEMORY[0x277D84F90];
  if (v50)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22F146454(0, v50, 0);
    v51 = v88;
    v52 = v49 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v53 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v52, v4);
      v54 = Song.compactDescription.getter();
      v56 = v55;
      sub_22F15CBD8(v4);
      v88 = v51;
      v58 = *(v51 + 16);
      v57 = *(v51 + 24);
      if (v58 >= v57 >> 1)
      {
        sub_22F146454((v57 > 1), v58 + 1, 1);
        v51 = v88;
      }

      *(v51 + 16) = v58 + 1;
      v59 = v51 + 16 * v58;
      *(v59 + 32) = v54;
      *(v59 + 40) = v56;
      v52 += v53;
      --v50;
    }

    while (v50);
    v2 = v84;
  }

  v88 = v51;
  v60 = sub_22F740DA0();
  v62 = v61;

  MEMORY[0x231900B10](v60, v62);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F791FD0);
  v63 = *(v87 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v64 = *(v63 + 16);
  v65 = MEMORY[0x277D84F90];
  if (v64)
  {
    v88 = MEMORY[0x277D84F90];
    sub_22F146454(0, v64, 0);
    v65 = v88;
    v66 = v63 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v67 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v66, v4);
      v68 = Song.compactDescription.getter();
      v70 = v69;
      sub_22F15CBD8(v4);
      v88 = v65;
      v72 = *(v65 + 16);
      v71 = *(v65 + 24);
      if (v72 >= v71 >> 1)
      {
        sub_22F146454((v71 > 1), v72 + 1, 1);
        v65 = v88;
      }

      *(v65 + 16) = v72 + 1;
      v73 = v65 + 16 * v72;
      *(v73 + 32) = v68;
      *(v73 + 40) = v70;
      v66 += v67;
      --v64;
    }

    while (v64);
  }

  v88 = v65;
  v74 = sub_22F740DA0();
  v76 = v75;

  MEMORY[0x231900B10](v74, v76);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F799040);
  v77 = v87;
  v88 = *(v87 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v89 = *(v87 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v78 = MusicCurationInfo.description.getter();
  MEMORY[0x231900B10](v78);

  MEMORY[0x231900B10](0xD000000000000020, 0x800000022F799060);
  v88 = *(v77 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);

  v79 = sub_22F740DA0();
  v81 = v80;

  MEMORY[0x231900B10](v79, v81);

  return v90;
}

id MusicCuration.replaceFirstSongInBestSongSuggestions(with:)(uint64_t a1, unint64_t a2)
{
  v3 = v2;
  ObjectType = swift_getObjectType();
  v6 = type metadata accessor for Song(0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v10 = &v52 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v11 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (v11)
  {
    v12 = v8[15];
    v13 = v8;
    v14 = sub_22F73F7C0();
    (*(*(v14 - 8) + 56))(&v10[v12], 1, 1, v14);
    v15 = v13[16];
    v16 = sub_22F73F690();
    (*(*(v16 - 8) + 56))(&v10[v15], 1, 1, v16);
    *v10 = a1;
    *(v10 + 1) = a2;
    *(v10 + 1) = 0u;
    *(v10 + 2) = 0u;
    *(v10 + 3) = 0u;
    *(v10 + 8) = 0;
    v10[72] = 2;
    *(v10 + 10) = 0;
    v10[88] = 1;
    *(v10 + 23) = 0;
    v10[96] = 1;
    *(v10 + 104) = 0u;
    *(v10 + 120) = 0u;
    *(v10 + 136) = 0u;
    v17 = &v10[v13[26]];
    *v17 = 1;
    *(v17 + 24) = 0u;
    *(v17 + 37) = 0;
    *(v17 + 8) = 0u;
    *&v10[v13[17]] = 0;
    v18 = &v10[v13[18]];
    *v18 = 0;
    v18[4] = 1;
    v19 = &v10[v13[19]];
    *v19 = 0;
    v19[4] = 1;
    v20 = &v10[v13[20]];
    *v20 = 0;
    v20[4] = 1;
    v21 = &v10[v13[21]];
    *v21 = 0;
    v21[4] = 1;
    v22 = &v10[v13[22]];
    *v22 = 0;
    v22[4] = 1;
    v23 = &v10[v13[23]];
    *v23 = 0;
    v23[4] = 1;
    v10[v13[24]] = 2;
    v24 = &v10[v13[25]];
    *v24 = 0;
    *(v24 + 1) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0570, &qword_22F770810);
    v25 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v26 = swift_allocObject();
    *(v26 + 16) = xmmword_22F771340;
    sub_22F15CAA0(v10, v26 + v25);
    v27 = sub_22F2E42E4(1uLL, *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions));
    v29 = v28;
    v31 = v30;
    v33 = v32;
    v56 = v26;

    sub_22F145294(v27, v29, v31, v33);
    sub_22F15CBD8(v10);
    v53 = v56;
  }

  else
  {
    if (qword_2810A9460 != -1)
    {
      swift_once();
    }

    v34 = sub_22F740B90();
    __swift_project_value_buffer(v34, qword_2810B4D90);

    v35 = sub_22F740B70();
    v36 = sub_22F7415E0();

    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      v56 = v38;
      *v37 = 136315138;
      *(v37 + 4) = sub_22F145F20(a1, a2, &v56);
      _os_log_impl(&dword_22F0FC000, v35, v36, "[MusicCuration] Unable to replace 1st song with ID: %s", v37, 0xCu);
      __swift_destroy_boxed_opaque_existential_0(v38);
      MEMORY[0x2319033A0](v38, -1, -1);
      MEMORY[0x2319033A0](v37, -1, -1);
    }

    v53 = *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  }

  v39 = *(v3 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v40 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v41 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v42 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v43 = *(v3 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v44 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v45 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v46 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v47 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v48 = ObjectType;
  v49 = objc_allocWithZone(ObjectType);
  *&v49[OBJC_IVAR___PGMusicCuration_curatorVersion] = v39;
  *&v49[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v53;
  *&v49[OBJC_IVAR___PGMusicCuration_musicForYou] = v40;
  *&v49[OBJC_IVAR___PGMusicCuration_musicForLocation] = v41;
  *&v49[OBJC_IVAR___PGMusicCuration_musicForTime] = v42;
  *&v49[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v43;
  v50 = &v49[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v50 = v44;
  *(v50 + 1) = v45;
  *(v50 + 2) = v46;
  *&v49[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v47;
  v55.receiver = v49;
  v55.super_class = v48;

  return objc_msgSendSuper2(&v55, sel_init);
}

PhotosGraph::MusicCurationInfo __swiftcall MusicCurationInfo.init(performerNames:locationName:)(Swift::OpaquePointer performerNames, Swift::String_optional locationName)
{
  *v2 = performerNames;
  *(v2 + 8) = locationName;
  result.locationName = locationName;
  result.performerNames = performerNames;
  return result;
}

uint64_t MusicCurationInfo.locationName.getter()
{
  v1 = *(v0 + 8);

  return v1;
}

unint64_t MusicCurationInfo.description.getter()
{

  sub_22F741B00();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v0 = sub_22F740DA0();
  v2 = v1;

  MEMORY[0x231900B10](v0, v2);

  return 0xD000000000000010;
}

uint64_t static MusicCurationInfo.== infix(_:_:)(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_22F17ADF4(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t sub_22F2E0F60()
{
  if (*v0)
  {
    return 0x6E6F697461636F6CLL;
  }

  else
  {
    return 0x656D726F66726570;
  }
}

void sub_22F2E0FB0(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x656D726F66726570 && a2 == 0xEE0073656D614E72;
  if (v6 || (sub_22F742040() & 1) != 0)
  {

    v7 = 0;
  }

  else if (a1 == 0x6E6F697461636F6CLL && a2 == 0xEC000000656D614ELL)
  {

    v7 = 1;
  }

  else
  {
    v8 = sub_22F742040();

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

uint64_t sub_22F2E1098(uint64_t a1)
{
  v2 = sub_22F2E43EC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E10D4(uint64_t a1)
{
  v2 = sub_22F2E43EC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCurationInfo.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33A0, &qword_22F783250);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v11 - v6;
  v9 = *v1;
  v8 = v1[1];
  v11[1] = v1[2];
  v11[2] = v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E43EC();

  sub_22F742210();
  v14 = v9;
  v13 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22F741FE0();

  if (!v2)
  {
    v12 = 1;
    sub_22F741F20();
  }

  return (*(v5 + 8))(v7, v4);
}

void MusicCurationInfo.init(from:)(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33A8, &qword_22F783258);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v13[-v7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E43EC();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    v13[15] = 0;
    sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F741F10();
    v9 = v14;
    v13[14] = 1;
    v10 = sub_22F741E50();
    v12 = v11;
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;

    __swift_destroy_boxed_opaque_existential_0(a1);
  }
}

uint64_t sub_22F2E155C(uint64_t *a1, uint64_t *a2)
{
  v2 = a1[1];
  v3 = a1[2];
  v4 = a2[1];
  v5 = a2[2];
  if (sub_22F17ADF4(*a1, *a2))
  {
    if (v3)
    {
      if (v5 && (v2 == v4 && v3 == v5 || (sub_22F742040() & 1) != 0))
      {
        return 1;
      }
    }

    else if (!v5)
    {
      return 1;
    }
  }

  return 0;
}

uint64_t MusicCurationDebugInfo.description.getter()
{

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F15A2C0();
  v0 = sub_22F740DA0();

  return v0;
}

void sub_22F2E1698(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x75626544676E6F73 && a2 == 0xED00006F666E4967)
  {

    v6 = 0;
  }

  else
  {
    v5 = sub_22F742040();

    v6 = v5 ^ 1;
  }

  *a3 = v6 & 1;
}

uint64_t sub_22F2E1728(uint64_t a1)
{
  v2 = sub_22F2E4440();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E1764(uint64_t a1)
{
  v2 = sub_22F2E4440();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t MusicCurationDebugInfo.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33B0, &qword_22F783260);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v9 - v5;
  v7 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E4440();

  sub_22F742210();
  v9[1] = v7;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  sub_22F1BA494(&qword_2810A92E8, MEMORY[0x277D837D8], MEMORY[0x277D83948]);
  sub_22F741FE0();

  return (*(v4 + 8))(v6, v3);
}

uint64_t MusicCurationDebugInfo.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33B8, &qword_22F783268);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v10 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E4440();
  sub_22F742200();
  if (!v2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
    sub_22F1BA494(&qword_2810A92D8, MEMORY[0x277D83808], MEMORY[0x277D83978]);
    sub_22F741F10();
    (*(v6 + 8))(v8, v5);
    *a2 = v10[1];
  }

  return __swift_destroy_boxed_opaque_existential_0(a1);
}

double MusicCuration.musicCurationInfo.getter@<D0>(void *a1@<X8>)
{
  v2 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v3 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  *a1 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  a1[1] = v2;
  a1[2] = v3;

  return result;
}

double MusicCuration.musicCurationDebugInfo.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);

  return result;
}

id MusicCuration.init(curatorVersion:bestMusicSuggestions:musicForYou:musicForLocation:musicForTime:musicForPerformer:musicCurationInfo:musicCurationDebugInfo:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t *a7, uint64_t *a8)
{
  ObjectType = swift_getObjectType();
  v18 = *a7;
  v19 = *a8;
  *&v8[OBJC_IVAR___PGMusicCuration_curatorVersion] = a1;
  *&v8[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = a2;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForYou] = a3;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForLocation] = a4;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForTime] = a5;
  *&v8[OBJC_IVAR___PGMusicCuration_musicForPerformer] = a6;
  v20 = &v8[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v20 = v18;
  *(v20 + 8) = *(a7 + 1);
  *&v8[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v19;
  v22.receiver = v8;
  v22.super_class = ObjectType;
  return objc_msgSendSuper2(&v22, sel_init);
}

uint64_t MusicCuration.jsonDescription.getter()
{
  v1 = type metadata accessor for Song(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v86 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v92 = 0;
  v93 = 0xE000000000000000;
  sub_22F741B00();
  MEMORY[0x231900B10](0xD000000000000016, 0x800000022F7990B0);
  v91 = *(v0 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v5 = sub_22F742010();
  MEMORY[0x231900B10](v5);

  MEMORY[0x231900B10](0xD00000000000001DLL, 0x800000022F7990D0);
  v90 = v0;
  v6 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  v7 = *(v6 + 16);
  v8 = MEMORY[0x277D84F90];
  v87 = v2;
  if (v7)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v7, 0);
    v8 = v91;
    v9 = v6 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v10 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v9, v4);
      v11 = *v4;
      v12 = v4[1];

      sub_22F15CBD8(v4);
      v91 = v8;
      v14 = *(v8 + 16);
      v13 = *(v8 + 24);
      if (v14 >= v13 >> 1)
      {
        sub_22F146454((v13 > 1), v14 + 1, 1);
        v8 = v91;
      }

      *(v8 + 16) = v14 + 1;
      v15 = v8 + 16 * v14;
      *(v15 + 32) = v11;
      *(v15 + 40) = v12;
      v9 += v10;
      --v7;
    }

    while (v7);
    v2 = v87;
  }

  v91 = v8;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB0E90, &qword_22F7714A0);
  v17 = sub_22F15A2C0();
  v18 = sub_22F740DA0();
  v20 = v19;

  MEMORY[0x231900B10](v18, v20);

  MEMORY[0x231900B10](0xD000000000000014, 0x800000022F7990F0);
  v21 = *(v90 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v22 = *(v21 + 16);
  v23 = MEMORY[0x277D84F90];
  v88 = v17;
  v89 = v16;
  if (v22)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v22, 0);
    v23 = v91;
    v24 = v21 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v25 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v24, v4);
      v26 = *v4;
      v27 = v4[1];

      sub_22F15CBD8(v4);
      v91 = v23;
      v29 = *(v23 + 16);
      v28 = *(v23 + 24);
      if (v29 >= v28 >> 1)
      {
        sub_22F146454((v28 > 1), v29 + 1, 1);
        v23 = v91;
      }

      *(v23 + 16) = v29 + 1;
      v30 = v23 + 16 * v29;
      *(v30 + 32) = v26;
      *(v30 + 40) = v27;
      v24 += v25;
      --v22;
    }

    while (v22);
    v2 = v87;
  }

  v91 = v23;
  v31 = sub_22F740DA0();
  v33 = v32;

  MEMORY[0x231900B10](v31, v33);

  MEMORY[0x231900B10](0xD000000000000019, 0x800000022F799110);
  v34 = *(v90 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v35 = *(v34 + 16);
  v36 = MEMORY[0x277D84F90];
  if (v35)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v35, 0);
    v36 = v91;
    v37 = v34 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v38 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v37, v4);
      v39 = *v4;
      v40 = v4[1];

      sub_22F15CBD8(v4);
      v91 = v36;
      v42 = *(v36 + 16);
      v41 = *(v36 + 24);
      if (v42 >= v41 >> 1)
      {
        sub_22F146454((v41 > 1), v42 + 1, 1);
        v36 = v91;
      }

      *(v36 + 16) = v42 + 1;
      v43 = v36 + 16 * v42;
      *(v43 + 32) = v39;
      *(v43 + 40) = v40;
      v37 += v38;
      --v35;
    }

    while (v35);
    v2 = v87;
  }

  v91 = v36;
  v44 = sub_22F740DA0();
  v46 = v45;

  MEMORY[0x231900B10](v44, v46);

  MEMORY[0x231900B10](0xD000000000000015, 0x800000022F792070);
  v47 = *(v90 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v48 = *(v47 + 16);
  v49 = MEMORY[0x277D84F90];
  if (v48)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v48, 0);
    v49 = v91;
    v50 = v47 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v51 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v50, v4);
      v52 = *v4;
      v53 = v4[1];

      sub_22F15CBD8(v4);
      v91 = v49;
      v55 = *(v49 + 16);
      v54 = *(v49 + 24);
      if (v55 >= v54 >> 1)
      {
        sub_22F146454((v54 > 1), v55 + 1, 1);
        v49 = v91;
      }

      *(v49 + 16) = v55 + 1;
      v56 = v49 + 16 * v55;
      *(v56 + 32) = v52;
      *(v56 + 40) = v53;
      v50 += v51;
      --v48;
    }

    while (v48);
    v2 = v87;
  }

  v91 = v49;
  v57 = sub_22F740DA0();
  v59 = v58;

  MEMORY[0x231900B10](v57, v59);

  MEMORY[0x231900B10](0xD00000000000001ALL, 0x800000022F7920B0);
  v60 = *(v90 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v61 = *(v60 + 16);
  v62 = MEMORY[0x277D84F90];
  if (v61)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v61, 0);
    v62 = v91;
    v63 = v60 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v64 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v63, v4);
      v65 = *v4;
      v66 = v4[1];

      sub_22F15CBD8(v4);
      v91 = v62;
      v68 = *(v62 + 16);
      v67 = *(v62 + 24);
      if (v68 >= v67 >> 1)
      {
        sub_22F146454((v67 > 1), v68 + 1, 1);
        v62 = v91;
      }

      *(v62 + 16) = v68 + 1;
      v69 = v62 + 16 * v68;
      *(v69 + 32) = v65;
      *(v69 + 40) = v66;
      v63 += v64;
      --v61;
    }

    while (v61);
  }

  v91 = v62;
  v70 = sub_22F740DA0();
  v72 = v71;

  MEMORY[0x231900B10](v70, v72);

  MEMORY[0x231900B10](0xD00000000000001FLL, 0x800000022F799130);
  v73 = *(v90 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v74 = *(v73 + 16);
  v75 = MEMORY[0x277D84F90];
  if (v74)
  {
    v91 = MEMORY[0x277D84F90];
    sub_22F146454(0, v74, 0);
    v75 = v91;
    v76 = (v73 + 40);
    do
    {
      v77 = *(v76 - 1);
      v78 = *v76;
      v91 = v75;
      v80 = *(v75 + 16);
      v79 = *(v75 + 24);

      if (v80 >= v79 >> 1)
      {
        sub_22F146454((v79 > 1), v80 + 1, 1);
        v75 = v91;
      }

      *(v75 + 16) = v80 + 1;
      v81 = v75 + 16 * v80;
      *(v81 + 32) = v77;
      *(v81 + 40) = v78;
      v76 += 2;
      --v74;
    }

    while (v74);
  }

  v91 = v75;
  v82 = sub_22F740DA0();
  v84 = v83;

  MEMORY[0x231900B10](v82, v84);

  MEMORY[0x231900B10](8194653, 0xE300000000000000);
  return v92;
}

Swift::String_optional __swiftcall MusicCuration.jsonRepresentation()()
{
  swift_getObjectType();
  v0 = sub_22F740E80();
  MEMORY[0x28223BE20](v0 - 8);
  sub_22F73EFB0();
  swift_allocObject();
  sub_22F73EFA0();
  sub_22F2E4654(&qword_2810ABF28, v1, type metadata accessor for MusicCuration, &protocol conformance descriptor for MusicCuration);
  v4 = sub_22F73EF90();
  v6 = v5;

  sub_22F740E70();
  v7 = sub_22F740E40();
  v9 = v8;
  sub_22F133BF0(v4, v6);
  if (v9)
  {
    v3 = v9;
    v2 = v7;
  }

  else
  {
    v2 = 0;
    v3 = 0;
  }

  result.value._object = v3;
  result.value._countAndFlagsBits = v2;
  return result;
}

id MusicCuration.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

unint64_t sub_22F2E27C4()
{
  v1 = *v0;
  if (v1 > 3)
  {
    v5 = 0xD000000000000011;
    if (v1 != 6)
    {
      v5 = 0xD000000000000016;
    }

    v6 = 0x726F46636973756DLL;
    if (v1 != 4)
    {
      v6 = 0xD000000000000011;
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
    v2 = 0x56726F7461727563;
    v3 = 0x726F46636973756DLL;
    if (v1 != 2)
    {
      v3 = 0xD000000000000010;
    }

    if (*v0)
    {
      v2 = 0xD000000000000014;
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

uint64_t sub_22F2E28EC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_22F2E4C64(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_22F2E2914(uint64_t a1)
{
  v2 = sub_22F2E44B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_22F2E2950(uint64_t a1)
{
  v2 = sub_22F2E44B8();

  return MEMORY[0x2821FE720](a1, v2);
}

id MusicCuration.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t MusicCuration.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C0, &qword_22F783270);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E44B8();
  sub_22F742210();
  LOBYTE(v12[0]) = 0;
  sub_22F741FD0();
  if (!v2)
  {
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
    v13 = 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
    sub_22F2E45B4(&qword_2810A9300, &qword_2810A99B8, &protocol conformance descriptor for Song, MEMORY[0x277D83948]);
    sub_22F741FE0();
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForYou);
    v13 = 2;
    sub_22F741FE0();
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForLocation);
    v13 = 3;
    sub_22F741FE0();
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForTime);
    v13 = 4;
    sub_22F741FE0();
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
    v13 = 5;
    sub_22F741FE0();
    v9 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
    v10 = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
    v12[1] = v9;
    v12[2] = v10;
    v13 = 6;
    sub_22F2E450C();

    sub_22F741FE0();

    v12[0] = *(v3 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
    v13 = 7;
    sub_22F2E4560();

    sub_22F741FE0();
  }

  return (*(v6 + 8))(v8, v5);
}

void *MusicCuration.init(from:)(void *a1)
{
  v3 = v1;
  ObjectType = swift_getObjectType();
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33D0, &unk_22F783280);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_22F2E44B8();
  sub_22F742200();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_0(a1);
    swift_deallocPartialClassInstance();
  }

  else
  {
    LOBYTE(v14) = 0;
    *(v1 + OBJC_IVAR___PGMusicCuration_curatorVersion) = sub_22F741F00();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DAB33C8, &qword_22F783278);
    v16 = 1;
    sub_22F2E45B4(&qword_27DAB33D8, &qword_27DAB33E0, &protocol conformance descriptor for Song, MEMORY[0x277D83978]);
    sub_22F741F10();
    *(v1 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions) = v14;
    v16 = 2;
    sub_22F741F10();
    *(v1 + OBJC_IVAR___PGMusicCuration_musicForYou) = v14;
    v16 = 3;
    sub_22F741F10();
    v11[1] = 0;
    *(v1 + OBJC_IVAR___PGMusicCuration_musicForLocation) = v14;
    v16 = 4;
    sub_22F741F10();
    *(v1 + OBJC_IVAR___PGMusicCuration_musicForTime) = v14;
    v16 = 5;
    sub_22F741F10();
    *(v1 + OBJC_IVAR___PGMusicCuration_musicForPerformer) = v14;
    v16 = 6;
    sub_22F2E469C();
    sub_22F741F10();
    v10 = v1 + OBJC_IVAR___PGMusicCuration_musicCurationInfo;
    *v10 = v14;
    *(v10 + 8) = v15;
    v16 = 7;
    sub_22F2E46F0();
    sub_22F741F10();
    *(v1 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo) = v14;
    v13.receiver = v1;
    v13.super_class = ObjectType;
    v3 = objc_msgSendSuper2(&v13, sel_init);
    (*(v6 + 8))(v8, v5);
    __swift_destroy_boxed_opaque_existential_0(a1);
  }

  return v3;
}

void *sub_22F2E3450@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  v6 = objc_allocWithZone(v2);
  result = MusicCuration.init(from:)(a1);
  if (!v3)
  {
    *a2 = result;
  }

  return result;
}

uint64_t MusicCuration.isEqual(_:)(uint64_t a1)
{
  swift_getObjectType();
  sub_22F1BCD04(a1, v16);
  if (!v17)
  {
    sub_22F1BCC9C(v16);
    goto LABEL_11;
  }

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  if (*(v1 + OBJC_IVAR___PGMusicCuration_curatorVersion) != *&v15[OBJC_IVAR___PGMusicCuration_curatorVersion] || (v3 = *(v1 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions), v4 = *&v15[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions], , LOBYTE(v3) = sub_22F17B438(v3, v4), , (v3 & 1) == 0) || (v5 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForYou), v6 = *&v15[OBJC_IVAR___PGMusicCuration_musicForYou], , LOBYTE(v5) = sub_22F17B438(v5, v6), , (v5 & 1) == 0) || (v7 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForLocation), v8 = *&v15[OBJC_IVAR___PGMusicCuration_musicForLocation], , LOBYTE(v7) = sub_22F17B438(v7, v8), , (v7 & 1) == 0) || (v9 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForTime), v10 = *&v15[OBJC_IVAR___PGMusicCuration_musicForTime], , LOBYTE(v9) = sub_22F17B438(v9, v10), , (v9 & 1) == 0))
  {

    goto LABEL_11;
  }

  v11 = *(v1 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v12 = *&v15[OBJC_IVAR___PGMusicCuration_musicForPerformer];

  v13 = sub_22F17B438(v11, v12);

  return v13 & 1;
}

uint64_t MusicCuration.keySongAdamID.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song(0) - 8);
  v3 = *(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)));

  return v3;
}

uint64_t MusicCuration.keySongTitle.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song(0) - 8);
  v3 = *(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 16);

  return v3;
}

uint64_t MusicCuration.keySongArtist.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = *(type metadata accessor for Song(0) - 8);
  v3 = *(v1 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + 32);

  return v3;
}

uint64_t MusicCuration.keySongArousal.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for Song(0);
  if (*(v1 + *(v2 + 72) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 4))
  {
    return 0;
  }

  sub_22F170D8C();
  return sub_22F7417D0();
}

uint64_t MusicCuration.keySongValence.getter()
{
  v1 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);
  if (!*(v1 + 16))
  {
    return 0;
  }

  v2 = type metadata accessor for Song(0);
  if (*(v1 + *(v2 + 76) + ((*(*(v2 - 8) + 80) + 32) & ~*(*(v2 - 8) + 80)) + 4))
  {
    return 0;
  }

  sub_22F170D8C();
  return sub_22F7417D0();
}

uint64_t sub_22F2E3C74()
{
  v1 = type metadata accessor for Song(0);
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1 - 8);
  v4 = (&v24 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v25 = *(v0 + OBJC_IVAR___PGMusicCuration_bestMusicSuggestions);

  sub_22F14585C(v6, v5);

  sub_22F14585C(v8, v7);

  sub_22F14585C(v10, v9);

  sub_22F14585C(v12, v11);
  v13 = v25;
  v14 = *(v25 + 16);
  if (v14)
  {
    v24 = MEMORY[0x277D84F90];
    sub_22F146454(0, v14, 0);
    v15 = v24;
    v16 = v13 + ((*(v2 + 80) + 32) & ~*(v2 + 80));
    v17 = *(v2 + 72);
    do
    {
      sub_22F15CAA0(v16, v4);
      v19 = *v4;
      v18 = v4[1];

      sub_22F15CBD8(v4);
      v24 = v15;
      v21 = *(v15 + 16);
      v20 = *(v15 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_22F146454((v20 > 1), v21 + 1, 1);
        v15 = v24;
      }

      *(v15 + 16) = v21 + 1;
      v22 = v15 + 16 * v21;
      *(v22 + 32) = v19;
      *(v22 + 40) = v18;
      v16 += v17;
      --v14;
    }

    while (v14);
  }

  else
  {

    return MEMORY[0x277D84F90];
  }

  return v15;
}

id MusicCuration.replaceBestMusicSuggestions(adamIds:)(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = type metadata accessor for Song(0);
  v44 = *(v4 - 1);
  MEMORY[0x28223BE20](v4);
  v6 = &v38 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x277D84F90];
  if (v7)
  {
    v39 = v1;
    v46 = MEMORY[0x277D84F90];
    sub_22F146514(0, v7, 0);
    v8 = v46;
    v43 = sub_22F73F7C0();
    v9 = *(v43 - 8);
    v10 = *(v9 + 56);
    v41 = v9 + 56;
    v42 = v10;
    v11 = (a1 + 40);
    do
    {
      v13 = *(v11 - 1);
      v12 = *v11;
      v42(&v6[v4[15]], 1, 1, v43);
      v14 = v4[16];
      v15 = sub_22F73F690();
      (*(*(v15 - 8) + 56))(&v6[v14], 1, 1, v15);
      *v6 = v13;
      *(v6 + 1) = v12;
      *(v6 + 1) = 0u;
      *(v6 + 2) = 0u;
      *(v6 + 3) = 0u;
      *(v6 + 8) = 0;
      v6[72] = 2;
      *(v6 + 10) = 0;
      v6[88] = 1;
      *(v6 + 23) = 0;
      v6[96] = 1;
      *(v6 + 104) = 0u;
      *(v6 + 120) = 0u;
      *(v6 + 136) = 0u;
      v16 = &v6[v4[26]];
      *v16 = 1;
      *(v16 + 24) = 0u;
      *(v16 + 37) = 0;
      *(v16 + 8) = 0u;
      *&v6[v4[17]] = 0;
      v17 = &v6[v4[18]];
      *v17 = 0;
      v17[4] = 1;
      v18 = &v6[v4[19]];
      *v18 = 0;
      v18[4] = 1;
      v19 = &v6[v4[20]];
      *v19 = 0;
      v19[4] = 1;
      v20 = &v6[v4[21]];
      *v20 = 0;
      v20[4] = 1;
      v21 = &v6[v4[22]];
      *v21 = 0;
      v21[4] = 1;
      v22 = &v6[v4[23]];
      *v22 = 0;
      v22[4] = 1;
      v6[v4[24]] = 2;
      v23 = &v6[v4[25]];
      *v23 = 0;
      *(v23 + 1) = 0;
      v46 = v8;
      v25 = *(v8 + 16);
      v24 = *(v8 + 24);

      if (v25 >= v24 >> 1)
      {
        sub_22F146514((v24 > 1), v25 + 1, 1);
        v8 = v46;
      }

      *(v8 + 16) = v25 + 1;
      sub_22F15CB04(v6, v8 + ((*(v44 + 80) + 32) & ~*(v44 + 80)) + *(v44 + 72) * v25);
      v11 += 2;
      --v7;
    }

    while (v7);
    v2 = v39;
  }

  v44 = *(v2 + OBJC_IVAR___PGMusicCuration_curatorVersion);
  v26 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForYou);
  v27 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForLocation);
  v28 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForTime);
  v29 = *(v2 + OBJC_IVAR___PGMusicCuration_musicForPerformer);
  v31 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo);
  v30 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 8);
  v32 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationInfo + 16);
  v33 = *(v2 + OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo);
  v34 = ObjectType;
  v35 = objc_allocWithZone(ObjectType);
  *&v35[OBJC_IVAR___PGMusicCuration_curatorVersion] = v44;
  *&v35[OBJC_IVAR___PGMusicCuration_bestMusicSuggestions] = v8;
  *&v35[OBJC_IVAR___PGMusicCuration_musicForYou] = v26;
  *&v35[OBJC_IVAR___PGMusicCuration_musicForLocation] = v27;
  *&v35[OBJC_IVAR___PGMusicCuration_musicForTime] = v28;
  *&v35[OBJC_IVAR___PGMusicCuration_musicForPerformer] = v29;
  v36 = &v35[OBJC_IVAR___PGMusicCuration_musicCurationInfo];
  *v36 = v31;
  *(v36 + 1) = v30;
  *(v36 + 2) = v32;
  *&v35[OBJC_IVAR___PGMusicCuration_musicCurationDebugInfo] = v33;
  v45.receiver = v35;
  v45.super_class = v34;

  return objc_msgSendSuper2(&v45, sel_init);
}