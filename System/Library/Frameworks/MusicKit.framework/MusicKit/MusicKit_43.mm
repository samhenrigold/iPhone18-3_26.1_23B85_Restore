unint64_t MusicPlayer.Queue.Entry.description.getter()
{
  v44 = 0xD000000000000018;
  v45 = 0x80000002177B1A30;
  *&v42[0] = 0x22203A6469;
  *(&v42[0] + 1) = 0xE500000000000000;
  MEMORY[0x21CEA23B0](*v0, v0[1]);
  OUTLINED_FUNCTION_6_68();
  OUTLINED_FUNCTION_3_87();

  if (sub_2175AB9D0())
  {
    MusicPlayer.Queue.Entry.transientItem.getter(&v39);
    if (*(&v40 + 1))
    {
      sub_2171F3F0C(&v39, v42);
      *&v39 = 0;
      *(&v39 + 1) = 0xE000000000000000;
      sub_217752AA8();
      MEMORY[0x21CEA23B0](0xD000000000000011, 0x80000002177B1A50);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27448, &unk_21776A590);
      sub_217752C78();
      MEMORY[0x21CEA23B0](v39, *(&v39 + 1));

      __swift_destroy_boxed_opaque_existential_1(v42);
    }

    else
    {
      sub_2171F06D8(&v39, &qword_27CB24418, &unk_21777F680);
      MusicPlayer.Queue.Entry.item.getter(&v39);
      if (v41[24] == 255)
      {
        sub_2171F06D8(&v39, &qword_27CB245B8, &qword_217758AE0);
        *&v42[0] = 0x3A656C746974202CLL;
        *(&v42[0] + 1) = 0xEA00000000002220;
        v12 = MusicPlayer.Queue.Entry.title.getter();
        MEMORY[0x21CEA23B0](v12);

        OUTLINED_FUNCTION_6_68();
        OUTLINED_FUNCTION_3_87();

        v13 = MusicPlayer.Queue.Entry.subtitle.getter();
        if (v14)
        {
          v15 = v13;
          v16 = v14;
          *&v42[0] = 0;
          *(&v42[0] + 1) = 0xE000000000000000;
          sub_217752AA8();

          strcpy(v42, ", subtitle: ");
          HIWORD(v42[0]) = -4864;
          MEMORY[0x21CEA23B0](v15, v16, v17);

          OUTLINED_FUNCTION_6_68();
          OUTLINED_FUNCTION_3_87();
        }
      }

      else
      {
        v42[0] = v39;
        v42[1] = v40;
        v43[0] = *v41;
        *(v43 + 9) = *&v41[9];
        sub_21729C6EC(v42, &v39);
        if (v41[24])
        {
          OUTLINED_FUNCTION_2_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v31, v32, v33, v34, v35, v36, v37, v38, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), *v41);
          v10 = MusicVideo.description.getter();
          MEMORY[0x21CEA23B0](v10);

          MEMORY[0x21CEA23B0](v26, v29, v11);

          sub_217283C08(&v31);
        }

        else
        {
          OUTLINED_FUNCTION_2_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v31, v32, v33, v34, v35, v36, v37, v38, *&v39, *(&v39 + 1), *&v40, *(&v40 + 1), *v41);
          v18 = Song.description.getter();
          MEMORY[0x21CEA23B0](v18);

          MEMORY[0x21CEA23B0](v27, v30, v19);

          sub_217283B58(&v31);
        }

        sub_21729C748(v42);
      }
    }

    MusicPlayer.Queue.Entry.startTime.getter();
    if ((v20 & 1) == 0)
    {
      v21 = OUTLINED_FUNCTION_8_60();
      MEMORY[0x21CEA23B0](v21 | 0x5474726174730000, 0xED0000203A656D69);
      sub_2177525E8();
      OUTLINED_FUNCTION_3_87();
    }

    MusicPlayer.Queue.Entry.endTime.getter();
    if ((v22 & 1) == 0)
    {
      v23 = OUTLINED_FUNCTION_8_60();
      MEMORY[0x21CEA23B0](v23 | 0x6D6954646E650000, 0xEB00000000203A65);
      sub_2177525E8();
      MEMORY[0x21CEA23B0](*&v42[0], *(&v42[0] + 1));
    }
  }

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v1);
  return v44;
}

uint64_t sub_2175AB9D0()
{
  sub_2172846D8(v0, v8);
  if (v9)
  {
    v1 = v8[0];
    v2 = *(v8[0] + 32);
    v3 = *(v2 + 16);

    os_unfair_lock_lock(v3);
    swift_beginAccess();
    sub_217284788(v1 + 40, v6);
    v4 = v7;
    if (v7)
    {
      sub_217284734(v6);
    }

    else
    {
      sub_2172847E4(v6);
    }

    os_unfair_lock_unlock(*(v2 + 16));
  }

  else
  {
    sub_2175AC264(v8);
    return 1;
  }

  return v4;
}

uint64_t sub_2175ABA90()
{
  v1 = sub_2172846D8(v0, v11);
  if (v12)
  {
    sub_217751DE8();
  }

  else
  {
    OUTLINED_FUNCTION_0_108(v1, v2, v3, v4, v5, v6, v7, v8, v10);
    sub_217751DE8();
    sub_217284734(&v10);
  }

  return OUTLINED_FUNCTION_4_83();
}

void *sub_2175ABB04@<X0>(void *a1@<X8>)
{
  sub_2172846D8(v1, v8);
  if ((v9 & 1) == 0)
  {
    return memcpy(a1, v8, 0x2D9uLL);
  }

  v3 = *v8;
  v4 = *(*v8 + 32);
  v5 = *(v4 + 16);

  os_unfair_lock_lock(v5);
  swift_beginAccess();
  sub_217284788(v3 + 40, __src);
  if (__src[729])
  {
    memcpy(a1, __src, 0x2D9uLL);
  }

  else
  {
    sub_2172847E4(__src);
    bzero(a1, 0x2D9uLL);
  }

  os_unfair_lock_unlock(*(v4 + 16));
}

BOOL sub_2175ABBE4(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v1 = sub_2175ABA90();
  v3 = v2;
  if (v1 == sub_2175ABA90() && v3 == v4)
  {
  }

  else
  {
    v6 = sub_217753058();

    v7 = 0;
    if ((v6 & 1) == 0)
    {
      return v7;
    }
  }

  sub_2175ABB04(__src);
  sub_2175ABB04(v13);
  memcpy(__dst, __src, 0x2D9uLL);
  if (!__dst[1])
  {
    goto LABEL_12;
  }

  sub_217202078(__dst, v11, &qword_27CB24AE0, &unk_2177590B0);
  if (!v13[1])
  {
    sub_217284734(v11);
LABEL_12:
    sub_2171F06D8(__dst, &qword_27CB24AD8, &qword_2177590A8);
    return 1;
  }

  memcpy(v10, v11, 0x2D9uLL);
  memcpy(v9, v13, 0x2D9uLL);
  v7 = sub_2173E2640(v10);
  sub_217284734(v9);
  sub_217284734(v10);
  sub_2171F06D8(__dst, &qword_27CB24AE0, &unk_2177590B0);
  return v7;
}

double sub_2175ABD88()
{
  v0 = sub_2175ABA90();
  OUTLINED_FUNCTION_189_1(v0, v1);
}

uint64_t sub_2175ABDC4()
{
  sub_2177531E8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175ABE2C(uint64_t a1)
{
  sub_2177531E8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

BOOL static MusicPlayer.Queue.Entry.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = *a1 == *a2 && a1[1] == a2[1];
  if (!v3 && (sub_217753058() & 1) == 0)
  {
    return 0;
  }

  return sub_2175ABBE4((a1 + 2));
}

double MusicPlayer.Queue.Entry.hash(into:)(uint64_t a1)
{
  sub_217751FF8();
  v1 = sub_2175ABA90();
  OUTLINED_FUNCTION_189_1(v1, v2);
}

uint64_t MusicPlayer.Queue.Entry.hashValue.getter()
{
  sub_2177531E8();
  sub_217751FF8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175ABFAC(uint64_t a1)
{
  sub_2177531E8();
  sub_217751FF8();
  sub_2175ABA90();
  sub_217751FF8();

  return sub_217753238();
}

uint64_t sub_2175AC010@<X0>(uint64_t *a1@<X8>)
{
  result = MusicPlayer.Queue.Entry.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

unint64_t sub_2175AC040(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A350;
  if (!qword_27CB2A350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A350);
  }

  return result;
}

uint64_t sub_2175AC0A8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 746))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175AC0E8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 744) = 0;
    *(result + 728) = 0u;
    *(result + 712) = 0u;
    *(result + 696) = 0u;
    *(result + 680) = 0u;
    *(result + 664) = 0u;
    *(result + 648) = 0u;
    *(result + 632) = 0u;
    *(result + 616) = 0u;
    *(result + 600) = 0u;
    *(result + 584) = 0u;
    *(result + 568) = 0u;
    *(result + 552) = 0u;
    *(result + 536) = 0u;
    *(result + 520) = 0u;
    *(result + 504) = 0u;
    *(result + 488) = 0u;
    *(result + 472) = 0u;
    *(result + 456) = 0u;
    *(result + 440) = 0u;
    *(result + 424) = 0u;
    *(result + 408) = 0u;
    *(result + 392) = 0u;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 746) = 1;
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

    *(result + 746) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2175AC210(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A358;
  if (!qword_27CB2A358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A358);
  }

  return result;
}

uint64_t Track.contentRating.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v42);
  if (v48)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    if (qword_280BE6D00 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA688(v10, v11, v12, v13, v14, v15, v16, v17, v28, v31, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    result = sub_217283C08(&v34);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v27, v30, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46);
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA5B8(v19, v20, v21, v22, v23, v24, v25, v26, v29, v32, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, *(&v46 + 1), v47, v48, v49, v50);
    result = sub_217283B58(&v34);
  }

  *v0 = v33;
  return result;
}

void sub_2175AC370(_BYTE *a1@<X8>)
{
  v2 = v1;
  sub_21729C5E8(v1 + 16, v32);
  v4 = v33;
  v5 = v34;
  __swift_project_boxed_opaque_existential_1(v32, v33);
  (*(v5 + 96))(__dst, v4, v5);
  v7 = __dst[3];
  v6 = __dst[4];
  __swift_project_boxed_opaque_existential_1(__dst, __dst[3]);
  (*(*(v6 + 8) + 48))(v30, v7);
  __swift_destroy_boxed_opaque_existential_1(__dst);
  v8 = sub_21729C644(v32);
  v10 = v30[1];
  if (v31 == 1)
  {

    v11 = 1;
  }

  else
  {
    v12 = v30[0];
    if (qword_280BE4BA8 != -1)
    {
      v8 = swift_once();
    }

    v13 = v12 == qword_280BE4BB0[0] && v10 == qword_280BE4BB8[0];
    if (v13 || (v14 = OUTLINED_FUNCTION_32_34(v8, v9, qword_280BE4BB0[0], qword_280BE4BB8[0]), (v14 & 1) != 0))
    {

      v11 = 2;
    }

    else
    {
      if (qword_280BE4B60 != -1)
      {
        v14 = swift_once();
      }

      v22 = v12 == qword_280BE4B68 && v10 == qword_280BE4B70;
      if (v22 || (v23 = OUTLINED_FUNCTION_32_34(v14, v15, qword_280BE4B68, qword_280BE4B70), (v23 & 1) != 0))
      {

        v11 = 3;
      }

      else
      {
        if (qword_280BE4C10 != -1)
        {
          v23 = swift_once();
        }

        if (v12 == qword_280BE4C18[0] && v10 == qword_280BE4C20[0])
        {

          v11 = 4;
        }

        else
        {
          v26 = OUTLINED_FUNCTION_32_34(v23, v24, qword_280BE4C18[0], qword_280BE4C20[0]);

          if (v26)
          {
            v11 = 4;
          }

          else
          {
            v11 = 0;
          }
        }
      }
    }
  }

  sub_21729C5E8(v2 + 16, v28);
  __swift_project_boxed_opaque_existential_1(v28, v28[3]);
  v16 = OUTLINED_FUNCTION_16_0();
  v17(v16);
  sub_21729C644(v28);
  memcpy(__dst, __src, 0x161uLL);
  v18 = __dst[3];
  if (__dst[3])
  {
    v19 = 0;
  }

  else
  {
    v19 = v11;
  }

  if (__dst[6])
  {
    v20 = 0;
  }

  else
  {
    v20 = v11 == 1;
  }

  if (v20)
  {
    v21 = v19;
  }

  else
  {
    v21 = v11;
  }

  if (LOBYTE(__dst[44]))
  {
    sub_217269F50(__dst);
  }

  else
  {
    sub_217751DE8();
    sub_217269F50(__dst);
    if (v18)
    {

      v21 = 0;
    }
  }

  *a1 = v21;
}

uint64_t Track.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, v19, v20, v21, v22, v23, v24);
  if (v30)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE6BC8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.artistName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v17, v18, v19, v20, v21, v22, v23, v24);
  if (v30)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE6DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v17);
  }

  return OUTLINED_FUNCTION_93();
}

void *Track.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6B50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA83C(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA860(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x221uLL);
}

uint64_t Track.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v4 = OUTLINED_FUNCTION_47_2();
  v5(v4);
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v6 = OUTLINED_FUNCTION_31_0(&xmmword_280BEA1D0);
  v8 = v8 && v7 == v64;
  if (!v8 && (OUTLINED_FUNCTION_24_30(v6, v7) & 1) == 0)
  {
    if (qword_280BE8B08 != -1)
    {
      swift_once();
    }

    v9 = OUTLINED_FUNCTION_31_0(&qword_280BE8B10);
    v11 = v8 && v10 == v64;
    if (!v11 && (OUTLINED_FUNCTION_24_30(v9, v10) & 1) == 0)
    {
      if (qword_280BE8B28 != -1)
      {
        swift_once();
      }

      v31 = OUTLINED_FUNCTION_31_0(&qword_280BE8B30);
      v33 = v8 && v32 == v64;
      if (!v33 && (OUTLINED_FUNCTION_24_30(v31, v32) & 1) == 0)
      {
        if (qword_280BE8B68 != -1)
        {
          swift_once();
        }

        v34 = OUTLINED_FUNCTION_31_0(&qword_280BE8B70);
        if (!v8 || v35 != v64)
        {
          v37 = OUTLINED_FUNCTION_24_30(v34, v35);

          if (v37)
          {
LABEL_33:
            v38 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
            v39 = OUTLINED_FUNCTION_47_2();
            v40(v39);
            v41 = v57;
            __swift_project_boxed_opaque_existential_1(v56, v57);
            OUTLINED_FUNCTION_0();
            v43 = v42;
            MEMORY[0x28223BE20](v44);
            v46 = OUTLINED_FUNCTION_10_49(v45, v55);
            v47(v46);
            v48 = OUTLINED_FUNCTION_47_2();
            v49(v48);
            v51 = v62;
            v50 = v63;
            sub_217751DE8();
            sub_217269F50(&v62);
            *&v58 = v51;
            *(&v58 + 1) = v50;
            v52 = OUTLINED_FUNCTION_47_2();
            PropertyProvider.eraseToAnyPropertyProvider()(v52, v53, v54);
            (*(v43 + 8))(v38, v41);
            __swift_destroy_boxed_opaque_existential_1(v56);
            LOBYTE(v56[0]) = 1;
            goto LABEL_16;
          }

          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_33;
    }
  }

  v12 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v13 = OUTLINED_FUNCTION_47_2();
  v14(v13);
  v15 = v57;
  __swift_project_boxed_opaque_existential_1(v56, v57);
  OUTLINED_FUNCTION_0();
  v17 = v16;
  MEMORY[0x28223BE20](v18);
  v20 = OUTLINED_FUNCTION_10_49(v19, v55);
  v21(v20);
  v22 = OUTLINED_FUNCTION_47_2();
  v23(v22);
  v25 = v62;
  v24 = v63;
  sub_217751DE8();
  sub_217269F50(&v62);
  *&v58 = v25;
  *(&v58 + 1) = v24;
  v26 = OUTLINED_FUNCTION_47_2();
  PropertyProvider.eraseToAnyPropertyProvider()(v26, v27, v28);
  (*(v17 + 8))(v12, v15);
  __swift_destroy_boxed_opaque_existential_1(v56);
  LOBYTE(v56[0]) = 0;
LABEL_16:
  v29 = v59;
  *a2 = v58;
  *(a2 + 16) = v29;
  *(a2 + 32) = v60;
  *(a2 + 48) = v61;
  *(a2 + 56) = v56[0];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Track.id.getter()
{
  Track.innerItem.getter();
  __swift_project_boxed_opaque_existential_1(v3, v3[3]);
  v0 = OUTLINED_FUNCTION_16_1();
  v1(v0);
  __swift_destroy_boxed_opaque_existential_1(v3);
  return OUTLINED_FUNCTION_93();
}

double Track.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_217275710(v1, v7);
  if (v10)
  {
    v2 = &type metadata for MusicVideo;
  }

  else
  {
    v2 = &type metadata for Song;
  }

  if (v10)
  {
    v3 = &protocol witness table for MusicVideo;
  }

  else
  {
    v3 = &protocol witness table for Song;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t Track.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283C08(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283B58(&v14);
  }
}

void *Track.albumIdentifierSet.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_27CB23DE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CB5A4(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE82A8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CB598(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x161uLL);
}

uint64_t Track.albumTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.artistURL.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    swift_allocObject();
    OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0();
    OUTLINED_FUNCTION_7_2();
    sub_2176CA63C(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, vars0, vars8);

    return sub_217283C08(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0();
    OUTLINED_FUNCTION_7_2();
    sub_2176CA560(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, v43, v44, vars0, vars8);

    return sub_217283B58(&v26);
  }
}

uint64_t Track.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6B38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE96D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

double Track.editorialNotes.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v35);
  if (v41)
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6CD8 != -1)
    {
      swift_once();
    }

    sub_2176CA67C(qword_280C02318, v10, v11, v12, v13, v14, v15, v16, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1));
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v17, v18, v19, v20, v21, v22, v23, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, *(&v42 + 1));
    sub_217283B58(&v27);
  }

  v24 = v43;
  *v0 = v42;
  v0[1] = v24;
  result = *&v44;
  v26 = v45;
  v0[2] = v44;
  v0[3] = v26;
  return result;
}

uint64_t Track.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v22, v23, v24, v25, v26, v27, v28, v29);
  if (v35)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    if (qword_280BE6D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4238(v16);
    if (v17)
    {
      v18 = v17;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    sub_217283C08(&v22);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v20 = sub_2172A41D4(v19);
    if (v20)
    {
      v18 = v20;
    }

    else
    {
      v18 = MEMORY[0x277D84F90];
    }

    sub_217283B58(&v22);
  }

  return v18;
}

uint64_t Track._favoriteStatus.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v43);
  if (v49)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v28, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE6CA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CB384(v10, v11, v12, v13, v14, v15, v16, v17, v29, v32, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51);
    result = sub_217283C08(&v35);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v28, v31, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47);
    if (qword_280BE97F8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_24_36();
    sub_2176CA924(v19, v20, v21, v22, v23, v24, v25, v26, v30, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, *(&v47 + 1), v48, v49, v50, v51);
    result = sub_217283B58(&v35);
  }

  v27 = v34;
  if (v34 == 3)
  {
    v27 = 0;
  }

  *v0 = v27;
  return result;
}

uint64_t Track.keepLocalManagedStatus.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6C30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CB3AC(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283C08(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9798 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CA94C(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283B58(&v26);
  }
}

uint64_t Track.keepLocalManagedStatusReasons.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_217275710(v0, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6C18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CB3C0(v9, v10, v11, v12, v13, v14, v15, v16, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283C08(&v26);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9780 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_7_2();
    sub_2176CA960(v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, v41, v42, vars0, vars8);
    return sub_217283B58(&v26);
  }
}

uint64_t Track.isrc.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6BF8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.playCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6B18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9690 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

void *Track.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v34);
  if (v40)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAB9C(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAA38(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t Track.previewAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v20, v21, v22, v23, v24, v25, v26, v27);
  if (v33)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE6CF0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4614(v16);
    sub_217283C08(&v20);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v17 = sub_2172A4534(v18);
    sub_217283B58(&v20);
  }

  return v17;
}

uint64_t Track._releaseYear.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6D40 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE98D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t Track.trackNumber.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6D50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE98E8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t Track.workName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6B30 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE96C8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track._popularity.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8 = OUTLINED_FUNCTION_25_44(a1, a2, a3, a4, a5, a6, a7, a8, v19, v21, v23, v25, v27, v29, v31, v33);
  if (v40)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE6D90 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v16);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v20, v22, v24, v26, v28, v30, v32, v34, v35, v36, v37, v38, v39);
    if (qword_280BE9938 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  return OUTLINED_FUNCTION_28_40();
}

uint64_t static Track.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_217275710(a1, v47);
  sub_217275710(a2, &v48);
  if (v47[56])
  {
    v3 = sub_217275710(v47, v45);
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v46;
        v15 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283C08(&v38);
        if (v19)
        {
          sub_217283C08(v45);
LABEL_21:
          sub_21727576C(v47);
          return 1;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v45);
LABEL_26:
      sub_21727576C(v47);
      return 0;
    }

    sub_217283C08(v45);
  }

  else
  {
    v20 = sub_217275710(v47, v45);
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v46;
        v32 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283B58(&v38);
        if (v36)
        {
          sub_217283B58(v45);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v45);
      goto LABEL_26;
    }

    sub_217283B58(v45);
  }

  sub_2171F06D8(v47, &qword_27CB2A368, &unk_21777FC70);
  return 0;
}

uint64_t Track.hash(into:)(uint64_t a1)
{
  v2 = sub_217275710(v1, &v25);
  if (v30)
  {
    v10 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](1, v10);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v11 = OUTLINED_FUNCTION_3_4();
    v12(v11);
    return sub_217283C08(&v17);
  }

  else
  {
    v14 = OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
    MEMORY[0x21CEA3550](0, v14);
    sub_217751FF8();
    __swift_project_boxed_opaque_existential_1(&v19, v22);
    v15 = OUTLINED_FUNCTION_3_4();
    v16(v15);
    return sub_217283B58(&v17);
  }
}

uint64_t Track.hashValue.getter()
{
  sub_2177531E8();
  Track.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175AE71C(uint64_t a1)
{
  sub_2177531E8();
  Track.hash(into:)(v2);
  return sub_217753238();
}

uint64_t sub_2175AE758@<X0>(uint64_t *a1@<X8>)
{
  result = Track.id.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t Track.subscript.getter@<X0>(uint64_t a1@<X8>)
{
  OUTLINED_FUNCTION_17_42(a1);
  v3 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_33();
  if (v20)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v6, v7, v8, v9);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    MusicVideo.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicAttributeProperty(v15, v16, v17, v18);
    MusicAttributeProperty.__allocating_init(_:)();
    sub_217751DE8();
    Song.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  return v13(v12, v14, v3);
}

{
  OUTLINED_FUNCTION_17_42(a1);
  v3 = sub_2177528F8();
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v4);
  OUTLINED_FUNCTION_20_4();
  MEMORY[0x28223BE20](v5);
  OUTLINED_FUNCTION_33_33();
  if (v20)
  {
    OUTLINED_FUNCTION_3_0();
    v6 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v6, v7, v8, v9);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    MusicVideo.subscript.getter();
    v10 = OUTLINED_FUNCTION_41_2();
    sub_217283C08(v10);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v1;
  }

  else
  {
    OUTLINED_FUNCTION_3_0();
    v15 = OUTLINED_FUNCTION_43_0();
    type metadata accessor for MusicExtendedAttributeProperty(v15, v16, v17, v18);
    sub_217751DE8();
    MusicExtendedAttributeProperty.__allocating_init(_:)();
    Song.subscript.getter();
    v19 = OUTLINED_FUNCTION_41_2();
    sub_217283B58(v19);

    if (&vars0 != 208)
    {
      return result;
    }

    v12 = OUTLINED_FUNCTION_40_0();
    v14 = v2;
  }

  return v13(v12, v14, v3);
}

void *Track.subscript.getter@<X0>(void *a1@<X8>)
{
  sub_217275710(v1, v11);
  if (v11[56])
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v4, v8, __src[0], *&__src[1], __src[3]);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_47_2();
    MusicRelationshipProperty.__allocating_init(_:kind:)();
    OUTLINED_FUNCTION_35_28();
    MusicVideo.subscript.getter();
    v5 = v2;
    sub_217283C08(v10);
  }

  else
  {
    OUTLINED_FUNCTION_18_3();
    OUTLINED_FUNCTION_27_3(v6, v8, __src[0], *&__src[1], __src[3]);
    OUTLINED_FUNCTION_31_33();
    OUTLINED_FUNCTION_47_2();
    MusicRelationshipProperty.__allocating_init(_:kind:)();
    OUTLINED_FUNCTION_35_28();
    Song.subscript.getter();
    v5 = v2;
    sub_217283B58(v10);
  }

  if (!v5)
  {
    return memcpy(a1, __src, 0x68uLL);
  }

  return result;
}

uint64_t Track.cloudEndpointKind.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_217275710(v1, &v24);
  if (v29)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_24_36();
    sub_2175AC370(v10);
    result = sub_217283C08(&v16);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v13, v14, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_24_36();
    sub_2175AC370(v12);
    result = sub_217283B58(&v16);
  }

  *v0 = v15;
  return result;
}

uint64_t Track.isLibraryAdded.getter()
{
  sub_2175AED74(v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v0 = OUTLINED_FUNCTION_16_1();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2171F06D8(v4, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v2;
}

double sub_2175AED74@<D0>(uint64_t a1@<X8>)
{
  sub_217275710(v1, v8);
  if (v10)
  {
    v3 = &type metadata for MusicVideo;
  }

  else
  {
    v3 = &type metadata for Song;
  }

  if (v10)
  {
    v4 = &protocol witness table for MusicVideo;
  }

  else
  {
    v4 = &protocol witness table for Song;
  }

  v5 = swift_allocObject();
  v6 = v8[1];
  *(v5 + 16) = v8[0];
  *(v5 + 32) = v6;
  *(v5 + 48) = v8[2];
  *(v5 + 64) = v9;
  v12 = v3;
  v13 = v4;
  *&v11 = v5;
  sub_2171F3F0C(&v11, v8);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24408, &qword_21775A390);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A380, &qword_21779A4B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    *(a1 + 32) = 0;
    result = 0.0;
    *a1 = 0u;
    *(a1 + 16) = 0u;
  }

  return result;
}

uint64_t Track.isLibraryAddEligible.getter()
{
  sub_2175AED74(v4);
  if (v5)
  {
    __swift_project_boxed_opaque_existential_1(v4, v5);
    v0 = OUTLINED_FUNCTION_16_1();
    v2 = v1(v0);
    __swift_destroy_boxed_opaque_existential_1(v4);
  }

  else
  {
    sub_2171F06D8(v4, &qword_27CB2A370, &qword_21777FC80);
    return 2;
  }

  return v2;
}

uint64_t Track.keepLocalEnabledStatus.getter@<X0>(_BYTE *a1@<X8>)
{
  sub_2175AED74(v5);
  if (v6)
  {
    __swift_project_boxed_opaque_existential_1(v5, v6);
    v2 = OUTLINED_FUNCTION_16_0();
    v3(v2);
    return __swift_destroy_boxed_opaque_existential_1(v5);
  }

  else
  {
    result = sub_2171F06D8(v5, &qword_27CB2A370, &qword_21777FC80);
    *a1 = 5;
  }

  return result;
}

uint64_t sub_2175AEFC8()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24888, &qword_21776B1D0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_217758490;
  if (qword_280BEA1C8 != -1)
  {
    swift_once();
  }

  v1 = *(&xmmword_280BEA1D0 + 1);
  v2 = byte_280BEA1E0;
  *(v0 + 32) = xmmword_280BEA1D0;
  *(v0 + 40) = v1;
  *(v0 + 48) = v2;
  v3 = qword_280BE8B08;
  sub_217751DE8();
  if (v3 != -1)
  {
    swift_once();
  }

  v4 = *algn_280BE8B18;
  v5 = byte_280BE8B20;
  *(v0 + 56) = qword_280BE8B10;
  *(v0 + 64) = v4;
  *(v0 + 72) = v5;
  v6 = qword_280BE8B28;
  sub_217751DE8();
  if (v6 != -1)
  {
    swift_once();
  }

  v7 = *algn_280BE8B38;
  v8 = byte_280BE8B40;
  *(v0 + 80) = qword_280BE8B30;
  *(v0 + 88) = v7;
  *(v0 + 96) = v8;
  v9 = qword_280BE8B68;
  sub_217751DE8();
  if (v9 != -1)
  {
    swift_once();
  }

  v10 = *algn_280BE8B78;
  v11 = byte_280BE8B80;
  *(v0 + 104) = qword_280BE8B70;
  *(v0 + 112) = v10;
  *(v0 + 120) = v11;
  qword_27CB8A2D8 = v0;

  return sub_217751DE8();
}

uint64_t sub_2175AF17C()
{
  if (qword_27CB23CD0 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

uint64_t Track.init(from:)(void *a1)
{
  sub_2171FF30C(a1, v3);
  sub_2172EE918();
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t Track.description.getter()
{
  v1 = sub_217275710(v0, &v24);
  if (v29)
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    sub_217752AA8();

    v9 = MusicVideo.description.getter();
    MEMORY[0x21CEA23B0](v9);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000, v10);
    sub_217283C08(&v16);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28);
    OUTLINED_FUNCTION_30_34();
    v11 = Song.description.getter();
    MEMORY[0x21CEA23B0](v11);

    MEMORY[0x21CEA23B0](41, 0xE100000000000000, v12);
    sub_217283B58(&v16);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Track.debugDescription.getter()
{
  sub_217275710(v0, v44);
  if (v44[56])
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    v1 = MusicVideo.debugDescription.getter();
    v9 = OUTLINED_FUNCTION_21_1(v1, v2, v3, v4, v5, v6, v7, v8, v36, v39);
    OUTLINED_FUNCTION_6_2(v9, v10, v11, v12, v13, v14, MEMORY[0x277D837D0], v15, v37, v40, v42);

    v16 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x21CEA23B0](v16);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v17);
    sub_217283C08(v43);
  }

  else
  {
    OUTLINED_FUNCTION_3_8();
    sub_217752AA8();

    OUTLINED_FUNCTION_30_34();
    v18 = Song.debugDescription.getter();
    v26 = OUTLINED_FUNCTION_21_1(v18, v19, v20, v21, v22, v23, v24, v25, v36, v39);
    OUTLINED_FUNCTION_6_2(v26, v27, v28, v29, v30, v31, MEMORY[0x277D837D0], v32, v38, v41, v42);

    v33 = OUTLINED_FUNCTION_16_0();
    MEMORY[0x21CEA23B0](v33);

    MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v34);
    sub_217283B58(v43);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t static Track.typeValue.getter()
{
  if (qword_280BE8588 != -1)
  {
    OUTLINED_FUNCTION_9_55(&qword_280BE8588);
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE8590);

  return sub_217751DE8();
}

uint64_t sub_2175AF5A0()
{
  if (qword_280BE8588 != -1)
  {
    OUTLINED_FUNCTION_9_55(&qword_280BE8588);
  }

  xmmword_280BE62A8 = xmmword_280BE8590;
  xmmword_280BE62B8 = xmmword_280BE85A0;

  return sub_217751DE8();
}

uint64_t static MusicItemTypeValue.track.getter()
{
  if (qword_280BE62A0 != -1)
  {
    swift_once();
  }

  OUTLINED_FUNCTION_204_0(&xmmword_280BE62A8);

  return sub_217751DE8();
}

uint64_t sub_2175AF670()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24A08, &qword_217758FC0);
  v0 = swift_allocObject();
  v0[1] = xmmword_217759200;
  if (qword_280BEB138 != -1)
  {
    swift_once();
  }

  v1 = xmmword_280BEB150;
  v0[2] = xmmword_280BEB140;
  v0[3] = v1;
  v2 = qword_280BE6378;
  sub_217751DE8();
  if (v2 != -1)
  {
    swift_once();
  }

  v3 = xmmword_280BE6390;
  v0[4] = xmmword_280BE6380;
  v0[5] = v3;
  qword_27CB2A360 = v0;

  return sub_217751DE8();
}

uint64_t static Track.supportedTypeValues.getter()
{
  if (qword_27CB23CD8 != -1)
  {
    swift_once();
  }

  return sub_217751DE8();
}

unint64_t sub_2175AF7CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A378;
  if (!qword_27CB2A378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A378);
  }

  return result;
}

uint64_t sub_2175AF82C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 56);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_2175AF868(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 41) = 0u;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 57) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 57) = 0;
    }

    if (a2)
    {
      *(result + 56) = -a2;
    }
  }

  return result;
}

uint64_t sub_2175AF8B8(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 56) = a2;
  return result;
}

void *sub_2175AFAC0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X6>, void *a6@<X8>)
{
  v17[1] = a2;
  v17[2] = a5;
  v18 = a6;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for CloudResourceCollection(0, v13, v12, v13);
  v15 = *(v14 - 8);
  (*(v15 + 16))(&v22, a1, v14);
  (*(v9 + 16))(v11, a3, a4);
  v21 = 0;
  v19 = 0u;
  v20 = 0u;
  sub_2174D0DD8();
  (*(v9 + 8))(a3, a4);
  (*(v15 + 8))(a1, v14);
  return sub_2173AA804(__src, v18);
}

void sub_2175AFCBC()
{
  OUTLINED_FUNCTION_9_56();
  if (!v3)
  {
    goto LABEL_67;
  }

  if ((v0 & 0x1000000000000000) != 0)
  {
    sub_2175B15FC(v1, v0, 10);
LABEL_67:

    return;
  }

  if ((v0 & 0x2000000000000000) == 0)
  {
    if ((v1 & 0x1000000000000000) != 0)
    {
      v4 = ((v0 & 0xFFFFFFFFFFFFFFFLL) + 32);
    }

    else
    {
      v4 = sub_217752B88();
    }

    v5 = *v4;
    if (v5 == 43)
    {
      if (v2 >= 1)
      {
        if (v2 != 1 && v4)
        {
          OUTLINED_FUNCTION_16_52();
          do
          {
            OUTLINED_FUNCTION_1_2();
            if (!v7 & v6)
            {
              break;
            }

            OUTLINED_FUNCTION_0_47();
            if (!v7)
            {
              break;
            }

            if (__OFADD__(v15, v14))
            {
              break;
            }

            OUTLINED_FUNCTION_2_5();
          }

          while (!v7);
        }

        goto LABEL_67;
      }

      goto LABEL_72;
    }

    if (v5 != 45)
    {
      if (v2 && v4)
      {
        do
        {
          if (*v4 - 48 > 9)
          {
            break;
          }

          OUTLINED_FUNCTION_14_47();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v21, v20))
          {
            break;
          }

          v4 = (v18 + 1);
        }

        while (v19 != 1);
      }

      goto LABEL_67;
    }

    if (v2 >= 1)
    {
      if (v2 != 1 && v4)
      {
        OUTLINED_FUNCTION_16_52();
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v9, v8))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    __break(1u);
LABEL_71:
    __break(1u);
LABEL_72:
    __break(1u);
    goto LABEL_73;
  }

  OUTLINED_FUNCTION_15_50();
  if (!v7)
  {
    if (v11 != 45)
    {
      if (v10)
      {
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFADD__(v23, v22))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    if (v10)
    {
      if (v10 != 1)
      {
        OUTLINED_FUNCTION_3_88();
        do
        {
          OUTLINED_FUNCTION_1_2();
          if (!v7 & v6)
          {
            break;
          }

          OUTLINED_FUNCTION_0_47();
          if (!v7)
          {
            break;
          }

          if (__OFSUB__(v13, v12))
          {
            break;
          }

          OUTLINED_FUNCTION_2_5();
        }

        while (!v7);
      }

      goto LABEL_67;
    }

    goto LABEL_71;
  }

  if (v10)
  {
    if (v10 != 1)
    {
      OUTLINED_FUNCTION_3_88();
      do
      {
        OUTLINED_FUNCTION_1_2();
        if (!v7 & v6)
        {
          break;
        }

        OUTLINED_FUNCTION_0_47();
        if (!v7)
        {
          break;
        }

        if (__OFADD__(v17, v16))
        {
          break;
        }

        OUTLINED_FUNCTION_2_5();
      }

      while (!v7);
    }

    goto LABEL_67;
  }

LABEL_73:
  __break(1u);
}

double static URLQueryItem.requestedTypes(from:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7 = *(a1 + 16);
  if (v7)
  {
    v20 = MEMORY[0x277D84F90];
    sub_217275C90(0, v7, 0, a4, a5, a6, a7);
    v9 = (a1 + 40);
    do
    {
      v11 = *(v9 - 1);
      v10 = *v9;
      v13 = *(v20 + 16);
      v12 = *(v20 + 24);
      sub_217751DE8();
      if (v13 >= v12 >> 1)
      {
        sub_217275C90(v12 > 1, v13 + 1, 1, v14, v15, v16, v17);
      }

      *(v20 + 16) = v13 + 1;
      v18 = v20 + 16 * v13;
      *(v18 + 32) = v11;
      *(v18 + 40) = v10;
      v9 += 3;
      --v7;
    }

    while (v7);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
  sub_2173C2F20();
  sub_217751ED8();

  sub_2177513F8();
}

uint64_t sub_2175B003C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = 0;
  v6 = *(a1 + 16);
  while (1)
  {
    if (v6 == v5)
    {
      v10 = 0;
      goto LABEL_12;
    }

    sub_217751428();
    if (sub_217751408() == a2 && v7 == a3)
    {
      break;
    }

    v9 = sub_217753058();

    if (v9)
    {
      goto LABEL_11;
    }

    ++v5;
  }

LABEL_11:
  v10 = v5;
LABEL_12:

  return v10;
}

void Array<A>.update(with:)(uint64_t a1)
{
  v2 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v5.n128_f64[0] = MEMORY[0x28223BE20](v3);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = *(a1 + 16);
  if (v8)
  {
    v10 = *(v4 + 16);
    v9 = v4 + 16;
    v11 = a1 + ((*(v9 + 64) + 32) & ~*(v9 + 64));
    v18 = *(v9 + 56);
    v19 = v10;
    v12 = (v9 - 8);
    do
    {
      v19(v7, v11, v2, v5);
      v13 = sub_217751408();
      v15 = v14;
      v16 = sub_217751418();
      Array<A>.subscript.setter(v16, v17, v13, v15);
      (*v12)(v7, v2);
      v11 += v18;
      --v8;
    }

    while (v8);
  }

  OUTLINED_FUNCTION_13();
}

{
  v1 = sub_217751408();
  v3 = v2;
  v4 = sub_217751418();

  Array<A>.subscript.setter(v4, v5, v1, v3);
}

uint64_t sub_2175B02A4()
{
  v0 = sub_217751428();
  __swift_allocate_value_buffer(v0, qword_280BE7428);
  __swift_project_value_buffer(v0, qword_280BE7428);
  return sub_2177513F8();
}

uint64_t sub_2175B0348()
{
  v0 = sub_217751428();
  __swift_allocate_value_buffer(v0, qword_27CB2A388);
  __swift_project_value_buffer(v0, qword_27CB2A388);
  return sub_2177513F8();
}

uint64_t sub_2175B03DC@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    swift_once();
  }

  v6 = sub_217751428();
  v7 = __swift_project_value_buffer(v6, a2);
  v8 = *(*(v6 - 8) + 16);

  return v8(a4, v7, v6);
}

void Array<A>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v8 = v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB294E8, &qword_217776E50);
  MEMORY[0x28223BE20](v12 - 8);
  v28 = &v27 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15.n128_f64[0] = MEMORY[0x28223BE20](v14);
  v27 = &v27 - v16;
  v17 = 0;
  v18 = *(a3 + 16);
  v29 = v8 + 16;
  v30 = a3;
  v19 = (v8 + 8);
  while (1)
  {
    if (v18 == v17)
    {
      v24 = 1;
      v25 = v27;
      goto LABEL_12;
    }

    (*(v8 + 16))(v11, v30 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + *(v8 + 72) * v17, v6, v15);
    if (sub_217751408() == a1 && v20 == a2)
    {
      break;
    }

    v22 = sub_217753058();

    if (v22)
    {
      goto LABEL_11;
    }

    (*v19)(v11, v6, v23.n128_f64[0]);
    ++v17;
  }

LABEL_11:
  v25 = v27;
  (*(v8 + 32))(v27, v11, v6, v23);
  v24 = 0;
LABEL_12:
  __swift_storeEnumTagSinglePayload(v25, v24, 1, v6);
  v26 = v28;
  sub_2175471C0(v25, v28);
  if (__swift_getEnumTagSinglePayload(v26, 1, v6) == 1)
  {
    sub_217547230(v25);
    sub_217547230(v26);
  }

  else
  {
    sub_217751418();
    sub_217547230(v25);
    (*v19)(v26, v6);
  }

  OUTLINED_FUNCTION_13();
}

{
  Array<A>.subscript.getter(a1, a2, a3);
  if (v4)
  {
    OUTLINED_FUNCTION_9_56();
    if (v7)
    {
      if ((v3 & 0x1000000000000000) != 0)
      {
        sub_2175B15FC(v5, v3, 10);
LABEL_68:

        return;
      }

      if ((v3 & 0x2000000000000000) != 0)
      {
        OUTLINED_FUNCTION_15_50();
        if (v11)
        {
          if (v14)
          {
            if (v14 != 1)
            {
              OUTLINED_FUNCTION_3_88();
              do
              {
                OUTLINED_FUNCTION_1_2();
                if (!v11 & v10)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v11)
                {
                  break;
                }

                if (__OFADD__(v21, v20))
                {
                  break;
                }

                OUTLINED_FUNCTION_2_5();
              }

              while (!v11);
            }

            goto LABEL_68;
          }

          goto LABEL_76;
        }

        if (v15 != 45)
        {
          if (v14)
          {
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFADD__(v27, v26))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }

        if (v14)
        {
          if (v14 != 1)
          {
            OUTLINED_FUNCTION_3_88();
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFSUB__(v17, v16))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }
      }

      else
      {
        if ((v5 & 0x1000000000000000) != 0)
        {
          v8 = ((v3 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v8 = sub_217752B88();
        }

        v9 = *v8;
        if (v9 == 43)
        {
          if (v6 >= 1)
          {
            if (v6 != 1 && v8)
            {
              OUTLINED_FUNCTION_16_52();
              do
              {
                OUTLINED_FUNCTION_1_2();
                if (!v11 & v10)
                {
                  break;
                }

                OUTLINED_FUNCTION_0_47();
                if (!v11)
                {
                  break;
                }

                if (__OFADD__(v19, v18))
                {
                  break;
                }

                OUTLINED_FUNCTION_2_5();
              }

              while (!v11);
            }

            goto LABEL_68;
          }

          goto LABEL_75;
        }

        if (v9 != 45)
        {
          if (v6 && v8)
          {
            do
            {
              if (*v8 - 48 > 9)
              {
                break;
              }

              OUTLINED_FUNCTION_14_47();
              if (!v11)
              {
                break;
              }

              if (__OFADD__(v25, v24))
              {
                break;
              }

              v8 = (v22 + 1);
            }

            while (v23 != 1);
          }

          goto LABEL_68;
        }

        if (v6 >= 1)
        {
          if (v6 != 1 && v8)
          {
            OUTLINED_FUNCTION_16_52();
            do
            {
              OUTLINED_FUNCTION_1_2();
              if (!v11 & v10)
              {
                break;
              }

              OUTLINED_FUNCTION_0_47();
              if (!v11)
              {
                break;
              }

              if (__OFSUB__(v13, v12))
              {
                break;
              }

              OUTLINED_FUNCTION_2_5();
            }

            while (!v11);
          }

          goto LABEL_68;
        }

        __break(1u);
      }

      __break(1u);
LABEL_75:
      __break(1u);
LABEL_76:
      __break(1u);
      return;
    }
  }
}

void sub_2175B071C(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  Array<A>.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  a3[1] = v5;
}

void sub_2175B074C(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = a1[1];
  sub_217751DE8();
  sub_217751DE8();
  Array<A>.subscript.setter(v5, v6, v3, v4);
}

void Array<A>.subscript.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v10 = sub_217751428();
  OUTLINED_FUNCTION_0_0();
  v12 = v11;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  v16 = &v45 - v15;
  MEMORY[0x28223BE20](v17);
  if (a2)
  {
    v45 = v19;
    v46 = &v45 - v18;
    v48 = a3;
    sub_2177513F8();

    v21 = 0;
    v47 = v4;
    v22 = *v4;
    v23 = *(*v4 + 16);
    v49 = v12 + 16;
    v50 = v12 + 8;
    v51 = v23;
    v24 = v10;
    while (1)
    {
      if (v51 == v21)
      {

        v35 = v45;
        v34 = v46;
        v36 = OUTLINED_FUNCTION_132();
        v37(v36);
        v38 = v47;
        sub_21770B7A4();
        v39 = *(*v38 + 16);
        sub_21770BAD4(v39);
        (*(v12 + 8))(v34, v24);
        v40 = *v38;
        *(v40 + 16) = v39 + 1;
        (*(v12 + 32))(v40 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v39, v35, v24);
        *v38 = v40;
LABEL_20:
        OUTLINED_FUNCTION_13();
        return;
      }

      if (v21 >= *(v22 + 16))
      {
        break;
      }

      v5 = (*(v12 + 80) + 32) & ~*(v12 + 80);
      v10 = *(v12 + 72) * v21;
      v6 = v12;
      (*(v12 + 16))(v16, v22 + v5 + v10, v24, v20);
      if (sub_217751408() == v48 && v25 == a4)
      {

        v41 = OUTLINED_FUNCTION_13_48();
        v42(v41);
LABEL_17:

        if (swift_isUniquelyReferenced_nonNull_native())
        {
LABEL_18:
          v43 = v47;
          if (v21 < *(v22 + 16))
          {
            (*(v6 + 40))(v22 + v5 + v10, v46, v24);
            *v43 = v22;
            goto LABEL_20;
          }

          __break(1u);
LABEL_24:
          __break(1u);
          return;
        }

LABEL_22:
        sub_2175035C8();
        v22 = v44;
        goto LABEL_18;
      }

      v27 = a4;
      v28 = sub_217753058();

      v29 = OUTLINED_FUNCTION_13_48();
      v30(v29);
      if (v28)
      {
        goto LABEL_17;
      }

      ++v21;
      a4 = v27;
      v12 = v6;
    }

    __break(1u);
    goto LABEL_22;
  }

  sub_217751DE8();
  sub_2175B1B0C(v4, a3, a4);
  v32 = *(*v4 + 16);
  if (v32 < v31)
  {
    goto LABEL_24;
  }

  sub_2175B1264(v31, v32);
  OUTLINED_FUNCTION_13();
}

void (*Array<A>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1, char a2)
{
  v7 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v7;
  v7[3] = a3;
  v7[4] = v3;
  v7[2] = a2;
  v8 = OUTLINED_FUNCTION_132();
  Array<A>.subscript.getter(v8, v9, v10);
  *v7 = v11;
  v7[1] = v12;
  return sub_2175B0BA8;
}

void sub_2175B0BA8(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 24);
  v4 = *(*a1 + 16);
  if (a2)
  {
    sub_217751DE8();
    sub_217751DE8();
    v5 = OUTLINED_FUNCTION_16_0();
    Array<A>.subscript.setter(v5, v6, v4, v3);
  }

  else
  {
    sub_217751DE8();
    v7 = OUTLINED_FUNCTION_16_0();
    Array<A>.subscript.setter(v7, v8, v4, v3);
  }

  free(v2);
}

void sub_2175B0E80(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t a3@<X8>)
{
  Array<A>.subscript.getter(*a2, a2[1], *a1);
  *a3 = v4;
  *(a3 + 8) = v5 & 1;
}

void sub_2175B0EB8(uint64_t *a1, uint64_t a2, uint64_t *a3)
{
  v3 = *a3;
  v4 = a3[1];
  v5 = *a1;
  v6 = *(a1 + 8);
  sub_217751DE8();
  Array<A>.subscript.setter(v5, v6, v3, v4);
}

void Array<A>.subscript.setter(uint64_t a1, char a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v6 = 0;
    v7 = 0;
  }

  else
  {
    v6 = sub_217752FC8();
  }

  Array<A>.subscript.setter(v6, v7, a3, a4);
}

void (*Array<A>.subscript.modify(void *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  v7 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v7;
  v7[4] = a3;
  v7[5] = v3;
  v7[3] = a2;
  v8 = OUTLINED_FUNCTION_132();
  Array<A>.subscript.getter(v8, v9, v10);
  *v7 = v11;
  *(v7 + 8) = v12 & 1;
  return sub_2175B100C;
}

void sub_2175B100C(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 32);
  if (*(*a1 + 8))
  {
    sub_217751DE8();
    v3 = 0;
    v4 = 0;
  }

  else
  {
    v1[2] = *v1;
    sub_217751DE8();
    v3 = sub_217752FC8();
    v2 = v1[4];
  }

  Array<A>.subscript.setter(v3, v4, v1[3], v2);

  free(v1);
}

void sub_2175B10F8(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_4_84();
  if (v5 != v6)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  v7 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v6 = __OFSUB__(1, v7);
  v8 = 1 - v7;
  if (v6)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  if (__OFADD__(v4, v8))
  {
LABEL_13:
    __break(1u);
    return;
  }

  sub_2173B7154(v4 + v8, 1);

  sub_217503700();
}

void sub_2175B118C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B7154(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 752 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_217500044((v12 + 752 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_2175B1264(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  v4 = *(*v2 + 16);
  if (v4 < a2)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v6 = a2 - result;
  if (__OFSUB__(a2, result))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v7 = result - a2;
  if (__OFSUB__(0, v6))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v4, v7))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71CC(v4 - v6, 1);
  v8 = *v2;
  v9 = *(sub_217751428() - 8);
  v10 = v8 + ((*(v9 + 80) + 32) & ~*(v9 + 80));
  v11 = *(v9 + 72);
  v12 = v10 + v11 * result;
  swift_arrayDestroy();
  if (!v6)
  {
LABEL_10:
    *v2 = v8;
    return;
  }

  v13 = *(v8 + 16);
  if (__OFSUB__(v13, a2))
  {
    goto LABEL_16;
  }

  sub_2175000FC(v10 + v11 * a2, v13 - a2, v12);
  v14 = *(v8 + 16);
  v15 = __OFADD__(v14, v7);
  v16 = v14 - v6;
  if (!v15)
  {
    *(v8 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_2175B1394(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71E4(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 16 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_217230498((v12 + 16 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_2175B1464(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_4_84();
  if (v9 != v10)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  v11 = v3;
  v12 = a2 - v3;
  if (__OFSUB__(a2, v3))
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v13 = v7;
  v14 = v6;
  v15 = (v7 >> 1) - v6;
  if (__OFSUB__(v7 >> 1, v6))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = __OFSUB__(v15, v12);
  v16 = v15 - v12;
  if (v10)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v8, v16))
  {
LABEL_15:
    __break(1u);
    return;
  }

  v17 = v5;
  v18 = v4;
  sub_2173B7154(v8 + v16, 1);

  sub_217503B1C(v11, a2, v15, v18, v17, v14, v13);
}

void sub_2175B152C(uint64_t a1, uint64_t a2)
{
  if (a1 < 0)
  {
    __break(1u);
    goto LABEL_12;
  }

  OUTLINED_FUNCTION_4_84();
  if (v6 != v7)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  v8 = v4;
  v9 = a2 - v4;
  if (__OFSUB__(a2, v4))
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v10 = v4 - a2;
  if (__OFSUB__(0, v9))
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (__OFADD__(v5, v10))
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  sub_2173B71FC(v5 - v9, 1);
  v11 = *v2;
  v12 = *v2 + 32;
  v13 = (v12 + 32 * v8);
  OUTLINED_FUNCTION_16_0();
  swift_arrayDestroy();
  if (!v9)
  {
LABEL_10:
    *v2 = v11;
    return;
  }

  v14 = *(v11 + 16);
  if (__OFSUB__(v14, a2))
  {
    goto LABEL_16;
  }

  sub_2172304B8((v12 + 32 * a2), v14 - a2, v13);
  v15 = *(v11 + 16);
  v7 = __OFADD__(v15, v10);
  v16 = v15 - v9;
  if (!v7)
  {
    *(v11 + 16) = v16;
    goto LABEL_10;
  }

LABEL_17:
  __break(1u);
}

void sub_2175B15FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v85 = a1;
  v86 = a2;
  sub_217751DE8();
  v5 = sub_217752108();
  v6 = v4;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v44 = OUTLINED_FUNCTION_132();
    v5 = sub_217288DA4(v44, v45);
    v47 = v46;

    v6 = v47;
    if ((v47 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v4 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v5 & 0x1000000000000000) != 0)
    {
      v7 = ((v6 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v5 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      OUTLINED_FUNCTION_132();
      v7 = sub_217752B88();
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        if (v8 != 1)
        {
          OUTLINED_FUNCTION_0_11();
          if (v25 ^ v26 | v24)
          {
            v29 = 65;
          }

          if (!(v25 ^ v26 | v24))
          {
            v30 = 58;
          }

          if (v27)
          {
            v31 = 0;
            v32 = (v27 + 1);
            while (1)
            {
              v33 = *v32;
              if (v33 < 0x30 || v33 >= v30)
              {
                if (v33 < 0x41 || v33 >= v29)
                {
                  OUTLINED_FUNCTION_7_60();
                  if (!v22 || v33 >= v35)
                  {
                    goto LABEL_140;
                  }

                  v34 = -87;
                }

                else
                {
                  v34 = -55;
                }
              }

              else
              {
                v34 = -48;
              }

              v36 = v31 * a3;
              if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
              {
                v31 = v36 + (v33 + v34);
                if (!__OFADD__(v36, (v33 + v34)))
                {
                  ++v32;
                  if (--v28)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_140;
            }
          }
        }

        goto LABEL_140;
      }

      goto LABEL_144;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v37 = a3 + 48;
        v38 = a3 + 55;
        v39 = a3 + 87;
        if (a3 > 10)
        {
          v37 = 58;
        }

        else
        {
          v39 = 97;
          v38 = 65;
        }

        if (v7)
        {
          v40 = 0;
          while (1)
          {
            v41 = *v7;
            if (v41 < 0x30 || v41 >= v37)
            {
              if (v41 < 0x41 || v41 >= v38)
              {
                if (v41 < 0x61 || v41 >= v39)
                {
                  goto LABEL_140;
                }

                v42 = -87;
              }

              else
              {
                v42 = -55;
              }
            }

            else
            {
              v42 = -48;
            }

            v43 = v40 * a3;
            if ((v40 * a3) >> 64 == (v40 * a3) >> 63)
            {
              v40 = v43 + (v41 + v42);
              if (!__OFADD__(v43, (v41 + v42)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_140;
          }
        }
      }

      goto LABEL_140;
    }

    if (v8 >= 1)
    {
      if (v8 != 1)
      {
        OUTLINED_FUNCTION_0_11();
        if (v11 ^ v12 | v10)
        {
          v15 = 65;
        }

        if (!(v11 ^ v12 | v10))
        {
          v16 = 58;
        }

        if (v13)
        {
          v17 = 0;
          v18 = (v13 + 1);
          while (1)
          {
            v19 = *v18;
            if (v19 < 0x30 || v19 >= v16)
            {
              if (v19 < 0x41 || v19 >= v15)
              {
                OUTLINED_FUNCTION_7_60();
                if (!v22 || v19 >= v21)
                {
                  break;
                }

                v20 = -87;
              }

              else
              {
                v20 = -55;
              }
            }

            else
            {
              v20 = -48;
            }

            v23 = v17 * a3;
            if ((v17 * a3) >> 64 == (v17 * a3) >> 63)
            {
              v17 = v23 - (v19 + v20);
              if (!__OFSUB__(v23, (v19 + v20)))
              {
                ++v18;
                if (--v14)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_140:

      return;
    }

    __break(1u);
LABEL_143:
    __break(1u);
LABEL_144:
    __break(1u);
    goto LABEL_145;
  }

  v48 = HIBYTE(v6) & 0xF;
  v85 = v5;
  v86 = v6 & 0xFFFFFFFFFFFFFFLL;
  if (v5 != 43)
  {
    if (v5 != 45)
    {
      if (v48)
      {
        OUTLINED_FUNCTION_12_4();
        if (v74 ^ v75 | v73)
        {
          v78 = 65;
        }

        if (!(v74 ^ v75 | v73))
        {
          v79 = 58;
        }

        v80 = &v85;
        while (1)
        {
          v81 = *v80;
          if (v81 < 0x30 || v81 >= v79)
          {
            if (v81 < 0x41 || v81 >= v78)
            {
              OUTLINED_FUNCTION_7_60();
              if (!v22 || v81 >= v83)
              {
                goto LABEL_140;
              }

              v82 = -87;
            }

            else
            {
              v82 = -55;
            }
          }

          else
          {
            v82 = -48;
          }

          v84 = v77 * a3;
          if ((v77 * a3) >> 64 == (v77 * a3) >> 63)
          {
            v77 = v84 + (v81 + v82);
            if (!__OFADD__(v84, (v81 + v82)))
            {
              v80 = (v80 + 1);
              if (--v76)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    if (v48)
    {
      if (v48 != 1)
      {
        OUTLINED_FUNCTION_12_4();
        if (v50 ^ v51 | v49)
        {
          v54 = 65;
        }

        if (!(v50 ^ v51 | v49))
        {
          v55 = 58;
        }

        v56 = &v85 + 1;
        while (1)
        {
          v57 = *v56;
          if (v57 < 0x30 || v57 >= v55)
          {
            if (v57 < 0x41 || v57 >= v54)
            {
              OUTLINED_FUNCTION_7_60();
              if (!v22 || v57 >= v59)
              {
                goto LABEL_140;
              }

              v58 = -87;
            }

            else
            {
              v58 = -55;
            }
          }

          else
          {
            v58 = -48;
          }

          v60 = v53 * a3;
          if ((v53 * a3) >> 64 == (v53 * a3) >> 63)
          {
            v53 = v60 - (v57 + v58);
            if (!__OFSUB__(v60, (v57 + v58)))
            {
              ++v56;
              if (--v52)
              {
                continue;
              }
            }
          }

          goto LABEL_140;
        }
      }

      goto LABEL_140;
    }

    goto LABEL_143;
  }

  if (v48)
  {
    if (v48 != 1)
    {
      OUTLINED_FUNCTION_12_4();
      if (v62 ^ v63 | v61)
      {
        v66 = 65;
      }

      if (!(v62 ^ v63 | v61))
      {
        v67 = 58;
      }

      v68 = &v85 + 1;
      while (1)
      {
        v69 = *v68;
        if (v69 < 0x30 || v69 >= v67)
        {
          if (v69 < 0x41 || v69 >= v66)
          {
            OUTLINED_FUNCTION_7_60();
            if (!v22 || v69 >= v71)
            {
              goto LABEL_140;
            }

            v70 = -87;
          }

          else
          {
            v70 = -55;
          }
        }

        else
        {
          v70 = -48;
        }

        v72 = v65 * a3;
        if ((v65 * a3) >> 64 == (v65 * a3) >> 63)
        {
          v65 = v72 + (v69 + v70);
          if (!__OFADD__(v72, (v69 + v70)))
          {
            ++v68;
            if (--v64)
            {
              continue;
            }
          }
        }

        goto LABEL_140;
      }
    }

    goto LABEL_140;
  }

LABEL_145:
  __break(1u);
}

void sub_2175B1B0C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v45 = sub_217751428();
  v6 = *(v45 - 8);
  MEMORY[0x28223BE20](v45);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = &v40 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v40 - v13;
  v15 = *a1;
  sub_217751DE8();
  v16 = v54;
  v17 = sub_2175B003C(v15, a2, a3);
  if (v16 || (v47 = v14, v51 = a2, (v18 & 1) != 0))
  {
LABEL_2:
  }

  else
  {
    v43 = v8;
    v44 = v11;
    v40 = 0;
    v41 = a1;
    v48 = v17;
    v19 = v17 + 1;
    if (!__OFADD__(v17, 1))
    {
      v20 = v15;
      v49 = v6;
      v50 = (v6 + 8);
      v42 = (v6 + 40);
      v21 = v45;
      v22 = v47;
      v46 = a3;
      v54 = v6 + 16;
      while (1)
      {
        v23 = *(v20 + 16);
        if (v19 == v23)
        {
          goto LABEL_2;
        }

        if (v19 >= v23)
        {
          __break(1u);
LABEL_29:
          __break(1u);
LABEL_30:
          __break(1u);
LABEL_31:
          __break(1u);
LABEL_32:
          __break(1u);
          goto LABEL_33;
        }

        v52 = (*(v6 + 80) + 32) & ~*(v6 + 80);
        v24 = v20 + v52;
        v25 = *(v6 + 72);
        v26 = *(v6 + 16);
        v53 = v25 * v19;
        v26(v22, v20 + v52 + v25 * v19, v21);
        if (sub_217751408() == v51 && v27 == a3)
        {
          break;
        }

        v29 = sub_217753058();

        (*v50)(v22, v21, v30);
        if (v29)
        {
          a3 = v46;
          v22 = v47;
LABEL_15:
          v6 = v49;
          goto LABEL_26;
        }

        v32 = v48;
        if (v19 == v48)
        {
          a3 = v46;
          v22 = v47;
          v6 = v49;
        }

        else
        {
          if ((v48 & 0x8000000000000000) != 0)
          {
            goto LABEL_29;
          }

          v33 = *(v20 + 16);
          if (v48 >= v33)
          {
            goto LABEL_30;
          }

          v34 = v25 * v48;
          v35 = v45;
          v26(v44, v24 + v25 * v48, v45);
          if (v19 >= v33)
          {
            goto LABEL_31;
          }

          v36 = v53;
          v26(v43, v24 + v53, v35);
          v21 = v35;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_2175035C8();
            v20 = v39;
          }

          v6 = v49;
          v37 = v20 + v52;
          v38 = *v42;
          (*v42)(v20 + v52 + v34, v43, v35);
          if (v19 >= *(v20 + 16))
          {
            goto LABEL_32;
          }

          v38(v37 + v36, v44, v35);
          *v41 = v20;
          a3 = v46;
          v22 = v47;
          v32 = v48;
        }

        v48 = v32 + 1;
LABEL_26:
        ++v19;
      }

      (*v50)(v22, v21, v31);
      goto LABEL_15;
    }

LABEL_33:
    __break(1u);
  }
}

uint64_t sub_2175B1F64(uint64_t a1)
{
  v2 = *(*a1 + 152);
  swift_beginAccess();
  v3 = *(a1 + v2);
  *(a1 + v2) = sub_217751B48();
  return sub_217211878(v3);
}

void sub_2175B1FD8(uint64_t a1)
{
  os_unfair_lock_assert_not_owner(*(*(v1 + *(*v1 + 144)) + 16));
  sub_217751B28();
  sub_21720BA7C();
}

uint64_t sub_2175B20A0(uint64_t a1, uint64_t a2)
{
  v4 = *(*a1 + 152);
  swift_beginAccess();
  v5 = *(a1 + v4);
  sub_217751B58();
  result = sub_217751B38();
  if ((result & 1) == 0)
  {
    if (v5 < 0)
    {
      __break(1u);
      goto LABEL_23;
    }

    if (!v5)
    {
      goto LABEL_12;
    }
  }

  swift_beginAccess();
  v7 = *(a1 + v4);
  sub_217751B58();
  if ((sub_217751B38() & 1) == 0)
  {
    sub_217751B58();
    result = sub_217751B38();
    if (result)
    {
      v8 = sub_217751B58();
LABEL_10:
      *(a1 + v4) = v8;
      goto LABEL_11;
    }

    if ((v7 & 0x8000000000000000) == 0)
    {
      if (v7)
      {
        v8 = v7 - 1;
        goto LABEL_10;
      }

LABEL_24:
      __break(1u);
      goto LABEL_25;
    }

LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

LABEL_11:
  swift_endAccess();
LABEL_12:
  swift_beginAccess();
  v9 = *(a1 + v4);
  sub_217751B58();
  if (sub_217751B38())
  {
LABEL_21:
    swift_endAccess();
    return sub_217211878(v5);
  }

  sub_217751B58();
  v10 = sub_217751B38();
  v11 = sub_217751B58();
  if (v10)
  {
LABEL_20:
    *(a1 + v4) = v11;
    goto LABEL_21;
  }

  result = sub_217751B38();
  if (result)
  {
LABEL_18:
    v11 = sub_217751B58();
    goto LABEL_20;
  }

  if ((v9 | a2) < 0)
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  v11 = v9 + a2;
  if (__OFADD__(v9, a2))
  {
    goto LABEL_18;
  }

  if ((v11 & 0x8000000000000000) == 0)
  {
    goto LABEL_20;
  }

LABEL_26:
  __break(1u);
  return result;
}

uint64_t sub_2175B2234()
{
  OUTLINED_FUNCTION_1_96();
  (*(v1 + 8))(v0 + v2);
  OUTLINED_FUNCTION_0_41();
  OUTLINED_FUNCTION_1_96();
  (*(v3 + 8))(v0 + v4);
  OUTLINED_FUNCTION_0_41();

  OUTLINED_FUNCTION_0_41();

  return v0;
}

uint64_t sub_2175B2324()
{
  sub_2175B2234();

  return MEMORY[0x2821FE8D8](v0);
}

uint64_t Artwork.init(_:alternateText:existingColorAnalysis:)@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, void *a5@<X8>)
{
  v194[55] = *MEMORY[0x277D85DE8];
  v8 = *a4;
  v144 = *(a4 + 16);
  v146 = *(a4 + 8);
  v142 = *(a4 + 24);
  sub_2172E22C0(v194);
  v9 = a1[4];
  OUTLINED_FUNCTION_27_40();
  v10 = OUTLINED_FUNCTION_5_4();
  if (v11(v10, v9))
  {
    v12 = objc_opt_self();
    v13 = sub_217751D88();
    v191[0] = 0;
    v14 = [v12 dataWithJSONObject:v13 options:0 error:{v191, }];

    v15 = v191[0];
    if (v14)
    {
      v16 = sub_217751768();
      v18 = v17;

      sub_217751348();
      swift_allocObject();
      sub_217751338();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB243F0, &qword_21775D690);
      sub_2172DF600();
      sub_217751308();

      sub_217275694(v16, v18);
      memcpy(v190, v191, 0x1B8uLL);
      nullsub_1();
      v60 = v190;
      goto LABEL_6;
    }

    v19 = v15;
    v20 = sub_217751638();

    swift_willThrow();
  }

  v60 = v194;
LABEL_6:
  memcpy(v193, v60, sizeof(v193));
  memcpy(v192, v193, sizeof(v192));
  if (j__get_enum_tag_for_layout_string_8MusicKit0A6PlayerC15QueueDescriptorV4ItemVSg_0(v192) != 1)
  {
    sub_2175B364C(v8, v146, v144, v142);

    memcpy(v190, v193, 0x1B8uLL);
    CloudAttribute<A>.convertToArtwork()(v191);
    memcpy(v189, v190, sizeof(v189));
    sub_2171F06D8(v189, &qword_27CB243F0, &qword_21775D690);
    memcpy(v190, v191, sizeof(v190));
    v175 = *v190;
    v36 = *&v190[8];
    v110 = *&v190[24];
    v111 = *&v190[16];
    v112 = *&v190[32];
    v177 = *&v190[40];
    v149 = *&v190[56];
    v150 = *&v190[48];
    v148 = *&v190[64];
    v114 = *&v190[72];
    v108 = *&v190[88];
    v109 = *&v190[80];
    v107[0] = v190[96];
    *&v182[3] = HIDWORD(v191[12]);
    *v182 = *(&v191[12] + 1);
    *&v107[4] = *&v190[104];
    v106 = v190[112];
    *&v181[3] = HIDWORD(v191[14]);
    *v181 = *(&v191[14] + 1);
    v167 = *&v190[128];
    v168 = *&v190[120];
    v37 = *&v190[152];
    v165 = *&v190[160];
    v166 = *&v190[136];
    v157 = *&v190[184];
    v158 = *&v190[144];
    v171 = *&v190[176];
    v172 = *&v190[192];
    v163 = *&v190[200];
    v164 = *&v190[168];
    *v180 = *(&v191[63] + 1);
    *&v180[3] = HIDWORD(v191[63]);
    v170 = *&v190[216];
    v156 = *&v190[224];
    v178 = *&v190[232];
    v161 = *&v190[240];
    v162 = *&v190[208];
    v159 = *&v190[256];
    v160 = *&v190[248];
    v154 = *&v190[264];
    v179 = *&v190[272];
    v119 = *&v190[288];
    v120 = *&v190[280];
    v117 = *&v190[304];
    v118 = *&v190[296];
    v115 = *&v190[320];
    v116 = *&v190[312];
    v145 = *&v190[336];
    v147 = *&v190[328];
    v141 = *&v190[352];
    v143 = *&v190[344];
    v139 = *&v190[368];
    v140 = *&v190[360];
    v137 = *&v190[384];
    v138 = *&v190[376];
    v135 = *&v190[400];
    v136 = *&v190[392];
    v133 = *&v190[416];
    v134 = *&v190[408];
    v131 = *&v190[432];
    v132 = *&v190[424];
    v129 = *&v190[448];
    v130 = *&v190[440];
    v128 = *&v190[456];
    v125 = *&v190[472];
    v126 = *&v190[464];
    v123 = *&v190[488];
    v124 = *&v190[480];
    v122 = *&v190[496];
    v121 = v190[504];
    v155 = *&v190[512];
    v127 = v190[544];
    v38 = a1[3];
    v39 = a1[4];
    OUTLINED_FUNCTION_27_40();
    v40 = *(v39 + 40);
    sub_217284028(v190, v186);
    v41 = v40(v38, v39);
    v152 = v42;
    v153 = v41;

    v43 = *v190;
    v44 = *&v190[8];
    sub_2171FF30C(a1, v186);
    v183 = 0uLL;
    v184 = v43;
    v185 = v44;
    type metadata accessor for ArtworkCatalog();
    v45 = swift_allocObject();
    v46 = v187;
    v47 = v188;
    __swift_mutable_project_boxed_opaque_existential_1(v186, v187);
    OUTLINED_FUNCTION_0();
    MEMORY[0x28223BE20](v48);
    OUTLINED_FUNCTION_1();
    v51 = v50 - v49;
    (*(v52 + 16))(v50 - v49);
    sub_217751DE8();
    v53 = v51;
    v54 = v177;
    v55 = v45;
    v56 = v46;
    v57 = v175;
    v58 = v37;
    v173 = sub_2173CB844(v53, &v183, v55, v56, v47);
    sub_217284084(v190);
    __swift_destroy_boxed_opaque_existential_1(v186);

    v59 = v36;
    goto LABEL_61;
  }

  v112 = a2;
  v176 = a3;
  sub_2171FF30C(a1, v191);
  sub_2173C9A78(v191, 0, 0, v190);
  v21 = *v190;
  v22 = *&v190[8];
  v23 = *&v190[16];
  v24 = *&v190[24];
  sub_2171FF30C(a1, v191);
  *v190 = v21;
  *&v190[8] = v22;
  v174 = v23;
  *&v190[16] = v23;
  *&v190[24] = v24;
  type metadata accessor for ArtworkCatalog();
  v25 = swift_allocObject();
  v26 = v191[3];
  v27 = v191[4];
  __swift_mutable_project_boxed_opaque_existential_1(v191, v191[3]);
  OUTLINED_FUNCTION_0();
  MEMORY[0x28223BE20](v28);
  OUTLINED_FUNCTION_1();
  v31 = v30 - v29;
  (*(v32 + 16))(v30 - v29);
  sub_217751DE8();
  v169 = v24;
  sub_217751DE8();
  v173 = sub_2173CB844(v31, v190, v25, v26, v27);
  __swift_destroy_boxed_opaque_existential_1(v191);
  if (qword_280BE76A8 != -1)
  {
    swift_once();
  }

  if ((byte_280BE76B1 & 1) == 0)
  {
    if (v8 == 1)
    {
      v33 = a1[4];
      OUTLINED_FUNCTION_27_40();
      v34 = OUTLINED_FUNCTION_5_4();
      v35(v34, v33);
      v8 = v191[0];
      v144 = v191[2];
      v146 = v191[1];
      v142 = v191[3];
    }

    else
    {
      v191[0] = v8;
      v191[1] = v146;
      v191[2] = v144;
    }
  }

  if (v8 >= 2)
  {
    v65 = v8;
    OUTLINED_FUNCTION_26_34();

    v61 = v191[0];
    v62 = v191[1];
    v63 = v191[2];
    v64 = v191[3];
    v151 = v191[4];
  }

  else
  {
    v61 = 0;
    v62 = 0;
    v63 = 0;
    v64 = 0;
    v151 = 0;
  }

  v66 = 0;
  v67 = 0;
  if (v8 == 1)
  {
    v171 = 0;
    v172 = 0;
    v68 = 0;
  }

  else
  {
    v171 = 0;
    v172 = 0;
    v68 = 0;
    if (v146)
    {
      v69 = v146;
      OUTLINED_FUNCTION_26_34();

      v66 = v191[0];
      v67 = v191[1];
      v171 = v191[2];
      v68 = v191[3];
      v172 = v191[4];
    }
  }

  v164 = v67;
  v165 = v66;
  v70 = 0;
  v167 = v62;
  v157 = v68;
  v71 = 0;
  if (v8 == 1)
  {
    v170 = 0;
    v72 = 0;
    v178 = 0;
  }

  else
  {
    v170 = 0;
    v72 = 0;
    v178 = 0;
    if (v144)
    {
      v73 = v144;
      OUTLINED_FUNCTION_26_34();

      v70 = v191[0];
      v71 = v191[1];
      v170 = v191[2];
      v72 = v191[3];
      v178 = v191[4];
    }
  }

  v156 = v72;
  v162 = v71;
  v163 = v70;
  v74 = 0;
  v168 = v61;
  v166 = v63;
  v158 = v64;
  v75 = 0;
  v76 = 0;
  v77 = 0;
  if (v8 == 1)
  {
    v179 = 0;
  }

  else
  {
    v179 = 0;
    if (v142)
    {
      v78 = v142;
      OUTLINED_FUNCTION_26_34();

      v74 = v191[0];
      v75 = v191[1];
      v76 = v191[2];
      v77 = v191[3];
      v179 = v191[4];
    }
  }

  v154 = v77;
  v159 = v76;
  v160 = v75;
  v161 = v74;
  v155 = sub_217751DC8();
  v79 = a1[4];
  OUTLINED_FUNCTION_27_40();
  v80 = OUTLINED_FUNCTION_5_4();
  v82 = v81(v80, v79);
  v152 = v83;
  v153 = v82;
  v190[0] = 0;
  LOBYTE(v186[0]) = 0;
  v84 = v151;
  if (v151)
  {
    v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v86 = OUTLINED_FUNCTION_16_7(v85);
    *(v86 + 32) = v61;
    v87 = (v86 + 32);
    *(v86 + 16) = xmmword_217758490;
    *(v86 + 40) = v62;
    *(v86 + 48) = v63;
    OUTLINED_FUNCTION_6_69(v86);
    v88 = qword_280BE76A0;

    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    sub_217751DE8();
    if (v88 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v89 = CGColorCreate(qword_280C023C0, v87);
    }

    else
    {

      v89 = 0;
    }

    v90 = v178;
    v84 = v151;

    if (v172)
    {
      goto LABEL_38;
    }
  }

  else
  {
    sub_217751DE8();

    sub_217751DE8();
    sub_217751DE8();
    v90 = v178;
    sub_217751DE8();
    v89 = 0;
    if (v172)
    {
LABEL_38:
      v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
      v94 = OUTLINED_FUNCTION_16_7(v93);
      *(v94 + 16) = xmmword_217758490;
      *(v94 + 32) = v165;
      v95 = (v94 + 32);
      *(v94 + 40) = v164;
      *(v94 + 48) = v171;
      OUTLINED_FUNCTION_6_69(v94);
      if (qword_280BE76A0 != -1)
      {
        OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
      }

      if (qword_280C023C0)
      {
        v96 = CGColorCreate(qword_280C023C0, v95);
      }

      else
      {

        v96 = 0;
      }

      v91 = v151;
      v92 = v96;
      goto LABEL_44;
    }
  }

  v91 = v84;
  v92 = 0;
LABEL_44:
  v150 = v89;
  if (v90)
  {
    v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v98 = OUTLINED_FUNCTION_16_7(v97);
    *(v98 + 16) = xmmword_217758490;
    *(v98 + 32) = v163;
    v99 = (v98 + 32);
    *(v98 + 40) = v162;
    *(v98 + 48) = v170;
    OUTLINED_FUNCTION_6_69(v98);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v100 = CGColorCreate(qword_280C023C0, v99);
    }

    else
    {

      v100 = 0;
    }
  }

  else
  {
    v100 = 0;
  }

  v148 = v100;
  v149 = v92;
  if (v179)
  {
    v101 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v102 = OUTLINED_FUNCTION_16_7(v101);
    *(v102 + 16) = xmmword_217758490;
    *(v102 + 32) = v161;
    v103 = (v102 + 32);
    *(v102 + 40) = v160;
    *(v102 + 48) = v159;
    OUTLINED_FUNCTION_6_69(v102);
    if (qword_280BE76A0 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v104 = CGColorCreate(qword_280C023C0, v103);
    }

    else
    {

      v104 = 0;
    }

    v54 = v176;
    v57 = v174;
    v59 = v169;
  }

  else
  {

    v104 = 0;
    v54 = v176;
    v57 = v174;
    v59 = v169;
  }

  v114 = v104;
  sub_2175B364C(v8, v146, v144, v142);

  v110 = 0;
  v111 = 0;
  v108 = 0;
  v109 = 0;
  *&v107[8] = 0;
  v119 = 0;
  v120 = 0;
  v117 = 0;
  v118 = 0;
  v115 = 0;
  v116 = 0;
  v145 = 0;
  v147 = 0;
  v141 = 0;
  v143 = 0;
  v139 = 0;
  v140 = 0;
  v137 = 0;
  v138 = 0;
  v135 = 0;
  v136 = 0;
  v133 = 0;
  v134 = 0;
  v131 = 0;
  v132 = 0;
  v129 = 0;
  v130 = 0;
  v128 = 0;
  v125 = 0;
  v126 = 0;
  v123 = 0;
  v124 = 0;
  v122 = 0;
  v121 = 0;
  v127 = 0;
  v106 = v186[0];
  *v107 = v190[0];
  v58 = v91;
LABEL_61:
  *&v190[97] = *v182;
  *&v190[113] = *v181;
  *&v190[505] = *v180;
  *&v190[100] = *&v182[3];
  *&v190[116] = *&v181[3];
  *&v190[508] = *&v180[3];
  *v190 = v57;
  *&v190[8] = v59;
  *&v190[16] = v111;
  *&v190[24] = v110;
  *&v190[32] = v112;
  *&v190[40] = v54;
  *&v190[48] = v150;
  *&v190[56] = v149;
  *&v190[64] = v148;
  *&v190[72] = v114;
  *&v190[80] = v109;
  *&v190[88] = v108;
  v190[96] = v107[0];
  *&v190[104] = *&v107[4];
  v190[112] = v106;
  *&v190[120] = v168;
  *&v190[128] = v167;
  *&v190[136] = v166;
  *&v190[144] = v158;
  *&v190[152] = v58;
  *&v190[160] = v165;
  *&v190[168] = v164;
  *&v190[176] = v171;
  *&v190[184] = v157;
  *&v190[192] = v172;
  *&v190[200] = v163;
  *&v190[208] = v162;
  *&v190[216] = v170;
  *&v190[224] = v156;
  *&v190[232] = v178;
  *&v190[240] = v161;
  *&v190[248] = v160;
  *&v190[256] = v159;
  *&v190[264] = v154;
  *&v190[272] = v179;
  *&v190[280] = v120;
  *&v190[288] = v119;
  *&v190[296] = v118;
  *&v190[304] = v117;
  *&v190[312] = v116;
  *&v190[320] = v115;
  *&v190[328] = v147;
  *&v190[336] = v145;
  *&v190[344] = v143;
  *&v190[352] = v141;
  *&v190[360] = v140;
  *&v190[368] = v139;
  *&v190[376] = v138;
  *&v190[384] = v137;
  *&v190[392] = v136;
  *&v190[400] = v135;
  *&v190[408] = v134;
  *&v190[416] = v133;
  *&v190[424] = v132;
  *&v190[432] = v131;
  *&v190[440] = v130;
  *&v190[448] = v129;
  *&v190[456] = v128;
  *&v190[464] = v126;
  *&v190[472] = v125;
  *&v190[480] = v124;
  *&v190[488] = v123;
  *&v190[496] = v122;
  v190[504] = v121;
  *&v190[512] = v155;
  *&v190[520] = v173;
  *&v190[528] = v153;
  *&v190[536] = v152;
  v190[544] = v127;
  memcpy(a5, v190, 0x221uLL);
  sub_217284028(v190, v191);
  __swift_destroy_boxed_opaque_existential_1(a1);
  v191[0] = v57;
  v191[1] = v59;
  v191[2] = v111;
  v191[3] = v110;
  v191[4] = v112;
  v191[5] = v54;
  v191[6] = v150;
  v191[7] = v149;
  v191[8] = v148;
  v191[9] = v114;
  v191[10] = v109;
  v191[11] = v108;
  LOBYTE(v191[12]) = v107[0];
  v191[13] = *&v107[4];
  LOBYTE(v191[14]) = v106;
  v191[15] = v168;
  v191[16] = v167;
  v191[17] = v166;
  v191[18] = v158;
  v191[19] = v58;
  v191[20] = v165;
  v191[21] = v164;
  v191[22] = v171;
  v191[23] = v157;
  v191[24] = v172;
  v191[25] = v163;
  v191[26] = v162;
  v191[27] = v170;
  v191[28] = v156;
  v191[29] = v178;
  v191[30] = v161;
  v191[31] = v160;
  v191[32] = v159;
  v191[33] = v154;
  v191[34] = v179;
  v191[35] = v120;
  v191[36] = v119;
  v191[37] = v118;
  v191[38] = v117;
  v191[39] = v116;
  v191[40] = v115;
  *(&v191[12] + 1) = *v182;
  HIDWORD(v191[12]) = *&v182[3];
  *(&v191[14] + 1) = *v181;
  HIDWORD(v191[14]) = *&v181[3];
  v191[41] = v147;
  v191[42] = v145;
  v191[43] = v143;
  v191[44] = v141;
  v191[45] = v140;
  v191[46] = v139;
  v191[47] = v138;
  v191[48] = v137;
  v191[49] = v136;
  v191[50] = v135;
  v191[51] = v134;
  v191[52] = v133;
  v191[53] = v132;
  v191[54] = v131;
  v191[55] = v130;
  v191[56] = v129;
  v191[57] = v128;
  v191[58] = v126;
  v191[59] = v125;
  v191[60] = v124;
  v191[61] = v123;
  v191[62] = v122;
  LOBYTE(v191[63]) = v121;
  *(&v191[63] + 1) = *v180;
  HIDWORD(v191[63]) = *&v180[3];
  v191[64] = v155;
  v191[65] = v173;
  v191[66] = v153;
  v191[67] = v152;
  LOBYTE(v191[68]) = v127;
  return sub_217284084(v191);
}

void sub_2175B364C(void *a1, void *a2, void *a3, void *a4)
{
  if (a1 != 1)
  {
  }
}

void sub_2175B36A8(void *a1)
{
  v3 = v1;
  v5 = v1[54];
  memcpy(__dst, v3, sizeof(__dst));
  if (*(v5 + 16))
  {
    memcpy(v15, v3, sizeof(v15));
    sub_2171FF30C(a1, v13);
    sub_2172A9D58(v15, &v12);
    sub_2174D6834();
    if (!v2)
    {
      v7 = v6;
      v8 = sub_217751DE8();
      v9 = sub_2174D37FC(v8, v7);
      sub_21733AC44(v9, v10, v11);
      sub_217751E48();
    }
  }

  else
  {
    CloudArtwork.encode(to:)(a1);
  }
}

void sub_2175B37C4(void *a1)
{
  v3 = *(v1 + 7);
  v4 = v1[1];
  v15 = *v1;
  v16 = v4;
  v5 = v1[3];
  v17 = v1[2];
  v18 = v5;
  if (*(v3 + 16))
  {
    v6 = v1[1];
    v19[0] = *v1;
    v19[1] = v6;
    v19[2] = v1[2];
    v20 = *(v1 + 6);
    sub_2171FF30C(a1, v14);
    sub_2175B7B18(v19, &v13);
    v7 = sub_2174D69C4(v19);
    if (!v2)
    {
      v8 = v7;
      v9 = sub_217751DE8();
      v10 = sub_2174D37FC(v9, v8);
      sub_21733AC44(v10, v11, v12);
      OUTLINED_FUNCTION_93();
      sub_217751E48();
    }
  }

  else
  {
    sub_2173A90E4(a1);
  }
}

void sub_2175B38E0(void *a1)
{
  v3 = v1;
  v5 = *(v1 + 64);
  memcpy(__dst, v3, sizeof(__dst));
  if (*(v5 + 16))
  {
    v6 = v3[1];
    v17[0] = *v3;
    v17[1] = v6;
    v7 = v3[3];
    v17[2] = v3[2];
    v17[3] = v7;
    sub_2171FF30C(a1, v15);
    sub_2175B7B74(v17, &v14);
    v8 = sub_2174D6B68(v17, v15);
    if (!v2)
    {
      v9 = v8;
      v10 = sub_217751DE8();
      v11 = sub_2174D37FC(v10, v9);
      sub_21733AC44(v11, v12, v13);
      OUTLINED_FUNCTION_93();
      sub_217751E48();
    }
  }

  else
  {
    CloudEditorialNotes.encode(to:)(a1);
  }
}

void sub_2175B39F8()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB277C0, &qword_217758DC0);
  MEMORY[0x28223BE20](v0 - 8);
  v2 = &v9[-v1];
  v3 = sub_2177516D8();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_217751DC8();
  v10 = 0;
  v9[0] = 0;
  sub_2177516C8();
  if (__swift_getEnumTagSinglePayload(v2, 1, v3) == 1)
  {
    sub_2171F06D8(v2, &unk_27CB277C0, &qword_217758DC0);
    v8 = 0;
  }

  else
  {
    (*(v4 + 32))(v6, v2, v3);
    type metadata accessor for ArtworkLoadingProtocol();
    v8 = sub_217576A44(v6);
    (*(v4 + 8))(v6, v3);
  }

  qword_280BE27C8 = 0xD00000000000001ALL;
  unk_280BE27D0 = 0x80000002177B1DC0;
  xmmword_280BE27D8 = vdupq_n_s64(0x1F4uLL);
  unk_280BE27E8 = 0u;
  xmmword_280BE27F8 = 0u;
  unk_280BE2808 = 0u;
  qword_280BE2818 = 0;
  unk_280BE2820 = 500;
  byte_280BE2828 = v10;
  qword_280BE2830 = 500;
  byte_280BE2838 = v9[0];
  bzero(&unk_280BE2840, 0x181uLL);
  qword_280BE29C8 = v7;
  qword_280BE29D0 = v8;
  qword_280BE29D8 = 0xD000000000000018;
  qword_280BE29E0 = 0x80000002177B1DE0;
  byte_280BE29E8 = 1;
}

uint64_t static Artwork.placeholder.getter()
{
  if (qword_280BE27C0 != -1)
  {
    swift_once();
  }

  memcpy(__dst, &qword_280BE27C8, 0x221uLL);
  v0 = OUTLINED_FUNCTION_93();
  memcpy(v0, v1, 0x221uLL);
  return sub_217284028(__dst, &v3);
}

void *Artwork.backgroundColor.getter()
{
  v1 = *(v0 + 48);
  v2 = v1;
  return v1;
}

void *Artwork.primaryTextColor.getter()
{
  v1 = *(v0 + 56);
  v2 = v1;
  return v1;
}

void *Artwork.secondaryTextColor.getter()
{
  v1 = *(v0 + 64);
  v2 = v1;
  return v1;
}

void *Artwork.tertiaryTextColor.getter()
{
  v1 = *(v0 + 72);
  v2 = v1;
  return v1;
}

void *Artwork.quaternaryTextColor.getter()
{
  v1 = *(v0 + 80);
  v2 = v1;
  return v1;
}

uint64_t Artwork._textGradient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 320), sizeof(__dst));
  memcpy(a1, (v1 + 320), 0x60uLL);
  return sub_2174A87A0(__dst, &v4, &qword_27CB2A3A0, &qword_2177800D0);
}

uint64_t Artwork._gradient.getter@<X0>(void *a1@<X8>)
{
  memcpy(__dst, (v1 + 416), sizeof(__dst));
  memcpy(a1, (v1 + 416), 0x58uLL);
  return sub_2174A87A0(__dst, &v4, &qword_27CB2A3A8, &qword_2177800D8);
}

uint64_t Artwork.catalog.setter(uint64_t a1)
{

  *(v1 + 520) = a1;
  return result;
}

double Artwork.rawArtworkCatalog.getter@<D0>(_OWORD *a1@<X8>)
{
  v2 = *(v1 + 520);
  if (v2)
  {
    swift_beginAccess();
    v3 = v2[7];
    v4 = v2[8];
    __swift_project_boxed_opaque_existential_1(v2 + 4, v3);
    OUTLINED_FUNCTION_0();
    v6 = v5;
    MEMORY[0x28223BE20](v7);
    OUTLINED_FUNCTION_1();
    v10 = v9 - v8;
    (*(v6 + 16))(v9 - v8);
    (*(v4 + 104))(v3, v4);
    (*(v6 + 8))(v10, v3);
  }

  else
  {
    result = 0.0;
    *a1 = 0u;
    a1[1] = 0u;
  }

  return result;
}

void Artwork.visualIdenticalityIdentifier.setter(uint64_t a1, uint64_t a2)
{

  *(v2 + 528) = a1;
  *(v2 + 536) = a2;
}

double Artwork.url(width:height:)(uint64_t a1, uint64_t a2)
{
  v25 = a1;
  v4 = v2[1];
  v29 = *v2;
  v30 = v4;
  v27 = 8222587;
  v28 = 0xE300000000000000;
  sub_217751DE8();
  v25 = sub_217752FC8();
  v26 = v5;
  sub_21733A5C8(v25, v5, v6);
  v7 = MEMORY[0x277D837D0];
  v14 = OUTLINED_FUNCTION_13_49(&v27, &v25, v8, v9, v10, v11, v12, v13, MEMORY[0x277D837D0]);
  v16 = v15;

  v29 = v14;
  v30 = v16;
  v27 = 8218747;
  v28 = 0xE300000000000000;
  v25 = a2;
  v25 = sub_217752FC8();
  v26 = v17;
  OUTLINED_FUNCTION_13_49(&v27, &v25, v18, v19, v20, v21, v22, v23, v7);

  sub_2177516C8();
}

uint64_t sub_2175B423C()
{
  v2 = *v0;
  v1 = v0[1];
  v3 = v0[5];
  v4 = v0[11];
  v5 = *(v0 + 96);
  v22 = v0[13];
  v23 = v0[4];
  v6 = *(v0 + 112);
  v7 = v0[19];
  v8 = v0[24];
  v24 = v0[18];
  v25 = v0[23];
  v26 = v0[28];
  v27 = v0[33];
  v29 = v0[29];
  v30 = v0[34];
  v28 = v0[38];
  v31 = v0[39];
  memcpy(__dst, v0 + 40, 0x60uLL);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB28998, &unk_217780360);
  v9 = swift_allocObject();
  *(v9 + 16) = xmmword_2177586E0;
  v35[0] = 7107189;
  v35[1] = 0xE300000000000000;
  sub_217751DE8();
  v10 = MEMORY[0x277D837D0];
  sub_217752A48();
  *(v9 + 96) = v10;
  *(v9 + 72) = v2;
  *(v9 + 80) = v1;
  v11 = sub_217751DC8();
  v12 = MEMORY[0x277D83B88];
  if (v5)
  {
    if (v6)
    {
      goto LABEL_3;
    }
  }

  else
  {
    *(&v33 + 1) = 0xE500000000000000;
    sub_217752A48();
    v34 = v12;
    *&v33 = v4;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
    if (v6)
    {
LABEL_3:
      if (!v3)
      {
        goto LABEL_5;
      }

      goto LABEL_4;
    }
  }

  *&v33 = 0x746867696568;
  *(&v33 + 1) = 0xE600000000000000;
  sub_217752A48();
  v34 = v12;
  *&v33 = v22;
  sub_2172124CC(&v33, v32);
  swift_isUniquelyReferenced_nonNull_native();
  sub_2172C80EC(v32, v35);
  sub_2174E6BDC(v35);
  if (v3)
  {
LABEL_4:
    *&v33 = 7629921;
    *(&v33 + 1) = 0xE300000000000000;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v23;
    *(&v33 + 1) = v3;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

LABEL_5:
  if (v7)
  {
    strcpy(&v33, "bgColor");
    *(&v33 + 1) = 0xE700000000000000;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v24;
    *(&v33 + 1) = v7;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v8)
  {
    strcpy(&v33, "textColor1");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v25;
    *(&v33 + 1) = v8;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v29)
  {
    strcpy(&v33, "textColor2");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v26;
    *(&v33 + 1) = v29;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v30)
  {
    strcpy(&v33, "textColor3");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v27;
    *(&v33 + 1) = v30;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  if (v31)
  {
    strcpy(&v33, "textColor4");
    BYTE11(v33) = 0;
    HIDWORD(v33) = -369098752;
    sub_217751DE8();
    sub_217752A48();
    v34 = v10;
    *&v33 = v28;
    *(&v33 + 1) = v31;
    sub_2172124CC(&v33, v32);
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
  }

  v13 = __dst[6];
  if (__dst[6])
  {
    v15 = __dst[10];
    v14 = __dst[11];
    v16 = __dst[5];
    strcpy(&v33, "textGradient");
    BYTE13(v33) = 0;
    HIWORD(v33) = -5120;
    v17 = __dst[0];
    v18 = __dst[1];
    sub_217751DE8();
    sub_217751DE8();
    v19 = v17;
    sub_217752A48();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB27780, &unk_21775A2F0);
    v20 = swift_allocObject();
    *(v20 + 16) = xmmword_217759200;
    *(v20 + 32) = v16;
    *(v20 + 40) = v13;
    *(v20 + 48) = v15;
    *(v20 + 56) = v14;
    v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24C58, &unk_2177677B0);
    *&v33 = v20;
    sub_2172124CC(&v33, v32);
    sub_217751DE8();
    sub_217751DE8();
    swift_isUniquelyReferenced_nonNull_native();
    sub_2172C80EC(v32, v35);
    sub_2174E6BDC(v35);
    sub_2171F06D8(__dst, &qword_27CB2A3A0, &qword_2177800D0);
  }

  return v11;
}

uint64_t Artwork._makeCloudArtworkCatalog(cropStyle:)(uint64_t a1, uint64_t a2)
{
  memcpy(__dst, v2, 0x221uLL);
  sub_2175B423C();
  sub_2175B78D8();
  OUTLINED_FUNCTION_5_4();
  v4 = sub_217751DE8();
  v5 = sub_2175B4AFC(v4);
  if (v5)
  {
    v6 = v5;
    if (a2)
    {
      v7 = sub_217751F18();
    }

    else
    {
      v7 = 0;
    }

    v8 = objc_opt_self();
    OUTLINED_FUNCTION_5_37();
    v11 = [v9 v10];

    if ([v8 artworkCatalogWithStoreArtworkToken_])
    {
      swift_unknownObjectRetain();

      swift_getObjectType();
      sub_217717634();
      swift_unknownObjectRelease();
      v12 = swift_unknownObjectRetain();
      v13 = sub_2175B770C(v12);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      return v13;
    }

    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000036, 0x80000002177B1BD0);
    v17 = [v6 description];
    v18 = sub_217751F48();
    v20 = v19;

    MEMORY[0x21CEA23B0](v18, v20);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v21);
  }

  else
  {
    __dst[0] = 0;
    __dst[1] = 0xE000000000000000;
    sub_217752AA8();
    MEMORY[0x21CEA23B0](0xD000000000000030, 0x80000002177B1B90);
    v15 = sub_217751DA8();
    MEMORY[0x21CEA23B0](v15);

    MEMORY[0x21CEA23B0](46, 0xE100000000000000, v16);
  }

  result = sub_217752D08();
  __break(1u);
  return result;
}

id sub_2175B4AFC(uint64_t a1)
{
  v1 = objc_allocWithZone(swift_getObjCClassFromMetadata());
  v2 = sub_217751D88();
  v3 = [v1 initWithArtworkResponseDictionary_];

  return v3;
}

uint64_t static Artwork.== infix(_:_:)(uint64_t *a1, double *a2)
{
  v4 = *a1;
  v5 = a1[1];
  v7 = a1[2];
  v6 = a1[3];
  v222 = a1[4];
  v225 = a1[5];
  v224 = a1[6];
  v220 = a1[7];
  v218 = a1[8];
  v216 = a1[9];
  v214 = a1[10];
  v208 = a1[11];
  v211 = *(a1 + 96);
  v209 = *(a1 + 112);
  v202 = *(a1 + 16);
  v200 = *(a1 + 15);
  v201 = *(a1 + 17);
  v196 = a1[18];
  v204 = a1[13];
  v205 = a1[19];
  v192 = *(a1 + 21);
  v190 = *(a1 + 20);
  v191 = *(a1 + 22);
  v186 = a1[23];
  v194 = a1[24];
  v182 = *(a1 + 26);
  v180 = *(a1 + 25);
  v181 = *(a1 + 27);
  v176 = a1[28];
  v184 = a1[29];
  v172 = *(a1 + 31);
  v170 = *(a1 + 30);
  v171 = *(a1 + 32);
  v174 = a1[34];
  v162 = *(a1 + 36);
  v160 = *(a1 + 35);
  v161 = *(a1 + 37);
  v156 = a1[38];
  v165 = a1[33];
  v166 = a1[39];
  memcpy(__dst, a1 + 40, sizeof(__dst));
  memcpy(v242, a1 + 52, sizeof(v242));
  v147 = *(a1 + 504);
  v150 = a1[64];
  v151 = a1[65];
  v152 = a1[67];
  v153 = a1[66];
  v154 = *(a1 + 544);
  v8 = *a2;
  v9 = *(a2 + 1);
  v10 = *(a2 + 2);
  v11 = *(a2 + 3);
  v12 = *(a2 + 5);
  v221 = *(a2 + 4);
  v223 = *(a2 + 6);
  v219 = *(a2 + 7);
  v217 = *(a2 + 8);
  v215 = *(a2 + 9);
  v213 = *(a2 + 10);
  v206 = *(a2 + 11);
  v210 = *(a2 + 96);
  v203 = *(a2 + 13);
  v207 = *(a2 + 112);
  v199 = a2[16];
  v197 = a2[15];
  v198 = a2[17];
  v195 = *(a2 + 18);
  v212 = *(a2 + 19);
  v189 = a2[21];
  v187 = a2[20];
  v188 = a2[22];
  v185 = *(a2 + 23);
  v193 = *(a2 + 24);
  v179 = a2[26];
  v177 = a2[25];
  v178 = a2[27];
  v175 = *(a2 + 28);
  v183 = *(a2 + 29);
  v169 = a2[31];
  v167 = a2[30];
  v168 = a2[32];
  v173 = *(a2 + 34);
  v159 = a2[36];
  v157 = a2[35];
  v158 = a2[37];
  v155 = *(a2 + 38);
  v163 = *(a2 + 39);
  v164 = *(a2 + 33);
  memcpy(v243, a2 + 40, sizeof(v243));
  memcpy(v244, a2 + 52, sizeof(v244));
  v144 = *(a2 + 504);
  v145 = *(a2 + 64);
  v146 = *(a2 + 65);
  v148 = *(a2 + 66);
  v149 = *(a2 + 67);
  v13 = v4 == v8 && v5 == v9;
  v14 = *(a2 + 544);
  if (v13)
  {
    if (v7 != v10 || v6 != v11)
    {
      return 0;
    }

LABEL_16:
    if (v225)
    {
      if (!v12)
      {
        return 0;
      }

      v19 = v222 == v221 && v225 == v12;
      if (!v19 && (sub_217753058() & 1) == 0)
      {
        return 0;
      }
    }

    else if (v12)
    {
      return 0;
    }

    if (v224)
    {
      if (!v223)
      {
        return 0;
      }

      v20 = v14;
      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v21 = v223;
      v22 = sub_217751988();

      if ((v22 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      v20 = v14;
      if (v223)
      {
        return 0;
      }
    }

    if (v220)
    {
      if (!v219)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v23 = v219;
      v24 = OUTLINED_FUNCTION_11_57(v220);

      if ((v24 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v219)
    {
      return 0;
    }

    if (v218)
    {
      if (!v217)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v25 = v217;
      v26 = OUTLINED_FUNCTION_11_57(v218);

      if ((v26 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v217)
    {
      return 0;
    }

    if (v216)
    {
      if (!v215)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v27 = v215;
      v28 = OUTLINED_FUNCTION_11_57(v216);

      if ((v28 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v215)
    {
      return 0;
    }

    if (v214)
    {
      if (!v213)
      {
        return 0;
      }

      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      v29 = v213;
      v30 = OUTLINED_FUNCTION_11_57(v214);

      if ((v30 & 1) == 0)
      {
        return 0;
      }
    }

    else if (v213)
    {
      return 0;
    }

    if (v211)
    {
      v31 = v212;
      if (!v210)
      {
        return 0;
      }
    }

    else
    {
      v32 = v210;
      if (v208 != v206)
      {
        v32 = 1;
      }

      v31 = v212;
      if (v32)
      {
        return 0;
      }
    }

    if (v209)
    {
      if (!v207)
      {
        return 0;
      }
    }

    else
    {
      v33 = v207;
      if (v204 != v203)
      {
        v33 = 1;
      }

      if (v33)
      {
        return 0;
      }
    }

    if (v205)
    {
      if (v31)
      {
        if (v200 != v197 || v202 != v199 || v201 != v198)
        {
          goto LABEL_71;
        }

        v36 = v196 == v195 && v205 == v212;
        if (!v36 && (sub_217753058() & 1) == 0)
        {
          return 0;
        }

LABEL_80:
        if (v194)
        {
          if (v193)
          {
            if (v190 != v187 || v192 != v189 || v191 != v188)
            {
              goto LABEL_71;
            }

            v42 = v186 == v185 && v194 == v193;
            if (!v42 && (sub_217753058() & 1) == 0)
            {
              return 0;
            }

LABEL_103:
            if (v184)
            {
              if (v183)
              {
                if (v180 != v177 || v182 != v179 || v181 != v178)
                {
                  goto LABEL_71;
                }

                v45 = v176 == v175 && v184 == v183;
                if (!v45 && (sub_217753058() & 1) == 0)
                {
                  return 0;
                }

                goto LABEL_121;
              }
            }

            else if (!v183)
            {

LABEL_121:
              if (v174)
              {
                if (v173)
                {
                  if (v170 != v167 || v172 != v169 || v171 != v168)
                  {
                    goto LABEL_71;
                  }

                  v48 = v165 == v164 && v174 == v173;
                  if (!v48 && (sub_217753058() & 1) == 0)
                  {
                    return 0;
                  }

                  goto LABEL_139;
                }
              }

              else if (!v173)
              {

LABEL_139:
                if (v166)
                {
                  if (v163)
                  {
                    if (v160 != v157 || v162 != v159 || v161 != v158)
                    {
LABEL_71:
                      swift_bridgeObjectRetain_n();
                      swift_bridgeObjectRelease_n();
                      return 0;
                    }

                    v51 = v156 == v155 && v166 == v163;
                    if (!v51 && (sub_217753058() & 1) == 0)
                    {
                      return 0;
                    }

LABEL_157:
                    v230[0] = __dst[0];
                    v230[1] = __dst[1];
                    v230[2] = __dst[2];
                    v238 = *(&__dst[3] + 8);
                    v239 = *(&__dst[4] + 8);
                    v52 = *&__dst[3];
                    v240 = *(&__dst[5] + 1);
                    v229[1] = v243[1];
                    v229[2] = v243[2];
                    v229[0] = v243[0];
                    v53 = *&v243[3];
                    v237 = *(&v243[5] + 1);
                    v236 = *(&v243[4] + 8);
                    v235 = *(&v243[3] + 8);
                    if (*&__dst[3])
                    {
                      OUTLINED_FUNCTION_4_85(__dst);
                      *&__src[48] = v52;
                      *&__src[88] = v54;
                      memcpy(v231, __src, sizeof(v231));
                      if (v53)
                      {
                        v228[0] = v243[0];
                        v228[1] = v243[1];
                        v228[2] = v243[2];
                        *(&v228[3] + 8) = *(&v243[3] + 8);
                        *(&v228[4] + 8) = *(&v243[4] + 8);
                        *(&v228[5] + 1) = *(&v243[5] + 1);
                        *&v228[3] = v53;
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v55, v56, v57, v58);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v59, v60, v61, v62);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v63, v64, v65, v66);
                        v67 = static Artwork._TextGradient.== infix(_:_:)(v231, v228);
                        memcpy(v226, v228, sizeof(v226));
                        sub_2175B7970(v226);
                        memcpy(v227, v231, sizeof(v227));
                        sub_2175B7970(v227);
                        v228[0] = v230[0];
                        v228[1] = v230[1];
                        v228[2] = v230[2];
                        *(&v228[3] + 8) = v238;
                        *(&v228[4] + 8) = v239;
                        *&v228[3] = v52;
                        *(&v228[5] + 1) = v240;
                        OUTLINED_FUNCTION_27(v228);
                        if ((v67 & 1) == 0)
                        {
                          return 0;
                        }

                        goto LABEL_166;
                      }

                      memcpy(v228, __src, sizeof(v228));
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v76, v77, v78, v79);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v80, v81, v82, v83);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v84, v85, v86, v87);
                      sub_2175B7970(v228);
                    }

                    else
                    {
                      if (!*&v243[3])
                      {
                        OUTLINED_FUNCTION_4_85(__dst);
                        *&__src[48] = 0;
                        *&__src[88] = v88;
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v89, v90, v91, v92);
                        OUTLINED_FUNCTION_5_37();
                        sub_2174A87A0(v93, v94, v95, v96);
                        OUTLINED_FUNCTION_27(__src);
LABEL_166:
                        memcpy(v230, v242, sizeof(v230));
                        v97 = v242[10];
                        memcpy(v229, v244, sizeof(v229));
                        v98 = v244[10];
                        if (v242[10])
                        {
                          memcpy(__src, v242, 0x50uLL);
                          *&__src[80] = v242[10];
                          memcpy(v231, __src, 0x58uLL);
                          if (v244[10])
                          {
                            memcpy(v228, v244, 0x50uLL);
                            *&v228[5] = v244[10];
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v99, v100, v101, v102);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v103, v104, v105, v106);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v107, v108, v109, v110);
                            static Artwork._Gradient.== infix(_:_:)(v231, v228);
                            v112 = v111;
                            memcpy(v226, v228, 0x58uLL);
                            sub_2175B791C(v226);
                            memcpy(v227, v231, 0x58uLL);
                            sub_2175B791C(v227);
                            memcpy(v228, v230, 0x50uLL);
                            *&v228[5] = v97;
                            OUTLINED_FUNCTION_27(v228);
                            result = 0;
                            if (v112 & 1) == 0 || ((v147 ^ v144))
                            {
                              return result;
                            }

LABEL_176:
                            sub_217261FB0(v150, v145);
                            if (v141)
                            {
                              if (v151)
                              {
                                if (!v146)
                                {
                                  return 0;
                                }

                                type metadata accessor for ArtworkCatalog();

                                v142 = static ArtworkCatalog.== infix(_:_:)(v151, v146);

                                if ((v142 & 1) == 0)
                                {
                                  return 0;
                                }
                              }

                              else if (v146)
                              {
                                return 0;
                              }

                              if (v152)
                              {
                                if (!v149)
                                {
                                  return 0;
                                }

                                v143 = v153 == v148 && v152 == v149;
                                if (!v143 && (sub_217753058() & 1) == 0)
                                {
                                  return 0;
                                }
                              }

                              else if (v149)
                              {
                                return 0;
                              }

                              return v154 ^ v20 ^ 1u;
                            }

                            return 0;
                          }

                          memcpy(v228, __src, 0x58uLL);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v121, v122, v123, v124);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v125, v126, v127, v128);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v129, v130, v131, v132);
                          sub_2175B791C(v228);
                        }

                        else
                        {
                          if (!v244[10])
                          {
                            memcpy(__src, v242, 0x50uLL);
                            *&__src[80] = 0;
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v133, v134, v135, v136);
                            OUTLINED_FUNCTION_5_37();
                            sub_2174A87A0(v137, v138, v139, v140);
                            OUTLINED_FUNCTION_27(__src);
                            if (v147 != v144)
                            {
                              return 0;
                            }

                            goto LABEL_176;
                          }

                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v113, v114, v115, v116);
                          OUTLINED_FUNCTION_5_37();
                          sub_2174A87A0(v117, v118, v119, v120);
                        }

                        memcpy(__src, v230, 0x50uLL);
                        *&__src[80] = v97;
                        memcpy(&__src[88], v229, 0x50uLL);
                        *&v233 = v98;
                        v40 = &unk_27CB2A3B8;
                        v41 = &unk_2177800F0;
LABEL_94:
                        sub_2171F06D8(__src, v40, v41);
                        return 0;
                      }

                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v68, v69, v70, v71);
                      OUTLINED_FUNCTION_5_37();
                      sub_2174A87A0(v72, v73, v74, v75);
                    }

                    *__src = v230[0];
                    *&__src[16] = v230[1];
                    *&__src[32] = v230[2];
                    *&__src[56] = v238;
                    *&__src[72] = v239;
                    *&__src[128] = v229[2];
                    *&__src[112] = v229[1];
                    *&__src[96] = v229[0];
                    v233 = v236;
                    *&__src[48] = v52;
                    *&__src[88] = v240;
                    *&__src[144] = v53;
                    v234 = v237;
                    *&__src[152] = v235;
                    v40 = &unk_27CB2A3B0;
                    v41 = &unk_2177800E8;
                    goto LABEL_94;
                  }
                }

                else if (!v163)
                {

                  goto LABEL_157;
                }

                sub_217751DE8();
                *__src = v160;
                OUTLINED_FUNCTION_16_53(*&v161);
                *&__src[24] = v156;
                *&__src[32] = v166;
                *&__src[40] = v157;
                OUTLINED_FUNCTION_14_48(*&v158);
                *&__src[64] = v155;
                v39 = v163;
                goto LABEL_92;
              }

              sub_217751DE8();
              *__src = v170;
              OUTLINED_FUNCTION_16_53(*&v171);
              *&__src[24] = v165;
              *&__src[32] = v174;
              *&__src[40] = v167;
              OUTLINED_FUNCTION_14_48(*&v168);
              *&__src[64] = v164;
              v39 = v173;
LABEL_92:
              *&__src[72] = v39;
              goto LABEL_93;
            }

            sub_217751DE8();
            *__src = v180;
            OUTLINED_FUNCTION_16_53(*&v181);
            *&__src[24] = v176;
            *&__src[32] = v184;
            *&__src[40] = v177;
            OUTLINED_FUNCTION_14_48(*&v178);
            *&__src[64] = v175;
            v39 = v183;
            goto LABEL_92;
          }
        }

        else if (!v193)
        {

          goto LABEL_103;
        }

        sub_217751DE8();
        *__src = v190;
        OUTLINED_FUNCTION_16_53(*&v191);
        *&__src[24] = v186;
        *&__src[32] = v194;
        *&__src[40] = v187;
        OUTLINED_FUNCTION_14_48(*&v188);
        *&__src[64] = v185;
        v39 = v193;
        goto LABEL_92;
      }
    }

    else if (!v31)
    {

      goto LABEL_80;
    }

    sub_217751DE8();
    *__src = v200;
    OUTLINED_FUNCTION_16_53(*&v201);
    *&__src[24] = v196;
    *&__src[32] = v205;
    *&__src[40] = v197;
    OUTLINED_FUNCTION_14_48(*&v198);
    *&__src[64] = v195;
    *&__src[72] = v31;
LABEL_93:
    v40 = &unk_27CB24C98;
    v41 = &unk_2177800E0;
    goto LABEL_94;
  }

  v15 = sub_217753058();
  result = 0;
  if ((v15 & 1) != 0 && v7 == v10 && v6 == v11)
  {
    goto LABEL_16;
  }

  return result;
}

uint64_t Artwork.hash(into:)(const void *a1)
{
  v2 = v1;
  v4 = *(v1 + 16);
  v5 = *(v2 + 24);
  v6 = *(v2 + 40);
  v7 = *(v2 + 48);
  v28 = *(v2 + 56);
  v29 = *(v2 + 64);
  v8 = *(v2 + 72);
  v30 = *(v2 + 80);
  v24 = *(v2 + 88);
  v25 = *(v2 + 104);
  v31 = *(v2 + 96);
  v32 = *(v2 + 112);
  v9 = *(v2 + 120);
  v10 = *(v2 + 136);
  v55 = *(v2 + 152);
  v53 = v9;
  v54 = v10;
  v52 = *(v2 + 192);
  v11 = *(v2 + 176);
  v50 = *(v2 + 160);
  v51 = v11;
  v49 = *(v2 + 232);
  v12 = *(v2 + 216);
  v47 = *(v2 + 200);
  v48 = v12;
  v13 = *(v2 + 240);
  v14 = *(v2 + 256);
  v46 = *(v2 + 272);
  v44 = v13;
  v45 = v14;
  v15 = *(v2 + 280);
  v16 = *(v2 + 296);
  v17 = *(v2 + 320);
  v43 = *(v2 + 312);
  v41 = v15;
  v42 = v16;
  v18 = *(v2 + 368);
  v19 = *(v2 + 376);
  v20 = *(v2 + 384);
  v21 = *(v2 + 392);
  v26 = *(v2 + 408);
  v33 = *(v2 + 328);
  v34 = *(v2 + 496);
  v22 = *(v2 + 520);
  v27 = *(v2 + 400);
  v35 = *(v2 + 512);
  v36 = *(v2 + 536);
  sub_217751FF8();
  MEMORY[0x21CEA3550](v4);
  MEMORY[0x21CEA3550](v5);
  if (v6)
  {
    OUTLINED_FUNCTION_24();
    sub_217751FF8();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v7)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v28)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v29)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v8)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v30)
  {
    OUTLINED_FUNCTION_24();
    type metadata accessor for CGColor(0);
    sub_2175B79C4();
    OUTLINED_FUNCTION_1_97();
    sub_217751998();
  }

  else
  {
    OUTLINED_FUNCTION_25();
  }

  if (v31)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v24);
  }

  if (v32)
  {
    OUTLINED_FUNCTION_25();
  }

  else
  {
    OUTLINED_FUNCTION_24();
    MEMORY[0x21CEA3550](v25);
  }

  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  sub_21726519C();
  if (v18)
  {
    OUTLINED_FUNCTION_24();
    if (v17)
    {
      OUTLINED_FUNCTION_24();
      type metadata accessor for CGColor(0);
      sub_2175B79C4();
      OUTLINED_FUNCTION_1_97();
      sub_217751998();
      if (v33)
      {
LABEL_28:
        OUTLINED_FUNCTION_24();
        type metadata accessor for CGColor(0);
        sub_2175B79C4();
        OUTLINED_FUNCTION_1_97();
        sub_217751998();
        goto LABEL_33;
      }
    }

    else
    {
      OUTLINED_FUNCTION_25();
      if (v33)
      {
        goto LABEL_28;
      }
    }

    OUTLINED_FUNCTION_25();
LABEL_33:
    Artwork.Color.hash(into:)(a1);
    v40[0] = v19;
    v40[1] = v20;
    v40[2] = v21;
    v40[3] = v27;
    v40[4] = v26;
    Artwork.Color.hash(into:)(a1);
    if (v34)
    {
      goto LABEL_34;
    }

LABEL_30:
    OUTLINED_FUNCTION_25();
    goto LABEL_35;
  }

  OUTLINED_FUNCTION_25();
  if (!v34)
  {
    goto LABEL_30;
  }

LABEL_34:
  memcpy(__dst, (v2 + 416), 0x50uLL);
  __dst[10] = v34;
  OUTLINED_FUNCTION_24();
  memcpy(v38, (v2 + 416), sizeof(v38));
  v39 = v34;
  sub_2175B7A1C(v38, v40);
  Artwork._Gradient.hash(into:)();
  memcpy(v40, __dst, sizeof(v40));
  sub_2175B791C(v40);
LABEL_35:
  sub_217753208();
  sub_217265A08(a1, v35);
  if (!v22)
  {
    OUTLINED_FUNCTION_25();
    if (v36)
    {
      goto LABEL_37;
    }

LABEL_39:
    OUTLINED_FUNCTION_25();
    return sub_217753208();
  }

  OUTLINED_FUNCTION_24();
  ArtworkCatalog.hash(into:)(a1);
  if (!v36)
  {
    goto LABEL_39;
  }

LABEL_37:
  OUTLINED_FUNCTION_24();
  sub_217751FF8();
  return sub_217753208();
}

uint64_t Artwork.hashValue.getter()
{
  sub_2177531E8();
  Artwork.hash(into:)(v1);
  return sub_217753238();
}

uint64_t sub_2175B5EB8(uint64_t a1)
{
  sub_2177531E8();
  Artwork.hash(into:)(v2);
  return sub_217753238();
}

void *Artwork.init(from:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{
  sub_2171FF30C(a1, v13);
  sub_2171FF30C(v13, v10);
  CloudArtwork.init(from:)(v10, __src);
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return __swift_destroy_boxed_opaque_existential_1(v13);
  }

  else
  {
    sub_2171FF30C(v13, v11);
    memcpy(__dst, __src, sizeof(__dst));
    sub_2172A9D58(__dst, v10);
    sub_2173862E4();
    v7 = v6;
    __swift_destroy_boxed_opaque_existential_1(v13);
    memcpy(v9, __src, 0x1B0uLL);
    v9[54] = v7;
    memcpy(v8, v9, sizeof(v8));
    CloudAttribute<A>.convertToArtwork()(v10);
    __swift_destroy_boxed_opaque_existential_1(a1);
    sub_2171F06D8(v9, &qword_27CB243F0, &qword_21775D690);
    return memcpy(a2, v10, 0x221uLL);
  }
}

uint64_t Artwork.encode(to:)(void *a1)
{
  memcpy(v4, v1, sizeof(v4));
  Artwork.convertToCloudArtworkAttribute()(v5);
  sub_2175B36A8(a1);
  return sub_2171F06D8(v5, &qword_27CB243F0, &qword_21775D690);
}

uint64_t Artwork.description.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_217752AA8();
  MEMORY[0x21CEA23B0](0xD000000000000014, 0x80000002177B1C10);
  MEMORY[0x21CEA23B0](v1, v2);
  OUTLINED_FUNCTION_19_31();
  v3 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v3);

  OUTLINED_FUNCTION_19_31();
  v4 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v4);

  MEMORY[0x21CEA23B0](41, 0xE100000000000000, v5);
  return 0;
}

uint64_t Artwork.debugDescription.getter()
{
  v2 = *v0;
  v3 = v0[1];
  v5 = v0[6];
  v4 = v0[7];
  v47 = v0[4];
  v48 = v0[8];
  v49 = v0[9];
  v50 = v0[10];
  v51 = v0[5];
  v6 = v5;
  OUTLINED_FUNCTION_17_43();
  sub_217752AA8();

  MEMORY[0x21CEA23B0](v2, v3, v7);
  MEMORY[0x21CEA23B0](34, 0xE100000000000000);
  OUTLINED_FUNCTION_5_70();

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v52 = v8;
  v9 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v9);

  MEMORY[0x21CEA23B0](0xD000000000000012, v52, v10);

  sub_217752AA8();

  OUTLINED_FUNCTION_2_4();
  v11 = sub_217752FC8();
  MEMORY[0x21CEA23B0](v11);

  OUTLINED_FUNCTION_5_70();

  if (v5)
  {
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44(v13, v14, v13, MEMORY[0x277D84698], MEMORY[0x277D846A8], v15, v16, v17, v47, v48);
    OUTLINED_FUNCTION_5_70();
  }

  if (v4)
  {
    OUTLINED_FUNCTION_15_51();
    v18 = v4;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44(v19, v20, v19, MEMORY[0x277D84698], MEMORY[0x277D846A8], v21, v22, v23, v47, v48);
    OUTLINED_FUNCTION_5_70();
  }

  if (v48)
  {
    OUTLINED_FUNCTION_15_51();
    v25 = v24;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44(v26, v27, v26, MEMORY[0x277D84698], MEMORY[0x277D846A8], v28, v29, v30, v47, v48);
    OUTLINED_FUNCTION_5_70();
  }

  if (v49)
  {
    OUTLINED_FUNCTION_15_51();
    v32 = v31;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44(v33, v34, v33, MEMORY[0x277D84698], MEMORY[0x277D846A8], v35, v36, v37, v47, v48);
    OUTLINED_FUNCTION_5_70();
  }

  if (v50)
  {
    OUTLINED_FUNCTION_15_51();
    v39 = v38;
    OUTLINED_FUNCTION_17_43();
    sub_217752AA8();
    OUTLINED_FUNCTION_18_44();
    OUTLINED_FUNCTION_21_38();
    OUTLINED_FUNCTION_23_44();
    OUTLINED_FUNCTION_22_44(v40, v41, v40, MEMORY[0x277D84698], MEMORY[0x277D846A8], v42, v43, v44, v47, v48);
    OUTLINED_FUNCTION_5_70();
  }

  if (v51)
  {
    OUTLINED_FUNCTION_15_51();
    sub_217752AA8();

    OUTLINED_FUNCTION_2_4();
    v53 = v45;
    MEMORY[0x21CEA23B0](v47, v51);
    MEMORY[0x21CEA23B0](34, 0xE100000000000000);
    MEMORY[0x21CEA23B0](0xD000000000000014, v53);
  }

  MEMORY[0x21CEA23B0](10506, 0xE200000000000000, v12);
  return 0x286B726F77747241;
}

void *Artwork.init(coverArtworkRecipe:name:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v8 = sub_2177513A8();
  OUTLINED_FUNCTION_0();
  v10 = v9;
  MEMORY[0x28223BE20](v11);
  OUTLINED_FUNCTION_1();
  v14 = v13 - v12;
  memcpy(v83, a1, 0xE8uLL);
  if (BYTE8(v83[0]) == 1 || (v78 = *(&v83[1] + 1)) == 0)
  {

    sub_21735129C(v83);
    goto LABEL_10;
  }

  v75 = v10;
  v76 = v8;
  v73 = *&v83[1];
  v74 = *&v83[0];
  memcpy(v81, (a1 + 32), sizeof(v81));
  v77 = a2;
  if (sub_21726A474(v81) != 1 && *&v81[2])
  {
    v15 = *&v81[1];
    v71 = v81[0];
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v17 = OUTLINED_FUNCTION_16_7(v16);
    *(v17 + 16) = xmmword_217758490;
    *(v17 + 32) = v71;
    v18 = (v17 + 32);
    *(v17 + 48) = v15;
    OUTLINED_FUNCTION_6_69(v17);
    v19 = qword_280BE76A0;
    sub_217751DE8();
    sub_217751DE8();
    if (v19 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v72 = CGColorCreate(qword_280C023C0, v18);
    }

    else
    {

      v72 = 0;
    }

    v22 = *(&v83[4] + 1);
    v24 = *(&v83[5] + 1);
    v23 = *&v83[5];
    if (!*(&v83[6] + 1))
    {
      goto LABEL_35;
    }

LABEL_15:
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v27 = OUTLINED_FUNCTION_16_7(v26);
    *(v27 + 32) = v22;
    v28 = (v27 + 32);
    *(v27 + 16) = xmmword_217758490;
    *(v27 + 40) = v23;
    *(v27 + 48) = v24;
    OUTLINED_FUNCTION_6_69(v27);
    v29 = qword_280BE76A0;
    sub_217751DE8();
    if (v29 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v70 = CGColorCreate(qword_280C023C0, v28);
    }

    else
    {

      v70 = 0;
    }

    v31 = *(&v83[7] + 1);
    v30 = *&v83[7];
    v32 = *&v83[8];
    if (!*&v83[9])
    {
      goto LABEL_39;
    }

LABEL_21:
    v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v34 = OUTLINED_FUNCTION_16_7(v33);
    *(v34 + 32) = v30;
    v35 = (v34 + 32);
    *(v34 + 16) = xmmword_217758490;
    *(v34 + 40) = v31;
    *(v34 + 48) = v32;
    OUTLINED_FUNCTION_6_69(v34);
    v36 = qword_280BE76A0;
    sub_217751DE8();
    if (v36 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v37 = CGColorCreate(qword_280C023C0, v35);
    }

    else
    {

      v37 = 0;
    }

    v38 = *(&v83[9] + 1);
    v39 = *(&v83[10] + 1);
    v40 = *&v83[10];
    if (!*(&v83[11] + 1))
    {
      goto LABEL_43;
    }

    goto LABEL_27;
  }

  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v82) == 1)
  {
    sub_217751DE8();
    v72 = 0;
    goto LABEL_36;
  }

  v22 = v82[5];
  v23 = v82[6];
  v24 = v82[7];
  v25 = v82[9];
  sub_217751DE8();
  v72 = 0;
  if (v25)
  {
    goto LABEL_15;
  }

LABEL_35:
  a2 = v77;
LABEL_36:
  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v82) == 1)
  {
    v70 = 0;
    goto LABEL_40;
  }

  v70 = 0;
  v30 = v82[10];
  v31 = v82[11];
  v32 = v82[12];
  if (v82[14])
  {
    goto LABEL_21;
  }

LABEL_39:
  a2 = v77;
LABEL_40:
  OUTLINED_FUNCTION_20_37();
  if (sub_21726A474(v82) != 1)
  {
    v37 = 0;
    v38 = v82[15];
    v40 = v82[16];
    v39 = v82[17];
    if (!v82[19])
    {
LABEL_43:
      v45 = 0;
      a2 = v77;
      goto LABEL_44;
    }

LABEL_27:
    v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v42 = OUTLINED_FUNCTION_16_7(v41);
    *(v42 + 32) = v38;
    v43 = (v42 + 32);
    *(v42 + 16) = xmmword_217758490;
    *(v42 + 40) = v40;
    *(v42 + 48) = v39;
    OUTLINED_FUNCTION_6_69(v42);
    v44 = qword_280BE76A0;
    sub_217751DE8();
    if (v44 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v45 = CGColorCreate(qword_280C023C0, v43);
    }

    else
    {

      v45 = 0;
    }

    a2 = v77;

    goto LABEL_44;
  }

  v45 = 0;
  v37 = 0;
LABEL_44:
  if (*&v83[14])
  {
    v46 = *&v83[13];
    v68 = v83[12];
    v47 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24D00, &qword_2177597B0);
    v48 = OUTLINED_FUNCTION_16_7(v47);
    *(v48 + 16) = xmmword_217758490;
    *(v48 + 32) = v68;
    v49 = (v48 + 32);
    *(v48 + 48) = v46;
    OUTLINED_FUNCTION_6_69(v48);
    v50 = qword_280BE76A0;
    sub_217751DE8();
    if (v50 != -1)
    {
      OUTLINED_FUNCTION_0_109(&qword_280BE76A0);
    }

    if (qword_280C023C0)
    {
      v51 = CGColorCreate(qword_280C023C0, v49);
    }

    else
    {

      v51 = 0;
    }

    sub_21735129C(v83);
  }

  else
  {
    sub_21735129C(v83);
    v51 = 0;
  }

  v52 = objc_allocWithZone(MusicKit_SoftLinking_CoverArtworkRecipe);
  v65 = v51;
  v69 = v72;
  v67 = v70;
  v66 = v37;
  v64 = v45;
  v53 = sub_2175B75DC(v74, v73, v78, v72, v70, v37, v45, v51);
  v82[0] = a2;
  v82[1] = a3;
  v54 = sub_217751398();
  sub_21733A5C8(v54, v55, v56);
  v57 = sub_217752988();
  v59 = v58;
  (*(v75 + 8))(v14, v76);

  v60 = HIBYTE(v59) & 0xF;
  if ((v59 & 0x2000000000000000) == 0)
  {
    v60 = v57 & 0xFFFFFFFFFFFFLL;
  }

  if (!v60)
  {

    if (qword_27CB23BE8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_2_4();
    sub_217751588();
  }

  v61 = sub_217751F18();
  v62 = [v53 createArtworkCatalogWithPlaylistName_];

  if (v62)
  {
    swift_getObjectType();
    v63 = sub_217717634();
    v82[4] = &off_28297F3C8;
    v82[3] = &type metadata for SoftLinking_ArtworkCatalog;
    v82[0] = v63;
    v79[0] = 1;
    memset(&v79[1], 0, 24);
    swift_unknownObjectRetain();
    Artwork.init(_:alternateText:existingColorAnalysis:)(v82, 0, 0, v79, v80);
    swift_unknownObjectRelease();

    swift_unknownObjectRelease();
    memcpy(v82, v80, 0x221uLL);
    nullsub_1();
    v20 = a4;
    return memcpy(v20, v82, 0x221uLL);
  }

LABEL_10:
  sub_2172A497C(v82);
  v20 = a4;
  return memcpy(v20, v82, 0x221uLL);
}

uint64_t sub_2175B6E78()
{
  v20 = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() mainBundle];
  v1 = sub_2175B76A0(v0);
  if (!v1)
  {

    v18 = 0u;
    v19 = 0u;
LABEL_9:
    v12 = &v18;
LABEL_10:
    sub_2171F06D8(v12, &qword_27CB2AD40, &qword_2177583F0);
    return 0;
  }

  sub_2173ACA4C(0x696C43616964654DLL, 0xEF6F666E49746E65, v1);

  if (!*(&v19 + 1))
  {

    goto LABEL_9;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB26AD0, &qword_217765F78);
  if ((swift_dynamicCast() & 1) == 0)
  {

    return 0;
  }

  sub_2173ACA4C(0x6B726F77747241, 0xE700000000000000, v16);

  if (!v17)
  {

    v12 = &v16;
    goto LABEL_10;
  }

  sub_2172124CC(&v16, &v18);
  v2 = objc_opt_self();
  __swift_project_boxed_opaque_existential_1(&v18, *(&v19 + 1));
  v3 = sub_217753048();
  *&v16 = 0;
  v4 = [v2 dataWithJSONObject:v3 options:0 error:&v16];
  swift_unknownObjectRelease();
  v5 = v16;
  if (v4)
  {
    v6 = sub_217751768();
    v8 = v7;

    sub_217751348();
    swift_allocObject();
    v9 = sub_217751338();
    sub_2175B7BD0(v9, v10, v11);
    sub_217751308();

    sub_217275694(v6, v8);

    __swift_destroy_boxed_opaque_existential_1(&v18);
    return v16;
  }

  v13 = v5;
  v14 = sub_217751638();

  swift_willThrow();
  __swift_destroy_boxed_opaque_existential_1(&v18);
  return 0;
}

uint64_t sub_2175B714C(void *a1, uint64_t a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A3D8, &qword_217780468);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B7D58(v7, v8, v9);
  sub_2177532F8();
  sub_217752F58();
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_2175B72A4(char a1)
{
  sub_2177531E8();
  sub_217753208();
  return sub_217753238();
}

uint64_t sub_2175B72EC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A3D0, &qword_217780460);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v12 - v5;
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v8 = v7;
  sub_2175B7D58(v7, v9, v10);
  sub_2177532C8();
  if (!v1)
  {
    v8 = sub_217752E78();
    (*(v4 + 8))(v6, v3);
  }

  __swift_destroy_boxed_opaque_existential_1(a1);
  return v8 & 1;
}

BOOL sub_2175B744C@<W0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_217229638(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_2175B7480@<X0>(unint64_t *a1@<X8>)
{
  result = sub_217229680();
  *a1 = result;
  a1[1] = v3;
  return result;
}

BOOL sub_2175B74AC@<W0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_217229638(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175B74D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175B7D58(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175B7514(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175B7D58(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t sub_2175B7550@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2175B72EC(a1);
  if (!v2)
  {
    *a2 = result & 1;
  }

  return result;
}

uint64_t sub_2175B75B8()
{
  result = sub_2175B6E78();
  byte_280BE76B1 = result & 1;
  return result;
}

id sub_2175B75DC(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, void *a5, void *a6, void *a7, void *a8)
{
  v15 = sub_217751F18();
  v16 = [v8 initWithExpression:a1 version:v15 backgroundColor:a4 primaryColor:a5 secondaryColor:a6 tertiaryColor:a7 textColor:{, a8}];

  return v16;
}

uint64_t sub_2175B76A0(void *a1)
{
  v1 = [a1 infoDictionary];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_217751D98();

  return v3;
}

uint64_t sub_2175B770C(uint64_t a1)
{
  v11[3] = &type metadata for SoftLinking_ArtworkCatalog;
  v11[4] = &off_28297F3C8;
  v11[0] = a1;
  sub_2171FF30C(v11, v9);
  swift_unknownObjectRetain();
  sub_2173C9A78(v9, 0, 0, v10);
  v1 = v10[1];
  v2 = v10[2];
  v3 = v10[3];
  type metadata accessor for ArtworkCatalog();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_93();
  v7 = sub_2175B77C8(v4, v5, v1, v2, v3, v6);
  __swift_destroy_boxed_opaque_existential_1(v11);
  return v7;
}

uint64_t sub_2175B77C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v13[0] = a1;
  v13[3] = &type metadata for SoftLinking_ArtworkCatalog;
  v13[4] = &off_28297F3C8;
  if (qword_280BE9F10 != -1)
  {
    swift_once();
  }

  *(a6 + 16) = a2;
  *(a6 + 24) = a3;

  sub_2171FF30C(v13, a6 + 32);
  v9 = *(a6 + 24);
  if (v9)
  {
    v10 = *(a6 + 16);
    v11 = qword_280BE8888;
    sub_217751DE8();
    if (v11 != -1)
    {
      swift_once();
    }

    sub_217577290(a6, v10, v9);
  }

  __swift_destroy_boxed_opaque_existential_1(v13);
  return a6;
}

unint64_t sub_2175B78D8()
{
  result = qword_280BE2300;
  if (!qword_280BE2300)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_280BE2300);
  }

  return result;
}

unint64_t sub_2175B79C4()
{
  result = qword_280BE7518;
  if (!qword_280BE7518)
  {
    type metadata accessor for CGColor(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE7518);
  }

  return result;
}

unint64_t sub_2175B7A7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3C0;
  if (!qword_27CB2A3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3C0);
  }

  return result;
}

uint64_t sub_2175B7AD8(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 545))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

unint64_t sub_2175B7BD0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE2798;
  if (!qword_280BE2798)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE2798);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Artwork.ConfigurationInfo(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175B7D04(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3C8;
  if (!qword_27CB2A3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3C8);
  }

  return result;
}

unint64_t sub_2175B7D58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE27B0;
  if (!qword_280BE27B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27B0);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for Artwork.ConfigurationInfo.CodingKeys(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

unint64_t sub_2175B7E5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3E0;
  if (!qword_27CB2A3E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3E0);
  }

  return result;
}

unint64_t sub_2175B7EB4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE27A0;
  if (!qword_280BE27A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27A0);
  }

  return result;
}

unint64_t sub_2175B7F0C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_280BE27A8;
  if (!qword_280BE27A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_280BE27A8);
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_11_57(uint64_t a1)
{

  return sub_217751988();
}

void *OUTLINED_FUNCTION_20_37()
{

  return memcpy((v0 + 888), (v1 + 32), 0xA0uLL);
}

void OUTLINED_FUNCTION_21_38()
{

  JUMPOUT(0x21CEA23B0);
}

uint64_t OUTLINED_FUNCTION_22_44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, ...)
{

  return sub_217752C78();
}

void OUTLINED_FUNCTION_26_34()
{

  CGColorRef.convertToArtworkColor()(v0 + 2160);
}

uint64_t get_enum_tag_for_layout_string_8MusicKit23CloudResourceCollectionVyAA0cD0VyAA0C7CuratorVGGSg(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_2175B8040(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 336))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 88);
      if (v2 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175B8080(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 328) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
    *(result + 168) = 0u;
    *(result + 152) = 0u;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 336) = 1;
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
      *(result + 88) = (a2 - 1);
      return result;
    }

    *(result + 336) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_2175B812C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3E8;
  if (!qword_27CB2A3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3E8);
  }

  return result;
}

uint64_t sub_2175B8180(uint64_t a1, uint64_t a2)
{
  if ((sub_21733E6D0(a1, a2) & 1) == 0)
  {
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_1_98(a1 + 104, v17);
  OUTLINED_FUNCTION_1_98(a2 + 104, &v19);
  if (!v18)
  {
    if (!v20)
    {
      sub_2171F06D8(v17, &qword_27CB24290, &unk_21775D550);
      goto LABEL_8;
    }

LABEL_10:
    sub_2171F06D8(v17, &qword_27CB26208, &qword_21777EF20);
LABEL_11:
    v13 = 0;
    return v13 & 1;
  }

  v4 = sub_217202078(v17, v16, &qword_27CB24290, &unk_21775D550);
  if (!v20)
  {
    sub_2171F06D8(v16, &qword_27CB24298, &qword_21777CD60);
    goto LABEL_10;
  }

  OUTLINED_FUNCTION_75(v4, v5, v6, v7, v8, v9, v10, v11, v15[0]);
  v12 = sub_2172DE0E8(v16, v15);
  OUTLINED_FUNCTION_4_86(v15);
  OUTLINED_FUNCTION_4_86(v16);
  sub_2171F06D8(v17, &qword_27CB24290, &unk_21775D550);
  if ((v12 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_8:
  v13 = sub_21733E724(a1 + 232, a2 + 232);
  return v13 & 1;
}

uint64_t sub_2175B82D8(uint64_t a1)
{
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  v3 = sub_217202078(v1 + 104, v13, &qword_27CB24290, &unk_21775D550);
  if (v14)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v12[0], v12[1], v12[2], v12[3], v12[4], v12[5], v12[6], v12[7], v12[8], v12[9], v12[10], v12[11], v12[12], v12[13], v12[14], v12[15]);
    sub_217753208();
    sub_2172DE7FC(a1);
    sub_2171F06D8(v12, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
}

uint64_t sub_2175B8384()
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  v1 = sub_217202078(v0 + 104, v27, &qword_27CB24290, &unk_21775D550);
  if (v28)
  {
    OUTLINED_FUNCTION_180(v1, v2, v3, v4, v5, v6, v7, v8, v10, v11[0], v12, v13, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    sub_217753208();
    sub_2172DE7FC(v29);
    sub_2171F06D8(v11, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  return sub_217753238();
}

BOOL sub_2175B8444(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_1_98(a1, v27);
  OUTLINED_FUNCTION_1_98(a2, v29);
  if (v28)
  {
    v4 = sub_217202078(v27, v26, &qword_27CB242A0, &unk_21777EEF0);
    if (v30)
    {
      OUTLINED_FUNCTION_75(v4, v5, v6, v7, v8, v9, v10, v11, v25[0]);
      v12 = sub_2172DE100(v26, v25);
      OUTLINED_FUNCTION_4_86(v25);
      OUTLINED_FUNCTION_4_86(v26);
      sub_2171F06D8(v27, &qword_27CB242A0, &unk_21777EEF0);
      if ((v12 & 1) == 0)
      {
        return 0;
      }

      goto LABEL_7;
    }

    sub_2171F06D8(v26, &qword_27CB242A8, &unk_21775D570);
LABEL_12:
    v22 = &unk_27CB2A288;
    v23 = &unk_21777EF28;
    goto LABEL_18;
  }

  if (v30)
  {
    goto LABEL_12;
  }

  sub_2171F06D8(v27, &qword_27CB242A0, &unk_21777EEF0);
LABEL_7:
  OUTLINED_FUNCTION_1_98(a1 + 128, v27);
  OUTLINED_FUNCTION_1_98(a2 + 128, v29);
  if (v28)
  {
    v13 = sub_217202078(v27, v26, &qword_27CB24290, &unk_21775D550);
    if (v30)
    {
      OUTLINED_FUNCTION_75(v13, v14, v15, v16, v17, v18, v19, v20, v25[0]);
      v21 = sub_2172DE0E8(v26, v25);
      sub_2171F06D8(v25, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v26, &qword_27CB24298, &qword_21777CD60);
      sub_2171F06D8(v27, &qword_27CB24290, &unk_21775D550);
      return (v21 & 1) != 0;
    }

    sub_2171F06D8(v26, &qword_27CB24298, &qword_21777CD60);
  }

  else if (!v30)
  {
    sub_2171F06D8(v27, &qword_27CB24290, &unk_21775D550);
    return 1;
  }

  v22 = &qword_27CB26208;
  v23 = &qword_21777EF20;
LABEL_18:
  sub_2171F06D8(v27, v22, v23);
  return 0;
}

uint64_t sub_2175B868C(uint64_t a1)
{
  v3 = sub_217202078(v1, v36, &qword_27CB242A0, &unk_21777EEF0);
  if (v37)
  {
    OUTLINED_FUNCTION_10_1(v3, v4, v5, v6, v7, v8, v9, v10, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    sub_217753208();
    sub_2172DE814(a1);
    sub_2171F06D8(&v20, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  v11 = sub_217202078(v1 + 128, v36, &qword_27CB24290, &unk_21775D550);
  if (!v37)
  {
    return sub_217753208();
  }

  OUTLINED_FUNCTION_10_1(v11, v12, v13, v14, v15, v16, v17, v18, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
  sub_217753208();
  sub_2172DE7FC(a1);
  return sub_2171F06D8(&v20, &qword_27CB24298, &qword_21777CD60);
}

uint64_t sub_2175B8790()
{
  sub_2177531E8();
  v1 = sub_217202078(v0, v35, &qword_27CB242A0, &unk_21777EEF0);
  if (v36)
  {
    OUTLINED_FUNCTION_180(v1, v2, v3, v4, v5, v6, v7, v8, v18, v19[0], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    sub_217753208();
    sub_2172DE814(v37);
    sub_2171F06D8(v19, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  v9 = sub_217202078(v0 + 128, v35, &qword_27CB24290, &unk_21775D550);
  if (v36)
  {
    OUTLINED_FUNCTION_180(v9, v10, v11, v12, v13, v14, v15, v16, v18, v19[0], v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34);
    sub_217753208();
    sub_2172DE7FC(v37);
    sub_2171F06D8(v19, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175B88B0(uint64_t a1)
{
  sub_2177531E8();
  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  sub_217202078(v1 + 104, __src, &qword_27CB24290, &unk_21775D550);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v5);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  _s8MusicKit0A31PersonalRecommendationsResponseV4hash4intoys6HasherVz_tF_0();
  return sub_217753238();
}

unint64_t sub_2175B897C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3F0;
  if (!qword_27CB2A3F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3F0);
  }

  return result;
}

uint64_t sub_2175B89DC(uint64_t a1)
{
  sub_2177531E8();
  sub_217202078(v1, __src, &qword_27CB242A0, &unk_21777EEF0);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE814(v5);
    sub_2171F06D8(__dst, &qword_27CB242A8, &unk_21775D570);
  }

  else
  {
    sub_217753208();
  }

  sub_217202078(v1 + 128, __src, &qword_27CB24290, &unk_21775D550);
  if (__src[2])
  {
    memcpy(__dst, __src, sizeof(__dst));
    sub_217753208();
    sub_2172DE7FC(v5);
    sub_2171F06D8(__dst, &qword_27CB24298, &qword_21777CD60);
  }

  else
  {
    sub_217753208();
  }

  return sub_217753238();
}

uint64_t sub_2175B8B0C(uint64_t a1)
{
  *(v1 + 24) = a1;
  v2 = swift_task_alloc();
  *(v1 + 32) = v2;
  *v2 = v1;
  v2[1] = sub_2175B8BA8;

  return static MusicSubscription.currentForBackgroundUse.getter(v1 + 48);
}

uint64_t sub_2175B8BA8()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;
  *(v4 + 40) = v0;

  if (v0)
  {
    v5 = sub_2175B8D0C;
  }

  else
  {
    v5 = sub_2175B8CAC;
  }

  return MEMORY[0x2822009F8](v5, 0, 0);
}

uint64_t sub_2175B8CAC()
{
  if (*(v0 + 49))
  {
    v1 = 256;
  }

  else
  {
    v1 = 0;
  }

  v2 = v1 | *(v0 + 48);
  v3 = *(v0 + 24);
  v4 = *(v0 + 40) != 0;
  *(v3 + 2) = *(v0 + 50) != 0;
  *v3 = v2;
  *(v3 + 3) = v4;
  return (*(v0 + 8))();
}

uint64_t sub_2175B8D0C()
{
  OUTLINED_FUNCTION_10();
  *(v0 + 16) = *(v0 + 40);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27CB27640, &qword_21775A340);
  if (swift_dynamicCast())
  {
    v1 = *(v0 + 51);
  }

  else
  {
    v1 = 0;
  }

  v2 = *(v0 + 24);
  v3 = *(v0 + 40) != 0;
  *(v2 + 2) = 0;
  *v2 = v1;
  *(v2 + 3) = v3;
  v4 = *(v0 + 8);

  return v4();
}

uint64_t MusicSubscription.FailableUpdates.Iterator.next()(uint64_t a1)
{
  *(v1 + 16) = a1;
  v3 = swift_task_alloc();
  *(v1 + 24) = v3;
  *v3 = v1;
  v3[1] = sub_2175B8E80;

  return (sub_2173D92F0)(a1);
}

uint64_t sub_2175B8E80()
{
  OUTLINED_FUNCTION_10();
  OUTLINED_FUNCTION_155();
  v2 = *v1;
  OUTLINED_FUNCTION_13_0();
  *v3 = v2;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_2175B8FA8, 0, 0);
  }

  else
  {
    v4 = *(v2 + 8);

    return v4();
  }
}

uint64_t sub_2175B8FC8()
{
  OUTLINED_FUNCTION_10();
  v2 = v1;
  v3 = swift_task_alloc();
  *(v0 + 16) = v3;
  *v3 = v0;
  v3[1] = sub_2174A9BF0;

  return MusicSubscription.FailableUpdates.Iterator.next()(v2);
}

uint64_t sub_2175B905C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 24) = v7;
  *v7 = v3;
  v7[1] = sub_2174A9DA4;

  return (sub_2174E538C)(a1, a2, a3, v3 + 16);
}

uint64_t MusicSubscription.FailableUpdates.makeAsyncIterator()@<X0>(uint64_t a1@<X8>)
{
  _s14UpdateTriggersV8IteratorCMa(0);
  swift_allocObject();
  result = sub_2174E5548();
  *a1 = &unk_217780A28;
  *(a1 + 8) = 0;
  *(a1 + 16) = result;
  *(a1 + 24) = -16777216;
  return result;
}

unint64_t sub_2175B91A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A3F8;
  if (!qword_27CB2A3F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A3F8);
  }

  return result;
}

_BYTE *_s15FailableUpdatesVwst(_BYTE *result, int a2, int a3)
{
  if ((a3 + 1) >= 0x10000)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) < 0x100)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

__n128 __swift_memcpy28_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 12) = *(a2 + 12);
  *a1 = result;
  return result;
}

uint64_t sub_2175B92B8(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 28))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v2) = -1;
      }
    }
  }

  else
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2175B92F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 28) = 1;
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

    *(result + 28) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CloudSnippet.text.getter()
{
  v1 = *v0;
  sub_217751DE8();
  return v1;
}

uint64_t CloudSnippet.kind.getter@<X0>(void *a1@<X8>)
{
  v2 = *(v1 + 24);
  *a1 = *(v1 + 16);
  a1[1] = v2;
  return sub_217751DE8();
}

uint64_t static CloudSnippet.== infix(_:_:)(uint64_t *a1, void *a2)
{
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = a2[1];
  v7 = a2[2];
  v8 = a2[3];
  if (v3)
  {
    if (!v6)
    {
      return 0;
    }

    v9 = *a1 == *a2 && v3 == v6;
    if (!v9 && (sub_217753058() & 1) == 0)
    {
      return 0;
    }
  }

  else if (v6)
  {
    return 0;
  }

  if (v5)
  {
    if (v8)
    {
      v10 = v4 == v7 && v5 == v8;
      if (v10 || (sub_217753058() & 1) != 0)
      {
        return 1;
      }
    }

    return 0;
  }

  if (v8)
  {
    return 0;
  }

  return 1;
}

uint64_t sub_2175B943C(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 1954047348 && a2 == 0xE400000000000000;
  if (v3 || (sub_217753058() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 1684957547 && a2 == 0xE400000000000000)
  {

    return 1;
  }

  else
  {
    v7 = sub_217753058();

    if (v7)
    {
      return 1;
    }

    else
    {
      return 2;
    }
  }
}

uint64_t sub_2175B950C(char a1)
{
  if (a1)
  {
    return 1684957547;
  }

  else
  {
    return 1954047348;
  }
}

uint64_t sub_2175B9534@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_2175B943C(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_2175B955C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175B9B3C(a1, a2, a3);

  return MEMORY[0x2821FE718](a1, v4);
}

uint64_t sub_2175B9598(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = sub_2175B9B3C(a1, a2, a3);

  return MEMORY[0x2821FE720](a1, v4);
}

uint64_t CloudSnippet.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A400, &qword_217780B20);
  OUTLINED_FUNCTION_0_0();
  v5 = v4;
  MEMORY[0x28223BE20](v6);
  v8 = &v19 - v7;
  v9 = *(v1 + 24);
  v20 = *(v1 + 16);
  v21 = v9;
  v10 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B9B3C(v10, v11, v12);
  sub_2177532F8();
  LOBYTE(v23) = 0;
  v13 = v22;
  v14 = sub_217752EF8();
  if (!v13)
  {
    v23 = v20;
    v24 = v21;
    v25 = 1;
    sub_2175B9B90(v14, v15, v16);
    sub_217751DE8();
    sub_217752F38();
  }

  return (*(v5 + 8))(v8, v3, v17);
}

uint64_t CloudSnippet.hash(into:)(uint64_t a1)
{
  v2 = *(v1 + 24);
  if (!*(v1 + 8))
  {
    sub_217753208();
    if (v2)
    {
      goto LABEL_3;
    }

    return sub_217753208();
  }

  sub_217753208();
  sub_217751FF8();
  if (!v2)
  {
    return sub_217753208();
  }

LABEL_3:
  sub_217753208();

  return sub_217751FF8();
}

uint64_t CloudSnippet.hashValue.getter()
{
  v1 = *(v0 + 8);
  v2 = *(v0 + 24);
  sub_2177531E8();
  sub_217753208();
  if (v1)
  {
    sub_217751FF8();
  }

  sub_217753208();
  if (v2)
  {
    sub_217751FF8();
  }

  return sub_217753238();
}

void CloudSnippet.init(from:)(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB2A418, &qword_217780B28);
  OUTLINED_FUNCTION_0_0();
  v7 = v6;
  MEMORY[0x28223BE20](v8);
  v10 = v20 - v9;
  v11 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_2175B9B3C(v11, v12, v13);
  sub_2177532C8();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
  }

  else
  {
    LOBYTE(v20[0]) = 0;
    v14 = sub_217752E18();
    v16 = v15;
    v21 = 1;
    sub_2175B9BE4(v14, v15, v17);
    sub_217752E58();
    (*(v7 + 8))(v10, v5);
    v18 = v20[0];
    v19 = v20[1];
    *a2 = v14;
    a2[1] = v16;
    a2[2] = v18;
    a2[3] = v19;
    sub_217751DE8();
    sub_217751DE8();
    __swift_destroy_boxed_opaque_existential_1(a1);
  }
}

uint64_t sub_2175B9AF4(uint64_t a1)
{
  v2 = v1[1];
  v5 = *v1;
  v6 = v2;
  sub_2177531E8();
  CloudSnippet.hash(into:)(v4);
  return sub_217753238();
}

unint64_t sub_2175B9B3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A408;
  if (!qword_27CB2A408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A408);
  }

  return result;
}

unint64_t sub_2175B9B90(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A410;
  if (!qword_27CB2A410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A410);
  }

  return result;
}

unint64_t sub_2175B9BE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A420;
  if (!qword_27CB2A420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A420);
  }

  return result;
}

unint64_t sub_2175B9C3C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A428;
  if (!qword_27CB2A428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A428);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CloudSnippet.CodingKeys(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 1 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 1) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFF)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFE)
  {
    v6 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 1;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175B9D80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A430;
  if (!qword_27CB2A430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A430);
  }

  return result;
}

unint64_t sub_2175B9DD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A438;
  if (!qword_27CB2A438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A438);
  }

  return result;
}

unint64_t sub_2175B9E30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A440;
  if (!qword_27CB2A440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A440);
  }

  return result;
}

uint64_t MusicLibraryFilteringOptions.hash(into:)()
{
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  sub_217753208();
  return sub_217753208();
}

uint64_t MusicLibraryFilteringOptions.hashValue.getter()
{
  sub_2177531E8();
  MusicLibraryFilteringOptions.hash(into:)();
  return sub_217753238();
}

uint64_t sub_2175BA1C4(uint64_t a1)
{
  sub_2177531E8();
  MusicLibraryFilteringOptions.hash(into:)();
  return sub_217753238();
}

unint64_t sub_2175BA204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A448;
  if (!qword_27CB2A448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A448);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for MusicLibraryFilteringOptions(unsigned __int8 *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0xFF && a1[9])
    {
      v2 = *a1 + 254;
    }

    else
    {
      v3 = *a1;
      v4 = v3 >= 2;
      v2 = (v3 + 2147483646) & 0x7FFFFFFF;
      if (!v4)
      {
        v2 = -1;
      }
    }
  }

  else
  {
    v2 = -1;
  }

  return (v2 + 1);
}

uint64_t storeEnumTagSinglePayload for MusicLibraryFilteringOptions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatalogRawChartKind(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 2 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 2) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xFE)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFD)
  {
    v6 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
    switch(v5)
    {
      case 1:
        result[1] = v6;
        break;
      case 2:
        *(result + 1) = v6;
        break;
      case 3:
LABEL_23:
        __break(1u);
        break;
      case 4:
        *(result + 1) = v6;
        break;
      default:
        return result;
    }
  }

  else
  {
    switch(v5)
    {
      case 1:
        result[1] = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      case 2:
        *(result + 1) = 0;
        goto LABEL_17;
      case 3:
        goto LABEL_23;
      case 4:
        *(result + 1) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_18;
      default:
LABEL_17:
        if (a2)
        {
LABEL_18:
          *result = a2 + 2;
        }

        break;
    }
  }

  return result;
}

unint64_t sub_2175BA3D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27CB2A450;
  if (!qword_27CB2A450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A450);
  }

  return result;
}

uint64_t sub_2175BA42C(char a1)
{
  if (!a1)
  {
    return 0x616C702D74736F6DLL;
  }

  if (a1 == 1)
  {
    return 0x706F742D79746963;
  }

  return 0xD000000000000010;
}

unint64_t sub_2175BA490(uint64_t a1)
{
  v1 = sub_217752DC8();

  if (v1 >= 3)
  {
    return 3;
  }

  else
  {
    return v1;
  }
}

unint64_t sub_2175BA4DC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_2175BA490(*a1);
  *a2 = result;
  return result;
}

uint64_t sub_2175BA50C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_2175BA42C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

unint64_t sub_2175BA620()
{
  result = qword_27CB2A458;
  if (!qword_27CB2A458)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27CB2A460, qword_217780EA0);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27CB2A458);
  }

  return result;
}

uint64_t Playlist.Entry.Item.id.getter(uint64_t a1)
{
  Playlist.Entry.Item.innerItem.getter();
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 8))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v4);
  return OUTLINED_FUNCTION_93();
}

uint64_t sub_2175BA6FC(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v17[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v17[-v7 - 8];
  sub_2171FF30C(a1, v17);
  sub_217315200();
  if (!v1)
  {
    sub_2174A87A0(v8, v5, &qword_27CB247D8, &qword_217758D60);
    v9 = a1[3];
    v10 = a1[4];
    v11 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v11, v12);
    Decoder.dataRequestConfiguration.getter(v9, v10);
    v13 = OUTLINED_FUNCTION_93();
    __swift_project_boxed_opaque_existential_1(v13, v14);
    Decoder.sharedRelatedItemStore.getter();
    sub_217336414();
    sub_2171F06D8(v8, &qword_27CB247D8, &qword_217758D60);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2175BA878(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  MEMORY[0x28223BE20](v3 - 8);
  v5 = &v13[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  MEMORY[0x28223BE20](v6);
  v8 = &v13[-v7 - 8];
  sub_2171FF30C(a1, v13);
  sub_217315E8C();
  if (!v1)
  {
    sub_2174A87A0(v8, v5, &qword_27CB25650, &unk_21778F830);
    v9 = a1[3];
    v10 = a1[4];
    __swift_project_boxed_opaque_existential_1(a1, v9);
    Decoder.dataRequestConfiguration.getter(v9, v10);
    __swift_project_boxed_opaque_existential_1(a1, a1[3]);
    Decoder.sharedRelatedItemStore.getter();
    sub_21733718C();
    sub_2171F06D8(v8, &qword_27CB25650, &unk_21778F830);
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_2175BA9FC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25650, &unk_21778F830);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - v3;
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Encoder.dataRequestConfiguration.getter(v5, v6);
  sub_2173385F0();
  sub_21733AB9C(&v16);
  sub_21732D9E4(a1, v7, v8, v9, v10, v11, v12, v13, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29);
  return sub_2171F06D8(v4, &qword_27CB25650, &unk_21778F830);
}

uint64_t sub_2175BAB00(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB247D8, &qword_217758D60);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9[-v3 - 8];
  v5 = a1[3];
  v6 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v5);
  Encoder.dataRequestConfiguration.getter(v5, v6);
  sub_217337778();
  sub_21733AB9C(v9);
  sub_21732E104();
  return sub_2171F06D8(v4, &qword_27CB247D8, &qword_217758D60);
}

uint64_t Playlist.Entry.Item.init(propertyProvider:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = a1[3];
  v5 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  (*(v5 + 48))(v55, v4, v5);
  v6 = v55[1];
  if (qword_280BE8B28 != -1)
  {
    swift_once();
  }

  v7 = OUTLINED_FUNCTION_30_2(&qword_280BE8B30);
  v9 = v9 && v8 == v6;
  if (!v9 && (OUTLINED_FUNCTION_25_38(v7, v8) & 1) == 0)
  {
    if (qword_280BE8B68 != -1)
    {
      swift_once();
    }

    v10 = OUTLINED_FUNCTION_30_2(&qword_280BE8B70);
    v12 = v9 && v11 == v6;
    if (!v12 && (OUTLINED_FUNCTION_25_38(v10, v11) & 1) == 0)
    {
      if (qword_280BEA1C8 != -1)
      {
        swift_once();
      }

      v27 = OUTLINED_FUNCTION_30_2(&xmmword_280BEA1D0);
      v29 = v9 && v28 == v6;
      if (!v29 && (OUTLINED_FUNCTION_25_38(v27, v28) & 1) == 0)
      {
        if (qword_280BE8B08 != -1)
        {
          swift_once();
        }

        v30 = OUTLINED_FUNCTION_30_2(&qword_280BE8B10);
        if (!v9 || v31 != v6)
        {
          v33 = OUTLINED_FUNCTION_25_38(v30, v31);

          if (v33)
          {
LABEL_33:
            sub_2171FF30C(a1, v47);
            __swift_project_boxed_opaque_existential_1(v47, v48);
            v34 = OUTLINED_FUNCTION_8_49();
            v35(v34);
            v37 = v53;
            v36 = v54;
            sub_217751DE8();
            sub_217269F50(&v53);
            *&v49 = v37;
            *(&v49 + 1) = v36;
            v38 = __swift_project_boxed_opaque_existential_1(v47, v48);
            OUTLINED_FUNCTION_11_6(v38, v39, v40, v41, v42, v43, v44, v45, v46);
            __swift_destroy_boxed_opaque_existential_1(v47);
            LOBYTE(v47[0]) = 1;
            goto LABEL_16;
          }

          v46 = 36;
          sub_217752D08();
          __break(1u);
        }
      }

      goto LABEL_33;
    }
  }

  sub_2171FF30C(a1, v47);
  __swift_project_boxed_opaque_existential_1(v47, v48);
  v13 = OUTLINED_FUNCTION_8_49();
  v14(v13);
  v16 = v53;
  v15 = v54;
  sub_217751DE8();
  sub_217269F50(&v53);
  *&v49 = v16;
  *(&v49 + 1) = v15;
  v17 = __swift_project_boxed_opaque_existential_1(v47, v48);
  OUTLINED_FUNCTION_11_6(v17, v18, v19, v20, v21, v22, v23, v24, v46);
  __swift_destroy_boxed_opaque_existential_1(v47);
  LOBYTE(v47[0]) = 0;
LABEL_16:
  v25 = v50;
  *a2 = v49;
  *(a2 + 16) = v25;
  *(a2 + 32) = v51;
  *(a2 + 48) = v52;
  *(a2 + 56) = v47[0];
  return __swift_destroy_boxed_opaque_existential_1(a1);
}

double Playlist.Entry.Item.innerItem.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v1, v7);
  if (v10)
  {
    v2 = &type metadata for Song;
  }

  else
  {
    v2 = &type metadata for MusicVideo;
  }

  if (v10)
  {
    v3 = &protocol witness table for Song;
  }

  else
  {
    v3 = &protocol witness table for MusicVideo;
  }

  v4 = swift_allocObject();
  v5 = v7[1];
  *(v4 + 16) = v7[0];
  *(v4 + 32) = v5;
  result = *&v8;
  *(v4 + 48) = v8;
  *(v4 + 64) = v9;
  v0[3] = v2;
  v0[4] = v3;
  *v0 = v4;
  return result;
}

uint64_t Playlist.Entry.Item.propertyProvider.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  v1 = sub_21729C79C(v0, &v22);
  if (v27)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v9 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v9, v10);
    return sub_217283B58(&v14);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v14, v15, v16, v17, v18, v19, v20, v21, v22, v23, v24, v25, v26);
    v12 = OUTLINED_FUNCTION_29(&v14);
    sub_21729C5E8(v12, v13);
    return sub_217283C08(&v14);
  }
}

void *Playlist.Entry.Item.artwork.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v34);
  if (v40 == 1)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9708 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA860(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6B50 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CA83C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  return memcpy(v0, __src, 0x221uLL);
}

uint64_t Playlist.Entry.Item.albumTitle.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22, v24, v26, v28, v30, v32, v34);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9960 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, v40);
    if (qword_280BE6DA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.artistName.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE9958 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE6DA0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.artistURL.getter()
{
  v0 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v0, &v35);
  OUTLINED_FUNCTION_5_71();
  if (v9)
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB255C8, &qword_21775D4A0);
    swift_allocObject();
    OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0();
    OUTLINED_FUNCTION_7_2();
    sub_2176CA560(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, vars0, vars8);

    return sub_217283B58(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v1, v2, v3, v4, v5, v6, v7, v8, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB25658, &unk_2177657D0);
    swift_allocObject();
    OUTLINED_FUNCTION_29_35();
    sub_2172E3DC0();
    OUTLINED_FUNCTION_7_2();
    sub_2176CA63C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, *(&v39 + 1), v40, v41, v42, v43, v44, v45, vars0, vars8);

    return sub_217283C08(&v27);
  }
}

uint64_t Playlist.Entry.Item.contentRating.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v40);
  if (v46 == 1)
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    if (qword_280BE9878 != -1)
    {
      swift_once();
    }

    sub_2176CA5B8(qword_280C02910, v10, v11, v12, v13, v14, v15, v16, v26, v29, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48);
    result = sub_217283B58(&v32);
  }

  else
  {
    OUTLINED_FUNCTION_1_95(v2, v3, v4, v5, v6, v7, v8, v9, v25, v28, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44);
    if (qword_280BE6D00 != -1)
    {
      swift_once();
    }

    sub_2176CA688(qword_280C02330, v18, v19, v20, v21, v22, v23, v24, v27, v30, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48);
    result = sub_217283C08(&v32);
  }

  *v0 = v31;
  return result;
}

uint64_t Playlist.Entry.Item.duration.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v37, v38, v39, v40, v41);
    if (qword_280BE96D8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41F0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v37, v38, v39, v40, v41);
    if (qword_280BE6B38 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4330();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v19);
  }

  return v8;
}

double Playlist.Entry.Item.editorialNotes.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  sub_21729C79C(v1, &v36);
  OUTLINED_FUNCTION_5_71();
  if (v10)
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9838 != -1)
    {
      swift_once();
    }

    sub_2176CA5AC(qword_280C028E8, v11, v12, v13, v14, v15, v16, v17, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1));
    sub_217283B58(&v28);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v2, v3, v4, v5, v6, v7, v8, v9, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40);
    if (qword_280BE6CD8 != -1)
    {
      swift_once();
    }

    sub_2176CA67C(qword_280C02318, v18, v19, v20, v21, v22, v23, v24, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, *(&v40 + 1), v41, v42, v43, *(&v43 + 1));
    sub_217283C08(&v28);
  }

  v25 = v44;
  *v0 = v43;
  v0[1] = v25;
  result = *&v45;
  v27 = v46;
  v0[2] = v45;
  v0[3] = v27;
  return result;
}

uint64_t Playlist.Entry.Item.genreNames.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v23, v24, v25, v26, v27, v28, v29, v30);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE9948 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v18 = sub_2172A41D4(v17);
    if (v18)
    {
      v19 = v18;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_217283B58(&v23);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v23, v24, v25, v26, v27, v28, v29, v30, v31, v32, v33, v34, v35);
    if (qword_280BE6D98 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    v21 = sub_2172A4238(v20);
    if (v21)
    {
      v19 = v21;
    }

    else
    {
      v19 = MEMORY[0x277D84F90];
    }

    sub_217283C08(&v23);
  }

  return v19;
}

uint64_t Playlist.Entry.Item.isrc.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v20, v22, v24, v26, v28, v30, v32, v34);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, v40);
    if (qword_280BE9760 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v17);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v21, v23, v25, v27, v29, v31, v33, v35, v36, v37, v38, v39, v40);
    if (qword_280BE6BF8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item.playCount.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v21, v23, v25, v27, v29, v31, v33, v35);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v37, v38, v39, v40, v41);
    if (qword_280BE9690 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41C0();
    OUTLINED_FUNCTION_4_3();
    sub_217283B58(v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v22, v24, v26, v28, v30, v32, v34, v36, v37, v38, v39, v40, v41);
    if (qword_280BE6B18 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4218();
    OUTLINED_FUNCTION_4_3();
    sub_217283C08(v19);
  }

  return v8;
}

void *Playlist.Entry.Item.playParameters.getter()
{
  v1 = OUTLINED_FUNCTION_68_1();
  v2 = sub_21729C79C(v1, &v34);
  if (v40 == 1)
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE9800 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAA38(v10, v11, v12, v13, v14, v15, v16, v17, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283B58(&v27);
  }

  else
  {
    OUTLINED_FUNCTION_2_1(v2, v3, v4, v5, v6, v7, v8, v9, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38);
    if (qword_280BE6CA8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_23();
    sub_2176CAB9C(v18, v19, v20, v21, v22, v23, v24, v25, v27, v28, v29, v30, v31, v32, v33, v34, v35, v36, v37, v38, *(&v38 + 1), v39, v40, __src[0], __src[1], __src[2]);
    sub_217283C08(&v27);
  }

  return memcpy(v0, __src, 0x78uLL);
}

uint64_t Playlist.Entry.Item.previewAssets.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, v43);
    if (qword_280BE9858 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4534(v18);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v19);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, v43);
    if (qword_280BE6CF0 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4614(v20);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v21);
  }

  return v8;
}

uint64_t Playlist.Entry.Item.title.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v18, v19, v20, v21, v22, v23, v24, v25);
  OUTLINED_FUNCTION_5_71();
  if (v16)
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE9750 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A41AC();
    OUTLINED_FUNCTION_21_4();
    sub_217283B58(&v18);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v8, v9, v10, v11, v12, v13, v14, v15, v18, v19, v20, v21, v22, v23, v24, v25, v26, v27, v28, v29, v30);
    if (qword_280BE6BC8 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4204();
    OUTLINED_FUNCTION_21_4();
    sub_217283C08(&v18);
  }

  return OUTLINED_FUNCTION_93();
}

uint64_t Playlist.Entry.Item._contributorSocialProfileIDs.getter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  OUTLINED_FUNCTION_22_45(a1, a2, a3, a4, a5, a6, a7, a8, v23, v25, v27, v29, v31, v33, v35, v37);
  OUTLINED_FUNCTION_5_71();
  if (v17)
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, v43);
    if (qword_280BE8268 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A4518(v18);
    OUTLINED_FUNCTION_9_3();
    sub_217283B58(v19);
  }

  else
  {
    OUTLINED_FUNCTION_0_83(v9, v10, v11, v12, v13, v14, v15, v16, v24, v26, v28, v30, v32, v34, v36, v38, v39, v40, v41, v42, v43);
    if (qword_280BE6C20 != -1)
    {
      swift_once();
    }

    OUTLINED_FUNCTION_22_0();
    sub_2172A45F8(v20);
    OUTLINED_FUNCTION_9_3();
    sub_217283C08(v21);
  }

  return v8;
}

uint64_t static Playlist.Entry.Item.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  sub_21729C79C(a1, v47);
  sub_21729C79C(a2, &v48);
  if (v47[56])
  {
    v3 = sub_21729C79C(v47, v45);
    if (v49 == 1)
    {
      OUTLINED_FUNCTION_2_0(v3, v4, v5, v6, v7, v8, v9, v10, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v13 = v13 && v11 == v12;
      if (v13 || (sub_217753058() & 1) != 0)
      {
        v14 = v46;
        v15 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v15, v16);
        v17 = *(v14 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v18 = OUTLINED_FUNCTION_13_4();
        v19 = v17(v18);
        sub_217283B58(&v38);
        if (v19)
        {
          sub_217283B58(v45);
LABEL_21:
          sub_21729C7F8(v47);
          return 1;
        }
      }

      else
      {
        sub_217283B58(&v38);
      }

      sub_217283B58(v45);
LABEL_26:
      sub_21729C7F8(v47);
      return 0;
    }

    sub_217283B58(v45);
  }

  else
  {
    v20 = sub_21729C79C(v47, v45);
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_2_0(v20, v21, v22, v23, v24, v25, v26, v27, v38, v39, v40, v41, v42, v43, v44, v45[0]);
      v30 = v13 && v28 == v29;
      if (v30 || (sub_217753058() & 1) != 0)
      {
        v31 = v46;
        v32 = OUTLINED_FUNCTION_29(v45);
        __swift_project_boxed_opaque_existential_1(v32, v33);
        v34 = *(v31 + 104);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27CB24930, &qword_217758EC0);
        v35 = OUTLINED_FUNCTION_13_4();
        v36 = v34(v35);
        sub_217283C08(&v38);
        if (v36)
        {
          sub_217283C08(v45);
          goto LABEL_21;
        }
      }

      else
      {
        sub_217283C08(&v38);
      }

      sub_217283C08(v45);
      goto LABEL_26;
    }

    sub_217283C08(v45);
  }

  sub_2171F06D8(v47, &qword_27CB2A4B0, &qword_217780F68);
  return 0;
}