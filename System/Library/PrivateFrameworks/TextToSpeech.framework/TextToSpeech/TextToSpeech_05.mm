uint64_t sub_1A93A6140(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v35 = sub_1A957B188();
  v8 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v34 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (!a3)
  {

    return MEMORY[0x1E69E7CD0];
  }

  if (*(a4 + 16) == a3)
  {
    return a4;
  }

  sub_1A937829C(&qword_1EB386AA0, &qword_1A95885C0);
  result = sub_1A957CEB8();
  v10 = result;
  if (a2 < 1)
  {
    v12 = 0;
  }

  else
  {
    v12 = *a1;
  }

  v13 = 0;
  v14 = result + 56;
  v30 = (v8 + 32);
  v31 = v8 + 16;
  v29 = a4;
  while (v12)
  {
    v15 = __clz(__rbit64(v12));
    v32 = (v12 - 1) & v12;
LABEL_16:
    v18 = *(a4 + 48);
    v33 = *(v8 + 72);
    (*(v8 + 16))(v34, v18 + v33 * (v15 | (v13 << 6)), v35);
    sub_1A93A7604(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
    result = sub_1A957C058();
    v19 = -1 << *(v10 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v14 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v14 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_26;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v14 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_26:
    *(v14 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    result = (*v30)(*(v10 + 48) + v22 * v33, v34, v35);
    ++*(v10 + 16);
    if (__OFSUB__(a3--, 1))
    {
      goto LABEL_32;
    }

    a4 = v29;
    v12 = v32;
    if (!a3)
    {
LABEL_28:

      return v10;
    }
  }

  v16 = v13;
  while (1)
  {
    v13 = v16 + 1;
    if (__OFADD__(v16, 1))
    {
      break;
    }

    if (v13 >= a2)
    {
      goto LABEL_28;
    }

    v17 = a1[v13];
    ++v16;
    if (v17)
    {
      v15 = __clz(__rbit64(v17));
      v32 = (v17 - 1) & v17;
      goto LABEL_16;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1A93A6468(uint64_t a1, uint64_t a2)
{
  v29 = a1;
  v30 = a2;
  v2 = sub_1A957B308();
  v28 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for SpeechSlicer.VoiceQuery(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x1EEE9AC00](v6);
  v11 = (&v28 - v10);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v28 - v12;
  v14 = sub_1A937829C(&qword_1EB386A98, &unk_1A95884C0);
  v15 = MEMORY[0x1EEE9AC00](v14 - 8);
  v17 = &v28 - v16;
  v18 = (&v28 + *(v15 + 56) - v16);
  sub_1A93A5764(v29, &v28 - v16, type metadata accessor for SpeechSlicer.VoiceQuery);
  sub_1A93A5764(v30, v18, type metadata accessor for SpeechSlicer.VoiceQuery);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v24 = v28;
    sub_1A93A5764(v17, v13, type metadata accessor for SpeechSlicer.VoiceQuery);
    if (swift_getEnumCaseMultiPayload())
    {
      (*(v24 + 8))(v13, v2);
LABEL_16:
      sub_1A937B960(v17, &qword_1EB386A98, &unk_1A95884C0);
      goto LABEL_17;
    }

    (*(v24 + 32))(v4, v18, v2);
    v25 = MEMORY[0x1AC5840A0](v13, v4);
    v26 = *(v24 + 8);
    v26(v4, v2);
    v26(v13, v2);
LABEL_19:
    sub_1A93A5704(v17, type metadata accessor for SpeechSlicer.VoiceQuery);
    return v25 & 1;
  }

  if (EnumCaseMultiPayload != 1)
  {
    sub_1A93A5764(v17, v8, type metadata accessor for SpeechSlicer.VoiceQuery);
    memcpy(v34, v8, 0x118uLL);
    if (swift_getEnumCaseMultiPayload() != 2)
    {
      sub_1A937B48C(v34);
      goto LABEL_16;
    }

    memcpy(v33, v18, sizeof(v33));
    memcpy(v32, v8, sizeof(v32));
    memcpy(v31, v18, sizeof(v31));
    v25 = static CoreSynthesizer.Voice.== infix(_:_:)(v32, v31);
    sub_1A937B48C(v33);
    sub_1A937B48C(v34);
    goto LABEL_19;
  }

  sub_1A93A5764(v17, v11, type metadata accessor for SpeechSlicer.VoiceQuery);
  v21 = *v11;
  v20 = v11[1];
  if (swift_getEnumCaseMultiPayload() != 1)
  {

    goto LABEL_16;
  }

  if (v21 == *v18 && v20 == v18[1])
  {

    goto LABEL_21;
  }

  v23 = sub_1A957D3E8();

  if (v23)
  {
LABEL_21:
    sub_1A93A5704(v17, type metadata accessor for SpeechSlicer.VoiceQuery);
    v25 = 1;
    return v25 & 1;
  }

  sub_1A93A5704(v17, type metadata accessor for SpeechSlicer.VoiceQuery);
LABEL_17:
  v25 = 0;
  return v25 & 1;
}

uint64_t _s12TextToSpeech0C6SlicerV5SliceV0E4TypeO2eeoiySbAG_AGtFZ_0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A957B8C8();
  v66 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v61 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v65 = sub_1A937829C(&qword_1EB386AC0, &qword_1A95884E0);
  MEMORY[0x1EEE9AC00](v65);
  v67 = &v61 - v6;
  v7 = sub_1A937829C(&qword_1EB386A18, &qword_1A9587E40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v64 = &v61 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v68 = &v61 - v11;
  MEMORY[0x1EEE9AC00](v10);
  v70 = &v61 - v12;
  v71 = sub_1A957B308();
  v73 = *(v71 - 8);
  v13 = MEMORY[0x1EEE9AC00](v71);
  v69 = &v61 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v72 = &v61 - v15;
  v16 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = (&v61 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v61 - v20;
  v22 = sub_1A937829C(&qword_1EB386AC8, &qword_1A95884E8);
  v23 = MEMORY[0x1EEE9AC00](v22 - 8);
  v25 = &v61 - v24;
  v26 = (&v61 + *(v23 + 56) - v24);
  sub_1A93A5764(a1, &v61 - v24, type metadata accessor for SpeechSlicer.Slice.SliceType);
  sub_1A93A5764(a2, v26, type metadata accessor for SpeechSlicer.Slice.SliceType);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1A93A5764(v25, v19, type metadata accessor for SpeechSlicer.Slice.SliceType);
    v28 = *v19;
    v27 = v19[1];
    if (swift_getEnumCaseMultiPayload() == 1)
    {
      if (v28 == *v26 && v27 == v26[1])
      {
      }

      else
      {
        v30 = sub_1A957D3E8();

        if ((v30 & 1) == 0)
        {
          goto LABEL_25;
        }
      }

LABEL_19:
      sub_1A93A5704(v25, type metadata accessor for SpeechSlicer.Slice.SliceType);
      return 1;
    }
  }

  else
  {
    sub_1A93A5764(v25, v21, type metadata accessor for SpeechSlicer.Slice.SliceType);
    memcpy(v77, v21, 0x118uLL);
    v31 = sub_1A937829C(&qword_1EB386A38, &unk_1A9587E70);
    v32 = *(v31 + 48);
    v33 = *(v31 + 64);
    if (swift_getEnumCaseMultiPayload() != 1)
    {
      v62 = v4;
      memcpy(v76, v26, sizeof(v76));
      v34 = *(v73 + 32);
      v35 = v71;
      v34(v72, &v21[v32], v71);
      v36 = &v21[v33];
      v37 = v70;
      sub_1A93A7460(v36, v70, &qword_1EB386A18, &qword_1A9587E40);
      v38 = v26 + v32;
      v39 = v69;
      v34(v69, v38, v35);
      v40 = v26 + v33;
      v41 = v68;
      sub_1A93A7460(v40, v68, &qword_1EB386A18, &qword_1A9587E40);
      memcpy(v75, v77, sizeof(v75));
      memcpy(v74, v76, sizeof(v74));
      if (static CoreSynthesizer.Voice.== infix(_:_:)(v75, v74))
      {
        v42 = v72;
        if (MEMORY[0x1AC5840A0](v72, v39))
        {
          v43 = *(v65 + 48);
          v44 = v67;
          sub_1A9391BAC(v37, v67, &qword_1EB386A18, &qword_1A9587E40);
          sub_1A9391BAC(v41, v44 + v43, &qword_1EB386A18, &qword_1A9587E40);
          v45 = v66;
          v46 = v41;
          v47 = *(v66 + 48);
          v48 = v62;
          if (v47(v44, 1, v62) == 1)
          {
            sub_1A937B48C(v76);
            sub_1A937B48C(v77);
            sub_1A937B960(v46, &qword_1EB386A18, &qword_1A9587E40);
            v49 = v35;
            v50 = *(v73 + 8);
            v50(v69, v49);
            sub_1A937B960(v70, &qword_1EB386A18, &qword_1A9587E40);
            v51 = v49;
            v44 = v67;
            v50(v72, v51);
            if (v47(v44 + v43, 1, v48) == 1)
            {
              sub_1A937B960(v44, &qword_1EB386A18, &qword_1A9587E40);
              goto LABEL_19;
            }
          }

          else
          {
            v55 = v64;
            sub_1A9391BAC(v44, v64, &qword_1EB386A18, &qword_1A9587E40);
            if (v47(v44 + v43, 1, v48) != 1)
            {
              v57 = v44 + v43;
              v58 = v63;
              (*(v45 + 32))(v63, v57, v48);
              sub_1A93A7604(&qword_1EB386AD0, MEMORY[0x1E6988218], MEMORY[0x1E6988230]);
              LODWORD(v65) = sub_1A957C098();
              sub_1A937B48C(v76);
              sub_1A937B48C(v77);
              v59 = *(v45 + 8);
              v59(v58, v48);
              sub_1A937B960(v68, &qword_1EB386A18, &qword_1A9587E40);
              v60 = *(v73 + 8);
              v60(v69, v35);
              sub_1A937B960(v70, &qword_1EB386A18, &qword_1A9587E40);
              v60(v72, v35);
              v59(v64, v48);
              sub_1A937B960(v44, &qword_1EB386A18, &qword_1A9587E40);
              if ((v65 & 1) == 0)
              {
                goto LABEL_25;
              }

              goto LABEL_19;
            }

            sub_1A937B48C(v76);
            sub_1A937B48C(v77);
            sub_1A937B960(v68, &qword_1EB386A18, &qword_1A9587E40);
            v56 = *(v73 + 8);
            v56(v69, v35);
            sub_1A937B960(v70, &qword_1EB386A18, &qword_1A9587E40);
            v56(v72, v35);
            (*(v45 + 8))(v55, v48);
          }

          sub_1A937B960(v44, &qword_1EB386AC0, &qword_1A95884E0);
        }

        else
        {
          sub_1A937B48C(v76);
          sub_1A937B48C(v77);
          sub_1A937B960(v41, &qword_1EB386A18, &qword_1A9587E40);
          v54 = *(v73 + 8);
          v54(v39, v35);
          sub_1A937B960(v37, &qword_1EB386A18, &qword_1A9587E40);
          v54(v42, v35);
        }
      }

      else
      {
        sub_1A937B48C(v76);
        sub_1A937B48C(v77);
        sub_1A937B960(v41, &qword_1EB386A18, &qword_1A9587E40);
        v53 = *(v73 + 8);
        v53(v39, v35);
        sub_1A937B960(v37, &qword_1EB386A18, &qword_1A9587E40);
        v53(v72, v35);
      }

LABEL_25:
      sub_1A93A5704(v25, type metadata accessor for SpeechSlicer.Slice.SliceType);
      return 0;
    }

    sub_1A937B48C(v77);
    sub_1A937B960(&v21[v33], &qword_1EB386A18, &qword_1A9587E40);
    (*(v73 + 8))(&v21[v32], v71);
  }

  sub_1A937B960(v25, &qword_1EB386AC8, &qword_1A95884E8);
  return 0;
}

uint64_t sub_1A93A72C4(uint64_t a1)
{
  v2 = sub_1A957B0B8();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A93A7604(&qword_1ED96FE78, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  result = MEMORY[0x1AC585770](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1A93A3C2C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t sub_1A93A7460(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = sub_1A937829C(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1A93A74C8()
{
  result = qword_1EB392408[0];
  if (!qword_1EB392408[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB392408);
  }

  return result;
}

uint64_t sub_1A93A754C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SpeechSlicer.Slice.SliceType(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93A7604(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1A93A7654(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 328))
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

uint64_t sub_1A93A769C(uint64_t result, int a2, int a3)
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
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *(result + 312) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 328) = 1;
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

    *(result + 328) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1A93A7740(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_1A93A7758(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_1A93A7774(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_1A93A77BC(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

__n128 sub_1A93A7818(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1A93A7824(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 32))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1A93A7844(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = (a2 - 1);
    *(result + 8) = 0;
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

  *(result + 32) = v3;
  return result;
}

uint64_t sub_1A93A7888(uint64_t a1)
{
  result = sub_1A957B308();
  if (v2 <= 0x3F)
  {
    swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_1A93A7924(uint64_t a1)
{
  result = sub_1A93A79B8();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for SpeechSlicer.Slice.SliceType(319);
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

unint64_t sub_1A93A79B8()
{
  result = qword_1EB386A80;
  if (!qword_1EB386A80)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EB386A80);
  }

  return result;
}

void sub_1A93A7A6C(uint64_t a1)
{
  sub_1A93A7AE0(319);
  if (v1 <= 0x3F)
  {
    sub_1A93A7BB0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_1A93A7AE0(uint64_t a1)
{
  if (!qword_1EB386A88)
  {
    sub_1A957B308();
    sub_1A93A7B68(&qword_1EB386A18, &qword_1A9587E40);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_1EB386A88);
    }
  }
}

uint64_t sub_1A93A7B68(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1A93A7BB0()
{
  result = qword_1EB386A90;
  if (!qword_1EB386A90)
  {
    result = MEMORY[0x1E69E6158];
    atomic_store(MEMORY[0x1E69E6158], &qword_1EB386A90);
  }

  return result;
}

unint64_t sub_1A93A7C04()
{
  result = qword_1EB3925C0[0];
  if (!qword_1EB3925C0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3925C0);
  }

  return result;
}

unint64_t sub_1A93A7C5C()
{
  result = qword_1EB3926D0[0];
  if (!qword_1EB3926D0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3926D0);
  }

  return result;
}

unint64_t sub_1A93A7CB0(uint64_t a1)
{
  result = sub_1A93A7CD8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A93A7CD8()
{
  result = qword_1EB3927E0[0];
  if (!qword_1EB3927E0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EB3927E0);
  }

  return result;
}

unint64_t sub_1A93A7D2C(uint64_t a1)
{
  result = sub_1A93A7D54();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1A93A7D54()
{
  result = qword_1EB392870;
  if (!qword_1EB392870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB392870);
  }

  return result;
}

uint64_t sub_1A93A7DF0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1A93ACC6C(a2);
  sub_1A937829C(&qword_1EB386B08, &qword_1A9588588);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

uint64_t sub_1A93A7E8C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t *a5)
{
  v6 = sub_1A9381740(a2);
  sub_1A937829C(&qword_1EB3868E0, &qword_1A95885D0);
  result = swift_arrayDestroy();
  *a5 = v6;
  return result;
}

unint64_t *sub_1A93A7EF0()
{
  if (qword_1EB38EE78 != -1)
  {
    swift_once();
  }

  return &qword_1EB3A7B38;
}

uint64_t Locale.LanguageCode.macroLanguage.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_1ED970400 != -1)
  {
    swift_once();
  }

  v2 = qword_1ED970408;
  v3 = sub_1A957B148();
  if (*(v2 + 16))
  {
    sub_1A937A490(v3, v4);
    v6 = v5;

    if (v6)
    {

      sub_1A957B198();
      v7 = 0;
      goto LABEL_8;
    }
  }

  else
  {
  }

  v7 = 1;
LABEL_8:
  v8 = sub_1A957B188();
  v9 = *(*(v8 - 8) + 56);

  return v9(a1, v7, 1, v8);
}

uint64_t Locale.LanguageCode.isMacroLanguage.getter()
{
  if (qword_1ED970400 != -1)
  {
    swift_once();
  }

  v1 = sub_1A93A80E8(v0);
  v2 = sub_1A957B148();
  v4 = sub_1A93A8204(v2, v3, v1);

  return v4 & 1;
}

uint64_t sub_1A93A80E8(uint64_t a1)
{
  result = MEMORY[0x1AC585770](*(a1 + 16), MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v3 = 0;
  v14 = result;
  v4 = 1 << *(a1 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a1 + 64);
  for (i = (v4 + 63) >> 6; v6; result = )
  {
    v8 = v3;
LABEL_9:
    v9 = __clz(__rbit64(v6));
    v6 &= v6 - 1;
    v10 = (*(a1 + 56) + ((v8 << 10) | (16 * v9)));
    v11 = *v10;
    v12 = v10[1];

    sub_1A93AB260(v13, v11, v12);
  }

  while (1)
  {
    v8 = v3 + 1;
    if (__OFADD__(v3, 1))
    {
      break;
    }

    if (v8 >= i)
    {

      return v14;
    }

    v6 = *(a1 + 64 + 8 * v8);
    ++v3;
    if (v6)
    {
      v3 = v8;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93A8204(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (!*(a3 + 16))
  {
    return 0;
  }

  sub_1A957D4F8();
  sub_1A957C228();
  v6 = sub_1A957D548();
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
    if (v11 || (sub_1A957D3E8() & 1) != 0)
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

uint64_t Locale.LanguageCode.childLanguages.getter()
{
  v1 = sub_1A957B188();
  v2 = *(v1 - 8);
  v3 = MEMORY[0x1EEE9AC00](v1);
  v5 = v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1ED970400 != -1)
  {
    v3 = swift_once();
  }

  v6 = qword_1ED970408;
  MEMORY[0x1EEE9AC00](v3);
  v15[-2] = v0;

  v7 = sub_1A93A8548(sub_1A93AAEE0, &v15[-4], v6);
  v8 = *(v7 + 16);
  if (v8)
  {
    v15[0] = MEMORY[0x1E69E7CC0];
    sub_1A93ABB24(0, v8, 0);
    v9 = v15[0];
    v10 = v7 + 40;
    do
    {

      sub_1A957B198();
      v15[0] = v9;
      v12 = *(v9 + 16);
      v11 = *(v9 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1A93ABB24((v11 > 1), v12 + 1, 1);
        v9 = v15[0];
      }

      *(v9 + 16) = v12 + 1;
      (*(v2 + 32))(v9 + ((*(v2 + 80) + 32) & ~*(v2 + 80)) + *(v2 + 72) * v12, v5, v1);
      v10 += 16;
      --v8;
    }

    while (v8);
  }

  else
  {

    v9 = MEMORY[0x1E69E7CC0];
  }

  v13 = sub_1A93ACF58(v9);

  return v13;
}

uint64_t sub_1A93A8548(uint64_t result, uint64_t a2, uint64_t a3)
{
  v22 = result;
  v4 = 0;
  v5 = a3 + 64;
  v6 = 1 << *(a3 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(a3 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = MEMORY[0x1E69E7CC0];
  v21 = a3;
  if (v8)
  {
    goto LABEL_6;
  }

LABEL_7:
  while (1)
  {
    v12 = v4 + 1;
    if (__OFADD__(v4, 1))
    {
      break;
    }

    if (v12 >= v9)
    {

      return v10;
    }

    v8 = *(v5 + 8 * v12);
    ++v4;
    if (v8)
    {
      v11 = v10;
      v4 = v12;
      while (1)
      {
        v13 = a3;
        v14 = (*(a3 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v8)))));
        v16 = *v14;
        v15 = v14[1];
        v23[0] = *v14;
        v23[1] = v15;

        v17 = v22(v23);
        if (v3)
        {
          break;
        }

        v8 &= v8 - 1;
        v10 = v11;
        if (v17)
        {
          result = swift_isUniquelyReferenced_nonNull_native();
          v24 = v11;
          if ((result & 1) == 0)
          {
            result = sub_1A93ABB68(0, *(v11 + 16) + 1, 1);
            v10 = v24;
          }

          v19 = *(v10 + 16);
          v18 = *(v10 + 24);
          v3 = 0;
          if (v19 >= v18 >> 1)
          {
            result = sub_1A93ABB68((v18 > 1), v19 + 1, 1);
            v3 = 0;
            v10 = v24;
          }

          *(v10 + 16) = v19 + 1;
          v20 = v10 + 16 * v19;
          *(v20 + 32) = v16;
          *(v20 + 40) = v15;
          a3 = v21;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

        else
        {

          a3 = v13;
          v3 = 0;
          if (!v8)
          {
            goto LABEL_7;
          }
        }

LABEL_6:
        v11 = v10;
      }

      v10 = v11;

      return v10;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93A8724(uint64_t a1, uint64_t a2)
{
  v30 = a2;
  v29 = sub_1A957B0E8();
  v4 = *(v29 - 8);
  MEMORY[0x1EEE9AC00](v29);
  v28 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = sub_1A957B308();
  v6 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v8 = v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(a1 + 16);
  v10 = MEMORY[0x1E69E7CC0];
  if (v9)
  {
    v24[1] = v2;
    v33 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB68(0, v9, 0);
    v10 = v33;
    v25 = (v6 + 8);
    v26 = (v4 + 16);
    v11 = a1 + 40;
    do
    {

      v12 = sub_1A957B0C8();
      v13 = sub_1A957B278();
      v15 = v14;
      v16 = sub_1A957B188();
      if (!(*(*(v16 - 8) + 48))(v15, 1, v16))
      {

        sub_1A957B158();
      }

      v13(v31, 0);
      v12(v32, 0);
      (*v26)(v28, v30, v29);
      sub_1A957B0F8();
      v17 = sub_1A957B118();
      v19 = v18;
      (*v25)(v8, v27);

      v33 = v10;
      v21 = *(v10 + 16);
      v20 = *(v10 + 24);
      if (v21 >= v20 >> 1)
      {
        sub_1A93ABB68((v20 > 1), v21 + 1, 1);
        v10 = v33;
      }

      *(v10 + 16) = v21 + 1;
      v22 = v10 + 16 * v21;
      *(v22 + 32) = v17;
      *(v22 + 40) = v19;
      v11 += 16;
      --v9;
    }

    while (v9);
  }

  return v10;
}

uint64_t sub_1A93A8A18(uint64_t a1)
{
  v35 = sub_1A957B308();
  v3 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(a1 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  if (!v7)
  {
    return v8;
  }

  v28[1] = v1;
  v37 = MEMORY[0x1E69E7CC0];
  v30 = v4;
  sub_1A93ABB88(0, v7, 0);
  v8 = v37;
  v9 = v30 + 56;
  result = sub_1A957CE18();
  v11 = result;
  v12 = v30;
  v13 = 0;
  v33 = v3 + 32;
  v34 = v3;
  v29 = v30 + 64;
  v31 = v7;
  v32 = v9;
  while ((v11 & 0x8000000000000000) == 0 && v11 < 1 << *(v12 + 32))
  {
    v16 = v11 >> 6;
    if ((*(v9 + 8 * (v11 >> 6)) & (1 << v11)) == 0)
    {
      goto LABEL_22;
    }

    v36 = *(v12 + 36);
    v17 = v12;

    sub_1A957B1B8();
    v37 = v8;
    v18 = v6;
    v20 = *(v8 + 16);
    v19 = *(v8 + 24);
    if (v20 >= v19 >> 1)
    {
      sub_1A93ABB88((v19 > 1), v20 + 1, 1);
      v8 = v37;
    }

    *(v8 + 16) = v20 + 1;
    result = (*(v34 + 32))(v8 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v20, v18, v35);
    v14 = 1 << *(v17 + 32);
    if (v11 >= v14)
    {
      goto LABEL_23;
    }

    v12 = v17;
    v9 = v32;
    v21 = *(v32 + 8 * v16);
    if ((v21 & (1 << v11)) == 0)
    {
      goto LABEL_24;
    }

    if (v36 != *(v12 + 36))
    {
      goto LABEL_25;
    }

    v6 = v18;
    v22 = v21 & (-2 << (v11 & 0x3F));
    if (v22)
    {
      v14 = __clz(__rbit64(v22)) | v11 & 0x7FFFFFFFFFFFFFC0;
      v15 = v31;
    }

    else
    {
      v23 = v16 << 6;
      v24 = v16 + 1;
      v25 = (v29 + 8 * v16);
      v15 = v31;
      while (v24 < (v14 + 63) >> 6)
      {
        v27 = *v25++;
        v26 = v27;
        v23 += 64;
        ++v24;
        if (v27)
        {
          result = sub_1A932D0A4(v11, v36, 0);
          v12 = v30;
          v14 = __clz(__rbit64(v26)) + v23;
          goto LABEL_19;
        }
      }

      result = sub_1A932D0A4(v11, v36, 0);
      v12 = v30;
LABEL_19:
      v6 = v18;
    }

    ++v13;
    v11 = v14;
    if (v13 == v15)
    {
      return v8;
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
  return result;
}

uint64_t sub_1A93A8D34@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v61 = a1;
  v65 = a2;
  v60 = sub_1A937829C(&qword_1EB386AE8, &unk_1A9588510);
  MEMORY[0x1EEE9AC00](v60);
  v62 = &v52 - v3;
  v4 = sub_1A937829C(&qword_1EB386AF0, &unk_1A958C740);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v7 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v5);
  v59 = &v52 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v52 - v10;
  v12 = sub_1A957B188();
  v63 = *(v12 - 8);
  v64 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v52 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1A957B218();
  v16 = *(v15 - 8);
  v17 = MEMORY[0x1EEE9AC00](v15);
  v19 = &v52 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v21 = &v52 - v20;
  v22 = type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  MEMORY[0x1EEE9AC00](v22);
  v24 = (&v52 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1A93AD140(v2, v24);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (!EnumCaseMultiPayload)
  {
    v54 = v19;
    v57 = v7;
    v27 = *(sub_1A937829C(&qword_1EB386AF8, &unk_1A9588520) + 48);
    v53 = *(v16 + 32);
    v53(v21, v24, v15);
    v28 = *(v63 + 32);
    v58 = v14;
    v55 = v28;
    v56 = v63 + 32;
    v28(v14, v24 + v27, v64);
    (*(v16 + 16))(v11, v21, v15);
    (*(v16 + 56))(v11, 0, 1, v15);
    v29 = v59;
    sub_1A957B2C8();
    v30 = *(v60 + 48);
    v31 = v62;
    sub_1A9391BAC(v11, v62, &qword_1EB386AF0, &unk_1A958C740);
    v61 = v30;
    sub_1A9391BAC(v29, v31 + v30, &qword_1EB386AF0, &unk_1A958C740);
    v32 = *(v16 + 48);
    if (v32(v31, 1, v15) == 1)
    {
      sub_1A937B960(v29, &qword_1EB386AF0, &unk_1A958C740);
      sub_1A937B960(v11, &qword_1EB386AF0, &unk_1A958C740);
      (*(v16 + 8))(v21, v15);
      v33 = v62;
      v34 = v32(v62 + v61, 1, v15) == 1;
      v35 = v65;
      v36 = v33;
      v37 = v58;
      if (!v34)
      {
        goto LABEL_11;
      }

      sub_1A937B960(v33, &qword_1EB386AF0, &unk_1A958C740);
    }

    else
    {
      v41 = v62;
      v42 = v57;
      sub_1A9391BAC(v62, v57, &qword_1EB386AF0, &unk_1A958C740);
      v43 = v41 + v61;
      v44 = v61;
      if (v32(v43, 1, v15) == 1)
      {
        sub_1A937B960(v29, &qword_1EB386AF0, &unk_1A958C740);
        sub_1A937B960(v11, &qword_1EB386AF0, &unk_1A958C740);
        v45 = *(v16 + 8);
        v45(v21, v15);
        v45(v42, v15);
        v35 = v65;
        v36 = v62;
        v37 = v58;
LABEL_11:
        sub_1A937B960(v36, &qword_1EB386AE8, &unk_1A9588510);
LABEL_12:
        v47 = v63;
        v46 = v64;
        (*(v63 + 8))(v37, v64);
        return (*(v47 + 56))(v35, 1, 1, v46);
      }

      v48 = v62;
      v49 = v54;
      v53(v54, (v62 + v44), v15);
      sub_1A93AD42C(&qword_1EB386230, MEMORY[0x1E6969680], MEMORY[0x1E6969698]);
      LODWORD(v61) = sub_1A957C098();
      v50 = *(v16 + 8);
      v50(v49, v15);
      sub_1A937B960(v29, &qword_1EB386AF0, &unk_1A958C740);
      sub_1A937B960(v11, &qword_1EB386AF0, &unk_1A958C740);
      v50(v21, v15);
      v50(v42, v15);
      sub_1A937B960(v48, &qword_1EB386AF0, &unk_1A958C740);
      v35 = v65;
      v37 = v58;
      if ((v61 & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    v51 = v64;
    v55(v35, v37, v64);
    return (*(v63 + 56))(v35, 0, 1, v51);
  }

  if (EnumCaseMultiPayload == 1)
  {
    (*v24)(v61);
  }

  else
  {
    v39 = v63;
    v38 = v64;
    v40 = v65;
    (*(v63 + 32))(v65, v24, v64);
    return (*(v39 + 56))(v40, 0, 1, v38);
  }
}

uint64_t sub_1A93A9458()
{
  sub_1A937829C(&qword_1EB386B28, &qword_1A95885A8);
  v0 = (sub_1A937829C(&qword_1EB386B30, &unk_1A95885B0) - 8);
  v1 = (*(*v0 + 80) + 32) & ~*(*v0 + 80);
  v2 = swift_allocObject();
  *(v2 + 16) = xmmword_1A9587160;
  v3 = v0[14];
  sub_1A957B178();
  sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
  type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1A9588500;
  sub_1A937829C(&qword_1EB386AF8, &unk_1A9588520);
  sub_1A957B208();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  sub_1A957B208();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  sub_1A957B178();
  swift_storeEnumTagMultiPayload();
  *(v2 + v1 + v3) = v4;
  v5 = sub_1A93ACD70(v2);
  swift_setDeallocating();
  sub_1A937B960(v2 + v1, &qword_1EB386B30, &unk_1A95885B0);
  result = swift_deallocClassInstance();
  qword_1EB3A7850 = v5;
  return result;
}

uint64_t Locale.legacyIdentifier.getter()
{
  v1 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = &v27 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v2);
  v6 = &v27 - v5;
  v7 = sub_1A957B2E8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v27 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_1A957B188();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v28 = &v27 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v27 - v15;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v8 + 8))(v10, v7);
  v17 = *(v12 + 48);
  if (v17(v6, 1, v11) == 1)
  {
    v4 = v6;
LABEL_5:
    sub_1A937B960(v4, &qword_1EB386A68, &qword_1A9587F40);
    return sub_1A957B1A8();
  }

  v27 = v0;
  v18 = *(v12 + 32);
  v18(v16, v6, v11);
  Locale.LanguageCode.macroLanguage.getter(v4);
  if (v17(v4, 1, v11) == 1)
  {
    (*(v12 + 8))(v16, v11);
    goto LABEL_5;
  }

  v20 = v28;
  v18(v28, v4, v11);
  v30[2] = sub_1A957B1A8();
  v30[3] = v21;
  v30[0] = sub_1A957B148();
  v30[1] = v22;
  v29[0] = sub_1A957B148();
  v29[1] = v23;
  v24 = sub_1A93820F4();
  v25 = sub_1A957CD08(v30, v29, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v24, v24, v24);

  v26 = *(v12 + 8);
  v26(v20, v11);
  v26(v16, v11);
  return v25;
}

uint64_t Locale.withTTSLanguageDisambiguation(overrides:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v67 = a1;
  v69 = a2;
  v3 = sub_1A957B0E8();
  v65 = *(v3 - 8);
  v66 = v3;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v64 = &v56 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v63 = &v56 - v6;
  v7 = type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  v73 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v68 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v62 = &v56 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v56 - v13;
  MEMORY[0x1EEE9AC00](v12);
  v16 = &v56 - v15;
  v17 = sub_1A957B2E8();
  v18 = *(v17 - 8);
  v19 = MEMORY[0x1EEE9AC00](v17);
  v21 = &v56 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v23 = &v56 - v22;
  v24 = sub_1A957B188();
  v25 = *(v24 - 8);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v61 = &v56 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v29 = &v56 - v28;
  v74 = v2;
  sub_1A957B2F8();
  sub_1A957B2B8();
  v71 = *(v18 + 8);
  v72 = v17;
  v71(v23, v17);
  v70 = *(v25 + 48);
  if (v70(v16, 1, v24) == 1)
  {
    sub_1A937B960(v16, &qword_1EB386A68, &qword_1A9587F40);
LABEL_10:
    v40 = v69;
    v41 = sub_1A957B308();
    return (*(*(v41 - 8) + 16))(v40, v74, v41);
  }

  else
  {
    v60 = v25;
    v58 = *(v25 + 32);
    v59 = v25 + 32;
    v58(v29, v16, v24);
    if (qword_1ED970400 != -1)
    {
      goto LABEL_25;
    }

    while (1)
    {

      v31 = sub_1A93A80E8(v30);
      v32 = sub_1A957B148();
      v34 = sub_1A93A8204(v32, v33, v31);

      v35 = v68;
      if ((v34 & 1) == 0)
      {
        (*(v60 + 8))(v29, v24);
        goto LABEL_10;
      }

      v36 = v67;
      if (v67 && *(v67 + 16) && (v37 = sub_1A93AB008(v29), (v38 & 1) != 0))
      {
        v39 = *(*(v36 + 56) + 8 * v37);
      }

      else
      {
        v39 = MEMORY[0x1E69E7CC0];
      }

      if (qword_1EB3892C0 != -1)
      {
        swift_once();
      }

      v43 = *(qword_1EB3A7850 + 16);
      v57 = v29;
      if (v43)
      {
        sub_1A93AB008(v29);
        if (v44)
        {
          v75[0] = v39;

          sub_1A93ABEB4(v45);
          v39 = v75[0];
        }
      }

      v46 = *(v39 + 16);
      if (!v46)
      {
        break;
      }

      v29 = 0;
      while (v29 < *(v39 + 16))
      {
        sub_1A93AD140(v39 + ((*(v73 + 80) + 32) & ~*(v73 + 80)) + *(v73 + 72) * v29, v35);
        sub_1A957B2F8();
        sub_1A93A8D34(v21, v14);
        sub_1A93AD1A4(v35);
        v71(v21, v72);
        if (v70(v14, 1, v24) != 1)
        {

          v48 = v61;
          v58(v61, v14, v24);
          sub_1A957B118();
          v49 = v63;
          sub_1A957B0D8();
          v50 = v60;
          v51 = v62;
          (*(v60 + 16))(v62, v48, v24);
          (*(v50 + 56))(v51, 0, 1, v24);
          v52 = sub_1A957B0C8();
          sub_1A957B298();
          v52(v75, 0);
          v53 = v65;
          v54 = v66;
          (*(v65 + 16))(v64, v49, v66);
          sub_1A957B0F8();
          (*(v53 + 8))(v49, v54);
          v55 = *(v50 + 8);
          v55(v48, v24);
          return (v55)(v57, v24);
        }

        ++v29;
        sub_1A937B960(v14, &qword_1EB386A68, &qword_1A9587F40);
        if (v46 == v29)
        {
          goto LABEL_22;
        }
      }

      __break(1u);
LABEL_25:
      swift_once();
    }

LABEL_22:

    (*(v60 + 8))(v57, v24);
    v47 = sub_1A957B308();
    return (*(*(v47 - 8) + 16))(v69, v74, v47);
  }
}

uint64_t Array<A>.toAXPrimaryLocales.getter(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v20 = MEMORY[0x1E69E7CC0];
  v7 = *(a1 + 16);
  if (!v7)
  {
    v10 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (v11)
    {
      goto LABEL_5;
    }

LABEL_11:

    return MEMORY[0x1E69E7CC0];
  }

  v8 = (a1 + 40);
  do
  {
    v9 = *v8;
    v19[0] = *(v8 - 1);
    v19[1] = v9;
    sub_1A93AA410(&v20, v19, &v18);

    v10 = v18;
    v20 = v18;
    v8 += 2;
    --v7;
  }

  while (v7);
  v11 = *(v18 + 16);
  if (!v11)
  {
    goto LABEL_11;
  }

LABEL_5:
  v19[0] = v6;
  sub_1A93ABB88(0, v11, 0);
  v12 = v19[0];
  v13 = v10 + 40;
  do
  {

    sub_1A957B1B8();
    v19[0] = v12;
    v15 = *(v12 + 16);
    v14 = *(v12 + 24);
    if (v15 >= v14 >> 1)
    {
      sub_1A93ABB88((v14 > 1), v15 + 1, 1);
      v12 = v19[0];
    }

    *(v12 + 16) = v15 + 1;
    (*(v3 + 32))(v12 + ((*(v3 + 80) + 32) & ~*(v3 + 80)) + *(v3 + 72) * v15, v5, v2);
    v13 += 16;
    --v11;
  }

  while (v11);

  return v12;
}

uint64_t sub_1A93AA410@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v36 = a3;
  v5 = sub_1A957B2A8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v32 - v10;
  v12 = sub_1A957B0E8();
  v33 = *(v12 - 8);
  v34 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v32 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = *a1;
  v16 = *a2;
  v15 = a2[1];
  if (qword_1ED970AF0 != -1)
  {
    swift_once();
  }

  v17 = qword_1ED970AF8[0];
  if (*(qword_1ED970AF8[0] + 16))
  {
    v18 = sub_1A937A490(v16, v15);
    if (v19)
    {
      v20 = *(*(v17 + 56) + 8 * v18);
      v37 = v35;

      result = sub_1A93ABFE0(v20);
      *v36 = v37;
      return result;
    }
  }

  sub_1A957B0D8();

  sub_1A957B268();
  sub_1A957B288();
  (*(v6 + 8))(v8, v5);
  v22 = sub_1A957B188();
  v23 = *(v22 - 8);
  if ((*(v23 + 48))(v11, 1, v22) == 1)
  {
    sub_1A937B960(v11, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    v24 = sub_1A957B148();
    v26 = v25;
    (*(v23 + 8))(v11, v22);
    if (*(v17 + 16))
    {
      sub_1A937A490(v24, v26);
      v28 = v27;

      if (v28)
      {

        v30 = sub_1A93A8724(v29, v14);

        v37 = v35;

        sub_1A93ABFE0(v30);
        *v36 = v37;
        return (*(v33 + 8))(v14, v34);
      }
    }

    else
    {
    }
  }

  sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = v16;
  *(inited + 40) = v15;
  v37 = v35;

  sub_1A93ABFE0(inited);
  *v36 = v37;
  return (*(v33 + 8))(v14, v34);
}

uint64_t Array<A>.toAXSecondaryLocales.getter(uint64_t a1)
{
  v2 = sub_1A957B308();
  v3 = *(v2 - 8);
  v33 = v2;
  v34 = v3;
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x1E69E7CC0];
  v32 = *(a1 + 16);
  if (v32)
  {
    v7 = 0;
    v30 = a1 + 32;
    v31 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
    while (1)
    {
      v8 = (v30 + 16 * v7);
      v10 = *v8;
      v9 = v8[1];
      v11 = qword_1ED970AE0;

      if (v11 != -1)
      {
        swift_once();
      }

      v12 = qword_1ED970AE8;
      if (*(qword_1ED970AE8 + 16))
      {
        break;
      }

      v16 = MEMORY[0x1E69E7CC0];
      v17 = *(MEMORY[0x1E69E7CC0] + 16);
      if (v17)
      {
        goto LABEL_12;
      }

LABEL_3:
      ++v7;

      v5 = v31;
      if (v7 == v32)
      {
        goto LABEL_19;
      }
    }

    v13 = sub_1A937A490(v10, v9);
    v15 = v14;

    v16 = MEMORY[0x1E69E7CC0];
    if (v15)
    {
      v16 = *(*(v12 + 56) + 8 * v13);
    }

    v17 = *(v16 + 16);
    if (!v17)
    {
      goto LABEL_3;
    }

LABEL_12:
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v6 = sub_1A93AC2AC(0, *(v6 + 2) + 1, 1, v6);
    }

    v18 = (v16 + 40);
    do
    {
      v19 = *(v18 - 1);
      v20 = *v18;
      v22 = *(v6 + 2);
      v21 = *(v6 + 3);

      if (v22 >= v21 >> 1)
      {
        v6 = sub_1A93AC2AC((v21 > 1), v22 + 1, 1, v6);
      }

      *(v6 + 2) = v22 + 1;
      v23 = &v6[16 * v22];
      *(v23 + 4) = v19;
      *(v23 + 5) = v20;
      v18 += 2;
      --v17;
    }

    while (v17);
    goto LABEL_3;
  }

LABEL_19:
  v24 = *(v6 + 2);
  if (v24)
  {
    v35 = MEMORY[0x1E69E7CC0];
    sub_1A93ABB88(0, v24, 0);
    v25 = v35;
    v26 = v6 + 40;
    do
    {

      sub_1A957B1B8();
      v35 = v25;
      v28 = *(v25 + 16);
      v27 = *(v25 + 24);
      if (v28 >= v27 >> 1)
      {
        sub_1A93ABB88((v27 > 1), v28 + 1, 1);
        v25 = v35;
      }

      *(v25 + 16) = v28 + 1;
      (*(v34 + 32))(v25 + ((*(v34 + 80) + 32) & ~*(v34 + 80)) + *(v34 + 72) * v28, v5, v33);
      v26 += 16;
      --v24;
    }

    while (v24);
  }

  else
  {

    return MEMORY[0x1E69E7CC0];
  }

  return v25;
}

id TTSAXResource.primaryLocales.getter()
{
  result = [v0 languages];
  if (result)
  {
    v2 = result;
    v3 = sub_1A957C4C8();

    v4 = Array<A>.toAXPrimaryLocales.getter(v3);

    return v4;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void TTSAXResource.secondaryLocales.getter()
{
  v1 = [v0 synthesisProviderVoice];
  if (v1)
  {
    v2 = v1;
    v3 = [v1 supportedLanguages];

    v4 = sub_1A957C4C8();
  }

  else
  {
    v4 = MEMORY[0x1E69E7CC0];
  }

  v5 = sub_1A93AD200(v4);

  v6 = [v0 synthesisProviderVoice];
  if (v6)
  {
    v7 = v6;
    v8 = [v6 primaryLanguages];

    v9 = sub_1A957C4C8();
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1A93AC3B8(v9, v5);

  v36 = v10;
  v11 = [v0 synthesisProviderVoice];
  if (!v11 || (v12 = v11, v13 = [v11 isFirstParty], v12, (v13 & 1) == 0))
  {

LABEL_31:
    sub_1A93A8A18(v10);

    return;
  }

  v14 = 0;
  v15 = v5 + 56;
  v16 = 1 << *(v5 + 32);
  v17 = -1;
  if (v16 < 64)
  {
    v17 = ~(-1 << v16);
  }

  v18 = v17 & *(v5 + 56);
  v19 = (v16 + 63) >> 6;
  v34 = v5;
  while (v18)
  {
LABEL_18:
    v21 = (*(v5 + 48) + ((v14 << 10) | (16 * __clz(__rbit64(v18)))));
    v23 = *v21;
    v22 = v21[1];
    v24 = qword_1ED970AE0;

    if (v24 != -1)
    {
      swift_once();
    }

    v25 = qword_1ED970AE8;
    if (!*(qword_1ED970AE8 + 16))
    {

      v29 = MEMORY[0x1E69E7CC0];
      v30 = *(MEMORY[0x1E69E7CC0] + 16);
      if (!v30)
      {
        goto LABEL_12;
      }

LABEL_26:
      v31 = (v29 + 40);
      do
      {
        v32 = *(v31 - 1);
        v33 = *v31;

        sub_1A93AB260(v35, v32, v33);

        v31 += 2;
        --v30;
      }

      while (v30);
      goto LABEL_12;
    }

    v26 = sub_1A937A490(v23, v22);
    v28 = v27;

    v29 = MEMORY[0x1E69E7CC0];
    if (v28)
    {
      v29 = *(*(v25 + 56) + 8 * v26);
    }

    v30 = *(v29 + 16);
    if (v30)
    {
      goto LABEL_26;
    }

LABEL_12:
    v18 &= v18 - 1;

    v5 = v34;
  }

  while (1)
  {
    v20 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v20 >= v19)
    {

      v10 = v36;
      goto LABEL_31;
    }

    v18 = *(v15 + 8 * v20);
    ++v14;
    if (v18)
    {
      v14 = v20;
      goto LABEL_18;
    }
  }

  __break(1u);
}

uint64_t sub_1A93AAEE0(uint64_t *a1)
{
  v2 = *a1;
  v3 = a1[1];
  if (qword_1ED970400 != -1)
  {
    v15 = v2;
    v16 = a1[1];
    swift_once();
    v3 = v16;
    v2 = v15;
  }

  v4 = qword_1ED970408;
  if (!*(qword_1ED970408 + 16) || (v5 = sub_1A937A490(v2, v3), (v6 & 1) == 0))
  {
    sub_1A957B148();
    goto LABEL_12;
  }

  v7 = (*(v4 + 56) + 16 * v5);
  v9 = *v7;
  v8 = v7[1];

  v11 = sub_1A957B148();
  if (!v8)
  {
LABEL_12:
    v13 = 0;
    goto LABEL_13;
  }

  if (v9 == v11 && v8 == v10)
  {

    v13 = 1;
  }

  else
  {
    v13 = sub_1A957D3E8();
  }

LABEL_13:

  return v13 & 1;
}

unint64_t sub_1A93AB008(uint64_t a1)
{
  sub_1A957B188();
  sub_1A93AD42C(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  v2 = sub_1A957C058();

  return sub_1A93AB0A0(a1, v2);
}

unint64_t sub_1A93AB0A0(uint64_t a1, uint64_t a2)
{
  v19 = a1;
  v4 = sub_1A957B188();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v18 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v12 = v5 + 16;
    v11 = v13;
    v14 = *(v12 + 56);
    do
    {
      v11(v7, *(v20 + 48) + v14 * v9, v4);
      sub_1A93AD42C(&qword_1EB386490, MEMORY[0x1E6969610], MEMORY[0x1E6969628]);
      v15 = sub_1A957C098();
      (*(v12 - 8))(v7, v4);
      if (v15)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
    }

    while (((*(v18 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

uint64_t sub_1A93AB260(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_1A957D4F8();
  sub_1A957C228();
  v8 = sub_1A957D548();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_1A957D3E8() & 1) != 0)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_9;
      }
    }

    v16 = (*(v7 + 48) + 16 * v10);
    v17 = v16[1];
    *a1 = *v16;
    a1[1] = v17;

    return 0;
  }

  else
  {
LABEL_9:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v3;

    sub_1A93AB610(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_1A93AB3B0(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEA8();
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
      sub_1A957D4F8();
      sub_1A957C228();
      result = sub_1A957D548();
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

uint64_t sub_1A93AB610(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v7 = result;
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_1A93AB3B0(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      result = sub_1A93AB790();
      goto LABEL_16;
    }

    sub_1A93AB8EC(v8 + 1);
  }

  v10 = *v4;
  sub_1A957D4F8();
  sub_1A957C228();
  result = sub_1A957D548();
  v11 = -1 << *(v10 + 32);
  a3 = result & ~v11;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v12 = ~v11;
    do
    {
      v13 = (*(v10 + 48) + 16 * a3);
      if (*v13 == v7 && v13[1] == a2)
      {
        goto LABEL_19;
      }

      result = sub_1A957D3E8();
      if (result)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v12;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v15 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v16 = (*(v15 + 48) + 16 * a3);
  *v16 = v7;
  v16[1] = a2;
  v17 = *(v15 + 16);
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (!v18)
  {
    *(v15 + 16) = v19;
    return result;
  }

  __break(1u);
LABEL_19:
  result = sub_1A957D428();
  __break(1u);
  return result;
}

void *sub_1A93AB790()
{
  v1 = v0;
  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  v2 = *v0;
  v3 = sub_1A957CE98();
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
    v10 = *(v2 + 56);
    v11 = -1;
    if (v9 < 64)
    {
      v11 = ~(-1 << v9);
    }

    v12 = v11 & v10;
    v13 = (v9 + 63) >> 6;
    if ((v11 & v10) != 0)
    {
      do
      {
        v14 = __clz(__rbit64(v12));
        v12 &= v12 - 1;
LABEL_17:
        v17 = 16 * (v14 | (v8 << 6));
        v18 = (*(v2 + 48) + v17);
        v19 = v18[1];
        v20 = (*(v4 + 48) + v17);
        *v20 = *v18;
        v20[1] = v19;
      }

      while (v12);
    }

    v15 = v8;
    while (1)
    {
      v8 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v8 >= v13)
      {
        goto LABEL_19;
      }

      v16 = *(v2 + 56 + 8 * v8);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v12 = (v16 - 1) & v16;
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

uint64_t sub_1A93AB8EC(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEA8();
  v5 = result;
  if (*(v3 + 16))
  {
    v6 = 0;
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
    v11 = result + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_1A957D4F8();

      sub_1A957C228();
      result = sub_1A957D548();
      v20 = -1 << *(v5 + 32);
      v21 = result & ~v20;
      v22 = v21 >> 6;
      if (((-1 << v21) & ~*(v11 + 8 * (v21 >> 6))) == 0)
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
          v26 = *(v11 + 8 * v22);
          if (v26 != -1)
          {
            v12 = __clz(__rbit64(~v26)) + (v22 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v21) & ~*(v11 + 8 * (v21 >> 6)))) | v21 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      v13 = (*(v5 + 48) + 16 * v12);
      *v13 = v18;
      v13[1] = v19;
      ++*(v5 + 16);
    }

    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v16 = *(v3 + 56 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v9 = (v16 - 1) & v16;
        goto LABEL_15;
      }
    }

    __break(1u);
LABEL_28:
    __break(1u);
  }

  else
  {

LABEL_26:
    *v2 = v5;
  }

  return result;
}

void *sub_1A93ABB24(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93ABCD8(a1, a2, a3, *v3, &qword_1EB386B40, &qword_1A95885C8, MEMORY[0x1E6969610]);
  *v3 = result;
  return result;
}

char *sub_1A93ABB68(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93ABBCC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A93ABB88(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93ABCD8(a1, a2, a3, *v3, &qword_1EB386B18, &unk_1A95916F0, MEMORY[0x1E6969770]);
  *v3 = result;
  return result;
}

char *sub_1A93ABBCC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

void *sub_1A93ABCD8(void *result, int64_t a2, char a3, void *a4, uint64_t *a5, uint64_t *a6, uint64_t (*a7)(void))
{
  v9 = result;
  if (a3)
  {
    v10 = a4[3];
    v11 = v10 >> 1;
    if ((v10 >> 1) < a2)
    {
      if (v11 + 0x4000000000000000 < 0)
      {
LABEL_30:
        __break(1u);
        return result;
      }

      v11 = v10 & 0xFFFFFFFFFFFFFFFELL;
      if ((v10 & 0xFFFFFFFFFFFFFFFELL) <= a2)
      {
        v11 = a2;
      }
    }
  }

  else
  {
    v11 = a2;
  }

  v12 = a4[2];
  if (v11 <= v12)
  {
    v13 = a4[2];
  }

  else
  {
    v13 = v11;
  }

  if (!v13)
  {
    v17 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(a5, a6);
  v14 = *(a7(0) - 8);
  v15 = *(v14 + 72);
  v16 = (*(v14 + 80) + 32) & ~*(v14 + 80);
  v17 = swift_allocObject();
  result = j__malloc_size(v17);
  if (!v15)
  {
    __break(1u);
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if ((result - v16) == 0x8000000000000000 && v15 == -1)
  {
    goto LABEL_29;
  }

  v17[2] = v12;
  v17[3] = 2 * ((result - v16) / v15);
LABEL_19:
  v19 = *(a7(0) - 8);
  if (v9)
  {
    if (v17 < a4 || (v20 = (*(v19 + 80) + 32) & ~*(v19 + 80), v17 + v20 >= a4 + v20 + *(v19 + 72) * v12))
    {
      swift_arrayInitWithTakeFrontToBack();
    }

    else if (v17 != a4)
    {
      swift_arrayInitWithTakeBackToFront();
    }

    a4[2] = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v17;
}

uint64_t sub_1A93ABEB4(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  if (isUniquelyReferenced_nonNull_native && v5 <= v3[3] >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v12 = v4 + v2;
  }

  else
  {
    v12 = v4;
  }

  v3 = sub_1A93AC0D4(isUniquelyReferenced_nonNull_native, v12, 1, v3);
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  v8 = (v3[3] >> 1) - v3[2];
  result = type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  if (v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = v3[2];
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    v3[2] = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

uint64_t sub_1A93ABFE0(uint64_t result)
{
  v2 = *(result + 16);
  v3 = *v1;
  v4 = *(*v1 + 16);
  v5 = v4 + v2;
  if (__OFADD__(v4, v2))
  {
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  v6 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v5 <= *(v3 + 24) >> 1)
  {
    if (*(v6 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_13;
  }

  if (v4 <= v5)
  {
    v10 = v4 + v2;
  }

  else
  {
    v10 = v4;
  }

  result = sub_1A93AC2AC(result, v10, 1, v3);
  v3 = result;
  if (!*(v6 + 16))
  {
LABEL_13:

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

LABEL_5:
  if ((*(v3 + 24) >> 1) - *(v3 + 16) < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  swift_arrayInitWithCopy();

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v7 = *(v3 + 16);
  v8 = __OFADD__(v7, v2);
  v9 = v7 + v2;
  if (!v8)
  {
    *(v3 + 16) = v9;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1A93AC0D4(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386B20, &qword_1A95885A0);
  v10 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for TTSMacroLanguageDisambiguationMapping(0) - 8);
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

char *sub_1A93AC2AC(char *result, int64_t a2, char a3, char *a4)
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
    sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
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
    v10 = MEMORY[0x1E69E7CC0];
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

unint64_t *sub_1A93AC3B8(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v57[2] = *MEMORY[0x1E69E9840];
  if (!*(a2 + 16))
  {

    return MEMORY[0x1E69E7CD0];
  }

  v57[0] = a1;
  v3 = *(a1 + 16);

  if (!v3)
  {
    goto LABEL_42;
  }

  v5 = 0;
  v48 = 0;
  v6 = v4 + 32;
  v7 = (v2 + 56);
  v53 = v4;
  v54 = v4 + 32;
  while (1)
  {
    v8 = (v6 + 16 * v5);
    v10 = *v8;
    v9 = v8[1];
    v51 = v5 + 1;
    sub_1A957D4F8();

    sub_1A957C228();
    v11 = sub_1A957D548();
    v12 = -1 << *(v2 + 32);
    v13 = v11 & ~v12;
    v14 = v13 >> 6;
    v15 = 1 << v13;
    if (((1 << v13) & v7[v13 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    if (v51 == v3)
    {
      goto LABEL_42;
    }
  }

  v16 = (*(v2 + 48) + 16 * v13);
  if (*v16 != v10 || v16[1] != v9)
  {
    v18 = ~v12;
    while ((sub_1A957D3E8() & 1) == 0)
    {
      v13 = (v13 + 1) & v18;
      v14 = v13 >> 6;
      v15 = 1 << v13;
      if (((1 << v13) & v7[v13 >> 6]) == 0)
      {
        v6 = v54;
        goto LABEL_6;
      }

      v19 = (*(v2 + 48) + 16 * v13);
      if (*v19 == v10 && v19[1] == v9)
      {
        break;
      }
    }
  }

  v57[1] = v51;

  v21 = *(v2 + 32);
  v49 = ((1 << v21) + 63) >> 6;
  v22 = 8 * v49;
  v23 = v54;
  if ((v21 & 0x3Fu) <= 0xD)
  {
    goto LABEL_18;
  }

LABEL_46:
  v42 = v22;

  v43 = v42;
  if (swift_stdlib_isStackAllocationSafe())
  {

LABEL_18:
    v50 = &v47;
    MEMORY[0x1EEE9AC00](v20);
    v13 = &v47 - ((v24 + 15) & 0x3FFFFFFFFFFFFFF0);
    v56 = v7;
    memcpy(v13, v7, v24);
    v55 = v2;
    v25 = *(v2 + 16);
    v26 = *(v13 + 8 * v14) & ~v15;
    v52 = v13;
    *(v13 + 8 * v14) = v26;
    v27 = v25 - 1;
    v28 = v53;
    v7 = *(v53 + 16);
    v29 = v51;
    while (1)
    {
      v51 = v27;
      if (v29 == v7)
      {
LABEL_41:
        v2 = sub_1A93ACA48(v52, v49, v51, v55);
LABEL_42:

        return v2;
      }

      v14 = v29;
      while (1)
      {
        if (v29 < 0)
        {
          __break(1u);
LABEL_45:
          __break(1u);
          goto LABEL_46;
        }

        if (v14 >= *(v28 + 16))
        {
          goto LABEL_45;
        }

        v31 = (v23 + 16 * v14);
        v32 = *v31;
        v15 = v31[1];
        ++v14;
        v2 = v55;
        sub_1A957D4F8();

        sub_1A957C228();
        v33 = sub_1A957D548();
        v34 = -1 << *(v2 + 32);
        v35 = v33 & ~v34;
        v13 = v35 >> 6;
        v36 = 1 << v35;
        if (((1 << v35) & v56[v35 >> 6]) != 0)
        {
          break;
        }

LABEL_37:

LABEL_22:
        v23 = v54;
        if (v14 == v7)
        {
          goto LABEL_41;
        }
      }

      v37 = (*(v2 + 48) + 16 * v35);
      if (*v37 != v32 || v37[1] != v15)
      {
        v39 = ~v34;
        v2 = 1;
        while ((sub_1A957D3E8() & 1) == 0)
        {
          v35 = (v35 + 1) & v39;
          v13 = v35 >> 6;
          v36 = 1 << v35;
          if (((1 << v35) & v56[v35 >> 6]) == 0)
          {
            v28 = v53;
            goto LABEL_37;
          }

          v40 = (*(v55 + 48) + 16 * v35);
          if (*v40 == v32 && v40[1] == v15)
          {
            break;
          }
        }
      }

      v28 = v53;
      v30 = v52[v13];
      v52[v13] = v30 & ~v36;
      if ((v30 & v36) == 0)
      {
        goto LABEL_22;
      }

      v27 = v51 - 1;
      v23 = v54;
      if (__OFSUB__(v51, 1))
      {
        __break(1u);
      }

      v29 = v14;
      if (v51 == 1)
      {

        v2 = MEMORY[0x1E69E7CD0];
        goto LABEL_42;
      }
    }
  }

  v44 = swift_slowAlloc();
  memcpy(v44, v7, v43);
  v45 = v48;
  v46 = sub_1A93AC864(v44, v49, v2, v13, v57);

  if (!v45)
  {

    MEMORY[0x1AC587CD0](v44, -1, -1);

    return v46;
  }

  result = MEMORY[0x1AC587CD0](v44, -1, -1);
  __break(1u);
  return result;
}

unint64_t *sub_1A93AC864(unint64_t *result, uint64_t a2, uint64_t a3, unint64_t a4, void *a5)
{
  v7 = *(a3 + 16);
  v27 = result;
  *(result + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v9 = a3 + 56;
  while (2)
  {
    v26 = v8;
    do
    {
      while (1)
      {
        v11 = a5[1];
        v12 = *(*a5 + 16);
        if (v11 == v12)
        {

          return sub_1A93ACA48(v27, a2, v26, a3);
        }

        if (v11 >= v12)
        {
          __break(1u);
          goto LABEL_23;
        }

        v13 = *a5 + 16 * v11;
        v15 = *(v13 + 32);
        v14 = *(v13 + 40);
        a5[1] = v11 + 1;
        sub_1A957D4F8();

        sub_1A957C228();
        v16 = sub_1A957D548();
        v17 = -1 << *(a3 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        v20 = 1 << v18;
        if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) != 0)
        {
          break;
        }

LABEL_17:
      }

      v21 = (*(a3 + 48) + 16 * v18);
      if (*v21 != v15 || v21[1] != v14)
      {
        v23 = ~v17;
        while ((sub_1A957D3E8() & 1) == 0)
        {
          v18 = (v18 + 1) & v23;
          v19 = v18 >> 6;
          v20 = 1 << v18;
          if (((1 << v18) & *(v9 + 8 * (v18 >> 6))) == 0)
          {
            goto LABEL_17;
          }

          v24 = (*(a3 + 48) + 16 * v18);
          if (*v24 == v15 && v24[1] == v14)
          {
            break;
          }
        }
      }

      v10 = v27[v19];
      v27[v19] = v10 & ~v20;
    }

    while ((v10 & v20) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
LABEL_23:
      __break(1u);
      return result;
    }

    if (v26 != 1)
    {
      continue;
    }

    return MEMORY[0x1E69E7CD0];
  }
}

uint64_t sub_1A93ACA48(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x1E69E7CD0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  sub_1A937829C(&qword_1EB386B00, &qword_1A958F040);
  result = sub_1A957CEB8();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  v29 = v4;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = (*(v4 + 48) + 16 * (v13 | (v11 << 6)));
    v17 = *v16;
    v18 = v16[1];
    sub_1A957D4F8();

    sub_1A957C228();
    result = sub_1A957D548();
    v19 = -1 << *(v9 + 32);
    v20 = result & ~v19;
    v21 = v20 >> 6;
    if (((-1 << v20) & ~*(v12 + 8 * (v20 >> 6))) == 0)
    {
      v23 = 0;
      v24 = (63 - v19) >> 6;
      while (++v21 != v24 || (v23 & 1) == 0)
      {
        v25 = v21 == v24;
        if (v21 == v24)
        {
          v21 = 0;
        }

        v23 |= v25;
        v26 = *(v12 + 8 * v21);
        if (v26 != -1)
        {
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v22 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v22 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v22;
    v27 = (*(v9 + 48) + 16 * v22);
    *v27 = v17;
    v27[1] = v18;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    v4 = v29;
    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

unint64_t sub_1A93ACC6C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    sub_1A937829C(&qword_1EB386B10, &unk_1A9588590);
    v3 = sub_1A957D128();

    for (i = (a1 + 48); ; i += 3)
    {
      v5 = *(i - 2);
      v6 = *(i - 1);
      v7 = *i;

      result = sub_1A937A490(v5, v6);
      if (v9)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v10 = (v3[6] + 16 * result);
      *v10 = v5;
      v10[1] = v6;
      *(v3[7] + 8 * result) = v7;
      v11 = v3[2];
      v12 = __OFADD__(v11, 1);
      v13 = v11 + 1;
      if (v12)
      {
        goto LABEL_10;
      }

      v3[2] = v13;
      if (!--v1)
      {

        return v3;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

unint64_t sub_1A93ACD70(uint64_t a1)
{
  v2 = sub_1A937829C(&qword_1EB386B30, &unk_1A95885B0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_1A937829C(&qword_1EB386B38, &qword_1A958C780);
    v7 = sub_1A957D128();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_1A9391BAC(v9, v5, &qword_1EB386B30, &unk_1A95885B0);
      result = sub_1A93AB008(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_1A957B188();
      result = (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      *(v7[7] + 8 * v13) = *&v5[v8];
      v16 = v7[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        goto LABEL_10;
      }

      v7[2] = v18;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x1E69E7CC8];
  }

  return result;
}

uint64_t sub_1A93ACF58(uint64_t a1)
{
  v2 = sub_1A957B188();
  v3 = *(v2 - 8);
  v4 = MEMORY[0x1EEE9AC00](v2);
  v6 = &v17 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v8 = &v17 - v7;
  v9 = *(a1 + 16);
  v10 = sub_1A93AD42C(&qword_1EB386498, MEMORY[0x1E6969610], MEMORY[0x1E6969620]);
  result = MEMORY[0x1AC585770](v9, v2, v10);
  v18 = result;
  if (v9)
  {
    v14 = *(v3 + 16);
    v12 = v3 + 16;
    v13 = v14;
    v15 = a1 + ((*(v12 + 64) + 32) & ~*(v12 + 64));
    v16 = *(v12 + 56);
    do
    {
      v13(v6, v15, v2);
      sub_1A93A3F0C(v8, v6);
      (*(v12 - 8))(v8, v2);
      v15 += v16;
      --v9;
    }

    while (v9);
    return v18;
  }

  return result;
}

uint64_t type metadata accessor for TTSMacroLanguageDisambiguationMapping(uint64_t a1)
{
  result = qword_1EB390C50;
  if (!qword_1EB390C50)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1A93AD140(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93AD1A4(uint64_t a1)
{
  v2 = type metadata accessor for TTSMacroLanguageDisambiguationMapping(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93AD200(uint64_t a1)
{
  v2 = *(a1 + 16);
  result = MEMORY[0x1AC585770](v2, MEMORY[0x1E69E6158], MEMORY[0x1E69E6168]);
  v8 = result;
  if (v2)
  {
    v4 = (a1 + 40);
    do
    {
      v6 = *(v4 - 1);
      v5 = *v4;

      sub_1A93AB260(&v7, v6, v5);

      v4 += 2;
      --v2;
    }

    while (v2);
    return v8;
  }

  return result;
}

void sub_1A93AD298(uint64_t a1)
{
  sub_1A93AD320(319);
  if (v1 <= 0x3F)
  {
    sub_1A93AD394();
    if (v2 <= 0x3F)
    {
      sub_1A93AD3E4();
      if (v3 <= 0x3F)
      {
        swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      }
    }
  }
}

void sub_1A93AD320(uint64_t a1)
{
  if (!qword_1EB386428)
  {
    sub_1A957B218();
    sub_1A957B188();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EB386428);
    }
  }
}

unint64_t sub_1A93AD394()
{
  result = qword_1EB386378;
  if (!qword_1EB386378)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_1EB386378);
  }

  return result;
}

void sub_1A93AD3E4()
{
  if (!qword_1EB386430)
  {
    v0 = sub_1A957B188();
    if (!v1)
    {
      atomic_store(v0, &qword_1EB386430);
    }
  }
}

uint64_t sub_1A93AD42C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t TTSMarkup.Language.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Language.init(_:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v4 = SpeechContext.init<each A>(_:)(v35, 0, v35, &v30);
  v32 = 0;
  memset(v31, 0, sizeof(v31));
  v5 = MEMORY[0x1E69E7D40];
  v6 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v4);
  if (*(v6 + 16) && (v7 = sub_1A937A490(0x676E616C3A6C6D78, 0xE800000000000000), (v8 & 1) != 0))
  {
    v24 = a2;
    v9 = (*(v6 + 56) + 16 * v7);
    v11 = *v9;
    v10 = v9[1];

    v33 = v11;
    v34 = v10;
    v13 = (*((*v5 & *a1) + 0x100))(v12);
    v14 = v13;
    if (v13 >> 62)
    {
      goto LABEL_22;
    }

    for (i = *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
    {
      v16 = 0;
      v17 = MEMORY[0x1E69E7CC0];
      while (1)
      {
        if ((v14 & 0xC000000000000001) != 0)
        {
          v18 = MEMORY[0x1AC585DE0](v16, v14);
        }

        else
        {
          if (v16 >= *((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_21;
          }

          v18 = *(v14 + 8 * v16 + 32);
        }

        v19 = v18;
        v20 = v16 + 1;
        if (__OFADD__(v16, 1))
        {
          break;
        }

        sub_1A93D1250(&v25);

        if (v26)
        {
          sub_1A932D070(&v25, &v27);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v17 = sub_1A93ADC90(0, v17[2] + 1, 1, v17);
          }

          v22 = v17[2];
          v21 = v17[3];
          if (v22 >= v21 >> 1)
          {
            v17 = sub_1A93ADC90((v21 > 1), v22 + 1, 1, v17);
          }

          v17[2] = v22 + 1;
          sub_1A932D070(&v27, &v17[5 * v22 + 4]);
        }

        else
        {
          sub_1A937B960(&v25, &qword_1EB3868E8, &unk_1A958F280);
        }

        ++v16;
        if (v20 == i)
        {
          goto LABEL_24;
        }
      }

      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      ;
    }

    v17 = MEMORY[0x1E69E7CC0];
LABEL_24:

    v28 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
    v29 = &protocol witness table for <A> [A];

    *&v27 = v17;
    sub_1A93A38D8(&v27, v31);
    sub_1A93ADDD8(&v30, v24);
    return sub_1A93ADE10(&v30);
  }

  else
  {

    result = sub_1A937B960(v31, &qword_1EB3868E8, &unk_1A958F280);
    *a2 = 0u;
    a2[1] = 0u;
    a2[2] = 0u;
    a2[3] = 0u;
  }

  return result;
}

uint64_t TTSMarkup.Language.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 112))(v3, a2);
}

{
  v9 = (*(a3 + 88) + **(a3 + 88));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t TTSMarkup.Language.init(languageCode:speech:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void (*a3)(void *__return_ptr, uint64_t *)@<X2>, void *a4@<X8>)
{
  v7 = a4;
  v8 = SpeechContext.init<each A>(_:)(&v11, 0, &v11, a4);
  *++v7 = 0u;
  *(v7 + 1) = 0u;
  v7[4] = 0;
  v7[5] = a1;
  v7[6] = a2;
  a3(v10, v8);
  return sub_1A93A38D8(v10, v7);
}

unint64_t TTSMarkup.Language.attributes.getter()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x676E616C3A6C6D78;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

unint64_t sub_1A93ADB04()
{
  sub_1A937829C(&qword_1EB3868D8, &unk_1A959A1B0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1A9587160;
  *(inited + 32) = 0x676E616C3A6C6D78;
  v3 = *(v0 + 48);
  v2 = *(v0 + 56);
  *(inited + 40) = 0xE800000000000000;
  *(inited + 48) = v3;
  *(inited + 56) = v2;

  v4 = sub_1A9381740(inited);
  swift_setDeallocating();
  sub_1A937B960(inited + 32, &qword_1EB3868E0, &qword_1A95885D0);
  return v4;
}

uint64_t sub_1A93ADBE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Language.accept<A>(_:)(a1, a2, a3);
}

void *sub_1A93ADC90(void *result, int64_t a2, char a3, void *a4)
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
    sub_1A937829C(&qword_1EB386B50, &unk_1A95891A0);
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    v10[2] = v8;
    v10[3] = 2 * ((v11 - 32) / 40);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  if (v5)
  {
    if (v10 != a4 || v10 + 4 >= &a4[5 * v8 + 4])
    {
      memmove(v10 + 4, a4 + 4, 40 * v8);
    }

    a4[2] = 0;
  }

  else
  {
    sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1A93ADE40(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB3868E8, &unk_1A958F280);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t static VocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v12[3] = &type metadata for VocalizerMarkup;
  v12[4] = &off_1F1CF2420;
  LOBYTE(v12[0]) = v9;

  v10 = sub_1A93775FC();
  return sub_1A94A50A4(v12, 1, a1, 1, a3, a4, v10 & 1, a5);
}

void sub_1A93ADF74(float a1, double a2)
{
  v2 = 100.0;
  v3 = (a1 + -1.0) * 100.0;
  if (v3 < 0.0)
  {
    v4 = sub_1A94CF2F0(-100.0, 0.0, 50.0, 100.0, v3);
    if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    v2 = -9.2234e18;
    if (v4 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v4 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v5 = sub_1A94CF2F0(0.0, v2, v2, 200.0, v3);
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v5 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

void sub_1A93AE060(float a1, double a2)
{
  v2 = a1;
  v3 = 1.0;
  if (v2 < 1.0)
  {
    v3 = sub_1A94CF2F0(0.0, 1.0, 50.0, 100.0, v2);
    if ((LODWORD(v3) & 0x7FFFFFFFu) > 0x7F7FFFFF)
    {
      __break(1u);
      goto LABEL_11;
    }

    if (v3 <= -9.2234e18)
    {
LABEL_12:
      __break(1u);
      goto LABEL_13;
    }

    if (v3 < 9.2234e18)
    {
      return;
    }

    __break(1u);
  }

  v4 = sub_1A94CF2F0(v3, 4.0, 100.0, 400.0, v2);
  if ((LODWORD(v4) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v4 <= -9.2234e18)
  {
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  if (v4 >= 9.2234e18)
  {
LABEL_14:
    __break(1u);
  }
}

uint64_t sub_1A93AE13C(char *a1)
{
  v1 = 0x70733D6E745C1B20;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v3 = sub_1A957D3E8();

  if (v3)
  {
    return v1;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v5 = sub_1A957D3E8();

  if (v5)
  {
    return v1;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
LABEL_8:

    return v1;
  }

  v6 = sub_1A957D3E8();

  if ((v6 & 1) == 0)
  {
    return 32;
  }

  return v1;
}

unint64_t sub_1A93AE370()
{
  result = qword_1EB386B58;
  if (!qword_1EB386B58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B58);
  }

  return result;
}

uint64_t static SiriVocalizerMarkup.writer(supportedLocales:languageMarkupStyle:prefixText:)@<X0>(uint64_t a1@<X0>, char *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v9 = *a2;
  v11[3] = &type metadata for SiriVocalizerMarkup;
  v11[4] = &off_1F1CF2470;
  LOBYTE(v11[0]) = v9;

  return sub_1A94A50A4(v11, 0, a1, 1, a3, a4, 1, a5);
}

void sub_1A93AE554(double a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 * 1000.0;
  if ((*&v5 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.22337204e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.22337204e18)
  {
    v8 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v8);

    MEMORY[0x1AC585140](a4, a5);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A93AE628(void *a1)
{
  v1 = a1[6];
  v2 = objc_opt_self();
  v3 = sub_1A957C0C8();
  sub_1A957B1A8();
  v4 = sub_1A957C0C8();

  v5 = [v2 lhPhonemesFromIPA:v3 language:v4];

  if (v5)
  {
    v6 = sub_1A957C0F8();
    v8 = v7;

    sub_1A957CF08();

    MEMORY[0x1AC585140](v6, v8);

    MEMORY[0x1AC585140](0x726F3D696F745C1BLL, 0xEC000000205C6874);
    return 0x6C3D696F745C1B20;
  }

  else
  {
  }

  return v1;
}

void sub_1A93AE774(float a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1 * 80.0;
  if ((LODWORD(v5) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v5 <= -9.2234e18)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v5 < 9.2234e18)
  {
    v8 = sub_1A957D3A8();
    MEMORY[0x1AC585140](v8);

    MEMORY[0x1AC585140](a4, a5);
    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_1A93AE840(char *a1)
{
  v1 = 0x6570733D6E745C1BLL;
  sub_1A93AE370();
  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v3 = sub_1A957D3E8();

  if (v3)
  {
    return v1;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
    goto LABEL_8;
  }

  v5 = sub_1A957D3E8();

  if (v5)
  {
    return v1;
  }

  sub_1A957C438();
  sub_1A957C438();
  if (v9 == v7 && v10 == v8)
  {
LABEL_8:

    return v1;
  }

  v6 = sub_1A957D3E8();

  if ((v6 & 1) == 0)
  {
    return 32;
  }

  return v1;
}

uint64_t sub_1A93AEA70(uint64_t a1)
{
  if (*v1 != 1)
  {
    return 0;
  }

  v2 = sub_1A957B1A8();
  MEMORY[0x1AC585140](v2);

  MEMORY[0x1AC585140](92, 0xE100000000000000);
  return 0x3D676E616C5C1BLL;
}

uint64_t sub_1A93AEB44(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  MEMORY[0x1AC585140](a1, a2, a3, a4);
  MEMORY[0x1AC585140](a7, a8);
  return a5;
}

uint64_t sub_1A93AEBB8(float a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A93ADF74(a1, a2);
  v10 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v10);

  MEMORY[0x1AC585140](a7, a8);
  return a5;
}

uint64_t sub_1A93AEC58(float a1, double a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1A93AE060(a1, a2);
  v10 = sub_1A957D3A8();
  MEMORY[0x1AC585140](v10);

  MEMORY[0x1AC585140](a7, a8);
  return a5;
}

uint64_t VocalizerLanguageMarkupStyle.hashValue.getter()
{
  v1 = *v0;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v1);
  return sub_1A957D548();
}

uint64_t sub_1A93AEDD8(uint64_t a1)
{
  v2 = *v1;
  sub_1A957D4F8();
  MEMORY[0x1AC5863C0](v2);
  return sub_1A957D548();
}

unint64_t sub_1A93AEE20()
{
  result = qword_1EB386B60;
  if (!qword_1EB386B60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B60);
  }

  return result;
}

id sub_1A93AEFAC@<X0>(void *a1@<X0>, void *a2@<X1>, void *a3@<X8>)
{
  v6 = [a1 attributes];
  if (!v6)
  {

LABEL_8:
    sub_1A9378138(a2);
    sub_1A93847E0(__dst);
    return memcpy(a3, __dst, 0x118uLL);
  }

  v7 = v6;
  v8 = sub_1A957C038();

  sub_1A9379534(a2, v30);
  v9 = [a1 state];
  v10 = 0x20301010202uLL >> (8 * v9);
  if (v9 >= 7)
  {
    LOBYTE(v10) = 2;
  }

  v29 = v10;
  v11 = a2[3];
  v12 = a2[4];
  sub_1A93780F4(a2, v11);
  v13 = (*(v12 + 8))(v11, v12);
  v15 = v14;
  result = [a1 assetId];
  if (result)
  {
    v17 = result;
    v18 = sub_1A957C0F8();
    v20 = v19;

    v21 = sub_1A93B0D40();
    CoreSynthesizer.Voice.AssetIdentifier.init(loader:identifier:version:)(v13, v15, v18, v20, v21, v27);
    v24[0] = v27[0];
    v24[1] = v27[1];
    v25 = v28;
    sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
    v22 = swift_allocObject();
    *(v22 + 16) = xmmword_1A9587160;
    *(v22 + 32) = *sub_1A9493C9C();
    sub_1A9387410();
    sub_1A937829C(&unk_1EB388360, qword_1A958B690);
    sub_1A93B0F54();
    sub_1A957CE08();
    v23[0] = v23[1];
    sub_1A93AF494(v8, v30, &v29, v24, v23, __src);

    memcpy(__dst, __src, sizeof(__dst));
    if (sub_1A932D058(__dst) != 1)
    {
      memcpy(a3, __src, 0x118uLL);
      nullsub_23();
      return sub_1A9378138(a2);
    }

    goto LABEL_8;
  }

  __break(1u);
  return result;
}

char *sub_1A93AF284(void (*a1)(void *__return_ptr, void), uint64_t a2, unint64_t a3)
{
  if (a3 >> 62)
  {
    goto LABEL_21;
  }

  for (i = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1A957CE48())
  {
    v7 = 0;
    v8 = MEMORY[0x1E69E7CC0];
    v15 = a1;
    while (1)
    {
      if ((a3 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1AC585DE0](v7, a3);
      }

      else
      {
        if (v7 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_20;
        }

        v9 = *(a3 + 8 * v7 + 32);
      }

      v10 = v9;
      v11 = v7 + 1;
      if (__OFADD__(v7, 1))
      {
        break;
      }

      v20 = v9;
      a1(__src, &v20);
      if (v3)
      {

        return v8;
      }

      memcpy(v18, __src, sizeof(v18));
      if (sub_1A932D058(v18) == 1)
      {
        memcpy(__dst, __src, sizeof(__dst));
        sub_1A9384810(__dst);
      }

      else
      {
        memcpy(__dst, __src, sizeof(__dst));
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v8 = sub_1A93A3558(0, *(v8 + 2) + 1, 1, v8);
        }

        v13 = *(v8 + 2);
        v12 = *(v8 + 3);
        if (v13 >= v12 >> 1)
        {
          v8 = sub_1A93A3558((v12 > 1), v13 + 1, 1, v8);
        }

        memcpy(v16, __dst, sizeof(v16));
        *(v8 + 2) = v13 + 1;
        memcpy(&v8[280 * v13 + 32], v16, 0x118uLL);
        a1 = v15;
      }

      ++v7;
      if (v11 == i)
      {
        return v8;
      }
    }

    __break(1u);
LABEL_20:
    __break(1u);
LABEL_21:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

void *sub_1A93AF494@<X0>(unint64_t a1@<X0>, void *a2@<X1>, unsigned __int8 *a3@<X2>, uint64_t *a4@<X3>, uint64_t *a5@<X4>, void *a6@<X8>)
{
  v146 = a6;
  v11 = sub_1A957B308();
  v145 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v127 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = *a3;
  v14 = *a4;
  v15 = a4[1];
  v16 = a4[3];
  v142 = a4[2];
  v143 = v14;
  v141 = a4[4];
  v17 = *a5;
  sub_1A9379398(&v152[4]);
  sub_1A94978C4();
  sub_1A948F660();
  sub_1A93BC894(&v152[15]);
  *v148 = sub_1A957C0F8();
  *&v148[8] = v18;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v19 = sub_1A93B1014(v151), (v20 & 1) == 0))
  {

LABEL_19:

    sub_1A93B1058(v151);
    sub_1A9378138(a2);
LABEL_20:
    sub_1A93B10AC(*&v152[15], *(&v152[15] + 1), *&v152[16], *(&v152[16] + 1));
    sub_1A93847E0(v151);
    return memcpy(v146, v151, 0x118uLL);
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v19, v149);
  sub_1A93B1058(v151);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);
LABEL_22:

    goto LABEL_20;
  }

  v21 = *&v148[8];
  v139 = *v148;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v22;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v140 = v21, v23 = sub_1A93B1014(v151), (v24 & 1) == 0))
  {

    goto LABEL_19;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v23, v149);
  sub_1A93B1058(v151);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);
LABEL_25:

    goto LABEL_22;
  }

  v138 = *v148;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v25;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v26 = sub_1A93B1014(v151), (v27 & 1) == 0))
  {

LABEL_27:

    goto LABEL_19;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v26, v149);
  sub_1A93B1058(v151);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);

    goto LABEL_25;
  }

  v136 = *v148;
  v137 = *&v148[8];
  *v148 = sub_1A957C0F8();
  *&v148[8] = v28;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v29 = sub_1A93B1014(v151), (v30 & 1) == 0))
  {

    goto LABEL_27;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v29, v149);
  sub_1A93B1058(v151);
  sub_1A937829C(&qword_1EB386B68, &qword_1A9591620);
  if ((swift_dynamicCast() & 1) == 0)
  {
    sub_1A9378138(a2);

    goto LABEL_25;
  }

  v132 = *v148;
  if (!*(*v148 + 16))
  {
    sub_1A9378138(a2);

    goto LABEL_22;
  }

  if (sub_1A957C0F8() != v136 || v31 != v137)
  {
    LODWORD(v135) = sub_1A957D3E8();

    if (v135)
    {
      v131 = 1;
      goto LABEL_34;
    }

    if (sub_1A957C0F8() == v136 && v67 == v137)
    {
      v32 = 5;
      goto LABEL_17;
    }

    LODWORD(v136) = sub_1A957D3E8();

    if (v136)
    {
      v131 = 5;
      goto LABEL_35;
    }

    sub_1A9378138(a2);

    goto LABEL_22;
  }

  v32 = 1;
LABEL_17:
  v131 = v32;

LABEL_34:

LABEL_35:
  v152[0] = v138;
  *(&v152[2] + 1) = v139;
  *&v152[3] = v140;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v34;

  sub_1A957CE88();
  if (!*(a1 + 16) || (v35 = sub_1A93B1014(v151), (v36 & 1) == 0))
  {
    sub_1A93B1058(v151);
    goto LABEL_40;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v35, v149);
  sub_1A93B1058(v151);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_40:
    v137 = 0xE100000000000000;
    v37 = 45;
    goto LABEL_41;
  }

  v37 = *v148;
  v137 = *&v148[8];
LABEL_41:
  if (v37 == sub_1A957C0F8() && v137 == v38)
  {
    LODWORD(v136) = 0;
    v137 = v38;
  }

  else
  {
    v135 = v37;
    LODWORD(v136) = sub_1A957D3E8();

    if (v136)
    {
      v39 = 0;
      goto LABEL_47;
    }

    v68 = sub_1A957C0F8();
    LODWORD(v136) = 1;
    if (v135 != v68 || v137 != v69)
    {
      LODWORD(v136) = sub_1A957D3E8();

      if (v136)
      {
        v39 = 1;
      }

      else
      {
        v39 = 2;
      }

      goto LABEL_48;
    }
  }

  v39 = v136;
LABEL_47:

LABEL_48:
  BYTE9(v152[3]) = v39;
  v150 = v17;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v40;
  sub_1A957CE88();
  if (*(a1 + 16) && (v41 = sub_1A93B1014(v151), (v42 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v41, v149);
    sub_1A93B1058(v151);
    sub_1A93B1EF4();
    if (swift_dynamicCast())
    {
      v43 = *v148;
      if ([*v148 BOOLValue])
      {
        v44 = sub_1A9493C00();
        sub_1A93B0A74(v151, *v44);
      }
    }
  }

  else
  {
    sub_1A93B1058(v151);
  }

  if (v144 == 2)
  {
    goto LABEL_59;
  }

  if (v144 == 3)
  {
    v45 = sub_1A9493D44();
LABEL_60:
    sub_1A93B0A74(v151, *v45);
    goto LABEL_61;
  }

  sub_1A937829C(&unk_1EB388350, &unk_1A9589F30);
  v46 = swift_allocObject();
  *(v46 + 16) = xmmword_1A9587160;
  *(v46 + 32) = *sub_1A9493C84();
  v151[0] = v46;
  sub_1A9387410();
  sub_1A937829C(&unk_1EB388360, qword_1A958B690);
  sub_1A93B0F54();
  sub_1A957CE08();
  sub_1A93B0A74(v151, v149[0]);
  if (v144)
  {
LABEL_59:
    v45 = sub_1A9493D2C();
    goto LABEL_60;
  }

LABEL_61:
  memset(&v152[5], 0, 40);
  v47 = v131;
  *(&v152[4] + 1) = v131;
  BYTE8(v152[7]) = 2;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v48;
  sub_1A93B10F0(v47, 0, 0, 0, 0, 0, 2);
  sub_1A957CE88();
  if (*(a1 + 16) && (v49 = sub_1A93B1014(v151), (v50 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v49, v149);
    sub_1A93B1058(v151);
    swift_dynamicCast();
  }

  else
  {
    sub_1A93B1058(v151);
  }

  CoreSynthesizer.Voice.Quality.init(rawValue:)(v151);
  v51 = v151[0];
  if (LOBYTE(v151[0]) == 5)
  {
    v51 = 0;
  }

  BYTE8(v152[3]) = v51;
  v148[0] = v51;
  LOBYTE(v147[0]) = 1;
  v52 = sub_1A93B1148();
  sub_1A957C438();
  v137 = v52;
  sub_1A957C438();
  if (v151[0] == v149[0] && v151[1] == v149[1])
  {
  }

  else
  {
    v53 = sub_1A957D3E8();

    if ((v53 & 1) == 0)
    {

      v130 = 0;
      *&v152[2] = 0;
      *(&v152[1] + 1) = 0;
      v129 = MEMORY[0x1E69E7CC0];
      goto LABEL_82;
    }
  }

  v54 = sub_1A957C1A8();
  v56 = v55;

  v151[0] = v54;
  v151[1] = v56;
  strcpy(v149, "super-compact");
  HIWORD(v149[1]) = -4864;
  strcpy(v148, "compact");
  *&v148[8] = 0xE700000000000000;
  v57 = sub_1A93820F4();
  v58 = sub_1A957CD08(v149, v148, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v57, v57, v57);
  v60 = v59;

  v130 = v60;

  v61 = sub_1A93AC2AC(0, 1, 1, MEMORY[0x1E69E7CC0]);
  v63 = *(v61 + 2);
  v62 = *(v61 + 3);
  v64 = v63 + 1;
  if (v63 >= v62 >> 1)
  {
    goto LABEL_142;
  }

  while (1)
  {
    *(v61 + 2) = v64;
    v129 = v61;
    v65 = &v61[16 * v63];
    v66 = v130;
    *(v65 + 4) = v58;
    *(v65 + 5) = v66;
    *(&v152[1] + 1) = v58;
    *&v152[2] = v66;
LABEL_82:
    v148[0] = BYTE8(v152[3]);
    LOBYTE(v147[0]) = 2;
    sub_1A957C438();
    sub_1A957C438();
    v64 = v151[1];
    v58 = v149[1];
    v63 = v132;
    if (v151[0] == v149[0] && v151[1] == v149[1])
    {
LABEL_84:

      goto LABEL_86;
    }

    LODWORD(v138) = sub_1A957D3E8();

    if ((v138 & 1) == 0)
    {
      v148[0] = BYTE8(v152[3]);
      LOBYTE(v147[0]) = 1;
      sub_1A957C438();
      sub_1A957C438();
      v64 = v151[1];
      v58 = v149[1];
      if (v151[0] == v149[0] && v151[1] == v149[1])
      {
        goto LABEL_84;
      }

      LODWORD(v138) = sub_1A957D3E8();

      if ((v138 & 1) == 0)
      {
        goto LABEL_96;
      }
    }

LABEL_86:
    v62 = *(v63 + 16);
    if (v62)
    {
      break;
    }

    __break(1u);
LABEL_142:
    v61 = sub_1A93AC2AC((v62 > 1), v64, 1, v61);
  }

  v70 = sub_1A957C0C8();

  v71 = _BuiltInVoiceNameForLanguage(v70);

  if (!v71)
  {
LABEL_96:

    goto LABEL_97;
  }

  v72 = sub_1A957C0F8();
  v74 = v73;

  if (v72 == v139 && v74 == v140)
  {

    v63 = v132;
  }

  else
  {
    v75 = sub_1A957D3E8();

    v63 = v132;

    if ((v75 & 1) == 0)
    {
      goto LABEL_97;
    }
  }

  v76 = sub_1A9493C54();
  sub_1A93B0A74(v151, *v76);
LABEL_97:
  *&v152[4] = v150;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v77;
  sub_1A957CE88();
  if (!*(a1 + 16) || (v78 = sub_1A93B1014(v151), (v79 & 1) == 0))
  {
    sub_1A93B1058(v151);
    goto LABEL_102;
  }

  sub_1A937BA14(*(a1 + 56) + 32 * v78, v149);
  sub_1A93B1058(v151);
  sub_1A93B1EF4();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_102:
    v81 = 0;
    v82 = 1;
    goto LABEL_103;
  }

  v80 = *v148;
  v81 = [*v148 unsignedIntValue];

  v82 = 0;
LABEL_103:
  DWORD1(v152[11]) = v81;
  BYTE8(v152[11]) = v82;
  *v148 = sub_1A957C0F8();
  *&v148[8] = v83;
  sub_1A957CE88();
  if (*(a1 + 16) && (v84 = sub_1A93B1014(v151), (v85 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v84, v149);
    sub_1A93B1058(v151);
    sub_1A93B1EF4();
    if (swift_dynamicCast())
    {
      v86 = *v148;
      v87 = [*v148 unsignedIntValue];

      v88 = 0;
      goto LABEL_109;
    }
  }

  else
  {
    sub_1A93B1058(v151);
  }

  v87 = 0;
  v88 = 1;
LABEL_109:
  HIDWORD(v152[11]) = v87;
  LOBYTE(v152[12]) = v88;
  v89 = Array<A>.toAXPrimaryLocales.getter(v63);
  v90 = *(v89 + 16);
  if (v90)
  {
    v151[0] = MEMORY[0x1E69E7CC0];
    v139 = v90;
    sub_1A93ABB68(0, v90, 0);
    v91 = v151[0];
    v92 = *(v145 + 16);
    v93 = *(v145 + 80);
    v128 = v89;
    v94 = v89 + ((v93 + 32) & ~v93);
    v134 = *(v145 + 72);
    v135 = v92;
    v136 = (v145 + 16);
    v133 = (v145 + 8);
    do
    {
      (v135)(v13, v94, v11);
      v95 = sub_1A957B1A8();
      v137 = v96;
      *&v138 = v95;
      (*v133)(v13, v11);
      v151[0] = v91;
      v97 = *(v91 + 16);
      v98 = *(v91 + 24);
      v99 = v97 + 1;
      if (v97 >= v98 >> 1)
      {
        v127 = v97 + 1;
        sub_1A93ABB68((v98 > 1), v97 + 1, 1);
        v99 = v127;
        v91 = v151[0];
      }

      *(v91 + 16) = v99;
      v100 = v91 + 16 * v97;
      v101 = v137;
      *(v100 + 32) = v138;
      *(v100 + 40) = v101;
      v94 += v134;
      --v139;
    }

    while (v139);

    v63 = v132;
  }

  else
  {

    v91 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v91);
  v103 = v102;
  v105 = v104;
  *&v152[8] = v102;
  *(&v152[8] + 1) = v104;
  v106 = Array<A>.toAXSecondaryLocales.getter(v63);

  v107 = *(v106 + 16);
  v133 = v103;
  v128 = v105;
  if (v107)
  {
    v151[0] = MEMORY[0x1E69E7CC0];
    v139 = v107;
    sub_1A93ABB68(0, v107, 0);
    v108 = v151[0];
    v109 = *(v145 + 16);
    v110 = *(v145 + 80);
    v132 = v106;
    v111 = v106 + ((v110 + 32) & ~v110);
    v135 = *(v145 + 72);
    v136 = v109;
    v145 += 16;
    v134 = (v145 - 8);
    do
    {
      v136(v13, v111, v11);
      v112 = sub_1A957B1A8();
      v137 = v113;
      *&v138 = v112;
      (*v134)(v13, v11);
      v151[0] = v108;
      v114 = *(v108 + 16);
      v115 = *(v108 + 24);
      v116 = v114 + 1;
      if (v114 >= v115 >> 1)
      {
        v127 = v114 + 1;
        sub_1A93ABB68((v115 > 1), v114 + 1, 1);
        v116 = v127;
        v108 = v151[0];
      }

      *(v108 + 16) = v116;
      v117 = v108 + 16 * v114;
      v118 = v137;
      *(v117 + 32) = v138;
      *(v117 + 40) = v118;
      v111 += v135;
      --v139;
    }

    while (v139);
  }

  else
  {

    v108 = MEMORY[0x1E69E7CC0];
  }

  sub_1A93B0B3C(v108);
  *&v152[9] = v119;
  *(&v152[9] + 1) = v120;
  *v148 = 0xD000000000000010;
  *&v148[8] = 0x80000001A95C1000;
  sub_1A957CE88();
  if (*(a1 + 16) && (v121 = sub_1A93B1014(v151), (v122 & 1) != 0))
  {
    sub_1A937BA14(*(a1 + 56) + 32 * v121, v149);
    sub_1A93B1058(v151);

    if (swift_dynamicCast())
    {
      v123 = sub_1A93B1D40(*v148, *&v148[8]);

      if ((v123 & 0x100000000) == 0)
      {
        sub_1A93B183C(v131, 0, 0, 0, 0, 0, 2);
        goto LABEL_134;
      }
    }
  }

  else
  {

    sub_1A93B1058(v151);
  }

  memset(&v151[1], 0, 40);
  v124 = v131;
  v151[0] = v131;
  LOBYTE(v151[6]) = 2;
  memset(&v149[1], 0, 40);
  v149[0] = 5;
  LOBYTE(v149[6]) = 2;
  sub_1A93B17E8();
  sub_1A957C438();
  sub_1A93B183C(v124, 0, 0, 0, 0, 0, 2);
  sub_1A957C438();
  if (*v148 == v147[0] && *&v148[8] == v147[1])
  {

    goto LABEL_133;
  }

  v125 = sub_1A957D3E8();

  if (v125)
  {
LABEL_133:
    v126 = sub_1A93B1D40(0x6B74636DuLL, 0xE400000000000000);
    LODWORD(v123) = v126;
    if ((v126 & 0x100000000) == 0)
    {
LABEL_134:
      sub_1A9378138(a2);
      goto LABEL_136;
    }
  }

  v123 = sub_1A93B1D40(0x636E7263uLL, 0xE400000000000000);
  sub_1A9378138(a2);
  if ((v123 & 0x100000000) != 0)
  {

    sub_1A93B183C(*(&v152[4] + 1), *&v152[5], *(&v152[5] + 1), *&v152[6], *(&v152[6] + 1), *&v152[7], SBYTE8(v152[7]));

    goto LABEL_20;
  }

LABEL_136:
  LODWORD(v152[10]) = 1635087216;
  DWORD1(v152[10]) = v123;
  *(&v152[10] + 1) = 1634758764;
  LODWORD(v152[11]) = 0;
  *&v152[1] = v129;
  BYTE1(v152[12]) = v144;
  *(&v152[12] + 1) = v143;
  *&v152[13] = v15;
  *(&v152[13] + 1) = v142;
  *&v152[14] = v16;
  *(&v152[14] + 1) = v141;
  memcpy(v148, v152, sizeof(v148));
  memcpy(v149, v152, sizeof(v149));
  nullsub_23();
  memcpy(v146, v149, 0x118uLL);
  memcpy(v151, v152, sizeof(v151));
  sub_1A937B3DC(v148, v147);
  return sub_1A937B48C(v151);
}

BOOL sub_1A93B0A74(uint64_t *a1, uint64_t a2)
{
  sub_1A9387410();
  sub_1A957CD98();
  sub_1A93B1F40();
  v3 = sub_1A957C098();
  if (v3)
  {
    v4 = v6;
  }

  else
  {
    v4 = a2;
    sub_1A957CDD8();
  }

  *a1 = v4;
  return (v3 & 1) == 0;
}

void sub_1A93B0B3C(uint64_t a1)
{
  v2 = sub_1A937838C();
  v3 = sub_1A93B119C(&v19, a1, 0, 1, v2);
  v4 = *(a1 + 16);
  v5 = v19;
  if (v19 != v4)
  {
    if ((v19 & 0x8000000000000000) != 0)
    {
      goto LABEL_26;
    }

    if (v4 < v19)
    {
LABEL_27:
      __break(1u);
    }

    else
    {
      sub_1A93B19E0(a1, a1 + 32, 0, (2 * v19) | 1);
      v20 = v3;
      v21 = v6;
      if (*(a1 + 16) >= v4)
      {

        while (1)
        {
          if (v5 >= v4)
          {
            __break(1u);
LABEL_26:
            __break(1u);
            goto LABEL_27;
          }

          v8 = (a1 + 32 + 16 * v5);
          v10 = *v8;
          v9 = v8[1];
          v11 = v20;
          v12 = v21;
          v13 = *(v21 + 16);
          if (v20)
          {

            sub_1A93B1894(v10, v9, v12 + 32, v13, (v11 + 16), v11 + 32);
            v15 = v14;
            v7 = v16;

            if ((v15 & 1) == 0)
            {
              goto LABEL_8;
            }
          }

          else
          {
            if (v13)
            {
              v17 = (v21 + 40);
              do
              {
                v18 = *(v17 - 1) == v10 && *v17 == v9;
                if (v18 || (sub_1A957D3E8() & 1) != 0)
                {
                  goto LABEL_9;
                }

                v17 += 2;
              }

              while (--v13);
            }

            v7 = 0;
          }

          sub_1A93B13D0(v10, v9, v7);
LABEL_8:

LABEL_9:
          if (++v5 == v4)
          {

            return;
          }
        }
      }
    }

    __break(1u);
  }
}

Swift::UInt32_optional __swiftcall UInt32.init(axFourCharCode:)(Swift::String axFourCharCode)
{
  v1 = sub_1A93B1D40(axFourCharCode._countAndFlagsBits, axFourCharCode._object);

  return (v1 | ((HIDWORD(v1) & 1) << 32));
}

id sub_1A93B0D40()
{
  v1 = v0;
  result = [v0 attributes];
  if (!result)
  {
    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v3 = result;
  v4 = sub_1A957C038();

  v11 = 0xD000000000000011;
  sub_1A957CE88();
  if (*(v4 + 16) && (v5 = sub_1A93B1014(v12), (v6 & 1) != 0))
  {
    sub_1A937BA14(*(v4 + 56) + 32 * v5, v13);
    sub_1A93B1058(v12);

    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {

    sub_1A93B1058(v12);
  }

  result = [v1 attributes];
  if (!result)
  {
    goto LABEL_16;
  }

  v7 = result;
  v8 = sub_1A957C038();

  v11 = 0x746E65746E6F435FLL;
  sub_1A957CE88();
  if (*(v8 + 16) && (v9 = sub_1A93B1014(v12), (v10 & 1) != 0))
  {
    sub_1A937BA14(*(v8 + 56) + 32 * v9, v13);
    sub_1A93B1058(v12);

    if (swift_dynamicCast())
    {
      return v11;
    }
  }

  else
  {

    sub_1A93B1058(v12);
  }

  return 0;
}

unint64_t sub_1A93B0F54()
{
  result = qword_1ED96FEB8;
  if (!qword_1ED96FEB8)
  {
    sub_1A93A7B68(&unk_1EB388360, qword_1A958B690);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FEB8);
  }

  return result;
}

id sub_1A93B0FB8@<X0>(void **a1@<X0>, void *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  sub_1A9379534(v4, v7);
  return sub_1A93AEFAC(v5, v7, a2);
}

unint64_t sub_1A93B1014(uint64_t a1)
{
  v2 = sub_1A957CE68();

  return sub_1A93B1C78(a1, v2);
}

void sub_1A93B10AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
  }
}

void sub_1A93B10F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }
}

unint64_t sub_1A93B1148()
{
  result = qword_1ED96FFD8;
  if (!qword_1ED96FFD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FFD8);
  }

  return result;
}

uint64_t sub_1A93B119C(uint64_t *a1, uint64_t a2, uint64_t a3, char a4, uint64_t a5)
{
  v8 = *(a2 + 16);
  if (a4)
  {
    v9 = 0;
  }

  else
  {
    v9 = a3;
  }

  v10 = MEMORY[0x1AC584A20](*(a2 + 16));
  if (v10 <= v9)
  {
    v11 = v9;
  }

  else
  {
    v11 = v10;
  }

  if (v11 <= a5)
  {
    v12 = a5;
  }

  else
  {
    v12 = v11;
  }

  if (v12 > 4)
  {
    v14 = MEMORY[0x1AC584A30]();
    sub_1A93B1AB8(a2 + 32, v8, (v14 + 16), v14 + 32);
    *a1 = v15;
    return v14;
  }

  else if (v8 >= 2)
  {
    v16 = sub_1A93B1280(a2 + 32, v8);
    result = 0;
    *a1 = v16;
  }

  else
  {
    result = 0;
    *a1 = v8;
  }

  return result;
}

char *sub_1A93B1280(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  v18 = MEMORY[0x1E69E7CC0];
  result = sub_1A93ABB68(0, a2 & ~(a2 >> 63), 0);
  if (v2)
  {
    if (v2 < 0)
    {
      __break(1u);
      return result;
    }

    v5 = 0;
    v6 = v18[2];
    v17 = a1;
    do
    {
      v7 = v5++;
      v8 = (a1 + 16 * v7);
      v9 = *v8;
      v10 = v8[1];
      v11 = v18 + 5;
      v12 = v6 + 1;
      while (--v12)
      {
        if (v9 != *(v11 - 1) || v10 != *v11)
        {
          v11 += 2;
          if ((sub_1A957D3E8() & 1) == 0)
          {
            continue;
          }
        }

        return v7;
      }

      v14 = v18[2];
      v15 = v18[3];
      v6 = v14 + 1;

      if (v14 >= v15 >> 1)
      {
        sub_1A93ABB68((v15 > 1), v14 + 1, 1);
      }

      v18[2] = v6;
      v16 = &v18[2 * v14];
      v16[4] = v9;
      v16[5] = v10;
      a1 = v17;
    }

    while (v5 != v2);
  }

  return v2;
}

uint64_t sub_1A93B13D0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v9 = v3[1];
  v7 = v3 + 1;
  v8 = v9;

  result = swift_isUniquelyReferenced_nonNull_native();
  *v7 = v9;
  if ((result & 1) == 0)
  {
    result = sub_1A93ABB68(0, *(v8 + 16) + 1, 1);
    v8 = *v7;
  }

  v12 = *(v8 + 16);
  v11 = *(v8 + 24);
  if (v12 >= v11 >> 1)
  {
    result = sub_1A93ABB68((v11 > 1), v12 + 1, 1);
    v8 = *v7;
  }

  *(v8 + 16) = v12 + 1;
  v13 = v8 + 16 * v12;
  *(v13 + 32) = a1;
  *(v13 + 40) = a2;
  v4[1] = v8;
  v14 = *v4;
  if (*v4)
  {
    swift_beginAccess();
    if (MEMORY[0x1AC584A00](*(v14 + 16) & 0x3FLL) > v12)
    {
      result = swift_isUniquelyReferenced_native();
      v15 = *v4;
      if ((result & 1) == 0)
      {
        if (!v15)
        {
LABEL_16:
          __break(1u);
          return result;
        }

        v16 = sub_1A957BB58();

        *v4 = v16;
        v15 = v16;
      }

      if (v15)
      {
        return sub_1A957BB08();
      }

      __break(1u);
      goto LABEL_16;
    }
  }

  else if (v12 < 0xF)
  {
    return result;
  }

  return sub_1A93B1548();
}

uint64_t sub_1A93B1548()
{
  v1 = *v0;
  if (*v0)
  {
    swift_beginAccess();
    v2 = *(v1 + 24) & 0x3FLL;
  }

  else
  {
    v2 = 0;
  }

  v3 = v0[1];
  v4 = *(v3 + 16);
  if (v2 || v4 >= 0x10)
  {
    v6 = MEMORY[0x1AC584A20](v4);
    if (v2 <= v6)
    {
      v7 = v6;
    }

    else
    {
      v7 = v2;
    }

    v5 = sub_1A93B15E8(v3, v7, 0, v2);
  }

  else
  {
    v5 = 0;
  }

  *v0 = v5;
  return result;
}

uint64_t sub_1A93B15E8(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  v6 = *(a1 + 16);
  if (a3)
  {
    v7 = 0;
  }

  else
  {
    v7 = a2;
  }

  v8 = MEMORY[0x1AC584A20](v6, a2);
  result = 0;
  if (v8 <= v7)
  {
    v8 = v7;
  }

  if (v8 <= a4)
  {
    v8 = a4;
  }

  if (v8 >= 5)
  {
    v10 = MEMORY[0x1AC584A30](v8, a4);
    sub_1A93B1668(a1, (v10 + 16), v10 + 32);
    return v10;
  }

  return result;
}

uint64_t sub_1A93B16B8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (a2)
  {
    if ((a2 & 0x8000000000000000) == 0)
    {
      v6 = 0;
      while (1)
      {
        sub_1A957D4F8();

        sub_1A957C228();
        v7 = sub_1A957D548();
        if (__OFSUB__(1 << *a3, 1))
        {
          break;
        }

        v8 = sub_1A957BAF8();

        if (v8)
        {
          while (1)
          {
            sub_1A957BB38();
          }
        }

        v7 = sub_1A957BB28();
        if (++v6 == a2)
        {
          return v7;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  return v7;
}

unint64_t sub_1A93B17E8()
{
  result = qword_1EB386460;
  if (!qword_1EB386460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386460);
  }

  return result;
}

void sub_1A93B183C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, char a7)
{
  if (a7 == 1)
  {
  }
}

uint64_t sub_1A93B1894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6)
{
  sub_1A957D4F8();
  sub_1A957C228();
  result = sub_1A957D548();
  if (__OFSUB__(1 << *a5, 1))
  {
    __break(1u);
  }

  else
  {
    sub_1A957BAF8();
    result = sub_1A957BB18();
    if ((v11 & 1) == 0)
    {
      v12 = (a3 + 16 * result);
      if (*v12 != a1 || v12[1] != a2)
      {
        while (1)
        {
          v14 = result;
          if (sub_1A957D3E8())
          {
            break;
          }

          sub_1A957BB38();
          result = sub_1A957BB18();
          if ((v15 & 1) == 0)
          {
            v16 = (a3 + 16 * result);
            if (*v16 != a1 || v16[1] != a2)
            {
              continue;
            }
          }

          return result;
        }

        return v14;
      }
    }
  }

  return result;
}

void sub_1A93B19E0(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4)
{
  v4 = a4 >> 1;
  v5 = (a4 >> 1) - a3;
  if (__OFSUB__(a4 >> 1, a3))
  {
LABEL_11:
    __break(1u);
    return;
  }

  if (v5)
  {
    if (v5 < 1)
    {
      if (v4 != a3)
      {
LABEL_7:
        swift_arrayInitWithCopy();
        return;
      }
    }

    else
    {
      sub_1A937829C(&qword_1EB388390, &qword_1A9588580);
      v7 = swift_allocObject();
      v8 = j__malloc_size(v7);
      v9 = v8 - 32;
      if (v8 < 32)
      {
        v9 = v8 - 17;
      }

      v7[2] = v5;
      v7[3] = 2 * (v9 >> 4);
      if (v4 != a3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
    goto LABEL_11;
  }
}

uint64_t sub_1A93B1AB8(uint64_t result, uint64_t a2, void *a3, uint64_t a4)
{
  if (!a2)
  {
    return 1;
  }

  if (a2 < 0)
  {
    goto LABEL_20;
  }

  v4 = a3;
  v5 = result;
  v6 = 0;
  v14 = result;
  while (2)
  {
    if (__OFADD__(v6, 1))
    {
      __break(1u);
      goto LABEL_19;
    }

    v15 = v6 + 1;
    v7 = (v5 + 16 * v6);
    sub_1A957D4F8();

    sub_1A957C228();
    result = sub_1A957D548();
    if (__OFSUB__(1 << *v4, 1))
    {
LABEL_19:
      __break(1u);
LABEL_20:
      __break(1u);
      return result;
    }

    sub_1A957BAF8();

    v5 = v14;
    while (1)
    {
      v8 = sub_1A957BB18();
      if (v9)
      {
        break;
      }

      v10 = (v14 + 16 * v8);
      v11 = *v10 == *v7 && v10[1] == v7[1];
      if (v11 || (sub_1A957D3E8() & 1) != 0)
      {
        return 0;
      }

      sub_1A957BB38();
    }

    result = sub_1A957BB28();
    ++v6;
    v4 = a3;
    if (v15 != a2)
    {
      continue;
    }

    return 1;
  }
}

unint64_t sub_1A93B1C78(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_1A93B1F94(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x1AC585D30](v9, a1);
      sub_1A93B1058(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

unint64_t sub_1A93B1D40(unint64_t a1, unint64_t a2)
{
  v4 = sub_1A957C238();
  if (v4 != 4 || ((a2 & 0x2000000000000000) != 0 ? (v5 = HIBYTE(a2) & 0xF) : (v5 = a1 & 0xFFFFFFFFFFFFLL), !v5))
  {
    v10 = 0;
LABEL_28:
    LOBYTE(v19[0]) = v4 != 4;
    return v10 | ((v4 != 4) << 32);
  }

  v6 = 0;
  v7 = (a1 >> 59) & 1;
  if ((a2 & 0x1000000000000000) == 0)
  {
    LOBYTE(v7) = 1;
  }

  v8 = 4 << v7;
  result = 15;
  while (1)
  {
    v11 = result & 0xC;
    v12 = result;
    if (v11 == v8)
    {
      v16 = result;
      v12 = sub_1A938156C(result, a1, a2);
      result = v16;
    }

    v13 = v12 >> 16;
    if (v12 >> 16 >= v5)
    {
      break;
    }

    if ((a2 & 0x1000000000000000) != 0)
    {
      v18 = result;
      v15 = sub_1A957C308();
      result = v18;
      if (v11 != v8)
      {
        goto LABEL_20;
      }
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v19[0] = a1;
        v19[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        v14 = v19;
      }

      else
      {
        v14 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
        if ((a1 & 0x1000000000000000) == 0)
        {
          v17 = result;
          v14 = sub_1A957CF68();
          result = v17;
        }
      }

      v15 = *(v14 + v13);
      if (v11 != v8)
      {
LABEL_20:
        if ((a2 & 0x1000000000000000) == 0)
        {
          goto LABEL_9;
        }

        goto LABEL_21;
      }
    }

    result = sub_1A938156C(result, a1, a2);
    if ((a2 & 0x1000000000000000) == 0)
    {
LABEL_9:
      result = (result & 0xFFFFFFFFFFFF0000) + 65540;
      goto LABEL_10;
    }

LABEL_21:
    if (v5 <= result >> 16)
    {
      goto LABEL_30;
    }

    result = sub_1A957C2C8();
LABEL_10:
    v10 = v15 | (v6 << 8);
    v6 = v10;
    if (4 * v5 == result >> 14)
    {
      v4 = 4;
      goto LABEL_28;
    }
  }

  __break(1u);
LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_1A93B1EF4()
{
  result = qword_1ED96FCD8;
  if (!qword_1ED96FCD8)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1ED96FCD8);
  }

  return result;
}

unint64_t sub_1A93B1F40()
{
  result = qword_1ED970000;
  if (!qword_1ED970000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED970000);
  }

  return result;
}

uint64_t TTSMarkup.Sentence.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Sentence.accept<A>(_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return (*(a3 + 88))(v3, a2);
}

{
  v9 = (*(a3 + 112) + **(a3 + 112));
  v7 = swift_task_alloc();
  *(v4 + 16) = v7;
  *v7 = v4;
  v7[1] = sub_1A9382328;

  return v9(v3, a2, a3);
}

uint64_t TTSMarkup.Sentence.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
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
  sub_1A93B25AC(&v22, a2);
  return sub_1A93B25E4(&v22);
}

uint64_t TTSMarkup.Sentence.init(speech:)@<X0>(void (*a1)(void *__return_ptr, uint64_t *)@<X0>, void *a2@<X8>)
{
  v3 = a2;
  v4 = SpeechContext.init<each A>(_:)(&v7, 0, &v7, a2);
  *++v3 = 0u;
  v3[4] = 0;
  *(v3 + 1) = 0u;
  a1(v6, v4);
  return sub_1A93A38D8(v6, v3);
}

uint64_t sub_1A93B24FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = swift_task_alloc();
  *(v3 + 16) = v7;
  *v7 = v3;
  v7[1] = sub_1A93836DC;

  return TTSMarkup.Sentence.accept<A>(_:)(a1, a2, a3);
}

uint64_t sub_1A93B2614(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_1A93B265C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 48) = 1;
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

    *(result + 48) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.sampleText(forLocale:)(uint64_t a1)
{
  v131 = a1;
  v117 = sub_1A957B188();
  v121 = *(v117 - 8);
  MEMORY[0x1EEE9AC00](v117);
  v106 = &v106 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v114 = sub_1A937829C(&qword_1EB386B70, &unk_1A95888A0);
  MEMORY[0x1EEE9AC00](v114);
  v116 = &v106 - v3;
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  v5 = MEMORY[0x1EEE9AC00](v4 - 8);
  v107 = &v106 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v120 = &v106 - v8;
  MEMORY[0x1EEE9AC00](v7);
  v115 = &v106 - v9;
  v113 = sub_1A957B2E8();
  v118 = *(v113 - 8);
  v10 = MEMORY[0x1EEE9AC00](v113);
  v112 = &v106 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v111 = &v106 - v12;
  v13 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v106 - v14;
  v16 = sub_1A957B308();
  v17 = *(v16 - 8);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v110 = (&v106 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v106 - v20;
  v22 = *(v1 + 8);
  v124 = *v1;
  v125 = v22;
  v23 = *(v1 + 32);
  v164 = *(v1 + 16);
  v165 = v23;
  v166 = *(v1 + 48);
  v24 = *(v1 + 64);
  v127 = *(v1 + 72);
  v167 = v24;
  v25 = *(v1 + 88);
  v26 = *(v1 + 96);
  v27 = *(v1 + 104);
  v129 = *(v1 + 80);
  v130 = v26;
  v123 = *(v1 + 112);
  v126 = *(v1 + 120);
  v28 = *(v1 + 137);
  v155 = *(v1 + 121);
  v156 = v28;
  v29 = *(v1 + 201);
  v159 = *(v1 + 185);
  v160 = v29;
  v30 = *(v1 + 169);
  v157 = *(v1 + 153);
  v158 = v30;
  *(v163 + 15) = *(v1 + 264);
  v31 = *(v1 + 249);
  v32 = *(v1 + 217);
  v162 = *(v1 + 233);
  v163[0] = v31;
  v161 = v32;
  sub_1A9391BAC(v131, v15, &qword_1EB386988, &qword_1A9587830);
  v131 = v17;
  v33 = *(v17 + 48);
  v34 = v33(v15, 1, v16);
  v128 = v27;
  v122 = v25;
  if (v34 == 1)
  {
    *&v154[15] = *(v1 + 264);
    v35 = *(v1 + 32);
    v135 = *(v1 + 16);
    v136 = v35;
    v137 = *(v1 + 48);
    v36 = *(v1 + 233);
    *v154 = *(v1 + 249);
    v37 = *(v1 + 217);
    v153 = v36;
    v152 = v37;
    v38 = *(v1 + 185);
    v151 = *(v1 + 201);
    v150 = v38;
    v39 = *(v1 + 153);
    v149 = *(v1 + 169);
    v148 = v39;
    v40 = *(v1 + 121);
    v147 = *(v1 + 137);
    v133 = v124;
    v134 = v125;
    v138 = *(v1 + 64);
    v139 = v127;
    v140 = v129;
    v141 = v25;
    v142 = v130;
    v143 = v27;
    v41 = v123;
    v144 = v123;
    v145 = v126;
    v146 = v40;
    CoreSynthesizer.Voice.primaryLocale.getter(v21);
    v42 = v33(v15, 1, v16);
    v43 = v131;
    if (v42 != 1)
    {
      sub_1A937B960(v15, &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    v43 = v131;
    (*(v131 + 32))(v21, v15, v16);
    v41 = v123;
  }

  v108 = sub_1A957B118();
  v109 = v44;
  v135 = v164;
  v136 = v165;
  v137 = v166;
  *&v154[15] = *(v163 + 15);
  v147 = v156;
  v146 = v155;
  v151 = v160;
  v150 = v159;
  v149 = v158;
  v148 = v157;
  *v154 = v163[0];
  v153 = v162;
  v133 = v124;
  v134 = v125;
  v138 = v167;
  v139 = v127;
  v140 = v129;
  v141 = v122;
  v142 = v130;
  v143 = v128;
  v144 = v41;
  v145 = v126;
  v152 = v161;
  v45 = v110;
  CoreSynthesizer.Voice.primaryLocale.getter(v110);
  v46 = v111;
  sub_1A957B2F8();
  v47 = *(v43 + 8);
  v119 = v16;
  v131 = v43 + 8;
  v110 = v47;
  (v47)(v45, v16);
  v48 = v115;
  sub_1A957B2B8();
  v49 = *(v118 + 1);
  v50 = v46;
  v51 = v113;
  v49(v50, v113);
  v52 = v112;
  v118 = v21;
  sub_1A957B2F8();
  v53 = v120;
  sub_1A957B2B8();
  v49(v52, v51);
  v54 = *(v114 + 48);
  v55 = v116;
  sub_1A9391BAC(v48, v116, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A9391BAC(v53, v55 + v54, &qword_1EB386A68, &qword_1A9587F40);
  v56 = *(v121 + 48);
  v57 = v117;
  if (v56(v55, 1, v117) == 1)
  {
    sub_1A937B960(v53, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v48, &qword_1EB386A68, &qword_1A9587F40);
    v58 = v56(v55 + v54, 1, v57);
    v60 = v129;
    v59 = v130;
    v61 = v128;
    v62 = v119;
    if (v58 == 1)
    {
      sub_1A937B960(v55, &qword_1EB386A68, &qword_1A9587F40);
      goto LABEL_18;
    }

LABEL_10:
    sub_1A937B960(v55, &qword_1EB386B70, &unk_1A95888A0);
    goto LABEL_11;
  }

  v63 = v107;
  sub_1A9391BAC(v55, v107, &qword_1EB386A68, &qword_1A9587F40);
  if (v56(v55 + v54, 1, v57) == 1)
  {
    sub_1A937B960(v120, &qword_1EB386A68, &qword_1A9587F40);
    sub_1A937B960(v48, &qword_1EB386A68, &qword_1A9587F40);
    (*(v121 + 8))(v63, v57);
    v60 = v129;
    v59 = v130;
    v61 = v128;
    goto LABEL_10;
  }

  v75 = v121;
  v76 = v106;
  (*(v121 + 32))(v106, v55 + v54, v57);
  sub_1A93B4F90();
  v77 = sub_1A957C098();
  v78 = *(v75 + 8);
  v78(v76, v57);
  sub_1A937B960(v120, &qword_1EB386A68, &qword_1A9587F40);
  sub_1A937B960(v48, &qword_1EB386A68, &qword_1A9587F40);
  v78(v63, v57);
  sub_1A937B960(v55, &qword_1EB386A68, &qword_1A9587F40);
  v60 = v129;
  v59 = v130;
  v61 = v128;
  v62 = v119;
  if ((v77 & 1) == 0)
  {
    goto LABEL_11;
  }

LABEL_18:
  v80 = v124;
  v79 = v125;
  v81 = sub_1A93B4EDC(v124, v125);
  if (!v82)
  {
    v135 = v164;
    v136 = v165;
    v137 = v166;
    *&v154[15] = *(v163 + 15);
    v147 = v156;
    v146 = v155;
    v151 = v160;
    v150 = v159;
    v149 = v158;
    v148 = v157;
    *v154 = v163[0];
    v153 = v162;
    v133 = v80;
    v134 = v79;
    v138 = v167;
    v139 = v127;
    v140 = v60;
    v141 = v122;
    v142 = v59;
    v143 = v61;
    v144 = v123;
    v145 = v126;
    v152 = v161;
    v94 = CoreSynthesizer.Voice.cannonicId.getter();
    v83 = sub_1A93B4EDC(v94, v95);
    v97 = v96;

    if (v97)
    {

      goto LABEL_26;
    }

LABEL_11:
    v64 = v126;
    if (v126)
    {
      v65 = v127;
      if (v126 == 2 && v127 == 3 && !(v122 | v60 | v59 | v61 | v123))
      {
        v66 = v59;
        v67 = sub_1A957C0C8();
        v68 = sub_1A957C0C8();
        v69 = sub_1A957C0C8();
        type metadata accessor for CoreSynthesizer(0);
        ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
        v71 = [objc_opt_self() bundleForClass_];
        v72 = sub_1A957C0C8();

        v73 = AXNSLocalizedStringForLocale();

        if (v73)
        {
          sub_1A957C0F8();

          sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
          v74 = swift_allocObject();
          *(v74 + 16) = xmmword_1A9587160;
          v135 = v164;
          v136 = v165;
          v137 = v166;
          *&v154[15] = *(v163 + 15);
          v152 = v161;
          v153 = v162;
          *v154 = v163[0];
          v148 = v157;
          v149 = v158;
          v150 = v159;
          v151 = v160;
          v146 = v155;
          v133 = v124;
          v134 = v125;
          v138 = v167;
          v139 = 3;
          v140 = 0;
          v141 = 0;
          v142 = v66;
          v143 = v128;
          v144 = v123;
          v145 = 2;
          v147 = v156;
LABEL_23:
          v91 = CoreSynthesizer.Voice.localizedName.getter();
          v93 = v92;
          *(v74 + 56) = MEMORY[0x1E69E6158];
          *(v74 + 64) = sub_1A93B3A38();
          *(v74 + 32) = v91;
          *(v74 + 40) = v93;
          v83 = sub_1A957C138();

LABEL_30:
          v62 = v119;
          goto LABEL_31;
        }

        goto LABEL_29;
      }
    }

    else
    {
      v65 = v127;
      LOBYTE(v133) = v127;
      v132 = 3;
      sub_1A93B3A8C();
      if ((sub_1A957C098() & 1) == 0)
      {
        v98 = sub_1A957C0C8();
        v99 = sub_1A957C0C8();
        v100 = sub_1A957C0C8();
        type metadata accessor for CoreSynthesizer(0);
        v101 = swift_getObjCClassFromMetadata();
        v102 = [objc_opt_self() bundleForClass_];
        v103 = sub_1A957C0C8();

        v104 = AXNSLocalizedStringForLocale();

        if (v104)
        {
          v83 = sub_1A957C0F8();

          goto LABEL_30;
        }

        goto LABEL_29;
      }
    }

    v84 = sub_1A957C0C8();
    v85 = sub_1A957C0C8();
    v86 = sub_1A957C0C8();
    type metadata accessor for CoreSynthesizer(0);
    v87 = swift_getObjCClassFromMetadata();
    v88 = [objc_opt_self() bundleForClass_];
    v89 = sub_1A957C0C8();

    v90 = AXNSLocalizedStringForLocale();

    if (v90)
    {
      sub_1A957C0F8();

      sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
      v74 = swift_allocObject();
      *(v74 + 16) = xmmword_1A9587160;
      v135 = v164;
      v136 = v165;
      v137 = v166;
      *&v154[15] = *(v163 + 15);
      v147 = v156;
      v146 = v155;
      v151 = v160;
      v150 = v159;
      v149 = v158;
      v148 = v157;
      *v154 = v163[0];
      v153 = v162;
      v133 = v124;
      v134 = v125;
      v138 = v167;
      v139 = v65;
      v140 = v60;
      v141 = v122;
      v142 = v130;
      v143 = v128;
      v144 = v123;
      v145 = v64;
      v152 = v161;
      goto LABEL_23;
    }

LABEL_29:
    v83 = 0;
    goto LABEL_30;
  }

  v83 = v81;
LABEL_26:

LABEL_31:
  (v110)(v118, v62);
  return v83;
}

uint64_t CoreSynthesizer.Voice.localizedName.getter()
{
  v1 = sub_1A957B308();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A957C0A8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = *(v0 + 40);
  v4 = *(v0 + 72);
  v5 = *(v0 + 120);
  if (!*(v0 + 120))
  {
    sub_1A93B4FE8();
    sub_1A957C438();
    sub_1A957C438();
    if (v13 == v15 && v14 == v16)
    {
    }

    else
    {
      v7 = sub_1A957D3E8();

      if ((v7 & 1) == 0)
      {
        return sub_1A93B42E8();
      }
    }

    sub_1A93B3BF0();
    if (!v8)
    {
      goto LABEL_18;
    }

    return sub_1A93B42E8();
  }

  if (v5 != 1)
  {
    if (v5 != 2)
    {
      goto LABEL_18;
    }

    v6 = *(v0 + 88) | *(v0 + 80) | *(v0 + 96) | *(v0 + 104) | *(v0 + 112);
    if (v4 == 2 && !v6)
    {
      sub_1A9493CFC();
      sub_1A9387410();
      if (sub_1A957CD88())
      {
        return sub_1A93B42E8();
      }

LABEL_18:

      sub_1A957C0B8();
      type metadata accessor for CoreSynthesizer(0);
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v11 = [objc_opt_self() bundleForClass_];
      sub_1A957B258();
      return sub_1A957C178();
    }

    if (v4 != 3 || v6)
    {
      goto LABEL_18;
    }
  }

  return v3;
}

unint64_t sub_1A93B3A38()
{
  result = qword_1EB386458;
  if (!qword_1EB386458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386458);
  }

  return result;
}

unint64_t sub_1A93B3A8C()
{
  result = qword_1EB386B80;
  if (!qword_1EB386B80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B80);
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.sampleText.getter()
{
  v1 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v8[-v2 - 8];
  memcpy(v8, v0, sizeof(v8));
  v4 = sub_1A957B308();
  (*(*(v4 - 8) + 56))(v3, 1, 1, v4);
  v5 = CoreSynthesizer.Voice.sampleText(forLocale:)(v3);
  sub_1A937B960(v3, &qword_1EB386988, &qword_1A9587830);
  return v5;
}

id sub_1A93B3BF0()
{
  v1 = sub_1A957B308();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v38 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0[1];
  v75 = *v0;
  v76 = v5;
  v6 = *(v0 + 5);
  v77 = *(v0 + 4);
  v7 = *(v0 + 6);
  v8 = *(v0 + 232);
  v71 = *(v0 + 216);
  v72 = v8;
  v9 = *(v0 + 264);
  v73 = *(v0 + 248);
  v74 = v9;
  v10 = *(v0 + 168);
  v67 = *(v0 + 152);
  v68 = v10;
  v11 = *(v0 + 200);
  v69 = *(v0 + 184);
  v70 = v11;
  v12 = *(v0 + 104);
  v63 = *(v0 + 88);
  v64 = v12;
  v13 = *(v0 + 136);
  v65 = *(v0 + 120);
  v66 = v13;
  v14 = *(v0 + 72);
  v61 = *(v0 + 56);
  v62 = v14;
  v40 = objc_opt_self();
  result = [v40 sharedInstance];
  v41 = result;
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  v16 = *(v0 + 248);
  v60 = *(v0 + 264);
  v17 = v0[1];
  v42 = *v0;
  v43 = v17;
  v18 = *(v0 + 232);
  v57 = *(v0 + 216);
  v58 = v18;
  v59 = v16;
  v19 = *(v0 + 168);
  v53 = *(v0 + 152);
  v54 = v19;
  v20 = *(v0 + 200);
  v55 = *(v0 + 184);
  v56 = v20;
  v21 = *(v0 + 104);
  v49 = *(v0 + 88);
  v50 = v21;
  v22 = *(v0 + 136);
  v51 = *(v0 + 120);
  v52 = v22;
  v23 = *(v0 + 72);
  v47 = *(v0 + 56);
  v44 = *(v0 + 4);
  v45 = v6;
  v46 = v7;
  v48 = v23;
  CoreSynthesizer.Voice.primaryLocale.getter(v4);
  Locale.siriLocaleIdentifier.getter();
  v24 = v6;
  v25 = v4;
  v26 = *(v2 + 8);
  v38 = v2 + 8;
  v39 = v1;
  v26(v4, v1);
  v27 = sub_1A957C0C8();

  v28 = sub_1A957C0C8();
  v29 = v41;
  v30 = [v41 outputVoiceDescriptorForOutputLanguageCode:v27 voiceName:v28];

  if (v30)
  {
    goto LABEL_5;
  }

  v31 = v25;
  v32 = v39;
  result = [v40 sharedInstance];
  if (!result)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v33 = result;
  v42 = v75;
  v43 = v76;
  v60 = v74;
  v57 = v71;
  v58 = v72;
  v59 = v73;
  v53 = v67;
  v54 = v68;
  v55 = v69;
  v56 = v70;
  v49 = v63;
  v50 = v64;
  v51 = v65;
  v52 = v66;
  v47 = v61;
  v44 = v77;
  v45 = v24;
  v46 = v7;
  v48 = v62;
  CoreSynthesizer.Voice.primaryLocale.getter(v31);
  Locale.siriLocaleIdentifier.getter();
  v26(v31, v32);
  v34 = sub_1A957C0C8();

  sub_1A957C1A8();
  v35 = sub_1A957C0C8();

  v30 = [v33 outputVoiceDescriptorForOutputLanguageCode:v34 voiceName:v35];

  if (v30)
  {
LABEL_5:
    v36 = [v30 localizedDisplay];

    if (v36)
    {
      v37 = sub_1A957C0F8();

      return v37;
    }
  }

  return 0;
}

uint64_t Locale.siriLocaleIdentifier.getter()
{
  v0 = sub_1A957B2E8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v19 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1A937829C(&qword_1EB386A68, &qword_1A9587F40);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v19 - v5;
  sub_1A957B2F8();
  sub_1A957B2B8();
  (*(v1 + 8))(v3, v0);
  v7 = sub_1A957B188();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    sub_1A937B960(v6, &qword_1EB386A68, &qword_1A9587F40);
  }

  else
  {
    v9 = 0x41532D7261;
    v12 = sub_1A957B148();
    v14 = v13;
    (*(v8 + 8))(v6, v7);
    if (v12 == 29281 && v14 == 0xE200000000000000)
    {

      return v9;
    }

    v16 = sub_1A957D3E8();

    if (v16)
    {
      return v9;
    }
  }

  v9 = Locale.legacyIdentifier.getter();
  v11 = v10;
  if (sub_1A957C348())
  {
    v22 = v9;
    v23 = v11;
    v20 = 7236963;
    v21 = 0xE300000000000000;
LABEL_13:
    v19[0] = 26746;
    v19[1] = 0xE200000000000000;
    v17 = sub_1A93820F4();
    v9 = sub_1A957CD08(&v20, v19, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v17, v17, v17);

    return v9;
  }

  if (sub_1A957C348())
  {
    v22 = v9;
    v23 = v11;
    v20 = 6649209;
    v21 = 0xE300000000000000;
    goto LABEL_13;
  }

  return v9;
}

uint64_t sub_1A93B42E8()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 48);
  result = sub_1A93B3BF0();
  if (!v4)
  {
    if (TTSIsInternalBuild(result, 0))
    {
      sub_1A957CF08();

      MEMORY[0x1AC585140](v1, v2);
      MEMORY[0x1AC585140](0x454C204952495320, 0xEC0000007E7E4B41);
      return 32382;
    }

    else
    {
      return 2108704;
    }
  }

  return result;
}

uint64_t CoreSynthesizer.Voice.localizedNameWithFootprint.getter()
{
  v1 = sub_1A957B308();
  MEMORY[0x1EEE9AC00](v1 - 8);
  v2 = sub_1A957C0A8();
  MEMORY[0x1EEE9AC00](v2 - 8);
  v3 = v0[1];
  v86 = *v0;
  v87 = v3;
  v88 = v0[2];
  v89 = *(v0 + 6);
  v4 = *(v0 + 56);
  v85[0] = *(v0 + 57);
  v5 = *(v0 + 9);
  *(v85 + 7) = *(v0 + 8);
  v7 = *(v0 + 10);
  v6 = *(v0 + 11);
  v9 = *(v0 + 12);
  v8 = *(v0 + 13);
  v10 = *(v0 + 14);
  v11 = *(v0 + 120);
  *(v84 + 15) = *(v0 + 264);
  v12 = *(v0 + 249);
  v13 = *(v0 + 217);
  v83 = *(v0 + 233);
  v84[0] = v12;
  v14 = *(v0 + 185);
  v81 = *(v0 + 201);
  v82 = v13;
  v15 = *(v0 + 153);
  v79 = *(v0 + 169);
  v80 = v14;
  v16 = *(v0 + 121);
  v77 = *(v0 + 137);
  v78 = v15;
  v76 = v16;
  if (v11 != 2 || v6 | v7 | v5 | v9 | v8 | v10 && ((v5 - 1) > 1 || v6 | v7 | v9 | v8 | v10) || (LOBYTE(v54) = v4, v50 = v8, v51 = v10, v48 = v6, v49 = v9, v46 = v7, v47 = v5, v45 = v4, v17 = sub_1A9502D6C(), v18 = TTSStringForSpeechFootprint(v17), v4 = v45, v7 = v46, v5 = v47, v6 = v48, v9 = v49, v8 = v50, v10 = v51, !v18))
  {
    *(v75 + 15) = *(v0 + 264);
    v32 = v0[1];
    v54 = *v0;
    v55 = v32;
    v56 = v0[2];
    v33 = *(v0 + 121);
    v68 = *(v0 + 137);
    v67 = v33;
    v34 = *(v0 + 185);
    v72 = *(v0 + 201);
    v71 = v34;
    v35 = *(v0 + 153);
    v70 = *(v0 + 169);
    v69 = v35;
    v36 = *(v0 + 233);
    v75[0] = *(v0 + 249);
    v37 = *(v0 + 217);
    v74 = v36;
    v57 = *(v0 + 6);
    v58 = v4;
    *v59 = *(v0 + 57);
    *&v59[7] = *(v0 + 8);
    v60 = v5;
    v61 = v7;
    v62 = v6;
    v63 = v9;
    v64 = v8;
    v65 = v10;
    v66 = v11;
    v73 = v37;
  }

  else
  {
    v19 = v18;
    v20 = sub_1A957C0F8();
    v22 = v21;

    *&v54 = v20;
    *(&v54 + 1) = v22;
    v53[0] = 32;
    v53[1] = 0xE100000000000000;
    v52[0] = 95;
    v52[1] = 0xE100000000000000;
    v23 = sub_1A93820F4();
    v24 = MEMORY[0x1E69E6158];
    sub_1A957CD08(v53, v52, 0, 0, 0, 1, MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], MEMORY[0x1E69E6158], v23, v23, v23);

    v25 = sub_1A957C1B8();
    v27 = v26;

    *&v54 = 0;
    *(&v54 + 1) = 0xE000000000000000;
    sub_1A957CF08();

    *&v54 = v25;
    *(&v54 + 1) = v27;
    MEMORY[0x1AC585140](0xD000000000000010, 0x80000001A95C10A0);
    v28 = v54;

    sub_1A957C0B8();
    type metadata accessor for CoreSynthesizer(0);
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v30 = [objc_opt_self() bundleForClass_];
    sub_1A957B258();
    if (v28 == sub_1A957C178() && *(&v28 + 1) == v31)
    {
    }

    else
    {
      v39 = sub_1A957D3E8();

      if ((v39 & 1) == 0)
      {
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v40 = swift_allocObject();
        *(v40 + 16) = xmmword_1A9587160;
        v54 = v86;
        v55 = v87;
        v56 = v88;
        *(v75 + 15) = *(v84 + 15);
        v73 = v82;
        v74 = v83;
        v75[0] = v84[0];
        v69 = v78;
        v70 = v79;
        v71 = v80;
        v72 = v81;
        v67 = v76;
        v57 = v89;
        v58 = v45;
        *v59 = v85[0];
        *&v59[7] = *(v85 + 7);
        v60 = v47;
        v61 = v46;
        v62 = v48;
        v63 = v49;
        v64 = v50;
        v65 = v51;
        v66 = 2;
        v68 = v77;
        v41 = CoreSynthesizer.Voice.localizedName.getter();
        v43 = v42;
        *(v40 + 56) = v24;
        *(v40 + 64) = sub_1A93B3A38();
        *(v40 + 32) = v41;
        *(v40 + 40) = v43;
        v44 = sub_1A957C138();

        return v44;
      }
    }

    v54 = v86;
    v55 = v87;
    v56 = v88;
    *(v75 + 15) = *(v84 + 15);
    v73 = v82;
    v74 = v83;
    v75[0] = v84[0];
    v69 = v78;
    v70 = v79;
    v71 = v80;
    v72 = v81;
    v67 = v76;
    v57 = v89;
    v58 = v45;
    *v59 = v85[0];
    *&v59[7] = *(v85 + 7);
    v60 = v47;
    v61 = v46;
    v62 = v48;
    v63 = v49;
    v64 = v50;
    v65 = v51;
    v66 = 2;
    v68 = v77;
  }

  return CoreSynthesizer.Voice.localizedName.getter();
}

uint64_t sub_1A93B4A00()
{
  type metadata accessor for SampleStringOverrideCache();
  v0 = swift_allocObject();
  *(v0 + 16) = 0;
  sub_1A937829C(&qword_1EB3882C0, &qword_1A9588BD0);
  result = swift_allocObject();
  *(result + 16) = 0;
  *(v0 + 24) = result;
  qword_1EB392A08 = v0;
  return result;
}

uint64_t sub_1A93B4A64()
{
  v1 = v0;
  v2 = sub_1A957BC88();
  v37 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1A957AFD8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v32 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v0 + 24);
  v38 = sub_1A93B5060;
  v39 = v0;
  os_unfair_lock_lock(v9 + 4);
  sub_1A93B5080(&v40);
  os_unfair_lock_unlock(v9 + 4);
  result = v40;
  if (!v40)
  {
    v34 = v5;
    v35 = v4;
    v33 = v6;
    v36 = v2;
    ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
    v12 = [objc_opt_self() bundleForClass_];
    v13 = sub_1A957C0C8();
    v14 = sub_1A957C0C8();
    v15 = [v12 URLForResource:v13 withExtension:v14];

    v16 = v37;
    if (v15)
    {
      sub_1A957AF98();

      v17 = objc_allocWithZone(MEMORY[0x1E695DF20]);
      v18 = sub_1A957AF58();
      v19 = [v17 initWithContentsOfURL_];

      if (v19)
      {
        v40 = 0;
        sub_1A957C028();

        if (v40)
        {
          v21 = MEMORY[0x1EEE9AC00](v20);
          *(&v32 - 2) = v1;
          *(&v32 - 1) = v22;
          MEMORY[0x1EEE9AC00](v21);
          *(&v32 - 2) = sub_1A93B50C4;
          *(&v32 - 1) = v23;
          v25 = v24;
          os_unfair_lock_lock(v9 + 4);
          sub_1A93B5100();
          os_unfair_lock_unlock(v9 + 4);
          (*(v33 + 8))(v8, v34);
          return v25;
        }
      }

      (*(v33 + 8))(v8, v34);
    }

    v26 = sub_1A93772F8();
    v28 = v35;
    v27 = v36;
    (*(v16 + 16))(v35, v26, v36);
    v29 = sub_1A957BC68();
    v30 = sub_1A957CA78();
    if (os_log_type_enabled(v29, v30))
    {
      v31 = swift_slowAlloc();
      *v31 = 0;
      _os_log_impl(&dword_1A9324000, v29, v30, "Failed to load sample dictionary", v31, 2u);
      MEMORY[0x1AC587CD0](v31, -1, -1);
    }

    (*(v16 + 8))(v28, v27);
    return sub_1A9381740(MEMORY[0x1E69E7CC0]);
  }

  return result;
}

uint64_t sub_1A93B4E9C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1A93B4EDC(uint64_t a1, uint64_t a2)
{
  if (qword_1EB392A00 != -1)
  {
    swift_once();
  }

  v4 = sub_1A93B4A64();
  if (*(v4 + 16) && (v5 = sub_1A937A490(a1, a2), (v6 & 1) != 0))
  {
    v7 = *(*(v4 + 56) + 16 * v5);
  }

  else
  {
    v7 = 0;
  }

  return v7;
}

unint64_t sub_1A93B4F90()
{
  result = qword_1EB386490;
  if (!qword_1EB386490)
  {
    sub_1A957B188();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386490);
  }

  return result;
}

unint64_t sub_1A93B4FE8()
{
  result = qword_1EB386B88;
  if (!qword_1EB386B88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386B88);
  }

  return result;
}

void *sub_1A93B5080@<X0>(void *a1@<X8>)
{
  result = (*(v1 + 16))(&v5);
  if (!v2)
  {
    *a1 = v5;
  }

  return result;
}

uint64_t sub_1A93B50C4()
{
  *(*(v0 + 16) + 16) = *(v0 + 24);
}

uint64_t getEnumTagSinglePayload for VoiceLoadRunCondition(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 4))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for VoiceLoadRunCondition(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = a2 - 1;
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

  *(result + 4) = v3;
  return result;
}

void type metadata accessor for os_unfair_lock_s()
{
  if (!qword_1ED96FCE0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ED96FCE0);
    }
  }
}

uint64_t sub_1A93B51CC()
{
  v0 = sub_1A937829C(&qword_1EB386B90, &unk_1A9588940);
  sub_1A9377618(v0, qword_1EB3A7BC0);
  sub_1A937731C(v0, qword_1EB3A7BC0);
  return sub_1A957BAA8();
}

uint64_t sub_1A93B5248(const void *a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet(0);
  v5 = *(v4 - 8);
  v59 = v4;
  v60 = v5;
  v6 = MEMORY[0x1EEE9AC00](v4);
  v61 = &v51 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v52 = &v51 - v9;
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v51 - v10;
  v12 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v51 - v13;
  v15 = sub_1A957B308();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v18 = &v51 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v74, a1, sizeof(v74));
  sub_1A93B5960(a2, v14);
  v19 = *(v16 + 48);
  if (v19(v14, 1, v15) == 1)
  {
    memcpy(v73, v74, sizeof(v73));
    CoreSynthesizer.Voice.primaryLocale.getter(v18);
    if (v19(v14, 1, v15) != 1)
    {
      sub_1A937B960(v14, &qword_1EB386988, &qword_1A9587830);
    }
  }

  else
  {
    (*(v16 + 32))(v18, v14, v15);
  }

  v56 = v16;
  v57 = v15;
  v63 = Locale.legacyIdentifier.getter();
  v58 = v20;
  sub_1A9470340();
  v53 = v22;
  v54 = v21;
  v71 = v21;
  v72 = v22;
  v70 = MEMORY[0x1E69E7CC0];
  v78 = v74[15];
  v75 = *&v74[9];
  v76 = *&v74[11];
  v77 = *&v74[13];
  if (!LOBYTE(v74[15]) || LOBYTE(v74[15]) == 2 && v75 == 1 && (v23 = vorrq_s8(v76, v77), !(*&vorr_s8(*v23.i8, *&vextq_s8(v23, v23, 8uLL)) | *(&v75 + 1))))
  {
    *v73 = *&v74[9];
    *&v73[16] = *&v74[11];
    *&v73[32] = *&v74[13];
    v73[48] = v74[15];
    v65 = 1;
    v66 = 0u;
    v67 = 0u;
    v68 = 0;
    v69 = 2;
    sub_1A93B7280(&v75, v64);
    sub_1A93B72DC();
    v24 = sub_1A957C098();
    sub_1A93B183C(*v73, *&v73[8], *&v73[16], *&v73[24], *&v73[32], *&v73[40], v73[48]);
    v25 = "ax_gryphon_resource_order";
    if (v24)
    {
      v25 = "ax_compact_resource_order";
    }

    v26 = v25 - 32;
    v27 = Locale.siriLocaleIdentifier.getter();
    v29 = (off_1F1CEDFA8)(v27, v28, 0xD000000000000019, v26 | 0x8000000000000000);

    if (v29)
    {
      sub_1A93B5A34(v29);
    }
  }

  v55 = v18;
  result = (off_1F1CEDFB0)(v63, v58);
  v31 = result;
  v33 = v59;
  v32 = v60;
  v62 = *(result + 16);
  if (v62)
  {
    v34 = 0;
    v35 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v34 >= *(v31 + 16))
      {
        __break(1u);
        return result;
      }

      v36 = (*(v32 + 80) + 32) & ~*(v32 + 80);
      v37 = *(v32 + 72);
      sub_1A93B59D0(v31 + v36 + v37 * v34, v11);
      v65 = *&v11[*(v33 + 28)];
      v38 = v78;
      if (v78)
      {
        if (v78 != 2 || (v39 = vorrq_s8(v76, v77), v40 = *&vorr_s8(*v39.i8, *&vextq_s8(v39, v39, 8uLL)) | *(&v75 + 1), v75 == 1) && !v40)
        {
LABEL_22:
          v38 = 1;
          goto LABEL_23;
        }

        if (v75 != 4 || v40)
        {
          if (v75 != 5 || v40)
          {
            goto LABEL_22;
          }

          v38 = 3;
        }

        else
        {
          v38 = 2;
        }
      }

LABEL_23:
      v64[0] = v38;
      if ((sub_1A93B5CE8(v74[0], v74[1], v64) & 1) != 0 && v11[*(v33 + 44)] == 1)
      {
        sub_1A93B5FF0(v11, v61);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v73 = v35;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1A93B60F4(0, *(v35 + 16) + 1, 1);
          v35 = *v73;
        }

        v43 = *(v35 + 16);
        v42 = *(v35 + 24);
        if (v43 >= v42 >> 1)
        {
          sub_1A93B60F4((v42 > 1), v43 + 1, 1);
          v35 = *v73;
        }

        *(v35 + 16) = v43 + 1;
        result = sub_1A93B5FF0(v61, v35 + v36 + v43 * v37);
        v33 = v59;
        v32 = v60;
      }

      else
      {
        result = sub_1A93B5F94(v11);
      }

      if (v62 == ++v34)
      {
        goto LABEL_37;
      }
    }
  }

  v35 = MEMORY[0x1E69E7CC0];
LABEL_37:

  v44 = *(v35 + 16);
  if (v44)
  {
    v45 = v35 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v46 = *(v32 + 72);
    v47 = v52;
    v48 = v57;
    v49 = v58;
    do
    {
      sub_1A93B59D0(v45, v47);
      sub_1A937B3DC(v74, v73);

      sub_1A93B6518(v47, v74, v63, v49);

      sub_1A937B48C(v74);
      v50 = sub_1A93B5F94(v47);
      MEMORY[0x1AC585360](v50);
      if (*((v70 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v70 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1A957C4F8();
        v48 = v57;
      }

      sub_1A957C538();
      v45 += v46;
      --v44;
    }

    while (v44);
  }

  else
  {

    v48 = v57;
  }

  (*(v56 + 8))(v55, v48);
  return v70;
}

uint64_t sub_1A93B5960(uint64_t a1, uint64_t a2)
{
  v4 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93B59D0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93B5A34(unint64_t a1)
{
  if (a1 >> 62)
  {
    v3 = sub_1A957CE48();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!(*v1 >> 62))
  {
    v4 = *((*v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    v5 = __OFADD__(v4, v3);
    result = v4 + v3;
    if (!v5)
    {
      goto LABEL_5;
    }

LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v13 = sub_1A957CE48();
  v5 = __OFADD__(v13, v3);
  result = v13 + v3;
  if (v5)
  {
    goto LABEL_13;
  }

LABEL_5:
  sub_1A93B6054(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1A93B6374(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v10 < 1)
  {
LABEL_9:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_9;
  }

LABEL_15:
  __break(1u);
  return result;
}

uint64_t sub_1A93B5B24(uint64_t a1)
{
  v3 = sub_1A937829C(&qword_1EB386988, &qword_1A9587830);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v11[-v4];
  v6 = OBJC_IVAR___TTSAXResource_voice;
  swift_beginAccess();
  memcpy(v14, (a1 + v6), sizeof(v14));
  memcpy(v15, (a1 + v6), sizeof(v15));
  result = sub_1A932D058(v15);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {
    memcpy(v11, v15, sizeof(v11));
    v8 = sub_1A957B308();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = *(v1 + 80);
    memcpy(v12, v14, sizeof(v12));
    sub_1A937B3DC(v12, v13);
    v10 = v9(v11, v5);
    sub_1A937B960(v5, &qword_1EB386988, &qword_1A9587830);
    memcpy(v13, v11, 0x118uLL);
    sub_1A937B48C(v13);
    return v10;
  }

  return result;
}

uint64_t sub_1A93B5CE8(uint64_t result, uint64_t a2, char *a3)
{
  v5 = result;
  v6 = *a3;
  v7 = *v3;
  v8 = *v3 >> 61;
  if (v8 > 2)
  {
    if (v8 == 3)
    {
      v14 = 0;
      v15 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v16 = *(v15 + 16);
      do
      {
        v9 = v16 != v14;
        if (v16 == v14)
        {
          break;
        }

        if (v14 >= *(v15 + 16))
        {
          __break(1u);
LABEL_27:
          __break(1u);
          return result;
        }

        v17 = v14 + 1;
        v25 = *(v15 + 32 + 8 * v14);
        LOBYTE(v24[0]) = v6;

        v18 = sub_1A93B5CE8(v5, a2, v24);

        v14 = v17;
      }

      while ((v18 & 1) == 0);
    }

    else if (v8 == 4)
    {
      v10 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v11 = swift_allocObject();
      *(v11 + 16) = v10;
      v25 = v11 | 0x4000000000000000;
      LOBYTE(v24[0]) = v6;

      v12 = sub_1A93B5CE8(v5, a2, v24);

      v9 = v12 ^ 1;
    }

    else
    {
      v9 = 1;
    }
  }

  else
  {
    if (!v8)
    {
      sub_1A957C1A8();
      sub_1A957C1A8();
      v13 = sub_1A957C348();

      return v13 & 1;
    }

    if (v8 == 1)
    {
      v28 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v27 = v6;
      sub_1A93B74AC();
      sub_1A957C438();
      sub_1A957C438();
      if (v25 == v24[0] && v26 == v24[1])
      {
        v9 = 1;
      }

      else
      {
        v9 = sub_1A957D3E8();
      }
    }

    else
    {
      v19 = 0;
      v20 = *((v7 & 0x1FFFFFFFFFFFFFFFLL) + 0x10);
      v21 = *(v20 + 16);
      do
      {
        v9 = v21 == v19;
        if (v21 == v19)
        {
          break;
        }

        if (v19 >= *(v20 + 16))
        {
          goto LABEL_27;
        }

        v22 = v19 + 1;
        v25 = *(v20 + 32 + 8 * v19);
        LOBYTE(v24[0]) = v6;

        v23 = sub_1A93B5CE8(v5, a2, v24);

        v19 = v22;
      }

      while ((v23 & 1) != 0);
    }
  }

  return v9 & 1;
}

uint64_t sub_1A93B5F94(uint64_t a1)
{
  v2 = type metadata accessor for PronunciationRuleSet(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1A93B5FF0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PronunciationRuleSet(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1A93B6054(uint64_t a1, char a2)
{
  v4 = *v2;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  *v2 = v4;
  if (result)
  {
    if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
    {
      if (a1 <= *((v4 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        return result;
      }

      goto LABEL_9;
    }
  }

  else if ((v4 & 0x8000000000000000) == 0 && (v4 & 0x4000000000000000) == 0)
  {
    goto LABEL_9;
  }

  sub_1A957CE48();
LABEL_9:
  result = sub_1A957CF38();
  *v2 = result;
  return result;
}

void *sub_1A93B60F4(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1A93B6114(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1A93B6114(void *result, int64_t a2, char a3, void *a4)
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
    v13 = MEMORY[0x1E69E7CC0];
    goto LABEL_19;
  }

  sub_1A937829C(&qword_1EB386BD0, &qword_1A9588998);
  v10 = *(type metadata accessor for PronunciationRuleSet(0) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = j__malloc_size(v13);
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
  v15 = *(type metadata accessor for PronunciationRuleSet(0) - 8);
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

void (*sub_1A93B62EC(void (*result)(id *a1), unint64_t a2, uint64_t a3))(id *a1)
{
  v3 = result;
  if ((a3 & 0xC000000000000001) != 0)
  {
    v4 = MEMORY[0x1AC585DE0](a2, a3);
    goto LABEL_5;
  }

  if ((a2 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
  {
    v4 = *(a3 + 8 * a2 + 32);
LABEL_5:
    *v3 = v4;
    return sub_1A93B636C;
  }

  __break(1u);
  return result;
}

uint64_t sub_1A93B6374(uint64_t result, uint64_t a2, unint64_t a3)
{
  v4 = result;
  v5 = a3 >> 62;
  if (a3 >> 62)
  {
    v12 = a2;
    result = sub_1A957CE48();
    a2 = v12;
    v6 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v6 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return a3;
    }
  }

  if (v4)
  {
    if (v5)
    {
      v7 = a2;
      result = sub_1A957CE48();
      if (result <= v7)
      {
        if (v6 >= 1)
        {
          sub_1A93B744C(&qword_1EB386BA8, &qword_1EB386BA0, &qword_1A9588978, MEMORY[0x1E69E6340]);
          for (i = 0; i != v6; ++i)
          {
            sub_1A937829C(&qword_1EB386BA0, &qword_1A9588978);
            v9 = sub_1A93B62EC(v13, i, a3);
            v11 = *v10;
            (v9)(v13, 0);
            *(v4 + 8 * i) = v11;
          }

          return a3;
        }

        goto LABEL_16;
      }
    }

    else
    {
      if (*((a3 & 0xFFFFFFFFFFFFFF8) + 0x10) <= a2)
      {
        sub_1A93B7394();
        swift_arrayInitWithCopy();
        return a3;
      }

      __break(1u);
    }

    __break(1u);
LABEL_16:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1A93B6518(void *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v92 = a4;
  v91 = a3;
  v96 = a2;
  v88 = sub_1A937829C(&qword_1EB386B90, &unk_1A9588940);
  v5 = *(v88 - 8);
  v6 = MEMORY[0x1EEE9AC00](v88);
  v95 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v94 = &v85 - v8;
  v9 = sub_1A937829C(&qword_1EB386BB0, &qword_1A9588980);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v93 = &v85 - v10;
  v102 = sub_1A957AE58();
  v11 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v101 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = [objc_allocWithZone(TTSRuleset) init];
  v107 = 0x5F656C75727861;
  v108 = 0xE700000000000000;
  v14 = type metadata accessor for PronunciationRuleSet(0);
  MEMORY[0x1AC585140](*(a1 + v14[6]), *(a1 + v14[6] + 8));
  MEMORY[0x1AC585140](95, 0xE100000000000000);
  v15 = sub_1A957B088();
  MEMORY[0x1AC585140](v15);

  MEMORY[0x1AC585140](95, 0xE100000000000000);
  MEMORY[0x1AC585140](*a1, a1[1]);
  v16 = sub_1A957C0C8();

  [v13 setIdentifier_];

  [v13 setPriority_];
  if (*(a1 + v14[8] + 8))
  {
    v17 = objc_allocWithZone(TTSRegex);
    v18 = sub_1A957C0C8();
    v19 = [v17 initWithPerlPattern_];

    [v13 setActivationRegex_];
  }

  v20 = *(a1 + v14[9]);
  v21 = *(v20 + 16);
  if (!v21)
  {
    return;
  }

  v22 = 0;
  v90 = 0;
  v100 = (v11 + 8);
  v87 = (v5 + 16);
  v86 = (v5 + 8);
  v23 = (v20 + 48);
  v89 = xmmword_1A9587160;
  v97 = v13;
  v98 = v21;
  v99 = v20;
  while (v22 < *(v20 + 16))
  {
    if (*(v23 + 17) != 1)
    {
      goto LABEL_7;
    }

    v24 = *(v23 - 2);
    v25 = *(v23 - 1);
    v26 = v23[1];
    v106 = *v23;
    v27 = *(v23 + 16);
    v28 = v23[3];
    v29 = v23[5];
    v30 = objc_allocWithZone(TTSRuleReplacement);

    v105 = v26;

    v103 = v28;
    sub_1A93B73E0(v28);
    v104 = v29;

    v31 = [v30 init];
    if (HIDWORD(v22))
    {
      goto LABEL_50;
    }

    v32 = v31;
    [v31 setOriginalRulesetIndex_];
    v113[0] = v24;
    v113[1] = v25;

    v33 = v101;
    sub_1A957AE08();
    sub_1A93820F4();
    sub_1A957CCF8();
    (*v100)(v33, v102);

    v34 = sub_1A957C348();

    if (v34)
    {
    }

    else
    {
      v113[0] = 6446127;
      v113[1] = 0xE300000000000000;

      MEMORY[0x1AC585140](v24, v25);

      MEMORY[0x1AC585140](1764713052, 0xE400000000000000);
    }

    v35 = v106;
    v36 = objc_allocWithZone(TTSRegex);
    v37 = sub_1A957C0C8();

    v38 = [v36 initWithPerlPattern_];

    [v32 setRegex_];
    v112 = v27;
    v111 = 1;
    sub_1A93B73F8();
    sub_1A957C438();
    sub_1A957C438();
    if (v113[0] == v109 && v113[1] == v110)
    {
    }

    else
    {
      v39 = sub_1A957D3E8();

      if ((v39 & 1) == 0)
      {
        v41 = v88;
        v42 = v94;
        if (qword_1EB392A10 != -1)
        {
          swift_once();
        }

        v43 = sub_1A937731C(v41, qword_1EB3A7BC0);
        swift_beginAccess();
        (*v87)(v42, v43, v41);
        sub_1A93B744C(&qword_1EB386BC0, &qword_1EB386B90, &unk_1A9588940, MEMORY[0x1E69E9290]);
        sub_1A957BA98();
        sub_1A957C3B8();
        v44 = v90;
        sub_1A957BAD8();
        if (v44)
        {

          v45 = *v86;
          (*v86)(v95, v41);
          v45(v94, v41);
          v46 = sub_1A937829C(&qword_1EB386BC8, &qword_1A9588988);
          v47 = v93;
          (*(*(v46 - 8) + 56))(v93, 1, 1, v46);
          v90 = 0;
        }

        else
        {
          v90 = 0;

          v48 = *v86;
          (*v86)(v95, v41);
          v48(v94, v41);
          v47 = v93;
        }

        v49 = sub_1A937829C(&qword_1EB386BC8, &qword_1A9588988);
        v50 = (*(*(v49 - 8) + 48))(v47, 1, v49) != 1;
        sub_1A937B960(v47, &qword_1EB386BB0, &qword_1A9588980);
        v40 = v50;
        v35 = v106;
        goto LABEL_25;
      }
    }

    v40 = 1;
LABEL_25:
    [v32 setIsTerminalRule_];
    if ((v27 & 1) == 0)
    {
      v64 = sub_1A957C0C8();
      goto LABEL_34;
    }

    v51 = v105;
    if (*(v96 + 120) != 2)
    {
      goto LABEL_29;
    }

    v52 = *(v96 + 72);
    v53 = vorrq_s8(*(v96 + 88), *(v96 + 104));
    v54 = *&vorr_s8(*v53.i8, *&vextq_s8(v53, v53, 8uLL)) | *(v96 + 80);
    if (v52 == 1 && !v54)
    {
      goto LABEL_29;
    }

    if (v52 == 4 && !v54)
    {
      v68 = objc_opt_self();
      v69 = sub_1A957C0C8();
      v70 = sub_1A957C0C8();
      v71 = [v68 eloquencePhonemesFromIPA:v69 language:v70];

      if (!v71)
      {
LABEL_42:
        v75 = AXTTSLogCommon();
        if (!v75)
        {
          goto LABEL_51;
        }

        v76 = v75;
        v77 = sub_1A957CA98();
        sub_1A937829C(&qword_1EB386B78, &qword_1A9588990);
        v78 = swift_allocObject();
        *(v78 + 16) = v89;
        *(v78 + 56) = MEMORY[0x1E69E6158];
        *(v78 + 64) = sub_1A93B3A38();
        *(v78 + 32) = v35;
        *(v78 + 40) = v51;

        sub_1A957BC48("No IPA transcription found for %@", 33, 2, &dword_1A9324000, v76, v77, v78);

        sub_1A93B7494(v103);
        goto LABEL_6;
      }

      v72 = sub_1A957C0F8();
      v74 = v73;

      v113[0] = 5988384;
      v113[1] = 0xE300000000000000;
      MEMORY[0x1AC585140](v72, v74);

      v62 = 8285;
      v63 = 0xE200000000000000;
      goto LABEL_31;
    }

    if (v52 == 5 && !v54)
    {
      v113[0] = 0;
      v113[1] = 0xE000000000000000;
      sub_1A957CF08();

      strcpy(v113, "[[inpt PHON]] ");
      HIBYTE(v113[1]) = -18;
      v79 = objc_opt_self();
      v80 = sub_1A957C0C8();
      v81 = [v79 applebetPhonemesFromIPA_];

      if (!v81)
      {
        goto LABEL_52;
      }

      v82 = sub_1A957C0F8();
      v84 = v83;

      MEMORY[0x1AC585140](v82, v84);

      v62 = 0x2074706E695B5B20;
      v63 = 0xEF205D5D54584554;
    }

    else
    {
LABEL_29:
      v55 = objc_opt_self();
      v56 = sub_1A957C0C8();
      v57 = sub_1A957C0C8();
      v58 = [v55 lhPhonemesFromIPA:v56 language:v57];

      if (!v58)
      {
        goto LABEL_42;
      }

      v59 = sub_1A957C0F8();
      v61 = v60;

      v113[0] = 724526428;
      v113[1] = 0xE400000000000000;
      MEMORY[0x1AC585140](v59, v61);

      v62 = 0x202B2F655CLL;
      v63 = 0xE500000000000000;
    }

LABEL_31:
    MEMORY[0x1AC585140](v62, v63);
    if (!v113[1])
    {
      goto LABEL_42;
    }

    v64 = sub_1A957C0C8();

LABEL_34:
    v65 = v97;
    [v32 setReplacement_];

    v66 = [v32 replacement];
    if (!v66)
    {
      sub_1A957C0F8();
      v66 = sub_1A957C0C8();
    }

    v67 = [objc_opt_self() processReplacementStringForSpecialCharacters_];

    if (!v67)
    {
      sub_1A957C0F8();
      v67 = sub_1A957C0C8();
    }

    [v32 setReplacement_];

    [v65 addRuleReplacement_];

    sub_1A93B7494(v103);

LABEL_6:

    v21 = v98;
    v20 = v99;
LABEL_7:
    ++v22;
    v23 += 8;
    if (v21 == v22)
    {
      return;
    }
  }

  __break(1u);
LABEL_50:
  __break(1u);
LABEL_51:
  __break(1u);
LABEL_52:
  __break(1u);
}

unint64_t sub_1A93B72DC()
{
  result = qword_1ED96FDB8;
  if (!qword_1ED96FDB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ED96FDB8);
  }

  return result;
}

unint64_t sub_1A93B7394()
{
  result = qword_1EB386B98;
  if (!qword_1EB386B98)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EB386B98);
  }

  return result;
}

uint64_t sub_1A93B73E0(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1A93B73F8()
{
  result = qword_1EB386BB8;
  if (!qword_1EB386BB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BB8);
  }

  return result;
}

uint64_t sub_1A93B744C(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1A93A7B68(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1A93B7494(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1A93B74AC()
{
  result = qword_1EB386BD8;
  if (!qword_1EB386BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB386BD8);
  }

  return result;
}

__n128 sub_1A93B7500@<Q0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2 | (*(v2 + 4) << 32);
  v5 = v2[2] | (*(v2 + 12) << 32);
  v6 = v2[4] | (*(v2 + 20) << 32);
  sub_1A9379534(a1, &v22);
  sub_1A937829C(&qword_1EB386A40, &qword_1A95889A0);
  v7 = HIDWORD(v4);
  v8 = HIDWORD(v5);
  if ((swift_dynamicCast() & 1) == 0)
  {
    v20 = 0u;
    memset(v21, 0, sizeof(v21));
    v19 = 0u;
    v18 = 0u;
    v10 = sub_1A937B960(&v18, &qword_1EB386BE0, qword_1A95889A8);
    goto LABEL_10;
  }

  v26 = v20;
  *v27 = *v21;
  *&v27[13] = *&v21[13];
  v24 = v18;
  v25 = v19;
  if (v21[4] != 255 && v7 < 0xFF || (v9 = v6 >> 34, v27[12] >> 2 <= 0x3EuLL) && v9 < 0x3F || v27[20] != 255 && v8 < 0xFF)
  {
    v10 = sub_1A93B77E0(&v24);
LABEL_10:
    LODWORD(v24) = v4;
    BYTE4(v24) = BYTE4(v4);
    BYTE4(v18) = BYTE4(v6);
    LODWORD(v18) = v6;
    v23 = BYTE4(v5);
    v22 = v5;
    MEMORY[0x1EEE9AC00](v10);
    a2[3] = &type metadata for TTSMarkup.Prosody;
    a2[4] = &protocol witness table for TTSMarkup.Prosody;
    v11 = swift_allocObject();
    *a2 = v11;
    TTSMarkup.Prosody.init(rate:pitch:volume:speech:)(&v24, &v18, &v22, sub_1A93B7798, (v11 + 16));
    return result;
  }

  v13 = *v27 | (v21[4] << 32);
  v14 = *&v27[8] | (v27[12] << 32);
  if (v7 <= 0xFE)
  {
    v13 = v4;
  }

  *v27 = v13;
  v27[4] = BYTE4(v13);
  if (v8 <= 0xFE)
  {
    v15 = v5;
  }

  else
  {
    v15 = *&v27[16] | (v27[20] << 32);
  }

  *&v27[16] = v15;
  v27[20] = BYTE4(v15);
  if (v9 <= 0x3E)
  {
    v14 = v6;
  }

  *&v27[8] = v14;
  v27[12] = BYTE4(v14);
  a2[3] = &type metadata for TTSMarkup.Prosody;
  a2[4] = &protocol witness table for TTSMarkup.Prosody;
  v16 = swift_allocObject();
  *a2 = v16;
  v17 = *v27;
  *(v16 + 48) = v26;
  *(v16 + 64) = v17;
  *(v16 + 77) = *&v27[13];
  result = v25;
  *(v16 + 16) = v24;
  *(v16 + 32) = result;
  return result;
}

uint64_t sub_1A93B7798@<X0>(uint64_t a1@<X8>)
{
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v4, *(v1 + 16));
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v4, a1);
  return sub_1A9378138(v4);
}

uint64_t *TTSMarkup.SpeechText.phonemes(_:_:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v12 = *a1;

  v7 = sub_1A9473844();
  v9 = v8;
  a4[3] = &type metadata for TTSMarkup.Phoneme;
  a4[4] = &protocol witness table for TTSMarkup.Phoneme;
  v10 = swift_allocObject();
  *a4 = v10;
  return TTSMarkup.Phoneme.init(alphabet:phonemes:orthography:)(&v12, a2, a3, v7, v9, v10 + 16);
}

uint64_t TTSMarkup.SpeechText.substitute(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v5 = *v3;
  v6 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    a3[3] = &type metadata for TTSMarkup.Sub;
    a3[4] = &protocol witness table for TTSMarkup.Sub;
    v11 = swift_allocObject();
    *a3 = v11;

    return sub_1A94E0908(a1, a2, sub_1A93B7A50, (v11 + 16));
  }

  else
  {
    a3[3] = &type metadata for TTSMarkup.SpeechText;
    a3[4] = &protocol witness table for TTSMarkup.SpeechText;
    v13 = swift_allocObject();
    *a3 = v13;
    v13[2] = v5;
    v13[3] = v6;
    v13[4] = v8;
    v13[5] = v7;
  }
}

uint64_t sub_1A93B7A50@<X0>(uint64_t a1@<X8>)
{
  v3 = v1[2];
  v4 = v1[3];
  v6 = v1[4];
  v5 = v1[5];
  v9[3] = &type metadata for TTSMarkup.SpeechText;
  v9[4] = &protocol witness table for TTSMarkup.SpeechText;
  v7 = swift_allocObject();
  v9[0] = v7;
  v7[2] = v3;
  v7[3] = v4;
  v7[4] = v6;
  v7[5] = v5;

  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v10, v9);
  sub_1A9378138(v9);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v10, a1);
  return sub_1A9378138(v10);
}

uint64_t sub_1A93B7B04@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *(a1 + 4);
  v11 = *a1;
  v12 = v7 != 0;
  v14 = -1;
  v13 = 0;
  v16 = -4;
  v15 = 0;
  v10[3] = a2;
  v10[4] = a3;
  v8 = sub_1A93981E4(v10);
  (*(*(a2 - 8) + 16))(v8, v4, a2);
  sub_1A93B7500(v10, a4);
  return sub_1A9378138(v10);
}

uint64_t sub_1A93B7BC4@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4);
  v13 = -1;
  v12 = 0;
  v15 = -1;
  v14 = 0;
  v17 = v8;
  v16 = v7;
  v11[3] = a2;
  v11[4] = a3;
  v9 = sub_1A93981E4(v11);
  (*(*(a2 - 8) + 16))(v9, v4, a2);
  sub_1A93B7500(v11, a4);
  return sub_1A9378138(v11);
}

uint64_t sub_1A93B7C70@<X0>(int *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  v8 = *(a1 + 4) == 0;
  v14 = -1;
  v13 = 0;
  v9 = 1;
  if (v8)
  {
    v9 = 0;
  }

  v15 = v7;
  v16 = v9;
  v18 = -4;
  v17 = 0;
  v12[3] = a2;
  v12[4] = a3;
  v10 = sub_1A93981E4(v12);
  (*(*(a2 - 8) + 16))(v10, v4, a2);
  sub_1A93B7500(v12, a4);
  return sub_1A9378138(v12);
}

uint64_t TTSMarkupSpeech.emphasis(_:)@<X0>(char *a1@<X0>, uint64_t *a4@<X8>)
{
  v7 = *a1;
  a4[3] = &type metadata for TTSMarkup.Emphasis;
  a4[4] = &protocol witness table for TTSMarkup.Emphasis;
  v5 = swift_allocObject();
  *a4 = v5;
  return TTSMarkup.Emphasis.init(_:speech:)(&v7, sub_1A93B8E64, (v5 + 16));
}

uint64_t sub_1A93B7DB8(uint64_t a1)
{

  if (*(v1 + 48))
  {
    sub_1A9378138((v1 + 24));
  }

  return MEMORY[0x1EEE6BDD0](v1, a1, 7);
}

uint64_t TTSMarkupSpeech.language(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  a3[3] = &type metadata for TTSMarkup.Language;
  a3[4] = &protocol witness table for TTSMarkup.Language;
  v6 = swift_allocObject();
  *a3 = v6;

  return TTSMarkup.Language.init(languageCode:speech:)(a1, a2, sub_1A93B8E64, (v6 + 16));
}

uint64_t TTSMarkupSpeech.preferringSelection(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a5@<X8>)
{
  a5[3] = &type metadata for TTSMarkup.Voice;
  a5[4] = &protocol witness table for TTSMarkup.Voice;
  v8 = swift_allocObject();
  *a5 = v8;

  return TTSMarkup.Voice.init(voiceSelectionClientKey:speech:)(a1, a2, sub_1A93B7F4C, (v8 + 16));
}

uint64_t TTSMarkupSpeech.selectionProsody(_:)@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>, double a4@<D0>)
{
  v7 = sub_1A94ED8F8(a4);
  TTSMarkupSpeech.rate(_:)(v7 | ((HIDWORD(v7) & 1) << 32), a1, a2, v18);
  v8 = v19;
  v9 = v20;
  sub_1A93780F4(v18, v19);
  v10 = sub_1A94ED8CC();
  TTSMarkupSpeech.pitch(_:)(v10 | ((HIDWORD(v10) & 1) << 32), v8, v9, v15);
  v11 = v16;
  v12 = v17;
  sub_1A93780F4(v15, v16);
  v13 = sub_1A957B898();
  TTSMarkupSpeech.volume(_:)(v13 | ((HIDWORD(v13) & 1) << 32), v11, v12, a3);
  sub_1A9378138(v15);
  return sub_1A9378138(v18);
}

uint64_t TTSMarkupSpeech.rate(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v7 = sub_1A93981E4(a4);
    v8 = *(*(a2 - 8) + 16);

    return v8(v7, v4, a2);
  }

  else
  {
    v9 = a1;
    v10 = 1;
    return sub_1A93B7B04(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.pitch(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v7 = sub_1A93981E4(a4);
    v8 = *(*(a2 - 8) + 16);

    return v8(v7, v4, a2);
  }

  else
  {
    v9 = a1;
    v10 = -126;
    return sub_1A93B7BC4(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.volume(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if ((a1 & 0x100000000) != 0)
  {
    a4[3] = a2;
    a4[4] = a3;
    v9 = sub_1A93981E4(a4);
    v10 = *(*(a2 - 8) + 16);

    return v10(v9, v4, a2);
  }

  else
  {
    sub_1A93BF6F4(&v13, *&a1);
    v11 = v13;
    v12 = v14;
    return sub_1A93B7C70(&v11, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.rate(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 5)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7B04(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.pitch(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 5)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7BC4(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.volume(_:)@<X0>(_BYTE *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  if (*a1 == 6)
  {
    a4[3] = a2;
    a4[4] = a3;
    v6 = sub_1A93981E4(a4);
    v7 = *(*(a2 - 8) + 16);

    return v7(v6, v4, a2);
  }

  else
  {
    v9 = *a1;
    v10 = 0;
    return sub_1A93B7C70(&v9, a2, a3, a4);
  }
}

uint64_t TTSMarkupSpeech.voice(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  if (a2)
  {
    MEMORY[0x1EEE9AC00](a1);
    v8[3] = &type metadata for TTSMarkup.Voice;
    v8[4] = &protocol witness table for TTSMarkup.Voice;
    v9 = v8;
    v10 = swift_allocObject();
    *v9 = v10;

    return TTSMarkup.Voice.init(named:speech:)(a1, a2, sub_1A93B8E64, (v10 + 16));
  }

  else
  {
    a5[3] = a3;
    a5[4] = a4;
    v13 = sub_1A93981E4(a5);
    v14 = *(*(a3 - 8) + 16);

    return v14(v13, v5, a3);
  }
}

uint64_t sub_1A93B8574@<X0>(uint64_t a1@<X8>)
{
  v3 = *(v1 + 32);
  v8 = *(v1 + 16);
  v6 = v8;
  v4 = sub_1A93981E4(v7);
  (*(*(v6 - 8) + 16))(v4, v3);
  static TTSMarkup.SpeechBuilder.buildExpression(_:)(v9, v7);
  sub_1A9378138(v7);
  static TTSMarkup.SpeechBuilder.buildBlock(_:)(v9, a1);
  return sub_1A9378138(v9);
}

uint64_t TTSMarkupSpeech.marker(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = swift_allocObject();
  *(v10 + 16) = a1;
  *(v10 + 24) = a2;

  TTSMarkupSpeech.tap(_:)(sub_1A93B86C4, v10, a3, a4, a5);
}

uint64_t TTSMarkup.SpeechText.word(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8704, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B87CC, sub_1A93B8E60, a3);
}

uint64_t *sub_1A93B8704(uint64_t *result)
{
  if (!*(result + 16))
  {
    v2 = *(v1 + 16);
    v4 = *result;
    v3 = result[1];
    v5 = sub_1A9473844();
    v2(v4, v3, v5, v6);
  }

  return result;
}

uint64_t *sub_1A93B87CC(uint64_t *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (!*(result + 16))
  {
    v5 = *(v4 + 16);
    v6 = result[3];
    v8 = *result;
    v7 = result[1];
    v9 = sub_1A9473874();
    v5(v8, v7, v9, v10, v6);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.sentence(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B88A4, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B896C, sub_1A93B8E60, a3);
}

uint64_t *sub_1A93B88A4(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v2 = *(v1 + 16);
    v4 = *result;
    v3 = result[1];
    v5 = sub_1A9473844();
    v2(v4, v3, v5, v6);
  }

  return result;
}

uint64_t *sub_1A93B896C(uint64_t *result)
{
  if (*(result + 16) == 1)
  {
    v2 = *(v1 + 16);
    v3 = result[3];
    v5 = *result;
    v4 = result[1];
    v6 = sub_1A9473844();
    v2(v5, v4, v6, v7, v3);
  }

  return result;
}

uint64_t TTSMarkup.SpeechText.paragraph(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8A44, sub_1A93B8E60, a3);
}

{
  return sub_1A93B8B0C(a1, a2, sub_1A93B8C5C, sub_1A93B8E60, a3);
}

uint64_t *sub_1A93B8A44(uint64_t *result)
{
  if (*(result + 16) == 2)
  {
    v2 = *(v1 + 16);
    v4 = *result;
    v3 = result[1];
    v5 = sub_1A9473844();
    v2(v4, v3, v5, v6);
  }

  return result;
}

uint64_t sub_1A93B8B0C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t x8_0@<X8>)
{
  v13 = *v7;
  v12 = v7[1];
  v15 = v7[2];
  v14 = v7[3];
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = v13;
  v16[5] = v12;
  v16[6] = v15;
  v16[7] = v14;
  v17 = swift_allocObject();
  *(v17 + 16) = a5;
  *(v17 + 24) = v16;

  TTSMarkupSpeech.tap(_:)(a6, v17, &type metadata for TTSMarkup.SpeechText, &protocol witness table for TTSMarkup.SpeechText, x8_0);
}

uint64_t sub_1A93B8C0C()
{

  return MEMORY[0x1EEE6BDD0](v0, 64, 7);
}

uint64_t *sub_1A93B8C5C(uint64_t *result)
{
  if (*(result + 16) == 2)
  {
    v2 = *(v1 + 16);
    v3 = result[3];
    v5 = *result;
    v4 = result[1];
    v6 = sub_1A9473844();
    v2(v5, v4, v6, v7, v3);
  }

  return result;
}

__int128 *sub_1A93B8CF8(__int128 *result)
{
  v4 = *(result + 2);
  if (v4 >> 61 == 1)
  {
    v10 = v2;
    v11 = v3;
    v5 = *(v1 + 16);
    v6 = *(result + 3);
    v7 = *result;
    v8 = v4;
    v9 = v6;
    return v5(&v7);
  }

  return result;
}

__n128 initializeBufferWithCopyOfBuffer for ProsodyModifier(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t getEnumTagSinglePayload for ProsodyModifier(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 21))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 4);
  if (v3 <= 1)
  {
    v4 = -1;
  }

  else
  {
    v4 = (v3 ^ 0xFF) - 1;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for ProsodyModifier(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 20) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 21) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 21) = 0;
    }

    if (a2)
    {
      *(result + 4) = ~a2;
    }
  }

  return result;
}

uint64_t TTSMarkup.Voice.context.setter(uint64_t *a1)
{
  v2 = *a1;

  *v1 = v2;
  return result;
}

uint64_t TTSMarkup.Voice.init(_:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = SpeechContext.init<each A>(_:)(v36, 0, v36, &v29);
  v30 = 0;
  v31 = 0xE000000000000000;
  v32 = 0;
  v33 = MEMORY[0x1E69E7CC0];
  memset(v34, 0, sizeof(v34));
  v35 = 0;
  v4 = MEMORY[0x1E69E7D40];
  v5 = (*((*MEMORY[0x1E69E7D40] & *a1) + 0xE8))(v3);
  if (*(v5 + 16) && (v6 = sub_1A937A490(1701667182, 0xE400000000000000), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];

    v30 = v9;
    v31 = v10;
  }

  else
  {
  }

  v12 = (*((*v4 & *a1) + 0x100))(v11);
  v13 = v12;
  if (v12 >> 62)
  {
    goto LABEL_23;
  }

  v14 = *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10);
  for (i = a1; v14; i = a1)
  {
    v15 = 0;
    a1 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = MEMORY[0x1AC585DE0](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_22;
        }

        v16 = *(v13 + 8 * v15 + 32);
      }

      v17 = v16;
      v18 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      sub_1A93D1250(&v24);

      if (v25)
      {
        sub_1A932D070(&v24, &v26);
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          a1 = sub_1A93ADC90(0, a1[2] + 1, 1, a1);
        }

        v20 = a1[2];
        v19 = a1[3];
        if (v20 >= v19 >> 1)
        {
          a1 = sub_1A93ADC90((v19 > 1), v20 + 1, 1, a1);
        }

        a1[2] = v20 + 1;
        sub_1A932D070(&v26, &a1[5 * v20 + 4]);
      }

      else
      {
        sub_1A937B960(&v24, &qword_1EB3868E8, &unk_1A958F280);
      }

      ++v15;
      if (v18 == v14)
      {
        goto LABEL_25;
      }
    }

    __break(1u);
LABEL_22:
    __break(1u);
LABEL_23:
    v14 = sub_1A957CE48();
  }

  a1 = MEMORY[0x1E69E7CC0];
LABEL_25:

  v27 = sub_1A937829C(&qword_1EB386B48, &qword_1A9588C60);
  v28 = &protocol witness table for <A> [A];

  *&v26 = a1;
  sub_1A93A38D8(&v26, v34);
  sub_1A93B9BF0(&v29, a2);
  return sub_1A93B9C28(&v29);
}

uint64_t TTSMarkup.Voice.Gender.init(rawValue:)@<X0>(char *a3@<X8>)
{
  v4 = sub_1A957D158();

  v6 = 3;
  if (v4 < 3)
  {
    v6 = v4;
  }

  *a3 = v6;
  return result;
}

uint64_t TTSMarkup.Voice.Gender.rawValue.getter()
{
  v1 = 1701601645;
  if (*v0 != 1)
  {
    v1 = 0x656C616D6566;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x6669636570736E75;
  }
}

uint64_t sub_1A93B9278(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE400000000000000;
  v4 = 1701601645;
  if (v2 != 1)
  {
    v4 = 0x656C616D6566;
    v3 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0x6669636570736E75;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xEB00000000646569;
  }

  v7 = 0xE400000000000000;
  v8 = 1701601645;
  if (*a2 != 1)
  {
    v8 = 0x656C616D6566;
    v7 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 0x6669636570736E75;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xEB00000000646569;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1A957D3E8();
  }

  return v11 & 1;
}