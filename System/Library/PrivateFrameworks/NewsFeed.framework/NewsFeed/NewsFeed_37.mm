unint64_t sub_1D5EA57C8()
{
  result = qword_1EDF09AE0;
  if (!qword_1EDF09AE0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF09AE0);
  }

  return result;
}

double FeedListeningProgress.progress.getter()
{
  result = *v0;
  if (*(v0 + 8))
  {
    return 0.0;
  }

  return result;
}

uint64_t FeedListeningProgress.rawState.getter@<X0>(void *a1@<X8>)
{
  v3 = 0;
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
  }

  *a1 = v3;
  v4 = *MEMORY[0x1E69D7868];
  v5 = sub_1D725D38C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

BOOL static FeedListeningProgress.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  if (*(a1 + 8))
  {
    return (*(a2 + 8) & 1) != 0;
  }

  if (*(a2 + 8))
  {
    return 0;
  }

  return *a1 == *a2;
}

uint64_t sub_1D5EA5900(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 8);
  v4 = *(a2 + 8);
  result = v3 & v4;
  if ((v3 & 1) == 0 && (v4 & 1) == 0)
  {
    return *a1 == *a2;
  }

  return result;
}

uint64_t sub_1D5EA5934@<X0>(void *a1@<X8>)
{
  v3 = 0;
  if ((v1[1] & 1) == 0)
  {
    v3 = *v1;
  }

  *a1 = v3;
  v4 = *MEMORY[0x1E69D7868];
  v5 = sub_1D725D38C();
  v6 = *(*(v5 - 8) + 104);

  return v6(a1, v4, v5);
}

uint64_t __swift_memcpy9_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

uint64_t getEnumTagSinglePayload for FeedLayoutDirection(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 9))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for FeedLayoutDirection(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *result = 0;
    *(result + 8) = 0;
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

  *(result + 9) = v3;
  return result;
}

uint64_t sub_1D5EA5A24(uint64_t a1)
{
  if (*(a1 + 8))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

unint64_t sub_1D5EA5A64(uint64_t a1)
{
  result = sub_1D5EA5A8C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EA5A8C()
{
  result = qword_1EC880218;
  if (!qword_1EC880218)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880218);
  }

  return result;
}

unint64_t sub_1D5EA5AE0(void *a1)
{
  a1[1] = sub_1D5EA5B18();
  a1[2] = sub_1D5EA5B6C();
  result = sub_1D5EA5BC0();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EA5B18()
{
  result = qword_1EC880220;
  if (!qword_1EC880220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880220);
  }

  return result;
}

unint64_t sub_1D5EA5B6C()
{
  result = qword_1EC880228;
  if (!qword_1EC880228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880228);
  }

  return result;
}

unint64_t sub_1D5EA5BC0()
{
  result = qword_1EC880230;
  if (!qword_1EC880230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880230);
  }

  return result;
}

uint64_t _s5FloatOwet_0(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0x1F)
  {
    goto LABEL_17;
  }

  if (a2 + 225 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 225) >> 8 < 0xFF)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    v4 = *(a1 + 1);
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

  else
  {
    if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }

      return (*a1 | (v4 << 8)) - 225;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 225;
    }
  }

LABEL_17:
  v6 = ((*a1 >> 2) & 0x1E | (*a1 >> 7)) ^ 0x1F;
  if (v6 >= 0x1E)
  {
    v6 = -1;
  }

  return v6 + 1;
}

uint64_t _s5FloatOwst_0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 225 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 225) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0x1F)
  {
    v4 = 0;
  }

  if (a2 > 0x1E)
  {
    v5 = ((a2 - 31) >> 8) + 1;
    *result = a2 - 31;
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *(result + 1) = v5;
      }

      else
      {
        *(result + 1) = v5;
      }
    }

    else if (v4)
    {
      *(result + 1) = v5;
    }

    return result;
  }

  if (v4 > 1)
  {
    if (v4 != 2)
    {
      *(result + 1) = 0;
      if (a2)
      {
        goto LABEL_20;
      }

      return result;
    }

    *(result + 1) = 0;
  }

  else if (v4)
  {
    *(result + 1) = 0;
    if (!a2)
    {
      return result;
    }

LABEL_20:
    *result = 8 * (((-a2 >> 1) & 0xF) - 16 * a2);
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

void sub_1D5EA5DE0(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = *v2;
  v5 = v2[1];
  v6 = *(v2 + 8);
  v7 = *(v2 + 18);
  v8 = [a1 theme];
  if (!v7)
  {
    if (v8)
    {
      v13 = [v8 defaultHeadlineTemplate];
      swift_unknownObjectRelease();
      v10 = [v13 headlineTitleTextInfo];

      v11 = swift_allocObject();
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = [v10 font];
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

    goto LABEL_17;
  }

  if (v7 != 1)
  {
    if (v8)
    {
      v14 = [v8 defaultHeadlineTemplate];
      swift_unknownObjectRelease();
      v10 = [v14 headlineBylineTextInfo];

      v11 = swift_allocObject();
      if (!v10)
      {
        goto LABEL_16;
      }

      v12 = [v10 font];
      if (!v12)
      {
        goto LABEL_16;
      }

      goto LABEL_14;
    }

LABEL_17:
    v11 = swift_allocObject();
    v17 = 0;
    v10 = 0;
    goto LABEL_18;
  }

  if (!v8)
  {
    goto LABEL_17;
  }

  v9 = [v8 defaultHeadlineTemplate];
  swift_unknownObjectRelease();
  v10 = [v9 headlineExcerptTextInfo];

  v11 = swift_allocObject();
  if (!v10)
  {
    goto LABEL_16;
  }

  v12 = [v10 font];
  if (!v12)
  {
    goto LABEL_16;
  }

LABEL_14:
  v15 = v12;
  v16 = [v12 fontName];

  if (!v16)
  {
LABEL_16:
    v17 = 0;
LABEL_18:
    v19 = 0xE000000000000000;
    goto LABEL_19;
  }

  v17 = sub_1D726207C();
  v19 = v18;

LABEL_19:
  *(v11 + 16) = v17;
  *(v11 + 24) = v19;
  *(v11 + 32) = v4;
  *(v11 + 40) = v5;
  *(v11 + 48) = v6;

  *a2 = v11 | 0x2000000000000000;
}

uint64_t sub_1D5EA607C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x63784574726F6873;
  v4 = 0xEC00000074707265;
  if (v2 != 1)
  {
    v3 = 0x656E694C7962;
    v4 = 0xE600000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 0x656C746974;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE500000000000000;
  }

  v7 = 0x63784574726F6873;
  v8 = 0xEC00000074707265;
  if (*a2 != 1)
  {
    v7 = 0x656E694C7962;
    v8 = 0xE600000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 0x656C746974;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE500000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_1D72646CC();
  }

  return v11 & 1;
}

uint64_t sub_1D5EA6184()
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

uint64_t sub_1D5EA6228(uint64_t a1)
{
  sub_1D72621EC();
}

uint64_t sub_1D5EA62B8(uint64_t a1)
{
  sub_1D7264A0C();
  sub_1D72621EC();

  return sub_1D7264A5C();
}

unint64_t sub_1D5EA6358@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5EA746C(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_1D5EA6388(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE500000000000000;
  v4 = 0xEC00000074707265;
  v5 = 0x63784574726F6873;
  if (v2 != 1)
  {
    v5 = 0x656E694C7962;
    v4 = 0xE600000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 0x656C746974;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

double sub_1D5EA64E0@<D0>(void *a1@<X1>, _OWORD *a2@<X8>)
{
  v86 = a1;
  v78 = a2;
  v2 = type metadata accessor for FormatInspectionItem(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v83 = &v77 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6, v7);
  v82 = &v77 - v8;
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v77 - v11;
  sub_1D5EA74B8(0);
  v85 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13 - 8, v14);
  v16 = &v77 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v87 = MEMORY[0x1E69E7CC0];
  sub_1D69972A4(0, 3, 0);
  v17 = 0;
  v18 = v87;
  v84 = (v3 + 56);
  v81 = xmmword_1D727A940;
  v80 = xmmword_1D727A930;
  v79 = xmmword_1D727A920;
  do
  {
    v19 = byte_1F50F5D70[v17 + 32];
    v20 = [v86 theme];
    if (v19)
    {
      if (v19 == 1)
      {
        if (v20)
        {
          v21 = [v20 defaultHeadlineTemplate];
          swift_unknownObjectRelease();
          v22 = [v21 headlineExcerptTextInfo];

          v23 = swift_allocObject();
          if (v22)
          {
            v24 = [v22 font];
            if (v24)
            {
              v25 = v24;
              v26 = [v24 fontName];

              if (v26)
              {
                v27 = sub_1D726207C();
                v29 = v28;

LABEL_21:
                *(v23 + 16) = v27;
                *(v23 + 24) = v29;
                *(v23 + 32) = 0xBFF0000000000000;
                *(v23 + 40) = 0;
                v48 = HIBYTE(v29) & 0xF;
                if ((v29 & 0x2000000000000000) == 0)
                {
                  v48 = v27 & 0xFFFFFFFFFFFFLL;
                }

                *(v23 + 48) = 3072;
                if (v48)
                {

                  *&v88 = v27;
                  *(&v88 + 1) = v29;
                  *&v89 = 0;
                  *(&v89 + 1) = MEMORY[0x1E69E6158];
                  v49 = *(v2 + 24);
                  v50 = v82;
                  sub_1D5EA7510(&v88, &v82[v49]);
                  v51 = type metadata accessor for FormatInspectionItem.Value(0);
                  swift_storeEnumTagMultiPayload();
                  (*(*(v51 - 8) + 56))(&v50[v49], 0, 1, v51);
                  v52 = v80;
LABEL_40:
                  *v50 = v52;
                  *(v50 + 2) = 0;
                  *(v50 + 3) = 0;
                  v68 = &v50[*(v2 + 28)];
                  *v68 = 0;
                  *(v68 + 1) = 0;
                  v68[16] = -1;
                  sub_1D5EA756C(&v88);
                  v64 = v50;
                  goto LABEL_43;
                }

                v88 = 0u;
                v89 = 0u;
                v53 = *(v2 + 24);
                v54 = type metadata accessor for FormatInspectionItem.Value(0);
                v55 = v82;
                (*(*(v54 - 8) + 56))(&v82[v53], 1, 1, v54);
                v56 = v80;
LABEL_42:
                *v55 = v56;
                *(v55 + 2) = 0;
                *(v55 + 3) = 0;
                v71 = &v55[*(v2 + 28)];
                *v71 = 0;
                *(v71 + 1) = 0;
                v71[16] = -1;
                v64 = v55;
                goto LABEL_43;
              }
            }
          }
        }

        else
        {
          v23 = swift_allocObject();
          v22 = 0;
        }

        v27 = 0;
        v29 = 0xE000000000000000;
        goto LABEL_21;
      }

      if (v20)
      {
        v39 = [v20 defaultHeadlineTemplate];
        swift_unknownObjectRelease();
        v40 = [v39 headlineBylineTextInfo];

        v41 = swift_allocObject();
        if (v40)
        {
          v42 = [v40 font];
          if (v42)
          {
            v43 = v42;
            v44 = [v42 fontName];

            if (v44)
            {
              v45 = sub_1D726207C();
              v47 = v46;

LABEL_36:
              *(v41 + 16) = v45;
              *(v41 + 24) = v47;
              *(v41 + 32) = 0xBFF0000000000000;
              *(v41 + 40) = 0;
              v65 = HIBYTE(v47) & 0xF;
              if ((v47 & 0x2000000000000000) == 0)
              {
                v65 = v45 & 0xFFFFFFFFFFFFLL;
              }

              *(v41 + 48) = 3072;
              if (v65)
              {

                *&v88 = v45;
                *(&v88 + 1) = v47;
                *&v89 = 0;
                *(&v89 + 1) = MEMORY[0x1E69E6158];
                v66 = *(v2 + 24);
                v50 = v83;
                sub_1D5EA7510(&v88, &v83[v66]);
                v67 = type metadata accessor for FormatInspectionItem.Value(0);
                swift_storeEnumTagMultiPayload();
                (*(*(v67 - 8) + 56))(&v50[v66], 0, 1, v67);
                v52 = v79;
                goto LABEL_40;
              }

              v88 = 0u;
              v89 = 0u;
              v69 = *(v2 + 24);
              v70 = type metadata accessor for FormatInspectionItem.Value(0);
              v55 = v83;
              (*(*(v70 - 8) + 56))(&v83[v69], 1, 1, v70);
              v56 = v79;
              goto LABEL_42;
            }
          }
        }
      }

      else
      {
        v41 = swift_allocObject();
        v40 = 0;
      }

      v45 = 0;
      v47 = 0xE000000000000000;
      goto LABEL_36;
    }

    if (!v20)
    {
      v32 = swift_allocObject();
      v31 = 0;
LABEL_27:

      v36 = 0;
      v38 = 0xE000000000000000;
      goto LABEL_28;
    }

    v30 = [v20 defaultHeadlineTemplate];
    swift_unknownObjectRelease();
    v31 = [v30 headlineTitleTextInfo];

    v32 = swift_allocObject();
    if (!v31)
    {
      goto LABEL_27;
    }

    v33 = [v31 font];
    if (!v33)
    {
      goto LABEL_27;
    }

    v34 = v33;
    v35 = [v33 fontName];

    if (!v35)
    {
      goto LABEL_27;
    }

    v36 = sub_1D726207C();
    v38 = v37;

LABEL_28:
    *(v32 + 16) = v36;
    *(v32 + 24) = v38;
    *(v32 + 32) = 0xBFF0000000000000;
    *(v32 + 40) = 0;
    v57 = HIBYTE(v38) & 0xF;
    if ((v38 & 0x2000000000000000) == 0)
    {
      v57 = v36 & 0xFFFFFFFFFFFFLL;
    }

    *(v32 + 48) = 3072;
    if (v57)
    {

      *&v88 = v36;
      *(&v88 + 1) = v38;
      *&v89 = 0;
      *(&v89 + 1) = MEMORY[0x1E69E6158];
      v58 = *(v2 + 24);
      sub_1D5EA7510(&v88, &v12[v58]);
      v59 = type metadata accessor for FormatInspectionItem.Value(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v59 - 8) + 56))(&v12[v58], 0, 1, v59);
      *v12 = v81;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v60 = &v12[*(v2 + 28)];
      *v60 = 0;
      *(v60 + 1) = 0;
      v60[16] = -1;
      sub_1D5EA756C(&v88);
    }

    else
    {

      v88 = 0u;
      v89 = 0u;
      v61 = *(v2 + 24);
      v62 = type metadata accessor for FormatInspectionItem.Value(0);
      (*(*(v62 - 8) + 56))(&v12[v61], 1, 1, v62);
      *v12 = v81;
      *(v12 + 2) = 0;
      *(v12 + 3) = 0;
      v63 = &v12[*(v2 + 28)];
      *v63 = 0;
      *(v63 + 1) = 0;
      v63[16] = -1;
    }

    v64 = v12;
LABEL_43:
    sub_1D5CED910(v64, v16, type metadata accessor for FormatInspectionItem);
    (*v84)(v16, 0, 1, v2);
    v87 = v18;
    v73 = *(v18 + 16);
    v72 = *(v18 + 24);
    if (v73 >= v72 >> 1)
    {
      sub_1D69972A4((v72 > 1), v73 + 1, 1);
      v18 = v87;
    }

    ++v17;
    *(v18 + 16) = v73 + 1;
    sub_1D5CED910(v16, v18 + ((*(v85 + 80) + 32) & ~*(v85 + 80)) + *(v85 + 72) * v73, sub_1D5EA74B8);
  }

  while (v17 != 3);
  sub_1D6795150(1953394502, 0xE400000000000000, 0, 0, v18, &v88);

  result = *&v88;
  v75 = v89;
  v76 = v78;
  *v78 = v88;
  v76[1] = v75;
  *(v76 + 4) = v90;
  return result;
}

BOOL _s8NewsFeed16FormatTagBindingV4FontO2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = *a1;
  v3 = *(a1 + 8);
  v5 = *(a1 + 16);
  v7 = *a2;
  v6 = *(a2 + 8);
  v8 = *(a2 + 16);
  v9 = *(a2 + 18);
  if (!*(a1 + 18))
  {
    if (*(a2 + 18))
    {
      return 0;
    }

    a3.n128_u64[0] = *a1;
    if (v4 != v7)
    {
      return 0;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      return (v8 & 0xFF00) == 0xC00;
    }

    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

LABEL_34:
    v11 = FormatFontScalingStyle.rawValue.getter(a3);
    v13 = v12;
    if (v11 == FormatFontScalingStyle.rawValue.getter(v14) && v13 == v15)
    {

      return 1;
    }

    v16 = sub_1D72646CC();

    return (v16 & 1) != 0;
  }

  if (*(a1 + 18) != 1)
  {
    if (v9 != 2)
    {
      return 0;
    }

    a3.n128_u64[0] = *a1;
    if (v4 != v7)
    {
      return 0;
    }

    if ((v5 & 0xFF00) == 0xC00)
    {
      return (v8 & 0xFF00) == 0xC00;
    }

    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  if (v9 != 1)
  {
    return 0;
  }

  a3.n128_u64[0] = *a1;
  if (v4 != v7)
  {
    return 0;
  }

  if ((v5 & 0xFF00) != 0xC00)
  {
    if ((v8 & 0xFF00) == 0xC00)
    {
      return 0;
    }

    if (v5)
    {
      if ((v8 & 1) == 0)
      {
        return 0;
      }
    }

    else
    {
      if (v8)
      {
        return 0;
      }

      a3.n128_u64[0] = *(a1 + 8);
      if (v3 != v6)
      {
        return 0;
      }
    }

    goto LABEL_34;
  }

  return (v8 & 0xFF00) == 0xC00;
}

unint64_t sub_1D5EA7090(uint64_t a1)
{
  result = sub_1D5EA70B8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1D5EA70B8()
{
  result = qword_1EC880238;
  if (!qword_1EC880238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880238);
  }

  return result;
}

unint64_t sub_1D5EA710C(void *a1)
{
  a1[1] = sub_1D5EA7144();
  a1[2] = sub_1D5EA7198();
  result = sub_1D5EA71EC();
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EA7144()
{
  result = qword_1EDF110E8;
  if (!qword_1EDF110E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110E8);
  }

  return result;
}

unint64_t sub_1D5EA7198()
{
  result = qword_1EDF110F0;
  if (!qword_1EDF110F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF110F0);
  }

  return result;
}

unint64_t sub_1D5EA71EC()
{
  result = qword_1EC880240;
  if (!qword_1EC880240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880240);
  }

  return result;
}

__n128 __swift_memcpy19_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 15) = *(a2 + 15);
  *a1 = result;
  return result;
}

uint64_t _s4FontOwet(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 19))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 18);
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

uint64_t _s4FontOwst(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 18) = 0;
    *(result + 16) = 0;
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 19) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 19) = 0;
    }

    if (a2)
    {
      *(result + 18) = -a2;
    }
  }

  return result;
}

unint64_t sub_1D5EA7318()
{
  result = qword_1EC880248;
  if (!qword_1EC880248)
  {
    sub_1D5EA7370();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880248);
  }

  return result;
}

void sub_1D5EA7370()
{
  if (!qword_1EC880250)
  {
    v0 = sub_1D72627FC();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880250);
    }
  }
}

unint64_t sub_1D5EA73C4()
{
  result = qword_1EC880258;
  if (!qword_1EC880258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880258);
  }

  return result;
}

unint64_t sub_1D5EA7418()
{
  result = qword_1EDF11100;
  if (!qword_1EDF11100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF11100);
  }

  return result;
}

unint64_t sub_1D5EA746C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void sub_1D5EA74B8(uint64_t a1)
{
  if (!qword_1EC880AB0)
  {
    type metadata accessor for FormatInspectionItem(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EC880AB0);
    }
  }
}

uint64_t WebEmbedFailureContext.contentDomain.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t WebEmbedFailureContext.embedName.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t WebEmbedFailureContext.errorType.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t WebEmbedFailureContext.embedURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = *(type metadata accessor for WebEmbedFailureContext(0) + 28);
  v4 = sub_1D72585BC();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

uint64_t type metadata accessor for WebEmbedFailureContext(uint64_t a1)
{
  result = qword_1EC880260;
  if (!qword_1EC880260)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t WebEmbedFailureContext.location.getter()
{
  v1 = *(v0 + *(type metadata accessor for WebEmbedFailureContext(0) + 32));

  return v1;
}

uint64_t WebEmbedFailureContext.contentModel.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for WebEmbedFailureContext(0) + 36);
  v4 = *v3;
  v5 = *(v3 + 8);
  *a1 = *v3;
  *(a1 + 8) = v5;
  v6 = *(v3 + 16);
  *(a1 + 16) = v6;

  return sub_1D5EA77A8(v4, v5, v6);
}

uint64_t sub_1D5EA77A8(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 != 0xFF)
  {
    return sub_1D5EA77BC(a1, a2, a3);
  }

  return a1;
}

uint64_t sub_1D5EA77BC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 5u)
  {
  }

  return result;
}

double WebEmbedFailureContext.init(failureMessage:embedURL:location:dataVisualization:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v41 = a4;
  v9 = type metadata accessor for WebEmbedDataVisualization(0);
  *&v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10).n128_u64[0];
  v13 = &v40 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 contentDomain];
  v15 = sub_1D726207C();
  v17 = v16;

  *a5 = v15;
  *(a5 + 1) = v17;
  v18 = [a1 embedName];
  v19 = sub_1D726207C();
  v21 = v20;

  *(a5 + 2) = v19;
  *(a5 + 3) = v21;
  v22 = [a1 errorType];
  v23 = sub_1D726207C();
  v25 = v24;

  *(a5 + 4) = v23;
  *(a5 + 5) = v25;
  v26 = type metadata accessor for WebEmbedFailureContext(0);
  v27 = v26[7];
  v28 = sub_1D72585BC();
  v29 = *(v28 - 8);
  v30 = *(v29 + 16);
  v40 = a2;
  v30(&a5[v27], a2, v28);
  if (a3)
  {
    v31 = [a3 context];
    v32 = sub_1D726207C();
    v34 = v33;
  }

  else
  {
    v34 = 0xE700000000000000;
    v32 = 0x6E776F6E6B6E75;
  }

  v35 = &a5[v26[8]];
  *v35 = v32;
  v35[1] = v34;
  v36 = v41;
  sub_1D5EA7CD4(v41, v13, type metadata accessor for WebEmbedDataVisualization);
  sub_1D6D21264(v13, &v42);
  swift_unknownObjectRelease();

  sub_1D5EA7D3C(v36, type metadata accessor for WebEmbedDataVisualization);
  (*(v29 + 8))(v40, v28);
  v37 = v43;
  v38 = &a5[v26[9]];
  result = *&v42;
  *v38 = v42;
  v38[16] = v37;
  return result;
}

double WebEmbedFailureContext.init(failureMessage:embedURL:location:puzzleResourceSource:)@<D0>(void *a1@<X0>, uint64_t a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, char *a5@<X8>)
{
  v39 = a2;
  v40 = a4;
  sub_1D5EA7C7C(0);
  *&v11 = MEMORY[0x1EEE9AC00](v9 - 8, v10).n128_u64[0];
  v13 = &v39 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = [a1 contentDomain];
  v15 = sub_1D726207C();
  v17 = v16;

  *a5 = v15;
  *(a5 + 1) = v17;
  v18 = [a1 embedName];
  v19 = sub_1D726207C();
  v21 = v20;

  *(a5 + 2) = v19;
  *(a5 + 3) = v21;
  v22 = [a1 errorType];
  v23 = sub_1D726207C();
  v25 = v24;

  *(a5 + 4) = v23;
  *(a5 + 5) = v25;
  v26 = type metadata accessor for WebEmbedFailureContext(0);
  v27 = v26[7];
  v28 = sub_1D72585BC();
  v29 = *(v28 - 8);
  (*(v29 + 16))(&a5[v27], a2, v28);
  v30 = [a3 context];
  v31 = sub_1D726207C();
  v33 = v32;

  v34 = &a5[v26[8]];
  *v34 = v31;
  v34[1] = v33;
  v35 = v40;
  sub_1D5EA7CD4(v40, v13, sub_1D5EA7C7C);
  sub_1D6D2171C(v13, &v41);
  swift_unknownObjectRelease();

  sub_1D5EA7D3C(v35, sub_1D5EA7C7C);
  (*(v29 + 8))(v39, v28);
  v36 = v42;
  v37 = &a5[v26[9]];
  result = *&v41;
  *v37 = v41;
  v37[16] = v36;
  return result;
}

void sub_1D5EA7C7C(uint64_t a1)
{
  if (!qword_1EDF2A1E8)
  {
    type metadata accessor for PuzzleResourceSource(255);
    v1 = sub_1D726393C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF2A1E8);
    }
  }
}

uint64_t sub_1D5EA7CD4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EA7D3C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

void sub_1D5EA7DC4(uint64_t a1)
{
  sub_1D72585BC();
  if (v1 <= 0x3F)
  {
    sub_1D5EA7E60();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D5EA7E60()
{
  if (!qword_1EC880270)
  {
    v0 = sub_1D726393C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880270);
    }
  }
}

uint64_t sub_1D5EA7EB0(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  result = sub_1D726393C();
  if (v5 <= 0x3F)
  {
    result = sub_1D725C37C();
    if (v6 <= 0x3F)
    {
      result = sub_1D725C34C();
      if (v7 <= 0x3F)
      {
        return swift_initClassMetadata2();
      }
    }
  }

  return result;
}

uint64_t sub_1D5EA8098(uint64_t a1)
{
  v2[3] = a1;
  v2[4] = v1;
  v3 = *v1;
  v2[5] = *(*v1 + 88);
  v2[6] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[7] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2[8] = AssociatedConformanceWitness;
  v7 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v2[9] = v7;
  v2[10] = *(v7 - 8);
  v2[11] = swift_task_alloc();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v2[12] = swift_getAssociatedTypeWitness();
  v2[13] = swift_getAssociatedConformanceWitness();
  v8 = swift_getAssociatedTypeWitness();
  v2[14] = v8;
  v2[15] = *(v8 - 8);
  v2[16] = swift_task_alloc();
  v9 = sub_1D725C34C();
  v2[17] = v9;
  v2[18] = *(v9 - 8);
  v2[19] = swift_task_alloc();
  v2[20] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EA83A8, 0, 0);
}

uint64_t sub_1D5EA83A8()
{
  v113 = v0;
  v1 = *(v0[18] + 16);
  v1(v0[20], v0[4] + *(*v0[4] + 160), v0[17]);

  v2 = sub_1D725C36C();
  v3 = sub_1D726315C();

  if (sub_1D72638EC())
  {
    v4 = v0[4];
    v5 = swift_slowAlloc();
    v6 = swift_slowAlloc();
    v106 = v6;
    *v5 = 136446722;
    *(v5 + 4) = sub_1D5BC5100(*(v4 + *(*v4 + 144)), *(v4 + *(*v4 + 144) + 8), &v106);
    *(v5 + 12) = 2082;
    v7 = sub_1D6B6AE5C();
    v9 = v1;
    v10 = sub_1D5BC5100(v7, v8, &v106);

    *(v5 + 14) = v10;
    v1 = v9;
    *(v5 + 22) = 2082;
    v11 = sub_1D5C0BA9C();
    v13 = sub_1D5BC5100(v11, v12, &v106);

    *(v5 + 24) = v13;
    v14 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v2, v3, v14, "News.FeedService.EmitTask", "[%{public}s] %{public}s, %{public}s", v5, 0x20u);
    swift_arrayDestroy();
    MEMORY[0x1DA6FD500](v6, -1, -1);
    MEMORY[0x1DA6FD500](v5, -1, -1);
  }

  v15 = v0[20];
  v16 = v0[17];
  v17 = v0[18];
  v18 = v0[16];
  v19 = v0[14];
  v97 = v0[6];
  v101 = v0[5];
  v105 = v0[15];
  v20 = v0[4];
  v1(v0[19], v15, v16);
  sub_1D725C3BC();
  swift_allocObject();
  v0[21] = sub_1D725C3AC();
  (*(v17 + 8))(v15, v16);
  v21 = CACurrentMediaTime();
  v22 = *(v20 + 88);
  sub_1D5C384A0(0);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_1D7274590;
  v24 = (v20 + *(*v20 + 144));
  v26 = *v24;
  v25 = v24[1];
  v27 = MEMORY[0x1E69E6158];
  *(v23 + 56) = MEMORY[0x1E69E6158];
  v28 = sub_1D5B7E2C0();
  *(v23 + 64) = v28;
  v91 = v26;
  v92 = v25;
  *(v23 + 32) = v26;
  *(v23 + 40) = v25;

  v29 = sub_1D6B6AE5C();
  *(v23 + 96) = v27;
  *(v23 + 104) = v28;
  *(v23 + 72) = v29;
  *(v23 + 80) = v30;
  v31 = sub_1D5C0BA9C();
  *(v23 + 136) = v27;
  *(v23 + 144) = v28;
  *(v23 + 112) = v31;
  *(v23 + 120) = v32;
  v33 = *(v20 + 32);
  v34 = *(v20 + 40);
  v35 = *(v20 + 48);
  v36 = *(v20 + 56);
  v37 = *(v20 + 64);
  v38 = *(v20 + 65);
  v106 = *(v20 + 24);
  v107 = v33;
  v108 = v34;
  v109 = v35;
  v110 = v36;
  v111 = v37;
  v112 = v38;
  v39 = FeedGroupEmitterSettings.description.getter();
  *(v23 + 176) = v27;
  *(v23 + 184) = v28;
  *(v23 + 152) = v39;
  *(v23 + 160) = v40;
  v41 = sub_1D7262EDC();
  v93 = v22;
  sub_1D725C30C("Emit Task [%{public}@] is starting to emit from %{public}@ emitter, identifier=%{public}@, settings=%{public}@", 110, 2, &dword_1D5B42000, v22, v41, v23);

  sub_1D6B6AF78();
  sub_1D5C0354C();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  FeedGroupConfigType.rules<A>()(v19, v97, AssociatedConformanceWitness, v101);
  (*(v105 + 8))(v18, v19);
  type metadata accessor for FeedGroupEmitterRule(0, v97, v101, v43);
  v44 = sub_1D726274C();

  v0[2] = v44;
  v45 = sub_1D72627FC();
  WitnessTable = swift_getWitnessTable();
  v48 = sub_1D5B874E4(sub_1D5EACFDC, v20, v45, &type metadata for FeedGroupEmitterRuleOutput, MEMORY[0x1E69E73E0], WitnessTable, MEMORY[0x1E69E7410], v47);

  v106 = v48;

  sub_1D5EACF70(&v106);

  v50 = v106;
  v0[22] = v106;
  if (*(v50 + 2))
  {
    v51 = *(v50 + 9);
    v52 = *(v50 + 10);
    if (!v50[88])
    {
      v61 = v0[10];
      v95 = v0[11];
      v99 = v0[9];
      v103 = v0[3];
      v62 = swift_allocObject();
      *(v62 + 16) = xmmword_1D7274590;
      v63 = MEMORY[0x1E69E6158];
      *(v62 + 56) = MEMORY[0x1E69E6158];
      *(v62 + 64) = v28;
      *(v62 + 32) = v26;
      *(v62 + 40) = v92;

      sub_1D5EAD0DC(v51, v52, 0);
      v64 = sub_1D6B6AE5C();
      *(v62 + 96) = v63;
      *(v62 + 104) = v28;
      *(v62 + 72) = v64;
      *(v62 + 80) = v65;
      v66 = sub_1D5C0BA9C();
      *(v62 + 136) = v63;
      *(v62 + 144) = v28;
      *(v62 + 112) = v66;
      *(v62 + 120) = v67;
      *(v62 + 176) = v63;
      *(v62 + 184) = v28;
      *(v62 + 152) = v51;
      *(v62 + 160) = v52;

      v68 = sub_1D7262EDC();
      sub_1D725C30C("Emit Task [%{public}@] removing %{public}@ emitter, identifier=%{public}@, reason=%{public}@", 92, 2, &dword_1D5B42000, v93, v68, v62);

      *v95 = v51;
      v95[1] = v52;
      swift_storeEnumTagMultiPayload();
      sub_1D5EA930C(v95, v50, v21, v103);

      (*(v61 + 8))(v95, v99);
      goto LABEL_10;
    }

    v53 = MEMORY[0x1E69E6158];
    if (v50[88] == 1)
    {
      v54 = v0[10];
      v94 = v0[11];
      v98 = v0[9];
      v102 = v0[3];
      v55 = swift_allocObject();
      *(v55 + 16) = xmmword_1D7274590;
      *(v55 + 56) = v53;
      *(v55 + 64) = v28;
      *(v55 + 32) = v26;
      *(v55 + 40) = v92;

      sub_1D5EAD0DC(v51, v52, 1u);
      v56 = sub_1D6B6AE5C();
      *(v55 + 96) = v53;
      *(v55 + 104) = v28;
      *(v55 + 72) = v56;
      *(v55 + 80) = v57;
      v58 = sub_1D5C0BA9C();
      *(v55 + 136) = v53;
      *(v55 + 144) = v28;
      *(v55 + 112) = v58;
      *(v55 + 120) = v59;
      *(v55 + 176) = v53;
      *(v55 + 184) = v28;
      *(v55 + 152) = v51;
      *(v55 + 160) = v52;

      v60 = sub_1D7262EDC();
      sub_1D725C30C("Emit Task [%{public}@] skipping %{public}@ emitter, identifier=%{public}@, result=skip, reason=%{public}@", 105, 2, &dword_1D5B42000, v93, v60, v55);

      *v94 = v51;
      v94[1] = v52;
      swift_storeEnumTagMultiPayload();
      sub_1D5EA930C(v94, v50, v21, v102);

      (*(v54 + 8))(v94, v98);
LABEL_10:
      sub_1D5EA8F7C(v0[4], v0[21]);

      v80 = v0[1];

      return v80();
    }

    if (v51 | v52)
    {
      v69 = v0[10];
      v70 = v0[11];
      v71 = v0[9];
      v96 = v0[7];
      v100 = v0[8];
      v104 = v0[3];
      v72 = swift_allocObject();
      *(v72 + 16) = xmmword_1D7279970;
      v73 = MEMORY[0x1E69E6158];
      *(v72 + 56) = MEMORY[0x1E69E6158];
      *(v72 + 64) = v28;
      *(v72 + 32) = v91;
      *(v72 + 40) = v92;

      v74 = sub_1D6B6AE5C();
      *(v72 + 96) = v73;
      *(v72 + 104) = v28;
      *(v72 + 72) = v74;
      *(v72 + 80) = v75;
      v76 = sub_1D5C0BA9C();
      *(v72 + 136) = v73;
      *(v72 + 144) = v28;
      *(v72 + 112) = v76;
      *(v72 + 120) = v77;
      v78 = sub_1D7262EDC();
      sub_1D725C30C("Emit Task [%{public}@] skipping %{public}@ emitter, identifier=%{public}@, result=last", 86, 2, &dword_1D5B42000, v22, v78, v72);

      sub_1D6EB5678(v96, v100, v79, v70);
      sub_1D5EA930C(v70, v50, v21, v104);

      (*(v69 + 8))(v70, v71);
      goto LABEL_10;
    }
  }

  v82 = v0[5];
  v83 = v0[6];
  v84 = v0[4];
  v85 = type metadata accessor for FeedGroupEmitTask.InternalResult(0, v83, v82, v49);
  v87 = type metadata accessor for FeedGroupEmitTaskResult(0, v83, v82, v86);
  v88 = swift_task_alloc();
  v0[23] = v88;
  *(v88 + 2) = v84;
  v88[3] = v21;
  *(v88 + 4) = v50;
  v89 = swift_task_alloc();
  v0[24] = v89;
  *v89 = v0;
  v89[1] = sub_1D5EA8D8C;
  v90 = v0[3];
  v115 = v87;

  return MEMORY[0x1EEE6DD58](v90, v85, v87, 0, 0, &unk_1D727AC68, v88, v85);
}

void sub_1D5EA8D8C()
{

  if (v0)
  {
  }

  else
  {

    MEMORY[0x1EEE6DFA0](sub_1D5EA8ED0, 0, 0);
  }
}

uint64_t sub_1D5EA8ED0()
{
  sub_1D5EA8F7C(v0[4], v0[21]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D5EA8F7C(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D725C38C();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2, v4);
  v6 = &v18 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1D725C34C();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7, v9);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_1D725C36C();
  sub_1D725C39C();
  v13 = sub_1D726314C();
  if (sub_1D72638EC())
  {

    sub_1D725C3CC();

    if ((*(v3 + 88))(v6, v2) == *MEMORY[0x1E69E93E8])
    {
      v14 = "[Error] Interval already ended";
    }

    else
    {
      (*(v3 + 8))(v6, v2);
      v14 = "";
    }

    v15 = swift_slowAlloc();
    *v15 = 0;
    v16 = sub_1D725C33C();
    _os_signpost_emit_with_name_impl(&dword_1D5B42000, v12, v13, v16, "News.FeedService.EmitTask", v14, v15, 2u);
    MEMORY[0x1DA6FD500](v15, -1, -1);
  }

  return (*(v8 + 8))(v11, v7);
}

double sub_1D5EA91DC@<D0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>, uint64_t a4@<X3>)
{
  v7 = type metadata accessor for FeedGroupEmitterRule(0, *(*a2 + 80), *(*a2 + 88), a4);
  *(a3 + 24) = v7;
  *(a3 + 32) = swift_getWitnessTable();
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a3);
  (*(*(v7 - 8) + 16))(boxed_opaque_existential_1, a1, v7);
  v9 = a2[14];
  v10 = *(v9 + *(*v9 + 216));

  FeedGroupEmitterRule.evaluate(cursor:slots:)(v9, v10, v7, &v13);

  v11 = v14;
  result = *&v13;
  *(a3 + 40) = v13;
  *(a3 + 56) = v11;
  return result;
}

int *sub_1D5EA930C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double a3@<D0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v12 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v11);
  v14 = MEMORY[0x1EEE9AC00](v12, v13);
  v16 = &v27 - v15;
  (*(v17 + 16))(&v27 - v15, a1, v14);
  v18 = *(v4 + 16);
  v19 = *(v4 + 32);
  v20 = *(v4 + 40);
  v21 = *(v4 + 48);
  v22 = *(v4 + 56);
  v23 = *(v4 + 64);
  v24 = *(v4 + 65);
  v27 = *(v4 + 24);
  v28 = v19;
  v29 = v20;
  v30 = v21;
  v31 = v22;
  v32 = v23;
  v33 = v24;

  v25 = CACurrentMediaTime();
  return sub_1D71A8414(v16, v18, a2, &v27, a4, (v25 - a3) * 1000.0);
}

uint64_t sub_1D5EA9524(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, double a5)
{
  *(v5 + 104) = a4;
  *(v5 + 96) = a5;
  *(v5 + 80) = a2;
  *(v5 + 88) = a3;
  *(v5 + 72) = a1;
  v6 = *a3;
  v7 = sub_1D726289C();
  *(v5 + 112) = v7;
  *(v5 + 120) = *(v7 - 8);
  *(v5 + 128) = swift_task_alloc();
  v8 = *(v6 + 88);
  *(v5 + 136) = v8;
  v9 = *(v6 + 80);
  *(v5 + 144) = v9;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v13 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v12);
  *(v5 + 152) = v13;
  *(v5 + 160) = *(v13 - 8);
  *(v5 + 168) = swift_task_alloc();
  *(v5 + 176) = type metadata accessor for FeedGroupEmitTask.InternalResult(255, v9, v8, v14);
  sub_1D726393C();
  *(v5 + 184) = swift_task_alloc();
  sub_1D5B73DC0(0);
  *(v5 + 192) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EA9798, 0, 0);
}

uint64_t sub_1D5EA9798()
{
  v1 = v0[24];
  v2 = v0[11];
  v3 = sub_1D726294C();
  v4 = *(*(v3 - 8) + 56);
  v4(v1, 1, 1, v3);
  v5 = swift_allocObject();
  v5[2] = 0;
  v5[3] = 0;
  v5[4] = v2;
  v0[25] = sub_1D5B49474(255, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v6 = sub_1D72629FC();

  sub_1D6A9560C(v1, &unk_1D727AC78, v5, v6);
  sub_1D5BA72C8(v1);
  if ((*(v2 + 48) & 1) == 0)
  {
    v7 = v0[24];
    v8 = v0[11];
    v9 = *(v8 + 40);
    v4(v7, 1, 1, v3);
    v10 = swift_allocObject();
    v10[2] = 0;
    v10[3] = 0;
    v10[4] = v8;
    v10[5] = v9;

    sub_1D6A9560C(v7, &unk_1D727AC98, v10, v6);
    sub_1D5BA72C8(v7);
  }

  v11 = v0[11];
  if ((*(v11 + 64) & 1) == 0)
  {
    v12 = v0[24];
    v13 = *(v11 + 56);
    v4(v12, 1, 1, v3);
    v14 = swift_allocObject();
    v14[2] = 0;
    v14[3] = 0;
    v14[4] = v11;
    v14[5] = v13;

    sub_1D6A9560C(v12, &unk_1D727AC88, v14, v6);
    sub_1D5BA72C8(v12);
  }

  v15 = swift_task_alloc();
  v0[26] = v15;
  *v15 = v0;
  v15[1] = sub_1D5EA9A50;
  v16 = v0[23];

  return MEMORY[0x1EEE6DAC8](v16, 0, 0, v6);
}

uint64_t sub_1D5EA9A50()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5EAA18C;
  }

  else
  {
    v2 = sub_1D5EA9B64;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

void sub_1D5EA9B64()
{
  v1 = *(v0 + 184);
  if ((*(*(*(v0 + 176) - 8) + 48))(v1, 1) != 1)
  {
    v30 = *(v0 + 152);
    v31 = *(v0 + 160);
    if ((*(v31 + 48))(v1, 1, v30) != 1)
    {
      v54 = *(v0 + 96);
      v55 = *(v0 + 88);
      (*(v31 + 32))(*(v0 + 168), v1, v30);
      v56 = v55[11];
      sub_1D5C384A0(0);
      v57 = swift_allocObject();
      *(v57 + 16) = xmmword_1D7279960;
      v58 = (v55 + *(*v55 + 144));
      v59 = *v58;
      v60 = v58[1];
      v61 = MEMORY[0x1E69E6158];
      *(v57 + 56) = MEMORY[0x1E69E6158];
      v62 = sub_1D5B7E2C0();
      *(v57 + 64) = v62;
      *(v57 + 32) = v59;
      *(v57 + 40) = v60;

      v63 = sub_1D6B6AE5C();
      *(v57 + 96) = v61;
      *(v57 + 104) = v62;
      *(v57 + 72) = v63;
      *(v57 + 80) = v64;
      v65 = sub_1D5C0BA9C();
      *(v57 + 136) = v61;
      *(v57 + 144) = v62;
      *(v57 + 112) = v65;
      *(v57 + 120) = v66;
      v70 = (CACurrentMediaTime() - v54) * 1000.0;
      if ((*&v70 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
      {
        if (v70 > -9.22337204e18)
        {
          if (v70 < 9.22337204e18)
          {
            v71 = *(v0 + 160);
            v72 = *(v0 + 168);
            v73 = *(v0 + 152);
            v83 = *(v0 + 136);
            v85 = *(v0 + 144);
            v74 = *(v0 + 104);
            v75 = *(v0 + 96);
            v82 = *(v0 + 80);
            v76 = *(v0 + 72);
            v77 = MEMORY[0x1E69E73D8];
            *(v57 + 176) = MEMORY[0x1E69E7360];
            *(v57 + 184) = v77;
            *(v57 + 152) = v70;
            v78 = sub_1D6EB56E0(v73, v67, v68, v69);
            *(v57 + 216) = MEMORY[0x1E69E6158];
            *(v57 + 224) = v62;
            *(v57 + 192) = v78;
            *(v57 + 200) = v79;
            v80 = sub_1D7262EDC();
            sub_1D725C30C("Emit Task [%{public}@] finished emitting from %{public}@ emitter, identifier=%{public}@, time=%llums, output=%{public}@", 119, 2, &dword_1D5B42000, v56, v80, v57);

            sub_1D5EA930C(v72, v74, v75, v76);
            (*(v71 + 8))(v72, v73);
            v51 = v82;
            v53 = v83;
            v52 = v85;
            goto LABEL_16;
          }

LABEL_27:
          __break(1u);
          return;
        }

        goto LABEL_25;
      }

      goto LABEL_23;
    }

    v32 = *(v0 + 96);
    v33 = *(v0 + 88);
    v34 = v33[11];
    v35 = sub_1D7262E9C();
    sub_1D5C384A0(0);
    v36 = swift_allocObject();
    *(v36 + 16) = xmmword_1D7274590;
    v37 = (v33 + *(*v33 + 144));
    v38 = *v37;
    v39 = v37[1];
    v40 = MEMORY[0x1E69E6158];
    *(v36 + 56) = MEMORY[0x1E69E6158];
    v41 = sub_1D5B7E2C0();
    *(v36 + 64) = v41;
    *(v36 + 32) = v38;
    *(v36 + 40) = v39;

    v42 = sub_1D6B6AE5C();
    *(v36 + 96) = v40;
    *(v36 + 104) = v41;
    *(v36 + 72) = v42;
    *(v36 + 80) = v43;
    v44 = sub_1D5C0BA9C();
    *(v36 + 136) = v40;
    *(v36 + 144) = v41;
    *(v36 + 112) = v44;
    *(v36 + 120) = v45;
    v46 = (CACurrentMediaTime() - v32) * 1000.0;
    if ((*&v46 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v46 > -9.22337204e18)
      {
        if (v46 < 9.22337204e18)
        {
          v47 = v34;
          v18 = *(v0 + 160);
          v19 = *(v0 + 168);
          v48 = v35;
          v21 = *(v0 + 152);
          v84 = *(v0 + 144);
          v22 = *(v0 + 136);
          v23 = *(v0 + 104);
          v24 = *(v0 + 96);
          v25 = *(v0 + 80);
          v26 = *(v0 + 72);
          v49 = MEMORY[0x1E69E73D8];
          *(v36 + 176) = MEMORY[0x1E69E7360];
          *(v36 + 184) = v49;
          *(v36 + 152) = v46;
          sub_1D725C30C("Emit Task [%{public}@] timed out from %{public}@ emitter, identifier=%{public}@, time=%llums", 92, 2, &dword_1D5B42000, v47, v48, v36);

          v28 = 0x80000001D73BFED0;
          v29 = 0xD000000000000011;
          goto LABEL_11;
        }

        goto LABEL_26;
      }

      goto LABEL_24;
    }

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
    goto LABEL_27;
  }

  v2 = *(v0 + 96);
  v3 = *(v0 + 88);
  v4 = v3[11];
  v5 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7274590;
  v7 = (v3 + *(*v3 + 144));
  v8 = *v7;
  v9 = v7[1];
  v10 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  v11 = sub_1D5B7E2C0();
  *(v6 + 64) = v11;
  *(v6 + 32) = v8;
  *(v6 + 40) = v9;

  v12 = sub_1D6B6AE5C();
  *(v6 + 96) = v10;
  *(v6 + 104) = v11;
  *(v6 + 72) = v12;
  *(v6 + 80) = v13;
  v14 = sub_1D5C0BA9C();
  *(v6 + 136) = v10;
  *(v6 + 144) = v11;
  *(v6 + 112) = v14;
  *(v6 + 120) = v15;
  v16 = (CACurrentMediaTime() - v2) * 1000.0;
  if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_20;
  }

  if (v16 <= -9.22337204e18)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (v16 >= 9.22337204e18)
  {
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  v17 = v4;
  v18 = *(v0 + 160);
  v19 = *(v0 + 168);
  v20 = v5;
  v21 = *(v0 + 152);
  v84 = *(v0 + 144);
  v22 = *(v0 + 136);
  v23 = *(v0 + 104);
  v24 = *(v0 + 96);
  v25 = *(v0 + 80);
  v26 = *(v0 + 72);
  v27 = MEMORY[0x1E69E73D8];
  *(v6 + 176) = MEMORY[0x1E69E7360];
  *(v6 + 184) = v27;
  *(v6 + 152) = v16;
  sub_1D725C30C("Emit Task [%{public}@] internal error from %{public}@ emitter, identifier=%{public}@, time=%llums", 97, 2, &dword_1D5B42000, v17, v20, v6);

  v28 = 0x80000001D73BFE50;
  v29 = 0xD000000000000016;
LABEL_11:
  *v19 = v29;
  v19[1] = v28;
  swift_storeEnumTagMultiPayload();
  sub_1D5EA930C(v19, v23, v24, v26);
  (*(v18 + 8))(v19, v21);
  v51 = v25;
  v52 = v84;
  v53 = v22;
LABEL_16:
  sub_1D5EAC6B0(v51, v52, v53, v50);

  v81 = *(v0 + 8);

  v81();
}

void sub_1D5EAA18C()
{
  v1 = *(v0 + 216);
  *(v0 + 48) = v1;
  v2 = v1;
  if ((swift_dynamicCast() & 1) == 0)
  {
    v31 = *(v0 + 96);
    v32 = *(v0 + 88);

    v33 = v32[11];
    v34 = sub_1D7262EBC();
    sub_1D5C384A0(0);
    v35 = swift_allocObject();
    *(v35 + 16) = xmmword_1D7279960;
    v36 = (v32 + *(*v32 + 144));
    v38 = *v36;
    v37 = v36[1];
    v39 = MEMORY[0x1E69E6158];
    *(v35 + 56) = MEMORY[0x1E69E6158];
    v40 = sub_1D5B7E2C0();
    *(v35 + 64) = v40;
    *(v35 + 32) = v38;
    *(v35 + 40) = v37;

    v41 = sub_1D6B6AE5C();
    *(v35 + 96) = v39;
    *(v35 + 104) = v40;
    *(v35 + 72) = v41;
    *(v35 + 80) = v42;
    v43 = sub_1D5C0BA9C();
    *(v35 + 136) = v39;
    *(v35 + 144) = v40;
    *(v35 + 112) = v43;
    *(v35 + 120) = v44;
    v45 = (CACurrentMediaTime() - v31) * 1000.0;
    if ((*&v45 & 0x7FFFFFFFFFFFFFFFuLL) <= 0x7FEFFFFFFFFFFFFFLL)
    {
      if (v45 > -9.22337204e18)
      {
        if (v45 < 9.22337204e18)
        {
          v46 = *(v0 + 216);
          v47 = v34;
          v49 = *(v0 + 160);
          v48 = *(v0 + 168);
          v62 = *(v0 + 136);
          v63 = *(v0 + 144);
          v50 = *(v0 + 96);
          v57 = *(v0 + 152);
          v59 = *(v0 + 104);
          v61 = *(v0 + 80);
          v56 = *(v0 + 72);
          v51 = MEMORY[0x1E69E73D8];
          *(v35 + 176) = MEMORY[0x1E69E7360];
          *(v35 + 184) = v51;
          *(v35 + 152) = v45;
          *(v0 + 16) = 0;
          *(v0 + 24) = 0xE000000000000000;
          *(v0 + 56) = v46;
          sub_1D7263F9C();
          v52 = *(v0 + 16);
          v53 = *(v0 + 24);
          *(v35 + 216) = MEMORY[0x1E69E6158];
          *(v35 + 224) = v40;
          *(v35 + 192) = v52;
          *(v35 + 200) = v53;
          sub_1D725C30C("Emit Task [%{public}@] received error from %{public}@ emitter, identifier=%{public}@, time=%llums, error=%{public}@", 115, 2, &dword_1D5B42000, v33, v47, v35);

          sub_1D7263D4C();
          *(v0 + 32) = 0;
          *(v0 + 40) = 0xE000000000000000;
          MEMORY[0x1DA6F9910](0xD000000000000015, 0x80000001D73BFD40);
          *(v0 + 64) = v46;
          sub_1D7263F9C();
          v54 = *(v0 + 40);
          *v48 = *(v0 + 32);
          v48[1] = v54;
          swift_storeEnumTagMultiPayload();
          sub_1D5EA930C(v48, v59, v50, v56);

          (*(v49 + 8))(v48, v57);
          v30 = v61;
          goto LABEL_10;
        }

LABEL_18:
        __break(1u);
        return;
      }

      goto LABEL_16;
    }

    goto LABEL_14;
  }

  v3 = *(v0 + 96);
  v4 = *(v0 + 88);

  v5 = v4[11];
  v6 = sub_1D7262E9C();
  sub_1D5C384A0(0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1D7274590;
  v8 = (v4 + *(*v4 + 144));
  v10 = *v8;
  v9 = v8[1];
  v11 = MEMORY[0x1E69E6158];
  *(v7 + 56) = MEMORY[0x1E69E6158];
  v12 = sub_1D5B7E2C0();
  *(v7 + 64) = v12;
  *(v7 + 32) = v10;
  *(v7 + 40) = v9;

  v13 = sub_1D6B6AE5C();
  *(v7 + 96) = v11;
  *(v7 + 104) = v12;
  *(v7 + 72) = v13;
  *(v7 + 80) = v14;
  v15 = sub_1D5C0BA9C();
  *(v7 + 136) = v11;
  *(v7 + 144) = v12;
  *(v7 + 112) = v15;
  *(v7 + 120) = v16;
  v17 = (CACurrentMediaTime() - v3) * 1000.0;
  if ((*&v17 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  if (v17 <= -9.22337204e18)
  {
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v17 >= 9.22337204e18)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v18 = v6;
  v20 = *(v0 + 160);
  v19 = *(v0 + 168);
  v21 = *(v0 + 152);
  v62 = *(v0 + 136);
  v63 = *(v0 + 144);
  v60 = *(v0 + 128);
  v22 = v5;
  v24 = *(v0 + 112);
  v23 = *(v0 + 120);
  v25 = *(v0 + 104);
  v26 = *(v0 + 96);
  v58 = *(v0 + 80);
  v27 = *(v0 + 72);
  v28 = MEMORY[0x1E69E73D8];
  *(v7 + 176) = MEMORY[0x1E69E7360];
  *(v7 + 184) = v28;
  *(v7 + 152) = v17;
  sub_1D725C30C("Emit Task [%{public}@] cancelled %{public}@ emitter, identifier=%{public}@, time=%llums", 87, 2, &dword_1D5B42000, v22, v18, v7);

  *v19 = 0xD000000000000011;
  v19[1] = 0x80000001D73BFDC0;
  swift_storeEnumTagMultiPayload();
  sub_1D5EA930C(v19, v25, v26, v27);
  (*(v20 + 8))(v19, v21);
  (*(v23 + 8))(v60, v24);

  v30 = v58;
LABEL_10:
  sub_1D5EAC6B0(v30, v63, v62, v29);

  v55 = *(v0 + 8);

  v55();
}

uint64_t sub_1D5EAA6E8(uint64_t a1, uint64_t a2, uint64_t a3, void *a4)
{
  v4[8] = a1;
  v4[9] = a4;
  v4[10] = *a4;
  return MEMORY[0x1EEE6DFA0](sub_1D5EAA730, 0, 0);
}

uint64_t sub_1D5EAA730()
{
  if (*(v0[9] + 65) == 1)
  {
    v1 = swift_task_alloc();
    v0[11] = v1;
    *v1 = v0;
    v1[1] = sub_1D5EAA850;

    return sub_1D5FE5980();
  }

  else
  {
    v3 = swift_task_alloc();
    v0[13] = v3;
    *v3 = v0;
    v3[1] = sub_1D5EAA9C0;
    v4 = v0[8];

    return sub_1D5EAADC4(v4);
  }
}

uint64_t sub_1D5EAA850()
{
  v2 = *v1;
  v2[12] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAAC3C, 0, 0);
  }

  else
  {
    v3 = swift_task_alloc();
    v2[13] = v3;
    *v3 = v2;
    v3[1] = sub_1D5EAA9C0;
    v4 = v2[8];

    return sub_1D5EAADC4(v4);
  }
}

uint64_t sub_1D5EAA9C0()
{
  v2 = *v1;

  if (v0)
  {
    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAAAF0, 0, 0);
  }
}

uint64_t sub_1D5EAAAF0()
{
  v1 = *(v0 + 64);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v5 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v4);
  (*(*(v5 - 8) + 56))(v1, 0, 1, v5);
  v6 = *(v0 + 8);

  return v6();
}

uint64_t sub_1D5EAAC3C()
{
  v1 = *(v0 + 96);
  *(v0 + 56) = v1;
  v2 = *(v0 + 80);
  v3 = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  type metadata accessor for FeedServiceError(0, *(v2 + 80), *(v2 + 88), v4);
  if (swift_dynamicCast())
  {
    v5 = *(v0 + 16);
    v6 = *(v0 + 24);
    v7 = *(v0 + 32);
    v8 = *(v0 + 40);
    v9 = *(v0 + 48);
    if (v9 == 6 && v5 == 13 && !(v7 | v6 | v8))
    {

      v10 = swift_task_alloc();
      *(v0 + 104) = v10;
      *v10 = v0;
      v10[1] = sub_1D5EAA9C0;
      v11 = *(v0 + 64);

      return sub_1D5EAADC4(v11);
    }

    sub_1D5EAD330(v5, v6, v7, v8, v9);
  }

  swift_willThrow();
  v13 = *(v0 + 8);

  return v13();
}

uint64_t sub_1D5EAADC4(uint64_t a1)
{
  v2[2] = a1;
  v2[3] = v1;
  v3 = *v1;
  v2[4] = *(*v1 + 88);
  v2[5] = *(v3 + 80);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v2[6] = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v2[7] = AssociatedConformanceWitness;
  v7 = type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v6);
  v2[8] = v7;
  v8 = sub_1D726393C();
  v2[9] = v8;
  v2[10] = *(v8 - 8);
  v2[11] = swift_task_alloc();
  v2[12] = swift_task_alloc();
  v2[13] = swift_task_alloc();
  v9 = *(v7 - 8);
  v2[14] = v9;
  v2[15] = *(v9 + 64);
  v2[16] = swift_task_alloc();
  v2[17] = swift_task_alloc();
  v2[18] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5BD7364, 0, 0);
}

uint64_t sub_1D5EAAFF8()
{
  *(*v1 + 216) = v0;

  if (v0)
  {
    v2 = sub_1D5EAB610;
  }

  else
  {
    v2 = sub_1D5EAB128;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1D5EAB128()
{
  v1 = *(v0 + 168);
  v2 = *(v0 + 88);
  v3 = *(v0 + 64);
  (*(v0 + 152))(v2, *(v0 + 96), *(v0 + 72));
  if (v1(v2, 1, v3) == 1)
  {
    v4 = *(v0 + 144);
    v5 = *(v0 + 112);
    v6 = *(v0 + 88);
    v7 = *(v0 + 72);
    v8 = *(v0 + 64);
    v9 = *(*(v0 + 80) + 8);
    v9(*(v0 + 96), v7);
    (*(v5 + 8))(v4, v8);
    v9(v6, v7);
    v10 = *(v0 + 48);
    v11 = *(v0 + 56);

    v12 = swift_task_alloc();
    *(v0 + 224) = v12;
    v14 = type metadata accessor for FeedGroupEmitterOutput(0, v10, v11, v13);
    *v12 = v0;
    v12[1] = sub_1D5EAB47C;
    v15 = *(v0 + 16);
    v16 = *(v0 + 24);

    return MEMORY[0x1EEE44AD8](v15, &unk_1D727ACB0, v16, v14);
  }

  else
  {
    v38 = *(v0 + 184);
    v43 = *(v0 + 136);
    v17 = *(v0 + 112);
    v37 = *(v0 + 96);
    v18 = *(v0 + 80);
    v36 = *(v0 + 72);
    v19 = *(v0 + 64);
    v44 = *(v0 + 56);
    v41 = *(v0 + 144);
    v42 = *(v0 + 48);
    v20 = *(v0 + 24);
    v39 = *(v0 + 128);
    v40 = *(v0 + 16);
    v38();
    v35 = v20[11];
    sub_1D5C384A0(0);
    v21 = swift_allocObject();
    *(v21 + 16) = xmmword_1D7279970;
    v22 = (v20 + *(*v20 + 144));
    v24 = *v22;
    v23 = v22[1];
    v25 = MEMORY[0x1E69E6158];
    *(v21 + 56) = MEMORY[0x1E69E6158];
    v26 = sub_1D5B7E2C0();
    *(v21 + 64) = v26;
    *(v21 + 32) = v24;
    *(v21 + 40) = v23;

    v27 = sub_1D6B6AE5C();
    *(v21 + 96) = v25;
    *(v21 + 104) = v26;
    *(v21 + 72) = v27;
    *(v21 + 80) = v28;
    v29 = sub_1D5C0BA9C();
    *(v21 + 136) = v25;
    *(v21 + 144) = v26;
    *(v21 + 112) = v29;
    *(v21 + 120) = v30;
    v31 = sub_1D7262EDC();
    sub_1D725C30C("Emit Task [%{public}@] using cached output from %{public}@ emitter, identifier=%{public}@", 89, 2, &dword_1D5B42000, v35, v31, v21);

    (*(v18 + 8))(v37, v36);
    (*(v17 + 8))(v41, v19);
    (v38)(v43, v39, v19);
    sub_1D6EB5BC0(v43, v42, v44, v32, v40);

    v33 = *(v0 + 8);

    return v33();
  }
}

uint64_t sub_1D5EAB47C()
{
  v2 = *v1;
  *(v2 + 232) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAB6D4, 0, 0);
  }

  else
  {

    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5EAB610()
{
  (*(v0[14] + 8))(v0[18], v0[8]);

  v1 = v0[1];

  return v1();
}

uint64_t sub_1D5EAB6D4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EAB784(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  *(v5 + 40) = *a5;
  v6 = sub_1D7263F5C();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EAB870, 0, 0);
}

uint64_t sub_1D5EAB870()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = v2[11];
  v0[9] = v3;
  sub_1D5C384A0(0);
  v0[10] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7274590;
  v6 = (v2 + *(*v2 + 144));
  v7 = *v6;
  v0[11] = *v6;
  v8 = v6[1];
  v0[12] = v8;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  v0[13] = v10;
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v0[14] = v2[2];

  v11 = sub_1D6B6AE5C();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  v12 = MEMORY[0x1E69E63B0];
  *(v5 + 72) = v11;
  *(v5 + 80) = v13;
  v14 = MEMORY[0x1E69E6438];
  *(v5 + 136) = v12;
  *(v5 + 144) = v14;
  *(v5 + 112) = v1;
  v15 = sub_1D5C0BA9C();
  *(v5 + 176) = v9;
  *(v5 + 184) = v10;
  *(v5 + 152) = v15;
  *(v5 + 160) = v16;
  v17 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] will timeout %{public}@ emitter in %f seconds, identifier=%{public}@", 91, 2, &dword_1D5B42000, v3, v17, v5);

  v18 = sub_1D7264BBC();
  v20 = v19;
  sub_1D726496C();
  v21 = swift_task_alloc();
  v0[15] = v21;
  *v21 = v0;
  v21[1] = sub_1D5EABA54;

  return sub_1D6CDBFF8(v18, v20, 0, 0, 1);
}

uint64_t sub_1D5EABA54()
{
  v2 = *v1;
  *(*v1 + 128) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1D5EABBBC;
  }

  else
  {
    v3 = sub_1D5EABC20;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5EABBBC()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EABC20()
{
  v1 = v0[13];
  v2 = v0[11];
  v3 = v0[12];
  v4 = v0[9];
  v18 = v0[2];
  v5 = sub_1D7262EBC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7279970;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v1;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;

  v8 = sub_1D6B6AE5C();
  *(v6 + 96) = v7;
  *(v6 + 104) = v1;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v10 = sub_1D5C0BA9C();
  *(v6 + 136) = v7;
  *(v6 + 144) = v1;
  *(v6 + 112) = v10;
  *(v6 + 120) = v11;
  sub_1D725C30C("Emit Task [%{public}@] did timeout %{public}@ emitter, identifier=%{public}@", 76, 2, &dword_1D5B42000, v4, v5, v6);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  (*(*(v15 - 8) + 56))(v18, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D5EABE20(uint64_t a1, double a2, uint64_t a3, uint64_t a4, void *a5)
{
  *(v5 + 32) = a2;
  *(v5 + 16) = a1;
  *(v5 + 24) = a5;
  *(v5 + 40) = *a5;
  v6 = sub_1D7263F5C();
  *(v5 + 48) = v6;
  *(v5 + 56) = *(v6 - 8);
  *(v5 + 64) = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1D5EABF0C, 0, 0);
}

uint64_t sub_1D5EABF0C()
{
  v1 = swift_task_alloc();
  *(v0 + 72) = v1;
  *v1 = v0;
  v1[1] = sub_1D5EABFB4;

  return sub_1D5FE5B68();
}

uint64_t sub_1D5EABFB4()
{
  v2 = *v1;

  if (v0)
  {

    v3 = *(v2 + 8);

    return v3();
  }

  else
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAC100, 0, 0);
  }
}

uint64_t sub_1D5EAC100()
{
  v1 = v0[4];
  v2 = v0[3];
  v3 = v2[11];
  v0[10] = v3;
  sub_1D5C384A0(0);
  v0[11] = v4;
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1D7274590;
  v6 = (v2 + *(*v2 + 144));
  v7 = *v6;
  v0[12] = *v6;
  v8 = v6[1];
  v0[13] = v8;
  v9 = MEMORY[0x1E69E6158];
  *(v5 + 56) = MEMORY[0x1E69E6158];
  v10 = sub_1D5B7E2C0();
  v0[14] = v10;
  *(v5 + 64) = v10;
  *(v5 + 32) = v7;
  *(v5 + 40) = v8;
  v0[15] = v2[2];

  v11 = sub_1D6B6AE5C();
  *(v5 + 96) = v9;
  *(v5 + 104) = v10;
  v12 = MEMORY[0x1E69E63B0];
  *(v5 + 72) = v11;
  *(v5 + 80) = v13;
  v14 = MEMORY[0x1E69E6438];
  *(v5 + 136) = v12;
  *(v5 + 144) = v14;
  *(v5 + 112) = v1;
  v15 = sub_1D5C0BA9C();
  *(v5 + 176) = v9;
  *(v5 + 184) = v10;
  *(v5 + 152) = v15;
  *(v5 + 160) = v16;
  v17 = sub_1D7262EDC();
  sub_1D725C30C("Emit Task [%{public}@] will timeout %{public}@ emitter in %f seconds since gap is on screen, identifier=%{public}@", 114, 2, &dword_1D5B42000, v3, v17, v5);

  v18 = sub_1D7264BBC();
  v20 = v19;
  sub_1D726496C();
  v21 = swift_task_alloc();
  v0[16] = v21;
  *v21 = v0;
  v21[1] = sub_1D5EAC2E4;

  return sub_1D6CDBFF8(v18, v20, 0, 0, 1);
}

uint64_t sub_1D5EAC2E4()
{
  v2 = *v1;
  *(*v1 + 136) = v0;

  (*(v2[7] + 8))(v2[8], v2[6]);
  if (v0)
  {
    v3 = sub_1D5EAC44C;
  }

  else
  {
    v3 = sub_1D5EAC4B0;
  }

  return MEMORY[0x1EEE6DFA0](v3, 0, 0);
}

uint64_t sub_1D5EAC44C()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1D5EAC4B0()
{
  v1 = v0[14];
  v2 = v0[12];
  v3 = v0[13];
  v4 = v0[10];
  v18 = v0[2];
  v5 = sub_1D7262EBC();
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1D7279970;
  v7 = MEMORY[0x1E69E6158];
  *(v6 + 56) = MEMORY[0x1E69E6158];
  *(v6 + 64) = v1;
  *(v6 + 32) = v2;
  *(v6 + 40) = v3;

  v8 = sub_1D6B6AE5C();
  *(v6 + 96) = v7;
  *(v6 + 104) = v1;
  *(v6 + 72) = v8;
  *(v6 + 80) = v9;
  v10 = sub_1D5C0BA9C();
  *(v6 + 136) = v7;
  *(v6 + 144) = v1;
  *(v6 + 112) = v10;
  *(v6 + 120) = v11;
  sub_1D725C30C("Emit Task [%{public}@] did timeout %{public}@ emitter, identifier=%{public}@", 76, 2, &dword_1D5B42000, v4, v5, v6);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v15 = type metadata accessor for FeedGroupEmitterOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v14);
  (*(*(v15 - 8) + 56))(v18, 1, 1, v15);

  v16 = v0[1];

  return v16();
}

uint64_t sub_1D5EAC6B0(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = type metadata accessor for FeedGroupEmitTask.InternalResult(0, a2, a3, a4);
  v6 = sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  v7 = MEMORY[0x1E69E7288];

  return MEMORY[0x1EEE6D8B8](v4, v5, v6, v7);
}

uint64_t sub_1D5EAC718(uint64_t a1, void *a2, uint64_t a3)
{
  v3[6] = a2;
  v3[7] = a3;
  v3[5] = a1;
  v3[8] = *a2;
  return MEMORY[0x1EEE6DFA0](sub_1D5EAC764, 0, 0);
}

uint64_t sub_1D5EAC764()
{
  v1 = v0[6];
  v0[9] = *(v1 + 16);
  v2 = *(v1 + 112);
  v3 = swift_task_alloc();
  v0[10] = v3;
  *v3 = v0;
  v3[1] = sub_1D5EAC810;
  v4 = v0[7];
  v5 = v0[5];

  return sub_1D6B6AFA0(v5, v2, v4);
}

uint64_t sub_1D5EAC810()
{
  v2 = *v1;
  *(v2 + 88) = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1D5EAC944, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t sub_1D5EAC944()
{
  v1 = v0[11];
  v2 = v0[6];
  v22 = v2[11];
  v23 = v0[5];
  v3 = sub_1D7262EBC();
  sub_1D5C384A0(0);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1D7274590;
  v5 = (v2 + *(*v2 + 144));
  v6 = *v5;
  v7 = v5[1];
  v8 = MEMORY[0x1E69E6158];
  *(v4 + 56) = MEMORY[0x1E69E6158];
  v9 = sub_1D5B7E2C0();
  *(v4 + 64) = v9;
  *(v4 + 32) = v6;
  *(v4 + 40) = v7;

  v10 = sub_1D6B6AE5C();
  *(v4 + 96) = v8;
  *(v4 + 104) = v9;
  *(v4 + 72) = v10;
  *(v4 + 80) = v11;
  v12 = sub_1D5C0BA9C();
  *(v4 + 136) = v8;
  *(v4 + 144) = v9;
  v0[2] = 0;
  *(v4 + 112) = v12;
  *(v4 + 120) = v13;
  v0[3] = 0xE000000000000000;
  v0[4] = v1;
  sub_1D5B49474(0, &qword_1EDF3C5D0, MEMORY[0x1E69E7280]);
  sub_1D7263F9C();
  v14 = v0[2];
  v15 = v0[3];
  *(v4 + 176) = v8;
  *(v4 + 184) = v9;
  *(v4 + 152) = v14;
  *(v4 + 160) = v15;
  sub_1D725C30C("Emit Task [%{public}@] cached output failed from %{public}@ emitter, identifier=%{public}@, error=%{public}@", 108, 2, &dword_1D5B42000, v22, v3, v4);

  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v19 = type metadata accessor for FeedGroupEmitterCachedOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v18);
  (*(*(v19 - 8) + 56))(v23, 1, 1, v19);
  v20 = v0[1];

  return v20();
}

uint64_t sub_1D5EACBC8()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t *sub_1D5EACCBC()
{

  v1 = *(v0 + 88);

  v2 = *(*v0 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v5);
  v6 = sub_1D726393C();
  (*(*(v6 - 8) + 8))(v0 + v2, v6);

  v7 = *(*v0 + 152);
  v8 = sub_1D725C37C();
  (*(*(v8 - 8) + 8))(v0 + v7, v8);
  v9 = *(*v0 + 160);
  v10 = sub_1D725C34C();
  (*(*(v10 - 8) + 8))(v0 + v9, v10);
  return v0;
}

uint64_t sub_1D5EACF00()
{
  sub_1D5EACCBC();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EACF70(char **a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v2 = sub_1D62FFB44(v2);
  }

  v3 = *(v2 + 2);
  v5[0] = v2 + 32;
  v5[1] = v3;
  result = sub_1D5EAD548(v5);
  *a1 = v2;
  return result;
}

uint64_t sub_1D5EAD014(uint64_t a1, uint64_t a2)
{
  v6 = *(v2 + 2);
  v7 = v2[3];
  v8 = *(v2 + 4);
  v9 = swift_task_alloc();
  *(v3 + 16) = v9;
  *v9 = v3;
  v9[1] = sub_1D5B64680;

  return sub_1D5EA9524(a1, a2, v6, v8, v7);
}

uint64_t sub_1D5EAD0DC(uint64_t a1, uint64_t a2, unsigned __int8 a3)
{
  if (a3 <= 1u)
  {
  }

  return result;
}

uint64_t sub_1D5EAD0F4(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1D5B64680;

  return sub_1D5EAA6E8(a1, v4, v5, v6);
}

uint64_t sub_1D5EAD1A8(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64680;

  return sub_1D5EABE20(a1, v7, v4, v5, v6);
}

uint64_t sub_1D5EAD26C(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D5B64684;

  return sub_1D5EAB784(a1, v7, v4, v5, v6);
}

uint64_t sub_1D5EAD330(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unsigned __int8 a5)
{
  if (a5 <= 1u)
  {
    if (a5)
    {
      if (a5 != 1)
      {
        return v7;
      }

      sub_1D5C08648(a2);
    }

    goto LABEL_11;
  }

  v6 = a5 == 2 || a5 == 4;
  if (v6 || a5 == 5)
  {
LABEL_11:
  }

  return v7;
}

uint64_t sub_1D5EAD3C0(uint64_t a1)
{
  v3 = v2;
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v8 = *(type metadata accessor for FeedGroupEmitterCachedOutput(0, AssociatedTypeWitness, AssociatedConformanceWitness, v7) - 8);
  v9 = (*(v8 + 80) + 40) & ~*(v8 + 80);
  v10 = *(v1 + 32);
  v11 = swift_task_alloc();
  *(v3 + 16) = v11;
  *v11 = v3;
  v11[1] = sub_1D5B64680;

  return sub_1D5EAC718(a1, v10, v1 + v9);
}

uint64_t sub_1D5EAD548(uint64_t a1)
{
  v2 = *(a1 + 8);
  result = sub_1D726449C();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      if (v2 <= 1)
      {
        v5 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v5 = sub_1D726276C();
        *(v5 + 16) = v2 / 2;
      }

      v7[0] = v5 + 32;
      v7[1] = v2 / 2;
      v6 = v5;
      sub_1D5EAD7BC(v7, v8, a1, v4);
      *(v6 + 16) = 0;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return result;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    return sub_1D5EAD640(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1D5EAD640(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v25 = a2;
  if (a3 != a2)
  {
    v4 = a3;
    v5 = *a4;
    v6 = result - a3;
    v7 = *a4 + (a3 << 6);
LABEL_5:
    v8 = v7;
    v9 = v6;
    while (1)
    {
      sub_1D5EAE324(v8, &v22);
      v10 = v8 - 4;
      sub_1D5EAE324((v8 - 4), v19);
      v11 = v24[24];
      if (!v24[24])
      {
        goto LABEL_9;
      }

      if (v24[24] == 1)
      {
        break;
      }

      if (*&v24[8] == 0)
      {
        v11 = 3;
      }

      else
      {
        v11 = 1;
      }

      v12 = v21;
      if (v21)
      {
        goto LABEL_15;
      }

LABEL_20:
      sub_1D5EAE380(v19);
      result = sub_1D5EAE380(&v22);
      if (v11 >= v12)
      {
        goto LABEL_4;
      }

      if (!v5)
      {
        __break(1u);
        return result;
      }

      *v24 = v8[2];
      *&v24[9] = *(v8 + 41);
      v22 = *v8;
      v13 = v22;
      v23 = v8[1];
      v14 = v23;
      v15 = *(v8 - 3);
      *v8 = *v10;
      v8[1] = v15;
      v16 = *(v8 - 1);
      v8[2] = *(v8 - 2);
      v8[3] = v16;
      *v10 = v13;
      *(v8 - 23) = *&v24[9];
      v17 = *v24;
      *(v8 - 3) = v14;
      *(v8 - 2) = v17;
      v8 -= 4;
      if (__CFADD__(v9++, 1))
      {
LABEL_4:
        ++v4;
        --v6;
        v7 += 64;
        if (v4 == v25)
        {
          return result;
        }

        goto LABEL_5;
      }
    }

    v11 = 2;
LABEL_9:
    v12 = v21;
    if (!v21)
    {
      goto LABEL_20;
    }

LABEL_15:
    if (v12 == 1)
    {
      v12 = 2;
    }

    else if (v20 == 0)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }

    goto LABEL_20;
  }

  return result;
}

uint64_t sub_1D5EAD7BC(uint64_t result, uint64_t a2, char **a3, uint64_t a4)
{
  v6 = v4;
  v105 = result;
  v7 = a3[1];
  if (v7 < 1)
  {
    v9 = MEMORY[0x1E69E7CC0];
LABEL_131:
    v5 = *v105;
    if (!*v105)
    {
      goto LABEL_170;
    }

    result = swift_isUniquelyReferenced_nonNull_native();
    if (result)
    {
LABEL_133:
      v94 = v6;
      v117 = v9;
      v95 = *(v9 + 2);
      if (v95 >= 2)
      {
        while (*a3)
        {
          v6 = v95 - 1;
          v96 = *&v9[16 * v95];
          v97 = *&v9[16 * v95 + 24];
          sub_1D5EADFEC(&(*a3)[64 * v96], &(*a3)[64 * *&v9[16 * v95 + 16]], &(*a3)[64 * v97], v5);
          if (v94)
          {
          }

          if (v97 < v96)
          {
            goto LABEL_157;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v95 - 2 >= *(v9 + 2))
          {
            goto LABEL_158;
          }

          v98 = &v9[16 * v95];
          *v98 = v96;
          *(v98 + 1) = v97;
          v117 = v9;
          result = sub_1D62FF480(v95 - 1);
          v9 = v117;
          v95 = *(v117 + 2);
          if (v95 <= 1)
          {
          }
        }

        goto LABEL_168;
      }
    }

LABEL_164:
    result = sub_1D62FF50C(v9);
    v9 = result;
    goto LABEL_133;
  }

  v8 = 0;
  v9 = MEMORY[0x1E69E7CC0];
LABEL_4:
  v10 = v8++;
  if (v8 >= v7)
  {
    goto LABEL_49;
  }

  v11 = *a3;
  sub_1D5EAE324(&(*a3)[64 * v8], &v114);
  sub_1D5EAE324(&v11[64 * v10], v111);
  v12 = v116[24];
  if (v116[24])
  {
    if (v116[24] == 1)
    {
      v12 = 2;
    }

    else if (*&v116[8] == 0)
    {
      v12 = 3;
    }

    else
    {
      v12 = 1;
    }
  }

  v13 = v113;
  v101 = v6;
  if (v113)
  {
    if (v113 == 1)
    {
      v13 = 2;
    }

    else
    {
      v13 = 3;
      if (v112 != 0)
      {
        v13 = 1;
      }
    }
  }

  v108 = v13;
  sub_1D5EAE380(v111);
  result = sub_1D5EAE380(&v114);
  v14 = 0;
  v99 = v10 << 6;
  v15 = v10;
  v16 = &v11[64 * v10 + 64];
  v103 = v15;
  v17 = v15 + 2;
  v106 = v7;
  do
  {
    v6 = v17;
    v21 = v14;
    v5 = v8;
    if (v17 >= v7)
    {
      break;
    }

    sub_1D5EAE324(v16 + 64, &v114);
    sub_1D5EAE324(v16, v111);
    v22 = v116[24];
    if (v116[24])
    {
      v23 = v12;
      if (v116[24] != 1)
      {
        if (*&v116[8] == 0)
        {
          v22 = 3;
        }

        else
        {
          v22 = 1;
        }

        v18 = v113;
        if (!v113)
        {
          goto LABEL_20;
        }

LABEL_32:
        if (v18 == 1)
        {
          v18 = 2;
        }

        else if (v112 == 0)
        {
          v18 = 3;
        }

        else
        {
          v18 = 1;
        }

        goto LABEL_20;
      }

      v22 = 2;
      v18 = v113;
      if (v113)
      {
        goto LABEL_32;
      }
    }

    else
    {
      v23 = v12;
      v18 = v113;
      if (v113)
      {
        goto LABEL_32;
      }
    }

LABEL_20:
    v12 = v23;
    v19 = v23 < v108;
    sub_1D5EAE380(v111);
    result = sub_1D5EAE380(&v114);
    v20 = v19 ^ (v22 >= v18);
    v16 += 64;
    v17 = v6 + 1;
    v14 = v21 + 64;
    v8 = (v5 + 1);
    v7 = v106;
  }

  while ((v20 & 1) != 0);
  if (v12 >= v108)
  {
    v8 = v6;
    v6 = v101;
    v10 = v103;
  }

  else
  {
    v10 = v103;
    if (v6 < v103)
    {
      goto LABEL_161;
    }

    if (v103 < v6)
    {
      v24 = 0;
      v25 = v103;
      do
      {
        if (v25 != v5)
        {
          if (!*a3)
          {
            goto LABEL_167;
          }

          v30 = &(*a3)[v99];
          v31 = &v30[v24];
          v32 = &v30[v21];
          v114 = *v31;
          v115 = *(v31 + 1);
          *v116 = *(v31 + 2);
          *&v116[9] = *(v31 + 41);
          if (v99 + v24 != v99 + v21 + 64 || v31 >= v32 + 128)
          {
            v26 = *(v32 + 4);
            v27 = *(v32 + 5);
            v28 = *(v32 + 7);
            *(v31 + 2) = *(v32 + 6);
            *(v31 + 3) = v28;
            *v31 = v26;
            *(v31 + 1) = v27;
          }

          *(v32 + 4) = v114;
          *(v32 + 5) = v115;
          *(v32 + 6) = *v116;
          *(v32 + 105) = *&v116[9];
        }

        ++v25;
        v21 -= 64;
        v24 += 64;
      }

      while (v25 < v5--);
    }

    v8 = v6;
    v6 = v101;
  }

LABEL_49:
  v33 = a3[1];
  if (v8 >= v33)
  {
    goto LABEL_80;
  }

  if (__OFSUB__(v8, v10))
  {
    goto LABEL_160;
  }

  if (v8 - v10 >= a4)
  {
    goto LABEL_80;
  }

  v34 = (v10 + a4);
  if (__OFADD__(v10, a4))
  {
    goto LABEL_162;
  }

  if (v34 >= v33)
  {
    v34 = a3[1];
  }

  if (v34 < v10)
  {
LABEL_163:
    __break(1u);
    goto LABEL_164;
  }

  if (v8 == v34)
  {
    goto LABEL_80;
  }

  v102 = v6;
  v104 = v10;
  v5 = *a3;
  v35 = v10 - v8;
  v36 = &(*a3)[64 * v8];
  v107 = v34;
LABEL_59:
  v109 = v8;
  v37 = v36;
  v38 = v35;
  while (1)
  {
    sub_1D5EAE324(v37, &v114);
    v39 = v37 - 4;
    sub_1D5EAE324((v37 - 4), v111);
    v40 = v116[24];
    if (!v116[24])
    {
      goto LABEL_63;
    }

    if (v116[24] == 1)
    {
      v40 = 2;
LABEL_63:
      v41 = v113;
      if (!v113)
      {
        goto LABEL_74;
      }

LABEL_69:
      if (v41 == 1)
      {
        v41 = 2;
      }

      else if (v112 == 0)
      {
        v41 = 3;
      }

      else
      {
        v41 = 1;
      }

      goto LABEL_74;
    }

    if (*&v116[8] == 0)
    {
      v40 = 3;
    }

    else
    {
      v40 = 1;
    }

    v41 = v113;
    if (v113)
    {
      goto LABEL_69;
    }

LABEL_74:
    sub_1D5EAE380(v111);
    result = sub_1D5EAE380(&v114);
    if (v40 >= v41)
    {
      goto LABEL_58;
    }

    if (!v5)
    {
      break;
    }

    *v116 = v37[2];
    *&v116[9] = *(v37 + 41);
    v114 = *v37;
    v42 = v114;
    v115 = v37[1];
    v43 = v115;
    v44 = *(v37 - 3);
    *v37 = *v39;
    v37[1] = v44;
    v45 = *(v37 - 1);
    v37[2] = *(v37 - 2);
    v37[3] = v45;
    *v39 = v42;
    *(v37 - 23) = *&v116[9];
    v46 = *v116;
    *(v37 - 3) = v43;
    *(v37 - 2) = v46;
    v37 -= 4;
    if (__CFADD__(v38++, 1))
    {
LABEL_58:
      v8 = v109 + 1;
      --v35;
      v36 += 64;
      if ((v109 + 1) == v107)
      {
        v8 = v107;
        v6 = v102;
        v10 = v104;
LABEL_80:
        if (v8 < v10)
        {
          goto LABEL_159;
        }

        result = swift_isUniquelyReferenced_nonNull_native();
        if ((result & 1) == 0)
        {
          result = sub_1D698BA94(0, *(v9 + 2) + 1, 1, v9);
          v9 = result;
        }

        v49 = *(v9 + 2);
        v48 = *(v9 + 3);
        v50 = v49 + 1;
        if (v49 >= v48 >> 1)
        {
          result = sub_1D698BA94((v48 > 1), v49 + 1, 1, v9);
          v9 = result;
        }

        *(v9 + 2) = v50;
        v51 = &v9[16 * v49];
        *(v51 + 4) = v10;
        *(v51 + 5) = v8;
        v52 = *v105;
        if (!*v105)
        {
          goto LABEL_169;
        }

        if (!v49)
        {
LABEL_3:
          v7 = a3[1];
          if (v8 >= v7)
          {
            goto LABEL_131;
          }

          goto LABEL_4;
        }

        while (1)
        {
          v53 = v50 - 1;
          if (v50 >= 4)
          {
            break;
          }

          if (v50 == 3)
          {
            v54 = *(v9 + 4);
            v55 = *(v9 + 5);
            v64 = __OFSUB__(v55, v54);
            v56 = v55 - v54;
            v57 = v64;
LABEL_100:
            if (v57)
            {
              goto LABEL_148;
            }

            v70 = &v9[16 * v50];
            v72 = *v70;
            v71 = *(v70 + 1);
            v73 = __OFSUB__(v71, v72);
            v74 = v71 - v72;
            v75 = v73;
            if (v73)
            {
              goto LABEL_151;
            }

            v76 = &v9[16 * v53 + 32];
            v78 = *v76;
            v77 = *(v76 + 1);
            v64 = __OFSUB__(v77, v78);
            v79 = v77 - v78;
            if (v64)
            {
              goto LABEL_154;
            }

            if (__OFADD__(v74, v79))
            {
              goto LABEL_155;
            }

            if (v74 + v79 >= v56)
            {
              if (v56 < v79)
              {
                v53 = v50 - 2;
              }

              goto LABEL_121;
            }

            goto LABEL_114;
          }

          v80 = &v9[16 * v50];
          v82 = *v80;
          v81 = *(v80 + 1);
          v64 = __OFSUB__(v81, v82);
          v74 = v81 - v82;
          v75 = v64;
LABEL_114:
          if (v75)
          {
            goto LABEL_150;
          }

          v83 = &v9[16 * v53];
          v85 = *(v83 + 4);
          v84 = *(v83 + 5);
          v64 = __OFSUB__(v84, v85);
          v86 = v84 - v85;
          if (v64)
          {
            goto LABEL_153;
          }

          if (v86 < v74)
          {
            goto LABEL_3;
          }

LABEL_121:
          v91 = v53 - 1;
          if (v53 - 1 >= v50)
          {
            __break(1u);
LABEL_144:
            __break(1u);
LABEL_145:
            __break(1u);
LABEL_146:
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
LABEL_152:
            __break(1u);
LABEL_153:
            __break(1u);
LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
LABEL_159:
            __break(1u);
LABEL_160:
            __break(1u);
LABEL_161:
            __break(1u);
LABEL_162:
            __break(1u);
            goto LABEL_163;
          }

          if (!*a3)
          {
            goto LABEL_166;
          }

          v92 = *&v9[16 * v91 + 32];
          v5 = *&v9[16 * v53 + 40];
          sub_1D5EADFEC(&(*a3)[64 * v92], &(*a3)[64 * *&v9[16 * v53 + 32]], &(*a3)[64 * v5], v52);
          if (v6)
          {
          }

          if (v5 < v92)
          {
            goto LABEL_144;
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_1D62FF50C(v9);
          }

          if (v91 >= *(v9 + 2))
          {
            goto LABEL_145;
          }

          v93 = &v9[16 * v91];
          *(v93 + 4) = v92;
          *(v93 + 5) = v5;
          v117 = v9;
          result = sub_1D62FF480(v53);
          v9 = v117;
          v50 = *(v117 + 2);
          if (v50 <= 1)
          {
            goto LABEL_3;
          }
        }

        v58 = &v9[16 * v50 + 32];
        v59 = *(v58 - 64);
        v60 = *(v58 - 56);
        v64 = __OFSUB__(v60, v59);
        v61 = v60 - v59;
        if (v64)
        {
          goto LABEL_146;
        }

        v63 = *(v58 - 48);
        v62 = *(v58 - 40);
        v64 = __OFSUB__(v62, v63);
        v56 = v62 - v63;
        v57 = v64;
        if (v64)
        {
          goto LABEL_147;
        }

        v65 = &v9[16 * v50];
        v67 = *v65;
        v66 = *(v65 + 1);
        v64 = __OFSUB__(v66, v67);
        v68 = v66 - v67;
        if (v64)
        {
          goto LABEL_149;
        }

        v64 = __OFADD__(v56, v68);
        v69 = v56 + v68;
        if (v64)
        {
          goto LABEL_152;
        }

        if (v69 >= v61)
        {
          v87 = &v9[16 * v53 + 32];
          v89 = *v87;
          v88 = *(v87 + 1);
          v64 = __OFSUB__(v88, v89);
          v90 = v88 - v89;
          if (v64)
          {
            goto LABEL_156;
          }

          if (v56 < v90)
          {
            v53 = v50 - 2;
          }

          goto LABEL_121;
        }

        goto LABEL_100;
      }

      goto LABEL_59;
    }
  }

  __break(1u);
LABEL_166:
  __break(1u);
LABEL_167:
  __break(1u);
LABEL_168:
  __break(1u);
LABEL_169:
  __break(1u);
LABEL_170:
  __break(1u);
  return result;
}

uint64_t sub_1D5EADFEC(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 63;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 6;
  v11 = a3 - __src;
  v12 = a3 - __src + 63;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 6;
  if (v10 >= v13)
  {
    v24 = v13 << 6;
    if (a4 != __src || &__src[v24] <= a4)
    {
      memmove(a4, __src, v13 << 6);
    }

    v15 = &v4[v24];
    if (v11 < 64 || v6 <= v7)
    {
LABEL_64:
      v23 = v6;
      goto LABEL_65;
    }

    while (1)
    {
      v23 = v6 - 64;
      v25 = v15 - 64;
      v5 -= 64;
      while (1)
      {
        sub_1D5EAE324(v25, v41);
        sub_1D5EAE324((v6 - 64), v38);
        v28 = v43;
        if (!v43)
        {
          goto LABEL_45;
        }

        if (v43 == 1)
        {
          v28 = 2;
LABEL_45:
          v29 = v40;
          if (!v40)
          {
            goto LABEL_56;
          }

LABEL_51:
          if (v29 == 1)
          {
            v29 = 2;
          }

          else if (v39 == 0)
          {
            v29 = 3;
          }

          else
          {
            v29 = 1;
          }

          goto LABEL_56;
        }

        if (v42 == 0)
        {
          v28 = 3;
        }

        else
        {
          v28 = 1;
        }

        v29 = v40;
        if (v40)
        {
          goto LABEL_51;
        }

LABEL_56:
        sub_1D5EAE380(v38);
        sub_1D5EAE380(v41);
        if (v28 < v29)
        {
          break;
        }

        if (v5 + 64 != v25 + 64)
        {
          v30 = *v25;
          v31 = *(v25 + 1);
          v32 = *(v25 + 3);
          *(v5 + 2) = *(v25 + 2);
          *(v5 + 3) = v32;
          *v5 = v30;
          *(v5 + 1) = v31;
        }

        v26 = v25 - 64;
        v5 -= 64;
        v27 = v25 > v4;
        v25 -= 64;
        if (!v27)
        {
          v15 = v26 + 64;
          goto LABEL_64;
        }
      }

      if (v5 + 64 != v6)
      {
        v33 = *v23;
        v34 = *(v6 - 3);
        v35 = *(v6 - 1);
        *(v5 + 2) = *(v6 - 2);
        *(v5 + 3) = v35;
        *v5 = v33;
        *(v5 + 1) = v34;
      }

      v15 = v25 + 64;
      if (v25 + 64 > v4)
      {
        v6 -= 64;
        if (v23 > v7)
        {
          continue;
        }
      }

      v15 = v25 + 64;
      goto LABEL_65;
    }
  }

  v14 = v10 << 6;
  if (a4 != __dst || &__dst[v14] <= a4)
  {
    memmove(a4, __dst, v14);
  }

  v15 = &v4[v14];
  if (v8 >= 64 && v6 < v5)
  {
    while (1)
    {
      sub_1D5EAE324(v6, v41);
      sub_1D5EAE324(v4, v38);
      v16 = v43;
      if (!v43)
      {
        goto LABEL_14;
      }

      if (v43 == 1)
      {
        break;
      }

      if (v42 == 0)
      {
        v16 = 3;
      }

      else
      {
        v16 = 1;
      }

      v17 = v40;
      if (v40)
      {
        goto LABEL_20;
      }

LABEL_25:
      sub_1D5EAE380(v38);
      sub_1D5EAE380(v41);
      if (v16 >= v17)
      {
        v18 = v4;
        v19 = v7 == v4;
        v4 += 64;
        if (v19)
        {
          goto LABEL_31;
        }

LABEL_30:
        v20 = *v18;
        v21 = *(v18 + 1);
        v22 = *(v18 + 3);
        *(v7 + 2) = *(v18 + 2);
        *(v7 + 3) = v22;
        *v7 = v20;
        *(v7 + 1) = v21;
        goto LABEL_31;
      }

      v18 = v6;
      v19 = v7 == v6;
      v6 += 64;
      if (!v19)
      {
        goto LABEL_30;
      }

LABEL_31:
      v7 += 64;
      if (v4 >= v15 || v6 >= v5)
      {
        goto LABEL_33;
      }
    }

    v16 = 2;
LABEL_14:
    v17 = v40;
    if (!v40)
    {
      goto LABEL_25;
    }

LABEL_20:
    if (v17 == 1)
    {
      v17 = 2;
    }

    else if (v39 == 0)
    {
      v17 = 3;
    }

    else
    {
      v17 = 1;
    }

    goto LABEL_25;
  }

LABEL_33:
  v23 = v7;
LABEL_65:
  v36 = (v15 - v4 + (v15 - v4 < 0 ? 0x3FuLL : 0)) & 0xFFFFFFFFFFFFFFC0;
  if (v23 != v4 || v23 >= &v4[v36])
  {
    memmove(v23, v4, v36);
  }

  return 1;
}

void *sub_1D5EAE3D4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  v49 = a6;
  v50 = a7;
  v47 = a4;
  v48 = a5;
  v45 = a2;
  v46 = a3;
  v12 = *v7;
  v13 = sub_1D725C34C();
  v53 = *(v13 - 8);
  v54 = v13;
  MEMORY[0x1EEE9AC00](v13, v14);
  v52 = &v43 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v51 = sub_1D725C37C();
  v16 = *(v51 - 8);
  MEMORY[0x1EEE9AC00](v51, v17);
  v19 = &v43 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = *(a1 + 8);
  v22 = *(a1 + 16);
  v21 = *(a1 + 24);
  v23 = *(a1 + 32);
  v8[9] = *a1;
  v8[10] = v20;
  v8[11] = v22;
  v8[12] = v21;
  *(v8 + 104) = v23;
  v8[2] = a2;
  v8[14] = a3;
  v44 = *(v12 + 128);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for FeedGroupEmitterCachedOutput(255, AssociatedTypeWitness, AssociatedConformanceWitness, v26);
  v27 = sub_1D726393C();
  (*(*(v27 - 8) + 16))(v8 + v44, v47, v27);
  v28 = v49;
  *(v8 + *(*v8 + 136)) = v48;
  v29 = (v8 + *(*v8 + 144));
  v30 = v50;
  *v29 = v28;
  v29[1] = v30;

  v31 = v22;
  v32 = v21;

  sub_1D6B6AF50();
  v33 = v56;
  v34 = v57;
  v35 = v58;
  v36 = v59;
  v37 = v60;
  v38 = v61;
  v8[3] = v55;
  *(v8 + 32) = v33;
  v8[5] = v34;
  *(v8 + 48) = v35;
  v8[7] = v36;
  *(v8 + 64) = v37;
  *(v8 + 65) = v38;
  v39 = v31;
  sub_1D725C35C();

  v40 = v51;
  (*(v16 + 16))(v8 + *(*v8 + 152), v19, v51);
  sub_1D725C36C();
  v41 = v52;
  sub_1D725C32C();
  (*(v16 + 8))(v19, v40);
  (*(v53 + 32))(v8 + *(*v8 + 160), v41, v54);
  return v8;
}

uint64_t sub_1D5EAE85C(uint64_t a1)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v4 = type metadata accessor for FeedGroupEmitterOutput(319, AssociatedTypeWitness, AssociatedConformanceWitness, v3);
  if (v5 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSinglePayloadWithLayoutString();
    return 0;
  }

  return v4;
}

uint64_t sub_1D5EAE95C(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v5 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v5 <= ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v5 = ((v5 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v5 <= 0x10)
  {
    v5 = 16;
  }

  v6 = (v5 & 0xFFFFFFFFFFFFFFF8) + 48;
  if (v6 <= v5)
  {
    v6 = v5;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF9)
  {
    goto LABEL_29;
  }

  v7 = v6 + 1;
  v8 = 8 * (v6 + 1);
  if ((v6 + 1) > 3)
  {
    goto LABEL_10;
  }

  v11 = ((a2 + ~(-1 << v8) - 248) >> v8) + 1;
  if (HIWORD(v11))
  {
    v9 = *(a1 + v7);
    if (v9)
    {
      goto LABEL_18;
    }

LABEL_29:
    v13 = *(a1 + v6);
    if (v13 >= 7)
    {
      v14 = (v13 ^ 0xFF) + 1;
    }

    else
    {
      v14 = 0;
    }

    if (v14 >= 2)
    {
      return v14 - 1;
    }

    else
    {
      return 0;
    }
  }

  if (v11 > 0xFF)
  {
    v9 = *(a1 + v7);
    if (*(a1 + v7))
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  if (v11 < 2)
  {
    goto LABEL_29;
  }

LABEL_10:
  v9 = *(a1 + v7);
  if (!*(a1 + v7))
  {
    goto LABEL_29;
  }

LABEL_18:
  v12 = (v9 - 1) << v8;
  if (v7 > 3)
  {
    v12 = 0;
  }

  if (v7)
  {
    if (v7 > 3)
    {
      LODWORD(v7) = 4;
    }

    if (v7 > 2)
    {
      if (v7 == 3)
      {
        LODWORD(v7) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v7) = *a1;
      }
    }

    else if (v7 == 1)
    {
      LODWORD(v7) = *a1;
    }

    else
    {
      LODWORD(v7) = *a1;
    }
  }

  return (v7 | v12) + 249;
}

void sub_1D5EAEB38(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v7 = *(*(swift_getAssociatedTypeWitness() - 8) + 64);
  if (v7 <= ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32)
  {
    v7 = ((v7 + 7) & 0xFFFFFFFFFFFFFFF8) + 32;
  }

  if (v7 <= 0x10)
  {
    v7 = 16;
  }

  if ((v7 & 0xFFFFFFFFFFFFFFF8) + 48 > v7)
  {
    v7 = (v7 & 0xFFFFFFFFFFFFFFF8) + 48;
  }

  v8 = v7 + 1;
  if (a3 < 0xF9)
  {
    v9 = 0;
  }

  else if (v8 <= 3)
  {
    v12 = ((a3 + ~(-1 << (8 * v8)) - 248) >> (8 * v8)) + 1;
    if (HIWORD(v12))
    {
      v9 = 4;
    }

    else
    {
      if (v12 < 0x100)
      {
        v13 = 1;
      }

      else
      {
        v13 = 2;
      }

      if (v12 >= 2)
      {
        v9 = v13;
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

  if (a2 > 0xF8)
  {
    v10 = a2 - 249;
    if (v8 >= 4)
    {
      bzero(a1, v7 + 1);
      *a1 = v10;
      v11 = 1;
      if (v9 > 1)
      {
        goto LABEL_43;
      }

      goto LABEL_40;
    }

    v11 = (v10 >> (8 * v8)) + 1;
    if (v7 != -1)
    {
      v14 = v10 & ~(-1 << (8 * v8));
      bzero(a1, v8);
      if (v8 != 3)
      {
        if (v8 == 2)
        {
          *a1 = v14;
          if (v9 > 1)
          {
LABEL_43:
            if (v9 == 2)
            {
              *&a1[v8] = v11;
            }

            else
            {
              *&a1[v8] = v11;
            }

            return;
          }
        }

        else
        {
          *a1 = v10;
          if (v9 > 1)
          {
            goto LABEL_43;
          }
        }

LABEL_40:
        if (v9)
        {
          a1[v8] = v11;
        }

        return;
      }

      *a1 = v14;
      a1[2] = BYTE2(v14);
    }

    if (v9 > 1)
    {
      goto LABEL_43;
    }

    goto LABEL_40;
  }

  if (v9 <= 1)
  {
    if (v9)
    {
      a1[v8] = 0;
      if (!a2)
      {
        return;
      }

LABEL_29:
      a1[v7] = ~a2;
      return;
    }

LABEL_28:
    if (!a2)
    {
      return;
    }

    goto LABEL_29;
  }

  if (v9 == 2)
  {
    *&a1[v8] = 0;
    goto LABEL_28;
  }

  *&a1[v8] = 0;
  if (a2)
  {
    goto LABEL_29;
  }
}

uint64_t sub_1D5EAEF20(uint64_t result, unint64_t a2, char a3, unint64_t *a4, uint64_t (*a5)(void), uint64_t a6, unint64_t *a7)
{
  v7 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x2000000000000000) == 0)
  {
    v7 = result & 0xFFFFFFFFFFFFLL;
  }

  if (v7)
  {
    sub_1D5EB060C(0, a4, a5, a6, MEMORY[0x1E69E6F58]);
    sub_1D5EB05A8(a7, a4, a5, a6);
    return sub_1D72647EC();
  }

  return result;
}

uint64_t FormatBoxScoreDataVisualization.eventIdentifier.getter()
{
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatBoxScoreDataVisualization.tagIdentifier.getter()
{
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1D5EAF088(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 48) = v2;
}

uint64_t FormatBoxScoreDataVisualization.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

uint64_t sub_1D5EAF1B8(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 56) = v2;
}

uint64_t FormatBoxScoreDataVisualization.properties.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
}

uint64_t FormatBoxScoreDataVisualization.query.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 64);

  return v1;
}

uint64_t sub_1D5EAF2FC(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 64) = v3;
  *(v4 + 72) = v2;
}

uint64_t FormatBoxScoreDataVisualization.query.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 64) = a1;
  *(v2 + 72) = a2;
}

void *FormatBoxScoreDataVisualization.__allocating_init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v16 = swift_allocObject();
  v16[2] = a1;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = a4;
  swift_beginAccess();
  v16[6] = a5;
  swift_beginAccess();
  v16[7] = a6;
  swift_beginAccess();
  v16[8] = a7;
  v16[9] = a8;
  return v16;
}

void *FormatBoxScoreDataVisualization.init(eventIdentifier:tagIdentifier:selectors:properties:query:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v8[2] = a1;
  v8[3] = a2;
  v8[4] = a3;
  v8[5] = a4;
  swift_beginAccess();
  v8[6] = a5;
  swift_beginAccess();
  v8[7] = a6;
  swift_beginAccess();
  v8[8] = a7;
  v8[9] = a8;
  return v8;
}

uint64_t sub_1D5EAF564()
{
  v1 = *v0;
  v2 = 0x656449746E657665;
  v3 = 0x726F7463656C6573;
  v4 = 0x69747265706F7270;
  if (v1 != 3)
  {
    v4 = 0x7972657571;
  }

  if (v1 != 2)
  {
    v3 = v4;
  }

  if (*v0)
  {
    v2 = 0x746E656449676174;
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

uint64_t sub_1D5EAF61C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D5EB03DC(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D5EAF644(uint64_t a1)
{
  v2 = sub_1D5E1C84C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D5EAF680(uint64_t a1)
{
  v2 = sub_1D5E1C84C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

void *FormatBoxScoreDataVisualization.deinit()
{

  return v0;
}

uint64_t FormatBoxScoreDataVisualization.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

uint64_t FormatBoxScoreDataVisualization.encode(to:)(void *a1)
{
  v3 = v1;
  sub_1D5EB060C(0, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F58]);
  v6 = v5;
  v7 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v8);
  v10 = v16 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C84C();
  sub_1D7264B5C();
  v17 = 0;
  sub_1D72643FC();
  if (v2)
  {
    return (*(v7 + 8))(v10, v6);
  }

  v17 = 1;
  sub_1D72643FC();
  swift_beginAccess();
  if (*(v3[6] + 16))
  {

    sub_1D5E0677C(v12, v10, 2);
  }

  swift_beginAccess();
  v13 = v3[7];
  if (*(v13 + 16))
  {
    v18 = 3;
    v16[1] = v13;
    sub_1D5EB05A8(&qword_1EC87F9E8, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys);
    sub_1D5E4C584();
    sub_1D5E4C5D4();

    sub_1D72647EC();
  }

  swift_beginAccess();
  v14 = v3[8];
  v15 = v3[9];

  sub_1D5EAEF20(v14, v15, 4, &qword_1EC87F9D8, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, &qword_1EC87F9E8);
  (*(v7 + 8))(v10, v6);
}

uint64_t FormatBoxScoreDataVisualization.__allocating_init(from:)(void *a1)
{
  v2 = swift_allocObject();
  FormatBoxScoreDataVisualization.init(from:)(a1);
  return v2;
}

void *FormatBoxScoreDataVisualization.init(from:)(void *a1)
{
  v4 = *v1;
  v39 = v2;
  v40 = v4;
  sub_1D5E18934(0);
  v35 = v5;
  v33 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5, v6);
  v34 = &v33 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5C8CD38();
  v36 = *(v8 - 8);
  v37 = v8;
  MEMORY[0x1EEE9AC00](v8, v9);
  v11 = &v33 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB060C(0, &qword_1EC880278, sub_1D5E1C84C, &type metadata for FormatBoxScoreDataVisualization.CodingKeys, MEMORY[0x1E69E6F48]);
  v13 = v12;
  v38 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v16 = &v33 - v15;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5E1C84C();
  v17 = v39;
  v18 = a1;
  v19 = v1;
  sub_1D7264B0C();
  if (v17)
  {
    swift_deallocPartialClassInstance();
  }

  else
  {
    v20 = v11;
    v22 = v36;
    v21 = v37;
    LOBYTE(v41) = 0;
    v1[2] = sub_1D72642BC();
    v1[3] = v23;
    LOBYTE(v41) = 1;
    v1[4] = sub_1D72642BC();
    v1[5] = v25;
    LOBYTE(v41) = 2;
    v26 = sub_1D726434C();
    if (v26)
    {
      v44 = 2;
      sub_1D5EB0158(&qword_1EDF3BE00, 255, sub_1D5C8CD38, MEMORY[0x1E69D6380]);
      sub_1D726431C();
      v27 = sub_1D725A74C();
      (*(v22 + 8))(v20, v21);
    }

    else
    {
      v27 = MEMORY[0x1E69E7CD0];
    }

    v19[6] = v27;
    LOBYTE(v41) = 3;
    if (sub_1D726434C())
    {
      v44 = 3;
      sub_1D5EB0158(&qword_1EDF3BD70, 255, sub_1D5E18934, MEMORY[0x1E69D64C8]);
      v28 = v34;
      v29 = v35;
      sub_1D726431C();
      v30 = sub_1D725A74C();
      (*(v33 + 8))(v28, v29);
    }

    else
    {
      v30 = MEMORY[0x1E69E7CC0];
    }

    v19[7] = v30;
    v44 = 4;
    if (sub_1D726434C())
    {
      v43 = 4;
      sub_1D726431C();
      v31 = v41;
      v32 = v42;
    }

    else
    {
      v31 = 0;
      v32 = 0xE000000000000000;
    }

    (*(v38 + 8))(v16, v13);
    v19[8] = v31;
    v19[9] = v32;
  }

  __swift_destroy_boxed_opaque_existential_1(v18);
  return v19;
}

void *sub_1D5EB00D0@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = swift_allocObject();
  result = FormatBoxScoreDataVisualization.init(from:)(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

uint64_t sub_1D5EB0158(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1D5EB01A0(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5EB0158(&unk_1EC885B10, a2, type metadata accessor for FormatBoxScoreDataVisualization, &protocol conformance descriptor for FormatBoxScoreDataVisualization);
  a1[2] = sub_1D5EB0158(&unk_1EC885B50, v3, type metadata accessor for FormatBoxScoreDataVisualization, &protocol conformance descriptor for FormatBoxScoreDataVisualization);
  result = sub_1D5EB0158(&qword_1EC880280, v4, type metadata accessor for FormatBoxScoreDataVisualization, &protocol conformance descriptor for FormatBoxScoreDataVisualization);
  a1[3] = result;
  return result;
}

unint64_t sub_1D5EB02D8()
{
  result = qword_1EC880288;
  if (!qword_1EC880288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880288);
  }

  return result;
}

unint64_t sub_1D5EB0330()
{
  result = qword_1EC880290;
  if (!qword_1EC880290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880290);
  }

  return result;
}

unint64_t sub_1D5EB0388()
{
  result = qword_1EC880298;
  if (!qword_1EC880298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC880298);
  }

  return result;
}

uint64_t sub_1D5EB03DC(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x656449746E657665 && a2 == 0xEF7265696669746ELL;
  if (v4 || (sub_1D72646CC() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x746E656449676174 && a2 == 0xED00007265696669 || (sub_1D72646CC() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x726F7463656C6573 && a2 == 0xE900000000000073 || (sub_1D72646CC() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69747265706F7270 && a2 == 0xEA00000000007365 || (sub_1D72646CC() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x7972657571 && a2 == 0xE500000000000000)
  {

    return 4;
  }

  else
  {
    v6 = sub_1D72646CC();

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

uint64_t sub_1D5EB05A8(unint64_t *a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    sub_1D5EB060C(255, a2, a3, a4, MEMORY[0x1E69E6F58]);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EB060C(uint64_t a1, unint64_t *a2, uint64_t (*a3)(void), uint64_t a4, uint64_t (*a5)(uint64_t, uint64_t, uint64_t))
{
  if (!*a2)
  {
    v9 = a3();
    v10 = a5(a1, a4, v9);
    if (!v11)
    {
      atomic_store(v10, a2);
    }
  }
}

id sub_1D5EB0674(double a1, double a2, double a3, double a4)
{
  v8 = objc_allocWithZone(swift_getObjCClassFromMetadata());

  return [v8 initWithFrame_];
}

id WebEmbedErrorView.__allocating_init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = objc_allocWithZone(v4);

  return [v9 initWithFrame_];
}

char *WebEmbedErrorView.init(frame:)(double a1, double a2, double a3, double a4)
{
  v9 = [objc_allocWithZone(MEMORY[0x1E69DCC10]) initWithFrame_];
  *&v4[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label] = v9;
  v49.receiver = v4;
  v49.super_class = type metadata accessor for WebEmbedErrorView();
  v10 = objc_msgSendSuper2(&v49, sel_initWithFrame_, a1, a2, a3, a4);
  v11 = OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label;
  v12 = *&v10[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v14 = objc_opt_self();
  v15 = v10;
  v16 = v12;
  v17 = [v14 bundleForClass_];
  sub_1D725811C();

  v18 = sub_1D726203C();

  [v16 setText_];

  v19 = *&v10[v11];
  v20 = *MEMORY[0x1E69DDCF8];
  v21 = objc_allocWithZone(MEMORY[0x1E69DCA40]);
  v22 = v19;
  v23 = [v21 initForTextStyle_];
  v24 = [objc_opt_self() systemFontOfSize_];
  v25 = [v23 scaledFontForFont_];

  [v22 setFont_];
  [*&v10[v11] setTextAlignment_];
  v26 = *&v10[v11];
  v27 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  v28 = v26;
  v29 = [v27 initWithRed:0.556862745 green:0.556862745 blue:0.576470588 alpha:1.0];
  [v28 setTextColor_];

  [*&v10[v11] setTranslatesAutoresizingMaskIntoConstraints_];
  [*&v10[v11] setNumberOfLines_];
  v30 = *&v10[v11];
  v31 = v15;
  [v31 addSubview_];
  v32 = [*&v10[v11] leadingAnchor];
  v33 = [v31 leadingAnchor];
  v34 = [v32 constraintEqualToAnchor_];

  [v34 setActive_];
  v35 = [*&v10[v11] trailingAnchor];
  v36 = [v31 trailingAnchor];

  v37 = [v35 constraintEqualToAnchor_];
  [v37 setActive_];

  v38 = [*&v10[v11] topAnchor];
  v39 = [v31 topAnchor];

  v40 = [v38 constraintEqualToAnchor_];
  [v40 setActive_];

  v41 = [*&v10[v11] bottomAnchor];
  v42 = [v31 bottomAnchor];

  v43 = [v41 constraintEqualToAnchor_];
  [v43 setActive_];

  v44 = objc_allocWithZone(MEMORY[0x1E69DC888]);
  aBlock[4] = sub_1D5EB0D00;
  aBlock[5] = 0;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1D6E0CD34;
  aBlock[3] = &block_descriptor_2;
  v45 = _Block_copy(aBlock);
  v46 = [v44 initWithDynamicProvider_];
  _Block_release(v45);

  [v31 setBackgroundColor_];

  return v31;
}

id sub_1D5EB0D00(void *a1)
{
  v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.949019608 blue:0.968627451 alpha:1.0];
  v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.109803922 green:0.109803922 blue:0.117647059 alpha:1.0];
  v4 = [a1 userInterfaceStyle];
  if (v4 == 2)
  {
    v5 = v2;
  }

  else
  {
    v5 = v3;
  }

  if (v4 == 2)
  {
    v6 = v3;
  }

  else
  {
    v6 = v2;
  }

  return v6;
}

void sub_1D5EB0DD8()
{
  v5.receiver = v0;
  v5.super_class = type metadata accessor for WebEmbedErrorView();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  [v0 bounds];
  CGRectGetWidth(v6);
  v1 = *&v0[OBJC_IVAR____TtC8NewsFeed17WebEmbedErrorView_label];
  type metadata accessor for Localized();
  ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
  v3 = [objc_opt_self() bundleForClass_];
  sub_1D725811C();

  v4 = sub_1D726203C();

  [v1 setText_];
}

id WebEmbedErrorView.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for WebEmbedErrorView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

uint64_t FormatButtonNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1D5EB10D4(uint64_t *a1, uint64_t *a2)
{
  v3 = *a1;
  v2 = a1[1];
  v4 = *a2;
  swift_beginAccess();
  *(v4 + 16) = v3;
  *(v4 + 24) = v2;
}

uint64_t FormatButtonNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

unint64_t FormatButtonNode.size.getter@<X0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = v3;
  return sub_1D5C82CD8(v3);
}

unint64_t sub_1D5EB1220(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 32);
  sub_1D5C82CD8(v2);
  *(v3 + 32) = v2;
  return sub_1D5C92A8C(v4);
}

unint64_t FormatButtonNode.size.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 32);
  *(v1 + 32) = v2;
  return sub_1D5C92A8C(v3);
}

double FormatButtonNode.resize.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 40);

  return result;
}

uint64_t FormatButtonNode.adjustments.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
}

double FormatButtonNode.visibility.getter@<D0>(unint64_t *a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 64);
  *a1 = v3;
  return sub_1D5EB1500(v3);
}

double sub_1D5EB1500(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

double sub_1D5EB151C(unint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  v4 = *(v3 + 64);
  sub_1D5EB1500(v2);
  *(v3 + 64) = v2;
  return sub_1D5EB15C4(v4);
}

double FormatButtonNode.visibility.setter(uint64_t *a1)
{
  v2 = *a1;
  swift_beginAccess();
  v3 = *(v1 + 64);
  *(v1 + 64) = v2;
  return sub_1D5EB15C4(v3);
}

double sub_1D5EB15C4(unint64_t a1)
{
  if ((a1 >> 62) <= 1)
  {
  }

  return result;
}

uint64_t FormatButtonNode.children.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 80) = a1;
}

uint64_t FormatButtonNode.stateMasks.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 88) = a1;
}

double FormatButtonNode.action.getter@<D0>(void *a1@<X8>)
{
  *a1 = *(v1 + 96);

  return result;
}

uint64_t FormatButtonNode.actionName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 104);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatButtonNode.longPressAction.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 112);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

uint64_t FormatButtonNode.longPressActionName.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = *(v1 + 120);
  *a1 = v2;
  return sub_1D5CFCFAC(v2);
}

void FormatButtonNode.accessibilityRole.getter(uint64_t a1@<X8>)
{
  v2 = *(v1 + 136);
  *a1 = *(v1 + 128);
  *(a1 + 8) = v2;
}

uint64_t sub_1D5EB191C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 152) = v2;
}

uint64_t FormatButtonNode.selectors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 152) = a1;
}

uint64_t FormatButtonNode.name.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 160);

  return v1;
}

uint64_t FormatButtonNode.name.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 160) = a1;
  *(v2 + 168) = a2;
}

uint64_t sub_1D5EB1B3C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 176) = v2;
}

uint64_t FormatButtonNode.behaviors.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 176) = a1;
}

uint64_t sub_1D5EB1C6C(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 184) = v2;
}

uint64_t FormatButtonNode.sourceItems.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 184) = a1;
}

uint64_t FormatButtonNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[24];
  v3 = v1[25];
  v4 = v1[26];
  v5 = v1[27];
  v6 = v1[28];
  v7 = v1[29];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t sub_1D5EB1D80(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (result)
  {

    sub_1D5DEA234(a5);
  }

  return result;
}

uint64_t FormatButtonNode.__allocating_init(identifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:children:stateMasks:action:actionName:longPressAction:longPressActionName:accessibilityRole:animation:selectors:name:behaviors:sourceItems:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, char a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v25 = swift_allocObject();
  v26 = *a3;
  v27 = *a4;
  v37 = *a7;
  v28 = *a11;
  v29 = *a12;
  v30 = *a14;
  v41 = *a15;
  v42 = *a13;
  v40 = *(a15 + 8);
  v31 = *(a22 + 32);
  v32 = *(a22 + 40);
  *(v25 + 168) = 0;
  *(v25 + 160) = 0;
  swift_beginAccess();
  *(v25 + 16) = a1;
  *(v25 + 24) = a2;
  swift_beginAccess();
  *(v25 + 32) = v26;
  *(v25 + 40) = v27;
  swift_beginAccess();
  *(v25 + 48) = a5;
  swift_beginAccess();
  *(v25 + 56) = a6;
  swift_beginAccess();
  *(v25 + 64) = v37;
  swift_beginAccess();
  *(v25 + 72) = a8;
  swift_beginAccess();
  *(v25 + 80) = a9;
  swift_beginAccess();
  *(v25 + 88) = a10;
  *(v25 + 96) = v28;
  *(v25 + 104) = v29;
  *(v25 + 112) = v42;
  *(v25 + 120) = v30;
  *(v25 + 128) = v41;
  *(v25 + 136) = v40;
  *(v25 + 144) = a16;
  swift_beginAccess();
  *(v25 + 152) = a17;
  swift_beginAccess();
  *(v25 + 160) = a18;
  *(v25 + 168) = a19;
  swift_beginAccess();
  *(v25 + 176) = a20;
  swift_beginAccess();
  *(v25 + 184) = a21;
  v33 = *(a22 + 16);
  *(v25 + 192) = *a22;
  *(v25 + 208) = v33;
  *(v25 + 224) = v31;
  *(v25 + 232) = v32;
  return v25;
}

uint64_t FormatButtonNode.init(identifier:size:resize:adjustments:zIndex:visibility:isUserInteractionEnabled:children:stateMasks:action:actionName:longPressAction:longPressActionName:accessibilityRole:animation:selectors:name:behaviors:sourceItems:flex:)(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4, uint64_t a5, uint64_t a6, uint64_t *a7, char a8, uint64_t a9, uint64_t a10, uint64_t *a11, uint64_t *a12, uint64_t *a13, uint64_t *a14, uint64_t *a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22)
{
  v27 = *a3;
  v28 = *a4;
  v29 = *a7;
  v36 = *a12;
  v37 = *a11;
  v34 = *a14;
  v35 = *a13;
  v33 = *a15;
  v32 = *(a15 + 8);
  v39 = *(a22 + 40);
  v40 = *(a22 + 32);
  *(v22 + 168) = 0;
  *(v22 + 160) = 0;
  swift_beginAccess();
  *(v22 + 16) = a1;
  *(v22 + 24) = a2;
  swift_beginAccess();
  *(v22 + 32) = v27;
  *(v22 + 40) = v28;
  swift_beginAccess();
  *(v22 + 48) = a5;
  swift_beginAccess();
  *(v22 + 56) = a6;
  swift_beginAccess();
  *(v22 + 64) = v29;
  swift_beginAccess();
  *(v22 + 72) = a8;
  swift_beginAccess();
  *(v22 + 80) = a9;
  swift_beginAccess();
  *(v22 + 88) = a10;
  *(v22 + 96) = v37;
  *(v22 + 104) = v36;
  *(v22 + 112) = v35;
  *(v22 + 120) = v34;
  *(v22 + 128) = v33;
  *(v22 + 136) = v32;
  *(v22 + 144) = a16;
  swift_beginAccess();
  *(v22 + 152) = a17;
  swift_beginAccess();
  *(v22 + 160) = a18;
  *(v22 + 168) = a19;
  swift_beginAccess();
  *(v22 + 176) = a20;
  swift_beginAccess();
  *(v22 + 184) = a21;
  v30 = *(a22 + 16);
  *(v22 + 192) = *a22;
  *(v22 + 208) = v30;
  *(v22 + 224) = v40;
  *(v22 + 232) = v39;
  return v22;
}

void *FormatButtonNode.deinit()
{

  sub_1D5C92A8C(*(v0 + 32));

  sub_1D5EB15C4(*(v0 + 64));

  sub_1D5C84FF4(*(v0 + 104));
  sub_1D5C84FF4(*(v0 + 112));
  sub_1D5C84FF4(*(v0 + 120));

  sub_1D5EB2398(*(v0 + 192), *(v0 + 200), *(v0 + 208), *(v0 + 216), *(v0 + 224), *(v0 + 232));
  return v0;
}

uint64_t sub_1D5EB2398(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6)
{
  if (result)
  {

    sub_1D5CBF568(a5);
  }

  return result;
}

uint64_t FormatButtonNode.__deallocating_deinit()
{
  FormatButtonNode.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB244C(uint64_t a1, uint64_t a2)
{
  result = sub_1D5EB565C(&qword_1EC8802A8, a2, type metadata accessor for FormatButtonNode, &protocol conformance descriptor for FormatButtonNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB24A4(void *a1, uint64_t a2)
{
  a1[1] = sub_1D5EB565C(&qword_1EDF308A0, a2, type metadata accessor for FormatButtonNode, &protocol conformance descriptor for FormatButtonNode);
  a1[2] = sub_1D5EB565C(&qword_1EDF11538, v3, type metadata accessor for FormatButtonNode, &protocol conformance descriptor for FormatButtonNode);
  result = sub_1D5EB565C(&qword_1EC8802B0, v4, type metadata accessor for FormatButtonNode, &protocol conformance descriptor for FormatButtonNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EB2580(uint64_t a1, uint64_t a2)
{
  result = sub_1D5EB565C(&qword_1EC8802B8, a2, type metadata accessor for FormatButtonNode, &protocol conformance descriptor for FormatButtonNode);
  *(a1 + 8) = result;
  return result;
}

void sub_1D5EB25D8(uint64_t a1, uint64_t a2, void *a3, void (**a4)(char *, uint64_t), uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9)
{
  v100 = a8;
  v115 = a2;
  sub_1D5EB56C0(0, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
  MEMORY[0x1EEE9AC00](v14 - 8, v15);
  v99 = &v91 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17, v18);
  v103 = &v91 - v19;
  v98 = type metadata accessor for FormatNodeStateData.Data(0);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98, v20);
  v102 = &v91 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = type metadata accessor for FormatButtonNodeData(0);
  MEMORY[0x1EEE9AC00](v22 - 8, v23);
  v105 = &v91 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5EB56C0(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  MEMORY[0x1EEE9AC00](v25 - 8, v26);
  v108 = &v91 - ((v27 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28, v29);
  v96 = &v91 - v30;
  MEMORY[0x1EEE9AC00](v31, v32);
  v109 = &v91 - v33;
  v34 = type metadata accessor for FormatAction(0);
  MEMORY[0x1EEE9AC00](v34 - 8, v35);
  v104 = &v91 - ((v36 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v37, v38);
  v40 = &v91 - v39;
  v107 = type metadata accessor for FormatButtonNodeDataAction(0);
  v112 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107, v41);
  v101 = &v91 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v43, v44);
  v111 = &v91 - v45;
  swift_unownedRetainStrong();

  swift_unownedRetainStrong();
  v46 = a3[12];

  swift_unownedRetainStrong();
  v113 = a3[13];
  sub_1D5CFCFAC(v113);

  v116 = v46;
  v110 = a6;
  v106 = a7;
  sub_1D715EC34(a6, a7, a4);
  v47 = *(a5 + 32);
  v116 = v46;

  v48 = v114;
  sub_1D715ED70(a4, v115, v40);
  if (v48)
  {

    sub_1D5C84FF4(v113);

    return;
  }

  v94 = v40;
  v93 = v47;
  v92 = a5;
  v95 = a4;
  v114 = 0;

  v49 = v113;
  if ((~v113 & 0xF000000000000007) != 0)
  {
    v116 = v113;
    v51 = v95;
    sub_1D6E5B0C8(v110, v106, v95);
    v116 = v49;

    v54 = v114;
    v52 = v115;
    v55 = sub_1D6E5B35C(v51, v115, 0, 0);
    v114 = v54;
    if (v54)
    {

      sub_1D5C84FF4(v49);

      sub_1D5EB5840(v94, type metadata accessor for FormatAction);
      return;
    }

    v50 = v55;
    v53 = a3;

    sub_1D5C84FF4(v49);
  }

  else
  {

    v50 = 0;
    v51 = v95;
    v52 = v115;
    v53 = a3;
  }

  v56 = v111;
  sub_1D5EB5714(v94, v111);
  *(v56 + *(v107 + 20)) = v50;
  v57 = v112 + 56;
  v58 = *(v112 + 56);
  v59 = v109;
  v58(v109, 1, 1);
  swift_unownedRetainStrong();
  v60 = v53[14];
  sub_1D5CFCFAC(v60);

  v61 = v108;
  if ((~v60 & 0xF000000000000007) != 0)
  {
    v112 = v57;
    v113 = v58;
    swift_unownedRetainStrong();

    swift_unownedRetainStrong();
    v65 = v53[15];
    sub_1D5CFCFAC(v65);

    v116 = v60;
    sub_1D715EC34(v100, a9, v51);
    v116 = v60;

    v66 = v114;
    sub_1D715ED70(v51, v52, v104);
    if (v66)
    {

      sub_1D5C84FF4(v60);
      sub_1D5C84FF4(v65);
      v56 = v111;
      goto LABEL_19;
    }

    v114 = 0;

    if ((~v65 & 0xF000000000000007) != 0)
    {
      v116 = v65;
      v68 = v95;
      sub_1D6E5B0C8(v100, a9, v95);
      v116 = v65;

      v69 = v114;
      v70 = sub_1D6E5B35C(v68, v52, 0, 0);
      v56 = v111;
      v114 = v69;
      if (v69)
      {

        sub_1D5C84FF4(v65);

        sub_1D5C84FF4(v60);
        sub_1D5EB5840(v104, type metadata accessor for FormatAction);
        goto LABEL_19;
      }

      v67 = v70;

      sub_1D5C84FF4(v65);

      sub_1D5C84FF4(v60);
    }

    else
    {
      sub_1D5C84FF4(v60);
      v67 = 0;
      v56 = v111;
    }

    sub_1D5EB57E4(v59, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
    v71 = v96;
    sub_1D5EB5714(v104, v96);
    *(v71 + *(v107 + 20)) = v67;
    (v113)(v71, 0, 1);
    sub_1D5EB593C(v71, v59);
    v62 = v105;
    v64 = v102;
    v63 = v103;
    v61 = v108;
  }

  else
  {
    v62 = v105;
    v64 = v102;
    v63 = v103;
  }

  v72 = v101;
  sub_1D5EB58A0(v56, v101, type metadata accessor for FormatButtonNodeDataAction);
  sub_1D5EB5778(v59, v61, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  v73 = v114;
  sub_1D6A64AB8(v72, v61, v62);
  if (!v73)
  {
    v75 = v110;
    sub_1D5EB58A0(v62, v64, type metadata accessor for FormatButtonNodeData);
    v76 = v98;
    swift_storeEnumTagMultiPayload();
    v77 = *(v92 + 24);
    sub_1D5EB58A0(v64, v63, type metadata accessor for FormatNodeStateData.Data);
    (*(v97 + 56))(v63, 0, 1, v76);
    v78 = v64;
    v79 = v99;
    sub_1D5EB5778(v63, v99, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    swift_beginAccess();
    v80 = v106;

    v113 = v77;
    v114 = 0;
    v81 = v79;
    v82 = v80;
    sub_1D6D60A18(v81, v75, v80);
    swift_endAccess();
    sub_1D5EB57E4(v63, &qword_1EDF2C470, type metadata accessor for FormatNodeStateData.Data);
    sub_1D5EB5840(v78, type metadata accessor for FormatNodeStateData.Data);
    swift_unownedRetainStrong();
    swift_beginAccess();
    v83 = v53[23];

    MEMORY[0x1EEE9AC00](v84, v85);
    v87 = v114;
    v86 = v115;
    *(&v91 - 2) = v95;
    *(&v91 - 1) = v86;
    v88 = sub_1D5FBC110(sub_1D5EB5908, (&v91 - 4), v83);

    if (!v87)
    {
      v89 = v113;
      swift_beginAccess();
      swift_bridgeObjectRetain_n();

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v117 = *(v89 + 40);
      *(v89 + 40) = 0x8000000000000000;
      sub_1D6D77BEC(v110, v82, v88, v110, v82, isUniquelyReferenced_nonNull_native);
      *(v89 + 40) = v117;
      swift_endAccess();
    }

    sub_1D5EB5840(v105, type metadata accessor for FormatButtonNodeData);
    v74 = v109;
    goto LABEL_23;
  }

LABEL_19:
  v74 = v59;
LABEL_23:
  sub_1D5EB57E4(v74, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  sub_1D5EB5840(v56, type metadata accessor for FormatButtonNodeDataAction);
}

uint64_t sub_1D5EB3130(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v32 = a6;
  sub_1D5EB51BC(0);
  v14 = v13;
  v33 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13, v15);
  v17 = (&v28 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v18 - 8, v19);
  v21 = &v28 - v20;
  v37 = a1;
  v22 = sub_1D7259B8C();
  (*(*(v22 - 8) + 56))(v21, 1, 1, v22);
  KeyPath = swift_getKeyPath();
  swift_beginAccess();
  v36 = *(a4 + 32);
  sub_1D5C82CD8(v36);
  v31 = v17;
  v23 = v34;
  sub_1D5BEB9F4(a5, a2, a3, v17);
  if (v23)
  {

    sub_1D5C92A8C(v36);
  }

  else
  {
    v34 = v14;
    sub_1D5C92A8C(v36);
    v24 = swift_allocObject();
    v25 = v30;
    v24[2] = v29;
    v24[3] = a4;
    v24[4] = v25;
    v24[5] = a2;
    v28 = a2;
    v24[6] = a3;
    v24[7] = a5;
    sub_1D5EB5290(0);
    sub_1D5EB565C(&qword_1EDF3C1F0, 255, sub_1D5EB5290, MEMORY[0x1E69D6F40]);

    v26 = v31;
    sub_1D72599AC();

    (*(v33 + 8))(v26, v34);
  }

  return sub_1D5EB57E4(v21, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

void sub_1D5EB3478(double **a1@<X0>, unint64_t *a2@<X1>, void *a3@<X2>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, uint64_t *a9@<X8>)
{
  v11 = *a2;
  v12 = a3[2];
  v13 = a3[3];
  if (v12)
  {
    v57 = *a1;
    v63 = a9;
    v16 = (*(v12 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_inventory) + OBJC_IVAR____TtC8NewsFeed22FormatPackageInventory__styles);
    swift_beginAccess();
    v17 = v11;
    v18 = v13;
    v20 = *v16;
    v19 = v16[1];
    v21 = *(a4 + 144);
    sub_1D5EB52B0(v11);
    sub_1D5EB5328(v12, v18);

    sub_1D6FBAE48(v21, v12, v20, v19);
    v23 = v22;

    if (v9)
    {
      sub_1D5EB52CC(v12, v18);
      sub_1D5EB530C(v11);
      return;
    }

    if (v23)
    {

      sub_1D6A45640(v12);
      v26 = v25;

      v49 = v17;
      if (v26)
      {
        swift_beginAccess();

        sub_1D6D60C08(v26, a6, a7);
        swift_endAccess();
      }
    }

    else
    {
      v49 = v11;
    }

    v59 = FormatLayoutAttributes.reposition(frame:)(v57[2], v57[3], v57[4], v57[5]);
    swift_beginAccess();
    v38 = a3[4];
    v39 = *(a4 + 40);
    if (v39 && (v40 = *(v39 + 16), swift_beginAccess(), *(*(v40 + 16) + 16)))
    {
      v56 = v40;
    }

    else
    {
      v56 = 0;
    }

    swift_beginAccess();
    v53 = *(a4 + 56);
    swift_beginAccess();
    v41 = *(a4 + 64);

    sub_1D5EB1500(v41);
    sub_1D615B4A8(a8, &v64);

    sub_1D5EB15C4(v41);
    v61 = v64;
    swift_beginAccess();
    v42 = *(a4 + 72);
    v43 = *(a4 + 128);
    v44 = *(a4 + 136);
    swift_beginAccess();
    v46 = *(a4 + 160);
    v45 = *(a4 + 168);
    type metadata accessor for FormatButtonNodeLayoutAttributes();
    v47 = swift_allocObject();
    *(v47 + 16) = v59;
    *(v47 + 24) = v38;
    *(v47 + 32) = v56;
    *(v47 + 40) = v53;
    *(v47 + 48) = v61;
    *(v47 + 56) = v42;
    *(v47 + 64) = v43;
    *(v47 + 72) = v44;
    *(v47 + 80) = v46;
    *(v47 + 88) = v45;
    v48 = swift_allocObject();
    *(v48 + 16) = v47;

    sub_1D5EB52CC(v12, v18);
    sub_1D5EB530C(v49);
    v37 = v48 | 0x3000000000000004;
  }

  else
  {
    if ((~v11 & 0xF000000000000007) == 0 || ((v11 >> 59) & 0x1E | (v11 >> 2) & 1) != 7)
    {
      sub_1D5EB52B0(*a2);
      sub_1D5EB52CC(0, v13);
      sub_1D5EB530C(v11);
      *a9 = 0xA000000000000004;
      return;
    }

    v27 = *((v11 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
    v63 = a9;
    v28 = FormatLayoutAttributes.reposition(frame:)((*a1)[2], (*a1)[3], (*a1)[4], (*a1)[5]);
    v29 = *(v27 + 24);
    v30 = *(v27 + 32);
    v31 = *(v27 + 48);
    v32 = *(v27 + 56);
    v55 = *(v27 + 64);
    v58 = *(v27 + 40);
    v52 = *(v27 + 72);
    v33 = *(v27 + 80);
    v34 = *(v27 + 88);
    v50 = v33;
    type metadata accessor for FormatButtonNodeLayoutAttributes();
    v62 = v13;
    v35 = swift_allocObject();
    *(v35 + 16) = v28;
    *(v35 + 24) = v29;
    *(v35 + 32) = v30;
    *(v35 + 40) = v58;
    *(v35 + 48) = v31;
    *(v35 + 56) = v32;
    *(v35 + 64) = v55;
    *(v35 + 72) = v52;
    *(v35 + 80) = v50;
    *(v35 + 88) = v34;
    v36 = swift_allocObject();
    *(v36 + 16) = v35;
    sub_1D5EB52B0(v11);

    sub_1D5EB1500(v31);

    sub_1D5EB52CC(0, v62);
    sub_1D5EB530C(v11);
    v37 = v36 | 0x3000000000000004;
  }

  *v63 = v37;
}

double sub_1D5EB3944(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v40 = a6;
  v41 = a7;
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v12 - 8, v13);
  v42 = &v34 - v14;
  v43[0] = a1;
  swift_getKeyPath();
  v46 = MEMORY[0x1E69E6158];
  v47 = MEMORY[0x1E69D74F0];
  v37 = a2;
  v44 = a2;
  v45 = a3;
  sub_1D5EB5368(0);
  v16 = v15;
  sub_1D5EB565C(&qword_1EDF3C040, 255, sub_1D5EB5368, MEMORY[0x1E69D7158]);
  sub_1D5EB565C(&qword_1EDF3C168, 255, sub_1D5EB544C, MEMORY[0x1E69D6F60]);
  v38 = a3;

  v36 = v16;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v35 = a1;
  v48 = a1;
  swift_getKeyPath();
  v39 = a4;
  v17 = *(a4 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
  swift_beginAccess();
  v19 = *(a5 + 16);
  v18 = *(a5 + 24);
  v20 = *(v17 + 40);
  if (v20)
  {
    v44 = *(v17 + 32);
    v45 = v20;

    MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
    MEMORY[0x1DA6F9910](v19, v18);

    v19 = v44;
    v18 = v45;
  }

  else
  {
  }

  v21 = MEMORY[0x1E69E6158];
  v46 = MEMORY[0x1E69E6158];
  v22 = MEMORY[0x1E69D74F0];
  v47 = MEMORY[0x1E69D74F0];
  v44 = v19;
  v45 = v18;
  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v23 = v35;
  v48 = v35;
  swift_getKeyPath();
  v25 = *(a5 + 16);
  v24 = *(a5 + 24);
  v46 = v21;
  v47 = v22;
  v44 = v25;
  v45 = v24;

  sub_1D7259A0C();

  __swift_destroy_boxed_opaque_existential_1(&v44);
  v44 = v23;
  v26 = sub_1D7259B8C();
  v27 = v42;
  (*(*(v26 - 8) + 56))(v42, 1, 1, v26);
  v28 = swift_allocObject();
  v30 = v39;
  v29 = v40;
  v28[2] = a5;
  v28[3] = v30;
  v31 = v37;
  v28[4] = v29;
  v28[5] = v31;
  v32 = v41;
  v28[6] = v38;
  v28[7] = v32;

  sub_1D7259AAC();
  sub_1D5EB57E4(v27, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);

  return result;
}

void sub_1D5EB3D38(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v81 = a7;
  v92 = a6;
  v84 = a5;
  v83 = a4;
  v80 = a1;
  sub_1D5EB56C0(0, &qword_1EDF27F90, type metadata accessor for FormatSourceMapContext);
  MEMORY[0x1EEE9AC00](v9 - 8, v10);
  v77 = (v66 - v11);
  v12 = sub_1D725A36C();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12, v14);
  v78 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16, v17);
  v19 = v66 - v18;
  swift_beginAccess();

  sub_1D6B0ACE8(v20, 0);
  v21 = v12;

  v22 = sub_1D6B0B228(0, 0);

  v23 = *MEMORY[0x1E69D7378];
  v26 = *(v13 + 104);
  v24 = v13 + 104;
  v25 = v26;
  v26(v19, *MEMORY[0x1E69D7378], v21);
  v76 = a2;
  v85 = a2;
  v86 = v84;
  v87 = v92;
  v82 = a3;
  v88 = a3;
  v89 = v22;
  v90 = v83;
  sub_1D5EB5388(0, &qword_1EDF3BF38, MEMORY[0x1E69D73B8]);
  v28 = v27;
  swift_allocObject();
  v29 = v79;
  v30 = sub_1D725A4EC();
  if (v29)
  {
    goto LABEL_3;
  }

  v71 = v28;
  v72 = v25;
  v73 = v23;
  v74 = v24;
  v75 = v21;
  v31 = v30;
  v32 = swift_allocObject();
  v32[2] = v84;
  v33 = v76;
  v32[3] = v92;
  v32[4] = v33;
  v32[5] = v82;
  v32[6] = v31;
  v32[7] = v81;
  v32[8] = v22;

  sub_1D7259D4C();
  v66[2] = v31;

  swift_beginAccess();
  v34 = *(v33 + 88);
  v67 = *(v34 + 16);
  if (!v67)
  {

LABEL_3:

    return;
  }

  v66[1] = v22;
  v69 = *(v83 + 24);

  swift_beginAccess();
  v35 = 0;
  v68 = xmmword_1D7273AE0;
  v36 = v33;
  v70 = v34;
  while (v35 < *(v34 + 16))
  {
    v79 = v35;
    v37 = *(v34 + 8 * v35 + 32);
    v91 = v37;

    sub_1D71C0F40();
    v38 = v82;
    sub_1D6B0A84C(v39, v40);

    v41 = v36;
    v42 = *(v36 + 16);
    v43 = *(v36 + 24);

    v84 = sub_1D6E8DD40(v42, v43);
    v92 = v44;

    if (*(v69 + 16))
    {
      v45 = v77;
      *v77 = v38;
      v46 = type metadata accessor for FormatSourceMapContext(0);
      swift_storeEnumTagMultiPayload();
      (*(*(v46 - 8) + 56))(v45, 0, 1, v46);
      swift_beginAccess();

      v47 = v92;

      sub_1D6D60828(v45, v84, v47);
      swift_endAccess();
    }

    v91 = v37;
    sub_1D71C0F40();
    v49 = v48;
    v50 = v38;
    v52 = v51;
    sub_1D5C3C480();
    inited = swift_initStackObject();
    *(inited + 16) = v68;
    *(inited + 32) = v49;
    *(inited + 40) = v52;

    v54 = sub_1D5B86020(inited);
    swift_setDeallocating();
    sub_1D5BFB68C(inited + 32);

    v56 = sub_1D5D6021C(v55, v54);
    sub_1D6B0ACE8(v56, 0);

    sub_1D6B0A84C(v49, v52);

    v57 = sub_1D6B0B228(0, 0);

    v58 = v72(v78, v73, v75);
    MEMORY[0x1EEE9AC00](v58, v59);
    v60 = v84;
    v66[-6] = v41;
    v66[-5] = v60;
    v66[-4] = v92;
    v66[-3] = v50;
    v61 = v83;
    v66[-2] = v57;
    v66[-1] = v61;
    swift_allocObject();
    v62 = sub_1D725A4EC();

    v63 = swift_allocObject();
    v64 = v92;
    v63[2] = v84;
    v63[3] = v64;
    v63[4] = v41;
    v63[5] = v57;
    v65 = v81;
    v63[6] = v62;
    v63[7] = v65;
    v63[8] = v37;

    sub_1D7259D4C();

    v36 = v41;
    v35 = v79 + 1;
    v34 = v70;
    if (v67 == v79 + 1)
    {

      return;
    }
  }

  __break(1u);
}

uint64_t sub_1D5EB4604(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v31 = a6;
  sub_1D5EB51BC(0);
  v15 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v27 - v21;
  v34 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  swift_getKeyPath();
  swift_beginAccess();
  v33 = *(a4 + 32);
  sub_1D5C82CD8(v33);
  sub_1D5BEB9F4(a5, a2, a3, v18);
  if (v8)
  {

    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    v24 = swift_allocObject();
    v27 = a3;
    v28 = v15;
    v25 = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v25;
    sub_1D5EB563C(0);
    sub_1D5EB565C(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);

    sub_1D7259AFC();

    (*(v32 + 8))(v18, v28);
  }

  return sub_1D5EB57E4(v22, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

void sub_1D5EB4914(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v5 = *a1;
  v6 = *(a2 + 16);
  v7 = *(a2 + 24);
  *(a2 + 16) = a3;
  *(a2 + 24) = v5;

  sub_1D5EB52CC(v6, v7);
  *a4 = 0xA000000000000004;
}

uint64_t sub_1D5EB4978(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v29 = a7;
  v30 = a8;
  v31 = a6;
  sub_1D5EB51BC(0);
  v15 = v14;
  v32 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14, v16);
  v18 = (&v27 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0));
  sub_1D5EB56C0(0, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
  MEMORY[0x1EEE9AC00](v19 - 8, v20);
  v22 = &v27 - v21;
  v34 = a1;
  v23 = sub_1D7259B8C();
  (*(*(v23 - 8) + 56))(v22, 1, 1, v23);
  swift_getKeyPath();
  swift_beginAccess();
  v33 = *(a4 + 32);
  sub_1D5C82CD8(v33);
  sub_1D5BEB9F4(a5, a2, a3, v18);
  if (v8)
  {

    sub_1D5C92A8C(v33);
  }

  else
  {
    sub_1D5C92A8C(v33);
    v24 = swift_allocObject();
    v27 = a3;
    v28 = v15;
    v25 = v30;
    *(v24 + 16) = v29;
    *(v24 + 24) = v25;
    sub_1D5EB563C(0);
    sub_1D5EB565C(&qword_1EDF3C118, 255, sub_1D5EB563C, MEMORY[0x1E69D6FB0]);

    sub_1D7259AFC();

    (*(v32 + 8))(v18, v28);
  }

  return sub_1D5EB57E4(v22, &qword_1EDF3C120, MEMORY[0x1E69D6FA0]);
}

uint64_t sub_1D5EB4C88@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v7 = *a1;
  swift_beginAccess();

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v10 = *(a2 + 32);
  *(a2 + 32) = 0x8000000000000000;
  sub_1D6D77F5C(v7, a3, isUniquelyReferenced_nonNull_native);

  *(a2 + 32) = v10;
  result = swift_endAccess();
  *a4 = 0xA000000000000004;
  return result;
}

uint64_t sub_1D5EB4D48(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v8 = v7;
  swift_beginAccess();
  v16 = *(a2[10] + 16);
  result = v16 + 3;
  if (!__OFADD__(v16, 3))
  {
    v33 = a7;
    sub_1D7259E0C();
    v38[0] = a1;
    swift_getKeyPath();
    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = a3;
    v35 = a4;
    sub_1D5EB5368(0);
    sub_1D5EB565C(&qword_1EDF3C040, 255, sub_1D5EB5368, MEMORY[0x1E69D7158]);
    sub_1D5EB565C(&qword_1EDF3C168, 255, sub_1D5EB544C, MEMORY[0x1E69D6F60]);

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v41 = a1;
    swift_getKeyPath();
    v18 = *(a5 + OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_namespace);
    swift_beginAccess();
    v20 = a2[2];
    v19 = a2[3];
    v21 = *(v18 + 40);
    if (v21)
    {
      v34 = *(v18 + 32);
      v35 = v21;

      MEMORY[0x1DA6F9910](14906, 0xE200000000000000);
      MEMORY[0x1DA6F9910](v20, v19);

      v20 = v34;
      v19 = v35;
    }

    else
    {
    }

    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = v20;
    v35 = v19;
    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v41 = a1;
    swift_getKeyPath();
    v23 = a2[2];
    v22 = a2[3];
    v36 = MEMORY[0x1E69E6158];
    v37 = MEMORY[0x1E69D74F0];
    v34 = v23;
    v35 = v22;

    sub_1D7259A0C();

    __swift_destroy_boxed_opaque_existential_1(&v34);
    v24 = a2[10];
    v25 = *(v24 + 16);

    if (!v25)
    {
    }

    v26 = 0;
    v27 = 32;
    while (v26 < *(v24 + 16))
    {
      v28 = *(v24 + v27);
      v29 = *(v24 + v27 + 32);
      v39[1] = *(v24 + v27 + 16);
      v39[2] = v29;
      v39[0] = v28;
      v30 = *(v24 + v27 + 48);
      v31 = *(v24 + v27 + 64);
      v32 = *(v24 + v27 + 80);
      v40 = *(v24 + v27 + 96);
      v39[4] = v31;
      v39[5] = v32;
      v39[3] = v30;
      sub_1D5C5C4CC(v39, &v34);
      sub_1D6FBF7BC(a1, a6, v33);
      if (v8)
      {

        return sub_1D5C5C540(v39);
      }

      ++v26;
      result = sub_1D5C5C540(v39);
      v27 += 104;
      if (v25 == v26)
      {
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB5148()
{
  sub_1D5EB52CC(*(v0 + 16), *(v0 + 24));

  return swift_deallocClassInstance();
}

void sub_1D5EB51BC(uint64_t a1)
{
  if (!qword_1EDF3BF10)
  {
    sub_1D5EB5218();
    v1 = sub_1D725A52C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BF10);
    }
  }
}

unint64_t sub_1D5EB5218()
{
  result = qword_1EDF33A20;
  if (!qword_1EDF33A20)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDF33A20);
  }

  return result;
}

double sub_1D5EB52B0(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1D5EB52CC(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

double sub_1D5EB530C(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

double sub_1D5EB5328(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

void sub_1D5EB5388(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t, void *))
{
  if (!*a2)
  {
    v8[0] = &type metadata for FormatLayout;
    v8[1] = type metadata accessor for FormatLayoutAttributes();
    v8[2] = sub_1D5EB5218();
    v8[3] = sub_1D5EB565C(&qword_1EDF28608, 255, type metadata accessor for FormatLayoutAttributes, &protocol conformance descriptor for FormatLayoutAttributes);
    v6 = a3(a1, v8);
    if (!v7)
    {
      atomic_store(v6, a2);
    }
  }
}

void sub_1D5EB544C()
{
  if (!qword_1EDF3C160)
  {
    v0 = sub_1D725995C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EDF3C160);
    }
  }
}

uint64_t objectdestroy_43Tm(void (*a1)(void, __n128))
{

  (a1)(*(v1 + 64));

  return swift_deallocObject();
}

uint64_t sub_1D5EB565C(unint64_t *a1, uint64_t a2, uint64_t (*a3)(uint64_t), uint64_t a4)
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

void sub_1D5EB56C0(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D726393C();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D5EB5714(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for FormatAction(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EB5778(uint64_t a1, uint64_t a2, unint64_t *a3, uint64_t (*a4)(uint64_t))
{
  sub_1D5EB56C0(0, a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_1D5EB57E4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  sub_1D5EB56C0(0, a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_1D5EB5840(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D5EB58A0(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EB593C(uint64_t a1, uint64_t a2)
{
  sub_1D5EB56C0(0, qword_1EDF23650, type metadata accessor for FormatButtonNodeDataAction);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t FormatArrangementSlot.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v24 = a3;
  sub_1D5C2FF94(0, &qword_1EDF3C650, MEMORY[0x1E69E6F48]);
  v9 = v8;
  v10 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v8, v11);
  v13 = &v23 - v12;
  v14 = a1[3];
  v28 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v14);
  sub_1D5C30408();
  sub_1D7264B0C();
  if (!v4)
  {
    v16 = a2;
    v17 = a2;
    v18 = v24;
    type metadata accessor for FormatArrangementSlot.CodingType(0, v17, v24, v15);
    v27 = 0uLL;
    swift_getWitnessTable();
    sub_1D726431C();
    if (v25 <= 1u)
    {
      if (v25)
      {
        type metadata accessor for FormatArrangementSlotInstruction(0, v16, v18, v19);
        v27 = xmmword_1D7279980;
        swift_getWitnessTable();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v21 = v25;
        v22 = v26 | 0x20;
      }

      else
      {
        type metadata accessor for FormatArrangementSlotInstruction(0, v16, v18, v19);
        v27 = xmmword_1D7279980;
        swift_getWitnessTable();
        sub_1D726431C();
        (*(v10 + 8))(v13, v9);
        v21 = v25;
        v22 = v26;
      }
    }

    else if (v25 == 2)
    {
      type metadata accessor for FormatArrangementSlotInstruction(0, v16, v18, v19);
      v27 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v10 + 8))(v13, v9);
      v21 = v25;
      v22 = v26 | 0x40;
    }

    else if (v25 == 3)
    {
      type metadata accessor for FormatArrangementSlotInstruction(0, v16, v18, v19);
      v27 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v10 + 8))(v13, v9);
      v21 = v25;
      v22 = v26 | 0x60;
    }

    else
    {
      type metadata accessor for FormatArrangementSlotInstruction(0, v16, v18, v19);
      v27 = xmmword_1D7279980;
      swift_getWitnessTable();
      sub_1D726431C();
      (*(v10 + 8))(v13, v9);
      v21 = v25;
      v22 = v26 | 0x80;
    }

    *a4 = v21;
    *(a4 + 8) = v22;
  }

  return __swift_destroy_boxed_opaque_existential_1(v28);
}

uint64_t FormatArrangementSlot.encode(to:)(void *a1, uint64_t a2)
{
  sub_1D5C2FF94(0, &qword_1EDF02770, MEMORY[0x1E69E6F58]);
  v7 = v6;
  v23 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6, v8);
  v10 = &v18 - v9;
  v19 = *v2;
  v11 = *(v2 + 8);
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D5C30408();
  sub_1D7264B5C();
  v13 = v11 >> 5;
  if (v11 >> 5 <= 1)
  {
    if (!v13)
    {
      LOBYTE(v20) = 0;
      goto LABEL_9;
    }

    LOBYTE(v13) = 1;
  }

  else if (v13 != 2 && v13 != 3)
  {
    LOBYTE(v13) = 4;
  }

  LOBYTE(v20) = v13;
LABEL_9:
  v22 = 0uLL;
  v15 = *(a2 + 16);
  v14 = *(a2 + 24);
  type metadata accessor for FormatArrangementSlot.CodingType(0, v15, v14, v12);
  swift_getWitnessTable();
  sub_1D726443C();
  if (!v3)
  {
    v20 = v19;
    v21 = v11 & 1;
    v22 = xmmword_1D7279980;
    type metadata accessor for FormatArrangementSlotInstruction(0, v15, v14, v16);
    swift_getWitnessTable();
    sub_1D726443C();
  }

  return (*(v23 + 8))(v10, v7);
}

unint64_t sub_1D5EB60D0(uint64_t a1, uint64_t a2)
{
  v2 = sub_1D72641CC();

  if (v2 >= 5)
  {
    return 5;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5EB611C(unsigned __int8 a1)
{
  v1 = 7105633;
  v2 = 0x656E4F796E61;
  v3 = 1701670771;
  if (a1 != 3)
  {
    v3 = 6647407;
  }

  if (a1 != 2)
  {
    v2 = v3;
  }

  if (a1)
  {
    v1 = 7958113;
  }

  if (a1 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D5EB6194(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6180];

  return MEMORY[0x1EEE6B350](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5EB6208(uint64_t a1, uint64_t a2)
{
  WitnessTable = swift_getWitnessTable();
  v5 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69348](a1, a2, WitnessTable, v5);
}

uint64_t sub_1D5EB6274(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69358](a1, a2, a3, WitnessTable, v7);
}

uint64_t sub_1D5EB62E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();
  v7 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE69350](a1, a2, a3, WitnessTable, v7);
}

unint64_t sub_1D5EB6354@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_1D5EB60D0(*a1, a1[1]);
  *a2 = result;
  return result;
}

uint64_t sub_1D5EB638C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1D5EB611C(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t static FormatArrangementSlot.== infix(_:_:)(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4)
{
  v4 = *a1;
  v5 = *(a1 + 8);
  v6 = *a2;
  v7 = *(a2 + 8);
  v8 = v5 >> 5;
  if (v5 >> 5 <= 1)
  {
    if (v8)
    {
      if ((v7 & 0xE0) != 0x20)
      {
        goto LABEL_12;
      }
    }

    else if (v7 >= 0x20)
    {
      goto LABEL_12;
    }

    goto LABEL_10;
  }

  if (v8 == 2)
  {
    if ((v7 & 0xE0) == 0x40)
    {
      goto LABEL_10;
    }

LABEL_12:
    sub_1D5EB6610(*a1, v5);
    sub_1D5EB6610(v6, v7);
    sub_1D5EB6624(v4, v5);
    sub_1D5EB6624(v6, v7);
    v11 = 0;
    return v11 & 1;
  }

  if (v8 != 3)
  {
    if ((v7 & 0xE0) == 0x80)
    {
      goto LABEL_10;
    }

    goto LABEL_12;
  }

  if ((v7 & 0xE0) != 0x60)
  {
    goto LABEL_12;
  }

LABEL_10:
  v15 = *a1;
  v16 = v5 & 1;
  v13 = v6;
  v14 = v7 & 1;
  sub_1D5EB6610(v6, v7);
  sub_1D5EB6610(v4, v5);
  sub_1D5EB6610(v4, v5);
  sub_1D5EB6610(v6, v7);
  v11 = static FormatArrangementSlotInstruction.== infix(_:_:)(&v15, &v13, a3, a4);
  sub_1D5EB6624(v4, v5);
  sub_1D5EB6624(v6, v7);
  sub_1D5EB6624(v6, v7);
  sub_1D5EB6624(v4, v5);
  return v11 & 1;
}

uint64_t sub_1D5EB6610(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0x9Fu)
  {
  }

  return v2;
}

uint64_t sub_1D5EB6624(uint64_t result, unsigned __int8 a2)
{
  if (a2 <= 0x9Fu)
  {
  }

  return v2;
}

uint64_t sub_1D5EB667C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1D5EB66C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7C && *(a1 + 9))
  {
    return (*a1 + 124);
  }

  v3 = ((*(a1 + 8) >> 5) & 0xFFFFFF87 | (8 * ((*(a1 + 8) >> 1) & 0xF))) ^ 0x7F;
  if (v3 >= 0x7B)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D5EB6718(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7B)
  {
    *(result + 8) = 0;
    *result = a2 - 124;
    if (a3 >= 0x7C)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7C)
    {
      *(result + 9) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 2 * (((-a2 >> 3) & 0xF) - 16 * a2);
    }
  }

  return result;
}

unint64_t sub_1D5EB67D8()
{
  result = qword_1EC8802C0;
  if (!qword_1EC8802C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC8802C0);
  }

  return result;
}

id SharingArticleURLActivityItemSource.__allocating_init(headline:articleURL:mailShareLinkTextProvider:linkPresentationSource:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = sub_1D5EB83B4(a1, a2, v11, a4, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v12;
}

id SharingArticleURLActivityItemSource.init(headline:articleURL:mailShareLinkTextProvider:linkPresentationSource:)(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = a3[3];
  v10 = a3[4];
  v11 = __swift_mutable_project_boxed_opaque_existential_1(a3, v9);
  v12 = MEMORY[0x1EEE9AC00](v11, v11);
  v14 = &v18 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v15 + 16))(v14, v12);
  v16 = sub_1D5EB823C(a1, a2, v14, a4, v4, v9, v10);
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1(a3);
  return v16;
}

id SharingArticleURLActivityItemSource.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

id SharingArticleURLActivityItemSource.__deallocating_deinit()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

_OWORD *SharingArticleURLActivityItemSource.activityViewControllerPlaceholderItem(_:)@<X0>(uint64_t a1@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v3 - 8, v4);
  v6 = &v11 - v5;
  sub_1D5EB84C0(v1 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, &v11 - v5);
  v7 = sub_1D72585BC();
  v8 = *(v7 - 8);
  if ((*(v8 + 48))(v6, 1, v7) == 1)
  {
    result = sub_1D5B6EE3C(v6, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
    *(a1 + 24) = MEMORY[0x1E69E6158];
    *a1 = 0;
    *(a1 + 8) = 0xE000000000000000;
  }

  else
  {
    v12 = v7;
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v11);
    (*(v8 + 32))(boxed_opaque_existential_1, v6, v7);
    return sub_1D5B7C390(&v11, a1);
  }

  return result;
}

void SharingArticleURLActivityItemSource.activityViewController(_:itemForActivityType:)(void *a1@<X1>, uint64_t a2@<X8>)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v5 - 8, v6);
  v8 = &v71 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v12 = &v71 - v11;
  MEMORY[0x1EEE9AC00](v13, v14);
  v16 = &v71 - v15;
  MEMORY[0x1EEE9AC00](v17, v18);
  MEMORY[0x1EEE9AC00](v19, v20);
  v22 = &v71 - v21;
  MEMORY[0x1EEE9AC00](v23, v24);
  v27 = &v71 - v26;
  if (!a1)
  {
    sub_1D5EB84C0(v2 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v8);
    v39 = sub_1D72585BC();
    v40 = *(v39 - 8);
    if ((*(v40 + 48))(v8, 1, v39) != 1)
    {
      *(a2 + 24) = v39;
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v40 + 32))(boxed_opaque_existential_1, v8, v39);
      return;
    }

    v41 = MEMORY[0x1E6968FB0];
    v42 = v8;
    goto LABEL_19;
  }

  v72 = v25;
  v73 = v2;
  v28 = sub_1D726207C();
  v30 = v29;
  if (v28 == sub_1D726207C() && v30 == v31)
  {
    v43 = a1;

    goto LABEL_13;
  }

  v33 = sub_1D72646CC();
  v71 = a1;

  if (v33)
  {
LABEL_13:
    v44 = [*(v73 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) contentURL];
    if (v44)
    {
      v45 = v44;
      sub_1D72584EC();

      v46 = sub_1D72585BC();
      (*(*(v46 - 8) + 56))(v22, 0, 1, v46);
    }

    else
    {
      v46 = sub_1D72585BC();
      (*(*(v46 - 8) + 56))(v22, 1, 1, v46);
    }

    sub_1D5EB8540(v22, v27);
    sub_1D72585BC();
    v48 = *(v46 - 8);
    if ((*(v48 + 48))(v27, 1, v46) != 1)
    {
      *(a2 + 24) = v46;
      v49 = __swift_allocate_boxed_opaque_existential_1(a2);
      (*(v48 + 32))(v49, v27, v46);

      return;
    }

    v41 = MEMORY[0x1E6968FB0];
    v42 = v27;
LABEL_19:
    sub_1D5B6EE3C(v42, &qword_1EDF45B40, v41);
    *a2 = 0u;
    *(a2 + 16) = 0u;
    return;
  }

  v34 = sub_1D726207C();
  v36 = v35;
  v38 = a2;
  if (v34 == sub_1D726207C() && v36 == v37)
  {

LABEL_22:
    type metadata accessor for SharingHTMLBuilder();
    v51 = swift_allocObject();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0xE000000000000000;
    swift_beginAccess();
    *(v51 + 16) = 0;
    *(v51 + 24) = 0xE000000000000000;
    v52 = sub_1D5EB775C(v51, v73);
    v54 = v53;

    if (v54)
    {
      *(a2 + 24) = MEMORY[0x1E69E6158];

      *a2 = v52;
      *(a2 + 8) = v54;
      return;
    }

    goto LABEL_36;
  }

  v50 = sub_1D72646CC();

  if (v50)
  {
    goto LABEL_22;
  }

  if (sub_1D726207C() == 0xD000000000000024 && 0x80000001D73C0450 == v55)
  {
    v57 = v72;
    v56 = v73;
    goto LABEL_28;
  }

  v58 = sub_1D72646CC();

  v57 = v72;
  v56 = v73;
  if (v58)
  {
    goto LABEL_30;
  }

  if (sub_1D726207C() == 0xD00000000000002ELL && 0x80000001D73C0480 == v66)
  {
LABEL_28:

LABEL_30:
    v59 = [*(v56 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) contentURL];
    if (v59)
    {
      v60 = v59;
      sub_1D72584EC();

      v61 = sub_1D72585BC();
      (*(*(v61 - 8) + 56))(v16, 0, 1, v61);
    }

    else
    {
      v61 = sub_1D72585BC();
      (*(*(v61 - 8) + 56))(v16, 1, 1, v61);
    }

    sub_1D5EB8540(v16, v57);
    sub_1D72585BC();
    v62 = *(v61 - 8);
    if ((*(v62 + 48))(v57, 1, v61) == 1)
    {

      v63 = MEMORY[0x1E6968FB0];
      v64 = v57;
LABEL_35:
      sub_1D5B6EE3C(v64, &qword_1EDF45B40, v63);
LABEL_36:
      *v38 = 0u;
      *(v38 + 16) = 0u;
      return;
    }

    *(v38 + 24) = v61;
    v65 = __swift_allocate_boxed_opaque_existential_1(v38);
    (*(v62 + 32))(v65, v57, v61);
    goto LABEL_38;
  }

  v67 = sub_1D72646CC();

  if (v67)
  {
    goto LABEL_30;
  }

  sub_1D5EB84C0(v56 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v12);
  v68 = sub_1D72585BC();
  v69 = *(v68 - 8);
  if ((*(v69 + 48))(v12, 1, v68) == 1)
  {

    v63 = MEMORY[0x1E6968FB0];
    v64 = v12;
    goto LABEL_35;
  }

  *(v38 + 24) = v68;
  v70 = __swift_allocate_boxed_opaque_existential_1(v38);
  (*(v69 + 32))(v70, v12, v68);
LABEL_38:
}

LPLinkMetadata_optional __swiftcall SharingArticleURLActivityItemSource.activityViewControllerLinkMetadata(_:)(UIActivityViewController *a1)
{
  if (*(v1 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource))
  {
    sub_1D725B77C();
    v2 = [v5 linkMetadata];
    swift_unknownObjectRelease();
  }

  else
  {
    v2 = 0;
  }

  v4 = v2;
  result.value.super.isa = v4;
  result.is_nil = v3;
  return result;
}

uint64_t sub_1D5EB775C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1D72585BC();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4, v6);
  v104 = &v100 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  MEMORY[0x1EEE9AC00](v8 - 8, v9);
  v106 = &v100 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11, v12);
  v14 = &v100 - v13;
  v15 = type metadata accessor for SharingHTMLBuilder();
  v119 = v15;
  v120 = &off_1F51B62F0;
  v118[0] = a1;
  __swift_project_boxed_opaque_existential_1(v118, v15);
  v16 = off_1F51B6300[0];

  v17 = (v16)(v15, &off_1F51B62F0, v115);
  v18 = a2;
  v19 = OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline;
  v20 = [*(a2 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline) title];
  if (v20)
  {
    v21 = v20;
    v22 = sub_1D726207C();
    v24 = v23;

    v25 = v116;
    v26 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v26 + 24))(&v112, v22, v24, v25, v26);

    __swift_destroy_boxed_opaque_existential_1(v115);
    sub_1D5B63F14(&v112, v115);
    v27 = v116;
    v28 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v28 + 16))(&v112, v27, v28);
    __swift_destroy_boxed_opaque_existential_1(v115);
    sub_1D5B63F14(&v112, v115);
  }

  v29 = [*(v18 + v19) shortExcerpt];
  if (v29)
  {
    v30 = v29;
    v31 = sub_1D726207C();
    v33 = v32;

    v34 = v116;
    v35 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    (*(v35 + 56))(&v112, v31, v33, v34, v35);

    __swift_destroy_boxed_opaque_existential_1(v115);
    sub_1D5B63F14(&v112, v115);
  }

  sub_1D5EB84C0(v18 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL, v14);
  v36 = *(v5 + 48);
  v37 = v36(v14, 1, v4);
  v107 = v4;
  v105 = v5;
  if (v37 == 1)
  {
    sub_1D5B6EE3C(v14, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  }

  else
  {
    v101 = sub_1D72583DC();
    v102 = v38;
    (*(v5 + 8))(v14, v4);
    __swift_project_boxed_opaque_existential_1(v118, v119);
    DynamicType = swift_getDynamicType();
    v40 = v120;
    v109 = v18;
    v108 = v19;
    v41 = v120[1];
    v113 = DynamicType;
    v114 = v120;
    __swift_allocate_boxed_opaque_existential_1(&v112);
    v41(DynamicType, v40);
    v103 = v5 + 48;
    v42 = v113;
    v43 = v114;
    __swift_project_boxed_opaque_existential_1(&v112, v113);
    v44 = *(v109 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 24);
    v45 = *(v109 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 32);
    __swift_project_boxed_opaque_existential_1((v109 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider), v44);
    v46 = *(v45 + 8);
    v47 = swift_unknownObjectRetain();
    v48 = v46(v47, v44, v45);
    v50 = v49;
    swift_unknownObjectRelease();
    (v43[7])(v111, v48, v50, v42, v43);

    __swift_destroy_boxed_opaque_existential_1(&v112);
    sub_1D5B63F14(v111, &v112);
    v51 = v113;
    v52 = v114;
    __swift_project_boxed_opaque_existential_1(&v112, v113);
    (v52[6])(v111, v101, v102, v101, v102, v51, v52);

    __swift_destroy_boxed_opaque_existential_1(&v112);
    sub_1D5B63F14(v111, &v112);
    v53 = v116;
    v54 = v117;
    __swift_project_boxed_opaque_existential_1(v115, v116);
    sub_1D5B68374(&v112, v110);
    v55 = *(v54 + 32);
    v56 = v53;
    v18 = v109;
    v57 = v54;
    v19 = v108;
    v55(v111, v110, v56, v57);
    sub_1D5B6EE3C(v110, &qword_1EC884F40, sub_1D5EB8714);
    __swift_destroy_boxed_opaque_existential_1(v115);
    sub_1D5B63F14(v111, v115);
    __swift_destroy_boxed_opaque_existential_1(&v112);
  }

  v58 = [*(v18 + v19) articleID];
  if (v58)
  {

    if (*(v18 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic) == 1)
    {
      v59 = v18;
      __swift_project_boxed_opaque_existential_1(v118, v119);
      v60 = swift_getDynamicType();
      v61 = v120;
      v62 = v120[1];
      v113 = v60;
      v114 = v120;
      __swift_allocate_boxed_opaque_existential_1(&v112);
      v62(v60, v61);
      v63 = v113;
      v64 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      (v64[2])(v111, v63, v64);
      __swift_destroy_boxed_opaque_existential_1(&v112);
      sub_1D5B63F14(v111, &v112);
      v65 = v113;
      v66 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      type metadata accessor for Localized();
      ObjCClassFromMetadata = swift_getObjCClassFromMetadata();
      v68 = [objc_opt_self() bundleForClass_];
      v69 = sub_1D725811C();
      v71 = v70;

      (v66[7])(v111, v69, v71, v65, v66);

      __swift_destroy_boxed_opaque_existential_1(&v112);
      sub_1D5B63F14(v111, &v112);
      v72 = v113;
      v73 = v114;
      __swift_project_boxed_opaque_existential_1(&v112, v113);
      (v73[7])(v111, 32, 0xE100000000000000, v72, v73);
      __swift_destroy_boxed_opaque_existential_1(&v112);
      sub_1D5B63F14(v111, &v112);
      v74 = (v59 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider);
      v75 = *(v59 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 24);
      v76 = *(v59 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider + 32);
      __swift_project_boxed_opaque_existential_1((v59 + OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider), v75);
      v77 = v106;
      (*(v76 + 24))(v75, v76);
      v78 = v107;
      if (v36(v77, 1, v107) == 1)
      {
        sub_1D5B6EE3C(v77, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
        v79 = v114;
        __swift_project_boxed_opaque_existential_1(&v112, v113);
        v80 = v74[3];
        v81 = v74[4];
        __swift_project_boxed_opaque_existential_1(v74, v80);
        v82 = (*(v81 + 16))(v80, v81);
        (v79[7])(v111, v82);
      }

      else
      {
        v83 = v105;
        v84 = v104;
        (*(v105 + 32))(v104, v77, v78);
        v85 = v113;
        v86 = v114;
        __swift_project_boxed_opaque_existential_1(&v112, v113);
        v87 = v74[3];
        v88 = v74[4];
        __swift_project_boxed_opaque_existential_1(v74, v87);
        v89 = (*(v88 + 16))(v87, v88);
        v91 = v90;
        v92 = sub_1D72583DC();
        (v86[6])(v111, v89, v91, v92, v93, v85, v86);

        (*(v83 + 8))(v84, v78);
      }

      __swift_destroy_boxed_opaque_existential_1(&v112);
      sub_1D5B63F14(v111, &v112);
      v94 = v116;
      v95 = v117;
      __swift_project_boxed_opaque_existential_1(v115, v116);
      sub_1D5B68374(&v112, v110);
      (*(v95 + 32))(v111, v110, v94, v95);
      sub_1D5B6EE3C(v110, &qword_1EC884F40, sub_1D5EB8714);
      __swift_destroy_boxed_opaque_existential_1(v115);
      sub_1D5B63F14(v111, v115);
      __swift_destroy_boxed_opaque_existential_1(&v112);
    }
  }

  v96 = v116;
  v97 = v117;
  __swift_project_boxed_opaque_existential_1(v115, v116);
  v98 = (*(v97 + 64))(v96, v97);
  __swift_destroy_boxed_opaque_existential_1(v115);
  __swift_destroy_boxed_opaque_existential_1(v118);
  return v98;
}

id sub_1D5EB823C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, _BYTE *a5, uint64_t a6, uint64_t a7)
{
  ObjectType = swift_getObjectType();
  v21[3] = a6;
  v21[4] = a7;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v21);
  (*(*(a6 - 8) + 32))(boxed_opaque_existential_1, a3, a6);
  *&a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_headline] = a1;
  v16 = [swift_unknownObjectRetain() sourceChannel];
  if (v16)
  {
    v17 = [v16 isPublic];
    swift_unknownObjectRelease();
  }

  else
  {
    v17 = 0;
  }

  sub_1D5EB84C0(a2, &a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_articleURL]);
  sub_1D5B68374(v21, &a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_mailShareLinkTextProvider]);
  a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_sourceChannelPublic] = v17;
  *&a5[OBJC_IVAR____TtC8NewsFeed35SharingArticleURLActivityItemSource_linkPresentationSource] = a4;
  v20.receiver = a5;
  v20.super_class = ObjectType;
  v18 = objc_msgSendSuper2(&v20, sel_init);
  sub_1D5B6EE3C(a2, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  __swift_destroy_boxed_opaque_existential_1(v21);
  return v18;
}

id sub_1D5EB83B4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v13 = *(a6 - 8);
  MEMORY[0x1EEE9AC00](a1, a2);
  v15 = &v19 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = objc_allocWithZone(v16);
  (*(v13 + 16))(v15, a3, a6);
  return sub_1D5EB823C(a1, a2, v15, a4, v17, a6, a7);
}

uint64_t sub_1D5EB84C0(uint64_t a1, uint64_t a2)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D5EB8540(uint64_t a1, uint64_t a2)
{
  sub_1D5B54350(0, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t type metadata accessor for SharingArticleURLActivityItemSource(uint64_t a1)
{
  result = qword_1EC8802F8;
  if (!qword_1EC8802F8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1D5EB8614(uint64_t a1)
{
  sub_1D5B54350(319, &qword_1EDF45B40, MEMORY[0x1E6968FB0]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

unint64_t sub_1D5EB8714()
{
  result = qword_1EC880310;
  if (!qword_1EC880310)
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, &qword_1EC880310);
  }

  return result;
}

uint64_t type metadata accessor for FormatSourceItemTipSource(uint64_t a1)
{
  result = qword_1EDF3A690;
  if (!qword_1EDF3A690)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1D5EB87EC(uint64_t a1)
{
  result = sub_1D725FC7C();
  if (v2 <= 0x3F)
  {
    result = sub_1D725CE0C();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t FormatVariableNode.identifier.getter()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t FormatVariableNode.identifier.setter(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 16) = a1;
  *(v2 + 24) = a2;
}

uint64_t sub_1D5EB8998(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  swift_beginAccess();
  *(v3 + 32) = v2;
}

uint64_t FormatVariableNode.statements.setter(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 32) = a1;
}

uint64_t FormatVariableNode.flex.getter@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1[5];
  v3 = v1[6];
  v4 = v1[7];
  v5 = v1[8];
  v6 = v1[9];
  v7 = v1[10];
  *a1 = v2;
  a1[1] = v3;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v7;
  return sub_1D5EB1D80(v2, v3, v4, v5, v6, v7);
}

uint64_t FormatVariableNode.__allocating_init(identifier:statements:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v8 = swift_allocObject();
  v9 = *(a4 + 4);
  v10 = *(a4 + 5);
  swift_beginAccess();
  *(v8 + 16) = a1;
  *(v8 + 24) = a2;
  swift_beginAccess();
  *(v8 + 32) = a3;
  v11 = *a4;
  *(v8 + 56) = a4[1];
  *(v8 + 40) = v11;
  *(v8 + 72) = v9;
  *(v8 + 80) = v10;
  return v8;
}

uint64_t FormatVariableNode.init(identifier:statements:flex:)(uint64_t a1, uint64_t a2, uint64_t a3, __int128 *a4)
{
  v9 = *(a4 + 4);
  v10 = *(a4 + 5);
  swift_beginAccess();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();
  *(v4 + 32) = a3;
  v11 = *a4;
  *(v4 + 56) = a4[1];
  *(v4 + 40) = v11;
  *(v4 + 72) = v9;
  *(v4 + 80) = v10;
  return v4;
}

void *FormatVariableNode.deinit()
{

  sub_1D5EB2398(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));
  return v0;
}

uint64_t FormatVariableNode.__deallocating_deinit()
{

  sub_1D5EB2398(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB8C70@<X0>(uint64_t *a1@<X8>, void *a2@<X0>)
{
  result = sub_1D6659D78(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

void sub_1D5EB8CCC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v28 = a2;
  v25 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v25, v7);
  v9 = v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_unownedRetainStrong();
  swift_beginAccess();
  v10 = *(a3 + 32);

  v24 = *(v10 + 16);
  if (v24)
  {
    v11 = 0;
    v23[1] = OBJC_IVAR____TtC8NewsFeed17FormatNodeContext_options;
    v12 = 32;
    while (v11 < *(v10 + 16))
    {
      v27[0] = *(v10 + v12);
      v13 = *(v10 + v12 + 16);
      v14 = *(v10 + v12 + 32);
      v15 = *(v10 + v12 + 64);
      v27[3] = *(v10 + v12 + 48);
      v27[4] = v15;
      v27[1] = v13;
      v27[2] = v14;
      v16 = *(v10 + v12 + 48);
      v26[7] = *(v10 + v12 + 32);
      v26[8] = v16;
      v26[9] = *(v10 + v12 + 64);
      v17 = *(v10 + v12 + 16);
      v26[5] = *(v10 + v12);
      v26[6] = v17;
      sub_1D5EB9920(0);
      v19 = *(v18 + 48);
      *v9 = a4;
      sub_1D5EB9994(0);
      (*(*(v20 - 8) + 16))(&v9[v19], v28, v20);
      swift_storeEnumTagMultiPayload();
      sub_1D5CF5D60(v27, v26);

      sub_1D6B49738(v9);
      v22 = v21;
      sub_1D5EB9B0C(v9, type metadata accessor for FormatOptionsNodeStatementContext);
      if (v4)
      {

        sub_1D5CF5E18(v27);
        return;
      }

      if (*(v22 + 16))
      {

        sub_1D5EDE10C(v22);
        sub_1D5CF5E18(v27);
      }

      else
      {
        sub_1D5CF5E18(v27);
      }

      ++v11;
      v12 += 80;
      if (v24 == v11)
      {
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_9:
  }
}

double sub_1D5EB8F2C()
{
  sub_1D5EB99F0();
  v2 = swift_allocObject();
  v3 = MEMORY[0x1E69E7CC0];
  *(v2 + 16) = MEMORY[0x1E69E7CC0];
  *(v2 + 24) = v3;
  *(v2 + 32) = 1;
  *(v2 + 40) = 0u;
  *(v2 + 56) = 0u;
  *(v2 + 76) = -16384;
  *(v2 + 72) = 0;
  v9 = v2;
  sub_1D5EB9048(&v9, v0, 0);
  v4 = v9;
  if (!v1)
  {
    swift_beginAccess();

    v6 = sub_1D60DFF0C(v5);

    if (v6)
    {
      v7 = swift_allocObject();
      *(v7 + 16) = v4;

      sub_1D6C4D24C(v7);
    }
  }

  return result;
}

uint64_t sub_1D5EB9048(uint64_t *a1, void *a2, __n128 a3)
{
  v4 = v3;
  v65 = type metadata accessor for FormatDerivedDataOption(0);
  MEMORY[0x1EEE9AC00](v65, v7);
  v59 = &v56 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9, v10);
  v58 = &v56 - v11;
  MEMORY[0x1EEE9AC00](v12, v13);
  v60 = &v56 - v14;
  swift_beginAccess();
  v57 = a2;
  v15 = a2[4];
  v16 = *(v15 + 16);

  v64 = v16;
  if (v16)
  {
    v18 = 0;
    v19 = 32;
    v62 = a1;
    v63 = v15;
    v20 = v60;
    while (v18 < *(v15 + 16))
    {
      v70 = *(v15 + v19);
      v21 = *(v15 + v19 + 16);
      v22 = *(v15 + v19 + 32);
      v23 = *(v15 + v19 + 64);
      v73 = *(v15 + v19 + 48);
      v74 = v23;
      v71 = v21;
      v72 = v22;
      v68 = *(v15 + v19 + 16);
      v69[0] = *(v15 + v19 + 32);
      v69[1] = *(v15 + v19 + 48);
      v69[2] = *(v15 + v19 + 64);
      v67 = *(v15 + v19);
      sub_1D5CF5D60(&v70, v66);
      sub_1D5CF5D60(&v70, v66);
      sub_1D69DF8F4(&v67, v20);
      if (v4)
      {

        return sub_1D5CF5E18(&v70);
      }

      v75 = swift_allocBox();
      v25 = v24;
      sub_1D5EB9A4C(v20, v24, v26);
      v27 = *a1;
      swift_beginAccess();
      v28 = *(v27 + 16);
      v29 = *(v28 + 16);
      if (v29 && *(v28 + 8 * v29 + 24) >> 60 == 1 && (v30 = swift_projectBox(), v61 = 0, v31 = a1, v32 = v58, sub_1D5EB9A4C(v30, v58, v33), v34 = v59, sub_1D5EB9A4C(v25, v59, v35), , v36 = sub_1D69E18D4(v32, v34), v37 = v34, v20 = v60, sub_1D5EB9B0C(v37, type metadata accessor for FormatDerivedDataOption), v38 = v32, a1 = v31, v4 = v61, sub_1D5EB9B0C(v38, type metadata accessor for FormatDerivedDataOption), , v36))
      {
      }

      else
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v40 = *a1;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          sub_1D5EB99F0();
          v46 = swift_allocObject();
          swift_beginAccess();
          v47 = v40[2];
          v67 = v40[1];
          v68 = v47;
          v69[0] = v40[3];
          *(v69 + 14) = *(v40 + 62);
          memmove((v46 + 16), v40 + 1, 0x3EuLL);
          sub_1D5EB9AB0(&v67, v66);

          *a1 = v46;
          v40 = v46;
        }

        swift_beginAccess();
        v41 = *(v40 + 2);
        v42 = swift_isUniquelyReferenced_nonNull_native();
        *(v40 + 2) = v41;
        if ((v42 & 1) == 0)
        {
          v41 = sub_1D698F848(0, *(v41 + 2) + 1, 1, v41);
          *(v40 + 2) = v41;
        }

        v44 = *(v41 + 2);
        v43 = *(v41 + 3);
        if (v44 >= v43 >> 1)
        {
          v41 = sub_1D698F848((v43 > 1), v44 + 1, 1, v41);
        }

        v45 = v75 | 0x1000000000000000;
        *(v41 + 2) = v44 + 1;
        *&v41[8 * v44 + 32] = v45;
        *(v40 + 2) = v41;
        swift_endAccess();
        a1 = v62;
      }

      ++v18;
      sub_1D5CF5E18(&v70);
      result = sub_1D5EB9B0C(v20, type metadata accessor for FormatDerivedDataOption);
      v19 += 80;
      v15 = v63;
      if (v64 == v18)
      {
        goto LABEL_17;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_17:

    v48 = v57;
    v49 = v57[4];

    sub_1D6285540(a1, v49);

    if (!v4)
    {
      result = v48[5];
      if (result)
      {
        v51 = v48[9];
        v50 = v48[10];
        v53 = v48[7];
        v52 = v48[8];
        v54 = v48[6];
        *&v70 = v48[5];
        *(&v70 + 1) = v54;
        *&v71 = v53;
        *(&v71 + 1) = v52;
        *&v72 = v51;
        *(&v72 + 1) = v50;

        sub_1D5DEA234(v51);

        sub_1D626D2A0(a1);
        v55 = v72;

        sub_1D5CBF568(v55);
      }
    }
  }

  return result;
}

uint64_t FormatVariableNode.bind(binder:context:)(uint64_t a1, uint64_t a2)
{
  v4 = v3;
  v27 = a1;
  v24 = type metadata accessor for FormatOptionsNodeStatementContext(0);
  MEMORY[0x1EEE9AC00](v24, v6);
  v8 = v22 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v9 = *(v2 + 32);
  v10 = *(v9 + 16);
  v22[1] = OBJC_IVAR____TtC8NewsFeed23FormatNodeBinderContext_options;

  v23 = v10;
  if (!v10)
  {
  }

  v12 = 0;
  v13 = 32;
  while (v12 < *(v9 + 16))
  {
    v26[0] = *(v9 + v13);
    v14 = *(v9 + v13 + 16);
    v15 = *(v9 + v13 + 32);
    v16 = *(v9 + v13 + 64);
    v26[3] = *(v9 + v13 + 48);
    v26[4] = v16;
    v26[1] = v14;
    v26[2] = v15;
    v17 = *(v9 + v13 + 48);
    v25[7] = *(v9 + v13 + 32);
    v25[8] = v17;
    v25[9] = *(v9 + v13 + 64);
    v18 = *(v9 + v13 + 16);
    v25[5] = *(v9 + v13);
    v25[6] = v18;
    v19 = v27;
    *v8 = a2;
    *(v8 + 1) = v19;
    swift_storeEnumTagMultiPayload();
    sub_1D5CF5D60(v26, v25);

    sub_1D6B49738(v8);
    v21 = v20;
    sub_1D5EB9B0C(v8, type metadata accessor for FormatOptionsNodeStatementContext);
    if (v4)
    {

      return sub_1D5CF5E18(v26);
    }

    if (*(v21 + 16))
    {

      sub_1D5EDE10C(v21);
      sub_1D5CF5E18(v26);
    }

    else
    {
      sub_1D5CF5E18(v26);
    }

    ++v12;
    v13 += 80;
    if (v23 == v12)
    {
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1D5EB9758(uint64_t a1)
{
  result = sub_1D5EB9890(&qword_1EC880320, &protocol conformance descriptor for FormatVariableNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB97C0(void *a1)
{
  a1[1] = sub_1D5EB9890(&qword_1EDF10158, &protocol conformance descriptor for FormatVariableNode);
  a1[2] = sub_1D5EB9890(&qword_1EDF10160, &protocol conformance descriptor for FormatVariableNode);
  result = sub_1D5EB9890(&qword_1EC880328, &protocol conformance descriptor for FormatVariableNode);
  a1[3] = result;
  return result;
}

uint64_t sub_1D5EB984C(uint64_t a1)
{
  result = sub_1D5EB9890(&qword_1EC880330, &protocol conformance descriptor for FormatVariableNode);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D5EB9890(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for FormatVariableNode();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

void sub_1D5EB9920(uint64_t a1)
{
  if (!qword_1EDF2F470)
  {
    type metadata accessor for FormatNodeContext(255);
    sub_1D5EB9994(255);
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EDF2F470);
    }
  }
}

void sub_1D5EB9994(uint64_t a1)
{
  if (!qword_1EDF3BEE0)
  {
    sub_1D5EB5218();
    v1 = sub_1D725A57C();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDF3BEE0);
    }
  }
}

void sub_1D5EB99F0()
{
  if (!qword_1EC880338)
  {
    v0 = sub_1D7263E4C();
    if (!v1)
    {
      atomic_store(v0, &qword_1EC880338);
    }
  }
}

uint64_t sub_1D5EB9A4C(uint64_t a1, uint64_t a2, __n128 a3)
{
  v5 = type metadata accessor for FormatDerivedDataOption(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D5EB9B0C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t FormatDataLayoutAttributes.identifier.getter()
{
  v0 = sub_1D5EBC238();

  return v0;
}

uint64_t FormatDataLayoutAttributes.layoutIdentifier.getter()
{
  v1 = *(v0 + 64);

  return v1;
}

uint64_t FormatDataLayoutAttributes.nodeIdentifier.getter()
{
  v1 = *(v0 + 80);

  return v1;
}

char *FormatDataLayoutAttributes.deinit()
{
  v1 = *v0;

  (*(*(*(v1 + 80) - 8) + 8))(v0 + *(*v0 + 136));

  return v0;
}

uint64_t FormatDataLayoutAttributes.__deallocating_deinit()
{
  FormatDataLayoutAttributes.deinit();

  return swift_deallocClassInstance();
}

uint64_t sub_1D5EB9DF8()
{
  v0 = sub_1D5EBC238();

  return v0;
}

void sub_1D5EB9E34(double *a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v52 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v52, v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {
    }

    return;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v51 = xmmword_1D7273AE0;
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
    if (v11 <= 4)
    {
      if (v11 > 2)
      {
        v54 = v8;
        if (v11 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = (swift_projectBox() + *(v25 + 48));
          v27 = v26[2];
          v28 = v26[3];
          v29 = v26[4];

          sub_1D5EBC314(v27, v28, v29);

          sub_1D5EB9E34(v55, v56);
          v20 = v30;

          v31 = v27;
          v32 = v28;
          v33 = v29;
        }

        else
        {
          v34 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v35 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v36 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);

          v37 = v34;
          sub_1D5EBC314(v34, v35, v36);

          sub_1D5EB9E34(v55, v56);
          v20 = v38;

          v31 = v37;
          v32 = v35;
          v33 = v36;
        }

        sub_1D5EBC358(v31, v32, v33);
        v8 = v54;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v11 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v57 = *(v23 + 16);
        }

        else
        {
          v57 = *(v9 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v55, v56, &v57, v24, &v58, v41);
        if (!v59)
        {
          sub_1D5C1661C(&v58);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v58, v60);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v51;
        sub_1D5B63F14(v60, v20 + 32);
      }
    }

    else
    {
      if (v11 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v11) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v11 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v13 = v12;
        v14 = swift_projectBox();
        v15 = (v14 + *(v13 + 48));
        v16 = v15[2];
        v17 = v15[3];
        v54 = v15[4];
        v18 = v53;
        sub_1D5EBC2B0(v14, v53);
        *&v60[0] = *(v18 + *(v52 + 40));

        sub_1D5EBC314(v16, v17, v54);

        v20 = sub_1D6F05BC0(v55, v56, v60, v19);

        sub_1D5EBC358(v16, v17, v54);

        sub_1D5EBC654(v53, type metadata accessor for FormatVideoPlayerData);
        goto LABEL_29;
      }

      if (v11 == 16)
      {
        sub_1D5EBC240(0);
        swift_projectBox();

        sub_1D5EB9E34(v55, v56);
        v20 = v39;

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v11 == 5)
        {
          goto LABEL_5;
        }

        FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v55, v56);
        v20 = v40;
        if (!v40)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v42 = *(v20 + 16);
    v43 = v8[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v46 = v8[3] >> 1, v46 >= v44))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v8 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v47, 1, v8);
      v46 = v8[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v42)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v46 - v8[2] < v42)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    swift_arrayInitWithCopy();

    if (v42)
    {
      v48 = v8[2];
      v49 = __OFADD__(v48, v42);
      v50 = v48 + v42;
      if (v49)
      {
        goto LABEL_50;
      }

      v8[2] = v50;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1D5EBA458(double *a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v52 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v52, v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {
    }

    return;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v51 = xmmword_1D7273AE0;
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
    if (v11 <= 4)
    {
      if (v11 > 2)
      {
        v54 = v8;
        if (v11 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = (swift_projectBox() + *(v25 + 48));
          v27 = v26[2];
          v28 = v26[3];
          v29 = v26[4];

          sub_1D5EBC314(v27, v28, v29);

          sub_1D5EB9E34(v55, v56);
          v20 = v30;

          v31 = v27;
          v32 = v28;
          v33 = v29;
        }

        else
        {
          v34 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v35 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v36 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);

          v37 = v34;
          sub_1D5EBC314(v34, v35, v36);

          sub_1D5EB9E34(v55, v56);
          v20 = v38;

          v31 = v37;
          v32 = v35;
          v33 = v36;
        }

        sub_1D5EBC358(v31, v32, v33);
        v8 = v54;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v11 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v57 = *(v23 + 16);
        }

        else
        {
          v57 = *(v9 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v55, v56, &v57, v24, &v58, v41);
        if (!v59)
        {
          sub_1D5C1661C(&v58);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v58, v60);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v51;
        sub_1D5B63F14(v60, v20 + 32);
      }
    }

    else
    {
      if (v11 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v11) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v11 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v13 = v12;
        v14 = swift_projectBox();
        v15 = (v14 + *(v13 + 48));
        v16 = v15[2];
        v17 = v15[3];
        v54 = v15[4];
        v18 = v53;
        sub_1D5EBC2B0(v14, v53);
        *&v60[0] = *(v18 + *(v52 + 40));

        sub_1D5EBC314(v16, v17, v54);

        v20 = sub_1D6F05BC0(v55, v56, v60, v19);

        sub_1D5EBC358(v16, v17, v54);
        sub_1D5EBC654(v53, type metadata accessor for FormatVideoPlayerData);

        goto LABEL_29;
      }

      if (v11 == 16)
      {
        sub_1D5EBC240(0);
        swift_projectBox();

        sub_1D5EB9E34(v55, v56);
        v20 = v39;

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v11 == 5)
        {
          goto LABEL_5;
        }

        FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v55, v56);
        v20 = v40;
        if (!v40)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v42 = *(v20 + 16);
    v43 = v8[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v46 = v8[3] >> 1, v46 >= v44))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v8 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v47, 1, v8);
      v46 = v8[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v42)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v46 - v8[2] < v42)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    swift_arrayInitWithCopy();

    if (v42)
    {
      v48 = v8[2];
      v49 = __OFADD__(v48, v42);
      v50 = v48 + v42;
      if (v49)
      {
        goto LABEL_50;
      }

      v8[2] = v50;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void FormatDataLayoutAttributes.formatImageRequests(options:inventory:)(double *a1, uint64_t a2)
{
  v55 = a1;
  v56 = a2;
  v52 = type metadata accessor for FormatVideoPlayerData(0);
  MEMORY[0x1EEE9AC00](v52, v3);
  v53 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(v2 + 96);
  v6 = *(v5 + 16);
  if (!v6)
  {
    v8 = MEMORY[0x1E69E7CC0];
LABEL_44:
    if (!v8[2])
    {
    }

    return;
  }

  v7 = (v5 + 32);
  v8 = MEMORY[0x1E69E7CC0];
  v51 = xmmword_1D7273AE0;
  while (1)
  {
    v10 = *v7++;
    v9 = v10;
    v11 = (v10 >> 59) & 0x1E | (v10 >> 2) & 1;
    if (v11 <= 4)
    {
      if (v11 > 2)
      {
        v54 = v8;
        if (v11 == 3)
        {
          sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
          v26 = (swift_projectBox() + *(v25 + 48));
          v27 = v26[2];
          v28 = v26[3];
          v29 = v26[4];

          sub_1D5EBC314(v27, v28, v29);

          sub_1D5EB9E34(v55, v56);
          v20 = v30;

          v31 = v27;
          v32 = v28;
          v33 = v29;
        }

        else
        {
          v34 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
          v35 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
          v36 = *((v9 & 0xFFFFFFFFFFFFFFBLL) + 0x30);

          v37 = v34;
          sub_1D5EBC314(v34, v35, v36);

          sub_1D5EB9E34(v55, v56);
          v20 = v38;

          v31 = v37;
          v32 = v35;
          v33 = v36;
        }

        sub_1D5EBC358(v31, v32, v33);
        v8 = v54;
        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
        if ((v11 - 1) < 2)
        {
          goto LABEL_5;
        }

        v21 = *(v9 + 16);
        v22 = *(v9 + 24);
        if (v21 >> 61 == 5)
        {
          v23 = v21 & 0x1FFFFFFFFFFFFFFFLL;
          v24 = *(v23 + 24);
          v57 = *(v23 + 16);
        }

        else
        {
          v57 = *(v9 + 16);
          v24 = *(v22 + 96);
        }

        sub_1D7147F08(v55, v56, &v57, v24, &v58, v41);
        if (!v59)
        {
          sub_1D5C1661C(&v58);
          goto LABEL_4;
        }

        sub_1D5B63F14(&v58, v60);
        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v20 = swift_allocObject();
        *(v20 + 16) = v51;
        sub_1D5B63F14(v60, v20 + 32);
      }
    }

    else
    {
      if (v11 > 0x12)
      {
        goto LABEL_53;
      }

      if (((1 << v11) & 0x6BF80) != 0)
      {
        goto LABEL_5;
      }

      if (v11 == 14)
      {
        sub_1D5EBC39C(0, &qword_1EC880340, type metadata accessor for FormatVideoPlayerData, &qword_1EC880348, type metadata accessor for FormatVideoPlayerNodeLayoutAttributes);
        v13 = v12;
        v14 = swift_projectBox();
        v15 = (v14 + *(v13 + 48));
        v16 = v15[2];
        v17 = v15[3];
        v54 = v15[4];
        v18 = v53;
        sub_1D5EBC2B0(v14, v53);
        *&v60[0] = *(v18 + *(v52 + 40));

        sub_1D5EBC314(v16, v17, v54);

        v20 = sub_1D6F05BC0(v55, v56, v60, v19);

        sub_1D5EBC358(v16, v17, v54);
        sub_1D5EBC654(v53, type metadata accessor for FormatVideoPlayerData);

        goto LABEL_29;
      }

      if (v11 == 16)
      {
        sub_1D5EBC240(0);
        swift_projectBox();

        sub_1D5EB9E34(v55, v56);
        v20 = v39;

        if (!v20)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_53:
        if (v11 == 5)
        {
          goto LABEL_5;
        }

        FormatStateViewNodeDataLayoutAttributes.formatImageRequests(options:inventory:)(v55, v56);
        v20 = v40;
        if (!v40)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_29:
    v42 = *(v20 + 16);
    v43 = v8[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v46 = v8[3] >> 1, v46 >= v44))
    {
      if (!*(v20 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v8 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v47, 1, v8);
      v46 = v8[3] >> 1;
      if (!*(v20 + 16))
      {
LABEL_3:

        if (v42)
        {
          goto LABEL_48;
        }

        goto LABEL_4;
      }
    }

    if (v46 - v8[2] < v42)
    {
      goto LABEL_49;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    swift_arrayInitWithCopy();

    if (v42)
    {
      v48 = v8[2];
      v49 = __OFADD__(v48, v42);
      v50 = v48 + v42;
      if (v49)
      {
        goto LABEL_50;
      }

      v8[2] = v50;
    }

LABEL_4:

LABEL_5:
    if (!--v6)
    {
      goto LABEL_44;
    }
  }

  __break(1u);
LABEL_48:
  __break(1u);
LABEL_49:
  __break(1u);
LABEL_50:
  __break(1u);
}

void sub_1D5EBB0A0(double *a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_48:
    if (!v5[2])
    {
    }

    return;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v9 = (v8 >> 59) & 0x1E | (v8 >> 2) & 1;
    if (v9 <= 4)
    {
      if (v9 < 3)
      {
        goto LABEL_5;
      }

      if (v9 == 3)
      {
        sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v18 = (swift_projectBox() + *(v17 + 48));
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];

        sub_1D5EBC314(v19, v20, v21);

        sub_1D5EBB0A0(a1, a2);
        v27 = v22;

        v28 = v19;
        v29 = v20;
        v30 = v21;
      }

      else
      {
        v23 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v24 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v25 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);

        sub_1D5EBC314(v23, v24, v25);

        sub_1D5EBB0A0(a1, a2);
        v27 = v26;

        v28 = v23;
        v29 = v24;
        v30 = v25;
      }

      sub_1D5EBC358(v28, v29, v30);
      if (!v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v9 > 0x12)
      {
        goto LABEL_57;
      }

      if (((1 << v9) & 0x6EF80) != 0)
      {
        goto LABEL_5;
      }

      if (v9 == 12)
      {
        v11 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *(v56 + 9) = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v54 = v12;
        v55 = v11;
        v56[0] = v10;
        v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v14 = v12;
        if (BYTE8(v56[1]))
        {
          if (BYTE8(v56[1]) != 1)
          {
            goto LABEL_5;
          }

          v15 = *&v56[1];
          v16 = *&v56[0];

          sub_1D5EBC4A0(&v54, v53);

          v14 = v16;
        }

        else
        {
          v15 = v55;

          sub_1D5EBC4A0(&v54, v53);
        }

        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D7273AE0;
        v33 = *(v13 + 192);
        v34 = *(v13 + 200);
        v35 = *a1;
        v36 = v15;
        sub_1D726327C();
        if (v33 > 0.0)
        {
          v39 = *&v33;
        }

        else
        {
          v39 = 0;
        }

        if (v33 > 0.0)
        {
          v40 = v34;
        }

        else
        {
          v40 = 0;
        }

        v41 = sub_1D5EBBF10(v36, v39, v40, v33 <= 0.0, v37, v38, v35);

        *(v27 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
        *(v27 + 64) = sub_1D5EBC60C(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest, &protocol conformance descriptor for IssueCoverImageProcessorRequest);
        *(v27 + 32) = v41;
        goto LABEL_33;
      }

      if (v9 == 16)
      {
        sub_1D5EBC240(0);
        swift_projectBox();

        sub_1D5EBB0A0(a1, a2);
        v27 = v31;

        if (!v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_57:
        if (v9 == 5)
        {
          goto LABEL_5;
        }

        FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
        v27 = v32;
        if (!v32)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_33:
    v42 = *(v27 + 16);
    v43 = v5[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v46 = v5[3] >> 1, v46 >= v44))
    {
      if (!*(v27 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v5 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v47, 1, v5);
      v46 = v5[3] >> 1;
      if (!*(v27 + 16))
      {
LABEL_3:

        if (v42)
        {
          goto LABEL_52;
        }

        goto LABEL_4;
      }
    }

    if (v46 - v5[2] < v42)
    {
      goto LABEL_53;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    swift_arrayInitWithCopy();

    if (v42)
    {
      v48 = v5[2];
      v49 = __OFADD__(v48, v42);
      v50 = v48 + v42;
      if (v49)
      {
        goto LABEL_54;
      }

      v5[2] = v50;
    }

LABEL_4:

LABEL_5:
    if (!--v4)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}

void FormatDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(double *a1, uint64_t a2)
{
  v3 = *(v2 + 96);
  v4 = *(v3 + 16);
  if (!v4)
  {
    v5 = MEMORY[0x1E69E7CC0];
LABEL_48:
    if (!v5[2])
    {
    }

    return;
  }

  v5 = MEMORY[0x1E69E7CC0];
  v6 = (v3 + 32);
  while (1)
  {
    v8 = *v6++;
    v7 = v8;
    v9 = (v8 >> 59) & 0x1E | (v8 >> 2) & 1;
    if (v9 <= 4)
    {
      if (v9 < 3)
      {
        goto LABEL_5;
      }

      if (v9 == 3)
      {
        sub_1D5EBC39C(0, qword_1EDF2B540, type metadata accessor for FormatButtonNodeData, &qword_1EDF1C7E8, type metadata accessor for FormatButtonNodeDataLayoutAttributes);
        v18 = (swift_projectBox() + *(v17 + 48));
        v19 = v18[2];
        v20 = v18[3];
        v21 = v18[4];

        sub_1D5EBC314(v19, v20, v21);

        sub_1D5EBB0A0(a1, a2);
        v27 = v22;

        v28 = v19;
        v29 = v20;
        v30 = v21;
      }

      else
      {
        v23 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v24 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x28);
        v25 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);

        sub_1D5EBC314(v23, v24, v25);

        sub_1D5EBB0A0(a1, a2);
        v27 = v26;

        v28 = v23;
        v29 = v24;
        v30 = v25;
      }

      sub_1D5EBC358(v28, v29, v30);
      if (!v27)
      {
        goto LABEL_4;
      }
    }

    else
    {
      if (v9 > 0x12)
      {
        goto LABEL_57;
      }

      if (((1 << v9) & 0x6EF80) != 0)
      {
        goto LABEL_5;
      }

      if (v9 == 12)
      {
        v11 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x20);
        v10 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x30);
        v12 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x10);
        *(v56 + 9) = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x39);
        v54 = v12;
        v55 = v11;
        v56[0] = v10;
        v13 = *((v7 & 0xFFFFFFFFFFFFFFBLL) + 0x50);
        v14 = v12;
        if (BYTE8(v56[1]))
        {
          if (BYTE8(v56[1]) != 1)
          {
            goto LABEL_5;
          }

          v15 = *&v56[1];
          v16 = *&v56[0];

          sub_1D5EBC4A0(&v54, v53);

          v14 = v16;
        }

        else
        {
          v15 = v55;

          sub_1D5EBC4A0(&v54, v53);
        }

        sub_1D5C16764(0, &qword_1EDF19AD0, MEMORY[0x1E69E6F90]);
        v27 = swift_allocObject();
        *(v27 + 16) = xmmword_1D7273AE0;
        v33 = *(v13 + 192);
        v34 = *(v13 + 200);
        v35 = *a1;
        v36 = v15;
        sub_1D726327C();
        if (v33 > 0.0)
        {
          v39 = *&v33;
        }

        else
        {
          v39 = 0;
        }

        if (v33 > 0.0)
        {
          v40 = v34;
        }

        else
        {
          v40 = 0;
        }

        v41 = sub_1D5EBBF10(v36, v39, v40, v33 <= 0.0, v37, v38, v35);

        *(v27 + 56) = type metadata accessor for IssueCoverImageProcessorRequest();
        *(v27 + 64) = sub_1D5EBC60C(&qword_1EDF093A8, type metadata accessor for IssueCoverImageProcessorRequest, &protocol conformance descriptor for IssueCoverImageProcessorRequest);
        *(v27 + 32) = v41;
        goto LABEL_33;
      }

      if (v9 == 16)
      {
        sub_1D5EBC240(0);
        swift_projectBox();

        sub_1D5EBB0A0(a1, a2);
        v27 = v31;

        if (!v27)
        {
          goto LABEL_4;
        }
      }

      else
      {
LABEL_57:
        if (v9 == 5)
        {
          goto LABEL_5;
        }

        FormatStateViewNodeDataLayoutAttributes.issueCoverImageRequests(options:inventory:)(a1, a2);
        v27 = v32;
        if (!v32)
        {
          goto LABEL_4;
        }
      }
    }

LABEL_33:
    v42 = *(v27 + 16);
    v43 = v5[2];
    v44 = v43 + v42;
    if (__OFADD__(v43, v42))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (isUniquelyReferenced_nonNull_native && (v46 = v5[3] >> 1, v46 >= v44))
    {
      if (!*(v27 + 16))
      {
        goto LABEL_3;
      }
    }

    else
    {
      if (v43 <= v44)
      {
        v47 = v43 + v42;
      }

      else
      {
        v47 = v43;
      }

      v5 = sub_1D698F994(isUniquelyReferenced_nonNull_native, v47, 1, v5);
      v46 = v5[3] >> 1;
      if (!*(v27 + 16))
      {
LABEL_3:

        if (v42)
        {
          goto LABEL_52;
        }

        goto LABEL_4;
      }
    }

    if (v46 - v5[2] < v42)
    {
      goto LABEL_53;
    }

    sub_1D5B49474(0, &qword_1EDF3B4D8, MEMORY[0x1E69D8160]);
    swift_arrayInitWithCopy();

    if (v42)
    {
      v48 = v5[2];
      v49 = __OFADD__(v48, v42);
      v50 = v48 + v42;
      if (v49)
      {
        goto LABEL_54;
      }

      v5[2] = v50;
    }

LABEL_4:

LABEL_5:
    if (!--v4)
    {
      goto LABEL_48;
    }
  }

  __break(1u);
LABEL_52:
  __break(1u);
LABEL_53:
  __break(1u);
LABEL_54:
  __break(1u);
}