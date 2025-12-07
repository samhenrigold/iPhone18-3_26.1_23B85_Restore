void static DictationTranscriber.MultisegmentResult.== infix(_:_:)()
{
  OUTLINED_FUNCTION_129_0();
  v1 = v0[1];
  v62 = *v0;
  v63 = v1;
  v64 = v0[2];
  v51 = *(v0 + 104);
  v2 = *(v0 + 124);
  v56 = *(v0 + 108);
  v57 = v2;
  v58 = *(v0 + 140);
  v47 = *(v0 + 20);
  v48 = *(v0 + 21);
  v49 = *(v0 + 22);
  v3 = *(v0 + 23);
  v43 = *(v0 + 192);
  v39 = *(v0 + 216);
  v40 = *(v0 + 200);
  v38 = *(v0 + 232);
  v5 = v4[1];
  v65 = *v4;
  v66 = v5;
  v67 = v4[2];
  v50 = *(v4 + 104);
  v6 = *(v4 + 140);
  v7 = *(v4 + 108);
  v60 = *(v4 + 124);
  v61 = v6;
  v59 = v7;
  v44 = *(v4 + 20);
  v45 = *(v4 + 21);
  v46 = *(v4 + 22);
  v8 = *(v4 + 23);
  v42 = *(v4 + 192);
  v41 = *(v4 + 26);
  v34 = *(v4 + 25);
  v35 = *(v4 + 27);
  v36 = *(v4 + 28);
  v37 = *(v4 + 232);
  if ((sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_77();
  if ((sub_1AC7A06A8() & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_4_2();
  sub_1AC629144();
  if ((v9 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628640();
  if ((v10 & 1) == 0)
  {
    goto LABEL_21;
  }

  sub_1AC628938();
  if ((v11 & 1) == 0)
  {
    goto LABEL_21;
  }

  OUTLINED_FUNCTION_11_4();
  sub_1AC629144();
  if ((v12 & 1) == 0 || v51 != v50 || (sub_1AC7A0548() & 1) == 0)
  {
    goto LABEL_21;
  }

  if (v47)
  {
    if (v44)
    {
      v13 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v13, v14);
      v15 = OUTLINED_FUNCTION_16_2();
      sub_1AC63482C(v15, v16);
      v17 = OUTLINED_FUNCTION_15();
      sub_1AC63482C(v17, v18);
      sub_1AC6305D8();
      if (v19)
      {
        sub_1AC6306C8(v48, v45);
        v21 = v20;
        v22 = OUTLINED_FUNCTION_16_2();
        sub_1AC63486C(v22);

        v23 = OUTLINED_FUNCTION_15();
        sub_1AC63486C(v23);
        if ((v21 & 1) == 0 || v49 != v46)
        {
          goto LABEL_21;
        }

        goto LABEL_23;
      }

      v32 = OUTLINED_FUNCTION_16_2();
      sub_1AC63486C(v32);

      v31 = OUTLINED_FUNCTION_15();
LABEL_20:
      sub_1AC63486C(v31);
      goto LABEL_21;
    }

    v26 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v26, v27);
    sub_1AC63482C(0, v45);
    v28 = OUTLINED_FUNCTION_15();
    sub_1AC63482C(v28, v29);

LABEL_18:
    v30 = OUTLINED_FUNCTION_15();
    sub_1AC63486C(v30);
    v31 = OUTLINED_FUNCTION_16_2();
    goto LABEL_20;
  }

  sub_1AC63482C(0, v48);
  if (v44)
  {
    v24 = OUTLINED_FUNCTION_16_2();
    sub_1AC63482C(v24, v25);
    goto LABEL_18;
  }

  sub_1AC63482C(0, v45);
  sub_1AC63486C(0);
LABEL_23:
  if (v43)
  {
    if (!v42)
    {
      goto LABEL_21;
    }

LABEL_29:
    if (*(&v40 + 1))
    {
      v54[0] = v40;
      v54[1] = v39;
      v55 = v38;
      if (v41)
      {
        v52[0] = v34;
        v52[1] = v41;
        v52[2] = v35;
        v52[3] = v36;
        v53 = v37 & 1;
        static TranscriptionLatticeMitigatorResult.== infix(_:_:)(v54, v52);
        swift_bridgeObjectRetain_n();

        goto LABEL_21;
      }
    }

    else if (!v41)
    {

      goto LABEL_21;
    }

    goto LABEL_21;
  }

  v33 = v42;
  if (v3 != v8)
  {
    v33 = 1;
  }

  if ((v33 & 1) == 0)
  {
    goto LABEL_29;
  }

LABEL_21:
  OUTLINED_FUNCTION_130();
}

uint64_t DictationTranscriber.MultisegmentResult.hash(into:)(const void *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = *(v6 + 72);
  v9 = *(v6 + 96);
  v22 = *(v6 + 104);
  v10 = *(v6 + 160);
  v20 = *(v6 + 168);
  v21 = *(v6 + 176);
  v23 = *(v6 + 192);
  v24 = *(v6 + 208);
  v25 = *(v6 + 240);
  v18 = *(v6 + 184);
  v19 = *(v6 + 248);
  v26 = *(v6 + 256);
  sub_1AC7A0568();
  sub_1AC7A06E8();
  OUTLINED_FUNCTION_4_2();
  sub_1AC633F80(a1, v8, v11);
  sub_1AC633C28();
  sub_1AC6337D8();
  OUTLINED_FUNCTION_11_4();
  sub_1AC633F80(a1, v9, v12);
  MEMORY[0x1B26E9A40](v22);
  sub_1AC7A0568();
  if (v10)
  {
    OUTLINED_FUNCTION_83();
    v13 = OUTLINED_FUNCTION_118_1();
    sub_1AC63459C(v13, v14);
    sub_1AC634414(a1, v20);
    if ((v21 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v15 = v21;
    }

    else
    {
      v15 = 0;
    }

    MEMORY[0x1B26E9A70](v15);
  }

  else
  {
    OUTLINED_FUNCTION_80_1();
  }

  if (v23)
  {
    OUTLINED_FUNCTION_80_1();
    if (v24)
    {
LABEL_9:
      OUTLINED_FUNCTION_83();

      TranscriptionLatticeMitigatorResult.hash(into:)(a1);

      goto LABEL_15;
    }
  }

  else
  {
    OUTLINED_FUNCTION_83();
    if ((v18 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v16 = v18;
    }

    else
    {
      v16 = 0;
    }

    MEMORY[0x1B26E9A70](v16);
    if (v24)
    {
      goto LABEL_9;
    }
  }

  OUTLINED_FUNCTION_80_1();
LABEL_15:
  MEMORY[0x1B26E9A40](v25);
  if (v26)
  {
    return OUTLINED_FUNCTION_80_1();
  }

  OUTLINED_FUNCTION_83();
  return MEMORY[0x1B26E9A40](v19);
}

uint64_t DictationTranscriber.MultisegmentResult.hashValue.getter()
{
  OUTLINED_FUNCTION_85_1();
  DictationTranscriber.MultisegmentResult.hash(into:)(v6, v0, v1, v2, v3, v4);
  return sub_1AC7A0EC8();
}

double sub_1AC62F6D4@<D0>(_OWORD *a1@<X8>)
{
  DictationTranscriber.MultisegmentResult.range.getter(v4);
  v2 = v4[1];
  *a1 = v4[0];
  a1[1] = v2;
  result = *&v5;
  a1[2] = v5;
  return result;
}

uint64_t sub_1AC62F728(uint64_t a1)
{
  sub_1AC7A0E78();
  DictationTranscriber.MultisegmentResult.hash(into:)(v7, v1, v2, v3, v4, v5);
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC62F778()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC7432EC();
}

uint64_t sub_1AC62F81C()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC74338C();
}

uint64_t sub_1AC62F8AC()
{
  OUTLINED_FUNCTION_85();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;

  OUTLINED_FUNCTION_82();
  if (!v0)
  {
    v6 = v3;
  }

  return v7(v6);
}

uint64_t sub_1AC62F9AC()
{
  OUTLINED_FUNCTION_85();
  v0 = swift_task_alloc();
  v1 = OUTLINED_FUNCTION_35_1(v0);
  *v1 = v2;
  OUTLINED_FUNCTION_85_0(v1);

  return sub_1AC743518();
}

uint64_t sub_1AC62FA3C(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_2_1();
}

uint64_t sub_1AC62FA50()
{
  OUTLINED_FUNCTION_85();
  v1 = swift_task_alloc();
  *(v0 + 32) = v1;
  *v1 = v0;
  OUTLINED_FUNCTION_109_1(v1);

  return sub_1AC743644();
}

uint64_t sub_1AC62FB10()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 16) = v0;
  v2 = swift_task_alloc();
  v3 = OUTLINED_FUNCTION_35_1(v2);
  *v3 = v4;
  OUTLINED_FUNCTION_85_0(v3);

  return static DictationTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC62FB94()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  *(v1 + 32) = v0;

  return MEMORY[0x1EEE6DFA0](sub_1AC62FC8C, 0, 0);
}

uint64_t sub_1AC62FC8C()
{
  v1 = *(v0 + 32);
  v2 = *(v0 + 16) + OBJC_IVAR____TtC6Speech20DictationTranscriber_locale;
  v3 = swift_task_alloc();
  *(v3 + 16) = v2;
  v4 = sub_1AC6F47B8(sub_1AC637BAC, v3, v1);

  OUTLINED_FUNCTION_82();

  return v5(v4);
}

uint64_t DictationTranscriber.deinit()
{
  v1 = OBJC_IVAR____TtC6Speech20DictationTranscriber_locale;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_80();
  (*(v2 + 8))(v0 + v1);

  sub_1AC6332D8();

  return v0;
}

uint64_t DictationTranscriber.__deallocating_deinit()
{
  DictationTranscriber.deinit();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1AC630070()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC637EE4;

  return DictationTranscriber.availableCompatibleAudioFormats.getter();
}

uint64_t sub_1AC6300FC(uint64_t a1)
{
  v3 = swift_task_alloc();
  *(v1 + 16) = v3;
  *v3 = v1;
  v3[1] = sub_1AC5C5380;

  return sub_1AC62FA3C(a1);
}

uint64_t sub_1AC630194()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return sub_1AC62FB10();
}

uint64_t sub_1AC6302C4()
{
  v1 = swift_task_alloc();
  *(v0 + 16) = v1;
  *v1 = v0;
  v1[1] = sub_1AC60D7F0;

  return static DictationTranscriber.supportedLocales.getter();
}

uint64_t sub_1AC630350(uint64_t a1, uint64_t a2)
{
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_1AC5C4D48;

  return static DictationTranscriber.supportedLocale(equivalentTo:)(a1, a2);
}

uint64_t sub_1AC630440(uint64_t result, uint64_t a2)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v3 = *(a2 + 16);
    result = sub_1AC5C9008(0, (v3 - result) & ~((v3 - result) >> 63), v3, a2);
    if (v4)
    {
      v5 = v3;
    }

    else
    {
      v5 = result;
    }

    if ((v5 & 0x8000000000000000) == 0)
    {
      sub_1AC747F2C(0, v5, a2);
      v7 = v6;

      return v7;
    }
  }

  __break(1u);
  return result;
}

void sub_1AC6304D8()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4F0, &qword_1AC7A9198);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v6 - v3;
  if (*(*v1 + 16))
  {
    sub_1AC706AD8(&v6 - v3);
    v5 = type metadata accessor for TranscriptionSegment(0);
    if (__swift_getEnumTagSinglePayload(v4, 1, v5) == 1)
    {
      sub_1AC5C720C(v4, &qword_1EB56C4F0, &qword_1AC7A9198);
      sub_1AC630B24(*(*v1 + 16) - 1);
    }

    else
    {
      sub_1AC637C7C();
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1AC6305D8()
{
  OUTLINED_FUNCTION_129_0();
  if (v3 != v4 && (OUTLINED_FUNCTION_29_2(), v5))
  {
    v6 = 0;
    OUTLINED_FUNCTION_117_0();
    v9 = v8 & v7;
    OUTLINED_FUNCTION_108_1();
    while (v9)
    {
      v10 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_12:
      v14 = *(*(v0 + 56) + 8 * (v10 | (v6 << 6)));

      OUTLINED_FUNCTION_57_0();
      v15 = sub_1AC6E0808();
      v17 = v16;

      if ((v17 & 1) == 0 || *(*(v1 + 56) + 8 * v15) != v14)
      {
        goto LABEL_14;
      }
    }

    v11 = v6;
    while (1)
    {
      v6 = v11 + 1;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      if (v6 >= v2)
      {
        goto LABEL_14;
      }

      ++v11;
      if (*(v0 + 64 + 8 * v6))
      {
        OUTLINED_FUNCTION_25_0();
        v9 = v13 & v12;
        goto LABEL_12;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_14:
    OUTLINED_FUNCTION_130();
  }
}

void sub_1AC6306C8(uint64_t a1, uint64_t a2)
{
  if (a1 != a2)
  {
    OUTLINED_FUNCTION_29_2();
    if (v26)
    {
      v4 = 0;
      OUTLINED_FUNCTION_117_0();
      v7 = v6 & v5;
      v9 = (v8 + 63) >> 6;
      while (v7)
      {
        OUTLINED_FUNCTION_101_1();
LABEL_12:
        v14 = v10 | (v4 << 6);
        v15 = *(*(v2 + 48) + 16 * v14 + 8);
        v16 = *(v2 + 56) + 16 * v14;
        v17 = *v16;
        v18 = *(v16 + 8);

        if (!v15)
        {
          return;
        }

        OUTLINED_FUNCTION_117();
        v19 = sub_1AC6E0808();
        v21 = v20;

        if ((v21 & 1) == 0 || (v22 = (*(v3 + 56) + 16 * v19), v23 = *v22, v24 = *(*v22 + 16), v24 != *(v17 + 16)))
        {
LABEL_26:

          return;
        }

        v25 = v22[1];
        if (v24)
        {
          v26 = v23 == v17;
        }

        else
        {
          v26 = 1;
        }

        if (!v26)
        {
          v27 = 32;
          while (v24)
          {
            if (*(v23 + v27) != *(v17 + v27))
            {
              goto LABEL_26;
            }

            v27 += 8;
            if (!--v24)
            {
              goto LABEL_23;
            }
          }

          goto LABEL_29;
        }

LABEL_23:

        v7 = v28;
        if (v25 != v18)
        {
          return;
        }
      }

      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          return;
        }

        ++v11;
        if (*(v2 + 64 + 8 * v4))
        {
          OUTLINED_FUNCTION_25_0();
          v28 = v13 & v12;
          goto LABEL_12;
        }
      }

      __break(1u);
LABEL_29:
      __break(1u);
    }
  }
}

void sub_1AC630858(uint64_t a1, uint64_t a2)
{
  if (a1 != a2 && *(a1 + 16) == *(a2 + 16))
  {
    v3 = 0;
    v4 = a1 + 64;
    OUTLINED_FUNCTION_117_0();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    while (v7)
    {
      OUTLINED_FUNCTION_101_1();
LABEL_11:
      v15 = (*(v10 + 56) + 16 * (v11 | (v3 << 6)));
      v17 = *v15;
      v16 = v15[1];

      OUTLINED_FUNCTION_77();
      v18 = sub_1AC6E0808();
      v20 = v19;

      if ((v20 & 1) == 0)
      {

        return;
      }

      v21 = (*(a2 + 56) + 16 * v18);
      if (*v21 == v17 && v21[1] == v16)
      {

        v7 = v24;
      }

      else
      {
        v23 = sub_1AC7A0D38();

        v7 = v24;
        if ((v23 & 1) == 0)
        {
          return;
        }
      }
    }

    v12 = v3;
    while (1)
    {
      v3 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v3 >= v9)
      {
        return;
      }

      ++v12;
      if (*(v4 + 8 * v3))
      {
        OUTLINED_FUNCTION_25_0();
        v24 = v14 & v13;
        goto LABEL_11;
      }
    }

    __break(1u);
  }
}

void sub_1AC6309C8()
{
  OUTLINED_FUNCTION_104();
  if (v2 != v3 && (OUTLINED_FUNCTION_29_2(), v20))
  {
    v4 = 0;
    OUTLINED_FUNCTION_117_0();
    v7 = v6 & v5;
    v9 = (v8 + 63) >> 6;
    if ((v6 & v5) != 0)
    {
      while (1)
      {
        OUTLINED_FUNCTION_57_2();
LABEL_11:
        v14 = *(*(v0 + 56) + 8 * (v10 | (v4 << 6)));

        OUTLINED_FUNCTION_88_0();
        v15 = sub_1AC6E0808();
        v17 = v16;

        if ((v17 & 1) == 0 || (v18 = *(*(v1 + 56) + 8 * v15), v19 = *(v18 + 16), v19 != *(v14 + 16)))
        {
LABEL_28:

          goto LABEL_29;
        }

        v20 = !v19 || v18 == v14;
        if (!v20)
        {
          break;
        }

LABEL_25:

        if (!v7)
        {
          goto LABEL_6;
        }
      }

      v21 = (v18 + 40);
      v22 = (v14 + 40);
      while (v19)
      {
        v23 = *(v21 - 1) == *(v22 - 1) && *v21 == *v22;
        if (!v23 && (sub_1AC7A0D38() & 1) == 0)
        {
          goto LABEL_28;
        }

        v21 += 2;
        v22 += 2;
        if (!--v19)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
    }

    else
    {
LABEL_6:
      v11 = v4;
      while (1)
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        if (v4 >= v9)
        {
          goto LABEL_29;
        }

        ++v11;
        if (*(v0 + 64 + 8 * v4))
        {
          OUTLINED_FUNCTION_25_0();
          v7 = v13 & v12;
          goto LABEL_11;
        }
      }
    }

    __break(1u);
  }

  else
  {
LABEL_29:
    OUTLINED_FUNCTION_105();
  }
}

void sub_1AC630B24(unint64_t a1)
{
  v4 = *v2;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC704568();
    v4 = v9;
  }

  v5 = *(v4 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = *(type metadata accessor for TranscriptionSegment(0) - 8);
    v7 = *(v6 + 72);
    v8 = v4 + ((*(v6 + 80) + 32) & ~*(v6 + 80)) + v7 * a1;
    sub_1AC637C7C();
    sub_1AC703EF8(v8 + v7, v5 - 1 - a1, v8);
    *(v4 + 16) = v5 - 1;
    *v2 = v4;
  }
}

void sub_1AC630C28()
{
  OUTLINED_FUNCTION_104();
  v2 = v1;
  v3 = *v0;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    sub_1AC7045B0();
    v3 = v12;
  }

  v4 = *(v3 + 16);
  if (v4 <= v2)
  {
    __break(1u);
  }

  else
  {
    v5 = OUTLINED_FUNCTION_77();
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(v5, v6);
    OUTLINED_FUNCTION_22(v7);
    v10 = *(v9 + 72);
    v11 = v3 + ((*(v8 + 80) + 32) & ~*(v8 + 80)) + v10 * v2;
    sub_1AC637E08();
    sub_1AC70400C(v11 + v10, v4 - 1 - v2, v11);
    *(v3 + 16) = v4 - 1;
    *v0 = v3;
    OUTLINED_FUNCTION_105();
  }
}

uint64_t sub_1AC630D20(uint64_t a1, unint64_t a2)
{
  v3 = sub_1AC630D6C(a1, a2);
  sub_1AC630E84(&unk_1F212ECB0);
  return v3;
}

uint64_t sub_1AC630D6C(uint64_t a1, unint64_t a2)
{
  v4 = HIBYTE(a2) & 0xF;
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_19;
  }

  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  for (; v5; v5 = sub_1AC7A00A8())
  {
    result = sub_1AC630F68(v5, 0);
    v7 = result;
    if ((a2 & 0x1000000000000000) != 0)
    {
      result = sub_1AC7A0998();
      if (v11)
      {
        goto LABEL_23;
      }

      v4 = result;
    }

    else
    {
      if ((a2 & 0x2000000000000000) != 0)
      {
        v13[0] = a1;
        v13[1] = a2 & 0xFFFFFFFFFFFFFFLL;
        if (v5 < v4)
        {
          goto LABEL_23;
        }

        v9 = (result + 32);
        v10 = v13;
      }

      else
      {
        if ((a1 & 0x1000000000000000) != 0)
        {
          v8 = (a2 & 0xFFFFFFFFFFFFFFFLL) + 32;
          v4 = a1 & 0xFFFFFFFFFFFFLL;
        }

        else
        {
          result = sub_1AC7A0A48();
          v8 = result;
          v4 = v12;
        }

        if (v5 < v4)
        {
LABEL_23:
          __break(1u);
          return result;
        }

        v9 = (v7 + 32);
        v10 = v8;
      }

      memcpy(v9, v10, v4);
    }

    if (v4 == v5)
    {
      return v7;
    }

    __break(1u);
LABEL_19:
    ;
  }

  return MEMORY[0x1E69E7CC0];
}

uint64_t sub_1AC630E84(uint64_t result)
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
  if (!result || v5 > *(v3 + 24) >> 1)
  {
    if (v4 <= v5)
    {
      v7 = v4 + v2;
    }

    else
    {
      v7 = v4;
    }

    result = sub_1AC630FD8(result, v7, 1, v3);
    v3 = result;
  }

  if (!*(v6 + 16))
  {

    if (!v2)
    {
      goto LABEL_14;
    }

    goto LABEL_16;
  }

  v8 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v8 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v8 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v9 = *(v3 + 16);
  v10 = __OFADD__(v9, v2);
  v11 = v9 + v2;
  if (!v10)
  {
    *(v3 + 16) = v11;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

void *sub_1AC630F68(uint64_t a1, uint64_t a2)
{
  if (a2 <= a1)
  {
    v2 = a1;
  }

  else
  {
    v2 = a2;
  }

  if (!v2)
  {
    return MEMORY[0x1E69E7CC0];
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C570, &qword_1AC7A9298);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return v4;
}

char *sub_1AC630FD8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C570, &qword_1AC7A9298);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[v8] <= v12)
    {
      memmove(v12, v13, v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v8);
  }

  return v10;
}

uint64_t sub_1AC6310CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6318A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6310EC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6319A0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC63137C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC631B7C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC63139C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC631C8C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6313BC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC631D9C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6313DC(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC631EAC(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631454(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC631FB4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6314B8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6320C4(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6314D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6321C8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6314F8(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6322D8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631518(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6323E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631538(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC6324F8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6315E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632600(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631600(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632700(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631620(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632804(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631660(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC63291C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC631680(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632A2C(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void *sub_1AC6317A0(void *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632D04(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC6317C0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC632ED0(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

uint64_t sub_1AC631838(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1AC633170(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

void sub_1AC631858()
{
  OUTLINED_FUNCTION_67_3();
  sub_1AC632FE0();
  *v0 = v1;
}

uint64_t sub_1AC6318A0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BEB0, &qword_1AC7A91A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC5D93E8((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6319A0(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD80, &unk_1AC7A81A0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD88, &qword_1AC7B1D40);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC631AB0()
{
  OUTLINED_FUNCTION_133();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_13_2(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_131_0();
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 8);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_127();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_8;
      }
    }

    memcpy(v14 + 4, (v0 + 32), 8 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

uint64_t sub_1AC631B7C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C508, &qword_1AC7A91B0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C510, &qword_1AC7A91B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631C8C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C518, &qword_1AC7A91C0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C520, &qword_1AC7A91C8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631D9C(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD20, &qword_1AC7A8150);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BD28, &qword_1AC7A8158);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC631EAC(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C440, &qword_1AC7A90A8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 160);
      if (v5)
      {
LABEL_13:
        sub_1AC703F10((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC631FB4(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C448, &qword_1AC7A90B8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C450, &qword_1AC7A90C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6320C4(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4C8, &qword_1AC7AFBE0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 32);
      if (v5)
      {
LABEL_13:
        sub_1AC703F78((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6321C8(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4D0, &unk_1AC7A9160);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C650, &unk_1AC7AB400);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6322D8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C010, &unk_1AC7A9210);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFA8, &qword_1AC7A83B8);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6323E8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BFB0, &unk_1AC7A9220);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC6324F8(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C478, &unk_1AC7A90F0);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 72);
      if (v5)
      {
LABEL_13:
        sub_1AC703FBC((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC632600(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C4B0, &qword_1AC7A9138);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC5D9408((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC632700(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD8, &qword_1AC7A8100);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 24);
      if (v5)
      {
LABEL_13:
        sub_1AC5D9428((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    memcpy((v10 + 32), (a4 + 32), 24 * v8);
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC632804(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF78, &unk_1AC7A9270);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 40);
      if (v5)
      {
LABEL_13:
        sub_1AC703FE4((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF80, &qword_1AC7A8390);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC63291C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C558, qword_1AC7A9238);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BCD0, &qword_1AC7AB4A0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void *sub_1AC632A2C(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF68, &unk_1AC7A9280);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 16);
      if (v5)
      {
LABEL_13:
        sub_1AC706D1C((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BF70, &unk_1AC7A8380);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC632B3C()
{
  OUTLINED_FUNCTION_133();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_13_2(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_131_0();
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * ((v15 - 32) / 16);
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_127();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_8;
      }
    }

    memcpy(v14 + 4, (v0 + 32), 16 * v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

void sub_1AC632C44()
{
  OUTLINED_FUNCTION_133();
  if ((v5 & 1) == 0 || (OUTLINED_FUNCTION_13_2(), v6 == v7))
  {
LABEL_6:
    OUTLINED_FUNCTION_131_0();
    if (v4)
    {
      OUTLINED_FUNCTION_156_0(v8, v9, v10, v11, v12, v13);
      v14 = swift_allocObject();
      v15 = _swift_stdlib_malloc_size(v14);
      v14[2] = v3;
      v14[3] = 2 * v15 - 64;
      if (v2)
      {
LABEL_8:
        v16 = OUTLINED_FUNCTION_127();
        v1(v16);
        *(v0 + 16) = 0;
LABEL_11:

        return;
      }
    }

    else
    {
      v14 = MEMORY[0x1E69E7CC0];
      if (v2)
      {
        goto LABEL_8;
      }
    }

    memcpy(v14 + 4, (v0 + 32), v3);
    goto LABEL_11;
  }

  OUTLINED_FUNCTION_51_0();
  if (!v6)
  {
    OUTLINED_FUNCTION_12_0();
    goto LABEL_6;
  }

  __break(1u);
}

void *sub_1AC632D04(void *result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if (a3)
  {
    v6 = *(a4 + 24);
    v7 = v6 >> 1;
    if ((v6 >> 1) < a2)
    {
      if (v7 + 0x4000000000000000 < 0)
      {
LABEL_25:
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

  v8 = *(a4 + 16);
  if (v7 <= v8)
  {
    v9 = *(a4 + 16);
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C548, &qword_1AC7A91F8);
  v10 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200) - 8);
  v11 = *(v10 + 72);
  v12 = (*(v10 + 80) + 32) & ~*(v10 + 80);
  v13 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v13);
  if (!v11)
  {
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if ((result - v12) == 0x8000000000000000 && v11 == -1)
  {
    goto LABEL_24;
  }

  v13[2] = v8;
  v13[3] = 2 * ((result - v12) / v11);
LABEL_19:
  v15 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C550, &unk_1AC7A9200) - 8);
  if (v5)
  {
    v16 = (*(v15 + 80) + 32) & ~*(v15 + 80);
    sub_1AC704108(a4 + v16, v8, v13 + v16);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v13;
}

uint64_t sub_1AC632ED0(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C540, &unk_1AC7A91E8);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B948, &unk_1AC7A73C0);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

void sub_1AC632FE0()
{
  OUTLINED_FUNCTION_104();
  v7 = v6;
  v9 = v8;
  v10 = v3;
  v11 = v0;
  if (v2)
  {
    OUTLINED_FUNCTION_13_2();
    if (v13 != v14)
    {
      OUTLINED_FUNCTION_51_0();
      if (v13)
      {
LABEL_24:
        __break(1u);
        return;
      }

      OUTLINED_FUNCTION_12_0();
    }
  }

  else
  {
    v12 = v1;
  }

  v15 = *(v10 + 16);
  if (v12 <= v15)
  {
    v16 = *(v10 + 16);
  }

  else
  {
    v16 = v12;
  }

  if (!v16)
  {
    v22 = MEMORY[0x1E69E7CC0];
    goto LABEL_18;
  }

  OUTLINED_FUNCTION_156_0(v0, v1, v2, v3, v4, v5);
  v17 = v9(0);
  OUTLINED_FUNCTION_22(v17);
  v19 = *(v18 + 72);
  v21 = (*(v20 + 80) + 32) & ~*(v20 + 80);
  v22 = swift_allocObject();
  v23 = _swift_stdlib_malloc_size(v22);
  if (!v19)
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  if (v23 - v21 == 0x8000000000000000 && v19 == -1)
  {
    goto LABEL_23;
  }

  v22[2] = v15;
  v22[3] = 2 * ((v23 - v21) / v19);
LABEL_18:
  v9(0);
  OUTLINED_FUNCTION_89_0();
  if (v11)
  {
    v7(v10 + v25, v15, v22 + v25);
    *(v10 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC633170(uint64_t result, int64_t a2, char a3, uint64_t a4)
{
  v5 = result;
  if ((a3 & 1) == 0)
  {
    v7 = a2;
    goto LABEL_8;
  }

  v6 = *(a4 + 24);
  v7 = v6 >> 1;
  if ((v6 >> 1) >= a2)
  {
    goto LABEL_8;
  }

  if (v7 + 0x4000000000000000 >= 0)
  {
    v7 = v6 & 0xFFFFFFFFFFFFFFFELL;
    if ((v6 & 0xFFFFFFFFFFFFFFFELL) <= a2)
    {
      v7 = a2;
    }

LABEL_8:
    v8 = *(a4 + 16);
    if (v7 <= v8)
    {
      v9 = *(a4 + 16);
    }

    else
    {
      v9 = v7;
    }

    if (v9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C490, &qword_1AC7A9118);
      v10 = swift_allocObject();
      v11 = _swift_stdlib_malloc_size(v10);
      *(v10 + 16) = v8;
      *(v10 + 24) = 2 * ((v11 - 32) / 8);
      if (v5)
      {
LABEL_13:
        sub_1AC706D20((a4 + 32), v8, (v10 + 32));
        *(a4 + 16) = 0;
LABEL_16:

        return v10;
      }
    }

    else
    {
      v10 = MEMORY[0x1E69E7CC0];
      if (result)
      {
        goto LABEL_13;
      }
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C498, &qword_1AC7A9120);
    swift_arrayInitWithCopy();
    goto LABEL_16;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC633280()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC6332D8()
{
  v1 = OUTLINED_FUNCTION_25();
  v2(v1);
  OUTLINED_FUNCTION_80();
  (*(v3 + 8))(v0);
  return v0;
}

uint64_t sub_1AC63332C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC633390(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

uint64_t sub_1AC633400(unint64_t *a1, void (*a2)(uint64_t))
{
  result = *a1;
  if (!result)
  {
    a2(255);
    OUTLINED_FUNCTION_93();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1AC633444()
{
  OUTLINED_FUNCTION_78_0();
  v2 = sub_1AC61C24C();
  MEMORY[0x1B26E9A40](v2);
  result = sub_1AC61C24C();
  if (result)
  {
    v4 = result;
    if (result < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v4; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1B26E95B0](i, v0);
        }

        else
        {
          v6 = *(v0 + 8 * i + 32);
        }

        (*(*v6 + 96))(v1);
      }
    }
  }

  return result;
}

void sub_1AC63350C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    for (i = 0; i != v0; ++i)
    {
      v3 = *(v1 + 32 + 24 * i + 16);

      sub_1AC7A0048();
      MEMORY[0x1B26E9A40](*(v3 + 16));
      v4 = *(v3 + 16);
      if (v4)
      {
        v5 = v3 + 40;
        do
        {

          sub_1AC7A0048();

          v5 += 16;
          --v4;
        }

        while (v4);
      }
    }
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6335D8()
{
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    v2 = v1 + 40;
    do
    {

      OUTLINED_FUNCTION_94_1();
      sub_1AC7A0048();

      v2 += 16;
      --v0;
    }

    while (v0);
  }
}

void sub_1AC63363C()
{
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    v2 = (v1 + 48);
    do
    {
      v3 = *v2;
      v2 += 3;

      OUTLINED_FUNCTION_94_1();
      sub_1AC7A0048();
      MEMORY[0x1B26E9A40](v3);

      --v0;
    }

    while (v0);
  }
}

void sub_1AC633738()
{
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    v2 = (v1 + 32);
    do
    {
      v3 = *v2++;
      v4 = v3;
      if (v3 == 0.0)
      {
        v4 = 0.0;
      }

      MEMORY[0x1B26E9A70](*&v4);
      --v0;
    }

    while (v0);
  }
}

void sub_1AC6337D8()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v3 = v2;
  v4 = sub_1AC79F5C8();
  OUTLINED_FUNCTION_40();
  v37 = v5;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_6();
  v9 = v8 - v7;
  v10 = type metadata accessor for TranscriptionSegment(0);
  OUTLINED_FUNCTION_40();
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_6();
  v14 = v13 - v12;
  v15 = *(v1 + 16);
  MEMORY[0x1B26E9A40](v15);
  v43 = v15;
  if (v15)
  {
    v16 = 0;
    v40 = *(v10 + 24);
    v41 = *(v10 + 20);
    OUTLINED_FUNCTION_89_0();
    v39 = v17;
    v38 = v9;
    v42 = v4;
    v45 = v14;
    do
    {
      v44 = v16;
      OUTLINED_FUNCTION_1_4();
      sub_1AC633280();
      OUTLINED_FUNCTION_37_2();
      sub_1AC633400(&qword_1EB56BD58, v18);
      sub_1AC79FE58();
      v19 = *(v14 + v41);
      MEMORY[0x1B26E9A40](*(v19 + 16));
      v20 = *(v19 + 16);
      if (v20)
      {
        OUTLINED_FUNCTION_89_0();
        v22 = v19 + v21;
        v24 = *(v23 + 72);
        v25 = *(v23 + 16);
        do
        {
          v25(v9, v22, v4);
          sub_1AC79FE58();
          (*(v37 + 8))(v9, v4);
          v22 += v24;
          --v20;
        }

        while (v20);
      }

      v26 = *(v45 + v40);
      MEMORY[0x1B26E9A40](*(v26 + 16));
      v27 = *(v26 + 16);
      if (v27)
      {
        v28 = (v26 + 32);
        do
        {
          memcpy(v47, v28, sizeof(v47));
          memcpy(v49, v28, sizeof(v49));
          sub_1AC637BCC(v47, v48);
          TranscriptionToken.hash(into:)(v3);
          memcpy(v48, v49, sizeof(v48));
          sub_1AC637C28(v48);
          v28 += 160;
          --v27;
        }

        while (v27);
      }

      v29 = *(v45 + v39);
      MEMORY[0x1B26E9A40](*(v29 + 16));
      v30 = *(v29 + 16);
      v9 = v38;
      if (v30)
      {
        v31 = 0;
        v32 = v29 + 32;
        do
        {
          v33 = *(v32 + 8 * v31);
          MEMORY[0x1B26E9A40](*(v33 + 16));
          v34 = *(v33 + 16);
          if (v34)
          {

            v35 = v34 - 1;
            for (i = 32; ; i += 160)
            {
              memcpy(v47, (v33 + i), sizeof(v47));
              memcpy(v49, (v33 + i), sizeof(v49));
              sub_1AC637BCC(v47, &v46);
              TranscriptionToken.hash(into:)(v3);
              memcpy(v48, v49, sizeof(v48));
              sub_1AC637C28(v48);
              if (!v35)
              {
                break;
              }

              --v35;
            }
          }

          ++v31;
        }

        while (v31 != v30);
      }

      v14 = v45;
      v16 = v44 + 1;
      OUTLINED_FUNCTION_0_3();
      sub_1AC6332D8();
      v4 = v42;
    }

    while (v44 + 1 != v43);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633B88(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_68_2();
  if (v3)
  {
    v5 = (a2 + 32);
    do
    {
      memcpy(v6, v5, sizeof(v6));
      memcpy(__dst, v5, sizeof(__dst));
      sub_1AC637BCC(v6, v7);
      TranscriptionToken.hash(into:)(v2);
      memcpy(v7, __dst, sizeof(v7));
      sub_1AC637C28(v7);
      v5 += 160;
      --v3;
    }

    while (v3);
  }
}

void sub_1AC633C28()
{
  OUTLINED_FUNCTION_104();
  v3 = v2;
  OUTLINED_FUNCTION_68_2();
  if (v1)
  {
    v4 = 0;
    v5 = v3 + 32;
    do
    {
      v6 = *(v5 + 8 * v4);
      MEMORY[0x1B26E9A40](*(v6 + 16));
      v7 = *(v6 + 16);
      if (v7)
      {

        v8 = v7 - 1;
        for (i = 32; ; i += 160)
        {
          memcpy(__dst, (v6 + i), sizeof(__dst));
          memcpy(v13, (v6 + i), sizeof(v13));
          sub_1AC637BCC(__dst, &v10);
          TranscriptionToken.hash(into:)(v0);
          memcpy(v12, v13, sizeof(v12));
          sub_1AC637C28(v12);
          if (!v8)
          {
            break;
          }

          --v8;
        }
      }

      ++v4;
    }

    while (v4 != v1);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633D0C()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1AC7A0048();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC633E98()
{
  OUTLINED_FUNCTION_78_0();
  v1 = sub_1AC61C24C();
  MEMORY[0x1B26E9A40](v1);
  v2 = sub_1AC61C24C();
  if (v2)
  {
    v3 = v2;
    if (v2 < 1)
    {
      __break(1u);
    }

    else
    {
      for (i = 0; i != v3; ++i)
      {
        if ((v0 & 0xC000000000000001) != 0)
        {
          v5 = MEMORY[0x1B26E95B0](i, v0);
        }

        else
        {
          v5 = *(v0 + 8 * i + 32);
        }

        v6 = v5;
        sub_1AC7A0768();
      }
    }
  }
}

void sub_1AC633F80(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  OUTLINED_FUNCTION_68_2();
  if (v3)
  {
    v6 = *(a3(0) - 8);
    v7 = a2 + ((*(v6 + 80) + 32) & ~*(v6 + 80));
    v8 = *(v6 + 72);
    v9 = OUTLINED_FUNCTION_16_2();
    sub_1AC633400(v9, v10);
    do
    {
      sub_1AC79FE58();
      v7 += v8;
      --v3;
    }

    while (v3);
  }
}

void sub_1AC63405C()
{
  OUTLINED_FUNCTION_104();
  v1 = v0;
  v2 = OUTLINED_FUNCTION_25();
  type metadata accessor for CommandRecognizer.Argument(v2);
  OUTLINED_FUNCTION_40();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_6();
  v8 = (v7 - v6);
  v9 = *(v1 + 16);
  MEMORY[0x1B26E9A40](v9);
  if (v9)
  {
    OUTLINED_FUNCTION_89_0();
    v11 = v1 + v10;
    v12 = *(v4 + 72);
    do
    {
      OUTLINED_FUNCTION_124_0();
      sub_1AC633280();
      MEMORY[0x1B26E9A40](*v8);
      sub_1AC7A0048();
      sub_1AC79FBA8();
      sub_1AC633400(&qword_1EB56C538, MEMORY[0x1E6969B50]);
      OUTLINED_FUNCTION_118_1();
      sub_1AC79FE58();
      OUTLINED_FUNCTION_118_1();
      sub_1AC79FE58();
      sub_1AC6332D8();
      v11 += v12;
      --v9;
    }

    while (v9);
  }

  OUTLINED_FUNCTION_105();
}

void sub_1AC6341DC()
{
  OUTLINED_FUNCTION_104();
  OUTLINED_FUNCTION_24_3();
  if (v0)
  {
    v2 = v1 + 32;
    do
    {
      ++v2;
      sub_1AC7A0048();

      --v0;
    }

    while (v0);
  }

  OUTLINED_FUNCTION_105();
}

uint64_t sub_1AC634294(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_117_0();
  v7 = v6 & v5;
  OUTLINED_FUNCTION_108_1();

  v9 = 0;
  v10 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v16 = v9;
LABEL_7:
    v12 = *(*(a2 + 56) + 8 * (__clz(__rbit64(v7)) | (v10 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    sub_1AC7A0048();

    MEMORY[0x1B26E9A40](*(v12 + 16));
    v13 = *(v12 + 16);
    if (v13)
    {
      v14 = v12 + 40;
      do
      {

        sub_1AC7A0048();

        v14 += 16;
        --v13;
      }

      while (v13);
    }

    v7 &= v7 - 1;

    result = sub_1AC7A0EC8();
    v9 = result ^ v16;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v2)
    {

      return MEMORY[0x1B26E9A40](v9);
    }

    v7 = *(v4 + 8 * v11);
    ++v10;
    if (v7)
    {
      v16 = v9;
      v10 = v11;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC634414(const void *a1, uint64_t a2)
{
  v3 = a2 + 64;
  OUTLINED_FUNCTION_117_0();
  v6 = v5 & v4;
  OUTLINED_FUNCTION_108_1();

  v8 = 0;
  v9 = 0;
  if (!v6)
  {
    goto LABEL_2;
  }

  do
  {
LABEL_6:
    v11 = (v9 << 10) | (16 * __clz(__rbit64(v6)));
    v12 = *(*(a2 + 48) + v11 + 8);
    v13 = (*(a2 + 56) + v11);
    v15 = *v13;
    v14 = v13[1];

    if (!v12)
    {
LABEL_17:

      return MEMORY[0x1B26E9A40](v8);
    }

    memcpy(__dst, a1, sizeof(__dst));
    sub_1AC7A0048();

    MEMORY[0x1B26E9A40](*(v15 + 16));
    v16 = *(v15 + 16);
    if (v16)
    {
      v17 = (v15 + 32);
      do
      {
        v18 = *v17++;
        v19 = v18;
        if (v18 == 0.0)
        {
          v19 = 0.0;
        }

        MEMORY[0x1B26E9A70](*&v19);
        --v16;
      }

      while (v16);
    }

    v6 &= v6 - 1;
    if ((v14 & 0x7FFFFFFFFFFFFFFFLL) != 0)
    {
      v20 = v14;
    }

    else
    {
      v20 = 0;
    }

    MEMORY[0x1B26E9A70](v20);

    result = sub_1AC7A0EC8();
    v8 ^= result;
  }

  while (v6);
LABEL_2:
  while (1)
  {
    v10 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v10 >= v2)
    {
      goto LABEL_17;
    }

    v6 = *(v3 + 8 * v10);
    ++v9;
    if (v6)
    {
      v9 = v10;
      goto LABEL_6;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC63459C(const void *a1, uint64_t a2)
{
  v4 = a2 + 64;
  OUTLINED_FUNCTION_117_0();
  v7 = v6 & v5;
  v9 = (v8 + 63) >> 6;

  v11 = 0;
  v12 = 0;
  if (!v7)
  {
    goto LABEL_3;
  }

  do
  {
    v13 = v12;
LABEL_7:
    v14 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
    v15 = *(*(a2 + 56) + 8 * (v14 | (v13 << 6)));
    memcpy(__dst, a1, sizeof(__dst));

    sub_1AC7A0048();

    if (v15 == 0.0)
    {
      v16 = 0.0;
    }

    else
    {
      v16 = v15;
    }

    MEMORY[0x1B26E9A70](*&v16);
    result = sub_1AC7A0EC8();
    v11 ^= result;
  }

  while (v7);
LABEL_3:
  while (1)
  {
    v13 = v12 + 1;
    if (__OFADD__(v12, 1))
    {
      break;
    }

    if (v13 >= v9)
    {

      return MEMORY[0x1B26E9A40](v11);
    }

    v7 = *(v4 + 8 * v13);
    ++v12;
    if (v7)
    {
      v12 = v13;
      goto LABEL_7;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6346E0(const void *a1, uint64_t a2)
{
  v2 = a2 + 64;
  OUTLINED_FUNCTION_117_0();
  v5 = v4 & v3;
  v7 = (v6 + 63) >> 6;

  v9 = 0;
  v10 = 0;
  if (v5)
  {
    goto LABEL_7;
  }

  while (1)
  {
    v11 = v10 + 1;
    if (__OFADD__(v10, 1))
    {
      break;
    }

    if (v11 >= v7)
    {

      return MEMORY[0x1B26E9A40](v9);
    }

    v5 = *(v2 + 8 * v11);
    ++v10;
    if (v5)
    {
      v10 = v11;
      do
      {
LABEL_7:
        v5 &= v5 - 1;
        memcpy(__dst, a1, sizeof(__dst));

        sub_1AC7A0048();

        sub_1AC7A0048();

        result = sub_1AC7A0EC8();
        v9 ^= result;
      }

      while (v5);
      continue;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC63482C(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_1AC63486C(uint64_t result)
{
  if (result)
  {
  }

  return result;
}

unint64_t sub_1AC6348F8()
{
  result = qword_1EB56C368;
  if (!qword_1EB56C368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C368);
  }

  return result;
}

unint64_t sub_1AC6349DC()
{
  result = qword_1EB56C388;
  if (!qword_1EB56C388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C388);
  }

  return result;
}

unint64_t sub_1AC634A78()
{
  result = qword_1EB56C3A0;
  if (!qword_1EB56C3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3A0);
  }

  return result;
}

unint64_t sub_1AC634B14()
{
  result = qword_1EB56C3B8;
  if (!qword_1EB56C3B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3B8);
  }

  return result;
}

unint64_t sub_1AC634B6C()
{
  result = qword_1EB56C3C0;
  if (!qword_1EB56C3C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3C0);
  }

  return result;
}

unint64_t sub_1AC634BC4()
{
  result = qword_1EB56C3C8;
  if (!qword_1EB56C3C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C3C8);
  }

  return result;
}

uint64_t sub_1AC634C40(uint64_t a1)
{
  *(a1 + 8) = sub_1AC633400(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  result = sub_1AC633400(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber);
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_1AC634CE4(uint64_t a1)
{
  result = sub_1AC633400(&qword_1EB56C3D8, type metadata accessor for DictationTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC634D3C(uint64_t a1)
{
  result = sub_1AC633400(&qword_1EB56C3D0, type metadata accessor for DictationTranscriber);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1AC634DE4(uint64_t a1)
{
  result = sub_1AC79FB18();
  if (v2 <= 0x3F)
  {
    result = type metadata accessor for DictationTranscriber.ModelOptions(319);
    if (v3 <= 0x3F)
    {
      result = swift_updateClassMetadata2();
      if (!result)
      {
        return 0;
      }
    }
  }

  return result;
}

uint64_t *initializeBufferWithCopyOfBuffer for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = *(*(a3 - 8) + 80);
  v4 = *a2;
  *a1 = *a2;
  if ((v3 & 0x20000) != 0)
  {
    v5 = (v4 + ((v3 + 16) & ~v3));
  }

  else
  {
    v5 = a1;
    v6 = a2[2];
    a1[1] = a2[1];
    a1[2] = v6;
    a1[3] = a2[3];
    v7 = *(a3 + 32);
    v8 = a1 + v7;
    v9 = a2 + v7;
    v10 = *(a2 + v7 + 8);
    *v8 = *(a2 + v7);
    *(v8 + 1) = v10;
    v11 = type metadata accessor for DictationTranscriber.ModelOptions(0);
    v12 = v11[5];
    v13 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&v9[v12], 1, v13))
    {
      v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v8[v12], &v9[v12], *(*(v14 - 8) + 64));
    }

    else
    {
      (*(*(v13 - 8) + 16))(&v8[v12], &v9[v12], v13);
      __swift_storeEnumTagSinglePayload(&v8[v12], 0, 1, v13);
    }

    v15 = v11[6];
    v16 = &v8[v15];
    v17 = &v9[v15];
    v18 = *(v17 + 1);
    *v16 = *v17;
    *(v16 + 1) = v18;
    *&v8[v11[7]] = *&v9[v11[7]];
    v8[v11[8]] = v9[v11[8]];
    *&v8[v11[9]] = *&v9[v11[9]];
    *&v8[v11[10]] = *&v9[v11[10]];
    v8[v11[11]] = v9[v11[11]];
    *&v8[v11[12]] = *&v9[v11[12]];
  }

  return v5;
}

uint64_t destroy for DictationTranscriber.Preset(uint64_t a1, uint64_t a2)
{

  v4 = a1 + *(a2 + 32);

  v5 = *(type metadata accessor for DictationTranscriber.ModelOptions(0) + 20);
  v6 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(v4 + v5, 1, v6))
  {
    (*(*(v6 - 8) + 8))(v4 + v5, v6);
  }
}

uint64_t *initializeWithCopy for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  v3 = a2[1];
  *a1 = *a2;
  a1[1] = v3;
  v4 = a2[3];
  a1[2] = a2[2];
  a1[3] = v4;
  v5 = *(a3 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  v8 = *(a2 + v5 + 8);
  *v6 = *(a2 + v5);
  *(v6 + 1) = v8;
  v9 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v10 = v9[5];
  v11 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(&v7[v10], 1, v11))
  {
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v6[v10], &v7[v10], *(*(v12 - 8) + 64));
  }

  else
  {
    (*(*(v11 - 8) + 16))(&v6[v10], &v7[v10], v11);
    __swift_storeEnumTagSinglePayload(&v6[v10], 0, 1, v11);
  }

  v13 = v9[6];
  v14 = &v6[v13];
  v15 = &v7[v13];
  v16 = *(v15 + 1);
  *v14 = *v15;
  *(v14 + 1) = v16;
  *&v6[v9[7]] = *&v7[v9[7]];
  v6[v9[8]] = v7[v9[8]];
  *&v6[v9[9]] = *&v7[v9[9]];
  *&v6[v9[10]] = *&v7[v9[10]];
  v6[v9[11]] = v7[v9[11]];
  *&v6[v9[12]] = *&v7[v9[12]];

  return a1;
}

uint64_t *assignWithCopy for DictationTranscriber.Preset(uint64_t *a1, uint64_t *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  *v7 = *(a2 + v6);
  *(v7 + 1) = *(a2 + v6 + 8);

  v9 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v10 = v9[5];
  v11 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v7[v10], 1, v11);
  v13 = __swift_getEnumTagSinglePayload(&v8[v10], 1, v11);
  if (!EnumTagSinglePayload)
  {
    v14 = *(v11 - 8);
    if (!v13)
    {
      (*(v14 + 24))(&v7[v10], &v8[v10], v11);
      goto LABEL_7;
    }

    (*(v14 + 8))(&v7[v10], v11);
    goto LABEL_6;
  }

  if (v13)
  {
LABEL_6:
    v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v7[v10], &v8[v10], *(*(v15 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v11 - 8) + 16))(&v7[v10], &v8[v10], v11);
  __swift_storeEnumTagSinglePayload(&v7[v10], 0, 1, v11);
LABEL_7:
  v16 = v9[6];
  v17 = &v7[v16];
  v18 = &v8[v16];
  *v17 = *v18;
  *(v17 + 1) = *(v18 + 1);

  *&v7[v9[7]] = *&v8[v9[7]];

  v7[v9[8]] = v8[v9[8]];
  *&v7[v9[9]] = *&v8[v9[9]];

  *&v7[v9[10]] = *&v8[v9[10]];

  v7[v9[11]] = v8[v9[11]];
  *&v7[v9[12]] = *&v8[v9[12]];

  return a1;
}

_OWORD *initializeWithTake for DictationTranscriber.Preset(_OWORD *a1, _OWORD *a2, uint64_t a3)
{
  v4 = a2[1];
  *a1 = *a2;
  a1[1] = v4;
  v5 = *(a3 + 32);
  v6 = a1 + v5;
  v7 = a2 + v5;
  *(a1 + v5) = *(a2 + v5);
  v8 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v9 = v8[5];
  v10 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(&v7[v9], 1, v10))
  {
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v6[v9], &v7[v9], *(*(v11 - 8) + 64));
  }

  else
  {
    (*(*(v10 - 8) + 32))(&v6[v9], &v7[v9], v10);
    __swift_storeEnumTagSinglePayload(&v6[v9], 0, 1, v10);
  }

  *&v6[v8[6]] = *&v7[v8[6]];
  *&v6[v8[7]] = *&v7[v8[7]];
  v6[v8[8]] = v7[v8[8]];
  *&v6[v8[9]] = *&v7[v8[9]];
  *&v6[v8[10]] = *&v7[v8[10]];
  v6[v8[11]] = v7[v8[11]];
  *&v6[v8[12]] = *&v7[v8[12]];
  return a1;
}

void *assignWithTake for DictationTranscriber.Preset(void *a1, void *a2, uint64_t a3)
{
  *a1 = *a2;

  a1[1] = a2[1];

  a1[2] = a2[2];

  a1[3] = a2[3];

  v6 = *(a3 + 32);
  v7 = a1 + v6;
  v8 = a2 + v6;
  v9 = *(a2 + v6 + 8);
  *v7 = *(a2 + v6);
  *(v7 + 1) = v9;

  v10 = type metadata accessor for DictationTranscriber.ModelOptions(0);
  v11 = v10[5];
  v12 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&v7[v11], 1, v12);
  v14 = __swift_getEnumTagSinglePayload(&v8[v11], 1, v12);
  if (!EnumTagSinglePayload)
  {
    v15 = *(v12 - 8);
    if (!v14)
    {
      (*(v15 + 40))(&v7[v11], &v8[v11], v12);
      goto LABEL_7;
    }

    (*(v15 + 8))(&v7[v11], v12);
    goto LABEL_6;
  }

  if (v14)
  {
LABEL_6:
    v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&v7[v11], &v8[v11], *(*(v16 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v12 - 8) + 32))(&v7[v11], &v8[v11], v12);
  __swift_storeEnumTagSinglePayload(&v7[v11], 0, 1, v12);
LABEL_7:
  v17 = v10[6];
  v18 = &v7[v17];
  v19 = &v8[v17];
  v21 = *v19;
  v20 = *(v19 + 1);
  *v18 = v21;
  *(v18 + 1) = v20;

  *&v7[v10[7]] = *&v8[v10[7]];

  v7[v10[8]] = v8[v10[8]];
  *&v7[v10[9]] = *&v8[v10[9]];

  *&v7[v10[10]] = *&v8[v10[10]];

  v7[v10[11]] = v8[v10[11]];
  *&v7[v10[12]] = *&v8[v10[12]];

  return a1;
}

uint64_t sub_1AC635A5C(uint64_t a1)
{
  result = type metadata accessor for DictationTranscriber.ModelOptions(319);
  if (v2 <= 0x3F)
  {
    swift_initStructMetadata();
    return 0;
  }

  return result;
}

void destroy for DictationTranscriber.ContentHint(void **a1)
{
  v1 = *a1;
  if (v1 >= 3)
  {
  }
}

void **assignWithCopy for DictationTranscriber.ContentHint(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;
      v7 = v4;

      return a1;
    }

    v4 = *a2;
    goto LABEL_6;
  }

  if (v4 < 3)
  {
LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;
  v5 = v4;
  return a1;
}

void **assignWithTake for DictationTranscriber.ContentHint(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 >= 3)
  {
    if (v4 >= 3)
    {
      *a1 = v4;

      return a1;
    }
  }

  *a1 = v4;
  return a1;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ContentHint(uint64_t *a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFD && *(a1 + 8))
    {
      v2 = *a1 + 2147483644;
    }

    else
    {
      v3 = *a1;
      if (*a1 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 3;
      if (v2 < 0)
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

uint64_t storeEnumTagSinglePayload for DictationTranscriber.ContentHint(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFC)
  {
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

char *initializeBufferWithCopyOfBuffer for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v4 = a1;
  v5 = *(*(a3 - 1) + 80);
  if ((v5 & 0x20000) != 0)
  {
    v11 = *a2;
    *v4 = *a2;
    v4 = (v11 + ((v5 + 16) & ~v5));
  }

  else
  {
    v7 = *(a2 + 1);
    *a1 = *a2;
    *(a1 + 1) = v7;
    v8 = a3[5];
    v9 = sub_1AC79F7F8();

    if (__swift_getEnumTagSinglePayload(&a2[v8], 1, v9))
    {
      v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
      memcpy(&v4[v8], &a2[v8], *(*(v10 - 8) + 64));
    }

    else
    {
      (*(*(v9 - 8) + 16))(&v4[v8], &a2[v8], v9);
      __swift_storeEnumTagSinglePayload(&v4[v8], 0, 1, v9);
    }

    v12 = a3[6];
    v13 = a3[7];
    v14 = &v4[v12];
    v15 = &a2[v12];
    v16 = *(v15 + 1);
    *v14 = *v15;
    *(v14 + 1) = v16;
    *&v4[v13] = *&a2[v13];
    v17 = a3[9];
    v4[a3[8]] = a2[a3[8]];
    *&v4[v17] = *&a2[v17];
    v18 = a3[11];
    *&v4[a3[10]] = *&a2[a3[10]];
    v4[v18] = a2[v18];
    *&v4[a3[12]] = *&a2[a3[12]];
  }

  return v4;
}

uint64_t destroy for DictationTranscriber.ModelOptions(uint64_t a1, uint64_t a2)
{

  v4 = *(a2 + 20);
  v5 = sub_1AC79F7F8();
  if (!__swift_getEnumTagSinglePayload(a1 + v4, 1, v5))
  {
    (*(*(v5 - 8) + 8))(a1 + v4, v5);
  }
}

char *initializeWithCopy for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;
  v7 = a3[5];
  v8 = sub_1AC79F7F8();

  if (__swift_getEnumTagSinglePayload(&a2[v7], 1, v8))
  {
    v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v7], &a2[v7], *(*(v9 - 8) + 64));
  }

  else
  {
    (*(*(v8 - 8) + 16))(&a1[v7], &a2[v7], v8);
    __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
  }

  v10 = a3[6];
  v11 = a3[7];
  v12 = &a1[v10];
  v13 = &a2[v10];
  v14 = *(v13 + 1);
  *v12 = *v13;
  *(v12 + 1) = v14;
  *&a1[v11] = *&a2[v11];
  v15 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v15] = *&a2[v15];
  v16 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v16] = a2[v16];
  *&a1[a3[12]] = *&a2[a3[12]];

  return a1;
}

char *assignWithCopy for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  *(a1 + 1) = *(a2 + 1);

  v6 = a3[5];
  v7 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v6], 1, v7);
  v9 = __swift_getEnumTagSinglePayload(&a2[v6], 1, v7);
  if (!EnumTagSinglePayload)
  {
    v10 = *(v7 - 8);
    if (!v9)
    {
      (*(v10 + 24))(&a1[v6], &a2[v6], v7);
      goto LABEL_7;
    }

    (*(v10 + 8))(&a1[v6], v7);
    goto LABEL_6;
  }

  if (v9)
  {
LABEL_6:
    v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v6], &a2[v6], *(*(v11 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v7 - 8) + 16))(&a1[v6], &a2[v6], v7);
  __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
LABEL_7:
  v12 = a3[6];
  v13 = &a1[v12];
  v14 = &a2[v12];
  *v13 = *v14;
  *(v13 + 1) = *(v14 + 1);

  *&a1[a3[7]] = *&a2[a3[7]];

  a1[a3[8]] = a2[a3[8]];
  *&a1[a3[9]] = *&a2[a3[9]];

  *&a1[a3[10]] = *&a2[a3[10]];

  a1[a3[11]] = a2[a3[11]];
  *&a1[a3[12]] = *&a2[a3[12]];

  return a1;
}

char *initializeWithTake for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  *a1 = *a2;
  v6 = a3[5];
  v7 = sub_1AC79F7F8();
  if (__swift_getEnumTagSinglePayload(&a2[v6], 1, v7))
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v6], &a2[v6], *(*(v8 - 8) + 64));
  }

  else
  {
    (*(*(v7 - 8) + 32))(&a1[v6], &a2[v6], v7);
    __swift_storeEnumTagSinglePayload(&a1[v6], 0, 1, v7);
  }

  v9 = a3[7];
  *&a1[a3[6]] = *&a2[a3[6]];
  *&a1[v9] = *&a2[v9];
  v10 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v10] = *&a2[v10];
  v11 = a3[11];
  *&a1[a3[10]] = *&a2[a3[10]];
  a1[v11] = a2[v11];
  *&a1[a3[12]] = *&a2[a3[12]];
  return a1;
}

char *assignWithTake for DictationTranscriber.ModelOptions(char *a1, char *a2, int *a3)
{
  v6 = *(a2 + 1);
  *a1 = *a2;
  *(a1 + 1) = v6;

  v7 = a3[5];
  v8 = sub_1AC79F7F8();
  EnumTagSinglePayload = __swift_getEnumTagSinglePayload(&a1[v7], 1, v8);
  v10 = __swift_getEnumTagSinglePayload(&a2[v7], 1, v8);
  if (!EnumTagSinglePayload)
  {
    v11 = *(v8 - 8);
    if (!v10)
    {
      (*(v11 + 40))(&a1[v7], &a2[v7], v8);
      goto LABEL_7;
    }

    (*(v11 + 8))(&a1[v7], v8);
    goto LABEL_6;
  }

  if (v10)
  {
LABEL_6:
    v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
    memcpy(&a1[v7], &a2[v7], *(*(v12 - 8) + 64));
    goto LABEL_7;
  }

  (*(*(v8 - 8) + 32))(&a1[v7], &a2[v7], v8);
  __swift_storeEnumTagSinglePayload(&a1[v7], 0, 1, v8);
LABEL_7:
  v13 = a3[6];
  v14 = &a1[v13];
  v15 = &a2[v13];
  v17 = *v15;
  v16 = *(v15 + 1);
  *v14 = v17;
  *(v14 + 1) = v16;

  *&a1[a3[7]] = *&a2[a3[7]];

  v18 = a3[9];
  a1[a3[8]] = a2[a3[8]];
  *&a1[v18] = *&a2[v18];

  *&a1[a3[10]] = *&a2[a3[10]];

  v19 = a3[12];
  a1[a3[11]] = a2[a3[11]];
  *&a1[v19] = *&a2[v19];

  return a1;
}

void sub_1AC636604(uint64_t a1)
{
  sub_1AC622E1C(319);
  if (v1 <= 0x3F)
  {
    swift_initStructMetadata();
  }
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.TranscriptionOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFE)
  {
    if (a2 + 2 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 2) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 3;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v5 = v6 - 3;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.TranscriptionOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t getEnumTagSinglePayload for DictationTranscriber.ReportingOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF8)
  {
    if (a2 + 8 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 8) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 9;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 9;
  v5 = v6 - 9;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ReportingOption(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 8 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 8) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF8)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF7)
  {
    v6 = ((a2 - 248) >> 8) + 1;
    *result = a2 + 8;
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
          *result = a2 + 8;
        }

        break;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ResultAttributeOption(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xFF)
  {
    if (a2 + 1 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 1) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 2;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v5 = v6 - 2;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ResultAttributeOption(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t _s6ResultVwcp(uint64_t a1, uint64_t a2)
{
  v3 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v3;
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  v5 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v5;

  return a1;
}

uint64_t _s6ResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  return a1;
}

uint64_t _s6ResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v3 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v3;

  return a1;
}

uint64_t _s6ResultVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 80))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t _s6ResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t _s18MultisegmentResultVwxx(uint64_t a1)
{

  if (*(a1 + 160))
  {
  }
}

uint64_t _s18MultisegmentResultVwcp(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v4;
  v5 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v5;
  v6 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v6;
  v7 = *(a2 + 88);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 88) = v7;
  *(a1 + 96) = *(a2 + 96);
  v9 = a2 + 160;
  v8 = *(a2 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);

  if (v8)
  {
    v11 = *(a2 + 168);
    v10 = *(a2 + 176);
    *(a1 + 160) = v8;
    *(a1 + 168) = v11;
    *(a1 + 176) = v10;
  }

  else
  {
    *(a1 + 160) = *v9;
    *(a1 + 176) = *(v9 + 16);
  }

  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v12 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v12;
  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 256) = *(a2 + 256);
  v13 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v13;

  return a1;
}

uint64_t _s18MultisegmentResultVwca(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 12) = *(a2 + 12);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 24) = *(a2 + 24);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 36) = *(a2 + 36);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 48) = *(a2 + 48);
  *(a1 + 56) = *(a2 + 56);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = *(a2 + 72);

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v4 = (a1 + 160);
  v5 = *(a1 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 120) = *(a2 + 120);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 132) = *(a2 + 132);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 144) = *(a2 + 144);
  *(a1 + 148) = *(a2 + 148);
  v7 = (a2 + 160);
  v6 = *(a2 + 160);
  if (v5)
  {
    if (v6)
    {
      *(a1 + 160) = v6;

      *(a1 + 168) = *(a2 + 168);

      *(a1 + 176) = *(a2 + 176);
    }

    else
    {
      sub_1AC6370B8(a1 + 160);
      v8 = *(a2 + 176);
      *v4 = *v7;
      *(a1 + 176) = v8;
    }
  }

  else if (v6)
  {
    *(a1 + 160) = v6;
    *(a1 + 168) = *(a2 + 168);
    *(a1 + 176) = *(a2 + 176);
  }

  else
  {
    v9 = *v7;
    *(a1 + 176) = *(a2 + 176);
    *v4 = v9;
  }

  v10 = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  *(a1 + 184) = v10;
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = *(a2 + 208);

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 220) = *(a2 + 220);
  *(a1 + 224) = *(a2 + 224);
  *(a1 + 228) = *(a2 + 228);
  *(a1 + 232) = *(a2 + 232);
  *(a1 + 240) = *(a2 + 240);
  v11 = *(a2 + 248);
  *(a1 + 256) = *(a2 + 256);
  *(a1 + 248) = v11;
  return a1;
}

uint64_t _s18MultisegmentResultVwta(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  *(a1 + 8) = *(a2 + 8);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = *(a2 + 40);
  *(a1 + 56) = *(a2 + 56);
  v4 = *(a2 + 72);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 72) = v4;

  *(a1 + 80) = *(a2 + 80);

  *(a1 + 88) = *(a2 + 88);

  *(a1 + 96) = *(a2 + 96);

  v5 = *(a2 + 160);
  v6 = *(a1 + 160);
  *(a1 + 104) = *(a2 + 104);
  *(a1 + 108) = *(a2 + 108);
  *(a1 + 116) = *(a2 + 116);
  *(a1 + 124) = *(a2 + 124);
  *(a1 + 140) = *(a2 + 140);
  *(a1 + 148) = *(a2 + 148);
  if (!v6)
  {
    goto LABEL_5;
  }

  if (!v5)
  {
    sub_1AC6370B8(a1 + 160);
LABEL_5:
    *(a1 + 160) = *(a2 + 160);
    *(a1 + 176) = *(a2 + 176);
    goto LABEL_6;
  }

  *(a1 + 160) = v5;

  *(a1 + 168) = *(a2 + 168);

  *(a1 + 176) = *(a2 + 176);
LABEL_6:
  *(a1 + 184) = *(a2 + 184);
  *(a1 + 192) = *(a2 + 192);
  v7 = *(a2 + 208);
  *(a1 + 200) = *(a2 + 200);
  *(a1 + 208) = v7;

  *(a1 + 216) = *(a2 + 216);
  *(a1 + 232) = *(a2 + 232);
  v8 = *(a2 + 248);
  *(a1 + 240) = *(a2 + 240);
  *(a1 + 248) = v8;
  *(a1 + 256) = *(a2 + 256);
  return a1;
}

uint64_t _s18MultisegmentResultVwet(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 257))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 72);
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

uint64_t _s18MultisegmentResultVwst(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0;
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
    *(result + 256) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 257) = 1;
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
      *(result + 72) = (a2 - 1);
      return result;
    }

    *(result + 257) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ModelOptions.TaskName(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    v5 = -1;
    return (v5 + 1);
  }

  if (a2 >= 0xF7)
  {
    if (a2 + 9 >= 0xFFFF00)
    {
      v2 = 4;
    }

    else
    {
      v2 = 2;
    }

    if ((a2 + 9) >> 8 < 0xFF)
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
      if (!v4)
      {
        goto LABEL_17;
      }
    }

    else if (v3 == 2)
    {
      v4 = *(a1 + 1);
      if (!*(a1 + 1))
      {
        goto LABEL_17;
      }
    }

    else
    {
      v4 = a1[1];
      if (!a1[1])
      {
        goto LABEL_17;
      }
    }

    v5 = (*a1 | (v4 << 8)) - 10;
    return (v5 + 1);
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xA;
  v5 = v6 - 10;
  if (!v7)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

_BYTE *storeEnumTagSinglePayload for DictationTranscriber.ModelOptions.TaskName(_BYTE *result, unsigned int a2, unsigned int a3)
{
  if (a3 + 9 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 9) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 >= 0xF7)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xF6)
  {
    v6 = ((a2 - 247) >> 8) + 1;
    *result = a2 + 9;
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
          *result = a2 + 9;
        }

        break;
    }
  }

  return result;
}

void destroy for DictationTranscriber.ContentHint.HintCase(void **a1)
{
  v1 = *a1;
  if (v1 >= 0xFFFFFFFF)
  {
  }
}

void **assignWithCopy for DictationTranscriber.ContentHint.HintCase(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    if (v4 >= 0xFFFFFFFF)
    {
      *a1 = v4;
      v6 = v4;
      return a1;
    }

LABEL_7:
    *a1 = v4;
    return a1;
  }

  if (v4 < 0xFFFFFFFF)
  {

    v4 = *a2;
    goto LABEL_7;
  }

  *a1 = v4;
  v5 = v4;

  return a1;
}

void **assignWithTake for DictationTranscriber.ContentHint.HintCase(void **a1, void **a2)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 < 0xFFFFFFFF)
  {
    goto LABEL_6;
  }

  if (v4 < 0xFFFFFFFF)
  {

LABEL_6:
    *a1 = v4;
    return a1;
  }

  *a1 = v4;

  return a1;
}

uint64_t getEnumTagSinglePayload for DictationTranscriber.ContentHint.HintCase(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFD && *(a1 + 8))
  {
    return (*a1 + 2147483645);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 2;
  if (v4 >= 4)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t storeEnumTagSinglePayload for DictationTranscriber.ContentHint.HintCase(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 >= 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483645;
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFD)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t sub_1AC63765C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

void *sub_1AC637674(void *result, int a2)
{
  if (a2 < 0)
  {
    v2 = a2 & 0x7FFFFFFF;
  }

  else
  {
    if (!a2)
    {
      return result;
    }

    v2 = a2 - 1;
  }

  *result = v2;
  return result;
}

unint64_t sub_1AC6376A8()
{
  result = qword_1EB56C420;
  if (!qword_1EB56C420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C420);
  }

  return result;
}

unint64_t sub_1AC637700()
{
  result = qword_1EB56C428;
  if (!qword_1EB56C428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EB56C428);
  }

  return result;
}

uint64_t sub_1AC637754(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {

    return OUTLINED_FUNCTION_39();
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AC6377CC@<X0>(uint64_t result@<X0>, int a2@<W1>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  if (result < 0 || (v4 = result, 1 << *(a3 + 32) <= result))
  {
    __break(1u);
    goto LABEL_9;
  }

  if (((*(a3 + 8 * (result >> 6) + 56) >> result) & 1) == 0)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  if (*(a3 + 36) != a2)
  {
LABEL_10:
    __break(1u);
    return result;
  }

  v6 = *(a3 + 48);
  v7 = sub_1AC79FB18();
  v8 = *(v7 - 8);
  v9 = *(v8 + 16);
  v10 = v6 + *(v8 + 72) * v4;

  return v9(a4, v10, v7);
}

void sub_1AC63788C(uint64_t a1, int a2, char a3, uint64_t a4)
{
  v6 = a1;
  if ((a4 & 0xC000000000000001) != 0)
  {
    if (a3)
    {
      v7 = OUTLINED_FUNCTION_74_0();
      MEMORY[0x1B26E94C0](v7);
      sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
      swift_dynamicCast();
      return;
    }

    goto LABEL_23;
  }

  if (a3)
  {
    sub_1AC5CF764(0, &qword_1EB56AAA0, 0x1E696AD98);
    OUTLINED_FUNCTION_74_0();
    if (sub_1AC7A08C8() == *(a4 + 36))
    {
      OUTLINED_FUNCTION_74_0();
      sub_1AC7A08D8();
      swift_dynamicCast();
      v4 = v14;
      v8 = sub_1AC7A0748();
      v9 = ~(-1 << *(a4 + 32));
      while (1)
      {
        v6 = v8 & v9;
        if (((*(a4 + 56 + (((v8 & v9) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v8 & v9)) & 1) == 0)
        {
          goto LABEL_22;
        }

        v10 = *(*(a4 + 48) + 8 * v6);
        v11 = sub_1AC7A0758();

        if (v11)
        {
          goto LABEL_15;
        }

        v8 = v6 + 1;
      }
    }

    __break(1u);
    goto LABEL_20;
  }

  if (a1 < 0 || 1 << *(a4 + 32) <= a1)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (((*(a4 + 8 * (a1 >> 6) + 56) >> a1) & 1) == 0)
  {
LABEL_21:
    __break(1u);
LABEL_22:

    __break(1u);
LABEL_23:
    __break(1u);
    return;
  }

  if (*(a4 + 36) != a2)
  {
    __break(1u);
LABEL_15:
  }

  v12 = *(*(a4 + 48) + 8 * v6);

  v13 = v12;
}

uint64_t sub_1AC637ACC(uint64_t result, int a2, uint64_t a3, uint64_t a4)
{
  if (result < 0 || 1 << *(a4 + 32) <= result)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a4 + 8 * (result >> 6) + 64) >> result) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a4 + 36) == a2)
  {
    return *(*(a4 + 56) + 8 * result);
  }

LABEL_8:
  __break(1u);
  return result;
}

void *sub_1AC637B1C(void *result, uint64_t a2, int a3, uint64_t a4, uint64_t a5)
{
  if (a2 < 0 || 1 << *(a5 + 32) <= a2)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (((*(a5 + 8 * (a2 >> 6) + 64) >> a2) & 1) == 0)
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  if (*(a5 + 36) == a3)
  {
    v5 = *(*(a5 + 48) + 16 * a2);
    v6 = *(*(a5 + 56) + 8 * a2);
    *result = v6;

    v7 = v6;
    return v5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1AC637C7C()
{
  OUTLINED_FUNCTION_50_0();
  v1(0);
  OUTLINED_FUNCTION_80();
  v2 = OUTLINED_FUNCTION_39();
  v3(v2);
  return v0;
}

uint64_t sub_1AC637E08()
{
  OUTLINED_FUNCTION_50_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v1, v2);
  OUTLINED_FUNCTION_80();
  v3 = OUTLINED_FUNCTION_39();
  v4(v3);
  return v0;
}

uint64_t sub_1AC637E98(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
  }

  return result;
}

void OUTLINED_FUNCTION_86_2(uint64_t a1)
{

  static TranscriptionToken.allTokensString(from:ipa:attributes:)();
}

uint64_t OUTLINED_FUNCTION_115_1(uint64_t result)
{
  *(v2 + 16) = v1;
  *(v2 + 24) = 2 * ((result - 32) / v3);
  return result;
}

uint64_t sub_1AC638088()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[11] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_126();
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC638188()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[13];
    v2 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_83_2(v2);
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v3 = OUTLINED_FUNCTION_63();
    sub_1AC5C6DD8(v3);
    if (!v1)
    {
      nullsub_1();
      nullsub_1();
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7D38);
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_1AC638360;
      OUTLINED_FUNCTION_31_0(v0[7]);
      OUTLINED_FUNCTION_174();

      __asm { BR              X3 }
    }

    v4 = OUTLINED_FUNCTION_59_1();
    v5(v4);

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_174();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC638360()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 120) = v0;

  if (!v0)
  {
    *(v4 + 128) = v1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC638474()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_59_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_5();
  v4(v3);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 128);

  return v5(v6);
}

uint64_t sub_1AC638538(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC6386B0;

    return sub_1AC638088();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC6386B0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  OUTLINED_FUNCTION_141();
  *v4 = v5;
  OUTLINED_FUNCTION_66_2(v6, v7);
  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC638828()
{
  OUTLINED_FUNCTION_85();
  *(v1 + 72) = v2;
  *(v1 + 80) = v0;
  *(v1 + 259) = v3;
  *(v1 + 56) = v4;
  *(v1 + 64) = v5;
  *(v1 + 258) = v6;
  *(v1 + 48) = v7;
  v8 = sub_1AC79FC78();
  *(v1 + 88) = v8;
  OUTLINED_FUNCTION_22(v8);
  *(v1 + 96) = v9;
  *(v1 + 104) = OUTLINED_FUNCTION_126();
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  *(v1 + 112) = v10;
  OUTLINED_FUNCTION_167(v10);
  *(v1 + 120) = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB70, &qword_1AC7A7CB0);
  *(v1 + 128) = v11;
  OUTLINED_FUNCTION_22(v11);
  *(v1 + 136) = v12;
  *(v1 + 144) = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  *(v1 + 152) = v13;
  OUTLINED_FUNCTION_22(v13);
  *(v1 + 160) = v14;
  *(v1 + 168) = OUTLINED_FUNCTION_126();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB80, &qword_1AC7A7CC0);
  *(v1 + 176) = v15;
  OUTLINED_FUNCTION_22(v15);
  *(v1 + 184) = v16;
  *(v1 + 192) = swift_task_alloc();
  *(v1 + 200) = swift_task_alloc();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB90, &qword_1AC7A7CD0);
  *(v1 + 208) = v17;
  OUTLINED_FUNCTION_22(v17);
  *(v1 + 216) = v18;
  *(v1 + 224) = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1AC638AB8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[27];
  v39 = v16[26];
  v40 = v16[28];
  v18 = v16[23];
  v19 = v16[22];
  v37 = v16[21];
  v38 = v16[25];
  v20 = v16[20];
  v36 = v16[19];
  v21 = OUTLINED_FUNCTION_59_1();
  v22(v21);
  v23 = *(v18 + 8);
  v24 = OUTLINED_FUNCTION_77();
  v23(v24);
  v25 = OUTLINED_FUNCTION_60_2();
  v26(v25);
  (*(v20 + 8))(v37, v36);
  (v23)(v38, v19);
  (*(v17 + 8))(v40, v39);
  OUTLINED_FUNCTION_37_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v28(v27, v28, v29, v30, v31, v32, v33, v34, v36, v37, v38, v39, v40, a14, a15, a16);
}

uint64_t sub_1AC638BF4(uint64_t a1)
{
  result = sub_1AC638C14(a1);
  qword_1ED938618 = result;
  return result;
}

uint64_t sub_1AC638C14(uint64_t a1)
{
  type metadata accessor for LocalSpeechRecognitionService();
  v1 = sub_1AC79FF68();
  v3 = v2;
  if (qword_1ED9377D0 != -1)
  {
    swift_once();
  }

  v4 = sub_1AC638DB0(v1, v3, 0, qword_1ED938610);

  return v4;
}

uint64_t sub_1AC638DB0(void *a1, void *a2, uint64_t a3, uint64_t a4)
{
  v6 = a3;
  v9 = sub_1AC5EF974(a1, a2, a3);
  v10 = v9;
  if (!v4 && !v9)
  {
    type metadata accessor for LocalSpeechRecognitionService();
    v10 = swift_distributedActor_remote_initialize();
    *(v10 + 112) = a1;
    *(v10 + 120) = a2;
    *(v10 + 128) = v6;
    *(v10 + 136) = a4;
    sub_1AC5D0DD0(a1, a2, v6);
  }

  return v10;
}

uint64_t sub_1AC638E38()
{
  OUTLINED_FUNCTION_85();
  v1[12] = v2;
  v1[13] = v0;
  v1[10] = v3;
  v1[11] = v4;
  v1[8] = v5;
  v1[9] = v6;
  v7 = sub_1AC79FC78();
  v1[14] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[15] = v8;
  v1[16] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B910, &unk_1AC7A6E00);
  v1[17] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[18] = v10;
  v1[19] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[20] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[21] = v12;
  v1[22] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[23] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[24] = v14;
  v1[25] = OUTLINED_FUNCTION_126();
  v15 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[26] = v15;
  OUTLINED_FUNCTION_22(v15);
  v1[27] = v16;
  v1[28] = OUTLINED_FUNCTION_126();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B968, &qword_1AC7A75A8);
  v1[29] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[30] = v18;
  v1[31] = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1AC63909C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  if (swift_distributed_actor_is_remote())
  {
    v17 = v16[31];
    v18 = v16[8];
    v19 = OUTLINED_FUNCTION_140();
    v16[3] = v18;
    v16[2] = v19;
    sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
    v20 = v18;
    OUTLINED_FUNCTION_86_3(0xD000000000000015, 0x80000001AC7B5B00, 0xD000000000000015, 0x80000001AC7B5B00);
    sub_1AC5DE324(v17);
    v25 = v16[9];
    v16[4] = v25;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v26 = v25;
    v27 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_42_2(v27);
    v28 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DE3C0(v28);
    v29 = v16[25];
    v30 = v16[10];
    v16[5] = v30;
    sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
    v31 = v30;
    OUTLINED_FUNCTION_192();
    sub_1AC79FC98();
    sub_1AC5DE45C(v29);
    v32 = v16[22];
    v33 = v16[11];
    v16[6] = v33;
    v34 = v33;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_192();
    sub_1AC79FC98();
    sub_1AC5DE4F8(v32);
    v16[7] = v16[12];

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
    OUTLINED_FUNCTION_62_2();
    sub_1AC79FC98();
    v35 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DDFEC(v35);
    nullsub_1();
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7C70);
    v47 = v36;
    v37 = swift_task_alloc();
    v16[32] = v37;
    *v37 = v16;
    v37[1] = sub_1AC639598;
    OUTLINED_FUNCTION_31_0(v16[13]);
    OUTLINED_FUNCTION_54();

    return v41(v38, v39, v40, v41, v42, v43, v44, v45, a9, a10, a11, v47, a13, a14, a15, a16);
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_54();

    return MEMORY[0x1EEE6DFA0](v21, v22, v23);
  }
}

uint64_t sub_1AC639598()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 264) = v0;

  if (!v0)
  {
    *(v4 + 272) = v1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC6396AC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[30];
  v41 = v18[29];
  v42 = v18[31];
  v20 = v18[27];
  v39 = v18[26];
  v40 = v18[28];
  v21 = v18[24];
  v22 = v18[22];
  v37 = v18[23];
  v38 = v18[25];
  v24 = v18[20];
  v23 = v18[21];
  v25 = v18[18];
  v26 = v18[19];
  v27 = v18[17];
  v43 = v18[16];
  (*(v18[15] + 8))();
  (*(v25 + 8))(v26, v27);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v38, v37);
  (*(v20 + 8))(v40, v39);
  (*(v19 + 8))(v42, v41);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_26();

  return v30(v28, v29, v30, v31, v32, v33, v34, v35, v37, v38, v39, v40, v41, v42, v43, a16, a17, a18);
}

uint64_t sub_1AC639830(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  v19 = v18[30];
  v41 = v18[29];
  v42 = v18[31];
  v20 = v18[27];
  v39 = v18[26];
  v40 = v18[28];
  v21 = v18[24];
  v22 = v18[22];
  v37 = v18[23];
  v38 = v18[25];
  v24 = v18[20];
  v23 = v18[21];
  v25 = v18[18];
  v26 = v18[19];
  v27 = v18[17];
  (*(v18[15] + 8))(v18[16], v18[14]);
  (*(v25 + 8))(v26, v27);
  (*(v23 + 8))(v22, v24);
  (*(v21 + 8))(v38, v37);
  (*(v20 + 8))(v40, v39);
  (*(v19 + 8))(v42, v41);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_26();

  return v29(v28, v29, v30, v31, v32, v33, v34, v35, a9, v37, v38, v39, v40, v41, v42, a16, a17, a18);
}

void sub_1AC6399B0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC6399F0()
{
  OUTLINED_FUNCTION_85();
  v1[16] = v2;
  v1[17] = v0;
  v1[14] = v3;
  v1[15] = v4;
  v1[12] = v5;
  v1[13] = v6;
  v1[10] = v7;
  v1[11] = v8;
  v9 = sub_1AC79FC78();
  v1[18] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[19] = v10;
  v1[20] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v1[21] = v11;
  OUTLINED_FUNCTION_167(v11);
  v1[22] = OUTLINED_FUNCTION_126();
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB30, &qword_1AC7A7C50);
  v1[23] = v12;
  OUTLINED_FUNCTION_22(v12);
  v1[24] = v13;
  v1[25] = OUTLINED_FUNCTION_126();
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[26] = v14;
  OUTLINED_FUNCTION_22(v14);
  v1[27] = v15;
  v1[28] = swift_task_alloc();
  v1[29] = swift_task_alloc();
  v16 = sub_1AC79F7F8();
  v1[30] = v16;
  OUTLINED_FUNCTION_22(v16);
  v1[31] = v17;
  v1[32] = OUTLINED_FUNCTION_126();
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB40, &qword_1AC7A7C60);
  v1[33] = v18;
  OUTLINED_FUNCTION_22(v18);
  v1[34] = v19;
  v1[35] = OUTLINED_FUNCTION_126();
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B958, &qword_1AC7A7598);
  v1[36] = v20;
  OUTLINED_FUNCTION_22(v20);
  v1[37] = v21;
  v1[38] = OUTLINED_FUNCTION_126();
  v22 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v22, v23, v24);
}

uint64_t sub_1AC639C90(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18)
{
  OUTLINED_FUNCTION_46();
  OUTLINED_FUNCTION_55_3();
  if (swift_distributed_actor_is_remote())
  {
    v19 = v18[38];
    v20 = v18[10];
    v21 = OUTLINED_FUNCTION_140();
    v18[9] = v20;
    v18[8] = v21;
    sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
    v22 = v20;
    OUTLINED_FUNCTION_86_3(0x747865746E6F63, 0xE700000000000000, 0x747865746E6F63, 0xE700000000000000);
    sub_1AC5DE45C(v19);
    (*(v18[31] + 16))(v18[32], v18[11], v18[30]);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DE7C4();
    v27 = v18[13];
    v18[2] = v18[12];
    v18[3] = v27;

    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v28 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v28);
    sub_1AC5C6EC4(v18[14], v18[22], &qword_1EB56B8F0, &unk_1AC7A9520);
    sub_1AC79FC98();
    OUTLINED_FUNCTION_200();
    sub_1AC5DE8D0();
    v29 = v18[16];
    v18[4] = v18[15];
    v18[5] = v29;

    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v30 = OUTLINED_FUNCTION_200();
    sub_1AC5C6DD8(v30);
    nullsub_1();
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7C38);
    v42 = v31;
    v32 = swift_task_alloc();
    v18[39] = v32;
    *v32 = v18;
    v32[1] = sub_1AC63A198;
    OUTLINED_FUNCTION_26();

    return v37(v33, v34, v35, v36, v37, v38, v39, v40, a9, a10, a11, a12, a13, v42, a15, a16, a17, a18);
  }

  else
  {
    OUTLINED_FUNCTION_125();
    OUTLINED_FUNCTION_26();

    return MEMORY[0x1EEE6DFA0](v23, v24, v25);
  }
}

uint64_t sub_1AC63A198()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_19();
  *v3 = v2;
  *v3 = *v1;
  *(v2 + 320) = v0;

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC63A2B8()
{
  v1 = v0[37];
  v17 = v0[36];
  v18 = v0[38];
  v2 = v0[34];
  v15 = v0[33];
  v16 = v0[35];
  v3 = v0[28];
  v14 = v0[29];
  v5 = v0[26];
  v4 = v0[27];
  v6 = v0[24];
  v7 = v0[25];
  v8 = v0[23];
  (*(v0[19] + 8))();
  v9 = *(v4 + 8);
  v9(v3, v5);
  (*(v6 + 8))(v7, v8);
  v9(v14, v5);
  (*(v2 + 8))(v16, v15);
  (*(v1 + 8))(v18, v17);
  v10 = v0[6];
  v11 = v0[7];

  v12 = v0[1];

  return v12(v10, v11);
}

uint64_t sub_1AC63A478(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v17 = v16[37];
  v37 = v16[36];
  v38 = v16[38];
  v18 = v16[34];
  v35 = v16[33];
  v36 = v16[35];
  v19 = v16[28];
  v34 = v16[29];
  v21 = v16[26];
  v20 = v16[27];
  (*(v16[19] + 8))(v16[20], v16[18]);
  v22 = *(v20 + 8);
  v22(v19, v21);
  v23 = OUTLINED_FUNCTION_60_2();
  v24(v23);
  v22(v34, v21);
  (*(v18 + 8))(v36, v35);
  (*(v17 + 8))(v38, v37);
  OUTLINED_FUNCTION_81_0();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_54();

  return v26(v25, v26, v27, v28, v29, v30, v31, v32, v34, v35, v36, v37, v38, a14, a15, a16);
}

uint64_t sub_1AC63A5F8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC63A69C()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (!v0)
    {
      nullsub_1();
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7C20);
      v9 = swift_task_alloc();
      *(v1 + 64) = v9;
      *v9 = v1;
      v9[1] = sub_1AC63A818;
      OUTLINED_FUNCTION_31_0(*(v1 + 24));
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC63A818()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *v7 = *v1;
  *(v6 + 72) = v0;

  if (v0)
  {
    v8 = sub_1AC63AA10;
  }

  else
  {
    *(v6 + 88) = v3;
    *(v6 + 80) = v5;
    v8 = sub_1AC63A958;
  }

  return MEMORY[0x1EEE6DFA0](v8, 0, 0);
}

uint64_t sub_1AC63A958()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 88);
  v2 = *(v0 + 48);
  OUTLINED_FUNCTION_74_2();
  v3(v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 80);

  return v4(v5, v1 & 1);
}

uint64_t sub_1AC63AA10()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_74_2();
  v0();

  OUTLINED_FUNCTION_44();

  return v1();
}

uint64_t sub_1AC63AAB4()
{
  OUTLINED_FUNCTION_85();
  v1[11] = v2;
  v1[12] = v0;
  v1[9] = v3;
  v1[10] = v4;
  v1[7] = v5;
  v1[8] = v6;
  v7 = sub_1AC79FC78();
  v1[13] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAF8, &qword_1AC7A7C00);
  v1[16] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB08, &qword_1AC7A7C10);
  v1[19] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_126();
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[22] = v13;
  OUTLINED_FUNCTION_22(v13);
  v1[23] = v14;
  v1[24] = OUTLINED_FUNCTION_126();
  v15 = sub_1AC79FB18();
  v1[25] = v15;
  OUTLINED_FUNCTION_22(v15);
  v1[26] = v16;
  v1[27] = OUTLINED_FUNCTION_126();
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[28] = v17;
  OUTLINED_FUNCTION_22(v17);
  v1[29] = v18;
  v1[30] = OUTLINED_FUNCTION_126();
  v19 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v19, v20, v21);
}

uint64_t sub_1AC63AD0C()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[30];
    v2 = OUTLINED_FUNCTION_140();
    v3 = OUTLINED_FUNCTION_61_1(v2);
    v4(v3);
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_63();
    sub_1AC5DE590();
    if (v1)
    {
      (*(v0[29] + 8))(v0[30], v0[28]);

      OUTLINED_FUNCTION_37_3();

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_115();

      __asm { BRAA            X1, X16 }
    }

    v9 = v0[9];
    v0[2] = v0[8];
    v0[3] = v9;

    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v10 = OUTLINED_FUNCTION_39_3();
    sub_1AC5C6DD8(v10);
    v0[5] = v0[10];
    type metadata accessor for EAREuclidEncoderType(0);
    OUTLINED_FUNCTION_65_3(0x547265646F636E65, 0xEB00000000657079);
    v11 = OUTLINED_FUNCTION_39_3();
    sub_1AC5DE9E8(v11);
    v0[6] = v0[11];
    type metadata accessor for EAREuclidInitFlag(0);
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v12 = OUTLINED_FUNCTION_39_3();
    sub_1AC5DEA6C(v12);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BF0);
    v15 = swift_task_alloc();
    v0[31] = v15;
    *v15 = v0;
    v15[1] = sub_1AC63B0B8;
    OUTLINED_FUNCTION_31_0(v0[12]);
    OUTLINED_FUNCTION_115();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_115();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC63B0B8()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 256) = v0;

  if (!v0)
  {
    *(v4 + 264) = v1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC63B1CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v18 = v16[29];
  v17 = v16[30];
  v19 = v16[23];
  v36 = v16[24];
  v37 = v16[28];
  v20 = v16[21];
  v35 = v16[22];
  v22 = v16[19];
  v21 = v16[20];
  v24 = v16[17];
  v23 = v16[18];
  v25 = v16[16];
  v38 = v16[15];
  v39 = v16[27];
  (*(v16[14] + 8))();
  (*(v24 + 8))(v23, v25);
  (*(v21 + 8))(v20, v22);
  (*(v19 + 8))(v36, v35);
  (*(v18 + 8))(v17, v37);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_54();

  return v28(v26, v27, v28, v29, v30, v31, v32, v33, v35, v36, v37, v38, v39, a14, a15, a16);
}

void sub_1AC63B328()
{
  v1 = v0[29];
  v13 = v0[28];
  v14 = v0[30];
  v2 = v0[23];
  v12 = v0[24];
  v4 = v0[21];
  v3 = v0[22];
  v6 = v0[19];
  v5 = v0[20];
  v7 = v0[17];
  v8 = v0[18];
  v9 = v0[16];
  (*(v0[14] + 8))(v0[15], v0[13]);
  (*(v7 + 8))(v8, v9);
  (*(v5 + 8))(v4, v6);
  (*(v2 + 8))(v12, v3);
  (*(v1 + 8))(v14, v13);
  OUTLINED_FUNCTION_37_3();

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_115();

  __asm { BRAA            X1, X16 }
}

void sub_1AC63B464(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC63B4A4()
{
  OUTLINED_FUNCTION_85();
  v1[8] = v2;
  v1[9] = v0;
  v1[6] = v3;
  v1[7] = v4;
  v5 = sub_1AC79FC78();
  v1[10] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[11] = v6;
  v1[12] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B950, &qword_1AC7A7590);
  v1[13] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[14] = v8;
  v1[15] = OUTLINED_FUNCTION_126();
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B960, &qword_1AC7A75A0);
  v1[16] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[17] = v10;
  v1[18] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BAE0, &qword_1AC7A7BE0);
  v1[19] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[20] = v12;
  v1[21] = OUTLINED_FUNCTION_126();
  v13 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1AC63B654()
{
  OUTLINED_FUNCTION_57();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[21];
    v2 = v0[6];
    v3 = OUTLINED_FUNCTION_140();
    v0[3] = v2;
    v0[2] = v3;
    sub_1AC5CF764(0, &qword_1EB56BAD8, off_1E797ADF0);
    v4 = v2;
    OUTLINED_FUNCTION_86_3(0xD000000000000013, 0x80000001AC7B5B20, 0xD000000000000013, 0x80000001AC7B5B20);
    sub_1AC5DEAF0(v1);
    v9 = v0[7];
    v0[4] = v9;
    sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
    v10 = v9;
    v11 = OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_42_2(v11);
    v12 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DE3C0(v12);
    v13 = v0[8];
    v0[5] = v13;
    v14 = v13;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B970, &unk_1AC7A75B0);
    OUTLINED_FUNCTION_76_1();
    OUTLINED_FUNCTION_65_3(v15, v16);
    v17 = OUTLINED_FUNCTION_69_3();
    sub_1AC5DE4F8(v17);
    nullsub_1();
    nullsub_1();
    nullsub_1();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BD0);
    v18 = swift_task_alloc();
    v0[22] = v18;
    *v18 = v0;
    v18[1] = sub_1AC63B994;
    OUTLINED_FUNCTION_31_0(v0[9]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC63B994()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 184) = v0;

  if (!v0)
  {
    *(v4 + 192) = v1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC63BAA8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12[20];
  v13 = v12[21];
  v29 = v12[19];
  v15 = v12[14];
  v16 = v12[15];
  v17 = v12[13];
  (*(v12[11] + 8))(v12[12], v12[10]);
  (*(v15 + 8))(v16, v17);
  v18 = OUTLINED_FUNCTION_73_1();
  v19(v18);
  (*(v14 + 8))(v13, v29);

  OUTLINED_FUNCTION_82();
  OUTLINED_FUNCTION_77_2();

  return v22(v20, v21, v22, v23, v24, v25, v26, v27, v29, a10, a11, a12);
}

uint64_t sub_1AC63BBD0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  v14 = v12[14];
  v13 = v12[15];
  v15 = v12[13];
  (*(v12[11] + 8))(v12[12], v12[10]);
  (*(v14 + 8))(v13, v15);
  v16 = OUTLINED_FUNCTION_73_1();
  v17(v16);
  v18 = OUTLINED_FUNCTION_89();
  v19(v18);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v21(v20, v21, v22, v23, v24, v25, v26, v27, a9, a10, a11, a12);
}

uint64_t sub_1AC63BCF4()
{
  OUTLINED_FUNCTION_85();
  v1[6] = v2;
  v1[7] = v0;
  v1[5] = v3;
  v4 = sub_1AC79FC78();
  v1[8] = v4;
  OUTLINED_FUNCTION_22(v4);
  v1[9] = v5;
  v1[10] = OUTLINED_FUNCTION_126();
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[11] = v6;
  OUTLINED_FUNCTION_22(v6);
  v1[12] = v7;
  v1[13] = OUTLINED_FUNCTION_126();
  v8 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC63BDF4()
{
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[13];
    v2 = OUTLINED_FUNCTION_140();
    OUTLINED_FUNCTION_83_2(v2);
    sub_1AC79FC98();
    v3 = OUTLINED_FUNCTION_63();
    sub_1AC5C6DD8(v3);
    if (!v1)
    {
      nullsub_1();
      nullsub_1();
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7BC8);
      v12 = swift_task_alloc();
      v0[14] = v12;
      *v12 = v0;
      v12[1] = sub_1AC63BFE8;
      OUTLINED_FUNCTION_31_0(v0[7]);
      OUTLINED_FUNCTION_174();

      __asm { BR              X3 }
    }

    v4 = OUTLINED_FUNCTION_59_1();
    v5(v4);

    OUTLINED_FUNCTION_82();
    OUTLINED_FUNCTION_174();

    __asm { BRAA            X2, X16 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_174();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC63BFE8()
{
  OUTLINED_FUNCTION_72();
  v3 = v2;
  OUTLINED_FUNCTION_50();
  v5 = v4;
  OUTLINED_FUNCTION_19();
  *v6 = v5;
  v7 = *v1;
  OUTLINED_FUNCTION_18();
  *v8 = v7;
  *(v5 + 120) = v0;

  if (!v0)
  {
    *(v5 + 128) = v3 & 1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1AC63C104()
{
  OUTLINED_FUNCTION_72();
  v1 = OUTLINED_FUNCTION_59_2();
  v2(v1);
  v3 = OUTLINED_FUNCTION_11_5();
  v4(v3);

  OUTLINED_FUNCTION_82();
  v6 = *(v0 + 128);

  return v5(v6);
}

uint64_t sub_1AC63C1C8()
{
  OUTLINED_FUNCTION_72();
  v0 = OUTLINED_FUNCTION_190();
  v1(v0);
  v2 = OUTLINED_FUNCTION_89();
  v3(v2);

  OUTLINED_FUNCTION_82();

  return v4(0);
}

uint64_t sub_1AC63C294()
{
  OUTLINED_FUNCTION_85();
  v1[7] = v2;
  v1[8] = v0;
  v1[5] = v3;
  v1[6] = v4;
  v5 = sub_1AC79FC78();
  v1[9] = v5;
  OUTLINED_FUNCTION_22(v5);
  v1[10] = v6;
  v1[11] = OUTLINED_FUNCTION_126();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B900, &unk_1AC7A92C0);
  v1[12] = v7;
  OUTLINED_FUNCTION_22(v7);
  v1[13] = v8;
  v1[14] = OUTLINED_FUNCTION_126();
  v9 = sub_1AC79FB18();
  v1[15] = v9;
  OUTLINED_FUNCTION_22(v9);
  v1[16] = v10;
  v1[17] = OUTLINED_FUNCTION_126();
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BBE8, &unk_1AC7A9660);
  v1[18] = v11;
  OUTLINED_FUNCTION_22(v11);
  v1[19] = v12;
  v1[20] = OUTLINED_FUNCTION_126();
  v13 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v13, v14, v15);
}

uint64_t sub_1AC63C438()
{
  OUTLINED_FUNCTION_57();
  if (swift_distributed_actor_is_remote())
  {
    v1 = v0[20];
    v2 = OUTLINED_FUNCTION_140();
    v3 = OUTLINED_FUNCTION_61_1(v2);
    v4(v3);
    OUTLINED_FUNCTION_32_1();
    OUTLINED_FUNCTION_63();
    sub_1AC5DE590();
    if (v1)
    {
      (*(v0[19] + 8))(v0[20], v0[18]);

      OUTLINED_FUNCTION_17();
      OUTLINED_FUNCTION_56_0();

      __asm { BRAA            X1, X16 }
    }

    v9 = v0[7];
    v0[2] = v0[6];
    v0[3] = v9;

    OUTLINED_FUNCTION_23_1();
    OUTLINED_FUNCTION_13_3();
    sub_1AC79FC98();
    v10 = OUTLINED_FUNCTION_39_3();
    sub_1AC5C6DD8(v10);
    nullsub_1();
    nullsub_1();
    OUTLINED_FUNCTION_73();
    sub_1AC79FC88();
    OUTLINED_FUNCTION_30(&unk_1AC7A7BB8);
    v13 = swift_task_alloc();
    v0[21] = v13;
    *v13 = v0;
    v13[1] = sub_1AC63C684;
    OUTLINED_FUNCTION_31_0(v0[8]);
    OUTLINED_FUNCTION_56_0();

    __asm { BR              X3 }
  }

  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_56_0();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC63C684()
{
  OUTLINED_FUNCTION_72();
  OUTLINED_FUNCTION_15_3();
  v4 = v3;
  OUTLINED_FUNCTION_19();
  *v5 = v4;
  v6 = *v2;
  OUTLINED_FUNCTION_18();
  *v7 = v6;
  *(v4 + 176) = v0;

  if (!v0)
  {
    *(v4 + 184) = v1;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v8, v9, v10);
}

uint64_t sub_1AC63C798()
{
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = OUTLINED_FUNCTION_77();
  v2(v1);
  v3 = OUTLINED_FUNCTION_89();
  v4(v3);

  OUTLINED_FUNCTION_82();
  v6 = v0[23];

  return v5(v6);
}

uint64_t sub_1AC63C8AC()
{
  OUTLINED_FUNCTION_45();
  (*(v0[10] + 8))(v0[11], v0[9]);
  v1 = OUTLINED_FUNCTION_73_1();
  v2(v1);
  v3 = OUTLINED_FUNCTION_89();
  v4(v3);

  OUTLINED_FUNCTION_44();

  return v5();
}

void sub_1AC63C988(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  OUTLINED_FUNCTION_25_3();
  sub_1AC7A0B78();
  __break(1u);
}

uint64_t sub_1AC63C9C8()
{
  OUTLINED_FUNCTION_85();
  v1[3] = v0;
  v2 = sub_1AC79FC78();
  v1[4] = v2;
  OUTLINED_FUNCTION_22(v2);
  v1[5] = v3;
  v1[6] = OUTLINED_FUNCTION_126();
  v4 = OUTLINED_FUNCTION_74();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1AC63CA6C()
{
  OUTLINED_FUNCTION_45();
  if (swift_distributed_actor_is_remote())
  {
    v2 = sub_1AC5C6544();
    OUTLINED_FUNCTION_64(v2);
    if (!v0)
    {
      nullsub_1();
      nullsub_1();
      OUTLINED_FUNCTION_73();
      sub_1AC79FC88();
      OUTLINED_FUNCTION_30(&unk_1AC7A7BA8);
      v9 = swift_task_alloc();
      *(v1 + 64) = v9;
      *v9 = v1;
      v9[1] = sub_1AC63CBE8;
      OUTLINED_FUNCTION_31_0(*(v1 + 24));
      OUTLINED_FUNCTION_155();

      __asm { BR              X3 }
    }

    OUTLINED_FUNCTION_17();
    OUTLINED_FUNCTION_155();

    __asm { BRAA            X1, X16 }
  }

  OUTLINED_FUNCTION_155();

  return MEMORY[0x1EEE6DFA0](v5, v6, v7);
}

uint64_t sub_1AC63CBE8()
{
  OUTLINED_FUNCTION_45();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_18();
  *v5 = v4;
  *v5 = *v1;
  *(v4 + 72) = v0;

  if (!v0)
  {
    *(v4 + 80) = v3;
  }

  OUTLINED_FUNCTION_33();

  return MEMORY[0x1EEE6DFA0](v6, v7, v8);
}

uint64_t sub_1AC63CD18()
{
  OUTLINED_FUNCTION_85();
  v1 = *(v0 + 48);
  OUTLINED_FUNCTION_74_2();
  v2(v1);

  OUTLINED_FUNCTION_82();
  v4 = *(v0 + 80);

  return v3(v4);
}

uint64_t sub_1AC63CE2C(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v10 = a2[4];
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1AC63D3E8;

  return sub_1AC638828();
}

uint64_t sub_1AC63D720(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v10 = a2[4];
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1AC63D3E8;

  return sub_1AC638E38();
}

uint64_t sub_1AC63DCD8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_12:
    __break(1u);
    goto LABEL_13;
  }

  sub_1AC6E6540();
  v10 = a2[4];
  v3[15] = v10;
  v3[16] = *(v10 - 8);
  v3[17] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_13:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v11 = swift_task_alloc();
  v3[18] = v11;
  *v11 = v3;
  v11[1] = sub_1AC63E268;

  return sub_1AC6399F0();
}

uint64_t sub_1AC63E5B8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC63E650;

  return sub_1AC63A5F8();
}

uint64_t sub_1AC63E650()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  v1 = *(v0 + 16);
  *v1 = v2;
  *(v1 + 8) = v3 & 1;

  OUTLINED_FUNCTION_44();

  return v4();
}

uint64_t sub_1AC63E758(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    goto LABEL_10;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1AC6E6540();
  v9 = a2[3];
  v3[12] = v9;
  v3[13] = *(v9 - 8);
  v3[14] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_11:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v10 = swift_task_alloc();
  v3[15] = v10;
  *v10 = v3;
  v10[1] = sub_1AC63EBA4;

  return sub_1AC63AAB4();
}

uint64_t sub_1AC63EBA4()
{
  OUTLINED_FUNCTION_50();
  v28 = *(v0 + 112);
  OUTLINED_FUNCTION_64_1();
  v27 = *(v1 + 104);
  OUTLINED_FUNCTION_64_1();
  v24 = *(v2 + 96);
  OUTLINED_FUNCTION_64_1();
  v26 = *(v3 + 88);
  OUTLINED_FUNCTION_64_1();
  v25 = *(v4 + 80);
  OUTLINED_FUNCTION_64_1();
  v6 = *(v5 + 72);
  v23 = *(v7 + 64);
  OUTLINED_FUNCTION_64_1();
  v22 = *(v8 + 56);
  OUTLINED_FUNCTION_64_1();
  v10 = *(v9 + 48);
  v12 = v11[5];
  v13 = v11[4];
  v14 = v11[3];
  OUTLINED_FUNCTION_141();
  v16 = v15;
  OUTLINED_FUNCTION_18_2();
  *v17 = v16;
  OUTLINED_FUNCTION_66_2(v18, v19);
  (*(v13 + 8))(v12, v14);
  (*(v22 + 8))(v23, v10);
  (*(v25 + 8))(v26, v6);
  (*(v27 + 8))(v28, v24);

  v20 = *(v16 + 8);

  return v20();
}

uint64_t sub_1AC63EEA0(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  sub_1AC6E6540();
  v8 = a2[2];
  v3[9] = v8;
  v3[10] = *(v8 - 8);
  v3[11] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_9:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v9 = swift_task_alloc();
  v3[12] = v9;
  *v9 = v3;
  v9[1] = sub_1AC63F1D8;

  return sub_1AC63B4A4();
}

uint64_t sub_1AC63F1D8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  OUTLINED_FUNCTION_78();
  OUTLINED_FUNCTION_93_0();
  v46 = v16;
  OUTLINED_FUNCTION_50();
  v45 = *(v17 + 88);
  OUTLINED_FUNCTION_64_1();
  v44 = *(v18 + 80);
  OUTLINED_FUNCTION_64_1();
  v20 = *(v19 + 72);
  v22 = *(v21 + 64);
  v43 = *(v21 + 56);
  OUTLINED_FUNCTION_64_1();
  v24 = *(v23 + 48);
  v26 = v25[5];
  v27 = v25[4];
  v28 = v25[3];
  OUTLINED_FUNCTION_141();
  v30 = v29;
  OUTLINED_FUNCTION_18_2();
  *v31 = v30;
  OUTLINED_FUNCTION_66_2(v32, v33);
  (*(v27 + 8))(v26, v28);
  (*(v43 + 8))(v22, v24);
  (*(v44 + 8))(v45, v20);

  OUTLINED_FUNCTION_54();

  return v35(v34, v35, v36, v37, v38, v39, v40, v41, v20 - 8, v43, v44, v45, v46, a14, a15, a16);
}

uint64_t sub_1AC63F448(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v4 = *a2;
  v3[3] = *a2;
  v3[4] = *(v4 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (result)
  {
    sub_1AC6E6540();
    v6 = swift_task_alloc();
    v3[6] = v6;
    *v6 = v3;
    v6[1] = sub_1AC63F5C0;

    return sub_1AC63BCF4();
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1AC63F5C0()
{
  OUTLINED_FUNCTION_45();
  OUTLINED_FUNCTION_50();
  v1 = v0[5];
  v2 = v0[4];
  v3 = v0[3];
  OUTLINED_FUNCTION_141();
  *v4 = v5;
  *v7 = v6;

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_44();

  return v8();
}

uint64_t sub_1AC63F740(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v3[2] = a3;
  v5 = *a2;
  v3[3] = *a2;
  v3[4] = *(v5 - 8);
  v3[5] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
    __break(1u);
    goto LABEL_7;
  }

  sub_1AC6E6540();
  v7 = a2[1];
  v3[6] = v7;
  v3[7] = *(v7 - 8);
  v3[8] = swift_task_alloc();
  result = swift_conformsToProtocol2();
  if (!result)
  {
LABEL_7:
    __break(1u);
    return result;
  }

  sub_1AC6E6540();
  v8 = swift_task_alloc();
  v3[9] = v8;
  *v8 = v3;
  v8[1] = sub_1AC63F994;

  return sub_1AC63C294();
}

uint64_t sub_1AC63F994(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_79();
  OUTLINED_FUNCTION_57();
  OUTLINED_FUNCTION_50();
  v13 = v12[5];
  v14 = v12[4];
  v15 = v12[3];
  OUTLINED_FUNCTION_141();
  *v16 = v17;
  OUTLINED_FUNCTION_66_2(v18, v19);
  (*(v14 + 8))(v13, v15);
  v20 = OUTLINED_FUNCTION_73_1();
  v21(v20);

  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_77_2();

  return v23(v22, v23, v24, v25, v26, v27, v28, v29, a9, a10, a11, a12);
}

uint64_t sub_1AC63FB74(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 16) = a3;
  v4 = swift_task_alloc();
  *(v3 + 24) = v4;
  *v4 = v3;
  v4[1] = sub_1AC63FC0C;

  return sub_1AC63C9C8();
}

uint64_t sub_1AC63FC0C()
{
  OUTLINED_FUNCTION_85();
  OUTLINED_FUNCTION_50();
  OUTLINED_FUNCTION_66_2(v1, *(v0 + 16));
  OUTLINED_FUNCTION_44();

  return v2();
}

uint64_t sub_1AC63FD28()
{
  sub_1AC7A0E78();
  type metadata accessor for LocalSpeechRecognitionService();
  OUTLINED_FUNCTION_27_2();
  sub_1AC641AD4(v0, v1, v2, &unk_1AC7A9A60);
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC63FDA4()
{
  if ((sub_1AC79FC58() & 1) == 0)
  {
    type metadata accessor for LocalSpeechRecognitionService();
    OUTLINED_FUNCTION_27_2();
    sub_1AC641AD4(v1, v2, v3, &unk_1AC7A9AA0);
    OUTLINED_FUNCTION_89();
    return sub_1AC79FBE8();
  }

  return v0;
}

uint64_t sub_1AC63FE68(uint64_t a1)
{
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v1, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);
  return sub_1AC79FC28();
}

uint64_t sub_1AC63FEE0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1AC7A0E78();
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC79FE58();
  return sub_1AC7A0EC8();
}

uint64_t sub_1AC63FF38(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = type metadata accessor for LocalSpeechRecognitionService();
  v6 = sub_1AC641AD4(&unk_1ED937D48, v5, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);

  return MEMORY[0x1EEE6CC98](v2, v3, v4, v6);
}

uint64_t sub_1AC63FFC0(uint64_t a1)
{
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v1, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);
  sub_1AC6013F0();
  return sub_1AC79FC38();
}

uint64_t sub_1AC640054@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for LocalSpeechRecognitionService();
  sub_1AC641AD4(&unk_1ED937D48, v4, type metadata accessor for LocalSpeechRecognitionService, &unk_1AC7A9AA0);
  sub_1AC601444();
  result = sub_1AC79FC48();
  if (!v2)
  {
    *a2 = result;
  }

  return result;
}

void sub_1AC640214()
{
  v0 = objc_opt_self();
  v1 = &unk_1F2157428;
  v2 = [v0 interfaceWithProtocol_];

  qword_1ED9386F0 = v2;
}

void sub_1AC64027C(void *a1, unint64_t a2, void *a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v149 = a5;
  v150 = a6;
  v151 = a3;
  v152 = a4;
  sub_1AC79FB18();
  OUTLINED_FUNCTION_40();
  v147[1] = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56B8F0, &unk_1AC7A9520);
  v13 = OUTLINED_FUNCTION_167(v12);
  MEMORY[0x1EEE9AC00](v13);
  v15 = v147 - v14;
  v16 = sub_1AC79F7F8();
  OUTLINED_FUNCTION_40();
  v148 = v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = v147 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56BB68, &qword_1AC7A8490);
  v22 = OUTLINED_FUNCTION_167(v21);
  MEMORY[0x1EEE9AC00](v22);
  v24 = v147 - v23;
  v25 = 0x80000001AC7B5B70;
  v26 = 0xD000000000000091;
  v27 = a1 == 0xD000000000000091 && 0x80000001AC7B5B70 == a2;
  if (v27 || (v26 = OUTLINED_FUNCTION_21_3(0xD000000000000091, 0x80000001AC7B5B70), (v26 & 1) != 0))
  {
    v28 = v152;
    v29 = *(v152 + 16);
    if (!v29)
    {
      __break(1u);
      goto LABEL_99;
    }

    OUTLINED_FUNCTION_88_1(v26, v25, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v169)
    {
      OUTLINED_FUNCTION_67_4();
      v30 = sub_1AC5CF764(0, &qword_1EB56AAD0, &off_1E797AE30);
      OUTLINED_FUNCTION_87_2(&v158, v175, v31, v30);
      if (v29 != 1)
      {
        v20 = v158;
        sub_1AC5C6EC4(v28 + 64, v163, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v164)
        {
          OUTLINED_FUNCTION_85_2();
          v32 = sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
          OUTLINED_FUNCTION_87_2(&v157, &v165, v33, v32);
          if (v29 >= 3)
          {
            a1 = v157;
            sub_1AC5C6EC4(v28 + 96, &v159, &unk_1EB56C620, &unk_1AC7A7A00);
            if (v160)
            {
              sub_1AC5C3968(&v159, &v161);
              v34 = sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
              OUTLINED_FUNCTION_87_2(&v156, &v161, v35, v34);
              if (v29 != 3)
              {
                v36 = v156;
                sub_1AC5C6EC4(v28 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
                if (v172)
                {
                  sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
                  if (swift_dynamicCast())
                  {
                    v37 = v154;
                  }

                  else
                  {
                    v37 = 0;
                  }
                }

                else
                {
                  sub_1AC641B24(&aBlock);
                  v37 = 0;
                }

                if (v29 >= 5)
                {
                  sub_1AC5C6EC4(v28 + 160, &v154, &unk_1EB56C620, &unk_1AC7A7A00);
                  if (v155)
                  {
                    sub_1AC5C3968(&v154, &aBlock);
                    v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C640, &unk_1AC7A9BE0);
                    OUTLINED_FUNCTION_87_2(&v153, &aBlock, v39, v38);
                    v40 = sub_1AC7A0148();

                    OUTLINED_FUNCTION_99();
                    v41 = swift_allocObject();
                    v43 = v149;
                    v42 = v150;
                    *(v41 + 16) = v149;
                    *(v41 + 24) = v42;
                    v173 = sub_1AC641C28;
                    v174 = v41;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    v171 = sub_1AC5C0904;
                    v172 = &block_descriptor_112;
                    v44 = _Block_copy(&aBlock);
                    sub_1AC5D9374(v43, v42);

                    v45 = OUTLINED_FUNCTION_16_3();
                    [v45 v46];

                    _Block_release(v44);
                    return;
                  }

                  goto LABEL_155;
                }

                goto LABEL_102;
              }

LABEL_101:
              __break(1u);
LABEL_102:
              __break(1u);
              goto LABEL_103;
            }

LABEL_154:
            __break(1u);
LABEL_155:
            __break(1u);
            goto LABEL_156;
          }

LABEL_100:
          __break(1u);
          goto LABEL_101;
        }

LABEL_153:
        __break(1u);
        goto LABEL_154;
      }

LABEL_99:
      __break(1u);
      goto LABEL_100;
    }

LABEL_152:
    __break(1u);
    goto LABEL_153;
  }

  OUTLINED_FUNCTION_3_4();
  v49 = v48 + 12;
  if (a1 != (v48 + 12) || v47 != a2)
  {
    v49 = OUTLINED_FUNCTION_21_3(v49, v47);
    if ((v49 & 1) == 0)
    {
      OUTLINED_FUNCTION_3_4();
      v70 = a1 == v69 && v68 == a2;
      v71 = v152;
      if (v70 || (v67 = OUTLINED_FUNCTION_21_3(0xD000000000000062, v68), (v67 & 1) != 0))
      {
        a2 = *(v71 + 16);
        if (a2)
        {
          OUTLINED_FUNCTION_88_1(v67, v68, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v169)
          {
LABEL_164:
            __break(1u);
            goto LABEL_165;
          }

          OUTLINED_FUNCTION_67_4();
          sub_1AC5CF764(0, &qword_1EB56AAD8, off_1E797ADB8);
          a1 = MEMORY[0x1E69E7CA0];
          swift_dynamicCast();
          if (a2 != 1)
          {
            v72 = v161;
            sub_1AC5C6EC4(v71 + 64, &v165, &unk_1EB56C620, &unk_1AC7A7A00);
            if (!v166)
            {
LABEL_165:
              __break(1u);
              goto LABEL_166;
            }

            sub_1AC5C3968(&v165, &aBlock);
            OUTLINED_FUNCTION_48_4();
            swift_dynamicCast();
            v73 = sub_1AC79F788();
            v148[1](v20, v16);
            if (a2 >= 3)
            {
              sub_1AC5C6EC4(v71 + 96, &v165, &unk_1EB56C620, &unk_1AC7A7A00);
              if (!v166)
              {
LABEL_166:
                __break(1u);
LABEL_167:
                __break(1u);
                goto LABEL_168;
              }

              sub_1AC5C3968(&v165, &aBlock);
              OUTLINED_FUNCTION_48_4();
              swift_dynamicCast();
              v20 = v163[1];
              v74 = sub_1AC79FF58();

              if (a2 != 3)
              {
                v148 = v72;
                sub_1AC5C6EC4(v71 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
                if (v172)
                {
                  v75 = sub_1AC79F958();
                  OUTLINED_FUNCTION_48_4();
                  v76 = swift_dynamicCast();
                  __swift_storeEnumTagSinglePayload(v15, v76 ^ 1u, 1, v75);
                  v20 = 0;
                  if (__swift_getEnumTagSinglePayload(v15, 1, v75) != 1)
                  {
                    v20 = sub_1AC79F918();
                    (*(*(v75 - 8) + 8))(v15, v75);
                  }
                }

                else
                {
                  sub_1AC641B24(&aBlock);
                  v77 = sub_1AC79F958();
                  __swift_storeEnumTagSinglePayload(v15, 1, 1, v77);
                  v20 = 0;
                }

                if (a2 >= 5)
                {
                  sub_1AC5C6EC4(v71 + 160, &v165, &unk_1EB56C620, &unk_1AC7A7A00);
                  if (v166)
                  {
                    sub_1AC5C3968(&v165, &aBlock);
                    OUTLINED_FUNCTION_48_4();
                    swift_dynamicCast();
                    v78 = sub_1AC79FF58();

                    OUTLINED_FUNCTION_99();
                    v79 = swift_allocObject();
                    v81 = v149;
                    v80 = v150;
                    *(v79 + 16) = v149;
                    *(v79 + 24) = v80;
                    v173 = sub_1AC641B94;
                    v174 = v79;
                    *&aBlock = MEMORY[0x1E69E9820];
                    *(&aBlock + 1) = 1107296256;
                    v171 = sub_1AC6418A0;
                    v172 = &block_descriptor_100;
                    v82 = _Block_copy(&aBlock);
                    sub_1AC5D9374(v81, v80);

                    v83 = v148;
                    [v151 getJitProfileData:v148 modelRoot:v73 language:v74 asrID:v20 taskName:v78 reply:v82];
                    _Block_release(v82);

                    return;
                  }

                  goto LABEL_167;
                }

                goto LABEL_133;
              }

LABEL_132:
              __break(1u);
LABEL_133:
              __break(1u);
              goto LABEL_134;
            }

LABEL_131:
            __break(1u);
            goto LABEL_132;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_131;
      }

      OUTLINED_FUNCTION_3_4();
      v86 = a1 == (v85 - 39) && v84 == a2;
      if (v86 || (OUTLINED_FUNCTION_21_3(v85 - 39, v84) & 1) != 0)
      {
        OUTLINED_FUNCTION_99();
        v87 = swift_allocObject();
        v88 = v150;
        *(v87 + 16) = v149;
        *(v87 + 24) = v88;
        OUTLINED_FUNCTION_0_4(v87);
        *(&aBlock + 1) = 1107296256;
        v171 = sub_1AC5C0904;
        v172 = &block_descriptor_94;
        _Block_copy(&aBlock);
        OUTLINED_FUNCTION_89_3();
        [v151 processStartTimeOnceWithReply_];
LABEL_69:
        v66 = v20;
        goto LABEL_42;
      }

      OUTLINED_FUNCTION_3_4();
      v91 = a1 == v90 && v89 == a2;
      if (!v91 && (OUTLINED_FUNCTION_21_3(0xD000000000000062, v89) & 1) == 0)
      {
        OUTLINED_FUNCTION_3_4();
        v104 = v103 + 11;
        v105 = a1 == (v103 + 11) && v102 == a2;
        if (v105 || (v104 = OUTLINED_FUNCTION_21_3(v104, v102), (v104 & 1) != 0))
        {
          v106 = *(v71 + 16);
          if (!v106)
          {
LABEL_156:
            __break(1u);
LABEL_157:
            __break(1u);
LABEL_158:
            __break(1u);
            goto LABEL_159;
          }

          OUTLINED_FUNCTION_88_1(v104, v102, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v169)
          {
LABEL_175:
            __break(1u);
            goto LABEL_176;
          }

          OUTLINED_FUNCTION_67_4();
          sub_1AC5CF764(0, &qword_1EB56BAD8, off_1E797ADF0);
          swift_dynamicCast();
          if (v106 == 1)
          {
            goto LABEL_157;
          }

          v20 = v161;
          sub_1AC5C6EC4(v71 + 64, v163, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v164)
          {
LABEL_176:
            __break(1u);
            goto LABEL_177;
          }

          OUTLINED_FUNCTION_85_2();
          sub_1AC5CF764(0, &qword_1EB56AB18, off_1E797ADC8);
          swift_dynamicCast();
          if (v106 < 3)
          {
            goto LABEL_158;
          }

          a1 = v159;
          sub_1AC5C6EC4(v71 + 96, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
          if (v172)
          {
            sub_1AC5CF764(0, &qword_1EB56AB68, off_1E797ADC0);
            if (swift_dynamicCast())
            {
              v107 = v154;
            }

            else
            {
              v107 = 0;
            }

            goto LABEL_104;
          }

LABEL_103:
          sub_1AC641B24(&aBlock);
          v107 = 0;
LABEL_104:
          OUTLINED_FUNCTION_99();
          v108 = swift_allocObject();
          v110 = v149;
          v109 = v150;
          *(v108 + 16) = v149;
          *(v108 + 24) = v109;
          OUTLINED_FUNCTION_0_4(v108);
          OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
          v171 = v111;
          v172 = &block_descriptor_82;
          v112 = _Block_copy(&aBlock);
          sub_1AC5D9374(v110, v109);

          v113 = OUTLINED_FUNCTION_16_3();
          [v113 v114];

          _Block_release(v112);
          return;
        }

        OUTLINED_FUNCTION_3_4();
        v117 = a1 == (v116 - 28) && v115 == a2;
        if (v117 || (OUTLINED_FUNCTION_21_3(v116 - 28, v115) & 1) != 0)
        {
          if (!*(v71 + 16))
          {
LABEL_163:
            __break(1u);
            goto LABEL_164;
          }

          sub_1AC5C6EC4(v71 + 32, v175, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v176)
          {
LABEL_177:
            __break(1u);
            goto LABEL_178;
          }

          OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_82_1();
          v118 = v168;
          v119 = sub_1AC79FF58();

          OUTLINED_FUNCTION_99();
          v120 = swift_allocObject();
          v121 = v150;
          *(v120 + 16) = v149;
          *(v120 + 24) = v121;
          v173 = sub_1AC641B1C;
          v174 = v120;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v171 = sub_1AC641A5C;
          v172 = &block_descriptor_76;
          _Block_copy(&aBlock);
          OUTLINED_FUNCTION_90_2();
          [v151 isEuclidAvailableForConfigPath:v119 reply:v118];
LABEL_113:
          _Block_release(v118);

          return;
        }

        goto LABEL_119;
      }

      v92 = *(v71 + 16);
      if (v92)
      {
        sub_1AC5C6EC4(v71 + 32, v175, &unk_1EB56C620, &unk_1AC7A7A00);
        if (!v176)
        {
LABEL_170:
          __break(1u);
          goto LABEL_171;
        }

        OUTLINED_FUNCTION_63_2();
        swift_dynamicCast();
        sub_1AC79F9F8();
        v93 = OUTLINED_FUNCTION_54_2();
        v94(v93);
        if (v92 != 1)
        {
          sub_1AC5C6EC4(v71 + 64, v175, &unk_1EB56C620, &unk_1AC7A7A00);
          if (!v176)
          {
LABEL_171:
            __break(1u);
            goto LABEL_172;
          }

          OUTLINED_FUNCTION_63_2();
          swift_dynamicCast();
          v95 = sub_1AC79FF58();

          if (v92 >= 3)
          {
            sub_1AC5C6EC4(v71 + 96, &v167, &unk_1EB56C620, &unk_1AC7A7A00);
            if (!v169)
            {
LABEL_172:
              __break(1u);
              goto LABEL_173;
            }

            OUTLINED_FUNCTION_67_4();
            type metadata accessor for EAREuclidEncoderType(0);
            swift_dynamicCast();
            if (v92 != 3)
            {
              sub_1AC5C6EC4(v71 + 128, v163, &unk_1EB56C620, &unk_1AC7A7A00);
              if (!v164)
              {
LABEL_173:
                __break(1u);
                goto LABEL_174;
              }

              OUTLINED_FUNCTION_85_2();
              type metadata accessor for EAREuclidInitFlag(0);
              swift_dynamicCast();
              OUTLINED_FUNCTION_99();
              v96 = swift_allocObject();
              v98 = v149;
              v97 = v150;
              *(v96 + 16) = v149;
              *(v96 + 24) = v97;
              OUTLINED_FUNCTION_0_4(v96);
              OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
              v171 = v99;
              v172 = &block_descriptor_88;
              v65 = _Block_copy(&aBlock);
              sub_1AC5D9374(v98, v97);

              v100 = OUTLINED_FUNCTION_16_3();
              [v100 v101];

LABEL_41:
              v66 = v65;
LABEL_42:
              _Block_release(v66);
              return;
            }

LABEL_151:
            __break(1u);
            goto LABEL_152;
          }

LABEL_150:
          __break(1u);
          goto LABEL_151;
        }
      }

      else
      {
        __break(1u);
      }

      __break(1u);
      goto LABEL_150;
    }
  }

  v51 = v152;
  v52 = *(v152 + 16);
  if (!v52)
  {
    __break(1u);
LABEL_115:
    __break(1u);
LABEL_116:
    __break(1u);
    goto LABEL_117;
  }

  OUTLINED_FUNCTION_88_1(v49, v47, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v169)
  {
LABEL_159:
    __break(1u);
    goto LABEL_160;
  }

  OUTLINED_FUNCTION_67_4();
  v53 = sub_1AC5CF764(0, &qword_1EB56AB20, off_1E797ACC0);
  a2 = MEMORY[0x1E69E7CA0];
  OUTLINED_FUNCTION_84_0(&v154, v175, v54, v53);
  if (v52 == 1)
  {
    goto LABEL_115;
  }

  a1 = v154;
  sub_1AC5C6EC4(v51 + 64, v163, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v164)
  {
LABEL_160:
    __break(1u);
    goto LABEL_161;
  }

  OUTLINED_FUNCTION_85_2();
  OUTLINED_FUNCTION_84_0(&v158, &v165, v55, MEMORY[0x1E69E6370]);
  if (v52 < 3)
  {
    goto LABEL_116;
  }

  v11 = v158;
  sub_1AC5C6EC4(v51 + 96, &v161, &unk_1EB56C620, &unk_1AC7A7A00);
  if (!v162)
  {
LABEL_161:
    __break(1u);
    goto LABEL_162;
  }

  sub_1AC5C3968(&v161, &aBlock);
  OUTLINED_FUNCTION_84_0(&v159, &aBlock, v56, MEMORY[0x1E69E6158]);
  v20 = *(&v159 + 1);
  v57 = sub_1AC79FF58();

  if (v52 != 3)
  {
    sub_1AC5C6EC4(v51 + 128, &aBlock, &unk_1EB56C620, &unk_1AC7A7A00);
    if (v172)
    {
      v58 = swift_dynamicCast();
      __swift_storeEnumTagSinglePayload(v24, v58 ^ 1u, 1, v16);
      if (__swift_getEnumTagSinglePayload(v24, 1, v16) != 1)
      {
        v20 = sub_1AC79F788();
        v148[1](v24, v16);
        goto LABEL_38;
      }
    }

    else
    {
      sub_1AC641B24(&aBlock);
      __swift_storeEnumTagSinglePayload(v24, 1, 1, v16);
    }

    v20 = 0;
LABEL_38:
    if (v52 >= 5)
    {
      sub_1AC5C6EC4(v51 + 160, &v159, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v160)
      {
LABEL_162:
        __break(1u);
        goto LABEL_163;
      }

      sub_1AC5C3968(&v159, &v161);
      OUTLINED_FUNCTION_84_0(&v157, &v161, v59, MEMORY[0x1E69E6370]);
      v60 = v157;
      OUTLINED_FUNCTION_99();
      v61 = swift_allocObject();
      v63 = v149;
      v62 = v150;
      *(v61 + 16) = v149;
      *(v61 + 24) = v62;
      OUTLINED_FUNCTION_0_4(v61);
      OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
      v171 = v64;
      v172 = &block_descriptor_106;
      v65 = _Block_copy(&aBlock);
      sub_1AC5D9374(v63, v62);

      [v151 makeLSRAssetsForAssetConfig:a1 shouldSubscribe:v11 clientID:v57 modelOverridePath:v20 isSpelling:v60 reply:v65];

      goto LABEL_41;
    }

    goto LABEL_118;
  }

LABEL_117:
  __break(1u);
LABEL_118:
  __break(1u);
LABEL_119:
  OUTLINED_FUNCTION_3_4();
  v124 = a1 == (v123 - 7) && v122 == a2;
  if (v124 || (OUTLINED_FUNCTION_21_3(v123 - 7, v122) & 1) != 0)
  {
    v125 = *(v152 + 16);
    if (v125)
    {
      sub_1AC5C6EC4(v152 + 32, v175, &unk_1EB56C620, &unk_1AC7A7A00);
      if (!v176)
      {
LABEL_178:
        __break(1u);
LABEL_179:
        __break(1u);
        goto LABEL_180;
      }

      OUTLINED_FUNCTION_63_2();
      OUTLINED_FUNCTION_48_4();
      swift_dynamicCast();
      v126 = v11;
      sub_1AC79F9F8();
      v127 = OUTLINED_FUNCTION_54_2();
      v128(v127);
      if (v125 != 1)
      {
        sub_1AC5C6EC4(v152 + 64, v175, &unk_1EB56C620, &unk_1AC7A7A00);
        if (v176)
        {
          OUTLINED_FUNCTION_63_2();
          OUTLINED_FUNCTION_48_4();
          swift_dynamicCast();
          v129 = sub_1AC79FF58();

          OUTLINED_FUNCTION_99();
          v130 = swift_allocObject();
          v132 = v149;
          v131 = v150;
          *(v130 + 16) = v149;
          *(v130 + 24) = v131;
          v173 = sub_1AC641C28;
          v174 = v130;
          *&aBlock = MEMORY[0x1E69E9820];
          *(&aBlock + 1) = 1107296256;
          v171 = sub_1AC5C0904;
          v172 = &block_descriptor_70;
          v133 = _Block_copy(&aBlock);
          sub_1AC5D9374(v132, v131);

          v134 = OUTLINED_FUNCTION_16_3();
          [v134 v135];
          _Block_release(v133);

          return;
        }

        goto LABEL_179;
      }

      goto LABEL_169;
    }

LABEL_168:
    __break(1u);
LABEL_169:
    __break(1u);
    goto LABEL_170;
  }

LABEL_134:
  OUTLINED_FUNCTION_3_4();
  v138 = a1 == (v137 - 33) && v136 == a2;
  if (v138 || (OUTLINED_FUNCTION_21_3(v137 - 33, v136) & 1) != 0)
  {
    OUTLINED_FUNCTION_99();
    v139 = swift_allocObject();
    v140 = v150;
    *(v139 + 16) = v149;
    *(v139 + 24) = v140;
    OUTLINED_FUNCTION_0_4(v139);
    OUTLINED_FUNCTION_1_5(COERCE_DOUBLE(1107296256));
    v171 = v141;
    v172 = &block_descriptor_64;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_89_3();
    [v151 makeTranscriptionEvaluatorWithReply_];
    goto LABEL_69;
  }

  OUTLINED_FUNCTION_3_4();
  v144 = a1 == (v143 - 29) && v142 == a2;
  if (v144 || (OUTLINED_FUNCTION_21_3(v143 - 29, v142) & 1) != 0)
  {
    if (!*(v152 + 16))
    {
LABEL_174:
      __break(1u);
      goto LABEL_175;
    }

    sub_1AC5C6EC4(v152 + 32, v175, &unk_1EB56C620, &unk_1AC7A7A00);
    if (!v176)
    {
LABEL_180:
      __break(1u);
      return;
    }

    OUTLINED_FUNCTION_63_2();
    OUTLINED_FUNCTION_82_1();
    v118 = v168;
    v119 = sub_1AC79FF58();

    OUTLINED_FUNCTION_99();
    v145 = swift_allocObject();
    v146 = v150;
    *(v145 + 16) = v149;
    *(v145 + 24) = v146;
    v173 = sub_1AC641C28;
    v174 = v145;
    *&aBlock = MEMORY[0x1E69E9820];
    *(&aBlock + 1) = 1107296256;
    v171 = sub_1AC5C0904;
    v172 = &block_descriptor_1;
    _Block_copy(&aBlock);
    OUTLINED_FUNCTION_90_2();
    [v151 makeLSRAssetInventoryForBundleId:v119 reply:v118];
    goto LABEL_113;
  }
}

id sub_1AC6417B4(id result, unint64_t a2, id a3, void (*a4)(void *))
{
  v6 = result;
  v7 = a2 >> 60;
  v8 = result;
  v9 = a2;
  if (a2 >> 60 == 15)
  {
    if (!a3)
    {
      goto LABEL_7;
    }

    result = a3;
    v9 = 0;
    v8 = a3;
  }

  if (a4)
  {
    v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C588, &qword_1AC7A9B00);
    v11[0] = v8;
    v11[1] = v9;
    v12 = v7 > 0xE;
    sub_1AC641BD8(v6, a2);
    sub_1AC641BEC(v8, v9, v7 > 0xE);
    a4(v11);
    sub_1AC641BF8(v8, v9, v7 > 0xE);
    return sub_1AC641B24(v11);
  }

  __break(1u);
LABEL_7:
  __break(1u);
  return result;
}

uint64_t sub_1AC6418A0(uint64_t a1, void *a2, void *a3)
{
  v4 = a2;
  v5 = *(a1 + 32);
  if (a2)
  {

    v6 = v4;
    v4 = sub_1AC79F868();
    v8 = v7;
  }

  else
  {

    v8 = 0xF000000000000000;
  }

  v9 = a3;
  v5(v4, v8, a3);

  sub_1AC604184(v4, v8);
}

id sub_1AC64194C(id result, uint64_t a2, void (*a3)(id *))
{
  if (result)
  {
    result = [result unsignedLongLongValue];
    if (a3)
    {
      v4 = result;
      v5 = 0;
LABEL_6:
      v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C590, &qword_1AC7A9B08);
      v6 = v4;
      v7 = v5;
      v8 = 0;
      a3(&v6);
      return sub_1AC641B24(&v6);
    }
  }

  else if (a3)
  {
    v4 = 0;
    v5 = 1;
    goto LABEL_6;
  }

  __break(1u);
  return result;
}

uint64_t sub_1AC6419E8(uint64_t result, uint64_t a2, void (*a3)(uint64_t *))
{
  if (a3)
  {
    v4 = result & 1;
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EB56C598, &qword_1AC7A9B10);
    v5 = v4;
    v6 = 0;
    a3(&v5);
    return sub_1AC641B24(&v5);
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1AC641A5C(uint64_t a1, uint64_t a2, void *a3)
{
  v5 = *(a1 + 32);

  v6 = a3;
  v5(a2, a3);
}

uint64_t sub_1AC641AD4(unint64_t *a1, uint64_t a2, void (*a3)(uint64_t), uint64_t a4)
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

uint64_t sub_1AC641B24(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EB56C620, &unk_1AC7A7A00);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t objectdestroyTm()
{
  if (*(v0 + 16))
  {
  }

  OUTLINED_FUNCTION_99();

  return MEMORY[0x1EEE6BDD0](v1, v2, v3);
}

uint64_t sub_1AC641BD8(uint64_t result, unint64_t a2)
{
  if (a2 >> 60 != 15)
  {
    return sub_1AC5CFBB8(result, a2);
  }

  return result;
}

id sub_1AC641BEC(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
    return a1;
  }

  else
  {
    return sub_1AC5CFBB8(a1, a2);
  }
}

void sub_1AC641BF8(id a1, unint64_t a2, char a3)
{
  if (a3)
  {
  }

  else
  {
    sub_1AC5C28A8(a1, a2);
  }
}

uint64_t OUTLINED_FUNCTION_4_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{

  return sub_1AC7A0B78();
}

uint64_t OUTLINED_FUNCTION_32_1()
{

  return sub_1AC79FC98();
}

_OWORD *OUTLINED_FUNCTION_63_2()
{

  return sub_1AC5C3968((v0 - 120), (v0 - 168));
}

uint64_t OUTLINED_FUNCTION_66_2@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  *a2 = a1;
}

uint64_t OUTLINED_FUNCTION_82_1()
{

  return swift_dynamicCast();
}

uint64_t OUTLINED_FUNCTION_86_3(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{

  return sub_1AC79FC98();
}

uint64_t OUTLINED_FUNCTION_89_3()
{
  sub_1AC5D9374(v1, v0);
}

id sub_1AC641E94(uint64_t a1, void *a2, SEL *a3, void *a4)
{
  result = [objc_opt_self() *a3];
  *a4 = result;
  return result;
}

uint64_t sub_1AC641ED4(uint64_t a1, uint64_t a2)
{
  if (qword_1EB56AF70 != -1)
  {
LABEL_41:
    swift_once();
  }

  v4 = 0;
  v5 = qword_1EB56E6C0;
  v6 = 1 << *(qword_1EB56E6C0 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = qword_1EB56E6C0 + 56;
  v9 = v7 & *(qword_1EB56E6C0 + 56);
  v10 = (v6 + 63) >> 6;
  do
  {
    if (!v9)
    {
      while (1)
      {
        v11 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          break;
        }

        if (v11 >= v10)
        {
          v14 = 0;
          goto LABEL_17;
        }

        v9 = *(v8 + 8 * v11);
        ++v4;
        if (v9)
        {
          v4 = v11;
          goto LABEL_10;
        }
      }

      __break(1u);
LABEL_40:
      __break(1u);
      goto LABEL_41;
    }

LABEL_10:
    v12 = (*(v5 + 48) + ((v4 << 10) | (16 * __clz(__rbit64(v9)))));
    if (*v12 == a1 && v12[1] == a2)
    {
      break;
    }

    v9 &= v9 - 1;
  }

  while ((sub_1AC7A0D38() & 1) == 0);
  v14 = 1;
LABEL_17:
  if (qword_1EB56AF68 != -1)
  {
    swift_once();
  }

  v15 = 0;
  v16 = qword_1EB56E6B8;
  v17 = 1 << *(qword_1EB56E6B8 + 32);
  v18 = -1;
  if (v17 < 64)
  {
    v18 = ~(-1 << v17);
  }

  v19 = qword_1EB56E6B8 + 56;
  v20 = v18 & *(qword_1EB56E6B8 + 56);
  v21 = (v17 + 63) >> 6;
  do
  {
    if (!v20)
    {
      while (1)
      {
        v22 = v15 + 1;
        if (__OFADD__(v15, 1))
        {
          goto LABEL_40;
        }

        if (v22 >= v21)
        {
          v25 = 0;
          goto LABEL_34;
        }

        v20 = *(v19 + 8 * v22);
        ++v15;
        if (v20)
        {
          v15 = v22;
          break;
        }
      }
    }

    v23 = (*(v16 + 48) + ((v15 << 10) | (16 * __clz(__rbit64(v20)))));
    if (*v23 == a1 && v23[1] == a2)
    {
      break;
    }

    v20 &= v20 - 1;
  }

  while ((sub_1AC7A0D38() & 1) == 0);
  v25 = 1;
LABEL_34:
  v26 = objc_opt_self();
  v27 = [v26 sharedPreferences];
  v28 = [v27 isDictationHIPAACompliant];

  v29 = [v26 sharedPreferences];
  v30 = [v29 siriDataSharingOptInStatus];

  if (v14)
  {
    return 1;
  }

  if (v30 == 1)
  {
    return v25 & ~v28;
  }

  return 0;
}

unint64_t sub_1AC642158(double a1)
{
  v1 = a1 * 1000000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

unint64_t sub_1AC6421A8(double a1)
{
  v1 = a1 * 1000000.0;
  if ((*&v1 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v1 <= -1.0)
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  if (v1 < 1.84467441e19)
  {
    return v1;
  }

LABEL_7:
  __break(1u);
  return result;
}

BOOL sub_1AC6421F8(uint64_t a1)
{
  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  if (swift_dynamicCastObjCClass())
  {
    return 1;
  }

  objc_opt_self();
  return swift_dynamicCastObjCClass() != 0;
}

uint64_t sub_1AC6424A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a3)
  {
    type metadata accessor for SelfLoggingHelper();
    LOBYTE(a1) = sub_1AC6421F8(a1);
    v6 = (a1 | sub_1AC641ED4(a2, a3)) ^ 1;
  }

  else
  {
    v6 = 1;
  }

  return v6 & 1;
}

void sub_1AC642510(int a1, uint64_t a2, uint64_t a3, void *a4)
{
  v52 = a4;
  v55 = a1;
  v60 = a3;
  v61 = MEMORY[0x1E69E7CC0];
  v57 = a2 & 0xC000000000000001;
  v58 = sub_1AC61C24C();
  v56 = a2 & 0xFFFFFFFFFFFFFF8;
  v54 = a3;

  v7 = 0;
  v53 = 0;
  v8 = &selRef_initWithText_confidence_startTime_duration_;
  while (v58 != v7)
  {
    if (v57)
    {
      v9 = MEMORY[0x1B26E95B0](v7, a2);
    }

    else
    {
      if (v7 >= *(v56 + 16))
      {
        goto LABEL_43;
      }

      v9 = *(a2 + 8 * v7 + 32);
    }

    v4 = v9;
    v10 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
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
      swift_once();
LABEL_39:
      v47 = sub_1AC79FDE8();
      __swift_project_value_buffer(v47, qword_1ED9386C8);
      v48 = sub_1AC79FDC8();
      v49 = sub_1AC7A05F8();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_1AC5BC000, v48, v49, "SELF: Failed to initialize ASRSchemaASRToken", v50, 2u);
        MEMORY[0x1B26EAB10](v50, -1, -1);
      }

      return;
    }

    v11 = [objc_allocWithZone(MEMORY[0x1E69CE8B0]) v8[316]];
    if (!v11)
    {

      if (off_1ED937D60 != -1)
      {
        goto LABEL_47;
      }

      goto LABEL_39;
    }

    v12 = v11;
    [v4 start];
    [v12 setStartTimeInNs_];
    [v4 end];
    [v12 setEndTimeInNs_];
    [v12 setAppendSpaceAfter_];
    [v4 silenceStart];
    [v12 setSilenceStartTimeInNs_];
    [v4 confidence];
    if ((*&v16 & 0x7FFFFFFFFFFFFFFFuLL) > 0x7FEFFFFFFFFFFFFFLL)
    {
      goto LABEL_44;
    }

    if (v16 <= -2147483650.0)
    {
      goto LABEL_45;
    }

    if (v16 >= 2147483650.0)
    {
      goto LABEL_46;
    }

    [v12 setConfidence_];
    if ([v4 appendedAutoPunctuation])
    {
      v17 = 1;
    }

    else
    {
      v17 = [v4 prependedAutoPunctuation];
    }

    [v12 setIsAutoPunctuation_];
    [v12 setIsModifiedByAutoPunctuation_];
    if ((v55 & 1) == 0)
    {
      v18 = v8;
      goto LABEL_33;
    }

    v18 = v8;
    v19 = [objc_allocWithZone(MEMORY[0x1E69CE8B8]) v8[316]];
    if (v19)
    {
      v20 = v19;
      if (v52)
      {
        v21 = v52;
        v22 = [v4 tokenName];
        if (!v22)
        {
          sub_1AC79FF68();
          v22 = sub_1AC79FF58();
        }

        v23 = [v21 baseStringForEmojiString_];

        v24 = sub_1AC79FF68();
        v26 = v25;

        sub_1AC649A3C(v24, v26, v20, &selRef_setText_);
      }

      else
      {
        v27 = [v4 tokenName];
        v28 = sub_1AC79FF68();
        v30 = v29;

        sub_1AC649A3C(v28, v30, v20, &selRef_setText_);
      }

      v31 = [v4 phoneSequence];
      v32 = sub_1AC79FF68();
      v34 = v33;

      sub_1AC649A3C(v32, v34, v20, &selRef_setPhoneSequence_);
      v35 = [v4 ipaPhoneSequence];
      v36 = sub_1AC79FF68();
      v38 = v37;

      sub_1AC649A3C(v36, v38, v20, &selRef_setIpaPhoneSequence_);
      v59 = v20;
      MEMORY[0x1EEE9AC00](v39);
      v51[2] = &v59;
      v40 = v53;
      v41 = v54;
      sub_1AC6F493C(sub_1AC649D2C, v51, v54);
      v53 = v40;
      if (v42)
      {
        sub_1AC642B94(v20, v41);
        if (v44)
        {
          goto LABEL_52;
        }

        if ((v43 & 0x8000000000000000) != 0)
        {
          goto LABEL_49;
        }

        if (HIDWORD(v43))
        {
          goto LABEL_51;
        }

        [v12 setLinkIndex_];
      }

      else
      {
        v45 = sub_1AC61C24C();
        if ((v45 & 0x8000000000000000) != 0)
        {
          __break(1u);
LABEL_49:
          __break(1u);
LABEL_50:
          __break(1u);
LABEL_51:
          __break(1u);
LABEL_52:
          __break(1u);
          return;
        }

        if (HIDWORD(v45))
        {
          goto LABEL_50;
        }

        MEMORY[0x1B26E8CF0]([v12 setLinkIndex_]);
        if (*((v60 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v60 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          sub_1AC7A0178();
        }

        sub_1AC7A0198();
        v54 = v60;
      }

LABEL_33:
      v46 = v12;
      MEMORY[0x1B26E8CF0]();
      if (*((v61 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v61 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1AC7A0178();
      }

      sub_1AC7A0198();

      v7 = v10;
      v8 = v18;
    }

    else
    {

      ++v7;
    }
  }
}