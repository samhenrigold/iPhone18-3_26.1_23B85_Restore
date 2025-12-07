void *sub_25F21EFAC()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C08, &qword_25F3080C0);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21F108()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF8, &qword_25F3080B0);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; result = sub_25F1DF984(&v28, &v27))
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
LABEL_17:
      v16 = v13 | (v8 << 6);
      v17 = 16 * v16;
      v16 *= 80;
      v18 = (*(v2 + 56) + v16);
      v19 = *(*(v2 + 48) + v17);
      v21 = v18[1];
      v20 = v18[2];
      v22 = v18[3];
      *(v31 + 9) = *(v18 + 57);
      v31[0] = v22;
      v28 = *v18;
      v29 = v21;
      v30 = v20;
      *(*(v4 + 48) + v17) = v19;
      v23 = (*(v4 + 56) + v16);
      *v23 = v28;
      v24 = v29;
      v25 = v30;
      v26 = v31[0];
      *(v23 + 57) = *(v31 + 9);
      v23[2] = v25;
      v23[3] = v26;
      v23[1] = v24;
    }

    v14 = v8;
    while (1)
    {
      v8 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        break;
      }

      if (v8 >= i)
      {
        goto LABEL_19;
      }

      v15 = *(v2 + 64 + 8 * v8);
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v11 = (v15 - 1) & v15;
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

void *sub_25F21F2C4()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BF0, &qword_25F30DC00);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = -1;
    if (v9 < 64)
    {
      v10 = ~(-1 << v9);
    }

    v11 = v10 & *(v2 + 64);
    for (i = (v9 + 63) >> 6; v11; *(*(v4 + 56) + 8 * v14) = v17)
    {
      v13 = __clz(__rbit64(v11));
      v11 &= v11 - 1;
      v14 = v13 | (v8 << 6);
LABEL_17:
      v17 = *(*(v2 + 56) + 8 * v14);
      *(*(v4 + 48) + 8 * v14) = *(*(v2 + 48) + 8 * v14);
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

      v16 = *(v2 + 64 + 8 * v8);
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

  return result;
}

id sub_25F21F410()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55100, &qword_25F30DC50);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = (*(v2 + 48) + 16 * v17);
        v19 = v18[1];
        v20 = *(*(v2 + 56) + 8 * v17);
        v21 = (*(v4 + 48) + 16 * v17);
        *v21 = *v18;
        v21[1] = v19;
        *(*(v4 + 56) + 8 * v17) = v20;

        result = v20;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21F57C()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE8, &unk_25F3080A0);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 8 * v17);
        *(*(v4 + 48) + 4 * v17) = *(*(v2 + 48) + 4 * v17);
        *(*(v4 + 56) + 8 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

void *sub_25F21F6D8()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BE0, &unk_25F30DC60);
  v2 = *v0;
  v3 = sub_25F30632C();
  v4 = v3;
  if (*(v2 + 16))
  {
    result = (v3 + 64);
    v6 = ((1 << *(v4 + 32)) + 63) >> 6;
    if (v4 != v2 || result >= v2 + 64 + 8 * v6)
    {
      result = memmove(result, (v2 + 64), 8 * v6);
    }

    v8 = 0;
    *(v4 + 16) = *(v2 + 16);
    v9 = 1 << *(v2 + 32);
    v10 = *(v2 + 64);
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 56) + 16 * v17);
        *(*(v4 + 48) + 8 * v17) = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 56) + 16 * v17) = v18;
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

      v16 = *(v2 + 64 + 8 * v8);
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

uint64_t sub_25F21F83C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  result = sub_25F1B7118((a1 + 1), (a2 + 1));
  *a2 = v3;
  return result;
}

unint64_t sub_25F21F86C(uint64_t a1, uint64_t a2, uint64_t a3, char a4, void *a5)
{
  v7 = -1 << *(a1 + 32);
  v8 = ~v7;
  v9 = *(a1 + 64);
  v10 = -v7;
  v41 = a1;
  v42 = a1 + 64;
  if (v10 < 64)
  {
    v11 = ~(-1 << v10);
  }

  else
  {
    v11 = -1;
  }

  v43 = v8;
  v44 = 0;
  v45 = v11 & v9;
  v46 = a2;
  v47 = a3;

  sub_25F2190EC(&v38);
  if (!v40)
  {
    goto LABEL_25;
  }

  v12 = v38;
  sub_25F1B707C(&v39, v37);
  v13 = *a5;
  result = sub_25F2192AC(v12);
  v16 = v13[2];
  v17 = (v15 & 1) == 0;
  v18 = __OFADD__(v16, v17);
  v19 = v16 + v17;
  if (v18)
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  v20 = v15;
  if (v13[3] < v19)
  {
    sub_25F21A9F0(v19, a4 & 1);
    result = sub_25F2192AC(v12);
    if ((v20 & 1) == (v21 & 1))
    {
      goto LABEL_10;
    }

LABEL_8:
    result = sub_25F30665C();
    __break(1u);
  }

  if ((a4 & 1) == 0)
  {
    v24 = result;
    sub_25F21DD68();
    result = v24;
    v22 = *a5;
    if (v20)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_10:
  v22 = *a5;
  if (v20)
  {
LABEL_11:
    v23 = (v22[7] + 32 * result);
    __swift_destroy_boxed_opaque_existential_1(v23);
    sub_25F1B707C(v37, v23);
    goto LABEL_15;
  }

LABEL_13:
  v22[(result >> 6) + 8] |= 1 << result;
  *(v22[6] + 8 * result) = v12;
  result = sub_25F1B707C(v37, (v22[7] + 32 * result));
  v25 = v22[2];
  v18 = __OFADD__(v25, 1);
  v26 = v25 + 1;
  if (!v18)
  {
    v22[2] = v26;
LABEL_15:
    sub_25F2190EC(&v38);
    if (v40)
    {
      v20 = 1;
      do
      {
        v12 = v38;
        sub_25F1B707C(&v39, v37);
        v28 = *a5;
        result = sub_25F2192AC(v12);
        v30 = v28[2];
        v31 = (v29 & 1) == 0;
        v18 = __OFADD__(v30, v31);
        v32 = v30 + v31;
        if (v18)
        {
          goto LABEL_26;
        }

        a4 = v29;
        if (v28[3] < v32)
        {
          sub_25F21A9F0(v32, 1);
          result = sub_25F2192AC(v12);
          if ((a4 & 1) != (v33 & 1))
          {
            goto LABEL_8;
          }
        }

        v34 = *a5;
        if (a4)
        {
          v27 = (v34[7] + 32 * result);
          __swift_destroy_boxed_opaque_existential_1(v27);
          sub_25F1B707C(v37, v27);
        }

        else
        {
          v34[(result >> 6) + 8] |= 1 << result;
          *(v34[6] + 8 * result) = v12;
          result = sub_25F1B707C(v37, (v34[7] + 32 * result));
          v35 = v34[2];
          v18 = __OFADD__(v35, 1);
          v36 = v35 + 1;
          if (v18)
          {
            goto LABEL_27;
          }

          v34[2] = v36;
        }

        sub_25F2190EC(&v38);
      }

      while (v40);
    }

LABEL_25:
    sub_25F1BF034(v41);
  }

LABEL_27:
  __break(1u);
  return result;
}

unint64_t sub_25F21FB54()
{
  result = qword_27FD550E0;
  if (!qword_27FD550E0)
  {
    sub_25F30467C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD550E0);
  }

  return result;
}

uint64_t sub_25F21FBAC(uint64_t a1)
{
  v2 = type metadata accessor for CrashReport.ID(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_25F21FC08(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C48, &qword_25F308100);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t CrashReportError.MissingPhotoKeyError.init(report:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = type metadata accessor for CrashReportError.MissingPhotoKeyError(0);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for CrashReport(0);
  v9 = a1 + *(v8 + 40);
  v10 = *(v9 + 40);
  v11 = *(v9 + 104);
  v12 = v10 == 1 || v11 == 0;
  if (v12 || !v11[2])
  {
    sub_25F1AF760(a1);
  }

  else
  {
    v13 = v8;
    v15 = v11[4];
    v14 = v11[5];
    v22[2] = v15;
    v22[3] = v14;
    v22[0] = 0xD00000000000001ELL;
    v22[1] = 0x800000025F318840;
    sub_25F1BF118();

    if (sub_25F305D5C())
    {
      v16 = &v7[*(v4 + 24)];
      *v16 = v15;
      *(v16 + 1) = v14;
      v17 = (a1 + *(v13 + 20));
      v18 = *v17;
      v19 = v17[1];
      v20 = &v7[*(v4 + 20)];
      *v20 = v18;
      *(v20 + 1) = v19;
      sub_25F21FFC4(a1, v7, type metadata accessor for CrashReport);
      sub_25F21FFC4(v7, a2, type metadata accessor for CrashReportError.MissingPhotoKeyError);
      (*(v5 + 56))(a2, 0, 1, v4);
    }

    sub_25F1AF760(a1);
  }

  return (*(v5 + 56))(a2, 1, 1, v4);
}

uint64_t type metadata accessor for CrashReportError.MissingPhotoKeyError(uint64_t a1)
{
  result = qword_27FD55110;
  if (!qword_27FD55110)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_25F21FFC4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t CrashReportError.MissingPhotoKeyError.processName.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError(0) + 20));

  return v1;
}

uint64_t CrashReportError.MissingPhotoKeyError.reason.getter()
{
  v1 = *(v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError(0) + 24));

  return v1;
}

uint64_t CrashReportError.MissingPhotoKeyError.highValueTitle.getter()
{
  sub_25F305FAC();
  v1 = *(v0 + *(type metadata accessor for CrashReportError.MissingPhotoKeyError(0) + 20));

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F318860);
  return v1;
}

uint64_t sub_25F220184(uint64_t a1)
{
  sub_25F305FAC();

  v4 = *(v1 + *(a1 + 20));

  MEMORY[0x25F8D7130](0xD000000000000026, 0x800000025F318860);
  return v4;
}

uint64_t sub_25F220260(uint64_t a1)
{
  result = type metadata accessor for CrashReport(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F2202DC@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  type metadata accessor for IsolatedInvalidationHandle();
  v12 = swift_allocObject();
  v12[6] = 0;
  swift_unknownObjectWeakInit();
  swift_beginAccess();
  v12[6] = 0;
  swift_unknownObjectWeakAssign();
  v12[2] = 0;
  v12[3] = 0;
  v13 = MEMORY[0x277D84F90];
  sub_25F1E4DAC(MEMORY[0x277D84F90], &v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540B8, &unk_25F30A6F0);
  v14 = swift_allocObject();
  v21 = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD540C0, &qword_25F30DF50);
  v15 = swift_allocObject();
  *(v15 + 84) = 0;
  *(v15 + 16) = v18;
  *(v15 + 32) = v13;
  *(v15 + 81) = v21;
  *(v14 + 152) = v15;
  *(v14 + 16) = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentInvalidatableCache.swift";
  *(v14 + 24) = 140;
  *(v14 + 32) = 2;
  *(v14 + 40) = xmmword_25F30DD30;
  *(v14 + 56) = "init(resource:)";
  *(v14 + 64) = 15;
  *(v14 + 72) = 2;
  *(v14 + 80) = 0;
  *(v14 + 88) = 0;
  *(v14 + 96) = xmmword_25F3077E0;
  *(v14 + 112) = 2;
  *(v14 + 120) = 0xD00000000000001CLL;
  *(v14 + 128) = 0x800000025F317BC0;
  *(v14 + 136) = 0x6164696C61766E69;
  *(v14 + 144) = 0xEB00000000646574;
  v12[4] = v14;
  *a6 = v12;
  *&v18 = a2;
  *(&v18 + 1) = a3;
  v19 = a4;
  v20 = a5;
  v16 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, &v18);
  return (*(*(a3 - 8) + 32))(&a6[*(v16 + 52)], a1, a3);
}

uint64_t ConcurrentInvalidatableCache.__allocating_init()()
{
  v0 = swift_allocObject();
  ConcurrentInvalidatableCache.init()();
  return v0;
}

char *ConcurrentInvalidatableCache.init()()
{
  v1 = v0;
  v2 = *v0;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52B40, &qword_25F307EA0);
  MEMORY[0x28223BE20](v3 - 8);
  v43 = &v35 - v4;
  v5 = v2[10];
  v46 = v2[11];
  v6 = v2[12];
  v45 = v2[13];
  v47 = v5;
  v48 = v46;
  v7 = v5;
  v49 = v6;
  v50 = v45;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, &v47);
  v8 = sub_25F3054AC();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v35 - v10;
  v12 = sub_25F3054DC();
  v40 = *(v12 - 8);
  v41 = v12;
  MEMORY[0x28223BE20](v12);
  v44 = &v35 - v13;
  v42 = sub_25F30552C();
  v14 = *(v42 - 8);
  v15 = *(v14 + 64);
  v16 = MEMORY[0x28223BE20](v42);
  v39 = &v35 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v35 - v17;
  swift_defaultActor_initialize();
  v37 = v6;
  v38 = v7;
  v47 = v7;
  v48 = v46;
  v49 = v6;
  v50 = v45;
  v19 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(255, &v47);
  v47 = v7;
  v48 = v19;
  v49 = v6;
  v50 = &off_2871628A0;
  type metadata accessor for IsolatedInvalidatableCache(0, &v47);
  *(v1 + 14) = IsolatedInvalidatableCache.__allocating_init()();
  v20 = v8;
  (*(v9 + 104))(v11, *MEMORY[0x277D85778], v8);
  v21 = v18;
  v36 = v18;
  v22 = v44;
  sub_25F30547C();
  (*(v9 + 8))(v11, v20);
  v24 = v40;
  v23 = v41;
  (*(v40 + 16))(&v1[*(*v1 + 128)], v22, v41);
  v25 = sub_25F30546C();
  v26 = v43;
  (*(*(v25 - 8) + 56))(v43, 1, 1, v25);
  v27 = v39;
  v28 = v21;
  v29 = v42;
  (*(v14 + 16))(v39, v28, v42);
  v30 = (*(v14 + 80) + 72) & ~*(v14 + 80);
  v31 = swift_allocObject();
  *(v31 + 2) = 0;
  *(v31 + 3) = 0;
  v32 = v46;
  *(v31 + 4) = v38;
  *(v31 + 5) = v32;
  v33 = v45;
  *(v31 + 6) = v37;
  *(v31 + 7) = v33;
  *(v31 + 8) = v1;
  (*(v14 + 32))(&v31[v30], v27, v29);

  sub_25F1B1524(0, 0, v26, &unk_25F30DD50, v31);

  (*(v24 + 8))(v44, v23);
  (*(v14 + 8))(v36, v29);
  return v1;
}

uint64_t sub_25F220A0C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v7 = swift_task_alloc();
  *(v5 + 16) = v7;
  *v7 = v5;
  v7[1] = sub_25F1AFDB0;

  return sub_25F22211C(a5);
}

uint64_t sub_25F220AA8(uint64_t a1)
{
  v3 = v2;
  v5 = *(v1 + 48);
  *(v3 + 16) = *(v1 + 32);
  *(v3 + 32) = v5;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, v3 + 16);
  v6 = *(sub_25F30552C() - 8);
  v7 = (*(v6 + 80) + 72) & ~*(v6 + 80);
  v8 = *(v1 + 16);
  v9 = *(v1 + 24);
  v10 = *(v1 + 64);
  v11 = swift_task_alloc();
  *(v3 + 48) = v11;
  *v11 = v3;
  v11[1] = sub_25F220BC0;

  return sub_25F220A0C(a1, v8, v9, v10, v1 + v7);
}

uint64_t sub_25F220BC0()
{
  v3 = *v0;

  v1 = *(v3 + 8);

  return v1();
}

uint64_t sub_25F220CB4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v5 + 104) = a4;
  *(v5 + 112) = v4;
  *(v5 + 88) = a2;
  *(v5 + 96) = a3;
  *(v5 + 80) = a1;
  v6 = *v4;
  v7 = *(*v4 + 80);
  *(v5 + 120) = v7;
  v8 = v6[11];
  *(v5 + 128) = v8;
  v9 = v6[12];
  *(v5 + 136) = v9;
  v10 = v6[13];
  *(v5 + 144) = v10;
  *&v11 = v7;
  *(&v11 + 1) = v8;
  *&v12 = v9;
  *(&v12 + 1) = v10;
  *(v5 + 32) = v12;
  *(v5 + 16) = v11;
  v13 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, v5 + 16);
  *(v5 + 152) = v13;
  *(v5 + 160) = *(v13 - 8);
  *(v5 + 168) = swift_task_alloc();
  v14 = swift_task_alloc();
  *(v5 + 176) = v14;
  *v14 = v5;
  v14[1] = sub_25F220E28;

  return sub_25F222874();
}

uint64_t sub_25F220E28()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_25F220F38, v1, 0);
}

uint64_t sub_25F220F38()
{
  v1 = *(v0 + 112);
  v2 = *(v0 + 88);
  *(v0 + 48) = *(v0 + 120);
  *(v0 + 64) = *(v0 + 136);
  type metadata accessor for ConcurrentInvalidatableCache(255, v0 + 48);
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  *(v0 + 184) = v4;
  *(v4 + 16) = *(v0 + 96);
  *(v4 + 32) = v1;
  *(v4 + 40) = v2;
  v5 = swift_task_alloc();
  *(v0 + 192) = v5;
  *v5 = v0;
  v5[1] = sub_25F221068;
  v6 = *(v0 + 168);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);

  return IsolatedInvalidatableCache.resource(on:for:create:)(v6, v7, WitnessTable, v8, &unk_25F30DD70, v4);
}

uint64_t sub_25F221068()
{
  v2 = *v1;
  *(*v1 + 200) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_25F221254;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_25F221190;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F221190()
{
  v2 = v0[20];
  v1 = v0[21];
  v3 = v0[19];
  (*(*(v0[16] - 8) + 16))(v0[10], v1 + *(v3 + 52));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F221254()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F2212C4(uint64_t a1, int *a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5[3] = a4;
  v5[4] = a5;
  v5[2] = a1;
  v7 = *(*a4 + 88);
  v5[5] = v7;
  v5[6] = *(v7 - 8);
  v8 = swift_task_alloc();
  v5[7] = v8;
  v11 = (a2 + *a2);
  v9 = swift_task_alloc();
  v5[8] = v9;
  *v9 = v5;
  v9[1] = sub_25F221434;

  return v11(v8);
}

uint64_t sub_25F221434()
{
  v2 = *v1;
  *(*v1 + 72) = v0;

  v3 = *(v2 + 24);
  if (v0)
  {
    v4 = sub_25F1F4CEC;
  }

  else
  {
    v4 = sub_25F221560;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F221560()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v0 + 40);
  sub_25F2219E8(v1, *(v0 + 32), *(v0 + 16));
  (*(v2 + 8))(v1, v3);

  v4 = *(v0 + 8);

  return v4();
}

uint64_t sub_25F2215F8()
{
  v1[6] = v0;
  v1[7] = *v0;
  v2 = swift_task_alloc();
  v1[8] = v2;
  *v2 = v1;
  v2[1] = sub_25F2216B0;

  return sub_25F222874();
}

uint64_t sub_25F2216B0()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25F2217C0, v1, 0);
}

uint64_t sub_25F2217C0()
{
  v1 = *(v0 + 56);
  IsolatedInvalidatableCache.snapshot.getter();
  v2 = swift_task_alloc();
  v3 = v1[10];
  v2[2] = v3;
  v4 = v1[11];
  v2[3] = v4;
  v5 = v1[12];
  v2[4] = v5;
  v6 = v1[13];
  v2[5] = v6;
  *&v7 = v3;
  *(&v7 + 1) = v4;
  *&v8 = v5;
  *(&v8 + 1) = v6;
  *(v0 + 32) = v8;
  *(v0 + 16) = v7;
  type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, v0 + 16);
  v9 = sub_25F304B2C();

  v10 = *(v0 + 8);

  return v10(v9);
}

uint64_t sub_25F2218DC(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8, uint64_t *a9)
{
  v9 = *a9;
  *&v12 = a1;
  *(&v12 + 1) = a2;
  v13 = a3;
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a7;
  v18 = a8;
  v11 = v9;
  return sub_25F221924(&v12, &v11);
}

uint64_t sub_25F221924(__int128 *a1, uint64_t *a2)
{
  v3 = *v2;
  v4 = a1[1];
  v9 = *a1;
  v10 = v4;
  v11[0] = a1[2];
  *(v11 + 9) = *(a1 + 41);
  v8 = *a2;
  v5 = v3;
  sub_25F2DA76C(&v9, &v8);
  v6 = *(v5 + 96);
  v9 = *(v5 + 80);
  v10 = v6;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, &v9);
  sub_25F3054DC();
  return sub_25F3054CC();
}

uint64_t sub_25F2219E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, char *a3@<X8>)
{
  v7 = *v3;
  v8 = *v3;
  v9 = *(*v3 + 88);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](a1);
  v12 = &v22 - v11;
  v13 = *(v10 + 16);
  v13(&v22 - v11, a1, v9);
  v14 = *(v7 + 80);
  *&v15 = v14;
  *(&v15 + 1) = v9;
  v22 = v15;
  v23 = *(v8 + 96);
  sub_25F2202DC(v12, v14, v9, v23, *(&v23 + 1), a3);
  v16 = *a3;
  v25 = v22;
  v26 = v23;
  type metadata accessor for ConcurrentInvalidatableCache(255, &v25);
  WitnessTable = swift_getWitnessTable();
  swift_beginAccess();
  *(v16 + 48) = WitnessTable;
  swift_unknownObjectWeakAssign();
  *&v25 = v14;
  *(&v25 + 1) = v9;
  v26 = v23;
  v18 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, &v25);
  *(&v26 + 1) = v18;
  v27 = &off_2871628A0;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v25);
  (*(*(v18 - 8) + 16))(boxed_opaque_existential_1, a3, v18);
  v24[3] = v9;
  v24[4] = *(&v23 + 1);
  v20 = __swift_allocate_boxed_opaque_existential_1(v24);
  v13(v20, a1, v9);
  sub_25F221C4C(&v25, v24, a2);
  __swift_destroy_boxed_opaque_existential_1(v24);
  return __swift_destroy_boxed_opaque_existential_1(&v25);
}

uint64_t sub_25F221C4C(uint64_t a1, void *a2, uint64_t a3)
{
  v4 = v3;
  v6 = *v3;
  v22 = a3;
  v23 = v6;
  v24 = v6;
  v7 = *(v6 + 80);
  v8 = *(v7 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v22 - v10;
  v12 = v9[3];
  v13 = v9[4];
  __swift_project_boxed_opaque_existential_1(v9, v12);
  sub_25F1BF03C(a2, v25);
  v14 = swift_allocObject();
  sub_25F1A42F8(v25, v14 + 16);
  IsolatedInvalidatable.onInvalidation(_:)(sub_25F224BDC, v14, v12, v13);

  v15 = a2[3];
  v16 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v15);
  (*(v8 + 16))(v11, v22, v7);
  v17 = (*(v8 + 80) + 56) & ~*(v8 + 80);
  v18 = swift_allocObject();
  v20 = v23;
  v19 = v24;
  *(v18 + 16) = v7;
  *(v18 + 24) = *(v19 + 88);
  *(v18 + 40) = *(v20 + 104);
  *(v18 + 48) = v4;
  (*(v8 + 32))(v18 + v17, v11, v7);

  ConcurrentInvalidatable.onInvalidation(_:)(sub_25F224BE4, v18, v15, v16);
}

uint64_t sub_25F221E88(uint64_t *a1, void *a2)
{
  v2 = *a1;
  v3 = a2[3];
  v4 = a2[4];
  __swift_project_boxed_opaque_existential_1(a2, v3);
  v6 = *(v4 + 8);
  v7 = v2;
  return AnyInvalidatable.invalidate(file:line:column:function:trace:)("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/ConcurrentInvalidatableCache.swift", 140, 2, 82, 34, "bindInvalidation(of:_:for:)", 27, 2, &v7, v3, v6);
}

uint64_t sub_25F221F08(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v4 = *(*a2 + 96);
  v16 = *(*a2 + 80);
  v18[0] = v16;
  v18[1] = v4;
  v5 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(0, v18);
  MEMORY[0x28223BE20](v5);
  v7 = &v16 - v6;
  v8 = sub_25F30548C();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v16 - v10;
  v12 = *a1;
  v13 = v16;
  v14 = *(swift_getTupleTypeMetadata2() + 48);
  (*(*(v13 - 8) + 16))(v7, v17, v13);
  *&v7[v14] = v12;
  swift_storeEnumTagMultiPayload();
  sub_25F3054DC();

  sub_25F3054BC();
  return (*(v9 + 8))(v11, v8);
}

uint64_t sub_25F22211C(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  v3 = *v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8);
  *(v2 + 96) = v4;
  *(v2 + 104) = *(v4 - 8);
  *(v2 + 112) = swift_task_alloc();
  v5 = v3[10];
  *(v2 + 120) = v5;
  *(v2 + 128) = *(v5 - 8);
  *(v2 + 136) = swift_task_alloc();
  v6 = v3[11];
  *(v2 + 144) = v6;
  v7 = v3[12];
  *(v2 + 152) = v7;
  v8 = v3[13];
  *(v2 + 160) = v8;
  *&v9 = v5;
  *(&v9 + 1) = v6;
  *&v10 = v7;
  *(&v10 + 1) = v8;
  *(v2 + 32) = v10;
  *(v2 + 16) = v9;
  v11 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(0, v2 + 16);
  *(v2 + 168) = v11;
  *(v2 + 176) = *(v11 - 8);
  *(v2 + 184) = swift_task_alloc();
  sub_25F305C1C();
  *(v2 + 192) = swift_task_alloc();
  v12 = sub_25F30550C();
  *(v2 + 200) = v12;
  *(v2 + 208) = *(v12 - 8);
  *(v2 + 216) = swift_task_alloc();

  return MEMORY[0x2822009F8](sub_25F2223B8, v1, 0);
}

uint64_t sub_25F2223B8()
{
  v1 = *(v0 + 160);
  v2 = *(v0 + 120);
  sub_25F30552C();
  v9 = *(v0 + 144);
  sub_25F3054EC();
  *(v0 + 48) = v2;
  *(v0 + 56) = v9;
  *(v0 + 72) = v1;
  type metadata accessor for ConcurrentInvalidatableCache(255, v0 + 48);
  WitnessTable = swift_getWitnessTable();
  *(v0 + 224) = WitnessTable;
  v4 = *(v0 + 88);
  v5 = swift_task_alloc();
  *(v0 + 232) = v5;
  *v5 = v0;
  v5[1] = sub_25F2224D8;
  v6 = *(v0 + 192);
  v7 = *(v0 + 200);

  return MEMORY[0x2822003E8](v6, v4, WitnessTable, v7);
}

uint64_t sub_25F2224D8()
{
  v1 = *(*v0 + 88);

  return MEMORY[0x2822009F8](sub_25F2225E8, v1, 0);
}

uint64_t sub_25F2225E8()
{
  v21 = v0;
  v1 = v0[24];
  v2 = v0[21];
  v3 = v0[22];
  if ((*(v3 + 48))(v1, 1, v2) == 1)
  {
    (*(v0[26] + 8))(v0[27], v0[25]);

    v4 = v0[1];

    return v4();
  }

  else
  {
    (*(v3 + 32))(v0[23], v1, v2);
    EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
    v7 = v0[23];
    if (EnumCaseMultiPayload == 1)
    {
      v9 = v0[13];
      v8 = v0[14];
      v10 = v0[12];
      (*(v9 + 32))(v8, v0[23], v10);
      sub_25F30541C();
      (*(v9 + 8))(v8, v10);
    }

    else
    {
      v12 = v0[16];
      v11 = v0[17];
      v13 = v0[15];
      v14 = *(v7 + *(swift_getTupleTypeMetadata2() + 48));
      (*(v12 + 32))(v11, v7, v13);
      v20 = v14;
      sub_25F2DADB4(v11, &v20);
      (*(v12 + 8))(v11, v13);
    }

    v15 = v0[28];
    v16 = v0[11];
    v17 = swift_task_alloc();
    v0[29] = v17;
    *v17 = v0;
    v17[1] = sub_25F2224D8;
    v18 = v0[24];
    v19 = v0[25];

    return MEMORY[0x2822003E8](v18, v16, v15, v19);
  }
}

uint64_t sub_25F222874()
{
  *(v1 + 48) = v0;
  *(v1 + 56) = *v0;
  return MEMORY[0x2822009F8](sub_25F2228BC, v0, 0);
}

uint64_t sub_25F2228BC()
{
  v2 = *(v0 + 48);
  v1 = *(v0 + 56);
  v3 = *(v1 + 96);
  *(v0 + 16) = *(v1 + 80);
  *(v0 + 32) = v3;
  type metadata accessor for ConcurrentInvalidatableCache(255, v0 + 16);
  WitnessTable = swift_getWitnessTable();
  v5 = swift_task_alloc();
  *(v0 + 64) = v5;
  *v5 = v0;
  v5[1] = sub_25F2229D4;
  v6 = *(v0 + 48);
  v7 = MEMORY[0x277D84F78] + 8;

  return MEMORY[0x2822007B8](v5, v2, WitnessTable, 0xD000000000000018, 0x800000025F318A50, sub_25F224C4C, v6, v7);
}

uint64_t sub_25F2229D4()
{
  v1 = *(*v0 + 48);

  return MEMORY[0x2822009F8](sub_25F222AE4, v1, 0);
}

uint64_t sub_25F222B10(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_25F1AFDB0;

  return sub_25F2212C4(a1, v4, v5, v7, v6);
}

uint64_t sub_25F222BD0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(v2 + 40);
  v9 = *(v2 + 16);
  v10 = *(v2 + 24);
  v8 = v10;
  v11 = v5;
  v6 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, &v9);
  return (*(*(v8 - 8) + 16))(a2, a1 + *(v6 + 52));
}

uint64_t sub_25F222C70(uint64_t a1, uint64_t a2)
{
  v3 = *(*a2 + 96);
  v13[0] = *(*a2 + 80);
  v13[1] = v3;
  v4 = type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(0, v13);
  MEMORY[0x28223BE20](v4);
  v6 = v13 - v5;
  v7 = sub_25F30548C();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = v13 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8);
  (*(*(v11 - 8) + 16))(v6, a1, v11);
  swift_storeEnumTagMultiPayload();
  sub_25F3054DC();
  sub_25F3054BC();
  return (*(v8 + 8))(v10, v7);
}

char *ConcurrentInvalidatableCache.deinit()
{
  v1 = *v0;

  v2 = *(*v0 + 128);
  v3 = *(v1 + 96);
  v6[0] = *(v1 + 80);
  v6[1] = v3;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, v6);
  v4 = sub_25F3054DC();
  (*(*(v4 - 8) + 8))(v0 + v2, v4);
  swift_defaultActor_destroy();
  return v0;
}

uint64_t ConcurrentInvalidatableCache.__deallocating_deinit()
{
  ConcurrentInvalidatableCache.deinit();

  return MEMORY[0x282200960](v0);
}

char *ConcurrentOnDemand.init(create:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10[1] = a3;
  v10[0] = MEMORY[0x277D83B88];
  v10[2] = MEMORY[0x277D83B98];
  v10[3] = a4;
  type metadata accessor for ConcurrentInvalidatableCache(0, v10);
  v8 = swift_allocObject();
  result = ConcurrentInvalidatableCache.init()();
  *a5 = v8;
  a5[1] = a1;
  a5[2] = a2;
  return result;
}

uint64_t ConcurrentOnDemand.value.getter(uint64_t a1)
{
  v4 = *(v1 + 8);
  v5 = *(v1 + 16);
  *(v2 + 16) = 0;
  v6 = swift_task_alloc();
  *(v2 + 24) = v6;
  *v6 = v2;
  v6[1] = sub_25F2230B0;

  return sub_25F220CB4(a1, v2 + 16, v4, v5);
}

uint64_t sub_25F2230B0()
{
  v2 = *v1;
  *(v2 + 32) = v0;

  if (v0)
  {

    return MEMORY[0x2822009F8](sub_25F2231E4, 0, 0);
  }

  else
  {
    v3 = *(v2 + 8);

    return v3();
  }
}

uint64_t ConcurrentOnDemand.invalidate(file:line:column:function:trace:)(uint64_t a1, uint64_t a2, char a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, char a8)
{
  *(v9 + 74) = a8;
  *(v9 + 120) = a6;
  *(v9 + 128) = a7;
  *(v9 + 104) = a4;
  *(v9 + 112) = a5;
  *(v9 + 73) = a3;
  *(v9 + 88) = a1;
  *(v9 + 96) = a2;
  v10 = *v8;
  *(v9 + 136) = *v12;
  *(v9 + 144) = v10;
  return MEMORY[0x2822009F8](sub_25F223240, 0, 0);
}

uint64_t sub_25F223240()
{
  v2 = *(v0 + 136);
  v1 = *(v0 + 144);
  v3 = *(v0 + 74);
  v4 = *(v0 + 73);
  *(v0 + 16) = *(v0 + 88);
  *(v0 + 32) = v4;
  *(v0 + 40) = *(v0 + 104);
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v3;
  *(v0 + 80) = v2;
  return MEMORY[0x2822009F8](sub_25F223288, v1, 0);
}

uint64_t sub_25F223288()
{
  sub_25F221924((v0 + 16), (v0 + 80));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConcurrentOnDemand.invalidate(callsite:trace:)(uint64_t a1, uint64_t *a2)
{
  v4 = *a2;
  v5 = *v2;
  v3[3] = a1;
  v3[4] = v5;
  v3[2] = v4;
  return MEMORY[0x2822009F8](sub_25F223318, v5, 0);
}

uint64_t sub_25F223318()
{
  sub_25F221924(*(v0 + 24), (v0 + 16));
  v1 = *(v0 + 8);

  return v1();
}

uint64_t ConcurrentInvalidatableCache<>.anyResource(excluding:createResource:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5[13] = a4;
  v5[14] = v4;
  v5[11] = a2;
  v5[12] = a3;
  v5[10] = a1;
  v6 = *v4;
  v7 = *(*v4 + 88);
  v5[15] = v7;
  v8 = sub_25F1E6B9C();
  v5[16] = v8;
  v9 = *(v6 + 104);
  v5[17] = v9;
  v5[2] = &type metadata for Identifier;
  v5[3] = v7;
  v5[4] = v8;
  v5[5] = v9;
  v10 = type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(0, (v5 + 2));
  v5[18] = v10;
  v5[19] = *(v10 - 8);
  v5[20] = swift_task_alloc();
  v11 = swift_task_alloc();
  v5[21] = v11;
  *v11 = v5;
  v11[1] = sub_25F2234CC;

  return sub_25F222874();
}

uint64_t sub_25F2234CC()
{
  v1 = *(*v0 + 112);

  return MEMORY[0x2822009F8](sub_25F2235DC, v1, 0);
}

uint64_t sub_25F2235DC()
{
  v1 = *(v0 + 136);
  v2 = *(v0 + 112);
  *(v0 + 48) = &type metadata for Identifier;
  *(v0 + 56) = *(v0 + 120);
  *(v0 + 72) = v1;
  type metadata accessor for ConcurrentInvalidatableCache(255, v0 + 48);
  WitnessTable = swift_getWitnessTable();
  v4 = swift_task_alloc();
  *(v0 + 176) = v4;
  *(v4 + 16) = *(v0 + 96);
  *(v4 + 32) = v2;
  v5 = swift_task_alloc();
  *(v0 + 184) = v5;
  *v5 = v0;
  v5[1] = sub_25F223708;
  v6 = *(v0 + 160);
  v7 = *(v0 + 112);
  v8 = *(v0 + 88);

  return sub_25F2DB194(v6, v7, WitnessTable, v8, &unk_25F30DDA8, v4);
}

uint64_t sub_25F223708()
{
  v2 = *v1;
  *(*v1 + 192) = v0;

  if (v0)
  {
    v3 = *(v2 + 112);
    v4 = sub_25F2238F4;
  }

  else
  {
    v5 = *(v2 + 112);

    v4 = sub_25F223830;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F223830()
{
  v2 = v0[19];
  v1 = v0[20];
  v3 = v0[18];
  (*(*(v0[15] - 8) + 16))(v0[10], v1 + *(v3 + 52));
  (*(v2 + 8))(v1, v3);

  v4 = v0[1];

  return v4();
}

uint64_t sub_25F2238F4()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F223964(uint64_t a1, uint64_t *a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t *a6)
{
  v6[12] = a5;
  v6[13] = a6;
  v6[10] = a3;
  v6[11] = a4;
  v6[9] = a1;
  v9 = *a6;
  v6[14] = *a6;
  v10 = *(v9 + 88);
  v6[15] = v10;
  v6[16] = *(v10 - 8);
  v11 = swift_task_alloc();
  v12 = *a2;
  v6[17] = v11;
  v6[18] = v12;

  return MEMORY[0x2822009F8](sub_25F223A70, a6, 0);
}

uint64_t sub_25F223A70()
{
  v2 = v0[14];
  v1 = v0[15];
  v3 = v0[10];
  v4 = v0[11];
  v0[6] = v0[18];
  v0[7] = v3;
  v5 = swift_task_alloc();
  *v5 = v1;
  v6 = *(v2 + 104);
  v5[1] = v6;
  KeyPath = swift_getKeyPath();

  v8 = sub_25F1E6B9C();
  v0[2] = &type metadata for Identifier;
  v0[3] = v1;
  v0[4] = v8;
  v0[5] = v6;
  type metadata accessor for ConcurrentInvalidatableCache.IsolatedResource(255, (v0 + 2));
  v9 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v12 = sub_25F1C1AC4(sub_25F224C20, KeyPath, v9, v1, MEMORY[0x277D84A98], WitnessTable, MEMORY[0x277D84AC0], v11);
  v0[19] = v12;

  v16 = (v4 + *v4);
  v13 = swift_task_alloc();
  v0[20] = v13;
  *v13 = v0;
  v13[1] = sub_25F223C6C;
  v14 = v0[17];

  return (v16)(v14, v0 + 6, v12);
}

uint64_t sub_25F223C6C()
{
  v2 = *v1;
  *(*v1 + 168) = v0;

  if (v0)
  {
    v3 = *(v2 + 104);
    v4 = sub_25F223E38;
  }

  else
  {
    v5 = *(v2 + 104);

    v4 = sub_25F223D94;
    v3 = v5;
  }

  return MEMORY[0x2822009F8](v4, v3, 0);
}

uint64_t sub_25F223D94()
{
  v1 = v0[17];
  v2 = v0[15];
  v3 = v0[16];
  v4 = v0[9];
  v0[8] = v0[18];
  sub_25F2219E8(v1, (v0 + 8), v4);
  (*(v3 + 8))(v1, v2);

  v5 = v0[1];

  return v5();
}

uint64_t sub_25F223E38()
{

  v1 = *(v0 + 8);

  return v1();
}

uint64_t sub_25F223EA8(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  v8 = v3[2];
  v9 = v3[3];
  v10 = v3[4];
  v11 = swift_task_alloc();
  *(v4 + 16) = v11;
  *v11 = v4;
  v11[1] = sub_25F1B51E0;

  return sub_25F223964(a1, a2, a3, v8, v9, v10);
}

uint64_t sub_25F223F74(uint64_t a1)
{
  v5 = &unk_25F30DE58;
  v6 = MEMORY[0x277D83428] + 64;
  v1 = *(a1 + 96);
  v4[0] = *(a1 + 80);
  v4[1] = v1;
  type metadata accessor for ConcurrentInvalidatableCache.InvalidationEvent(255, v4);
  result = sub_25F3054DC();
  if (v3 <= 0x3F)
  {
    v7 = *(result - 8) + 64;
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t dispatch thunk of ConcurrentInvalidatableCache.resource(for:create:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v12 = (*(*v4 + 144) + **(*v4 + 144));
  v10 = swift_task_alloc();
  *(v5 + 16) = v10;
  *v10 = v5;
  v10[1] = sub_25F1B51E0;

  return v12(a1, a2, a3, a4);
}

uint64_t dispatch thunk of ConcurrentInvalidatableCache.snapshot.getter()
{
  v4 = (*(*v0 + 152) + **(*v0 + 152));
  v2 = swift_task_alloc();
  *(v1 + 16) = v2;
  *v2 = v1;
  v2[1] = sub_25F1EA6F4;

  return v4();
}

uint64_t sub_25F2242E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F224334(uint64_t a1)
{
  result = type metadata accessor for IsolatedInvalidationHandle();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F2243BC(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  v6 = *(v4 + 80);
  if (v5 <= 0x7FFFFFFF)
  {
    v7 = 0x7FFFFFFF;
  }

  else
  {
    v7 = *(v4 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v8 = a2 - v7;
  if (a2 <= v7)
  {
    goto LABEL_26;
  }

  v9 = ((v6 + 8) & ~v6) + *(*(*(a3 + 24) - 8) + 64);
  v10 = 8 * v9;
  if (v9 <= 3)
  {
    v13 = ((v8 + ~(-1 << v10)) >> v10) + 1;
    if (HIWORD(v13))
    {
      v11 = *(a1 + v9);
      if (!v11)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 > 0xFF)
    {
      v11 = *(a1 + v9);
      if (!*(a1 + v9))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v13 < 2)
    {
LABEL_26:
      if ((v5 & 0x80000000) != 0)
      {
        return (*(v4 + 48))((a1 + v6 + 8) & ~v6);
      }

      v15 = *a1;
      if (*a1 >= 0xFFFFFFFFuLL)
      {
        LODWORD(v15) = -1;
      }

      return (v15 + 1);
    }
  }

  v11 = *(a1 + v9);
  if (!*(a1 + v9))
  {
    goto LABEL_26;
  }

LABEL_15:
  v14 = (v11 - 1) << v10;
  if (v9 > 3)
  {
    v14 = 0;
  }

  if (v9)
  {
    if (v9 > 3)
    {
      LODWORD(v9) = 4;
    }

    if (v9 > 2)
    {
      if (v9 == 3)
      {
        LODWORD(v9) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v9) = *a1;
      }
    }

    else if (v9 == 1)
    {
      LODWORD(v9) = *a1;
    }

    else
    {
      LODWORD(v9) = *a1;
    }
  }

  return v7 + (v9 | v14) + 1;
}

void sub_25F224540(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 24) - 8);
  v7 = *(v6 + 84);
  if (v7 <= 0x7FFFFFFF)
  {
    v8 = 0x7FFFFFFF;
  }

  else
  {
    v8 = *(v6 + 84);
  }

  v9 = *(v6 + 80);
  v10 = ((v9 + 8) & ~v9) + *(*(*(a4 + 24) - 8) + 64);
  v11 = a3 >= v8;
  v12 = a3 - v8;
  if (v12 != 0 && v11)
  {
    if (v10 <= 3)
    {
      v16 = ((v12 + ~(-1 << (8 * v10))) >> (8 * v10)) + 1;
      if (HIWORD(v16))
      {
        v13 = 4;
      }

      else
      {
        if (v16 < 0x100)
        {
          v17 = 1;
        }

        else
        {
          v17 = 2;
        }

        if (v16 >= 2)
        {
          v13 = v17;
        }

        else
        {
          v13 = 0;
        }
      }
    }

    else
    {
      v13 = 1;
    }
  }

  else
  {
    v13 = 0;
  }

  if (v8 < a2)
  {
    v14 = ~v8 + a2;
    if (v10 < 4)
    {
      v15 = (v14 >> (8 * v10)) + 1;
      if (v10)
      {
        v18 = v14 & ~(-1 << (8 * v10));
        bzero(a1, v10);
        if (v10 != 3)
        {
          if (v10 == 2)
          {
            *a1 = v18;
            if (v13 > 1)
            {
LABEL_47:
              if (v13 == 2)
              {
                *&a1[v10] = v15;
              }

              else
              {
                *&a1[v10] = v15;
              }

              return;
            }
          }

          else
          {
            *a1 = v14;
            if (v13 > 1)
            {
              goto LABEL_47;
            }
          }

          goto LABEL_44;
        }

        *a1 = v18;
        a1[2] = BYTE2(v18);
      }

      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

    else
    {
      bzero(a1, v10);
      *a1 = v14;
      v15 = 1;
      if (v13 > 1)
      {
        goto LABEL_47;
      }
    }

LABEL_44:
    if (v13)
    {
      a1[v10] = v15;
    }

    return;
  }

  if (v13 > 1)
  {
    if (v13 != 2)
    {
      *&a1[v10] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_31;
    }

    *&a1[v10] = 0;
  }

  else if (v13)
  {
    a1[v10] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return;
  }

LABEL_31:
  if ((v7 & 0x80000000) != 0)
  {
    v20 = *(v6 + 56);
    v21 = &a1[v9 + 8] & ~v9;

    v20(v21);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v19 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v19 = a2 - 1;
    }

    *a1 = v19;
  }
}

void sub_25F224790(uint64_t a1)
{
  swift_getTupleTypeMetadata2();
  if (v1 <= 0x3F)
  {
    sub_25F224B78();
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

uint64_t sub_25F224818(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v5 = ((*(*(*(a3 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v6 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8) - 8) + 64);
  if (v6 <= v5)
  {
    v7 = v5;
  }

  else
  {
    v7 = v6;
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_26;
  }

  v8 = v7 + 1;
  v9 = 8 * (v7 + 1);
  if ((v7 + 1) <= 3)
  {
    v12 = ((a2 + ~(-1 << v9) - 254) >> v9) + 1;
    if (HIWORD(v12))
    {
      v10 = *(a1 + v8);
      if (!v10)
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 > 0xFF)
    {
      v10 = *(a1 + v8);
      if (!*(a1 + v8))
      {
        goto LABEL_26;
      }

      goto LABEL_15;
    }

    if (v12 < 2)
    {
LABEL_26:
      v14 = *(a1 + v7);
      if (v14 >= 2)
      {
        return (v14 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v10 = *(a1 + v8);
  if (!*(a1 + v8))
  {
    goto LABEL_26;
  }

LABEL_15:
  v13 = (v10 - 1) << v9;
  if (v8 > 3)
  {
    v13 = 0;
  }

  if (v8)
  {
    if (v8 > 3)
    {
      LODWORD(v8) = 4;
    }

    if (v8 > 2)
    {
      if (v8 == 3)
      {
        LODWORD(v8) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v8) = *a1;
      }
    }

    else if (v8 == 1)
    {
      LODWORD(v8) = *a1;
    }

    else
    {
      LODWORD(v8) = *a1;
    }
  }

  return (v8 | v13) + 255;
}

void sub_25F224988(_BYTE *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v7 = ((*(*(*(a4 + 16) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v8 = *(*(__swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD552A0, &qword_25F30DEF8) - 8) + 64);
  if (v8 <= v7)
  {
    v8 = v7;
  }

  v9 = v8 + 1;
  if (a3 < 0xFF)
  {
    v10 = 0;
  }

  else if (v9 <= 3)
  {
    v13 = ((a3 + ~(-1 << (8 * v9)) - 254) >> (8 * v9)) + 1;
    if (HIWORD(v13))
    {
      v10 = 4;
    }

    else
    {
      if (v13 < 0x100)
      {
        v14 = 1;
      }

      else
      {
        v14 = 2;
      }

      if (v13 >= 2)
      {
        v10 = v14;
      }

      else
      {
        v10 = 0;
      }
    }
  }

  else
  {
    v10 = 1;
  }

  if (a2 > 0xFE)
  {
    v11 = a2 - 255;
    if (v9 >= 4)
    {
      bzero(a1, v8 + 1);
      *a1 = v11;
      v12 = 1;
      if (v10 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v12 = (v11 >> (8 * v9)) + 1;
    if (v8 != -1)
    {
      v15 = v11 & ~(-1 << (8 * v9));
      bzero(a1, v9);
      if (v9 != 3)
      {
        if (v9 == 2)
        {
          *a1 = v15;
          if (v10 > 1)
          {
LABEL_39:
            if (v10 == 2)
            {
              *&a1[v9] = v12;
            }

            else
            {
              *&a1[v9] = v12;
            }

            return;
          }
        }

        else
        {
          *a1 = v11;
          if (v10 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v10)
        {
          a1[v9] = v12;
        }

        return;
      }

      *a1 = v15;
      a1[2] = BYTE2(v15);
    }

    if (v10 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v10 <= 1)
  {
    if (v10)
    {
      a1[v9] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v8] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v10 == 2)
  {
    *&a1[v9] = 0;
    goto LABEL_24;
  }

  *&a1[v9] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

void sub_25F224B78()
{
  if (!qword_27FD55328[0])
  {
    v0 = sub_25F30542C();
    if (!v1)
    {
      atomic_store(v0, qword_27FD55328);
    }
  }
}

uint64_t Sequence.concatenating<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v12 = *(a3 - 8);
  v13 = MEMORY[0x28223BE20](a1);
  v15 = &v21 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v17 = &v21 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v18 + 16))(v17, v19, a2);
  (*(v12 + 16))(v15, a1, a3);
  return sub_25F224DE4(v17, v15, a2, a3, a4, a5, a6);
}

uint64_t sub_25F224DE4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  (*(*(a3 - 8) + 32))(a7, a1);
  v15[0] = a3;
  v15[1] = a4;
  v15[2] = a5;
  v15[3] = a6;
  v13 = type metadata accessor for ConcatenateSequence(0, v15);
  return (*(*(a4 - 8) + 32))(a7 + *(v13 + 52), a2, a4);
}

uint64_t ConcatenateSequence.underestimatedCount.getter(void *a1)
{
  v1 = sub_25F3050EC();
  v2 = sub_25F3050EC();
  v3 = __OFADD__(v1, v2);
  result = v1 + v2;
  if (v3)
  {
    __break(1u);
  }

  return result;
}

uint64_t ConcatenateSequence.makeIterator()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(a1 + 24);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x28223BE20](a1);
  v10 = &v16 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v8 + 16);
  MEMORY[0x28223BE20](v8);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v14 + 16))(v13, v3, v11);
  (*(v7 + 16))(v10, v3 + *(a1 + 52), v6);
  return sub_25F225080(v13, v10, v11, v6, *(a1 + 32), *(a1 + 40), a2);
}

uint64_t sub_25F225080@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v18[0] = a3;
  v18[1] = a4;
  v18[2] = a5;
  v18[3] = a6;
  v11 = type metadata accessor for ConcatenateSequence.Iterator(0, v18);
  *(a7 + v11[14]) = 0;
  v12 = v11[15];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 56))(a7 + v12, 1, 1, AssociatedTypeWitness);
  v14 = v11[16];
  v15 = swift_getAssociatedTypeWitness();
  (*(*(v15 - 8) + 56))(a7 + v14, 1, 1, v15);
  (*(*(a3 - 8) + 32))(a7, a1, a3);
  return (*(*(a4 - 8) + 32))(a7 + v11[13], a2, a4);
}

uint64_t sub_25F22525C(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t sub_25F2252C0(uint64_t a1)
{
  sub_25F30671C();
  sub_25F225234(v3, *v1);
  return sub_25F30676C();
}

uint64_t ConcatenateSequence.Iterator.next()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v55 = a2;
  v45 = *(*(a1 + 24) - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v44 = &v41 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v47 = *(v5 + 40);
  v48 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v8 = sub_25F305C1C();
  v49 = *(v8 - 8);
  v50 = v8;
  MEMORY[0x28223BE20](v8);
  v43 = &v41 - v9;
  v10 = *(a1 + 16);
  v54 = swift_getAssociatedTypeWitness();
  v11 = sub_25F305C1C();
  v52 = *(v11 - 8);
  v53 = v11;
  v12 = MEMORY[0x28223BE20](v11);
  v14 = &v41 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x28223BE20](v12);
  v46 = &v41 - v16;
  v17 = *(v10 - 8);
  MEMORY[0x28223BE20](v15);
  v19 = &v41 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = swift_getAssociatedTypeWitness();
  v21 = sub_25F305C1C();
  MEMORY[0x28223BE20](v21);
  v24 = &v41 - v23;
  v25 = *(a1 + 56);
  v56 = v3;
  v26 = *(v3 + v25);
  if (v26 > 1)
  {
    if (v26 != 2)
    {
      v36 = v55;
      v37 = *(*(v54 - 8) + 56);

      return v37(v36, 1, 1);
    }

    v29 = v25;
    v30 = *(a1 + 64);
    v31 = AssociatedTypeWitness;
    v32 = *(AssociatedTypeWitness - 8);
    if ((*(v32 + 48))(v56 + v30, 1, AssociatedTypeWitness))
    {
      (*(*(v54 - 8) + 56))(v14, 1, 1);
    }

    else
    {
      swift_getAssociatedConformanceWitness();
      sub_25F305CDC();
      if ((*(*(v54 - 8) + 48))(v14, 1) != 1)
      {
        return (*(v52 + 32))(v55, v14, v53);
      }
    }

    v38 = v56;
    (*(v49 + 8))(v56 + v30, v50);
    (*(v32 + 56))(v38 + v30, 1, 1, v31);
    *(v38 + v29) = 3;
    return (*(v52 + 32))(v55, v14, v53);
  }

  v41 = v22;
  v42 = v25;
  if (!v26)
  {
    v27 = v56;
    (*(v17 + 16))(v19, v56, v10);
    sub_25F3050DC();
    (*(*(v20 - 8) + 56))(v24, 0, 1, v20);
    (*(v41 + 40))(v27 + *(a1 + 60), v24, v21);
    *(v27 + v42) = 1;
    return ConcatenateSequence.Iterator.next()(a1, v55);
  }

  v33 = *(a1 + 60);
  v34 = *(v20 - 8);
  if ((*(v34 + 48))(v56 + v33, 1, v20))
  {
    v35 = v46;
    (*(*(v54 - 8) + 56))(v46, 1, 1);
LABEL_16:
    v39 = v56;
    (*(v41 + 8))(v56 + v33, v21);
    (*(v34 + 56))(v39 + v33, 1, 1, v20);
    (*(v45 + 16))(v44, v39 + *(a1 + 52), v48);
    v40 = v43;
    sub_25F3050DC();
    (*(*(AssociatedTypeWitness - 8) + 56))(v40, 0, 1);
    (*(v49 + 40))(v39 + *(a1 + 64), v40, v50);
    *(v39 + v42) = 2;
    ConcatenateSequence.Iterator.next()(a1, v55);
    return (*(v52 + 8))(v35, v53);
  }

  swift_getAssociatedConformanceWitness();
  v35 = v46;
  sub_25F305CDC();
  if ((*(*(v54 - 8) + 48))(v35, 1) == 1)
  {
    goto LABEL_16;
  }

  return (*(v52 + 32))(v55, v35, v53);
}

uint64_t sub_25F225B44@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  ConcatenateSequence.makeIterator()(a1, a2);
  v4 = *(*(a1 - 8) + 8);

  return v4(v2, a1);
}

uint64_t sub_25F225BA8(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F225C34(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 16) - 8);
  v5 = *(v4 + 84);
  v6 = *(a3 + 24);
  v7 = *(v6 - 8);
  v8 = *(v7 + 84);
  v9 = *(v7 + 80);
  if (v8 <= v5)
  {
    v10 = *(v4 + 84);
  }

  else
  {
    v10 = *(v7 + 84);
  }

  if (!a2)
  {
    return 0;
  }

  v11 = *(*(*(a3 + 16) - 8) + 64) + v9;
  v12 = a2 - v10;
  if (a2 <= v10)
  {
    goto LABEL_28;
  }

  v13 = (v11 & ~v9) + *(*(v6 - 8) + 64);
  v14 = 8 * v13;
  if (v13 <= 3)
  {
    v16 = ((v12 + ~(-1 << v14)) >> v14) + 1;
    if (HIWORD(v16))
    {
      v15 = *(a1 + v13);
      if (!v15)
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 > 0xFF)
    {
      v15 = *(a1 + v13);
      if (!*(a1 + v13))
      {
        goto LABEL_27;
      }

      goto LABEL_14;
    }

    if (v16 < 2)
    {
LABEL_27:
      if (v10)
      {
LABEL_28:
        if (v5 >= v8)
        {
          return (*(v4 + 48))();
        }

        else
        {
          return (*(v7 + 48))((a1 + v11) & ~v9, v8, v6);
        }
      }

      return 0;
    }
  }

  v15 = *(a1 + v13);
  if (!*(a1 + v13))
  {
    goto LABEL_27;
  }

LABEL_14:
  v17 = (v15 - 1) << v14;
  if (v13 > 3)
  {
    v17 = 0;
  }

  if (v13)
  {
    if (v13 <= 3)
    {
      v18 = v13;
    }

    else
    {
      v18 = 4;
    }

    if (v18 > 2)
    {
      if (v18 == 3)
      {
        v19 = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        v19 = *a1;
      }
    }

    else if (v18 == 1)
    {
      v19 = *a1;
    }

    else
    {
      v19 = *a1;
    }
  }

  else
  {
    v19 = 0;
  }

  return v10 + (v19 | v17) + 1;
}

char *sub_25F225E10(char *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 16) - 8);
  v6 = *(v5 + 84);
  v7 = *(a4 + 24);
  v8 = *(v7 - 8);
  v9 = *(v8 + 84);
  v10 = *(v5 + 64);
  v11 = *(v8 + 80);
  if (v9 <= v6)
  {
    v12 = *(v5 + 84);
  }

  else
  {
    v12 = *(v8 + 84);
  }

  v13 = ((v10 + v11) & ~v11) + *(*(v7 - 8) + 64);
  v14 = a3 >= v12;
  v15 = a3 - v12;
  if (v15 != 0 && v14)
  {
    if (v13 <= 3)
    {
      v20 = ((v15 + ~(-1 << (8 * v13))) >> (8 * v13)) + 1;
      if (HIWORD(v20))
      {
        v16 = 4;
      }

      else
      {
        if (v20 < 0x100)
        {
          v21 = 1;
        }

        else
        {
          v21 = 2;
        }

        if (v20 >= 2)
        {
          v16 = v21;
        }

        else
        {
          v16 = 0;
        }
      }
    }

    else
    {
      v16 = 1;
    }
  }

  else
  {
    v16 = 0;
  }

  if (v12 < a2)
  {
    v17 = ~v12 + a2;
    if (v13 < 4)
    {
      v19 = (v17 >> (8 * v13)) + 1;
      if (v13)
      {
        v22 = v17 & ~(-1 << (8 * v13));
        v23 = result;
        bzero(result, v13);
        result = v23;
        if (v13 != 3)
        {
          if (v13 == 2)
          {
            *v23 = v22;
            if (v16 > 1)
            {
LABEL_46:
              if (v16 == 2)
              {
                *&result[v13] = v19;
              }

              else
              {
                *&result[v13] = v19;
              }

              return result;
            }
          }

          else
          {
            *v23 = v17;
            if (v16 > 1)
            {
              goto LABEL_46;
            }
          }

          goto LABEL_43;
        }

        *v23 = v22;
        v23[2] = BYTE2(v22);
      }

      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

    else
    {
      v18 = result;
      bzero(result, v13);
      result = v18;
      *v18 = v17;
      v19 = 1;
      if (v16 > 1)
      {
        goto LABEL_46;
      }
    }

LABEL_43:
    if (v16)
    {
      result[v13] = v19;
    }

    return result;
  }

  if (v16 > 1)
  {
    if (v16 != 2)
    {
      *&result[v13] = 0;
      if (!a2)
      {
        return result;
      }

      goto LABEL_31;
    }

    *&result[v13] = 0;
  }

  else if (v16)
  {
    result[v13] = 0;
    if (!a2)
    {
      return result;
    }

    goto LABEL_31;
  }

  if (!a2)
  {
    return result;
  }

LABEL_31:
  if (v6 >= v9)
  {
    v26 = *(v5 + 56);

    return v26();
  }

  else
  {
    v24 = *(v8 + 56);
    v25 = &result[v10 + v11] & ~v11;

    return v24(v25);
  }
}

uint64_t sub_25F2260EC(void *a1)
{
  result = swift_checkMetadataState();
  if (v3 <= 0x3F)
  {
    v12 = 0;
    v4 = result;
    v17 = result;
    result = swift_checkMetadataState();
    if (v5 <= 0x3F)
    {
      v13 = 0;
      v18 = result;
      v7 = a1[4];
      v6 = a1[5];
      v11[0] = v4;
      v11[1] = result;
      v11[2] = v7;
      v11[3] = v6;
      result = type metadata accessor for ConcatenateSequence.Iterator.State(319, v11);
      if (v8 <= 0x3F)
      {
        v14 = 0;
        v19 = result;
        swift_getAssociatedTypeWitness();
        result = sub_25F305C1C();
        if (v9 <= 0x3F)
        {
          v15 = 0;
          v20 = result;
          swift_getAssociatedTypeWitness();
          result = sub_25F305C1C();
          if (v10 <= 0x3F)
          {
            v16 = 0;
            v21 = result;
            swift_cvw_initStructMetadataWithLayoutString();
            return 0;
          }
        }
      }
    }
  }

  return result;
}

uint64_t sub_25F226230(unsigned __int16 *a1, unsigned int a2, void *a3)
{
  v4 = a3[2];
  v5 = *(v4 - 8);
  v6 = a3[3];
  v7 = *(v6 - 8);
  v49 = *(v5 + 84);
  v47 = *(v7 + 84);
  if (v47 <= v49)
  {
    v8 = *(v5 + 84);
  }

  else
  {
    v8 = *(v7 + 84);
  }

  v48 = v4;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = *(v9 + 84);
  v11 = v10 - 1;
  if (!v10)
  {
    v11 = 0;
  }

  v46 = v11;
  if (v8 <= v11)
  {
    v8 = v11;
  }

  v12 = v6;
  v13 = *(v9 + 84);
  v14 = *(swift_getAssociatedTypeWitness() - 8);
  v15 = v14;
  v16 = *(v14 + 84);
  v17 = v16 - 1;
  if (!v16)
  {
    v17 = 0;
  }

  if (v8 <= v17)
  {
    v18 = v17;
  }

  else
  {
    v18 = v8;
  }

  if (v18 <= 0xFC)
  {
    v19 = 252;
  }

  else
  {
    v19 = v18;
  }

  if (v13)
  {
    v20 = *(v9 + 64);
  }

  else
  {
    v20 = *(v9 + 64) + 1;
  }

  v21 = *(v7 + 80);
  v22 = *(v7 + 64);
  v23 = *(v9 + 80);
  v24 = *(v14 + 80);
  v25 = *(v14 + 64);
  if (v16)
  {
    v26 = v25;
  }

  else
  {
    v26 = v25 + 1;
  }

  if (!a2)
  {
    return 0;
  }

  v27 = *(v5 + 64) + v21;
  v28 = v20 + v24;
  v29 = a1;
  if (a2 <= v19)
  {
    goto LABEL_45;
  }

  v30 = v26 + ((v28 + ((v23 + v22 + (v27 & ~v21) + 1) & ~v23)) & ~v24);
  v31 = 8 * v30;
  if (v30 > 3)
  {
    goto LABEL_25;
  }

  v33 = ((a2 - v19 + ~(-1 << v31)) >> v31) + 1;
  if (HIWORD(v33))
  {
    v32 = *(a1 + v30);
    if (v32)
    {
      goto LABEL_32;
    }
  }

  else
  {
    if (v33 <= 0xFF)
    {
      if (v33 < 2)
      {
        goto LABEL_45;
      }

LABEL_25:
      v32 = *(a1 + v30);
      if (!*(a1 + v30))
      {
        goto LABEL_45;
      }

LABEL_32:
      v34 = (v32 - 1) << v31;
      if (v30 > 3)
      {
        v34 = 0;
      }

      if (v30)
      {
        if (v30 <= 3)
        {
          v35 = v30;
        }

        else
        {
          v35 = 4;
        }

        if (v35 > 2)
        {
          if (v35 == 3)
          {
            v36 = *a1 | (*(a1 + 2) << 16);
          }

          else
          {
            v36 = *a1;
          }
        }

        else if (v35 == 1)
        {
          v36 = *a1;
        }

        else
        {
          v36 = *a1;
        }
      }

      else
      {
        v36 = 0;
      }

      return v19 + (v36 | v34) + 1;
    }

    v32 = *(a1 + v30);
    if (*(a1 + v30))
    {
      goto LABEL_32;
    }
  }

LABEL_45:
  if (v49 == v19)
  {
    v37 = v48;
    v38 = *(v5 + 48);
    v39 = v49;

    return v38(v29, v39, v37);
  }

  v29 = ((a1 + v27) & ~v21);
  if (v47 == v19)
  {
    v38 = *(v7 + 48);
    v39 = v47;
    v37 = v12;

    return v38(v29, v39, v37);
  }

  v41 = v29 + v22;
  if (v18 <= 0xFC)
  {
    v42 = *v41;
    if (v42 >= 4)
    {
      return v42 - 3;
    }

    else
    {
      return 0;
    }
  }

  v43 = &v41[v23 + 1] & ~v23;
  if (v46 == v19)
  {
    if (v13 < 2)
    {
      return 0;
    }

    v44 = (*(v9 + 48))(v43, v13, AssociatedTypeWitness);
  }

  else
  {
    v44 = (*(v15 + 48))((v28 + v43) & ~v24);
  }

  if (v44 >= 2)
  {
    return v44 - 1;
  }

  else
  {
    return 0;
  }
}

void sub_25F226698(_BYTE *a1, unsigned int a2, unsigned int a3, void *a4)
{
  v4 = *(a4[2] - 8);
  v42 = v4;
  v5 = *(a4[3] - 8);
  v43 = *(v4 + 84);
  v41 = *(v5 + 84);
  if (v41 <= v43)
  {
    v6 = *(v4 + 84);
  }

  else
  {
    v6 = *(v5 + 84);
  }

  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  v8 = *(v7 + 84);
  v9 = v8 - 1;
  if (!v8)
  {
    v9 = 0;
  }

  v40 = v9;
  if (v6 <= v9)
  {
    v6 = v9;
  }

  v10 = 0;
  v11 = *(swift_getAssociatedTypeWitness() - 8);
  v12 = v11;
  v13 = *(v11 + 84);
  v14 = *(v4 + 64);
  v15 = v13 - 1;
  if (!v13)
  {
    v15 = 0;
  }

  if (v6 > v15)
  {
    v15 = v6;
  }

  v16 = *(v5 + 80);
  v17 = *(v5 + 64);
  v18 = *(v7 + 80);
  v19 = *(v11 + 80);
  v20 = *(v11 + 64);
  if (v15 <= 0xFC)
  {
    v21 = 252;
  }

  else
  {
    v21 = v15;
  }

  if (v8)
  {
    v22 = *(v7 + 64);
  }

  else
  {
    v22 = *(v7 + 64) + 1;
  }

  v23 = v14 + v16;
  v24 = v22 + v19;
  if (v13)
  {
    v25 = v20;
  }

  else
  {
    v25 = v20 + 1;
  }

  v26 = ((v24 + ((v18 + v17 + ((v14 + v16) & ~v16) + 1) & ~v18)) & ~v19) + v25;
  if (a3 > v21)
  {
    if (v26 <= 3)
    {
      v27 = ((a3 - v21 + ~(-1 << (8 * v26))) >> (8 * v26)) + 1;
      if (HIWORD(v27))
      {
        v10 = 4;
      }

      else
      {
        if (v27 < 0x100)
        {
          v28 = 1;
        }

        else
        {
          v28 = 2;
        }

        if (v27 >= 2)
        {
          v10 = v28;
        }

        else
        {
          v10 = 0;
        }
      }
    }

    else
    {
      v10 = 1;
    }
  }

  if (v21 < a2)
  {
    v29 = ~v21 + a2;
    if (v26 < 4)
    {
      v30 = (v29 >> (8 * v26)) + 1;
      if (v26)
      {
        v32 = v29 & ~(-1 << (8 * v26));
        bzero(a1, v26);
        if (v26 != 3)
        {
          if (v26 == 2)
          {
            *a1 = v32;
            if (v10 > 1)
            {
LABEL_64:
              if (v10 == 2)
              {
                *&a1[v26] = v30;
              }

              else
              {
                *&a1[v26] = v30;
              }

              return;
            }
          }

          else
          {
            *a1 = v29;
            if (v10 > 1)
            {
              goto LABEL_64;
            }
          }

          goto LABEL_61;
        }

        *a1 = v32;
        a1[2] = BYTE2(v32);
      }

      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

    else
    {
      bzero(a1, v26);
      *a1 = v29;
      v30 = 1;
      if (v10 > 1)
      {
        goto LABEL_64;
      }
    }

LABEL_61:
    if (v10)
    {
      a1[v26] = v30;
    }

    return;
  }

  v31 = a1;
  if (v10 > 1)
  {
    if (v10 != 2)
    {
      *&a1[v26] = 0;
      if (!a2)
      {
        return;
      }

      goto LABEL_48;
    }

    *&a1[v26] = 0;
  }

  else if (v10)
  {
    a1[v26] = 0;
    if (!a2)
    {
      return;
    }

    goto LABEL_48;
  }

  if (!a2)
  {
    return;
  }

LABEL_48:
  if (v43 == v21)
  {
    v33 = *(v42 + 56);
LABEL_52:

    v33(v31);
    return;
  }

  v31 = (&a1[v23] & ~v16);
  if (v41 == v21)
  {
    v33 = *(v5 + 56);
    goto LABEL_52;
  }

  v34 = &v31[v17];
  if (v15 > 0xFC)
  {
    v35 = &v34[v18 + 1] & ~v18;
    if (v40 == v21)
    {
      if (v8 >= 2)
      {
        v36 = *(v7 + 56);

        v36(v35, a2 + 1, v8, AssociatedTypeWitness);
      }
    }

    else
    {
      v37 = *(v12 + 56);
      v38 = (v24 + v35) & ~v19;

      v37(v38, a2 + 1);
    }
  }

  else
  {
    *v34 = a2 + 3;
  }
}

uint64_t sub_25F226BB8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFD)
  {
    goto LABEL_17;
  }

  if (a2 + 3 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 3) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 3;
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

      return (*a1 | (v4 << 8)) - 3;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 3;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 4;
  v8 = v6 - 4;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_25F226C48(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 3 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 3) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFD)
  {
    v4 = 0;
  }

  if (a2 > 0xFC)
  {
    v5 = ((a2 - 253) >> 8) + 1;
    *result = a2 + 3;
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
    *result = a2 + 3;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F226D14@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v5 = &v8 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v5);
  if (!swift_getEnumCaseMultiPayload())
  {
    return (*(*(*(a1 + 16) - 8) + 32))(a2, v5);
  }

  result = sub_25F30658C();
  __break(1u);
  return result;
}

uint64_t sub_25F226E20@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = sub_25F30678C();
  MEMORY[0x28223BE20](v4);
  sub_25F227FB8(a1, &v7 - v5);
  return sub_25F218B1C(v4, &v8, a2);
}

void PromiseProtocol.cancel<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  sub_25F30543C();
  sub_25F1B4F70();
  v6 = swift_allocError();
  sub_25F304A2C();
  v7 = v6;
  (*(a3 + 48))(v8, &v7, a2, a3);
}

uint64_t sub_25F226F8C(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 16))(v7, sub_25F22864C, v6, nullsub_2, 0, a3, a4);
}

uint64_t sub_25F2270A0(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a2;
  v7[5] = a3;
  return (*(a5 + 16))(v8, sub_25F228658, v7, sub_25F2281A0, 0, a4, a5) & 1;
}

uint64_t sub_25F227130(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F2271AC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25F2271AC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a4;
  v7[3] = a5;
  v7[4] = a2;
  v7[5] = a3;
  return (*(a5 + 16))(v8, sub_25F228678, v7, sub_25F22834C, 0, a4, a5) & 1;
}

uint64_t sub_25F227248(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F226F8C(a1, a2, a3, WitnessTable);
}

uint64_t PromiseProtocol.tryFulfill(callsite:makeResult:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return (*(a5 + 32))(v7, a2, a3, a4) & 1;
}

uint64_t PromiseProtocol.fulfill(callsite:makeResult:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v7[0] = *a1;
  v7[1] = v5;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  return (*(a5 + 40))(v7, a2, a3, a4) & 1;
}

uint64_t sub_25F2273EC(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[4] = a2;
  return (*(a4 + 32))(v8, a5, v7, a3, a4) & 1;
}

uint64_t PromiseProtocol.tryFulfill<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v5[2] = a2;
  v5[3] = a3;
  return (*(a3 + 32))(v6, sub_25F227680, v5, a2, a3) & 1;
}

uint64_t PromiseProtocol.tryFulfill<>(callsite:throwing:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 32))(v7, sub_25F22769C, v6, a3) & 1;
}

uint64_t sub_25F227544@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  v6 = sub_25F30678C();
  v7 = *(*(v6 - 8) + 16);

  return v7(a4, a1, v6);
}

uint64_t sub_25F2276D4(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v5 = a1[1];
  v8[0] = *a1;
  v8[1] = v5;
  v9[0] = a1[2];
  *(v9 + 9) = *(a1 + 41);
  v7[2] = a3;
  v7[4] = a2;
  return (*(a4 + 40))(v8, a5, v7, a3, a4) & 1;
}

uint64_t sub_25F227740@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  sub_25F30678C();

  return swift_storeEnumTagMultiPayload();
}

uint64_t PromiseProtocol.fulfill<>(callsite:)(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  v3 = a1[1];
  v6[0] = *a1;
  v6[1] = v3;
  v7[0] = a1[2];
  *(v7 + 9) = *(a1 + 41);
  v5[2] = a2;
  v5[3] = a3;
  return (*(a3 + 40))(v6, sub_25F228688, v5, a2, a3) & 1;
}

uint64_t sub_25F2278B8(uint64_t a1, uint64_t a2)
{
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();

  return static Result<>.success.getter();
}

uint64_t PromiseProtocol.fulfill<>(callsite:throwing:)(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a1[1];
  v7[0] = *a1;
  v7[1] = v4;
  v8[0] = a1[2];
  *(v8 + 9) = *(a1 + 41);
  v6[2] = a3;
  v6[3] = a4;
  v6[4] = a2;
  return (*(a4 + 40))(v7, sub_25F228684, v6, a3) & 1;
}

id sub_25F2279C4@<X0>(void *a1@<X0>, void *a4@<X8>)
{
  *a4 = a1;
  swift_getAssociatedTypeWitness();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(qword_27FD52B48, &qword_25F3084D0);
  sub_25F30678C();
  swift_storeEnumTagMultiPayload();

  return a1;
}

uint64_t sub_25F227AEC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_checkMetadataState();
    if (v3 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F227B68(unsigned __int16 *a1, unsigned int a2, uint64_t a3)
{
  v3 = *(*(*(a3 + 24) - 8) + 64);
  if (v3 <= *(*(*(a3 + 16) - 8) + 64))
  {
    v3 = *(*(*(a3 + 16) - 8) + 64);
  }

  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_25;
  }

  v4 = v3 + 1;
  v5 = 8 * (v3 + 1);
  if ((v3 + 1) <= 3)
  {
    v8 = ((a2 + ~(-1 << v5) - 253) >> v5) + 1;
    if (HIWORD(v8))
    {
      v6 = *(a1 + v4);
      if (!v6)
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 > 0xFF)
    {
      v6 = *(a1 + v4);
      if (!*(a1 + v4))
      {
        goto LABEL_25;
      }

      goto LABEL_14;
    }

    if (v8 < 2)
    {
LABEL_25:
      v10 = *(a1 + v3);
      if (v10 >= 3)
      {
        return (v10 ^ 0xFF) + 1;
      }

      else
      {
        return 0;
      }
    }
  }

  v6 = *(a1 + v4);
  if (!*(a1 + v4))
  {
    goto LABEL_25;
  }

LABEL_14:
  v9 = (v6 - 1) << v5;
  if (v4 > 3)
  {
    v9 = 0;
  }

  if (v4)
  {
    if (v4 > 3)
    {
      LODWORD(v4) = 4;
    }

    if (v4 > 2)
    {
      if (v4 == 3)
      {
        LODWORD(v4) = *a1 | (*(a1 + 2) << 16);
      }

      else
      {
        LODWORD(v4) = *a1;
      }
    }

    else if (v4 == 1)
    {
      LODWORD(v4) = *a1;
    }

    else
    {
      LODWORD(v4) = *a1;
    }
  }

  return (v4 | v9) + 254;
}

void sub_25F227C90(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(*(a4 + 16) - 8) + 64);
  if (*(*(*(a4 + 24) - 8) + 64) > v5)
  {
    v5 = *(*(*(a4 + 24) - 8) + 64);
  }

  v6 = v5 + 1;
  if (a3 < 0xFE)
  {
    v7 = 0;
  }

  else if (v6 <= 3)
  {
    v10 = ((a3 + ~(-1 << (8 * v6)) - 253) >> (8 * v6)) + 1;
    if (HIWORD(v10))
    {
      v7 = 4;
    }

    else
    {
      if (v10 < 0x100)
      {
        v11 = 1;
      }

      else
      {
        v11 = 2;
      }

      if (v10 >= 2)
      {
        v7 = v11;
      }

      else
      {
        v7 = 0;
      }
    }
  }

  else
  {
    v7 = 1;
  }

  if (a2 > 0xFD)
  {
    v8 = a2 - 254;
    if (v6 >= 4)
    {
      bzero(a1, v5 + 1);
      *a1 = v8;
      v9 = 1;
      if (v7 > 1)
      {
        goto LABEL_39;
      }

      goto LABEL_36;
    }

    v9 = (v8 >> (8 * v6)) + 1;
    if (v5 != -1)
    {
      v12 = v8 & ~(-1 << (8 * v6));
      bzero(a1, v6);
      if (v6 != 3)
      {
        if (v6 == 2)
        {
          *a1 = v12;
          if (v7 > 1)
          {
LABEL_39:
            if (v7 == 2)
            {
              *&a1[v6] = v9;
            }

            else
            {
              *&a1[v6] = v9;
            }

            return;
          }
        }

        else
        {
          *a1 = v8;
          if (v7 > 1)
          {
            goto LABEL_39;
          }
        }

LABEL_36:
        if (v7)
        {
          a1[v6] = v9;
        }

        return;
      }

      *a1 = v12;
      a1[2] = BYTE2(v12);
    }

    if (v7 > 1)
    {
      goto LABEL_39;
    }

    goto LABEL_36;
  }

  if (v7 <= 1)
  {
    if (v7)
    {
      a1[v6] = 0;
      if (!a2)
      {
        return;
      }

LABEL_25:
      a1[v5] = -a2;
      return;
    }

LABEL_24:
    if (!a2)
    {
      return;
    }

    goto LABEL_25;
  }

  if (v7 == 2)
  {
    *&a1[v6] = 0;
    goto LABEL_24;
  }

  *&a1[v6] = 0;
  if (a2)
  {
    goto LABEL_25;
  }
}

uint64_t sub_25F227E70@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v10 = sub_25F30678C();
  MEMORY[0x28223BE20](v10);
  v12 = &v16 - v11;
  (*(v13 + 16))(&v16 - v11, a1, v10);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v14 = a3;
  }

  else
  {
    v14 = a2;
  }

  (*(*(v14 - 8) + 32))(a5, v12);
  type metadata accessor for PromiseFulfillment(0, a2, a3, a4);
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F227FB8@<X0>(uint64_t a1@<X0>, char *a2@<X8>)
{
  v4 = MEMORY[0x28223BE20](a1);
  v6 = &v14 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = *(v4 + 24);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v4);
  v10 = &v14 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v11 + 16))(v6);
  if (swift_getEnumCaseMultiPayload())
  {
    v12 = *(v8 + 32);
    v12(v10, v6, v7);
    v12(a2, v10, v7);
  }

  else
  {
    (*(*(*(a1 + 16) - 8) + 32))(a2, v6, *(a1 + 16));
  }

  sub_25F30678C();
  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F2281D8@<X0>(void (*a1)(uint64_t)@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v9 = sub_25F30678C();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v15 - v12;
  a1(v11);
  sub_25F227E70(v13, AssociatedTypeWitness, v7, AssociatedConformanceWitness, a4);
  return (*(v10 + 8))(v13, v9);
}

uint64_t sub_25F22834C(uint64_t a1)
{
  v1 = *(a1 + 16);
  v8[0] = *a1;
  v8[1] = v1;
  v9[0] = *(a1 + 32);
  *(v9 + 9) = *(a1 + 41);
  v2 = *(a1 + 72);
  v3 = *(a1 + 88);
  v4 = *(a1 + 80);
  v10 = *(a1 + 64);
  v11 = v2;
  v12 = v4;
  v5 = sub_25F1D2054(v10, v2, v4);
  v6 = v3(v5);
  sub_25F1D07A0(v8, v6);

  return sub_25F1D2018(v10, v11, v12);
}

uint64_t sub_25F2283E4@<X0>(uint64_t a1@<X0>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, a1, AssociatedTypeWitness);
  v7 = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  type metadata accessor for PromiseFulfillment(0, v7, AssociatedTypeWitness, AssociatedConformanceWitness);

  return swift_storeEnumTagMultiPayload();
}

uint64_t sub_25F228564(_OWORD *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F2271AC(a1, a2, a3, a4, WitnessTable);
}

uint64_t sub_25F2285E0(_OWORD *a1, uint64_t a2, uint64_t a3)
{
  WitnessTable = swift_getWitnessTable();

  return sub_25F226F8C(a1, a2, a3, WitnessTable);
}

uint64_t sub_25F22868C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource(255, a3, a4, a5);
  swift_getTupleTypeMetadata2();
  v9 = sub_25F3052DC();
  sub_25F1CCBBC(v9, a3, v8, a5);

  return a1;
}

uint64_t sub_25F228730@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v50 = a3;
  v51 = *(*(a2 + 24) - 8);
  v6 = MEMORY[0x28223BE20](a1);
  v46 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = *(v8 + 16);
  v52 = *(v9 - 8);
  MEMORY[0x28223BE20](v6);
  v53 = &v44 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v11 + 32);
  v49 = v13;
  v14 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource(255, v9, v13, v12);
  v15 = sub_25F305C1C();
  v44 = *(v15 - 8);
  v45 = v15;
  v16 = MEMORY[0x28223BE20](v15);
  v47 = &v44 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x28223BE20](v16);
  v20 = &v44 - v19;
  v21 = *(v14 - 8);
  v22 = MEMORY[0x28223BE20](v18);
  v24 = &v44 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v26 = &v44 - v25;
  v48 = v12;
  sub_25F304B8C();
  if ((*(v21 + 48))(v20, 1, v14) == 1)
  {
    (*(v44 + 8))(v20, v45);
    v27 = v50;
    v28 = a1;
    (*v4)(a1);
    v29 = v51;
    v30 = v46;
    v31 = v27;
    v32 = v49;
    (*(v51 + 16))(v46, v31, v49);
    (*(v29 + 32))(v24, v30, v32);
    *&v24[*(type metadata accessor for CountedSharedResourceStore.Storage.CountedResource(0, v9, v32, v48) + 44)] = 1;
    (*(v52 + 16))(v53, v28, v9);
    v33 = v47;
    (*(v21 + 16))(v47, v24, v14);
    (*(v21 + 56))(v33, 0, 1, v14);
    sub_25F304B4C();
    sub_25F304B9C();
    return (*(v21 + 8))(v24, v14);
  }

  else
  {
    v45 = a1;
    v46 = v24;
    v35 = v52;
    v36 = v53;
    v37 = *(v21 + 32);
    result = v37(v26, v20, v14);
    v38 = *(v14 + 44);
    v39 = *&v26[v38];
    v40 = __OFADD__(v39, 1);
    v41 = v39 + 1;
    if (v40)
    {
      __break(1u);
    }

    else
    {
      *&v26[v38] = v41;
      (*(v35 + 16))(v36, v45, v9);
      v42 = v47;
      (*(v21 + 16))(v47, v26, v14);
      (*(v21 + 56))(v42, 0, 1, v14);
      sub_25F304B4C();
      sub_25F304B9C();
      v43 = v46;
      v37(v46, v26, v14);
      return (*(v51 + 32))(v50, v43, v49);
    }
  }

  return result;
}

uint64_t sub_25F228C48(uint64_t a1, uint64_t a2)
{
  v4 = *(a2 + 16);
  v23 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v24 = &v23 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for CountedSharedResourceStore.Storage.CountedResource(255, v4, *(v6 + 24), *(v6 + 32));
  v8 = sub_25F305C1C();
  v9 = *(v8 - 8);
  v10 = MEMORY[0x28223BE20](v8);
  v25 = &v23 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = MEMORY[0x28223BE20](v10);
  v14 = &v23 - v13;
  v15 = *(v7 - 8);
  MEMORY[0x28223BE20](v12);
  v17 = &v23 - v16;
  v26 = v2 + 16;
  sub_25F304B8C();
  if ((*(v15 + 48))(v14, 1, v7) == 1)
  {
    (*(v9 + 8))(v14, v8);
    v27[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/CountedSharedResourceStore.swift";
    v27[1] = 138;
    v28 = 2;
    *v29 = *v34;
    *&v29[3] = *&v34[3];
    v30 = xmmword_25F30E1A0;
    v31 = "release(key:)";
    v32 = 13;
    v33 = 2;
    return sub_25F213F98(v27);
  }

  else
  {
    (*(v15 + 32))(v17, v14, v7);
    v19 = *(v7 + 44);
    v20 = *&v17[v19];
    if (v20 < 2)
    {
      sub_25F304B4C();
      v22 = v25;
      sub_25F304A8C();
      (*(v9 + 8))(v22, v8);
    }

    else
    {
      *&v17[v19] = v20 - 1;
      (*(v23 + 16))(v24, a1, v4);
      v21 = v25;
      (*(v15 + 16))(v25, v17, v7);
      (*(v15 + 56))(v21, 0, 1, v7);
      sub_25F304B4C();
      sub_25F304B9C();
    }

    return (*(v15 + 8))(v17, v7);
  }
}

void *CountedSharedResourceStore.__allocating_init(resourceConstructor:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  v4[2] = sub_25F22868C(a1, a2, *(*v4 + 80), *(*v4 + 88), *(*v4 + 96));
  v4[3] = v5;
  v4[4] = v6;
  return v4;
}

void *CountedSharedResourceStore.init(resourceConstructor:)(uint64_t a1, uint64_t a2)
{
  v2[2] = sub_25F22868C(a1, a2, *(*v2 + 80), *(*v2 + 88), *(*v2 + 96));
  v2[3] = v3;
  v2[4] = v4;
  return v2;
}

uint64_t CountedSharedResourceStore.checkout(key:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  swift_beginAccess();
  v6 = type metadata accessor for CountedSharedResourceStore.Storage(0, v5[10], v5[11], v5[12]);
  sub_25F228730(a1, v6, a2);
  return swift_endAccess();
}

uint64_t CountedSharedResourceStore.release(key:)(uint64_t a1)
{
  v3 = *v1;
  swift_beginAccess();
  v4 = type metadata accessor for CountedSharedResourceStore.Storage(0, v3[10], v3[11], v3[12]);
  sub_25F228C48(a1, v4);
  return swift_endAccess();
}

uint64_t CountedSharedResourceStore.deinit()
{

  return v0;
}

uint64_t CountedSharedResourceStore.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

uint64_t sub_25F229378(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F2293CC(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

uint64_t sub_25F229444(_DWORD *a1, unsigned int a2, uint64_t a3)
{
  v4 = *(*(a3 + 24) - 8);
  v5 = *(v4 + 84);
  if (!a2)
  {
    return 0;
  }

  if (v5 >= a2)
  {
    return (*(v4 + 48))(a1);
  }

  v6 = ((*(*(*(a3 + 24) - 8) + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  v7 = a2 - v5;
  v8 = v6 & 0xFFFFFFF8;
  if ((v6 & 0xFFFFFFF8) != 0)
  {
    v9 = 2;
  }

  else
  {
    v9 = v7 + 1;
  }

  if (v9 >= 0x10000)
  {
    v10 = 4;
  }

  else
  {
    v10 = 2;
  }

  if (v9 < 0x100)
  {
    v10 = 1;
  }

  if (v9 >= 2)
  {
    v11 = v10;
  }

  else
  {
    v11 = 0;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }

    else
    {
      v12 = *(a1 + v6);
      if (!v12)
      {
        goto LABEL_24;
      }
    }
  }

  else if (!v11 || (v12 = *(a1 + v6)) == 0)
  {
LABEL_24:
    if (v5)
    {
      return (*(v4 + 48))(a1);
    }

    return 0;
  }

  v13 = v12 - 1;
  if (v8)
  {
    v13 = 0;
    LODWORD(v8) = *a1;
  }

  return v5 + (v8 | v13) + 1;
}

unsigned int *sub_25F229548(unsigned int *result, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v5 = *(*(a4 + 24) - 8);
  v6 = *(v5 + 84);
  v7 = ((*(v5 + 64) + 7) & 0xFFFFFFFFFFFFFFF8) + 8;
  if (v6 >= a3)
  {
    v11 = 0;
    v12 = a2 - v6;
    if (a2 <= v6)
    {
      goto LABEL_14;
    }
  }

  else
  {
    v8 = a3 - v6;
    if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
    {
      v9 = v8 + 1;
    }

    else
    {
      v9 = 2;
    }

    if (v9 >= 0x10000)
    {
      v10 = 4;
    }

    else
    {
      v10 = 2;
    }

    if (v9 < 0x100)
    {
      v10 = 1;
    }

    if (v9 >= 2)
    {
      v11 = v10;
    }

    else
    {
      v11 = 0;
    }

    v12 = a2 - v6;
    if (a2 <= v6)
    {
LABEL_14:
      if (v11 > 1)
      {
        if (v11 != 2)
        {
          *(result + v7) = 0;
          if (!a2)
          {
            return result;
          }

          goto LABEL_30;
        }

        *(result + v7) = 0;
      }

      else if (v11)
      {
        *(result + v7) = 0;
        if (!a2)
        {
          return result;
        }

        goto LABEL_30;
      }

      if (!a2)
      {
        return result;
      }

LABEL_30:
      v16 = *(v5 + 56);

      return v16();
    }
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) == 0xFFFFFFF8)
  {
    v13 = v12;
  }

  else
  {
    v13 = 1;
  }

  if (((*(v5 + 64) + 7) & 0xFFFFFFF8) != 0xFFFFFFF8)
  {
    v14 = ~v6 + a2;
    v15 = result;
    bzero(result, v7);
    result = v15;
    *v15 = v14;
  }

  if (v11 > 1)
  {
    if (v11 == 2)
    {
      *(result + v7) = v13;
    }

    else
    {
      *(result + v7) = v13;
    }
  }

  else if (v11)
  {
    *(result + v7) = v13;
  }

  return result;
}

uint64_t Future.unpleasantWait()@<X0>(uint64_t a1@<X8>, uint64_t a2@<X2>, uint64_t a3@<X3>)
{
  v18 = a1;
  v19 = *(*v3 + 80);
  v4 = type metadata accessor for FutureTermination(255, v19, a2, a3);
  v5 = sub_25F305C1C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v17 - v7;
  v9 = swift_allocBox();
  v11 = v10;
  v12 = *(v4 - 8);
  (*(v12 + 56))(v10, 1, 1, v4);
  v13 = dispatch_semaphore_create(0);
  v14 = swift_allocObject();
  v14[2] = v19;
  v14[3] = v9;
  v14[4] = v13;
  v19 = v9;

  v15 = v13;
  Future.observeFinish(_:)(sub_25F229A90, v14);

  sub_25F305B1C();
  swift_beginAccess();
  (*(v6 + 16))(v8, v11, v5);
  result = (*(v12 + 48))(v8, 1, v4);
  if (result == 1)
  {
    __break(1u);
  }

  else
  {

    (*(v12 + 32))(v18, v8, v4);
  }

  return result;
}

uint64_t sub_25F229918(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = type metadata accessor for FutureTermination(255, a4, a3, a4);
  v6 = sub_25F305C1C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v13 - v8;
  v10 = swift_projectBox();
  v11 = *(v5 - 8);
  (*(v11 + 16))(v9, a1, v5);
  (*(v11 + 56))(v9, 0, 1, v5);
  swift_beginAccess();
  (*(v7 + 40))(v10, v9, v6);
  return sub_25F305B2C();
}

uint64_t QueryManager.resolvers.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 16);

  os_unfair_lock_unlock((v1 + 32));

  return v2;
}

uint64_t sub_25F229B04@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 32));

  *a2 = v4;
  return result;
}

uint64_t sub_25F229B64(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);

  os_unfair_lock_lock((v2 + 32));
  sub_25F22C690((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
  sub_25F30482C();
}

uint64_t QueryManager.resolvers.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  os_unfair_lock_lock((v2 + 32));
  sub_25F229C64((v2 + 16));
  os_unfair_lock_unlock((v2 + 32));
  sub_25F30482C();
}

uint64_t (*QueryManager.resolvers.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 16);

  os_unfair_lock_unlock((v3 + 32));

  *a1 = v4;
  return sub_25F229CF8;
}

uint64_t sub_25F229CF8(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[3];
  if (a2)
  {

    os_unfair_lock_lock((v4 + 32));
    sub_25F22C690((v4 + 16));
    os_unfair_lock_unlock((v4 + 32));
    a1[1] = v3;
    sub_25F30482C();
  }

  else
  {
    os_unfair_lock_lock((v4 + 32));
    sub_25F22C690((v4 + 16));
    os_unfair_lock_unlock((v4 + 32));
    a1[1] = v3;
    sub_25F30482C();
  }
}

uint64_t QueryManager.delegateQueryManager.getter()
{
  v1 = *(v0 + 40);
  os_unfair_lock_lock((v1 + 32));
  v2 = *(v1 + 24);

  os_unfair_lock_unlock((v1 + 32));

  return v2;
}

uint64_t sub_25F229E2C@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  v3 = *(*a1 + 40);
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a2 = v4;
  return result;
}

uint64_t sub_25F229E8C(void *a1, uint64_t a2)
{
  v2 = *(*a2 + 40);

  os_unfair_lock_lock(v2 + 8);
  sub_25F22C6A8(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
  sub_25F30482C();
}

uint64_t QueryManager.delegateQueryManager.setter(uint64_t a1)
{
  v2 = *(v1 + 40);
  os_unfair_lock_lock(v2 + 8);
  sub_25F229F8C(&v2[4]);
  os_unfair_lock_unlock(v2 + 8);
  sub_25F30482C();
}

uint64_t (*QueryManager.delegateQueryManager.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 40);
  a1[2] = v1;
  a1[3] = v3;
  os_unfair_lock_lock((v3 + 32));
  v4 = *(v3 + 24);

  os_unfair_lock_unlock((v3 + 32));

  *a1 = v4;
  return sub_25F22A020;
}

uint64_t sub_25F22A020(uint64_t *a1, char a2)
{
  v3 = *a1;
  v4 = a1[3];
  if (a2)
  {

    os_unfair_lock_lock(v4 + 8);
    sub_25F22C6A8(&v4[4]);
    os_unfair_lock_unlock(v4 + 8);
    a1[1] = v3;
    sub_25F30482C();
  }

  else
  {
    os_unfair_lock_lock(v4 + 8);
    sub_25F22C6A8(&v4[4]);
    os_unfair_lock_unlock(v4 + 8);
    a1[1] = v3;
    sub_25F30482C();
  }
}

uint64_t QueryManager.__allocating_init(delegateManager:resolvers:)(uint64_t a1, uint64_t a2)
{
  v4 = swift_allocObject();
  QueryManager.init(delegateManager:resolvers:)(a1, a2);
  return v4;
}

uint64_t QueryManager.init(delegateManager:resolvers:)(uint64_t a1, uint64_t a2)
{
  v65 = a2;
  v84 = a1;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556B0, &qword_25F30E2B0);
  MEMORY[0x28223BE20](v2 - 8);
  v66 = &v59 - v3;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556B8, &qword_25F30E2B8);
  v5 = *(v4 - 8);
  v71 = v4;
  v72 = v5;
  MEMORY[0x28223BE20](v4);
  v67 = &v59 - v6;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556C0, &qword_25F30E2C0);
  v8 = *(v7 - 8);
  v75 = v7;
  v76 = v8;
  MEMORY[0x28223BE20](v7);
  v68 = &v59 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556C8, &qword_25F30E2C8);
  v11 = *(v10 - 8);
  v77 = v10;
  v78 = v11;
  MEMORY[0x28223BE20](v10);
  v69 = &v59 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556D0, &qword_25F30E2D0);
  v81 = *(v79 - 8);
  MEMORY[0x28223BE20](v79);
  v70 = &v59 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556D8, &qword_25F30E2D8);
  v15 = *(v14 - 8);
  v82 = v14;
  v83 = v15;
  MEMORY[0x28223BE20](v14);
  v74 = &v59 - v16;
  v73 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556E0, &qword_25F30E2E0);
  v80 = *(v73 - 8);
  MEMORY[0x28223BE20](v73);
  v85 = &v59 - v17;
  v63 = sub_25F305A9C();
  v18 = *(v63 - 8);
  MEMORY[0x28223BE20](v63);
  v20 = &v59 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = sub_25F30494C();
  MEMORY[0x28223BE20](v21 - 8);
  v22 = sub_25F305A4C();
  MEMORY[0x28223BE20](v22);
  v62 = sub_25F1F54F4();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556E8, &qword_25F30E2E8);
  v23 = swift_allocObject();
  *(v23 + 16) = xmmword_25F3077D0;
  sub_25F305A3C();
  v87 = v23;
  sub_25F22C350(&qword_27FD556F0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD556F8, &qword_25F30E2F0);
  sub_25F1F72CC(&qword_27FD55700, &qword_27FD556F8, &qword_25F30E2F0, MEMORY[0x277D83970]);
  sub_25F305E5C();
  sub_25F30492C();
  (*(v18 + 104))(v20, *MEMORY[0x277D85260], v63);
  v24 = sub_25F305ACC();
  v25 = v64;
  *(v64 + 16) = v24;
  *(v25 + 32) = 0;
  v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55708, &qword_25F30E2F8);
  swift_allocObject();
  *(v25 + 64) = sub_25F30481C();
  *(v25 + 72) = 0u;
  *(v25 + 88) = 0u;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55710, &qword_25F30E300);
  v26 = swift_allocObject();
  *(v26 + 32) = 0;
  v27 = v65;
  v28 = v84;
  *(v26 + 16) = v65;
  *(v26 + 24) = v28;
  *(v25 + 40) = v26;

  v29 = v27;

  v30 = sub_25F1B6130(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55718, &qword_25F30E308);
  v31 = swift_allocObject();
  *(v31 + 24) = 0;
  *(v31 + 16) = v30;
  *(v25 + 24) = v31;
  v87 = v29;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55720, &qword_25F30E310);
  swift_allocObject();
  *(v25 + 48) = sub_25F30483C();
  v87 = v28;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55728, &qword_25F30E318);
  swift_allocObject();

  v32 = sub_25F30483C();
  *(v25 + 56) = v32;
  v87 = v32;

  sub_25F3047FC();
  v33 = MEMORY[0x277CBCE48];
  sub_25F1F72CC(&qword_27FD55730, &qword_27FD55728, &qword_25F30E318, MEMORY[0x277CBCE48]);
  sub_25F1F72CC(&qword_27FD55738, &qword_27FD55708, &qword_25F30E2F8, MEMORY[0x277CBCE20]);
  sub_25F3048EC();

  v34 = *(v25 + 48);
  v86 = *(v25 + 16);
  v35 = v86;
  v87 = v34;
  v60 = sub_25F305A8C();
  v36 = *(v60 - 8);
  v61 = *(v36 + 56);
  v65 = v36 + 56;
  v37 = v66;
  v61(v66, 1, 1, v60);
  sub_25F1F72CC(&qword_27FD55740, &qword_27FD55720, &qword_25F30E310, v33);
  sub_25F22C350(&qword_27FD55748, sub_25F1F54F4, MEMORY[0x277D85228]);

  v38 = v35;
  v39 = v67;
  sub_25F3048AC();
  v40 = v37;
  sub_25F1AF698(v37, &qword_27FD556B0, &qword_25F30E2B0);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55750, &qword_25F30E320);
  sub_25F1F72CC(&qword_27FD55758, &qword_27FD556B8, &qword_25F30E2B8, MEMORY[0x277CBCB50]);
  v41 = v68;
  v42 = v71;
  sub_25F30487C();

  (*(v72 + 8))(v39, v42);
  v43 = sub_25F1F72CC(&qword_27FD55760, &qword_27FD556C0, &qword_25F30E2C0, MEMORY[0x277CBCC08]);
  v44 = MEMORY[0x277CBCC60];
  v45 = sub_25F1F72CC(&qword_27FD55768, &qword_27FD55750, &qword_25F30E320, MEMORY[0x277CBCC60]);
  v46 = v69;
  v47 = v75;
  MEMORY[0x25F8D6A80](v75, v43, v45);
  (*(v76 + 8))(v41, v47);
  v48 = sub_25F305AAC();
  v87 = v48;
  v61(v40, 1, 1, v60);
  sub_25F1F72CC(&qword_27FD55770, &qword_27FD556C8, &qword_25F30E2C8, MEMORY[0x277CBCBB0]);
  v49 = v70;
  v50 = v40;
  v51 = v77;
  sub_25F30489C();
  sub_25F1AF698(v50, &qword_27FD556B0, &qword_25F30E2B0);

  (*(v78 + 8))(v46, v51);
  sub_25F1F72CC(&qword_27FD55778, &qword_27FD556D0, &qword_25F30E2D0, MEMORY[0x277CBCD60]);
  sub_25F1F72CC(&qword_27FD55780, &qword_27FD556E0, &qword_25F30E2E0, MEMORY[0x277CBCCE0]);
  v53 = v73;
  v52 = v74;
  v54 = v85;
  v55 = v79;
  sub_25F30488C();
  (*(v81 + 8))(v49, v55);
  sub_25F1F72CC(&qword_27FD55788, &qword_27FD556D8, &qword_25F30E2D8, v44);
  sub_25F1F72CC(&qword_27FD55790, &qword_27FD55708, &qword_25F30E2F8, MEMORY[0x277CBCE18]);
  v56 = v82;
  v57 = sub_25F3048BC();

  (*(v83 + 8))(v52, v56);
  (*(v80 + 8))(v54, v53);
  *(v25 + 32) = v57;

  return v25;
}

uint64_t sub_25F22AE90@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  if (*a1)
  {
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55708, &qword_25F30E2F8);
    swift_allocObject();
    result = sub_25F30481C();
  }

  *a2 = result;
  return result;
}

uint64_t sub_25F22AEF0@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v21 = a2;
  v24 = a3;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557D0, &qword_25F30E440);
  v23 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v5 = &v20 - v4;
  v22 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557D8, &qword_25F30E448);
  v6 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v8 = &v20 - v7;
  v9 = *a1;
  v10 = MEMORY[0x277D84F90];
  v29 = MEMORY[0x277D84F90];
  v11 = *(v9 + 16);
  if (v11)
  {
    v12 = v9 + 32;
    do
    {
      sub_25F1BF03C(v12, v26);
      v13 = v27;
      v14 = v28;
      __swift_project_boxed_opaque_existential_1(v26, v27);
      v15 = (*(v14 + 16))(v13, v14);
      v16 = __swift_destroy_boxed_opaque_existential_1(v26);
      if (v15)
      {
        MEMORY[0x25F8D73F0](v16);
        if (*(v29 + 16) >= *(v29 + 24) >> 1)
        {
          sub_25F3052AC();
        }

        sub_25F30530C();
        v10 = v29;
      }

      v12 += 40;
      --v11;
    }

    while (v11);
  }

  v26[0] = v10;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557E0, &qword_25F30E450);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557E8, qword_25F30E458);
  sub_25F1F72CC(&qword_27FD557F0, &qword_27FD557E0, &qword_25F30E450, MEMORY[0x277CBCD90]);
  sub_25F1F72CC(&qword_27FD557F8, &qword_27FD557E8, qword_25F30E458, MEMORY[0x277D83970]);
  sub_25F3047EC();
  v26[0] = *(v21 + 48);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55720, &qword_25F30E310);
  sub_25F1F72CC(&qword_27FD55740, &qword_27FD55720, &qword_25F30E310, MEMORY[0x277CBCE48]);
  sub_25F30487C();

  sub_25F1F72CC(&qword_27FD55800, &qword_27FD557D8, &qword_25F30E448, MEMORY[0x277CBCD48]);
  sub_25F1F72CC(&qword_27FD55808, &qword_27FD557D0, &qword_25F30E440, MEMORY[0x277CBCC08]);
  v17 = v25;
  v18 = v22;
  sub_25F30488C();
  (*(v23 + 8))(v5, v17);
  return (*(v6 + 8))(v8, v18);
}

uint64_t QueryManager.allValues<A>(for:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v7 = *(v3 + 40);
  os_unfair_lock_lock((v7 + 32));
  v8 = *(v7 + 24);

  os_unfair_lock_unlock((v7 + 32));
  if (v8)
  {

    QueryManager.allValues<A>(for:)(a1, a2, a3);
  }

  else
  {
    swift_getAssociatedTypeWitness();
    v9 = sub_25F3052DC();
  }

  MEMORY[0x28223BE20](v9);

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD55798, &qword_25F30E328);
  swift_getAssociatedTypeWitness();
  sub_25F1F72CC(&qword_27FD557A0, &qword_27FD55798, &qword_25F30E328, MEMORY[0x277D83970]);
  sub_25F30511C();

  v10 = sub_25F3052BC();

  return v10;
}

uint64_t sub_25F22B504@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(&v14, v11, v12);
  QueryResolutions.value<A>(for:with:)(a2, a3, a4, a5, a6);
}

uint64_t QueryManager.firstValue<A>(for:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *&v27 = a1;
  v26 = a3;
  v5 = *(a2 - 8);
  v6 = *(v5 + 64);
  MEMORY[0x28223BE20](a1);
  v23 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v28 = v7;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v25 = sub_25F305C1C();
  v9 = *(v25 - 8);
  MEMORY[0x28223BE20](v25);
  v11 = &v22 - v10;
  *&v24 = v3;
  v12 = *(v3 + 40);
  os_unfair_lock_lock((v12 + 32));
  v14 = *(v12 + 16);
  v13 = *(v12 + 24);

  os_unfair_lock_unlock((v12 + 32));
  if (v13)
  {

    QueryManager.firstValue<A>(for:)(v27, a2, v11);

    v15 = *(AssociatedTypeWitness - 8);
    if ((*(v15 + 48))(v11, 1, AssociatedTypeWitness) != 1)
    {

      v16 = v26;
      (*(v15 + 32))(v26, v11, AssociatedTypeWitness);
      return (*(v15 + 56))(v16, 0, 1, AssociatedTypeWitness);
    }
  }

  else
  {
    (*(*(AssociatedTypeWitness - 8) + 56))(v11, 1, 1, AssociatedTypeWitness);
  }

  (*(v9 + 8))(v11, v25);
  *&v32 = v14;
  v18 = v23;
  (*(v5 + 16))(v23, v27, a2);
  v19 = (*(v5 + 80) + 32) & ~*(v5 + 80);
  v20 = swift_allocObject();
  v21 = v28;
  *(v20 + 16) = a2;
  *(v20 + 24) = v21;
  (*(v5 + 32))(v20 + v19, v18, a2);
  *(v20 + ((v6 + v19 + 7) & 0xFFFFFFFFFFFFFFF8)) = v24;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557A8, &qword_25F30E330);
  sub_25F1F72CC(&qword_27FD557B0, &qword_27FD557A8, &qword_25F30E330, MEMORY[0x277D840E0]);
  sub_25F30637C();

  v28 = v36;
  v27 = v37;
  v32 = v36;
  v33 = v37;
  v24 = v38;
  v34 = v38;
  v35 = v39;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27FD55798, &qword_25F30E328);
  sub_25F1F72CC(&qword_27FD557A0, &qword_27FD55798, &qword_25F30E328, MEMORY[0x277D83970]);
  sub_25F30617C();
  swift_getWitnessTable();
  sub_25F3062FC();
  swift_getWitnessTable();
  sub_25F30617C();
  v31 = sub_25F1F72CC(&qword_27FD557B8, &qword_27FD55798, &qword_25F30E328, MEMORY[0x277D83988]);
  WitnessTable = swift_getWitnessTable();
  v29 = swift_getWitnessTable();
  swift_getWitnessTable();
  sub_25F30583C();
}

uint64_t sub_25F22BB84@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  v11 = a1[3];
  v12 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v11);
  (*(v12 + 8))(&v14, v11, v12);
  QueryResolutions.value<A>(for:with:)(a2, a3, a4, a5, a6);
}

uint64_t QueryManager.cachedValue<A, B>(for:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  MEMORY[0x28223BE20](a1);
  v12 = v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v13 + 16);
  v26[1] = v15;
  v14(v12);
  sub_25F305EBC();
  v35 = *(v6 + 24);
  *&v29 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/QueryManager.swift";
  *(&v29 + 1) = 124;
  v30 = 2;
  v31 = xmmword_25F30E2A0;
  v32 = "cachedValue(for:)";
  v33 = 17;
  v34 = 2;
  v28[2] = a2;
  v28[3] = a3;
  v28[4] = a4;
  v28[5] = a5;
  v28[6] = v37;
  v28[7] = v6;
  v27[2] = a2;
  v27[3] = a3;
  v27[4] = a4;
  v27[5] = a5;
  v27[6] = sub_25F22C428;
  v27[7] = v28;

  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD557C0, &qword_25F30E338);
  type metadata accessor for Future(255, a3, v17, v18);
  type metadata accessor for Promise(255, a3, v19, v20);
  sub_25F305C1C();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v22 = sub_25F1F72CC(&qword_27FD557C8, &qword_27FD557C0, &qword_25F30E338, &protocol conformance descriptor for OSAllocatedUnfairLock<A>);
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v29, sub_25F22C438, v27, v16, TupleTypeMetadata2, v22);

  v23 = v36[0];
  if (v36[1])
  {
    v24 = *(a4 + 40);

    v24(v36, v6, a2, a4);
    v29 = 0uLL;
    Promise.track(future:on:)(v36[0], &v29);

    sub_25F2033DC(v29);
  }

  sub_25F1BF670(v37);
  return v23;
}

uint64_t sub_25F22BEEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7)
{
  v25 = 0;
  sub_25F22C144(a2, sub_25F22C5B4, v22);
  type metadata accessor for Future(0, a5, v13, v14);
  swift_dynamicCast();
  v15 = v24;
  if (v25)
  {
    v16 = *(a3 + 72);
    if (v16)
    {
      v17 = *(a3 + 80);

      v18 = sub_25F1D2078(v16, v17);
      v16(v18);
      sub_25F1AC3AC(v16, v17);
    }

    else
    {
    }

    sub_25F1BF614(a2, v22);
    v19 = swift_allocObject();
    *(v19 + 16) = a4;
    *(v19 + 24) = a5;
    *(v19 + 32) = a6;
    *(v19 + 40) = a7;
    *(v19 + 48) = a3;
    v20 = v22[1];
    *(v19 + 56) = v22[0];
    *(v19 + 72) = v20;
    *(v19 + 88) = v23;

    Future.observeFinish(_:)(sub_25F22C5D8, v19);
  }

  return v15;
}

uint64_t sub_25F22C084@<X0>(uint64_t a1@<X2>, uint64_t *a2@<X8>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X3>, uint64_t a6@<X4>)
{
  v11 = type metadata accessor for Future(0, a1, a1, a5);
  v14 = a4;
  v15 = a5;
  v16 = a6;
  v17 = a3;
  result = sub_25F1D8E58("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/QueryManager.swift", 124, 2, 126, 35, "cachedValue(for:)", 17, 2, sub_25F22C650, v13);
  a2[3] = v11;
  *a2 = result;
  return result;
}

_OWORD *sub_25F22C144@<X0>(uint64_t a1@<X0>, void *(*a2)(_OWORD *__return_ptr)@<X1>, _OWORD *a3@<X8>)
{
  v8 = *v3;
  if (*(v8 + 16) && (v9 = sub_25F21935C(a1), (v10 & 1) != 0))
  {
    sub_25F1B7118(*(v8 + 56) + 32 * v9, v13);
    return sub_25F1B707C(v13, a3);
  }

  else
  {
    result = a2(v14);
    if (!v4)
    {
      sub_25F1BF614(a1, v13);
      sub_25F1B7118(v14, v12);
      sub_25F24DD7C(v12, v13);
      return sub_25F1B707C(v14, a3);
    }
  }

  return result;
}

uint64_t sub_25F22C228(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_25F1E4A70(a2, v8);
  result = sub_25F1AF698(v8, &qword_27FD53DF8, &unk_25F30A470);
  v5 = *(a3 + 88);
  if (v5)
  {
    v6 = *(a3 + 96);

    v5(v7);
    return sub_25F1AC3AC(v5, v6);
  }

  return result;
}

uint64_t QueryManager.deinit()
{

  sub_25F1AC3AC(*(v0 + 72), *(v0 + 80));
  sub_25F1AC3AC(*(v0 + 88), *(v0 + 96));
  return v0;
}

uint64_t QueryManager.__deallocating_deinit()
{
  QueryManager.deinit();

  return MEMORY[0x2821FE8D8](v0, 104, 7);
}

uint64_t sub_25F22C350(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_25F22C438@<X0>(uint64_t *a1@<X8>)
{
  result = (*(v1 + 48))();
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_25F22C51C(uint64_t a1)
{
  v3 = *(v1 + 16);

  *(a1 + 8) = v3;
  return result;
}

uint64_t sub_25F22C568(uint64_t *a1)
{
  v3 = *(v1 + 16);

  *a1 = v3;
  return result;
}

void sub_25F22C5D8()
{
  v1 = *(*(v0 + 48) + 24);
  os_unfair_lock_lock(v1 + 6);
  sub_25F22C634(&v1[4]);
  os_unfair_lock_unlock(v1 + 6);
}

uint64_t sub_25F22C650(uint64_t a1)
{
  **(v1 + 40) = a1;
}

void *TimePeriod.init(start:end:)@<X0>(void *result@<X0>, uint64_t *a2@<X1>, void *a3@<X8>)
{
  v3 = *a2;
  *a3 = *result;
  a3[1] = v3;
  return result;
}

double TimePeriod.nanoseconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3;
}

double TimePeriod.milliseconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3 / 1000000.0;
}

double TimePeriod.seconds.getter(double a1, double a2, double a3)
{
  v4 = v3[1];
  v5 = v4 - *v3;
  if (v4 < *v3)
  {
    __break(1u);
    goto LABEL_5;
  }

  if (qword_27FD52790 != -1)
  {
LABEL_5:
    swift_once();
  }

  LODWORD(a3) = HIDWORD(qword_27FD55810);
  LODWORD(a2) = qword_27FD55810;
  return v5 * *&a2 / *&a3 / 1000000000.0;
}

double sub_25F22C890()
{
  v1[1] = *MEMORY[0x277D85DE8];
  v1[0] = 0;
  mach_timebase_info(v1);
  result = *v1;
  qword_27FD55810 = v1[0];
  return result;
}

uint64_t sub_25F22C948(uint64_t *a1, uint64_t a2)
{
  v3 = *a1;
  v4 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v3;
  *(v5 + 24) = v4;
  v6 = *(**(*a2 + 16) + 88);

  return v6(sub_25F20EF34, v5);
}

uint64_t (*DelayedInvocation.callback.modify(void *a1))(uint64_t *a1, char a2)
{
  v3 = *(v1 + 16);
  a1[2] = v3;
  *a1 = (*(*v3 + 80))();
  a1[1] = v4;
  return sub_25F22CA94;
}

uint64_t sub_25F22CA94(uint64_t *a1, char a2)
{
  v2 = a1[1];
  v3 = *a1;
  v4 = *(*a1[2] + 88);
  if ((a2 & 1) == 0)
  {
    return v4(*a1, v2);
  }

  v4(v3, v2);
}

uint64_t sub_25F22CB88(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t (*a6)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v8 = a6(a1, a2, a3, a4, a5);
  (*(*(a4 - 8) + 8))(a1, a4);
  return v8;
}

Swift::Void __swiftcall DelayedInvocation.schedule(delay:)(PreviewsFoundationOS::SchedulerInterval delay)
{
  v3 = *(v2 + 16);
  v4 = *v1;
  (*(*v3 + 104))(&v4);
}

uint64_t DelayedInvocation.__deallocating_deinit()
{

  return MEMORY[0x2821FE8D8](v0, 24, 7);
}

uint64_t sub_25F22CD50(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v15 = *(v4 + *(*v4 + 160));
  *&v9 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v9 + 1) = 129;
  v10 = 2;
  v11 = xmmword_25F30E4E0;
  v12 = "callback";
  v13 = 8;
  v14 = 2;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(255, *(v5 + 136), *(v5 + 144), a4);
  v6 = sub_25F30476C();
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding<>.peek(callsite:)(&v9, v6, WitnessTable);
  return v16;
}

uint64_t sub_25F22CE44(uint64_t a1, uint64_t a2)
{
  v5 = *v2;
  v14[2] = *(v2 + *(*v2 + 160));
  v6 = *(v5 + 136);
  v7 = *(v5 + 144);
  KeyPath = swift_getKeyPath();
  v9 = swift_allocObject();
  *(v9 + 16) = a1;
  *(v9 + 24) = a2;
  v14[0] = sub_25F22DFC8;
  v14[1] = v9;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(255, v6, v7, v10);
  v11 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncSetValue<A>(at:to:)(KeyPath, v14, v11, WitnessTable);
}

uint64_t sub_25F22CFAC(uint64_t *a1, uint64_t (**a2)())
{
  v4 = *a1;
  v3 = a1[1];
  v5 = swift_allocObject();
  *(v5 + 16) = v4;
  *(v5 + 24) = v3;

  *a2 = sub_25F20DB20;
  a2[1] = v5;
  return result;
}

uint64_t sub_25F22D01C(uint64_t *a1)
{
  v2 = v1;
  v4 = *v1;
  v5 = sub_25F30494C();
  v33 = *(v5 - 8);
  v34 = v5;
  MEMORY[0x28223BE20](v5);
  v32 = &v28 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = v4[18];
  v8 = v4[17];
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v35 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v28 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v14 = &v28 - v13;
  v15 = *a1;
  v45 = *(v2 + v4[20]);
  *&v39 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v39 + 1) = 129;
  v40 = 2;
  v41 = xmmword_25F30E4F0;
  v42 = "schedule(delay:)";
  v43 = 16;
  v44 = 2;
  v37 = v8;
  v38 = v7;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(255, v8, v7, v16);
  v17 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v39, sub_25F22DEFC, v36, v17, &type metadata for Identifier, WitnessTable);

  v30 = v46;
  v31 = *(*v2 + 152);
  (*(v7 + 24))(v8, v7);
  *&v39 = v15;
  v28 = AssociatedTypeWitness;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v20 = v14;
  (*(AssociatedConformanceWitness + 8))(&v39, AssociatedTypeWitness, AssociatedConformanceWitness);
  v21 = *(v35 + 8);
  v35 += 8;
  v29 = v21;
  v21(v12, AssociatedTypeWitness);
  v22 = v32;
  sub_25F30493C();
  v23 = swift_allocObject();
  swift_weakInit();
  v24 = swift_allocObject();
  v24[2] = v8;
  v24[3] = v7;
  v25 = v30;
  v24[4] = v23;
  v24[5] = v25;
  v26 = *(v7 + 32);

  v26(v20, v22, sub_25F22DF18, v24, v8, v7);

  (*(v33 + 8))(v22, v34);
  v29(v20, v28);
}

void sub_25F22D468(uint64_t a1@<X0>, void *a2@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v4 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v5 = *(v4 + 2);
  *(v4 + 2) = v5 + 1;
  os_unfair_lock_unlock(v4 + 6);
  *(a1 + 16) = v5;
  *(a1 + 24) = 0;
  *a2 = v5;
}

uint64_t sub_25F22D504(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v7 = a2;
    v8 = 0;
    sub_25F22D56C(&v7, v4, v5, v6);
  }

  return result;
}

uint64_t sub_25F22D56C(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v6 = *a1;
  v7 = *(a1 + 8);
  v26 = *(v4 + *(*v4 + 160));
  *&v20 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v20 + 1) = 129;
  v21 = 2;
  v22 = xmmword_25F30E500;
  v23 = "invoke(expectedSeed:)";
  v24 = 21;
  v25 = 2;
  v16 = *(v5 + 136);
  v17 = *(v5 + 144);
  v18 = v6;
  v19 = v7;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(255, v16, v17, a4);
  v8 = sub_25F30476C();

  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD55918, &qword_25F30E628);
  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v20, sub_25F22DEC8, &v15, v8, v9, WitnessTable);

  v12 = v27;
  if (v27)
  {
    v13 = v28;

    v12(v14);
    sub_25F1AC3AC(v12, v13);
    return sub_25F1AC3AC(v12, v13);
  }

  return result;
}

uint64_t *sub_25F22D6F4@<X0>(uint64_t *result@<X0>, uint64_t a2@<X1>, char a3@<W2>, uint64_t (**a4)()@<X8>)
{
  v5 = 0;
  if (result[3])
  {
    v6 = 0;
  }

  else
  {
    v6 = 0;
    if (a3 & 1 | (result[2] == a2))
    {
      v8 = *result;
      v7 = result[1];
      result[2] = 0;
      *(result + 24) = 1;
      v6 = swift_allocObject();
      *(v6 + 16) = v8;
      *(v6 + 24) = v7;

      v5 = sub_25F212298;
    }
  }

  *a4 = v5;
  a4[1] = v6;
  return result;
}

uint64_t sub_25F22D798(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = *v4;
  v18 = *(v4 + *(*v4 + 160));
  *&v12 = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/DelayedInvocation.swift";
  *(&v12 + 1) = 129;
  v13 = 2;
  v14 = xmmword_25F30E510;
  v15 = "cancel()";
  v16 = 8;
  v17 = 2;
  v10 = *(v5 + 136);
  v11 = *(v5 + 144);
  type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(255, v10, v11, a4);
  v6 = sub_25F30476C();

  WitnessTable = swift_getWitnessTable();
  SynchronousAccessProviding.syncWrite<A>(defaultCallsite:_:)(&v12, sub_25F22DEEC, &v9, v6, MEMORY[0x277D84F78] + 8, WitnessTable);
}

uint64_t sub_25F22D8CC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = 0;
  v6 = 1;
  return sub_25F22D56C(&v5, a2, a3, a4);
}

uint64_t sub_25F22D8FC()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));
}

uint64_t sub_25F22D990()
{
  (*(*(*(*v0 + 136) - 8) + 8))(v0 + *(*v0 + 152));

  return v0;
}

uint64_t sub_25F22DA1C()
{
  v0 = sub_25F22D990();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x2821FE8D8](v0, v1, v2);
}

uint64_t *sub_25F22DA70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = *v3;
  v7 = *(*v3 + 136);
  (*(*(v7 - 8) + 16))(v3 + *(*v3 + 152), a1, v7);
  v8 = *(v6 + 144);
  v13[0] = a2;
  v13[1] = a3;
  v13[2] = 0;
  v14 = 1;
  v10 = type metadata accessor for DelayedInvocation.DelayedInvocationBox.State(0, v7, v8, v9);
  v11 = sub_25F203E0C(v13, v10);

  *(v3 + *(*v3 + 160)) = v11;
  return v3;
}

uint64_t sub_25F22DBC4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  type metadata accessor for DelayedInvocation.DelayedInvocationBox(0, a4, a5, a4);
  *(v6 + 16) = sub_25F22DB70(a1, a2, a3);
  return v6;
}

uint64_t sub_25F22DC28(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v10 = swift_allocObject();
  type metadata accessor for DelayedInvocation.DelayedInvocationBox(0, a4, a5, v11);
  swift_allocObject();
  *(v10 + 16) = sub_25F22DA70(a1, a2, a3);
  return v10;
}

uint64_t sub_25F22DD30(uint64_t a1)
{
  result = swift_checkMetadataState();
  if (v2 <= 0x3F)
  {
    result = swift_initClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_25F22DDE8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_25F22DE24(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_25F22DE6C(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_25F22DEEC(uint64_t result)
{
  *(result + 16) = 0;
  *(result + 24) = 1;
  return result;
}

uint64_t sub_25F22DF24(uint64_t a1, int a2)
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

uint64_t sub_25F22DF44(uint64_t result, int a2, int a3)
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

uint64_t sub_25F22DF74(uint64_t a1)
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

uint64_t sub_25F22DF90(uint64_t result, int a2)
{
  if (a2)
  {
    *result = (a2 - 1);
    *(result + 8) = 1;
  }

  else
  {
    *(result + 8) = 0;
  }

  return result;
}

uint64_t Optional<A>.resolutions.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v6 = *(a1 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v6 + 16))(v8, v9, a1);
  v10 = *(a1 + 16);
  v11 = *(v10 - 8);
  if ((*(v11 + 48))(v8, 1, v10) == 1)
  {
    (*(v6 + 8))(v8, a1);
    v12 = sub_25F1B5A0C(MEMORY[0x277D84F90]);
  }

  else
  {
    (*(a2 + 8))(&v16, v10, a2);
    v12 = v16;
    (*(v11 + 8))(v8, v10);
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v12;
  v14 = inited + 32;
  static QueryResolutionsBuilder.buildBlock(_:)(inited, a3);
  swift_setDeallocating();
  return sub_25F1B5B28(v14);
}

uint64_t Weak<>.resolutions.getter@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  swift_beginAccess();
  v9[1] = swift_unknownObjectWeakLoadStrong();
  v4 = sub_25F305C1C();
  Optional<A>.resolutions.getter(v4, a1, v9);
  swift_unknownObjectRelease();
  v5 = v9[0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52BD8, &qword_25F307FE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_25F3077D0;
  *(inited + 32) = v5;
  v7 = inited + 32;
  static QueryResolutionsBuilder.buildBlock(_:)(inited, a2);
  swift_setDeallocating();
  return sub_25F1B5B28(v7);
}

void Identifier.init()(void *a1@<X8>)
{
  if (qword_27FD52798 != -1)
  {
    swift_once();
  }

  v2 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v3 = *(v2 + 2);
  *(v2 + 2) = v3 + 1;
  os_unfair_lock_unlock(v2 + 6);
  *a1 = v3;
}

uint64_t Identifier.init<A>(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v9 = *(AssociatedTypeWitness - 8);
  v10 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v12 = &v26 - v11;
  v13 = *(a2 - 8);
  MEMORY[0x28223BE20](v10);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v13 + 16))(v15, a1, a2);
  if (sub_25F3057EC())
  {
    v25 = *(v13 + 8);
    v25(a1, a2);
    result = (v25)(v15, a2);
    v21 = 0;
    v20 = 1;
    goto LABEL_8;
  }

  v27 = a1;
  v28 = a4;
  v16 = sub_25F305D6C();
  v26 = &v26;
  MEMORY[0x28223BE20](v16);
  *(&v26 - 4) = a2;
  *(&v26 - 3) = a3;
  *(&v26 - 2) = 10;
  swift_getAssociatedConformanceWitness();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559A8, &qword_25F30E710);
  sub_25F3050FC();
  (*(v9 + 8))(v12, AssociatedTypeWitness);
  if ((v31 & 1) == 0)
  {
    v22 = v30;
    v23 = v29;
    v24 = *(v13 + 8);
    v24(v27, a2);
    result = (v24)(v15, a2);
    v32 = v23;
    if ((v22 & 1) == 0)
    {
      goto LABEL_4;
    }

LABEL_6:
    v21 = 0;
    v20 = 1;
    goto LABEL_7;
  }

  v17 = sub_25F212A04();
  sub_25F22F41C(v15, 10, MEMORY[0x277D84D38], v17, &v32);
  v18 = *(v13 + 8);
  v18(v27, a2);
  result = (v18)(v15, a2);
  if (v33 == 1)
  {
    goto LABEL_6;
  }

LABEL_4:
  v20 = 0;
  v21 = v32;
LABEL_7:
  a4 = v28;
LABEL_8:
  *a4 = v21;
  *(a4 + 8) = v20;
  return result;
}

uint64_t sub_25F22E748@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  if (a1 == 0x696669746E656469 && a2 == 0xEA00000000007265)
  {

    v7 = 0;
  }

  else
  {
    v5 = sub_25F30659C();

    v7 = v5 ^ 1;
  }

  *a3 = v7 & 1;
  return result;
}

uint64_t sub_25F22E7D8(uint64_t a1)
{
  v2 = sub_25F22F628();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_25F22E814(uint64_t a1)
{
  v2 = sub_25F22F628();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t Identifier.encode(to:)(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559B0, &qword_25F30E718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t Identifier.hashValue.getter()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D8900](v1);
  return sub_25F30676C();
}

uint64_t Identifier.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559C0, &qword_25F30E720);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067AC();
  if (!v2)
  {
    v9 = sub_25F30644C();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_25F22EBAC(void *a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559B0, &qword_25F30E718);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v7 - v4;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_25F22F628();
  sub_25F3067BC();
  sub_25F30646C();
  return (*(v3 + 8))(v5, v2);
}

uint64_t sub_25F22ECE4()
{
  v0 = arc4random_uniform(0x2710u);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F0, &qword_25F30E968);
  result = swift_allocObject();
  *(result + 24) = 0;
  *(result + 16) = v0;
  off_27FD559A0 = result;
  return result;
}

uint64_t sub_25F22ED3C@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, int a4@<W3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  v58 = a4;
  v62 = a1;
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  MEMORY[0x28223BE20](TupleTypeMetadata2 - 8);
  v57 = v49 - v13;
  v14 = *(a6 + 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v16 = MEMORY[0x28223BE20](AssociatedTypeWitness);
  v17 = MEMORY[0x28223BE20](v16);
  v56 = v49 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v19 = MEMORY[0x28223BE20](v17);
  v60 = v49 - v20;
  v21 = MEMORY[0x28223BE20](v19);
  v23 = v49 - v22;
  MEMORY[0x28223BE20](v21);
  v26 = v49 - v25;
  if (!a2)
  {
    v48 = *(v24 + 56);

    return v48(a7, 1, 1, a5);
  }

  v63 = v24;
  v27 = a3 + 48;
  v28 = a3 + 55;
  v29 = a3 + 87;
  if (a3 <= 10)
  {
    v29 = 97;
  }

  v50 = v29;
  if (a3 <= 10)
  {
    v28 = 65;
  }

  v52 = v28;
  v67 = a3;
  if (a3 > 10)
  {
    v27 = 58;
  }

  v54 = v27;
  v30 = v26;
  sub_25F20FAB8();
  v61 = v30;
  v59 = v14;
  sub_25F305D7C();
  swift_getAssociatedConformanceWitness();
  sub_25F30661C();
  sub_25F30656C();
  v32 = v62;
  if (!v62)
  {
    v37 = *(v63 + 8);
    v45 = v61;
LABEL_27:
    (v37)(v45, a5, v31);
    (*(v63 + 32))(a7, v23, a5);
    return (*(v63 + 56))(a7, 0, 1, a5);
  }

  v51 = a7;
  v31 = v63;
  v33 = (v63 + 8);
  v34 = (v63 + 32);
  v49[1] = (v63 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v49[2] = a6;
  while (1)
  {
    v35 = *v32;
    if (v35 >= 0x30 && v35 < v54)
    {
      v62 = v32;
      v53 = a2;
      v64 = v35 - 48;
      sub_25F22F7FC();
      goto LABEL_19;
    }

    if (v35 >= 0x41 && v35 < v52)
    {
      v62 = v32;
      v53 = a2;
      v65 = v35 - 55;
      sub_25F22F7FC();
      goto LABEL_19;
    }

    if (v35 < 0x61 || v35 >= v50)
    {
      break;
    }

    v62 = v32;
    v53 = a2;
    v66 = v35 - 87;
    sub_25F22F7FC();
LABEL_19:
    sub_25F305D7C();
    v36 = v56;
    v55 = sub_25F30620C();
    v37 = *v33;
    (*v33)(v23, a5);
    v38 = *v34;
    v39 = v34;
    (*v34)(v23, v36, a5);
    v40 = v57;
    v41 = v60;
    if (v58)
    {
      v42 = sub_25F30621C();
    }

    else
    {
      v42 = sub_25F3061FC();
    }

    v43 = v42;
    v37(v41, a5);
    v37(v23, a5);
    v44 = v40;
    v34 = v39;
    v38(v23, v44, a5);
    if ((v55 | v43))
    {
      v37(v23, a5);
      v37(v61, a5);
      return (*(v63 + 56))(v51, 1, 1, a5);
    }

    v31 = v63;
    v32 = v62 + 1;
    a2 = v53 - 1;
    if (v53 == 1)
    {
      a7 = v51;
      v45 = v61;
      goto LABEL_27;
    }
  }

  v47 = *(v31 + 8);
  v47(v23, a5);
  v47(v61, a5);
  return (*(v63 + 56))(v51, 1, 1, a5);
}

unsigned __int8 *sub_25F22F32C@<X0>(unsigned __int8 *result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v7 = *result;
  if (v7 == 43)
  {
    v8 = a2-- < 1;
    if (v8)
    {
      goto LABEL_15;
    }

    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

LABEL_12:
    v9 = 0;
    return sub_25F22ED3C(result, a2, a3, v9, a4, a5, a6);
  }

  if (v7 != 45)
  {
    goto LABEL_12;
  }

  v8 = a2-- < 1;
  if (!v8)
  {
    if (result)
    {
      ++result;
    }

    else
    {
      result = 0;
    }

    v9 = 1;
    return sub_25F22ED3C(result, a2, a3, v9, a4, a5, a6);
  }

  __break(1u);
LABEL_15:
  __break(1u);
  return result;
}

unsigned __int8 *sub_25F22F3A0@<X0>(unsigned __int8 *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(v3 + 32);
  v8 = sub_25F212A04();
  return sub_25F22F32C(a1, a2, v7, MEMORY[0x277D84D38], v8, a3);
}

unsigned __int8 *sub_25F22F41C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X3>, uint64_t a6@<X5>, uint64_t a7@<X8>)
{
  MEMORY[0x28223BE20](a1);
  (*(v12 + 16))(v25 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0));
  result = sub_25F3050BC();
  v15 = result;
  v16 = v14;
  if ((v14 & 0x1000000000000000) != 0)
  {
    v15 = sub_25F2E14DC(result, v14);
    v21 = v20;

    v16 = v21;
    if ((v21 & 0x2000000000000000) == 0)
    {
LABEL_3:
      if ((v15 & 0x1000000000000000) != 0)
      {
        result = ((v16 & 0xFFFFFFFFFFFFFFFLL) + 32);
        v17 = v15 & 0xFFFFFFFFFFFFLL;
      }

      else
      {
        result = sub_25F30605C();
      }

      v18 = *result;
      if (v18 == 43)
      {
        v19 = v17-- < 1;
        if (v19)
        {
LABEL_29:
          __break(1u);
          goto LABEL_30;
        }

        if (result)
        {
          ++result;
        }

        else
        {
          result = 0;
        }
      }

      else if (v18 == 45)
      {
        v19 = v17-- < 1;
        if (!v19)
        {
          if (result)
          {
            ++result;
          }

          else
          {
            result = 0;
          }

          goto LABEL_20;
        }

        __break(1u);
LABEL_28:
        __break(1u);
        goto LABEL_29;
      }

      goto LABEL_24;
    }
  }

  else if ((v14 & 0x2000000000000000) == 0)
  {
    goto LABEL_3;
  }

  v17 = HIBYTE(v16) & 0xF;
  v25[0] = v15;
  v25[1] = v16 & 0xFFFFFFFFFFFFFFLL;
  if (v15 != 43)
  {
    if (v15 == 45)
    {
      if (v17)
      {
        --v17;
        result = v25 + 1;
LABEL_20:
        v22 = a7;
        v23 = a2;
        v24 = 1;
LABEL_25:
        sub_25F22ED3C(result, v17, v23, v24, a4, a6, v22);
      }

      goto LABEL_28;
    }

    result = v25;
LABEL_24:
    v22 = a7;
    v23 = a2;
    v24 = 0;
    goto LABEL_25;
  }

  if (v17)
  {
    --v17;
    result = v25 + 1;
    goto LABEL_24;
  }

LABEL_30:
  __break(1u);
  return result;
}

unint64_t sub_25F22F628()
{
  result = qword_27FD559B8;
  if (!qword_27FD559B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559B8);
  }

  return result;
}

unint64_t sub_25F22F680()
{
  result = qword_27FD559C8;
  if (!qword_27FD559C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559C8);
  }

  return result;
}

unint64_t sub_25F22F6F8()
{
  result = qword_27FD559D0;
  if (!qword_27FD559D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559D0);
  }

  return result;
}

unint64_t sub_25F22F750()
{
  result = qword_27FD559D8;
  if (!qword_27FD559D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559D8);
  }

  return result;
}

unint64_t sub_25F22F7A8()
{
  result = qword_27FD559E0;
  if (!qword_27FD559E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559E0);
  }

  return result;
}

unint64_t sub_25F22F7FC()
{
  result = qword_27FD559E8;
  if (!qword_27FD559E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD559E8);
  }

  return result;
}

uint64_t FutureSerialQueue.Priority.hashValue.getter(unsigned __int8 a1)
{
  sub_25F30671C();
  MEMORY[0x25F8D88E0](a1);
  return sub_25F30676C();
}

uint64_t _s20PreviewsFoundationOS20DiagnosticsCollectorC09SimulatorD9DeviceSetO9hashValueSivg_0()
{
  v1 = *v0;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  return sub_25F30676C();
}

uint64_t sub_25F22F924(uint64_t a1)
{
  v2 = *v1;
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v2);
  return sub_25F30676C();
}

unint64_t sub_25F22F978(uint64_t *a1, uint64_t a2)
{
  v3 = v2;
  v5 = *a1;
  v6 = a1[1];
  v7 = a1[2];
  v8 = *v2;
  if (*(v8 + 16) && (v9 = sub_25F2193A0(a2), (v10 & 1) != 0))
  {
    v11 = *(*(v8 + 56) + 8 * v9);
  }

  else
  {
    v11 = MEMORY[0x277D84F90];
  }

  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v11 = sub_25F2F084C(0, *(v11 + 2) + 1, 1, v11);
  }

  v13 = *(v11 + 2);
  v12 = *(v11 + 3);
  if (v13 >= v12 >> 1)
  {
    v11 = sub_25F2F084C((v12 > 1), v13 + 1, 1, v11);
  }

  *(v11 + 2) = v13 + 1;
  v14 = &v11[24 * v13];
  *(v14 + 4) = v5;
  *(v14 + 5) = v6;
  *(v14 + 6) = v7;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v3;
  result = sub_25F210B44(v11, a2, isUniquelyReferenced_nonNull_native);
  *v3 = v17;
  return result;
}

void sub_25F22FA9C(void *a1@<X8>)
{
  v3 = *v1;
  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v4 = sub_25F2193A0(0);
  if (v5)
  {
    v6 = *(*(v3 + 56) + 8 * v4);
    if (v6[2])
    {
      v7 = 0;
      goto LABEL_13;
    }
  }

  if (!*(v3 + 16))
  {
    goto LABEL_16;
  }

  v8 = sub_25F2193A0(1);
  if (v9)
  {
    v6 = *(*(v3 + 56) + 8 * v8);
    if (v6[2])
    {
      v7 = 1;
      goto LABEL_13;
    }
  }

  if (!*(v3 + 16) || (v10 = sub_25F2193A0(2), (v11 & 1) == 0) || (v6 = *(*(v3 + 56) + 8 * v10), !v6[2]))
  {
LABEL_16:
    *a1 = 0;
    a1[1] = 0;
    a1[2] = 0;
    return;
  }

  v7 = 2;
LABEL_13:

  v12 = v6[4];
  v13 = v6[5];
  v14 = v6[6];

  v16 = sub_25F22FC04(v17, v7);
  if (*v15)
  {
    if (!*(*v15 + 16))
    {
      __break(1u);
      return;
    }

    sub_25F1EA444(0, 1);
    (v16)(v17, 0);
  }

  else
  {
    (v16)(v17, 0);
  }

  *a1 = v12;
  a1[1] = v13;
  a1[2] = v14;
}

uint64_t (*sub_25F22FC04(uint64_t **a1, uint64_t a2))()
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x28uLL);
  }

  *a1 = v4;
  v4[4] = sub_25F230CE0(v4, a2);
  return sub_25F22FC7C;
}

void sub_25F22FC7C(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1, 0);

  free(v1);
}

uint64_t sub_25F22FCC8@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  v4 = v3;
  v7 = 0;
  v8 = *result;
  v9 = *(*result + 16);
  v10 = *result + 32;
  v11 = MEMORY[0x277D84F90];
LABEL_2:
  v12 = (v10 + 24 * v7);
  while (1)
  {
    if (v9 == v7)
    {
      *a3 = v11;
      return result;
    }

    if (v7 >= *(v8 + 16))
    {
      break;
    }

    ++v7;
    v13 = v12 + 3;
    v14 = *v12;
    v12 += 3;
    if (v14 != a2)
    {
      v15 = *(v13 - 1);
      v19 = *(v13 - 2);
      v20 = v10;

      result = swift_isUniquelyReferenced_nonNull_native();
      v21 = v4;
      if ((result & 1) == 0)
      {
        result = sub_25F1BD0A8(0, *(v11 + 16) + 1, 1);
      }

      v17 = *(v11 + 16);
      v16 = *(v11 + 24);
      if (v17 >= v16 >> 1)
      {
        result = sub_25F1BD0A8((v16 > 1), v17 + 1, 1);
      }

      *(v11 + 16) = v17 + 1;
      v18 = (v11 + 24 * v17);
      v10 = v20;
      v18[4] = v14;
      v18[5] = v19;
      v18[6] = v15;
      v4 = v21;
      goto LABEL_2;
    }
  }

  __break(1u);
  return result;
}

uint64_t FutureSerialQueue.__allocating_init(on:)(_OWORD *a1)
{
  v2 = swift_allocObject();
  *(v2 + 24) = *a1;
  v3 = sub_25F1B626C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F8, &qword_25F30E980);
  v4 = swift_allocObject();
  *(v4 + 36) = 0;
  *(v4 + 16) = v3;
  *(v4 + 24) = 0;
  *(v4 + 32) = 1;
  *(v2 + 16) = v4;
  return v2;
}

uint64_t FutureSerialQueue.init(on:)(_OWORD *a1)
{
  *(v1 + 24) = *a1;
  v2 = sub_25F1B626C(MEMORY[0x277D84F90]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD559F8, &qword_25F30E980);
  v3 = swift_allocObject();
  *(v3 + 36) = 0;
  *(v3 + 16) = v2;
  *(v3 + 24) = 0;
  *(v3 + 32) = 1;
  *(v1 + 16) = v3;
  return v1;
}

uint64_t FutureSerialQueue.enqueue<A>(priority:makeFuture:)(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = v4;
  type metadata accessor for Future(0, a4, a3, a4);
  v8 = sub_25F1D8EB4("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FutureSerialQueue.swift", 129, 2, 88, 57, "enqueue(priority:makeFuture:)", 29, 2);
  v10 = v9;
  v11 = swift_allocObject();
  v11[2] = a2;
  v11[3] = a3;
  v11[4] = v10;
  v12 = qword_27FD52798;

  if (v12 != -1)
  {
    swift_once();
  }

  v13 = off_27FD559A0;
  os_unfair_lock_lock(off_27FD559A0 + 6);
  v14 = *(v13 + 2);
  *(v13 + 2) = v14 + 1;
  os_unfair_lock_unlock(v13 + 6);
  v15 = *(v5 + 16);
  MEMORY[0x28223BE20](v16);
  os_unfair_lock_lock(v15 + 9);
  sub_25F230F88();
  os_unfair_lock_unlock(v15 + 9);
  v17 = swift_allocObject();
  v17[2] = v5;
  v17[3] = v14;
  v17[4] = sub_25F230F7C;
  v17[5] = v11;

  Future.observeCancelation(_:)(sub_25F230FD8, v17);

  sub_25F2303D8();

  return v8;
}

{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a2;
  v8[4] = a3;

  v9 = FutureSerialQueue.enqueue<A>(priority:makeFuture:)(a1, sub_25F230FE4, v8, a4);

  return v9;
}

uint64_t sub_25F230104(uint64_t a1, uint64_t a2, uint64_t (*a3)(void), uint64_t a4, uint64_t *a5)
{
  v7 = *a5;
  v8 = a3();
  v9 = *(v7 + 80);
  sub_25F229A9C(&v13);
  v12 = v13;
  Promise.track(future:on:)(v8, &v12);
  sub_25F2033DC(v12);
  v10 = swift_allocObject();
  v10[2] = v9;
  v10[3] = a1;
  v10[4] = a2;

  Future.observeFinish(_:)(sub_25F2313C4, v10);
}

void sub_25F2301FC(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  os_unfair_lock_lock((v2 + 36));
  sub_25F2313A4((v2 + 16));
  os_unfair_lock_unlock((v2 + 36));
}

void *sub_25F230254(uint64_t *a1, uint64_t a2)
{
  v2 = *a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD52C60, &unk_25F30DC40);
  result = sub_25F30632C();
  v4 = result;
  v5 = 0;
  v6 = 1 << *(v2 + 32);
  v7 = -1;
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  v8 = v7 & *(v2 + 64);
  v9 = (v6 + 63) >> 6;
  v10 = result + 8;
  if (v8)
  {
    while (1)
    {
      v11 = __clz(__rbit64(v8));
      v8 &= v8 - 1;
LABEL_10:
      v14 = v11 | (v5 << 6);
      v15 = *(*(v2 + 48) + v14);
      v22 = *(*(v2 + 56) + 8 * v14);
      result = sub_25F22FCC8(&v22, a2, &v21);
      *(v10 + ((v14 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v14;
      *(v4[6] + v14) = v15;
      *(v4[7] + 8 * v14) = v21;
      v16 = v4[2];
      v17 = __OFADD__(v16, 1);
      v18 = v16 + 1;
      if (v17)
      {
        break;
      }

      v4[2] = v18;
      if (!v8)
      {
        goto LABEL_5;
      }
    }
  }

  else
  {
LABEL_5:
    v12 = v5;
    while (1)
    {
      v5 = v12 + 1;
      if (__OFADD__(v12, 1))
      {
        break;
      }

      if (v5 >= v9)
      {

        *a1 = v4;
        return result;
      }

      v13 = *(v2 + 64 + 8 * v5);
      ++v12;
      if (v13)
      {
        v11 = __clz(__rbit64(v13));
        v8 = (v13 - 1) & v13;
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_25F2303D8()
{
  v1 = v0;
  v2 = sub_25F30490C();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_25F30494C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v22 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = v0[2];
  os_unfair_lock_lock((v10 + 36));
  if (*(v10 + 32) == 1 && (sub_25F22FA9C(&aBlock), (v11 = v31) != 0))
  {
    v26 = v7;
    v27 = v6;
    v28 = v3;
    v12 = v32;
    v13 = aBlock;
    *(v10 + 24) = aBlock;
    *(v10 + 32) = 0;
    os_unfair_lock_unlock((v10 + 36));
    v15 = v0[3];
    v14 = v0[4];
    v16 = swift_allocObject();
    v16[2] = v13;
    v16[3] = v11;
    v16[4] = v12;
    v16[5] = v1;
    aBlock = v15;
    v31 = v14;
    v25 = v14;
    sub_25F2312F8(v13, v11, v12);
    sub_25F2312F8(v13, v11, v12);

    sub_25F2312F8(v13, v11, v12);

    if (ExecutionLane.isCurrentLane.getter())
    {
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v13;
      v17[4] = v11;
      v17[5] = v12;
      sub_25F2312F8(v13, v11, v12);

      v18 = sub_25F23148C;
LABEL_12:
      v11(v18, v17);

      sub_25F231314(v13, v11, v12);

      sub_25F231314(v13, v11, v12);

      sub_25F231314(v13, v11, v12);
      return;
    }

    if (!v15)
    {
      v17 = swift_allocObject();
      v17[2] = v1;
      v17[3] = v13;
      v17[4] = v11;
      v17[5] = v12;
      sub_25F2312F8(v13, v11, v12);

      v18 = sub_25F231308;
      goto LABEL_12;
    }

    if (v15 == 1)
    {
      sub_25F1F54F4();
      v25 = sub_25F305AAC();
      v34 = sub_25F2312EC;
      v35 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_25F1D8C38;
      v33 = &block_descriptor_22;
      v23 = _Block_copy(&aBlock);

      sub_25F30492C();
      aBlock = MEMORY[0x277D84F90];
      v22 = sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1F72CC(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0, MEMORY[0x277D83970]);
      sub_25F305E5C();
      v19 = v23;
      v20 = v25;
      MEMORY[0x25F8D7C70](0, v9, v5, v23);
      _Block_release(v19);

      (*(v28 + 8))(v5, v2);
      (*(v26 + 8))(v9, v27);
    }

    else
    {
      v34 = sub_25F2312EC;
      v35 = v16;
      v24 = v16;
      aBlock = MEMORY[0x277D85DD0];
      v31 = 1107296256;
      v32 = sub_25F1D8C38;
      v33 = &block_descriptor_6;
      v23 = _Block_copy(&aBlock);

      sub_25F2033CC(v15);
      sub_25F30492C();
      v29 = MEMORY[0x277D84F90];
      sub_25F1D9034();
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27FD53AA0, &qword_25F30C7D0);
      sub_25F1F72CC(qword_27FD53AA8, &qword_27FD53AA0, &qword_25F30C7D0, MEMORY[0x277D83970]);
      sub_25F305E5C();
      v21 = v23;
      MEMORY[0x25F8D7C70](0, v9, v5, v23);
      _Block_release(v21);
      sub_25F2033DC(v15);
      (*(v28 + 8))(v5, v2);
      (*(v26 + 8))(v9, v27);
    }

    sub_25F231314(v13, v11, v12);

    sub_25F231314(v13, v11, v12);
    sub_25F231314(v13, v11, v12);
  }

  else
  {

    os_unfair_lock_unlock((v10 + 36));
  }
}

uint64_t sub_25F230AEC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for Future(0, a3, a3, a4);
  v8 = a1;
  v9 = a2;
  return sub_25F1D8E58("/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/FutureSerialQueue.swift", 129, 2, 121, 23, "enqueue(priority:makeFuture:)", 29, 2, sub_25F2312C4, v7);
}

uint64_t sub_25F230B74(uint64_t a1, void (*a2)(uint64_t (*)(), void *), uint64_t a3, uint64_t a4)
{
  v8 = swift_allocObject();
  v8[2] = a4;
  v8[3] = a1;
  v8[4] = a2;
  v8[5] = a3;

  a2(sub_25F23148C, v8);
}

void sub_25F230C14(uint64_t a1)
{
  v1 = *(a1 + 16);
  os_unfair_lock_lock(v1 + 9);
  sub_25F23133C(&v1[4]);
  os_unfair_lock_unlock(v1 + 9);
  sub_25F2303D8();
}

uint64_t FutureSerialQueue.deinit()
{

  sub_25F2033DC(*(v0 + 24));
  return v0;
}

uint64_t FutureSerialQueue.__deallocating_deinit()
{

  sub_25F2033DC(*(v0 + 24));

  return MEMORY[0x2821FE8D8](v0, 40, 7);
}

void (*sub_25F230CE0(uint64_t *a1, uint64_t a2))(uint64_t a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v4 = swift_coroFrameAlloc();
  }

  else
  {
    v4 = malloc(0x50uLL);
  }

  v5 = v4;
  *a1 = v4;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v5[8] = sub_25F230F48(v5);
  v5[9] = sub_25F230DE4((v5 + 4), a2, isUniquelyReferenced_nonNull_native);
  return sub_25F230D84;
}

void sub_25F230D84(uint64_t a1)
{
  v1 = *a1;
  v2 = *(*a1 + 64);
  (*(*a1 + 72))();
  v2(v1, 0);

  free(v1);
}

unint64_t (*sub_25F230DE4(uint64_t a1, uint64_t a2, char a3))(unint64_t result)
{
  v4 = v3;
  *(a1 + 8) = v3;
  *(a1 + 24) = a2;
  v8 = *v3;
  v9 = sub_25F2193A0(a2);
  *(a1 + 25) = v10 & 1;
  v11 = *(v8 + 16);
  v12 = (v10 & 1) == 0;
  v13 = __OFADD__(v11, v12);
  v14 = v11 + v12;
  if (v13)
  {
    __break(1u);
    goto LABEL_13;
  }

  v15 = v10;
  v16 = *(v8 + 24);
  if (v16 < v14 || (a3 & 1) == 0)
  {
    if (v16 >= v14 && (a3 & 1) == 0)
    {
      v17 = v9;
      sub_25F21E4D8();
      v9 = v17;
      goto LABEL_8;
    }

    sub_25F21B70C(v14, a3 & 1);
    v9 = sub_25F2193A0(a2);
    if ((v15 & 1) == (v18 & 1))
    {
      goto LABEL_8;
    }

LABEL_13:
    result = sub_25F30665C();
    __break(1u);
    return result;
  }

LABEL_8:
  *(a1 + 16) = v9;
  if (v15)
  {
    v19 = *(*(*v4 + 56) + 8 * v9);
  }

  else
  {
    v19 = 0;
  }

  *a1 = v19;
  return sub_25F230F00;
}

unint64_t sub_25F230F00(unint64_t result)
{
  v1 = *result;
  if (*result)
  {
    v2 = **(result + 8);
    if (*(result + 25))
    {
      *(v2[7] + 8 * *(result + 16)) = v1;
    }

    else
    {
      return sub_25F211908(*(result + 16), *(result + 24), v1, v2);
    }
  }

  else if (*(result + 25))
  {
    return sub_25F1BB540(*(result + 16), **(result + 8));
  }

  return result;
}

uint64_t (*sub_25F230F48(void *a1))(uint64_t result)
{
  *a1 = *v1;
  a1[1] = v1;
  return sub_25F230F70;
}

unint64_t sub_25F230F88()
{
  v1 = *(v0 + 40);
  v3 = *(v0 + 16);
  v4 = *(v0 + 24);
  return sub_25F22F978(&v3, v1);
}

unint64_t sub_25F230FF4()
{
  result = qword_27FD55A00;
  if (!qword_27FD55A00)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55A00);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for FutureSerialQueue.Priority(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFE)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 2;
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

      return (*a1 | (v4 << 8)) - 2;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 2;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 3;
  v8 = v6 - 3;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for FutureSerialQueue.Priority(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFE)
  {
    v4 = 0;
  }

  if (a2 > 0xFD)
  {
    v5 = ((a2 - 254) >> 8) + 1;
    *result = a2 + 2;
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
    *result = a2 + 2;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t sub_25F23122C(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 17))
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

uint64_t sub_25F231274(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 17) = 1;
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

    *(result + 17) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_25F2312F8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t sub_25F231314(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2)
  {
  }

  return result;
}

uint64_t block_copy_helper_6(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

uint64_t sub_25F23133C(uint64_t result)
{
  if ((*(result + 16) & 1) == 0 && *(result + 8) == *(v1 + 16))
  {
    *(result + 8) = 0;
    *(result + 16) = 1;
  }

  return result;
}

uint64_t objectdestroy_2Tm_0()
{

  return swift_deallocObject();
}

uint64_t sub_25F2313EC(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 24))
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

uint64_t sub_25F231434(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 24) = 1;
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

    *(result + 24) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void __swiftcall BuildNumber.init(majorRelease:minorRelease:majorBuild:minorBuild:)(PreviewsFoundationOS::BuildNumber *__return_ptr retstr, Swift::Int majorRelease, Swift::String minorRelease, Swift::Int majorBuild, Swift::String_optional minorBuild)
{
  retstr->rawMinorRelease = minorRelease;
  retstr->majorRelease = majorRelease;
  retstr->majorBuild = majorBuild;
  retstr->rawMinorBuild = minorBuild;
}

void __swiftcall __spoils<CF,ZF,NF,VF,X0,X1,X2,X3,X4,X5,X6,X7,X8,X9,X10,X11,X12,X13,X14,X15,X16,X17,X21,Q0,Q1,Q2,Q3,Q4,Q5,Q6,Q7,Q16,Q17,Q18,Q19,Q20,Q21,Q22,Q23,Q24,Q25,Q26,Q27,Q28,Q29,Q30,Q31> BuildNumber.init(_:)(PreviewsFoundationOS::BuildNumber *__return_ptr retstr, Swift::String a2)
{
  v29 = retstr;
  v2 = sub_25F305BCC();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = objc_allocWithZone(MEMORY[0x277CCAC80]);
  v7 = sub_25F304DDC();

  v8 = [v6 initWithString_];

  v9 = *(v3 + 104);
  v31 = *MEMORY[0x277CC9E90];
  v30 = v9;
  v9(v5);
  v10 = sub_25F305BDC();
  LOBYTE(v6) = v11;
  v12 = *(v3 + 8);
  v12(v5, v2);
  v13 = 0;
  if ((v6 & 1) != 0 || v10 < 1)
  {
    goto LABEL_13;
  }

  v14 = v10;
  v15 = sub_25F305BBC();
  if (!v16)
  {
    goto LABEL_12;
  }

  v17 = v16;
  v28 = v15;
  if ((sub_25F304C3C() & 1) == 0)
  {

LABEL_12:
    v13 = 1;
    goto LABEL_13;
  }

  v30(v5, v31, v2);
  v18 = sub_25F305BDC();
  v20 = v19;
  v12(v5, v2);
  if ((v20 & 1) != 0 || v18 < 1)
  {

    v13 = 2;
  }

  else
  {
    v21 = sub_25F305BBC();
    v23 = v22;
    if (v22 && (, v24 = sub_25F304C3C(), , (v24 & 1) == 0))
    {

      v13 = 3;
    }

    else
    {
      if ([v8 isAtEnd])
      {

        v25 = v28;
        v26 = v29;
        v29->majorRelease = v14;
        v26->majorBuild = v18;
        v26->rawMinorRelease._countAndFlagsBits = v25;
        v26->rawMinorRelease._object = v17;
        v26->rawMinorBuild.value._countAndFlagsBits = v21;
        v26->rawMinorBuild.value._object = v23;
        return;
      }

      v13 = 4;
    }
  }

LABEL_13:
  sub_25F23178C();
  swift_allocError();
  *v27 = v13;
  swift_willThrow();
}

unint64_t sub_25F23178C()
{
  result = qword_27FD55AA8;
  if (!qword_27FD55AA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AA8);
  }

  return result;
}

void static BuildNumber.createConfidently(_:)(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{

  v6._countAndFlagsBits = a1;
  v6._object = a2;
  BuildNumber.init(_:)(&v20, v6);
  if (v7)
  {
    v14[0] = "/Library/Caches/com.apple.xbs/Sources/UITestingAgent/Shared/PreviewsFoundation/Sources/PreviewsFoundation/BuildNumber.swift";
    v14[1] = 123;
    v15 = 2;
    v16 = xmmword_25F30EB50;
    v17 = "createConfidently(_:)";
    v18 = 21;
    v19 = 2;
    sub_25F213F98(v14);
    if (qword_27FD527B0 != -1)
    {
      swift_once();
    }

    countAndFlagsBits = qword_27FD55A88;
    object = unk_27FD55A90;
    v12 = xmmword_27FD55A98;
    v13 = xmmword_27FD55A78;

    rawMinorBuild = v12;
    v10 = v13;
  }

  else
  {
    v10 = *&v20.majorRelease;
    countAndFlagsBits = v20.rawMinorRelease._countAndFlagsBits;
    object = v20.rawMinorRelease._object;
    rawMinorBuild = v20.rawMinorBuild;
  }

  *a3 = v10;
  *(a3 + 16) = countAndFlagsBits;
  *(a3 + 24) = object;
  *(a3 + 32) = rawMinorBuild;
}

__n128 sub_25F231904@<Q0>(uint64_t a1@<X0>, PreviewsFoundationOS::BuildNumber *a2@<X8>)
{
  v3 = UVCurrentSystemBuildNumberString(a1);
  if (v3)
  {
    v4 = v3;
    v5 = sub_25F304E0C();
    v7 = v6;

    v8._countAndFlagsBits = v5;
    v8._object = v7;
    BuildNumber.init(_:)(a2, v8);
    v11 = v10;
    if (!v10)
    {
      return result;
    }
  }

  else
  {
    sub_25F232A80();
    v11 = swift_allocError();
    swift_willThrow();
  }

  if (qword_281561A38 != -1)
  {
    swift_once();
  }

  v12 = sub_25F30479C();
  __swift_project_value_buffer(v12, qword_281561A40);
  v13 = v11;
  v14 = sub_25F30477C();
  v15 = sub_25F305A0C();

  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = swift_slowAlloc();
    *v16 = 138543362;
    v18 = v11;
    v19 = _swift_stdlib_bridgeErrorToNSError();
    *(v16 + 4) = v19;
    *v17 = v19;
    _os_log_impl(&dword_25F1A2000, v14, v15, "Failed to get current system version, falling back to 1A1: %{public}@", v16, 0xCu);
    sub_25F1D313C(v17);
    MEMORY[0x25F8D9510](v17, -1, -1);
    MEMORY[0x25F8D9510](v16, -1, -1);
  }

  if (qword_27FD527A8 != -1)
  {
    swift_once();
  }

  v24 = xmmword_27FD55A48;
  v21 = qword_27FD55A58;
  v20 = unk_27FD55A60;
  v23 = qword_27FD55A68;
  v22 = unk_27FD55A70;

  result = v24;
  *&a2->majorRelease = v24;
  a2->rawMinorRelease._countAndFlagsBits = v21;
  a2->rawMinorRelease._object = v20;
  a2->rawMinorBuild.value._countAndFlagsBits = v23;
  a2->rawMinorBuild.value._object = v22;
  return result;
}

uint64_t static BuildNumber.current.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527A0 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27FD55A28;
  v2 = unk_27FD55A30;
  v4 = qword_27FD55A38;
  v3 = unk_27FD55A40;
  *a1 = xmmword_27FD55A18;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

int64x2_t sub_25F231BB0()
{
  qword_27FD55A58 = 65;
  unk_27FD55A60 = 0xE100000000000000;
  result = vdupq_n_s64(1uLL);
  xmmword_27FD55A48 = result;
  qword_27FD55A68 = 0;
  unk_27FD55A70 = 0;
  return result;
}

uint64_t static BuildNumber.distantPast.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527A8 != -1)
  {
    v6 = a1;
    swift_once();
    a1 = v6;
  }

  v1 = qword_27FD55A58;
  v2 = unk_27FD55A60;
  v4 = qword_27FD55A68;
  v3 = unk_27FD55A70;
  *a1 = xmmword_27FD55A48;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v4;
  *(a1 + 40) = v3;
}

float64x2_t sub_25F231C64()
{
  qword_27FD55A88 = 90;
  unk_27FD55A90 = 0xE100000000000000;
  v0.f64[0] = NAN;
  v0.f64[1] = NAN;
  result = vnegq_f64(v0);
  xmmword_27FD55A78 = result;
  xmmword_27FD55A98 = 0uLL;
  return result;
}

uint64_t static BuildNumber.distantFuture.getter@<X0>(uint64_t a1@<X8>)
{
  if (qword_27FD527B0 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = qword_27FD55A88;
  v2 = unk_27FD55A90;
  v3 = xmmword_27FD55A98;
  *a1 = xmmword_27FD55A78;
  *(a1 + 16) = v1;
  *(a1 + 24) = v2;
  *(a1 + 32) = v3;
}

uint64_t BuildNumber.hash(into:)(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[5];
  MEMORY[0x25F8D88E0](*v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (!v3)
  {
    return sub_25F30673C();
  }

  sub_25F304BFC();
  sub_25F30673C();
  sub_25F304F0C();
}

uint64_t BuildNumber.description.getter()
{
  v1 = *(v0 + 40);
  v8 = sub_25F3064DC();
  v2 = sub_25F304C0C();
  MEMORY[0x25F8D7130](v2);

  v3 = sub_25F3064DC();
  MEMORY[0x25F8D7130](v3);

  if (v1)
  {
    v4 = sub_25F304BFC();
    v6 = v5;
  }

  else
  {
    v4 = 0;
    v6 = 0xE000000000000000;
  }

  MEMORY[0x25F8D7130](v4, v6);

  return v8;
}

uint64_t BuildNumber.releaseDescription.getter()
{
  v2 = sub_25F3064DC();
  v0 = sub_25F304C0C();
  MEMORY[0x25F8D7130](v0);

  return v2;
}

uint64_t BuildNumber.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (v3)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

uint64_t sub_25F23204C()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (v3)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

uint64_t sub_25F232138(uint64_t a1)
{
  v2 = v1[1];
  v3 = v1[5];
  MEMORY[0x25F8D88E0](*v1);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v2);
  if (!v3)
  {
    return sub_25F30673C();
  }

  sub_25F304BFC();
  sub_25F30673C();
  sub_25F304F0C();
}

uint64_t sub_25F232210(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[5];
  sub_25F30671C();
  MEMORY[0x25F8D88E0](v2);
  sub_25F304C0C();
  sub_25F304F0C();

  MEMORY[0x25F8D88E0](v3);
  if (v4)
  {
    sub_25F304BFC();
    sub_25F30673C();
    sub_25F304F0C();
  }

  else
  {
    sub_25F30673C();
  }

  return sub_25F30676C();
}

BOOL sub_25F2322FC(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return !_s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v7, &v11);
}

BOOL sub_25F232358(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return !_s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v11, &v7);
}

BOOL sub_25F2323B4(__int128 *a1, __int128 *a2)
{
  v2 = *(a1 + 3);
  v3 = *(a2 + 2);
  v4 = *(a2 + 3);
  v5 = *a1;
  v12 = *(a1 + 2);
  v13 = v2;
  v14 = a1[2];
  v7 = *a2;
  v8 = v3;
  v9 = v4;
  v10 = a2[2];
  v11 = v5;
  return _s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(&v7, &v11);
}

BOOL _s20PreviewsFoundationOS11BuildNumberV1loiySbAC_ACtFZ_0(void *a1, void *a2)
{
  v2 = *a1 < *a2;
  if (*a1 != *a2)
  {
    return v2;
  }

  v3 = a1[1];
  v4 = a1[5];
  v5 = a2[1];
  v25 = a2[5];
  v6 = sub_25F304C0C();
  v8 = v7;
  if (v6 == sub_25F304C0C() && v8 == v9)
  {
  }

  else
  {
    v11 = sub_25F30659C();

    if ((v11 & 1) == 0)
    {
      v12 = sub_25F304C0C();
      v14 = v13;
      if (v12 != sub_25F304C0C() || v14 != v15)
      {
        v23 = sub_25F30659C();

        return v23 & 1;
      }

      goto LABEL_9;
    }
  }

  v2 = v3 < v5;
  if (v3 != v5)
  {
    return v2;
  }

  if (!v4)
  {
    if (v25)
    {
      sub_25F304BFC();
LABEL_24:
      if (v21)
      {

        return 1;
      }
    }

    return 0;
  }

  v16 = sub_25F304BFC();
  v18 = v17;
  if (!v25)
  {
    if (v17)
    {
      goto LABEL_28;
    }

    return 0;
  }

  v19 = v16;
  v20 = sub_25F304BFC();
  if (!v18)
  {
    goto LABEL_24;
  }

  if (!v21)
  {
    goto LABEL_28;
  }

  if (v19 == v20 && v18 == v21)
  {
LABEL_9:

LABEL_28:

    return 0;
  }

  v24 = sub_25F30659C();

  return v24 & 1;
}

uint64_t _s20PreviewsFoundationOS11BuildNumberV2eeoiySbAC_ACtFZ_0(void *a1, void *a2)
{
  if (*a1 != *a2)
  {
    goto LABEL_17;
  }

  v2 = a1[5];
  v3 = a2[5];
  v4 = a2[1];
  v5 = a1[1];
  v6 = sub_25F304C0C();
  v8 = v7;
  if (v6 == sub_25F304C0C() && v8 == v9)
  {

    if (v5 == v4)
    {
      goto LABEL_10;
    }

LABEL_17:
    v12 = 0;
    return v12 & 1;
  }

  v11 = sub_25F30659C();

  v12 = 0;
  if ((v11 & 1) != 0 && v5 == v4)
  {
LABEL_10:
    if (v2)
    {
      v13 = sub_25F304BFC();
      v15 = v14;
      if (!v3)
      {
        if (v14)
        {
LABEL_23:
          v12 = 0;
          goto LABEL_27;
        }

LABEL_24:
        v12 = 1;
        return v12 & 1;
      }

      v16 = v13;
      v18 = sub_25F304BFC();
      v19 = v17;
      if (v15)
      {
        if (v17)
        {
          if (v16 == v18 && v15 == v17)
          {
            v12 = 1;
          }

          else
          {
            v12 = sub_25F30659C();
          }

          goto LABEL_27;
        }

        goto LABEL_23;
      }
    }

    else
    {
      if (!v3)
      {
        goto LABEL_24;
      }

      sub_25F304BFC();
      v19 = v20;
    }

    if (v19)
    {
      v12 = 0;
LABEL_27:

      return v12 & 1;
    }

    goto LABEL_24;
  }

  return v12 & 1;
}

unint64_t sub_25F2327E0()
{
  result = qword_27FD55AB0;
  if (!qword_27FD55AB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AB0);
  }

  return result;
}

uint64_t sub_25F232834(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 48))
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

uint64_t sub_25F23287C(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

uint64_t getEnumTagSinglePayload for BuildNumber.Invalid(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFC)
  {
    goto LABEL_17;
  }

  if (a2 + 4 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 4) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 4;
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

      return (*a1 | (v4 << 8)) - 4;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 4;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 5;
  v8 = v6 - 5;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for BuildNumber.Invalid(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 4 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 4) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFC)
  {
    v4 = 0;
  }

  if (a2 > 0xFB)
  {
    v5 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
    *result = a2 + 4;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_25F232A2C()
{
  result = qword_27FD55AB8;
  if (!qword_27FD55AB8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27FD55AB8);
  }

  return result;
}

unint64_t sub_25F232A80()
{
  result = qword_27FD55AC0[0];
  if (!qword_27FD55AC0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_27FD55AC0);
  }

  return result;
}

Swift::Bool __swiftcall NSProcessInfo.BOOLeanEnvironmentVariableIsSet(_:)(Swift::String a1)
{
  object = a1._object;
  countAndFlagsBits = a1._countAndFlagsBits;
  v4 = [v1 environment];
  v5 = sub_25F304A6C();

  if (*(v5 + 16) && (v6 = sub_25F219234(countAndFlagsBits, object), (v7 & 1) != 0))
  {
    v8 = (*(v5 + 56) + 16 * v6);
    v9 = *v8;
    v10 = v8[1];

    v15[0] = v9;
    v15[1] = v10;
    MEMORY[0x28223BE20](v11);
    v14[2] = v15;
    v12 = sub_25F232C34(sub_25F1BF16C, v14, &unk_28715C3D8);
    swift_arrayDestroy();
  }

  else
  {

    v12 = 0;
  }

  return v12 & 1;
}

uint64_t sub_25F232C34(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3)
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

uint64_t sub_25F232CE0(uint64_t (*a1)(void *), uint64_t a2, uint64_t a3, unint64_t a4)
{
  if ((a4 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a4) & 0xF;
  }

  else
  {
    v5 = a3 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
LABEL_28:
    v18 = 0;
    return v18 & 1;
  }

  v9 = 0;
  v10 = a4 & 0xFFFFFFFFFFFFFFLL;
  v11 = (a4 & 0xFFFFFFFFFFFFFFFLL) + 32;
  while (1)
  {
    if ((a4 & 0x1000000000000000) != 0)
    {
      v14 = sub_25F305F9C();
      v16 = v15;
      goto LABEL_15;
    }

    if ((a4 & 0x2000000000000000) != 0)
    {
      v21[0] = a3;
      v21[1] = v10;
      v13 = v21 + v9;
    }

    else
    {
      v12 = v11;
      if ((a3 & 0x1000000000000000) == 0)
      {
        v12 = sub_25F30605C();
      }

      v13 = (v12 + v9);
    }

    v14 = *v13;
    if ((*v13 & 0x80000000) == 0)
    {
LABEL_14:
      v16 = 1;
      goto LABEL_15;
    }

    v19 = (__clz(v14 ^ 0xFF) - 24);
    if (v19 > 2)
    {
      if (v19 == 3)
      {
        v14 = ((v14 & 0xF) << 12) | ((v13[1] & 0x3F) << 6) | v13[2] & 0x3F;
        v16 = 3;
      }

      else
      {
        v14 = ((v14 & 0xF) << 18) | ((v13[1] & 0x3F) << 12) | ((v13[2] & 0x3F) << 6) | v13[3] & 0x3F;
        v16 = 4;
      }
    }

    else
    {
      if (v19 == 1)
      {
        goto LABEL_14;
      }

      v14 = v13[1] & 0x3F | ((v14 & 0x1F) << 6);
      v16 = 2;
    }

LABEL_15:
    LODWORD(v21[0]) = v14;
    v17 = a1(v21);
    if (v4)
    {
      return v18 & 1;
    }

    if (v17)
    {
      break;
    }

    v9 += v16;
    if (v9 >= v5)
    {
      goto LABEL_28;
    }
  }

  v18 = 1;
  return v18 & 1;
}

uint64_t Inhabited.predicated.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>, uint64_t a3@<X3>)
{
  HasHead = type metadata accessor for HasHead(255, *(a1 + 16), *(a1 + 24), a3);
  WitnessTable = swift_getWitnessTable();
  v8 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v7);
  v9 = *(*(v8 - 8) + 16);

  return v9(a2, v3, v8);
}

uint64_t Inhabited.predicated.setter(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  HasHead = type metadata accessor for HasHead(255, *(a2 + 16), *(a2 + 24), a4);
  WitnessTable = swift_getWitnessTable();
  v9 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v8);
  v10 = *(*(v9 - 8) + 40);

  return v10(v4, a1, v9);
}

uint64_t Inhabited.init(predicated:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  HasHead = type metadata accessor for HasHead(255, a2, a3, a4);
  WitnessTable = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated(0, HasHead, WitnessTable, v9);
  v11 = *(*(v10 - 8) + 32);

  return v11(a5, a1, v10);
}

uint64_t static Inhabited<>.== infix(_:_:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  v5 = MEMORY[0x28223BE20](a1);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v9 = &v18 - v8;
  v13 = type metadata accessor for Inhabited(0, v10, v12, v11);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(v13, WitnessTable, v9);
  PredicatedWrapper.value.getter(v13, WitnessTable, v7);
  v15 = sub_25F304DCC();
  v16 = *(v4 + 8);
  v16(v7, a3);
  v16(v9, a3);
  return v15 & 1;
}

uint64_t Inhabited<>.hash(into:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v7);
  sub_25F304BDC();
  return (*(v5 + 8))(v7, v4);
}

uint64_t Inhabited<>.hashValue.getter(uint64_t a1, uint64_t a2)
{
  sub_25F30671C();
  Inhabited<>.hash(into:)(v5, a1, a2);
  return sub_25F30676C();
}

uint64_t sub_25F2333D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = *(a3 - 8);
  sub_25F30671C();
  Inhabited<>.hash(into:)(v6, a2, v4);
  return sub_25F30676C();
}

uint64_t Inhabited.makeIterator()(uint64_t a1)
{
  MEMORY[0x28223BE20](a1);
  v3 = &v6 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v3);
  return sub_25F3050DC();
}

uint64_t Inhabited.sorted(by:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v36 = a1;
  v32 = a4;
  v5 = *(a3 + 16);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_25F305C1C();
  MEMORY[0x28223BE20](v7 - 8);
  v33 = AssociatedTypeWitness;
  v34 = &v30 - v8;
  v9 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  v35 = v9;
  v31 = WitnessTable;
  HasHead = type metadata accessor for HasHead(255, v9, WitnessTable, v11);
  v13 = swift_getWitnessTable();
  v15 = type metadata accessor for Predicated(0, HasHead, v13, v14);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v18 = &v30 - v17;
  v19 = *(v5 - 8);
  MEMORY[0x28223BE20](v16);
  v21 = &v30 - ((v20 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a3, v22, v21);
  v23 = v38;
  v24 = sub_25F3051AC();
  result = (*(v19 + 8))(v21, v5);
  if (!v23)
  {
    v40 = v24;
    v39 = v24;
    swift_getWitnessTable();
    v26 = v34;
    sub_25F30583C();
    v27 = v33;
    v28 = *(v33 - 8);
    result = (*(v28 + 48))(v26, 1, v33);
    if (result == 1)
    {
      __break(1u);
    }

    else
    {
      static Predicated.unverified(value:proof:)(&v40, v26, HasHead, v13, v18);
      (*(v28 + 8))(v26, v27);

      return Inhabited.init(predicated:)(v18, v35, v31, v29, v32);
    }
  }

  return result;
}

uint64_t Inhabited.map<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v61 = a2;
  v60 = a1;
  v58 = a5;
  v59 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v59, WitnessTable, v8);
  v56 = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated(0, HasHead, v56, v9);
  MEMORY[0x28223BE20](v10 - 8);
  v55 = &v45 - v11;
  v48 = sub_25F305C1C();
  v47 = *(v48 - 8);
  v12 = MEMORY[0x28223BE20](v48);
  v54 = &v45 - v13;
  v53 = *(a4 - 1);
  v14 = MEMORY[0x28223BE20](v12);
  v51 = &v45 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  v17 = *(v16 - 1);
  v18 = MEMORY[0x28223BE20](v14);
  v49 = &v45 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v21 = &v45 - v20;
  v22 = swift_getWitnessTable();
  v50 = v5;
  PredicatedWrapper.value.getter(a3, v22, v21);
  v64 = v16;
  v65 = a4;
  v66 = *(a3 + 24);
  v23 = v66;
  v67 = v60;
  v68 = v61;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v25 = v62;
  v26 = sub_25F2E3888(sub_25F233E98, v63, v16, a4, v24, v23, MEMORY[0x277D84950], v69);
  v27 = v21;
  v28 = *(v17 + 8);
  result = v28(v27, v16);
  if (!v25)
  {
    v46 = v28;
    v60 = v23;
    v61 = v22;
    v30 = HasHead;
    v62 = v17 + 8;
    v31 = v26;
    v69[0] = v26;
    swift_getWitnessTable();
    v32 = v54;
    sub_25F30583C();
    v33 = v53;
    if ((*(v53 + 48))(v32, 1, a4) == 1)
    {
      (*(v47 + 8))(v32, v48);
      v69[0] = 0;
      v69[1] = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F319080);
      v37 = v49;
      v38 = v61;
      PredicatedWrapper.value.getter(a3, v61, v49);
      v39 = v16;
      swift_getDynamicType();
      v40 = v16;
      v41 = v46;
      v46(v37, v40);
      v42 = sub_25F30685C();
      MEMORY[0x25F8D7130](v42);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(a3, v38, v37);
      v43 = sub_25F3050EC();
      v41(v37, v39);
      v69[4] = v43;
      v44 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v44);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v34 = v51;
      (*(v33 + 32))(v51, v32, a4);
      v69[0] = v31;
      v35 = v55;
      static Predicated.unverified(value:proof:)(v69, v34, v30, v56, v55);
      (*(v33 + 8))(v34, a4);

      return Inhabited.init(predicated:)(v35, v59, WitnessTable, v36, v58);
    }
  }

  return result;
}

uint64_t sub_25F233E98(uint64_t a1, void *a2)
{
  result = (*(v2 + 40))(a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t Inhabited.reversed()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v45 = a2;
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v7, WitnessTable, v8);
  v42 = swift_getWitnessTable();
  v43 = HasHead;
  v11 = type metadata accessor for Predicated(0, HasHead, v42, v10);
  MEMORY[0x28223BE20](v11 - 8);
  v41 = &v33 - v12;
  v13 = sub_25F305C1C();
  v34 = *(v13 - 8);
  v35 = v13;
  v14 = MEMORY[0x28223BE20](v13);
  v16 = &v33 - v15;
  v17 = *(AssociatedTypeWitness - 8);
  v18 = MEMORY[0x28223BE20](v14);
  v20 = &v33 - v19;
  v36 = *(v4 - 8);
  MEMORY[0x28223BE20](v18);
  v22 = &v33 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = swift_getWitnessTable();
  v37 = a1;
  v38 = v2;
  v24 = a1;
  v25 = v23;
  PredicatedWrapper.value.getter(v24, v23, v22);
  v39 = v5;
  v40 = v4;
  v26 = sub_25F3051CC();
  v47[0] = v26;
  swift_getWitnessTable();
  sub_25F304C5C();
  if ((*(v17 + 48))(v16, 1, AssociatedTypeWitness) == 1)
  {
    (*(v34 + 8))(v16, v35);
    v47[0] = 0;
    v47[1] = 0xE000000000000000;
    sub_25F305FAC();
    MEMORY[0x25F8D7130](0xD00000000000002ELL, 0x800000025F3190D0);
    PredicatedWrapper.value.getter(v37, v25, v22);
    v30 = v40;
    v31 = sub_25F3050EC();
    (*(v36 + 8))(v22, v30);
    v46 = v31;
    v32 = sub_25F3064DC();
    MEMORY[0x25F8D7130](v32);

    MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F319100);
    result = sub_25F30627C();
    __break(1u);
  }

  else
  {
    (*(v17 + 32))(v20, v16, AssociatedTypeWitness);
    v47[0] = v26;
    v27 = v41;
    static Predicated.unverified(value:proof:)(v47, v20, v43, v42, v41);
    (*(v17 + 8))(v20, AssociatedTypeWitness);

    return Inhabited.init(predicated:)(v27, v7, WitnessTable, v28, v45);
  }

  return result;
}

uint64_t Inhabited.mapWithPrevious<A>(using:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X3>, uint64_t a5@<X8>)
{
  v64 = a2;
  v62 = a1;
  v58 = a5;
  v60 = sub_25F30539C();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v60, WitnessTable, v8);
  v55 = swift_getWitnessTable();
  v10 = type metadata accessor for Predicated(0, HasHead, v55, v9);
  v11 = MEMORY[0x28223BE20](v10 - 8);
  v54 = &v48 - v12;
  v13 = *(a4 - 1);
  v14 = MEMORY[0x28223BE20](v11);
  v52 = &v48 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = *(a3 + 16);
  v65 = *(v16 - 1);
  v17 = MEMORY[0x28223BE20](v14);
  v50 = &v48 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v20 = &v48 - v19;
  v61 = sub_25F305C1C();
  v21 = *(v61 - 8);
  v22 = MEMORY[0x28223BE20](v61);
  v59 = &v48 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v22);
  v25 = &v48 - v24;
  v53 = v13;
  (*(v13 + 56))(&v48 - v24, 1, 1, a4);
  v26 = swift_getWitnessTable();
  v51 = v5;
  PredicatedWrapper.value.getter(a3, v26, v20);
  v67 = v16;
  v68 = a4;
  v49 = a3;
  v27 = *(a3 + 24);
  v69 = v27;
  v70 = v62;
  v71 = v64;
  v72 = v25;
  v28 = __swift_instantiateConcreteTypeFromMangledNameV2(qword_27FD52B48, &qword_25F3084D0);
  v64 = v16;
  v29 = v63;
  v30 = sub_25F2E3888(sub_25F234C10, v66, v16, a4, v28, v27, MEMORY[0x277D84950], v73);
  if (v29)
  {
    (*(v65 + 8))(v20, v64);
    return (*(v21 + 8))(v25, v61);
  }

  else
  {
    v32 = v30;
    v62 = v27;
    v63 = v26;
    v33 = v61;
    v34 = *(v65 + 8);
    v65 += 8;
    v48 = v34;
    v34(v20, v64);
    v73[0] = v32;
    swift_getWitnessTable();
    v35 = v59;
    sub_25F30583C();
    v36 = v53;
    if ((*(v53 + 48))(v35, 1, a4) == 1)
    {
      (*(v21 + 8))(v59, v33);
      v73[0] = 0;
      v73[1] = 0xE000000000000000;
      sub_25F305FAC();
      MEMORY[0x25F8D7130](0xD00000000000001CLL, 0x800000025F319080);
      v40 = v50;
      v41 = v49;
      v42 = v63;
      PredicatedWrapper.value.getter(v49, v63, v50);
      v43 = v64;
      swift_getDynamicType();
      v44 = v48;
      v48(v40, v43);
      v45 = sub_25F30685C();
      MEMORY[0x25F8D7130](v45);

      MEMORY[0x25F8D7130](0x206874697720, 0xE600000000000000);
      PredicatedWrapper.value.getter(v41, v42, v40);
      v46 = sub_25F3050EC();
      v44(v40, v43);
      v73[4] = v46;
      v47 = sub_25F3064DC();
      MEMORY[0x25F8D7130](v47);

      MEMORY[0x25F8D7130](0xD000000000000025, 0x800000025F3190A0);
      result = sub_25F30627C();
      __break(1u);
    }

    else
    {
      v37 = v52;
      (*(v36 + 32))(v52, v59, a4);
      v73[0] = v32;
      v38 = v54;
      static Predicated.unverified(value:proof:)(v73, v37, HasHead, v55, v54);
      (*(v36 + 8))(v37, a4);

      Inhabited.init(predicated:)(v38, v60, WitnessTable, v39, v58);
      return (*(v21 + 8))(v25, v33);
    }
  }

  return result;
}

uint64_t sub_25F234A30@<X0>(uint64_t a1@<X0>, void (*a2)(char *, uint64_t)@<X1>, char *a3@<X3>, uint64_t a4@<X5>, void *a5@<X7>, uint64_t a6@<X8>)
{
  v20 = a5;
  v11 = sub_25F305C1C();
  v12 = *(v11 - 8);
  MEMORY[0x28223BE20](v11);
  v14 = &v19 - v13;
  (*(v12 + 16))(&v19 - v13, a3, v11);
  v19 = a6;
  v15 = v21;
  a2(v14, a1);
  if (v15)
  {
    result = (*(v12 + 8))(v14, v11);
    *v20 = v15;
  }

  else
  {
    v17 = *(v12 + 8);
    v17(v14, v11);
    v17(a3, v11);
    v18 = *(a4 - 8);
    (*(v18 + 16))(a3, v19, a4);
    return (*(v18 + 56))(a3, 0, 1, a4);
  }

  return result;
}

uint64_t Inhabited.enumerated()@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v3 = *(a1 + 16);
  v39 = *(a1 + 24);
  v4 = v3;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  TupleTypeMetadata2 = swift_getTupleTypeMetadata2();
  v6 = *(TupleTypeMetadata2 - 8);
  v44 = TupleTypeMetadata2;
  v45 = v6;
  v7 = MEMORY[0x28223BE20](TupleTypeMetadata2);
  v9 = &v35 - v8;
  v41 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](v7);
  v40 = &v35 - v10;
  v11 = sub_25F3062EC();
  WitnessTable = swift_getWitnessTable();
  HasHead = type metadata accessor for HasHead(255, v11, WitnessTable, v12);
  v38 = HasHead;
  v37 = swift_getWitnessTable();
  v15 = type metadata accessor for Predicated(0, HasHead, v37, v14);
  v16 = MEMORY[0x28223BE20](v15 - 8);
  v36 = &v35 - v17;
  v18 = v4;
  v19 = *(v4 - 8);
  v20 = MEMORY[0x28223BE20](v16);
  v22 = &v35 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v23 = *(v11 - 8);
  MEMORY[0x28223BE20](v20);
  v25 = &v35 - v24;
  v26 = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, v26, v22);
  MEMORY[0x25F8D72E0](v18, v39);
  (*(v19 + 8))(v22, v18);
  v27 = v40;
  Inhabited.first.getter(a1, v28, v40);
  v29 = AssociatedTypeWitness;
  v30 = v44;
  v31 = *(v44 + 48);
  *v9 = 0;
  (*(v41 + 32))(&v9[v31], v27, v29);
  v32 = v36;
  static Predicated.unverified(value:proof:)(v25, v9, v38, v37, v36);
  (*(v45 + 8))(v9, v30);
  (*(v23 + 8))(v25, v11);
  return Inhabited.init(predicated:)(v32, v11, WitnessTable, v33, v46);
}

uint64_t Inhabited.first.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t a3@<X8>)
{
  HasHead = type metadata accessor for HasHead(255, *(a1 + 16), *(a1 + 24), a2);
  WitnessTable = swift_getWitnessTable();
  v8 = *(type metadata accessor for Predicated(0, HasHead, WitnessTable, v7) + 36);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v10 = *(*(AssociatedTypeWitness - 8) + 16);

  return v10(a3, v3 + v8, AssociatedTypeWitness);
}

uint64_t sub_25F235108(uint64_t a1)
{
  Inhabited.makeIterator()(a1);
  v3 = *(*(a1 - 8) + 8);

  return v3(v1, a1);
}

uint64_t sub_25F23519C(uint64_t a1, uint64_t a2, void (*a3)(uint64_t, uint64_t))
{
  v6 = *(a1 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v12 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a1, WitnessTable, v9);
  a3(v6, a2);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Inhabited<>.subscript.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a4@<X8>)
{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v9);
  v11 = sub_25F3058FC();
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v13, AssociatedTypeWitness);
  v11(v16, 0);
  return (*(v7 + 8))(v9, v6);
}

{
  v6 = *(a2 + 16);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v16[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v9);
  v11 = sub_25F3058FC();
  v13 = v12;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  (*(*(AssociatedTypeWitness - 8) + 16))(a4, v13, AssociatedTypeWitness);
  v11(v16, 0);
  return (*(v7 + 8))(v9, v6);
}

uint64_t Inhabited<>.subscript.getter(uint64_t a1, uint64_t a2, uint64_t a3)
{
  return sub_25F235E78(a1, a2, a3, MEMORY[0x277D83CE8]);
}

{
  v4 = *(a2 + 16);
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](a1);
  v7 = &v10 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  PredicatedWrapper.value.getter(a2, WitnessTable, v7);
  sub_25F3058EC();
  return (*(v5 + 8))(v7, v4);
}

void (*sub_25F235480(uint64_t **a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  if (MEMORY[0x277D84FD8])
  {
    v8 = swift_coroFrameAlloc();
  }

  else
  {
    v8 = malloc(0x28uLL);
  }

  *a1 = v8;
  v8[4] = sub_25F235510(v8, a2, a3, *(a4 - 8));
  return sub_25F1CC82C;
}

void (*sub_25F235510(uint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4))(void *a1)
{
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  *a1 = AssociatedTypeWitness;
  v8 = *(AssociatedTypeWitness - 8);
  a1[1] = v8;
  if (MEMORY[0x277D84FD8])
  {
    v9 = swift_coroFrameAlloc();
  }

  else
  {
    v9 = malloc(*(v8 + 64));
  }

  a1[2] = v9;
  Inhabited<>.subscript.getter(a2, a3, v9);
  return sub_25F1DC510;
}

uint64_t sub_25F23560C@<X0>(uint64_t a3@<X8>)
{
  swift_getAssociatedTypeWitness();
  v4 = sub_25F305C1C();
  v5 = *(*(v4 - 8) + 56);

  return v5(a3, 1, 1, v4);
}

uint64_t sub_25F2356A8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 - 8);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = *(AssociatedTypeWitness - 8);
  MEMORY[0x28223BE20](AssociatedTypeWitness);
  v9 = &v11 - v8;
  (*(v7 + 32))(&v11 - v8, a1, AssociatedTypeWitness);
  Inhabited<>.index(after:)(v9, a2, v5);
  return (*(v7 + 8))(v9, AssociatedTypeWitness);
}