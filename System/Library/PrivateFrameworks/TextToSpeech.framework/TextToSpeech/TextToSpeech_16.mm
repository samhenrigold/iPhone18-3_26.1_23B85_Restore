unint64_t sub_1A949A3A8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A949A440(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A949A4B4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A949A440(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A938156C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 <= result >> 16)
  {
    __break(1u);
  }

  return result;
}

unint64_t sub_1A949A4B4(unint64_t result, uint64_t a2, unint64_t a3)
{
  if ((result & 0xC000) != 0 || result < 0x10000)
  {
    result &= 0xFFFFFFFFFFFF0000;
  }

  else
  {
    v5 = result >> 16;
    if ((a3 & 0x1000000000000000) == 0)
    {
      v13[2] = v3;
      v13[3] = v4;
      if ((a3 & 0x2000000000000000) != 0)
      {
        v13[0] = a2;
        v13[1] = a3 & 0xFFFFFFFFFFFFFFLL;
        if (v5 != (HIBYTE(a3) & 0xF) && (*(v13 + v5) & 0xC0) == 0x80)
        {
          do
          {
            v10 = v5 - 1;
            v11 = *(&v12 + v5-- + 7) & 0xC0;
          }

          while (v11 == 128);
          v5 = v10;
        }

        return v5 << 16;
      }

      if ((a2 & 0x1000000000000000) != 0)
      {
        v6 = (a3 & 0xFFFFFFFFFFFFFFFLL) + 32;
        if (v5 != (a2 & 0xFFFFFFFFFFFFLL))
        {
          do
          {
LABEL_9:
            v7 = *(v6 + v5--) & 0xC0;
          }

          while (v7 == 128);
          ++v5;
        }
      }

      else
      {
        v12 = result >> 16;
        v6 = sub_1A957CF68();
        v5 = v12;
        if (v12 != v9)
        {
          goto LABEL_9;
        }
      }

      return v5 << 16;
    }

    v8 = HIBYTE(a3) & 0xF;
    if ((a3 & 0x2000000000000000) == 0)
    {
      v8 = a2 & 0xFFFFFFFFFFFFLL;
    }

    if (v5 != v8)
    {

      return MEMORY[0x1EEE6A340]();
    }
  }

  return result;
}

unint64_t sub_1A949A5C8(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 1) == 0 || (result & 0xC) == 4 << v3)
  {
    goto LABEL_9;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
LABEL_9:
    result = sub_1A949A660(result, a2, a3);
    if ((result & 1) == 0)
    {
      return result & 0xC | sub_1A949A4B4(result, a2, a3) & 0xFFFFFFFFFFFFFFF3 | 1;
    }
  }

  return result;
}

unint64_t sub_1A949A660(unint64_t result, unint64_t a2, unint64_t a3)
{
  v3 = (a2 >> 59) & 1;
  if ((a3 & 0x1000000000000000) == 0)
  {
    LOBYTE(v3) = 1;
  }

  if ((result & 0xC) == 4 << v3)
  {
    v5 = a2;
    v6 = a3;
    result = sub_1A938156C(result, a2, a3);
    a2 = v5;
    a3 = v6;
  }

  v4 = HIBYTE(a3) & 0xF;
  if ((a3 & 0x2000000000000000) == 0)
  {
    v4 = a2 & 0xFFFFFFFFFFFFLL;
  }

  if (v4 < result >> 16)
  {
    __break(1u);
  }

  return result;
}

uint64_t _s12TextToSpeech15CoreSynthesizerC12SubstitutionV5ScopeO2eeoiySbAG_AGtFZ_0(unint64_t *a1, unint64_t *a2)
{
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  v6 = MEMORY[0x1EEE9AC00](v4);
  v8 = &v39 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = &v39 - v10;
  v12 = *a1;
  v13 = *a2;
  v14 = *a1 >> 61;
  if (v14 > 1)
  {
    if (v14 == 2)
    {
      if (v13 >> 61 == 2)
      {
        goto LABEL_16;
      }
    }

    else
    {
      if (v14 == 3)
      {
        if (v13 >> 61 != 3)
        {
          return 0;
        }

LABEL_16:
        v17 = *((v12 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
        v18 = *((v13 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);

        LOBYTE(v17) = sub_1A94983D0(v17, v18);

        return v17 & 1;
      }

      if (v13 == 0x8000000000000000)
      {

        return 1;
      }
    }

    return 0;
  }

  if (v14)
  {
    v40 = v9;
    v19 = sub_1A937829C(&qword_1EB387B70, &qword_1A9592D98);
    v20 = swift_projectBox();
    if (v13 >> 61 != 1)
    {
      return 0;
    }

    v21 = *(v19 + 48);
    v39 = *(v20 + v21);
    v22 = v20;
    v23 = swift_projectBox();
    v24 = *(v23 + v21);
    v25 = *(v5 + 16);
    v26 = v22;
    v27 = v40;
    v25(v11, v26, v40);
    v25(v8, v23, v27);

    if (MEMORY[0x1AC5840A0](v11, v8))
    {
      if (!v39)
      {
        v36 = *(v5 + 8);
        v37 = v8;
        v38 = v40;
        v36(v37, v40);
        v36(v11, v38);

        if (!v24)
        {
          return 1;
        }

        return 0;
      }

      if (v24)
      {

        v29 = sub_1A9454870(v28, v24);
        swift_bridgeObjectRelease_n();

        v30 = *(v5 + 8);
        v31 = v8;
        v32 = v40;
        v30(v31, v40);
        v30(v11, v32);

        return (v29 & 1) != 0;
      }
    }

    else
    {
    }

    v33 = *(v5 + 8);
    v34 = v8;
    v35 = v40;
    v33(v34, v40);
    v33(v11, v35);

    return 0;
  }

  if (v13 >> 61)
  {
    return 0;
  }

  if (*(v12 + 16) == *(v13 + 16) && *(v12 + 24) == *(v13 + 24))
  {
    return 1;
  }

  return sub_1A957D3E8();
}

unint64_t sub_1A949AA90()
{
  result = qword_1ED970220;
  if (!qword_1ED970220)
  {
    sub_1A957B308();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED970220);
  }

  return result;
}

uint64_t sub_1A949AB40@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v5 = *(v3 + 16);
  v6 = *a1;
  v7 = a2[1];

  if (sub_1A9497BE4(v5))
  {
    *a3 = v6;

    sub_1A9499974(v7);
  }

  else
  {

    *a3 = v6;
  }
}

char *sub_1A949ABE8(void *a1)
{
  v5 = v2[2];
  v4 = v2[3];
  v6 = v2[4];
  v7 = [a1 utf8Range];
  v8 = (v4 >> 56) & 0xF;
  if ((v4 & 0x1000000000000000) != 0)
  {
    v1 = MEMORY[0x1AC5851A0](15, v7, v5, v4);
  }

  else
  {
    if ((v7 & 0x8000000000000000) != 0)
    {
      __break(1u);
      goto LABEL_22;
    }

    v9 = v5 & 0xFFFFFFFFFFFFLL;
    if ((v4 & 0x2000000000000000) != 0)
    {
      v9 = (v4 >> 56) & 0xF;
    }

    if (v9 < v7)
    {
      goto LABEL_23;
    }

    v1 = (v7 << 16) | 4;
  }

  result = [a1 utf8Range];
  v12 = __OFADD__(result, v11);
  v13 = &result[v11];
  if (v12)
  {
LABEL_22:
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if ((v4 & 0x1000000000000000) == 0)
  {
    if ((v13 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else
    {
      v14 = v5 & 0xFFFFFFFFFFFFLL;
      if ((v4 & 0x2000000000000000) != 0)
      {
        v14 = (v4 >> 56) & 0xF;
      }

      if (v14 >= v13)
      {
        v8 = (v13 << 16) | 4;
        goto LABEL_15;
      }
    }

    __break(1u);
    return result;
  }

  v8 = MEMORY[0x1AC5851A0](15, v13, v5, v4);
LABEL_15:
  if (v8 >> 14 < v1 >> 14)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  swift_beginAccess();
  v4 = *(v6 + 16);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v6 + 16) = v4;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
LABEL_25:
    v4 = sub_1A93C3280(0, *(v4 + 2) + 1, 1, v4);
    *(v6 + 16) = v4;
  }

  v17 = *(v4 + 2);
  v16 = *(v4 + 3);
  if (v17 >= v16 >> 1)
  {
    v4 = sub_1A93C3280((v16 > 1), v17 + 1, 1, v4);
  }

  *(v4 + 2) = v17 + 1;
  v18 = &v4[16 * v17];
  *(v18 + 4) = v1;
  *(v18 + 5) = v8;
  *(v6 + 16) = v4;
  return swift_endAccess();
}

uint64_t sub_1A949AD88(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A949ADCC(uint64_t a1)
{
  result = sub_1A957B0B8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1A949AE78(uint64_t a1)
{
  sub_1A949AF00();
  if (v1 <= 0x3F)
  {
    sub_1A942D0B4(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1A949AF00()
{
  if (!qword_1EB3863D8)
  {
    v0 = sub_1A957CC58();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB3863D8);
    }
  }
}

unint64_t sub_1A949AF50(unint64_t *a1)
{
  if ((*a1 & 0x8000000000000000) == 0)
  {
    return *a1 >> 61;
  }

  else
  {
    return (*a1 >> 3) + 4;
  }
}

uint64_t sub_1A949AF6C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 8))
  {
    return (*a1 + 124);
  }

  v3 = (((*a1 >> 57) >> 4) | (8 * ((*a1 >> 57) & 8 | *a1 & 7))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A949AFC8(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 3) & 0xF | (16 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void *sub_1A949B018(void *result, uint64_t a2)
{
  if (a2 < 4)
  {
    *result = *result & 0xFFFFFFFFFFFFFF8 | (a2 << 61);
  }

  else
  {
    *result = (8 * (a2 - 4)) | 0x8000000000000000;
  }

  return result;
}

uint64_t sub_1A949B060(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7F && *(a1 + 17))
  {
    return (*a1 + 127);
  }

  v3 = (*(a1 + 16) & 0x7E | (*(a1 + 16) >> 7)) ^ 0x7F;
  if (v3 >= 0x7E)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A949B0B0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7E)
  {
    *(result + 16) = 0;
    *result = a2 - 127;
    *(result + 8) = 0;
    if (a3 >= 0x7F)
    {
      *(result + 17) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7F)
    {
      *(result + 17) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 2 * (((-a2 >> 1) & 0x3F) - (a2 << 6));
    }
  }

  return result;
}

uint64_t sub_1A949B144(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 41))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 40);
  if (v3 >= 2)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A949B180(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 25) = 0u;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1A949B1CC(uint64_t result, unsigned int a2)
{
  if (a2 > 1)
  {
    *(result + 32) = 0;
    *result = 0u;
    *(result + 16) = 0u;
    *result = a2 - 2;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

uint64_t TTSMarkup.Paragraph.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Paragraph.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v25, 0, v25, &v22);
  v24 = 0;
  memset(v23, 0, sizeof(v23));
  v15 = a1;
  v4 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0x100))(v3);
  v5 = v4;
  if (v4 >> 62)
  {
    goto LABEL_19;
  }

  for (i = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, v5);
      }

      else
      {
        if (v7 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_18;
        }

        v9 = *(v5 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      sub_1A93D1250(&v17);

      if (v18)
      {
        sub_1A932D070(&v17, &v19);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93ADC90(0, v8[2] + 1, 1, v8);
        }

        v13 = v8[2];
        v12 = v8[3];
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93ADC90((v12 > 1), v13 + 1, 1, v8);
        }

        v8[2] = v13 + 1;
        sub_1A932D070(&v19, &v8[5 * v13 + 4]);
      }

      else
      {
        sub_1A9383404(&v17);
      }

      ++v7;
      if (v11 == i)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    ;
  }

  v8 = MEMORY[0x1E69E7CC0];
LABEL_21:

  v20 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v21 = &protocol witness table for <A> [A];

  *&v19 = v8;
  sub_1A93A38D8(&v19, v23);
  sub_1A949B7C4(&v22, a2);
  return sub_1A949B7FC(&v22);
}

uint64_t TTSMarkup.Paragraph.init(speech:)@<X0>(void (*a1)(void *__return_ptr, uint64_t)@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = SpeechContext.init<each A>(_:)(&v7, 0, &v7, a2);
  *++v3 = 0u;
  v3[4] = 0;
  *(v3 + 1) = 0u;
  a1(v6, v4);
  return sub_1A93A38D8(v6, v3);
}

uint64_t TTSMarkup.Paragraph.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 80))(v3, a2);
}

{
  v9 = (*(a3 + 104) + **(a3 + 104));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t sub_1A949B714(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Paragraph.accept<A>(_:)(a1, a2, a3);
}

id sub_1A949B83C()
{
  type metadata accessor for VoicePreviewer(0);
  swift_allocObject();
  result = VoicePreviewer.init()();
  qword_1EB39EC28 = result;
  return result;
}

uint64_t static VoicePreviewer.shared.getter()
{
  if (qword_1EB39EC20 != -1)
  {
    swift_once();
  }
}

id sub_1A949B90C()
{
  v1 = *(v0 + 112);
  if (v1)
  {
    v2 = *(v0 + 112);
  }

  else
  {
    v3 = sub_1A949B964();
    v4 = *(v0 + 112);
    *(v0 + 112) = v3;
    v2 = v3;

    v1 = 0;
  }

  v5 = v1;
  return v2;
}

id sub_1A949B964()
{
  v25[1] = *MEMORY[0x1E69E9840];
  v0 = sub_1A957BC88();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v25 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = [objc_opt_self() auxiliarySession];
  v5 = *MEMORY[0x1E6958098];
  v25[0] = 0;
  v6 = [v4 setCategory:v5 error:v25];
  v7 = v25[0];
  if (v6 && (v25[0] = 0, v8 = v7, v9 = [v4 setCategoryOptions:3 error:v25], v7 = v25[0], v9) && (v25[0] = 0, v10 = v7, v11 = objc_msgSend(v4, sel_setParticipatesInNowPlayingAppPolicy_error_, 0, v25), v7 = v25[0], v11))
  {
    v12 = v25[0];
  }

  else
  {
    v13 = v7;
    v14 = sub_1A957AEF8();

    swift_willThrow();
    v15 = sub_1A93772F8();
    (*(v1 + 16))(v3, v15, v0);
    v16 = v14;
    v17 = sub_1A957BC68();
    v18 = sub_1A957CA78();

    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      v20 = swift_slowAlloc();
      *v19 = 138412290;
      v21 = v14;
      v22 = _swift_stdlib_bridgeErrorToNSError();
      *(v19 + 4) = v22;
      *v20 = v22;
      _os_log_impl(&dword_1A9324000, v17, v18, "Failed to configure audio session with error %@", v19, 0xCu);
      sub_1A937B960(v20, &qword_1EB386960, &unk_1A9587798);
      MEMORY[0x1AC587CD0](v20, -1, -1);
      MEMORY[0x1AC587CD0](v19, -1, -1);
    }

    else
    {
    }

    (*(v1 + 8))(v3, v0);
  }

  return v4;
}

void (*sub_1A949BC48(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949B90C();
  return sub_1A949BC90;
}

void sub_1A949BC90(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + 112);
  *(v1 + 112) = v2;
}

id sub_1A949BD38()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth;
  v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  }

  else
  {
    v4 = v0;
    type metadata accessor for CoreSynthesizer(0);
    v5 = CoreSynthesizer.__allocating_init()();
    v6 = *(v0 + v1);
    *(v4 + v1) = v5;
    v3 = v5;

    v2 = 0;
  }

  v7 = v2;
  return v3;
}

void (*sub_1A949BDBC(id *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949BD38();
  return sub_1A949BE04;
}

void sub_1A949BE04(uint64_t *a1)
{
  v2 = *a1;
  v1 = a1[1];
  v3 = *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth);
  *(v1 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth) = v2;
}

void *sub_1A949BE1C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer;
  swift_beginAccess();
  v2 = *(v0 + v1);
  v3 = v2;
  return v2;
}

void sub_1A949BE68(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer;
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1A949BF3C@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, uint64_t *a3@<X2>, uint64_t a4@<X8>)
{
  v8 = *a1;
  swift_beginAccess();
  return sub_1A9391BAC(v4 + v8, a4, a2, a3);
}

uint64_t sub_1A949BFC4(uint64_t a1, uint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  v8 = *a2;
  swift_beginAccess();
  sub_1A949D600(a1, v4 + v8, a3, a4);
  return swift_endAccess();
}

uint64_t sub_1A949C098()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized;
  swift_beginAccess();
  return *(v0 + v1);
}

uint64_t sub_1A949C0DC(char a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized;
  result = swift_beginAccess();
  *(v1 + v3) = a1;
  return result;
}

uint64_t sub_1A949C1D4(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask;
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t sub_1A949C28C()
{
  v1 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient;
  if (*(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient))
  {
    v2 = *(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient);
  }

  else
  {
    type metadata accessor for VoiceDatabaseXPC.Client();
    v2 = VoiceDatabaseXPC.Client.__allocating_init()();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t (*sub_1A949C314(uint64_t *a1))(uint64_t *a1)
{
  a1[1] = v1;
  *a1 = sub_1A949C28C();
  return sub_1A949C35C;
}

uint64_t sub_1A949C374()
{
  v1[2] = v0;
  sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  v1[3] = swift_task_alloc();
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v1[4] = swift_task_alloc();
  v2 = sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8);
  v1[5] = v2;
  v3 = *(v2 - 8);
  v1[6] = v3;
  v1[7] = *(v3 + 64);
  v1[8] = swift_task_alloc();
  v1[9] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949C4C4, v0, 0);
}

uint64_t sub_1A949C4C4()
{
  if ((*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x120))())
  {

    v1 = *(v0 + 8);

    return v1();
  }

  else
  {
    type metadata accessor for VoiceDatabaseClient();
    static VoiceDatabaseClient.sampleUrl.getter();
    v3 = swift_task_alloc();
    *(v0 + 80) = v3;
    *v3 = v0;
    v3[1] = sub_1A949C620;
    v4 = *(v0 + 32);
    v5 = *(v0 + 40);

    return MEMORY[0x1EEDE9B70](v4, v5);
  }
}

uint64_t sub_1A949C620()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A949C730, v1, 0);
}

uint64_t sub_1A949C730()
{
  v2 = v0[8];
  v1 = v0[9];
  v3 = v0[6];
  v4 = v0[5];
  v5 = v0[2];
  v6 = v0[3];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(v0[4]);
  v7 = sub_1A957C688();
  (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
  (*(v3 + 16))(v2, v1, v4);
  v8 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
  v9 = (*(v3 + 80) + 40) & ~*(v3 + 80);
  v10 = swift_allocObject();
  *(v10 + 2) = v5;
  *(v10 + 3) = v8;
  *(v10 + 4) = v5;
  (*(v3 + 32))(&v10[v9], v2, v4);
  swift_retain_n();
  v11 = sub_1A93C4B70(0, 0, v6, &unk_1A95930C8, v10);
  v12 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & *v5) + 0x140))(v11);
  (*(v3 + 8))(v1, v4);
  (*((*v12 & *v5) + 0x128))(1);

  v13 = v0[1];

  return v13();
}

uint64_t sub_1A949C9CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v7 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v5[4] = v7;
  v5[5] = *(v7 - 8);
  v5[6] = swift_task_alloc();
  sub_1A937829C(&qword_1EB387C68, &qword_1A9593210);
  v5[7] = swift_task_alloc();
  v8 = sub_1A937829C(&unk_1EB387C70, &qword_1A9593218);
  v5[8] = v8;
  v5[9] = *(v8 - 8);
  v5[10] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949CB3C, a4, 0);
}

id sub_1A949CB3C()
{
  v1 = sub_1A957CA58();
  result = AXLogSpeechAssetDownload();
  if (result)
  {
    v3 = result;
    v4 = v0[2];
    sub_1A957BC58(v1, &dword_1A9324000, result, "Will download samples if needed", 31, 2, MEMORY[0x1E69E7CC0]);

    v5 = (*((*MEMORY[0x1E69E7D40] & *v4) + 0x150))();
    v0[11] = v5;
    v7 = (*(*v5 + 232) + **(*v5 + 232));
    v6 = swift_task_alloc();
    v0[12] = v6;
    *v6 = v0;
    v6[1] = sub_1A949CD04;

    return v7(1, 0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1A949CD04()
{
  v2 = *v1;
  *(*v1 + 104) = v0;

  if (v0)
  {
    v3 = *(v2 + 16);
    v4 = sub_1A949D1E4;
  }

  else
  {
    v5 = *(v2 + 16);

    v4 = sub_1A949CE2C;
    v3 = v5;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A949CE2C()
{
  sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8);
  sub_1A957B918();
  v1 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
  v0[14] = v1;
  v2 = v0[2];
  v3 = swift_task_alloc();
  v0[15] = v3;
  *v3 = v0;
  v3[1] = sub_1A949CF3C;
  v4 = v0[7];
  v5 = v0[8];

  return MEMORY[0x1EEE6D9C8](v4, v2, v1, v5);
}

uint64_t sub_1A949CF3C()
{
  v1 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A949D04C, v1, 0);
}

uint64_t sub_1A949D04C()
{
  v1 = v0[7];
  if ((*(v0[5] + 48))(v1, 1, v0[4]) == 1)
  {
    (*(v0[9] + 8))(v0[10], v0[8]);

    v2 = v0[1];

    return v2();
  }

  else
  {
    v4 = v0[6];
    v5 = v0[2];
    sub_1A93F47DC(v1, v4);
    (*((*MEMORY[0x1E69E7D40] & *v5) + 0xC8))(v4);
    v6 = v0[14];
    v7 = v0[2];
    v8 = swift_task_alloc();
    v0[15] = v8;
    *v8 = v0;
    v8[1] = sub_1A949CF3C;
    v9 = v0[7];
    v10 = v0[8];

    return MEMORY[0x1EEE6D9C8](v9, v7, v6, v10);
  }
}

uint64_t sub_1A949D1E4()
{

  v1 = *(v0 + 8);

  return v1();
}

id VoicePreviewer.init()()
{
  v1 = v0;
  v2 = sub_1A957CAD8();
  v16 = *(v2 - 8);
  v17 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v15 = &v13 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A957CAC8();
  MEMORY[0x1EEE9AC00](v4);
  v5 = sub_1A957BF48();
  MEMORY[0x1EEE9AC00](v5 - 8);
  swift_defaultActor_initialize();
  v0[14] = 0;
  type metadata accessor for VoiceDatabaseClient();
  v6 = sub_1A938983C();
  v0[15] = VoiceDatabaseClient.__allocating_init(readOnly:)(v6 & 1);
  v7 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_sampleAssetUrl;
  v8 = sub_1A957AFD8();
  (*(*(v8 - 8) + 56))(&v1[v7], 1, 1, v8);
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___synth] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPlayer] = 0;
  v9 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPreviewContinuation;
  v10 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  (*(*(v10 - 8) + 56))(&v1[v9], 1, 1, v10);
  v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initialized] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_initializationTask] = 0;
  *&v1[OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer____lazy_storage___xpcClient] = 0;
  v14 = OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_siriQueue;
  sub_1A9387478(0, &qword_1ED96FE90, 0x1E69E9610);
  sub_1A957BF28();
  v19 = MEMORY[0x1E69E7CC0];
  sub_1A94A3EC4(&qword_1ED96FE98, MEMORY[0x1E69E8030], MEMORY[0x1E69E8040]);
  sub_1A937829C(&unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A946D250(&qword_1ED96FEA8, &unk_1EB387BB0, &qword_1A9589CC0);
  sub_1A957CE08();
  (*(v16 + 104))(v15, *MEMORY[0x1E69E8090], v17);
  *&v1[v14] = sub_1A957CB08();
  v11 = type metadata accessor for VoicePreviewer(0);
  v18.receiver = v1;
  v18.super_class = v11;
  return objc_msgSendSuper2(&v18, sel_init);
}

uint64_t sub_1A949D600(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 40))(a2, a1, v6);
  return a2;
}

uint64_t type metadata accessor for VoicePreviewer(uint64_t a1)
{
  result = qword_1EB39ECC0;
  if (!qword_1EB39ECC0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A949D6B4()
{
  v2 = *(sub_1A937829C(&qword_1EB387BA0, &qword_1A95930B8) - 8);
  v3 = (*(v2 + 80) + 40) & ~*(v2 + 80);
  v4 = *(v0 + 32);
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1A9382328;

  return sub_1A949C9CC(v5, v6, v7, v4, v0 + v3);
}

uint64_t sub_1A949D7BC(uint64_t a1, uint64_t a2)
{
  *(v3 + 544) = v2;
  *(v3 + 536) = a2;
  *(v3 + 528) = a1;
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  *(v3 + 552) = swift_task_alloc();
  v5 = sub_1A957AFD8();
  *(v3 + 560) = v5;
  *(v3 + 568) = *(v5 - 8);
  *(v3 + 576) = swift_task_alloc();
  *(v3 + 584) = swift_task_alloc();
  *(v3 + 520) = *(a2 + 64);
  v6 = *(a2 + 48);
  *(v3 + 488) = *(a2 + 32);
  *(v3 + 504) = v6;
  v7 = *(a2 + 16);
  *(v3 + 456) = *a2;
  *(v3 + 472) = v7;
  v8 = *(a2 + 88);
  *(v3 + 592) = *(a2 + 72);
  *(v3 + 608) = v8;
  *(v3 + 624) = *(a2 + 104);
  *(v3 + 455) = *(a2 + 120);
  v9 = *(a2 + 201);
  *(v3 + 360) = *(a2 + 185);
  *(v3 + 376) = v9;
  v10 = *(a2 + 169);
  *(v3 + 328) = *(a2 + 153);
  *(v3 + 344) = v10;
  *(v3 + 439) = *(a2 + 264);
  v11 = *(a2 + 249);
  v12 = *(a2 + 217);
  *(v3 + 408) = *(a2 + 233);
  *(v3 + 424) = v11;
  *(v3 + 392) = v12;
  v13 = *(a2 + 137);
  *(v3 + 296) = *(a2 + 121);
  *(v3 + 312) = v13;
  v14 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x168);
  v17 = (v14 + *v14);
  v15 = swift_task_alloc();
  *(v3 + 640) = v15;
  *v15 = v3;
  v15[1] = sub_1A949DA30;

  return v17();
}

uint64_t sub_1A949DA30()
{
  v1 = *(*v0 + 544);

  return MEMORY[0x1EEE6DFA0](sub_1A949DB40, v1, 0);
}

uint64_t sub_1A949DB40()
{
  if (*(v0 + 455))
  {
    if (*(v0 + 455) != 2 || ((v1 = vorrq_s8(*(v0 + 608), *(v0 + 624)), v2 = *&vorr_s8(*v1.i8, *&vextq_s8(v1, v1, 8uLL)) | *(v0 + 600), (*(v0 + 592) & 0xFFFFFFFFFFFFFFFBLL) == 1) ? (v3 = v2 == 0) : (v3 = 0), !v3))
    {
      (*(*(v0 + 568) + 56))(*(v0 + 528), 1, 1, *(v0 + 560));
LABEL_18:

      v38 = *(v0 + 8);

      return v38();
    }

LABEL_9:
    v5 = *(v0 + 568);
    v6 = *(v0 + 560);
    v7 = *(v0 + 552);
    (*((*MEMORY[0x1E69E7D40] & **(v0 + 544)) + 0xC0))();
    if ((*(v5 + 48))(v7, 1, v6) == 1)
    {
      v8 = *(v0 + 568);
      v9 = *(v0 + 560);
      v10 = *(v0 + 528);
      sub_1A937B960(*(v0 + 552), &unk_1EB387B80, qword_1A9587740);
      v11 = *(v8 + 56);
    }

    else
    {
      v40 = *(v0 + 584);
      v12 = *(v0 + 568);
      v41 = *(v0 + 560);
      v39 = *(v12 + 32);
      v39();
      v13 = CoreSynthesizer.Voice.cannonicId.getter();
      MEMORY[0x1AC585140](v13);

      MEMORY[0x1AC585140](1717658414, 0xE400000000000000);
      sub_1A957AF78();

      v14 = [objc_opt_self() defaultManager];
      sub_1A957AFA8();
      v15 = sub_1A957C0C8();

      v16 = [v14 fileExistsAtPath_];

      v17 = *(v12 + 8);
      v17(v40, v41);
      v18 = (v12 + 56);
      v9 = *(v0 + 560);
      v10 = *(v0 + 528);
      if (v16)
      {
        (v39)(*(v0 + 528), *(v0 + 576), *(v0 + 560));
        (*v18)(v10, 0, 1, v9);
        goto LABEL_18;
      }

      v17(*(v0 + 576), *(v0 + 560));
      v11 = *v18;
    }

    v11(v10, 1, 1, v9);
    goto LABEL_18;
  }

  v4 = *(v0 + 592);
  if (v4 == 3)
  {
    goto LABEL_9;
  }

  v19 = *(v0 + 632);
  v20 = *(v0 + 544);
  v21 = *(v0 + 536);
  v22 = *(v0 + 600);
  v23 = *(v0 + 616);
  *(v0 + 16) = *v21;
  v24 = *(v21 + 16);
  v25 = *(v21 + 48);
  v26 = *(v21 + 64);
  *(v0 + 48) = *(v21 + 32);
  *(v0 + 64) = v25;
  *(v0 + 32) = v24;
  *(v0 + 80) = v26;
  *(v0 + 88) = v4;
  *(v0 + 96) = v22;
  *(v0 + 112) = v23;
  *(v0 + 128) = v19;
  *(v0 + 136) = 0;
  v27 = *(v21 + 121);
  *(v0 + 153) = *(v21 + 137);
  *(v0 + 137) = v27;
  v28 = *(v21 + 153);
  v29 = *(v21 + 169);
  v30 = *(v21 + 185);
  *(v0 + 217) = *(v21 + 201);
  *(v0 + 201) = v30;
  *(v0 + 185) = v29;
  *(v0 + 169) = v28;
  v31 = *(v21 + 217);
  v32 = *(v21 + 233);
  v33 = *(v21 + 249);
  *(v0 + 280) = *(v21 + 264);
  *(v0 + 265) = v33;
  *(v0 + 249) = v32;
  *(v0 + 233) = v31;
  v34 = *((*MEMORY[0x1E69E7D40] & *v20) + 0x1B8);
  v42 = (v34 + *v34);
  v35 = swift_task_alloc();
  *(v0 + 648) = v35;
  *v35 = v0;
  v35[1] = sub_1A949E0CC;
  v36 = *(v0 + 528);

  return v42(v36, v0 + 16);
}

uint64_t sub_1A949E0CC()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A949E21C(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A949E244, v2, 0);
}

uint64_t sub_1A949E244()
{
  v1 = swift_task_alloc();
  v0[145] = v1;
  *v1 = v0;
  v1[1] = sub_1A949E2EC;
  v2 = v0[143];
  v3 = v0[142];

  return VoiceDatabaseClient.voice(forIdentifier:)((v0 + 72), v3, v2);
}

uint64_t sub_1A949E2EC()
{
  v1 = *(*v0 + 1152);

  return MEMORY[0x1EEE6DFA0](sub_1A949E3FC, v1, 0);
}

uint64_t sub_1A949E3FC()
{
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = v0[1];

    return v1(0);
  }

  else
  {
    v3 = v0[144];
    memcpy(v0 + 107, v0 + 2, 0x118uLL);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x188);
    v6 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[146] = v5;
    *v5 = v0;
    v5[1] = sub_1A949E5B4;

    return v6(v0 + 107);
  }
}

uint64_t sub_1A949E5B4(char a1)
{
  v2 = *(*v1 + 1152);
  *(*v1 + 1176) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1A949E6CC, v2, 0);
}

uint64_t sub_1A949E6CC()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 1176);
  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1A949E740(uint64_t a1)
{
  *(v2 + 296) = a1;
  *(v2 + 304) = v1;
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  *(v2 + 312) = swift_task_alloc();
  *(v2 + 336) = *(a1 + 193);
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x168);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 320) = v5;
  *v5 = v2;
  v5[1] = sub_1A949E8C4;

  return v7();
}

uint64_t sub_1A949E8C4()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A949E9D4, v1, 0);
}

uint64_t sub_1A949E9D4()
{
  v1 = *(v0 + 336);
  if ((v1 & 0xFE) == 2)
  {
    v2 = *(v0 + 296);
    v3 = *(v0 + 304);
    *(v0 + 16) = *v2;
    v4 = *(v2 + 16);
    v5 = *(v2 + 32);
    v6 = *(v2 + 64);
    *(v0 + 64) = *(v2 + 48);
    *(v0 + 80) = v6;
    *(v0 + 32) = v4;
    *(v0 + 48) = v5;
    v7 = *(v2 + 80);
    v8 = *(v2 + 96);
    v9 = *(v2 + 128);
    *(v0 + 128) = *(v2 + 112);
    *(v0 + 144) = v9;
    *(v0 + 96) = v7;
    *(v0 + 112) = v8;
    v10 = *(v2 + 144);
    v11 = *(v2 + 160);
    v12 = *(v2 + 176);
    *(v0 + 208) = *(v2 + 192);
    *(v0 + 176) = v11;
    *(v0 + 192) = v12;
    *(v0 + 160) = v10;
    *(v0 + 209) = v1;
    v13 = *(v2 + 194);
    *(v0 + 226) = *(v2 + 210);
    *(v0 + 210) = v13;
    v14 = *(v2 + 226);
    v15 = *(v2 + 242);
    v16 = *(v2 + 258);
    *(v0 + 288) = *(v2 + 272);
    *(v0 + 258) = v15;
    *(v0 + 274) = v16;
    *(v0 + 242) = v14;
    v17 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x178);
    v24 = (v17 + *v17);
    v18 = swift_task_alloc();
    *(v0 + 328) = v18;
    *v18 = v0;
    v18[1] = sub_1A949EC80;
    v19 = *(v0 + 312);

    return v24(v19, v0 + 16);
  }

  else
  {
    CoreSynthesizer.Voice.sampleText.getter();
    v22 = v21;
    if (v21)
    {
    }

    v23 = *(v0 + 8);

    return v23(v22 != 0);
  }
}

uint64_t sub_1A949EC80()
{
  v1 = *(*v0 + 304);

  return MEMORY[0x1EEE6DFA0](sub_1A949ED90, v1, 0);
}

uint64_t sub_1A949ED90()
{
  v1 = *(v0 + 312);
  v2 = sub_1A957AFD8();
  v3 = (*(*(v2 - 8) + 48))(v1, 1, v2) != 1;
  sub_1A937B960(v1, &unk_1EB387B80, qword_1A9587740);

  v4 = *(v0 + 8);

  return v4(v3);
}

uint64_t sub_1A949EE54()
{
  v1[2] = v0;
  v2 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1A937829C(&unk_1EB387B90, &unk_1A95930A8);
  v1[6] = swift_task_alloc();
  v1[7] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A949EF64, v0, 0);
}

uint64_t sub_1A949EF64()
{
  v1 = v0[2];
  v2 = MEMORY[0x1E69E7D40];
  v3 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))();
  [v3 stop];

  v4 = (*((*v2 & *v1) + 0xD8))();
  v0[8] = v4;
  v5 = *((*v2 & *v4) + 0x4E8);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v0[9] = v6;
  *v6 = v0;
  v6[1] = sub_1A949F118;

  return v8();
}

uint64_t sub_1A949F118()
{
  v1 = *(*v0 + 64);
  v2 = *(*v0 + 16);

  return MEMORY[0x1EEE6DFA0](sub_1A949F240, v2, 0);
}

uint64_t sub_1A949F240()
{
  v1 = *(v0 + 56);
  v2 = *(v0 + 24);
  v3 = *(v0 + 32);
  v4 = MEMORY[0x1E69E7D40];
  (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x108))();
  v5 = (*(v3 + 48))(v1, 1, v2);
  v6 = *(v0 + 56);
  if (v5)
  {
    sub_1A937B960(*(v0 + 56), &unk_1EB387B90, &unk_1A95930A8);
  }

  else
  {
    v8 = *(v0 + 32);
    v7 = *(v0 + 40);
    v9 = *(v0 + 24);
    (*(v8 + 16))(v7, *(v0 + 56), v9);
    sub_1A937B960(v6, &unk_1EB387B90, &unk_1A95930A8);
    sub_1A957C5C8();
    (*(v8 + 8))(v7, v9);
  }

  v10 = *(v0 + 48);
  v11 = *(v0 + 16);
  (*(*(v0 + 32) + 56))(v10, 1, 1, *(v0 + 24));
  (*((*v4 & *v11) + 0x110))(v10);

  v12 = *(v0 + 8);

  return v12();
}

uint64_t sub_1A949F41C(uint64_t a1)
{
  v2[266] = v1;
  v2[265] = a1;
  v3 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v2[267] = v3;
  v2[268] = *(v3 - 8);
  v2[269] = swift_task_alloc();
  v4 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v2[270] = v4;
  v2[271] = *(v4 - 8);
  v2[272] = swift_task_alloc();
  v5 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v8 = (v5 + *v5);
  v6 = swift_task_alloc();
  v2[273] = v6;
  *v6 = v2;
  v6[1] = sub_1A949F628;

  return v8();
}

uint64_t sub_1A949F628()
{
  v1 = *(*v0 + 2128);

  return MEMORY[0x1EEE6DFA0](sub_1A949F738, v1, 0);
}

uint64_t sub_1A949F738(uint64_t a1)
{
  v2 = sub_1A957B8B8();
  v1[274] = v3;
  if (v3)
  {
    v4 = v2;
    v5 = v3;
    v6 = swift_task_alloc();
    v1[275] = v6;
    *v6 = v1;
    v6[1] = sub_1A949F84C;

    return VoiceDatabaseClient.voice(forIdentifier:)((v1 + 120), v4, v5);
  }

  else
  {

    v8 = v1[1];

    return v8();
  }
}

uint64_t sub_1A949F84C()
{
  v1 = *(*v0 + 2128);

  return MEMORY[0x1EEE6DFA0](sub_1A949F978, v1, 0);
}

uint64_t sub_1A949F978()
{
  v32 = v0;
  memcpy(v0 + 85, v0 + 120, 0x118uLL);
  memcpy(v0 + 50, v0 + 120, 0x118uLL);
  if (sub_1A932D058((v0 + 50)) != 1)
  {
    memcpy(v0 + 155, v0 + 50, 0x118uLL);
    v1 = CoreSynthesizer.Voice.sampleText.getter();
    if (v2)
    {
      v3 = v1;
      v4 = v2;
      v5 = v0[269];
      v6 = v0[268];
      v25 = v0[267];
      v7 = v0[266];
      v8 = v0[265];
      memcpy(v0 + 190, v0 + 50, 0x118uLL);
      nullsub_23();
      memcpy(__dst, v0 + 190, 0x118uLL);
      v9 = swift_task_alloc();
      v9[2] = v3;
      v9[3] = v4;
      v9[4] = v8;
      sub_1A937B3DC((v0 + 50), (v0 + 225));
      v10 = sub_1A937838C();
      sub_1A937BA74(&v27);
      v28 = v27;
      sub_1A937BA74(&v29);
      v30 = v29;
      sub_1A937BA78(v31);
      CoreSynthesizer.Utterance.init(id:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:_:)(0, 0, __dst, v10, &v28, &v30, v31, sub_1A94A0098, (v0 + 2));

      v11 = sub_1A957B888();

      v0[41] = v11;
      v13 = MEMORY[0x1E69E7D40];
      v14 = *((*MEMORY[0x1E69E7D40] & *v7) + 0xD8);
      v15 = v14(v12);
      v16 = sub_1A957B8A8();
      if (!v16)
      {
        v16 = MEMORY[0x1E69E7CC0];
      }

      (*((*v13 & *v15) + 0x380))(v16);

      v18 = v14(v17);
      (*((*v13 & *v18) + 0x4B0))(v0 + 2);

      sub_1A957C6F8();
      (*(v6 + 8))(v5, v25);
      v19 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
      v0[276] = v19;
      v20 = v0[266];
      v21 = swift_task_alloc();
      v0[277] = v21;
      *v21 = v0;
      v21[1] = sub_1A949FD64;
      v22 = v0[270];

      return MEMORY[0x1EEE6DB90](v0 + 260, v20, v19, v22, v0 + 264);
    }

    sub_1A937B960((v0 + 85), &unk_1EB387BC0, &qword_1A9587E30);
  }

  v23 = v0[1];

  return v23();
}

uint64_t sub_1A949FD64()
{
  v2 = *v1;

  v3 = *(v2 + 2128);
  if (v0)
  {
    v4 = sub_1A949FFDC;
  }

  else
  {
    v4 = sub_1A949FE78;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A949FE78()
{
  v1 = *(v0 + 2096);
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    (*(*(v0 + 2168) + 8))(*(v0 + 2176), *(v0 + 2160));
    sub_1A937B960(v0 + 680, &unk_1EB387BC0, &qword_1A9587E30);
    sub_1A9410E64(v0 + 16);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1A9410F4C(*(v0 + 2080), *(v0 + 2088), v1, *(v0 + 2104));
    v4 = *(v0 + 2208);
    v5 = *(v0 + 2128);
    v6 = swift_task_alloc();
    *(v0 + 2216) = v6;
    *v6 = v0;
    v6[1] = sub_1A949FD64;
    v7 = *(v0 + 2160);

    return MEMORY[0x1EEE6DB90](v0 + 2080, v5, v4, v7, v0 + 2112);
  }
}

uint64_t sub_1A949FFDC()
{
  v1 = v0[272];
  v2 = v0[271];
  v3 = v0[270];
  sub_1A937B960((v0 + 85), &unk_1EB387BC0, &qword_1A9587E30);
  (*(v2 + 8))(v1, v3);
  sub_1A9410E64((v0 + 2));

  v4 = v0[1];

  return v4();
}

uint64_t sub_1A94A0098@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = *(v1 + 24);

  TTSMarkup.SpeechText.init(_:)(v3, v4, v7);
  TTSMarkupSpeech.selectionProsody(_:)(&type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, v6, *&v7[2]);

  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v7, v6);
  sub_1A9378138(v6);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v7, a1);
  return sub_1A9378138(v7);
}

uint64_t sub_1A94A0164(uint64_t a1, uint64_t a2)
{
  v3[144] = v2;
  v3[143] = a2;
  v3[142] = a1;
  return MEMORY[0x1EEE6DFA0](sub_1A94A018C, v2, 0);
}

uint64_t sub_1A94A018C()
{
  v1 = swift_task_alloc();
  v0[145] = v1;
  *v1 = v0;
  v1[1] = sub_1A94A0234;
  v2 = v0[143];
  v3 = v0[142];

  return VoiceDatabaseClient.voice(forIdentifier:)((v0 + 72), v3, v2);
}

uint64_t sub_1A94A0234()
{
  v1 = *(*v0 + 1152);

  return MEMORY[0x1EEE6DFA0](sub_1A94A0344, v1, 0);
}

uint64_t sub_1A94A0344()
{
  memcpy(v0 + 37, v0 + 72, 0x118uLL);
  memcpy(v0 + 2, v0 + 72, 0x118uLL);
  if (sub_1A932D058((v0 + 2)) == 1)
  {
    v1 = v0[1];

    return v1();
  }

  else
  {
    v3 = v0[144];
    memcpy(v0 + 107, v0 + 2, 0x118uLL);
    v4 = *((*MEMORY[0x1E69E7D40] & *v3) + 0x1A8);
    v6 = (v4 + *v4);
    v5 = swift_task_alloc();
    v0[146] = v5;
    *v5 = v0;
    v5[1] = sub_1A94A04FC;

    return v6(v0 + 107);
  }
}

uint64_t sub_1A94A04FC()
{
  v2 = *v1;
  *(*v1 + 1176) = v0;

  v3 = *(v2 + 1152);
  if (v0)
  {
    v4 = sub_1A94A0688;
  }

  else
  {
    v4 = sub_1A94A0614;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94A0614()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94A0688()
{
  sub_1A937B960(v0 + 296, &unk_1EB387BC0, &qword_1A9587E30);
  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94A06FC(const void *a1)
{
  v2[230] = v1;
  v4 = sub_1A937829C(&qword_1EB387148, &qword_1A95958D0);
  v2[231] = v4;
  v2[232] = *(v4 - 8);
  v2[233] = swift_task_alloc();
  v5 = sub_1A937829C(&qword_1EB387BD0, &qword_1A958B6E0);
  v2[234] = v5;
  v2[235] = *(v5 - 8);
  v2[236] = swift_task_alloc();
  v6 = sub_1A957BC88();
  v2[237] = v6;
  v2[238] = *(v6 - 8);
  v2[239] = swift_task_alloc();
  v2[240] = swift_task_alloc();
  v2[241] = swift_task_alloc();
  sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v2[242] = swift_task_alloc();
  v7 = sub_1A957AFD8();
  v2[243] = v7;
  v2[244] = *(v7 - 8);
  v2[245] = swift_task_alloc();
  v2[246] = swift_task_alloc();
  v2[247] = swift_task_alloc();
  v2[248] = swift_task_alloc();
  memcpy(v2 + 50, a1, 0x118uLL);
  v8 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x190);
  v11 = (v8 + *v8);
  v9 = swift_task_alloc();
  v2[249] = v9;
  *v9 = v2;
  v9[1] = sub_1A94A0A4C;

  return v11();
}

uint64_t sub_1A94A0A4C()
{
  v1 = *v0;
  v2 = *(*v0 + 1840);
  v3 = *v0;

  memcpy(v1 + 85, v1 + 50, 0x118uLL);
  v4 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x178);
  v8 = (v4 + *v4);
  v5 = swift_task_alloc();
  v1[250] = v5;
  *v5 = v3;
  v5[1] = sub_1A94A0C6C;
  v6 = v1[242];

  return (v8)(v6, v1 + 85);
}

uint64_t sub_1A94A0C6C()
{
  v1 = *(*v0 + 1840);

  return MEMORY[0x1EEE6DFA0](sub_1A94A0D7C, v1, 0);
}

uint64_t sub_1A94A0D7C()
{
  v92 = v0;
  v1 = v0[244];
  v2 = v0[243];
  v3 = v0[242];
  if ((*(v1 + 48))(v3, 1, v2) == 1)
  {
    sub_1A937B960(v3, &unk_1EB387B80, qword_1A9587740);
    memcpy(__dst, v0 + 50, sizeof(__dst));
    v42 = CoreSynthesizer.Voice.sampleText.getter();
    if (v43)
    {
      v44 = v43;
      v45 = v42;
      memcpy(__dst, v0 + 50, sizeof(__dst));
      v91[0] = *sub_1A9493C84();
      if (CoreSynthesizer.Voice.has(_:)(v91))
      {
        v46 = v0[233];
        v47 = v0[232];
        v84 = v0[231];
        v48 = v0[230];
        v49 = MEMORY[0x1E69E7D40];
        v82 = *((*MEMORY[0x1E69E7D40] & *v48) + 0xD8);
        v50 = v82();
        v51 = (*((*v49 & *v48) + 0xA8))();
        (*((*v49 & *v50) + 0x3E8))(v51);

        __dst[0] = 0;
        __dst[1] = 0xE000000000000000;
        sub_1A957CF08();

        __dst[0] = 0x3E6B616570733CLL;
        __dst[1] = 0xE700000000000000;
        MEMORY[0x1AC585140](v45, v44);

        MEMORY[0x1AC585140](0x3E6B616570732F3CLL, 0xE800000000000000);
        v52 = __dst[0];
        v53 = __dst[1];
        memcpy(v0 + 155, v0 + 50, 0x118uLL);
        nullsub_23();
        memcpy(__dst, v0 + 155, sizeof(__dst));
        sub_1A937B3DC((v0 + 50), (v0 + 190));
        v54 = sub_1A937838C();
        sub_1A937BA74(&v87);
        v88 = v87;
        sub_1A937BA74(&v89);
        v90 = v89;
        sub_1A937BA78(v91);
        v55 = CoreSynthesizer.Utterance.init(id:ssml:voice:priority:behavior:isoPrioritizedBehavior:replacementOptions:)(__dst, 0, 0, v52, v53, v54, &v88, &v90, (v0 + 2), v91);
        v56 = (v82)(v55);
        (*((*v49 & *v56) + 0x4B0))(v0 + 2);

        sub_1A957C6F8();
        (*(v47 + 8))(v46, v84);
        v57 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
        v0[253] = v57;
        v58 = v0[230];
        v59 = swift_task_alloc();
        v0[254] = v59;
        *v59 = v0;
        v59[1] = sub_1A94A1C20;
        v60 = v0[234];

        return MEMORY[0x1EEE6DB90](v0 + 225, v58, v57, v60, v0 + 229);
      }
    }

    v61 = v0[239];
    v62 = v0[238];
    v63 = v0[237];
    v64 = sub_1A93772F8();
    (*(v62 + 16))(v61, v64, v63);
    sub_1A937B3DC((v0 + 50), (v0 + 120));
    v65 = sub_1A957BC68();
    v66 = sub_1A957CA78();
    sub_1A937B48C((v0 + 50));
    v67 = os_log_type_enabled(v65, v66);
    v68 = v0[239];
    v69 = v0[238];
    v70 = v0[237];
    if (v67)
    {
      v71 = swift_slowAlloc();
      v72 = swift_slowAlloc();
      __dst[0] = v72;
      *v71 = 136315138;
      v73 = v0[50];
      v74 = v0[51];

      v75 = sub_1A937A5C0(v73, v74, __dst);

      *(v71 + 4) = v75;
      _os_log_impl(&dword_1A9324000, v65, v66, "All attempts to play sample for %s failed", v71, 0xCu);
      sub_1A9378138(v72);
      MEMORY[0x1AC587CD0](v72, -1, -1);
      MEMORY[0x1AC587CD0](v71, -1, -1);
    }

    (*(v69 + 8))(v68, v70);

    v76 = v0[1];

    return v76();
  }

  else
  {
    v4 = v0[248];
    v5 = v0[247];
    v6 = v0[241];
    v7 = v0[238];
    (*(v1 + 32))(v4, v3, v2);
    sub_1A93772F8();
    (*(v7 + 16))(v6);
    v85 = *(v1 + 16);
    v85(v5, v4, v2);
    v8 = sub_1A957BC68();
    v9 = sub_1A957CA58();
    v10 = os_log_type_enabled(v8, v9);
    v11 = v0[247];
    v12 = v0[244];
    v13 = v0[243];
    v14 = v0[241];
    v15 = v0[238];
    v83 = v0[237];
    if (v10)
    {
      v16 = swift_slowAlloc();
      v81 = swift_slowAlloc();
      __dst[0] = v81;
      *v16 = 136315138;
      sub_1A94A3EC4(&qword_1EB386BF8, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
      v79 = v9;
      v17 = sub_1A957D3A8();
      v80 = v14;
      v19 = v18;
      log = v8;
      v20 = *(v12 + 8);
      v20(v11, v13);
      v21 = sub_1A937A5C0(v17, v19, __dst);

      *(v16 + 4) = v21;
      _os_log_impl(&dword_1A9324000, log, v79, "Attempting to play sample at url %s", v16, 0xCu);
      sub_1A9378138(v81);
      MEMORY[0x1AC587CD0](v81, -1, -1);
      v22 = v16;
      v23 = v20;
      MEMORY[0x1AC587CD0](v22, -1, -1);

      (*(v15 + 8))(v80, v83);
    }

    else
    {

      v23 = *(v12 + 8);
      v23(v11, v13);
      (*(v15 + 8))(v14, v83);
    }

    v0[251] = v23;
    v24 = v0[246];
    v85(v24, v0[248], v0[243]);
    v25 = objc_allocWithZone(MEMORY[0x1E6958450]);
    v26 = sub_1A94A31D4(v24);
    v27 = v0[230];
    v28 = MEMORY[0x1E69E7D40];
    v29 = (*((*MEMORY[0x1E69E7D40] & *v27) + 0xF8))(v26);
    v30 = *((*v28 & *v27) + 0xF0);
    v31 = (v30)(v29);
    if (v31)
    {
      v32 = v31;
      v33 = (*((*v28 & *v0[230]) + 0xA8))();
      [v32 setAudioSession_];
    }

    v34 = v30();
    if (v34)
    {
      v35 = v34;
      [v34 setDelegate_];
    }

    v36 = v0[230];
    v37 = v30();
    [v37 play];

    v38 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
    v39 = swift_task_alloc();
    v0[252] = v39;
    *v39 = v0;
    v39[1] = sub_1A94A1A00;
    v40 = v0[230];
    v41 = MEMORY[0x1E69E7CA8] + 8;

    return MEMORY[0x1EEE6DDE0](v39, v36, v38, 0x2877656976657270, 0xEF293A6563696F76, sub_1A94A3320, v40, v41);
  }
}

uint64_t sub_1A94A1A00()
{
  v1 = *(*v0 + 1840);

  return MEMORY[0x1EEE6DFA0](sub_1A94A1B10, v1, 0);
}

uint64_t sub_1A94A1B10()
{
  (*(v0 + 2008))(*(v0 + 1984), *(v0 + 1944));

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1A94A1C20()
{
  v2 = *v1;

  v3 = *(v2 + 1840);
  if (v0)
  {
    v4 = sub_1A94A1F04;
  }

  else
  {
    v4 = sub_1A94A1D34;
  }

  return MEMORY[0x1EEE6DFA0](v4, v3, 0);
}

uint64_t sub_1A94A1D34()
{
  v1 = *(v0 + 1816);
  if (v1 >> 3 == 0xFFFFFFFF)
  {
    (*(*(v0 + 1880) + 8))(*(v0 + 1888), *(v0 + 1872));
    sub_1A9410E64(v0 + 16);

    v2 = *(v0 + 8);

    return v2();
  }

  else
  {
    sub_1A9410F4C(*(v0 + 1800), *(v0 + 1808), v1, *(v0 + 1824));
    v4 = *(v0 + 2024);
    v5 = *(v0 + 1840);
    v6 = swift_task_alloc();
    *(v0 + 2032) = v6;
    *v6 = v0;
    v6[1] = sub_1A94A1C20;
    v7 = *(v0 + 1872);

    return MEMORY[0x1EEE6DB90](v0 + 1800, v5, v4, v7, v0 + 1832);
  }
}

uint64_t sub_1A94A1F04()
{
  (*(v0[235] + 8))(v0[236], v0[234]);
  sub_1A9410E64((v0 + 2));

  v1 = v0[1];

  return v1();
}

uint64_t sub_1A94A2024(uint64_t a1, void *a2)
{
  v4 = sub_1A937829C(&unk_1EB387B90, &unk_1A95930A8);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v10 - v5;
  v7 = sub_1A937829C(&qword_1EB386E38, &qword_1A9589CD8);
  v8 = *(v7 - 8);
  (*(v8 + 16))(v6, a1, v7);
  (*(v8 + 56))(v6, 0, 1, v7);
  return (*((*MEMORY[0x1E69E7D40] & *a2) + 0x110))(v6);
}

uint64_t sub_1A94A2174(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10 - v4;
  v6 = sub_1A957C688();
  (*(*(v6 - 8) + 56))(v5, 1, 1, v6);
  v7 = swift_allocObject();
  v7[2] = 0;
  v7[3] = 0;
  v7[4] = v1;
  v7[5] = a1;

  v8 = a1;
  sub_1A938A404(0, 0, v5, &unk_1A9593110, v7);
}

uint64_t sub_1A94A2284(uint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5)
{
  v5[2] = a4;
  v5[3] = a5;
  v6 = ((*MEMORY[0x1E69E7D40] & *a4) + 240) & 0xFFFFFFFFFFFFLL | 0xCC8C000000000000;
  v5[4] = *((*MEMORY[0x1E69E7D40] & *a4) + 0xF0);
  v5[5] = v6;
  return MEMORY[0x1EEE6DFA0](sub_1A94A22D0, a4, 0);
}

uint64_t sub_1A94A22D0()
{
  *(v0 + 48) = (*(v0 + 32))();

  return MEMORY[0x1EEE6DFA0](sub_1A94A2340, 0, 0);
}

uint64_t sub_1A94A2340()
{
  v1 = *(v0 + 48);
  if (v1 && (v2 = *(v0 + 24), sub_1A9387478(0, &qword_1EB387C58, 0x1E6958450), v3 = v2, v4 = sub_1A957CC18(), v1, v3, (v4 & 1) != 0))
  {
    v8 = (*((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x190) + **((*MEMORY[0x1E69E7D40] & **(v0 + 16)) + 0x190));
    v5 = swift_task_alloc();
    *(v0 + 56) = v5;
    *v5 = v0;
    v5[1] = sub_1A94A24F8;

    return v8();
  }

  else
  {
    v7 = *(v0 + 8);

    return v7();
  }
}

uint64_t sub_1A94A24F8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A94A2700(uint64_t a1, uint64_t a2)
{
  *(v3 + 296) = a1;
  *(v3 + 304) = v2;
  v5 = sub_1A957B308();
  *(v3 + 312) = v5;
  *(v3 + 320) = *(v5 - 8);
  v6 = swift_task_alloc();
  v7 = *(a2 + 40);
  *(v3 + 48) = *(a2 + 32);
  v8 = *(a2 + 16);
  *(v3 + 16) = *a2;
  *(v3 + 32) = v8;
  *(v3 + 328) = v6;
  *(v3 + 336) = v7;
  *(v3 + 344) = *(a2 + 48);
  *(v3 + 232) = *(a2 + 216);
  *(v3 + 248) = *(a2 + 232);
  v9 = *(a2 + 264);
  *(v3 + 264) = *(a2 + 248);
  *(v3 + 280) = v9;
  *(v3 + 168) = *(a2 + 152);
  *(v3 + 184) = *(a2 + 168);
  *(v3 + 200) = *(a2 + 184);
  *(v3 + 216) = *(a2 + 200);
  *(v3 + 104) = *(a2 + 88);
  *(v3 + 120) = *(a2 + 104);
  *(v3 + 136) = *(a2 + 120);
  *(v3 + 152) = *(a2 + 136);
  *(v3 + 72) = *(a2 + 56);
  *(v3 + 88) = *(a2 + 72);

  return MEMORY[0x1EEE6DFA0](sub_1A94A2850, v2, 0);
}

uint64_t sub_1A94A2850()
{
  v2 = v0[42];
  v1 = v0[43];
  v4 = v0[40];
  v3 = v0[41];
  v5 = v0[38];
  v6 = v0[39];
  v7 = objc_opt_self();
  v0[7] = v2;
  v0[8] = v1;
  CoreSynthesizer.Voice.primaryLocale.getter(v3);
  sub_1A957B118();
  (*(v4 + 8))(v3, v6);
  v8 = sub_1A957C0C8();

  v9 = [v7 convertTTSLanguageCodeToSiriLanguageCode_];

  v10 = sub_1A957C0F8();
  v12 = v11;

  v0[44] = v12;
  v13 = sub_1A94A3EC4(&qword_1EB387BA8, type metadata accessor for VoicePreviewer, &protocol conformance descriptor for VoicePreviewer);
  v14 = swift_task_alloc();
  v0[45] = v14;
  v14[2] = v5;
  v14[3] = v10;
  v14[4] = v12;
  v14[5] = v2;
  v14[6] = v1;
  v15 = swift_task_alloc();
  v0[46] = v15;
  v16 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  *v15 = v0;
  v15[1] = sub_1A94A2A54;
  v17 = v0[37];

  return MEMORY[0x1EEE6DDE0](v17, v5, v13, 0xD000000000000019, 0x80000001A95C3B90, sub_1A94A33C0, v14, v16);
}

uint64_t sub_1A94A2A54()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_1A94A2BA4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v26 = a5;
  v27 = a6;
  v25 = a3;
  v9 = sub_1A957BF18();
  v31 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v25 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1A957BF48();
  v29 = *(v12 - 8);
  v30 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v25 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v25 - v17;
  v28 = *(a2 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_siriQueue);
  (*(v16 + 16))(&v25 - v17, a1, v15);
  v19 = (*(v16 + 80) + 48) & ~*(v16 + 80);
  v20 = swift_allocObject();
  v21 = v26;
  *(v20 + 2) = v25;
  *(v20 + 3) = a4;
  v22 = v27;
  *(v20 + 4) = v21;
  *(v20 + 5) = v22;
  (*(v16 + 32))(&v20[v19], v18, v15);
  aBlock[4] = sub_1A94A3E38;
  aBlock[5] = v20;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CED7E8;
  v23 = _Block_copy(aBlock);

  sub_1A957BF28();
  v32 = MEMORY[0x1E69E7CC0];
  sub_1A94A3EC4(qword_1ED96FED0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  sub_1A937829C(&qword_1EB386D78, &qword_1A95898D0);
  sub_1A946D250(&qword_1ED96FEB0, &qword_1EB386D78, &qword_1A95898D0);
  sub_1A957CE08();
  MEMORY[0x1AC5859B0](0, v14, v11, v23);
  _Block_release(v23);
  (*(v31 + 8))(v11, v9);
  (*(v29 + 8))(v14, v30);
}

uint64_t sub_1A94A2F5C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = sub_1A937829C(&unk_1EB387B80, qword_1A9587740);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v9 = &v13 - v8;
  objc_allocWithZone(sub_1A957B768());

  sub_1A957B748();
  v10 = objc_allocWithZone(sub_1A957B6F8());
  v11 = sub_1A957B6E8();
  sub_1A957B6D8();

  sub_1A9391BAC(v9, v7, &unk_1EB387B80, qword_1A9587740);
  sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  sub_1A957C5C8();
  return sub_1A937B960(v9, &unk_1EB387B80, qword_1A9587740);
}

uint64_t VoicePreviewer.deinit()
{

  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_sampleAssetUrl, &unk_1EB387B80, qword_1A9587740);

  sub_1A937B960(v0 + OBJC_IVAR____TtC12TextToSpeech14VoicePreviewer_currentPreviewContinuation, &unk_1EB387B90, &unk_1A95930A8);

  swift_defaultActor_destroy();
  return v0;
}

uint64_t VoicePreviewer.__deallocating_deinit()
{
  VoicePreviewer.deinit();

  return MEMORY[0x1EEE6DEF0](v0);
}

id sub_1A94A31D4(uint64_t a1)
{
  v2 = v1;
  v13[1] = *MEMORY[0x1E69E9840];
  v4 = sub_1A957AF58();
  v13[0] = 0;
  v5 = [v2 initWithContentsOfURL:v4 error:v13];

  v6 = v13[0];
  if (v5)
  {
    v7 = sub_1A957AFD8();
    v8 = *(*(v7 - 8) + 8);
    v9 = v6;
    v8(a1, v7);
  }

  else
  {
    v10 = v13[0];
    sub_1A957AEF8();

    swift_willThrow();
    v11 = sub_1A957AFD8();
    (*(*(v11 - 8) + 8))(a1, v11);
  }

  return v5;
}

uint64_t sub_1A94A3328()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A93836DC;

  return sub_1A94A2284(v4, v5, v6, v2, v3);
}

void sub_1A94A33D8(uint64_t a1)
{
  sub_1A94A3C9C(319);
  if (v1 <= 0x3F)
  {
    sub_1A94A3CF4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t dispatch thunk of VoicePreviewer.canPreview(forVoiceId:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x180);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A9431DCC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of VoicePreviewer.canPreview(forVoice:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x188);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93916A8;

  return v7(a1);
}

uint64_t dispatch thunk of VoicePreviewer.stop()()
{
  v2 = *((*MEMORY[0x1E69E7D40] & *v0) + 0x190);
  v5 = (v2 + *v2);
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1A93836DC;

  return v5();
}

uint64_t dispatch thunk of VoicePreviewer.preview(selection:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x198);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return v7(a1);
}

uint64_t dispatch thunk of VoicePreviewer.preview(voiceId:)(uint64_t a1, uint64_t a2)
{
  v6 = *((*MEMORY[0x1E69E7D40] & *v2) + 0x1A0);
  v9 = (v6 + *v6);
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return v9(a1, a2);
}

uint64_t dispatch thunk of VoicePreviewer.preview(voice:)(uint64_t a1)
{
  v4 = *((*MEMORY[0x1E69E7D40] & *v1) + 0x1A8);
  v7 = (v4 + *v4);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1A93836DC;

  return v7(a1);
}

void sub_1A94A3C9C(uint64_t a1)
{
  if (!qword_1EB387C38)
  {
    sub_1A957AFD8();
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB387C38);
    }
  }
}

void sub_1A94A3CF4(uint64_t a1)
{
  if (!qword_1EB387C40)
  {
    sub_1A93A7B68(&qword_1EB386E38, &qword_1A9589CD8);
    v1 = sub_1A957CC58();
    if (!v2)
    {
      atomic_store(v1, &qword_1EB387C40);
    }
  }
}

uint64_t sub_1A94A3D58()
{
  swift_unknownObjectRelease();

  return MEMORY[0x1EEE6BDD0](v0, 48, 7);
}

uint64_t sub_1A94A3DA0()
{
  v2 = *(v0 + 32);
  v3 = *(v0 + 40);
  v4 = swift_task_alloc();
  *(v1 + 16) = v4;
  *v4 = v1;
  v4[1] = sub_1A9382328;

  return sub_1A94A2284(v4, v5, v6, v2, v3);
}

uint64_t sub_1A94A3E38()
{
  sub_1A937829C(&unk_1EB387C48, &qword_1A9593208);
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];

  return sub_1A94A2F5C(v1, v2, v3, v4);
}

uint64_t sub_1A94A3EAC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_1A94A3EC4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1A94A3F1C@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v135 = a3;
  v136 = a4;
  v133 = a2;
  v143 = sub_1A957B308();
  v5 = *(v143 - 8);
  v6 = MEMORY[0x1EEE9AC00](v143);
  *&v142 = &v132 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v141 = &v132 - v8;
  sub_1A9379398(&v150[4]);
  sub_1A94978C4();
  sub_1A948F660();
  sub_1A93BC894(&v150[15]);
  v137 = sub_1A957B7E8();
  v138 = a1;
  *(&v150[2] + 1) = v137;
  v139 = v9;
  *&v150[3] = v9;
  v10 = sub_1A957B7D8();
  v11 = *(v10 + 16);
  v12 = MEMORY[0x1E69E7CC0];
  if (v11)
  {
    *&v148[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v11, 0);
    v13 = *&v148[0];
    v140 = (v5 + 8);
    v134 = v10;
    v14 = v10 + 40;
    do
    {
      swift_bridgeObjectRetain_n();
      v15 = v142;
      sub_1A957B1B8();
      v16 = v141;
      Locale.withTTSLanguageDisambiguation(overrides:)(0, v141);
      v17 = *v140;
      v18 = v15;
      v19 = v143;
      (*v140)(v18, v143);
      v20 = sub_1A957B1A8();
      v144 = v21;

      v17(v16, v19);
      *&v148[0] = v13;
      v23 = *(v13 + 16);
      v22 = *(v13 + 24);
      if (v23 >= v22 >> 1)
      {
        sub_1A93ABB68((v22 > 1), v23 + 1, 1);
        v13 = *&v148[0];
      }

      *(v13 + 16) = v23 + 1;
      v24 = v13 + 16 * v23;
      v25 = v144;
      *(v24 + 32) = v20;
      *(v24 + 40) = v25;
      v14 += 16;
      --v11;
    }

    while (v11);

    v12 = MEMORY[0x1E69E7CC0];
  }

  else
  {

    v13 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v13);
  v27 = v26;
  *&v150[8] = v26;
  v144 = v28;
  *(&v150[8] + 1) = v28;
  *&v150[9] = 0;
  *(&v150[9] + 1) = v12;
  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v29 = swift_allocObject();
  v142 = xmmword_1A9588500;
  *(v29 + 16) = xmmword_1A9588500;
  v30 = sub_1A9493C6C();
  *(v29 + 32) = *v30;
  v31 = sub_1A9493D8C();
  *(v29 + 40) = *v31;
  *(v29 + 48) = *sub_1A9493C9C();
  *&v148[0] = v29;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  v32 = v138;
  v33 = sub_1A957B798();
  sub_1A9387478(0, &qword_1EB3863A8, 0x1E69D3340);
  v34 = v33;
  v35 = sub_1A957CB98();
  v36 = sub_1A957CC18();

  v143 = v27;
  if (v36)
  {

    BYTE8(v150[7]) = 0;
    *(&v150[6] + 8) = 0u;
    *(&v150[5] + 8) = 0u;
    *(&v150[4] + 8) = 0u;
    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v37 = sub_1A957C0F8();
    v39 = v38;

    *&v148[0] = v37;
    *(&v148[0] + 1) = v39;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v137, v139);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v40 = [v32 primaryLanguage];
LABEL_12:
    v47 = v40;
    v48 = sub_1A957C0F8();
    v50 = v49;

    MEMORY[0x1AC585140](v48, v50);

    MEMORY[0x1AC585140](0x6D75696D6572705FLL, 0xE800000000000000);
    v51 = *(&v148[0] + 1);
    v52 = *&v148[0];
    v150[0] = v148[0];
    goto LABEL_13;
  }

  v41 = v34;
  v42 = sub_1A957CB88();
  v43 = sub_1A957CC18();

  if (v43)
  {

    *(&v150[4] + 1) = 1;
    memset(&v150[5], 0, 41);
    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v44 = sub_1A957C0F8();
    v46 = v45;

    *&v148[0] = v44;
    *(&v148[0] + 1) = v46;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v137, v139);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v40 = [v32 primaryLanguage];
    goto LABEL_12;
  }

  v61 = v41;
  v62 = sub_1A957CBB8();
  v63 = sub_1A957CC18();

  if ((v63 & 1) == 0)
  {
    v102 = v61;
    v103 = sub_1A957CBA8();
    v104 = sub_1A957CC18();

    if ((v104 & 1) == 0)
    {
      v106 = v102;
      v107 = sub_1A957CB78();
      v108 = sub_1A957CC18();

      if ((v108 & 1) == 0)
      {

        goto LABEL_47;
      }

      *&v148[0] = 0;
      *(&v148[0] + 1) = 0xE000000000000000;
      sub_1A957CF08();

      *&v148[0] = 0xD000000000000019;
      *(&v148[0] + 1) = 0x80000001A95C3D00;
      MEMORY[0x1AC585140](v137, v139);
      MEMORY[0x1AC585140](95, 0xE100000000000000);
      v109 = sub_1A957B7D8();
      if (v109[2])
      {

        if (v109[2])
        {
          v110 = v109[4];
          v111 = v109[5];

          MEMORY[0x1AC585140](v110, v111);

          MEMORY[0x1AC585140](95, 0xE100000000000000);
          sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
          v112 = sub_1A957B818();
          v113 = sub_1A957CAA8();
          v114 = sub_1A957CC18();

          if (v114)
          {
            v115 = 0x746361706D6F63;
          }

          else
          {
            v115 = 0x6D75696D657270;
          }

          MEMORY[0x1AC585140](v115, 0xE700000000000000);

          v51 = *(&v148[0] + 1);
          v52 = *&v148[0];
          v150[0] = v148[0];
          *(&v150[4] + 1) = 2;
          memset(&v150[5], 0, 40);
          BYTE8(v150[7]) = 2;
          *&v148[0] = *v31;
          v146[0] = v149;
          sub_1A957CD98();
          if ((sub_1A957CDB8() & 1) == 0)
          {
            sub_1A957CDC8();
          }

          goto LABEL_30;
        }

        __break(1u);
      }

      __break(1u);
      return result;
    }

    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();

    *&v148[0] = 0xD000000000000017;
    *(&v148[0] + 1) = 0x80000001A95C3D20;
    MEMORY[0x1AC585140](v137, v139);
    v51 = *(&v148[0] + 1);
    v52 = *&v148[0];
    v150[0] = v148[0];
    v105 = 4;
    goto LABEL_66;
  }

  v64 = sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
  v65 = sub_1A957B818();
  v66 = sub_1A957CAA8();
  v67 = sub_1A957CC18();

  if ((v67 & 1) == 0)
  {
    v141 = sub_1A957B848();
    sub_1A937829C(&qword_1EB386D48, &qword_1A95898C8);
    v68 = swift_allocObject();
    *(v68 + 16) = xmmword_1A95892B0;
    sub_1A9387478(0, &qword_1EB3863B0, 0x1E69D3348);
    *(v68 + 32) = sub_1A957CA48();
    sub_1A937829C(&qword_1EB386E50, &qword_1A9593230);
    v69 = swift_allocObject();
    *(v69 + 16) = v142;
    *(v69 + 32) = 4;
    *(v69 + 40) = sub_1A957CAA8();
    *(v69 + 64) = v64;
    *(v69 + 72) = 0;
    v70 = sub_1A957B7E8();
    v71 = MEMORY[0x1E69E6158];
    *(v69 + 80) = v70;
    *(v69 + 88) = v72;
    *(v69 + 104) = v71;
    *(v69 + 112) = 1;
    v73 = [v32 primaryLanguage];
    v74 = sub_1A957C0F8();
    v76 = v75;

    *(v69 + 144) = MEMORY[0x1E69E6158];
    *(v69 + 120) = v74;
    *(v69 + 128) = v76;
    sub_1A93D92D4(v69);
    swift_setDeallocating();
    sub_1A937829C(&qword_1EB386E58, &qword_1A9589CF0);
    swift_arrayDestroy();
    swift_deallocClassInstance();
    v77 = sub_1A957B838();

    if (v77)
    {

      v32 = v138;
      goto LABEL_23;
    }

    *&v148[0] = 0;
    *(&v148[0] + 1) = 0xE000000000000000;
    sub_1A957CF08();
    v125 = sub_1A957C0F8();
    v127 = v126;

    *&v148[0] = v125;
    *(&v148[0] + 1) = v127;
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    MEMORY[0x1AC585140](v137, v139);
    MEMORY[0x1AC585140](95, 0xE100000000000000);
    v32 = v138;
    v128 = [v138 primaryLanguage];
    v129 = sub_1A957C0F8();
    v131 = v130;

    MEMORY[0x1AC585140](v129, v131);

    MEMORY[0x1AC585140](0x6D75696D6572705FLL, 0xE800000000000000);
    v51 = *(&v148[0] + 1);
    v52 = *&v148[0];
    v150[0] = v148[0];
    v105 = 2;
LABEL_66:
    *(&v150[4] + 1) = v105;
    memset(&v150[5], 0, 41);
    goto LABEL_13;
  }

LABEL_23:
  *(&v150[4] + 1) = 3;
  memset(&v150[5], 0, 41);
  v78 = sub_1A957B818();
  v79 = sub_1A957CAA8();
  v80 = sub_1A957CC18();

  if (v80)
  {
    v81 = 0;
  }

  else
  {
    v81 = 0x6D75696D6572702ELL;
  }

  if (v80)
  {
    v82 = 0xE000000000000000;
  }

  else
  {
    v82 = 0xE800000000000000;
  }

  *&v148[0] = sub_1A957C0F8();
  *(&v148[0] + 1) = v83;
  MEMORY[0x1AC585140](46, 0xE100000000000000);
  MEMORY[0x1AC585140](v137, v139);
  MEMORY[0x1AC585140](v81, v82);

  v51 = *(&v148[0] + 1);
  v52 = *&v148[0];
  v150[0] = v148[0];
LABEL_30:
  *&v148[0] = *v30;
  v146[0] = v149;
  sub_1A957CD98();
  if ((sub_1A957CDB8() & 1) == 0)
  {
    sub_1A957CDC8();
  }

LABEL_13:
  v53 = sub_1A957B818();
  sub_1A9387478(0, &qword_1EB385F20, 0x1E69D3330);
  v54 = sub_1A957CAA8();
  v55 = sub_1A957CC18();

  if (v55)
  {
    v56 = 2;
  }

  else
  {
    v56 = 3;
  }

  BYTE8(v150[3]) = v56;
  v57 = sub_1A957B808();
  if (v57 > 3)
  {
    goto LABEL_46;
  }

  BYTE9(v150[3]) = 0x2010002u >> (8 * v57);
  v58 = sub_1A957B7A8();
  v59 = v58;
  if (v58)
  {
    v60 = [v58 unsignedIntValue];
  }

  else
  {
    v60 = 0;
  }

  DWORD1(v150[11]) = v60;
  BYTE8(v150[11]) = v59 == 0;
  v84 = sub_1A957B828();
  v85 = v84;
  if (v84)
  {
    v86 = [v84 unsignedIntValue];
  }

  else
  {
    v86 = 0;
  }

  HIDWORD(v150[11]) = v86;
  LOBYTE(v150[12]) = v85 == 0;
  if ([v32 locallyAvailable])
  {
    v87 = sub_1A957B818();
    v88 = sub_1A957CAA8();
    v89 = sub_1A957CC18();

    BYTE1(v150[12]) = (v89 & 1) == 0;
    v90 = sub_1A957B818();
    v91 = sub_1A957CAA8();
    v92 = sub_1A957CC18();

    if ((v92 & 1) == 0)
    {
      v93 = sub_1A9493D2C();
      sub_1A93B0A74(v148, *v93);
    }

    v94 = sub_1A9493C84();
  }

  else
  {
    BYTE1(v150[12]) = 2;
    v94 = sub_1A9493D2C();
  }

  sub_1A93B0A74(v148, *v94);
  *&v150[4] = v149;
  v95._countAndFlagsBits = 1920170081;
  v95._object = 0xE400000000000000;
  *&v96 = UInt32.init(axFourCharCode:)(v95);
  if ((v96 & 0x100000000) != 0 || (v97 = v96, v98._countAndFlagsBits = 1668182627, v98._object = 0xE400000000000000, *&v99 = UInt32.init(axFourCharCode:)(v98), (v99 & 0x100000000) != 0))
  {
LABEL_46:

    sub_1A93B183C(*(&v150[4] + 1), *&v150[5], *(&v150[5] + 1), *&v150[6], *(&v150[6] + 1), *&v150[7], SBYTE8(v150[7]));

LABEL_47:

    sub_1A93B10AC(*&v150[15], *(&v150[15] + 1), *&v150[16], *(&v150[16] + 1));
    sub_1A93847E0(v148);
    return memcpy(v136, v148, 0x118uLL);
  }

  v100 = v99;
  v148[0] = *(&v150[4] + 8);
  v148[1] = *(&v150[5] + 8);
  v148[2] = *(&v150[6] + 8);
  LOBYTE(v148[3]) = BYTE8(v150[7]);
  memset(&v147[1], 0, 40);
  v147[0] = 2;
  LOBYTE(v147[6]) = 2;
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A957C438();
  if (v146[0] == v145[0] && v146[1] == v145[1])
  {
  }

  else
  {
    v116 = sub_1A957D3E8();

    if ((v116 & 1) == 0)
    {
      v100 = v97;
    }
  }

  LODWORD(v150[10]) = 1635087216;
  DWORD1(v150[10]) = v100;
  *(&v150[10] + 1) = 1634758764;
  LODWORD(v150[11]) = 0;

  v117 = v138;
  v118 = sub_1A957B7B8();
  CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v133, v135, v52, v51, v118, v148);
  *(&v150[12] + 8) = v148[0];
  *(&v150[13] + 8) = v148[1];
  *(&v150[14] + 1) = *&v148[2];
  v119 = sub_1A957B818();
  v120 = sub_1A957CAA8();
  v121 = sub_1A957CC18();

  if (v121)
  {
    *&v148[0] = sub_1A957C0F8();
    *(&v148[0] + 1) = v122;
    MEMORY[0x1AC585140](46, 0xE100000000000000);
    MEMORY[0x1AC585140](v137, v139);
    MEMORY[0x1AC585140](0x6D75696D6572702ELL, 0xE800000000000000);
    v123 = v148[0];
    *(&v150[1] + 8) = v148[0];
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v124 = swift_allocObject();
    *(v124 + 16) = xmmword_1A9587160;
    *(v124 + 32) = v123;
  }

  else
  {

    *(&v150[1] + 8) = 0uLL;
    v124 = MEMORY[0x1E69E7CC0];
  }

  *&v150[1] = v124;
  memcpy(v146, v150, sizeof(v146));
  memcpy(v147, v150, sizeof(v147));
  nullsub_23();
  memcpy(v136, v147, 0x118uLL);
  memcpy(v148, v150, 0x118uLL);
  sub_1A937B3DC(v146, v145);
  return sub_1A937B48C(v148);
}

uint64_t sub_1A94A50A4@<X0>(void *a1@<X0>, char a2@<W1>, uint64_t a3@<X2>, char a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X8>)
{
  v15 = MEMORY[0x1E69E7CC0];
  *(a8 + 64) = MEMORY[0x1E69E7CC0];
  __asm { FMOV            V0.2S, #1.0 }

  *(a8 + 96) = _D0;
  *(a8 + 104) = 1065353216;
  *(a8 + 112) = v15;
  *(a8 + 120) = v15;
  sub_1A9379534(a1, a8);
  *(a8 + 41) = a2;
  sub_1A937829C(&qword_1EB386B18, &unk_1A95916F0);
  v21 = sub_1A957B308();
  v22 = *(v21 - 8);
  v23 = (*(v22 + 80) + 32) & ~*(v22 + 80);
  result = swift_allocObject();
  *(result + 16) = xmmword_1A9587160;
  if (*(a3 + 16))
  {
    v25 = result;
    (*(v22 + 16))(result + v23, a3 + v23, v21);
    result = sub_1A9378138(a1);
    *(a8 + 72) = v25;
    *(a8 + 80) = a3;
    *(a8 + 40) = a4 & 1;
    *(a8 + 48) = a5;
    *(a8 + 56) = a6;
    *(a8 + 88) = MEMORY[0x1E69E7CD0];
    *(a8 + 42) = a7 & 1;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t ImperativeMarkupWriter.process(markup:)@<X0>(void *a1@<X0>, void *a2@<X8>)
{

  v5 = MEMORY[0x1E69E7CC0];
  *(v2 + 120) = MEMORY[0x1E69E7CC0];

  *(v2 + 64) = v5;

  *(v2 + 88) = MEMORY[0x1E69E7CD0];

  *(v2 + 112) = v5;
  __asm { FMOV            V0.2S, #1.0 }

  *(v2 + 96) = _D0;
  *(v2 + 104) = 1065353216;
  TTSMarkupVisitor.visit(_:)(a1, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  if (*(v2 + 41) == 1)
  {
    sub_1A94A5410();
  }

  v11 = *(v2 + 120);
  v12 = *(v2 + 40);
  v14 = *(v2 + 48);
  v13 = *(v2 + 56);
  v15 = *(v2 + 88);
  v34 = v14;
  v35 = v13;
  v33 = 0;
  v16 = *(v11 + 16);
  if (v16)
  {
    v32 = v5;

    sub_1A94A84E0(0, v16, 0);
    v17 = 0;
    v18 = v32;
    v19 = v16 - 1;
    while (1)
    {
      v29 = v17;
      sub_1A94A71E0(&v29, v11, &v33, &v34, v12, v30);
      v32 = v18;
      v21 = *(v18 + 16);
      v20 = *(v18 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1A94A84E0((v20 > 1), v21 + 1, 1);
        v18 = v32;
      }

      *(v18 + 16) = v21 + 1;
      v22 = v18 + 104 * v21;
      v23 = v30[0];
      v24 = v30[2];
      *(v22 + 48) = v30[1];
      *(v22 + 64) = v24;
      *(v22 + 32) = v23;
      v25 = v30[3];
      v26 = v30[4];
      v27 = v30[5];
      *(v22 + 128) = v31;
      *(v22 + 96) = v26;
      *(v22 + 112) = v27;
      *(v22 + 80) = v25;
      if (v19 == v17)
      {
        break;
      }

      ++v17;
    }

    v14 = v34;
    v13 = v35;
  }

  else
  {

    v18 = MEMORY[0x1E69E7CC0];
  }

  *a2 = v18;
  a2[1] = v15;
  a2[2] = v14;
  a2[3] = v13;
  return result;
}

void sub_1A94A5410()
{
  v1 = v0;
  v2 = *(v0 + 96);
  v3 = *(v0 + 100);
  v4 = *(v0 + 104);
  v5 = *(v0 + 112);
  v6 = *(v5 + 16);
  if (v6)
  {
    v7 = v5 + 12 * v6;
    v9 = *(v7 + 20);
    v10 = *(v7 + 24);
    v8 = v7 + 20;
    if (v2 != v9 || v3 != v10 || v4 != *(v8 + 8))
    {
      if (v2 == v9)
      {
LABEL_25:
        v26 = v5 + 12 * v6;
        v28 = *(v26 + 24);
        v27 = (v26 + 24);
        if (v3 == v28)
        {
LABEL_34:
          v40 = v5 + 12 * v6;
          v42 = *(v40 + 28);
          v41 = (v40 + 28);
          if (v4 == v42)
          {
LABEL_44:
            v59 = v5 + 12 * v6;
            _D1 = *(v59 + 20);
            v46 = *(v59 + 28);
            goto LABEL_45;
          }

          v43 = *(v1 + 24);
          v44 = *(v1 + 32);
          sub_1A93780F4(v1, v43);
          v45.n128_u32[0] = *v41;
LABEL_39:
          v51 = (*(v44 + 48))(v43, v44, v45);
          v53 = v52;
          v54 = *(v1 + 120);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v54 = sub_1A94A817C(0, *(v54 + 2) + 1, 1, v54);
          }

          v55 = *(v54 + 2);
          v56 = *(v54 + 3);
          v57 = v55 + 1;
          if (v55 >= v56 >> 1)
          {
            v71 = v55 + 1;
            v66 = v54;
            v67 = *(v54 + 2);
            v68 = sub_1A94A817C((v56 > 1), v55 + 1, 1, v66);
            v55 = v67;
            v57 = v71;
            v54 = v68;
          }

          *(v54 + 2) = v57;
          v58 = &v54[104 * v55];
          *(v58 + 4) = v51;
          *(v58 + 5) = v53;
          v58[128] = 0x80;
          *(v1 + 120) = v54;
          v6 = *(v5 + 16);
          if (!v6)
          {
            __asm { FMOV            V1.2S, #1.0 }

            v46 = 1.0;
            goto LABEL_45;
          }

          goto LABEL_44;
        }

        v29 = *(v1 + 24);
        v30 = *(v1 + 32);
        sub_1A93780F4(v1, v29);
        v31 = *v27;
        goto LABEL_29;
      }

      v13 = *(v1 + 24);
      v14 = *(v1 + 32);
      sub_1A93780F4(v1, v13);
      v15.n128_u32[0] = *v8;
      goto LABEL_20;
    }
  }

  else if (v2 != 1.0 || v3 != 1.0 || v4 != 1.0)
  {
    if (v2 == 1.0)
    {
      goto LABEL_27;
    }

    v13 = *(v0 + 24);
    v14 = *(v0 + 32);
    sub_1A93780F4(v0, v13);
    v15.n128_u32[0] = 1.0;
LABEL_20:
    v18 = (*(v14 + 32))(v13, v14, v15, v2);
    v20 = v19;
    v21 = *(v1 + 120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v21 = sub_1A94A817C(0, *(v21 + 2) + 1, 1, v21);
    }

    v22 = *(v21 + 2);
    v23 = *(v21 + 3);
    v24 = v22 + 1;
    if (v22 >= v23 >> 1)
    {
      v69 = v22 + 1;
      v60 = v21;
      v61 = *(v21 + 2);
      v62 = sub_1A94A817C((v23 > 1), v22 + 1, 1, v60);
      v22 = v61;
      v24 = v69;
      v21 = v62;
    }

    *(v21 + 2) = v24;
    v25 = &v21[104 * v22];
    *(v25 + 4) = v18;
    *(v25 + 5) = v20;
    v25[128] = 0x80;
    *(v1 + 120) = v21;
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_25;
    }

LABEL_27:
    v31 = 1.0;
    if (v3 == 1.0)
    {
      goto LABEL_36;
    }

    v29 = *(v1 + 24);
    v30 = *(v1 + 32);
    sub_1A93780F4(v1, v29);
LABEL_29:
    v32 = (*(v30 + 40))(v29, v30, v31);
    v34 = v33;
    v35 = *(v1 + 120);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v35 = sub_1A94A817C(0, *(v35 + 2) + 1, 1, v35);
    }

    v36 = *(v35 + 2);
    v37 = *(v35 + 3);
    v38 = v36 + 1;
    if (v36 >= v37 >> 1)
    {
      v70 = v36 + 1;
      v63 = v35;
      v64 = *(v35 + 2);
      v65 = sub_1A94A817C((v37 > 1), v36 + 1, 1, v63);
      v36 = v64;
      v38 = v70;
      v35 = v65;
    }

    *(v35 + 2) = v38;
    v39 = &v35[104 * v36];
    *(v39 + 4) = v32;
    *(v39 + 5) = v34;
    v39[128] = 0x80;
    *(v1 + 120) = v35;
    v6 = *(v5 + 16);
    if (v6)
    {
      goto LABEL_34;
    }

LABEL_36:
    v46 = 1.0;
    if (v4 == 1.0)
    {
      __asm { FMOV            V1.2S, #1.0 }

LABEL_45:
      *(v1 + 96) = _D1;
      *(v1 + 104) = v46;
      return;
    }

    v43 = *(v1 + 24);
    v44 = *(v1 + 32);
    sub_1A93780F4(v1, v43);
    v45.n128_u32[0] = 1.0;
    goto LABEL_39;
  }
}

uint64_t ImperativeMarkupWriter.visit(_:)(uint64_t a1)
{
  v98 = sub_1A957B188();
  v99 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v83 = &v78 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v97 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  MEMORY[0x1EEE9AC00](v97);
  v4 = &v78 - v3;
  v5 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v6 = MEMORY[0x1EEE9AC00](v5 - 8);
  v8 = &v78 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v101 = &v78 - v10;
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v78 - v11;
  v13 = sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v78 - v14;
  v16 = sub_1A957B2E8();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v94 = &v78 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = MEMORY[0x1EEE9AC00](v18);
  v93 = &v78 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v78 - v22;
  v104 = sub_1A957B308();
  v100 = *(v104 - 8);
  v24 = MEMORY[0x1EEE9AC00](v104);
  v81 = &v78 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v80 = &v78 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v79 = &v78 - v29;
  v30 = MEMORY[0x1EEE9AC00](v28);
  v103 = &v78 - v31;
  MEMORY[0x1EEE9AC00](v30);
  v33 = (&v78 - v32);
  v82 = a1;

  sub_1A957B1B8();
  v102 = v33;
  sub_1A957B2F8();
  sub_1A957B2C8();
  v34 = *(v17 + 8);
  v96 = v16;
  v95 = v17 + 8;
  v92 = v34;
  (v34)(v23, v16);
  v35 = sub_1A957B218();
  v36 = (*(*(v35 - 8) + 48))(v15, 1, v35);
  sub_1A937B960(v15, &qword_1EB386AF0, &unk_1A958C740);
  if (v36 != 1 || (v91 = *(v84 + 10), (v90 = *(v91 + 16)) == 0))
  {
LABEL_15:
    v50 = v100;
    v51 = *(v100 + 16);
    v52 = v80;
    v53 = v102;
    v54 = v104;
    v51(v80, v102, v104);
    v8 = v84;
    v55 = v79;
    sub_1A94265A0(v79, v52);
    v33 = *(v50 + 8);
    (v33)(v55, v54);
    v12 = v81;
    v51(v81, v53, v54);
    v36 = *(v8 + 9);
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      goto LABEL_32;
    }

    goto LABEL_16;
  }

  v37 = 0;
  v88 = v91 + ((*(v100 + 80) + 32) & ~*(v100 + 80));
  v87 = v100 + 16;
  v38 = (v99 + 48);
  v78 = (v99 + 32);
  v85 = (v99 + 8);
  v89 = (v100 + 8);
  v99 = v12;
  v86 = v8;
  while (v37 < *(v91 + 16))
  {
    (*(v100 + 16))(v103, v88 + *(v100 + 72) * v37, v104);
    v39 = v93;
    sub_1A957B2F8();
    sub_1A957B2B8();
    v40 = v39;
    v41 = v96;
    v33 = v92;
    (v92)(v40, v96);
    v42 = v94;
    sub_1A957B2F8();
    v8 = v101;
    sub_1A957B2B8();
    (v33)(v42, v41);
    v36 = *(v97 + 48);
    sub_1A94A8660(v12, v4);
    sub_1A94A8660(v8, &v4[v36]);
    v43 = *v38;
    v44 = v98;
    if ((*v38)(v4, 1, v98) == 1)
    {
      v33 = &qword_1A9587F40;
      sub_1A937B960(v8, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v12, &qword_1EB386A68, &qword_1A9587F40);
      if (v43(&v4[v36], 1, v44) == 1)
      {
        sub_1A937B960(v4, &qword_1EB386A68, &qword_1A9587F40);
LABEL_14:
        v47 = v100;
        v48 = v102;
        v49 = v104;
        (*(v100 + 8))(v102, v104);
        (*(v47 + 32))(v48, v103, v49);
        goto LABEL_15;
      }

      goto LABEL_5;
    }

    v8 = v86;
    sub_1A94A8660(v4, v86);
    if (v43(&v4[v36], 1, v44) == 1)
    {
      v36 = &qword_1EB386A68;
      sub_1A937B960(v101, &qword_1EB386A68, &qword_1A9587F40);
      sub_1A937B960(v99, &qword_1EB386A68, &qword_1A9587F40);
      (*v85)(v8, v44);
LABEL_5:
      sub_1A937B960(v4, &qword_1EB386B70, &unk_1A95888A0);
      goto LABEL_6;
    }

    v45 = v83;
    (*v78)(v83, &v4[v36], v44);
    sub_1A94A89CC(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
    v36 = sub_1A957C098();
    v46 = *v85;
    (*v85)(v45, v44);
    v33 = &qword_1EB386A68;
    sub_1A937B960(v101, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v99, &qword_1EB386A68, &qword_1A9587F40);
    v46(v8, v44);
    sub_1A937B960(v4, &qword_1EB386A68, &qword_1A9587F40);
    if (v36)
    {
      goto LABEL_14;
    }

LABEL_6:
    ++v37;
    (*v89)(v103, v104);
    v12 = v99;
    if (v90 == v37)
    {
      goto LABEL_15;
    }
  }

  __break(1u);
LABEL_32:
  v36 = sub_1A942AD3C(0, *(v36 + 16) + 1, 1, v36);
LABEL_16:
  v56 = v82;
  v58 = *(v36 + 16);
  v57 = *(v36 + 24);
  if (v58 >= v57 >> 1)
  {
    v36 = sub_1A942AD3C((v57 > 1), v58 + 1, 1, v36);
  }

  *(v36 + 16) = v58 + 1;
  (*(v100 + 32))(v36 + ((*(v100 + 80) + 32) & ~*(v100 + 80)) + *(v100 + 72) * v58, v12, v104);
  *(v8 + 9) = v36;
  v59 = *(v8 + 3);
  v60 = *(v8 + 4);
  sub_1A93780F4(v8, v59);
  v61 = (*(v60 + 8))(v102, v59, v60);
  if (!v62)
  {
    v108[3] = &type metadata for TTSMarkup.Language;
    v108[4] = &protocol witness table for TTSMarkup.Language;
    v108[0] = swift_allocObject();
    sub_1A93ADDD8(v56, v108[0] + 16);
    TTSMarkupVisitor.visitChildren(_:)(v108, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
    v76 = v108;
    goto LABEL_28;
  }

  v63 = v61;
  v64 = v62;
  sub_1A93ADDD8(v56, v108);
  off_1F1CF2318(&v105);
  sub_1A93ADE10(v108);
  if (v106)
  {
    sub_1A932D070(&v105, v107);
    v65 = *(v8 + 15);

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v65 = sub_1A94A817C(0, *(v65 + 2) + 1, 1, v65);
    }

    v67 = *(v65 + 2);
    v66 = *(v65 + 3);
    if (v67 >= v66 >> 1)
    {
      v65 = sub_1A94A817C((v66 > 1), v67 + 1, 1, v65);
    }

    *(v65 + 2) = v67 + 1;
    v68 = &v65[104 * v67];
    *(v68 + 4) = v63;
    *(v68 + 5) = v64;
    v68[128] = 0x80;
    *(v8 + 15) = v65;
    if (v8[42])
    {
      v69 = *(v8 + 26);
      *(v8 + 26) = 1065353216;
      v70 = *(v8 + 12);
      __asm { FMOV            V0.2S, #1.0 }

      *(v8 + 12) = _D0;
      sub_1A94A5410();
      *(v8 + 12) = v70;
      *(v8 + 26) = v69;
    }

    TTSMarkupVisitor.visit(_:)(v107, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);

    v76 = v107;
LABEL_28:
    sub_1A9378138(v76);
  }

  else
  {

    sub_1A937B960(&v105, &qword_1EB3868E8, &unk_1A958F280);
  }

  sub_1A94A647C(v8);
  return (v33)(v102, v104);
}

{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2[3];
  v6 = v2[4];
  sub_1A93780F4(v2, v5);
  v7 = (*(v6 + 24))(v3, v4, v5, v6);
  v9 = v8;
  v10 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1A94A817C((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 104 * v13;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 128) = 0x80;
  v2[15] = v10;
  return result;
}

{
  v2 = v1;
  sub_1A93BFBB0(a1, v24);
  v3 = *(v1 + 64);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v3 = sub_1A94A83BC(0, *(v3 + 2) + 1, 1, v3);
  }

  v5 = *(v3 + 2);
  v4 = *(v3 + 3);
  if (v5 >= v4 >> 1)
  {
    v3 = sub_1A94A83BC((v4 > 1), v5 + 1, 1, v3);
  }

  *(v3 + 2) = v5 + 1;
  v6 = &v3[72 * v5];
  *(v6 + 2) = v24[0];
  v7 = v24[1];
  v8 = v24[2];
  v9 = *v25;
  *(v6 + 93) = *&v25[13];
  *(v6 + 4) = v8;
  *(v6 + 5) = v9;
  *(v6 + 3) = v7;
  *(v1 + 64) = v3;
  v10 = sub_1A94A6E10(v3, 44.0);
  v12 = v11;
  v14 = v13;
  v15 = *(v1 + 112);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v15 = sub_1A94A82A0(0, *(v15 + 2) + 1, 1, v15);
  }

  v17 = *(v15 + 2);
  v16 = *(v15 + 3);
  if (v17 >= v16 >> 1)
  {
    v15 = sub_1A94A82A0((v16 > 1), v17 + 1, 1, v15);
  }

  *(v15 + 2) = v17 + 1;
  v18 = &v15[12 * v17];
  v18[8] = v10;
  *(v18 + 9) = v12;
  *(v18 + 10) = v14;
  *(v1 + 112) = v15;
  j___s12TextToSpeech9TTSMarkupO7ProsodyV7contentAA0dC0_pSgvg(v24);
  TTSMarkupVisitor.visit(_:)(v24, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  sub_1A937B960(v24, &qword_1EB3868E8, &unk_1A958F280);
  v19 = *(v1 + 64);
  if (*(v19 + 2))
  {
    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v20 = *(v19 + 2);
      if (v20)
      {
        goto LABEL_12;
      }

LABEL_18:
      __break(1u);
      goto LABEL_19;
    }
  }

  else
  {
    __break(1u);
  }

  v19 = sub_1A94A864C(v19);
  v20 = *(v19 + 2);
  if (!v20)
  {
    goto LABEL_18;
  }

LABEL_12:
  v21 = v20 - 1;
  sub_1A93B77E0(&v19[72 * v20 - 40]);
  *(v19 + 2) = v21;
  *(v2 + 64) = v19;
  v19 = *(v2 + 112);
  if (!*(v19 + 2))
  {
LABEL_19:
    __break(1u);
LABEL_20:
    result = sub_1A94A8638(v19);
    v19 = result;
    v23 = *(result + 16);
    if (v23)
    {
      goto LABEL_15;
    }

    goto LABEL_21;
  }

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_20;
  }

  v23 = *(v19 + 2);
  if (v23)
  {
LABEL_15:
    *(v19 + 2) = v23 - 1;
    *(v2 + 112) = v19;
    return result;
  }

LABEL_21:
  __break(1u);
  return result;
}

uint64_t sub_1A94A647C(uint64_t a1)
{
  v2 = *(a1 + 72);
  if (!v2[2])
  {
    __break(1u);
LABEL_6:
    result = sub_1A94A8624(v2);
    v2 = result;
    v4 = *(result + 16);
    if (v4)
    {
      goto LABEL_4;
    }

    goto LABEL_7;
  }

  v1 = a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_6;
  }

  v4 = v2[2];
  if (v4)
  {
LABEL_4:
    v5 = v4 - 1;
    v6 = sub_1A957B308();
    result = (*(*(v6 - 8) + 8))(v2 + ((*(*(v6 - 8) + 80) + 32) & ~*(*(v6 - 8) + 80)) + *(*(v6 - 8) + 72) * v5, v6);
    v2[2] = v5;
    *(v1 + 72) = v2;
    return result;
  }

LABEL_7:
  __break(1u);
  return result;
}

uint64_t ImperativeMarkupWriter.visit(_:)()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_1A93780F4(v1, v1[3]);
  v4 = sub_1A95379EC();
  v5 = (*(v3 + 16))(v2, v3, v4);
  v7 = v6;
  v8 = v1[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1A94A817C((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 104 * v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v12 + 128) = 0x80;
  v1[15] = v8;
  return result;
}

uint64_t ImperativeMarkupWriter.visit(_:)(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1A94A5410();
  v6 = *(v1 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A94A817C((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 104 * v9;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  *(v10 + 56) = v5;
  *(v10 + 128) = 0;
  *(v1 + 120) = v6;
  return result;
}

void ImperativeMarkupWriter.visit(_:)(uint64_t a1)
{
  v2 = *(a1 + 8);
  if (v2 == 14)
  {
    v36 = AXTTSLogCommon();
    if (v36)
    {
      v3 = sub_1A957CA78();
      sub_1A957BC48("Could not write SayAs SSML element. Missing interpretation value", 64, 2, &dword_1A9324000, v36, v3, MEMORY[0x1E69E7CC0]);
    }

    else
    {
      __break(1u);
    }

    return;
  }

  v4 = v1;
  v6 = v1[3];
  v7 = v1[4];
  sub_1A93780F4(v1, v6);
  LOBYTE(v40[0]) = v2;
  v8 = (*(v7 + 56))(v40, v6, v7);
  if (!v9)
  {
    v40[3] = &type metadata for TTSMarkup.SayAs;
    v40[4] = &protocol witness table for TTSMarkup.SayAs;
    v40[0] = swift_allocObject();
    sub_1A94A86D0(a1, v40[0] + 16);
    TTSMarkupVisitor.visitChildren(_:)(v40, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
    v32 = v40;
LABEL_23:
    sub_1A9378138(v32);
    return;
  }

  v12 = v8;
  v13 = v9;
  v14 = v10;
  v15 = v11;
  sub_1A94A86D0(a1, v40);
  off_1F1CFD548(&v37, &type metadata for TTSMarkup.SayAs);
  sub_1A93B8E0C(v40);
  if (!v38)
  {

    sub_1A937B960(&v37, &qword_1EB3868E8, &unk_1A958F280);
    return;
  }

  sub_1A932D070(&v37, v39);
  v16 = v1[15];

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v16 = sub_1A94A817C(0, *(v16 + 2) + 1, 1, v16);
  }

  v17 = *(v16 + 2);
  v18 = *(v16 + 3);
  v19 = v17 + 1;
  if (v17 >= v18 >> 1)
  {
    v33 = v16;
    v34 = *(v16 + 2);
    v35 = sub_1A94A817C((v18 > 1), v17 + 1, 1, v33);
    v17 = v34;
    v16 = v35;
  }

  *(v16 + 2) = v19;
  v20 = &v16[104 * v17];
  *(v20 + 4) = v12;
  *(v20 + 5) = v13;
  v20[128] = 0x80;
  v4[15] = v16;
  if (*(v4 + 42))
  {
    v21 = *(v4 + 26);
    *(v4 + 26) = 1065353216;
    v22 = v4[12];
    __asm { FMOV            V0.2S, #1.0 }

    v4[12] = _D0;
    sub_1A94A5410();
    v4[12] = v22;
    *(v4 + 26) = v21;
  }

  TTSMarkupVisitor.visit(_:)(v39, &type metadata for ImperativeMarkupWriter, &protocol witness table for ImperativeMarkupWriter);
  if (!v15)
  {

    v32 = v39;
    goto LABEL_23;
  }

  v28 = v4[15];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v28 = sub_1A94A817C(0, *(v28 + 2) + 1, 1, v28);
  }

  v30 = *(v28 + 2);
  v29 = *(v28 + 3);
  if (v30 >= v29 >> 1)
  {
    v28 = sub_1A94A817C((v29 > 1), v30 + 1, 1, v28);
  }

  sub_1A9378138(v39);
  *(v28 + 2) = v30 + 1;
  v31 = &v28[104 * v30];
  *(v31 + 4) = v14;
  *(v31 + 5) = v15;
  v31[128] = 0x80;
  v4[15] = v28;
}

float sub_1A94A6E10(uint64_t a1, float a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 1.0;
  }

  v4 = a1 + 32;
  v5 = 1.0;
  do
  {
    sub_1A93BFBB0(v4, v9);
    if (v11 >> 2 <= 0x3EuLL)
    {
      v6 = ((v10 | (v11 << 32)) << 24) >> 24;
      v7 = (sub_1A94A8078(a2) / 100.0) + 1.0;
      if (v6 >= 0)
      {
        v5 = v7;
      }

      else
      {
        v5 = v5 * v7;
      }
    }

    if (v12 != 255)
    {
      sub_1A93BF5B4();
    }

    sub_1A93B77E0(v9);
    v4 += 72;
    --v2;
  }

  while (v2);
  return v5;
}

__n128 ImperativeMarkupWriter.visit(_:)(__n128 *a1)
{
  v2 = v1;
  v4 = sub_1A957B308();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v25 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[1];
  v26 = *a1;
  v27 = v8;
  v9 = a1[3];
  v28 = a1[2];
  v29 = v9;
  v10 = *(v1 + 3);
  v11 = *(v1 + 4);
  sub_1A93780F4(v1, v10);
  v12 = a1[1];
  v25[0] = *a1;
  v25[1] = v12;
  v13 = a1[3];
  v25[2] = a1[2];
  v25[3] = v13;
  v14 = *(v1 + 9);
  v15 = *(v14 + 16);
  if (!v15)
  {
    __break(1u);
LABEL_9:
    v1 = sub_1A94A817C(0, *(v1 + 2) + 1, 1, v1);
    goto LABEL_4;
  }

  (*(v5 + 16))(v7, v14 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * (v15 - 1), v4);
  v10 = (*(v11 + 64))(v25, v7, v10, v11);
  v11 = v16;
  (*(v5 + 8))(v7, v4);
  if (!v11)
  {
    return result;
  }

  sub_1A94A5410();
  v1 = *(v1 + 15);
  sub_1A938339C(&v26, v25);
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    goto LABEL_9;
  }

LABEL_4:
  v19 = *(v1 + 2);
  v18 = *(v1 + 3);
  if (v19 >= v18 >> 1)
  {
    v1 = sub_1A94A817C((v18 > 1), v19 + 1, 1, v1);
  }

  v20 = v26;
  LOBYTE(v25[0]) = v27.n128_u8[8];
  v21 = v27.n128_u8[8] | 0x40;
  v22 = &v1[104 * v19];
  result = v27;
  v23 = v28;
  v24 = v29;
  *(v1 + 2) = v19 + 1;
  *(v22 + 2) = v20;
  *(v22 + 3) = result;
  *(v22 + 4) = v23;
  *(v22 + 5) = v24;
  *(v22 + 12) = v10;
  *(v22 + 13) = v11;
  *(v22 + 14) = *(&v20 + 1);
  *(v22 + 15) = result.n128_u64[0];
  v22[128] = v21;
  *(v2 + 15) = v1;
  return result;
}

uint64_t ImperativeMarkupWriter.WrittenMarkup.string.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

unint64_t *sub_1A94A71E0@<X0>(unint64_t *result@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X2>, uint64_t *a4@<X3>, char a5@<W4>, uint64_t a6@<X8>)
{
  v6 = *result;
  if ((*result & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_52;
  }

  if (v6 >= *(a2 + 16))
  {
LABEL_52:
    __break(1u);
LABEL_53:
    __break(1u);
LABEL_54:
    __break(1u);
    return result;
  }

  v10 = a2 + 104 * v6;
  v11 = *(v10 + 112);
  v90 = *(v10 + 96);
  v91 = v11;
  v92 = *(v10 + 128);
  v12 = *(v10 + 48);
  v86 = *(v10 + 32);
  v87 = v12;
  v13 = *(v10 + 80);
  v88 = *(v10 + 64);
  v89 = v13;
  v93 = v86;
  v94 = v12;
  v95 = v88;
  v96 = v13;
  v97 = v90;
  v98 = v11;
  v99 = v92;
  v14 = v92;
  v15 = v92 >> 6;
  if (v15)
  {
    if (v15 != 1)
    {

      result = MEMORY[0x1AC585140](v93, *(&v93 + 1));
      v36 = v91;
      *(a6 + 64) = v90;
      *(a6 + 80) = v36;
      *(a6 + 96) = v92;
      v37 = v87;
      *a6 = v86;
      *(a6 + 16) = v37;
      v38 = v89;
      *(a6 + 32) = v88;
      *(a6 + 48) = v38;
      return result;
    }

    v99 = v92 & 0x3F;
    v16 = v97;
    v17 = *(&v98 + 1);
    v75 = v98;
    *a3 = 1;
    v19 = *a4;
    v18 = a4[1];
    if ((v18 & 0x2000000000000000) != 0)
    {
      v20 = HIBYTE(v18) & 0xF;
    }

    else
    {
      v20 = *a4 & 0xFFFFFFFFFFFFLL;
    }

    sub_1A94A875C(&v86, &v82);
    sub_1A938339C(&v93, &v82);

    result = MEMORY[0x1AC585140](v16, *(&v16 + 1));
    v21 = a4[1];
    v22 = HIBYTE(v21) & 0xF;
    if ((v21 & 0x2000000000000000) == 0)
    {
      v22 = *a4 & 0xFFFFFFFFFFFFLL;
    }

    if (v22 >= v20)
    {
      if (((v18 >> 60) & ((v19 & 0x800000000000000) == 0)) != 0)
      {
        v23 = 11;
      }

      else
      {
        v23 = 7;
      }

      v24 = v23 | (v20 << 16);
      if (((v21 >> 60) & ((*a4 & 0x800000000000000) == 0)) != 0)
      {
        v25 = 11;
      }

      else
      {
        v25 = 7;
      }

      v82 = v93;
      v83 = v94;
      v26 = v25 | (v22 << 16);
      v84 = v95;
      v85 = v96;
      KeyPath = swift_getKeyPath();
      sub_1A93A0F34(v24, v26, v24, v26, &v80);
      v77 = v80;
      v78 = v81;
      v79 = 0;
      TTSMarkupSpeech.subscript.setter(&v77, KeyPath, &type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);
      result = sub_1A94A872C(&v86);
      LOBYTE(v77) = v14 & 1;
      v28 = v83;
      *a6 = v82;
      *(a6 + 16) = v28;
      v29 = v85;
      *(a6 + 32) = v84;
      *(a6 + 48) = v29;
      *(a6 + 64) = v16;
      *(a6 + 80) = v75;
      *(a6 + 88) = v17;
      *(a6 + 96) = v14 & 1 | 0x40;
      return result;
    }

    goto LABEL_53;
  }

  v99 = v92 & 0x3F;
  v76 = *(&v93 + 1);
  v30 = v93;
  v31 = *(&v94 + 1);
  v32 = v94;
  if (v6 && *(v10 + 24) < 0x40u)
  {
    v34 = *(v10 - 64);
    *&v77 = *(v10 - 72);
    *(&v77 + 1) = v34;
    v78 = *(v10 - 56);
    sub_1A94A875C(&v86, &v82);

    sub_1A9473844();
    v35 = sub_1A957C358();

    if ((v35 & 1) == 0)
    {
      MEMORY[0x1AC585140](32, 0xE100000000000000);
    }
  }

  else
  {
    sub_1A94A875C(&v86, &v82);
  }

  v39 = a4[1];
  if ((v39 & 0x2000000000000000) != 0)
  {
    v40 = HIBYTE(v39) & 0xF;
  }

  else
  {
    v40 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  v41 = ((v39 >> 60) & ((*a4 & 0x800000000000000) == 0)) == 0;
  v42 = 7;
  *&v82 = v30;
  *(&v82 + 1) = v76;
  if (!v41)
  {
    v42 = 11;
  }

  v74 = v42;
  *&v83 = v32;
  *(&v83 + 1) = v31;
  v43 = sub_1A9473844();
  v45 = v44;
  if ((a5 & 1) != 0 && (*a3 & 1) == 0)
  {
    v72 = v30;
    v73 = v31;
    v71 = v43;
    v46 = sub_1A957C0C8();
    v47 = [objc_opt_self() sharedInstance];
    v48 = sub_1A957C0C8();
    v49 = [v47 regexForString_];

    if (v49)
    {
      v50 = [v49 firstMatchInString:v46 options:0 range:{0, objc_msgSend(v46, sel_length)}];
      if (v50)
      {
        v51 = v50;
        v69 = v32;
        v70 = v46;
        v52 = sub_1A957C0C8();
        v53 = [v51 rangeWithName_];
        v55 = v54;

        if ([v51 range])
        {
          if (v53 != sub_1A957AD68())
          {
LABEL_41:

            v58 = sub_1A957C0C8();
            v59 = [v70 stringByReplacingCharactersInRange:v53 withString:{v55, v58}];

            v60 = sub_1A957C0F8();
            v45 = v61;

            v43 = v60;
            goto LABEL_42;
          }
        }

        else
        {
          [v51 range];
          v68 = v56;
          v57 = [v70 length];
          if (v53 != sub_1A957AD68() && v68 != v57)
          {
            goto LABEL_41;
          }
        }

        v43 = v71;
LABEL_42:
        v32 = v69;
        goto LABEL_43;
      }
    }

    v43 = v71;
LABEL_43:
    v30 = v72;
    v31 = v73;
  }

  MEMORY[0x1AC585140](v43, v45);

  v62 = a4[1];
  v63 = HIBYTE(v62) & 0xF;
  if ((v62 & 0x2000000000000000) == 0)
  {
    v63 = *a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v63 < v40)
  {
    goto LABEL_54;
  }

  v64 = 7;
  if (((v62 >> 60) & ((*a4 & 0x800000000000000) == 0)) != 0)
  {
    v64 = 11;
  }

  *&v77 = v30;
  *(&v77 + 1) = v76;
  v65 = v64 | (v63 << 16);
  *&v78 = v32;
  *(&v78 + 1) = v31;
  v66 = swift_getKeyPath();
  sub_1A93A0F34(v74 | (v40 << 16), v65, v74 | (v40 << 16), v65, &v80);
  v82 = v80;
  v83 = v81;
  LOBYTE(v84) = 0;
  TTSMarkupSpeech.subscript.setter(&v82, v66, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);
  result = sub_1A94A872C(&v86);
  *a3 = 1;
  v67 = *(&v77 + 1);
  *a6 = v77;
  *(a6 + 8) = v67;
  *(a6 + 16) = v78;
  *(a6 + 96) = 0;
  return result;
}

uint64_t ImperativeMarkupWriter.WrittenMarkup.translate(range:inSSML:)(unint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4)
{
  v8 = *v4;
  v9 = *(*v4 + 16);
  if (!v9)
  {
    return 0;
  }

  v10 = 0;
  v40 = *(v4 + 24);
  v41 = *(v4 + 16);
  v11 = v8 + 32;
  v43 = a2 >> 14;
  v44 = a1 >> 14;
  v12 = v9 - 1;
  v46 = v9 - 1;
  v47 = *v4;
  while (1)
  {
    v13 = *v11;
    v14 = *(v11 + 32);
    v60[1] = *(v11 + 16);
    v60[2] = v14;
    v60[0] = v13;
    v15 = *(v11 + 48);
    v16 = *(v11 + 64);
    v17 = *(v11 + 80);
    v61 = *(v11 + 96);
    v60[4] = v16;
    v60[5] = v17;
    v60[3] = v15;
    memmove(&__dst, v11, 0x61uLL);
    v18 = v68 >> 6;
    if (!v18)
    {
      break;
    }

    if (v18 != 1)
    {
      goto LABEL_18;
    }

    v68 &= 0x3Fu;
    v5 = v66;
    v6 = v67;
    KeyPath = swift_getKeyPath();
    v56 = __dst;
    v57 = v63;
    v58 = v64;
    v59 = v65;
    sub_1A94A875C(v60, &v48);
    sub_1A938339C(&__dst, &v48);
    v4 = &v56;
    TTSMarkupSpeech.subscript.getter(KeyPath, &type metadata for TTSMarkup.Phoneme, &protocol witness table for TTSMarkup.Phoneme);

    if (v55 != 1)
    {
      KeyPath = v53;
      v4 = v54;
      sub_1A93833D4(&__dst);
      sub_1A94A872C(v60);
      if (KeyPath >> 14 < v43 && v44 != v43 && v44 < v4 >> 14 && KeyPath >> 14 != v4 >> 14)
      {
        return v5;
      }

      goto LABEL_18;
    }

    sub_1A94A872C(v60);
    sub_1A93833D4(&__dst);
    if (v12 == v10)
    {
      return 0;
    }

LABEL_19:
    ++v10;
    v22 = *(v8 + 16);
    v11 += 104;
    if (v10 >= v22)
    {
      __break(1u);
LABEL_34:
      v22 = sub_1A938156C(v22, v8, v11);
      result = a1;
      if ((v11 & 0x1000000000000000) != 0)
      {
        goto LABEL_35;
      }

LABEL_30:
      v25 = v22 >> 16;
LABEL_31:
      v26 = result;
      if ((result & 0xC) == v4)
      {
        v26 = sub_1A938156C(a1, v8, v11);
        result = a1;
        if ((v11 & 0x1000000000000000) == 0)
        {
          goto LABEL_33;
        }
      }

      else if ((v11 & 0x1000000000000000) == 0)
      {
LABEL_33:
        v27 = v26 >> 16;
        goto LABEL_44;
      }

      v29 = v8 & 0xFFFFFFFFFFFFLL;
      if ((v11 & 0x2000000000000000) != 0)
      {
        v29 = HIBYTE(v11) & 0xF;
      }

      if (v29 < v26 >> 16)
      {
        goto LABEL_51;
      }

      v27 = sub_1A957C2F8();
      result = a1;
LABEL_44:
      v30 = __OFSUB__(v27, v25);
      v31 = v27 - v25;
      if (v30)
      {
        __break(1u);
      }

      else
      {
        sub_1A957C3B8();
        v32 = sub_1A957CC78();

        v30 = __OFADD__(v31, v32);
        v33 = v31 + v32;
        if (!v30)
        {
          v48 = KeyPath;
          v49 = v45;
          v50 = v5;
          v51 = v6;
          result = sub_1A9473844();
          if (v33 >= v31)
          {
            v35 = sub_1A93883DC(v31, v33, result, v34);
            v37 = v36;

            v48 = KeyPath;
            v49 = v45;
            v50 = v5;
            v51 = v6;
            v5 = TTSMarkup.SpeechText.range(rangeInText:inSSML:)(v35, v37, a3, a4);
            sub_1A94A872C(v60);
            sub_1A94A872C(v60);
            return v5;
          }

          goto LABEL_50;
        }
      }

      __break(1u);
LABEL_50:
      __break(1u);
LABEL_51:
      __break(1u);
      goto LABEL_52;
    }
  }

  v68 &= 0x3Fu;
  v19 = *(&__dst + 1);
  KeyPath = __dst;
  v6 = *(&v63 + 1);
  v20 = v63;
  v21 = swift_getKeyPath();
  v56 = __PAIR128__(v19, KeyPath);
  v45 = v19;
  v5 = v20;
  v57 = __PAIR128__(v6, v20);

  v4 = &v56;
  TTSMarkupSpeech.subscript.getter(v21, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText);

  if (v52 == 1)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    v12 = v46;
LABEL_17:
    v8 = v47;
LABEL_18:
    if (v12 == v10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v22 = v48;
  v12 = v46;
  if (v44 < v48 >> 14)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    goto LABEL_17;
  }

  v8 = v47;
  if (v44 >= v49 >> 14 || v49 >> 14 < v43)
  {
    sub_1A94A872C(v60);
    sub_1A94A872C(v60);
    if (v46 == v10)
    {
      return 0;
    }

    goto LABEL_19;
  }

  v11 = v40;
  v8 = v41;
  v24 = (v41 >> 59) & 1;
  if ((v40 & 0x1000000000000000) == 0)
  {
    LOBYTE(v24) = 1;
  }

  v4 = 4 << v24;
  if ((v48 & 0xC) == 4 << v24)
  {
    goto LABEL_34;
  }

  result = a1;
  if ((v40 & 0x1000000000000000) == 0)
  {
    goto LABEL_30;
  }

LABEL_35:
  v28 = v8 & 0xFFFFFFFFFFFFLL;
  if ((v11 & 0x2000000000000000) != 0)
  {
    v28 = HIBYTE(v11) & 0xF;
  }

  if (v28 >= v22 >> 16)
  {
    v11 = v40;
    v8 = v41;
    v25 = sub_1A957C2F8();
    result = a1;
    goto LABEL_31;
  }

LABEL_52:
  __break(1u);
  return result;
}

uint64_t sub_1A94A7D20()
{
  v1 = v0;
  v2 = v0[3];
  v3 = v0[4];
  sub_1A93780F4(v1, v1[3]);
  v4 = sub_1A95379EC();
  v5 = (*(v3 + 16))(v2, v3, v4);
  v7 = v6;
  v8 = v1[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v8 + 16) + 1, 1, v8);
    v8 = result;
  }

  v11 = *(v8 + 16);
  v10 = *(v8 + 24);
  if (v11 >= v10 >> 1)
  {
    result = sub_1A94A817C((v10 > 1), v11 + 1, 1, v8);
    v8 = result;
  }

  *(v8 + 16) = v11 + 1;
  v12 = v8 + 104 * v11;
  *(v12 + 32) = v5;
  *(v12 + 40) = v7;
  *(v12 + 128) = 0x80;
  v1[15] = v8;
  return result;
}

uint64_t sub_1A94A7E50(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  sub_1A94A5410();
  v6 = *(v1 + 120);

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v6 + 16) + 1, 1, v6);
    v6 = result;
  }

  v9 = *(v6 + 16);
  v8 = *(v6 + 24);
  if (v9 >= v8 >> 1)
  {
    result = sub_1A94A817C((v8 > 1), v9 + 1, 1, v6);
    v6 = result;
  }

  *(v6 + 16) = v9 + 1;
  v10 = v6 + 104 * v9;
  *(v10 + 32) = v2;
  *(v10 + 40) = v3;
  *(v10 + 48) = v4;
  *(v10 + 56) = v5;
  *(v10 + 128) = 0;
  *(v1 + 120) = v6;
  return result;
}

uint64_t sub_1A94A7F28(uint64_t a1)
{
  v2 = v1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = v2[3];
  v6 = v2[4];
  sub_1A93780F4(v2, v5);
  v7 = (*(v6 + 24))(v3, v4, v5, v6);
  v9 = v8;
  v10 = v2[15];
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_1A94A817C(0, *(v10 + 16) + 1, 1, v10);
    v10 = result;
  }

  v13 = *(v10 + 16);
  v12 = *(v10 + 24);
  if (v13 >= v12 >> 1)
  {
    result = sub_1A94A817C((v12 > 1), v13 + 1, 1, v10);
    v10 = result;
  }

  *(v10 + 16) = v13 + 1;
  v14 = v10 + 104 * v13;
  *(v14 + 32) = v7;
  *(v14 + 40) = v9;
  *(v14 + 128) = 0x80;
  v2[15] = v10;
  return result;
}

float sub_1A94A8078(float a1)
{
  v3 = *(v1 + 4);
  v4 = *v1 | (*(v1 + 4) << 32);
  sub_1A9387604(a1);
  if (!(v3 >> 6))
  {
    return flt_1A95934A0[v4];
  }

  if (v3 >> 6 == 1)
  {
    sub_1A938763C(*&v4);
    return sub_1A94A8078(a1);
  }

  v5 = *&v4;
  v6 = HIDWORD(v4) & 0x3F;
  if (!v6)
  {
    return sub_1A94A8078(a1);
  }

  if (v6 != 1)
  {
    return v5;
  }

  return sub_1A94CF2F0(-12.0, 12.0, 0.0, 200.0, *&v4);
}

char *sub_1A94A817C(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CF0, &unk_1A9593478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94A82A0(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CE0, &qword_1A9593468);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 12);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[12 * v8])
    {
      memmove(v12, v13, 12 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, 12 * v8);
  }

  return v10;
}

char *sub_1A94A83BC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CE8, &qword_1A9593470);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 72);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[72 * v8])
    {
      memmove(v12, v13, 72 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1A94A84E0(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A94A8500(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1A94A8500(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387CF0, &unk_1A9593478);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 104);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[104 * v8])
    {
      memmove(v12, v13, 104 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A94A8660(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

__n128 sub_1A94A8794(uint64_t a1, __int128 *a2)
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

uint64_t sub_1A94A87B8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 128))
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

uint64_t sub_1A94A8800(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

__n128 sub_1A94A887C(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 96);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1A94A88A8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7E && *(a1 + 97))
  {
    return (*a1 + 126);
  }

  v3 = ((*(a1 + 96) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 96) >> 1) & 0x1F))) ^ 0x7F;
  if (v3 >= 0x7D)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1A94A88FC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7D)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 126;
    if (a3 >= 0x7E)
    {
      *(result + 97) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7E)
    {
      *(result + 97) = 0;
    }

    if (a2)
    {
      *(result + 64) = 0u;
      *(result + 80) = 0u;
      *(result + 32) = 0u;
      *(result + 48) = 0u;
      *result = 0u;
      *(result + 16) = 0u;
      *(result + 96) = 2 * (((-a2 >> 2) & 0x1F) - 32 * a2);
    }
  }

  return result;
}

uint64_t sub_1A94A89CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A94A8A14()
{
  v0 = sub_1A957BC88();
  sub_1A9377618(v0, qword_1EB3892A8);
  sub_1A937731C(v0, qword_1EB3892A8);
  return sub_1A957BC78();
}

void *sub_1A94A8A98()
{
  type metadata accessor for TTSTaskRunner();
  v0 = swift_allocObject();
  type metadata accessor for TTSTaskRunner.Store();
  v1 = swift_allocObject();
  result = sub_1A94B15F4();
  *(v0 + 16) = v1;
  qword_1EB38AC88 = v0;
  return result;
}

uint64_t sub_1A94A8AEC()
{
  v0 = swift_allocObject();
  type metadata accessor for TTSTaskRunner.Store();
  v1 = swift_allocObject();
  sub_1A94B15F4();
  *(v0 + 16) = v1;
  return v0;
}

uint64_t *sub_1A94A8B3C()
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  return &qword_1EB38AC88;
}

uint64_t static TTSTaskRunner.shared.getter()
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
}

uint64_t static TTSTaskRunner.shared.setter(uint64_t a1)
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38AC88 = a1;
}

uint64_t (*static TTSTaskRunner.shared.modify(uint64_t a1))(void)
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  return j__swift_endAccess;
}

uint64_t sub_1A94A8D0C@<X0>(void *a1@<X8>)
{
  if (qword_1EB38AC80 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  *a1 = qword_1EB38AC88;
}

uint64_t sub_1A94A8D8C(uint64_t *a1)
{
  v1 = *a1;
  v2 = qword_1EB38AC80;

  if (v2 != -1)
  {
    swift_once();
  }

  swift_beginAccess();
  qword_1EB38AC88 = v1;
}

_BYTE *sub_1A94A8E14()
{
  v1 = sub_1A957B078();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v52 = &v50[-((v3 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v4 = sub_1A937829C(&qword_1EB386F30, &qword_1A958A730);
  v5 = v4 - 8;
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v50[-v6];
  v8 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v55 = &v50[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v11 = MEMORY[0x1EEE9AC00](v9);
  v57 = &v50[-v12];
  v13 = MEMORY[0x1EEE9AC00](v11);
  v15 = &v50[-v14];
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v50[-v16];
  sub_1A94A9510();
  v53 = *(v2 + 56);
  v54 = v2 + 56;
  v18 = v53(v17, 0, 1, v1);
  v56 = v0;
  v19 = *(v0 + 16);
  (*(*v19 + 288))(v18);
  v20 = *(v5 + 56);
  sub_1A9391BAC(v17, v7, &qword_1EB386E78, qword_1A9589E60);
  sub_1A9391BAC(v15, &v7[v20], &qword_1EB386E78, qword_1A9589E60);
  v21 = v2;
  v22 = *(v2 + 48);
  if (v22(v7, 1, v1) == 1)
  {
    sub_1A937B960(v15, &qword_1EB386E78, qword_1A9589E60);
    sub_1A937B960(v17, &qword_1EB386E78, qword_1A9589E60);
    if (v22(&v7[v20], 1, v1) == 1)
    {
      v23 = sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
      goto LABEL_8;
    }

    goto LABEL_6;
  }

  sub_1A9391BAC(v7, v57, &qword_1EB386E78, qword_1A9589E60);
  if (v22(&v7[v20], 1, v1) == 1)
  {
    sub_1A937B960(v15, &qword_1EB386E78, qword_1A9589E60);
    sub_1A937B960(v17, &qword_1EB386E78, qword_1A9589E60);
    (*(v21 + 8))(v57, v1);
LABEL_6:
    sub_1A937B960(v7, &qword_1EB386F30, &qword_1A958A730);
LABEL_7:
    v24 = (*(*v19 + 216))(v59);
    v26 = v25;

    *v26 = MEMORY[0x1E69E7CC8];
    v24(v59, 0);
    v27 = v55;
    sub_1A94A9510();
    v53(v27, 0, 1, v1);
    v23 = (*(*v19 + 296))(v27);
    goto LABEL_8;
  }

  v45 = v21;
  v46 = &v7[v20];
  v47 = v52;
  (*(v21 + 32))(v52, v46, v1);
  sub_1A94B66F8(&qword_1EB386248, 255, MEMORY[0x1E6969530], MEMORY[0x1E6969550]);
  v48 = v57;
  v51 = sub_1A957C098();
  v49 = *(v45 + 8);
  v49(v47, v1);
  sub_1A937B960(v15, &qword_1EB386E78, qword_1A9589E60);
  sub_1A937B960(v17, &qword_1EB386E78, qword_1A9589E60);
  v49(v48, v1);
  v23 = sub_1A937B960(v7, &qword_1EB386E78, qword_1A9589E60);
  if ((v51 & 1) == 0)
  {
    goto LABEL_7;
  }

LABEL_8:
  result = (*(*v19 + 200))(v23);
  v29 = 0;
  v30 = result + 64;
  v31 = 1 << result[32];
  v32 = -1;
  if (v31 < 64)
  {
    v32 = ~(-1 << v31);
  }

  v33 = v32 & *(result + 8);
  v34 = (v31 + 63) >> 6;
  v57 = result;
  while (v33)
  {
LABEL_16:
    v36 = __clz(__rbit64(v33));
    v33 &= v33 - 1;
    v37 = *(result + 7) + 88 * (v36 | (v29 << 6));
    if (*(v37 + 73) == 2)
    {
      v39 = *v37;
      v38 = *(v37 + 8);
      v40 = *(*v19 + 216);

      v41 = v40(v59);
      v43 = sub_1A94A9674(v58, v39, v38);
      if (*(v42 + 8))
      {
        *(v42 + 73) = 0;
      }

      (v43)(v58, 0);

      v41(v59, 0);
      result = v57;
    }
  }

  while (1)
  {
    v35 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      break;
    }

    if (v35 >= v34)
    {

      return (*(*v56 + 104))(v44);
    }

    v33 = *&v30[8 * v35];
    ++v29;
    if (v33)
    {
      v29 = v35;
      goto LABEL_16;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A94A9510()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v6[0] = 0x1500000001;
  v5 = 0;
  v3 = 16;
  v4 = 0;
  if (!sysctl(v6, 2u, &v4, &v3, 0, 0))
  {
    return sub_1A957B038();
  }

  sub_1A957CF08();

  MEMORY[0x1AC584CD0](v1);
  v2 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v2);

  result = sub_1A957D0A8();
  __break(1u);
  return result;
}

void (*sub_1A94A9674(uint64_t **a1, uint64_t a2, uint64_t a3))(void *a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x28uLL);
  }

  *a1 = v6;
  v6[4] = sub_1A94B18F0(v6, a2, a3);
  return sub_1A948558C;
}

uint64_t sub_1A94A96FC(uint64_t a1, uint64_t a2)
{
  v5 = *(**(v2 + 16) + 216);

  v6 = v5(v10);
  sub_1A94B2D9C(a1, a2, v8);

  v11[3] = v8[3];
  v11[4] = v8[4];
  v12 = v9;
  v11[0] = v8[0];
  v11[1] = v8[1];
  v11[2] = v8[2];
  sub_1A937B960(v11, &qword_1EB387CF8, &unk_1A95934F0);
  return v6(v10, 0);
}

uint64_t sub_1A94A97F0()
{
  v0 = swift_allocObject();
  sub_1A94B15F4();
  return v0;
}

uint64_t sub_1A94A9828()
{
  v1 = v0;
  v48 = *MEMORY[0x1E69E9840];
  v37 = *(v0 + 16);
  v2 = (*(*v37 + 200))();
  v3 = v2;
  v4 = 0;
  v5 = v2 + 64;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  while (v8)
  {
    v10 = v4;
LABEL_11:
    v11 = __clz(__rbit64(v8));
    v8 &= v8 - 1;
    v12 = *(v3 + 56) + 88 * (v11 | (v10 << 6));
    v44 = *v12;
    v14 = *(v12 + 32);
    v13 = *(v12 + 48);
    v15 = *(v12 + 57);
    v45 = *(v12 + 16);
    v46 = v14;
    *&v47[9] = v15;
    *v47 = v13;
    v16 = *(v12 + 73);
    if (v16 <= 1)
    {
      if (v16)
      {
LABEL_5:
        v4 = v10;
      }

      else
      {
        v17 = *&v45;
        if (v47[17] == 1)
        {
          v40 = v46;
          v41[0] = *v47;
          *(v41 + 9) = *&v47[9];
          v38 = v44;
          v39 = v45;
          sub_1A94B2E68(&v44, v42);
          sub_1A94B2E68(&v44, v42);
          sub_1A94AB8B4(&v38, v17);
          sub_1A93F03AC(&v44);
          v43[0] = v41[0];
          *(v43 + 9) = *(v41 + 9);
          v42[1] = v39;
          v42[2] = v40;
          v42[0] = v38;
          sub_1A93F03AC(v42);
          v4 = v10;
        }

        else
        {
          v36 = v1;
          v18 = v44;
          v19 = objc_allocWithZone(MEMORY[0x1E698E498]);
          sub_1A94B2E68(&v44, v42);
          sub_1A94B2E68(&v44, v42);
          v20 = sub_1A957C0C8();
          sub_1A93F03AC(&v44);
          v21 = [v19 initWithIdentifier_];

          [v21 setInterval_];
          v22 = v21;
          [v22 setPriority_];
          v23 = *&v47[20];
          LODWORD(v42[0]) = *sub_1A953C318();
          LODWORD(v38) = v23;
          sub_1A93F079C();
          if (sub_1A957CD88())
          {
            v24 = 4;
          }

          else
          {
            v24 = 5;
          }

          [v22 setRequiresProtectionClass_];
          LODWORD(v42[0]) = *sub_1A953C330();
          LODWORD(v38) = v23;
          [v22 setRequiresNetworkConnectivity_];
          [v22 setRandomInitialDelay_];

          v25 = [objc_opt_self() sharedScheduler];
          *&v42[0] = 0;
          v26 = [v25 submitTaskRequest:v22 error:v42];

          v27 = *&v42[0];
          if (v26)
          {
            v35 = *(*v37 + 216);
            sub_1A94B2E68(&v44, v42);
            v28 = v27;
            v29 = v35(v42);
            v31 = sub_1A94A9674(&v38, v18, *(&v18 + 1));
            if (*(v30 + 8))
            {
              *(v30 + 73) = 1;
            }

            (v31)(&v38, 0);
            sub_1A93F03AC(&v44);
            v29(v42, 0);

            sub_1A93F03AC(&v44);
          }

          else
          {
            v32 = *&v42[0];
            v33 = sub_1A957AEF8();

            swift_willThrow();
            sub_1A93F03AC(&v44);
          }

          v4 = v10;
          v1 = v36;
        }
      }
    }

    else
    {
      if (v16 == 2)
      {
        goto LABEL_5;
      }

      v4 = v10;
    }
  }

  while (1)
  {
    v10 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      __break(1u);
    }

    if (v10 >= v9)
    {
    }

    v8 = *(v5 + 8 * v10);
    ++v4;
    if (v8)
    {
      goto LABEL_11;
    }
  }
}

uint64_t sub_1A94A9CB0(char a1, uint64_t a2, uint64_t a3)
{
  v7 = (*(**(v3 + 16) + 216))(v12);
  v9 = sub_1A94A9674(v11, a2, a3);
  if (*(v8 + 8))
  {
    *(v8 + 73) = a1;
  }

  (v9)(v11, 0);
  return v7(v12, 0);
}

void sub_1A94A9D7C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  v8 = [objc_opt_self() sharedScheduler];
  v9 = sub_1A957C0C8();
  v10 = swift_allocObject();
  v10[2] = v5;
  v10[3] = a3;
  v10[4] = a4;
  v12[4] = sub_1A94B2EA0;
  v12[5] = v10;
  v12[0] = MEMORY[0x1E69E9820];
  v12[1] = 1107296256;
  v12[2] = sub_1A9499DC8;
  v12[3] = &unk_1F1CED810;
  v11 = _Block_copy(v12);

  [v8 registerForTaskWithIdentifier:v9 usingQueue:0 launchHandler:v11];
  _Block_release(v11);
}

uint64_t sub_1A94A9EC0(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = aBlock - v9;
  sub_1A957C648();
  v11 = sub_1A957C688();
  (*(*(v11 - 8) + 56))(v10, 0, 1, v11);
  v12 = swift_allocObject();
  swift_weakInit();
  v13 = swift_allocObject();
  v13[2] = 0;
  v13[3] = 0;
  v13[4] = v12;
  v13[5] = a1;
  v13[6] = a3;
  v13[7] = a4;
  v14 = a1;

  v15 = sub_1A938A404(0, 0, v10, &unk_1A9594E70, v13);
  v16 = swift_allocObject();
  v16[2] = v15;
  v16[3] = a2;
  v16[4] = v14;
  aBlock[4] = sub_1A94B723C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1A93C80E8;
  aBlock[3] = &unk_1F1CF9850;
  v17 = _Block_copy(aBlock);
  v18 = v14;

  [v18 setExpirationHandler_];
  _Block_release(v17);
}

uint64_t sub_1A94AA0EC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v7[121] = a7;
  v7[120] = a6;
  v7[119] = a5;
  v7[118] = a4;
  v8 = sub_1A957B078();
  v7[122] = v8;
  v7[123] = *(v8 - 8);
  v7[124] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1A94AA1B8, 0, 0);
}

uint64_t sub_1A94AA1B8()
{
  v53 = v0;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  *(v0 + 1000) = Strong;
  if (Strong)
  {
    v2 = Strong;
    v3 = *(Strong + 16);
    v4 = [*(v0 + 952) identifier];
    v5 = sub_1A957C0F8();
    v7 = v6;

    v8 = (*(*v3 + 200))();
    if (*(v8 + 16))
    {
      v9 = sub_1A937A490(v5, v7);
      v11 = v10;

      if (v11)
      {
        v12 = *(v0 + 992);
        v13 = *(v0 + 984);
        v14 = *(v0 + 976);
        v15 = *(v8 + 56) + 88 * v9;
        v16 = *(v15 + 16);
        *(v0 + 16) = *v15;
        *(v0 + 32) = v16;
        v18 = *(v15 + 48);
        v17 = *(v15 + 64);
        v19 = *(v15 + 32);
        *(v0 + 96) = *(v15 + 80);
        *(v0 + 64) = v18;
        *(v0 + 80) = v17;
        *(v0 + 48) = v19;
        sub_1A94B49FC(v0 + 16, v0 + 104);

        sub_1A957B068();
        sub_1A957B048();
        *(v0 + 1008) = v20;
        v21 = *(v13 + 8);
        *(v0 + 1016) = v21;
        *(v0 + 1024) = (v13 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
        v21(v12, v14);
        if (qword_1EB3892A0 != -1)
        {
          swift_once();
        }

        v22 = sub_1A957BC88();
        *(v0 + 1032) = sub_1A937731C(v22, qword_1EB3892A8);
        sub_1A94B49FC(v0 + 16, v0 + 192);
        v23 = sub_1A957BC68();
        v24 = sub_1A957CA58();
        sub_1A94B4A34(v0 + 16);
        if (os_log_type_enabled(v23, v24))
        {
          v25 = swift_slowAlloc();
          v26 = swift_slowAlloc();
          v52 = v26;
          *v25 = 136315138;
          v27 = *(v0 + 16);
          v28 = *(v0 + 24);
          sub_1A94B2E68(v0 + 16, v0 + 776);
          v29 = sub_1A937A5C0(v27, v28, &v52);
          sub_1A93F03AC(v0 + 16);
          *(v25 + 4) = v29;
          _os_log_impl(&dword_1A9324000, v23, v24, "Executing task handler for %s", v25, 0xCu);
          sub_1A9378138(v26);
          MEMORY[0x1AC587CD0](v26, -1, -1);
          MEMORY[0x1AC587CD0](v25, -1, -1);
        }

        v30 = *(v0 + 960);
        v31 = *(v0 + 16);
        v32 = *(v0 + 24);
        *(v0 + 1040) = v31;
        *(v0 + 1048) = v32;
        v33 = *(*v2 + 112);
        v34 = *v2 + 112;
        *(v0 + 1056) = v33;
        *(v0 + 1064) = v34 & 0xFFFFFFFFFFFFLL | 0x1662000000000000;
        sub_1A94B2E68(v0 + 16, v0 + 456);
        v33(2, v31, v32);
        sub_1A93F03AC(v0 + 16);
        v51 = (v30 + *v30);
        v35 = swift_task_alloc();
        *(v0 + 1072) = v35;
        *v35 = v0;
        v35[1] = sub_1A94AA740;

        return v51();
      }
    }

    else
    {
    }

    if (qword_1EB3892A0 != -1)
    {
      swift_once();
    }

    v37 = *(v0 + 952);
    v38 = sub_1A957BC88();
    sub_1A937731C(v38, qword_1EB3892A8);
    v39 = v37;
    v40 = sub_1A957BC68();
    v41 = sub_1A957CA78();

    if (os_log_type_enabled(v40, v41))
    {
      v42 = *(v0 + 952);
      v43 = swift_slowAlloc();
      v44 = swift_slowAlloc();
      v52 = v44;
      *v43 = 136315138;
      v45 = [v42 identifier];
      v46 = sub_1A957C0F8();
      v48 = v47;

      v49 = sub_1A937A5C0(v46, v48, &v52);

      *(v43 + 4) = v49;
      _os_log_impl(&dword_1A9324000, v40, v41, "Couldn't find task with ID: %s", v43, 0xCu);
      sub_1A9378138(v44);
      MEMORY[0x1AC587CD0](v44, -1, -1);
      MEMORY[0x1AC587CD0](v43, -1, -1);
    }

    [*(v0 + 952) setTaskCompleted];
  }

  v50 = *(v0 + 8);

  return v50();
}

uint64_t sub_1A94AA740()
{
  *(*v1 + 1080) = v0;

  if (v0)
  {
    v2 = sub_1A94AAA70;
  }

  else
  {
    v2 = sub_1A94AA854;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1A94AA854()
{
  v20 = v0;
  [*(v0 + 952) setTaskCompleted];
  sub_1A94B49FC(v0 + 16, v0 + 368);
  v1 = sub_1A957BC68();
  v2 = sub_1A957CA58();
  sub_1A94B4A34(v0 + 16);
  if (os_log_type_enabled(v1, v2))
  {
    v3 = *(v0 + 1048);
    v4 = *(v0 + 1040);
    v5 = *(v0 + 1016);
    v6 = *(v0 + 1008);
    v7 = *(v0 + 992);
    v8 = *(v0 + 976);
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    v19 = v10;
    *v9 = 136315394;
    sub_1A94B2E68(v0 + 16, v0 + 696);
    v11 = sub_1A937A5C0(v4, v3, &v19);
    sub_1A93F03AC(v0 + 16);
    *(v9 + 4) = v11;
    *(v9 + 12) = 2048;
    sub_1A957B068();
    sub_1A957B048();
    v13 = v12;
    v5(v7, v8);
    *(v9 + 14) = v13 - v6;
    _os_log_impl(&dword_1A9324000, v1, v2, "Finished executing task for %s in %fs", v9, 0x16u);
    sub_1A9378138(v10);
    MEMORY[0x1AC587CD0](v10, -1, -1);
    MEMORY[0x1AC587CD0](v9, -1, -1);
  }

  v14 = *(v0 + 1056);
  v15 = *(v0 + 1048);
  v16 = *(v0 + 1040);
  sub_1A94B2E68(v0 + 16, v0 + 616);
  sub_1A94B4A34(v0 + 16);
  v14(3, v16, v15);

  sub_1A93F03AC(v0 + 16);

  v17 = *(v0 + 8);

  return v17();
}

uint64_t sub_1A94AAA70()
{
  v31 = v0;
  v1 = *(v0 + 1080);
  sub_1A94B49FC(v0 + 16, v0 + 280);
  v2 = v1;
  v3 = sub_1A957BC68();
  v4 = sub_1A957CA78();
  sub_1A94B4A34(v0 + 16);

  if (os_log_type_enabled(v3, v4))
  {
    v5 = *(v0 + 1048);
    v6 = *(v0 + 1040);
    v28 = *(v0 + 1016);
    v29 = *(v0 + 1024);
    v7 = *(v0 + 1008);
    v8 = *(v0 + 992);
    v9 = *(v0 + 976);
    v10 = swift_slowAlloc();
    v11 = swift_slowAlloc();
    v30 = v11;
    *v10 = 136315650;
    sub_1A94B2E68(v0 + 16, v0 + 536);
    sub_1A94B4A34(v0 + 16);
    v12 = sub_1A937A5C0(v6, v5, &v30);
    sub_1A93F03AC(v0 + 16);
    *(v10 + 4) = v12;
    *(v10 + 12) = 2080;
    swift_getErrorValue();
    v13 = sub_1A957D478();
    v15 = sub_1A937A5C0(v13, v14, &v30);

    *(v10 + 14) = v15;
    *(v10 + 22) = 2048;
    sub_1A957B068();
    sub_1A957B048();
    v17 = v16;
    v28(v8, v9);
    *(v10 + 24) = v17 - v7;
    _os_log_impl(&dword_1A9324000, v3, v4, "Task handler for %s threw %s after %fs", v10, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v11, -1, -1);
    MEMORY[0x1AC587CD0](v10, -1, -1);
  }

  else
  {

    sub_1A94B4A34(v0 + 16);
  }

  v18 = *(v0 + 1080);
  v19 = *(v0 + 952);
  v20 = [v19 identifier];
  v21 = sub_1A957C0F8();
  v23 = v22;

  swift_getErrorValue();
  v24 = sub_1A957D478();
  sub_1A94AB160(v21, v23, v24, v25, v19);

  v26 = *(v0 + 8);

  return v26();
}

uint64_t sub_1A94AAD4C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = sub_1A937829C(&qword_1EB388000, &qword_1A9587710);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v7 = &v12 - v6;
  sub_1A957C748();
  v8 = sub_1A957C688();
  (*(*(v8 - 8) + 56))(v7, 1, 1, v8);
  v9 = swift_allocObject();
  v9[2] = 0;
  v9[3] = 0;
  v9[4] = a2;
  v9[5] = a3;

  v10 = a3;
  sub_1A938A404(0, 0, v7, &unk_1A9594E80, v9);
}

uint64_t sub_1A94AAE88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  *(v5 + 16) = a4;
  *(v5 + 24) = a5;
  return MEMORY[0x1EEE6DFA0](sub_1A94AAEA8, 0, 0);
}

uint64_t sub_1A94AAEA8()
{
  v1 = *(v0 + 24);
  v2 = [v1 identifier];
  v3 = sub_1A957C0F8();
  v5 = v4;

  sub_1A94AB160(v3, v5, 0xD000000000000016, 0x80000001A95C3F80, v1);

  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1A94AAF70(__int128 *a1)
{
  v2 = v1;
  v3 = a1[1];
  v26 = *a1;
  v27 = v3;
  v4 = a1[3];
  v28 = a1[2];
  v29[0] = v4;
  *(v29 + 9) = *(a1 + 57);
  v5 = *(v1 + 16);
  v6 = v26;
  v7 = *(*v5 + 200);
  v8 = sub_1A94B2E68(&v26, v22);
  v9 = v7(v8);
  if (*(v9 + 16) && (v10 = sub_1A937A490(v6, *(&v6 + 1)), (v11 & 1) != 0))
  {
    v12 = *(*(v9 + 56) + 88 * v10 + 72);

    if ((v12 & 1) == 0)
    {
      return sub_1A93F03AC(&v26);
    }
  }

  else
  {
  }

  *v23 = v29[0];
  *&v23[9] = *(v29 + 9);
  v22[1] = v27;
  v22[2] = v28;
  v22[0] = v26;
  v24 = 0;
  v25 = MEMORY[0x1E69E7CC0];
  v14 = *(*v5 + 216);
  sub_1A94B2E68(&v26, v21);
  v15 = v14(v21);
  v17 = v16;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v20 = *v17;
  *v17 = 0x8000000000000000;
  sub_1A94B2EC4(v22, v6, *(&v6 + 1), isUniquelyReferenced_nonNull_native);
  sub_1A93F03AC(&v26);
  *v17 = v20;
  v19 = v15(v21, 0);
  return (*(*v2 + 104))(v19);
}

uint64_t sub_1A94AB160(uint64_t a1, unint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v6 = v5;
  v66 = *MEMORY[0x1E69E9840];
  if (qword_1EB3892A0 != -1)
  {
    swift_once();
  }

  v11 = sub_1A957BC88();
  sub_1A937731C(v11, qword_1EB3892A8);

  v12 = sub_1A957BC68();
  v13 = sub_1A957CA78();

  if (os_log_type_enabled(v12, v13))
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    *&v60 = v15;
    *v14 = 136315394;
    *(v14 + 4) = sub_1A937A5C0(a1, a2, &v60);
    *(v14 + 12) = 2080;
    *(v14 + 14) = sub_1A937A5C0(a3, a4, &v60);
    _os_log_impl(&dword_1A9324000, v12, v13, "Task with id: %s failed with reason: %s", v14, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v15, -1, -1);
    MEMORY[0x1AC587CD0](v14, -1, -1);
  }

  v16 = *(v6 + 16);
  v17 = (*(*v16 + 216))(&v60);
  v19 = sub_1A94A9674(v59, a1, a2);
  if (*(v18 + 8))
  {
    v20 = v18;
    v21 = *(v18 + 80);

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    *(v20 + 80) = v21;
    if ((isUniquelyReferenced_nonNull_native & 1) == 0)
    {
      v21 = sub_1A93AC2AC(0, *(v21 + 2) + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    v24 = *(v21 + 2);
    v23 = *(v21 + 3);
    if (v24 >= v23 >> 1)
    {
      v21 = sub_1A93AC2AC((v23 > 1), v24 + 1, 1, v21);
      *(v20 + 80) = v21;
    }

    *(v21 + 2) = v24 + 1;
    v25 = &v21[16 * v24];
    *(v25 + 4) = a3;
    *(v25 + 5) = a4;
    (v19)(v59, 0);
    v26 = v17(&v60, 0);
  }

  else
  {
    (v19)(v59, 0);
    v26 = v17(&v60, 0);
  }

  v27 = (*(*v16 + 200))(v26);
  if (!*(v27 + 16))
  {
  }

  v28 = sub_1A937A490(a1, a2);
  if ((v29 & 1) == 0)
  {
  }

  v30 = *(v27 + 56) + 88 * v28;
  v31 = *(v30 + 16);
  v60 = *v30;
  v61 = v31;
  v33 = *(v30 + 48);
  v32 = *(v30 + 64);
  v34 = *(v30 + 32);
  v65 = *(v30 + 80);
  v63 = v33;
  v64 = v32;
  v62 = v34;
  sub_1A94B49FC(&v60, v59);

  if ((BYTE1(v64) & 1) == 0)
  {
    v45 = a1;

    v39 = sub_1A957BC68();
    v46 = sub_1A957CA78();

    if (!os_log_type_enabled(v39, v46))
    {
LABEL_24:

      [a5 setTaskCompleted];
      return sub_1A94B4A34(&v60);
    }

    v47 = swift_slowAlloc();
    v48 = swift_slowAlloc();
    v59[0] = v48;
    *v47 = 136315138;
    *(v47 + 4) = sub_1A937A5C0(v45, a2, v59);
    _os_log_impl(&dword_1A9324000, v39, v46, "Task with id: %s is periodic and failed.", v47, 0xCu);
    sub_1A9378138(v48);
    MEMORY[0x1AC587CD0](v48, -1, -1);
    v43 = v47;
LABEL_23:
    MEMORY[0x1AC587CD0](v43, -1, -1);
    goto LABEL_24;
  }

  if (v63 != 255)
  {
    v35 = *(&v61 + 1);
    v36 = v65;
    v37 = *(v65 + 16);
    if ((v64 & 1) != 0 || v37 < *(&v63 + 1))
    {
      if ((v63 & 1) != 0 && v37)
      {
        do
        {
          if (!v37)
          {
            __break(1u);
          }

          if (*(&v62 + 1) >= *&v62 * v35)
          {
            v35 = *&v62 * v35;
          }

          else
          {
            v35 = *(&v62 + 1);
          }
        }

        while (v35 != *(&v62 + 1) && v37-- != 1);
      }

      v50 = a1;

      sub_1A94B49FC(&v60, v59);
      v51 = sub_1A957BC68();
      v52 = sub_1A957CA58();

      if (os_log_type_enabled(v51, v52))
      {
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v59[0] = v54;
        *v53 = 136315650;
        *(v53 + 4) = sub_1A937A5C0(v50, a2, v59);
        *(v53 + 12) = 2048;
        *(v53 + 14) = v35;
        *(v53 + 22) = 2048;
        *(v53 + 24) = *(v36 + 16);
        sub_1A94B4A34(&v60);
        _os_log_impl(&dword_1A9324000, v51, v52, "Task with id: %s expired with retry delay %f after %ld attempts", v53, 0x20u);
        sub_1A9378138(v54);
        MEMORY[0x1AC587CD0](v54, -1, -1);
        MEMORY[0x1AC587CD0](v53, -1, -1);
      }

      else
      {
        sub_1A94B4A34(&v60);
      }

      if (a5)
      {
        v59[0] = 0;
        if ([a5 setTaskExpiredWithRetryAfter:v59 error:v35])
        {
          v55 = v59[0];
        }

        else
        {
          v56 = v59[0];
          v57 = sub_1A957AEF8();

          swift_willThrow();
        }
      }

      return sub_1A94B4A34(&v60);
    }

    v38 = a1;

    sub_1A94B49FC(&v60, v59);
    v39 = sub_1A957BC68();
    v40 = sub_1A957CA58();

    if (!os_log_type_enabled(v39, v40))
    {
      sub_1A94B4A34(&v60);
      goto LABEL_24;
    }

    v41 = swift_slowAlloc();
    v42 = swift_slowAlloc();
    v59[0] = v42;
    *v41 = 136315394;
    *(v41 + 4) = sub_1A937A5C0(v38, a2, v59);
    *(v41 + 12) = 2048;
    *(v41 + 14) = *(v36 + 16);
    sub_1A94B4A34(&v60);
    _os_log_impl(&dword_1A9324000, v39, v40, "Task with id: %s failed after %ld attempts", v41, 0x16u);
    sub_1A9378138(v42);
    MEMORY[0x1AC587CD0](v42, -1, -1);
    v43 = v41;
    goto LABEL_23;
  }

  return sub_1A94B4A34(&v60);
}

void sub_1A94AB8B4(uint64_t a1, double a2)
{
  v45[4] = *MEMORY[0x1E69E9840];
  v3 = *a1;
  v4 = *(a1 + 8);
  v5 = *(a1 + 68);
  v6 = objc_opt_self();
  v7 = [v6 sharedScheduler];
  v8 = sub_1A957C0C8();
  v9 = [v7 taskRequestForIdentifier_];

  if (v9)
  {

    v10 = [v6 sharedScheduler];
    v11 = sub_1A957C0C8();
    v45[0] = 0;
    v12 = [v10 cancelTaskRequestWithIdentifier:v11 error:v45];

    if (v12)
    {
      v13 = v45[0];
    }

    else
    {
      v14 = v45[0];
      v15 = sub_1A957AEF8();

      swift_willThrow();
    }
  }

  if (qword_1EB3892A0 != -1)
  {
    swift_once();
  }

  v16 = sub_1A957BC88();
  sub_1A937731C(v16, qword_1EB3892A8);

  v17 = sub_1A957BC68();
  v18 = sub_1A957CA58();

  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v45[0] = v20;
    *v19 = 136315138;
    *(v19 + 4) = sub_1A937A5C0(v3, v4, v45);
    _os_log_impl(&dword_1A9324000, v17, v18, "Scheduling task handler for %s", v19, 0xCu);
    sub_1A9378138(v20);
    MEMORY[0x1AC587CD0](v20, -1, -1);
    MEMORY[0x1AC587CD0](v19, -1, -1);
  }

  v21 = objc_allocWithZone(MEMORY[0x1E698E480]);
  v22 = sub_1A957C0C8();
  v23 = [v21 initWithIdentifier_];

  v24 = v23;
  [v24 setPriority_];
  if (a2 > 0.0)
  {
    [v24 setScheduleAfter_];
  }

  [v24 setTrySchedulingBefore_];
  LODWORD(v45[0]) = *sub_1A953C318();
  LODWORD(v44[0]) = v5;
  sub_1A93F079C();
  if (sub_1A957CD88())
  {
    v25 = 4;
  }

  else
  {
    v25 = 5;
  }

  [v24 setRequiresProtectionClass_];
  LODWORD(v45[0]) = *sub_1A953C330();
  LODWORD(v44[0]) = v5;
  [v24 setRequiresNetworkConnectivity_];
  [v24 setRandomInitialDelay_];

  v26 = [v6 sharedScheduler];
  v45[0] = 0;
  v27 = [v26 submitTaskRequest:v24 error:v45];

  if (v27)
  {
    v28 = *(**(v43 + 16) + 216);
    v29 = v45[0];
    v30 = v28(v45);
    v32 = sub_1A94A9674(v44, v3, v4);
    if (*(v31 + 8))
    {
      *(v31 + 73) = 1;
    }

    (v32)(v44, 0);
    v30(v45, 0);
    goto LABEL_20;
  }

  v33 = v45[0];
  v34 = sub_1A957AEF8();

  swift_willThrow();

  v35 = v34;
  v36 = sub_1A957BC68();
  v37 = sub_1A957CA78();

  if (os_log_type_enabled(v36, v37))
  {
    v38 = swift_slowAlloc();
    v39 = swift_slowAlloc();
    v45[0] = v39;
    *v38 = 136315394;
    *(v38 + 4) = sub_1A937A5C0(v3, v4, v45);
    *(v38 + 12) = 2080;
    swift_getErrorValue();
    v40 = sub_1A957D478();
    v42 = sub_1A937A5C0(v40, v41, v45);

    *(v38 + 14) = v42;
    _os_log_impl(&dword_1A9324000, v36, v37, "Failed schedule task %s: %s", v38, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1AC587CD0](v39, -1, -1);
    MEMORY[0x1AC587CD0](v38, -1, -1);

LABEL_20:
    return;
  }
}

uint64_t TTSTaskRunner.TaskConfiguration.identifier.getter()
{
  v1 = *v0;

  return v1;
}

__n128 TTSTaskRunner.TaskConfiguration.type.getter@<Q0>(uint64_t a1@<X8>)
{
  v2 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v2;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = *(v1 + 64);
  return result;
}

__n128 TTSTaskRunner.TaskConfiguration.init(identifier:type:requiredConditions:cardinality:)@<Q0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int *a4@<X3>, char *a5@<X4>, uint64_t a6@<X8>)
{
  v6 = *a4;
  v7 = *a5;
  *a6 = a1;
  *(a6 + 8) = a2;
  v8 = *(a3 + 16);
  *(a6 + 16) = *a3;
  *(a6 + 32) = v8;
  result = *(a3 + 32);
  *(a6 + 48) = result;
  *(a6 + 64) = *(a3 + 48);
  *(a6 + 68) = v6;
  *(a6 + 72) = v7;
  return result;
}

uint64_t sub_1A94ABF34()
{
  if (*v0)
  {
    return 0x656C7069746C756DLL;
  }

  else
  {
    return 1701015151;
  }
}

uint64_t sub_1A94ABF68@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 1701015151 && a2 == 0xE400000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x656C7069746C756DLL && a2 == 0xE800000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AC044(uint64_t a1)
{
  v2 = sub_1A94B3064();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC080(uint64_t a1)
{
  v2 = sub_1A94B3064();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AC0BC(uint64_t a1)
{
  v2 = sub_1A94B30B8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC0F8(uint64_t a1)
{
  v2 = sub_1A94B30B8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AC134(uint64_t a1)
{
  v2 = sub_1A94B310C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AC170(uint64_t a1)
{
  v2 = sub_1A94B310C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D00, &qword_1A9593500);
  v19 = *(v3 - 8);
  v20 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v18 = &v16 - v4;
  v5 = sub_1A937829C(&qword_1EB387D08, &qword_1A9593508);
  v16 = *(v5 - 8);
  v17 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v16 - v6;
  v8 = sub_1A937829C(&qword_1EB387D10, &qword_1A9593510);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v16 - v10;
  v12 = *v1;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3064();
  sub_1A957D598();
  v13 = (v9 + 8);
  if (v12)
  {
    v22 = 1;
    sub_1A94B30B8();
    v14 = v18;
    sub_1A957D288();
    (*(v19 + 8))(v14, v20);
  }

  else
  {
    v21 = 0;
    sub_1A94B310C();
    sub_1A957D288();
    (*(v16 + 8))(v7, v17);
  }

  return (*v13)(v11, v8);
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t TTSTaskRunner.TaskConfiguration.Cardinality.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v30 = a2;
  v3 = sub_1A937829C(&qword_1EB387D18, &qword_1A9593518);
  v4 = *(v3 - 8);
  v27 = v3;
  v28 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v24 - v5;
  v7 = sub_1A937829C(&qword_1EB387D20, &qword_1A9593520);
  v26 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v24 - v8;
  v10 = sub_1A937829C(&qword_1EB387D28, &unk_1A9593528);
  v29 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v24 - v11;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3064();
  v13 = v31;
  sub_1A957D588();
  if (v13)
  {
    goto LABEL_7;
  }

  v25 = v7;
  v31 = a1;
  v15 = v29;
  v14 = v30;
  v16 = v12;
  v17 = sub_1A957D268();
  if (*(v17 + 16) != 1)
  {
    v19 = sub_1A957CF58();
    swift_allocError();
    v21 = v20;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v21 = &type metadata for TTSTaskRunner.TaskConfiguration.Cardinality;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v19 - 8) + 104))(v21, *MEMORY[0x1E69E6AF8], v19);
    swift_willThrow();
    (*(v15 + 8))(v16, v10);
    swift_unknownObjectRelease();
    a1 = v31;
LABEL_7:
    v22 = a1;
    return sub_1A9378138(v22);
  }

  v24 = v17;
  v18 = *(v17 + 32);
  if (v18)
  {
    v33 = 1;
    sub_1A94B30B8();
    sub_1A957D178();
    (*(v28 + 8))(v6, v27);
  }

  else
  {
    v32 = 0;
    sub_1A94B310C();
    sub_1A957D178();
    (*(v26 + 8))(v9, v25);
  }

  (*(v15 + 8))(v16, v10);
  swift_unknownObjectRelease();
  *v14 = v18;
  v22 = v31;
  return sub_1A9378138(v22);
}

double static TTSTaskRunner.TaskConfiguration.TaskType.immediate.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *&result = 255;
  *(a1 + 32) = xmmword_1A95913D0;
  *(a1 + 48) = 256;
  return result;
}

double static TTSTaskRunner.TaskConfiguration.TaskType.immediateWithStandardRetry.getter@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0;
  *(a1 + 8) = xmmword_1A95934D0;
  result = 3600.0;
  *(a1 + 24) = xmmword_1A95934E0;
  *(a1 + 40) = 5;
  *(a1 + 48) = 256;
  return result;
}

uint64_t sub_1A94AC9B4()
{
  if (*v0)
  {
    return 0x79616C6564;
  }

  else
  {
    return 0x6369646F69726570;
  }
}

uint64_t sub_1A94AC9EC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x6369646F69726570 && a2 == 0xE800000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x79616C6564 && a2 == 0xE500000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94ACAC4(uint64_t a1)
{
  v2 = sub_1A94B3160();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACB00(uint64_t a1)
{
  v2 = sub_1A94B3160();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94ACB3C()
{
  if (*v0)
  {
    return 12639;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A94ACB58@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 12639 && a2 == 0xE200000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94ACC24(uint64_t a1)
{
  v2 = sub_1A94B31B4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACC60(uint64_t a1)
{
  v2 = sub_1A94B31B4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94ACC9C(uint64_t a1)
{
  v2 = sub_1A94B325C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94ACCD8(uint64_t a1)
{
  v2 = sub_1A94B325C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.TaskType.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D30, &qword_1A9593538);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v23 = &v17[-v4];
  v5 = sub_1A937829C(&qword_1EB387D38, &qword_1A9593540);
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17[-v6];
  v27 = sub_1A937829C(&qword_1EB387D40, &qword_1A9593548);
  v8 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v10 = &v17[-v9];
  v11 = *(v1 + 8);
  v20 = *(v1 + 24);
  v21 = v11;
  v19 = *(v1 + 40);
  v18 = *(v1 + 48);
  v12 = *(v1 + 49);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3160();
  sub_1A957D598();
  if (v12)
  {
    LOBYTE(v29) = 1;
    sub_1A94B31B4();
    v7 = v23;
    v13 = v27;
    sub_1A957D288();
    LOBYTE(v29) = 0;
    v5 = v25;
    v14 = v26;
    sub_1A957D308();
    if (v14)
    {
      (*(v24 + 8))(v7, v5);
      return (*(v8 + 8))(v10, v13);
    }

    v29 = v21;
    v30 = v20;
    v31 = v19;
    v32 = v18;
    v28 = 1;
    sub_1A94B3208();
    sub_1A957D338();
    v16 = v24;
  }

  else
  {
    LOBYTE(v29) = 0;
    sub_1A94B325C();
    v13 = v27;
    sub_1A957D288();
    sub_1A957D308();
    v16 = v22;
  }

  (*(v16 + 8))(v7, v5);
  return (*(v8 + 8))(v10, v13);
}

uint64_t TTSTaskRunner.TaskConfiguration.TaskType.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v47 = a2;
  v3 = sub_1A937829C(&qword_1EB387D48, &qword_1A9593550);
  v4 = *(v3 - 8);
  v45 = v3;
  v46 = v4;
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v43 - v5;
  v7 = sub_1A937829C(&qword_1EB387D50, &qword_1A9593558);
  v44 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v43 - v8;
  v10 = sub_1A937829C(&qword_1EB387D58, &qword_1A9593560);
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v43 - v12;
  v14 = a1[3];
  v49 = a1;
  sub_1A93780F4(a1, v14);
  sub_1A94B3160();
  v15 = v48;
  sub_1A957D588();
  if (!v15)
  {
    v48 = v11;
    v16 = v47;
    v17 = sub_1A957D268();
    v18 = v10;
    if (*(v17 + 16) == 1)
    {
      v19 = v13;
      if (*(v17 + 32))
      {
        LOBYTE(v52) = 1;
        sub_1A94B31B4();
        v20 = v6;
        v21 = v19;
        v22 = v18;
        sub_1A957D178();
        v30 = v16;
        LOBYTE(v52) = 0;
        v31 = v45;
        v32 = v20;
        sub_1A957D208();
        v33 = v48;
        v36 = v35;
        v37 = 1;
        v51 = 1;
        sub_1A94B32B0();
        sub_1A957D238();
        (*(v46 + 8))(v32, v31);
        (*(v33 + 8))(v21, v22);
        swift_unknownObjectRelease();
        v39 = v52;
        v40 = v53;
        v41 = v54;
        v42 = v55;
        v50 = 1;
      }

      else
      {
        LOBYTE(v52) = 0;
        sub_1A94B325C();
        v26 = v9;
        v27 = v13;
        v28 = v18;
        sub_1A957D178();
        v30 = v16;
        sub_1A957D208();
        v34 = (v48 + 8);
        v36 = v38;
        (*(v44 + 8))(v26, v7);
        (*v34)(v27, v28);
        swift_unknownObjectRelease();
        v37 = 0;
      }

      *v30 = v36;
      *(v30 + 8) = v39;
      *(v30 + 24) = v40;
      *(v30 + 40) = v41;
      *(v30 + 48) = v42;
      *(v30 + 49) = v37;
    }

    else
    {
      v23 = sub_1A957CF58();
      swift_allocError();
      v25 = v24;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v25 = &type metadata for TTSTaskRunner.TaskConfiguration.TaskType;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v23 - 8) + 104))(v25, *MEMORY[0x1E69E6AF8], v23);
      swift_willThrow();
      (*(v48 + 8))(v13, v10);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v49);
}

uint64_t sub_1A94AD6D4()
{
  if (*v0)
  {
    return 0x746E656E6F707865;
  }

  else
  {
    return 0x7261656E696CLL;
  }
}

uint64_t sub_1A94AD714@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7261656E696CLL && a2 == 0xE600000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x746E656E6F707865 && a2 == 0xEB000000006C6169)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AD7F0(uint64_t a1)
{
  v2 = sub_1A94B3304();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD82C(uint64_t a1)
{
  v2 = sub_1A94B3304();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AD868()
{
  v1 = 0x696C7069746C756DLL;
  if (*v0 != 1)
  {
    v1 = 7889261;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x7472617473;
  }
}

uint64_t sub_1A94AD8BC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94B3D10(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A94AD8E4(uint64_t a1)
{
  v2 = sub_1A94B3358();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD920(uint64_t a1)
{
  v2 = sub_1A94B3358();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AD95C(uint64_t a1)
{
  v2 = sub_1A94B33AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AD998(uint64_t a1)
{
  v2 = sub_1A94B33AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D60, &qword_1A9593568);
  v22 = *(v3 - 8);
  v23 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v21 = &v18 - v4;
  v5 = sub_1A937829C(&qword_1EB387D68, &qword_1A9593570);
  v19 = *(v5 - 8);
  v20 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v18 - v6;
  v8 = sub_1A937829C(&qword_1EB387D70, &qword_1A9593578);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v18 - v10;
  v12 = *(v1 + 24);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3304();
  sub_1A957D598();
  if (v12)
  {
    v29 = 1;
    sub_1A94B3358();
    v13 = v21;
    sub_1A957D288();
    v28 = 0;
    v15 = v23;
    v14 = v24;
    sub_1A957D308();
    if (v14)
    {
      (*(v22 + 8))(v13, v15);
      return (*(v9 + 8))(v11, v8);
    }

    v27 = 1;
    sub_1A957D308();
    v26 = 2;
    sub_1A957D308();
    (*(v22 + 8))(v13, v15);
  }

  else
  {
    v25 = 0;
    sub_1A94B33AC();
    sub_1A957D288();
    v17 = v20;
    sub_1A957D308();
    (*(v19 + 8))(v7, v17);
  }

  return (*(v9 + 8))(v11, v8);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v40 = a2;
  v37 = sub_1A937829C(&qword_1EB387D78, &qword_1A9593580);
  v39 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v4 = &v35 - v3;
  v5 = sub_1A937829C(&qword_1EB387D80, &qword_1A9593588);
  *&v38 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v35 - v6;
  v8 = sub_1A937829C(&qword_1EB387D88, &qword_1A9593590);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v35 - v10;
  v12 = a1[3];
  v42 = a1;
  sub_1A93780F4(a1, v12);
  sub_1A94B3304();
  v13 = v41;
  sub_1A957D588();
  if (!v13)
  {
    v14 = v5;
    v15 = v40;
    v41 = v9;
    v16 = sub_1A957D268();
    if (*(v16 + 16) == 1)
    {
      v17 = v11;
      v36 = v16;
      v18 = *(v16 + 32);
      if (v18)
      {
        v47 = 1;
        sub_1A94B3358();
        v19 = v4;
        v20 = v17;
        sub_1A957D178();
        v46 = 0;
        v25 = v37;
        v26 = v19;
        sub_1A957D208();
        v27 = v41;
        v30 = v29;
        v45 = 1;
        sub_1A957D208();
        v31 = v39;
        v38 = v32;
        v44 = 2;
        sub_1A957D208();
        v35 = v33;
        (*(v31 + 8))(v26, v25);
        (*(v27 + 8))(v20, v8);
        swift_unknownObjectRelease();
        *&v34 = v38;
        *(&v34 + 1) = v35;
      }

      else
      {
        v43 = 0;
        sub_1A94B33AC();
        sub_1A957D178();
        sub_1A957D208();
        v30 = v28;
        (*(v38 + 8))(v7, v14);
        (*(v41 + 8))(v11, v8);
        swift_unknownObjectRelease();
        v34 = 0uLL;
      }

      *v15 = v30;
      *(v15 + 8) = v34;
      *(v15 + 24) = v18;
    }

    else
    {
      v21 = sub_1A957CF58();
      swift_allocError();
      v23 = v22;
      sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
      *v23 = &type metadata for TTSTaskRunner.TaskConfiguration.FailureBehavior.RetryStrategy;
      sub_1A957D188();
      sub_1A957CF48();
      (*(*(v21 - 8) + 104))(v23, *MEMORY[0x1E69E6AF8], v21);
      swift_willThrow();
      (*(v41 + 8))(v11, v8);
      swift_unknownObjectRelease();
    }
  }

  return sub_1A9378138(v42);
}

uint64_t sub_1A94AE30C()
{
  if (*v0)
  {
    return 1818845542;
  }

  else
  {
    return 0x7972746572;
  }
}

uint64_t sub_1A94AE33C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v6 = a1 == 0x7972746572 && a2 == 0xE500000000000000;
  if (v6 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 1818845542 && a2 == 0xE400000000000000)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AE414(uint64_t a1)
{
  v2 = sub_1A94B3400();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE450(uint64_t a1)
{
  v2 = sub_1A94B3400();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AE48C(uint64_t a1)
{
  v2 = sub_1A94B3454();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE4C8(uint64_t a1)
{
  v2 = sub_1A94B3454();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AE504()
{
  if (*v0)
  {
    return 0x6D6574744178616DLL;
  }

  else
  {
    return 12383;
  }
}

uint64_t sub_1A94AE53C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v5 = a1 == 12383 && a2 == 0xE200000000000000;
  if (v5 || (sub_1A957D3E8() & 1) != 0)
  {

    v8 = 0;
  }

  else if (a1 == 0x6D6574744178616DLL && a2 == 0xEB00000000737470)
  {

    v8 = 1;
  }

  else
  {
    v9 = sub_1A957D3E8();

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

uint64_t sub_1A94AE614(uint64_t a1)
{
  v2 = sub_1A94B34A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AE650(uint64_t a1)
{
  v2 = sub_1A94B34A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.encode(to:)(void *a1)
{
  v3 = sub_1A937829C(&qword_1EB387D90, &qword_1A9593598);
  v24 = *(v3 - 8);
  v25 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v20 - v4;
  v6 = sub_1A937829C(&qword_1EB387D98, &qword_1A95935A0);
  v26 = *(v6 - 8);
  v27 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v20 - v7;
  v28 = sub_1A937829C(&qword_1EB387DA0, &qword_1A95935A8);
  v9 = *(v28 - 8);
  MEMORY[0x1EEE9AC00](v28);
  v11 = &v20 - v10;
  v12 = *v1;
  v22 = v1[1];
  v23 = v12;
  v13 = v1[2];
  v14 = *(v1 + 24);
  v20 = v1[4];
  v21 = v13;
  v34 = *(v1 + 40);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B3400();
  sub_1A957D598();
  if (v14 == 255)
  {
    LOBYTE(v30) = 1;
    sub_1A94B3454();
    v15 = v28;
    sub_1A957D288();
    (*(v24 + 8))(v5, v25);
    return (*(v9 + 8))(v11, v15);
  }

  else
  {
    LOBYTE(v30) = 0;
    sub_1A94B34A8();
    v17 = v28;
    sub_1A957D288();
    v30 = v23;
    v31 = v22;
    v32 = v21;
    v33 = v14 & 1;
    v35 = 0;
    sub_1A94B34FC();
    v18 = v27;
    v19 = v29;
    sub_1A957D338();
    if (!v19)
    {
      LOBYTE(v30) = 1;
      sub_1A957D2A8();
    }

    (*(v26 + 8))(v8, v18);
    return (*(v9 + 8))(v11, v17);
  }
}

uint64_t TTSTaskRunner.TaskConfiguration.FailureBehavior.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v33 = a2;
  *&v30 = sub_1A937829C(&qword_1EB387DA8, &qword_1A95935B0);
  v31 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v4 = &v30 - v3;
  v5 = sub_1A937829C(&qword_1EB387DB0, &qword_1A95935B8);
  v32 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v30 - v6;
  v8 = sub_1A937829C(&qword_1EB387DB8, &qword_1A95935C0);
  v9 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v30 - v10;
  v12 = a1[3];
  v35 = a1;
  sub_1A93780F4(a1, v12);
  sub_1A94B3400();
  v13 = v34;
  sub_1A957D588();
  if (v13)
  {
    return sub_1A9378138(v35);
  }

  v14 = v9;
  v15 = v33;
  v16 = sub_1A957D268();
  v17 = *(v16 + 16);
  v34 = v16;
  if (v17 != 1)
  {
    v24 = sub_1A957CF58();
    swift_allocError();
    v26 = v25;
    sub_1A937829C(&qword_1EB386EE0, &qword_1A9589FC0);
    *v26 = &type metadata for TTSTaskRunner.TaskConfiguration.FailureBehavior;
    sub_1A957D188();
    sub_1A957CF48();
    (*(*(v24 - 8) + 104))(v26, *MEMORY[0x1E69E6AF8], v24);
    swift_willThrow();
    (*(v14 + 8))(v11, v8);
    swift_unknownObjectRelease();
    return sub_1A9378138(v35);
  }

  if (*(v16 + 32))
  {
    LOBYTE(v36) = 1;
    sub_1A94B3454();
    sub_1A957D178();
    v18 = 0;
    (*(v31 + 8))(v4, v30);
    (*(v14 + 8))(v11, v8);
    swift_unknownObjectRelease();
    v19 = 0;
    v20 = 0;
    v21 = 0uLL;
    v22 = 255;
  }

  else
  {
    LOBYTE(v36) = 0;
    sub_1A94B34A8();
    sub_1A957D178();
    v39 = 0;
    sub_1A94B3550();
    sub_1A957D238();
    v31 = v8;
    v30 = v36;
    v19 = v37;
    v27 = v7;
    v22 = v38;
    v39 = 1;
    v18 = sub_1A957D1A8();
    v28 = v27;
    LOBYTE(v27) = v29;
    (*(v32 + 8))(v28, v5);
    (*(v14 + 8))(v11, v31);
    swift_unknownObjectRelease();
    v20 = v27 & 1;
    v21 = v30;
  }

  *v15 = v21;
  *(v15 + 16) = v19;
  *(v15 + 24) = v22;
  *(v15 + 32) = v18;
  *(v15 + 40) = v20;
  return sub_1A9378138(v35);
}

unint64_t sub_1A94AEF84()
{
  v1 = 0x696669746E656469;
  v2 = 0xD000000000000012;
  if (*v0 != 2)
  {
    v2 = 0x6C616E6964726163;
  }

  if (*v0)
  {
    v1 = 1701869940;
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

uint64_t sub_1A94AF008@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94B3E2C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A94AF030(uint64_t a1)
{
  v2 = sub_1A94B35A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF06C(uint64_t a1)
{
  v2 = sub_1A94B35A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t TTSTaskRunner.TaskConfiguration.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = sub_1A937829C(&qword_1EB387DC0, &qword_1A95935C8);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - v6;
  v19 = *(v2 + 68);
  HIDWORD(v13) = *(v2 + 72);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B35A4();
  sub_1A957D598();
  LOBYTE(v15) = 0;
  v8 = v14;
  sub_1A957D2E8();
  if (!v8)
  {
    v9 = v19;
    v10 = BYTE4(v13);
    v11 = *(v2 + 32);
    v15 = *(v2 + 16);
    v16 = v11;
    v17 = *(v2 + 48);
    v18 = *(v2 + 64);
    v20 = 1;
    sub_1A94B35F8();
    sub_1A957D338();
    LODWORD(v15) = v9;
    v20 = 2;
    sub_1A94B364C();
    sub_1A957D338();
    LOBYTE(v15) = v10;
    v20 = 3;
    sub_1A94B36A0();
    sub_1A957D338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t TTSTaskRunner.TaskConfiguration.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v42 = sub_1A937829C(&qword_1EB387DC8, &qword_1A95935D0);
  v5 = *(v42 - 8);
  MEMORY[0x1EEE9AC00](v42);
  v7 = &v19 - v6;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B35A4();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v8 = v5;
  LOBYTE(v24[0]) = 0;
  v9 = v42;
  v10 = sub_1A957D1E8();
  v12 = v11;
  v21 = v10;
  v33 = 1;
  sub_1A94B36F4();
  sub_1A957D238();
  v38 = v34;
  v39 = v35;
  v40 = v36;
  v41 = v37;
  LOBYTE(v22[0]) = 2;
  sub_1A94B3748();
  sub_1A957D238();
  v20 = v24[0];
  v31 = 3;
  sub_1A94B379C();
  sub_1A957D238();
  (*(v8 + 8))(v7, v9);
  v13 = v32;
  v14 = v21;
  *&v22[0] = v21;
  *(&v22[0] + 1) = v12;
  LOWORD(v23[1]) = v41;
  v15 = v40;
  v23[0] = v40;
  v16 = v38;
  v22[1] = v38;
  v22[2] = v39;
  v17 = v20;
  DWORD1(v23[1]) = v20;
  BYTE8(v23[1]) = v32;
  a2[2] = v39;
  a2[3] = v15;
  *a2 = v22[0];
  a2[1] = v16;
  *(a2 + 57) = *(v23 + 9);
  sub_1A94B2E68(v22, v24);
  sub_1A9378138(a1);
  v24[0] = v14;
  v24[1] = v12;
  v25 = v38;
  v26 = v39;
  v27 = v40;
  v28 = v41;
  v29 = v17;
  v30 = v13;
  return sub_1A93F03AC(v24);
}

uint64_t sub_1A94AF624()
{
  v1 = *v0;
  v2 = 0x676E69646E6570;
  v3 = 0x676E696E6E7572;
  v4 = 0x6574656C706D6F63;
  if (v1 != 3)
  {
    v4 = 0x64656C696166;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x656C756465686373;
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

uint64_t sub_1A94AF6C4@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94B3FA4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A94AF6EC(uint64_t a1)
{
  v2 = sub_1A94B37F0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF728(uint64_t a1)
{
  v2 = sub_1A94B37F0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF764(uint64_t a1)
{
  v2 = sub_1A94B3898();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF7A0(uint64_t a1)
{
  v2 = sub_1A94B3898();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF7DC(uint64_t a1)
{
  v2 = sub_1A94B3844();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF818(uint64_t a1)
{
  v2 = sub_1A94B3844();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF854(uint64_t a1)
{
  v2 = sub_1A94B3994();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF890(uint64_t a1)
{
  v2 = sub_1A94B3994();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF8CC(uint64_t a1)
{
  v2 = sub_1A94B38EC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF908(uint64_t a1)
{
  v2 = sub_1A94B38EC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF944(uint64_t a1)
{
  v2 = sub_1A94B3940();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94AF980(uint64_t a1)
{
  v2 = sub_1A94B3940();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94AF9BC(void *a1, int a2)
{
  v40 = a2;
  v3 = sub_1A937829C(&qword_1EB387DD0, &qword_1A95935D8);
  v36 = *(v3 - 8);
  v37 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v35 = &v29 - v4;
  v5 = sub_1A937829C(&qword_1EB387DD8, &qword_1A95935E0);
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v32 = &v29 - v6;
  v7 = sub_1A937829C(&qword_1EB387DE0, &qword_1A95935E8);
  v30 = *(v7 - 8);
  v31 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v29 = &v29 - v8;
  v9 = sub_1A937829C(&qword_1EB387DE8, &qword_1A95935F0);
  v39 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v29 - v10;
  v12 = sub_1A937829C(&qword_1EB387DF0, &qword_1A95935F8);
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v29 - v13;
  v41 = sub_1A937829C(&qword_1EB387DF8, &qword_1A9593600);
  v15 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v17 = &v29 - v16;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B37F0();
  sub_1A957D598();
  v18 = (v15 + 8);
  if (v40 <= 1u)
  {
    v24 = v38;
    v23 = v39;
    if (v40)
    {
      v43 = 1;
      sub_1A94B3940();
      v28 = v41;
      sub_1A957D288();
      (*(v23 + 8))(v11, v9);
      return (*v18)(v17, v28);
    }

    v42 = 0;
    sub_1A94B3994();
    v25 = v41;
    sub_1A957D288();
    (*(v24 + 8))(v14, v12);
    return (*v18)(v17, v25);
  }

  if (v40 == 2)
  {
    v44 = 2;
    sub_1A94B38EC();
    v26 = v29;
    v25 = v41;
    sub_1A957D288();
    (*(v30 + 8))(v26, v31);
    return (*v18)(v17, v25);
  }

  if (v40 == 3)
  {
    v45 = 3;
    sub_1A94B3898();
    v19 = v32;
    v20 = v41;
    sub_1A957D288();
    v22 = v33;
    v21 = v34;
  }

  else
  {
    v46 = 4;
    sub_1A94B3844();
    v19 = v35;
    v20 = v41;
    sub_1A957D288();
    v22 = v36;
    v21 = v37;
  }

  (*(v22 + 8))(v19, v21);
  return (*v18)(v17, v20);
}

uint64_t sub_1A94AFF30@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_1A94B4160(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A94AFF78()
{
  v1 = 0x6574617473;
  if (*v0 != 1)
  {
    v1 = 0x736572756C696166;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x72756769666E6F63;
  }
}

uint64_t sub_1A94AFFDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1A94B653C(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1A94B0004(uint64_t a1)
{
  v2 = sub_1A94B4858();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1A94B0040(uint64_t a1)
{
  v2 = sub_1A94B4858();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1A94B007C(void *a1)
{
  v4 = sub_1A937829C(&qword_1EB387E00, &unk_1A9593608);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v12 - v6;
  v8 = v1[3];
  v27 = v1[2];
  v28[0] = v8;
  *(v28 + 9) = *(v1 + 57);
  v9 = v1[1];
  v25 = *v1;
  v26 = v9;
  v29 = *(v1 + 73);
  v13 = *(v1 + 10);
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B2E68(&v25, &v21);
  sub_1A94B4858();
  sub_1A957D598();
  v23 = v27;
  v24[0] = v28[0];
  *(v24 + 9) = *(v28 + 9);
  v21 = v25;
  v22 = v26;
  v20 = 0;
  sub_1A94B48AC();
  sub_1A957D338();
  if (v2)
  {
    v18 = v23;
    *v19 = v24[0];
    *&v19[9] = *(v24 + 9);
    v16 = v21;
    v17 = v22;
    sub_1A93F03AC(&v16);
  }

  else
  {
    v10 = v13;
    v18 = v23;
    *v19 = v24[0];
    *&v19[9] = *(v24 + 9);
    v16 = v21;
    v17 = v22;
    sub_1A93F03AC(&v16);
    LOBYTE(v14) = v29;
    v15 = 1;
    sub_1A94B4900();
    sub_1A957D338();
    v14 = v10;
    v15 = 2;
    sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
    sub_1A9442BB0(&qword_1EB385F88, MEMORY[0x1E69E6160], MEMORY[0x1E69E6300]);
    sub_1A957D338();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t sub_1A94B0320@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v37 = sub_1A937829C(&qword_1EB387E08, &unk_1A9593618);
  v5 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v7 = &v17 - v6;
  sub_1A93780F4(a1, a1[3]);
  sub_1A94B4858();
  sub_1A957D588();
  if (v2)
  {
    return sub_1A9378138(a1);
  }

  v8 = v5;
  v28 = 0;
  sub_1A94B4954();
  v9 = v37;
  sub_1A957D238();
  v35 = v31;
  v36[0] = v32[0];
  *(v36 + 9) = *(v32 + 9);
  v33 = v29;
  v34 = v30;
  LOBYTE(v19[0]) = 1;
  sub_1A94B49A8();
  sub_1A957D238();
  v18 = LOBYTE(v22[0]);
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  v26 = 2;
  sub_1A9442BB0(&qword_1EB3863D0, MEMORY[0x1E69E6190], MEMORY[0x1E69E6330]);
  sub_1A957D238();
  (*(v8 + 8))(v7, v9);
  v10 = v27;
  v11 = v35;
  v19[2] = v35;
  v20[0] = v36[0];
  *(v20 + 9) = *(v36 + 9);
  v13 = v33;
  v12 = v34;
  v19[0] = v33;
  v19[1] = v34;
  LOBYTE(v9) = v18;
  BYTE9(v20[1]) = v18;
  v21 = v27;
  *(a2 + 80) = v27;
  *a2 = v13;
  *(a2 + 16) = v12;
  v14 = v20[0];
  v15 = v20[1];
  *(a2 + 32) = v11;
  *(a2 + 48) = v14;
  *(a2 + 64) = v15;
  sub_1A94B49FC(v19, v22);
  sub_1A9378138(a1);
  v22[2] = v35;
  *v23 = v36[0];
  *&v23[9] = *(v36 + 9);
  v22[0] = v33;
  v22[1] = v34;
  v24 = v9;
  v25 = v10;
  return sub_1A94B4A34(v22);
}

uint64_t sub_1A94B0698()
{
  v1 = *(v0 + 24);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B72E4(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94B0714@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 16))
  {
    v5 = *(a1 + 16);
  }

  else
  {
    sub_1A937829C(&qword_1EB387E18, &qword_1A9593630);
    swift_retain_n();
    sub_1A957BA08();
    type metadata accessor for TTSTaskRunner.Store();
    sub_1A94B6DB0(&qword_1EB385FC8, sub_1A94B6D5C, MEMORY[0x1E69E6190], MEMORY[0x1E69E5E58]);
    sub_1A94B6DB0(&qword_1EB385FD0, sub_1A94B6E34, MEMORY[0x1E69E6160], MEMORY[0x1E69E5E38]);
    sub_1A94B66F8(&qword_1EB386170, v6, type metadata accessor for TTSTaskRunner.Store, &unk_1A9593940);
    v5 = sub_1A957B8D8();
    *(a1 + 16) = v5;
  }

  *a2 = v5;
}

unint64_t sub_1A94B0930@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1A94B6E88(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1A94B0988()
{
  (*(*v0 + 184))();
  sub_1A957B8E8();

  return v2;
}

uint64_t sub_1A94B09E8(uint64_t a1)
{
  (*(*v1 + 184))();
  sub_1A957B8F8();
}

void (*sub_1A94B0A4C(void *a1))(uint64_t **a1, char a2)
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
  v3[2] = v1;
  v5 = *(*v1 + 184);
  v6 = (*v1 + 184) & 0xFFFFFFFFFFFFLL | 0x6C48000000000000;
  v3[3] = v5;
  v3[4] = v6;
  v5();
  sub_1A957B8E8();

  *v4 = v4[1];
  return sub_1A93E9B5C;
}

uint64_t sub_1A94B0B08()
{
  v1 = *(v0 + 40);

  os_unfair_lock_lock(v1 + 4);
  sub_1A94B4B04(&v4);
  os_unfair_lock_unlock(v1 + 4);
  v2 = v4;

  return v2;
}

uint64_t sub_1A94B0B84@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1A957B9F8();
  MEMORY[0x1EEE9AC00](v4 - 8);
  if (*(a1 + 32))
  {
    v5 = *(a1 + 32);
  }

  else
  {
    sub_1A937829C(&qword_1EB387E28, &qword_1A9593638);

    sub_1A957BA08();
    type metadata accessor for TTSTaskRunner.Store();
    sub_1A94B6658(&qword_1EB386238, &qword_1EB386368, MEMORY[0x1E6969558], MEMORY[0x1E69E7C88]);
    sub_1A94B6658(&qword_1EB386240, &qword_1EB386370, MEMORY[0x1E6969538], MEMORY[0x1E69E7C70]);
    sub_1A94B66F8(&qword_1EB386170, v6, type metadata accessor for TTSTaskRunner.Store, &unk_1A9593940);
    v5 = sub_1A957B8D8();
    *(a1 + 32) = v5;
  }

  *a2 = v5;
}

uint64_t sub_1A94B0D88@<X0>(uint64_t a1@<X8>)
{
  v2 = sub_1A957B078();
  v3 = *(*(v2 - 8) + 56);

  return v3(a1, 1, 1, v2);
}

uint64_t sub_1A94B0E1C(uint64_t *a1, uint64_t *a2, uint64_t a3)
{

  sub_1A937829C(a1, a2);
  sub_1A957BA88();
}

uint64_t sub_1A94B0E94()
{
  (*(*v1 + 272))();
  sub_1A957B8E8();
}

uint64_t sub_1A94B0F00(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386E78, qword_1A9589E60);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v6 = &v8 - v5;
  (*(*v1 + 272))(v4);
  sub_1A9391BAC(a1, v6, &qword_1EB386E78, qword_1A9589E60);
  sub_1A957B8F8();

  return sub_1A937B960(a1, &qword_1EB386E78, qword_1A9589E60);
}

void (*sub_1A94B0FF8(void *a1))(uint64_t a1, char a2)
{
  v3 = MEMORY[0x1E69E7D08];
  if (MEMORY[0x1E69E7D08])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x30uLL);
  }

  v5 = v4;
  *a1 = v4;
  *v4 = v1;
  v6 = *(*(sub_1A937829C(&qword_1EB386E78, qword_1A9589E60) - 8) + 64);
  if (v3)
  {
    v5[1] = swift_coroFrameAlloc();
    v5[2] = swift_coroFrameAlloc();
    v7 = swift_coroFrameAlloc();
  }

  else
  {
    v5[1] = malloc(v6);
    v5[2] = malloc(v6);
    v7 = malloc(v6);
  }

  v5[3] = v7;
  v8 = (*v1 + 272);
  v9 = *v8;
  v5[4] = *v8;
  v5[5] = v8 & 0xFFFFFFFFFFFFLL | 0x25BB000000000000;
  v9();
  sub_1A957B8E8();

  return sub_1A94B113C;
}

void sub_1A94B113C(uint64_t a1, char a2)
{
  v2 = *a1;
  v3 = *(*a1 + 32);
  v4 = *(*a1 + 16);
  v5 = *(*a1 + 24);
  v6 = *(*a1 + 8);
  if (a2)
  {
    v7 = sub_1A9391BAC(*(*a1 + 24), v4, &qword_1EB386E78, qword_1A9589E60);
    (v3)(v7);
    sub_1A9391BAC(v4, v6, &qword_1EB386E78, qword_1A9589E60);
    sub_1A957B8F8();

    sub_1A937B960(v4, &qword_1EB386E78, qword_1A9589E60);
  }

  else
  {
    v3();
    sub_1A9391BAC(v5, v4, &qword_1EB386E78, qword_1A9589E60);
    sub_1A957B8F8();
  }

  sub_1A937B960(v5, &qword_1EB386E78, qword_1A9589E60);
  free(v5);
  free(v4);
  free(v6);

  free(v2);
}

uint64_t sub_1A94B1268()
{
  v1 = (*(*v0 + 184))();
  v22 = sub_1A937829C(&qword_1EB387E18, &qword_1A9593630);
  v2 = MEMORY[0x1E6988248];
  v23 = sub_1A93B744C(&qword_1EB387E20, &qword_1EB387E18, &qword_1A9593630, MEMORY[0x1E6988248]);
  *&v21 = v1;
  sub_1A93F0F10(&v21, v19);
  v3 = MEMORY[0x1E69E7CC8];
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v18 = v3;
  v5 = sub_1A9396054(v19, v20);
  MEMORY[0x1EEE9AC00](v5);
  v7 = (&v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v8 + 16))(v7);
  sub_1A94B39E8(*v7, 0x736B73617424, 0xE600000000000000, isUniquelyReferenced_nonNull_native, &v18, &qword_1EB387E18, &qword_1A9593630, &qword_1EB387E20);
  v9 = sub_1A9378138(v19);
  v10 = v18;
  v11 = (*(*v0 + 272))(v9);
  v22 = sub_1A937829C(&qword_1EB387E28, &qword_1A9593638);
  v23 = sub_1A93B744C(&qword_1EB387E30, &qword_1EB387E28, &qword_1A9593638, v2);
  *&v21 = v11;
  sub_1A93F0F10(&v21, v19);
  LOBYTE(v2) = swift_isUniquelyReferenced_nonNull_native();
  v18 = v10;
  v12 = sub_1A9396054(v19, v20);
  MEMORY[0x1EEE9AC00](v12);
  v14 = (&v17 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0));
  (*(v15 + 16))(v14);
  sub_1A94B39E8(*v14, 0xD000000000000010, 0x80000001A95C3E60, v2, &v18, &qword_1EB387E28, &qword_1A9593638, &qword_1EB387E30);
  sub_1A9378138(v19);
  return v18;
}

uint64_t sub_1A94B158C()
{

  sub_1A9378138((v0 + 64));

  return swift_deallocClassInstance();
}

void *sub_1A94B15F4()
{
  v0[2] = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  v1 = swift_allocObject();
  *(v1 + 16) = 0;
  v0[3] = v1;
  v0[4] = 0;
  v2 = swift_allocObject();
  *(v2 + 16) = 0;
  v0[5] = v2;
  sub_1A957B9B8();
  swift_allocObject();
  v0[6] = sub_1A957B9A8();
  sub_1A957B998();
  swift_allocObject();
  v0[7] = sub_1A957B988();
  sub_1A957B9E8();
  return v0;
}

uint64_t TTSTaskRunner.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

char *sub_1A94B17C8(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB387E40, &qword_1A9594E18);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 88);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[88 * v8])
    {
      memmove(v12, v13, 88 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

void (*sub_1A94B18F0(uint64_t *a1, uint64_t a2, uint64_t a3))(uint64_t a1)
{
  if (MEMORY[0x1E69E7D08])
  {
    v6 = swift_coroFrameAlloc();
  }

  else
  {
    v6 = malloc(0x50uLL);
  }

  v7 = v6;
  *a1 = v6;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v7[8] = sub_1A948BBCC(v7);
  v7[9] = sub_1A94B199C(v7 + 4, a2, a3, isUniquelyReferenced_nonNull_native);
  return sub_1A948A438;
}

void (*sub_1A94B199C(void *a1, uint64_t a2, uint64_t a3, char a4))(uint64_t *a1, char a2)
{
  v5 = v4;
  if (MEMORY[0x1E69E7D08])
  {
    v10 = swift_coroFrameAlloc();
  }

  else
  {
    v10 = malloc(0x238uLL);
  }

  v11 = v10;
  *a1 = v10;
  v10[68] = v4;
  v10[67] = a3;
  v10[66] = a2;
  v12 = *v4;
  v13 = sub_1A937A490(a2, a3);
  *(v11 + 560) = v14 & 1;
  v15 = *(v12 + 16);
  v16 = (v14 & 1) == 0;
  v17 = __OFADD__(v15, v16);
  v18 = v15 + v16;
  if (v17)
  {
    __break(1u);
    goto LABEL_16;
  }

  v19 = v14;
  v20 = *(v12 + 24);
  if (v20 < v18 || (a4 & 1) == 0)
  {
    if (v20 >= v18 && (a4 & 1) == 0)
    {
      v21 = v13;
      sub_1A94B28C8();
      v13 = v21;
      goto LABEL_11;
    }

    sub_1A94B1D7C(v18, a4 & 1);
    v13 = sub_1A937A490(a2, a3);
    if ((v19 & 1) == (v22 & 1))
    {
      goto LABEL_11;
    }

LABEL_16:
    result = sub_1A957D438();
    __break(1u);
    return result;
  }

LABEL_11:
  v11[69] = v13;
  if (v19)
  {
    memmove(v11 + 22, (*(*v5 + 56) + 88 * v13), 0x58uLL);
  }

  else
  {
    v11[32] = 0;
    *(v11 + 14) = 0u;
    *(v11 + 15) = 0u;
    *(v11 + 12) = 0u;
    *(v11 + 13) = 0u;
    *(v11 + 11) = 0u;
  }

  return sub_1A94B1B14;
}

void sub_1A94B1B14(uint64_t *a1, char a2)
{
  v2 = *a1;
  v3 = (*a1 + 264);
  v4 = *(*a1 + 224);
  v3[2] = *(*a1 + 208);
  v3[3] = v4;
  v3[4] = *(v2 + 240);
  *(v2 + 344) = *(v2 + 256);
  v5 = *(v2 + 192);
  *v3 = *(v2 + 176);
  v3[1] = v5;
  v6 = *(v2 + 272);
  LOBYTE(v7) = *(v2 + 560);
  if (a2)
  {
    if (!v6)
    {
      goto LABEL_10;
    }

    v8 = *(v2 + 552);
    v9 = *(v2 + 544);
    if (*(v2 + 560))
    {
      goto LABEL_9;
    }

    v10 = *(v2 + 536);
    v11 = *(v2 + 528);
    v7 = *v9;
    v12 = *(v2 + 224);
    *(v2 + 32) = *(v2 + 208);
    *(v2 + 48) = v12;
    *(v2 + 64) = *(v2 + 240);
    *(v2 + 80) = *(v2 + 256);
    v13 = *(v2 + 192);
    *v2 = *(v2 + 176);
    *(v2 + 16) = v13;
    v7[(v8 >> 6) + 8] |= 1 << v8;
    v14 = (v7[6] + 16 * v8);
    *v14 = v11;
    v14[1] = v10;
    v15 = v7[7] + 88 * v8;
    v16 = *(v2 + 16);
    *v15 = *v2;
    *(v15 + 16) = v16;
    v17 = *(v2 + 32);
    v18 = *(v2 + 48);
    v19 = *(v2 + 64);
    *(v15 + 80) = *(v2 + 80);
    *(v15 + 48) = v18;
    *(v15 + 64) = v19;
    *(v15 + 32) = v17;
    v20 = v7[2];
    v21 = __OFADD__(v20, 1);
    v6 = v20 + 1;
    if (!v21)
    {
LABEL_13:
      v7[2] = v6;

      goto LABEL_14;
    }

    __break(1u);
  }

  if (!v6)
  {
LABEL_10:
    if (v7)
    {
      v22 = *(v2 + 552);
      v23 = **(v2 + 544);
      sub_1A948C1C0(*(v23 + 48) + 16 * v22);
      sub_1A94B26A4(v22, v23);
    }

    goto LABEL_14;
  }

  v8 = *(v2 + 552);
  v9 = *(v2 + 544);
  if ((v7 & 1) == 0)
  {
    v24 = *(v2 + 536);
    v25 = *(v2 + 528);
    v7 = *v9;
    v26 = *(v2 + 224);
    *(v2 + 120) = *(v2 + 208);
    *(v2 + 136) = v26;
    *(v2 + 152) = *(v2 + 240);
    *(v2 + 168) = *(v2 + 256);
    v27 = *(v2 + 192);
    *(v2 + 88) = *(v2 + 176);
    *(v2 + 104) = v27;
    v7[(v8 >> 6) + 8] |= 1 << v8;
    v28 = (v7[6] + 16 * v8);
    *v28 = v25;
    v28[1] = v24;
    v29 = v7[7] + 88 * v8;
    v30 = *(v2 + 104);
    *v29 = *(v2 + 88);
    *(v29 + 16) = v30;
    v31 = *(v2 + 120);
    v32 = *(v2 + 136);
    v33 = *(v2 + 152);
    *(v29 + 80) = *(v2 + 168);
    *(v29 + 48) = v32;
    *(v29 + 64) = v33;
    *(v29 + 32) = v31;
    v34 = v7[2];
    v21 = __OFADD__(v34, 1);
    v6 = v34 + 1;
    if (v21)
    {
      __break(1u);
      return;
    }

    goto LABEL_13;
  }

LABEL_9:
  memmove((*(*v9 + 56) + 88 * v8), (v2 + 176), 0x58uLL);
LABEL_14:
  v35 = *(v2 + 224);
  *(v2 + 384) = *(v2 + 208);
  *(v2 + 400) = v35;
  *(v2 + 416) = *(v2 + 240);
  *(v2 + 432) = *(v2 + 256);
  v36 = *(v2 + 192);
  *(v2 + 352) = *(v2 + 176);
  *(v2 + 368) = v36;
  sub_1A9391BAC(v3, v2 + 440, &qword_1EB387CF8, &unk_1A95934F0);
  sub_1A937B960(v2 + 352, &qword_1EB387CF8, &unk_1A95934F0);

  free(v2);
}

uint64_t sub_1A94B1D7C(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387E50, &qword_1A9594E28);
  v44 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v43 = v5;
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v20 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v23 = v20 | (v8 << 6);
      v24 = *(v5 + 56);
      v25 = (*(v5 + 48) + 16 * v23);
      v26 = *v25;
      v27 = v25[1];
      v28 = (v24 + 88 * v23);
      if (v44)
      {
        v29 = v28[3];
        v55 = v28[2];
        v56[0] = v29;
        *(v56 + 9) = *(v28 + 57);
        v30 = v28[1];
        v53 = *v28;
        v54 = v30;
        v45 = *(v28 + 73);
        v46 = *(v28 + 10);
      }

      else
      {
        v31 = *(v28 + 10);
        v33 = v28[2];
        v32 = v28[3];
        *&v51[16] = v28[4];
        v34 = v28[1];
        v48 = *v28;
        v49 = v34;
        v50 = v33;
        v46 = v31;
        v52 = v31;
        *v51 = v32;
        v45 = v51[25];

        sub_1A94B49FC(&v48, v47);
        v55 = v50;
        v56[0] = *v51;
        *(v56 + 9) = *&v51[9];
        v53 = v48;
        v54 = v49;
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v35 = -1 << *(v7 + 32);
      v36 = result & ~v35;
      v37 = v36 >> 6;
      if (((-1 << v36) & ~*(v14 + 8 * (v36 >> 6))) == 0)
      {
        v38 = 0;
        v39 = (63 - v35) >> 6;
        while (++v37 != v39 || (v38 & 1) == 0)
        {
          v40 = v37 == v39;
          if (v37 == v39)
          {
            v37 = 0;
          }

          v38 |= v40;
          v41 = *(v14 + 8 * v37);
          if (v41 != -1)
          {
            v15 = __clz(__rbit64(~v41)) + (v37 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v36) & ~*(v14 + 8 * (v36 >> 6)))) | v36 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v26;
      v16[1] = v27;
      v17 = *(v7 + 56) + 88 * v15;
      v18 = v56[0];
      *(v17 + 32) = v55;
      *(v17 + 48) = v18;
      *(v17 + 57) = *(v56 + 9);
      v19 = v54;
      *v17 = v53;
      *(v17 + 16) = v19;
      *(v17 + 73) = v45;
      *(v17 + 80) = v46;
      ++*(v7 + 16);
      v5 = v43;
    }

    v21 = v8;
    while (1)
    {
      v8 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v22 = v9[v8];
      ++v21;
      if (v22)
      {
        v20 = __clz(__rbit64(v22));
        v12 = (v22 - 1) & v22;
        goto LABEL_15;
      }
    }

    if ((v44 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v42 = 1 << *(v5 + 32);
    v3 = v2;
    if (v42 >= 64)
    {
      bzero(v9, ((v42 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v42;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

uint64_t sub_1A94B20E4(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB387E48, &qword_1A9594E20);
  v30 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v16 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v19 = v16 | (v8 << 6);
      v20 = *(*(v5 + 48) + v19);
      v21 = *(*(v5 + 56) + 8 * v19);
      if ((v30 & 1) == 0)
      {
      }

      sub_1A957D4F8();
      MEMORY[0x1AC5863C0](v20);
      result = sub_1A957D548();
      v22 = -1 << *(v7 + 32);
      v23 = result & ~v22;
      v24 = v23 >> 6;
      if (((-1 << v23) & ~*(v14 + 8 * (v23 >> 6))) == 0)
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
          v28 = *(v14 + 8 * v24);
          if (v28 != -1)
          {
            v15 = __clz(__rbit64(~v28)) + (v24 << 6);
            goto LABEL_7;
          }
        }

LABEL_35:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v23) & ~*(v14 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      *(*(v7 + 48) + v15) = v20;
      *(*(v7 + 56) + 8 * v15) = v21;
      ++*(v7 + 16);
    }

    v17 = v8;
    while (1)
    {
      v8 = v17 + 1;
      if (__OFADD__(v17, 1))
      {
        __break(1u);
        goto LABEL_35;
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

    if ((v30 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_33;
    }

    v29 = 1 << *(v5 + 32);
    v3 = v2;
    if (v29 >= 64)
    {
      bzero((v5 + 64), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v29;
    }

    *(v5 + 16) = 0;
  }

LABEL_33:
  *v3 = v7;
  return result;
}

uint64_t sub_1A94B2374(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = *v2;
  sub_1A937829C(&qword_1EB386F00, &qword_1A958A680);
  v33 = v4;
  result = sub_1A957D118();
  v7 = result;
  if (*(v5 + 16))
  {
    v8 = 0;
    v9 = (v5 + 64);
    v10 = 1 << *(v5 + 32);
    if (v10 < 64)
    {
      v11 = ~(-1 << v10);
    }

    else
    {
      v11 = -1;
    }

    v12 = v11 & *(v5 + 64);
    v13 = (v10 + 63) >> 6;
    v14 = result + 64;
    while (v12)
    {
      v17 = __clz(__rbit64(v12));
      v12 &= v12 - 1;
LABEL_15:
      v20 = v17 | (v8 << 6);
      v21 = (*(v5 + 48) + 16 * v20);
      v22 = *v21;
      v23 = v21[1];
      v24 = (*(v5 + 56) + 40 * v20);
      if (v33)
      {
        sub_1A93F0F10(v24, v34);
      }

      else
      {
        sub_1A9379534(v24, v34);
      }

      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
      v25 = -1 << *(v7 + 32);
      v26 = result & ~v25;
      v27 = v26 >> 6;
      if (((-1 << v26) & ~*(v14 + 8 * (v26 >> 6))) == 0)
      {
        v28 = 0;
        v29 = (63 - v25) >> 6;
        while (++v27 != v29 || (v28 & 1) == 0)
        {
          v30 = v27 == v29;
          if (v27 == v29)
          {
            v27 = 0;
          }

          v28 |= v30;
          v31 = *(v14 + 8 * v27);
          if (v31 != -1)
          {
            v15 = __clz(__rbit64(~v31)) + (v27 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v15 = __clz(__rbit64((-1 << v26) & ~*(v14 + 8 * (v26 >> 6)))) | v26 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v14 + ((v15 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v15;
      v16 = (*(v7 + 48) + 16 * v15);
      *v16 = v22;
      v16[1] = v23;
      result = sub_1A93F0F10(v34, *(v7 + 56) + 40 * v15);
      ++*(v7 + 16);
    }

    v18 = v8;
    while (1)
    {
      v8 = v18 + 1;
      if (__OFADD__(v18, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v8 >= v13)
      {
        break;
      }

      v19 = v9[v8];
      ++v18;
      if (v19)
      {
        v17 = __clz(__rbit64(v19));
        v12 = (v19 - 1) & v19;
        goto LABEL_15;
      }
    }

    if ((v33 & 1) == 0)
    {

      v3 = v2;
      goto LABEL_34;
    }

    v32 = 1 << *(v5 + 32);
    v3 = v2;
    if (v32 >= 64)
    {
      bzero((v5 + 64), ((v32 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v9 = -1 << v32;
    }

    *(v5 + 16) = 0;
  }

LABEL_34:
  *v3 = v7;
  return result;
}

unint64_t sub_1A94B2638(uint64_t a1)
{
  v1 = a1;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  v2 = sub_1A957D548();

  return sub_1A94B2858(v1, v2);
}

char *sub_1A94B26A4(char *result, uint64_t a2)
{
  v3 = result;
  v4 = a2 + 64;
  v5 = -1 << *(a2 + 32);
  v6 = (result + 1) & ~v5;
  if ((*(a2 + 64 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6))
  {
    v7 = ~v5;
    v8 = (sub_1A957CE28() + 1) & ~v5;
    do
    {
      sub_1A957D4F8();

      sub_1A957C228();
      v9 = sub_1A957D548();

      v10 = v9 & v7;
      if (v3 >= v8)
      {
        if (v10 < v8)
        {
          goto LABEL_4;
        }
      }

      else if (v10 >= v8)
      {
        goto LABEL_10;
      }

      if (v3 >= v10)
      {
LABEL_10:
        v11 = *(a2 + 48);
        v12 = (v11 + 16 * v3);
        v13 = (v11 + 16 * v6);
        if (v3 != v6 || v12 >= v13 + 1)
        {
          *v12 = *v13;
        }

        v14 = *(a2 + 56);
        result = (v14 + 88 * v3);
        v15 = (v14 + 88 * v6);
        if (v3 != v6 || result >= v15 + 88)
        {
          result = memmove(result, v15, 0x58uLL);
          v3 = v6;
        }
      }

LABEL_4:
      v6 = (v6 + 1) & v7;
    }

    while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
  }

  *(v4 + ((v3 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v3) - 1;
  v16 = *(a2 + 16);
  v17 = __OFSUB__(v16, 1);
  v18 = v16 - 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v18;
    ++*(a2 + 36);
  }

  return result;
}