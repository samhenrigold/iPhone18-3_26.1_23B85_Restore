void sub_1C45DAB7C()
{
  sub_1C43FE96C();
  v1 = v0;
  v3 = v2;
  v40 = v4;
  v39 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  if (*(v3 + 16))
  {
    v38 = v10;
    v11 = *(v3 + 16);
    sub_1C4F02348();
    v13 = sub_1C486C288();
    v15 = v14;
    v16 = 0;
    v17 = v3 + 56;
    v35 = v12;
    v36 = v6;
    v37 = v11;
    while ((v13 & 0x8000000000000000) == 0 && v13 < 1 << *(v3 + 32))
    {
      v18 = v13 >> 6;
      v19 = 1 << v13;
      if ((*(v17 + 8 * (v13 >> 6)) & (1 << v13)) == 0)
      {
        goto LABEL_23;
      }

      if (*(v3 + 36) != v12)
      {
        goto LABEL_24;
      }

      v41 = v16;
      v42 = v12;
      (*(v6 + 16))(v38, *(v3 + 48) + *(v6 + 72) * v13, v39);
      v40(&v43, v38);
      if (v1)
      {
        goto LABEL_28;
      }

      v1 = 0;
      v20 = sub_1C4415F4C();
      v21(v20);
      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (v15)
      {
        goto LABEL_29;
      }

      v22 = 1 << *(v3 + 32);
      if (v13 >= v22)
      {
        goto LABEL_25;
      }

      v17 = v3 + 56;
      v23 = *(v3 + 56 + 8 * v18);
      if ((v23 & v19) == 0)
      {
        goto LABEL_26;
      }

      if (*(v3 + 36) != v42)
      {
        goto LABEL_27;
      }

      v24 = v23 & (-2 << (v13 & 0x3F));
      if (v24)
      {
        v22 = __clz(__rbit64(v24)) | v13 & 0x7FFFFFFFFFFFFFC0;
        v6 = v36;
        v25 = v37;
        v26 = v41;
      }

      else
      {
        sub_1C441C0A8();
        v30 = (v3 + 64 + 8 * v18);
        v6 = v36;
        while (v29 < v28)
        {
          v32 = *v30++;
          v31 = v32;
          v19 += 64;
          ++v29;
          if (v32)
          {
            sub_1C440951C(v13, v27, 0);
            v25 = v37;
            v22 = __clz(__rbit64(v31)) + v19;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v13, v27, 0);
        v25 = v37;
LABEL_19:
        v26 = v41;
      }

      v15 = 0;
      v16 = v26 + 1;
      v13 = v22;
      v12 = v35;
      if (v16 == v25)
      {
        goto LABEL_21;
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
LABEL_28:
    v33 = sub_1C4415F4C();
    v34(v33);

    __break(1u);
LABEL_29:
    __break(1u);
  }

  else
  {
LABEL_21:
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DAE74(void (*a1)(uint64_t, uint64_t), uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v5)
  {
    v11 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    for (i = a3 + 40; ; i += 16)
    {
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      sub_1C441C09C();
      a1(v9, v10);
      if (v3)
      {
        break;
      }

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      sub_1C4F02328();
      if (!--v5)
      {
        return v11;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45DAF78(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  result = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v6 = a3;
    v37 = MEMORY[0x1E69E7CC0];
    sub_1C4F02348();
    v8 = sub_1C486C288();
    v10 = v9;
    v11 = 0;
    v12 = v6 + 56;
    v30 = v7;
    v31 = v4;
    v29 = v6 + 64;
    while ((v8 & 0x8000000000000000) == 0 && v8 < 1 << *(v6 + 32))
    {
      v13 = v8 >> 6;
      v14 = 1 << v8;
      if ((*(v12 + 8 * (v8 >> 6)) & (1 << v8)) == 0)
      {
        goto LABEL_24;
      }

      if (*(v6 + 36) != v7)
      {
        goto LABEL_25;
      }

      v33 = v11;
      v34 = v7;
      v15 = v6;
      v16 = (*(v6 + 48) + 16 * v8);
      v17 = v16[1];
      v35[0] = *v16;
      v35[1] = v17;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      a1(&v36, v35);
      if (v3)
      {
        goto LABEL_29;
      }

      sub_1C4F02318();
      sub_1C4F02358();
      sub_1C4F02368();
      result = sub_1C4F02328();
      if (v10)
      {
        goto LABEL_30;
      }

      v18 = 1 << *(v15 + 32);
      if (v8 >= v18)
      {
        goto LABEL_26;
      }

      v19 = *(v12 + 8 * v13);
      if ((v19 & v14) == 0)
      {
        goto LABEL_27;
      }

      v6 = v15;
      if (*(v15 + 36) != v34)
      {
        goto LABEL_28;
      }

      v20 = v19 & (-2 << (v8 & 0x3F));
      if (v20)
      {
        v18 = __clz(__rbit64(v20)) | v8 & 0x7FFFFFFFFFFFFFC0;
        v3 = 0;
        v21 = v33;
        v22 = v31;
      }

      else
      {
        sub_1C441C0A8();
        v26 = (v29 + 8 * v13);
        v22 = v31;
        while (v25 < v24)
        {
          v28 = *v26++;
          v27 = v28;
          v14 += 64;
          ++v25;
          if (v28)
          {
            sub_1C440951C(v8, v23, 0);
            v3 = 0;
            v18 = __clz(__rbit64(v27)) + v14;
            goto LABEL_19;
          }
        }

        sub_1C440951C(v8, v23, 0);
        v3 = 0;
LABEL_19:
        v21 = v33;
      }

      v10 = 0;
      v11 = v21 + 1;
      v8 = v18;
      v7 = v30;
      if (v11 == v22)
      {
        return v37;
      }
    }

    __break(1u);
LABEL_24:
    __break(1u);
LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    __break(1u);
LABEL_28:
    __break(1u);
LABEL_29:

    __break(1u);
LABEL_30:
    __break(1u);
  }

  return result;
}

void sub_1C45DB1D8()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v21 = v5;
  v22 = v6;
  v7 = sub_1C456902C(&qword_1EC0B9078, &unk_1C4F30C70);
  sub_1C43FCF7C(v7);
  v20 = v8;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v20 - v10;
  v12 = v2 - v4;
  if (__OFSUB__(v2, v4))
  {
LABEL_18:
    __break(1u);
    goto LABEL_19;
  }

  if (!v12)
  {
LABEL_13:
    sub_1C4402144();
    sub_1C43FBC80();
    return;
  }

  v26 = MEMORY[0x1E69E7CC0];
  sub_1C4402C34();
  sub_1C459E978();
  if ((v12 & 0x8000000000000000) == 0)
  {
    v24 = v0;
    v13 = 0;
    while (v13 < v12)
    {
      if (__OFADD__(v13, 1))
      {
        goto LABEL_15;
      }

      v23 = v13 + 1;
      v25 = v4 + v13;
      v14 = v11;
      v15 = v24;
      v21(&v25);
      v24 = v15;
      if (v15)
      {
        goto LABEL_20;
      }

      v16 = *(v26 + 16);
      if (v16 >= *(v26 + 24) >> 1)
      {
        sub_1C4404BBC();
        sub_1C459E978();
      }

      *(v26 + 16) = v16 + 1;
      sub_1C43FBF6C();
      v19 = v26 + v17 + *(v18 + 72) * v16;
      v11 = v14;
      sub_1C44CD9E0(v14, v19, &qword_1EC0B9078, &unk_1C4F30C70);
      if (v2 < v4)
      {
        goto LABEL_16;
      }

      ++v13;
      if ((v4 + v13 - 1) >= v2)
      {
        goto LABEL_17;
      }

      if (v23 == v12)
      {
        goto LABEL_13;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

LABEL_19:
  __break(1u);
LABEL_20:

  __break(1u);
}

void sub_1C45DB3C8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  sub_1C43FE96C();
  sub_1C442DD60();
  v26 = v14;
  v15 = type metadata accessor for PhotosPersonObservation(0);
  v16 = sub_1C43FCF7C(v15);
  MEMORY[0x1EEE9AC00](v16);
  sub_1C43FBCC4();
  sub_1C4416DA8();
  if (v12)
  {
    sub_1C43FFDD4();
    sub_1C459EB68();
    v17 = a10;
    v18 = (v13 + 66);
    while (1)
    {
      v19 = *(v18 - 26);
      v20 = *(v18 - 18);
      v21 = *(v18 - 10);
      v22 = *(v18 - 1);
      v23 = *v18;
      v27[0] = *(v18 - 34);
      v27[1] = v19;
      v27[2] = v20;
      v27[3] = v21;
      v28 = v22;
      v29 = v23;
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
      v26(v27);
      if (v10)
      {
        break;
      }

      v10 = 0;

      sub_1C43FD194();
      if (v24)
      {
        sub_1C44109A4();
        sub_1C459EB68();
        v17 = a10;
      }

      *(v17 + 16) = v13;
      sub_1C442C4C8();
      sub_1C44DD748(v11, v25, type metadata accessor for PhotosPersonObservation);
      v18 += 40;
      if (!--v12)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4431F6C();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DB55C(void (*a1)(uint64_t *__return_ptr, void *), uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v5 = *(a3 + 16);
  v6 = MEMORY[0x1E69E7CC0];
  if (!v5)
  {
    return v6;
  }

  v27 = MEMORY[0x1E69E7CC0];
  v8 = sub_1C4402C34();
  sub_1C459DBF8(v8, v5, 0);
  v6 = v27;
  for (i = (a3 + 40); ; i += 2)
  {
    v10 = *i;
    v22[0] = *(i - 1);
    v22[1] = v10;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    a1(&v23, v22);
    if (v4)
    {
      break;
    }

    v4 = 0;

    v12 = v23;
    v11 = v24;
    v14 = v25;
    v13 = v26;
    v27 = v6;
    v16 = *(v6 + 16);
    v15 = *(v6 + 24);
    if (v16 >= v15 >> 1)
    {
      v20 = v24;
      v18 = v26;
      sub_1C459DBF8(v15 > 1, v16 + 1, 1);
      v13 = v18;
      v11 = v20;
      v6 = v27;
    }

    *(v6 + 16) = v16 + 1;
    v17 = (v6 + 32 * v16);
    v17[4] = v12;
    v17[5] = v11;
    v17[6] = v14;
    v17[7] = v13;
    if (!--v5)
    {
      return v6;
    }
  }

  __break(1u);
  return result;
}

void sub_1C45DB698()
{
  sub_1C43FE96C();
  sub_1C4426A0C(v3, v4);
  v14 = sub_1C4EF98F8();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  sub_1C4405820();
  v8 = *(v1 + 16);
  if (v8)
  {
    v15 = MEMORY[0x1E69E7CC0];
    sub_1C4402C34();
    sub_1C459EE58();
    v9 = v1 + 32;
    while (1)
    {
      sub_1C441C7E0();
      v10();
      if (v0)
      {
        break;
      }

      v11 = *(v15 + 16);
      if (v11 >= *(v15 + 24) >> 1)
      {
        sub_1C44148DC();
        sub_1C459EE58();
      }

      *(v15 + 16) = v11 + 1;
      sub_1C440DEA4();
      (*(v6 + 32))(v12 + v13 * v11, v2, v14);
      v9 += 16;
      if (!--v8)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_7:
    sub_1C4402144();
    sub_1C43FBC80();
  }
}

uint64_t sub_1C45DB7F4(void (*a1)(void), uint64_t a2, uint64_t a3)
{
  v4 = *(a3 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
    return v5;
  }

  v12 = MEMORY[0x1E69E7CC0];
  sub_1C459D930();
  v5 = v12;
  v8 = a3 + 32;
  while (1)
  {
    ++v8;
    sub_1C441C09C();
    a1();
    if (v3)
    {
      break;
    }

    v12 = v5;
    v9 = *(v5 + 16);
    if (v9 >= *(v5 + 24) >> 1)
    {
      sub_1C459D930();
      v5 = v12;
    }

    *(v5 + 16) = v9 + 1;
    sub_1C441D670(&v11, v5 + 40 * v9 + 32);
    if (!--v4)
    {
      return v5;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45DB908(uint64_t *a1)
{
  v2 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1C461AFEC();
    v2 = v3;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  result = sub_1C45E7AF0(v6);
  *a1 = v2;
  return result;
}

uint64_t sub_1C45DB974(uint64_t a1, uint64_t a2, unint64_t a3)
{
  v5 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v6 = *(v5 - 8);
  v74 = v5;
  v75 = v6;
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v68 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v79 = &v68 - v10;
  v11 = sub_1C4EF9CD8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v68 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v68 - v16;
  MEMORY[0x1EEE9AC00](v18);
  v81 = &v68 - v19;
  v20 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v20 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v68 - v22;
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v68 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v31 = (&v68 - v30);
  v84 = a1;
  v86 = *(a1 + 16);
  if (!v86 && !*(v29 + 16))
  {
    return MEMORY[0x1E69E7CC0];
  }

  v70 = v17;
  v71 = a3;
  v68 = v14;
  v69 = v8;
  v87 = 0;
  v32 = 0;
  v83 = (v12 + 16);
  v72 = v12 + 32;
  v73 = (v12 + 8);
  v82 = MEMORY[0x1E69E7CC0];
  v33 = v29;
  v85 = v29;
  v78 = v28;
  while (v32 < v86)
  {
    v34 = *(v33 + 16);
    if (v87 >= v34)
    {
      if (v34 < v86)
      {
        v44 = v84 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32;
        sub_1C45E8E08(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
        v45 = v71;
        if (sub_1C4F01058())
        {
          v46 = *(v74 + 48);
          v47 = *v83;
          v48 = v69;
          (*v83)(v69, v44, v11);
          v47((v48 + v46), v45, v11);
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            sub_1C458AF94();
            v82 = v66;
          }

          v49 = *(v82 + 16);
          if (v49 >= *(v82 + 24) >> 1)
          {
            sub_1C458AF94();
            v82 = v67;
          }

          v50 = v82;
          *(v82 + 16) = v49 + 1;
          sub_1C44CD9E0(v48, v50 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v49, &qword_1EC0B89F0, &qword_1C4F0DE10);
        }

        else
        {
          v51 = v83;
          if (qword_1EDDFA668 != -1)
          {
            swift_once();
          }

          v52 = sub_1C4F00978();
          sub_1C442B738(v52, qword_1EDE2DDE0);
          v53 = *v51;
          v32 = v70;
          (*v51)(v70, v45, v11);
          _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
          v31 = sub_1C4F00968();
          v54 = sub_1C4F01CE8();

          if (os_log_type_enabled(v31, v54))
          {
            v55 = swift_slowAlloc();
            v87 = swift_slowAlloc();
            v88[0] = v87;
            *v55 = 136315394;
            v56 = v68;
            v53(v68, v44, v11);
            v57 = sub_1C4F01198();
            v59 = sub_1C441D828(v57, v58, v88);

            *(v55 + 4) = v59;
            *(v55 + 12) = 2080;
            v53(v56, v32, v11);
            v60 = sub_1C4F01198();
            v62 = v61;
            (*v73)(v32, v11);
            v63 = sub_1C441D828(v60, v62, v88);

            *(v55 + 14) = v63;
            _os_log_impl(&dword_1C43F8000, v31, v54, "BehaviorDatabaseEventTracker: finalValue is less than the start value of an interval: %s > %s", v55, 0x16u);
            v64 = v87;
            swift_arrayDestroy();
            MEMORY[0x1C6942830](v64, -1, -1);
            MEMORY[0x1C6942830](v55, -1, -1);
          }

          else
          {
LABEL_36:

            (*v73)(v32, v11);
          }
        }
      }

      return v82;
    }

    sub_1C440BAA8(v31, 1, 1, v11);
    while (1)
    {
      if (v86 == v32)
      {
        v32 = v86;
        goto LABEL_15;
      }

      if (v32 < 0)
      {
        __break(1u);
        goto LABEL_36;
      }

      v35 = v84 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v32;
      sub_1C45E8E08(&qword_1EDDFCD70, MEMORY[0x1E6969530], MEMORY[0x1E6969548]);
      if ((sub_1C4F01068() & 1) == 0)
      {
        break;
      }

      sub_1C4460050(v31, v26, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = sub_1C44157D4(v26, 1, v11);
      sub_1C4420C3C(v26, &unk_1EC0B84E0, qword_1C4F0D2D0);
      if (v36 == 1)
      {
        (*v83)(v23, v35, v11);
        sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
        sub_1C440BAA8(v23, 0, 1, v11);
        sub_1C44CD9E0(v23, v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      }

      ++v32;
      v33 = v85;
    }

    v33 = v85;
LABEL_15:
    v37 = v78;
    sub_1C4460050(v31, v78, &unk_1EC0B84E0, qword_1C4F0D2D0);
    if (sub_1C44157D4(v37, 1, v11) == 1)
    {
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v37, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      (*(v12 + 32))(v81, v37, v11);
      v38 = v33 + ((*(v12 + 80) + 32) & ~*(v12 + 80)) + *(v12 + 72) * v87;
      v76 = *(v74 + 48);
      v77 = v38;
      v80 = *(v12 + 16);
      v39 = v79;
      v80(v79, v81, v11);
      v80(v39 + v76, v77, v11);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458AF94();
        v82 = v42;
      }

      v40 = *(v82 + 16);
      if (v40 >= *(v82 + 24) >> 1)
      {
        sub_1C458AF94();
        v82 = v43;
      }

      (*v73)(v81, v11);
      sub_1C4420C3C(v31, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v41 = v82;
      *(v82 + 16) = v40 + 1;
      sub_1C44CD9E0(v79, v41 + ((*(v75 + 80) + 32) & ~*(v75 + 80)) + *(v75 + 72) * v40, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v33 = v85;
    }

    ++v87;
  }

  return v82;
}

uint64_t sub_1C45DC2E4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    v2 = 0;
    v3 = 0.0;
    do
    {
      v4 = *(a1 + 32 + 8 * v2++);
      v3 = v3 + v4;
    }

    while (v1 != v2);
    *&result = v3 / v1;
  }

  else
  {
    *&result = 0.0;
  }

  return result;
}

uint64_t sub_1C45DC32C(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    v7 = 0.0;
    return *&v7;
  }

  v9 = a1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45DB908(&v9);
  v2 = v1 >> 1;
  v3 = *(v9 + 16);
  if (v1)
  {
    if (v1 >> 1 < v3)
    {
      v7 = *(v9 + 8 * v2 + 32);

      return *&v7;
    }

    goto LABEL_11;
  }

  if (v1 >> 1 > v3)
  {
    __break(1u);
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v1 >> 1 < v3)
  {
    v4 = v9 + 8 * v2;
    v5 = *(v4 + 24);
    v6 = *(v4 + 32);

    v7 = (v5 + v6) * 0.5;
    return *&v7;
  }

LABEL_12:
  __break(1u);

  __break(1u);
  return result;
}

long double sub_1C45DC400(uint64_t a1, long double result)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v3 = 0;
    result = v2;
    v4 = (a1 + 32);
    v5 = 0.0;
    do
    {
      v6 = v4[v3++];
      v5 = v5 + v6;
    }

    while (v2 != v3);
    if (v2 != 1)
    {
      v7 = 0.0;
      v8 = v5 / result;
      do
      {
        v9 = *v4++;
        v7 = v7 + (v9 - v8) * (v9 - v8);
        --v2;
      }

      while (v2);
      return sqrt(v7 / (result + -1.0));
    }
  }

  return result;
}

uint64_t sub_1C45DC490(uint64_t a1)
{
  v2 = *(a1 + 16);
  v3 = sub_1C45DC32C(a1);
  if ((v4 & 1) != 0 || v2 < 2)
  {
    return 0;
  }

  v5 = *&v3;
  v13 = MEMORY[0x1E69E7CC0];
  sub_1C459D100(0, v2, 0);
  v6 = (a1 + 32);
  v7 = *(v13 + 16);
  do
  {
    v8 = *v6;
    v9 = *(v13 + 24);
    if (v7 >= v9 >> 1)
    {
      v10 = sub_1C441EA8C(v9);
      sub_1C459D100(v10, v7 + 1, 1);
    }

    *(v13 + 16) = v7 + 1;
    *(v13 + 8 * v7 + 32) = vabdd_f64(v8, v5);
    ++v6;
    ++v7;
    --v2;
  }

  while (v2);
  v11 = sub_1C45DC32C(v13);

  return v11;
}

void *sub_1C45DC594(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6[2] = a3;
  v6[3] = a1;
  v6[4] = a2;
  v6[5] = a4;
  v6[6] = a5;
  v6[7] = a6;
  return v6;
}

void *sub_1C45DC5A8()
{

  sub_1C45E8E50(*(v0 + 40), *(v0 + 48));
  return v0;
}

uint64_t sub_1C45DC5DC()
{
  sub_1C45DC5A8();

  return swift_deallocClassInstance();
}

uint64_t sub_1C45DC634(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v8 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v8);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v14 - v10;
  v12 = sub_1C4EFDAB8();
  sub_1C440BAA8(v11, 1, 1, v12);
  sub_1C45DC720(a1, a2, a3, a4, v11, 1);
  return sub_1C4420C3C(v11, &qword_1EC0B9AA0, &unk_1C4F10DA0);
}

void sub_1C45DC720(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v39 = a2;
  v40 = a6;
  v38 = a5;
  v9 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v34 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v34 - v13;
  v15 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v34 - v16;
  v18 = sub_1C4EFDAB8();
  v19 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v21 = &v34 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = objc_autoreleasePoolPush();
  sub_1C4F01968();
  if (v6)
  {
    objc_autoreleasePoolPop(v41);
  }

  else
  {
    v37 = a1;
    sub_1C4460050(v38, v17, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    if (sub_1C44157D4(v17, 1, v18) == 1)
    {
      sub_1C4420C3C(v17, &qword_1EC0B9AA0, &unk_1C4F10DA0);
      v22 = a3[3];
      v23 = a3[4];
      sub_1C4409678(a3, v22);
      v24 = sub_1C4EF9CD8();
      v25 = *(*(v24 - 8) + 16);
      v25(v14, v37, v24);
      sub_1C440BAA8(v14, 0, 1, v24);
      v25(v11, v39, v24);
      sub_1C440BAA8(v11, 0, 1, v24);
      v26 = sub_1C4EFDA68();
      v27 = (*(v23 + 32))(v14, v11, 1, v26, v22, v23);

      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v28 = sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
    }

    else
    {
      (*(v19 + 32))(v21, v17, v18);
      v29 = a3[4];
      v38 = a3[3];
      v35 = v29;
      v36 = sub_1C4409678(a3, v38);
      v30 = sub_1C4EF9CD8();
      v31 = *(*(v30 - 8) + 16);
      v31(v14, v37, v30);
      sub_1C440BAA8(v14, 0, 1, v30);
      v31(v11, v39, v30);
      sub_1C440BAA8(v11, 0, 1, v30);
      v27 = (*(v35 + 24))(v14, v11, v21, v38);
      sub_1C4420C3C(v11, &unk_1EC0B84E0, qword_1C4F0D2D0);
      sub_1C4420C3C(v14, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v28 = (*(v19 + 8))(v21, v18);
    }

    MEMORY[0x1EEE9AC00](v28);
    *(&v34 - 4) = v27;
    *(&v34 - 3) = v32;
    *(&v34 - 16) = v40 & 1;
    sub_1C4EFAFC8();
    v33 = v27;
    sub_1C4EFB2C8();

    objc_autoreleasePoolPop(v41);
    sub_1C4F01968();
  }
}

uint64_t sub_1C45DCC18(uint64_t a1, uint64_t a2, void *a3, uint64_t a4, uint64_t a5, int a6)
{
  v12 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v12);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v19 - v14;
  v16 = sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v17 + 16))(v15, a5, v16);
  sub_1C440BAA8(v15, 0, 1, v16);
  sub_1C45DC720(a1, a2, a3, a4, v15, a6);
  return sub_1C4420C3C(v15, &qword_1EC0B9AA0, &unk_1C4F10DA0);
}

uint64_t sub_1C45DCD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v4 + 16) = a3;
  *(v4 + 24) = v3;
  return MEMORY[0x1EEE6DFA0](sub_1C45DCD60, 0, 0);
}

uint64_t sub_1C45DCD60()
{
  v2 = v0[2];
  v1 = v0[3];
  v3 = swift_allocObject();
  v0[4] = v3;
  *(v3 + 16) = v2;
  *(v3 + 24) = v1;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  v4 = swift_task_alloc();
  v0[5] = v4;
  v5 = sub_1C4EFAFC8();
  *v4 = v0;
  v4[1] = sub_1C45DCE78;
  v6 = MEMORY[0x1E699FDC8];
  v7 = MEMORY[0x1E69E7CA8] + 8;

  return MEMORY[0x1EEE09680](v5, sub_1C45E865C, v3, v5, v7, v6);
}

uint64_t sub_1C45DCE78()
{
  *(*v1 + 48) = v0;

  if (v0)
  {
    v2 = sub_1C45DD0D0;
  }

  else
  {

    v2 = sub_1C45DCF94;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1C45DCF94()
{
  if (*(v0[3] + 48))
  {
    v1 = v0[6];
    sub_1C45DDC14();
    if (v1)
    {
      v2 = v0[1];
      goto LABEL_10;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = sub_1C4F00968();
    v5 = sub_1C4F01CF8();
    if (os_log_type_enabled(v4, v5))
    {
      sub_1C43FD1A8();
      v6 = swift_slowAlloc();
      *v6 = 0;
      _os_log_impl(&dword_1C43F8000, v4, v5, "BehaviorDatabase+EventTracking: Skipping person interaction mechanism tracking based on configuration", v6, 2u);
      MEMORY[0x1C6942830](v6, -1, -1);
    }
  }

  v2 = v0[1];
LABEL_10:

  return v2();
}

uint64_t sub_1C45DD0D0()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_1C45DD134(uint64_t a1, uint64_t a2, char a3)
{
  v76 = a2;
  v5 = sub_1C4EFDAB8();
  v73 = *(v5 - 8);
  v74 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v61 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v61 - v9;
  v11 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v11 - 8);
  v13 = &v61 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v61 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v61 - v19;
  v25 = MEMORY[0x1EEE9AC00](v21);
  v26 = 0;
  if (a3)
  {
    v66 = &v61 - v22;
    v67 = v24;
    v69 = v7;
    v70 = v10;
    v27 = *(a1 + 64);
    v28 = v13;
    v29 = OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date;
    v30 = *(v15 + 16);
    v31 = v23;
    v30(v20, v27 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v23, v25);
    v32 = *(a1 + 32);
    v81 = *(a1 + 16);
    v82[0] = v32;
    *(v82 + 9) = *(a1 + 41);
    v68 = v28;
    v33 = v83;
    sub_1C45DD830(v20, &v81, v28);
    if (v33)
    {
      return (*(v15 + 8))(v20, v31);
    }

    v62 = v29;
    v63 = v30;
    v64 = v27;
    v65 = a1;
    v83 = 0;
    v38 = *(v15 + 8);
    v38(v20, v31);
    v39 = v68;
    v40 = sub_1C44157D4(v68, 1, v31);
    v71 = v15;
    if (v40 == 1)
    {
      v35 = v31;
      sub_1C4420C3C(v39, &unk_1EC0B84E0, qword_1C4F0D2D0);
      v36 = 1;
    }

    else
    {
      v41 = *(v15 + 32);
      v42 = v66;
      v41(v66, v39, v31);
      v43 = v67;
      v63(v67, v64 + v62, v31);
      sub_1C4EF9B78();
      v26 = v44;
      v38(v43, v31);
      v35 = v31;
      v38(v42, v31);
      v36 = 0;
    }

    v37 = v83;
    v10 = v70;
    a1 = v65;
    v7 = v69;
  }

  else
  {
    v71 = v15;
    v35 = v23;
    v36 = 1;
    v37 = v83;
  }

  v77 = 0;
  v78 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1C6940010](*(v75 + 24), *(v75 + 32));
  MEMORY[0x1C6940010](0xD000000000000097, 0x80000001C4F8C1E0);
  sub_1C4EFBED8();

  if (!v37)
  {
    v83 = 0;
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v45 = swift_allocObject();
    LODWORD(v76) = v36;
    v46 = v45;
    *(v45 + 16) = xmmword_1C4F0D480;
    strcpy((v45 + 32), "behaviorType");
    *(v45 + 45) = 0;
    *(v45 + 46) = -5120;
    v47 = *(a1 + 32);
    v79 = *(a1 + 16);
    v80[0] = v47;
    *(v80 + 9) = *(a1 + 41);
    sub_1C45D5A24(v7);
    v48 = sub_1C4EFDAA8();
    (*(v73 + 8))(v7, v74);
    v49 = MEMORY[0x1E69A0180];
    v46[9] = MEMORY[0x1E69E6530];
    v46[10] = v49;
    v46[6] = v48;
    v46[11] = 0xD000000000000012;
    v46[12] = 0x80000001C4F855A0;
    v50 = sub_1C45D2400();
    v51 = MEMORY[0x1E69A0138];
    v46[16] = MEMORY[0x1E69E6158];
    v46[17] = v51;
    v46[13] = v50;
    v46[14] = v52;
    v46[18] = 0x6D617473656D6974;
    v46[19] = 0xE900000000000070;
    v53 = *(a1 + 64);
    v54 = v71;
    v55 = v72;
    (*(v71 + 16))(v72, v53 + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v35);
    sub_1C4EF9AD8();
    v57 = v56;
    (*(v54 + 8))(v55, v35);
    v58 = MEMORY[0x1E69E63B0];
    v59 = MEMORY[0x1E69A0168];
    v46[23] = MEMORY[0x1E69E63B0];
    v46[24] = v59;
    v46[20] = v57;
    v46[25] = 0xD000000000000016;
    v46[26] = 0x80000001C4F855C0;
    if (v76)
    {
      v58 = 0;
      v59 = 0;
      v46[28] = 0;
      v46[29] = 0;
      v26 = 0;
    }

    v46[27] = v26;
    v46[30] = v58;
    v46[31] = v59;
    sub_1C4EFB738();
    v60 = sub_1C4EFB768();
    sub_1C440BAA8(v10, 0, 1, v60);
    sub_1C4EFC0A8();
    sub_1C4420C3C(v10, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  return result;
}

uint64_t sub_1C45DD830@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v25[0] = a3;
  v25[1] = a2;
  v29 = a1;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v25 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v25 - v10;
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  MEMORY[0x1C6940010](*(v3 + 24), *(v3 + 32));
  MEMORY[0x1C6940010](0xD000000000000097, 0x80000001C4F8C2A0);
  sub_1C4EFBED8();

  if (!v4)
  {
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C4F0C890;
    strcpy((v13 + 32), "behaviorType");
    *(v13 + 45) = 0;
    *(v13 + 46) = -5120;
    sub_1C45D5A24(v8);
    v14 = sub_1C4EFDAA8();
    (*(v6 + 8))(v8, v5);
    v15 = MEMORY[0x1E69A0180];
    *(v13 + 72) = MEMORY[0x1E69E6530];
    *(v13 + 80) = v15;
    *(v13 + 48) = v14;
    *(v13 + 88) = 0xD000000000000012;
    *(v13 + 96) = 0x80000001C4F855A0;
    v16 = sub_1C45D2400();
    v17 = MEMORY[0x1E69A0138];
    *(v13 + 128) = MEMORY[0x1E69E6158];
    *(v13 + 136) = v17;
    *(v13 + 104) = v16;
    *(v13 + 112) = v18;
    *(v13 + 144) = 0x6D617473656D6974;
    *(v13 + 152) = 0xE900000000000070;
    sub_1C4EF9AD8();
    v19 = MEMORY[0x1E69A0168];
    *(v13 + 184) = MEMORY[0x1E69E63B0];
    *(v13 + 192) = v19;
    *(v13 + 160) = v20;
    sub_1C4EFB738();
    v21 = sub_1C4EFB768();
    sub_1C440BAA8(v11, 0, 1, v21);
    v27 = 0;
    memset(v26, 0, sizeof(v26));
    sub_1C4EFB9A8();
    sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    if (v28)
    {

      v22 = 1;
      v23 = v25[0];
    }

    else
    {
      v23 = v25[0];
      sub_1C4EF9AC8();

      v22 = 0;
    }

    v24 = sub_1C4EF9CD8();
    return sub_1C440BAA8(v23, v22, 1, v24);
  }

  return result;
}

void sub_1C45DDC88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v143 = a4;
  v140 = a3;
  v142 = a1;
  v136 = sub_1C4EF9CD8();
  v7 = *(v136 - 8);
  MEMORY[0x1EEE9AC00](v136);
  v135 = v120 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  v124 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v138 = v120 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = v120 - v12;
  v128 = sub_1C4428DA0(a2);
  if (v128)
  {
    v129 = 0;
    isUniquelyReferenced_nonNull_native = 0;
    v16 = 0;
    v127 = a2 & 0xC000000000000001;
    v123 = a2 & 0xFFFFFFFFFFFFFF8;
    v126 = a2;
    v122 = a2 + 32;
    v120[1] = 0x80000001C4F866C0;
    v120[0] = 0x80000001C4F866A0;
    v134 = (v7 + 16);
    v133 = (v7 + 8);
    *&v14 = 136315394;
    v121 = v14;
    *&v14 = 136315650;
    v131 = v14;
    v125 = a5;
    v141 = v13;
    while (1)
    {
      if (v127)
      {
        v17 = MEMORY[0x1C6940F90](v16, v126);
      }

      else
      {
        if (v16 >= *(v123 + 16))
        {
          goto LABEL_47;
        }

        v17 = *(v122 + 8 * v16);
      }

      v18 = __OFADD__(v16, 1);
      v19 = v16 + 1;
      if (v18)
      {
        break;
      }

      v20 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityClass);
      v130 = v19;
      switch(v20)
      {
        case 3:

          goto LABEL_11;
        default:
          v21 = sub_1C4F02938();

          if (v21)
          {
LABEL_11:
            sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
            v139 = sub_1C4F00F28();
            v155 = v139;
            v22 = a5;
            v23 = *(a5 + 16);
            if (v23)
            {
              v145 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_attributes;
              v132 = OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date;
              v24 = v22 + ((*(v124 + 80) + 32) & ~*(v124 + 80));
              v144 = *(v124 + 72);
              v146 = v17;
              do
              {
                v25 = sub_1C45E8694(v24, v13);
                v26 = *(v17 + v145);
                MEMORY[0x1EEE9AC00](v25);
                v120[-2] = v13;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v27 = v26;
                v28 = v147;
                v29 = sub_1C4B3421C(sub_1C45E86F8, &v120[-4], v27);
                v147 = v28;
                if (*(v29 + 16))
                {
                  v30 = *(v29 + 32);
                  v31 = *(v29 + 40);
                  v32 = *(v29 + 48);
                  sub_1C45E8718(v30, v31, v32);

                  sub_1C494CF40(*v13);
                  v34 = v33;
                  v36 = v35;
                  sub_1C494D028(v30, v31, v32, &v152);
                  sub_1C45E872C(v30, v31, v32);
                  sub_1C441D670(&v152, &v149);
                  v37 = v155;
                  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                  v148 = v37;
                  v38 = v150;
                  v39 = v151;
                  v40 = sub_1C4418280(&v149, v150);
                  v41 = MEMORY[0x1EEE9AC00](v40);
                  v43 = v120 - ((v42 + 15) & 0xFFFFFFFFFFFFFFF0);
                  (*(v44 + 16))(v43, v41);
                  v45 = v43;
                  v13 = v141;
                  sub_1C45E8740(v45, v34, v36, isUniquelyReferenced_nonNull_native, &v148, v38, v39);
                  sub_1C440962C(&v149);

                  v139 = v148;
                  v155 = v148;
                }

                else
                {

                  v46 = v138;
                  if (qword_1EDDFA668 != -1)
                  {
                    swift_once();
                  }

                  v47 = sub_1C4F00978();
                  sub_1C442B738(v47, qword_1EDE2DDE0);
                  sub_1C45E8694(v13, v46);

                  v48 = v17;
                  v49 = sub_1C4F00968();
                  isUniquelyReferenced_nonNull_native = sub_1C4F01CD8();

                  if (os_log_type_enabled(v49, isUniquelyReferenced_nonNull_native))
                  {
                    v50 = swift_slowAlloc();
                    v137 = swift_slowAlloc();
                    *&v152 = v137;
                    *v50 = v131;

                    v51 = sub_1C4950E5C();
                    v53 = v52;

                    v54 = sub_1C441D828(v51, v53, &v152);

                    *(v50 + 4) = v54;
                    *(v50 + 12) = 2080;
                    v55 = v48 + v132;
                    v56 = v135;
                    v57 = v136;
                    (*v134)(v135, v55, v136);
                    sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
                    v58 = sub_1C4F02858();
                    v60 = v59;
                    (*v133)(v56, v57);
                    v61 = sub_1C441D828(v58, v60, &v152);

                    *(v50 + 14) = v61;
                    *(v50 + 22) = 2080;
                    v62 = v138;
                    sub_1C494CF40(*v138);
                    v64 = v63;
                    v66 = v65;
                    sub_1C45E8968(v62);
                    v67 = sub_1C441D828(v64, v66, &v152);
                    v13 = v141;

                    *(v50 + 24) = v67;
                    _os_log_impl(&dword_1C43F8000, v49, isUniquelyReferenced_nonNull_native, "BehaviorDatabase+EventTracking: Event %s with timestamp %s. Unable to find attribute: %s", v50, 0x20u);
                    v68 = v137;
                    swift_arrayDestroy();
                    MEMORY[0x1C6942830](v68, -1, -1);
                    MEMORY[0x1C6942830](v50, -1, -1);
                  }

                  else
                  {

                    sub_1C45E8968(v46);
                  }
                }

                sub_1C45E8968(v13);
                v24 += v144;
                --v23;
                v17 = v146;
              }

              while (v23);
            }

            v18 = __OFADD__(v129++, 1);
            if (v18)
            {
              goto LABEL_46;
            }

            v69 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
            *&v152 = *(v17 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
            *(&v152 + 1) = v69;
            sub_1C4415EA8();
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v70 = sub_1C4F02058();

            v71 = *(v70 + 16);

            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            a5 = v125;
            _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
            v72 = (v70 + 56);
            if (v71)
            {
              while (1)
              {
                v73 = *(v72 - 1);
                v74 = *v72;
                v152 = *(v72 - 3);
                v153 = v73;
                v154 = v74;
                _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
                v75 = v147;
                sub_1C45DEEDC(&v152, v17, &v155, v142, v140, v143);
                v147 = v75;
                if (v75)
                {
                  break;
                }

                v72 += 4;
                if (!--v71)
                {
                  goto LABEL_25;
                }
              }

              if (qword_1EDDFA668 != -1)
              {
                swift_once();
              }

              v93 = sub_1C4F00978();
              sub_1C442B738(v93, qword_1EDE2DDE0);

              v94 = v147;
              v95 = v147;
              v96 = sub_1C4F00968();
              v97 = sub_1C4F01CD8();

              if (os_log_type_enabled(v96, v97))
              {
                v98 = v17;
                v99 = swift_slowAlloc();
                v146 = swift_slowAlloc();
                *&v152 = v146;
                *v99 = v131;

                v100 = sub_1C4950E5C();
                v102 = v101;

                v103 = sub_1C441D828(v100, v102, &v152);

                *(v99 + 4) = v103;
                *(v99 + 12) = 2080;
                v104 = v135;
                v105 = v136;
                (*v134)(v135, v98 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v136);
                sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
                v106 = sub_1C4F02858();
                v108 = v107;
                v109 = v105;
                v13 = v141;
                (*v133)(v104, v109);
                v110 = sub_1C441D828(v106, v108, &v152);

                *(v99 + 14) = v110;
                *(v99 + 22) = 2080;
                v111 = v147;
                swift_getErrorValue();
                v112 = sub_1C4F02A38();
                v114 = sub_1C441D828(v112, v113, &v152);

                *(v99 + 24) = v114;
                _os_log_impl(&dword_1C43F8000, v96, v97, "BehaviorDatabase+EventTracking: Skipping event %s with timestamp %s due to error - %s", v99, 0x20u);
                v115 = v146;
                swift_arrayDestroy();
                MEMORY[0x1C6942830](v115, -1, -1);
                MEMORY[0x1C6942830](v99, -1, -1);
              }

              else
              {
              }

              v147 = 0;
            }

            else
            {
LABEL_25:
            }

            isUniquelyReferenced_nonNull_native = v129;
          }

          else
          {
            if (qword_1EDDFA668 != -1)
            {
              swift_once();
            }

            v76 = sub_1C4F00978();
            sub_1C442B738(v76, qword_1EDE2DDE0);

            v77 = sub_1C4F00968();
            v78 = sub_1C4F01CD8();

            if (os_log_type_enabled(v77, v78))
            {
              v79 = swift_slowAlloc();
              v145 = swift_slowAlloc();
              *&v152 = v145;
              *v79 = v121;

              v80 = sub_1C4950E5C();
              v146 = isUniquelyReferenced_nonNull_native;
              v81 = v17;
              v83 = v82;

              v84 = sub_1C441D828(v80, v83, &v152);

              *(v79 + 4) = v84;
              *(v79 + 12) = 2080;
              v85 = v135;
              v86 = v136;
              (*v134)(v135, v81 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v136);
              sub_1C45E8E08(&qword_1EDDFCD50, MEMORY[0x1E6969530], MEMORY[0x1E6969570]);
              v87 = sub_1C4F02858();
              v89 = v88;
              v90 = v86;
              v13 = v141;
              (*v133)(v85, v90);
              v91 = sub_1C441D828(v87, v89, &v152);

              *(v79 + 14) = v91;
              _os_log_impl(&dword_1C43F8000, v77, v78, "BehaviorDatabase+EventTracking: Skipping event %s with timestamp %s. Unexpected entity class.", v79, 0x16u);
              v92 = v145;
              swift_arrayDestroy();
              MEMORY[0x1C6942830](v92, -1, -1);
              MEMORY[0x1C6942830](v79, -1, -1);
              isUniquelyReferenced_nonNull_native = v146;
            }
          }

          v16 = v130;
          if (v130 == v128)
          {
            goto LABEL_41;
          }

          break;
      }
    }

    __break(1u);
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  isUniquelyReferenced_nonNull_native = 0;
LABEL_41:
  if (qword_1EDDFA668 != -1)
  {
LABEL_48:
    swift_once();
  }

  v116 = sub_1C4F00978();
  sub_1C442B738(v116, qword_1EDE2DDE0);
  v117 = sub_1C4F00968();
  v118 = sub_1C4F01CC8();
  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    *v119 = 134217984;
    *(v119 + 4) = isUniquelyReferenced_nonNull_native;
    _os_log_impl(&dword_1C43F8000, v117, v118, "BehaviorDatabase+EventTracking: VirtualInteraction: Iterated through %ld events", v119, 0xCu);
    MEMORY[0x1C6942830](v119, -1, -1);
  }
}

uint64_t sub_1C45DECC0(uint64_t a1, _BYTE *a2)
{
  v2 = 0x4449656C646E7562;
  v3 = *(a1 + 16);
  v4 = 0xE800000000000000;
  v5 = 0x4449656C646E7562;
  switch(v3)
  {
    case 1:
      v4 = 0x80000001C4F86740;
      v5 = 0xD000000000000011;
      break;
    case 2:
      v5 = 0x456E6F6973736573;
      v4 = 0xEC000000746E6576;
      break;
    case 3:
      v5 = 0xD000000000000016;
      v6 = "entityIdentifier";
      goto LABEL_8;
    case 4:
      v5 = 0x7463617265746E69;
      v4 = 0xEF657079546E6F69;
      break;
    case 5:
      v5 = 0x646576726573626FLL;
      v4 = 0xEB00000000656741;
      break;
    case 6:
      v5 = 0xD000000000000016;
      v6 = "lookaheadDuration";
LABEL_8:
      v4 = v6 | 0x8000000000000000;
      break;
    default:
      break;
  }

  v7 = 0xE800000000000000;
  switch(*a2)
  {
    case 1:
      v7 = 0x80000001C4F86740;
      v2 = 0xD000000000000011;
      break;
    case 2:
      v2 = 0x456E6F6973736573;
      v7 = 0xEC000000746E6576;
      break;
    case 3:
      v2 = 0xD000000000000016;
      v8 = "entityIdentifier";
      goto LABEL_14;
    case 4:
      v2 = 0xD000000000000016;
      v8 = "lookaheadDuration";
LABEL_14:
      v7 = v8 | 0x8000000000000000;
      break;
    case 5:
      v2 = 0x7463617265746E69;
      v7 = 0xEF657079546E6F69;
      break;
    case 6:
      v2 = 0x646576726573626FLL;
      v7 = 0xEB00000000656741;
      break;
    default:
      break;
  }

  if (v5 == v2 && v4 == v7)
  {
    v10 = 1;
  }

  else
  {
    v10 = sub_1C4F02938();
  }

  return v10 & 1;
}

uint64_t sub_1C45DEEDC(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v28 = a6;
  v27 = a5;
  v29 = a4;
  v31 = sub_1C4EFB768();
  v30 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v8 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *a1;
  v9 = a1[1];
  v11 = a1[2];
  v12 = a1[3];
  sub_1C456902C(&qword_1EC0B9048, &unk_1C4F0EB60);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C4F0CE60;
  *(inited + 32) = 0xD000000000000010;
  *(inited + 40) = 0x80000001C4F855E0;
  v14 = MEMORY[0x1C693FEF0](v10, v9, v11, v12);
  v15 = MEMORY[0x1E69A0138];
  *(inited + 72) = MEMORY[0x1E69E6158];
  *(inited + 80) = v15;
  *(inited + 48) = v14;
  *(inited + 56) = v16;
  *(inited + 88) = 0x7463617265746E69;
  *(inited + 96) = 0xEF657461446E6F69;
  sub_1C4EF9AD8();
  v17 = MEMORY[0x1E69A0168];
  *(inited + 128) = MEMORY[0x1E69E63B0];
  *(inited + 136) = v17;
  *(inited + 104) = v18;
  sub_1C456902C(&qword_1EC0BC780, &unk_1C4F29270);
  v19 = sub_1C4F00F28();
  v20 = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v21 = sub_1C45DF300(v20, v19);
  v32[0] = 0;
  v32[1] = 0xE000000000000000;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4F02248();

  strcpy(v32, "INSERT INTO ");
  BYTE5(v32[1]) = 0;
  HIWORD(v32[1]) = -5120;
  MEMORY[0x1C6940010](v27, v28);
  MEMORY[0x1C6940010](10272, 0xE200000000000000);
  v33 = v21;
  sub_1C456902C(&qword_1EC0B9AB8, &qword_1C4F10DD8);
  sub_1C4401CBC(&qword_1EDDDBD98, &qword_1EC0B9AB8, &qword_1C4F10DD8, MEMORY[0x1E69E5D90]);
  sub_1C4415EA8();
  v22 = sub_1C4F01568();
  MEMORY[0x1C6940010](v22);

  MEMORY[0x1C6940010](0x5345554C41560A29, 0xEA00000000002820);
  v33 = sub_1C45D9340(v21);
  sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
  sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
  v23 = sub_1C4F01048();
  v25 = v24;

  MEMORY[0x1C6940010](v23, v25);

  MEMORY[0x1C6940010](41, 0xE100000000000000);
  sub_1C465D0F0(v21);

  sub_1C4EFB778();
  sub_1C4EFBFF8();
  (*(v30 + 8))(v8, v31);
}

uint64_t sub_1C45DF300(uint64_t a1, uint64_t a2)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v8 = a2;
  sub_1C45E83C8(a1, sub_1C45E8390, 0, isUniquelyReferenced_nonNull_native, &v8);
  v6 = v8;
  if (v2)
  {
  }

  return v6;
}

uint64_t sub_1C45DF384(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = v3;
  v37 = sub_1C4EF9CD8();
  v8 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v36 = &v31 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_1C4428DA0(a2);
  v11 = 0;
  v39 = a2 & 0xC000000000000001;
  v40 = result;
  v38 = a2 & 0xFFFFFFFFFFFFFF8;
  v35 = (v8 + 16);
  *&v12 = 136315394;
  v31 = v12;
  v33 = a2;
  v34 = a3;
  v32 = a1;
  while (v40 != v11)
  {
    if (v39)
    {
      result = MEMORY[0x1C6940F90](v11, a2);
      v13 = result;
    }

    else
    {
      if (v11 >= *(v38 + 16))
      {
        goto LABEL_19;
      }

      v13 = *(a2 + 8 * v11 + 32);
    }

    if (__OFADD__(v11, 1))
    {
      __break(1u);
LABEL_19:
      __break(1u);
      return result;
    }

    v41 = objc_autoreleasePoolPush();
    type metadata accessor for BehaviorEvent();
    v14 = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier + 8);
    v42[0] = *(v13 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_entityIdentifier);
    v42[1] = v14;
    memset(&v42[2], 0, 24);
    v43 = 17;
    v15 = v36;
    (*v35)(v36, v13 + OBJC_IVAR____TtC24IntelligencePlatformCore16InteractionEvent_date, v37);
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C45D644C(v42, v15);
    sub_1C45DD134(v16, a1, 1);
    if (v4)
    {

      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v17 = sub_1C4F00978();
      sub_1C442B738(v17, qword_1EDE2DDE0);

      v18 = v4;
      v19 = sub_1C4F00968();
      v20 = sub_1C4F01CD8();

      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v44 = v22;
        *v21 = v31;
        v23 = sub_1C4950E5C();
        v25 = sub_1C441D828(v23, v24, &v44);

        *(v21 + 4) = v25;
        *(v21 + 12) = 2080;
        swift_getErrorValue();
        v26 = sub_1C4F02A38();
        v28 = sub_1C441D828(v26, v27, &v44);

        *(v21 + 14) = v28;
        _os_log_impl(&dword_1C43F8000, v19, v20, "BehaviorDatabase+EventTracking: Skipping event %s due to error - %s", v21, 0x16u);
        swift_arrayDestroy();
        v29 = v22;
        a2 = v33;
        MEMORY[0x1C6942830](v29, -1, -1);
        v30 = v21;
        a1 = v32;
        MEMORY[0x1C6942830](v30, -1, -1);
      }

      else
      {
      }

      v4 = 0;
    }

    else
    {
    }

    objc_autoreleasePoolPop(v41);

    ++v11;
  }

  return result;
}

void sub_1C45DF758(uint64_t a1, void *a2, uint64_t a3, char a4)
{
  v16 = sub_1C45DF8DC;
  v17 = 0;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1C44405F8;
  v15 = &unk_1F43E2428;
  v8 = _Block_copy(&v12);
  v9 = swift_allocObject();
  *(v9 + 16) = a3;
  *(v9 + 24) = a1;
  *(v9 + 32) = a4;
  v16 = sub_1C45E7A6C;
  v17 = v9;
  v12 = MEMORY[0x1E69E9820];
  v13 = 1107296256;
  v14 = sub_1C45DFE08;
  v15 = &unk_1F43E2478;
  v10 = _Block_copy(&v12);

  v11 = [a2 sinkWithCompletion:v8 receiveInput:v10];
  _Block_release(v10);
  _Block_release(v8);
}

void sub_1C45DF8DC(void *a1)
{
  v1 = [a1 error];
  if (v1)
  {
    v2 = v1;
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v3 = sub_1C4F00978();
    sub_1C442B738(v3, qword_1EDE2DDE0);
    v4 = v2;
    oslog = sub_1C4F00968();
    v5 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v5))
    {
      v6 = swift_slowAlloc();
      v7 = swift_slowAlloc();
      v12 = v7;
      *v6 = 136315138;
      swift_getErrorValue();
      v8 = sub_1C4F02A38();
      v10 = sub_1C441D828(v8, v9, &v12);

      *(v6 + 4) = v10;
      _os_log_impl(&dword_1C43F8000, oslog, v5, "BehaviorDatabase+EventTracking: Biome sink completed with error - %s", v6, 0xCu);
      sub_1C440962C(v7);
      MEMORY[0x1C6942830](v7, -1, -1);
      MEMORY[0x1C6942830](v6, -1, -1);
    }

    else
    {
    }
  }
}

void sub_1C45DFA90(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (sub_1C4F01948())
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v7 = sub_1C4F00978();
    sub_1C442B738(v7, qword_1EDE2DDE0);

    oslog = sub_1C4F00968();
    v8 = sub_1C4F01CD8();

    if (os_log_type_enabled(oslog, v8))
    {
      v9 = swift_slowAlloc();
      v10 = swift_slowAlloc();
      v15 = v10;
      *v9 = 136315138;
      v11 = sub_1C45D62A8();
      v13 = sub_1C441D828(v11, v12, &v15);

      *(v9 + 4) = v13;
      _os_log_impl(&dword_1C43F8000, oslog, v8, "BehaviorDatabase+EventTracking: task is cancelled while processing the event %s", v9, 0xCu);
      sub_1C440962C(v10);
      MEMORY[0x1C6942830](v10, -1, -1);
      MEMORY[0x1C6942830](v9, -1, -1);
    }

    else
    {
    }
  }

  else
  {
    sub_1C45DD134(a1, a3, a4 & 1);
  }
}

uint64_t sub_1C45DFE08(uint64_t a1, uint64_t a2)
{
  v2 = *(a1 + 32);

  v2(v3);
}

void sub_1C45DFE68()
{
  sub_1C4EFAFC8();
  v2 = sub_1C4EFB2C8();
  if (!v1)
  {
    if (*(v0 + 48))
    {
      MEMORY[0x1EEE9AC00](v2);
      sub_1C4EFB2C8();
    }

    else
    {
      if (qword_1EDDFA668 != -1)
      {
        sub_1C4406758();
        swift_once();
      }

      v3 = sub_1C4F00978();
      sub_1C442B738(v3, qword_1EDE2DDE0);
      v4 = sub_1C4F00968();
      v5 = sub_1C4F01CF8();
      if (sub_1C441E1F8(v5))
      {
        sub_1C43FD1A8();
        *swift_slowAlloc() = 0;
        sub_1C442FB40(&dword_1C43F8000, v6, v7, "BehaviorDatabase+EventTracking: Skipping delete of person interaction mechanism tracking based on configuration");
        sub_1C43FEA20();
      }
    }
  }
}

uint64_t sub_1C45DFFE4(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v9, "DELETE FROM ");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32), v5);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

uint64_t sub_1C45E011C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  v7 = MEMORY[0x1EEE9AC00](v5);
  v9 = v11 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v11, "DELETE FROM ");
  HIBYTE(v11[6]) = 0;
  v11[7] = -5120;
  MEMORY[0x1C6940010](a2, a3, v7);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v6 + 8))(v9, v5);
}

uint64_t sub_1C45E025C()
{
  sub_1C4EFAFC8();
  result = sub_1C4EFB2C8();
  if (!v0)
  {
    MEMORY[0x1EEE9AC00](result);
    return sub_1C4EFB2C8();
  }

  return result;
}

uint64_t sub_1C45E0340(uint64_t a1, uint64_t a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11[0] = 0;
  v11[1] = 0xE000000000000000;
  sub_1C4F02248();

  strcpy(v11, "DELETE FROM ");
  BYTE5(v11[1]) = 0;
  HIWORD(v11[1]) = -5120;
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8C390);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  *(v7 + 32) = 0x695466664F747563;
  *(v7 + 40) = 0xEF706D617473656DLL;
  sub_1C4EF9AD8();
  v8 = MEMORY[0x1E69A0168];
  *(v7 + 72) = MEMORY[0x1E69E63B0];
  *(v7 + 80) = v8;
  *(v7 + 48) = v9;
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v6, v3);
}

uint64_t sub_1C45E0530(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v24 = a3;
  v30 = sub_1C4EFB768();
  v5 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v23 = &v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v20 - v8;
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();

  *&v26[0] = 0xD000000000000015;
  *(&v26[0] + 1) = 0x80000001C4F8C340;
  v10 = *(a2 + 24);
  v11 = *(a2 + 32);
  MEMORY[0x1C6940010](v10, v11);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v12 = MEMORY[0x1E69E6530];
  v13 = v25;
  sub_1C4EFB998();
  if (v13)
  {

    (*(v5 + 8))(v9, v30);
    return sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    v21 = v10;
    v22 = v11;
    v25 = 0;
    v15 = v24;
    v20 = a1;

    v16 = *(v5 + 8);
    v17 = v30;
    v16(v9, v30);
    result = sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    if ((v29 & 1) == 0)
    {
      v18 = v28;
      if (v28 > v15)
      {
        *&v26[0] = 0;
        *(&v26[0] + 1) = 0xE000000000000000;
        sub_1C4F02248();

        strcpy(v26, "DELETE FROM ");
        BYTE13(v26[0]) = 0;
        HIWORD(v26[0]) = -5120;
        MEMORY[0x1C6940010](v21, v22);
        MEMORY[0x1C6940010](0xD000000000000024, 0x80000001C4F8C360);
        sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
        result = swift_allocObject();
        *(result + 16) = xmmword_1C4F0D130;
        *(result + 32) = 0x746E756F63;
        *(result + 40) = 0xE500000000000000;
        if (__OFSUB__(v18, v15))
        {
          __break(1u);
        }

        else
        {
          *(result + 72) = v12;
          *(result + 80) = MEMORY[0x1E69A0180];
          *(result + 48) = v18 - v15;
          v19 = v23;
          sub_1C4EFB738();
          sub_1C4EFBFF8();
          v16(v19, v17);
        }
      }
    }
  }

  return result;
}

uint64_t sub_1C45E0930(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v48 = a3;
  v53 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  sub_1C43FCDF8();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v47 = v12 - v13;
  MEMORY[0x1EEE9AC00](v14);
  v52 = v41 - v15;
  MEMORY[0x1EEE9AC00](v16);
  v46 = v41 - v18;
  if (!*(a2 + 16))
  {
    *&result = 0.0;
    return result;
  }

  v42 = *(a2 + 16);
  MEMORY[0x1EEE9AC00](v17);
  v41[-2] = v4;
  v41[-1] = a1;
  sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
  *&result = COERCE_DOUBLE(sub_1C4EFAF88());
  if (!v5)
  {
    if (!*(v54 + 16))
    {

      *&result = 0.0;
      return result;
    }

    v41[1] = 0;
    v44 = *(v53 + 48);
    v45 = v54;
    v20 = a2 + ((*(v10 + 80) + 32) & ~*(v10 + 80));
    v43 = *(v10 + 72);
    v21 = 0.0;
    v22 = &qword_1EC0B89F0;
    v23 = &qword_1C4F0DE10;
    v24 = v42;
    v25 = 0.0;
    while (1)
    {
      v50 = v24;
      v51 = v20;
      v26 = v46;
      sub_1C4460050(v20, v46, v22, v23);
      v27 = *(v53 + 48);
      v49 = v27;
      v28 = sub_1C4EF9CD8();
      v29 = *(v28 - 8);
      v30 = *(v29 + 32);
      v31 = v23;
      v32 = v22;
      v33 = v52;
      v30(v52, v26, v28);
      v30(v33 + v27, v26 + v44, v28);
      v34 = v33;
      v22 = v32;
      v23 = v31;
      v35 = v47;
      sub_1C4460050(v34, v47, v22, v31);
      v36 = *(v53 + 48);
      v37 = sub_1C45E2238(v35, v35 + v36, v45);
      v38 = *(v29 + 8);
      v38(v35 + v36, v28);
      v38(v35, v28);
      sub_1C4EF9B78();
      if (v39 <= 0.0)
      {
        break;
      }

      v40 = exp2(-v39 / a4);
      sub_1C4420C3C(v52, v22, v23);
      if (v37)
      {
        goto LABEL_9;
      }

LABEL_10:
      v21 = v21 + v40;
      v20 = v51 + v43;
      v24 = v50 - 1;
      if (v50 == 1)
      {

        *&result = v25 / v21;
        return result;
      }
    }

    sub_1C4420C3C(v52, v22, v23);
    v40 = 1.0;
    if ((v37 & 1) == 0)
    {
      goto LABEL_10;
    }

LABEL_9:
    v25 = v25 + v40;
    goto LABEL_10;
  }

  return result;
}

uint64_t sub_1C45E0CE4()
{
  sub_1C456902C(&qword_1EC0B9A58, &unk_1C4F10E60);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1C45E0D68(uint64_t a1, uint64_t a2, uint64_t a3, double a4)
{
  v9 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v11 = v10;
  v13 = *(v12 + 64);
  v15 = MEMORY[0x1EEE9AC00](v14);
  if (*(a2 + 16))
  {
    (*(v11 + 16))(&v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), a3, v9, v15);
    v16 = *(v11 + 80);
    v21 = a1;
    v17 = (v16 + 16) & ~v16;
    v18 = swift_allocObject();
    v19 = (*(v11 + 32))(v18 + v17, &v20 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0), v9);
    *(v18 + ((v13 + v17 + 7) & 0xFFFFFFFFFFFFFFF8)) = a4;
    MEMORY[0x1EEE9AC00](v19);
    *(&v20 - 6) = a2;
    *(&v20 - 5) = v4;
    *(&v20 - 4) = v21;
    *(&v20 - 3) = sub_1C45E8C2C;
    *(&v20 - 2) = v18;
    sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
    sub_1C4EFAF88();
  }

  sub_1C4402144();
}

uint64_t sub_1C45E0F90(uint64_t a1, uint64_t a2)
{
  sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
  result = sub_1C4EFAF88();
  if (!v2)
  {
    return v4;
  }

  return result;
}

double sub_1C45E100C(uint64_t a1)
{
  sub_1C4EFAF88();
  if (!v1)
  {
    return v3;
  }

  return result;
}

double sub_1C45E1070@<D0>(uint64_t a3@<X8>)
{
  sub_1C456902C(&qword_1EC0B9A20, &unk_1C4F10DF0);
  sub_1C4EFAF88();
  if (!v3)
  {
    result = *&v6;
    *a3 = v6;
    *(a3 + 16) = v7;
    *(a3 + 32) = v8;
    *(a3 + 40) = v9;
  }

  return result;
}

uint64_t sub_1C45E110C()
{
  if (*(v0 + 48))
  {
    sub_1C44101B4();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C456902C(&qword_1EC0B9AE8, &qword_1C4F10E40);
    result = sub_1C440BB2C();
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C441E1F8(v6))
    {
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C442FB40(&dword_1C43F8000, v7, v8, "CustomAttributesTable is nil. Returning []");
      sub_1C43FEA20();
    }

    return MEMORY[0x1E69E7CC0];
  }

  return result;
}

uint64_t sub_1C45E1240()
{
  if (*(v0 + 48))
  {
    sub_1C44101B4();
    MEMORY[0x1EEE9AC00](v2);
    sub_1C456902C(&qword_1EC0B9AF8, &qword_1C4F10E50);
    result = sub_1C440BB2C();
    if (!v1)
    {
      return v9;
    }
  }

  else
  {
    if (qword_1EDDFA668 != -1)
    {
      sub_1C4406758();
      swift_once();
    }

    v4 = sub_1C4F00978();
    sub_1C442B738(v4, qword_1EDE2DDE0);
    v5 = sub_1C4F00968();
    v6 = sub_1C4F01CF8();
    if (sub_1C441E1F8(v6))
    {
      sub_1C43FD1A8();
      *swift_slowAlloc() = 0;
      sub_1C442FB40(&dword_1C43F8000, v7, v8, "CustomAttributesTable is nil. Returning []");
      sub_1C43FEA20();
    }

    sub_1C456902C(&qword_1EC0B9AF0, &qword_1C4F10E48);
    return sub_1C4F00F28();
  }

  return result;
}

uint64_t sub_1C45E1398()
{
  sub_1C456902C(&qword_1EC0B8F58, &qword_1C4F11020);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1C45E1418()
{
  sub_1C43FE96C();
  v0 = sub_1C4EF9CD8();
  sub_1C43FCDF8();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  sub_1C43FBCC4();
  v6 = v5 - v4;
  sub_1C4EF9BE8();
  sub_1C456902C(&qword_1EC0B9AB0, &qword_1C4F10DC8);
  sub_1C4EFAF88();
  (*(v2 + 8))(v6, v0);
  sub_1C43FBC80();
}

double sub_1C45E15D8(double a1, double a2)
{
  v3 = sub_1C4EF9CD8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9AC8();
  sub_1C4EF9B78();
  v8 = 1.0;
  if (v7 > 0.0)
  {
    v8 = exp2(-v7 / a2);
  }

  (*(v4 + 8))(v6, v3);
  return v8;
}

void sub_1C45E16D8(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, double (*a5)(uint64_t, double)@<X4>, uint64_t a6@<X5>, double *a7@<X8>)
{
  v117 = a6;
  v103 = a3;
  v104 = a4;
  v111 = a1;
  v83 = a7;
  v9 = sub_1C4EFB768();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v88 = &v83 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v101 = &v83 - v13;
  v100 = sub_1C4EFDAB8();
  v14 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v99 = &v83 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v98 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  v97 = *(v98 - 8);
  MEMORY[0x1EEE9AC00](v98);
  v95 = &v83 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v112 = &v83 - v18;
  MEMORY[0x1EEE9AC00](v19);
  v94 = &v83 - v20;
  v102 = a2;
  v106 = *(a2 + 16);
  v21 = 0;
  v93 = "\nORDER BY timestamp, rowid";
  v92 = "SELECT\n    timestamp\nFROM\n    ";
  v91 = (v14 + 8);
  v90 = 0x80000001C4F855A0;
  v87 = "entifier == :behaviorIdentifier";
  v86 = "SELECT\n   timestamp\nFROM\n   ";
  v22 = 0.0;
  v89 = xmmword_1C4F0D480;
  v85 = xmmword_1C4F0CE60;
  v23 = 0.0;
  v105 = v9;
  v96 = (v10 + 8);
  v84 = a5;
  while (v21 != v106)
  {
    v24 = v102 + ((*(v97 + 80) + 32) & ~*(v97 + 80));
    v25 = *(v97 + 72);
    v107 = v21;
    v26 = v94;
    sub_1C4460050(v24 + v25 * v21, v94, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v27 = v98;
    v28 = *(v98 + 48);
    v29 = sub_1C4EF9CD8();
    v30 = *(v29 - 8);
    v31 = *(v30 + 32);
    v32 = v112;
    v31(v112, v26, v29);
    v31(v32 + v28, v26 + v28, v29);
    v33 = v95;
    sub_1C4460050(v32, v95, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v34 = *(v27 + 48);
    sub_1C4EF9AD8();
    v36 = v35;
    v37 = *(v30 + 8);
    v37(v33, v29);
    v37(v33 + v34, v29);
    sub_1C4460050(v32, v33, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v38 = *(v27 + 48);
    sub_1C4EF9AD8();
    v40 = v39;
    v37(v33 + v38, v29);
    v37(v33, v29);
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001ELL, v93 | 0x8000000000000000);
    v41 = *(v103 + 24);
    v109 = *(v103 + 32);
    v110 = v41;
    MEMORY[0x1C6940010]();
    MEMORY[0x1C6940010](0xD00000000000008FLL, v92 | 0x8000000000000000);
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v42 = swift_allocObject();
    *(v42 + 16) = v89;
    *(v42 + 32) = 0x7472617473;
    *(v42 + 40) = 0xE500000000000000;
    v43 = MEMORY[0x1E69E63B0];
    *(v42 + 72) = MEMORY[0x1E69E63B0];
    v44 = MEMORY[0x1E69A0168];
    *(v42 + 48) = v36;
    *(v42 + 80) = v44;
    *(v42 + 88) = 6581861;
    *(v42 + 96) = 0xE300000000000000;
    *(v42 + 128) = v43;
    *(v42 + 136) = v44;
    *(v42 + 104) = v40;
    strcpy((v42 + 144), "behaviorType");
    *(v42 + 157) = 0;
    *(v42 + 158) = -5120;
    v45 = v99;
    sub_1C45D5A24(v99);
    v46 = sub_1C4EFDAA8();
    (*v91)(v45, v100);
    *(v42 + 184) = MEMORY[0x1E69E6530];
    v47 = MEMORY[0x1E69A0180];
    *(v42 + 160) = v46;
    *(v42 + 192) = v47;
    *(v42 + 200) = 0xD000000000000012;
    *(v42 + 208) = v90;
    v48 = sub_1C45D2400();
    *(v42 + 240) = MEMORY[0x1E69E6158];
    *(v42 + 248) = MEMORY[0x1E69A0138];
    *(v42 + 216) = v48;
    *(v42 + 224) = v49;
    v50 = v101;
    sub_1C4EFB738();
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v51 = v113;
    v52 = sub_1C4EFB978();
    if (v51)
    {
      v113 = v51;

      sub_1C4420C3C(&v114, &unk_1EC0BC770, &qword_1C4F10DC0);
      (*v96)(v50, v105);
      sub_1C4420C3C(v112, &qword_1EC0B89F0, &qword_1C4F0DE10);
      return;
    }

    v53 = v52;

    sub_1C4420C3C(&v114, &unk_1EC0BC770, &qword_1C4F10DC0);
    v54 = v105;
    v108 = *v96;
    v108(v50, v105);
    *&v114 = 0;
    *(&v114 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001CLL, v87 | 0x8000000000000000);
    MEMORY[0x1C6940010](v110, v109);
    MEMORY[0x1C6940010](0xD000000000000035, v86 | 0x8000000000000000);
    v113 = v114;
    v55 = swift_allocObject();
    *(v55 + 16) = v85;
    *(v55 + 32) = 0x7472617473;
    *(v55 + 40) = 0xE500000000000000;
    v56 = MEMORY[0x1E69E63B0];
    *(v55 + 72) = MEMORY[0x1E69E63B0];
    *(v55 + 80) = v44;
    *(v55 + 48) = v36;
    *(v55 + 88) = 6581861;
    *(v55 + 96) = 0xE300000000000000;
    *(v55 + 128) = v56;
    *(v55 + 136) = v44;
    *(v55 + 104) = v40;
    v57 = v88;
    sub_1C4EFB738();
    v116 = 0;
    v114 = 0u;
    v115 = 0u;
    v58 = sub_1C4EFB978();
    v113 = 0;
    v59 = v58;

    sub_1C4420C3C(&v114, &unk_1EC0BC770, &qword_1C4F10DC0);
    v108(v57, v54);
    v60 = *(v53 + 16);
    if (v60)
    {
      *&v114 = MEMORY[0x1E69E7CC0];
      sub_1C459D100(0, v60, 0);
      v61 = 0;
      v62 = v114;
      v63 = v84;
      while (v61 < *(v53 + 16))
      {
        v64 = v63(*(v53 + 8 * v61 + 32));
        *&v114 = v62;
        v66 = *(v62 + 16);
        v65 = *(v62 + 24);
        if (v66 >= v65 >> 1)
        {
          sub_1C459D100(v65 > 1, v66 + 1, 1);
          v62 = v114;
        }

        ++v61;
        *(v62 + 16) = v66 + 1;
        *(v62 + 8 * v66 + 32) = v64;
        if (v60 == v61)
        {

          goto LABEL_12;
        }
      }

      __break(1u);
      goto LABEL_36;
    }

    v62 = MEMORY[0x1E69E7CC0];
    v63 = v84;
LABEL_12:
    v67 = *(v62 + 16);
    if (v67)
    {
      v68 = (v62 + 32);
      v69 = 0.0;
      do
      {
        v70 = *v68++;
        v69 = v69 + v70;
        --v67;
      }

      while (v67);
    }

    else
    {
      v69 = 0.0;
    }

    v71 = *(v59 + 16);
    if (v71)
    {
      *&v114 = MEMORY[0x1E69E7CC0];
      sub_1C459D100(0, v71, 0);
      v72 = 0;
      v73 = v114;
      while (v72 < *(v59 + 16))
      {
        v74 = v63(*(v59 + 8 * v72 + 32));
        *&v114 = v73;
        v76 = *(v73 + 16);
        v75 = *(v73 + 24);
        if (v76 >= v75 >> 1)
        {
          sub_1C459D100(v75 > 1, v76 + 1, 1);
          v73 = v114;
        }

        ++v72;
        *(v73 + 16) = v76 + 1;
        *(v73 + 8 * v76 + 32) = v74;
        if (v71 == v72)
        {

          goto LABEL_25;
        }
      }

LABEL_36:
      __break(1u);
      return;
    }

    v73 = MEMORY[0x1E69E7CC0];
LABEL_25:
    v77 = *(v73 + 16);
    if (v77)
    {
      v78 = (v73 + 32);
      v79 = 0.0;
      do
      {
        v80 = *v78++;
        v79 = v79 + v80;
        --v77;
      }

      while (v77);
    }

    else
    {
      v79 = 0.0;
    }

    v21 = v107 + 1;
    v22 = v22 + v69;

    sub_1C4420C3C(v112, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v23 = v23 + v79;
  }

  v81 = 0.0;
  if (v23 > 0.0)
  {
    v81 = v22 / v23;
  }

  v82 = v83;
  *v83 = v81;
  *(v82 + 8) = v23 <= 0.0;
}

uint64_t sub_1C45E2238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B89F0, &qword_1C4F0DE10);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBD08();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = sub_1C4EF9CD8();
  v15 = *(v14 - 8);
  v16 = *(v15 + 16);
  v17 = a1;
  v18 = a3;
  v16(v13, v17, v14);
  v16(&v13[*(v6 + 48)], a2, v14);
  sub_1C4460050(v13, v10, &qword_1EC0B89F0, &qword_1C4F0DE10);
  v19 = *(v6 + 48);
  sub_1C4EF9AD8();
  v21 = v20;
  v22 = *(v15 + 8);
  v22(v10 + v19, v14);
  v23 = sub_1C45E24E0(v18, v21);
  LOBYTE(v19) = v24;
  v25 = sub_1C4404BCC();
  result = (v22)(v25);
  if (v19)
  {
    goto LABEL_5;
  }

  if ((v23 & 0x8000000000000000) != 0)
  {
    __break(1u);
  }

  else if (v23 < *(v18 + 16))
  {
    v27 = *(v18 + 8 * v23 + 32);
    sub_1C4460050(v13, v10, &qword_1EC0B89F0, &qword_1C4F0DE10);
    v28 = *(v6 + 48);
    sub_1C4EF9AD8();
    v30 = v29;
    v31 = sub_1C4404BCC();
    (v22)(v31);
    v22(v10 + v28, v14);
    if (v30 <= v27)
    {
      sub_1C4460050(v13, v10, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v33 = *(v6 + 48);
      sub_1C4EF9AD8();
      v35 = v34;
      sub_1C4420C3C(v13, &qword_1EC0B89F0, &qword_1C4F0DE10);
      v22(v10 + v33, v14);
      v32 = v27 <= v35;
      v36 = sub_1C4404BCC();
      (v22)(v36);
      return v32;
    }

LABEL_5:
    sub_1C4420C3C(v13, &qword_1EC0B89F0, &qword_1C4F0DE10);
    return 0;
  }

  __break(1u);
  return result;
}

unint64_t sub_1C45E24E0(uint64_t a1, double a2)
{
  v2 = *(a1 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a1 + 32;
  result = *(a1 + 16);
LABEL_3:
  v6 = result;
  while (v3 < v6)
  {
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
LABEL_23:
      __break(1u);
      return result;
    }

    v7 = (v6 - v3) / 2;
    result = v3 + v7;
    if (__OFADD__(v3, v7))
    {
      goto LABEL_21;
    }

    if (result >= v2)
    {
      goto LABEL_22;
    }

    v8 = *(v4 + 8 * result);
    if (v8 == a2)
    {
      return result;
    }

    if (v8 >= a2)
    {
      goto LABEL_3;
    }

    v3 = result + 1;
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return 0;
    }
  }

  result = v3 - (v3 == v2);
  if (result >= v2)
  {
    goto LABEL_23;
  }

  if (*(v4 + 8 * result) > a2)
  {
    if (result)
    {
      --result;
    }

    else
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C45E2594(uint64_t result, uint64_t a2)
{
  v2 = *(a2 + 16);
  if (!v2)
  {
    return 0;
  }

  v3 = 0;
  v4 = a2 + 32;
  v5 = *(a2 + 16);
LABEL_3:
  v6 = v5;
  while (v3 < v6)
  {
    if (__OFSUB__(v6, v3))
    {
      __break(1u);
LABEL_20:
      __break(1u);
LABEL_21:
      __break(1u);
LABEL_22:
      __break(1u);
      return result;
    }

    v7 = (v6 - v3) / 2;
    v8 = __OFADD__(v3, v7);
    v5 = v3 + v7;
    if (v8)
    {
      goto LABEL_20;
    }

    if (v5 >= v2)
    {
      goto LABEL_21;
    }

    v9 = *(v4 + 8 * v5);
    if (v9 == result)
    {
      return v5;
    }

    if (v9 >= result)
    {
      goto LABEL_3;
    }

    v3 = v5 + 1;
    if (__OFADD__(v5, 1))
    {
      __break(1u);
      return 0;
    }
  }

  v5 = v3 - (v3 == v2);
  if (v5 >= v2)
  {
    goto LABEL_22;
  }

  if (*(v4 + 8 * v5) > result)
  {
    --v5;
    if (v3 == (v3 == v2))
    {
      return 0;
    }
  }

  return v5;
}

uint64_t sub_1C45E264C@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v25 = a2;
  v22 = a3;
  v5 = sub_1C4EFDAB8();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v21 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v21 - v10;
  *&v23[0] = 0;
  *(&v23[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  MEMORY[0x1C6940010](*(a1 + 24), *(a1 + 32));
  MEMORY[0x1C6940010](0xD00000000000006ALL, 0x80000001C4F8C960);
  sub_1C4EFBED8();

  if (!v3)
  {
    sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_1C4F0CE60;
    strcpy((v13 + 32), "behaviorType");
    *(v13 + 45) = 0;
    *(v13 + 46) = -5120;
    sub_1C45D5A24(v8);
    v14 = sub_1C4EFDAA8();
    (*(v6 + 8))(v8, v5);
    v15 = MEMORY[0x1E69A0180];
    *(v13 + 72) = MEMORY[0x1E69E6530];
    *(v13 + 80) = v15;
    *(v13 + 48) = v14;
    *(v13 + 88) = 0xD000000000000012;
    *(v13 + 96) = 0x80000001C4F855A0;
    v16 = sub_1C45D2400();
    v17 = MEMORY[0x1E69A0138];
    *(v13 + 128) = MEMORY[0x1E69E6158];
    *(v13 + 136) = v17;
    *(v13 + 104) = v16;
    *(v13 + 112) = v18;
    sub_1C4EFB738();
    v19 = sub_1C4EFB768();
    sub_1C440BAA8(v11, 0, 1, v19);
    v24 = 0;
    memset(v23, 0, sizeof(v23));
    v20 = sub_1C4EFB988();

    sub_1C4420C3C(v23, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = sub_1C4420C3C(v11, &unk_1EC0C06C0, &unk_1C4F10DB0);
    *v22 = v20;
  }

  return result;
}

uint64_t sub_1C45E2978@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v18[0] = a3;
  v18[1] = a1;
  v4 = sub_1C4EFB768();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v19[0] = 0;
  *(&v19[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8C3C0);
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000023, 0x80000001C4F8CAE0);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v8 = swift_allocObject();
  *(v8 + 16) = xmmword_1C4F0D130;
  strcpy((v8 + 32), "behaviorType");
  *(v8 + 45) = 0;
  *(v8 + 46) = -5120;
  v9 = sub_1C4EFDAA8();
  v10 = MEMORY[0x1E69A0180];
  *(v8 + 72) = MEMORY[0x1E69E6530];
  *(v8 + 80) = v10;
  *(v8 + 48) = v9;
  sub_1C4EFB738();
  v20 = 0;
  memset(v19, 0, sizeof(v19));
  v17 = MEMORY[0x1E69E6168];
  v11 = v21;
  v12 = sub_1C4EFB948();
  if (v11)
  {

    sub_1C4420C3C(v19, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v5 + 8))(v7, v4);
  }

  else
  {
    v14 = v12;

    sub_1C4420C3C(v19, &unk_1EC0BC770, &qword_1C4F10DC0);
    v15 = (*(v5 + 8))(v7, v4);
    MEMORY[0x1EEE9AC00](v15);
    v16 = sub_1C45D95B4(sub_1C45E8EA0, &v18[-4], v14);

    *v18[0] = v16;
  }

  return result;
}

uint64_t sub_1C45E2C64@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, unint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v78 = a4;
  v79 = a5;
  v83 = a3;
  v80 = a6;
  v81 = sub_1C4EF9CD8();
  v87 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v77 = &v66 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v66 - v10;
  v12 = sub_1C4EFDAB8();
  v84 = *(v12 - 8);
  v85 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v86 = &v66 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_1C456902C(&unk_1EC0C06C0, &unk_1C4F10DB0);
  MEMORY[0x1EEE9AC00](v14 - 8);
  v16 = &v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v17);
  v82 = &v66 - v18;
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, 0x80000001C4F8C280);
  v20 = *(a2 + 24);
  v19 = *(a2 + 32);
  MEMORY[0x1C6940010](v20, v19);
  MEMORY[0x1C6940010](0xD000000000000072, 0x80000001C4F8CCE0);
  v21 = v91;
  v22 = sub_1C4EFBED8();
  if (v21)
  {
  }

  v72 = "timeSincePreviousEvent)";
  v73 = v19;
  v74 = v20;
  v75 = a1;
  v70 = v16;
  v69 = v11;
  v24 = v22;

  v76 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v25 = swift_allocObject();
  *(v25 + 16) = xmmword_1C4F0CE60;
  strcpy((v25 + 32), "behaviorType");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  v26 = v86;
  v91 = 0;
  sub_1C45D5A24(v86);
  v27 = sub_1C4EFDAA8();
  v71 = v84[1];
  v71(v26, v85);
  v28 = MEMORY[0x1E69A0180];
  *(v25 + 72) = MEMORY[0x1E69E6530];
  *(v25 + 80) = v28;
  *(v25 + 48) = v27;
  *(v25 + 88) = 0xD000000000000012;
  *(v25 + 96) = 0x80000001C4F855A0;
  v29 = sub_1C45D2400();
  v30 = MEMORY[0x1E69A0138];
  *(v25 + 128) = MEMORY[0x1E69E6158];
  *(v25 + 136) = v30;
  *(v25 + 104) = v29;
  *(v25 + 112) = v31;
  v32 = v82;
  sub_1C4EFB738();
  v33 = sub_1C4EFB768();
  sub_1C440BAA8(v32, 0, 1, v33);
  v90 = 0;
  v88 = 0u;
  v89 = 0u;
  v34 = MEMORY[0x1E69A0168];
  v35 = MEMORY[0x1E69E63B0];
  v36 = v91;
  v37 = sub_1C4EFB988();
  if (v36)
  {

    sub_1C4420C3C(&v88, &unk_1EC0BC770, &qword_1C4F10DC0);
    v38 = v32;
    return sub_1C4420C3C(v38, &unk_1EC0C06C0, &unk_1C4F10DB0);
  }

  v67 = v33;
  v83 = v24;
  v68 = 0x80000001C4F855A0;
  v39 = v37;
  sub_1C4420C3C(&v88, &unk_1EC0BC770, &qword_1C4F10DC0);
  sub_1C4420C3C(v32, &unk_1EC0C06C0, &unk_1C4F10DB0);
  if (!v39[2])
  {

    v40 = MEMORY[0x1E69E7CC0];
    v41 = v80;
LABEL_9:
    *v41 = v40;
    return result;
  }

  v84 = v39;
  *&v88 = 0;
  *(&v88 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000016, v72 | 0x8000000000000000);
  MEMORY[0x1C6940010](v74, v73);
  MEMORY[0x1C6940010](0xD000000000000090, 0x80000001C4F8CD60);
  v82 = sub_1C4EFBED8();
  v91 = 0;

  v42 = swift_allocObject();
  *(v42 + 16) = xmmword_1C4F0C890;
  strcpy((v42 + 32), "behaviorType");
  *(v42 + 45) = 0;
  *(v42 + 46) = -5120;
  v43 = v86;
  sub_1C45D5A24(v86);
  v44 = sub_1C4EFDAA8();
  v71(v43, v85);
  *(v42 + 72) = MEMORY[0x1E69E6530];
  *(v42 + 80) = MEMORY[0x1E69A0180];
  *(v42 + 88) = 0xD000000000000012;
  *(v42 + 48) = v44;
  *(v42 + 96) = v68;
  result = sub_1C45D2400();
  *(v42 + 128) = MEMORY[0x1E69E6158];
  v45 = MEMORY[0x1E69A0138];
  *(v42 + 104) = result;
  *(v42 + 112) = v46;
  *(v42 + 136) = v45;
  strcpy((v42 + 144), "minTimestamp");
  *(v42 + 157) = 0;
  *(v42 + 158) = -5120;
  *(v42 + 184) = v35;
  *(v42 + 192) = v34;
  v47 = v84;
  if (v84[2])
  {
    *(v42 + 160) = v84[4];
    v48 = v70;
    sub_1C4EFB738();
    sub_1C440BAA8(v48, 0, 1, v67);
    v90 = 0;
    v88 = 0u;
    v89 = 0u;
    v49 = v91;
    v50 = sub_1C4EFB988();
    v51 = v79;
    if (v49)
    {

      sub_1C4420C3C(&v88, &unk_1EC0BC770, &qword_1C4F10DC0);
      v38 = v48;
      return sub_1C4420C3C(v38, &unk_1EC0C06C0, &unk_1C4F10DB0);
    }

    v52 = v50;
    v91 = 0;
    sub_1C4420C3C(&v88, &unk_1EC0BC770, &qword_1C4F10DC0);
    sub_1C4420C3C(v48, &unk_1EC0C06C0, &unk_1C4F10DB0);
    v53 = v47[2];
    v54 = MEMORY[0x1E69E7CC0];
    if (v53)
    {
      v86 = v52;
      *&v88 = MEMORY[0x1E69E7CC0];
      sub_1C459D270();
      v55 = v88;
      v56 = 32;
      v57 = v81;
      v58 = v69;
      do
      {
        sub_1C4EF9AC8();
        *&v88 = v55;
        v59 = *(v55 + 16);
        if (v59 >= *(v55 + 24) >> 1)
        {
          sub_1C459D270();
          v57 = v81;
          v55 = v88;
        }

        *(v55 + 16) = v59 + 1;
        (*(v87 + 32))(v55 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v59, v58, v57);
        v56 += 8;
        --v53;
      }

      while (v53);

      v51 = v79;
      v52 = v86;
    }

    else
    {

      v55 = MEMORY[0x1E69E7CC0];
    }

    v60 = *(v52 + 16);
    if (v60)
    {
      *&v88 = v54;
      sub_1C459D270();
      v61 = v88;
      v62 = 32;
      v63 = v77;
      do
      {
        v64 = v52;
        sub_1C4EF9AC8();
        *&v88 = v61;
        v65 = *(v61 + 16);
        if (v65 >= *(v61 + 24) >> 1)
        {
          sub_1C459D270();
          v61 = v88;
        }

        *(v61 + 16) = v65 + 1;
        (*(v87 + 32))(v61 + ((*(v87 + 80) + 32) & ~*(v87 + 80)) + *(v87 + 72) * v65, v63, v81);
        v62 += 8;
        --v60;
        v52 = v64;
      }

      while (v60);

      v51 = v79;
    }

    else
    {

      v61 = MEMORY[0x1E69E7CC0];
    }

    v40 = sub_1C45DB974(v55, v61, v51);

    v41 = v80;
    goto LABEL_9;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C45E35D8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v54 = a1;
  v50 = a4;
  v55 = sub_1C4EFB768();
  v61 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v49 = &v42 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v52 = &v42 - v8;
  v9 = sub_1C4EFDAB8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v42 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v56 = 0;
  *(&v56 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000015, 0x80000001C4F8C490);
  v13 = *(a2 + 24);
  v45 = *(a2 + 32);
  v46 = v13;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000077, 0x80000001C4F8C4B0);
  v51 = v56;
  v44 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v14 = swift_allocObject();
  *(v14 + 16) = xmmword_1C4F0CE60;
  strcpy((v14 + 32), "behaviorType");
  *(v14 + 45) = 0;
  *(v14 + 46) = -5120;
  sub_1C45D5A24(v12);
  v15 = sub_1C4EFDAA8();
  v18 = *(v10 + 8);
  v17 = v10 + 8;
  v16 = v18;
  v47 = v9;
  v18(v12, v9);
  v19 = MEMORY[0x1E69A0180];
  *(v14 + 72) = MEMORY[0x1E69E6530];
  *(v14 + 80) = v19;
  *(v14 + 48) = v15;
  *(v14 + 88) = 0xD000000000000012;
  *(v14 + 96) = 0x80000001C4F855A0;
  v20 = a3;
  v21 = v52;
  v48 = v20;
  v22 = sub_1C45D2400();
  v23 = MEMORY[0x1E69A0138];
  *(v14 + 128) = MEMORY[0x1E69E6158];
  *(v14 + 136) = v23;
  *(v14 + 104) = v22;
  *(v14 + 112) = v24;
  sub_1C4EFB738();
  v58 = 0;
  v56 = 0u;
  v57 = 0u;
  v25 = v53;
  sub_1C4EFB998();
  if (v25)
  {

    sub_1C4420C3C(&v56, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v61 + 8))(v21, v55);
  }

  else
  {
    v43 = 0x80000001C4F855A0;
    v51 = v16;
    v53 = v17;

    sub_1C4420C3C(&v56, &unk_1EC0BC770, &qword_1C4F10DC0);
    v28 = v61 + 8;
    v27 = *(v61 + 8);
    result = v27(v21, v55);
    v29 = 0;
    v30 = 1;
    if ((v60 & 1) == 0 && v59 >= 1)
    {
      v61 = v28;
      v31 = 1;
      if ((v59 & 1) == 0)
      {
        v31 = 2;
      }

      v42 = v31;
      v52 = ((v59 - 1) >> 1);
      *&v56 = 0;
      *(&v56 + 1) = 0xE000000000000000;
      sub_1C4F02248();
      MEMORY[0x1C6940010](0xD000000000000052, 0x80000001C4F8C530);
      MEMORY[0x1C6940010](v46, v45);
      MEMORY[0x1C6940010](0xD0000000000000CCLL, 0x80000001C4F8C590);
      v46 = v56;
      v32 = swift_allocObject();
      *(v32 + 16) = xmmword_1C4F0D480;
      strcpy((v32 + 32), "behaviorType");
      *(v32 + 45) = 0;
      *(v32 + 46) = -5120;
      sub_1C45D5A24(v12);
      v33 = sub_1C4EFDAA8();
      v51(v12, v47);
      v34 = MEMORY[0x1E69E6530];
      *(v32 + 72) = MEMORY[0x1E69E6530];
      v35 = MEMORY[0x1E69A0180];
      *(v32 + 80) = MEMORY[0x1E69A0180];
      *(v32 + 88) = 0xD000000000000012;
      *(v32 + 48) = v33;
      *(v32 + 96) = v43;
      v36 = sub_1C45D2400();
      *(v32 + 128) = MEMORY[0x1E69E6158];
      v37 = MEMORY[0x1E69A0138];
      *(v32 + 104) = v36;
      *(v32 + 112) = v38;
      *(v32 + 136) = v37;
      *(v32 + 144) = 0x74696D696CLL;
      *(v32 + 184) = v34;
      *(v32 + 192) = v35;
      v39 = v42;
      *(v32 + 152) = 0xE500000000000000;
      *(v32 + 160) = v39;
      *(v32 + 200) = 0x74657366666FLL;
      *(v32 + 208) = 0xE600000000000000;
      *(v32 + 240) = v34;
      *(v32 + 248) = v35;
      *(v32 + 216) = v52;
      v40 = v49;
      sub_1C4EFB738();
      v58 = 0;
      v56 = 0u;
      v57 = 0u;
      sub_1C4EFB998();

      sub_1C4420C3C(&v56, &unk_1EC0BC770, &qword_1C4F10DC0);
      result = v27(v40, v55);
      v29 = v59;
      v30 = v60;
    }

    v41 = v50;
    *v50 = v29;
    *(v41 + 8) = v30;
  }

  return result;
}

uint64_t sub_1C45E3BFC()
{
  sub_1C456902C(&qword_1EC0B9AD8, &unk_1C4F14290);
  sub_1C441C09C();
  result = sub_1C4EFAF88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

void sub_1C45E3C88(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v15 = objc_autoreleasePoolPush();
  sub_1C45E3D50(a2, a1, a3, a4, a5, a6, &v19, &v17);
  objc_autoreleasePoolPop(v15);
  if (!v7)
  {
    v16 = v18;
    *a7 = v17;
    *(a7 + 8) = v16;
  }
}

uint64_t sub_1C45E3D50@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t (*a5)(uint64_t, uint64_t)@<X4>, uint64_t a6@<X5>, void *a7@<X6>, uint64_t *a8@<X8>)
{
  v78 = a7;
  v66[1] = a6;
  v67 = a5;
  v85 = a4;
  v86 = a2;
  v68 = a8;
  v87 = sub_1C4EFB768();
  v93 = *(v87 - 8);
  MEMORY[0x1EEE9AC00](v87);
  v74 = v66 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v81 = v66 - v12;
  v13 = sub_1C4EFDAB8();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = v66 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = sub_1C4EF9F88();
  v18 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v20 = v66 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_1C4EF9CD8();
  v83 = *(v21 - 8);
  v84 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v23 = v66 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EF9F58();
  v73 = a1;
  sub_1C4EF9E78();
  (*(v18 + 8))(v20, v17);
  *&v90 = 0;
  *(&v90 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  v24 = *(a3 + 24);
  v75 = *(a3 + 32);
  v76 = v24;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD0000000000000E7, 0x80000001C4F8C6A0);
  v79 = *(&v90 + 1);
  v80 = v90;
  v70 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v25 = swift_allocObject();
  v69 = xmmword_1C4F0D480;
  *(v25 + 16) = xmmword_1C4F0D480;
  strcpy((v25 + 32), "behaviorType");
  *(v25 + 45) = 0;
  *(v25 + 46) = -5120;
  sub_1C45D5A24(v16);
  v26 = sub_1C4EFDAA8();
  v27 = *(v14 + 8);
  v77 = v16;
  v72 = v13;
  v71 = v14 + 8;
  v27(v16, v13);
  v28 = MEMORY[0x1E69A0180];
  *(v25 + 72) = MEMORY[0x1E69E6530];
  *(v25 + 80) = v28;
  *(v25 + 48) = v26;
  *(v25 + 88) = 0xD000000000000012;
  *(v25 + 96) = 0x80000001C4F855A0;
  v29 = sub_1C45D2400();
  v30 = MEMORY[0x1E69A0138];
  *(v25 + 128) = MEMORY[0x1E69E6158];
  *(v25 + 136) = v30;
  *(v25 + 104) = v29;
  *(v25 + 112) = v31;
  strcpy((v25 + 144), "maxTimestamp");
  *(v25 + 157) = 0;
  *(v25 + 158) = -5120;
  sub_1C4EF9AD8();
  v32 = MEMORY[0x1E69E63B0];
  v33 = MEMORY[0x1E69A0168];
  *(v25 + 184) = MEMORY[0x1E69E63B0];
  *(v25 + 192) = v33;
  *(v25 + 160) = v34;
  *(v25 + 200) = 0xD000000000000012;
  *(v25 + 208) = 0x80000001C4F8C790;
  sub_1C4EF9AF8();
  *(v25 + 240) = v32;
  *(v25 + 248) = v33;
  *(v25 + 216) = v35;
  v36 = v81;
  sub_1C4EFB738();
  v92 = 0;
  v90 = 0u;
  v91 = 0u;
  v37 = v36;
  v38 = v82;
  v39 = sub_1C4EFB978();
  v40 = v38;
  if (v38)
  {

    sub_1C4420C3C(&v90, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v93 + 8))(v36, v87);
    result = (*(v83 + 8))(v23, v84);
LABEL_3:
    *v78 = v40;
    return result;
  }

  v42 = v39;
  v66[0] = 0x80000001C4F855A0;
  v80 = v27;
  v44 = v75;
  v43 = v76;
  v82 = 0;
  v45 = v77;

  sub_1C4420C3C(&v90, &unk_1EC0BC770, &qword_1C4F10DC0);
  v47 = v93 + 8;
  v46 = *(v93 + 8);
  v46(v37, v87);
  if (*(v42 + 16))
  {
    v81 = v46;
    v93 = v47;
    v79 = sub_1C4F016F8();

    *&v90 = 0;
    *(&v90 + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001DLL, 0x80000001C4F8C7B0);
    MEMORY[0x1C6940010](v43, v44);
    MEMORY[0x1C6940010](0xD00000000000009FLL, 0x80000001C4F8C7D0);
    v76 = v90;
    v48 = swift_allocObject();
    *(v48 + 16) = v69;
    strcpy((v48 + 32), "behaviorType");
    *(v48 + 45) = 0;
    *(v48 + 46) = -5120;
    sub_1C45D5A24(v45);
    v49 = sub_1C4EFDAA8();
    v80(v45, v72);
    *(v48 + 72) = MEMORY[0x1E69E6530];
    *(v48 + 80) = MEMORY[0x1E69A0180];
    *(v48 + 88) = 0xD000000000000012;
    *(v48 + 48) = v49;
    *(v48 + 96) = v66[0];
    v50 = sub_1C45D2400();
    *(v48 + 128) = MEMORY[0x1E69E6158];
    v51 = MEMORY[0x1E69A0138];
    *(v48 + 104) = v50;
    *(v48 + 112) = v52;
    *(v48 + 136) = v51;
    strcpy((v48 + 144), "minTimestamp");
    *(v48 + 157) = 0;
    *(v48 + 158) = -5120;
    v53 = v23;
    sub_1C4EF9AD8();
    v54 = MEMORY[0x1E69E63B0];
    *(v48 + 184) = MEMORY[0x1E69E63B0];
    v55 = MEMORY[0x1E69A0168];
    *(v48 + 160) = v56;
    *(v48 + 192) = v55;
    strcpy((v48 + 200), "maxTimestamp");
    *(v48 + 213) = 0;
    *(v48 + 214) = -5120;
    sub_1C4EF9AD8();
    *(v48 + 240) = v54;
    *(v48 + 248) = v55;
    *(v48 + 216) = v57;
    v58 = v74;
    sub_1C4EFB738();
    v92 = 0;
    v90 = 0u;
    v91 = 0u;
    v59 = v82;
    sub_1C4EFB998();
    v40 = v59;
    v60 = v83;
    if (v59)
    {

      sub_1C4420C3C(&v90, &unk_1EC0BC770, &qword_1C4F10DC0);
      (v81)(v58, v87);
      result = (*(v60 + 8))(v53, v84);
      goto LABEL_3;
    }

    sub_1C4420C3C(&v90, &unk_1EC0BC770, &qword_1C4F10DC0);
    (v81)(v58, v87);
    if (v89)
    {
      v63 = 0;
    }

    else
    {
      v63 = v88;
    }

    v61 = v67(v79, v63);
    v62 = v64;

    result = (*(v60 + 8))(v53, v84);
  }

  else
  {
    (*(v83 + 8))(v23, v84);

    v61 = 0;
    v62 = 1;
  }

  v65 = v68;
  *v68 = v61;
  *(v65 + 8) = v62 & 1;
  return result;
}

double sub_1C45E4660(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  v4 = MEMORY[0x1E69E7CC0];
  if (v3)
  {
    v19 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v3, 0);
    v4 = v19;
    v6 = (a1 + 32);
    v7 = *(v19 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v19 + 24);
      if (v7 >= v10 >> 1)
      {
        v11 = sub_1C441EA8C(v10);
        sub_1C459D100(v11, v7 + 1, 1);
      }

      *(v19 + 16) = v7 + 1;
      *(v19 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  v12 = sub_1C45DC32C(v4);
  if (v13)
  {
  }

  else
  {
    v15 = *&v12;
    v16 = COERCE_DOUBLE(sub_1C45DC490(v4));
    v18 = v17;

    if ((v18 & 1) == 0)
    {
      result = a2 - v15;
      if (result != 0.0 && v16 != 0.0)
      {
        return result / v16;
      }
    }
  }

  return result;
}

uint64_t sub_1C45E47A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 16);
  if (v3)
  {
    v22 = MEMORY[0x1E69E7CC0];
    sub_1C459D100(0, v3, 0);
    v5 = v22;
    v6 = (a1 + 32);
    v7 = *(v22 + 16);
    do
    {
      v9 = *v6++;
      v8 = v9;
      v10 = *(v22 + 24);
      v11 = v7 + 1;
      if (v7 >= v10 >> 1)
      {
        v12 = sub_1C441EA8C(v10);
        sub_1C459D100(v12, v7 + 1, 1);
      }

      *(v22 + 16) = v11;
      *(v22 + 8 * v7++ + 32) = v8;
      --v3;
    }

    while (v3);
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
    v11 = *(MEMORY[0x1E69E7CC0] + 16);
    if (!v11)
    {

LABEL_15:
      *&result = 0.0;
      return result;
    }
  }

  v13 = 0;
  v14 = 0.0;
  do
  {
    v15 = *(v5 + 8 * v13++ + 32);
    v14 = v14 + v15;
  }

  while (v11 != v13);
  sub_1C45DC400(v5, v15);
  v17 = v16;
  v19 = v18;

  if (v19)
  {
    goto LABEL_15;
  }

  *&result = 0.0;
  v21 = a2 - v14 / v11;
  if (v21 != 0.0 && v17 != 0.0)
  {
    *&result = v21 / v17;
  }

  return result;
}

double sub_1C45E490C@<D0>(uint64_t a1@<X0>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  *&v65 = a4;
  v72 = a3;
  v70 = a1;
  v62 = a5;
  v61 = sub_1C4EFDAB8();
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v59 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1C4EFBD38();
  v69 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v68 = &v59 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  MEMORY[0x1EEE9AC00](v8 - 8);
  v10 = &v59 - v9;
  v11 = sub_1C4EF9CD8();
  v64 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v63 = &v59 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_1C456902C(&unk_1EC0C2DF0, qword_1C4F5B820);
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v59 - v15;
  v74 = sub_1C456902C(&qword_1EC0B9AC8, &unk_1C4F10E00);
  v75 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v66 = &v59 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v67 = &v59 - v19;
  MEMORY[0x1EEE9AC00](v20);
  v73 = &v59 - v21;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v59 - v23;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFBD18();
  v25 = v6;
  v80 = v6;
  v81 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v79);
  sub_1C4EFBD48();
  v26 = sub_1C4EFDAA8();
  v77 = MEMORY[0x1E69E6530];
  v78 = MEMORY[0x1E69A0178];
  v76[0] = v26;
  v27 = sub_1C4EFB298();
  v83 = v27;
  v84 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v82);
  sub_1C4EFBB28();
  sub_1C4420C3C(v76, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v79);
  v88 = v24;
  sub_1C4EFBCD8();
  (*(v14 + 8))(v16, v13);
  sub_1C440962C(v82);
  sub_1C4460050(v65, v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
  if (sub_1C44157D4(v10, 1, v11) == 1)
  {
    sub_1C4420C3C(v10, &unk_1EC0B84E0, qword_1C4F0D2D0);
    v28 = v25;
  }

  else
  {
    v29 = v64;
    v30 = v63;
    (*(v64 + 32))(v63, v10, v11);
    v31 = v25;
    v80 = v25;
    v81 = MEMORY[0x1E69A0050];
    sub_1C4422F90(v79);
    sub_1C4EFBD48();
    sub_1C4EF9AD8();
    v77 = MEMORY[0x1E69E63B0];
    v78 = MEMORY[0x1E69A0160];
    v76[0] = v32;
    v83 = v27;
    v84 = MEMORY[0x1E699FE60];
    sub_1C4422F90(v82);
    sub_1C4EFB818();
    sub_1C440962C(v76);
    sub_1C440962C(v79);
    sub_1C4401CBC(&qword_1EC0B9AD0, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF70]);
    v33 = v73;
    v34 = v74;
    v35 = v88;
    sub_1C4EFB438();
    (*(v29 + 8))(v30, v11);
    v36 = v75;
    (*(v75 + 8))(v35, v34);
    sub_1C440962C(v82);
    (*(v36 + 32))(v35, v33, v34);
    v28 = v31;
  }

  sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
  v37 = swift_allocObject();
  v65 = xmmword_1C4F0D130;
  *(v37 + 16) = xmmword_1C4F0D130;
  v38 = v68;
  sub_1C4EFBD48();
  v64 = sub_1C4EFADA8();
  v39 = MEMORY[0x1E699FDA8];
  *(v37 + 56) = v64;
  *(v37 + 64) = v39;
  sub_1C4422F90((v37 + 32));
  sub_1C4EFB918();
  v69 = *(v69 + 8);
  (v69)(v38, v28);
  sub_1C4401CBC(&qword_1EDDFA268, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF68]);
  v40 = v66;
  v41 = v74;
  sub_1C4EFB2F8();

  v42 = swift_allocObject();
  *(v42 + 16) = v65;
  sub_1C4EFBD48();
  *(v42 + 56) = v64;
  *(v42 + 64) = MEMORY[0x1E699FDA8];
  sub_1C4422F90((v42 + 32));
  sub_1C4EFB918();
  (v69)(v38, v28);
  v43 = v73;
  sub_1C4EFB2F8();

  v44 = *(v75 + 8);
  v44(v40, v41);
  sub_1C4401CBC(&qword_1EDDF0070, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF80]);
  v45 = v67;
  sub_1C4EFB608();
  v44(v43, v41);
  sub_1C4401CBC(&qword_1EDDFE850, &qword_1EC0B9AC8, &unk_1C4F10E00, MEMORY[0x1E699FF60]);
  v46 = v71;
  v47 = sub_1C4EFB048();
  v44(v45, v41);
  if (v46)
  {
    v44(v88, v41);
  }

  else
  {
    v49 = v88;
    if (v47 && (v50 = sub_1C493CA4C(), v52 = v51, , v52))
    {
      v53 = v59;
      (*(v60 + 16))(v59, v72, v61);
      sub_1C45D29E0(v53, v50, v52, v85);
      v54 = v86;
      v55 = v87;
      v44(v49, v41);
      result = *v85;
      v56 = v85[1];
      v57 = v62;
      *v62 = v85[0];
      *(v57 + 16) = v56;
      *(v57 + 32) = v54;
      *(v57 + 40) = v55;
    }

    else
    {
      v44(v49, v41);
      v58 = v62;
      *(v62 + 32) = 0;
      result = 0.0;
      *v58 = 0u;
      *(v58 + 16) = 0u;
      *(v58 + 40) = -1;
    }
  }

  return result;
}

uint64_t sub_1C45E53A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v46 = a1;
  v44 = a4;
  v48 = sub_1C4EFB768();
  v54 = *(v48 - 8);
  MEMORY[0x1EEE9AC00](v48);
  v43 = &v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v35 - v8;
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = &v35 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  v14 = *(a2 + 24);
  v39 = *(a2 + 32);
  v40 = v14;
  MEMORY[0x1C6940010]();
  MEMORY[0x1C6940010](0xD000000000000069, 0x80000001C4F8C870);
  v45 = v49;
  v38 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0CE60;
  strcpy((v15 + 32), "behaviorType");
  *(v15 + 45) = 0;
  *(v15 + 46) = -5120;
  sub_1C45D5A24(v13);
  v16 = sub_1C4EFDAA8();
  v19 = *(v11 + 8);
  v18 = v11 + 8;
  v17 = v19;
  v41 = v10;
  v19(v13, v10);
  v20 = MEMORY[0x1E69A0180];
  *(v15 + 72) = MEMORY[0x1E69E6530];
  *(v15 + 80) = v20;
  *(v15 + 48) = v16;
  *(v15 + 88) = 0xD000000000000012;
  *(v15 + 96) = 0x80000001C4F855A0;
  v21 = a3;
  v22 = v20;
  v42 = v21;
  v23 = sub_1C45D2400();
  v24 = MEMORY[0x1E69A0138];
  *(v15 + 128) = MEMORY[0x1E69E6158];
  *(v15 + 136) = v24;
  *(v15 + 104) = v23;
  *(v15 + 112) = v25;
  sub_1C4EFB738();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v26 = v47;
  sub_1C4EFB998();
  if (v26)
  {

    sub_1C4420C3C(&v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v54 + 8))(v9, v48);
  }

  v45 = v17;
  v47 = v18;

  sub_1C4420C3C(&v49, &unk_1EC0BC770, &qword_1C4F10DC0);
  v29 = v54 + 8;
  v28 = *(v54 + 8);
  result = v28(v9, v48);
  if ((v53 & 1) != 0 || v52 < 1)
  {
    goto LABEL_10;
  }

  v36 = v52;
  v37 = 0;
  v54 = v29;
  *&v49 = 0;
  *(&v49 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000039, 0x80000001C4F8C8E0);
  MEMORY[0x1C6940010](v40, v39);
  MEMORY[0x1C6940010](0xD000000000000032, 0x80000001C4F8C920);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_1C4F0D130;
  strcpy((v30 + 32), "behaviorType");
  *(v30 + 45) = 0;
  *(v30 + 46) = -5120;
  sub_1C45D5A24(v13);
  v31 = sub_1C4EFDAA8();
  v45(v13, v41);
  *(v30 + 72) = MEMORY[0x1E69E6530];
  *(v30 + 80) = v22;
  *(v30 + 48) = v31;
  v32 = v43;
  sub_1C4EFB738();
  v51 = 0;
  v49 = 0u;
  v50 = 0u;
  v33 = v37;
  sub_1C4EFB998();
  if (v33)
  {

    sub_1C4420C3C(&v49, &unk_1EC0BC770, &qword_1C4F10DC0);
    return v28(v32, v48);
  }

  sub_1C4420C3C(&v49, &unk_1EC0BC770, &qword_1C4F10DC0);
  result = v28(v32, v48);
  if ((v53 & 1) != 0 || v52 < 1)
  {
LABEL_10:
    v34 = v44;
    *v44 = 0.0;
  }

  else
  {
    v34 = v44;
    *v44 = v36 / v52;
  }

  *(v34 + 8) = 0;
  return result;
}

uint64_t sub_1C45E5950@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double *a4@<X8>)
{
  v20[3] = a1;
  v20[2] = a3;
  v20[0] = a4;
  v26 = sub_1C4EFB768();
  v21 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v6 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_1C4EFDAB8();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v22[0] = 0;
  *(&v22[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000003ALL, 0x80000001C4F8C660);
  MEMORY[0x1C6940010](*(a2 + 24), *(a2 + 32));
  MEMORY[0x1C6940010](0xD000000000000069, 0x80000001C4F8C870);
  v20[1] = *&v22[0];
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0CE60;
  strcpy((v11 + 32), "behaviorType");
  *(v11 + 45) = 0;
  *(v11 + 46) = -5120;
  sub_1C45D5A24(v10);
  v12 = sub_1C4EFDAA8();
  (*(v8 + 8))(v10, v7);
  v13 = MEMORY[0x1E69A0180];
  *(v11 + 72) = MEMORY[0x1E69E6530];
  *(v11 + 80) = v13;
  *(v11 + 48) = v12;
  *(v11 + 88) = 0xD000000000000012;
  *(v11 + 96) = 0x80000001C4F855A0;
  v14 = sub_1C45D2400();
  v15 = MEMORY[0x1E69A0138];
  *(v11 + 128) = MEMORY[0x1E69E6158];
  *(v11 + 136) = v15;
  *(v11 + 104) = v14;
  *(v11 + 112) = v16;
  sub_1C4EFB738();
  v23 = 0;
  memset(v22, 0, sizeof(v22));
  v17 = v20[4];
  sub_1C4EFB998();
  if (v17)
  {

    sub_1C4420C3C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v21 + 8))(v6, v26);
  }

  else
  {

    sub_1C4420C3C(v22, &unk_1EC0BC770, &qword_1C4F10DC0);
    result = (*(v21 + 8))(v6, v26);
    v19 = v24;
    if (v25 & 1 | (v24 < 1))
    {
      v19 = 0.0;
    }

    *v20[0] = v19;
  }

  return result;
}

uint64_t sub_1C45E5CC4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X4>, uint64_t a5@<X5>, unint64_t a6@<X6>, unint64_t *a7@<X8>)
{
  v57 = a6;
  v58 = a7;
  v59 = a1;
  v11 = sub_1C4EFB768();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v54 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v60 = 0;
  *(&v60 + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD00000000000005CLL, 0x80000001C4F8CB10);
  MEMORY[0x1C6940010](a2, a3);
  MEMORY[0x1C6940010](0xD000000000000092, 0x80000001C4F8CB70);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0CE60;
  v16 = MEMORY[0x1E69E6158];
  *(v15 + 32) = 0xD000000000000010;
  *(v15 + 40) = 0x80000001C4F855E0;
  v17 = MEMORY[0x1E69A0138];
  *(v15 + 72) = v16;
  *(v15 + 80) = v17;
  *(v15 + 48) = a4;
  *(v15 + 56) = a5;
  v18 = MEMORY[0x1E69E6530];
  *(v15 + 88) = 7889261;
  *(v15 + 96) = 0xE300000000000000;
  v19 = MEMORY[0x1E69A0180];
  *(v15 + 128) = v18;
  *(v15 + 136) = v19;
  *(v15 + 104) = v57;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C4EFB738();
  v62 = 0;
  v60 = 0u;
  v61 = 0u;
  v20 = v64;
  v21 = sub_1C4EFBC18();
  if (v20)
  {

    sub_1C4420C3C(&v60, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v12 + 8))(v14, v11);
  }

  else
  {
    v23 = v21;

    sub_1C4420C3C(&v60, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v12 + 8))(v14, v11);
    v24 = sub_1C4428DA0(v23);
    if (v24)
    {
      v25 = v24;
      *&v60 = MEMORY[0x1E69E7CC0];
      sub_1C459D2C8(0, v24 & ~(v24 >> 63), 0);
      if ((v25 & 0x8000000000000000) == 0)
      {
        v26 = 0;
        v27 = v60;
        v56 = v23;
        v57 = v23 & 0xC000000000000001;
        v54 = v23 & 0xFFFFFFFFFFFFFF8;
        v55 = "entityIdentifier";
        while (!__OFADD__(v26, 1))
        {
          v64 = v27;
          if (v57)
          {
            MEMORY[0x1C6940F90](v26, v23);
          }

          else
          {
            if (v26 >= *(v54 + 16))
            {
              goto LABEL_18;
            }
          }

          sub_1C493DF34(0xD000000000000016, v55 | 0x8000000000000000, v28, v29, v30, v31, v32, v33, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63);
          v35 = v34;
          v59 = v26 + 1;
          v36 = v25;
          sub_1C493DD18();
          v38 = v37;
          v40 = v39;
          sub_1C493DF34(0x746E756F63, 0xE500000000000000, v41, v42, v43, v44, v45, v46, v54, v55, v56, v57, v58, v59, v60, *(&v60 + 1), v61, *(&v61 + 1), v62, v63);
          v48 = v47;

          v27 = v64;
          *&v60 = v64;
          v50 = *(v64 + 16);
          v49 = *(v64 + 24);
          v51 = v50 + 1;
          if (v50 >= v49 >> 1)
          {
            v64 = v50 + 1;
            sub_1C459D2C8((v49 > 1), v50 + 1, 1);
            v51 = v64;
            v27 = v60;
          }

          *(v27 + 16) = v51;
          v52 = (v27 + 32 * v50);
          v52[4] = v35;
          v52[5] = v38;
          v52[6] = v40;
          v52[7] = v48;
          ++v26;
          v25 = v36;
          v53 = v58;
          v23 = v56;
          if (v59 == v36)
          {

            goto LABEL_16;
          }
        }

        __break(1u);
LABEL_18:
        __break(1u);
      }

      __break(1u);
      result = swift_unexpectedError();
      __break(1u);
    }

    else
    {

      v27 = MEMORY[0x1E69E7CC0];
      v53 = v58;
LABEL_16:
      *v53 = v27;
    }
  }

  return result;
}

uint64_t sub_1C45E6150@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  v25 = a4;
  v7 = sub_1C4EFB768();
  v8 = *(v7 - 8);
  MEMORY[0x1EEE9AC00](v7);
  v10 = &v24 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFBC58();
  *&v26[0] = 0;
  *(&v26[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000059, 0x80000001C4F8CC30);
  MEMORY[0x1C6940010](a2, a3);
  MEMORY[0x1C6940010](0xD000000000000046, 0x80000001C4F8CC90);
  v27 = 0;
  memset(v26, 0, sizeof(v26));
  sub_1C4EFB758();
  v11 = sub_1C4EFBC18();
  if (v4)
  {

    (*(v8 + 8))(v10, v7);
    return sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
  }

  else
  {
    v13 = v11;

    (*(v8 + 8))(v10, v7);
    sub_1C4420C3C(v26, &unk_1EC0BC770, &qword_1C4F10DC0);
    *&v26[0] = MEMORY[0x1E69E7CC8];
    v14 = sub_1C4428DA0(v13);
    v15 = 0;
    v16 = v25;
    while (1)
    {
      if (v14 == v15)
      {

        *v16 = *&v26[0];
        return result;
      }

      if ((v13 & 0xC000000000000001) != 0)
      {
        v17 = MEMORY[0x1C6940F90](v15, v13);
      }

      else
      {
        if (v15 >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_13;
        }

        v17 = *(v13 + 8 * v15 + 32);
      }

      if (__OFADD__(v15, 1))
      {
        break;
      }

      v28 = v17;
      sub_1C45E6418(v26, &v28, v18, v19, v20, v21, v22, v23);

      ++v15;
    }

    __break(1u);
LABEL_13:
    __break(1u);

    __break(1u);
  }

  return result;
}

void sub_1C45E6418(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  sub_1C493E14C(0x646576726573626FLL, 0xEB00000000656741, a3, a4, a5, a6, a7, a8, v31, v33, SWORD2(v33), SHIWORD(v33), v35, v36[0], v36[1], v36[2], v36[3], v36[4], v36[5], v36[6], v36[7], v36[8]);
  if (v8)
  {
    goto LABEL_13;
  }

  HIDWORD(v34) = v10;
  sub_1C493DD18();
  v12 = v11;
  v14 = v13;
  v32 = sub_1C493CB08();
  LODWORD(v34) = v15;
  swift_isUniquelyReferenced_nonNull_native();
  v36[0] = *a1;
  v16 = sub_1C445FAA8(v12, v14);
  if (__OFADD__(*(v36[0] + 16), (v17 & 1) == 0))
  {
    __break(1u);
LABEL_13:
    swift_unexpectedError();
    __break(1u);
    goto LABEL_14;
  }

  v18 = v16;
  v19 = v17;
  sub_1C456902C(&qword_1EC0B9B00, &qword_1C4F10E58);
  v20 = v36[0];
  if (sub_1C4F02458())
  {
    v21 = sub_1C445FAA8(v12, v14);
    if ((v19 & 1) == (v22 & 1))
    {
      v18 = v21;
      goto LABEL_6;
    }

LABEL_14:
    sub_1C4F029F8();
    __break(1u);
    return;
  }

LABEL_6:
  *a1 = v36[0];
  if (v19)
  {
  }

  else
  {
    sub_1C45E6628(v36);
    sub_1C44686DC(v18, v12, v14, v36[0], v20);
  }

  v30 = (*(v20 + 56) + 8 * v18);
  if (v34)
  {
    sub_1C45921C4(HIDWORD(v34), v23, v24, v25, v26, v27, v28, v29, v32, v34);
  }

  else
  {
    swift_isUniquelyReferenced_nonNull_native();
    v36[0] = *v30;
    sub_1C4660B90();
    *v30 = v36[0];
  }
}

uint64_t sub_1C45E6628@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for PHPersonAgeType(0);
  sub_1C45E8E08(&qword_1EC0B8D98, type metadata accessor for PHPersonAgeType, &unk_1C4F09FC4);
  result = sub_1C4F00F28();
  *a1 = result;
  return result;
}

uint64_t sub_1C45E66A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>)
{
  v72 = a8;
  v66 = a6;
  v67 = a7;
  v64 = a5;
  v62 = a4;
  v69 = a1;
  v10 = sub_1C4EFB768();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v63 = &v56 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v56 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v56 - v17;
  MEMORY[0x1EEE9AC00](v19);
  v65 = &v56 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v68 = &v56 - v22;
  v23 = sub_1C4EFDAB8();
  v24 = *(v23 - 8);
  v25 = MEMORY[0x1EEE9AC00](v23);
  v27 = &v56 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v24 + 104))(v27, *MEMORY[0x1E69A9450], v23, v25);
  sub_1C45E8E08(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
  v70 = a2;
  LOBYTE(a2) = sub_1C4F010B8();
  (*(v24 + 8))(v27, v23);
  if (a2)
  {
    result = MEMORY[0x1E69E7CD0];
  }

  else
  {
    v61 = a3;
    *&v73[0] = sub_1C4A728F8(63, 0xE100000000000000, *(a3 + 16));
    sub_1C456902C(&unk_1EC0B9620, &unk_1C4F0E870);
    sub_1C4401CBC(&qword_1EDDFCED0, &unk_1EC0B9620, &unk_1C4F0E870, MEMORY[0x1E69E6310]);
    v29 = sub_1C4F01048();
    v31 = v30;

    *&v73[0] = 0;
    *(&v73[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0xD00000000000001FLL, 0x80000001C4F8C3C0);
    MEMORY[0x1C6940010](*(v62 + 24), *(v62 + 32));
    MEMORY[0x1C6940010](0xD000000000000037, 0x80000001C4F8C3E0);
    MEMORY[0x1C6940010](v29, v31);

    MEMORY[0x1C6940010](0xD000000000000067, 0x80000001C4F8C420);
    v59 = *(&v73[0] + 1);
    v62 = *&v73[0];
    v60 = sub_1C456902C(&qword_1EC0B8838, "nS\t");
    v32 = swift_allocObject();
    v56 = xmmword_1C4F0D130;
    *(v32 + 16) = xmmword_1C4F0D130;
    *(v32 + 32) = sub_1C4EFDAA8();
    *&v73[0] = v32;
    v58 = sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
    v33 = MEMORY[0x1E69E6328];
    v57 = sub_1C4401CBC(&qword_1EDDDBBE0, &qword_1EC0B8EB8, &unk_1C4F0E920, MEMORY[0x1E69E6328]);
    sub_1C4EFB798();
    *&v73[0] = v61;
    _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    sub_1C456902C(&qword_1EC0B9178, &qword_1C4F11B50);
    sub_1C4401CBC(&qword_1EDDFCEA0, &qword_1EC0B9178, &qword_1C4F11B50, MEMORY[0x1E69E6508]);
    v34 = v63;
    sub_1C4EFB798();
    sub_1C4EFB748();
    v35 = *(v11 + 8);
    v35(v34, v10);
    v35(v15, v10);
    sub_1C456902C(&qword_1EC0B87D0, &qword_1C4F0DBC0);
    v36 = swift_allocObject();
    *(v36 + 16) = v56;
    sub_1C4EF9AD8();
    *(v36 + 32) = v37;
    *&v73[0] = v36;
    sub_1C456902C(&qword_1EC0B9228, &unk_1C4F3DD70);
    sub_1C4401CBC(&qword_1EDDDBBF8, &qword_1EC0B9228, &unk_1C4F3DD70, v33);
    sub_1C4EFB798();
    v38 = v65;
    sub_1C4EFB748();
    v35(v15, v10);
    v35(v18, v10);
    v39 = swift_allocObject();
    *(v39 + 16) = xmmword_1C4F0CE60;
    v40 = v67;
    *(v39 + 32) = v66;
    *(v39 + 40) = v40;
    *&v73[0] = v39;
    sub_1C4EFB798();
    v41 = v68;
    sub_1C4EFB748();
    v35(v18, v10);
    v35(v38, v10);
    v74 = 0;
    memset(v73, 0, sizeof(v73));
    v55 = MEMORY[0x1E69E6168];
    v42 = v71;
    v43 = sub_1C4EFB948();
    if (v42)
    {

      sub_1C4420C3C(v73, &unk_1EC0BC770, &qword_1C4F10DC0);
      v35(v41, v10);
      if (qword_1EDDFECB0 != -1)
      {
        swift_once();
      }

      v44 = sub_1C4F00978();
      sub_1C442B738(v44, qword_1EDDFECB8);
      v45 = v42;
      v46 = sub_1C4F00968();
      v47 = sub_1C4F01CD8();

      if (os_log_type_enabled(v46, v47))
      {
        v48 = swift_slowAlloc();
        v49 = swift_slowAlloc();
        *&v73[0] = v49;
        *v48 = 136315138;
        swift_getErrorValue();
        v50 = sub_1C4F02A38();
        v52 = sub_1C441D828(v50, v51, v73);

        *(v48 + 4) = v52;
        _os_log_impl(&dword_1C43F8000, v46, v47, "Error running dbQuery : %s", v48, 0xCu);
        sub_1C440962C(v49);
        MEMORY[0x1C6942830](v49, -1, -1);
        MEMORY[0x1C6942830](v48, -1, -1);
      }

      result = MEMORY[0x1E69E7CD0];
    }

    else
    {
      v53 = v43;

      sub_1C4420C3C(v73, &unk_1EC0BC770, &qword_1C4F10DC0);
      v54 = (v35)(v41, v10);
      MEMORY[0x1EEE9AC00](v54);
      v55 = v70;
      sub_1C45D95B4(sub_1C45E7AD0, (&v56 - 2), v53);

      result = sub_1C4597538();
    }
  }

  *v72 = result;
  return result;
}

double sub_1C45E6FA8@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, _OWORD *a3@<X8>)
{
  sub_1C4EFDAB8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  v9 = v8 - v7;
  v11 = *a1;
  v10 = a1[1];
  (*(v12 + 16))(v8 - v7, a2);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  sub_1C45D29E0(v9, v11, v10, &v15);
  v13 = v16[0];
  *a3 = v15;
  a3[1] = v13;
  result = *(v16 + 9);
  *(a3 + 25) = *(v16 + 9);
  return result;
}

void sub_1C45E709C(uint64_t a1@<X8>)
{
  v62 = a1;
  v2 = sub_1C456902C(&qword_1EC0B9A30, &unk_1C4F10E20);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v50 - v4;
  v6 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  v60 = v11 - v10;
  v12 = sub_1C456902C(&qword_1EC0B9A50, &unk_1C4F10BB0);
  v13 = sub_1C43FBD18(v12);
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBD08();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v63 = &v50 - v18;
  v20 = *v1;
  v19 = v1[1];
  v21 = v1[2];
  v22 = v1[3];
  v23 = v1[4];
  v51 = v5;
  v61 = v21;
  if (v23)
  {
    v56 = v19;
    v59 = v16;
LABEL_7:
    sub_1C44040A4();
    v57 = v26 & v25;
    v29 = v28 | (v27 << 6);
    (*(v8 + 16))(v60, *(v20 + 48) + *(v8 + 72) * v29, v6);
    v30 = *(v20 + 56) + 48 * v29;
    v31 = *v30;
    v58 = v20;
    v33 = *(v30 + 8);
    v32 = *(v30 + 16);
    v35 = *(v30 + 24);
    v34 = *(v30 + 32);
    v54 = v31;
    v55 = v35;
    v52 = v32;
    v53 = v34;
    v36 = v63;
    v37 = v63 + *(v2 + 48);
    v38 = *(v30 + 40);
    v39 = sub_1C4404BCC();
    v40(v39);
    v41 = v54;
    v42 = v55;
    *v37 = v54;
    *(v37 + 8) = v33;
    *(v37 + 16) = v32;
    *(v37 + 24) = v42;
    v43 = v53;
    *(v37 + 32) = v53;
    *(v37 + 40) = v38;
    sub_1C440BAA8(v36, 0, 1, v2);
    v44 = v33;
    v20 = v58;
    sub_1C45D7F64(v41, v44, v52, v42, v43, v38);
    v19 = v56;
    v45 = v57;
    v16 = v59;
LABEL_8:
    *v1 = v20;
    v1[1] = v19;
    v1[2] = v61;
    v1[3] = v22;
    v1[4] = v45;
    v46 = v1[5];
    sub_1C44CD9E0(v63, v16, &qword_1EC0B9A50, &unk_1C4F10BB0);
    v47 = 1;
    if (sub_1C44157D4(v16, 1, v2) != 1)
    {
      v48 = v51;
      sub_1C44CD9E0(v16, v51, &qword_1EC0B9A30, &unk_1C4F10E20);
      v46(v48);
      sub_1C4420C3C(v48, &qword_1EC0B9A30, &unk_1C4F10E20);
      v47 = 0;
    }

    v49 = sub_1C456902C(&qword_1EC0B9A38, &qword_1C4F10B90);
    sub_1C440BAA8(v62, v47, 1, v49);
  }

  else
  {
    while (1)
    {
      v24 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        break;
      }

      if (v24 >= ((v21 + 64) >> 6))
      {
        sub_1C440BAA8(v63, 1, 1, v2);
        v45 = 0;
        goto LABEL_8;
      }

      ++v22;
      if (*(v19 + 8 * v24))
      {
        v56 = v19;
        v59 = v16;
        v22 = v24;
        goto LABEL_7;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C45E7410@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  v7 = v1[4];
  if (v7)
  {
    v8 = v1[3];
LABEL_7:
    v9 = (v7 - 1) & v7;
    v10 = __clz(__rbit64(v7)) | (v8 << 6);
    v11 = (*(v3 + 48) + 16 * v10);
    v13 = *v11;
    v12 = v11[1];
    sub_1C442E860(*(v3 + 56) + 40 * v10, v18);
    *&v20 = v13;
    *(&v20 + 1) = v12;
    sub_1C441D670(v18, &v21);
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v15 = *(&v20 + 1);
    v16 = v20;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v9;
    if (v15)
    {
      v17 = v1[5];
      *&v18[0] = v16;
      *(&v18[0] + 1) = v15;
      v18[1] = v21;
      v18[2] = v22;
      v19 = v23;
      v17(v18);
      return sub_1C4420C3C(v18, &qword_1EC0B9AC0, &qword_1C4F10DE8);
    }

    else
    {
      *(a1 + 48) = 0;
      *(a1 + 16) = 0u;
      *(a1 + 32) = 0u;
      *a1 = 0u;
    }
  }

  else
  {
    while (1)
    {
      v8 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v8 >= ((v5 + 64) >> 6))
      {
        v15 = 0;
        v16 = 0;
        v9 = 0;
        v23 = 0;
        v21 = 0u;
        v22 = 0u;
        v20 = 0u;
        goto LABEL_8;
      }

      v7 = *(v4 + 8 * v8);
      ++v6;
      if (v7)
      {
        v6 = v8;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_1C45E7578(uint64_t a1@<X8>)
{
  v44 = a1;
  v42 = sub_1C456902C(&qword_1EC0B9B08, &qword_1C4F10E80);
  sub_1C43FBCE0();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v40 - v4;
  v6 = sub_1C4EFEFB8();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C4405820();
  v10 = sub_1C456902C(&qword_1EC0B9B10, &qword_1C4F10E88);
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBD08();
  v14 = v12 - v13;
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v40 - v16;
  v19 = *v1;
  v18 = v1[1];
  v20 = v1[2];
  v21 = v1[3];
  v22 = v1[4];
  v40 = v5;
  v43 = v20;
  if (v22)
  {
LABEL_6:
    sub_1C44040A4();
    v41 = v25 & v24;
    v28 = v27 | (v26 << 6);
    (*(v8 + 16))(v2, *(v19 + 48) + *(v8 + 72) * v28, v6);
    sub_1C442E860(*(v19 + 56) + 40 * v28, v45);
    v29 = v42;
    v30 = v6;
    v31 = *(v42 + 48);
    (*(v8 + 32))(v17, v2, v30);
    sub_1C441D670(v45, &v17[v31]);
    sub_1C440BAA8(v17, 0, 1, v29);
    v32 = v41;
LABEL_7:
    *v1 = v19;
    v1[1] = v18;
    v1[2] = v43;
    v1[3] = v21;
    v1[4] = v32;
    v33 = v1[5];
    sub_1C44CD9E0(v17, v14, &qword_1EC0B9B10, &qword_1C4F10E88);
    v34 = 1;
    v35 = sub_1C44157D4(v14, 1, v29);
    v36 = v44;
    if (v35 != 1)
    {
      v37 = v14;
      v38 = v40;
      sub_1C44CD9E0(v37, v40, &qword_1EC0B9B08, &qword_1C4F10E80);
      v33(v38);
      sub_1C4420C3C(v38, &qword_1EC0B9B08, &qword_1C4F10E80);
      v34 = 0;
    }

    v39 = sub_1C456902C(&qword_1EC0B9B18, &unk_1C4F10E90);
    sub_1C440BAA8(v36, v34, 1, v39);
  }

  else
  {
    while (1)
    {
      v23 = v21 + 1;
      if (__OFADD__(v21, 1))
      {
        break;
      }

      if (v23 >= ((v20 + 64) >> 6))
      {
        v29 = v42;
        sub_1C440BAA8(&v40 - v16, 1, 1, v42);
        v32 = 0;
        goto LABEL_7;
      }

      ++v21;
      if (*(v18 + 8 * v23))
      {
        v21 = v23;
        goto LABEL_6;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C45E7890@<X0>(_OWORD *a1@<X8>)
{
  v3 = *v1;
  v4 = v1[1];
  v5 = v1[2];
  v6 = v1[3];
  if (v1[4])
  {
    v21 = v1[2];
LABEL_7:
    sub_1C44040A4();
    v10 = v9 & v8;
    v13 = v12 | (v11 << 6);
    v14 = (*(v3 + 48) + 16 * v13);
    v15 = v14[1];
    v27 = *v14;
    sub_1C4460050(*(v3 + 56) + (v13 << 6), &v28, &qword_1EC0B9AE0, &qword_1C4F16C40);
    v22 = v28;
    v23 = v29;
    v24 = v30;
    v25 = v31;
    v16 = v33;
    v26 = v32;
    v17 = v34;
    v18 = v35;
    result = _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
    v5 = v21;
LABEL_8:
    *v1 = v3;
    v1[1] = v4;
    v1[2] = v5;
    v1[3] = v6;
    v1[4] = v10;
    if (v15)
    {
      v20 = v1[5];
      v28 = v27;
      v29 = v15;
      v30 = v22;
      v31 = v23;
      v32 = v24;
      v33 = v25;
      v34 = v26;
      v35 = v16;
      v36 = v17;
      v37 = v18;
      v20(&v28);
      return sub_1C4420C3C(&v28, &qword_1EC0B90A0, &unk_1C4F10E30);
    }

    else
    {
      *(a1 + 57) = 0u;
      a1[2] = 0u;
      a1[3] = 0u;
      *a1 = 0u;
      a1[1] = 0u;
    }
  }

  else
  {
    while (1)
    {
      v7 = v6 + 1;
      if (__OFADD__(v6, 1))
      {
        break;
      }

      if (v7 >= ((v5 + 64) >> 6))
      {
        v16 = 0;
        v25 = 0;
        v26 = 0;
        v23 = 0;
        v24 = 0;
        v22 = 0;
        v15 = 0;
        v27 = 0;
        v17 = 0;
        v18 = 0;
        v10 = 0;
        goto LABEL_8;
      }

      ++v6;
      if (*(v4 + 8 * v7))
      {
        v21 = v1[2];
        v6 = v7;
        goto LABEL_7;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_1C45E7AF0(uint64_t *a1)
{
  v2 = a1[1];
  result = sub_1C4F02828();
  if (result < v2)
  {
    if (v2 >= -1)
    {
      v4 = result;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x1E69E7CC0];
      }

      else
      {
        v6 = sub_1C4F01728();
        *(v6 + 16) = v5;
      }

      v7[0] = (v6 + 32);
      v7[1] = v5;
      sub_1C45E7C40(v7, v8, a1, v4);
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
    return sub_1C45E7BE4(0, v2, 1, a1);
  }

  return result;
}

uint64_t sub_1C45E7BE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
    while (2)
    {
      v7 = *(v4 + 8 * a3);
      v8 = v6;
      v9 = v5;
      do
      {
        v10 = *v9;
        if (v7 >= *v9)
        {
          break;
        }

        if (!v4)
        {
          __break(1u);
          return result;
        }

        *v9 = v7;
        v9[1] = v10;
        --v9;
      }

      while (!__CFADD__(v8++, 1));
      ++a3;
      v5 += 8;
      --v6;
      if (a3 != a2)
      {
        continue;
      }

      break;
    }
  }

  return result;
}

void sub_1C45E7C40(double **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v79 = MEMORY[0x1E69E7CC0];
  v5 = a3[1];
  if (v5 >= 1)
  {
    v6 = 0;
    v7 = MEMORY[0x1E69E7CC0];
    v74 = a4;
    while (1)
    {
      v8 = v6 + 1;
      if (v6 + 1 < v5)
      {
        v9 = *(*a3 + 8 * v8);
        v10 = *(*a3 + 8 * v6);
        v11 = v6 + 2;
        v12 = v9;
        while (1)
        {
          v13 = v11;
          if (v11 >= v5)
          {
            break;
          }

          v14 = (v9 < v10) ^ (*(*a3 + 8 * v11++) >= v12);
          v12 = *(*a3 + 8 * v13);
          if ((v14 & 1) == 0)
          {
            v8 = v13;
            goto LABEL_9;
          }
        }

        v8 = v5;
LABEL_9:
        if (v9 < v10)
        {
          if (v8 < v6)
          {
            goto LABEL_108;
          }

          if (v6 < v8)
          {
            if (v5 >= v13)
            {
              v5 = v13;
            }

            v15 = 8 * v5 - 8;
            v16 = 8 * v6;
            v17 = v8;
            v18 = v6;
            do
            {
              if (v18 != --v17)
              {
                v19 = *a3;
                if (!*a3)
                {
                  goto LABEL_113;
                }

                v20 = *(v19 + v16);
                *(v19 + v16) = *(v19 + v15);
                *(v19 + v15) = v20;
              }

              ++v18;
              v15 -= 8;
              v16 += 8;
            }

            while (v18 < v17);
            v5 = a3[1];
          }
        }
      }

      if (v8 < v5)
      {
        if (__OFSUB__(v8, v6))
        {
          goto LABEL_107;
        }

        if (v8 - v6 < a4)
        {
          if (__OFADD__(v6, a4))
          {
            goto LABEL_109;
          }

          if (v6 + a4 < v5)
          {
            v5 = v6 + a4;
          }

          if (v5 < v6)
          {
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
            return;
          }

          if (v8 != v5)
          {
            v21 = *a3;
            v22 = *a3 + 8 * v8 - 8;
            v23 = v6 - v8;
            do
            {
              v24 = *(v21 + 8 * v8);
              v25 = v23;
              v26 = v22;
              do
              {
                v27 = *v26;
                if (v24 >= *v26)
                {
                  break;
                }

                if (!v21)
                {
                  goto LABEL_111;
                }

                *v26 = v24;
                v26[1] = v27;
                --v26;
              }

              while (!__CFADD__(v25++, 1));
              ++v8;
              v22 += 8;
              --v23;
            }

            while (v8 != v5);
            v8 = v5;
          }
        }
      }

      if (v8 < v6)
      {
        goto LABEL_106;
      }

      v76 = v8;
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        sub_1C458A358();
        v7 = v72;
      }

      v29 = v7[2];
      v30 = v29 + 1;
      if (v29 >= v7[3] >> 1)
      {
        sub_1C458A358();
        v7 = v73;
      }

      v7[2] = v30;
      v31 = v7 + 4;
      v32 = &v7[2 * v29 + 4];
      *v32 = v6;
      v32[1] = v8;
      v77 = *a1;
      if (!*a1)
      {
        goto LABEL_114;
      }

      if (v29)
      {
        while (1)
        {
          v33 = v30 - 1;
          v34 = &v31[2 * v30 - 2];
          v35 = &v7[2 * v30];
          if (v30 >= 4)
          {
            break;
          }

          if (v30 == 3)
          {
            v36 = v7[4];
            v37 = v7[5];
            v46 = __OFSUB__(v37, v36);
            v38 = v37 - v36;
            v39 = v46;
LABEL_56:
            if (v39)
            {
              goto LABEL_96;
            }

            v51 = *v35;
            v50 = v35[1];
            v52 = __OFSUB__(v50, v51);
            v53 = v50 - v51;
            v54 = v52;
            if (v52)
            {
              goto LABEL_99;
            }

            v55 = v34[1];
            v56 = v55 - *v34;
            if (__OFSUB__(v55, *v34))
            {
              goto LABEL_102;
            }

            if (__OFADD__(v53, v56))
            {
              goto LABEL_104;
            }

            if (v53 + v56 >= v38)
            {
              if (v38 < v56)
              {
                v33 = v30 - 2;
              }

              goto LABEL_78;
            }

            goto LABEL_71;
          }

          if (v30 < 2)
          {
            goto LABEL_98;
          }

          v58 = *v35;
          v57 = v35[1];
          v46 = __OFSUB__(v57, v58);
          v53 = v57 - v58;
          v54 = v46;
LABEL_71:
          if (v54)
          {
            goto LABEL_101;
          }

          v60 = *v34;
          v59 = v34[1];
          v46 = __OFSUB__(v59, v60);
          v61 = v59 - v60;
          if (v46)
          {
            goto LABEL_103;
          }

          if (v61 < v53)
          {
            goto LABEL_85;
          }

LABEL_78:
          if (v33 - 1 >= v30)
          {
            __break(1u);
LABEL_91:
            __break(1u);
LABEL_92:
            __break(1u);
LABEL_93:
            __break(1u);
LABEL_94:
            __break(1u);
LABEL_95:
            __break(1u);
LABEL_96:
            __break(1u);
LABEL_97:
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
            goto LABEL_110;
          }

          if (!*a3)
          {
            goto LABEL_112;
          }

          v65 = &v31[2 * v33 - 2];
          v66 = *v65;
          v67 = &v31[2 * v33];
          v68 = v67[1];
          sub_1C45E821C((*a3 + 8 * *v65), (*a3 + 8 * *v67), (*a3 + 8 * v68), v77);
          if (v4)
          {
            goto LABEL_89;
          }

          if (v68 < v66)
          {
            goto LABEL_91;
          }

          v69 = v7;
          v70 = v7[2];
          if (v33 > v70)
          {
            goto LABEL_92;
          }

          *v65 = v66;
          v65[1] = v68;
          if (v33 >= v70)
          {
            goto LABEL_93;
          }

          v30 = v70 - 1;
          memmove(&v31[2 * v33], v67 + 2, 16 * (v70 - 1 - v33));
          v69[2] = v70 - 1;
          v71 = v70 > 2;
          v7 = v69;
          if (!v71)
          {
            goto LABEL_85;
          }
        }

        v40 = &v31[2 * v30];
        v41 = *(v40 - 8);
        v42 = *(v40 - 7);
        v46 = __OFSUB__(v42, v41);
        v43 = v42 - v41;
        if (v46)
        {
          goto LABEL_94;
        }

        v45 = *(v40 - 6);
        v44 = *(v40 - 5);
        v46 = __OFSUB__(v44, v45);
        v38 = v44 - v45;
        v39 = v46;
        if (v46)
        {
          goto LABEL_95;
        }

        v47 = v35[1];
        v48 = v47 - *v35;
        if (__OFSUB__(v47, *v35))
        {
          goto LABEL_97;
        }

        v46 = __OFADD__(v38, v48);
        v49 = v38 + v48;
        if (v46)
        {
          goto LABEL_100;
        }

        if (v49 >= v43)
        {
          v63 = *v34;
          v62 = v34[1];
          v46 = __OFSUB__(v62, v63);
          v64 = v62 - v63;
          if (v46)
          {
            goto LABEL_105;
          }

          if (v38 < v64)
          {
            v33 = v30 - 2;
          }

          goto LABEL_78;
        }

        goto LABEL_56;
      }

LABEL_85:
      v5 = a3[1];
      v6 = v76;
      a4 = v74;
      if (v76 >= v5)
      {
        v79 = v7;
        break;
      }
    }
  }

  if (!*a1)
  {
    goto LABEL_115;
  }

  sub_1C45E80F0(&v79, *a1, a3);
LABEL_89:
}

uint64_t sub_1C45E80F0(uint64_t *a1, double *a2, void *a3)
{
  v4 = a1;
  v5 = *a1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
LABEL_14:
    result = sub_1C46194F4();
    v5 = result;
  }

  v14 = v4;
  *v4 = v5;
  v7 = (v5 + 16);
  for (i = *(v5 + 16); ; *v7 = i)
  {
    v4 = (i - 2);
    if (i < 2)
    {
LABEL_10:
      *v14 = v5;
      return 1;
    }

    if (!*a3)
    {
      break;
    }

    v9 = (v5 + 16 * i);
    v10 = *v9;
    v11 = &v7[2 * i];
    v12 = v11[1];
    sub_1C45E821C((*a3 + 8 * *v9), (*a3 + 8 * *v11), (*a3 + 8 * v12), a2);
    if (v3)
    {
      goto LABEL_10;
    }

    if (v12 < v10)
    {
      __break(1u);
LABEL_12:
      __break(1u);
LABEL_13:
      __break(1u);
      goto LABEL_14;
    }

    if (v4 >= *v7)
    {
      goto LABEL_12;
    }

    *v9 = v10;
    v9[1] = v12;
    v13 = *v7 - i;
    if (*v7 < i)
    {
      goto LABEL_13;
    }

    i = *v7 - 1;
    result = memmove(v11, v11 + 2, 16 * v13);
  }

  *v14 = v5;
  __break(1u);
  return result;
}

uint64_t sub_1C45E821C(char *a1, char *a2, double *a3, double *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = a2;
  v7 = a1;
  v8 = (a2 - a1) / 8;
  v9 = (a3 - a2) / 8;
  if (v8 < v9)
  {
    sub_1C4474DD4(a1, (a2 - a1) / 8, a4);
    v10 = &v4[v8];
    while (1)
    {
      if (v4 >= v10 || v6 >= v5)
      {
        v6 = v7;
        goto LABEL_28;
      }

      v12 = *v6;
      if (*v6 >= *v4)
      {
        break;
      }

      v13 = v7 == v6;
      v6 += 8;
      if (!v13)
      {
        goto LABEL_12;
      }

LABEL_13:
      v7 += 8;
    }

    v12 = *v4;
    v13 = v7 == v4++;
    if (v13)
    {
      goto LABEL_13;
    }

LABEL_12:
    *v7 = v12;
    goto LABEL_13;
  }

  sub_1C4474DD4(a2, (a3 - a2) / 8, a4);
  v10 = &v4[v9];
LABEL_15:
  v14 = v6 - 8;
  for (--v5; v10 > v4 && v6 > v7; --v5)
  {
    v16 = *(v10 - 1);
    if (v16 < *v14)
    {
      v13 = v5 + 1 == v6;
      v6 -= 8;
      if (!v13)
      {
        *v5 = *v14;
        v6 = v14;
      }

      goto LABEL_15;
    }

    if (v10 != v5 + 1)
    {
      *v5 = v16;
    }

    --v10;
  }

LABEL_28:
  v17 = v10 - v4;
  if (v6 != v4 || v6 >= &v4[v17])
  {
    memmove(v6, v4, 8 * v17);
  }

  return 1;
}

uint64_t sub_1C45E8390@<X0>(uint64_t *a1@<X0>, uint64_t *a2@<X8>)
{
  result = sub_1C46C37F8((a2 + 2), *a1, a1[1], (a1 + 2));
  *a2 = result;
  a2[1] = v4;
  return result;
}

uint64_t sub_1C45E83C8(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5)
{
  sub_1C46C3CC4();
  *&v30[5] = v31;
  *&v30[7] = v32;
  *&v30[9] = v33;
  v30[11] = v34;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();

  while (1)
  {
    sub_1C45E7410(&v28);
    v7 = v29;
    if (!v29)
    {
      sub_1C449BB0C();
    }

    v8 = v28;
    sub_1C441D670(v30, v27);
    v9 = *a5;
    v11 = sub_1C445FAA8(v8, v7);
    v12 = *(v9 + 16);
    v13 = (v10 & 1) == 0;
    v14 = v12 + v13;
    if (__OFADD__(v12, v13))
    {
      break;
    }

    v15 = v10;
    if (*(v9 + 24) >= v14)
    {
      if (a4)
      {
        if (v10)
        {
          goto LABEL_10;
        }
      }

      else
      {
        sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
        sub_1C4F02468();
        if (v15)
        {
          goto LABEL_10;
        }
      }
    }

    else
    {
      sub_1C4679ACC(v14, a4 & 1);
      v16 = sub_1C445FAA8(v8, v7);
      if ((v15 & 1) != (v17 & 1))
      {
        goto LABEL_18;
      }

      v11 = v16;
      if (v15)
      {
LABEL_10:
        v18 = *a5;
        sub_1C442E860(*(*a5 + 56) + 40 * v11, v26);
        sub_1C440962C(v27);

        v19 = (*(v18 + 56) + 40 * v11);
        sub_1C440962C(v19);
        sub_1C441D670(v26, v19);
        goto LABEL_14;
      }
    }

    v20 = *a5;
    *(*a5 + 8 * (v11 >> 6) + 64) |= 1 << v11;
    v21 = (v20[6] + 16 * v11);
    *v21 = v8;
    v21[1] = v7;
    sub_1C441D670(v27, v20[7] + 40 * v11);
    v22 = v20[2];
    v23 = __OFADD__(v22, 1);
    v24 = v22 + 1;
    if (v23)
    {
      goto LABEL_17;
    }

    v20[2] = v24;
LABEL_14:
    a4 = 1;
  }

  __break(1u);
LABEL_17:
  __break(1u);
LABEL_18:
  result = sub_1C4F029F8();
  __break(1u);
  return result;
}

uint64_t sub_1C45E8608(void (*a1)(void), uint64_t a2)
{
  a1(*(v2 + 16));

  return MEMORY[0x1EEE6BDD0](v2, a2, 7);
}

uint64_t sub_1C45E8694(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45E8718(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }

  return result;
}

uint64_t sub_1C45E872C(uint64_t a1, uint64_t a2, char a3)
{
  if (!a3)
  {
  }

  return result;
}

uint64_t sub_1C45E8740(uint64_t a1, uint64_t a2, uint64_t a3, char a4, uint64_t *a5, uint64_t a6, uint64_t a7)
{
  v31 = a6;
  v32 = a7;
  v13 = sub_1C4422F90(&v30);
  (*(*(a6 - 8) + 32))(v13, a1, a6);
  v14 = *a5;
  v15 = sub_1C445FAA8(a2, a3);
  if (__OFADD__(v14[2], (v16 & 1) == 0))
  {
    __break(1u);
    goto LABEL_10;
  }

  v17 = v15;
  v18 = v16;
  sub_1C456902C(&qword_1EC0C47D0, &qword_1C4F10DE0);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v19 = sub_1C445FAA8(a2, a3);
  if ((v18 & 1) != (v20 & 1))
  {
LABEL_10:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v17 = v19;
LABEL_5:
  v21 = *a5;
  if (v18)
  {
    v22 = (v21[7] + 40 * v17);
    sub_1C440962C(v22);
    return sub_1C441D670(&v30, v22);
  }

  else
  {
    v24 = sub_1C4418280(&v30, v31);
    v25 = MEMORY[0x1EEE9AC00](v24);
    v27 = &v29 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
    (*(v28 + 16))(v27, v25);
    sub_1C45E89C4(v17, a2, a3, v27, v21, a6, a7);
    sub_1C440962C(&v30);
    return _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  }
}

uint64_t sub_1C45E8968(uint64_t a1)
{
  v2 = type metadata accessor for EntityInteractionHistogramDatabaseTable.CustomAttributesTableConfig.Property(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45E89C4(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5, uint64_t a6, uint64_t a7)
{
  v20 = a6;
  v21 = a7;
  v13 = sub_1C4422F90(&v19);
  (*(*(a6 - 8) + 32))(v13, a4, a6);
  a5[(a1 >> 6) + 8] |= 1 << a1;
  v14 = (a5[6] + 16 * a1);
  *v14 = a2;
  v14[1] = a3;
  result = sub_1C441D670(&v19, a5[7] + 40 * a1);
  v16 = a5[2];
  v17 = __OFADD__(v16, 1);
  v18 = v16 + 1;
  if (v17)
  {
    __break(1u);
  }

  else
  {
    a5[2] = v18;
  }

  return result;
}

double sub_1C45E8C2C(double a1)
{
  v3 = sub_1C4EF9CD8();
  sub_1C43FCF7C(v3);
  v6 = *(v1 + ((*(v5 + 64) + ((*(v4 + 80) + 16) & ~*(v4 + 80)) + 7) & 0xFFFFFFFFFFFFFFF8));

  return sub_1C45E15D8(a1, v6);
}

uint64_t sub_1C45E8E08(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C45E8E50(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
  }

  return result;
}

BOOL sub_1C45E8EB8(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v2, v3, MEMORY[0x1E69A9498]);
  sub_1C4F01578();
  sub_1C4F01578();
  return v6 == v5;
}

uint64_t sub_1C45E8F84(uint64_t a1)
{
  MEMORY[0x1C69417F0](*v1);
  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v2, v3, MEMORY[0x1E69A9488]);
  return sub_1C4F00FE8();
}

uint64_t sub_1C45E900C()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](*v0);
  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v1, v2, MEMORY[0x1E69A9488]);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

uint64_t sub_1C45E90B4()
{
  sub_1C4F02AF8();
  MEMORY[0x1C69417F0](*v0);
  sub_1C4EFDAB8();
  sub_1C4419144();
  sub_1C45EC890(v1, v2, MEMORY[0x1E69A9488]);
  sub_1C4F00FE8();
  return sub_1C4F02B68();
}

void sub_1C45E9150(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v23 = v20;
  v25 = v24;
  v27 = v26;
  v29 = v28;
  v31 = v30;
  v32 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  v33 = v32 - 8;
  MEMORY[0x1EEE9AC00](v32);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  v34 = (*(v25 + 24))(v27, v25);
  v35 = *(v33 + 28);
  sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v36 + 16))(&v22[v35], v29);
  *v22 = v34;
  swift_beginAccess();
  v37 = v23[17];
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v38 = sub_1C465C188(v22, v37);

  if (!v38 || (sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930), (swift_dynamicCast() & 1) == 0))
  {
    v39 = v23[10];
    v40 = v23[11];
    sub_1C4409678(v23 + 7, v39);
    (*(v40 + 8))(v31, v29, v27, v25, v39, v40);
    if (!v21)
    {
      swift_beginAccess();
      v41 = swift_unknownObjectRetain();
      sub_1C45ECAD8(v41, v22, v23 + 17, v27, v25);
      swift_endAccess();
    }
  }

  sub_1C45ECB54(v22);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C45E9360()
{
  sub_1C43FE96C();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v7 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  MEMORY[0x1EEE9AC00](v7);
  sub_1C43FBCC4();
  v10 = (v9 - v8);
  v11 = (*(v2 + 24))(v4, v2);
  (*(v2 + 64))(v4, v2);
  *v10 = v11;
  swift_beginAccess();
  v12 = swift_unknownObjectRetain();
  sub_1C45ECAD8(v12, v10, v0 + 17, v4, v2);
  swift_endAccess();
  v13 = v0[10];
  v14 = v0[11];
  sub_1C4409678(v0 + 7, v13);
  (*(v14 + 16))(v6, v4, v2, v13, v14);
  sub_1C45ECB54(v10);
  sub_1C4402144();
  sub_1C43FBC80();
}

void sub_1C45E94BC()
{
  v2 = v0;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  sub_1C456902C(&qword_1EC0B87A8, &unk_1C4F0E930);
  sub_1C45EC890(&qword_1EC0B9B40, type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey, &unk_1C4F10FA4);
  v3 = sub_1C4F00F28();
  swift_beginAccess();
  v2[17] = v3;

  v4 = v2[10];
  v5 = v2[11];
  sub_1C4409678(v2 + 7, v4);
  (*(v5 + 24))(v4, v5);
  if (!v1)
  {
    sub_1C4409678(v2 + 12, v2[15]);
    sub_1C45EBD20();
  }
}

void *sub_1C45E95E8()
{
  sub_1C440962C(v0 + 2);
  sub_1C440962C(v0 + 7);
  sub_1C440962C(v0 + 12);

  return v0;
}

uint64_t sub_1C45E9620()
{
  sub_1C45E95E8();

  return swift_deallocClassInstance();
}

void sub_1C45E96E4()
{
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (!v1)
  {
    sub_1C4409678((v0 + 24), *(v0 + 48));
    sub_1C45EBD20();
  }
}

uint64_t sub_1C45E9788(uint64_t a1, void *a2)
{
  v3 = sub_1C4EFB768();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x1EEE9AC00](v3);
  v7 = v9 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  strcpy(v9, "DELETE FROM ");
  HIBYTE(v9[6]) = 0;
  v9[7] = -5120;
  MEMORY[0x1C6940010](*a2, a2[1], v5);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v4 + 8))(v7, v3);
}

void sub_1C45E98C0()
{
  sub_1C43FE96C();
  v3 = v0;
  v5 = v4;
  v7 = v6;
  sub_1C4EFDAB8();
  sub_1C43FCE64();
  v31 = v8;
  v32 = v9;
  MEMORY[0x1EEE9AC00](v8);
  sub_1C43FBCC4();
  v12 = v11 - v10;
  v13 = sub_1C456902C(&unk_1EC0B84E0, qword_1C4F0D2D0);
  sub_1C43FBD18(v13);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v14);
  v15 = sub_1C4402C40();
  v16 = type metadata accessor for DecayingHistogramState(v15);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FBCC4();
  v20 = (v19 - v18);
  sub_1C4F01F48();
  sub_1C4EFAF88();
  if (!v1)
  {
    v30 = v20;
    if (!v34[0])
    {
      v21 = sub_1C4EF9CD8();
      sub_1C43FCF64();
      sub_1C440BAA8(v22, v23, v24, v21);
      v25 = [objc_allocWithZone(MEMORY[0x1E69A4688]) init];
      v26 = *(v16 + 20);
      sub_1C43FCF64();
      sub_1C440BAA8(v27, v28, v29, v21);
      *v30 = v25;
      sub_1C45AD734(v2, v30 + v26);
      (*(v32 + 16))(v12, v7, v31);
      sub_1C442E860(v3 + 24, v34);
      sub_1C442E860(v3 + 64, v33);
      (*(v5 + 152))(v30, v12, v34, v33);
    }
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45E9B28@<X0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t *a6@<X8>)
{
  v37 = a1;
  v36 = a6;
  v31 = sub_1C4EFDAB8();
  v35 = *(v31 - 8);
  MEMORY[0x1EEE9AC00](v31);
  v34 = &v30 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v43 = sub_1C4EFB768();
  v11 = *(v43 - 8);
  MEMORY[0x1EEE9AC00](v43);
  v13 = &v30 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v41[0] = 0;
  *(&v41[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000011, 0x80000001C4F8D050);
  v14 = *a2;
  v15 = a2[1];
  v30 = a2;
  MEMORY[0x1C6940010](v14, v15);
  MEMORY[0x1C6940010](0xD000000000000034, 0x80000001C4F8D070);
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v16 = swift_allocObject();
  *(v16 + 16) = xmmword_1C4F0CE60;
  *(v16 + 32) = 1701869940;
  *(v16 + 40) = 0xE400000000000000;
  v17 = *(a5 + 24);
  v32 = a5;
  v33 = a4;
  v18 = v17(a4, a5);
  v19 = MEMORY[0x1E69E6530];
  v20 = MEMORY[0x1E69A0180];
  *(v16 + 72) = MEMORY[0x1E69E6530];
  *(v16 + 80) = v20;
  *(v16 + 48) = v18;
  strcpy((v16 + 88), "behaviorType");
  *(v16 + 101) = 0;
  *(v16 + 102) = -5120;
  v21 = sub_1C4EFDAA8();
  *(v16 + 128) = v19;
  *(v16 + 136) = v20;
  *(v16 + 104) = v21;
  sub_1C4EFB738();
  v42 = 0;
  memset(v41, 0, sizeof(v41));
  v22 = v38;
  sub_1C4EFB998();
  if (v22)
  {

    sub_1C4420C3C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
    return (*(v11 + 8))(v13, v43);
  }

  else
  {
    v25 = v34;
    v24 = v35;

    sub_1C4420C3C(v41, &unk_1EC0BC770, &qword_1C4F10DC0);
    (*(v11 + 8))(v13, v43);
    v26 = v40;
    if (v40 >> 60 == 15)
    {
      result = 0;
    }

    else
    {
      v27 = v39;
      v28 = v25;
      (*(v24 + 16))(v25, a3, v31);
      v29 = v30;
      sub_1C442E860((v30 + 3), v41);
      sub_1C442E860((v29 + 8), &v39);
      result = (*(v32 + 160))(v27, v26, v28, v41, &v39);
    }

    *v36 = result;
  }

  return result;
}

void sub_1C45E9F04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t *a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v25 = (*(v23 + 112))(v24, v23);
  if (!v20)
  {
    v27 = v25;
    v28 = v26;
    a10 = &a9;
    MEMORY[0x1EEE9AC00](v25);
    sub_1C4EFAFC8();
    sub_1C4EFB2C8();
    sub_1C4434000(v27, v28);
  }

  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C45EA004(uint64_t a1, void *a2, uint64_t a3, uint64_t a4, unint64_t a5, uint64_t a6, uint64_t a7)
{
  v29 = a1;
  v27 = a4;
  v28 = a5;
  v26 = a3;
  v33 = sub_1C4EFB768();
  v30 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v11 = v24 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = sub_1C4EFDAB8();
  v12 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v14 = v24 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v31 = 0;
  v32 = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
  MEMORY[0x1C6940010](*a2, a2[1]);
  MEMORY[0x1C6940010](0xD000000000000067, 0x80000001C4F8CFE0);
  v24[1] = v32;
  v24[2] = v31;
  sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v15 = swift_allocObject();
  *(v15 + 16) = xmmword_1C4F0C890;
  *(v15 + 32) = 1701869940;
  *(v15 + 40) = 0xE400000000000000;
  v16 = (*(a7 + 24))(a6, a7);
  v17 = MEMORY[0x1E69E6530];
  v18 = MEMORY[0x1E69A0180];
  *(v15 + 72) = MEMORY[0x1E69E6530];
  *(v15 + 80) = v18;
  *(v15 + 48) = v16;
  strcpy((v15 + 88), "behaviorType");
  *(v15 + 101) = 0;
  *(v15 + 102) = -5120;
  (*(a7 + 64))(a6, a7);
  v19 = sub_1C4EFDAA8();
  (*(v12 + 8))(v14, v25);
  *(v15 + 128) = v17;
  *(v15 + 136) = v18;
  *(v15 + 104) = v19;
  *(v15 + 144) = 1635017060;
  *(v15 + 152) = 0xE400000000000000;
  v20 = MEMORY[0x1E699FD70];
  *(v15 + 184) = MEMORY[0x1E6969080];
  *(v15 + 192) = v20;
  v21 = v27;
  v22 = v28;
  *(v15 + 160) = v27;
  *(v15 + 168) = v22;
  sub_1C44344B8(v21, v22);
  sub_1C4EFB738();
  sub_1C4EFBFF8();
  (*(v30 + 8))(v11, v33);
}

void sub_1C45EA370(uint64_t a1@<X0>, void *a2@<X8>)
{
  v5 = *(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);

  v6 = sub_1C45ED17C();
  a2[3] = &type metadata for BehaviorDatabaseHistogramManager;
  a2[4] = &off_1F43E25F0;
  v7 = swift_allocObject();
  *a2 = v7;
  v7[8] = type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
  v7[9] = &off_1F43E2510;
  v7[5] = v6;
  sub_1C442E860(a1, (v7 + 10));
  sub_1C440F2C8();
  v7[2] = v8;
  v7[3] = 0xE90000000000006DLL;
  v7[4] = v5;
}

uint64_t sub_1C45EA42C()
{
  v1 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache;
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache))
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache);
  }

  else
  {
    v3 = v0;
    sub_1C456902C(&qword_1EC0B9B20, &qword_1C4F11008);
    swift_allocObject();
    v2 = sub_1C4F00248();
    *(v3 + v1) = v2;
  }

  return v2;
}

void *sub_1C45EA4BC(uint64_t a1)
{
  *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache) = 0;
  v1[3] = 0;
  v1[4] = 0;
  v1[2] = a1;
  sub_1C4EFDAB8();
  sub_1C43FCF64();
  sub_1C440BAA8(v2, v3, v4, v5);
  return v1;
}

char *sub_1C45EA510(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *&v4[OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache] = 0;
  *(v4 + 2) = a1;
  v8 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type;
  v9 = sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v10 + 32))(&v4[v8], a2, v9);
  sub_1C440BAA8(&v4[v8], 0, 1, v9);
  *(v4 + 3) = a3;
  *(v4 + 4) = a4;
  return v4;
}

uint64_t sub_1C45EA5B4()
{
  v1 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v1);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C4402C40();
  sub_1C4EFDAB8();
  sub_1C43FCF64();
  sub_1C440BAA8(v3, v4, v5, v6);
  v7 = sub_1C45EA66C(v0);
  sub_1C4420C3C(v0, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  return v7;
}

uint64_t sub_1C45EA66C(uint64_t a1)
{
  v4 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = v24 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = v24 - v8;
  v10 = sub_1C4EFDAB8();
  v11 = *(v10 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v13 = v24 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v16 = v24 - v15;
  sub_1C45EC820(a1, v9);
  if (sub_1C44157D4(v9, 1, v10) == 1)
  {
    sub_1C4420C3C(v9, &qword_1EC0B9AA0, &unk_1C4F10DA0);
    sub_1C45EC820(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v6);
    if (sub_1C44157D4(v6, 1, v10) == 1)
    {
      sub_1C4420C3C(v6, &qword_1EC0B9AA0, &unk_1C4F10DA0);
      v17 = sub_1C4EFDA58();
      v18 = v17;
    }

    else
    {
      v21 = *(v11 + 32);
      v21(v13, v6, v10);
      sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
      v22 = (*(v11 + 80) + 32) & ~*(v11 + 80);
      v18 = swift_allocObject();
      *(v18 + 16) = xmmword_1C4F0D130;
      v17 = (v21)(v18 + v22, v13, v10);
    }
  }

  else
  {
    v19 = *(v11 + 32);
    v19(v16, v9, v10);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v20 = (*(v11 + 80) + 32) & ~*(v11 + 80);
    v18 = swift_allocObject();
    *(v18 + 16) = xmmword_1C4F0D130;
    v17 = (v19)(v18 + v20, v16, v10);
  }

  MEMORY[0x1EEE9AC00](v17);
  v24[-2] = v18;
  v24[-1] = v1;
  sub_1C456902C(&qword_1EC0B8F58, &qword_1C4F11020);
  sub_1C4EFAF88();

  if (!v2)
  {
    return v24[1];
  }

  return result;
}

uint64_t sub_1C45EA9C0(uint64_t a1)
{
  v3 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v3);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v4);
  sub_1C43FD1B4();
  v5 = sub_1C4EFDAB8();
  sub_1C43FBCE0();
  (*(v6 + 16))(v1, a1, v5);
  sub_1C440BAA8(v1, 0, 1, v5);
  v7 = sub_1C45EA66C(v1);
  sub_1C4420C3C(v1, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  return v7;
}

void sub_1C45EAAC0(void *result@<X0>, uint64_t a2@<X1>, uint64_t *a4@<X8>)
{
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = MEMORY[0x1E69E7CC0];
  while (1)
  {
    if (v7 == v6)
    {
      *a4 = v8;
      return;
    }

    v9 = *(sub_1C4EFDAB8() - 8);
    sub_1C45EAC78(a2 + ((*(v9 + 80) + 32) & ~*(v9 + 80)) + *(v9 + 72) * v6, result, &v22);
    if (v4)
    {

      return;
    }

    v10 = v22;
    v11 = *(v22 + 16);
    v12 = *(v8 + 16);
    v13 = v12 + v11;
    if (__OFADD__(v12, v11))
    {
      break;
    }

    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    if (!isUniquelyReferenced_nonNull_native || v13 > *(v8 + 24) >> 1)
    {
      if (v12 <= v13)
      {
        v15 = v12 + v11;
      }

      else
      {
        v15 = v12;
      }

      sub_1C458AFD0(isUniquelyReferenced_nonNull_native, v15, 1, v8);
      v8 = v16;
    }

    if (*(v10 + 16))
    {
      if ((*(v8 + 24) >> 1) - *(v8 + 16) < v11)
      {
        goto LABEL_22;
      }

      swift_arrayInitWithCopy();

      if (v11)
      {
        v17 = *(v8 + 16);
        v18 = __OFADD__(v17, v11);
        v19 = v17 + v11;
        if (v18)
        {
          goto LABEL_23;
        }

        *(v8 + 16) = v19;
      }
    }

    else
    {

      if (v11)
      {
        goto LABEL_21;
      }
    }

    ++v6;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
}

void sub_1C45EAC78(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v21 = a2;
  v23 = a3;
  v5 = sub_1C4EFB768();
  v22 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_1C4EFDAB8();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v12 = &v21 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 104))(v12, *MEMORY[0x1E69A9450], v8, v10);
  sub_1C45EC890(&unk_1EDDEFFC0, MEMORY[0x1E69A9478], MEMORY[0x1E69A9490]);
  v13 = sub_1C4F010B8();
  (*(v9 + 8))(v12, v8);
  if (v13)
  {
    v14 = MEMORY[0x1E69E7CC0];
LABEL_3:
    *v23 = v14;
    return;
  }

  sub_1C45EB148();
  if (!v3)
  {
    v17 = v15;
    v18 = v16;
    *&v24[0] = 0;
    *(&v24[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();

    *&v24[0] = 0xD00000000000001FLL;
    *(&v24[0] + 1) = 0x80000001C4F8CFA0;
    MEMORY[0x1C6940010](v17, v18);

    v25 = 0;
    memset(v24, 0, sizeof(v24));
    sub_1C4EFB758();
    v19 = sub_1C4EFB978();

    (*(v22 + 8))(v7, v5);
    v20 = sub_1C4420C3C(v24, &unk_1EC0BC770, &qword_1C4F10DC0);
    MEMORY[0x1EEE9AC00](v20);
    *(&v21 - 2) = a1;
    v14 = sub_1C49BFA2C(sub_1C45ECAA0, (&v21 - 4), v19);

    goto LABEL_3;
  }
}

void sub_1C45EB148()
{
  sub_1C43FE96C();
  v2 = v0;
  v4 = v3;
  v5 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v5);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = v23 - v7;
  v9 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v11 = v10;
  MEMORY[0x1EEE9AC00](v12);
  sub_1C43FBCC4();
  sub_1C43FD1B4();
  sub_1C45EC820(v2 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v8);
  if (sub_1C44157D4(v8, 1, v9) == 1)
  {
    sub_1C4420C3C(v8, &qword_1EC0B9AA0, &unk_1C4F10DA0);
  }

  else
  {
    (*(v11 + 32))(v1, v8, v9);
    sub_1C4419144();
    sub_1C45EC890(v13, v14, MEMORY[0x1E69A9490]);
    if ((sub_1C4F010B8() & 1) == 0)
    {
      type metadata accessor for HistogramKeyProviderError(0);
      sub_1C45EC890(&qword_1EC0B9B30, type metadata accessor for HistogramKeyProviderError, &unk_1C4F110CC);
      swift_allocError();
      v20 = v19;
      v21 = *(sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018) + 48);
      v22 = *(v11 + 16);
      v22(v20, v4, v9);
      v22(v20 + v21, v1, v9);
      swift_willThrow();
      (*(v11 + 8))(v1, v9);
      goto LABEL_9;
    }

    (*(v11 + 8))(v1, v9);
  }

  if (!*(v2 + 32))
  {
    sub_1C440F2C8();
    v23[0] = v15;
    v23[1] = 0xED00005F79654B6DLL;
    sub_1C4419144();
    sub_1C45EC890(v16, v17, MEMORY[0x1E69A94A8]);
    v18 = sub_1C4F02858();
    MEMORY[0x1C6940010](v18);
  }

  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
LABEL_9:
  sub_1C4402144();
  sub_1C43FBC80();
}

uint64_t sub_1C45EB448@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_1C4EFDAB8();
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = v18 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *a1;
  v10 = a1[1];
  (*(v12 + 16))(v9, a2, v7);
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  result = sub_1C45D29E0(v9, v11, v10, v18);
  v14 = v20;
  if (v20 > 0x14u)
  {
    v15 = 0;
    v16 = 0uLL;
    v14 = -1;
    v17 = 0uLL;
  }

  else
  {
    v15 = v19;
    v16 = v18[0];
    v17 = v18[1];
  }

  *a3 = v16;
  *(a3 + 16) = v17;
  *(a3 + 32) = v15;
  *(a3 + 40) = v14;
  return result;
}

void *sub_1C45EB574(uint64_t a1)
{
  sub_1C45A2358(a1, v19);
  v15[0] = sub_1C45EA42C();
  sub_1C440DEBC();
  v4 = sub_1C456902C(&qword_1EC0B9B20, &qword_1C4F11008);
  v5 = sub_1C45EC6F8();
  MEMORY[0x1C693EDF0](&v16, v19, v4, v5);
  sub_1C45EC75C(a1);

  if ((v16 & 0x10000) == 0)
  {
    return v16;
  }

  MEMORY[0x1EEE9AC00](v6);
  v7 = v14;
  v14[2] = v1;
  v14[3] = a1;
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (!v2)
  {
    v7 = v19[0];
    if (v19[0] >> 16)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v8 = sub_1C4F00978();
      sub_1C442B738(v8, qword_1EDE2DDE0);
      v9 = sub_1C4F00968();
      v10 = sub_1C4F01CE8();
      if (os_log_type_enabled(v9, v10))
      {
        v11 = swift_slowAlloc();
        *v11 = 134217984;
        *(v11 + 4) = v7;
        _os_log_impl(&dword_1C43F8000, v9, v10, "BehaviorDatabase+Histogram: Out of available key (rowId = %lld cannot be represented by UInt16).", v11, 0xCu);
        MEMORY[0x1C6942830](v11, -1, -1);
      }

      sub_1C45EC7CC();
      swift_allocError();
      swift_willThrow();
    }

    else
    {
      v17 = v19[0];
      v18 = 0;
      sub_1C440DEBC();
      v13 = OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache;
      v16 = *(v1 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider____lazy_storage___behaviorKeyCache);
      sub_1C45A2358(a1, v15);

      sub_1C4F00118();
      *(v1 + v13) = v16;
    }
  }

  return v7;
}

uint64_t sub_1C45EB7FC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t *a3@<X8>)
{
  v43 = a3;
  v44 = a1;
  v5 = sub_1C4EFB768();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v45 = v37 - v10;
  v11 = sub_1C4EFDAB8();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = v37 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v50 = a2;
  sub_1C45D5A24(v14);
  sub_1C45EB148();
  if (v3)
  {
    return (*(v12 + 8))(v14, v11);
  }

  v18 = v16;
  v39 = v8;
  v41 = v6;
  v42 = v5;
  v19 = v15;
  (*(v12 + 8))(v14, v11);
  *&v46[0] = 0;
  *(&v46[0] + 1) = 0xE000000000000000;
  sub_1C4F02248();
  MEMORY[0x1C6940010](0xD000000000000012, 0x80000001C4F8CF20);
  v40 = v19;
  MEMORY[0x1C6940010](v19, v18);
  MEMORY[0x1C6940010](0xD000000000000027, 0x80000001C4F8CF40);
  v20 = v18;
  v21 = sub_1C456902C(&qword_1EC0B9AA8, &qword_1C4F11010);
  v22 = swift_allocObject();
  v38 = xmmword_1C4F0D130;
  *(v22 + 16) = xmmword_1C4F0D130;
  *(v22 + 32) = 0x696669746E656469;
  *(v22 + 40) = 0xEA00000000007265;
  v23 = sub_1C45D2400();
  v24 = MEMORY[0x1E69A0138];
  *(v22 + 72) = MEMORY[0x1E69E6158];
  *(v22 + 80) = v24;
  *(v22 + 48) = v23;
  *(v22 + 56) = v25;
  v26 = v45;
  sub_1C4EFB738();
  v47 = 0;
  memset(v46, 0, sizeof(v46));
  sub_1C4EFB998();
  v37[1] = v21;
  v27 = v40;

  sub_1C4420C3C(v46, &unk_1EC0BC770, &qword_1C4F10DC0);
  v28 = *(v41 + 8);
  v29 = v26;
  v30 = v42;
  v28(v29, v42);
  if (v49 == 1)
  {
    v45 = v28;
    *&v46[0] = 0;
    *(&v46[0] + 1) = 0xE000000000000000;
    sub_1C4F02248();
    MEMORY[0x1C6940010](0x4920545245534E49, 0xEC000000204F544ELL);
    MEMORY[0x1C6940010](v27, v20);

    MEMORY[0x1C6940010](0xD00000000000002ALL, 0x80000001C4F8CF70);
    v31 = swift_allocObject();
    *(v31 + 16) = v38;
    *(v31 + 32) = 0x696669746E656469;
    *(v31 + 40) = 0xEA00000000007265;
    v32 = sub_1C45D2400();
    *(v31 + 72) = MEMORY[0x1E69E6158];
    *(v31 + 80) = MEMORY[0x1E69A0138];
    *(v31 + 48) = v32;
    *(v31 + 56) = v33;
    v34 = v39;
    sub_1C4EFB738();
    sub_1C4EFBFF8();
    v35 = v43;
    (v45)(v34, v30);

    result = sub_1C4EFBF18();
    v36 = result;
  }

  else
  {
    v36 = v48;

    v35 = v43;
  }

  *v35 = v36;
  return result;
}

void sub_1C45EBD20()
{
  sub_1C43FE96C();
  v68 = v1;
  v3 = sub_1C4EFDAB8();
  sub_1C43FCE64();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  v56 = &v54 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v58 = &v54 - v9;
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v54 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v54 - v14;
  v16 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  sub_1C43FBD18(v16);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v17);
  sub_1C43FD1B4();
  v59 = v0;
  sub_1C45EC820(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, v2);
  v18 = sub_1C44157D4(v2, 1, v3);
  v65 = v15;
  if (v18 == 1)
  {
    v19 = sub_1C4EFDA58();
  }

  else
  {
    v20 = *(v5 + 32);
    v20(v15, v2, v3);
    sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
    v21 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v19 = swift_allocObject();
    *(v19 + 16) = xmmword_1C4F0D130;
    v20((v19 + v21), v15, v3);
  }

  v22 = 0;
  v23 = *(v19 + 16);
  v66 = v12;
  v67 = v23;
  v69 = v5 + 16;
  v64 = *MEMORY[0x1E69A9450];
  v63 = v5 + 104;
  v24 = v5 + 8;
  v57 = (v5 + 32);
  v60 = MEMORY[0x1E69E7CC0];
  v61 = v5;
  v62 = v19;
  while (v67 != v22)
  {
    if (v22 >= *(v19 + 16))
    {
      __break(1u);
LABEL_23:
      __break(1u);
      return;
    }

    v25 = (*(v5 + 80) + 32) & ~*(v5 + 80);
    v26 = v19 + v25;
    v27 = *(v5 + 72);
    v28 = v3;
    v29 = v66;
    (*(v5 + 16))(v66, v26 + v27 * v22, v28);
    v30 = *(v5 + 104);
    v31 = v5;
    v32 = v65;
    v30(v65, v64, v28);
    sub_1C4419144();
    sub_1C45EC890(&unk_1EDDEFFC0, v33, MEMORY[0x1E69A9490]);
    v34 = sub_1C4F010B8();
    v35 = *(v31 + 8);
    v35(v32, v28);
    if (v34)
    {
      v35(v29, v28);
      ++v22;
      v5 = v61;
      v19 = v62;
      v3 = v28;
    }

    else
    {
      v36 = v27;
      v37 = v24;
      v55 = *v57;
      v55(v58, v29, v28);
      v38 = v60;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v40 = v38;
      v70 = v38;
      v3 = v28;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        sub_1C459D1E0();
        v40 = v38;
      }

      v5 = v61;
      v19 = v62;
      v41 = *(v40 + 16);
      v42 = v41 + 1;
      if (v41 >= *(v40 + 24) >> 1)
      {
        v43 = v41 + 1;
        v60 = *(v40 + 16);
        sub_1C459D1E0();
        v42 = v43;
        v41 = v60;
        v24 = v37;
        v40 = v70;
      }

      ++v22;
      *(v40 + 16) = v42;
      v60 = v40;
      v55((v40 + v25 + v41 * v36), v58, v28);
    }
  }

  v44 = 0;
  v45 = v60;
  v67 = *(v60 + 16);
  v46 = v56;
  while (1)
  {
    if (v67 == v44)
    {

      sub_1C45EA42C();
      sub_1C4F00238();

      goto LABEL_21;
    }

    if (v44 >= *(v45 + 16))
    {
      goto LABEL_23;
    }

    v47 = (*(v5 + 16))(v46, v45 + ((*(v5 + 80) + 32) & ~*(v5 + 80)) + *(v5 + 72) * v44, v3);
    MEMORY[0x1EEE9AC00](v47);
    *(&v54 - 2) = v48;
    *(&v54 - 1) = v46;
    sub_1C4EFAFC8();
    v49 = v68;
    sub_1C4EFB2C8();
    v68 = v49;
    if (v49)
    {
      break;
    }

    ++v44;
    v50 = sub_1C4416DB8();
    v51(v50);
    v45 = v60;
  }

  v52 = sub_1C4416DB8();
  v53(v52);
LABEL_21:
  sub_1C43FBC80();
}

void sub_1C45EC28C()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C45EB148();
  if (!v0)
  {
    strcpy(v7, "DELETE FROM ");
    HIBYTE(v7[6]) = 0;
    v7[7] = -5120;
    MEMORY[0x1C6940010](v5, v6);

    sub_1C4EFB758();
    sub_1C4EFBFF8();
    (*(v2 + 8))(v4, v1);
  }
}

uint64_t sub_1C45EC3E8()
{

  sub_1C4420C3C(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore36BehaviorDatabaseHistogramKeyProvider_type, &qword_1EC0B9AA0, &unk_1C4F10DA0);

  return v0;
}

uint64_t sub_1C45EC440()
{
  sub_1C45EC3E8();

  return swift_deallocClassInstance();
}

void sub_1C45EC4C0(uint64_t a1)
{
  sub_1C45EC570(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1C45EC570(uint64_t a1)
{
  if (!qword_1EDDFCCC8)
  {
    sub_1C4EFDAB8();
    v1 = sub_1C4F01F48();
    if (!v2)
    {
      atomic_store(v1, &qword_1EDDFCCC8);
    }
  }
}

uint64_t sub_1C45EC610(uint64_t a1)
{
  result = sub_1C4EFDAB8();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

unint64_t sub_1C45EC6F8()
{
  result = qword_1EDDEFE80;
  if (!qword_1EDDEFE80)
  {
    sub_1C4572308(&qword_1EC0B9B20, &qword_1C4F11008);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDDEFE80);
  }

  return result;
}

unint64_t sub_1C45EC7CC()
{
  result = qword_1EC0B9B28;
  if (!qword_1EC0B9B28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC0B9B28);
  }

  return result;
}

uint64_t sub_1C45EC820(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9AA0, &unk_1C4F10DA0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45EC890(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void *sub_1C45EC8F8(uint64_t a1, __int128 *a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v9 = *a3;
  v22 = a4;
  v23 = a5;
  v10 = v9;
  v11 = sub_1C4422F90(&v21);
  (*(*(a4 - 8) + 32))(v11, a1, a4);
  v20[3] = v10;
  v20[4] = &off_1F43E2510;
  v20[0] = a3;
  type metadata accessor for CachedBehaviorDatabaseHistogramManager();
  v12 = swift_allocObject();
  sub_1C4418280(v20, v10);
  sub_1C43FCE64();
  sub_1C43FBC68();
  v14 = MEMORY[0x1EEE9AC00](v13);
  v16 = (v20 - v15);
  (*(v17 + 16))(v20 - v15, v14);
  v18 = *v16;
  v12[15] = v10;
  v12[16] = &off_1F43E2510;
  v12[12] = v18;
  v12[17] = MEMORY[0x1E69E7CC8];
  sub_1C441D670(&v21, (v12 + 2));
  sub_1C441D670(a2, (v12 + 7));
  sub_1C440962C(v20);
  return v12;
}

uint64_t sub_1C45ECAD8(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *a3;
  result = sub_1C45ECBB0(a1, a2, isUniquelyReferenced_nonNull_native, &v12, a4, a5);
  *a3 = v12;
  return result;
}

uint64_t sub_1C45ECB54(uint64_t a1)
{
  v2 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C45ECBB0(uint64_t a1, uint64_t a2, char a3, uint64_t *a4, uint64_t a5, uint64_t a6)
{
  v24 = a5;
  v10 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = *a4;
  v14 = sub_1C457AE68(a2);
  if (__OFADD__(v13[2], (v15 & 1) == 0))
  {
    __break(1u);
    goto LABEL_11;
  }

  v16 = v14;
  v17 = v15;
  sub_1C456902C(&qword_1EC0B9B48, qword_1C4F11028);
  if ((sub_1C4F02458() & 1) == 0)
  {
    goto LABEL_5;
  }

  v18 = sub_1C457AE68(a2);
  if ((v17 & 1) != (v19 & 1))
  {
LABEL_11:
    result = sub_1C4F029F8();
    __break(1u);
    return result;
  }

  v16 = v18;
LABEL_5:
  v20 = *a4;
  if (v17)
  {
    v21 = (v20[7] + 16 * v16);
    *v21 = a1;
    v21[1] = a6;

    return swift_unknownObjectRelease();
  }

  else
  {
    sub_1C45ECD4C(a2, v12);
    return sub_1C45ECDB0(v16, v12, a1, v20, v24, a6);
  }
}

uint64_t sub_1C45ECD4C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45ECDB0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t a5, uint64_t a6)
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v11 = a4[6];
  v12 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  result = sub_1C45ECE58(a2, v11 + *(*(v12 - 8) + 72) * a1);
  v14 = (a4[7] + 16 * a1);
  *v14 = a3;
  v14[1] = a6;
  v15 = a4[2];
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v17;
  }

  return result;
}

uint64_t sub_1C45ECE58(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for CachedBehaviorDatabaseHistogramManager.BehaviorHistogramCacheKey(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C45ECEC4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 88) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 104) = 1;
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

    *(result + 104) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1C45ECF2C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018);

  return sub_1C44157D4(a1, a2, v4);
}

uint64_t sub_1C45ECF80(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C456902C(&qword_1EC0B9B38, &qword_1C4F11018);

  return sub_1C440BAA8(a1, a2, a3, v6);
}

uint64_t sub_1C45ECFE4(uint64_t a1)
{
  sub_1C45ED0B4(319);
  v3 = v2;
  if (v4 <= 0x3F)
  {
    swift_cvw_initEnumMetadataSingleCaseWithLayoutString();
    v3 = sub_1C4EFDAB8();
    if (v5 <= 0x3F)
    {
      swift_getTupleTypeLayout2();
      v3 = 0;
      *(*(a1 - 8) + 84) = v7;
    }
  }

  return v3;
}

void sub_1C45ED0B4(uint64_t a1)
{
  if (!qword_1EC0B9B60)
  {
    sub_1C4EFDAB8();
    TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata2, &qword_1EC0B9B60);
    }
  }
}

uint64_t sub_1C45ED17C()
{
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider))
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
    type metadata accessor for BehaviorDatabaseHistogramKeyProvider(0);
    v1 = swift_allocObject();
    v3 = sub_1C45EA4BC(v2);
    sub_1C442FB60(v3);
  }

  return v1;
}

BOOL sub_1C45ED20C(uint64_t a1, uint64_t a2)
{
  sub_1C4EFDAB8();
  sub_1C441F4A8();
  sub_1C45F583C(v4, v5, MEMORY[0x1E69A9498]);
  sub_1C4F01578();
  sub_1C4F01578();
  if (v13 != v12)
  {
    return 0;
  }

  v6 = *(type metadata accessor for BehaviorPopularity(0) + 20);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v7 == *v9 && v8 == v9[1];
  if (!v10 && (sub_1C4F02938() & 1) == 0)
  {
    return 0;
  }

  sub_1C43FD1C0();
  if (!v10)
  {
    return 0;
  }

  sub_1C43FD1C0();
  if (!v10)
  {
    return 0;
  }

  sub_1C43FD1C0();
  return v10;
}

uint64_t sub_1C45ED314(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x726F697661686562 && a2 == 0xEC00000065707954;
  if (v4 || (sub_1C4F02938() & 1) != 0)
  {

    return 0;
  }

  else
  {
    v6 = a1 == 0xD000000000000012 && 0x80000001C4F855A0 == a2;
    if (v6 || (sub_1C4F02938() & 1) != 0)
    {

      return 1;
    }

    else
    {
      v7 = a1 == 0x746E756F63 && a2 == 0xE500000000000000;
      if (v7 || (sub_1C4F02938() & 1) != 0)
      {

        return 2;
      }

      else
      {
        v8 = a1 == 0x6974616C756D7563 && a2 == 0xEF746E756F436576;
        if (v8 || (sub_1C4F02938() & 1) != 0)
        {

          return 3;
        }

        else if (a1 == 0x7865646E49776F72 && a2 == 0xE800000000000000)
        {

          return 4;
        }

        else
        {
          v10 = sub_1C4F02938();

          if (v10)
          {
            return 4;
          }

          else
          {
            return 5;
          }
        }
      }
    }
  }
}

unint64_t sub_1C45ED4C4(char a1)
{
  result = 0x726F697661686562;
  switch(a1)
  {
    case 1:
      result = 0xD000000000000012;
      break;
    case 2:
      result = 0x746E756F63;
      break;
    case 3:
      result = 0x6974616C756D7563;
      break;
    case 4:
      result = 0x7865646E49776F72;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1C45ED574(void *a1)
{
  v3 = sub_1C456902C(&qword_1EC0B9BF8, &qword_1C4F113E8);
  sub_1C43FCDF8();
  v5 = v4;
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v12[-v7];
  sub_1C4409678(a1, a1[3]);
  sub_1C45F5C24();
  sub_1C4F02BF8();
  v12[15] = 0;
  sub_1C4EFDAB8();
  sub_1C441F4A8();
  sub_1C45F583C(v9, v10, MEMORY[0x1E69A9480]);
  sub_1C4402150();
  sub_1C4F027E8();
  if (!v1)
  {
    type metadata accessor for BehaviorPopularity(0);
    v12[14] = 1;
    sub_1C4402150();
    sub_1C4F02798();
    v12[13] = 2;
    sub_1C4402150();
    sub_1C4F027D8();
    v12[12] = 3;
    sub_1C4402150();
    sub_1C4F027D8();
    v12[11] = 4;
    sub_1C4402150();
    sub_1C4F027D8();
  }

  return (*(v5 + 8))(v8, v3);
}

void sub_1C45ED784(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, int a10, char a11, char a12, char a13, char a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, uint64_t a24)
{
  sub_1C43FE96C();
  v26 = v25;
  v47 = v27;
  v28 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v48 = v29;
  MEMORY[0x1EEE9AC00](v30);
  sub_1C43FBCC4();
  v49 = v32 - v31;
  sub_1C456902C(&qword_1EC0B9BE0, &qword_1C4F113E0);
  sub_1C43FCDF8();
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v33);
  v34 = type metadata accessor for BehaviorPopularity(0);
  sub_1C43FBCE0();
  MEMORY[0x1EEE9AC00](v35);
  sub_1C43FBCC4();
  v38 = v37 - v36;
  sub_1C4409678(v26, v26[3]);
  sub_1C45F5C24();
  sub_1C4F02BC8();
  if (v24)
  {
    sub_1C440962C(v26);
  }

  else
  {
    sub_1C441F4A8();
    sub_1C45F583C(v39, v40, MEMORY[0x1E69A94A0]);
    sub_1C441C7EC();
    sub_1C4F026C8();
    (*(v48 + 32))(v38, v49, v28);
    sub_1C441C7EC();
    v41 = sub_1C4F02678();
    v42 = (v38 + v34[5]);
    *v42 = v41;
    v42[1] = v43;
    *(v38 + v34[6]) = sub_1C4F026B8();
    sub_1C441C7EC();
    *(v38 + v34[7]) = sub_1C4F026B8();
    sub_1C441C7EC();
    v44 = sub_1C4F026B8();
    v45 = sub_1C440A64C();
    v46(v45);
    *(v38 + v34[8]) = v44;
    sub_1C45F5940(v38, v47, type metadata accessor for BehaviorPopularity);
    sub_1C440962C(v26);
    sub_1C45F58A0(v38, type metadata accessor for BehaviorPopularity);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45EDB54@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_1C45ED314(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_1C45EDB7C(uint64_t a1)
{
  v2 = sub_1C45F5C24();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1C45EDBB8(uint64_t a1)
{
  v2 = sub_1C45F5C24();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1C45EDC2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C45F583C(&qword_1EC0B9BD8, type metadata accessor for BehaviorPopularity, &unk_1C4F112FC);

  return MEMORY[0x1EEE09760](a1, a2, a3, v6);
}

uint64_t sub_1C45EDCD4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1C45F583C(&qword_1EC0B9BA8, type metadata accessor for BehaviorPopularity, &unk_1C4F11324);

  return sub_1C4EFB6D8();
}

uint64_t sub_1C45EDE58(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C45F583C(&qword_1EC0B9C08, type metadata accessor for BehaviorPopularity, &unk_1C4F112D4);

  return MEMORY[0x1EEE096E8](a1, a2, a3, v6);
}

uint64_t sub_1C45EDEF8()
{
  if (*(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker))
  {
    v1 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker);
  }

  else
  {
    v2 = *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool);
    type metadata accessor for BehaviorDatabaseEventTracker();
    v1 = swift_allocObject();
    v3 = sub_1C45DC594(0xD000000000000016, 0x80000001C4F8D170, v2, 0, 0, 0);
    sub_1C442FB60(v3);
  }

  return v1;
}

uint64_t sub_1C45EDFAC()
{
  sub_1C456902C(&qword_1EC0B9BC0, &qword_1C4F111D8);
  swift_allocObject();
  result = sub_1C4CE5194();
  qword_1EDE2CE60 = result;
  return result;
}

uint64_t sub_1C45EDFF8()
{
  sub_1C44F920C();
  result = static NSUserDefaults.sqlite3ReducedCacheSpillSize.getter();
  qword_1EDE2CE58 = result;
  return result;
}

void sub_1C45EE02C()
{
  sub_1C43FE96C();
  v33 = v1;
  v3 = v2;
  v4 = sub_1C4EFB148();
  sub_1C43FCDF8();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v31 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v31 - v11;
  sub_1C4EF98F8();
  sub_1C43FCDF8();
  v35 = v14;
  v36 = v13;
  MEMORY[0x1EEE9AC00](v13);
  sub_1C43FBCC4();
  v17 = v16 - v15;
  v18 = sub_1C4F00978();
  v19 = sub_1C43FBD18(v18);
  MEMORY[0x1EEE9AC00](v19);
  sub_1C43FBCC4();
  v31[1] = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___histogramKeyProvider) = 0;
  v31[2] = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker;
  *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase____lazy_storage___eventTracker) = 0;
  v20 = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter;
  sub_1C4F00188();
  v32 = v20;
  sub_1C4F008C8();
  v31[0] = OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_config;
  sub_1C45F5940(v3, v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_config, type metadata accessor for Configuration);
  sub_1C4411820();
  sub_1C4EF9888();
  v21 = *(type metadata accessor for Configuration(0) + 20);
  v34 = v3;
  v37 = *(v3 + v21);
  sub_1C45EE494(v17, &v37);
  sub_1C4EF98E8();
  v22 = v6;
  v23 = *(v6 + 16);
  v24 = v4;
  v23(v9, v12, v4);
  sub_1C4EFAFC8();
  swift_allocObject();
  v25 = v33;
  v26 = sub_1C4EFAF68();
  if (v25)
  {
    sub_1C45F58A0(v34, type metadata accessor for Configuration);
    (*(v22 + 8))(v12, v4);
    (*(v35 + 8))(v17, v36);
    sub_1C45F58A0(v0 + v31[0], type metadata accessor for Configuration);

    sub_1C4F008F8();
    sub_1C43FBCE0();
    (*(v27 + 8))(v0 + v32);
    swift_deallocPartialClassInstance();
  }

  else
  {
    v28 = v12;
    v29 = v34;
    *(v0 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_pool) = v26;
    sub_1C45EE6F0();
    sub_1C442C4E4();
    sub_1C45F58A0(v29, v30);
    (*(v22 + 8))(v28, v24);
    (*(v35 + 8))(v17, v36);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45EE494(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v6 = sub_1C4EFC018();
  sub_1C43FCDF8();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  v10 = sub_1C4F00D88();
  v11 = sub_1C43FBD18(v10);
  MEMORY[0x1EEE9AC00](v11);
  sub_1C43FBCC4();
  v13 = *a2;
  v12 = a2[1];
  sub_1C4EFB138();
  sub_1C4EF98E8();
  sub_1C4EFB108();
  sub_1C4F00D68();
  sub_1C4EFB0E8();
  *v3 = 0x404E000000000000;
  (*(v8 + 104))(v3, *MEMORY[0x1E69A00D8], v6);
  sub_1C4EFB118();
  result = sub_1C4EFB0D8();
  if (qword_1EDDFEC70 != -1)
  {
    result = swift_once();
  }

  if ((xmmword_1EDDFEC78 & ~v13) == 0 && (*(&xmmword_1EDDFEC78 + 1) & v12) == *(&xmmword_1EDDFEC78 + 1))
  {
    return sub_1C4EFB0C8();
  }

  if (qword_1EDDFEC60 != -1)
  {
    result = swift_once();
  }

  if ((xmmword_1EDDFFAE0 & ~v13) == 0 && (*(&xmmword_1EDDFFAE0 + 1) & v12) == *(&xmmword_1EDDFFAE0 + 1))
  {
    *(swift_allocObject() + 16) = v4;
    sub_1C4EFB0C8();
  }

  return result;
}

uint64_t sub_1C45EE6F0()
{
  v0 = sub_1C4EFB5A8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v20 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C4EFB5F8();
  v21 = *(v4 - 8);
  v22 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v27 = v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB5E8();
  v6 = *(v1 + 104);
  v7 = *MEMORY[0x1E699FE90];
  v6(v3);
  sub_1C4EFB5C8();
  v8 = *(v1 + 8);
  v8(v3, v0);
  v26 = v7;
  (v6)(v3, v7, v0);
  sub_1C4EFB5C8();
  v8(v3, v0);
  v20[0] = "to_behaviorPopularity";
  (v6)(v3, v7, v0);
  v24 = v6;

  sub_1C4EFB5C8();

  v8(v3, v0);
  v9 = v26;
  (v6)(v3, v26, v0);

  sub_1C4EFB5C8();

  v8(v3, v0);
  v23 = v8;
  v10 = v9;
  v11 = v24;
  (v24)(v3, v10, v0);
  v25 = v1 + 104;
  sub_1C4EFB5C8();
  v8(v3, v0);
  v12 = v26;
  v11(v3, v26, v0);
  v13 = v11;

  sub_1C4EFB5C8();

  v14 = v23;
  v23(v3, v0);
  v13(v3, v12, v0);

  sub_1C4EFB5C8();

  v14(v3, v0);
  v13(v3, v12, v0);
  sub_1C4EFB5C8();
  v14(v3, v0);
  v20[1] = v1 + 8;
  v13(v3, v12, v0);

  sub_1C4EFB5C8();

  v14(v3, v0);
  v15 = v26;
  v13(v3, v26, v0);

  sub_1C4EFB5C8();

  v14(v3, v0);
  v16 = v24;
  (v24)(v3, v15, v0);
  sub_1C4EFB5C8();
  v17 = v23;
  v23(v3, v0);
  (v16)(v3, v26, v0);
  v18 = v27;
  sub_1C4EFB5C8();
  v17(v3, v0);
  sub_1C4EFB5D8();
  return (*(v21 + 8))(v18, v22);
}

uint64_t sub_1C45EEE50()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v5 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C45EEF4C()
{
  v0 = sub_1C4EFB768();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = 0;
  v7 = 0xE000000000000000;
  sub_1C4F02248();

  v6 = 0xD000000000000015;
  v7 = 0x80000001C4F8D6D0;
  if (qword_1EDDE7300 != -1)
  {
    swift_once();
  }

  v8 = qword_1EDE2CE58;
  v4 = sub_1C4F02858();
  MEMORY[0x1C6940010](v4);

  sub_1C4EFB758();
  sub_1C4EFBFF8();
  (*(v1 + 8))(v3, v0);
}

unint64_t sub_1C45EF0F4()
{
  sub_1C4F02248();

  v0 = sub_1C4EFAF78();
  MEMORY[0x1C6940010](v0);

  MEMORY[0x1C6940010](62, 0xE100000000000000);
  return 0xD000000000000014;
}

uint64_t sub_1C45EF18C(uint64_t a1)
{
  v22 = a1;
  v1 = sub_1C4EFB078();
  v16 = *(v1 - 8);
  v17 = v1;
  MEMORY[0x1EEE9AC00](v1);
  v15 = &v14 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BehaviorPopularity(0);
  v14 = sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  v18 = sub_1C4EFADC8();
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v20[0] = v7;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v8 = v19;
  sub_1C4EFBFC8();
  (*(v4 + 8))(v6, v3);
  if (v8)
  {
  }

  sub_1C4EFADC8();
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v10 = v16;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFB068();
  sub_1C4EFB058();
  *&v20[0] = v11;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  v12 = v15;
  v13 = v17;
  sub_1C4F020C8();
  v21 = 0;
  memset(v20, 0, sizeof(v20));
  sub_1C4EFBFB8();

  sub_1C4420C3C(v20, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v10 + 8))(v12, v13);
}

uint64_t sub_1C45EF63C()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C4EFBF38();
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB488();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  v7 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45EFA04()
{
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  sub_1C4EFADC8();
  sub_1C4EFBF78();
  if (v0)
  {
  }

  v11 = sub_1C4EFADC8();
  v8[1] = v6;
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v9[0] = v7;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v10 = 0;
  memset(v9, 0, sizeof(v9));
  sub_1C4EFBFB8();

  sub_1C4420C3C(v9, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v2 + 8))(v4, v1);
}

uint64_t sub_1C45EFCF0()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v10[-1] - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v10[-1] - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB458();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  v10[3] = MEMORY[0x1E69E6530];
  v10[4] = MEMORY[0x1E69A0180];
  v10[0] = 0;
  sub_1C4EFB548();

  return sub_1C440962C(v10);
}

uint64_t sub_1C45EFEA4(uint64_t a1, uint64_t a2)
{
  v42 = a2;
  v3 = sub_1C4EFB0B8();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v30 = &v29 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v29 - v7;
  v9 = sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v10 = *(v4 + 72);
  v43 = v4;
  v11 = *(v4 + 80);
  v40 = v10;
  v41 = v9;
  v12 = swift_allocObject();
  v39 = xmmword_1C4F0D130;
  *(v12 + 16) = xmmword_1C4F0D130;
  v31 = (v11 + 32) & ~v11;
  sub_1C4EFB058();
  v44 = v12;
  v13 = sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  v14 = sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  v15 = sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  v38 = v14;
  sub_1C4F020C8();
  v16 = v37;
  sub_1C4EFBFC8();
  if (v16)
  {
    return (*(v43 + 8))(v8, v3);
  }

  v33 = v15;
  v34 = v13;
  v35 = v11;
  v36 = a1;
  v18 = *(v43 + 8);
  v43 += 8;
  v37 = v18;
  v18(v8, v3);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v19 = sub_1C4EFDAB8();
  v20 = *(v19 - 8);
  v21 = *(v20 + 72);
  v22 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v23 = 6;
  v24 = swift_allocObject();
  *(v24 + 16) = xmmword_1C4F0F820;
  v29 = v24;
  v25 = v24 + v22;
  v26 = *(v20 + 104);
  v26(v24 + v22, *MEMORY[0x1E69A9468], v19);
  v26(v25 + v21, *MEMORY[0x1E69A9460], v19);
  v26(v25 + 2 * v21, *MEMORY[0x1E69A93D0], v19);
  v26(v25 + 3 * v21, *MEMORY[0x1E69A9410], v19);
  v26(v25 + 4 * v21, *MEMORY[0x1E69A9438], v19);
  v32 = v21;
  v26(v25 + 5 * v21, *MEMORY[0x1E69A9448], v19);
  v27 = v30;
  while (v23)
  {
    sub_1C45ED17C();
    sub_1C45EB148();

    v28 = swift_allocObject();
    *(v28 + 16) = v39;
    sub_1C4EFB058();
    v44 = v28;
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    v37(v27, v3);
    v25 += v32;
    --v23;
  }

  swift_setDeallocating();
  return sub_1C49E1558();
}

uint64_t sub_1C45F03E4()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDB8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45F06C8(uint64_t a1, uint64_t a2)
{
  v24 = a1;
  v25 = a2;
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v19 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = 6;
  v11 = swift_allocObject();
  *(v11 + 16) = xmmword_1C4F0F820;
  v19 = v11;
  v12 = v11 + v9;
  v13 = *(v7 + 104);
  v13(v12, *MEMORY[0x1E69A93E0], v6);
  v13(v12 + v8, *MEMORY[0x1E69A9428], v6);
  v13(v12 + 2 * v8, *MEMORY[0x1E69A93D8], v6);
  v13(v12 + 3 * v8, *MEMORY[0x1E69A9470], v6);
  v13(v12 + 4 * v8, *MEMORY[0x1E69A9400], v6);
  v20 = v8;
  v14 = 5 * v8;
  v15 = v12;
  v13(v12 + v14, *MEMORY[0x1E69A93F0], v6);
  v16 = v27;
  v22 = (v3 + 8);
  v23 = v3;
  v21 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C45ED17C();
    sub_1C45EB148();
    if (v16)
    {
      break;
    }

    v26 = v15;
    v27 = v10;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v17 = swift_allocObject();
    *(v17 + 16) = v21;
    sub_1C4EFB058();
    v28 = v17;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*v22)(v5, v2);
    v15 = v26 + v20;
    v10 = v27 - 1;
    if (v27 == 1)
    {
      swift_setDeallocating();
      return sub_1C49E1558();
    }
  }
}

void sub_1C45F0B04(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  a19 = v21;
  a20 = v22;
  v23 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C43FBD18(v23);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v24);
  sub_1C440DED0();
  v25 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C43FBD18(v25);
  sub_1C43FBC68();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &a9 - v27;
  sub_1C4EFBDD8();
  v29 = sub_1C4EFBE38();
  sub_1C440BAA8(v28, 0, 1, v29);
  sub_1C4EFB498();
  sub_1C4420C3C(v28, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v30 = sub_1C4EFBF38();
  sub_1C440BAA8(v20, 1, 1, v30);
  sub_1C4EFB538();

  v31 = sub_1C440BB4C();
  sub_1C4420C3C(v31, v32, &unk_1C4F111A0);
  sub_1C440BAA8(v20, 1, 1, v30);
  sub_1C4EFB518();

  v33 = sub_1C440BB4C();
  sub_1C4420C3C(v33, v34, &unk_1C4F111A0);
  sub_1C43FBC80();
}

uint64_t sub_1C45F0CA4(uint64_t a1)
{
  v2 = sub_1C4EFB078();
  v17 = *(v2 - 8);
  v18 = v2;
  MEMORY[0x1EEE9AC00](v2);
  v15 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v16 = &v15 - v5;
  v6 = sub_1C4EFB0B8();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v21 = MEMORY[0x1E69E7CC0];
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v19 = a1;
  v10 = v20;
  sub_1C4EFBFC8();
  if (v10)
  {
    return (*(v7 + 8))(v9, v6);
  }

  (*(v7 + 8))(v9, v6);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  v12 = v16;
  v13 = v18;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  v20 = *(v17 + 8);
  v20(v12, v13);
  sub_1C4420C3C(&v21, &qword_1EC0C5040, &qword_1C4F0F950);
  v23 = 0;
  v21 = 0u;
  v22 = 0u;
  v24 = MEMORY[0x1E69E7CC0];
  v14 = v15;
  sub_1C4F020C8();
  sub_1C4EFBFB8();
  v20(v14, v13);
  return sub_1C4420C3C(&v21, &qword_1EC0C5040, &qword_1C4F0F950);
}

uint64_t sub_1C45F1158()
{
  v0 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  sub_1C4EFBE08();
  v6 = sub_1C4EFBE38();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  v7 = sub_1C4EFBF38();
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();
  sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v2, 1, 1, v7);
  sub_1C4EFB538();

  sub_1C4420C3C(v2, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDC8();
  sub_1C440BAA8(v5, 0, 1, v6);
  sub_1C4EFB498();

  return sub_1C4420C3C(v5, &qword_1EC0B9BB8, &unk_1C4F1DC60);
}

uint64_t sub_1C45F1478(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v22 = a2;
  v3 = sub_1C4EFB0B8();
  v23 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = *(v7 + 72);
  v9 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0CE60;
  v17 = v10;
  v11 = v10 + v9;
  v12 = *(v7 + 104);
  v12(v10 + v9, *MEMORY[0x1E69A93C8], v6);
  v13 = *MEMORY[0x1E69A9430];
  v18 = v8;
  v12(v11 + v8, v13, v6);
  v20 = (v23 + 8);
  v14 = 2;
  v19 = xmmword_1C4F0D130;
  while (1)
  {
    sub_1C45ED17C();
    sub_1C45EB148();
    if (v2)
    {
      break;
    }

    v24 = v11;
    v25 = v14;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v15 = swift_allocObject();
    *(v15 + 16) = v19;
    sub_1C4EFB058();
    v26 = v15;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*v20)(v5, v3);
    v11 = v24 + v18;
    v14 = v25 - 1;
    if (v25 == 1)
    {
      swift_setDeallocating();
      return sub_1C49E1558();
    }
  }
}

uint64_t sub_1C45F1830(uint64_t a1)
{
  v16 = a1;
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B8EA8, &qword_1C4F111D0);
  v6 = sub_1C4EFDAB8();
  v7 = *(v6 - 8);
  v8 = (*(v7 + 80) + 32) & ~*(v7 + 80);
  v9 = swift_allocObject();
  v15 = xmmword_1C4F0D130;
  *(v9 + 16) = xmmword_1C4F0D130;
  (*(v7 + 104))(v9 + v8, *MEMORY[0x1E69A9458], v6);
  sub_1C45ED17C();
  sub_1C45EB148();
  if (v1)
  {
  }

  else
  {
    v13 = v10;

    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    v14 = v3;
    v12 = swift_allocObject();
    *(v12 + 16) = v15;
    sub_1C4EFB058();
    v17 = v12;
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
    sub_1C4F020C8();
    sub_1C4EFBFC8();

    (*(v14 + 8))(v5, v2);
    swift_setDeallocating();
    return sub_1C49E1558();
  }
}

uint64_t sub_1C45F1B7C(uint64_t a1)
{
  v7[1] = a1;
  v1 = sub_1C4EFB078();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v5 = swift_allocObject();
  *(v5 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v8[0] = v5;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v9 = 0;
  memset(v8, 0, sizeof(v8));
  sub_1C4EFBFB8();
  sub_1C4420C3C(v8, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v2 + 8))(v4, v1);
}

void sub_1C45F1DD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  sub_1C43FE96C();
  v23 = v22;
  v24 = sub_1C4EFB0B8();
  sub_1C43FCDF8();
  v26 = v25;
  MEMORY[0x1EEE9AC00](v27);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v28 = sub_1C4EFDAB8();
  sub_1C43FCDF8();
  v30 = v29;
  MEMORY[0x1EEE9AC00](v31);
  sub_1C43FBCC4();
  v34 = v33 - v32;
  sub_1C45ED17C();
  (*(v30 + 104))(v34, *v23, v28);
  sub_1C45EB148();
  (*(v30 + 8))(v34, v28);

  if (!v20)
  {
    sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
    *(swift_allocObject() + 16) = xmmword_1C4F0D130;
    sub_1C4EFB058();
    sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
    sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
    sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
    sub_1C4F020C8();
    sub_1C4EFBFC8();
    (*(v26 + 8))(v21, v24);
  }

  sub_1C43FBC80();
}

uint64_t sub_1C45F2090()
{
  v0 = sub_1C4EFB078();
  v15 = *(v0 - 8);
  v16 = v0;
  MEMORY[0x1EEE9AC00](v0);
  v14 = &v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  v2 = sub_1C4EFB0B8();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v13 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v6 = swift_allocObject();
  *(v6 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  *&v17[0] = v6;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  v13 = "histogramKey_EntityInteraction";
  v7 = v19;
  sub_1C4EFBFC8();
  if (v7)
  {
    return (*(v3 + 8))(v5, v2);
  }

  (*(v3 + 8))(v5, v2);
  sub_1C456902C(&unk_1EC0BCA90, &unk_1C4F111C0);
  v9 = v15;
  v10 = swift_allocObject();
  *(v10 + 16) = xmmword_1C4F0CE60;
  sub_1C4EFB068();
  sub_1C4EFB058();
  *&v17[0] = v10;
  sub_1C45F583C(&qword_1EDDFCD40, MEMORY[0x1E699FDD0], MEMORY[0x1E699FDD8]);
  sub_1C456902C(&unk_1EC0BCAA0, &unk_1C4F22520);
  sub_1C4401CBC(&qword_1EDDFA5C0, &unk_1EC0BCAA0, &unk_1C4F22520, MEMORY[0x1E69E6328]);
  v11 = v14;
  v12 = v16;
  sub_1C4F020C8();
  v18 = 0;
  memset(v17, 0, sizeof(v17));
  sub_1C4EFBFB8();
  sub_1C4420C3C(v17, &qword_1EC0C5040, &qword_1C4F0F950);
  return (*(v9 + 8))(v11, v12);
}

uint64_t sub_1C45F24DC()
{
  v0 = sub_1C456902C(&qword_1EC0B9BB8, &unk_1C4F1DC60);
  MEMORY[0x1EEE9AC00](v0 - 8);
  v2 = &v9 - v1;
  v3 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v3 - 8);
  v5 = &v9 - v4;
  v6 = sub_1C4EFBF38();
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB488();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  v7 = sub_1C4EFBE38();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBE08();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDD8();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C4EFBDE8();
  sub_1C440BAA8(v2, 0, 1, v7);
  sub_1C4EFB498();
  sub_1C4420C3C(v2, &qword_1EC0B9BB8, &unk_1C4F1DC60);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB538();

  sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
  sub_1C440BAA8(v5, 1, 1, v6);
  sub_1C4EFB4A8();
  return sub_1C4420C3C(v5, &unk_1EC0BCAB0, &unk_1C4F111A0);
}

uint64_t sub_1C45F28AC()
{
  v0 = sub_1C4EFB0B8();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C456902C(&qword_1EC0B9BB0, &unk_1C4F20000);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1C4F0D130;
  sub_1C4EFB058();
  v6[3] = v4;
  sub_1C45F583C(&unk_1EDDFCD18, MEMORY[0x1E699FE00], MEMORY[0x1E699FE08]);
  sub_1C456902C(&unk_1EC0BCA80, &unk_1C4F111B0);
  sub_1C4401CBC(&qword_1EDDFA5B8, &unk_1EC0BCA80, &unk_1C4F111B0, MEMORY[0x1E69E6328]);
  sub_1C4F020C8();
  sub_1C4EFBFC8();
  return (*(v1 + 8))(v3, v0);
}

uint64_t sub_1C45F2ACC(void *a1, uint64_t a2, uint64_t a3)
{
  sub_1C4F008B8();
  sub_1C43FCDF8();
  v29 = v7;
  v30 = v6;
  MEMORY[0x1EEE9AC00](v6);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v26 = sub_1C4F008F8();
  v28 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  sub_1C43FBCC4();
  v10 = v9 - v8;
  v11 = swift_allocObject();
  *(v11 + 16) = 0;
  v25 = v10;
  (*(v28 + 16))(v10, v3 + OBJC_IVAR____TtC24IntelligencePlatformCore16BehaviorDatabase_signposter, v26);
  sub_1C4F008D8();
  sub_1C4F00898();
  v12 = swift_slowAlloc();
  *v12 = 0;
  v13 = sub_1C4F008D8();
  LOBYTE(v10) = sub_1C4F01E28();
  v14 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v13, v10, v14, "BehaviorDatabase.updateBehaviorCounts", "", v12, 2u);
  v23 = objc_autoreleasePoolPush();
  v35 = sub_1C45F5910;
  v36 = v11;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1C44405F8;
  v34 = &unk_1F43E2678;
  v15 = _Block_copy(&aBlock);

  v16 = swift_allocObject();
  v16[2] = v3;
  v16[3] = a2;
  v16[4] = a3;
  v16[5] = v11;
  v35 = sub_1C45F5918;
  v36 = v16;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1C4623884;
  v34 = &unk_1F43E26C8;
  v17 = _Block_copy(&aBlock);

  v18 = [a1 sinkWithCompletion:v15 shouldContinue:v17];
  _Block_release(v17);
  _Block_release(v15);

  objc_autoreleasePoolPop(v23);
  LOBYTE(v15) = sub_1C4F01E18();
  v19 = sub_1C4F008A8();
  _os_signpost_emit_with_name_impl(&dword_1C43F8000, v13, v15, v19, "BehaviorDatabase.updateBehaviorCounts", "", v12, 2u);

  MEMORY[0x1C6942830](v12, -1, -1);
  (*(v29 + 8))(v4, v30);
  (*(v28 + 8))(v25, v26);
  swift_beginAccess();
  v20 = *(v11 + 16);
  if (v20)
  {
    swift_willThrow();
    v21 = v20;
  }
}

void sub_1C45F2EE8(void *a1, uint64_t a2)
{
  v3 = [a1 error];
  if (v3)
  {
    v4 = v3;
    swift_beginAccess();
    v5 = *(a2 + 16);
    *(a2 + 16) = v4;
  }
}

uint64_t sub_1C45F2F4C(uint64_t a1, uint64_t a2, void (*a3)(char *), uint64_t a4, uint64_t a5)
{
  v9 = objc_autoreleasePoolPush();
  sub_1C45F2FC8(a1, a3, a4, (a5 + 16), &v11);
  objc_autoreleasePoolPop(v9);
  return v11;
}

void sub_1C45F2FC8(uint64_t a1@<X1>, void (*a2)(char *)@<X2>, uint64_t a3@<X3>, void **a4@<X4>, char *a5@<X8>)
{
  v38 = a3;
  v39 = a2;
  v9 = sub_1C4EF9CD8();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v33 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C45F3338();
  v13 = v5;
  if (v5)
  {
    if (qword_1EDDFA668 != -1)
    {
      swift_once();
    }

    v14 = sub_1C4F00978();
    sub_1C442B738(v14, qword_1EDE2DDE0);

    v15 = v5;
    v16 = sub_1C4F00968();
    v17 = sub_1C4F01CD8();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      v36 = a4;
      v19 = v18;
      v35 = swift_slowAlloc();
      v40[0] = v35;
      *v19 = 136315394;
      v20 = *(a1 + 32);
      v41 = *(a1 + 16);
      v42[0] = v20;
      *(v42 + 9) = *(a1 + 41);
      v34 = v17;
      v21 = sub_1C45D58F8();
      v23 = sub_1C441D828(v21, v22, v40);
      v37 = a5;
      v24 = v23;

      *(v19 + 4) = v24;
      *(v19 + 12) = 2080;
      v43 = v5;
      v25 = v5;
      sub_1C456902C(&qword_1EC0B9500, &qword_1C4F0E8B0);
      v26 = sub_1C4F01198();
      v28 = sub_1C441D828(v26, v27, v40);

      *(v19 + 14) = v28;
      a5 = v37;
      _os_log_impl(&dword_1C43F8000, v16, v34, "BehaviorDatabase: Unable to update/insert BehaviorPopularity row for behavior %s due to error: %s", v19, 0x16u);
      v29 = v35;
      swift_arrayDestroy();
      MEMORY[0x1C6942830](v29, -1, -1);
      v30 = v19;
      a4 = v36;
      MEMORY[0x1C6942830](v30, -1, -1);
    }

    else
    {
    }

    v13 = 0;
  }

  (*(v10 + 16))(v12, *(a1 + 64) + OBJC_IVAR____TtC24IntelligencePlatformCore15BehaviorContext_date, v9);
  v39(v12);
  (*(v10 + 8))(v12, v9);
  if (v13)
  {
    swift_beginAccess();
    v31 = *a4;
    *a4 = v13;

    v32 = 0;
  }

  else
  {
    v32 = 1;
  }

  *a5 = v32;
}

uint64_t sub_1C45F33B0(uint64_t a1, _OWORD *a2)
{
  v51 = a1;
  v50 = type metadata accessor for BehaviorPopularity(0);
  MEMORY[0x1EEE9AC00](v50);
  v44 = &v44 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v54 = sub_1C4EFB4E8();
  v53 = *(v54 - 8);
  MEMORY[0x1EEE9AC00](v54);
  v48 = &v44 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C456902C(&unk_1EC0BCAB0, &unk_1C4F111A0);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v49 = &v44 - v6;
  v47 = sub_1C4EFDAB8();
  v46 = *(v47 - 8);
  MEMORY[0x1EEE9AC00](v47);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v52 = *(v45 - 8);
  MEMORY[0x1EEE9AC00](v45);
  v10 = &v44 - v9;
  v11 = sub_1C4EFBD38();
  v12 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v14 = &v44 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v44 - v16;
  sub_1C4EFBD48();
  sub_1C4EFBD48();
  v66 = v11;
  v67 = MEMORY[0x1E69A0050];
  v18 = sub_1C4422F90(v65);
  v70 = v12;
  v19 = *(v12 + 16);
  v57 = v17;
  v19(v18, v17, v11);
  v20 = a2[2];
  v68 = a2[1];
  *v69 = v20;
  *&v69[9] = *(a2 + 41);
  v21 = sub_1C45D2400();
  v60 = MEMORY[0x1E69E6158];
  v61 = MEMORY[0x1E69A0130];
  v59[0] = v21;
  v59[1] = v22;
  v23 = sub_1C4EFB298();
  v24 = MEMORY[0x1E699FE60];
  v63 = v23;
  v64 = MEMORY[0x1E699FE60];
  sub_1C4422F90(v62);
  sub_1C4EFBB28();
  sub_1C4420C3C(v59, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v65);
  v66 = v11;
  v67 = MEMORY[0x1E69A0050];
  v25 = sub_1C4422F90(v65);
  v56 = v14;
  v26 = v14;
  v27 = v48;
  v19(v25, v26, v11);
  v28 = v10;
  v29 = v45;
  sub_1C45D5A24(v8);
  v30 = sub_1C4EFDAA8();
  (*(v46 + 8))(v8, v47);
  v31 = MEMORY[0x1E69A0178];
  v58[4] = MEMORY[0x1E69A0178];
  v58[3] = MEMORY[0x1E69E6530];
  v58[0] = v30;
  v60 = v23;
  v61 = v24;
  sub_1C4422F90(v59);
  sub_1C4EFBB28();
  sub_1C4420C3C(v58, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v65);
  v66 = v23;
  v67 = v24;
  v32 = v50;
  sub_1C4422F90(v65);
  sub_1C4EFBB08();
  sub_1C440962C(v59);
  sub_1C440962C(v62);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  sub_1C4EFAE28();
  sub_1C440962C(v65);
  v33 = sub_1C4EFBF38();
  v34 = v49;
  sub_1C440BAA8(v49, 1, 1, v33);
  v66 = v11;
  v67 = MEMORY[0x1E69A0030];
  sub_1C4422F90(v65);
  sub_1C4EFBD48();
  v64 = v31;
  v63 = MEMORY[0x1E69E6530];
  v62[0] = 1;
  sub_1C4EFBB88();
  sub_1C440962C(v62);
  sub_1C440962C(v65);
  v35 = v55;
  v36 = sub_1C4EFB8B8();
  if (v35)
  {
    (*(v53 + 8))(v27, v54);
    sub_1C4420C3C(v34, &unk_1EC0BCAB0, &unk_1C4F111A0);
    (*(v52 + 8))(v28, v29);
  }

  else
  {
    v37 = v36;
    (*(v53 + 8))(v27, v54);
    sub_1C4420C3C(v34, &unk_1EC0BCAB0, &unk_1C4F111A0);
    (*(v52 + 8))(v28, v29);
    if (!v37)
    {
      v38 = v44;
      sub_1C45D5A24(v44);
      v39 = sub_1C45D2400();
      v40 = (v38 + v32[5]);
      *v40 = v39;
      v40[1] = v41;
      *(v38 + v32[6]) = 1;
      *(v38 + v32[7]) = 0;
      *(v38 + v32[8]) = 0;
      sub_1C45F583C(&qword_1EC0B9BA8, type metadata accessor for BehaviorPopularity, &unk_1C4F11324);
      sub_1C4EFB6C8();
      sub_1C45F58A0(v38, type metadata accessor for BehaviorPopularity);
    }
  }

  v42 = *(v70 + 8);
  v42(v56, v11);
  return (v42)(v57, v11);
}

void sub_1C45F3BBC()
{
  sub_1C43FE96C();
  sub_1C4F008B8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v1);
  sub_1C43FBCC4();
  sub_1C441B2EC();
  sub_1C4F008F8();
  sub_1C43FCDF8();
  MEMORY[0x1EEE9AC00](v2);
  sub_1C43FBCC4();
  sub_1C440DED0();
  v3 = sub_1C440F2DC();
  v4(v3);
  sub_1C4F008D8();
  sub_1C4F00898();
  v5 = swift_slowAlloc();
  *v5 = 0;
  v6 = sub_1C4F008D8();
  v7 = sub_1C4F01E28();
  v8 = sub_1C4F008A8();
  sub_1C4412CB4(&dword_1C43F8000, v9, v7, v8, "BehaviorDatabase.recomputeCumulativeCounts", "");
  sub_1C4EFAFC8();
  sub_1C4EFB2C8();
  if (v0)
  {
  }

  else
  {
    v10 = sub_1C4F01E18();
    v11 = sub_1C4F008A8();
    sub_1C4412CB4(&dword_1C43F8000, v12, v10, v11, "BehaviorDatabase.recomputeCumulativeCounts", "");

    MEMORY[0x1C6942830](v5, -1, -1);
  }

  v13 = sub_1C43FEBB4();
  v14(v13);
  v15 = sub_1C440BB4C();
  v16(v15);
  sub_1C43FBC80();
}

uint64_t sub_1C45F3DFC()
{
  v1 = sub_1C4EFB768();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v10 - v6;
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  if (v0)
  {
    return (*(v2 + 8))(v7, v1);
  }

  v9 = *(v2 + 8);
  v9(v7, v1);
  sub_1C4EFB758();
  sub_1C4EFBFF8();
  return (v9)(v4, v1);
}

uint64_t sub_1C45F3F88()
{
  sub_1C456902C(&qword_1EC0B8EB8, &unk_1C4F0E920);
  result = sub_1C4EFAF88();
  if (!v0)
  {
    return v2;
  }

  return result;
}

uint64_t sub_1C45F4004@<X0>(uint64_t *a2@<X8>)
{
  v35 = a2;
  v3 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v34 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v28 - v4;
  v6 = sub_1C456902C(&qword_1EC0B9B90, &qword_1C4F11198);
  v32 = *(v6 - 8);
  v33 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v28 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v28 - v10;
  type metadata accessor for BehaviorPopularity(0);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  result = sub_1C4EFADD8();
  if (!v2)
  {
    v29 = v8;
    v31 = result;
    sub_1C456902C(&unk_1EC0BC730, &unk_1C4F10E10);
    v13 = swift_allocObject();
    v30 = xmmword_1C4F0D130;
    *(v13 + 16) = xmmword_1C4F0D130;
    v14 = sub_1C4EFBD38();
    v15 = MEMORY[0x1E69A0048];
    *(v13 + 56) = v14;
    *(v13 + 64) = v15;
    sub_1C4422F90((v13 + 32));
    sub_1C4EFBD48();
    sub_1C4EFAE08();

    sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
    v16 = swift_allocObject();
    *(v16 + 16) = v30;
    v17 = MEMORY[0x1E69A0038];
    *(v16 + 56) = v14;
    *(v16 + 64) = v17;
    sub_1C4422F90((v16 + 32));
    sub_1C4EFBD48();
    sub_1C4EFB878();

    (*(v34 + 8))(v5, v3);
    v18 = v32;
    v19 = v33;
    v20 = v11;
    if (v31 >= 10001)
    {
      if (qword_1EDDFA668 != -1)
      {
        swift_once();
      }

      v21 = sub_1C4F00978();
      sub_1C442B738(v21, qword_1EDE2DDE0);
      v22 = sub_1C4F00968();
      v23 = sub_1C4F01CE8();
      v24 = os_log_type_enabled(v22, v23);
      v25 = v29;
      if (v24)
      {
        v26 = swift_slowAlloc();
        *v26 = 134218240;
        *(v26 + 4) = 10000;
        *(v26 + 12) = 2048;
        *(v26 + 14) = 10000;
        _os_log_impl(&dword_1C43F8000, v22, v23, "BehaviorDatabase: Has more than %ld unique behaviors in it. Reducing to the first %ld rows", v26, 0x16u);
        MEMORY[0x1C6942830](v26, -1, -1);
      }

      sub_1C4401CBC(&qword_1EC0B9BA0, &qword_1EC0B9B90, &qword_1C4F11198, MEMORY[0x1E699FF80]);
      v20 = v11;
      sub_1C4EFB608();
      (*(v18 + 8))(v11, v19);
      (*(v18 + 32))(v11, v25, v19);
    }

    sub_1C4401CBC(&qword_1EC0B9B98, &qword_1EC0B9B90, &qword_1C4F11198, MEMORY[0x1E699FF60]);
    v27 = sub_1C4EFB008();
    result = (*(v18 + 8))(v20, v19);
    *v35 = v27;
  }

  return result;
}

void sub_1C45F4558(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v3 = a2 + 56;
  v4 = 1 << *(a2 + 32);
  v5 = -1;
  if (v4 < 64)
  {
    v5 = ~(-1 << v4);
  }

  v6 = v5 & *(a2 + 56);
  v7 = (v4 + 63) >> 6;
  _s24IntelligencePlatformCore12PhaseBuilderO10buildBlockySayAA0D4Base_pGAFFZ_0();
  v8 = 0;
  v26 = MEMORY[0x1E69E7CC0];
  v23 = v3;
  if (v6)
  {
LABEL_8:
    while (1)
    {
      v10 = *(a2 + 48) + 48 * (__clz(__rbit64(v6)) | (v8 << 6));
      v11 = *v10;
      v12 = *(v10 + 8);
      v13 = *(v10 + 16);
      v14 = *(v10 + 24);
      v15 = *(v10 + 32);
      v16 = *(v10 + 40);
      *&v29 = v11;
      *(&v29 + 1) = v12;
      v30 = v13;
      v31 = v14;
      v32 = v15;
      v33 = v16;
      sub_1C45D7F78(v11, v12, v13, v14, v15, v16);
      v17 = v34;
      sub_1C45F476C(&v29, a1, &v27);
      v34 = v17;
      if (v17)
      {
        break;
      }

      sub_1C45A23B4(v11, v12, v13, v14, v15, v16);
      if ((v28 & 1) == 0)
      {
        v18 = v27;
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          sub_1C445C3F8();
          v26 = v20;
        }

        v19 = *(v26 + 16);
        if (v19 >= *(v26 + 24) >> 1)
        {
          sub_1C445C3F8();
          v26 = v21;
        }

        *(v26 + 16) = v19 + 1;
        *(v26 + 8 * v19 + 32) = v18;
      }

      v3 = v23;
      v6 &= v6 - 1;
      if (!v6)
      {
        goto LABEL_4;
      }
    }

    sub_1C45A23B4(v11, v12, v13, v14, v15, v16);
  }

  else
  {
LABEL_4:
    while (1)
    {
      v9 = v8 + 1;
      if (__OFADD__(v8, 1))
      {
        break;
      }

      if (v9 >= v7)
      {

        *a3 = sub_1C459760C(v26);
        return;
      }

      v6 = *(v3 + 8 * v9);
      ++v8;
      if (v6)
      {
        v8 = v9;
        goto LABEL_8;
      }
    }

    __break(1u);
  }
}

uint64_t sub_1C45F476C@<X0>(__int128 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v29 = a2;
  v28 = a3;
  v4 = sub_1C4EFDAB8();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v24 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = sub_1C456902C(&qword_1EC0B9B68, &qword_1C4F11190);
  v25 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v9 = &v24 - v8;
  v26 = sub_1C456902C(&qword_1EC0B9B90, &qword_1C4F11198);
  v27 = *(v26 - 8);
  MEMORY[0x1EEE9AC00](v26);
  v11 = &v24 - v10;
  v12 = a1[1];
  v38 = *a1;
  v39[0] = v12;
  *(v39 + 9) = *(a1 + 25);
  type metadata accessor for BehaviorPopularity(0);
  v13 = sub_1C4EFBD38();
  v36 = v13;
  v37 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v35);
  sub_1C4EFBD48();
  sub_1C45D5A24(v7);
  v14 = sub_1C4EFDAA8();
  (*(v5 + 8))(v7, v4);
  v32 = MEMORY[0x1E69E6530];
  v33 = MEMORY[0x1E69A0178];
  v31[0] = v14;
  v15 = sub_1C4EFB298();
  v16 = MEMORY[0x1E699FE60];
  v34[3] = v15;
  v34[4] = MEMORY[0x1E699FE60];
  sub_1C4422F90(v34);
  sub_1C4EFBB28();
  sub_1C4420C3C(v31, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v35);
  v36 = v13;
  v37 = MEMORY[0x1E69A0050];
  sub_1C4422F90(v35);
  sub_1C4EFBD48();
  v17 = sub_1C45D2400();
  v30[3] = MEMORY[0x1E69E6158];
  v30[4] = MEMORY[0x1E69A0130];
  v30[0] = v17;
  v30[1] = v18;
  v32 = v15;
  v33 = v16;
  sub_1C4422F90(v31);
  sub_1C4EFBB28();
  sub_1C4420C3C(v30, &qword_1EC0C5040, &qword_1C4F0F950);
  sub_1C440962C(v35);
  v36 = v15;
  v37 = v16;
  sub_1C4422F90(v35);
  sub_1C4EFBB08();
  sub_1C440962C(v31);
  sub_1C440962C(v34);
  sub_1C45F583C(qword_1EDDE5DC0, type metadata accessor for BehaviorPopularity, &unk_1C4F113AC);
  sub_1C4EFAE28();
  sub_1C440962C(v35);
  sub_1C456902C(&unk_1EC0C2E00, &unk_1C4F2DBD0);
  v19 = swift_allocObject();
  *(v19 + 16) = xmmword_1C4F0D130;
  v20 = MEMORY[0x1E69A0038];
  *(v19 + 56) = v13;
  *(v19 + 64) = v20;
  sub_1C4422F90((v19 + 32));
  sub_1C4EFBD48();
  v21 = v24;
  sub_1C4EFB878();

  (*(v25 + 8))(v9, v21);
  sub_1C4401CBC(&qword_1EC0B9B98, &qword_1EC0B9B90, &qword_1C4F11198, MEMORY[0x1E699FF60]);
  v22 = v26;
  sub_1C4EFB018();
  return (*(v27 + 8))(v11, v22);
}