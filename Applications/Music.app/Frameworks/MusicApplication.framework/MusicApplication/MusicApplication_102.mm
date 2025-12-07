uint64_t sub_930CA4()
{

  return swift_deallocObject();
}

uint64_t sub_930CE4()
{

  return swift_deallocObject();
}

void *sub_930D44(uint64_t a1, void (*a2)(_OWORD *__return_ptr, id, uint64_t, uint64_t), uint64_t a3, void *a4)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22588, &qword_B397B8);
  result = sub_ABB090();
  v6 = 0;
  v35 = result;
  v36 = a1;
  v9 = *(a1 + 64);
  v8 = a1 + 64;
  v7 = v9;
  v10 = 1 << *(v8 - 32);
  v11 = -1;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  v12 = v11 & v7;
  v13 = (v10 + 63) >> 6;
  v34 = result + 8;
  if (v12)
  {
    while (1)
    {
      v14 = __clz(__rbit64(v12));
      v39 = (v12 - 1) & v12;
LABEL_10:
      v17 = v14 | (v6 << 6);
      v18 = *(v36 + 56);
      v19 = (*(v36 + 48) + 16 * v17);
      v20 = v19[1];
      v42 = *v19;
      v21 = *(v18 + 8 * v17);

      v22 = v21;
      v23 = [a4 language];
      v24 = sub_AB92A0();
      v26 = v25;

      a2(v40, v22, v24, v26);

      result = v35;
      *(v34 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
      v27 = (v35[6] + 16 * v17);
      *v27 = v42;
      v27[1] = v20;
      v28 = v35[7] + 88 * v17;
      v29 = v40[1];
      *v28 = v40[0];
      *(v28 + 16) = v29;
      *(v28 + 80) = v41;
      v30 = v40[4];
      *(v28 + 48) = v40[3];
      *(v28 + 64) = v30;
      *(v28 + 32) = v40[2];
      v31 = v35[2];
      v32 = __OFADD__(v31, 1);
      v33 = v31 + 1;
      if (v32)
      {
        break;
      }

      v35[2] = v33;
      v12 = v39;
      if (!v39)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v15 = v6;
    while (1)
    {
      v6 = v15 + 1;
      if (__OFADD__(v15, 1))
      {
        break;
      }

      if (v6 >= v13)
      {
        return result;
      }

      v16 = *(v8 + 8 * v6);
      ++v15;
      if (v16)
      {
        v14 = __clz(__rbit64(v16));
        v39 = (v16 - 1) & v16;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_930F54(uint64_t a1)
{
  v2 = a1 & 0xC000000000000001;
  v95 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    if (sub_ABAC50() > 1)
    {
      v93 = v2;
      v90 = 0;
      v3 = &_swiftEmptySetSingleton;
      v103 = &_swiftEmptySetSingleton;

      sub_ABAC10();
      v4 = sub_ABAC90();
      if (v4)
      {
        v5 = v4;
        sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
        v6 = v5;
        v7 = 0x6E6F73726570;
        do
        {
          v97 = v6;
          swift_dynamicCast();
          v8 = [v98 type];
          if (!v8)
          {
LABEL_5:

            goto LABEL_6;
          }

          v9 = v8;
          v10 = sub_AB92A0();
          v12 = v11;

          if (v10 == 0x6E6F73726570 && v12 == 0xE600000000000000)
          {
          }

          else
          {
            v14 = sub_ABB3C0();

            if ((v14 & 1) == 0)
            {
              goto LABEL_5;
            }
          }

          v15 = v98;
          v16 = *(v3 + 16);
          if (*(v3 + 24) <= v16)
          {
            sub_937174(v16 + 1);
          }

          v3 = v103;
          v17 = sub_ABA780(v103[5]);
          v18 = (v103 + 7);
          v19 = -1 << *(v103 + 32);
          v20 = v17 & ~v19;
          v21 = v20 >> 6;
          if (((-1 << v20) & ~v103[(v20 >> 6) + 7]) != 0)
          {
            v22 = __clz(__rbit64((-1 << v20) & ~v103[(v20 >> 6) + 7])) | v20 & 0x7FFFFFFFFFFFFFC0;
            goto LABEL_27;
          }

          v23 = 0;
          v24 = (63 - v19) >> 6;
          do
          {
            if (++v21 == v24 && (v23 & 1) != 0)
            {
              __break(1u);
LABEL_127:
              __break(1u);
              goto LABEL_128;
            }

            v25 = v21 == v24;
            if (v21 == v24)
            {
              v21 = 0;
            }

            v23 |= v25;
            v26 = *&v18[8 * v21];
          }

          while (v26 == -1);
          v22 = __clz(__rbit64(~v26)) + (v21 << 6);
LABEL_27:
          *&v18[(v22 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v22;
          *(*(v3 + 48) + 8 * v22) = v15;
          ++*(v3 + 16);
LABEL_6:
          v6 = sub_ABAC90();
        }

        while (v6);
      }

      v38 = v95;
      if ((v3 & 0xC000000000000001) == 0)
      {
        goto LABEL_56;
      }

LABEL_35:
      v91 = sub_ABAC50();
      goto LABEL_57;
    }

    return 0;
  }

  if (*(a1 + 16) <= 1uLL)
  {
    return 0;
  }

  v93 = 0;
  v90 = 0;
  v27 = *(a1 + 32);
  v28 = v27 & 0x3F;
  v91 = ((1 << v27) + 63) >> 6;
  v15 = 8 * v91;

  v29 = v28 > 0xD;
  v7 = a1;
  if (v29)
  {
    goto LABEL_130;
  }

LABEL_30:
  v89 = &v89;
  __chkstk_darwin();
  v92 = &v89 - ((v15 + 15) & 0x3FFFFFFFFFFFFFF0);
  bzero(v92, v15);
  v94 = 0;
  v30 = 0;
  v32 = *(v7 + 56);
  v7 += 56;
  v31 = v32;
  v33 = 1 << *(v7 - 24);
  v34 = -1;
  if (v33 < 64)
  {
    v34 = ~(-1 << v33);
  }

  v35 = v34 & v31;
  v36 = (v33 + 63) >> 6;
  do
  {
    do
    {
      while (1)
      {
        if (!v35)
        {
          v40 = v30;
          while (1)
          {
            v30 = v40 + 1;
            if (__OFADD__(v40, 1))
            {
              goto LABEL_129;
            }

            if (v30 >= v36)
            {
              goto LABEL_55;
            }

            v41 = *(v7 + 8 * v30);
            ++v40;
            if (v41)
            {
              v39 = __clz(__rbit64(v41));
              v35 = (v41 - 1) & v41;
              goto LABEL_44;
            }
          }
        }

        v39 = __clz(__rbit64(v35));
        v35 &= v35 - 1;
LABEL_44:
        v42 = v39 | (v30 << 6);
        v15 = *(*(v95 + 48) + 8 * v42);
        v43 = [v15 type];
        if (v43)
        {
          break;
        }
      }

      v44 = v43;
      v45 = sub_AB92A0();
      v47 = v46;

      if (v45 == 0x6E6F73726570 && v47 == 0xE600000000000000)
      {

        break;
      }

      v49 = sub_ABB3C0();
    }

    while ((v49 & 1) == 0);
    *&v92[(v42 >> 3) & 0x1FFFFFFFFFFFFFF8] |= 1 << v42;
  }

  while (!__OFADD__(v94++, 1));
  __break(1u);
LABEL_55:
  v38 = v95;
  v3 = sub_94DE1C(v92, v91, v94, v95);
  if ((v3 & 0xC000000000000001) != 0)
  {
    goto LABEL_35;
  }

LABEL_56:
  while (2)
  {
    v91 = *(v3 + 16);
LABEL_57:

    if (v93)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
      sub_933CF4();
      sub_AB9BC0();
      v38 = v98;
      v94 = v99;
      v15 = v100;
      v7 = v101;
      v51 = v102;
    }

    else
    {
      v52 = -1 << *(v38 + 32);
      v53 = *(v38 + 56);
      v94 = v38 + 56;
      v15 = ~v52;
      v54 = -v52;
      if (v54 < 64)
      {
        v55 = ~(-1 << v54);
      }

      else
      {
        v55 = -1;
      }

      v51 = v55 & v53;

      v7 = 0;
    }

    v92 = v15;
    v56 = (v15 + 64) >> 6;
    while (1)
    {
      while (1)
      {
        if (v38 < 0)
        {
          v60 = sub_ABAC90();
          if (!v60 || (v97 = v60, sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr), swift_dynamicCast(), (v59 = v103) == 0))
          {
LABEL_81:
            sub_2BB88(v38);
            LODWORD(v92) = 1;
            goto LABEL_82;
          }
        }

        else
        {
          v57 = v7;
          for (i = v51; !i; ++v57)
          {
            v7 = v57 + 1;
            if (__OFADD__(v57, 1))
            {
              goto LABEL_127;
            }

            if (v7 >= v56)
            {
              goto LABEL_81;
            }

            i = *(v94 + 8 * v7);
          }

          v51 = (i - 1) & i;
          v59 = *(*(v38 + 48) + ((v7 << 9) | (8 * __clz(__rbit64(i)))));
          if (!v59)
          {
            goto LABEL_81;
          }
        }

        v61 = [v59 type];
        if (v61)
        {
          break;
        }
      }

      v62 = v61;
      v63 = v38;
      v15 = sub_AB92A0();
      v65 = v64;

      if (v15 == 0x70756F7267 && v65 == 0xE500000000000000)
      {
        break;
      }

      v15 = sub_ABB3C0();

      v38 = v63;
      if (v15)
      {
        goto LABEL_118;
      }
    }

    v38 = v63;
LABEL_118:
    sub_2BB88(v38);
    LODWORD(v92) = 0;
LABEL_82:
    v67 = v95;
    if (v93)
    {
      swift_unknownObjectRetain();
      sub_ABAC10();
      sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
      sub_933CF4();
      sub_AB9BC0();
      v67 = v103;
      v94 = v104;
      v7 = v105;
      v68 = v106;
      v69 = v107;
    }

    else
    {
      v70 = -1 << *(v95 + 32);
      v71 = *(v95 + 56);
      v94 = v95 + 56;
      v7 = ~v70;
      v72 = -v70;
      if (v72 < 64)
      {
        v73 = ~(-1 << v72);
      }

      else
      {
        v73 = -1;
      }

      v69 = v73 & v71;

      v68 = 0;
    }

    v95 = v7;
    v74 = (v7 + 64) >> 6;
LABEL_90:
    if (v67 < 0)
    {
      v78 = sub_ABAC90();
      if (!v78 || (v96 = v78, sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr), swift_dynamicCast(), (v77 = v97) == 0))
      {
LABEL_106:
        sub_2BB88(v67);
        if (v91 == 2)
        {
          v85 = 1;
        }

        else
        {
          v85 = 2;
        }

        if (v91 == 1)
        {
          v85 = 0;
        }

        if (v91 >= 3)
        {
          v86 = 2;
        }

        else
        {
          v86 = 0x10000u >> (8 * v91);
        }

        if (v92)
        {
          return v85;
        }

        else
        {
          return v86;
        }
      }
    }

    else
    {
      v75 = v68;
      v76 = v69;
      if (!v69)
      {
        while (1)
        {
          v68 = v75 + 1;
          if (__OFADD__(v75, 1))
          {
            break;
          }

          if (v68 >= v74)
          {
            goto LABEL_106;
          }

          v76 = *(v94 + 8 * v68);
          ++v75;
          if (v76)
          {
            goto LABEL_95;
          }
        }

LABEL_128:
        __break(1u);
LABEL_129:
        __break(1u);
LABEL_130:
        if ((swift_stdlib_isStackAllocationSafe() & 1) == 0)
        {
          v87 = swift_slowAlloc();
          v88 = v90;
          v3 = sub_92C50C(v87, v91, v7, sub_925464);
          v90 = v88;

          v38 = v7;
          if ((v3 & 0xC000000000000001) == 0)
          {
            continue;
          }

          goto LABEL_35;
        }

        goto LABEL_30;
      }

LABEL_95:
      v69 = (v76 - 1) & v76;
      v77 = *(*(v67 + 48) + ((v68 << 9) | (8 * __clz(__rbit64(v76)))));
      if (!v77)
      {
        goto LABEL_106;
      }
    }

    break;
  }

  v79 = [v77 type];
  if (!v79)
  {

    goto LABEL_90;
  }

  v80 = v79;
  v7 = v67;
  v81 = sub_AB92A0();
  v83 = v82;

  if (v81 != 0x726568746FLL || v83 != 0xE500000000000000)
  {
    v15 = sub_ABB3C0();

    v67 = v7;
    if (v15)
    {
      goto LABEL_120;
    }

    goto LABEL_90;
  }

  v67 = v7;
LABEL_120:
  sub_2BB88(v67);
  if (v92)
  {
    if (v91 >= 3)
    {
      return 2;
    }

    else
    {
      return 0x10200u >> (8 * v91);
    }
  }

  else if (v91 == 2)
  {
    return 1;
  }

  else
  {
    return 2;
  }
}

uint64_t sub_9319C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_931A30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_931A90()
{

  return swift_deallocObject();
}

_BYTE **sub_931BD4(_BYTE **result)
{
  v2 = *result;
  *v2 = *(v1 + 16);
  *result = v2 + 1;
  return result;
}

uint64_t sub_931C14()
{

  return swift_deallocObject();
}

void sub_931C5C(unint64_t **a1, uint64_t a2, uint64_t *a3)
{
  v6 = (*(v3 + 16))(a1, a2);
  v8 = sub_927078(v6, v7, a3);

  v9 = *a1;
  *v9 = v8;
  *a1 = v9 + 1;
}

uint64_t sub_931CB8(void *a1)
{
  v1 = a1[2];
  if (v1)
  {
    v4 = a1[4];
    v3 = a1[5];

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_AF4EC0;
    *(v5 + 56) = &type metadata for String;
    *(v5 + 32) = v4;
    *(v5 + 40) = v3;

    sub_ABACC0();

    v6 = v1 - 1;
    if (v1 != 1)
    {
      v7 = a1 + 7;
      do
      {
        v9 = *(v7 - 1);
        v8 = *v7;

        v12._countAndFlagsBits = 8236;
        v12._object = 0xE200000000000000;
        sub_AB94A0(v12);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
        v10 = swift_allocObject();
        *(v10 + 16) = xmmword_AF4EC0;
        *(v10 + 56) = &type metadata for String;
        *(v10 + 32) = v9;
        *(v10 + 40) = v8;

        sub_ABACC0();

        v7 += 2;
        --v6;
      }

      while (v6);
    }
  }

  v13._countAndFlagsBits = 93;
  v13._object = 0xE100000000000000;
  sub_AB94A0(v13);
  return 91;
}

uint64_t sub_931E7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_931F14()
{
  result = qword_E21F28;
  if (!qword_E21F28)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F28);
  }

  return result;
}

unint64_t sub_931F68()
{
  result = qword_E21F38;
  if (!qword_E21F38)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F38);
  }

  return result;
}

unint64_t sub_931FC0()
{
  result = qword_E21F60;
  if (!qword_E21F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F60);
  }

  return result;
}

unint64_t sub_932018()
{
  result = qword_E21F68;
  if (!qword_E21F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F68);
  }

  return result;
}

unint64_t sub_932070()
{
  result = qword_E21F70;
  if (!qword_E21F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F70);
  }

  return result;
}

uint64_t sub_93210C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_932158()
{
  result = qword_E21F80;
  if (!qword_E21F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F80);
  }

  return result;
}

unint64_t sub_9321B0()
{
  result = qword_E21F88;
  if (!qword_E21F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F88);
  }

  return result;
}

unint64_t sub_932208()
{
  result = qword_E21F90;
  if (!qword_E21F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F90);
  }

  return result;
}

unint64_t sub_932260()
{
  result = qword_E21F98;
  if (!qword_E21F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21F98);
  }

  return result;
}

unint64_t sub_9322B8()
{
  result = qword_E21FA0;
  if (!qword_E21FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21FA0);
  }

  return result;
}

unint64_t sub_932310()
{
  result = qword_E21FA8;
  if (!qword_E21FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21FA8);
  }

  return result;
}

unint64_t sub_9323AC()
{
  result = qword_E21FC0;
  if (!qword_E21FC0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E21FC0);
  }

  return result;
}

void sub_932408(uint64_t a1)
{
  sub_9325BC(319, &qword_E22000, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_9325BC(319, &unk_E23B50, type metadata accessor for Lyrics.Translation);
    if (v2 <= 0x3F)
    {
      sub_9325BC(319, &unk_E22008, type metadata accessor for Lyrics.Transliteration);
      if (v3 <= 0x3F)
      {
        swift_updateClassMetadata2();
      }
    }
  }
}

void sub_9325BC(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_ABA9C0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 __swift_memcpy49_8_1(uint64_t a1, uint64_t a2)
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

uint64_t sub_93262C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_932674(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 48) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 49) = 1;
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

    *(result + 49) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t __swift_memcpy9_8_3(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 8);
  *result = v2;
  return result;
}

__n128 __swift_memcpy56_8_2(uint64_t a1, uint64_t a2)
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

uint64_t sub_932714(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 56))
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

uint64_t sub_93275C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t sub_9327CC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = v6;
    v9 = *(v7 + 48);
    v10 = a1 + *(a3 + 28);

    return v9(v10, a2, v8);
  }

  else
  {
    v12 = *(a1 + *(a3 + 36));
    if (v12 >= 0xFFFFFFFF)
    {
      LODWORD(v12) = -1;
    }

    return (v12 + 1);
  }
}

uint64_t sub_9328AC(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E88, &qword_B38CE8);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = result;
    v11 = *(v9 + 56);
    v12 = a1 + *(a4 + 28);

    return v11(v12, a2, a2, v10);
  }

  else
  {
    *(a1 + *(a4 + 36)) = (a2 - 1);
  }

  return result;
}

void sub_932974(uint64_t a1)
{
  sub_9325BC(319, &qword_E22000, &type metadata accessor for Locale.Language);
  if (v1 <= 0x3F)
  {
    sub_932ACC(319, &qword_E22260, &type metadata for Lyrics.Capability, &type metadata accessor for Array);
    if (v2 <= 0x3F)
    {
      sub_932ACC(319, &unk_E22268, &type metadata for String, &type metadata accessor for Optional);
      if (v3 <= 0x3F)
      {
        sub_932B1C();
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_932ACC(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
{
  if (!*a2)
  {
    v5 = a4(0, a3);
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_932B1C()
{
  result = qword_E23AD0;
  if (!qword_E23AD0)
  {
    result = swift_getFunctionTypeMetadata0();
    atomic_store(result, &qword_E23AD0);
  }

  return result;
}

__n128 __swift_memcpy64_8_2(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 48);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 48) = v4;
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_932B80(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_932BC8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 56) = 0;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 64) = 1;
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

    *(result + 64) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8_3(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_932C3C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 25))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
  v4 = v3 >= 2;
  v5 = v3 - 2;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_932C80(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *(result + 24) = a2 + 1;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8_4(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_932CEC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 32);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_932D34(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 40) = 1;
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
      *(result + 32) = (a2 - 1);
      return result;
    }

    *(result + 40) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_932DE8(uint64_t a1)
{
  sub_AB35A0();
  if (v1 <= 0x3F)
  {
    sub_932E88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_932E88()
{
  if (!qword_E22338)
  {
    v0 = sub_AB9080();
    if (!v1)
    {
      atomic_store(v0, &qword_E22338);
    }
  }
}

uint64_t sub_932EFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 0x7FFFFFFF)
  {
    v4 = *(a1 + 8);
    if (v4 >= 0xFFFFFFFF)
    {
      LODWORD(v4) = -1;
    }

    return (v4 + 1);
  }

  else
  {
    v8 = sub_AB35A0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_932FBC(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = sub_AB35A0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

void sub_933080(uint64_t a1)
{
  sub_932ACC(319, &unk_E22268, &type metadata for String, &type metadata accessor for Optional);
  if (v1 <= 0x3F)
  {
    sub_AB35A0();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t __swift_get_extra_inhabitant_index_199Tm(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_AB35A0();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 20) + 8);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t __swift_store_extra_inhabitant_index_200Tm(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_AB35A0();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 20) + 8) = (a2 - 1);
  }

  return result;
}

void sub_9332E4(uint64_t a1)
{
  sub_AB35A0();
  if (v1 <= 0x3F)
  {
    sub_932E88();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t get_enum_tag_for_layout_string_7LyricsX0A0C8TextLineV16BackgroundVocalsVSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy88_8_0(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  result = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 64);
  *(a1 + 80) = *(a2 + 80);
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  *(a1 + 32) = result;
  return result;
}

Swift::Int sub_933428(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E224A8, &qword_B396C8);
    v3 = sub_ABAD50();
    v4 = 0;
    v5 = v3 + 56;
    v6 = a1 + 32;
    while (1)
    {
      v10 = *(v6 + v4);
      sub_ABB5C0();
      sub_ABB5D0(v10);
      result = sub_ABB610();
      v12 = ~(-1 << *(v3 + 32));
      v13 = result & v12;
      v14 = (result & v12) >> 6;
      v15 = *(v5 + 8 * v14);
      v16 = 1 << (result & v12);
      v17 = *(v3 + 48);
      if ((v16 & v15) != 0)
      {
        while (*(v17 + v13) != v10)
        {
          v13 = (v13 + 1) & v12;
          v14 = v13 >> 6;
          v15 = *(v5 + 8 * (v13 >> 6));
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            goto LABEL_3;
          }
        }
      }

      else
      {
LABEL_3:
        *(v5 + 8 * v14) = v16 | v15;
        *(v17 + v13) = v10;
        v7 = *(v3 + 16);
        v8 = __OFADD__(v7, 1);
        v9 = v7 + 1;
        if (v8)
        {
          __break(1u);
          return result;
        }

        *(v3 + 16) = v9;
      }

      if (++v4 == v1)
      {
        return v3;
      }
    }
  }

  return &_swiftEmptySetSingleton;
}

uint64_t sub_93359C()
{
  v1 = type metadata accessor for Lyrics.TextLine(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));
  v3 = *(v1 + 28);
  v4 = sub_AB35A0();
  v5 = *(v4 - 8);
  if (!(*(v5 + 48))(v2 + v3, 1, v4))
  {
    (*(v5 + 8))(v2 + v3, v4);
  }

  return swift_deallocObject();
}

uint64_t sub_9337A4()
{
  v1 = *(type metadata accessor for Lyrics.Transliteration(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  v3 = sub_AB35A0();
  (*(*(v3 - 8) + 8))(v0 + v2, v3);

  return swift_deallocObject();
}

uint64_t objectdestroy_266Tm()
{

  if (*(v0 + 64))
  {
  }

  return swift_deallocObject();
}

void sub_933988(unint64_t a1)
{
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    if (sub_ABB060())
    {
LABEL_3:
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22530, &qword_B39760);
      v3 = sub_ABAD50();
      v4 = a1 & 0xFFFFFFFFFFFFFF8;
      if (!v2)
      {
        goto LABEL_4;
      }

LABEL_8:
      v5 = sub_ABB060();
      if (!v5)
      {
        return;
      }

      goto LABEL_9;
    }
  }

  else if (*(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8)))
  {
    goto LABEL_3;
  }

  v3 = &_swiftEmptySetSingleton;
  v4 = a1 & 0xFFFFFFFFFFFFFF8;
  if (v2)
  {
    goto LABEL_8;
  }

LABEL_4:
  v5 = *(v4 + 16);
  if (!v5)
  {
    return;
  }

LABEL_9:
  v6 = (v3 + 7);
  v37 = v5;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v8 = sub_ABAE20();
      v9 = __OFADD__(v7++, 1);
      if (v9)
      {
        break;
      }

      v10 = v8;
      v11 = sub_ABA780(v3[5]);
      v12 = -1 << *(v3 + 32);
      v13 = v11 & ~v12;
      v14 = v13 >> 6;
      v15 = *&v6[8 * (v13 >> 6)];
      v16 = 1 << v13;
      if (((1 << v13) & v15) != 0)
      {
        v17 = ~v12;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v18 = *(v3[6] + 8 * v13);
          v19 = sub_ABA790();

          if (v19)
          {
            break;
          }

          v13 = (v13 + 1) & v17;
          v14 = v13 >> 6;
          v15 = *&v6[8 * (v13 >> 6)];
          v16 = 1 << v13;
          if (((1 << v13) & v15) == 0)
          {
            v5 = v37;
            goto LABEL_18;
          }
        }

        swift_unknownObjectRelease();
        v5 = v37;
        if (v7 == v37)
        {
          return;
        }
      }

      else
      {
LABEL_18:
        *&v6[8 * v14] = v16 | v15;
        *(v3[6] + 8 * v13) = v10;
        v20 = v3[2];
        v9 = __OFADD__(v20, 1);
        v21 = v20 + 1;
        if (v9)
        {
          goto LABEL_32;
        }

        v3[2] = v21;
        if (v7 == v5)
        {
          return;
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
  }

  else
  {
    v22 = 0;
    v36 = *(&dword_10 + (a1 & 0xFFFFFFFFFFFFFF8));
    while (v22 != v36)
    {
      v23 = v3[5];
      v24 = *(a1 + 32 + 8 * v22);
      v25 = sub_ABA780(v23);
      v26 = -1 << *(v3 + 32);
      v27 = v25 & ~v26;
      v28 = v27 >> 6;
      v29 = *&v6[8 * (v27 >> 6)];
      v30 = 1 << v27;
      if (((1 << v27) & v29) != 0)
      {
        v31 = ~v26;
        type metadata accessor for SyncedLyricsLineView(0);
        while (1)
        {
          v32 = *(v3[6] + 8 * v27);
          v33 = sub_ABA790();

          if (v33)
          {
            break;
          }

          v27 = (v27 + 1) & v31;
          v28 = v27 >> 6;
          v29 = *&v6[8 * (v27 >> 6)];
          v30 = 1 << v27;
          if (((1 << v27) & v29) == 0)
          {
            goto LABEL_29;
          }
        }
      }

      else
      {
LABEL_29:
        *&v6[8 * v28] = v30 | v29;
        *(v3[6] + 8 * v27) = v24;
        v34 = v3[2];
        v9 = __OFADD__(v34, 1);
        v35 = v34 + 1;
        if (v9)
        {
          goto LABEL_34;
        }

        v3[2] = v35;
      }

      if (++v22 == v37)
      {
        return;
      }
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
}

uint64_t sub_933C54(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_933CBC()
{

  return swift_deallocObject();
}

unint64_t sub_933CF4()
{
  result = qword_E225B8;
  if (!qword_E225B8)
  {
    sub_13C80(255, &qword_E21F58, MSVLyricsAgent_ptr);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E225B8);
  }

  return result;
}

id sub_933DCC@<X0>(id *a1@<X0>, void *a2@<X8>)
{
  result = [*a1 startTime];
  *a2 = v4;
  return result;
}

uint64_t sub_933E14()
{
  if (*(v0 + 40))
  {
  }

  return swift_deallocObject();
}

uint64_t sub_933E58()
{

  return swift_deallocObject();
}

uint64_t sub_933EB0()
{

  return swift_deallocObject();
}

uint64_t objectdestroy_295Tm()
{

  return swift_deallocObject();
}

uint64_t *LyricsOptionsManager.shared.unsafeMutableAddressor()
{
  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  return &static LyricsOptionsManager.shared;
}

Swift::Int sub_9340D4()
{
  v1 = *v0;
  sub_ABB5C0();
  sub_ABB5D0(qword_B39A40[v1]);
  return sub_ABB610();
}

Swift::Int sub_93415C(uint64_t a1)
{
  v2 = *v1;
  sub_ABB5C0();
  sub_ABB5D0(qword_B39A40[v2]);
  return sub_ABB610();
}

uint64_t sub_9341A8@<X0>(Swift::Int *a1@<X0>, LyricsX::LyricsOptionsManager::Option_optional *a2@<X8>)
{
  result = _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(*a1);
  a2->value = result;
  return result;
}

void *sub_93420C()
{
  type metadata accessor for LyricsOptionsManager();
  v0 = swift_allocObject();
  result = sub_934A7C(v0);
  static LyricsOptionsManager.shared = v0;
  return result;
}

double static LyricsOptionsManager.shared.getter()
{
  if (qword_E21CC8 != -1)
  {
    swift_once();
  }

  return result;
}

double sub_9342A4()
{
  swift_beginAccess();
  v2 = *(v0 + 16);
  if (v2)
  {
    v3 = [v2 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
    if (v3)
    {
      v4 = v3;
      v5 = sub_AB8FF0();

      sub_ABAD10();
      if (*(v5 + 16) && (v6 = v0, v7 = sub_2EC004(v22), (v8 & 1) != 0))
      {
        sub_808B0(*(v5 + 56) + 32 * v7, &v23);
        sub_8085C(v22);

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22660, &qword_B398F8);
        if (swift_dynamicCast())
        {
          if (!sub_923E94(6, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v9 = sub_2EBF88(0xD00000000000001CLL, 0x8000000000B79E00);
              if (v10)
              {
                sub_9ACA0(MEMORY[0xD00000000000004D] + 40 * v9, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_9363C0(&v23, 0);
                  }

                  else
                  {

                    sub_9388C4(0);
                  }

                  v11 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_934818(v11);
                }
              }
            }
          }

          if (!sub_923E94(7, *(v0 + 40)))
          {
            if (MEMORY[0xD000000000000025])
            {
              v12 = sub_2EBF88(0xD000000000000020, 0x8000000000B79E20);
              if (v13)
              {
                sub_9ACA0(MEMORY[0xD00000000000004D] + 40 * v12, v22);
                if (swift_dynamicCast())
                {
                  v22[0] = *(v0 + 40);
                  if (v23)
                  {

                    sub_9363C0(&v23, 1);
                  }

                  else
                  {

                    sub_9388C4(1);
                  }

                  v14 = *(v0 + 40);
                  *(v0 + 40) = v22[0];
                  sub_934818(v14);
                }
              }
            }
          }

          if (sub_923E94(8, *(v0 + 40)))
          {
            goto LABEL_35;
          }

          if (!MEMORY[0xD000000000000025])
          {
            goto LABEL_35;
          }

          v15 = sub_2EBF88(0xD000000000000018, 0x8000000000B79E50);
          if ((v16 & 1) == 0)
          {
            goto LABEL_35;
          }

          sub_9ACA0(MEMORY[0xD00000000000004D] + 40 * v15, v22);

          if (swift_dynamicCast())
          {
            v18 = v23;
            v17 = v24;
            if (v23 == 0x73636972796CLL && v24 == 0xE600000000000000)
            {

              v19 = v6;
LABEL_33:
              v22[0] = *(v19 + 40);

              sub_9388C4(3);
LABEL_34:
              v20 = *(v19 + 40);
              *(v19 + 40) = v22[0];
              sub_934818(v20);
LABEL_35:

              return result;
            }

            v19 = v6;
            if (sub_ABB3C0())
            {

              goto LABEL_33;
            }

            if (v18 == 0x74696C736E617274 && v17 == 0xEF6E6F6974617265)
            {

LABEL_40:
              v22[0] = *(v19 + 40);

              sub_9363C0(&v23, 3);
              goto LABEL_34;
            }

            v21 = sub_ABB3C0();

            if (v21)
            {
              goto LABEL_40;
            }
          }
        }
      }

      else
      {

        sub_8085C(v22);
      }
    }
  }

  return result;
}

void LyricsOptionsManager.bag.setter(void *a1)
{
  swift_beginAccess();
  v3 = *(v1 + 16);
  *(v1 + 16) = a1;
  v4 = a1;

  sub_9342A4();
}

double (*LyricsOptionsManager.bag.modify(uint64_t a1))(uint64_t a1, char a2)
{
  *(a1 + 24) = v1;
  swift_beginAccess();
  return sub_9347E4;
}

double sub_9347E4(uint64_t a1, char a2)
{
  swift_endAccess();
  if ((a2 & 1) == 0)
  {
    return sub_9342A4();
  }

  return result;
}

void sub_934818(uint64_t a1)
{
  if ((sub_935E30(*(v1 + 40), a1) & 1) == 0)
  {
    v2 = *(v1 + 40);
    v5 = *(v2 + 56);
    v4 = v2 + 56;
    v3 = v5;
    v6 = 1 << *(*(v1 + 40) + 32);
    v7 = -1;
    if (v6 < 64)
    {
      v7 = ~(-1 << v6);
    }

    v8 = v7 & v3;
    v9 = (v6 + 63) >> 6;
    swift_bridgeObjectRetain_n();
    v10 = 0;
    v11 = _swiftEmptyArrayStorage;
    if (v8)
    {
      goto LABEL_9;
    }

    while (1)
    {
      v12 = v10 + 1;
      if (__OFADD__(v10, 1))
      {
        break;
      }

      if (v12 >= v9)
      {

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22618, &qword_B39900);
        sub_939B18();
        sub_AB9140();

        v19 = [objc_opt_self() standardUserDefaults];
        v20 = sub_AB9260();

        v21 = sub_AB9260();
        [v19 setObject:v20 forKey:v21];

        return;
      }

      v8 = *(v4 + 8 * v12);
      ++v10;
      if (v8)
      {
        v10 = v12;
        do
        {
LABEL_9:
          v13 = sub_ABB330();
          v15 = v14;
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v11 = sub_926658(0, *(v11 + 2) + 1, 1, v11);
          }

          v17 = *(v11 + 2);
          v16 = *(v11 + 3);
          if (v17 >= v16 >> 1)
          {
            v11 = sub_926658((v16 > 1), v17 + 1, 1, v11);
          }

          v8 &= v8 - 1;
          *(v11 + 2) = v17 + 1;
          v18 = &v11[16 * v17];
          *(v18 + 4) = v13;
          *(v18 + 5) = v15;
        }

        while (v8);
      }
    }

    __break(1u);
  }
}

void *sub_934A7C(uint64_t a1)
{
  v2 = v1;
  v1[2] = 0;
  v3 = type metadata accessor for LyricsOptionsManager.Observer();
  v1[3] = WeakArray.init(_:)(_swiftEmptyArrayStorage, v3);
  v1[4] = 0;
  v1[5] = &_swiftEmptySetSingleton;
  sub_13C80(0, &qword_E22880, NSUserDefaults_ptr);
  strcpy(v8, "lyricsOptions");
  v8[7] = -4864;
  v4 = swift_allocObject();
  swift_weakInit();
  v5 = sub_931F14();

  v6 = static NSUserDefaults.observe<A>(_:in:valueChanged:)(v8, 0, 0, sub_939BB4, v4, &type metadata for String, v5);

  v2[4] = v6;

  sub_934CF8();
  return v2;
}

double sub_934BC8(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    v5 = *(Strong + 40);

    sub_934CF8();
    swift_beginAccess();
    v6 = *(v4 + 24);
    v7 = type metadata accessor for LyricsOptionsManager.Observer();

    v10 = static MPMediaLibraryFilteringOptions.none.getter();
    while (v10 != WeakArray.endIndex.getter(v6, v7, v8, v9))
    {
      v12 = WeakArray.subscript.getter(v10, v6, v7, v11);
      v10 = WeakArray.index(after:)(v10);
      if (v12)
      {
        v13 = *(v12 + 16);

        v13(v5);
      }
    }
  }

  return result;
}

void sub_934CF8()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_AB9260();
  v2 = [v0 stringForKey:v1];

  if (v2)
  {
    v3 = sub_AB92A0();
    v5 = v4;
  }

  else
  {
    v3 = 0;
    v5 = 0xE000000000000000;
  }

  v45 = v3;
  v46 = v5;
  sub_931F14();
  v6 = sub_ABAA30();

  v7 = *(v6 + 16);
  if (!v7)
  {
    v9 = _swiftEmptyArrayStorage;
LABEL_100:

    v42 = sub_952F5C(v9);

    v43 = *(v44 + 40);
    *(v44 + 40) = v42;
    sub_934818(v43);

    return;
  }

  v8 = 0;
  v9 = _swiftEmptyArrayStorage;
  while (v8 < *(v6 + 16))
  {
    v10 = (v6 + 32 + 16 * v8);
    v11 = *v10;
    v12 = v10[1];
    ++v8;
    v13 = HIBYTE(v12) & 0xF;
    v14 = v11 & 0xFFFFFFFFFFFFLL;
    if ((v12 & 0x2000000000000000) != 0)
    {
      v15 = HIBYTE(v12) & 0xF;
    }

    else
    {
      v15 = v11 & 0xFFFFFFFFFFFFLL;
    }

    if (!v15)
    {
      goto LABEL_7;
    }

    if ((v12 & 0x1000000000000000) == 0)
    {
      if ((v12 & 0x2000000000000000) != 0)
      {
        v45 = v11;
        v46 = v12 & 0xFFFFFFFFFFFFFFLL;
        if (v11 == 43)
        {
          if (!v13)
          {
            goto LABEL_102;
          }

          if (--v13)
          {
            v18 = 0;
            v28 = &v45 + 1;
            while (1)
            {
              v29 = *v28 - 48;
              if (v29 > 9)
              {
                break;
              }

              v30 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v30 + v29;
              if (__OFADD__(v30, v29))
              {
                break;
              }

              ++v28;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v11 == 45)
        {
          if (!v13)
          {
            goto LABEL_104;
          }

          if (--v13)
          {
            v18 = 0;
            v22 = &v45 + 1;
            while (1)
            {
              v23 = *v22 - 48;
              if (v23 > 9)
              {
                break;
              }

              v24 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v24 - v23;
              if (__OFSUB__(v24, v23))
              {
                break;
              }

              ++v22;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v13)
        {
          v18 = 0;
          v33 = &v45;
          while (1)
          {
            v34 = *v33 - 48;
            if (v34 > 9)
            {
              break;
            }

            v35 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v35 + v34;
            if (__OFADD__(v35, v34))
            {
              break;
            }

            v33 = (v33 + 1);
            if (!--v13)
            {
              goto LABEL_70;
            }
          }
        }
      }

      else
      {
        if ((v11 & 0x1000000000000000) != 0)
        {
          v16 = ((v12 & 0xFFFFFFFFFFFFFFFLL) + 32);
        }

        else
        {
          v16 = sub_ABAE60();
        }

        v17 = *v16;
        if (v17 == 43)
        {
          if (v14 < 1)
          {
            goto LABEL_105;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (!v16)
            {
              goto LABEL_61;
            }

            v25 = v16 + 1;
            while (1)
            {
              v26 = *v25 - 48;
              if (v26 > 9)
              {
                break;
              }

              v27 = 10 * v18;
              if ((v18 * 10) >> 64 != (10 * v18) >> 63)
              {
                break;
              }

              v18 = v27 + v26;
              if (__OFADD__(v27, v26))
              {
                break;
              }

              ++v25;
              if (!--v13)
              {
                goto LABEL_70;
              }
            }
          }
        }

        else if (v17 == 45)
        {
          if (v14 < 1)
          {
            goto LABEL_103;
          }

          v13 = v14 - 1;
          if (v14 != 1)
          {
            v18 = 0;
            if (v16)
            {
              v19 = v16 + 1;
              while (1)
              {
                v20 = *v19 - 48;
                if (v20 > 9)
                {
                  goto LABEL_69;
                }

                v21 = 10 * v18;
                if ((v18 * 10) >> 64 != (10 * v18) >> 63)
                {
                  goto LABEL_69;
                }

                v18 = v21 - v20;
                if (__OFSUB__(v21, v20))
                {
                  goto LABEL_69;
                }

                ++v19;
                if (!--v13)
                {
                  goto LABEL_70;
                }
              }
            }

LABEL_61:
            LOBYTE(v13) = 0;
LABEL_70:
            if (v13)
            {
              goto LABEL_7;
            }

            goto LABEL_71;
          }
        }

        else
        {
          if (!v14)
          {
            goto LABEL_69;
          }

          v18 = 0;
          if (!v16)
          {
            goto LABEL_61;
          }

          while (1)
          {
            v31 = *v16 - 48;
            if (v31 > 9)
            {
              break;
            }

            v32 = 10 * v18;
            if ((v18 * 10) >> 64 != (10 * v18) >> 63)
            {
              break;
            }

            v18 = v32 + v31;
            if (__OFADD__(v32, v31))
            {
              break;
            }

            ++v16;
            if (!--v14)
            {
              goto LABEL_61;
            }
          }
        }
      }

LABEL_69:
      v18 = 0;
      LOBYTE(v13) = 1;
      goto LABEL_70;
    }

    sub_939288(v11, v12, 10);
    v18 = v39;
    v41 = v40;

    if (v41)
    {
      goto LABEL_7;
    }

LABEL_71:
    if (v18 > 4)
    {
      if (v18 <= 6)
      {
        if (v18 == 5)
        {
          v36 = 5;
        }

        else
        {
          v36 = 6;
        }

        goto LABEL_92;
      }

      switch(v18)
      {
        case 7:
          v36 = 7;
          goto LABEL_92;
        case 8:
          v36 = 8;
          goto LABEL_92;
        case 1000:
          v36 = 9;
LABEL_92:
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v9 = sub_926764(0, *(v9 + 2) + 1, 1, v9);
          }

          v38 = *(v9 + 2);
          v37 = *(v9 + 3);
          if (v38 >= v37 >> 1)
          {
            v9 = sub_926764((v37 > 1), v38 + 1, 1, v9);
          }

          *(v9 + 2) = v38 + 1;
          v9[v38 + 32] = v36;
          break;
      }
    }

    else
    {
      if (v18 > 1)
      {
        if (v18 == 2)
        {
          v36 = 2;
        }

        else if (v18 == 3)
        {
          v36 = 3;
        }

        else
        {
          v36 = 4;
        }

        goto LABEL_92;
      }

      if (!v18)
      {
        v36 = 0;
        goto LABEL_92;
      }

      if (v18 == 1)
      {
        v36 = 1;
        goto LABEL_92;
      }
    }

LABEL_7:
    if (v8 == v7)
    {
      goto LABEL_100;
    }
  }

  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
LABEL_104:
  __break(1u);
LABEL_105:
  __break(1u);
}

uint64_t LyricsOptionsManager.addObserver(_:)(uint64_t a1, uint64_t a2)
{
  type metadata accessor for LyricsOptionsManager.Observer();
  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  swift_beginAccess();

  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22658, &qword_B398F0);
  WeakArray.append(_:)(v4, v5);
  swift_endAccess();
  return v4;
}

Swift::Void __swiftcall LyricsOptionsManager.insert(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  v2 = a1;
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_9363C0(&v8, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_934818(v5);
  }

  v6 = *(v1 + 40);

  sub_9363C0(&v8, v2);
  v3 = *(v1 + 40);
  *(v1 + 40) = v6;
  sub_934818(v3);
}

Swift::Void __swiftcall LyricsOptionsManager.remove(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 - 2 >= 8)
  {
    v7 = *(v1 + 40);
    if (a1)
    {

      v4 = 7;
    }

    else
    {

      v4 = 6;
    }

    sub_9363C0(&v6, v4);
    v5 = *(v1 + 40);
    *(v1 + 40) = v7;
    sub_934818(v5);
  }

  v7 = *(v1 + 40);

  sub_9388C4(a1);
  v3 = *(v1 + 40);
  *(v1 + 40) = v7;
  sub_934818(v3);
}

Swift::Bool __swiftcall LyricsOptionsManager.contains(_:)(LyricsX::LyricsOptionsManager::Option a1)
{
  if (a1 >= LyricsX_LyricsOptionsManager_Option_debugMode)
  {
    v2 = a1;
    has_internal_content = os_variant_has_internal_content();
    a1 = v2;
    if (!has_internal_content)
    {
      return 0;
    }
  }

  v4 = *(v1 + 40);

  return sub_923E94(a1, v4);
}

uint64_t LyricsOptionsManager.isDefaultScriptSupported(for:)(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21EC0, &qword_B38D20);
  __chkstk_darwin();
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v6 = &v47 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E21E90, &unk_B38CF0);
  __chkstk_darwin();
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  __chkstk_darwin();
  v10 = &v47 - v9;
  v11 = sub_AB35A0();
  v12 = *(v11 - 8);
  __chkstk_darwin();
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v15 = *(v1 + 16);
  if (!v15)
  {
    return 1;
  }

  v16 = [v15 dictionaryForBagKey:ICURLBagKeyMusicSubscription];
  if (!v16)
  {
    return 1;
  }

  v56 = v4;
  v57 = a1;
  v17 = v16;
  v18 = sub_AB8FF0();

  v58 = 0xD000000000000015;
  v59 = 0x8000000000B79D30;
  sub_ABAD10();
  if (*(v18 + 16) && (v19 = sub_2EC004(&v60), (v20 & 1) != 0))
  {
    sub_808B0(*(v18 + 56) + 32 * v19, v62);
    sub_8085C(&v60);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22660, &qword_B398F8);
    if (swift_dynamicCast())
    {
      v21 = v58;
      if (!*(v58 + 16) || (v22 = sub_2EBF88(0xD000000000000021, 0x8000000000B79D50), (v23 & 1) == 0))
      {
LABEL_42:

        return 1;
      }

      sub_9ACA0(*(v21 + 56) + 40 * v22, &v60);

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22618, &qword_B39900);
      if (swift_dynamicCast())
      {
        result = v62[0];
        v49 = *(v62[0] + 16);
        if (v49)
        {
          v25 = 0;
          v47 = (v12 + 8);
          v26 = v62[0] + 40;
          v48 = v62[0];
          while (1)
          {
            v27 = *(result + 16);
            v54 = v25;
            if (v25 >= v27)
            {
              __break(1u);
              return result;
            }

            v53 = v26;

            sub_AB3560();
            sub_AB3570();
            v28 = sub_AB34C0();
            v29 = *(v28 - 8);
            v55 = *(v29 + 48);
            v30 = v55(v10, 1, v28);
            v50 = v29;
            if (v30 == 1)
            {
              sub_12E1C(v10, &qword_E21E90, &unk_B38CF0);
              v52 = 0;
              v31 = 0;
            }

            else
            {
              v32 = sub_AB34A0();
              v31 = v33;
              (*(v29 + 8))(v10, v28);
              v52 = v32;
              if (v32 == 26746 && v31 == 0xE200000000000000 || (sub_ABB3C0() & 1) != 0)
              {
                v51 = v31;
                sub_AB3590();
                v34 = sub_AB3530();
                v35 = *(v34 - 8);
                if ((*(v35 + 48))(v6, 1, v34) == 1)
                {
                  sub_12E1C(v6, &qword_E21EC0, &qword_B38D20);
                  v31 = v51;
                }

                else
                {

                  v37 = sub_AB3520();
                  v51 = v38;
                  v52 = v37;
                  (*(v35 + 8))(v6, v34);
                  v60 = 2975866;
                  v61 = 0xE300000000000000;
                  v63._countAndFlagsBits = v52;
                  v63._object = v51;
                  sub_AB94A0(v63);

                  v31 = v61;
                  v52 = v60;
                }
              }
            }

            sub_AB3570();
            if (v55(v8, 1, v28) == 1)
            {
              break;
            }

            v39 = sub_AB34A0();
            v36 = v40;
            (*(v50 + 8))(v8, v28);
            if (v39 == 26746 && v36 == 0xE200000000000000 || (sub_ABB3C0() & 1) != 0)
            {
              v55 = v39;
              v51 = v31;
              v41 = v56;
              sub_AB3590();
              v42 = sub_AB3530();
              v43 = *(v42 - 8);
              if ((*(v43 + 48))(v41, 1, v42) == 1)
              {
                sub_12E1C(v41, &qword_E21EC0, &qword_B38D20);
                v31 = v51;
                v39 = v55;
              }

              else
              {

                v55 = sub_AB3520();
                v45 = v44;
                (*(v43 + 8))(v41, v42);
                v60 = 2975866;
                v61 = 0xE300000000000000;
                v64._countAndFlagsBits = v55;
                v64._object = v45;
                sub_AB94A0(v64);

                v39 = v60;
                v36 = v61;
                v31 = v51;
              }
            }

            if (!v31)
            {
              goto LABEL_40;
            }

            if (!v36)
            {
LABEL_15:

              (*v47)(v14, v11);
              goto LABEL_16;
            }

            if (v52 == v39 && v31 == v36)
            {

              (*v47)(v14, v11);
LABEL_44:

              return 0;
            }

            v46 = sub_ABB3C0();

            (*v47)(v14, v11);
            if (v46)
            {
              goto LABEL_44;
            }

LABEL_16:
            v25 = v54 + 1;
            v26 = v53 + 16;
            result = v48;
            if (v49 == v54 + 1)
            {
              goto LABEL_42;
            }
          }

          sub_12E1C(v8, &qword_E21E90, &unk_B38CF0);
          if (v31)
          {
            goto LABEL_15;
          }

          v36 = 0;
LABEL_40:
          (*v47)(v14, v11);
          if (!v36)
          {
            goto LABEL_44;
          }

          goto LABEL_16;
        }

        goto LABEL_42;
      }
    }
  }

  else
  {

    sub_8085C(&v60);
  }

  return 1;
}

uint64_t LyricsOptionsManager.deinit()
{

  return v0;
}

uint64_t LyricsOptionsManager.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

Swift::Int sub_935E30(Swift::Int result, uint64_t a2)
{
  if (result == a2)
  {
    return 1;
  }

  v3 = result;
  if (*(result + 16) != *(a2 + 16))
  {
    return 0;
  }

  v4 = 0;
  v5 = 1 << *(result + 32);
  if (v5 < 64)
  {
    v6 = ~(-1 << v5);
  }

  else
  {
    v6 = -1;
  }

  v7 = v6 & *(result + 56);
  v8 = (v5 + 63) >> 6;
  v9 = a2 + 56;
  while (v7)
  {
    v10 = __clz(__rbit64(v7));
    v7 &= v7 - 1;
LABEL_14:
    v13 = *(*(v3 + 48) + (v10 | (v4 << 6)));
    sub_ABB5C0();
    v14 = qword_B39A40[v13];
    sub_ABB5D0(v14);
    result = sub_ABB610();
    v15 = -1 << *(a2 + 32);
    v16 = result & ~v15;
    if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
    {
      return 0;
    }

    v17 = ~v15;
    while (qword_B39A40[*(*(a2 + 48) + v16)] != v14)
    {
      v16 = (v16 + 1) & v17;
      if (((*(v9 + ((v16 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v16) & 1) == 0)
      {
        return 0;
      }
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

    if (v4 >= v8)
    {
      return 1;
    }

    v12 = *(v3 + 56 + 8 * v4);
    ++v11;
    if (v12)
    {
      v10 = __clz(__rbit64(v12));
      v7 = (v12 - 1) & v12;
      goto LABEL_14;
    }
  }

  __break(1u);
  return result;
}

void *sub_935FB4(uint64_t a1, uint64_t a2)
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
    return _swiftEmptyArrayStorage;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225B0, &qword_B397E0);
  v4 = swift_allocObject();
  v5 = _swift_stdlib_malloc_size(v4);
  result = v4;
  v4[2] = a1;
  v4[3] = 2 * v5 - 64;
  return result;
}

uint64_t sub_936028(void *a1, uint64_t a2, uint64_t a3)
{
  v7 = *v3;
  sub_ABB5C0();
  sub_AB93F0();
  v8 = sub_ABB610();
  v9 = -1 << *(v7 + 32);
  v10 = v8 & ~v9;
  if ((*(v7 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    while (1)
    {
      v12 = (*(v7 + 48) + 16 * v10);
      v13 = *v12 == a2 && v12[1] == a3;
      if (v13 || (sub_ABB3C0() & 1) != 0)
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

    sub_9376D8(a2, a3, v10, isUniquelyReferenced_nonNull_native);
    *v3 = v18;
    *a1 = a2;
    a1[1] = a3;
    return 1;
  }
}

uint64_t sub_936178(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_ABAC60();

    if (v9)
    {

      sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_ABAC50();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_936904(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1F1E8(v20 + 1, &qword_E22560, &qword_B39790);
    }

    v18 = v8;
    sub_21834(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
  v11 = sub_ABA780(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_937858(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_ABA790();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

uint64_t sub_9363C0(_BYTE *a1, uint64_t a2)
{
  v5 = *v2;
  sub_ABB5C0();
  v6 = qword_B39A40[a2];
  sub_ABB5D0(v6);
  v7 = sub_ABB610();
  v8 = -1 << *(v5 + 32);
  v9 = v7 & ~v8;
  if ((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    while (qword_B39A40[*(*(v5 + 48) + v9)] != v6)
    {
      v9 = (v9 + 1) & v10;
      if (((*(v5 + 56 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) == 0)
      {
        goto LABEL_5;
      }
    }

    result = 0;
    LOBYTE(a2) = *(*(v5 + 48) + v9);
  }

  else
  {
LABEL_5:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v13 = *v2;
    sub_9379F8(a2, v9, isUniquelyReferenced_nonNull_native);
    *v2 = v13;
    result = 1;
  }

  *a1 = a2;
  return result;
}

uint64_t sub_9364D8(Swift::UInt *a1, Swift::UInt a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = sub_ABAC60();

    if (v8)
    {

      _s4WordCMa();
      swift_dynamicCast();
      result = 0;
      *a1 = v19;
      return result;
    }

    result = sub_ABAC50();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v16 = sub_936B14(v7, result + 1);
    v17 = *(v16 + 16);
    if (*(v16 + 24) <= v17)
    {
      sub_9373E4(v17 + 1);
    }

    sub_937634(v18, v16);

    *v3 = v16;
    goto LABEL_16;
  }

  sub_ABB5C0();
  sub_ABB5D0(a2);
  v10 = sub_ABB610();
  v11 = -1 << *(v6 + 32);
  v12 = v10 & ~v11;
  if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v20 = *v2;

    sub_937B60(v15, v12, isUniquelyReferenced_nonNull_native);
    *v2 = v20;
LABEL_16:
    *a1 = a2;
    return 1;
  }

  v13 = ~v11;
  while (*(*(v6 + 48) + 8 * v12) != a2)
  {
    v12 = (v12 + 1) & v13;
    if (((*(v6 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  *a1 = *(*(v6 + 48) + 8 * v12);

  return 0;
}

uint64_t sub_9366DC(uint64_t *a1, void *a2)
{
  v3 = v2;
  v6 = *v2;
  if ((*v2 & 0xC000000000000001) != 0)
  {
    if (v6 < 0)
    {
      v7 = *v2;
    }

    else
    {
      v7 = v6 & 0xFFFFFFFFFFFFFF8;
    }

    v8 = a2;

    v9 = sub_ABAC60();

    if (v9)
    {

      type metadata accessor for SyncedLyricsLineView(0);
      swift_dynamicCast();
      result = 0;
      *a1 = v23;
      return result;
    }

    result = sub_ABAC50();
    if (__OFADD__(result, 1))
    {
      __break(1u);
      return result;
    }

    v19 = sub_936D14(v7, result + 1);
    v20 = v19[2];
    if (v19[3] <= v20)
    {
      sub_1F1E8(v20 + 1, &qword_E22530, &qword_B39760);
    }

    v18 = v8;
    sub_21834(v18, v19);

    *v3 = v19;
    goto LABEL_16;
  }

  type metadata accessor for SyncedLyricsLineView(0);
  v11 = sub_ABA780(*(v6 + 40));
  v12 = -1 << *(v6 + 32);
  v13 = v11 & ~v12;
  if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
  {
LABEL_11:
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v24 = *v3;
    v18 = a2;
    sub_937CBC(v18, v13, isUniquelyReferenced_nonNull_native);
    *v3 = v24;
LABEL_16:
    *a1 = v18;
    return 1;
  }

  v14 = ~v12;
  while (1)
  {
    v15 = *(*(v6 + 48) + 8 * v13);
    v16 = sub_ABA790();

    if (v16)
    {
      break;
    }

    v13 = (v13 + 1) & v14;
    if (((*(v6 + 56 + ((v13 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v13) & 1) == 0)
    {
      goto LABEL_11;
    }
  }

  v21 = *(*(v6 + 48) + 8 * v13);
  *a1 = v21;
  v22 = v21;
  return 0;
}

Swift::Int sub_936904(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22560, &qword_B39790);
    v2 = sub_ABAD40();
    v15 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1F1E8(v9 + 1, &qword_E22560, &qword_B39790);
        }

        v2 = v15;
        result = sub_ABA780(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_936B14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22870, &unk_B39A10);
    v2 = sub_ABAD40();
    v15 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      _s4WordCMa();
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_9373E4(v9 + 1);
        }

        v2 = v15;
        sub_ABB5C0();
        sub_ABB5D0(v14);
        result = sub_ABB610();
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

Swift::Int sub_936D14(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22530, &qword_B39760);
    v2 = sub_ABAD40();
    v15 = v2;
    sub_ABAC10();
    if (sub_ABAC90())
    {
      type metadata accessor for SyncedLyricsLineView(0);
      do
      {
        swift_dynamicCast();
        v9 = *(v2 + 16);
        if (*(v2 + 24) <= v9)
        {
          sub_1F1E8(v9 + 1, &qword_E22530, &qword_B39760);
        }

        v2 = v15;
        result = sub_ABA780(*(v15 + 40));
        v4 = v15 + 56;
        v5 = -1 << *(v15 + 32);
        v6 = result & ~v5;
        v7 = v6 >> 6;
        if (((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6))) != 0)
        {
          v8 = __clz(__rbit64((-1 << v6) & ~*(v15 + 56 + 8 * (v6 >> 6)))) | v6 & 0x7FFFFFFFFFFFFFC0;
        }

        else
        {
          v10 = 0;
          v11 = (63 - v5) >> 6;
          do
          {
            if (++v7 == v11 && (v10 & 1) != 0)
            {
              __break(1u);
              return result;
            }

            v12 = v7 == v11;
            if (v7 == v11)
            {
              v7 = 0;
            }

            v10 |= v12;
            v13 = *(v4 + 8 * v7);
          }

          while (v13 == -1);
          v8 = __clz(__rbit64(~v13)) + (v7 << 6);
        }

        *(v4 + ((v8 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v8;
        *(*(v15 + 48) + 8 * v8) = v14;
        ++*(v15 + 16);
      }

      while (sub_ABAC90());
    }
  }

  else
  {
    swift_unknownObjectRelease();
    return &_swiftEmptySetSingleton;
  }

  return v2;
}

void sub_936F14(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22888, &unk_B39A30);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v15 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v18 = (*(v3 + 48) + 16 * (v15 | (v6 << 6)));
      v19 = *v18;
      v20 = v18[1];
      sub_ABB5C0();
      sub_AB93F0();
      v21 = sub_ABB610();
      v22 = -1 << *(v5 + 32);
      v23 = v21 & ~v22;
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

LABEL_30:
        __break(1u);
        return;
      }

      v13 = __clz(__rbit64((-1 << v23) & ~*(v12 + 8 * (v23 >> 6)))) | v23 & 0x7FFFFFFFFFFFFFC0;
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

    v29 = 1 << *(v3 + 32);
    if (v29 >= 64)
    {
      bzero((v3 + 56), ((v29 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v7 = -1 << v29;
    }

    v2 = v1;
    *(v3 + 16) = 0;
  }

  *v2 = v5;
}

void sub_937188(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22878, &unk_B39A20);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + (v14 | (v6 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(qword_B39A40[v17]);
      v18 = sub_ABB610();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
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
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_9373E4(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22870, &unk_B39A10);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v12 = v4 + 56;
    while (v10)
    {
      v14 = __clz(__rbit64(v10));
      v10 &= v10 - 1;
LABEL_15:
      v17 = *(*(v3 + 48) + 8 * (v14 | (v6 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v17);
      v18 = sub_ABB610();
      v19 = -1 << *(v5 + 32);
      v20 = v18 & ~v19;
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
        return;
      }

      v13 = __clz(__rbit64((-1 << v20) & ~*(v12 + 8 * (v20 >> 6)))) | v20 & 0x7FFFFFFFFFFFFFC0;
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
}

unint64_t sub_937634(Swift::UInt a1, uint64_t a2)
{
  sub_ABB5C0();
  sub_ABB5D0(a1);
  sub_ABB610();
  result = sub_ABABF0();
  *(a2 + 56 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << result;
  *(*(a2 + 48) + 8 * result) = a1;
  ++*(a2 + 16);
  return result;
}

void sub_9376D8(uint64_t result, uint64_t a2, unint64_t a3, char a4)
{
  v8 = *(*v4 + 16);
  v9 = *(*v4 + 24);
  if (v9 > v8 && (a4 & 1) != 0)
  {
    goto LABEL_16;
  }

  if (a4)
  {
    sub_936F14(v8 + 1);
  }

  else
  {
    if (v9 > v8)
    {
      sub_937E4C();
      goto LABEL_16;
    }

    sub_938238(v8 + 1);
  }

  v10 = *v4;
  sub_ABB5C0();
  sub_AB93F0();
  v11 = sub_ABB610();
  v12 = -1 << *(v10 + 32);
  a3 = v11 & ~v12;
  if ((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3))
  {
    v13 = ~v12;
    do
    {
      v14 = (*(v10 + 48) + 16 * a3);
      v15 = *v14 == result && v14[1] == a2;
      if (v15 || (sub_ABB3C0() & 1) != 0)
      {
        goto LABEL_19;
      }

      a3 = (a3 + 1) & v13;
    }

    while (((*(v10 + 56 + ((a3 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a3) & 1) != 0);
  }

LABEL_16:
  v16 = *v4;
  *(*v4 + 8 * (a3 >> 6) + 56) |= 1 << a3;
  v17 = (*(v16 + 48) + 16 * a3);
  *v17 = result;
  v17[1] = a2;
  v18 = *(v16 + 16);
  v19 = __OFADD__(v18, 1);
  v20 = v18 + 1;
  if (!v19)
  {
    *(v16 + 16) = v20;
    return;
  }

  __break(1u);
LABEL_19:
  sub_ABB4B0();
  __break(1u);
}

void sub_937858(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1F1E8(v6 + 1, &qword_E22560, &qword_B39790);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25AC4(&qword_E22560, &qword_B39790);
      goto LABEL_12;
    }

    sub_27D58(v6 + 1, &qword_E22560, &qword_B39790);
  }

  v8 = *v3;
  v9 = sub_ABA780(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    sub_13C80(0, &qword_E21F58, MSVLyricsAgent_ptr);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_ABA790();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_ABB4B0();
  __break(1u);
}

void sub_9379F8(uint64_t result, unint64_t a2, char a3)
{
  v4 = result;
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_937188(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_937FA8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_938470(v5 + 1);
  }

  v8 = *v3;
  sub_ABB5C0();
  v9 = qword_B39A40[v4];
  sub_ABB5D0(v9);
  v10 = sub_ABB610();
  v11 = -1 << *(v8 + 32);
  a2 = v10 & ~v11;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v12 = ~v11;
    while (qword_B39A40[*(*(v8 + 48) + a2)] != v9)
    {
      a2 = (a2 + 1) & v12;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + a2) = v4;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_ABB4B0();
  __break(1u);
}

void sub_937B60(Swift::UInt result, unint64_t a2, char a3)
{
  v5 = *(*v3 + 16);
  v6 = *(*v3 + 24);
  if (v6 > v5 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_9373E4(v5 + 1);
  }

  else
  {
    if (v6 > v5)
    {
      v7 = a2;
      sub_9380E8();
      a2 = v7;
      goto LABEL_12;
    }

    sub_93869C(v5 + 1);
  }

  v8 = *v3;
  sub_ABB5C0();
  sub_ABB5D0(result);
  v9 = sub_ABB610();
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    v12 = v9 & ~v10;
    _s4WordCMa();
    a2 = v12;
    while (*(*(v8 + 48) + 8 * a2) != result)
    {
      a2 = (a2 + 1) & v11;
      if (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) == 0)
      {
        goto LABEL_12;
      }
    }

    goto LABEL_15;
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (!v15)
  {
    *(v13 + 16) = v16;
    return;
  }

  __break(1u);
LABEL_15:
  sub_ABB4B0();
  __break(1u);
}

void sub_937CBC(uint64_t a1, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 > v6 && (a3 & 1) != 0)
  {
    goto LABEL_12;
  }

  if (a3)
  {
    sub_1F1E8(v6 + 1, &qword_E22530, &qword_B39760);
  }

  else
  {
    if (v7 > v6)
    {
      sub_25AC4(&qword_E22530, &qword_B39760);
      goto LABEL_12;
    }

    sub_27D58(v6 + 1, &qword_E22530, &qword_B39760);
  }

  v8 = *v3;
  v9 = sub_ABA780(*(*v3 + 40));
  v10 = -1 << *(v8 + 32);
  a2 = v9 & ~v10;
  if ((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2))
  {
    v11 = ~v10;
    type metadata accessor for SyncedLyricsLineView(0);
    do
    {
      v12 = *(*(v8 + 48) + 8 * a2);
      v13 = sub_ABA790();

      if (v13)
      {
        goto LABEL_15;
      }

      a2 = (a2 + 1) & v11;
    }

    while (((*(v8 + 56 + ((a2 >> 3) & 0xFFFFFFFFFFFFFF8)) >> a2) & 1) != 0);
  }

LABEL_12:
  v14 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v14 + 48) + 8 * a2) = a1;
  v15 = *(v14 + 16);
  v16 = __OFADD__(v15, 1);
  v17 = v15 + 1;
  if (!v16)
  {
    *(v14 + 16) = v17;
    return;
  }

  __break(1u);
LABEL_15:
  sub_ABB4B0();
  __break(1u);
}

void sub_937E4C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22888, &unk_B39A30);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
}

void sub_937FA8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22878, &unk_B39A20);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 48) + v14) = *(*(v2 + 48) + v14))
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
}

void sub_9380E8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22870, &unk_B39A10);
  v2 = *v0;
  v3 = sub_ABAD20();
  v4 = v3;
  if (*(v2 + 16))
  {
    v5 = (v3 + 56);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || v5 >= v2 + 56 + 8 * v6)
    {
      memmove(v5, (v2 + 56), 8 * v6);
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
        *(*(v4 + 48) + 8 * (v14 | (v8 << 6))) = *(*(v2 + 48) + 8 * (v14 | (v8 << 6)));
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
}

void sub_938238(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22888, &unk_B39A30);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v14 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v17 = (*(v3 + 48) + 16 * (v14 | (v6 << 6)));
      v18 = *v17;
      v19 = v17[1];
      sub_ABB5C0();

      sub_AB93F0();
      v20 = sub_ABB610();
      v21 = -1 << *(v5 + 32);
      v22 = v20 & ~v21;
      v23 = v22 >> 6;
      if (((-1 << v22) & ~*(v11 + 8 * (v22 >> 6))) == 0)
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
          v27 = *(v11 + 8 * v23);
          if (v27 != -1)
          {
            v12 = __clz(__rbit64(~v27)) + (v23 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v22) & ~*(v11 + 8 * (v22 >> 6)))) | v22 & 0x7FFFFFFFFFFFFFC0;
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
}

void sub_938470(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22878, &unk_B39A20);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + (v13 | (v6 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(qword_B39A40[v16]);
      v17 = sub_ABB610();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

void sub_93869C(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E22870, &unk_B39A10);
  v4 = sub_ABAD30();
  v5 = v4;
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
    v11 = v4 + 56;
    while (v9)
    {
      v13 = __clz(__rbit64(v9));
      v9 &= v9 - 1;
LABEL_15:
      v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
      sub_ABB5C0();
      sub_ABB5D0(v16);
      v17 = sub_ABB610();
      v18 = -1 << *(v5 + 32);
      v19 = v17 & ~v18;
      v20 = v19 >> 6;
      if (((-1 << v19) & ~*(v11 + 8 * (v19 >> 6))) == 0)
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
          v24 = *(v11 + 8 * v20);
          if (v24 != -1)
          {
            v12 = __clz(__rbit64(~v24)) + (v20 << 6);
            goto LABEL_7;
          }
        }

        goto LABEL_28;
      }

      v12 = __clz(__rbit64((-1 << v19) & ~*(v11 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v11 + ((v12 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v12;
      *(*(v5 + 48) + 8 * v12) = v16;
      ++*(v5 + 16);
    }

    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v6 >= v10)
      {

        v2 = v1;
        goto LABEL_26;
      }

      v15 = *(v3 + 56 + 8 * v6);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v9 = (v15 - 1) & v15;
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
}

uint64_t sub_9388C4(char a1)
{
  v2 = v1;
  v4 = *v2;
  sub_ABB5C0();
  v5 = qword_B39A40[a1];
  sub_ABB5D0(v5);
  v6 = sub_ABB610();
  v7 = -1 << *(v4 + 32);
  v8 = v6 & ~v7;
  if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    return 10;
  }

  v9 = ~v7;
  while (qword_B39A40[*(*(v4 + 48) + v8)] != v5)
  {
    v8 = (v8 + 1) & v9;
    if (((*(v4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      return 10;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v12 = *v2;
  v14 = *v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_937FA8();
    v12 = v14;
  }

  v13 = *(*(v12 + 48) + v8);
  sub_938F30(v8);
  result = v13;
  *v2 = v14;
  return result;
}

Swift::Int sub_9389DC(Swift::UInt a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = sub_ABACA0();

    if (v5)
    {
      v6 = sub_938CE4(v4, a1);

      return v6;
    }

    return 0;
  }

  sub_ABB5C0();
  sub_ABB5D0(a1);
  v8 = sub_ABB610();
  v9 = -1 << *(v3 + 32);
  v10 = v8 & ~v9;
  if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
  {
    return 0;
  }

  v11 = ~v9;
  while (*(*(v3 + 48) + 8 * v10) != a1)
  {
    v10 = (v10 + 1) & v11;
    if (((*(v3 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v13 = *v1;
  v15 = *v1;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_9380E8();
    v13 = v15;
  }

  v14 = *(*(v13 + 48) + 8 * v10);
  sub_9390E0(v10);
  result = v14;
  *v1 = v15;
  return result;
}

uint64_t sub_938B4C(void *a1)
{
  v3 = *v1;
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (v3 < 0)
    {
      v4 = *v1;
    }

    else
    {
      v4 = v3 & 0xFFFFFFFFFFFFFF8;
    }

    v5 = a1;
    v6 = sub_ABACA0();

    if (v6)
    {
      v7 = sub_938DD8(v4, v5);

      return v7;
    }

    return 0;
  }

  v9 = v1;
  type metadata accessor for SyncedLyricsLineView(0);
  v10 = sub_ABA780(*(v3 + 40));
  v11 = -1 << *(v3 + 32);
  v12 = v10 & ~v11;
  if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
  {
    return 0;
  }

  v13 = ~v11;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v12);
    v15 = sub_ABA790();

    if (v15)
    {
      break;
    }

    v12 = (v12 + 1) & v13;
    if (((*(v3 + 56 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
    {
      return 0;
    }
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v9;
  v19 = *v9;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_25AC4(&qword_E22530, &qword_B39760);
    v17 = v19;
  }

  v18 = *(*(v17 + 48) + 8 * v12);
  sub_2F1490(v12);
  result = v18;
  *v9 = v19;
  return result;
}

Swift::Int sub_938CE4(uint64_t a1, Swift::UInt a2)
{

  v4 = sub_ABAC50();
  v5 = swift_unknownObjectRetain();
  v6 = sub_936B14(v5, v4);
  v14 = v6;
  sub_ABB5C0();
  sub_ABB5D0(a2);
  v7 = sub_ABB610();
  v8 = v6 + 56;
  v9 = -1 << *(v6 + 32);
  v10 = v7 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    v12 = *(v6 + 48);
    while (1)
    {
      v6 = *(v12 + 8 * v10);
      if (v6 == a2)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v8 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    __break(1u);
  }

  sub_9390E0(v10);
  *v2 = v14;
  return v6;
}

uint64_t sub_938DD8(uint64_t a1, uint64_t a2)
{
  v3 = v2;

  v4 = sub_ABAC50();
  v5 = swift_unknownObjectRetain();
  v6 = sub_936D14(v5, v4);
  v16 = v6;
  v7 = *(v6 + 40);

  v8 = sub_ABA780(v7);
  v9 = -1 << *(v6 + 32);
  v10 = v8 & ~v9;
  if ((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10))
  {
    v11 = ~v9;
    type metadata accessor for SyncedLyricsLineView(0);
    while (1)
    {
      v12 = *(*(v6 + 48) + 8 * v10);
      v13 = sub_ABA790();

      if (v13)
      {
        break;
      }

      v10 = (v10 + 1) & v11;
      if (((*(v6 + 56 + ((v10 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v10) & 1) == 0)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:

    __break(1u);
  }

  v14 = *(*(v6 + 48) + 8 * v10);
  sub_2F1490(v10);
  result = sub_ABA790();
  if (result)
  {
    *v3 = v16;
    return v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_938F30(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + v6);
        sub_ABB5C0();
        sub_ABB5D0(qword_B39A40[v10]);
        v11 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + v2);
          v14 = (v12 + v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_9390E0(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_ABABD0();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        v10 = *(*(v3 + 48) + 8 * v6);
        sub_ABB5C0();
        sub_ABB5D0(v10);
        v11 = sub_ABB610() & v7;
        if (v2 >= v9)
        {
          if (v11 < v9)
          {
            goto LABEL_5;
          }
        }

        else if (v11 >= v9)
        {
          goto LABEL_11;
        }

        if (v2 >= v11)
        {
LABEL_11:
          v12 = *(v3 + 48);
          v13 = (v12 + 8 * v2);
          v14 = (v12 + 8 * v6);
          if (v2 != v6 || v13 >= v14 + 1)
          {
            *v13 = *v14;
            v2 = v6;
          }
        }

LABEL_5:
        v6 = (v6 + 1) & v7;
      }

      while (((*(v4 + ((v6 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v6) & 1) != 0);
    }

    *(v4 + ((v2 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << v2) - 1;
  }

  else
  {
    *(v4 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  }

  v15 = *(v3 + 16);
  v16 = __OFSUB__(v15, 1);
  v17 = v15 - 1;
  if (v16)
  {
    __break(1u);
  }

  else
  {
    *(v3 + 16) = v17;
    ++*(v3 + 36);
  }
}

void sub_939288(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v65 = a1;
  v66 = a2;

  v4 = sub_AB9580();
  v6 = v4;
  if ((v5 & 0x1000000000000000) != 0)
  {
    v6 = sub_939814(v4, v5);
    v36 = v35;

    v5 = v36;
    if ((v36 & 0x2000000000000000) == 0)
    {
      goto LABEL_3;
    }
  }

  else if ((v5 & 0x2000000000000000) == 0)
  {
LABEL_3:
    if ((v6 & 0x1000000000000000) != 0)
    {
      v7 = ((v5 & 0xFFFFFFFFFFFFFFFLL) + 32);
      v8 = v6 & 0xFFFFFFFFFFFFLL;
    }

    else
    {
      v7 = sub_ABAE60();
      v8 = v64;
    }

    v9 = *v7;
    if (v9 == 43)
    {
      if (v8 >= 1)
      {
        v19 = v8 - 1;
        if (v19)
        {
          v20 = a3 + 48;
          v21 = a3 + 55;
          v22 = a3 + 87;
          if (a3 > 10)
          {
            v20 = 58;
          }

          else
          {
            v22 = 97;
            v21 = 65;
          }

          if (v7)
          {
            v23 = 0;
            v24 = v7 + 1;
            while (1)
            {
              v25 = *v24;
              if (v25 < 0x30 || v25 >= v20)
              {
                if (v25 < 0x41 || v25 >= v21)
                {
                  if (v25 < 0x61 || v25 >= v22)
                  {
                    goto LABEL_125;
                  }

                  v26 = -87;
                }

                else
                {
                  v26 = -55;
                }
              }

              else
              {
                v26 = -48;
              }

              v27 = v23 * a3;
              if ((v23 * a3) >> 64 == (v23 * a3) >> 63)
              {
                v23 = v27 + (v25 + v26);
                if (!__OFADD__(v27, (v25 + v26)))
                {
                  ++v24;
                  if (--v19)
                  {
                    continue;
                  }
                }
              }

              goto LABEL_125;
            }
          }
        }

        goto LABEL_125;
      }

      goto LABEL_129;
    }

    if (v9 != 45)
    {
      if (v8)
      {
        v28 = a3 + 48;
        v29 = a3 + 55;
        v30 = a3 + 87;
        if (a3 > 10)
        {
          v28 = 58;
        }

        else
        {
          v30 = 97;
          v29 = 65;
        }

        if (v7)
        {
          v31 = 0;
          while (1)
          {
            v32 = *v7;
            if (v32 < 0x30 || v32 >= v28)
            {
              if (v32 < 0x41 || v32 >= v29)
              {
                if (v32 < 0x61 || v32 >= v30)
                {
                  goto LABEL_125;
                }

                v33 = -87;
              }

              else
              {
                v33 = -55;
              }
            }

            else
            {
              v33 = -48;
            }

            v34 = v31 * a3;
            if ((v31 * a3) >> 64 == (v31 * a3) >> 63)
            {
              v31 = v34 + (v32 + v33);
              if (!__OFADD__(v34, (v32 + v33)))
              {
                ++v7;
                if (--v8)
                {
                  continue;
                }
              }
            }

            goto LABEL_125;
          }
        }
      }

      goto LABEL_125;
    }

    if (v8 >= 1)
    {
      v10 = v8 - 1;
      if (v10)
      {
        v11 = a3 + 48;
        v12 = a3 + 55;
        v13 = a3 + 87;
        if (a3 > 10)
        {
          v11 = 58;
        }

        else
        {
          v13 = 97;
          v12 = 65;
        }

        if (v7)
        {
          v14 = 0;
          v15 = v7 + 1;
          while (1)
          {
            v16 = *v15;
            if (v16 < 0x30 || v16 >= v11)
            {
              if (v16 < 0x41 || v16 >= v12)
              {
                if (v16 < 0x61 || v16 >= v13)
                {
                  break;
                }

                v17 = -87;
              }

              else
              {
                v17 = -55;
              }
            }

            else
            {
              v17 = -48;
            }

            v18 = v14 * a3;
            if ((v14 * a3) >> 64 == (v14 * a3) >> 63)
            {
              v14 = v18 - (v16 + v17);
              if (!__OFSUB__(v18, (v16 + v17)))
              {
                ++v15;
                if (--v10)
                {
                  continue;
                }
              }
            }

            break;
          }
        }
      }

LABEL_125:

      return;
    }

    __break(1u);
LABEL_128:
    __break(1u);
LABEL_129:
    __break(1u);
    goto LABEL_130;
  }

  v37 = HIBYTE(v5) & 0xF;
  v65 = v6;
  v66 = v5 & 0xFFFFFFFFFFFFFFLL;
  if (v6 != 43)
  {
    if (v6 != 45)
    {
      if (v37)
      {
        v56 = 0;
        v57 = a3 + 48;
        v58 = a3 + 55;
        v59 = a3 + 87;
        if (a3 > 10)
        {
          v57 = 58;
        }

        else
        {
          v59 = 97;
          v58 = 65;
        }

        v60 = &v65;
        while (1)
        {
          v61 = *v60;
          if (v61 < 0x30 || v61 >= v57)
          {
            if (v61 < 0x41 || v61 >= v58)
            {
              if (v61 < 0x61 || v61 >= v59)
              {
                goto LABEL_125;
              }

              v62 = -87;
            }

            else
            {
              v62 = -55;
            }
          }

          else
          {
            v62 = -48;
          }

          v63 = v56 * a3;
          if ((v56 * a3) >> 64 == (v56 * a3) >> 63)
          {
            v56 = v63 + (v61 + v62);
            if (!__OFADD__(v63, (v61 + v62)))
            {
              v60 = (v60 + 1);
              if (--v37)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    if (v37)
    {
      v38 = v37 - 1;
      if (v38)
      {
        v39 = 0;
        v40 = a3 + 48;
        v41 = a3 + 55;
        v42 = a3 + 87;
        if (a3 > 10)
        {
          v40 = 58;
        }

        else
        {
          v42 = 97;
          v41 = 65;
        }

        v43 = &v65 + 1;
        while (1)
        {
          v44 = *v43;
          if (v44 < 0x30 || v44 >= v40)
          {
            if (v44 < 0x41 || v44 >= v41)
            {
              if (v44 < 0x61 || v44 >= v42)
              {
                goto LABEL_125;
              }

              v45 = -87;
            }

            else
            {
              v45 = -55;
            }
          }

          else
          {
            v45 = -48;
          }

          v46 = v39 * a3;
          if ((v39 * a3) >> 64 == (v39 * a3) >> 63)
          {
            v39 = v46 - (v44 + v45);
            if (!__OFSUB__(v46, (v44 + v45)))
            {
              ++v43;
              if (--v38)
              {
                continue;
              }
            }
          }

          goto LABEL_125;
        }
      }

      goto LABEL_125;
    }

    goto LABEL_128;
  }

  if (v37)
  {
    v47 = v37 - 1;
    if (v47)
    {
      v48 = 0;
      v49 = a3 + 48;
      v50 = a3 + 55;
      v51 = a3 + 87;
      if (a3 > 10)
      {
        v49 = 58;
      }

      else
      {
        v51 = 97;
        v50 = 65;
      }

      v52 = &v65 + 1;
      while (1)
      {
        v53 = *v52;
        if (v53 < 0x30 || v53 >= v49)
        {
          if (v53 < 0x41 || v53 >= v50)
          {
            if (v53 < 0x61 || v53 >= v51)
            {
              goto LABEL_125;
            }

            v54 = -87;
          }

          else
          {
            v54 = -55;
          }
        }

        else
        {
          v54 = -48;
        }

        v55 = v48 * a3;
        if ((v48 * a3) >> 64 == (v48 * a3) >> 63)
        {
          v48 = v55 + (v53 + v54);
          if (!__OFADD__(v55, (v53 + v54)))
          {
            ++v52;
            if (--v47)
            {
              continue;
            }
          }
        }

        goto LABEL_125;
      }
    }

    goto LABEL_125;
  }

LABEL_130:
  __break(1u);
}

uint64_t sub_939814(uint64_t a1, unint64_t a2)
{
  v2 = sub_AB9590();
  v6 = sub_939894(v2, v3, v4, v5);

  return v6;
}

uint64_t sub_939894(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    v9 = sub_ABA9E0();
    if (!v9 || (v10 = v9, v11 = sub_935FB4(v9, 0), v12 = sub_44FB70(v14, (v11 + 4), v10, a1, a2, a3, a4), , , v12 == v10))
    {
      v13 = sub_AB93D0();

      return v13;
    }

    __break(1u);
  }

  else
  {
    if ((a4 & 0x2000000000000000) != 0)
    {
      v14[0] = a3;
      v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
      return sub_AB93D0();
    }

    if ((a3 & 0x1000000000000000) != 0)
    {
      goto LABEL_4;
    }
  }

  sub_ABAE60();
LABEL_4:

  return sub_AB93D0();
}

uint64_t _s7LyricsX0A14OptionsManagerC6OptionO8rawValueAESgSi_tcfC_0(uint64_t result)
{
  if (result <= 4)
  {
    if (result >= 0)
    {
      return result;
    }

    return 10;
  }

  if (result > 8)
  {
    if (result == 1000)
    {
      return 9;
    }

    return 10;
  }

  return result;
}

unint64_t sub_939A90()
{
  result = qword_E22668;
  if (!qword_E22668)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22668);
  }

  return result;
}

unint64_t sub_939B18()
{
  result = qword_E22620;
  if (!qword_E22620)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_E22618, &qword_B39900);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_E22620);
  }

  return result;
}

uint64_t sub_939B7C()
{
  swift_weakDestroy();

  return swift_deallocObject();
}

void sub_939BBC(double *a1, uint64_t a2)
{
  if (*(a2 + 16))
  {
    sub_92809C(a1);
    if (v2)
    {
    }
  }
}

uint64_t sub_939C0C(double *a1, uint64_t a2)
{
  if (!*(a2 + 16))
  {
    return 0;
  }

  v3 = sub_92809C(a1);
  if (v4)
  {
    return *(*(a2 + 56) + 8 * v3);
  }

  else
  {
    return 0;
  }
}

void sub_939C64(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  if (a1)
  {
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v12 = *v2;
    sub_92A6A0(a1, a2, isUniquelyReferenced_nonNull_native);
    v15 = *(a2 + 16);
    sub_E17A4(&v15);
    v14 = *(a2 + 32);
    sub_12E1C(&v14, &qword_E224E0, &unk_B39710);
    *v2 = v12;
  }

  else
  {
    v7 = sub_92809C(a2);
    v9 = v8;
    v15 = *(a2 + 16);
    sub_E17A4(&v15);
    v14 = *(a2 + 32);
    sub_12E1C(&v14, &qword_E224E0, &unk_B39710);
    if (v9)
    {
      v10 = swift_isUniquelyReferenced_nonNull_native();
      v11 = *v3;
      v13 = *v3;
      if (!v10)
      {
        sub_92B488();
        v11 = v13;
      }

      sub_94D12C(v7, v11);
      *v3 = v11;
    }
  }
}

id sub_939DA4(unsigned __int8 *a1)
{
  memcpy(__dst, &v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
  sub_95313C(__dst, v6);
  LOBYTE(a1) = _s7LyricsX06SyncedA14ViewControllerC5SpecsV23__derived_struct_equalsySbAE_AEtFZ_0(__dst, a1);
  result = sub_953198(__dst);
  if ((a1 & 1) == 0)
  {
    v4 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer;
    v5 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
    if (v5)
    {
      if (*(v5 + 96))
      {
        [*(v5 + 96) removeFromSuperview];
      }
    }

    *&v1[v4] = 0;

    return [v1 setNeedsLayout];
  }

  return result;
}

void sub_939E50(uint64_t a1, char a2)
{
  if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) != (a1 & 1))
  {
    *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected) = a1 & 1;
    v3 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
    if (v3)
    {
      v5 = a1;
      v6 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText + 8);
      v85 = a1 & 1;
      if (v6 && (v7 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel)) != 0)
      {
        v8 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translatedText);

        v9 = v7;
        v10 = sub_944DA4(v8, v6);

        [v9 setAttributedText:v10];
      }

      else
      {
      }

      v11 = v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v12 = 360;
      if (*(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind))
      {
        v12 = 384;
      }

      v13 = *(v11 + 368);
      v14 = *(v11 + v12);
      v15 = v13;
      v16 = sub_AB9260();
      v17 = [objc_opt_self() animationWithKeyPath:v16];

      v77 = v11;
      CASpringAnimation.springParameters.setter([objc_allocWithZone(UISpringTimingParameters) initWithMass:*(v11 + 664) stiffness:*(v11 + 672) damping:*(v11 + 680) initialVelocity:{0.0, 0.0}]);
      v18 = v17;
      if (v5)
      {
        v19 = v15;
      }

      else
      {
        v19 = v14;
      }

      if (v5)
      {
        v20 = v14;
      }

      else
      {
        v20 = v15;
      }

      v21 = [v19 CGColor];
      [v18 setFromValue:v21];

      v89 = v20;
      v22 = [v20 CGColor];
      [v18 setToValue:v22];
      v73 = v18;

      v23 = swift_allocObject();
      *(v23 + 16) = _swiftEmptyArrayStorage;
      v24 = (v23 + 16);
      v25 = *(v3 + 56);
      v75 = v14;
      v76 = v15;
      v88 = v23;
      v83 = *(v25 + 16);
      if (v83)
      {
        v81 = v25 + 32;
        if (v5)
        {
          v26 = 1.0;
        }

        else
        {
          v26 = 0.0;
        }

        v27 = 0;
        v79 = v25;
        v74 = a2;
        while (1)
        {
          if (v27 >= *(v25 + 16))
          {
            __break(1u);
LABEL_84:
            __break(1u);
            goto LABEL_85;
          }

          v28 = *(v81 + 8 * v27);
          if ((a2 & 1) != 0 && (v29 = *(v28 + 112)) != 0 && (v30 = *(v29 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer)) != 0)
          {

            v31 = v30;
            v32 = sub_AB9260();
            [v31 addAnimation:v73 forKey:v32];

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          else
          {

            v33 = *(v28 + 112);
            if (!v33)
            {
              goto LABEL_31;
            }
          }

          v34 = *(v33 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_backgroundColorLayer);
          if (v34)
          {
            v35 = v34;
            v36 = [v89 CGColor];
            [v35 setBackgroundColor:v36];
          }

LABEL_31:
          v5 = swift_allocObject();
          *(v5 + 16) = v28;
          *(v5 + 24) = v85;
          *(v5 + 32) = v23;
          *(v5 + 40) = v14;
          *(v5 + 48) = v15;
          v87 = v27;
          if (a2)
          {
            sub_13C80(0, &qword_E229B0, UIView_ptr);
            v37 = v77[83];
            v38 = v77[84];
            v39 = v77[85];
            v40 = objc_allocWithZone(UISpringTimingParameters);
            v41 = v14;
            v42 = v15;

            v43 = [v40 initWithMass:v37 stiffness:v38 damping:v39 initialVelocity:{0.0, 0.0}];
            v44 = swift_allocObject();
            *(v44 + 16) = sub_955640;
            *(v44 + 24) = v5;

            static UIView.animate(withSpringTimingParameters:delay:options:animations:completion:)(v43, 0, sub_70638, v44, 0, 0, 0.0);
          }

          else
          {
            v45 = *(v28 + 112);
            if (v45 && (v46 = *(v45 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
            {
              v47 = v14;
              v48 = v15;

              [v46 setAlpha:v26];
            }

            else
            {
              v49 = v14;
              v50 = v15;
            }

            swift_beginAccess();
            v51 = *(v28 + 16);
            if (v51 >> 62)
            {
              v52 = sub_ABB060();
              if (v52)
              {
LABEL_39:
                if (v52 < 1)
                {
                  goto LABEL_87;
                }

                for (i = 0; i != v52; ++i)
                {
                  if ((v51 & 0xC000000000000001) != 0)
                  {
                    v54 = sub_ABAE20();
                  }

                  else
                  {
                    v54 = *(v51 + 8 * i + 32);
                  }

                  swift_beginAccess();

                  sub_AB9730();
                  if (*(&dword_10 + (*v24 & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*v24 & 0xFFFFFFFFFFFFFF8)) >> 1)
                  {
                    sub_AB97A0();
                  }

                  sub_AB97F0();
                  swift_endAccess();
                  v55 = *(v54 + 208);
                  if (v55)
                  {
                    v56 = *(v55 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
                    [v56 setBackgroundColor:v89];
                  }
                }

                v14 = v75;
                v15 = v76;
                a2 = v74;
                goto LABEL_21;
              }
            }

            else
            {
              v52 = *(&dword_10 + (v51 & 0xFFFFFFFFFFFFFF8));
              if (v52)
              {
                goto LABEL_39;
              }
            }
          }

LABEL_21:
          v23 = v88;
          v27 = v87 + 1;
          v25 = v79;
          if (v87 + 1 == v83)
          {

            break;
          }
        }
      }

      swift_beginAccess();
      v5 = *v24;
      if (*v24 >> 62)
      {
        goto LABEL_88;
      }

      v57 = *(&dword_10 + (v5 & 0xFFFFFFFFFFFFFF8));
      if (v57)
      {
        while (1)
        {
          v86 = v5 & 0xC000000000000001;
          v78 = v5 + 32;
          v80 = v5 & 0xFFFFFFFFFFFFFF8;
          v14 = &v92;

          v58 = 0;
          v82 = v57;
          v84 = v5;
          while (1)
          {
            if (v86)
            {
              v59 = sub_ABAE20();
              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            else
            {
              if (v58 >= *(v80 + 16))
              {
                goto LABEL_86;
              }

              v59 = *(v78 + 8 * v58);

              v60 = __OFADD__(v58++, 1);
              if (v60)
              {
                goto LABEL_84;
              }
            }

            sub_95B940();
            v61 = *(v59 + 104);
            if (!(v61 >> 62))
            {
              v62 = *(&dword_10 + (v61 & 0xFFFFFFFFFFFFFF8));
              if (v62)
              {
                break;
              }

              goto LABEL_81;
            }

            v62 = sub_ABB060();
            if (v62)
            {
              break;
            }

LABEL_81:

LABEL_56:
            if (v58 == v57)
            {

              goto LABEL_90;
            }
          }

          if (v62 >= 1)
          {
            break;
          }

LABEL_85:
          __break(1u);
LABEL_86:
          __break(1u);
LABEL_87:
          __break(1u);
LABEL_88:
          v57 = sub_ABB060();
          if (!v57)
          {
            goto LABEL_89;
          }
        }

        v63 = 0;
        while (1)
        {
          if ((v61 & 0xC000000000000001) != 0)
          {
            v69 = sub_ABAE20();
          }

          else
          {
            v69 = *(v61 + 8 * v63 + 32);
          }

          v70 = *(v69 + 136);
          v71 = *(v69 + 144);
          if (v71 == 1)
          {
            if (!v70)
            {
              goto LABEL_79;
            }
          }

          else
          {
            if (*(v69 + 144))
            {
              v72 = 1;
            }

            else
            {
              v72 = v70 == 0;
            }

            if (v72)
            {
LABEL_79:
              sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
              v70 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:14.0 damping:7.0 initialVelocity:{0.0, 0.0}]).super.isa;
              goto LABEL_69;
            }
          }

          sub_955664(*(v69 + 136), *(v69 + 144));
          sub_955664(v70, v71);
          [(objc_class *)v70 stopAnimation:1];
LABEL_69:
          ++v63;
          v94 = sub_955654;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_1B5EB4;
          v93 = &block_descriptor_456_0;
          v64 = _Block_copy(&aBlock);

          [(objc_class *)v70 addAnimations:v64];
          _Block_release(v64);
          v94 = sub_95565C;
          v95 = v69;
          aBlock = _NSConcreteStackBlock;
          v91 = 1107296256;
          v92 = sub_624AE8;
          v93 = &block_descriptor_459;
          v65 = _Block_copy(&aBlock);

          v66 = v70;

          [(objc_class *)v66 addCompletion:v65];
          _Block_release(v65);
          v67 = *(v69 + 136);
          *(v69 + 136) = v66;
          v68 = *(v69 + 144);
          *(v69 + 144) = 1;
          sub_955490(v67, v68);
          [(objc_class *)v66 startAnimation];

          if (v62 == v63)
          {

            v57 = v82;
            v5 = v84;
            goto LABEL_56;
          }
        }
      }

LABEL_89:

LABEL_90:
    }
  }
}

void sub_93A924(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = *(a1 + 112);
  if (v10)
  {
    v11 = *(v10 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView);
    if (v11)
    {
      v12 = 0.0;
      if (a2)
      {
        v12 = 1.0;
      }

      [v11 setAlpha:v12];
    }
  }

  swift_beginAccess();
  v13 = *(a1 + 16);
  if (v13 >> 62)
  {
    v14 = sub_ABB060();
    if (!v14)
    {
      return;
    }
  }

  else
  {
    v14 = *(&dword_10 + (v13 & 0xFFFFFFFFFFFFFF8));
    if (!v14)
    {
      return;
    }
  }

  if (v14 < 1)
  {
    __break(1u);
  }

  else
  {
    if ((a2 & 1) == 0)
    {
      a4 = a5;
    }

    for (i = 0; i != v14; ++i)
    {
      if ((v13 & 0xC000000000000001) != 0)
      {
        v16 = sub_ABAE20();
      }

      else
      {
        v16 = *(v13 + 8 * i + 32);
      }

      swift_beginAccess();

      sub_AB9730();
      if (*(&dword_10 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >= *(&dword_18 + (*(a3 + 16) & 0xFFFFFFFFFFFFFF8)) >> 1)
      {
        sub_AB97A0();
      }

      sub_AB97F0();
      swift_endAccess();
      v17 = *(v16 + 208);
      if (v17)
      {
        v18 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView);
        [v18 setBackgroundColor:a4];
      }
    }
  }
}

void sub_93AB14(char a1, double a2)
{
  v3 = v2;
  if (v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
  {
    if (a1)
    {
      v5 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
      if (!v5)
      {
        return;
      }

      v6 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448];
      memcpy(__dst, &v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs], 0x2B0uLL);
      v7 = *(v5 + 56);
      v8 = *(v7 + 16);
      if (!v8)
      {
        return;
      }

      v9 = v6 + a2;

      sub_95313C(__dst, v58);

      v10 = 0;
      while (v10 < *(v7 + 16))
      {
        ++v10;

        sub_957774(__dst, v9);

        if (v8 == v10)
        {

          sub_953198(__dst);
          return;
        }
      }

      __break(1u);
LABEL_47:
      __break(1u);
    }

    else
    {
      v45 = objc_opt_self();
      v46 = swift_allocObject();
      *(v46 + 16) = v3;
      *(v46 + 24) = a2;
      v47 = swift_allocObject();
      *(v47 + 16) = sub_95555C;
      *(v47 + 24) = v46;
      __dst[4] = sub_36C08;
      __dst[5] = v47;
      __dst[0] = _NSConcreteStackBlock;
      __dst[1] = 1107296256;
      __dst[2] = sub_1822E0;
      __dst[3] = &block_descriptor_447;
      v48 = _Block_copy(__dst);
      v49 = v3;

      [v45 performWithoutAnimation:v48];
      _Block_release(v48);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        return;
      }
    }

    __break(1u);
    return;
  }

  v11 = *&v2[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  if (!v11)
  {
    sub_94227C(_swiftEmptyArrayStorage);
    v12 = v51;
    v13 = *(v51 + 16);
    if (v13)
    {
      goto LABEL_11;
    }

LABEL_43:

    return;
  }

  v12 = *(v11 + 56);

  v13 = *(v12 + 16);
  if (!v13)
  {
    goto LABEL_43;
  }

LABEL_11:
  sub_13C80(0, &qword_E239C0, OS_dispatch_queue_ptr);
  v14 = 0;
  v15 = v12 + 32;
  v16 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  v54 = v12;
  v55 = v2;
  v53 = v13;
  v52 = v12 + 32;
  v56 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
  while (1)
  {
    v17 = *(v15 + 8 * v14++);
    memcpy(__dst, &v3[v16], 0x2B0uLL);
    *(v17 + 120) = 1;

    sub_95313C(__dst, v58);
    v18 = sub_ABA150();
    v19 = *&__dst[80];
    v20 = swift_allocObject();
    swift_weakInit();

    OS_dispatch_queue.asyncAfter(_:block:)(sub_9554DC, v20, v19);

    if ((*(v17 + 57) & 1) == 0)
    {
      break;
    }

    swift_beginAccess();
    v21 = *(v17 + 16);
    if (v21 >> 62)
    {
      v22 = sub_ABB060();
      if (!v22)
      {
LABEL_36:
        sub_953198(__dst);

        v16 = v56;
        if (v14 == v13)
        {
          goto LABEL_39;
        }

        goto LABEL_37;
      }
    }

    else
    {
      v22 = *(&dword_10 + (v21 & 0xFFFFFFFFFFFFFF8));
      if (!v22)
      {
        goto LABEL_36;
      }
    }

    if (v22 < 1)
    {
      goto LABEL_47;
    }

    v57 = v14;

    for (i = 0; i != v22; ++i)
    {
      if ((v21 & 0xC000000000000001) != 0)
      {
        v24 = *(sub_ABAE20() + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      else
      {
        v25 = *(v21 + 8 * i + 32);

        v24 = *(v25 + 208);
        if (!v24)
        {
          goto LABEL_17;
        }
      }

      v26 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters];
      if (v26)
      {
        v27 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_crossfadeAnimationParameters + 8];
        v28 = *&v24[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Word17WordContainerView_overlayView];
        v29 = v24;
        sub_9554E4(v26, v27);
        v30 = v28;
        v31 = v26;
        [v30 setBackgroundColor:v31];
      }

LABEL_17:
    }

    sub_953198(__dst);

    v12 = v54;
    v3 = v55;
    v13 = v53;
    v16 = v56;
    v14 = v57;
    v15 = v52;
    if (v57 == v53)
    {
      goto LABEL_39;
    }

LABEL_37:
    if (v14 >= *(v12 + 16))
    {
      __break(1u);
      goto LABEL_39;
    }
  }

  v32 = *(v17 + 112);
  if (v32 && (v33 = *(v32 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView4Line8LineView_gradientView)) != 0)
  {
    v34 = __dst[25];
    v35 = v33;
    [v34 lineHeight];
    v37 = vabdd_f64(v36 * *&__dst[32] + *&__dst[58] + *&__dst[58], CGRectGetHeight(*(v17 + 80))) * 0.5;
    if (*(v17 + 58))
    {
      v38 = v37 + CGRectGetWidth(*(v17 + 80));
      v39 = -v37;
    }

    else
    {
      v39 = -v37;
      v38 = -v37;
    }

    v40 = *(v17 + 80);
    v41 = *(v17 + 88);
    v42 = *(v17 + 96);
    v43 = *(v17 + 104);
    v44 = v35;
    v61.origin.x = v40;
    v61.origin.y = v41;
    v61.size.width = v42;
    v61.size.height = v43;
    [v44 setFrame:{v38, v39, v37, v37 + v37 + CGRectGetHeight(v61)}];
    sub_953198(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

  else
  {
    sub_953198(__dst);

    if (v14 != v13)
    {
      goto LABEL_37;
    }
  }

LABEL_39:
}

void sub_93B1CC(uint64_t a1, double a2)
{
  v2 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    v4 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 448);
    memcpy(__dst, (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs), sizeof(__dst));
    v5 = *(v2 + 56);
    v6 = *(v5 + 16);
    if (v6)
    {
      v7 = v4 + a2;

      sub_95313C(__dst, &v9);

      v8 = 0;
      while (v8 < *(v5 + 16))
      {
        ++v8;

        sub_957774(__dst, v7);

        if (v6 == v8)
        {

          sub_953198(__dst);
          return;
        }
      }

      __break(1u);
    }
  }
}

uint64_t sub_93B304(double a1)
{
  v2 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (v2)
  {
    if (vabdd_f64(a1, *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth)) < 1.0)
    {
      return 0;
    }

    v4 = v2[8];
    v5 = v2[9];
    v6 = v2[10];
    v7 = v2[11];

    v21.origin.x = v4;
    v21.origin.y = v5;
    v21.size.width = v6;
    v21.size.height = v7;
    if (vabdd_f64(a1, CGRectGetWidth(v21)) < 1.0)
    {

      return 0;
    }

    v8 = *(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (!v8)
    {

      return 1;
    }

    v9 = (v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    if (*(v1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate) >= 3uLL)
    {
      v16 = v9[3];
      v15 = v9[4];
      v18 = v9[1];
      v17 = v9[2];
      v19 = v8;
      v10 = v18;
      v11 = v17;
      v12 = v16;
      v13 = v15;
    }

    else
    {
      [v8 frame];
    }

    Width = CGRectGetWidth(*&v10);

    if (vabdd_f64(a1, Width) < 1.0)
    {
      return 0;
    }
  }

  return 1;
}

double sub_93B444(double a1, double a2)
{
  v4 = 0.0;
  if (a1 != 0.0 || a2 != 0.0)
  {
    v6 = sub_93B304(a1);
    if (v6)
    {
      v7 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText);
      sub_931F14();
      *v7 = sub_ABAAB0();
      v7[1] = v8;

      *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth) = a1;
    }

    sub_941670(v6 & 1, 0, a1, a2);
    v9 = (v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v10 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
    v11 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
    if (v11)
    {
      v12 = v10 == 1;
    }

    else
    {
      v12 = 1;
    }

    if (v12)
    {
      v13 = *(v2 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
      if (v13)
      {
        return *(v13 + 80);
      }
    }

    else
    {
      v14 = v9[1];
      v15 = v9[2];
      v4 = v9[3];
      v16 = v9[4];
      v17 = v11;
      v18 = v17;
      if (v10 <= 2)
      {
        [v17 frame];
        v14 = v19;
        v15 = v20;
        v4 = v21;
        v16 = v22;
      }

      v24.origin.x = v14;
      v24.origin.y = v15;
      v24.size.width = v4;
      v24.size.height = v16;
      CGRectGetMaxY(v24);
    }
  }

  return v4;
}

void sub_93B654()
{
  v10.receiver = v0;
  v10.super_class = _s8TextViewCMa(0);
  objc_msgSendSuper2(&v10, "layoutSubviews");
  [v0 bounds];
  v2 = sub_93B304(v1);
  if (v2)
  {
    v3 = &v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v8 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText];
    v9 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_adjustedText + 8];
    v7 = sub_931F14();
    *v3 = sub_ABAAB0();
    v3[1] = v4;

    [v0 bounds];
    *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_lastSizedWidth] = CGRectGetWidth(v11);
  }

  [v0 bounds];
  sub_941670(v2 & 1, 0, v5, v6);
  sub_93B7D8();
  sub_93AB14(0, *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_progress]);
}

void sub_93B7D8()
{
  v3 = v0;
  [v0 bounds];
  if (v4 <= 0.0 || !*&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer])
  {
    return;
  }

  v124 = v0;
  v125 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer];
  v6 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText];
  v5 = *&v0[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_transliteratedText + 8];
  v7 = &v3[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata];
  swift_beginAccess();
  v8 = *(v7 + 48);
  v143[2] = *(v7 + 32);
  v143[3] = v8;
  v9 = *(v7 + 80);
  v143[4] = *(v7 + 64);
  v143[5] = v9;
  v10 = *(v7 + 16);
  v143[0] = *v7;
  v143[1] = v10;
  v11 = *(&v9 + 1);
  v12 = v9;
  if (*(&v143[0] + 1))
  {

    v13 = v12;
    v14 = v11;
  }

  else
  {
    v13 = 0;
    v14 = 0;
  }

  v140[0] = v143[0];
  v15 = *(v7 + 32);
  v140[1] = *(v7 + 16);
  v140[2] = v15;
  v16 = *(v7 + 64);
  v140[3] = *(v7 + 48);
  v140[4] = v16;
  v141 = v12;
  v142 = v11;

  v17 = v125;

  sub_15F84(v143, __dst, &qword_E22980, &unk_B39CC0);
  sub_12E1C(v140, &qword_E22980, &unk_B39CC0);
  v18 = &selRef_format;
  v19 = &qword_E22000;
  if (!v5)
  {
    if (!v14)
    {
      goto LABEL_46;
    }

    goto LABEL_12;
  }

  if (!v14)
  {
LABEL_12:
    v20 = v124;

    goto LABEL_13;
  }

  if (v6 == v13 && v5 == v14)
  {

LABEL_46:
    LODWORD(rect) = 1;
    v20 = v124;
    goto LABEL_49;
  }

  v85 = sub_ABB3C0();

  v20 = v124;
  if ((v85 & 1) == 0)
  {
LABEL_13:
    v21 = *(v7 + 16);
    __dst[0] = *v7;
    __dst[1] = v21;
    v22 = *(v7 + 48);
    __dst[2] = *(v7 + 32);
    __dst[3] = v22;
    v23 = *(v7 + 80);
    __dst[4] = *(v7 + 64);
    __dst[5] = v23;
    if (*(&__dst[0] + 1))
    {
      v126 = *(&__dst[1] + 1);
      v24 = *&__dst[1];
      v25 = *(&__dst[2] + 1);
      v114 = __dst[4];
      v115 = __dst[3];
      v26 = objc_opt_self();
      v136 = __dst[2];
      v137 = __dst[3];
      v138 = __dst[4];
      v139 = __dst[5];
      v134 = __dst[0];
      v135 = __dst[1];
      sub_954FD8(&v134, &aBlock);
      if ([v26 _isInAnimationBlockWithAnimationsEnabled] && v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_direction] == 1 && *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment] == 2)
      {
        v119 = *(v25 + 16);
        v113 = v7;
        if (!v119)
        {
          goto LABEL_77;
        }

        v118 = v25 + 32;

        v27 = 0.0;
        v116 = v25;
        v117 = v24;
        while (1)
        {
          if (*&v27 >= *(v25 + 16))
          {
            goto LABEL_95;
          }

          v7 = *(v118 + 8 * *&v27);
          recta = v27;
          if (v24[2] && (v28 = sub_8E0BA4(v7), (v29 & 1) != 0))
          {
            v24 = *(v24[7] + 8 * v28);
          }

          else
          {
            v24 = &_swiftEmptySetSingleton;
          }

          swift_beginAccess();

          v32 = sub_952FD0(v30, v31);

          v33 = sub_93C61C(v32, v24);

          if ((v33 & 0xC000000000000001) != 0)
          {
            v24 = sub_ABAC10();
            _s4WordCMa();
            sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
            sub_AB9BC0();
            v33 = v144;
            v34 = v145;
            v35 = v146;
            v19 = v147;
            v36 = v148;
          }

          else
          {
            v19 = 0;
            v37 = -1 << *(v33 + 32);
            v34 = v33 + 56;
            v35 = ~v37;
            v38 = -v37;
            v39 = v38 < 64 ? ~(-1 << v38) : -1;
            v36 = v39 & *(v33 + 56);
          }

          *&rect = *&recta + 1;
          v18 = ((v35 + 64) >> 6);
          while (1)
          {
            v17 = v19;
            if ((v33 & 0x8000000000000000) == 0)
            {
              break;
            }

            v24 = (v33 & 0x7FFFFFFFFFFFFFFFLL);
            v43 = sub_ABAC90();
            if (!v43)
            {
              goto LABEL_19;
            }

            *&v127[0] = v43;
            _s4WordCMa();
            swift_dynamicCast();
            v42 = aBlock;
            if (!aBlock)
            {
              goto LABEL_19;
            }

LABEL_42:
            if (v126[2])
            {
              v24 = v126;
              v44 = sub_8E0BA4(v7);
              if (v45)
              {
                v46 = *(v42 + 208);
                if (v46)
                {
                  v47 = v126[7] + 32 * v44;
                  v49 = *(v47 + 16);
                  v48 = *(v47 + 24);
                  v2 = *v47;
                  v1 = *(v47 + 8);
                  v24 = v46;
                  v151.origin.x = v2;
                  v151.origin.y = v1;
                  v151.size.width = v49;
                  v151.size.height = v48;
                  Width = CGRectGetWidth(v151);
                  v51 = Width - CGRectGetWidth(*(v7 + 80));
                  [v24 frame];
                  [v24 setFrame:v52 - v51];
                }
              }
            }
          }

          v40 = v19;
          v41 = v36;
          if (v36)
          {
            break;
          }

          while (1)
          {
            v19 = (v40 + 1);
            if (__OFADD__(v40, 1))
            {
              __break(1u);
              goto LABEL_93;
            }

            if (v19 >= v18)
            {
              break;
            }

            v41 = *(v34 + 8 * v19);
            v40 = (v40 + 1);
            if (v41)
            {
              goto LABEL_38;
            }
          }

LABEL_19:
          sub_2BB88(v33);

          v27 = rect;
          v17 = v125;
          v18 = &selRef_format;
          v25 = v116;
          v24 = v117;
          if (*&rect == v119)
          {

            v7 = v113;
LABEL_77:
            v92 = *(v17 + 8);
            v93 = v17[9];
            v94 = v17[10];
            v95 = v17[11];
            *(v17 + 4) = v115;
            *(v17 + 5) = v114;
            v24 = swift_allocObject();
            v24[2] = v17;
            v126 = v92;
            v24[3] = v92;
            *(v24 + 4) = v93;
            rect = v93;
            v1 = v94;
            *(v24 + 5) = v94;
            *(v24 + 6) = v95;
            v2 = v95;

            v19 = _swiftEmptyArrayStorage;
            if (swift_isUniquelyReferenced_nonNull_native())
            {
              goto LABEL_78;
            }

            goto LABEL_96;
          }
        }

LABEL_38:
        v36 = (v41 - 1) & v41;
        v42 = *(*(v33 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v41)))));

        if (!v42)
        {
          goto LABEL_19;
        }

        goto LABEL_42;
      }

      sub_12E1C(__dst, &qword_E22980, &unk_B39CC0);
    }

    LODWORD(rect) = 0;
    goto LABEL_49;
  }

  LODWORD(rect) = 1;
LABEL_49:
  v53 = *&v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_alignment];
  if (v53 == 1)
  {
    [v20 bounds];
    v54 = (CGRectGetMaxX(v153) - v125[10]) * 0.5;
    goto LABEL_53;
  }

  if (v53 == 2)
  {
    [v20 bounds];
    v54 = CGRectGetMaxX(v152) - v125[10];
LABEL_53:
    v125[8] = v54;
  }

  v19 = _swiftEmptyArrayStorage;
  while (1)
  {
LABEL_55:
    if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_isSelected] == 1)
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v56 = (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind] & 1) != 0;
      if (v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind])
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 384];
      }

      else
      {
        v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 360];
      }
    }

    else
    {
      v55 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs;
      v57 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_specs + 368];
      v56 = v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_kind];
    }

    v58 = *v57;
    memcpy(__dst, &v20[v55], 0x2B0uLL);
    v59 = v58;
    sub_95313C(__dst, &v134);
    sub_95ABC0(v59, v56, __dst);
    v61 = v60;
    sub_953198(__dst);

    [v20 addSubview:v61];
    v126 = objc_opt_self();
    if (![v126 v18[273]])
    {

      goto LABEL_68;
    }

    v62 = &v20[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate];
    v63 = v62 + 8;
    v64 = *v62;
    if (*v62 != 2)
    {
      v125 = v19;
      v120 = v61;
      v66 = *(v62 + 3);
      v65 = *(v62 + 4);
      v67 = v7;
      v68 = *(v62 + 1);
      v69 = *(v62 + 2);
      v149[0] = *v62;
      v149[1] = v68;
      v149[2] = v69;
      v149[3] = v66;
      v149[4] = v65;
      sub_31828(v64);
      sub_93D338(v149);
      v7 = v67;
      v61 = v120;
      v19 = v125;
      sub_954DE4(v64);
      v70 = *v62;
      *v62 = 2;
      *v63 = 0u;
      *(v62 + 24) = 0u;
      sub_954DE4(v70);
    }

    v71 = *(v7 + 16);
    aBlock = *v7;
    v72 = *(v7 + 32);
    v73 = *(v7 + 64);
    v74 = *(v7 + 80);
    v131 = *(v7 + 48);
    v132 = v73;
    v133 = v74;
    v129 = v71;
    v130 = v72;
    if (*(&aBlock + 1))
    {
      v134 = aBlock;
      v75 = *(v7 + 64);
      v137 = *(v7 + 48);
      v138 = v75;
      v139 = *(v7 + 80);
      v76 = *(v7 + 32);
      v135 = *(v7 + 16);
      v136 = v76;
      if ((LOBYTE(rect) & 1) == 0)
      {
        break;
      }
    }

    if (v64 != &dword_0 + 2)
    {

      goto LABEL_74;
    }

    v20 = v124;
LABEL_68:
    v24 = swift_allocObject();
    v24[2] = v20;
    v24[3] = v17;
    v77 = swift_allocObject();
    *(v77 + 16) = sub_9553E4;
    *(v77 + 24) = v24;
    *&v130 = sub_36C08;
    *(&v130 + 1) = v77;
    *&aBlock = _NSConcreteStackBlock;
    *(&aBlock + 1) = 1107296256;
    *&v129 = sub_1822E0;
    *(&v129 + 1) = &block_descriptor_425;
    v78 = _Block_copy(&aBlock);
    v18 = *(&v130 + 1);

    v17 = v20;

    [v126 performWithoutAnimation:v78];

    _Block_release(v78);
    LOBYTE(v78) = swift_isEscapingClosureAtFileLocation();

    if ((v78 & 1) == 0)
    {
      v79 = v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate;
      v80 = *(v17 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
      *v79 = 2;
      *(v79 + 8) = 0u;
      *(v79 + 24) = 0u;
      sub_954DE4(v80);
      v81 = *(v7 + 32);
      v82 = *(v7 + 64);
      v83 = *(v7 + 80);
      v131 = *(v7 + 48);
      v132 = v82;
      v133 = v83;
      v84 = *(v7 + 16);
      aBlock = *v7;
      v129 = v84;
      v130 = v81;
      *v7 = 0u;
      *(v7 + 16) = 0u;
      *(v7 + 32) = 0u;
      *(v7 + 48) = 0u;
      *(v7 + 64) = 0u;
      *(v7 + 80) = 0u;
      sub_12E1C(&aBlock, &qword_E22980, &unk_B39CC0);

      return;
    }

    while (1)
    {
      __break(1u);
LABEL_95:
      __break(1u);
LABEL_96:
      v19 = sub_926EC0(0, v19[2] + 1, 1, v19);
LABEL_78:
      v97 = v19[2];
      v96 = v19[3];
      if (v97 >= v96 >> 1)
      {
        v19 = sub_926EC0((v96 > 1), v97 + 1, 1, v19);
      }

      v19[2] = v97 + 1;
      v98 = &v19[2 * v97];
      v98[4] = sub_95546C;
      v98[5] = v24;
      v24 = *(v17 + 7);
      v99 = v24[2];
      if (!v99)
      {
        break;
      }

      v121 = Int.seconds.getter(0);

      v7 = 0;
      while (v7 < v24[2])
      {
        v18 = v24[v7 + 4];
        v100 = *(v18 + 10);
        v101 = *(v18 + 11);
        v103 = *(v18 + 12);
        v102 = *(v18 + 13);

        v154.origin.x = v100;
        v154.origin.y = v101;
        v154.size.width = v103;
        v154.size.height = v102;
        MaxX = CGRectGetMaxX(v154);
        *&v155.origin.x = v126;
        v155.origin.y = rect;
        v155.size.width = v1;
        v155.size.height = v2;
        v105 = v121;
        if (CGRectGetWidth(v155) < MaxX)
        {
          v106 = CGRectGetMaxX(*(v18 + 10));
          *&v156.origin.x = v126;
          v156.origin.y = rect;
          v156.size.width = v1;
          v156.size.height = v2;
          v105 = v106 - CGRectGetWidth(v156);
        }

        v107 = CGRectGetWidth(*(v17 + 8));
        v157.origin.x = v105 + v107 - CGRectGetWidth(*(v18 + 10));
        *&v157.size.width = v18[12];
        *&v157.size.height = v18[13];
        *&v158.origin.x = v18[10];
        *&v157.origin.y = v18[11];
        v18[10] = *&v157.origin.x;
        v158.origin.y = v157.origin.y;
        v158.size.width = v157.size.width;
        v158.size.height = v157.size.height;
        if (!CGRectEqualToRect(v157, v158))
        {
          v18[16] = 0;
        }

        v108 = swift_allocObject();
        *(v108 + 2) = v18;
        v108[3] = v100;
        v108[4] = v101;
        v108[5] = v103;
        v108[6] = v102;
        v109 = v19[2];
        v110 = v19[3];
        v111 = v19;

        if (v109 >= v110 >> 1)
        {
          v111 = sub_926EC0((v110 > 1), v109 + 1, 1, v19);
        }

        ++v7;

        v111[2] = v109 + 1;
        v19 = v111;
        v112 = &v111[2 * v109];
        v112[4] = sub_955480;
        v112[5] = v108;
        v17 = v125;
        if (v99 == v7)
        {

          sub_12E1C(__dst, &qword_E22980, &unk_B39CC0);
          LODWORD(rect) = 0;
          v7 = v113;
          v20 = v124;
          v18 = &selRef_format;
          goto LABEL_55;
        }
      }

LABEL_93:
      __break(1u);
    }

    sub_12E1C(__dst, &qword_E22980, &unk_B39CC0);
    LODWORD(rect) = 0;
    v20 = v124;
  }

  v86 = swift_allocObject();
  *(v86 + 16) = v19;
  *(v86 + 24) = v124;
  sub_15F84(&aBlock, v127, &qword_E22980, &unk_B39CC0);
  v87 = v124;
  sub_93E024(&v134, sub_95542C, v86);

  sub_12E1C(&aBlock, &qword_E22980, &unk_B39CC0);
LABEL_74:
  v88 = *v62;
  *v62 = 2;
  *v63 = 0u;
  *(v62 + 24) = 0u;
  sub_954DE4(v88);
  v89 = *(v7 + 48);
  v127[2] = *(v7 + 32);
  v127[3] = v89;
  v90 = *(v7 + 80);
  v127[4] = *(v7 + 64);
  v127[5] = v90;
  v91 = *(v7 + 16);
  v127[0] = *v7;
  v127[1] = v91;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  *(v7 + 32) = 0u;
  *(v7 + 48) = 0u;
  *(v7 + 64) = 0u;
  *(v7 + 80) = 0u;
  sub_12E1C(v127, &qword_E22980, &unk_B39CC0);
}

void *sub_93C61C(uint64_t a1, Swift::Int a2)
{
  v2 = a2;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v4 = sub_ABAC50();
    if ((v2 & 0xC000000000000001) != 0)
    {
      goto LABEL_3;
    }

LABEL_9:
    if (v4 > *(v2 + 16) >> 3)
    {
      goto LABEL_10;
    }

LABEL_13:
    sub_94EE78(a1);
    return v2;
  }

  v4 = *(a1 + 16);
  if ((a2 & 0xC000000000000001) == 0)
  {
    goto LABEL_9;
  }

LABEL_3:
  if (v2 < 0)
  {
    v5 = v2;
  }

  else
  {
    v5 = v2 & 0xFFFFFFFFFFFFFF8;
  }

  if (v4 <= sub_ABAC50() / 8)
  {
    goto LABEL_13;
  }

  v6 = sub_ABAC50();
  v2 = sub_936B14(v5, v6);
LABEL_10:

  return sub_94F0B0(a1, v2);
}

double sub_93C710(uint64_t a1, double a2, double a3, double a4, double a5)
{
  v8 = *(a1 + 80);
  *(a1 + 80) = a2;
  *(a1 + 88) = a3;
  *(a1 + 96) = a4;
  *(a1 + 104) = a5;
  if (!CGRectEqualToRect(*&a2, v8))
  {
    *(a1 + 128) = 0;
  }

  return result;
}

void sub_93C76C(uint64_t a1, void *a2)
{
  v2 = *(a1 + 16);
  if (v2)
  {
    v4 = a1 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v2;
    }

    while (v2);
    sub_93B7D8();
    v7 = [a2 superview];
    [v7 setNeedsLayout];
  }
}

void sub_93C834(uint64_t a1, uint64_t a2)
{
  v3 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textLayoutDiffMetadata);
  swift_beginAccess();
  v4 = v3[1];
  v129 = *v3;
  v130 = v4;
  v5 = v3[3];
  v131 = v3[2];
  v132 = v5;
  v6 = v3[5];
  v133 = v3[4];
  v134 = v6;
  v7 = *(&v129 + 1);
  if (*(&v129 + 1))
  {
    v8 = v129;
    v10 = *(&v131 + 1);
    v9 = v131;
    v105 = *(*(&v131 + 1) + 16);
    if (!v105)
    {

      goto LABEL_62;
    }

    v102 = v129;
    v106 = *(&v131 + 1) + 32;
    v108 = v130;
    sub_15F84(&v129, v128, &qword_E22980, &unk_B39CC0);
    v101 = v9;

    v11 = 0;
    v104 = v10;
LABEL_5:
    if (v11 >= *(v10 + 16))
    {
      goto LABEL_129;
    }

    v112 = v11;
    v12 = *(v106 + 8 * v11);
    swift_beginAccess();

    v15 = sub_952FD0(v13, v14);

    if (*(v108 + 16) && (sub_8E0BA4(v12), (v16 & 1) != 0))
    {
    }

    else
    {
      v17 = &_swiftEmptySetSingleton;
    }

    v18 = sub_93C61C(v15, v17);

    if ((v18 & 0xC000000000000001) != 0)
    {
      sub_ABAC10();
      _s4WordCMa();
      sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
      sub_AB9BC0();
      v18 = v128[0];
      v19 = v128[1];
      v20 = v128[2];
      v21 = v128[3];
      v22 = v128[4];
    }

    else
    {
      v21 = 0;
      v23 = -1 << *(v18 + 32);
      v19 = v18 + 56;
      v20 = ~v23;
      v24 = -v23;
      if (v24 < 64)
      {
        v25 = ~(-1 << v24);
      }

      else
      {
        v25 = -1;
      }

      v22 = v25 & *(v18 + 56);
    }

    v26 = (v20 + 64) >> 6;
    v116 = v18;
    v117 = v19;
    v113 = v112 + 1;
    for (i = v26; ; v26 = i)
    {
      if (v18 < 0)
      {
        if (!sub_ABAC90() || (_s4WordCMa(), swift_dynamicCast(), v32 = v127, v121 = v22, v123 = v21, !v127))
        {
LABEL_4:
          sub_2BB88(v18);

          v10 = v104;
          v11 = v113;
          if (v113 == v105)
          {
            goto LABEL_61;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v29 = v21;
        v30 = v22;
        for (j = v21; !v30; ++v29)
        {
          j = v29 + 1;
          if (__OFADD__(v29, 1))
          {
            goto LABEL_128;
          }

          if (j >= v26)
          {
            goto LABEL_4;
          }

          v30 = *(v19 + 8 * j);
        }

        v121 = (v30 - 1) & v30;
        v123 = j;

        if (!v32)
        {
          goto LABEL_4;
        }
      }

      v119 = v32;
      v33 = *(v32 + 104);
      v125 = v33;
      if (v33 >> 62)
      {
        break;
      }

      v34 = *(&dword_10 + (v33 & 0xFFFFFFFFFFFFFF8));
      if (v34)
      {
        goto LABEL_29;
      }

LABEL_53:
      v49 = *(v119 + 208);
      if (v49)
      {
        [v49 removeFromSuperview];
        v50 = *(v119 + 208);
      }

      else
      {
        v50 = 0;
      }

      v18 = v116;
      *(v119 + 208) = 0;

      if (!*(v119 + 208))
      {
        v51 = *(v119 + 128);
        *(v119 + 128) = 0;
        v52 = *(v119 + 136);
        *(v119 + 136) = 2;
        sub_955490(v51, v52);
      }

      v27 = *(v119 + 128);
      *(v119 + 128) = 0;
      v28 = *(v119 + 136);
      *(v119 + 136) = 2;
      sub_955490(v27, v28);

      v22 = v121;
      v21 = v123;
      v19 = v117;
    }

    v34 = sub_ABB060();
    if (!v34)
    {
      goto LABEL_53;
    }

LABEL_29:
    v35 = 0;
    v36 = v125 & 0xFFFFFFFFFFFFFF8;
    while (1)
    {
      if ((v125 & 0xC000000000000001) != 0)
      {
        v41 = sub_ABAE20();
        v42 = __OFADD__(v35++, 1);
        if (v42)
        {
          break;
        }

        goto LABEL_39;
      }

      if (v35 >= *(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8)))
      {
        goto LABEL_120;
      }

      v41 = *(v125 + 32 + 8 * v35);

      v42 = __OFADD__(v35++, 1);
      if (v42)
      {
        break;
      }

LABEL_39:
      v43 = *(v41 + 88);
      if (!(v43 >> 62))
      {
        v44 = *(&dword_10 + (v43 & 0xFFFFFFFFFFFFFF8));
        if (v44)
        {
          goto LABEL_41;
        }

        goto LABEL_30;
      }

      v44 = sub_ABB060();
      if (v44)
      {
LABEL_41:
        if (v44 < 1)
        {
          goto LABEL_60;
        }

        v45 = 0;
        while (2)
        {
          if ((v43 & 0xC000000000000001) != 0)
          {
            v46 = sub_ABAE20();
            v47 = *(v46 + 96);
            if (!v47)
            {
LABEL_48:
              v48 = 0;
LABEL_45:
              ++v45;
              *(v46 + 96) = 0;

              if (v44 == v45)
              {
                goto LABEL_30;
              }

              continue;
            }
          }

          else
          {
            v46 = *(v43 + 8 * v45 + 32);

            v47 = *(v46 + 96);
            if (!v47)
            {
              goto LABEL_48;
            }
          }

          break;
        }

        [v47 removeFromSuperview];
        v48 = *(v46 + 96);
        goto LABEL_45;
      }

LABEL_30:
      v37 = *(v41 + 184);
      if (v37)
      {
        [v37 removeFromSuperview];
        v38 = *(v41 + 184);
      }

      else
      {
        v38 = 0;
      }

      *(v41 + 184) = 0;

      v39 = *(v41 + 136);
      *(v41 + 136) = 0;
      v40 = *(v41 + 144);
      *(v41 + 144) = 2;
      sub_955490(v39, v40);

      if (v35 == v34)
      {
        goto LABEL_53;
      }
    }

    __break(1u);
LABEL_60:
    __break(1u);
LABEL_61:

    v7 = *(&v102 + 1);
    v8 = v102;
LABEL_62:
    v53 = *(a2 + 48);
    v54 = *(a2 + 56);

    sub_94F9A8(v53, v54, v8, v7);
    v56 = v55;

    v110 = *(v56 + 16);
    if (v110)
    {
      v57 = 0;
      v111 = v56 + 32;
      v109 = v56;
      while (1)
      {
        if (v57 >= *(v56 + 16))
        {
          goto LABEL_130;
        }

        v114 = v57;
        v58 = *(v111 + 8 * v57);
        swift_beginAccess();
        v59 = v58;
        v60 = *(v58 + 16);
        if (!(v60 >> 62))
        {
          v61 = *(&dword_10 + (v60 & 0xFFFFFFFFFFFFFF8));
          if (v61)
          {
            break;
          }

          goto LABEL_105;
        }

        v84 = *(v58 + 16);
        v85 = sub_ABB060();
        v60 = v84;
        v61 = v85;
        v59 = v58;
        if (v61)
        {
          break;
        }

LABEL_105:
        v83 = v59;

LABEL_106:
        v86 = *(v83 + 112);
        v87 = v83;
        if (v86)
        {
          [v86 removeFromSuperview];
          v87 = v83;
          v88 = *(v83 + 112);
        }

        else
        {
          v88 = 0;
        }

        *(v87 + 112) = 0;

        v57 = v114 + 1;
        v56 = v109;
        if (v114 + 1 == v110)
        {
          goto LABEL_110;
        }
      }

      if (v61 < 1)
      {
LABEL_131:
        __break(1u);
        return;
      }

      v120 = v60 & 0xC000000000000001;
      v107 = v59;

      v62 = 0;
      v118 = v61;
      while (2)
      {
        if (v120)
        {
          v65 = sub_ABAE20();
        }

        else
        {
        }

        v66 = *(v65 + 104);
        v126 = v66;
        v122 = v65;
        v124 = v62;
        if (!(v66 >> 62))
        {
          v34 = *(&dword_10 + (v66 & 0xFFFFFFFFFFFFFF8));
          if (v34)
          {
            goto LABEL_75;
          }

LABEL_98:
          v79 = *(v122 + 208);
          if (v79)
          {
            [v79 removeFromSuperview];
            v80 = *(v122 + 208);
          }

          else
          {
            v80 = 0;
          }

          *(v122 + 208) = 0;

          if (!*(v122 + 208))
          {
            v81 = *(v122 + 128);
            *(v122 + 128) = 0;
            v82 = *(v122 + 136);
            *(v122 + 136) = 2;
            sub_955490(v81, v82);
          }

          v62 = v124 + 1;
          v63 = *(v122 + 128);
          *(v122 + 128) = 0;
          v64 = *(v122 + 136);
          *(v122 + 136) = 2;
          sub_955490(v63, v64);

          if (v124 + 1 == v118)
          {

            v83 = v107;
            goto LABEL_106;
          }

          continue;
        }

        break;
      }

      v34 = sub_ABB060();
      if (!v34)
      {
        goto LABEL_98;
      }

LABEL_75:
      v67 = 0;
      while (2)
      {
        if ((v126 & 0xC000000000000001) != 0)
        {
          v71 = sub_ABAE20();
          v42 = __OFADD__(v67++, 1);
          if (v42)
          {
            goto LABEL_118;
          }

LABEL_84:
          v72 = *(v71 + 88);
          if (!(v72 >> 62))
          {
            v73 = *(&dword_10 + (v72 & 0xFFFFFFFFFFFFFF8));
            if (v73)
            {
              goto LABEL_86;
            }

LABEL_95:
            v78 = *(v71 + 184);
            if (v78)
            {
              [v78 removeFromSuperview];
              v68 = *(v71 + 184);
            }

            else
            {
              v68 = 0;
            }

            *(v71 + 184) = 0;

            v69 = *(v71 + 136);
            *(v71 + 136) = 0;
            v70 = *(v71 + 144);
            *(v71 + 144) = 2;
            sub_955490(v69, v70);

            if (v67 == v34)
            {
              goto LABEL_98;
            }

            continue;
          }

          v73 = sub_ABB060();
          if (!v73)
          {
            goto LABEL_95;
          }

LABEL_86:
          if (v73 >= 1)
          {
            v74 = 0;
            while (1)
            {
              if ((v72 & 0xC000000000000001) != 0)
              {
                v75 = sub_ABAE20();
                v76 = *(v75 + 96);
                if (!v76)
                {
LABEL_93:
                  v77 = 0;
                  goto LABEL_90;
                }
              }

              else
              {
                v75 = *(v72 + 8 * v74 + 32);

                v76 = *(v75 + 96);
                if (!v76)
                {
                  goto LABEL_93;
                }
              }

              [v76 removeFromSuperview];
              v77 = *(v75 + 96);
LABEL_90:
              ++v74;
              *(v75 + 96) = 0;

              if (v73 == v74)
              {
                goto LABEL_95;
              }
            }
          }
        }

        else
        {
          if (v67 >= *(&dword_10 + (v126 & 0xFFFFFFFFFFFFFF8)))
          {
            __break(1u);
LABEL_128:
            __break(1u);
LABEL_129:
            __break(1u);
LABEL_130:
            __break(1u);
            goto LABEL_131;
          }

          v71 = *(v126 + 32 + 8 * v67);

          v42 = __OFADD__(v67++, 1);
          if (!v42)
          {
            goto LABEL_84;
          }

LABEL_118:
          __break(1u);
        }

        break;
      }

      __break(1u);
LABEL_120:
      __break(1u);
      goto LABEL_121;
    }

LABEL_110:

    sub_12E1C(&v129, &qword_E22980, &unk_B39CC0);
  }

  v36 = a1;
  v89 = (a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  v90 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate);
  if (v90)
  {
    if (v90 == &dword_0 + 1)
    {
      v34 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v97 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      if (v97)
      {
        [v97 removeFromSuperview];
        v36 = a1;
        v98 = *(a1 + v34);
LABEL_122:
        *(v36 + v34) = 0;

        return;
      }

LABEL_121:
      v98 = 0;
      goto LABEL_122;
    }

    if (v90 != &dword_0 + 2)
    {
      v91 = v89[1];
      v92 = v89[2];
      v93 = v89[3];
      v94 = v89[4];
      v95 = OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel;
      v96 = *(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel);
      sub_31828(*(a1 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_pendingTranslationUpdate));
      if (v96)
      {
        [v96 setAttributedText:v90];
      }

      v99 = *(a1 + v95);
      if (v99)
      {
        v100 = v99;
        [v100 setFrame:{v91, v92, v93, v94}];
        sub_954DE4(v90);
      }

      else
      {
        sub_954DE4(v90);
      }
    }
  }
}

void sub_93D338(double *a1)
{
  v2 = *&v1[OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_translationLabel];
  if (v2)
  {
    v3 = *a1;
    if (*a1 == 1)
    {
      v19 = objc_allocWithZone(UISpringTimingParameters);
      v20 = v2;
      v21 = [v19 initWithMass:1.0 stiffness:130.0 damping:30.0 initialVelocity:{0.0, 0.0}];
      sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
      v22 = v21;
      v23 = v1;
      isa = UIViewPropertyAnimator.init(springTimingParameters:)(v22).super.isa;
      v25 = swift_allocObject();
      *(v25 + 16) = v20;
      v60 = sub_9552E0;
      v61 = v25;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_381;
      v26 = _Block_copy(&aBlock);
      v27 = v20;

      [(objc_class *)isa addAnimations:v26];
      _Block_release(v26);
      v28 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.14 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
      v29 = swift_allocObject();
      *(v29 + 16) = v27;
      v60 = sub_9552E8;
      v61 = v29;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1B5EB4;
      v59 = &block_descriptor_387;
      v30 = _Block_copy(&aBlock);
      v31 = v27;

      [v28 addAnimations:v30];
      _Block_release(v30);
      v32 = swift_allocObject();
      *(v32 + 16) = v31;
      *(v32 + 24) = v23;
      v60 = sub_95533C;
      v61 = v32;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_624AE8;
      v59 = &block_descriptor_393_0;
      v33 = _Block_copy(&aBlock);
      v18 = v31;
      v34 = v23;

      [(objc_class *)isa addCompletion:v33];
      _Block_release(v33);
      [(objc_class *)isa startAnimation];
      [v28 startAnimation];

LABEL_11:
      return;
    }

    if (!v3)
    {
      v4 = objc_opt_self();
      v5 = swift_allocObject();
      *(v5 + 16) = v2;
      v6 = swift_allocObject();
      *(v6 + 16) = sub_955388;
      *(v6 + 24) = v5;
      v60 = sub_36C08;
      v61 = v6;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1822E0;
      v59 = &block_descriptor_403_2;
      v7 = _Block_copy(&aBlock);
      v8 = v2;

      [v4 performWithoutAnimation:v7];
      _Block_release(v7);
      LOBYTE(v4) = swift_isEscapingClosureAtFileLocation();

      if ((v4 & 1) == 0)
      {
        v9 = [objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}];
        sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
        v10 = v9;
        v11.super.isa = UIViewPropertyAnimator.init(springTimingParameters:)(v10).super.isa;
        v12 = swift_allocObject();
        *(v12 + 16) = v8;
        v60 = sub_955390;
        v61 = v12;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_1B5EB4;
        v59 = &block_descriptor_409_0;
        v13 = _Block_copy(&aBlock);
        v14 = v8;

        [(objc_class *)v11.super.isa addAnimations:v13];
        _Block_release(v13);
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.4 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v16 = swift_allocObject();
        *(v16 + 16) = v14;
        v60 = sub_9553D0;
        v61 = v16;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_1B5EB4;
        v59 = &block_descriptor_415_0;
        v17 = _Block_copy(&aBlock);
        v18 = v14;

        [v15 addAnimations:v17];
        _Block_release(v17);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimation];
LABEL_10:

        goto LABEL_11;
      }

      __break(1u);
      goto LABEL_17;
    }

    v36 = a1[1];
    v35 = a1[2];
    v38 = a1[3];
    v37 = a1[4];
    v54 = v2;
    v40 = [v54 snapshotViewAfterScreenUpdates:0];
    if (v40)
    {
      v41 = v40;
      v42 = objc_opt_self();
      v43 = swift_allocObject();
      *(v43 + 2) = v41;
      *(v43 + 3) = v54;
      *(v43 + 4) = v1;
      *(v43 + 5) = v3;
      v43[6] = v36;
      v43[7] = v35;
      v43[8] = v38;
      v43[9] = v37;
      v44 = swift_allocObject();
      *(v44 + 16) = sub_955294;
      *(v44 + 24) = v43;
      v60 = sub_36C08;
      v61 = v44;
      aBlock = _NSConcreteStackBlock;
      v57 = 1107296256;
      v58 = sub_1822E0;
      v59 = &block_descriptor_363_1;
      v45 = _Block_copy(&aBlock);
      v46 = v54;
      v47 = v1;
      v48 = v41;
      sub_9552A8(a1, v55);

      [v42 performWithoutAnimation:v45];
      _Block_release(v45);
      isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

      if ((isEscapingClosureAtFileLocation & 1) == 0)
      {
        [v48 frame];
        [v48 setFrame:?];
        [v46 setFrame:{v36, v35, v38, v37}];

        v11.super.isa = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v15 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.15 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v50 = swift_allocObject();
        *(v50 + 16) = v48;
        v60 = sub_955A28;
        v61 = v50;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_1B5EB4;
        v59 = &block_descriptor_369_0;
        v51 = _Block_copy(&aBlock);
        v10 = v48;

        [(objc_class *)v11.super.isa addAnimations:v51];
        _Block_release(v51);
        v52 = swift_allocObject();
        *(v52 + 16) = v46;
        v60 = sub_955A2C;
        v61 = v52;
        aBlock = _NSConcreteStackBlock;
        v57 = 1107296256;
        v58 = sub_1B5EB4;
        v59 = &block_descriptor_375;
        v53 = _Block_copy(&aBlock);
        v18 = v46;

        [v15 addAnimations:v53];
        _Block_release(v53);
        [(objc_class *)v11.super.isa startAnimation];
        [v15 startAnimationAfterDelay:0.1];
        goto LABEL_10;
      }

LABEL_17:
      __break(1u);
      return;
    }

    [v54 setAttributedText:v3];
    [v54 setFrame:{v36, v35, v38, v37}];
  }
}

id sub_93DDEC(void *a1)
{
  CGAffineTransformMakeTranslation(&v3, 0.0, -20.0);
  [a1 setTransform:&v3];
  return [a1 setAlpha:0.0];
}

id sub_93DEB8(void *a1, id a2, void *a3, uint64_t a4)
{
  [a2 frame];
  [a1 setFrame:?];
  [a3 addSubview:a1];
  [a2 setAlpha:0.0];
  [a2 setAttributedText:a4];
  [a2 frame];

  return [a2 setFrame:?];
}

void sub_93DF8C(uint64_t a1, void *a2)
{
  isa = sub_AB9740().super.isa;
  [a2 setFilters:isa];

  v4 = sub_AB9260();
  [a2 removeAnimationForKey:v4];
}

void sub_93E024(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v4 = *(v3 + OBJC_IVAR____TtCCC7LyricsX20SyncedLyricsLineView19SBS_TextContentView8TextView_textContainer);
  if (!v4)
  {
    return;
  }

  v203 = a2;
  v204 = a3;
  if (a1[11])
  {
    v212 = 0;
  }

  else
  {
    v212 = v4[5] != 0;
  }

  sub_13C80(0, &qword_E23940, UIViewPropertyAnimator_ptr);
  v6 = objc_allocWithZone(UISpringTimingParameters);

  isa = UIViewPropertyAnimator.init(springTimingParameters:)([v6 initWithMass:1.0 stiffness:120.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v221 = UIViewPropertyAnimator.init(springTimingParameters:)([objc_allocWithZone(UISpringTimingParameters) initWithMass:1.0 stiffness:150.0 damping:30.0 initialVelocity:{0.0, 0.0}]).super.isa;
  v226 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.32 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
  v7 = v4[6];
  v8 = v4[7];
  v9 = *a1;
  v10 = a1[1];

  sub_94F9A8(v9, v10, v7, v8);
  v208 = v11;
  v12 = v4[6];
  v13 = v4[7];

  sub_94F9A8(v12, v13, v9, v10);
  v209 = v14;

  v15 = a1[5];
  v16 = &selRef_setSubtitleText_;
  v207 = *(v15 + 16);
  v17 = 0;
  v18 = 0;
  v19 = 0;
  if (!v207)
  {
    goto LABEL_54;
  }

  v20 = 0;
  v206 = v15 + 32;
  v220 = a1;
  v21 = a1[2];
  v219 = kCAFilterGaussianBlur;
  v217 = kCAFilterInputRadius;
  v205 = v21;
LABEL_8:
  v213 = v20;
  v22 = *(v206 + 8 * v20);
  swift_beginAccess();

  v25 = sub_952FD0(v23, v24);

  if (*(v21 + 16) && (v26 = sub_8E0BA4(v22), (v27 & 1) != 0))
  {
    v28 = *(*(v21 + 56) + 8 * v26);
  }

  else
  {
    v28 = &_swiftEmptySetSingleton;
  }

  v29 = sub_93C61C(v28, v25);
  v230 = sub_93C61C(v25, v28);

  if ((v29 & 0xC000000000000001) != 0)
  {
    sub_ABAC10();
    _s4WordCMa();
    sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
    sub_AB9BC0();
    v29 = v249;
    v30 = v250;
    v31 = v251;
    v32 = v252;
    v33 = v253;
  }

  else
  {
    v32 = 0;
    v34 = -1 << *(v29 + 32);
    v30 = v29 + 56;
    v31 = ~v34;
    v35 = -v34;
    if (v35 < 64)
    {
      v36 = ~(-1 << v35);
    }

    else
    {
      v36 = -1;
    }

    v33 = v36 & *(v29 + 56);
  }

  v214 = v213 + 1;
  v37 = (v31 + 64) >> 6;
  v227 = v30;
  v222 = v37;
  v225 = v29;
  while ((v29 & 0x8000000000000000) == 0)
  {
    v38 = v32;
    v39 = v33;
    v40 = v32;
    if (!v33)
    {
      while (1)
      {
        v40 = v38 + 1;
        if (__OFADD__(v38, 1))
        {
          break;
        }

        if (v40 >= v37)
        {
          goto LABEL_33;
        }

        v39 = *(v30 + 8 * v40);
        ++v38;
        if (v39)
        {
          goto LABEL_25;
        }
      }

      __break(1u);
      goto LABEL_123;
    }

LABEL_25:
    v41 = (v39 - 1) & v39;
    v42 = *(*(v29 + 48) + ((v40 << 9) | (8 * __clz(__rbit64(v39)))));

    if (!v42)
    {
      goto LABEL_33;
    }

LABEL_29:
    v235 = v41;
    v44 = objc_opt_self();
    v45 = swift_allocObject();
    *(v45 + 16) = v42;
    *(v45 + 24) = v238;
    v46 = *(v220 + 3);
    *(v45 + 64) = *(v220 + 2);
    *(v45 + 80) = v46;
    v47 = *(v220 + 5);
    *(v45 + 96) = *(v220 + 4);
    *(v45 + 112) = v47;
    v48 = *(v220 + 1);
    *(v45 + 32) = *v220;
    *(v45 + 48) = v48;
    *(v45 + 128) = v22;
    v49 = v238;
    v50 = v22;

    sub_954FD8(v220, &aBlock);
    sub_17654(v17, v18);
    v51 = swift_allocObject();
    *(v51 + 16) = sub_954FC8;
    *(v51 + 24) = v45;
    v246 = sub_36C08;
    v247 = v51;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_1822E0;
    v245 = &block_descriptor_343_1;
    v52 = _Block_copy(&aBlock);

    [v44 performWithoutAnimation:v52];
    _Block_release(v52);
    LOBYTE(v44) = swift_isEscapingClosureAtFileLocation();

    if (v44)
    {
      goto LABEL_125;
    }

    v246 = sub_955010;
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_1B5EB4;
    v245 = &block_descriptor_346;
    v53 = _Block_copy(&aBlock);

    [(objc_class *)isa addAnimations:v53];
    _Block_release(v53);
    v54 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
    v246 = sub_955058;
    v247 = v42;
    aBlock = _NSConcreteStackBlock;
    v243 = 1107296256;
    v244 = sub_1B5EB4;
    v245 = &block_descriptor_349;
    v55 = _Block_copy(&aBlock);

    [v54 addAnimations:v55];
    _Block_release(v55);
    v56 = v42[26];
    if (v56)
    {
      v57 = [v56 layer];
      if (v57)
      {
        v58 = v57;
        v59 = [objc_allocWithZone(CAFilter) initWithType:v219];
        v60 = sub_AB3A30().super.super.isa;
        [v59 setValue:v60 forKey:v217];

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
        v61 = swift_allocObject();
        *(v61 + 16) = xmmword_AF4EC0;
        *(v61 + 56) = sub_13C80(0, &qword_E229B8, CAFilter_ptr);
        *(v61 + 32) = v59;
        v62 = v59;
        v63 = sub_AB9740().super.isa;

        [v58 setFilters:v63];

        v64 = sub_AB9260();
        v65 = [objc_opt_self() animationWithKeyPath:v64];

        v66 = v65;
        [v66 setDuration:0.23];
        [v66 setBeginTime:CACurrentMediaTime() + 0.15];
        [v66 setFillMode:kCAFillModeBoth];
        v67 = sub_AB3A30().super.super.isa;
        [v66 setFromValue:v67];

        v68 = sub_AB3A30().super.super.isa;
        [v66 setToValue:v68];

        [v66 setRemovedOnCompletion:0];
        v69 = objc_allocWithZone(CAMediaTimingFunction);
        LODWORD(v70) = 1051260355;
        LODWORD(v71) = 1059816735;
        LODWORD(v72) = 1.0;
        v73 = [v69 initWithControlPoints:v70 :0.0 :v71 :v72];
        [v66 setTimingFunction:v73];

        v74 = swift_allocObject();
        *(v74 + 16) = v58;
        v75 = v58;
        CAAnimation.completion.setter(sub_955AB8, v74);

        v76 = sub_AB9260();
        [v75 addAnimation:v66 forKey:v76];
      }
    }

    [v54 startAnimationAfterDelay:{0.1, v203, v204}];

    v19 = 1;
    v17 = sub_954FC8;
    v18 = v45;
    v32 = v40;
    v33 = v235;
    v22 = v50;
    v37 = v222;
    v29 = v225;
    v30 = v227;
  }

  v43 = sub_ABAC90();
  if (v43)
  {
    v248 = v43;
    _s4WordCMa();
    swift_dynamicCast();
    v42 = aBlock;
    v40 = v32;
    v41 = v33;
    if (aBlock)
    {
      goto LABEL_29;
    }
  }

LABEL_33:
  v223 = v17;
  sub_2BB88(v29);
  v77 = v230;
  v210 = v18;
  v78 = v19;
  if ((v230 & 0xC000000000000001) != 0)
  {
    sub_ABAC10();
    _s4WordCMa();
    sub_954D9C(&qword_E22970, _s4WordCMa, &unk_B3A318);
    sub_AB9BC0();
    v77 = v254;
    v79 = v255;
    v80 = v256;
    v81 = v257;
    v82 = v258;
  }

  else
  {
    v81 = 0;
    v83 = -1 << *(v230 + 32);
    v79 = (v230 + 56);
    v80 = ~v83;
    v84 = -v83;
    if (v84 < 64)
    {
      v85 = ~(-1 << v84);
    }

    else
    {
      v85 = -1;
    }

    v82 = v85 & *(v230 + 56);
  }

  v231 = v77;
  v86 = (v80 + 64) >> 6;
  while (2)
  {
    if (v77 < 0)
    {
      v92 = sub_ABAC90();
      if (v92)
      {
        v248 = v92;
        _s4WordCMa();
        swift_dynamicCast();
        v91 = aBlock;
        v89 = v81;
        v90 = v82;
        if (aBlock)
        {
LABEL_51:
          v236 = v90;
          v93 = swift_allocObject();
          *(v93 + 16) = v238;
          *(v93 + 24) = v91;
          v246 = sub_954F20;
          v247 = v93;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_323_0;
          v94 = _Block_copy(&aBlock);
          v95 = v238;

          [(objc_class *)v221 addAnimations:v94];
          _Block_release(v94);
          v246 = sub_954F28;
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_624AE8;
          v245 = &block_descriptor_326;
          v96 = _Block_copy(&aBlock);

          [(objc_class *)v221 addCompletion:v96];
          _Block_release(v96);
          v246 = sub_954F2C;
          v247 = v91;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_329;
          v97 = _Block_copy(&aBlock);

          [v226 addAnimations:v97];
          _Block_release(v97);
          v98 = v91[26];
          if (v98 && (v99 = [v98 layer]) != 0)
          {
            v100 = v99;
            v101 = [objc_allocWithZone(CAFilter) initWithType:v219];
            v102 = sub_AB3A30().super.super.isa;
            [v101 setValue:v102 forKey:v217];

            __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
            v103 = swift_allocObject();
            *(v103 + 16) = xmmword_AF4EC0;
            *(v103 + 56) = sub_13C80(0, &qword_E229B8, CAFilter_ptr);
            *(v103 + 32) = v101;
            v104 = v101;
            v105 = sub_AB9740().super.isa;

            [v100 setFilters:v105];

            v106 = sub_AB9260();
            v107 = [objc_opt_self() animationWithKeyPath:v106];

            v108 = v107;
            [v108 setDuration:0.32];
            [v108 setBeginTime:CACurrentMediaTime() + 0.15];
            [v108 setFillMode:kCAFillModeBoth];
            v109 = sub_AB3A30().super.super.isa;
            [v108 setFromValue:v109];

            v110 = sub_AB3A30().super.super.isa;
            [v108 setToValue:v110];

            [v108 setRemovedOnCompletion:0];
            v111 = objc_allocWithZone(CAMediaTimingFunction);
            LODWORD(v112) = 1051260355;
            LODWORD(v113) = 1059816735;
            LODWORD(v114) = 1.0;
            v115 = [v111 initWithControlPoints:v112 :0.0 :v113 :v114];
            [v108 setTimingFunction:v115];

            v116 = swift_allocObject();
            *(v116 + 16) = v100;
            v117 = v100;
            CAAnimation.completion.setter(sub_955AB8, v116);

            v118 = sub_AB9260();
            [v117 addAnimation:v108 forKey:v118];
          }

          else
          {
          }

          v78 = 1;
          v81 = v89;
          v82 = v236;
          v77 = v231;
          continue;
        }
      }

LABEL_7:
      sub_2BB88(v231);
      v20 = v214;
      v16 = &selRef_setSubtitleText_;
      v17 = v223;
      v19 = v78;
      v21 = v205;
      v18 = v210;
      if (v214 != v207)
      {
        goto LABEL_8;
      }

LABEL_54:
      v211 = v18;
      v224 = v17;
      v228 = *(v208 + 16);
      if (v228)
      {
        v239 = objc_opt_self();
        v119 = *(v208 + 16);

        if (!v119)
        {
          goto LABEL_126;
        }

        v120 = 0;
        v121 = 0;
        v232 = 0;
        v122 = 0;
        v123 = 0;
        v216 = kCAFilterGaussianBlur;
        v215 = kCAFilterInputRadius;
        v237 = v19;
        while (1)
        {
          v124 = *(v208 + 32 + 8 * v120);
          v234 = v120;
          if (*(v124 + 56) == 1)
          {
            if (v19)
            {

              v237 = 1;
            }

            else
            {
              swift_beginAccess();
              v125 = *(v124 + 16);
              if (v125 >> 62)
              {
                v126 = sub_ABB060();
                if (v126)
                {
LABEL_63:
                  if (v126 < 1)
                  {
                    goto LABEL_129;
                  }

                  v127 = 0;
                  do
                  {
                    if ((v125 & 0xC000000000000001) != 0)
                    {
                      v128 = sub_ABAE20();
                    }

                    else
                    {
                      v128 = *(v125 + 8 * v127 + 32);
                    }

                    sub_17654(v123, v122);
                    v129 = swift_allocObject();
                    *(v129 + 16) = sub_954F14;
                    *(v129 + 24) = v128;
                    v246 = sub_36C08;
                    v247 = v129;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = sub_1822E0;
                    v245 = &block_descriptor_314_0;
                    v130 = _Block_copy(&aBlock);

                    [v239 performWithoutAnimation:v130];
                    _Block_release(v130);
                    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

                    if (isEscapingClosureAtFileLocation)
                    {
                      goto LABEL_124;
                    }

                    ++v127;
                    v246 = sub_955A0C;
                    v247 = v128;
                    aBlock = _NSConcreteStackBlock;
                    v243 = 1107296256;
                    v244 = sub_1B5EB4;
                    v245 = &block_descriptor_317;
                    v132 = _Block_copy(&aBlock);

                    [(objc_class *)isa addAnimations:v132];
                    _Block_release(v132);

                    v123 = sub_954F14;
                    v122 = v128;
                  }

                  while (v126 != v127);

                  v237 = 0;
                  v123 = sub_954F14;
                  v122 = v128;
                  v16 = &selRef_setSubtitleText_;
                  goto LABEL_73;
                }
              }

              else
              {
                v126 = *(&dword_10 + (v125 & 0xFFFFFFFFFFFFFF8));
                if (v126)
                {
                  goto LABEL_63;
                }
              }

              v237 = 0;
            }
          }

          else
          {
          }

LABEL_73:
          v133 = swift_allocObject();
          *(v133 + 16) = v212;
          *(v133 + 24) = v124;

          sub_17654(v232, v121);
          v134 = swift_allocObject();
          *(v134 + 16) = sub_954DF4;
          *(v134 + 24) = v133;
          v246 = sub_2D4D0;
          v247 = v134;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1822E0;
          v245 = &block_descriptor_244;
          v135 = v124;
          v136 = _Block_copy(&aBlock);

          [v239 performWithoutAnimation:v136];
          _Block_release(v136);
          LOBYTE(v136) = swift_isEscapingClosureAtFileLocation();

          if (v136)
          {
            goto LABEL_128;
          }

          v120 = v234 + 1;
          v246 = sub_954E28;
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_267_1;
          v137 = _Block_copy(&aBlock);

          [isa v16[291]];
          _Block_release(v137);
          v246 = sub_954E6C;
          v247 = v135;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_270_0;
          v138 = _Block_copy(&aBlock);

          [v226 v16[291]];
          _Block_release(v138);
          if ((v237 & 1) == 0)
          {
            goto LABEL_86;
          }

          v139 = v135[14];
          if (!v139)
          {
            goto LABEL_86;
          }

          v140 = [v139 maskView];
          if (v140)
          {
            goto LABEL_77;
          }

          v160 = v135[14];
          if (!v160)
          {
            goto LABEL_86;
          }

          v161 = [v160 subviews];
          sub_13C80(0, &qword_E229B0, UIView_ptr);
          v162 = sub_AB9760();

          if (v162 >> 62)
          {
            if (sub_ABB060())
            {
LABEL_82:
              if ((v162 & 0xC000000000000001) != 0)
              {
                v163 = sub_ABAE20();
              }

              else
              {
                if (!*(&dword_10 + (v162 & 0xFFFFFFFFFFFFFF8)))
                {
                  goto LABEL_131;
                }

                v163 = *(v162 + 32);
              }

              v140 = v163;

LABEL_77:
              v141 = [v140 layer];

              if (v141)
              {
                v142 = [objc_allocWithZone(CAFilter) initWithType:v216];
                v143 = sub_AB3A30().super.super.isa;
                [v142 setValue:v143 forKey:v215];

                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
                v144 = swift_allocObject();
                *(v144 + 16) = xmmword_AF4EC0;
                *(v144 + 56) = sub_13C80(0, &qword_E229B8, CAFilter_ptr);
                *(v144 + 32) = v142;
                v145 = v142;
                v146 = sub_AB9740().super.isa;

                [v141 setFilters:v146];

                v147 = sub_AB9260();
                v148 = [objc_opt_self() animationWithKeyPath:v147];

                v149 = v148;
                [v149 setDuration:0.32];
                [v149 setBeginTime:CACurrentMediaTime() + 0.15];
                [v149 setFillMode:kCAFillModeBoth];
                v150 = sub_AB3A30().super.super.isa;
                [v149 setFromValue:v150];

                v151 = sub_AB3A30().super.super.isa;
                [v149 setToValue:v151];

                [v149 setRemovedOnCompletion:0];
                v152 = objc_allocWithZone(CAMediaTimingFunction);
                LODWORD(v153) = 1051260355;
                LODWORD(v154) = 1059816735;
                LODWORD(v155) = 1.0;
                v156 = [v152 initWithControlPoints:v153 :0.0 :v154 :v155];
                [v149 setTimingFunction:v156];

                v157 = swift_allocObject();
                *(v157 + 16) = v141;
                v158 = v141;
                CAAnimation.completion.setter(sub_955AB8, v157);

                v159 = sub_AB9260();
                [v158 addAnimation:v149 forKey:v159];

                v120 = v234 + 1;

                goto LABEL_87;
              }

LABEL_86:

              goto LABEL_87;
            }
          }

          else if (*(&dword_10 + (v162 & 0xFFFFFFFFFFFFFF8)))
          {
            goto LABEL_82;
          }

LABEL_87:
          if (v120 == v228)
          {

            v218 = sub_954DF4;
            goto LABEL_96;
          }

          v232 = sub_954DF4;
          v121 = v133;
          if (v120 >= *(v208 + 16))
          {
            goto LABEL_126;
          }
        }
      }

      v123 = 0;
      v122 = 0;
      v218 = 0;
      v133 = 0;
      v237 = v19;
LABEL_96:
      v240 = *(v209 + 16);
      if (!v240)
      {
LABEL_120:
        v198 = swift_allocObject();
        *(v198 + 16) = 0;
        v199 = swift_allocObject();
        v199[2] = v198;
        v199[3] = v203;
        v199[4] = v204;
        v246 = sub_954EC8;
        v247 = v199;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_624AE8;
        v245 = &block_descriptor_288_0;
        v200 = _Block_copy(&aBlock);

        [(objc_class *)isa addCompletion:v200];
        _Block_release(v200);
        [(objc_class *)isa startAnimation];
        v201 = swift_allocObject();
        v201[2] = v198;
        v201[3] = v203;
        v201[4] = v204;
        v246 = sub_955A30;
        v247 = v201;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_624AE8;
        v245 = &block_descriptor_294;
        v202 = _Block_copy(&aBlock);

        [(objc_class *)v221 addCompletion:v202];
        _Block_release(v202);
        [(objc_class *)v221 startAnimation];
        [v226 startAnimationAfterDelay:0.1];

        sub_17654(v224, v211);
        sub_17654(v123, v122);
        sub_17654(v218, v133);
        return;
      }

      v233 = kCAFilterGaussianBlur;
      v229 = kCAFilterInputRadius;

      v164 = 0;
      while (1)
      {
        if (v164 >= *(v209 + 16))
        {
          goto LABEL_127;
        }

        v165 = *(v209 + 8 * v164 + 32);
        if (v212)
        {
          v246 = sub_954EF0;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_300;
          v166 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = isa;
          [isa v16[291]];
          _Block_release(v166);
          v246 = sub_954F10;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_624AE8;
          v168 = &block_descriptor_303_0;
        }

        else
        {
          v246 = sub_954E88;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_1B5EB4;
          v245 = &block_descriptor_273_2;
          v169 = _Block_copy(&aBlock);
          swift_retain_n();

          v167 = v221;
          [v221 v16[291]];
          _Block_release(v169);
          v246 = sub_955AB4;
          v247 = v165;
          aBlock = _NSConcreteStackBlock;
          v243 = 1107296256;
          v244 = sub_624AE8;
          v168 = &block_descriptor_276;
        }

        v245 = v168;
        v170 = _Block_copy(&aBlock);

        [(objc_class *)v167 addCompletion:v170];
        _Block_release(v170);
        v171 = [objc_allocWithZone(UIViewPropertyAnimator) initWithDuration:0 controlPoint1:0.23 controlPoint2:0.33 animations:{0.0, 0.67, 1.0}];
        v246 = sub_954EA8;
        v247 = v165;
        aBlock = _NSConcreteStackBlock;
        v243 = 1107296256;
        v244 = sub_1B5EB4;
        v245 = &block_descriptor_279_0;
        v172 = _Block_copy(&aBlock);

        [v171 v16[291]];
        _Block_release(v172);
        if (v237)
        {
          v173 = v165[14];
          if (v173)
          {
            v174 = [v173 maskView];
            if (v174)
            {
              goto LABEL_107;
            }

            v194 = v165[14];
            if (v194)
            {
              v195 = [v194 subviews];
              sub_13C80(0, &qword_E229B0, UIView_ptr);
              v196 = sub_AB9760();

              if (v196 >> 62)
              {
                if (sub_ABB060())
                {
LABEL_112:
                  if ((v196 & 0xC000000000000001) != 0)
                  {
                    v197 = sub_ABAE20();
                  }

                  else
                  {
                    if (!*(&dword_10 + (v196 & 0xFFFFFFFFFFFFFF8)))
                    {
                      goto LABEL_130;
                    }

                    v197 = *(v196 + 32);
                  }

                  v174 = v197;

LABEL_107:
                  v175 = [v174 layer];

                  if (v175)
                  {
                    v176 = [objc_allocWithZone(CAFilter) initWithType:v233];
                    v177 = sub_AB3A30().super.super.isa;
                    [v176 setValue:v177 forKey:v229];

                    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_E225A8, &unk_B3AF60);
                    v178 = swift_allocObject();
                    *(v178 + 16) = xmmword_AF4EC0;
                    *(v178 + 56) = sub_13C80(0, &qword_E229B8, CAFilter_ptr);
                    *(v178 + 32) = v176;
                    v179 = v176;
                    v180 = sub_AB9740().super.isa;

                    [v175 setFilters:v180];

                    v181 = sub_AB9260();
                    v182 = [objc_opt_self() animationWithKeyPath:v181];

                    v183 = v182;
                    [v183 setDuration:0.23];
                    [v183 setBeginTime:CACurrentMediaTime() + 0.0];
                    [v183 setFillMode:kCAFillModeBoth];
                    v184 = sub_AB3A30().super.super.isa;
                    [v183 setFromValue:v184];

                    v185 = sub_AB3A30().super.super.isa;
                    [v183 setToValue:v185];

                    [v183 setRemovedOnCompletion:0];
                    v186 = objc_allocWithZone(CAMediaTimingFunction);
                    LODWORD(v187) = 1051260355;
                    LODWORD(v188) = 1059816735;
                    LODWORD(v189) = 1.0;
                    v190 = [v186 initWithControlPoints:v187 :0.0 :v188 :v189];
                    [v183 setTimingFunction:v190];

                    v191 = swift_allocObject();
                    *(v191 + 16) = v175;
                    v192 = v175;
                    CAAnimation.completion.setter(sub_954EE8, v191);

                    v193 = sub_AB9260();
                    [v192 addAnimation:v183 forKey:v193];

                    v16 = &selRef_setSubtitleText_;
                  }

                  goto LABEL_99;
                }
              }

              else if (*(&dword_10 + (v196 & 0xFFFFFFFFFFFFFF8)))
              {
                goto LABEL_112;
              }
            }
          }
        }

LABEL_99:
        ++v164;
        [v171 startAnimation];

        if (v240 == v164)
        {

          goto LABEL_120;
        }
      }
    }

    break;
  }

  v87 = v81;
  v88 = v82;
  v89 = v81;
  if (v82)
  {
LABEL_47:
    v90 = (v88 - 1) & v88;
    v91 = *(*(v77 + 48) + ((v89 << 9) | (8 * __clz(__rbit64(v88)))));

    if (!v91)
    {
      goto LABEL_7;
    }

    goto LABEL_51;
  }

  while (1)
  {
    v89 = v87 + 1;
    if (__OFADD__(v87, 1))
    {
      break;
    }

    if (v89 >= v86)
    {
      goto LABEL_7;
    }

    v88 = *&v79[8 * v89];
    ++v87;
    if (v88)
    {
      goto LABEL_47;
    }
  }

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
}