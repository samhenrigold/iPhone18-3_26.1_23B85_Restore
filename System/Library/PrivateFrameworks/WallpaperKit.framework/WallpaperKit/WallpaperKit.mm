uint64_t sub_1E4A251B0(uint64_t a1, int a2)
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

uint64_t sub_1E4A251D0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 16))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A251F0(uint64_t result, int a2, int a3)
{
  if (a2)
  {
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

  *(result + 16) = v3;
  return result;
}

uint64_t sub_1E4A2523C@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA8A0();
  *a1 = result;
  a1[1] = v3;
  return result;
}

void *sub_1E4A25288@<X0>(void *result@<X0>, uint64_t a2@<X8>)
{
  *a2 = *result;
  *(a2 + 8) = 0;
  return result;
}

BOOL sub_1E4A252B4(void *a1, uint64_t *a2)
{
  v3 = *a2;
  v4 = *v2 & *a2;
  if (v4 != *a2)
  {
    *v2 |= v3;
  }

  *a1 = v3;
  return v4 != v3;
}

uint64_t sub_1E4A25364(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4AAA030();
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A25420(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = sub_1E4AAA030();
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A254D8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A255A4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A25678(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A25740(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A2582C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A258F4(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A259B8()
{
  v1 = type metadata accessor for WKFlatWallpaperPoster(0);
  v2 = *(*(v1 - 8) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 8) + 64);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    v5 = sub_1E4AAA1C0();
    (*(*(v5 - 8) + 8))(v0 + v3, v5);
  }

  else
  {
  }

  v6 = v0 + v3 + *(v1 + 20);
  sub_1E4A50630(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24), *(v6 + 32), *(v6 + 40), *(v6 + 48), *(v6 + 56), *(v6 + 64), *(v6 + 72), *(v6 + 80), *(v6 + 88), *(v6 + 96), *(v6 + 104), *(v6 + 112), *(v6 + 120), *(v6 + 128), *(v6 + 136), *(v6 + 144));

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4A25BD8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A25C34()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A25C90@<X0>(_BYTE *a2@<X8>)
{

  *a2 = 1;
  return result;
}

unint64_t sub_1E4A25D00@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E4A90298(MEMORY[0x1E69E7CC0]);
  *a1 = result;
  return result;
}

uint64_t sub_1E4A25D30(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 144);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a2)
    {
      v10 = v8;
      v11 = *(v9 + 48);
      v12 = a1 + *(a3 + 20);

      return v11(v12, a2, v10);
    }

    else
    {
      v13 = sub_1E4AA9FE0();
      v14 = *(*(v13 - 8) + 48);
      v15 = a1 + *(a3 + 28);

      return v14(v15, a2, v13);
    }
  }
}

uint64_t sub_1E4A25E58(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 144) = -a2;
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
    v9 = *(v8 - 8);
    if (*(v9 + 84) == a3)
    {
      v10 = v8;
      v11 = *(v9 + 56);
      v12 = v5 + *(a4 + 20);

      return v11(v12, a2, a2, v10);
    }

    else
    {
      v13 = sub_1E4AA9FE0();
      v14 = *(*(v13 - 8) + 56);
      v15 = v5 + *(a4 + 28);

      return v14(v15, a2, a2, v13);
    }
  }

  return result;
}

uint64_t sub_1E4A25F84()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A25FBC()
{
  v1 = *(type metadata accessor for WKPosterDynamicRotationState(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 24) & ~v2;
  v4 = *(v1 + 64);

  v5 = sub_1E4AAA030();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x1EEE6BDD0](v0, v3 + v4, v2 | 7);
}

uint64_t sub_1E4A26098(unsigned __int8 *a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 253)
  {
    v4 = *a1;
    if (v4 >= 3)
    {
      return v4 - 2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
    v9 = *(*(v8 - 8) + 48);
    v10 = &a1[*(a3 + 20)];

    return v9(v10, a2, v8);
  }
}

_BYTE *sub_1E4A2614C(_BYTE *result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 253)
  {
    *result = a2 + 2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E678, qword_1E4AB1DF0);
    v8 = *(*(v7 - 8) + 56);
    v9 = &v5[*(a4 + 20)];

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_1E4A261F8()
{
  sub_1E4A50630(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));

  return MEMORY[0x1EEE6BDD0](v0, 264, 15);
}

uint64_t sub_1E4A26300()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A26378()
{

  return MEMORY[0x1EEE6BDD0](v0, 40, 7);
}

uint64_t sub_1E4A263C0(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA030();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_1E4A2642C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4AAA030();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_1E4A2649C@<X0>(uint64_t *a1@<X8>)
{
  result = WKWallpaperAdjustmentTraitOffset.screenScaleMode.getter();
  *a1 = result;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4A264D8(uint64_t *a1)
{
  v1 = *a1;
  v2 = a1[1];

  return WKWallpaperAdjustmentTraitOffset.screenScaleMode.setter(v1, v2);
}

uint64_t sub_1E4A26524()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A265D0(float64x2_t *a1)
{
  v1 = a1[5];
  v2 = a1[7];
  v17 = a1[6];
  v18 = v2;
  v3 = a1[7];
  v19 = a1[8];
  v4 = a1[1];
  v5 = a1[3];
  v13 = a1[2];
  v14 = v5;
  v6 = a1[3];
  v7 = a1[5];
  v15 = a1[4];
  v16 = v7;
  v8 = a1[1];
  v12[0] = *a1;
  v12[1] = v8;
  v11[6] = v17;
  v11[7] = v3;
  v11[8] = a1[8];
  v11[2] = v13;
  v11[3] = v6;
  v11[4] = v15;
  v11[5] = v1;
  v11[0] = v12[0];
  v11[1] = v4;
  sub_1E4A49D24(v12, &v10);
  return sub_1E4A74D30(v11);
}

uint64_t sub_1E4A2665C()
{
  swift_weakDestroy();

  return MEMORY[0x1EEE6BDD0](v0, 24, 7);
}

uint64_t sub_1E4A266A4()
{

  return MEMORY[0x1EEE6BDD0](v0, 25, 7);
}

uint64_t sub_1E4A26710(uint64_t *a1)
{
  v2 = *a1;

  return sub_1E4A74BA0(&v2);
}

uint64_t sub_1E4A26780(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26848(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A26910(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 144);
    if (v4 > 1)
    {
      return (v4 ^ 0xFF) + 1;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    v8 = sub_1E4AA9FE0();
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 24);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_1E4A269B4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 144) = -a2;
  }

  else
  {
    v7 = sub_1E4AA9FE0();
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 24);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

double sub_1E4A26ABC@<D0>(_OWORD *a1@<X8>)
{
  sub_1E4A6FB3C();
  sub_1E4AAA330();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_1E4A26B58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8EC60, &qword_1E4AB4600);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E4A26BC0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26C8C(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

__n128 sub_1E4A26D84@<Q0>(_OWORD *a1@<X8>)
{
  sub_1E4A53380();
  sub_1E4AAA330();
  a1[6] = v9;
  a1[7] = v10;
  a1[8] = v11;
  a1[2] = v5;
  a1[3] = v6;
  a1[4] = v7;
  a1[5] = v8;
  result = v4;
  *a1 = v3;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E4A26DF8()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x1EEE6BDD0](v0, 57, 7);
}

uint64_t sub_1E4A26E30@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E4AAA2F0();
  *a1 = result;
  return result;
}

uint64_t sub_1E4A26F2C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 24) + 24);
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A26FF8(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 24) + 24) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A270C8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v7 = *(v6 - 8);
  if (*(v7 + 84) == a2)
  {
    v8 = *(v7 + 48);

    return v8(a1, a2, v6);
  }

  else
  {
    v10 = *(a1 + *(a3 + 28));
    if (v10 >= 0xFFFFFFFF)
    {
      LODWORD(v10) = -1;
    }

    return (v10 + 1);
  }
}

uint64_t sub_1E4A27190(uint64_t a1, uint64_t a2, int a3, uint64_t a4)
{
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF8E6F0, qword_1E4AAED40);
  v9 = *(result - 8);
  if (*(v9 + 84) == a3)
  {
    v10 = *(v9 + 56);

    return v10(a1, a2, a2, result);
  }

  else
  {
    *(a1 + *(a4 + 28)) = (a2 - 1);
  }

  return result;
}

uint64_t sub_1E4A27260()
{
  sub_1E4AA650C(*(v0 + 16), *(v0 + 24));
  sub_1E4A50630(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160), *(v0 + 168), *(v0 + 176));
  sub_1E4AA6518(*(v0 + 184), *(v0 + 192));

  return MEMORY[0x1EEE6BDD0](v0, 201, 15);
}

uint64_t sub_1E4A2732C(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_1E4A27344(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

void sub_1E4A2EB8C(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void OUTLINED_FUNCTION_2(void *a1, NSObject *a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, a2, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_3(void *a1, uint64_t a2, uint64_t a3, const char *a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, ...)
{
  va_start(va, a8);

  _os_log_error_impl(a1, v8, OS_LOG_TYPE_ERROR, a4, va, 0x16u);
}

void OUTLINED_FUNCTION_4(void *a1, uint64_t a2, os_log_t log, const char *a4, ...)
{
  va_start(va, a4);

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, va, 0x20u);
}

void sub_1E4A2F7B4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A31194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

id WKLogicalScreenClassString()
{
  v0 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v0 _referenceBounds];
  v2 = v1;
  v4 = v3;

  v5 = [MEMORY[0x1E69DC938] currentDevice];
  v6 = [v5 sf_deviceSupportsDisplayZoom];

  if (v6)
  {
    v2 = WKStandardDisplayModeScreenSize(v7, v8);
    v4 = v9;
  }

  v10 = MGCopyAnswer();
  v11 = MEMORY[0x1E696AEC0];
  v12 = MEMORY[0x1E696AD98];
  v13 = [MEMORY[0x1E69DCEB0] mainScreen];
  [v13 scale];
  v14 = [v12 numberWithDouble:?];
  v15 = [v10 lowercaseString];
  v16 = [v11 stringWithFormat:@"%.0fw-%.0fh@%@x~%@", *&v2, v4, v14, v15];

  return v16;
}

double WKStandardDisplayModeScreenSize(uint64_t a1, uint64_t a2)
{
  if (WKStandardDisplayModeScreenSize_onceToken != -1)
  {
    WKStandardDisplayModeScreenSize_cold_1();
  }

  return *&WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0;
}

uint64_t WKSupportsLiveWallpapers()
{
  if (MGGetBoolAnswer())
  {
    return 1;
  }

  v1 = [MEMORY[0x1E69DC938] currentDevice];
  v2 = [v1 sf_isiPad];

  if (v2)
  {
    return 0;
  }

  return MGGetBoolAnswer();
}

void __WKStandardDisplayModeScreenSize_block_invoke()
{
  v19 = MGCopyAnswer();
  v0 = [v19 objectForKeyedSubscript:@"default"];
  if ([v0 count] == 4)
  {
    v1 = [v0 objectAtIndexedSubscript:1];
    [v1 floatValue];
    v3 = v2;
    v4 = v2;

    v5 = [v0 objectAtIndexedSubscript:3];
    [v5 floatValue];
    v7 = v6;
    v8 = v6;

    v9 = [MEMORY[0x1E69DC938] currentDevice];
    v10 = [v9 sf_isiPad];
    v11 = v3 > v7;

    if ((v10 & v11) != 0)
    {
      *&v12 = v4;
    }

    else
    {
      *&v12 = v8;
    }

    if ((v10 & v11) != 0)
    {
      *&v13 = v8;
    }

    else
    {
      *&v13 = v4;
    }

    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0 = v13;
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1 = v12;
  }

  else
  {
    v13 = WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0;
    v12 = WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1;
  }

  if (*&v13 == *MEMORY[0x1E695F060] && *&v12 == *(MEMORY[0x1E695F060] + 8))
  {
    v15 = [MEMORY[0x1E69DCEB0] mainScreen];
    v16 = [v15 fixedCoordinateSpace];
    [v16 bounds];
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_0 = v17;
    WKStandardDisplayModeScreenSize_standardDisplayModeScreenSize_1 = v18;
  }
}

id WKWallpapersBaseURL(uint64_t a1)
{
  if (WKWallpapersBaseURL_onceToken != -1)
  {
    WKWallpapersBaseURL_cold_1();
  }

  v2 = WKWallpapersBaseURL_baseURL;

  return v2;
}

void __WKWallpapersBaseURL_block_invoke()
{
  v3 = v0 = @"/Library/Wallpaper";
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v2 = WKWallpapersBaseURL_baseURL;
  WKWallpapersBaseURL_baseURL = v1;
}

id WKAppleInternalWallpapersBaseURL()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  v1 = [v0 sf_isInternalInstall];

  if (v1)
  {
    if (WKAppleInternalWallpapersBaseURL_onceToken != -1)
    {
      WKAppleInternalWallpapersBaseURL_cold_1();
    }

    v2 = WKAppleInternalWallpapersBaseURL_baseURL;
  }

  else
  {
    v2 = 0;
  }

  return v2;
}

void __WKAppleInternalWallpapersBaseURL_block_invoke()
{
  v3 = v0 = @"/AppleInternal/Library/Wallpaper";
  v1 = [MEMORY[0x1E695DFF8] fileURLWithPath:v3];
  v2 = WKAppleInternalWallpapersBaseURL_baseURL;
  WKAppleInternalWallpapersBaseURL_baseURL = v1;
}

double WKRotationDegreesForInterfaceOrientation(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0.0;
    case 3:
      return 90.0;
    case 4:
      return -90.0;
  }

  result = 180.0;
  if (a1 != 2)
  {
    return 0.0;
  }

  return result;
}

double WKRotationRadiansForInterfaceOrientation(uint64_t a1)
{
  switch(a1)
  {
    case 1:
      return 0.0;
    case 3:
      return 1.57079633;
    case 4:
      return -1.57079633;
  }

  result = 3.14159265;
  if (a1 != 2)
  {
    return 0.0;
  }

  return result;
}

__CFString *WKStringForInterfaceOrientation(uint64_t a1)
{
  v1 = @"UIInterfaceOrientationLandscapeRight";
  v2 = @"UIInterfaceOrientationLandscapeLeft";
  v3 = @"UIInterfaceOrientationPortraitUpsideDown";
  if (a1 != 2)
  {
    v3 = 0;
  }

  if (a1 != 4)
  {
    v2 = v3;
  }

  if (a1 != 3)
  {
    v1 = v2;
  }

  if (a1 == 1)
  {
    return @"UIInterfaceOrientationPortrait";
  }

  else
  {
    return v1;
  }
}

void WKSetApplicationSpecificInformation(void *a1)
{
  v3 = a1;
  v1 = strdup([v3 UTF8String]);
  v2 = qword_1EE0441D0;
  qword_1EE0441D0 = v1;
  if (v2)
  {
    free(v2);
  }
}

double WKPosterCanvasSize()
{
  v0 = [MEMORY[0x1E69DC938] currentDevice];
  if ([v0 userInterfaceIdiom])
  {
    v1 = 119.0;
  }

  else
  {
    v1 = 64.0;
  }

  v2 = [MEMORY[0x1E69DCEB0] mainScreen];
  v3 = [v2 fixedCoordinateSpace];
  [v3 bounds];
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v11 = v10;

  v16.origin.x = v5;
  v16.origin.y = v7;
  v16.size.width = v9;
  v16.size.height = v11;
  Height = CGRectGetHeight(v16);
  v13 = Height * Height;
  v17.origin.x = v5;
  v17.origin.y = v7;
  v17.size.width = v9;
  v17.size.height = v11;
  Width = CGRectGetWidth(v17);
  return round(sqrt(v13 + Width * Width)) + v1 * 2.0;
}

__CFString *WKCurrentScreenScaleMode(uint64_t a1, uint64_t a2)
{
  v2 = WKStandardDisplayModeScreenSize(a1, a2);
  v4 = v3;
  v5 = [MEMORY[0x1E69DCEB0] mainScreen];
  v6 = [v5 fixedCoordinateSpace];
  [v6 bounds];
  v8 = v7;
  v10 = v9;

  v11 = [MEMORY[0x1E69DC938] currentDevice];
  if (![v11 sf_deviceSupportsDisplayZoom])
  {

    return @"screenScaleModeStandard";
  }

  if (v2 == v8 && v4 == v10)
  {
    return @"screenScaleModeStandard";
  }

  if (v10 < v4 && v8 < v2)
  {
    return @"screenScaleModeZoomed";
  }

  else
  {
    return @"screenScaleModeMoreSpace";
  }
}

void sub_1E4A35194(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t WKWallpaperTypeFromString(void *a1)
{
  v1 = a1;
  if ([v1 isEqualToString:@"Still"])
  {
    v2 = 0;
  }

  else if ([v1 isEqualToString:@"Live"])
  {
    v2 = 1;
  }

  else if ([v1 isEqualToString:@"Thumbnail"])
  {
    v2 = 2;
  }

  else if ([v1 isEqualToString:@"LayeredThumbnail"])
  {
    v2 = 3;
  }

  else if ([v1 isEqualToString:@"LayeredStill"])
  {
    v2 = 4;
  }

  else if ([v1 isEqualToString:@"LayeredStripe"])
  {
    v2 = 5;
  }

  else if ([v1 isEqualToString:@"Bokeh"])
  {
    v2 = 6;
  }

  else if ([v1 isEqualToString:@"LayeredAnimation"])
  {
    v2 = 7;
  }

  else if ([v1 isEqualToString:@"ParameterizedCA"])
  {
    v2 = 8;
  }

  else
  {
    v3 = MEMORY[0x1E695DF30];
    v4 = *MEMORY[0x1E695D940];
    v5 = [MEMORY[0x1E696AEC0] stringWithFormat:@"%s: Unable to resolve wallpaper type from string: '%@'", "WKWallpaperType WKWallpaperTypeFromString(NSString *__strong _Nonnull)", v1];
    v6 = [v3 exceptionWithName:v4 reason:v5 userInfo:0];

    [v6 raise];
    v2 = -1;
  }

  return v2;
}

__CFString *WKStringFromWallpaperType(unint64_t a1)
{
  if (a1 < 9)
  {
    return off_1E8766E18[a1];
  }

  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v6 = [v4 stringWithFormat:@"%s: Unknown wallpaper type value: '%@'", "NSString * _Nonnull WKStringFromWallpaperType(WKWallpaperType)", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];

  [v7 raise];
  return 0;
}

__CFString *WKStringFromWallpaperBackingType(uint64_t a1)
{
  if (!a1)
  {
    return @"File";
  }

  if (a1 == 1)
  {
    return @"Value";
  }

  v2 = MEMORY[0x1E695DF30];
  v3 = *MEMORY[0x1E695D940];
  v4 = MEMORY[0x1E696AEC0];
  v5 = [MEMORY[0x1E696AD98] numberWithUnsignedInteger:a1];
  v6 = [v4 stringWithFormat:@"%s: Invalid backing type value: '%@'", "NSString * _Nonnull WKStringFromWallpaperBackingType(WKWallpaperBackingType)", v5];
  v7 = [v2 exceptionWithName:v3 reason:v6 userInfo:0];

  [v7 raise];
  return 0;
}

id WK_LocalizedString(void *a1)
{
  v1 = a1;
  v2 = WKBundleForWallpaperKitFramework(v1);
  v3 = [v2 localizedStringForKey:v1 value:0 table:0];

  return v3;
}

id WKBundleForWallpaperKitFramework(uint64_t a1)
{
  if (WKBundleForWallpaperKitFramework_onceToken != -1)
  {
    WKBundleForWallpaperKitFramework_cold_1();
  }

  v2 = WKBundleForWallpaperKitFramework__wallpaperKitFrameworkBundle;

  return v2;
}

uint64_t __WKBundleForWallpaperKitFramework_block_invoke(uint64_t a1, uint64_t a2)
{
  WKBundleForWallpaperKitFramework__wallpaperKitFrameworkBundle = [MEMORY[0x1E696AAE8] bundleForClass:objc_opt_class()];

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4A36C00(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, id location)
{
  objc_destroyWeak((v18 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A37C0C(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, id location)
{
  objc_destroyWeak((v16 + 48));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

uint64_t OUTLINED_FUNCTION_0_1@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *(a2 + 4) = a3;
  *(a2 + 12) = 2114;
  *(a2 + 14) = result;
  return result;
}

void OUTLINED_FUNCTION_1_0(void *a1, int a2, os_log_t log, const char *a4, uint8_t *a5)
{

  _os_log_error_impl(a1, log, OS_LOG_TYPE_ERROR, a4, a5, 0x16u);
}

void WKRectApplyScale(CGFloat a1, CGFloat a2, CGFloat a3, CGFloat a4, CGFloat a5)
{
  memset(&v10, 0, sizeof(v10));
  CGAffineTransformMakeScale(&v10, a5, a5);
  v9 = v10;
  v11.origin.x = a1;
  v11.origin.y = a2;
  v11.size.width = a3;
  v11.size.height = a4;
  CGRectApplyAffineTransform(v11, &v9);
}

BOOL WKSizeGreaterThanOrEqualToSize(double a1, double a2, double a3, double a4)
{
  v4 = vabdd_f64(a1, a3);
  if (a1 <= a3 && v4 >= 2.22044605e-16)
  {
    return 0;
  }

  v6 = vabdd_f64(a2, a4) < 2.22044605e-16;
  return a2 > a4 || v6;
}

void sub_1E4A391B0(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A3C434(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A3F234(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A41308(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A41D50(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20, uint64_t a21, uint64_t a22, uint64_t a23, id location)
{
  objc_destroyWeak((v25 + 48));
  objc_destroyWeak((v24 + 56));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A42C24(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, id location, ...)
{
  va_start(va, location);
  objc_destroyWeak(&location);
  _Block_object_dispose(va, 8);
  _Unwind_Resume(a1);
}

uint64_t __Block_byref_object_copy_(uint64_t result, uint64_t a2)
{
  *(result + 40) = *(a2 + 40);
  *(a2 + 40) = 0;
  return result;
}

void sub_1E4A42E14(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A438E4(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

void sub_1E4A43CD0(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void sub_1E4A43FDC(_Unwind_Exception *a1, int a2, int a3, int a4, int a5, int a6, int a7, int a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, id location)
{
  objc_destroyWeak((v14 + 32));
  objc_destroyWeak(&location);
  _Unwind_Resume(a1);
}

void *OUTLINED_FUNCTION_1_1(void *result)
{
  result[13] = 1;
  result[4] = 0;
  result[5] = 0;
  result[6] = 0;
  result[7] = 0x3FF0000000000000;
  return result;
}

id WKLogForCategory(unint64_t a1)
{
  if (a1 >= 0xA)
  {
    WKLogForCategory_cold_2();
  }

  if (WKLogForCategory_loggingToken != -1)
  {
    WKLogForCategory_cold_1();
  }

  v2 = WKLogForCategory_logObjects[a1];

  return v2;
}

uint64_t __WKLogForCategory_block_invoke()
{
  v0 = os_log_create("com.apple.WallpaperKit", "Base");
  v1 = WKLogForCategory_logObjects[0];
  WKLogForCategory_logObjects[0] = v0;

  v2 = os_log_create("com.apple.WallpaperKit", "Import");
  v3 = qword_1EE048AB0;
  qword_1EE048AB0 = v2;

  v4 = os_log_create("com.apple.WallpaperKit", "DefaultWallpaper");
  v5 = qword_1EE048AB8;
  qword_1EE048AB8 = v4;

  v6 = os_log_create("com.apple.WallpaperKit", "Processing");
  v7 = qword_1EE048AC0;
  qword_1EE048AC0 = v6;

  v8 = os_log_create("com.apple.WallpaperKit", "Collections");
  v9 = qword_1EE048AC8;
  qword_1EE048AC8 = v8;

  v10 = os_log_create("com.apple.WallpaperKit", "PerformanceSignposts");
  v11 = qword_1EE048AD0;
  qword_1EE048AD0 = v10;

  v12 = os_log_create("com.apple.WallpaperKit", "Migration");
  v13 = qword_1EE048AD8;
  qword_1EE048AD8 = v12;

  v14 = os_log_create("com.apple.WallpaperKit", "SystemShellWallpaperManager");
  v15 = qword_1EE048AE0;
  qword_1EE048AE0 = v14;

  v16 = os_log_create("com.apple.WallpaperKit", "WallpaperManager");
  v17 = qword_1EE048AE8;
  qword_1EE048AE8 = v16;

  qword_1EE048AF0 = os_log_create("com.apple.WallpaperKit", "PhotoLibraryManager");

  return MEMORY[0x1EEE66BB8]();
}

void sub_1E4A452FC(_Unwind_Exception *a1)
{
  objc_destroyWeak((v1 + 40));
  objc_destroyWeak((v2 - 40));
  _Unwind_Resume(a1);
}

uint64_t WKBokehWallpaper.wallpaperValue.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 3;
  return result;
}

uint64_t WKBokehWallpaper.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKBokehWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKBokehWallpaper.init(identifier:name:backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t *a8@<X8>, double a9@<D0>, double a10@<D1>)
{
  v16 = objc_allocWithZone(WKBokehWallpaper);
  v17 = sub_1E4AAA870();

  sub_1E4A459A0();
  v18 = sub_1E4AAA940();

  v19 = sub_1E4AAA940();

  v20 = [v16 initWithIdentifier:a1 name:v17 backgroundColors:v18 bubbleColors:v19 bubbleCount:a6 bubbleScale:a7 parallaxMultiplier:a9 thumbnailSeed:a10];

  type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v20;
  *a8 = result;
  return result;
}

unint64_t sub_1E4A459A0()
{
  result = qword_1EE042130;
  if (!qword_1EE042130)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042130);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WKBokehWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKBokehWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t sub_1E4A45B5C()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1E4A45B94@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) wallpaperValue];
  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  *(a1 + 8) = 3;
  return result;
}

uint64_t sub_1E4A45CA4()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4AAA810();

  return v3;
}

uint64_t sub_1E4A45D30@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id sub_1E4A45DD8()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

id sub_1E4A45E14@<X0>(void *a1@<X8>)
{
  result = [*(*v1 + 16) identifier];
  *a1 = result;
  return result;
}

uint64_t WKBokehWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKBokehWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A45F5C()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A45FBC()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t sub_1E4A4600C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4AAAE00();
  v3 = *(v2 + 16);
  v4 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v4);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A46074(SEL *a1)
{
  v2 = [*(*v1 + 16) *a1];
  v3 = sub_1E4AAA8A0();

  return v3;
}

unint64_t sub_1E4A460D0(uint64_t a1)
{
  result = sub_1E4A460F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A460F8()
{
  result = qword_1EE043290[0];
  if (!qword_1EE043290[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE043290);
  }

  return result;
}

uint64_t sub_1E4A46168(uint64_t a1, uint64_t a2, SEL *a3)
{
  v4 = [*(*v3 + 16) *a3];
  v5 = sub_1E4AAA8A0();

  return v5;
}

uint64_t *__swift_initWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithCopy_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t *__swift_assignWithTake_strong(uint64_t *a1, uint64_t *a2)
{
  *a1 = *a2;

  return a1;
}

uint64_t getEnumTagSinglePayload for WKBokehWallpaper(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 8))
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

uint64_t storeEnumTagSinglePayload for WKBokehWallpaper(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 8) = 1;
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

    *(result + 8) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy32_8(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

uint64_t sub_1E4A46318(uint64_t result, int a2, int a3)
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

uint64_t initializeBufferWithCopyOfBuffer for WKPosterEnvironmentSnapshot(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

__n128 __swift_memcpy32_16(_OWORD *a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *a1 = *a2;
  a1[1] = v3;
  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_1E4A4642C(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF30, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE1A0);

  return MEMORY[0x1EEDC6AD0](a1, v2);
}

uint64_t sub_1E4A46498(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF30, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE1A0);

  return MEMORY[0x1EEDC6AC0](a1, v2);
}

uint64_t sub_1E4A46508(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);

  return MEMORY[0x1EEDC3B70](a1, v2);
}

uint64_t sub_1E4A465F4(uint64_t a1, id *a2)
{
  v3 = sub_1E4AAA890();
  *a2 = 0;
  return v3 & 1;
}

void sub_1E4A46674(uint64_t *a2@<X8>)
{
  sub_1E4AAA8A0();
  v3 = sub_1E4AAA870();

  *a2 = v3;
}

uint64_t sub_1E4A466B8()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A4672C(uint64_t a1)
{
  v2 = *v1;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v2);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A46780(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);

  return MEMORY[0x1EEDC3BE0](a1, v2);
}

uint64_t sub_1E4A467EC(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);

  return MEMORY[0x1EEDC3B98](a1, v2);
}

uint64_t sub_1E4A46858(void *a1, uint64_t a2)
{
  v4 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);
  v5 = a1;

  return MEMORY[0x1EEDC3B88](v5, a2, v4);
}

uint64_t sub_1E4A4690C(uint64_t a1, uint64_t a2)
{
  v4 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);

  return MEMORY[0x1EEDC3BC8](a1, a2, v4);
}

uint64_t sub_1E4A46988(uint64_t a1, uint64_t a2, uint64_t a3)
{
  sub_1E4AAAE00();
  sub_1E4AAA840();
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A469E8(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation, &unk_1E4AAE52C);
  v3 = sub_1E4A46C2C(&unk_1ECF8DF78, type metadata accessor for WKWallpaperLocation, &unk_1E4AAE360);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4A46AA4(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance, &unk_1E4AAE570);
  v3 = sub_1E4A46C2C(&qword_1ECF8DF88, type metadata accessor for WKWallpaperAppearance, &unk_1E4AAE24C);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

uint64_t sub_1E4A46B60(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1E4A46C2C(&qword_1ECF8DF68, type metadata accessor for WKWallpaperKitError, &unk_1E4AAE5B4);

  return MEMORY[0x1EEDC3BA8](a1, a2, a3, v6);
}

uint64_t sub_1E4A46C2C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_1E4A46FEC()
{
  result = qword_1ECF8DF58;
  if (!qword_1ECF8DF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8DF58);
  }

  return result;
}

uint64_t sub_1E4A470D0(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8E050, type metadata accessor for WKWallpaperRepresentingLogicalScreenClass, &unk_1E4AAE80C);
  v3 = sub_1E4A46C2C(&qword_1ECF8E058, type metadata accessor for WKWallpaperRepresentingLogicalScreenClass, &unk_1E4AAE7AC);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1E4A4718C(uint64_t *a2@<X8>)
{
  v3 = sub_1E4AAA870();

  *a2 = v3;
}

uint64_t sub_1E4A471D4(uint64_t a1)
{
  v2 = sub_1E4A46C2C(&qword_1ECF8E040, type metadata accessor for WKWallpaperKitDataKey, &unk_1E4AAE9B0);
  v3 = sub_1E4A46C2C(&qword_1ECF8E048, type metadata accessor for WKWallpaperKitDataKey, &unk_1E4AAE904);
  v4 = MEMORY[0x1E69E6168];

  return MEMORY[0x1EEE6ABA0](a1, v2, v3, v4);
}

void sub_1E4A472CC(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v5)
    {
      atomic_store(ForeignTypeMetadata, a2);
    }
  }
}

uint64_t sub_1E4A473A8()
{
  v0 = sub_1E4AAA8A0();
  v1 = MEMORY[0x1E691ECE0](v0);

  return v1;
}

double sub_1E4A473E4(uint64_t a1)
{
  sub_1E4AAA8A0();
  sub_1E4AAA8C0();

  return result;
}

uint64_t sub_1E4A47438(uint64_t a1)
{
  sub_1E4AAA8A0();
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v1 = sub_1E4AAAE40();

  return v1;
}

uint64_t sub_1E4A474AC(void *a1, uint64_t *a2)
{
  v2 = sub_1E4AAA8A0();
  v4 = v3;
  if (v2 == sub_1E4AAA8A0() && v4 == v5)
  {
    v7 = 1;
  }

  else
  {
    v7 = sub_1E4AAADA0();
  }

  return v7 & 1;
}

void *sub_1E4A476B4()
{
  v1 = [v0 elements];
  if (!v1)
  {
    goto LABEL_30;
  }

  v2 = v1;
  v3 = sub_1E4AAA950();

  v4 = *(v3 + 16);
  if (!v4)
  {

    v5 = 0;
    v8 = MEMORY[0x1E69E7CC8];
LABEL_25:
    sub_1E4A27344(v5, 0);
    return v8;
  }

  v5 = 0;
  v6 = 0;
  v7 = v3 + 32;
  v8 = MEMORY[0x1E69E7CC8];
  v27 = *(v3 + 16);
  v28 = v3;
  while (v6 < *(v3 + 16))
  {
    sub_1E4A479C0(v7, &v30);
    sub_1E4A47A2C(0, &qword_1EE0421E8, 0x1E69794F0);
    if (swift_dynamicCast())
    {
      v12 = [v29 target];
      if (!v12)
      {
        goto LABEL_29;
      }

      v13 = v12;
      sub_1E4A27344(v5, 0);
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v30 = v8;
      v16 = sub_1E4A8F224(v13);
      v17 = v8[2];
      v18 = (v15 & 1) == 0;
      v19 = v17 + v18;
      if (__OFADD__(v17, v18))
      {
        goto LABEL_27;
      }

      v20 = v15;
      if (v8[3] >= v19)
      {
        if (isUniquelyReferenced_nonNull_native)
        {
          v8 = v30;
          if ((v15 & 1) == 0)
          {
            goto LABEL_18;
          }
        }

        else
        {
          sub_1E4A6782C();
          v8 = v30;
          if ((v20 & 1) == 0)
          {
            goto LABEL_18;
          }
        }
      }

      else
      {
        sub_1E4A6570C(v19, isUniquelyReferenced_nonNull_native);
        sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
        v21 = sub_1E4A8F224(v13);
        if ((v20 & 1) != (v22 & 1))
        {
          goto LABEL_31;
        }

        v16 = v21;
        v8 = v30;
        if ((v20 & 1) == 0)
        {
LABEL_18:
          v8[(v16 >> 6) + 8] |= 1 << v16;
          *(v8[6] + 8 * v16) = v13;
          *(v8[7] + 8 * v16) = MEMORY[0x1E69E7CC0];
          v23 = v8[2];
          v24 = __OFADD__(v23, 1);
          v25 = v23 + 1;
          if (v24)
          {
            goto LABEL_28;
          }

          v8[2] = v25;
          v9 = v13;
        }
      }

      v10 = (v8[7] + 8 * v16);
      v11 = v29;
      MEMORY[0x1E691ED00]();
      if (*((*v10 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((*v10 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E4AAA960();
      }

      sub_1E4AAA970();

      v5 = sub_1E4A47A1C;
      v4 = v27;
      v3 = v28;
    }

    ++v6;
    v7 += 32;
    if (v4 == v6)
    {

      goto LABEL_25;
    }
  }

  __break(1u);
LABEL_27:
  __break(1u);
LABEL_28:
  __break(1u);
LABEL_29:
  __break(1u);
LABEL_30:
  __break(1u);
LABEL_31:
  result = sub_1E4AAADB0();
  __break(1u);
  return result;
}

uint64_t sub_1E4A479C0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E4A47A2C(uint64_t a1, unint64_t *a2, void *a3)
{
  result = *a2;
  if (!*a2)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, a2);
  }

  return result;
}

uint64_t sub_1E4A47AF8@<X0>(SEL *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E4AA9FC0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E4AA9FE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t WKLayeredStillWallpaperInput.init(backgroundThumbnailImageURL:foregroundThumbnailImageURL:floatingThumbnailImageURL:backgroundFullSizeImageURL:foregroundFullSizeImageURL:floatingFullSizeImageURL:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>)
{
  v55 = a6;
  v56 = a5;
  v54 = a7;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v14 = &v47 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v12);
  v17 = &v47 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - v19;
  v21 = MEMORY[0x1EEE9AC00](v18);
  v23 = &v47 - v22;
  v24 = MEMORY[0x1EEE9AC00](v21);
  v26 = &v47 - v25;
  MEMORY[0x1EEE9AC00](v24);
  v28 = &v47 - v27;
  v53 = a1;
  sub_1E4A48054(a1, &v47 - v27);
  v52 = a2;
  sub_1E4A48054(a2, v26);
  v51 = a3;
  sub_1E4A48054(a3, v23);
  v50 = a4;
  v48 = v20;
  sub_1E4A48054(a4, v20);
  v29 = v17;
  sub_1E4A48054(v56, v17);
  v49 = v14;
  sub_1E4A48054(v55, v14);
  v30 = sub_1E4AA9FE0();
  v31 = *(v30 - 8);
  v32 = *(v31 + 48);
  v33 = 0;
  if (v32(v28, 1, v30) != 1)
  {
    v33 = sub_1E4AA9FA0();
    (*(v31 + 8))(v28, v30);
  }

  if (v32(v26, 1, v30) == 1)
  {
    v47 = 0;
  }

  else
  {
    v47 = sub_1E4AA9FA0();
    (*(v31 + 8))(v26, v30);
  }

  v34 = v29;
  v35 = v32(v23, 1, v30);
  v36 = v48;
  if (v35 == 1)
  {
    v37 = 0;
  }

  else
  {
    v37 = sub_1E4AA9FA0();
    (*(v31 + 8))(v23, v30);
  }

  if (v32(v36, 1, v30) == 1)
  {
    v38 = 0;
  }

  else
  {
    v38 = sub_1E4AA9FA0();
    (*(v31 + 8))(v36, v30);
  }

  v39 = v33;
  if (v32(v34, 1, v30) == 1)
  {
    v40 = 0;
  }

  else
  {
    v40 = sub_1E4AA9FA0();
    (*(v31 + 8))(v34, v30);
  }

  v41 = v49;
  if (v32(v49, 1, v30) == 1)
  {
    v42 = 0;
  }

  else
  {
    v42 = sub_1E4AA9FA0();
    (*(v31 + 8))(v41, v30);
  }

  v43 = objc_allocWithZone(WKLayeredStillWallpaperInput);
  v44 = v47;
  v45 = [v43 initWithBackgroundThumbnailImageURL:v39 foregroundThumbnailImageURL:v47 floatingThumbnailImageURL:v37 backgroundFullSizeImageURL:v38 foregroundFullSizeImageURL:v40 floatingFullSizeImageURL:v42];

  sub_1E4A480C4(v55);
  sub_1E4A480C4(v56);
  sub_1E4A480C4(v50);
  sub_1E4A480C4(v51);
  sub_1E4A480C4(v52);
  sub_1E4A480C4(v53);
  type metadata accessor for WKLayeredStillWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v45;
  *v54 = result;
  return result;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContext2();
    *a1 = result;
  }

  return result;
}

uint64_t sub_1E4A48054(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A480C4(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t WKLayeredStillWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLayeredStillWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKLayeredStillWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A48290()
{
  result = qword_1ECF8E1E0;
  if (!qword_1ECF8E1E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E1E0);
  }

  return result;
}

uint64_t sub_1E4A482E4()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

uint64_t type metadata accessor for WKPosterDynamicRotationAnimationState(uint64_t a1)
{
  result = qword_1EE042638;
  if (!qword_1EE042638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A483C4(uint64_t a1)
{
  sub_1E4AAA030();
  if (v1 <= 0x3F)
  {
    type metadata accessor for UIInterfaceOrientation(319);
    if (v2 <= 0x3F)
    {
      sub_1E4A48474();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

unint64_t sub_1E4A48474()
{
  result = qword_1EE0421A0;
  if (!qword_1EE0421A0)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE0421A0);
  }

  return result;
}

_BYTE *WKPosterUnlockState.init(screenState:progress:)@<X0>(_BYTE *result@<X0>, uint64_t a2@<X8>, double a3@<D0>)
{
  *a2 = *result;
  *(a2 + 8) = a3;
  return result;
}

double sub_1E4A48550@<D0>(void *a1@<X0>, _BYTE *a2@<X1>, double *a3@<X2>, uint64_t a4@<X8>)
{
  if (*a1 != -1)
  {
    v5 = a2;
    v6 = a3;
    v7 = a4;
    swift_once();
    a2 = v5;
    a4 = v7;
    a3 = v6;
  }

  result = *a3;
  *a4 = *a2;
  *(a4 + 8) = result;
  return result;
}

uint64_t WKPosterUnlockState.ScreenState.description.getter()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

uint64_t sub_1E4A486B0()
{
  v1 = 0x64656B636F6C6E75;
  if (*v0 != 1)
  {
    v1 = 0x697469736E617274;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 0x64656B636F6CLL;
  }
}

unint64_t WKPosterUnlockState.description.getter()
{
  v1 = *v0;
  sub_1E4AAABC0();

  v2 = 0xE800000000000000;
  v3 = 0x64656B636F6C6E75;
  if (v1 != 1)
  {
    v3 = 0x697469736E617274;
    v2 = 0xED0000676E696E6FLL;
  }

  if (v1)
  {
    v4 = v3;
  }

  else
  {
    v4 = 0x64656B636F6CLL;
  }

  if (v1)
  {
    v5 = v2;
  }

  else
  {
    v5 = 0xE600000000000000;
  }

  MEMORY[0x1E691ECA0](v4, v5);

  MEMORY[0x1E691ECA0](0x6572676F7270202CLL, 0xEC000000203A7373);
  v6 = sub_1E4AAA990();
  MEMORY[0x1E691ECA0](v6);

  MEMORY[0x1E691ECA0](125, 0xE100000000000000);
  return 0xD000000000000023;
}

uint64_t WKPosterUnlockState.ScreenState.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A488BC()
{
  v1 = *v0;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A48904(uint64_t a1)
{
  v2 = *v1;
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v2);
  return sub_1E4AAAE40();
}

uint64_t WKPosterUnlockState.hash(into:)()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t WKPosterUnlockState.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v1);
  v3 = 0.0;
  if (v2 != 0.0)
  {
    v3 = v2;
  }

  MEMORY[0x1E691F200](*&v3);
  return sub_1E4AAAE40();
}

uint64_t sub_1E4A48A04()
{
  v1 = v0[1];
  MEMORY[0x1E691F1E0](*v0);
  v2 = 0.0;
  if (v1 != 0.0)
  {
    v2 = v1;
  }

  return MEMORY[0x1E691F200](*&v2);
}

uint64_t sub_1E4A48A50(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  sub_1E4AAAE00();
  MEMORY[0x1E691F1E0](v2);
  v4 = 0.0;
  if (v3 != 0.0)
  {
    v4 = v3;
  }

  MEMORY[0x1E691F200](*&v4);
  return sub_1E4AAAE40();
}

unint64_t sub_1E4A48ABC()
{
  result = qword_1ECF8E1F8;
  if (!qword_1ECF8E1F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E1F8);
  }

  return result;
}

unint64_t sub_1E4A48B14()
{
  result = qword_1ECF8E200;
  if (!qword_1ECF8E200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E200);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterUnlockState(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && a1[16])
  {
    return (*a1 + 254);
  }

  v3 = *a1;
  v4 = v3 >= 3;
  v5 = v3 - 3;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t storeEnumTagSinglePayload for WKPosterUnlockState(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *result = a2 - 254;
    *(result + 8) = 0;
    if (a3 >= 0xFE)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *result = a2 + 2;
    }
  }

  return result;
}

uint64_t getEnumTagSinglePayload for WKPosterUnlockState.ScreenState(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for WKPosterUnlockState.ScreenState(uint64_t result, unsigned int a2, unsigned int a3)
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

uint64_t type metadata accessor for WKStripesWallpaperPosterOverlay(uint64_t a1)
{
  result = qword_1EE044118;
  if (!qword_1EE044118)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A48DD8(uint64_t a1)
{
  sub_1E4A48E74(319);
  if (v1 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v2 <= 0x3F)
    {
      sub_1E4A48F1C();
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4A48E74(uint64_t a1)
{
  if (!qword_1EE042448)
  {
    sub_1E4AAA1C0();
    v1 = sub_1E4AAA1D0();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE042448);
    }
  }
}

void sub_1E4A48ECC()
{
  if (!qword_1EE042460)
  {
    v0 = sub_1E4AAA1D0();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE042460);
    }
  }
}

unint64_t sub_1E4A48F1C()
{
  result = qword_1EE042D08[0];
  if (!qword_1EE042D08[0])
  {
    result = swift_getExistentialTypeMetadata();
    atomic_store(result, qword_1EE042D08);
  }

  return result;
}

uint64_t sub_1E4A48F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E230, &qword_1E4AAEE48);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E4AAED30;
  if (qword_1EE042AA8 != -1)
  {
    swift_once();
  }

  v1 = qword_1EE048BD0;
  *(v0 + 32) = sub_1E4AAA5C0();
  if (qword_1EE042A80 != -1)
  {
    swift_once();
  }

  v2 = qword_1EE048BB8;
  *(v0 + 40) = sub_1E4AAA5C0();
  if (qword_1EE042A98 != -1)
  {
    swift_once();
  }

  v3 = qword_1EE048BC8;
  *(v0 + 48) = sub_1E4AAA5C0();
  if (qword_1EE042AC0 != -1)
  {
    swift_once();
  }

  v4 = qword_1EE048BE0;
  *(v0 + 56) = sub_1E4AAA5C0();
  if (qword_1EE042A88 != -1)
  {
    swift_once();
  }

  v5 = qword_1EE048BC0;
  *(v0 + 64) = sub_1E4AAA5C0();
  if (qword_1EE042AB0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EE048BD8;
  result = sub_1E4AAA5C0();
  *(v0 + 72) = result;
  off_1EE043128 = v0;
  return result;
}

uint64_t sub_1E4A49188@<X0>(uint64_t a1@<X8>)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E208, &qword_1E4AAEDD0);
  v8 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v4 = (&v8 - v3);
  sub_1E4A49404(&v9);
  if (v9)
  {
    *v4 = sub_1E4AAA6F0();
    v4[1] = v5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E210, &unk_1E4AAEDD8);
    if (qword_1EE043120 != -1)
    {
      swift_once();
    }

    v9 = off_1EE043128;
    swift_getKeyPath();

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E218, &qword_1E4AAEE00);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E220, &qword_1E4AAEE08);
    sub_1E4A49E30(&qword_1EE042210, &qword_1ECF8E218, &qword_1E4AAEE00, MEMORY[0x1E69E6338]);
    sub_1E4A49A4C();
    sub_1E4A49AA0();
    sub_1E4AAA6C0();
    sub_1E4A49BAC(v4, a1);
    return (*(v8 + 56))(a1, 0, 1, v2);
  }

  else
  {
    v7 = *(v8 + 56);

    return v7(a1, 1, 1, v2);
  }
}

uint64_t sub_1E4A49404@<X0>(uint64_t *a1@<X8>)
{
  v3 = sub_1E4AAA1C0();
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = (v36 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v7 = sub_1E4AAA320();
  v37 = *(v7 - 8);
  v38 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for WKStripesWallpaperPosterOverlay(0);
  v11 = (v1 + *(v10 + 24));
  v12 = v11[3];
  v13 = v11[4];
  v39 = __swift_project_boxed_opaque_existential_1(v11, v12);
  v14 = v1 + *(v10 + 20);
  v15 = *(v14 + 112);
  v16 = *(v14 + 80);
  v76 = *(v14 + 96);
  v77 = v15;
  v17 = *(v14 + 112);
  v78 = *(v14 + 128);
  v18 = *(v14 + 48);
  v19 = *(v14 + 16);
  v72 = *(v14 + 32);
  v73 = v18;
  v20 = *(v14 + 48);
  v21 = *(v14 + 80);
  v74 = *(v14 + 64);
  v75 = v21;
  v22 = *(v14 + 16);
  v70 = *v14;
  v71 = v22;
  v80[6] = v76;
  v80[7] = v17;
  v80[8] = *(v14 + 128);
  v80[2] = v72;
  v80[3] = v20;
  v80[4] = v74;
  v80[5] = v16;
  v79 = *(v14 + 144);
  v81 = *(v14 + 144);
  v80[0] = v70;
  v80[1] = v19;
  if (sub_1E4A49C60(v80) == 1)
  {
    nullsub_1();
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    nullsub_1();
    v61 = *v23;
    v24 = v23[1];
    v25 = v23[2];
    v26 = v23[4];
    v64 = v23[3];
    v65 = v26;
    v62 = v24;
    v63 = v25;
    v27 = v23[5];
    v28 = v23[6];
    v29 = v23[8];
    v68 = v23[7];
    v69 = v29;
    v66 = v27;
    v67 = v28;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v51 = v70;
    nullsub_1();
    sub_1E4A49D24(v30, &v40);
  }

  else
  {
    nullsub_1();
    v47 = v76;
    v48 = v77;
    v49 = v78;
    v50 = v79;
    v43 = v72;
    v44 = v73;
    v45 = v74;
    v46 = v75;
    v41 = v70;
    v42 = v71;
    nullsub_1();
    v36[1] = *v31;
    v36[2] = v1;
    v51 = v70;
    v52 = v71;
    v55 = v74;
    v56 = v75;
    v53 = v72;
    v54 = v73;
    v60 = v79;
    v58 = v77;
    v59 = v78;
    v57 = v76;
    nullsub_1();

    sub_1E4AAAA10();
    v32 = v12;
    v33 = v4;
    v34 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v4 = v33;
    v12 = v32;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v70);
    (*(v37 + 8))(v9, v38);
  }

  v47 = v67;
  v48 = v68;
  v49 = v69;
  v43 = v63;
  v44 = v64;
  v45 = v65;
  v46 = v66;
  v41 = v61;
  v42 = v62;
  sub_1E4A96CDC(v6);
  sub_1E4A7D600(&v41, v6, v12, v13, a1);
  (*(v4 + 8))(v6, v3);
  v57 = v47;
  v58 = v48;
  v59 = v49;
  v53 = v43;
  v54 = v44;
  v55 = v45;
  v56 = v46;
  v51 = v41;
  v52 = v42;
  return sub_1E4A49CD0(&v51);
}

uint64_t sub_1E4A49840@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *a1;
  if (qword_1EE043120 != -1)
  {
    goto LABEL_15;
  }

  while (1)
  {
    v7 = off_1EE043128;
    v8 = *(off_1EE043128 + 2);
    if (!v8)
    {
      break;
    }

    v3 = 0;
    while (v3 < v7[2])
    {

      v9 = sub_1E4AAA5D0();

      if (v9)
      {
        goto LABEL_8;
      }

      if (v8 == ++v3)
      {
        goto LABEL_7;
      }
    }

    __break(1u);
LABEL_15:
    swift_once();
  }

LABEL_7:
  __break(1u);
LABEL_8:
  if (v7[2])
  {

    v10 = sub_1E4AAA5D0();
  }

  else
  {
    v10 = 0;
  }

  v11 = *(a2 + 16);
  [v11 stripeAngleDegrees];
  v13 = v12;
  [v11 firstStripeOffsetScaleFactor];
  v15 = v14;
  [v11 stripeHeightFactor];
  v17 = v16;
  KeyPath = swift_getKeyPath();
  *a3 = v3;
  *(a3 + 8) = v10 & 1;
  *(a3 + 16) = v13;
  *(a3 + 24) = v15;
  *(a3 + 32) = v17;
  *(a3 + 40) = KeyPath;
  *(a3 + 48) = v6;
}

uint64_t __swift_instantiateConcreteTypeFromMangledNameAbstractV2(uint64_t *a1, uint64_t *a2)
{
  result = *a1;
  if (!result)
  {
    result = swift_getTypeByMangledNameInContextInMetadataState2();
    *a1 = result;
  }

  return result;
}

unint64_t sub_1E4A49A4C()
{
  result = qword_1EE042288;
  if (!qword_1EE042288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042288);
  }

  return result;
}

unint64_t sub_1E4A49AA0()
{
  result = qword_1EE042418;
  if (!qword_1EE042418)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E220, &qword_1E4AAEE08);
    sub_1E4A49B58();
    sub_1E4A49E30(&qword_1EE043998, &qword_1ECF8E228, &qword_1E4AAEE10, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042418);
  }

  return result;
}

unint64_t sub_1E4A49B58()
{
  result = qword_1EE043018;
  if (!qword_1EE043018)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043018);
  }

  return result;
}

uint64_t sub_1E4A49BAC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E208, &qword_1E4AAEDD0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_1E4A49C68(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E700, &qword_1E4AAEE50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_1E4A49D80()
{
  result = qword_1EE042238;
  if (!qword_1EE042238)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E238, &qword_1E4AAEE58);
    sub_1E4A49E30(&qword_1EE042240, &qword_1ECF8E208, &qword_1E4AAEDD0, MEMORY[0x1E6981880]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042238);
  }

  return result;
}

uint64_t sub_1E4A49E30(unint64_t *a1, uint64_t *a2, uint64_t *a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

__n128 __swift_memcpy48_16(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 32);
  *(a1 + 16) = *(a2 + 16);
  *(a1 + 32) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E4A49E8C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 48))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E4A49EAC(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = (a2 - 1);
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

  *(result + 48) = v3;
  return result;
}

void sub_1E4A49EF4()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E270, &qword_1E4AAEF10);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v76 = &v65[-v2];
  v75 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter(0);
  v3 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v74 = &v65[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E278, &qword_1E4AAEF18);
  MEMORY[0x1EEE9AC00](v5 - 8);
  v79 = &v65[-v6];
  v78 = type metadata accessor for WKParameterizedCAWallpaperStateParameter(0);
  v7 = *(v78 - 8);
  MEMORY[0x1EEE9AC00](v78);
  v73 = &v65[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  if (qword_1ECF8DD18 != -1)
  {
    swift_once();
  }

  v9 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v9, qword_1ECF92348);
  v10 = v0;
  v11 = sub_1E4AAA0C0();
  v12 = sub_1E4AAA9F0();

  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    *v13 = 134218240;
    v14 = &v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    *(v13 + 4) = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    *(v13 + 12) = 2048;
    *(v13 + 14) = v14[1];
    _os_log_impl(&dword_1E4A23000, v11, v12, "updateWithCurrentWallpaperState unlock: %f wake: %f", v13, 0x16u);
    MEMORY[0x1E691FE80](v13, -1, -1);
  }

  v15 = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters];
  if (v15)
  {
    v80 = v3;
    v16 = objc_opt_self();

    v17 = [v16 disableActions];
    [v16 begin];
    [v16 setDisableActions_];
    v18 = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 16];
    v19 = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 24];
    v20 = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 32];
    v21 = *&v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state + 40];
    v72 = &v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
    v86 = v20;
    v87 = v21;
    v85.f64[0] = v18;
    v85.f64[1] = v19;
    v83 = 0;
    v84 = 0x3FF0000000000000;
    v82 = 0uLL;
    v22 = SPRotation3DEqualToRotation(&v85, &v82);
    *&v23 = 0;
    if ((v22 & 1) == 0)
    {
      v24 = sub_1E4AAAA60();
      v82.f64[0] = v18;
      v82.f64[1] = v19;
      v83 = v20;
      v84 = v21;
      SPRotation3DGetEulerAngles(&v85, v89, &v82, v24);
      *(&v23 + 1) = *&v85.f64[1];
      *&v23 = vcvt_f32_f64(v85);
    }

    v25 = *(v15 + 16);
    if (v25)
    {
      v66 = v17;
      v68 = v16;
      v26 = v10[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel];
      v81 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating;
      v67 = v15;
      v27 = v15 + 32;
      v77 = (v7 + 56);
      v70 = (v80 + 56);
      v80 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background;
      v69 = v23;
      v71 = v10;
      while (1)
      {
        sub_1E4A4D9A0(v27, &v85);
        if (v26 == 2)
        {
          v37 = v87;
          v38 = v88;
          __swift_project_boxed_opaque_existential_1(&v85, v87);
          if (((*(v38 + 48))(v37, v38) & 1) == 0)
          {
            goto LABEL_12;
          }
        }

        else if (!v26)
        {
          v35 = v87;
          v36 = v88;
          __swift_project_boxed_opaque_existential_1(&v85, v87);
          if ((*(v36 + 48))(v35, v36))
          {
            goto LABEL_12;
          }
        }

        v39 = v87;
        v40 = v88;
        __swift_project_boxed_opaque_existential_1(&v85, v87);
        v41 = (*(v40 + 48))(v39, v40);
        v42 = v81;
        if ((v41 & 1) == 0)
        {
          v42 = v80;
        }

        v43 = *&v10[v42];
        if (!v43)
        {
          goto LABEL_12;
        }

        v44 = v87;
        v45 = v88;
        __swift_project_boxed_opaque_existential_1(&v85, v87);
        v46 = *(v45 + 24);
        v47 = v43;
        v48 = v46(v44, v45);
        sub_1E4A4D0D0(v48, v49);
        v51 = v50;

        if (!v51)
        {
          goto LABEL_12;
        }

        sub_1E4A4D9A0(&v85, &v82);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E280, &qword_1E4AAEF20);
        v53 = v78;
        v52 = v79;
        v54 = swift_dynamicCast();
        v55 = *v77;
        if (v54)
        {
          v55(v52, 0, 1, v53);
          v28 = v73;
          sub_1E4A4DA04(v52, v73, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
          v29 = sub_1E4AAA980();
          v30 = v87;
          v31 = v88;
          __swift_project_boxed_opaque_existential_1(&v85, v87);
          (*(v31 + 16))(v30, v31);
          v32 = sub_1E4AAA870();

          [v51 setValue:v29 forKeyPath:v32];

          v33 = v28;
          v10 = v71;
          v34 = type metadata accessor for WKParameterizedCAWallpaperStateParameter;
        }

        else
        {
          v55(v52, 1, 1, v53);
          sub_1E4A4DC88(v52, &qword_1ECF8E278, &qword_1E4AAEF18);
          sub_1E4A4D9A0(&v85, &v82);
          v56 = v76;
          v57 = v75;
          if ((swift_dynamicCast() & 1) == 0)
          {

            (*v70)(v56, 1, 1, v57);
            sub_1E4A4DC88(v56, &qword_1ECF8E270, &qword_1E4AAEF10);
            goto LABEL_12;
          }

          (*v70)(v56, 0, 1, v57);
          v58 = v56;
          v59 = v74;
          sub_1E4A4DA04(v58, v74, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
          if (v59[*(v57 + 40)] == 1)
          {
            swift_bridgeObjectRelease_n();
          }

          else
          {
            sub_1E4AAADA0();

            sub_1E4AAADA0();
          }

          v60 = v74;
          v61 = sub_1E4AAA980();
          v62 = v87;
          v63 = v88;
          __swift_project_boxed_opaque_existential_1(&v85, v87);
          (*(v63 + 16))(v62, v63);
          v64 = sub_1E4AAA870();

          [v51 setValue:v61 forKeyPath:v64];

          v34 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter;
          v33 = v60;
        }

        sub_1E4A4DA6C(v33, v34);
LABEL_12:
        __swift_destroy_boxed_opaque_existential_1Tm(&v85);
        v27 += 40;
        if (!--v25)
        {

          v16 = v68;
          v17 = v66;
          goto LABEL_31;
        }
      }
    }

LABEL_31:
    [v16 commit];
    [v16 setDisableActions_];
  }
}

id sub_1E4A4A868(char a1, uint64_t a2)
{
  ObjectType = swift_getObjectType();
  v6 = &v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state];
  *v6 = 0x3F80000000000000;
  v6[4] = 0;
  v6[5] = 0x3FF0000000000000;
  v6[2] = 0;
  v6[3] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating] = 0;
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters] = 0;
  v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel] = a1;
  v10.receiver = v2;
  v10.super_class = ObjectType;
  v7 = objc_msgSendSuper2(&v10, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  sub_1E4A4A97C(a2);

  v8 = sub_1E4AA9FE0();
  (*(*(v8 - 8) + 8))(a2, v8);
  return v7;
}

void sub_1E4A4A97C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_1E4AA9FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v63 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4A47A2C(0, &qword_1EE042120, 0x1E6979400);
  (*(v5 + 16))(v7, a1, v4);
  v8 = sub_1E4AAA8A0();
  v68 = sub_1E4A4B308(v7, v8, v9, 0);
  v10 = [v68 rootLayer];
  v11 = &unk_1ECF8E000;
  if (!v10)
  {
LABEL_23:
    if (qword_1ECF8DD18 == -1)
    {
LABEL_24:
      v32 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v32, qword_1ECF92348);
      v33 = sub_1E4AAA0C0();
      v34 = sub_1E4AAAA00();
      if (os_log_type_enabled(v33, v34))
      {
        v35 = swift_slowAlloc();
        *v35 = 0;
        _os_log_impl(&dword_1E4A23000, v33, v34, "Failed to read parameters from CA file", v35, 2u);
        MEMORY[0x1E691FE80](v35, -1, -1);
      }

      *&v2[*(v11 + 77)] = 0;

      return;
    }

LABEL_53:
    swift_once();
    goto LABEL_24;
  }

  v12 = v10;
  v13 = [v10 style];
  if (!v13 || (v14 = v13, v15 = sub_1E4AAA810(), v14, sub_1E4A4B4D0(v15), v17 = v16, , !v17))
  {

    goto LABEL_23;
  }

  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters] = v17;

  v18 = v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel];
  v19 = [v12 sublayers];
  v20 = v19;
  if (v18)
  {
    if (v19)
    {
      sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
      v21 = sub_1E4AAA950();

      v64 = v2;
      v65 = v12;
      if (v21 >> 62)
      {
LABEL_56:
        v2 = sub_1E4AAAC80();
        if (v2)
        {
LABEL_8:
          v22 = 0;
          v67 = v21 & 0xC000000000000001;
          while (1)
          {
            if (v67)
            {
              v23 = MEMORY[0x1E691EFA0](v22, v21);
            }

            else
            {
              if (v22 >= *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                goto LABEL_52;
              }

              v23 = *(v21 + 8 * v22 + 32);
            }

            v24 = v23;
            v11 = (v22 + 1);
            if (__OFADD__(v22, 1))
            {
              break;
            }

            v25 = [v23 name];
            if (v25)
            {
              v26 = v25;
              v27 = sub_1E4AAA8A0();
              v29 = v28;

              if (v27 == 0x474E4954414F4C46 && v29 == 0xE800000000000000)
              {

LABEL_45:

                v46 = &OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating;
                v2 = v64;
                goto LABEL_48;
              }

              v31 = sub_1E4AAADA0();

              if (v31)
              {
                goto LABEL_45;
              }
            }

            ++v22;
            if (v11 == v2)
            {
              goto LABEL_57;
            }
          }

          __break(1u);
LABEL_52:
          __break(1u);
          goto LABEL_53;
        }
      }

      else
      {
        v2 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v2)
        {
          goto LABEL_8;
        }
      }

LABEL_57:

      v12 = v65;
    }

    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v57 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v57, qword_1ECF92348);
    v58 = sub_1E4AAA0C0();
    v59 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v58, v59))
    {
LABEL_69:

      return;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Could not find floating layer";
LABEL_68:
    _os_log_impl(&dword_1E4A23000, v58, v59, v61, v60, 2u);
    MEMORY[0x1E691FE80](v60, -1, -1);
    goto LABEL_69;
  }

  if (!v19)
  {
LABEL_64:
    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v62 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v62, qword_1ECF92348);
    v58 = sub_1E4AAA0C0();
    v59 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v58, v59))
    {
      goto LABEL_69;
    }

    v60 = swift_slowAlloc();
    *v60 = 0;
    v61 = "Could not find background layer";
    goto LABEL_68;
  }

  sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
  v21 = sub_1E4AAA950();

  v65 = v12;
  if (v21 >> 62)
  {
    v36 = sub_1E4AAAC80();
    if (v36)
    {
      goto LABEL_30;
    }

    goto LABEL_63;
  }

  v36 = *((v21 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v36)
  {
LABEL_63:

    v12 = v65;
    goto LABEL_64;
  }

LABEL_30:
  v37 = 0;
  v66 = v21 & 0xFFFFFFFFFFFFFF8;
  v67 = v21 & 0xC000000000000001;
  while (1)
  {
    if (v67)
    {
      v38 = MEMORY[0x1E691EFA0](v37, v21);
    }

    else
    {
      if (v37 >= *(v66 + 16))
      {
        goto LABEL_55;
      }

      v38 = *(v21 + 8 * v37 + 32);
    }

    v24 = v38;
    v11 = (v37 + 1);
    if (__OFADD__(v37, 1))
    {
      __break(1u);
LABEL_55:
      __break(1u);
      goto LABEL_56;
    }

    v39 = [v38 name];
    if (!v39)
    {
      goto LABEL_31;
    }

    v40 = v39;
    v41 = sub_1E4AAA8A0();
    v43 = v42;

    if (v41 == 0x554F52474B434142 && v43 == 0xEA0000000000444ELL)
    {
      break;
    }

    v45 = sub_1E4AAADA0();

    if (v45)
    {
      goto LABEL_47;
    }

LABEL_31:

    ++v37;
    if (v11 == v36)
    {
      goto LABEL_63;
    }
  }

LABEL_47:

  v46 = &OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background;
LABEL_48:
  v47 = *v46;
  v48 = *&v2[v47];
  *&v2[v47] = v24;

  v49 = [objc_allocWithZone(MEMORY[0x1E6979530]) init];
  v50 = OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer;
  v51 = *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer];
  *&v2[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer] = v49;

  v52 = *&v2[v50];
  v53 = v65;
  if (v52)
  {
    v54 = v52;
    [v53 bounds];
    [v54 setBounds_];
  }

  v55 = [v2 layer];
  v56 = v68;
  [v55 setGeometryFlipped_];

  [v2 layoutIfNeeded];
  sub_1E4A49EF4();
}

id sub_1E4A4B308(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v17[1] = *MEMORY[0x1E69E9840];
  v6 = sub_1E4AA9FA0();
  v7 = sub_1E4AAA870();

  if (a4)
  {
    v8 = sub_1E4AAA800();
  }

  else
  {
    v8 = 0;
  }

  v17[0] = 0;
  v9 = [swift_getObjCClassFromMetadata() packageWithContentsOfURL:v6 type:v7 options:v8 error:v17];

  v10 = v17[0];
  if (v9)
  {
    v11 = sub_1E4AA9FE0();
    v12 = *(*(v11 - 8) + 8);
    v13 = v10;
    v12(a1, v11);
  }

  else
  {
    v14 = v17[0];
    sub_1E4AA9F60();

    swift_willThrow();
    v15 = sub_1E4AA9FE0();
    (*(*(v15 - 8) + 8))(a1, v15);
  }

  return v9;
}

void sub_1E4A4B4D0(uint64_t a1)
{
  v2 = type metadata accessor for WKParameterizedCAWallpaperParallaxParameter(0);
  v3 = MEMORY[0x1EEE9AC00](v2);
  v5 = &v147 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v7 = &v147 - v6;
  v8 = type metadata accessor for WKParameterizedCAWallpaperStateParameter(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v147 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v147 - v12;
  v14 = sub_1E4A4D38C(a1);
  if (!v14)
  {
    if (qword_1ECF8DD18 != -1)
    {
      swift_once();
    }

    v73 = sub_1E4AAA0E0();
    __swift_project_value_buffer(v73, qword_1ECF92348);
    v69 = sub_1E4AAA0C0();
    v70 = sub_1E4AAAA00();
    if (!os_log_type_enabled(v69, v70))
    {
      goto LABEL_70;
    }

    v71 = swift_slowAlloc();
    *v71 = 0;
    v72 = "Couldn't convert parameters to dictionary";
    goto LABEL_69;
  }

  v15 = v14;
  if (!*(v14 + 16) || (v16 = sub_1E4A55B0C(0xD000000000000017, 0x80000001E4AB8830), (v17 & 1) == 0) || (sub_1E4A479C0(*(v15 + 56) + 32 * v16, &v164), v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E288, &qword_1E4AAEF28), (swift_dynamicCast() & 1) == 0))
  {

    if (qword_1ECF8DD18 == -1)
    {
LABEL_63:
      v68 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v68, qword_1ECF92348);
      v69 = sub_1E4AAA0C0();
      v70 = sub_1E4AAAA00();
      if (!os_log_type_enabled(v69, v70))
      {
LABEL_70:

        return;
      }

      v71 = swift_slowAlloc();
      *v71 = 0;
      v72 = "Couldn't convert wallpaper elements to array";
LABEL_69:
      _os_log_impl(&dword_1E4A23000, v69, v70, v72, v71, 2u);
      MEMORY[0x1E691FE80](v71, -1, -1);
      goto LABEL_70;
    }

LABEL_150:
    swift_once();
    goto LABEL_63;
  }

  v160 = v2;
  v161 = v18;
  v158 = v7;
  v159 = v5;
  v20 = v167;
  v21 = *(*&v167 + 16);
  if (!v21)
  {
    v162 = MEMORY[0x1E69E7CC0];
    goto LABEL_72;
  }

  v156 = v8;
  v22 = 0;
  *&v155 = v21 - 1;
  v162 = MEMORY[0x1E69E7CC0];
  *&v19 = 134217984;
  v163 = v19;
  do
  {
    v23 = v22;
    while (1)
    {
      if (v23 >= *(*&v20 + 16))
      {
        __break(1u);
        goto LABEL_150;
      }

      v24 = *(*&v20 + 32 + 8 * v23);
      if (*(v24 + 16))
      {
        break;
      }

LABEL_24:
      if (qword_1ECF8DD18 != -1)
      {
        swift_once();
      }

      v33 = sub_1E4AAA0E0();
      __swift_project_value_buffer(v33, qword_1ECF92348);
      v34 = sub_1E4AAA0C0();
      v35 = sub_1E4AAAA00();
      if (os_log_type_enabled(v34, v35))
      {
        v36 = swift_slowAlloc();
        *v36 = v163;
        *(v36 + 4) = v23;
        _os_log_impl(&dword_1E4A23000, v34, v35, "missing required parameters (keyPath, layerName, view) for entry %ld in wallpaperPropertyGroups", v36, 0xCu);
        MEMORY[0x1E691FE80](v36, -1, -1);
      }

      ++v23;

      if (v21 == v23)
      {
        goto LABEL_72;
      }
    }

    v25 = sub_1E4A55B0C(0x6874615079656BLL, 0xE700000000000000);
    if ((v26 & 1) == 0)
    {
      goto LABEL_23;
    }

    sub_1E4A479C0(*(v24 + 56) + 32 * v25, &v164);
    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_23;
    }

    v27 = v168;
    if (!*(v24 + 16) || (v28 = v167, v29 = sub_1E4A55B0C(0x6D614E726579616CLL, 0xE900000000000065), (v30 & 1) == 0) || (sub_1E4A479C0(*(v24 + 56) + 32 * v29, &v164), (swift_dynamicCast() & 1) == 0))
    {
LABEL_22:

LABEL_23:

      goto LABEL_24;
    }

    if (!*(v24 + 16) || (v154 = *&v167, *&v157 = v168, v31 = sub_1E4A55B0C(2003134838, 0xE400000000000000), (v32 & 1) == 0) || (sub_1E4A479C0(*(v24 + 56) + 32 * v31, &v164), (swift_dynamicCast() & 1) == 0))
    {

      goto LABEL_22;
    }

    v152 = v167;
    v153 = v168;
    v37 = 0.0;
    v38 = 0.0;
    if (*(v24 + 16))
    {
      v39 = sub_1E4A55B0C(0x656D6F685F76, 0xE600000000000000);
      if (v40)
      {
        sub_1E4A479C0(*(v24 + 56) + 32 * v39, &v164);
        if (swift_dynamicCast())
        {
          v38 = v167;
        }
      }
    }

    if (*(v24 + 16))
    {
      v41 = sub_1E4A55B0C(0x6B636F6C5F76, 0xE600000000000000);
      if (v42)
      {
        sub_1E4A479C0(*(v24 + 56) + 32 * v41, &v164);
        if (swift_dynamicCast())
        {
          v37 = v167;
        }
      }
    }

    v43 = 0.0;
    if (*(v24 + 16))
    {
      v44 = sub_1E4A55B0C(0x7065656C735F76, 0xE700000000000000);
      if (v45)
      {
        sub_1E4A479C0(*(v24 + 56) + 32 * v44, &v164);
        if (swift_dynamicCast())
        {
          v43 = v167;
        }
      }
    }

    if (*(v24 + 16) && (v46 = sub_1E4A55B0C(0x656C746974, 0xE500000000000000), (v47 & 1) != 0) && (sub_1E4A479C0(*(v24 + 56) + 32 * v46, &v164), (swift_dynamicCast() & 1) != 0))
    {
      v48 = v168;
      v151 = *&v167;
    }

    else
    {
      v151 = 0;
      *&v48 = -2.68156159e154;
    }

    v150 = *&v48;
    if (!*(v24 + 16) || (v49 = sub_1E4A55B0C(1702129518, 0xE400000000000000), (v50 & 1) == 0))
    {

LABEL_50:
      v149 = 0.0;
      *&v51 = -2.68156159e154;
      goto LABEL_51;
    }

    sub_1E4A479C0(*(v24 + 56) + 32 * v49, &v164);

    if ((swift_dynamicCast() & 1) == 0)
    {
      goto LABEL_50;
    }

    v51 = v168;
    v149 = v167;
LABEL_51:
    v148 = *&v51;
    v152 = COERCE_DOUBLE(sub_1E4AAA8B0());
    v53 = v52;

    if (v152 == 1.69375774e190 && v53 == 0xE800000000000000)
    {

      LODWORD(v153) = 1;
    }

    else
    {
      LODWORD(v153) = sub_1E4AAADA0();
    }

    v54 = v151;
    sub_1E4AAA020();
    v55 = v156;
    v56 = &v13[v156[5]];
    *v56 = v28;
    *(v56 + 1) = v27;
    v57 = &v13[v55[6]];
    v58 = v157;
    *v57 = v154;
    v57[1] = v58;
    v59 = &v13[v55[7]];
    v60 = v150;
    *v59 = v54;
    *(v59 + 1) = v60;
    v61 = &v13[v55[8]];
    v62 = v148;
    *v61 = v149;
    *(v61 + 1) = v62;
    *&v13[v55[10]] = v38;
    *&v13[v55[11]] = v37;
    *&v13[v55[12]] = v43;
    v13[v55[9]] = v153 & 1;
    sub_1E4A4DB7C(v13, v11, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v63 = v162;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v63 = sub_1E4A72D50(0, v63[2] + 1, 1, v63);
    }

    v65 = v63[2];
    v64 = v63[3];
    *&v157 = v65 + 1;
    if (v65 >= v64 >> 1)
    {
      v162 = sub_1E4A72D50((v64 > 1), v65 + 1, 1, v63);
    }

    else
    {
      v162 = v63;
    }

    v22 = (v23 + 1);
    v154 = type metadata accessor for WKParameterizedCAWallpaperStateParameter;
    sub_1E4A4DA6C(v13, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v165 = v156;
    v166 = sub_1E4A4DBE4(&qword_1ECF8E290, type metadata accessor for WKParameterizedCAWallpaperStateParameter, &unk_1E4AB4EF8);
    boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(&v164);
    sub_1E4A4DB7C(v11, boxed_opaque_existential_1, type metadata accessor for WKParameterizedCAWallpaperStateParameter);
    v67 = v162;
    v162[2] = v157;
    sub_1E4A2732C(&v164, &v67[5 * v65 + 4]);
    sub_1E4A4DA6C(v11, v154);
  }

  while (*&v155 != v23);
LABEL_72:

  if (!*(v15 + 16))
  {
    goto LABEL_147;
  }

  v74 = sub_1E4A55B0C(0xD000000000000017, 0x80000001E4AB8850);
  if ((v75 & 1) == 0)
  {
    goto LABEL_147;
  }

  sub_1E4A479C0(*(v15 + 56) + 32 * v74, &v164);

  if (swift_dynamicCast())
  {
    v77 = v167;
    v78 = *(*&v167 + 16);
    if (!v78)
    {
      goto LABEL_147;
    }

    v79 = 0;
    v80 = 0x6874615079656BLL;
    v156 = (v78 - 1);
    *&v76 = 134217984;
    v163 = v76;
    *&v76 = 134218498;
    v157 = v76;
    while (1)
    {
      v81 = v79;
      while (1)
      {
        if (v81 >= *(*&v77 + 16))
        {
          __break(1u);
          return;
        }

        v82 = *(*&v77 + 32 + 8 * v81);
        if (!*(v82 + 16))
        {
          goto LABEL_107;
        }

        v83 = sub_1E4A55B0C(v80, 0xE700000000000000);
        if ((v84 & 1) == 0 || (sub_1E4A479C0(*(v82 + 56) + 32 * v83, &v164), (swift_dynamicCast() & 1) == 0))
        {

          goto LABEL_107;
        }

        v85 = v80;
        v86 = v168;
        if (!*(v82 + 16))
        {
          goto LABEL_106;
        }

        v87 = v167;
        v88 = sub_1E4A55B0C(0x6D614E726579616CLL, 0xE900000000000065);
        if ((v89 & 1) == 0)
        {
          goto LABEL_106;
        }

        sub_1E4A479C0(*(v82 + 56) + 32 * v88, &v164);
        if ((swift_dynamicCast() & 1) == 0)
        {
          goto LABEL_106;
        }

        if (!*(v82 + 16) || (v155 = v167, v161 = v168, v90 = sub_1E4A55B0C(2003134838, 0xE400000000000000), (v91 & 1) == 0) || (sub_1E4A479C0(*(v82 + 56) + 32 * v90, &v164), (swift_dynamicCast() & 1) == 0))
        {

LABEL_106:

          v80 = v85;
LABEL_107:
          if (qword_1ECF8DD18 != -1)
          {
            swift_once();
          }

          v105 = sub_1E4AAA0E0();
          __swift_project_value_buffer(v105, qword_1ECF92348);
          v106 = sub_1E4AAA0C0();
          v107 = sub_1E4AAAA00();
          if (os_log_type_enabled(v106, v107))
          {
            v108 = swift_slowAlloc();
            *v108 = v163;
            *(v108 + 4) = v81;
            _os_log_impl(&dword_1E4A23000, v106, v107, "missing a required parameter (keyPath, layerName, view) for entry %ld in wallpaperParallaxGroups", v108, 0xCu);
            MEMORY[0x1E691FE80](v108, -1, -1);
          }

          goto LABEL_112;
        }

        v92 = *(v82 + 16);
        v154 = *&v87;
        if (v92)
        {
          v153 = v168;
          v93 = *&v167;
          v94 = sub_1E4A55B0C(1936291937, 0xE400000000000000);
          if (v95)
          {
            v151 = v93;
            sub_1E4A479C0(*(v82 + 56) + 32 * v94, &v164);
            if (swift_dynamicCast())
            {
              break;
            }
          }
        }

        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v109 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v109, qword_1ECF92348);

        *&v110 = COERCE_DOUBLE(sub_1E4AAA0C0());
        v111 = sub_1E4AAAA00();

        LODWORD(v153) = v111;
        if (!os_log_type_enabled(v110, v111))
        {
          goto LABEL_119;
        }

        v112 = swift_slowAlloc();
        v152 = *&v110;
        v113 = v112;
        v114 = swift_slowAlloc();
        *&v164 = v114;
        *v113 = v157;
        *(v113 + 4) = v81;
        *(v113 + 12) = 2082;
        v155 = COERCE_DOUBLE(sub_1E4A85938(*&v155, v161, &v164));

        *(v113 + 14) = v155;
        *(v113 + 22) = 2082;
        v115 = sub_1E4A85938(v154, v86, &v164);

        *(v113 + 24) = v115;
        *&v110 = v152;
        _os_log_impl(&dword_1E4A23000, *&v152, v153, "missing “axis” parameter for entry %ld (“%{public}s” %{public}s) in wallpaperParallaxGroups", v113, 0x20u);
        swift_arrayDestroy();
        MEMORY[0x1E691FE80](v114, -1, -1);
        MEMORY[0x1E691FE80](v113, -1, -1);
LABEL_120:

        v80 = v85;
LABEL_112:
        v81 = (v81 + 1);
        if (v78 == v81)
        {
          goto LABEL_147;
        }
      }

      v150 = *&v168;
      *&v96 = COERCE_DOUBLE(sub_1E4AAA8B0());
      v152 = *&v97;

      v150 = *&v96;
      if (v96 == 121 && v152 == -1.7573882e159 || (v98 = v150, (sub_1E4AAADA0() & 1) != 0) || *&v98 == 0x6863746970 && v152 == -3.24180904e178)
      {

        v99 = 1;
        if (!*(v82 + 16))
        {
          goto LABEL_122;
        }
      }

      else
      {
        v99 = sub_1E4AAADA0();

        if (!*(v82 + 16))
        {
          goto LABEL_122;
        }
      }

      v100 = sub_1E4A55B0C(0x6F546E694D70616DLL, 0xE800000000000000);
      if ((v101 & 1) == 0 || (sub_1E4A479C0(*(v82 + 56) + 32 * v100, &v164), (swift_dynamicCast() & 1) == 0) || !*(v82 + 16) || (v102 = v167, v103 = sub_1E4A55B0C(0x6F5478614D70616DLL, 0xE800000000000000), (v104 & 1) == 0) || (sub_1E4A479C0(*(v82 + 56) + 32 * v103, &v164), (swift_dynamicCast() & 1) == 0))
      {
LABEL_122:

        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v116 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v116, qword_1ECF92348);

        v153 = sub_1E4AAA0C0();
        v117 = sub_1E4AAAA00();

        LODWORD(v152) = v117;
        v110 = v153;
        if (os_log_type_enabled(v153, v117))
        {
          v118 = swift_slowAlloc();
          v151 = swift_slowAlloc();
          *&v164 = v151;
          *v118 = v157;
          *(v118 + 4) = v81;
          *(v118 + 12) = 2082;
          v155 = COERCE_DOUBLE(sub_1E4A85938(*&v155, v161, &v164));

          *(v118 + 14) = v155;
          *(v118 + 22) = 2082;
          v119 = sub_1E4A85938(v154, v86, &v164);

          *(v118 + 24) = v119;
          v110 = v153;
          _os_log_impl(&dword_1E4A23000, v153, LOBYTE(v152), "missing “mapMinTo” or “mapMaxTo” parameter for entry %ld (“%{public}s” %{public}s) in wallpaperParallaxGroups", v118, 0x20u);
          v120 = v151;
          swift_arrayDestroy();
          MEMORY[0x1E691FE80](v120, -1, -1);
          MEMORY[0x1E691FE80](v118, -1, -1);
          goto LABEL_120;
        }

LABEL_119:

        goto LABEL_120;
      }

      v121 = v167;
      if (*(v82 + 16) && (v122 = sub_1E4A55B0C(0x656C746974, 0xE500000000000000), (v123 & 1) != 0) && (sub_1E4A479C0(*(v82 + 56) + 32 * v122, &v164), (swift_dynamicCast() & 1) != 0))
      {
        v124 = v168;
        v150 = v167;
      }

      else
      {
        v150 = 0.0;
        *&v124 = -2.68156159e154;
      }

      v149 = *&v124;
      if (!*(v82 + 16) || (v125 = sub_1E4A55B0C(1702129518, 0xE400000000000000), (v126 & 1) == 0))
      {

LABEL_137:
        v148 = 0.0;
        v127 = 0xE000000000000000;
        goto LABEL_138;
      }

      sub_1E4A479C0(*(v82 + 56) + 32 * v125, &v164);

      if ((swift_dynamicCast() & 1) == 0)
      {
        goto LABEL_137;
      }

      v127 = v168;
      v148 = v167;
LABEL_138:
      v147 = v127;
      v128 = sub_1E4AAA8B0();
      v152 = *&v129;

      if (v128 == 0x676E6974616F6C66 && v152 == -9.12488124e192)
      {

        v130 = 1;
      }

      else
      {
        v130 = sub_1E4AAADA0();
      }

      v131 = v102;
      v132 = v121;
      v133 = v158;
      sub_1E4AAA020();
      v134 = v160;
      v135 = (v133 + v160[5]);
      *v135 = v154;
      v135[1] = v86;
      v136 = (v133 + v134[6]);
      v137 = v161;
      *v136 = v155;
      *(v136 + 1) = v137;
      v138 = (v133 + v134[7]);
      v139 = v149;
      *v138 = v150;
      v138[1] = v139;
      v140 = (v133 + v134[8]);
      v141 = v147;
      *v140 = v148;
      *(v140 + 1) = v141;
      *(v133 + v134[9]) = v130 & 1;
      *(v133 + v134[11]) = v131;
      *(v133 + v134[12]) = v132;
      *(v133 + v134[10]) = v99 & 1;
      sub_1E4A4DB7C(v133, v159, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v162 = sub_1E4A72D50(0, v162[2] + 1, 1, v162);
      }

      v143 = v162[2];
      v142 = v162[3];
      v161 = v143 + 1;
      if (v143 >= v142 >> 1)
      {
        v162 = sub_1E4A72D50((v142 > 1), v161, 1, v162);
      }

      v79 = (v81 + 1);
      v155 = COERCE_DOUBLE(type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      sub_1E4A4DA6C(v158, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      v165 = v160;
      v166 = sub_1E4A4DBE4(&qword_1ECF8E298, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter, &unk_1E4AB4EDC);
      v144 = __swift_allocate_boxed_opaque_existential_1(&v164);
      v145 = v159;
      sub_1E4A4DB7C(v159, v144, type metadata accessor for WKParameterizedCAWallpaperParallaxParameter);
      v146 = v162;
      v162[2] = v161;
      sub_1E4A2732C(&v164, &v146[5 * v143 + 4]);
      sub_1E4A4DA6C(v145, *&v155);
      v80 = v85;
      if (v156 == v81)
      {
LABEL_147:

        return;
      }
    }
  }
}

void sub_1E4A4CC14()
{
  v42.receiver = v0;
  v42.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v42, sel_layoutSubviews);
  v1 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer];
  if (v1)
  {
    v2 = v1;
    v3 = [v0 layer];
    [v0 bounds];
    [v3 setBounds_];

    v4 = [v0 layer];
    [v4 setAnchorPoint_];

    v5 = [v0 layer];
    [v5 bounds];
    v7 = v6;
    v9 = v8;
    v11 = v10;
    v13 = v12;

    v43.origin.x = v7;
    v43.origin.y = v9;
    v43.size.width = v11;
    v43.size.height = v13;
    v14 = CGRectGetWidth(v43) * 0.5;
    v15 = [v0 layer];
    [v15 bounds];
    v17 = v16;
    v19 = v18;
    v21 = v20;
    v23 = v22;

    v44.origin.x = v17;
    v44.origin.y = v19;
    v44.size.width = v21;
    v44.size.height = v23;
    [v2 setPosition:v14, CGRectGetHeight(v44) * 0.5];
    [v2 bounds];
    v25 = v24;
    v27 = v26;
    [v0 bounds];
    v28 = CGRectGetWidth(v45) / v25;
    [v0 bounds];
    Height = CGRectGetHeight(v46);
    CATransform3DMakeScale(&v41, v28, Height / v27, 1.0);
    [v2 setTransform:&v41];
    v30 = [v0 layer];
    [v30 addSublayer_];

    if (v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_layerLevel])
    {
      v31 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating];
      if (!v31)
      {
        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v32 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v32, qword_1ECF92348);
        v33 = sub_1E4AAA0C0();
        v34 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_19;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "No floating layer to add.";
        goto LABEL_18;
      }
    }

    else
    {
      v31 = *&v0[OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background];
      if (!v31)
      {
        if (qword_1ECF8DD18 != -1)
        {
          swift_once();
        }

        v40 = sub_1E4AAA0E0();
        __swift_project_value_buffer(v40, qword_1ECF92348);
        v33 = sub_1E4AAA0C0();
        v34 = sub_1E4AAAA00();
        if (!os_log_type_enabled(v33, v34))
        {
          goto LABEL_19;
        }

        v35 = swift_slowAlloc();
        *v35 = 0;
        v36 = "No background layer to add.";
LABEL_18:
        _os_log_impl(&dword_1E4A23000, v33, v34, v36, v35, 2u);
        MEMORY[0x1E691FE80](v35, -1, -1);
        goto LABEL_19;
      }
    }

    v33 = v31;
    [v2 addSublayer:v33];
LABEL_19:

    goto LABEL_20;
  }

  if (qword_1ECF8DD18 != -1)
  {
    swift_once();
  }

  v37 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v37, qword_1ECF92348);
  v2 = sub_1E4AAA0C0();
  v38 = sub_1E4AAAA00();
  if (os_log_type_enabled(v2, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_1E4A23000, v2, v38, "No hosting layer to lay out", v39, 2u);
    MEMORY[0x1E691FE80](v39, -1, -1);
  }

LABEL_20:
}

void sub_1E4A4D0D0(uint64_t a1, uint64_t a2)
{
  v5 = [v2 sublayers];
  if (v5)
  {
    v6 = v5;
    sub_1E4A47A2C(0, &qword_1EE042150, 0x1E6979398);
    v7 = sub_1E4AAA950();

    if (!(v7 >> 62))
    {
      goto LABEL_3;
    }
  }

  else
  {
    v7 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
LABEL_3:
      v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v8)
      {
        goto LABEL_4;
      }

LABEL_24:

      return;
    }
  }

  v8 = sub_1E4AAAC80();
  if (!v8)
  {
    goto LABEL_24;
  }

LABEL_4:
  v9 = 0;
  while (1)
  {
    if ((v7 & 0xC000000000000001) != 0)
    {
      v10 = MEMORY[0x1E691EFA0](v9, v7);
    }

    else
    {
      if (v9 >= *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_26;
      }

      v10 = *(v7 + 8 * v9 + 32);
    }

    v11 = v10;
    v12 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    v13 = [v10 name];
    if (v13)
    {
      v14 = v13;
      v15 = sub_1E4AAA8A0();
      v17 = v16;

      if (v15 == a1 && v17 == a2)
      {

        goto LABEL_24;
      }

      v19 = sub_1E4AAADA0();

      if (v19)
      {
        goto LABEL_24;
      }
    }

    sub_1E4A4D0D0(a1, a2);
    v21 = v20;

    if (!v21)
    {
      ++v9;
      if (v12 != v8)
      {
        continue;
      }
    }

    goto LABEL_24;
  }

  __break(1u);
LABEL_26:
  __break(1u);
}

id sub_1E4A4D2C4()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

unint64_t sub_1E4A4D38C(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2A0, &qword_1E4AAEF30);
    v2 = sub_1E4AAAD00();
  }

  else
  {
    v2 = MEMORY[0x1E69E7CC8];
  }

  v3 = 1 << *(a1 + 32);
  v4 = -1;
  if (v3 < 64)
  {
    v4 = ~(-1 << v3);
  }

  v5 = v4 & *(a1 + 64);
  v6 = (v3 + 63) >> 6;

  v8 = 0;
  if (v5)
  {
    goto LABEL_9;
  }

LABEL_10:
  while (1)
  {
    v11 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (v11 >= v6)
    {

      return v2;
    }

    v5 = *(a1 + 64 + 8 * v11);
    ++v8;
    if (v5)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v5)) | (v11 << 6);
        sub_1E4A4DC2C(*(a1 + 48) + 40 * v12, v27);
        sub_1E4A479C0(*(a1 + 56) + 32 * v12, v28 + 8);
        v25[0] = v28[0];
        v25[1] = v28[1];
        v26 = v29;
        v24[0] = v27[0];
        v24[1] = v27[1];
        sub_1E4A4DC2C(v24, v19);
        if (!swift_dynamicCast())
        {
          break;
        }

        v5 &= v5 - 1;
        sub_1E4A479C0(v25 + 8, v20);
        sub_1E4A4DC88(v24, &qword_1ECF8E2A8, qword_1E4AAEF38);
        v21 = v18;
        sub_1E4A4DCE8(v20, v22);
        v13 = v21;
        sub_1E4A4DCE8(v22, v23);
        sub_1E4A4DCE8(v23, &v21);
        result = sub_1E4A55B0C(v13, *(&v13 + 1));
        if (v14)
        {
          *(v2[6] + 16 * result) = v13;
          v9 = result;

          v10 = (v2[7] + 32 * v9);
          __swift_destroy_boxed_opaque_existential_1Tm(v10);
          result = sub_1E4A4DCE8(&v21, v10);
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

        else
        {
          if (v2[2] >= v2[3])
          {
            goto LABEL_23;
          }

          *(v2 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
          *(v2[6] + 16 * result) = v13;
          result = sub_1E4A4DCE8(&v21, (v2[7] + 32 * result));
          v15 = v2[2];
          v16 = __OFADD__(v15, 1);
          v17 = v15 + 1;
          if (v16)
          {
            goto LABEL_24;
          }

          v2[2] = v17;
          v8 = v11;
          if (!v5)
          {
            goto LABEL_10;
          }
        }

LABEL_9:
        v11 = v8;
      }

      sub_1E4A4DC88(v24, &qword_1ECF8E2A8, qword_1E4AAEF38);

      return 0;
    }
  }

  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
  return result;
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

void sub_1E4A4D6A0()
{
  v1 = (v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state);
  *v1 = 0x3F80000000000000;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  v1[2] = 0;
  v1[3] = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters) = 0;
  sub_1E4AAACB0();
  __break(1u);
}

void sub_1E4A4D750()
{
  v1 = (v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_state);
  *v1 = 0x3F80000000000000;
  v1[4] = 0;
  v1[5] = 0x3FF0000000000000;
  v1[2] = 0;
  v1[3] = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_hostingLayer) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_background) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_floating) = 0;
  *(v0 + OBJC_IVAR____TtC12WallpaperKit41WKParameterizedCAWallpaperRepresentedView_parameters) = 0;
  sub_1E4AAACB0();
  __break(1u);
}

unint64_t SPRotation3DEqualToRotation(float64x2_t *a1, float64x2_t *a2)
{
  v2 = a1[1];
  v3 = a2[1];
  v4 = vandq_s8(vceqq_f64(*a1, *a2), vceqq_f64(v2, v3));
  if ((vandq_s8(v4, vdupq_laneq_s64(v4, 1)).u64[0] & 0x8000000000000000) != 0)
  {
    return 1;
  }

  v5 = vandq_s8(vceqq_f64(*a1, vnegq_f64(*a2)), vceqq_f64(v2, vnegq_f64(v3)));
  return vandq_s8(v5, vdupq_laneq_s64(v5, 1)).u64[0] >> 63;
}

void SPRotation3DGetEulerAngles(uint64_t *__return_ptr a1@<X8>, SPRotation3D a2@<0:Q0, 16:Q1>, uint64_t a3@<X0>, int a4@<W1>)
{
  _Q1 = *a3;
  if (a4 == 2)
  {
    v7 = *a3;
    _Q1.i64[0] = *(a3 + 16);
  }

  else if (a4 == 1)
  {
    v7 = vextq_s8(_Q1, *(a3 + 16), 8uLL);
  }

  else
  {
    v7 = 0uLL;
    _Q1.i64[0] = 0;
  }

  v8 = *(a3 + 24);
  v26 = v7;
  _D9 = v7.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D1, V4.D[1] }

  v27 = *_Q1.i64;
  *&v16 = atan2(_D0 + _D0, (vmulq_f64(v7, v7).f64[0] + *_Q1.i64 * *_Q1.i64) * -2.0 + 1.0);
  v25 = v16;
  v17 = v8 * v26.f64[0] - _D9 * v27 + v8 * v26.f64[0] - _D9 * v27;
  if (v17 > 1.0)
  {
    v17 = 1.0;
  }

  if (v17 < -1.0)
  {
    v17 = -1.0;
  }

  v24 = asin(v17);
  _V2.D[1] = v26.f64[1];
  _V4.D[1] = v8;
  __asm { FMLA            D0, D9, V4.D[1] }

  *&_D0 = _D0 + _D0;
  __asm { FMLA            D1, D9, V2.D[1] }

  *&_D1 = _D1 * -2.0 + 1.0;
  *&v22 = atan2f(*&_D0, *&_D1);
  if (a4 == 2)
  {
    *v23.i64 = v24;
    v23.i64[1] = v22;
    v22 = v25;
  }

  else if (a4 == 1)
  {
    v23.i64[0] = v25;
    *&v23.i64[1] = v24;
  }

  else
  {
    v23 = vdupq_n_s64(0x7FF8000000000000uLL);
    *&v22 = 0x7FF8000000000000;
  }

  *a1 = v23;
  *(a1 + 1) = v22;
  *(a1 + 8) = a4;
}

uint64_t sub_1E4A4D9A0(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_1E4A4DA04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A4DA6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t __swift_destroy_boxed_opaque_existential_1Tm(void *a1)
{
  v1 = *(a1[3] - 8);
  if ((*(v1 + 82) & 2) != 0)
  {
  }

  else
  {
    return (*(v1 + 8))();
  }
}

uint64_t *__swift_allocate_boxed_opaque_existential_1(uint64_t *result)
{
  if ((*(*(result[3] - 8) + 82) & 2) != 0)
  {
    *result = swift_allocBox();
    return v1;
  }

  return result;
}

uint64_t sub_1E4A4DB7C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1E4A4DBE4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1E4A4DC88(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

_OWORD *sub_1E4A4DCE8(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer(uint64_t a1)
{
  result = qword_1EE043688;
  if (!qword_1EE043688)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A4DD6C(uint64_t a1)
{
  sub_1E4A4DE48(319, &qword_1EE042448, MEMORY[0x1E697DBD0]);
  if (v1 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v2 <= 0x3F)
    {
      sub_1E4A4DE48(319, &unk_1EE042450, type metadata accessor for WKWallpaperPosterLayerViewModel);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1E4A4DE48(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1E4AAA1D0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

__n128 sub_1E4A4DEB8@<Q0>(uint64_t a1@<X8>)
{
  v2 = v1;
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v26[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  v8 = (v2 + *(type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer(0) + 24));
  if (*(v8 + 8) == 1)
  {
    v67 = *v8;
  }

  else
  {

    sub_1E4AAAA10();
    v9 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
  }

  v10 = sub_1E4A7440C();
  v12 = v11;
  v14 = v13;
  v16 = v15;

  if ((v16 & 1) != 0 || (sub_1E4A4E210(&v51), (v17 = v51) == 0))
  {
    sub_1E4A4E5F8(&v52);
  }

  else
  {
    *&v27[0] = swift_getKeyPath();
    sub_1E4A4E620(v27);
    v35 = v27[6];
    v36 = v27[7];
    v37 = v27[8];
    LOBYTE(v38) = v28;
    v31 = v27[2];
    v32 = v27[3];
    v33 = v27[4];
    v34 = v27[5];
    v29 = v27[0];
    v30 = v27[1];

    WKPosterCanvasSize();
    WKPosterCanvasSize();
    sub_1E4AAA6F0();
    sub_1E4AAA230();

    *&v26[7] = v68;
    *&v26[23] = v69;
    *&v26[39] = v70;
    v45 = v35;
    v46 = v36;
    v47 = v37;
    v41 = v31;
    v42 = v32;
    v43 = v33;
    v44 = v34;
    v39 = v29;
    v40 = v30;
    *(v50 + 9) = *v26;
    *&v48 = v38;
    *(&v48 + 1) = v10;
    *&v49 = v12;
    *(&v49 + 1) = v14;
    *&v50[0] = v17;
    BYTE8(v50[0]) = 1;
    *(&v50[1] + 9) = *&v26[16];
    *(&v50[2] + 9) = *&v26[32];
    *(&v50[3] + 1) = *(&v70 + 1);
    nullsub_1();
    v64 = v50[1];
    v65 = v50[2];
    v66 = v50[3];
    v60 = v47;
    v61 = v48;
    v62 = v49;
    v63 = v50[0];
    v56 = v43;
    v57 = v44;
    v58 = v45;
    v59 = v46;
    v52 = v39;
    v53 = v40;
    v54 = v41;
    v55 = v42;
  }

  v18 = v65;
  *(a1 + 192) = v64;
  *(a1 + 208) = v18;
  *(a1 + 224) = v66;
  v19 = v61;
  *(a1 + 128) = v60;
  *(a1 + 144) = v19;
  v20 = v63;
  *(a1 + 160) = v62;
  *(a1 + 176) = v20;
  v21 = v57;
  *(a1 + 64) = v56;
  *(a1 + 80) = v21;
  v22 = v59;
  *(a1 + 96) = v58;
  *(a1 + 112) = v22;
  v23 = v53;
  *a1 = v52;
  *(a1 + 16) = v23;
  result = v55;
  *(a1 + 32) = v54;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_1E4A4E210@<X0>(id **a1@<X8>)
{
  v37 = a1;
  v36 = sub_1E4AAA1C0();
  v2 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v4 = (&v34 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0));
  v5 = sub_1E4AAA320();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v34 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for WKAdaptiveStripeWallpaperFloatingLayer(0);
  v10 = *(v9 + 28);
  v11 = (v1 + *(v9 + 20));
  v12 = v11[7];
  v13 = v11[5];
  v74 = v11[6];
  v75 = v12;
  v14 = v11[7];
  v76 = v11[8];
  v15 = v11[3];
  v16 = v11[1];
  v70 = v11[2];
  v71 = v15;
  v17 = v11[3];
  v18 = v11[5];
  v72 = v11[4];
  v73 = v18;
  v19 = v11[1];
  v68 = *v11;
  v69 = v19;
  v78[6] = v74;
  v78[7] = v14;
  v78[8] = v11[8];
  v78[2] = v70;
  v78[3] = v17;
  v78[4] = v72;
  v78[5] = v13;
  v20 = *(v1 + v10);
  v77 = *(v11 + 144);
  v79 = *(v11 + 144);
  v78[0] = v68;
  v78[1] = v16;
  if (sub_1E4A49C60(v78) == 1)
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v59 = *v21;
    v22 = v21[1];
    v23 = v21[2];
    v24 = v21[4];
    v62 = v21[3];
    v63 = v24;
    v60 = v22;
    v61 = v23;
    v25 = v21[5];
    v26 = v21[6];
    v27 = v21[8];
    v66 = v21[7];
    v67 = v27;
    v64 = v25;
    v65 = v26;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v54 = v73;
    v55 = v74;
    v52 = v71;
    v53 = v72;
    v50 = v69;
    v51 = v70;
    v49 = v68;
    nullsub_1();
    sub_1E4A49D24(v28, &v38);
  }

  else
  {
    nullsub_1();
    v45 = v74;
    v46 = v75;
    v47 = v76;
    v48 = v77;
    v41 = v70;
    v42 = v71;
    v43 = v72;
    v44 = v73;
    v39 = v68;
    v40 = v69;
    nullsub_1();
    v34 = *v29;
    v49 = v68;
    v50 = v69;
    v53 = v72;
    v54 = v73;
    v51 = v70;
    v52 = v71;
    v58 = v77;
    v56 = v75;
    v57 = v76;
    v55 = v74;
    nullsub_1();

    sub_1E4AAAA10();
    v30 = sub_1E4AAA4E0();
    v35 = v4;
    v31 = v20;
    v32 = v30;
    sub_1E4AAA0B0();

    v20 = v31;
    sub_1E4AAA310();
    swift_getAtKeyPath();
    sub_1E4A49C68(&v68);
    v4 = v35;
    (*(v6 + 8))(v8, v5);
  }

  v55 = v65;
  v56 = v66;
  v57 = v67;
  v51 = v61;
  v52 = v62;
  v53 = v63;
  v54 = v64;
  v49 = v59;
  v50 = v60;
  sub_1E4A96CDC(v4);
  sub_1E4A95D1C(&v49, v4, v20, v37);
  sub_1E4A49CD0(&v49);
  return (*(v2 + 8))(v4, v36);
}

double sub_1E4A4E5F8(_OWORD *a1)
{
  result = 0.0;
  a1[13] = 0u;
  a1[14] = 0u;
  a1[11] = 0u;
  a1[12] = 0u;
  a1[9] = 0u;
  a1[10] = 0u;
  a1[7] = 0u;
  a1[8] = 0u;
  a1[5] = 0u;
  a1[6] = 0u;
  a1[3] = 0u;
  a1[4] = 0u;
  a1[1] = 0u;
  a1[2] = 0u;
  *a1 = 0u;
  return result;
}

unint64_t sub_1E4A4E628()
{
  result = qword_1EE042408;
  if (!qword_1EE042408)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2B0, &unk_1E4AB5120);
    sub_1E4A4E6AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042408);
  }

  return result;
}

unint64_t sub_1E4A4E6AC()
{
  result = qword_1EE042410;
  if (!qword_1EE042410)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2B8, &qword_1E4AAF000);
    sub_1E4A4E738();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042410);
  }

  return result;
}

unint64_t sub_1E4A4E738()
{
  result = qword_1EE043008;
  if (!qword_1EE043008)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043008);
  }

  return result;
}

__n128 __swift_memcpy176_16(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  v4 = a2[3];
  v5 = a2[4];
  v6 = a2[6];
  *(a1 + 80) = a2[5];
  *(a1 + 96) = v6;
  *(a1 + 48) = v4;
  *(a1 + 64) = v5;
  result = a2[7];
  v8 = a2[8];
  v9 = a2[10];
  *(a1 + 144) = a2[9];
  *(a1 + 160) = v9;
  *(a1 + 112) = result;
  *(a1 + 128) = v8;
  return result;
}

uint64_t sub_1E4A4E7E0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 176))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 168);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_1E4A4E828(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 168) = 0;
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 176) = 1;
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
      *(result + 168) = (a2 - 1);
      return result;
    }

    *(result + 176) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_1E4A4E8C0@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1E4AAA320();
  v43 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v42 = &v40 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for WKAnimationPackageLayer(0);
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v40 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v10 = MEMORY[0x1EEE9AC00](v9 - 8);
  v12 = &v40 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v14 = &v40 - v13;
  v15 = sub_1E4AA9FE0();
  v16 = *(v15 - 8);
  MEMORY[0x1EEE9AC00](v15);
  v47 = &v40 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v45 = *v1;
  v44 = *(v1 + 8);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v41 = v3;
  v46 = v6;
  v18 = v5;
  v19 = a1;
  sub_1E4A57768(&v48);
  swift_unknownObjectRelease();
  v20 = *(&v49 + 1);
  v21 = v50;
  __swift_project_boxed_opaque_existential_1(&v48, *(&v49 + 1));
  (*(v21 + 24))(&v58, v20, v21);
  v22 = v58;
  v23 = v59;
  __swift_destroy_boxed_opaque_existential_1Tm(&v48);
  if (v23 != 5)
  {
    sub_1E4A4EF3C(v22, v23);
    a1 = v19;
    v5 = v18;
    v6 = v46;
LABEL_6:
    (*(v16 + 56))(v14, 1, 1, v15);
LABEL_7:
    sub_1E4A480C4(v14);
    return (*(v6 + 56))(a1, 1, 1, v5);
  }

  v24 = [v22[2] foregroundAnimationFileURL];
  if (v24)
  {
    v25 = v24;
    sub_1E4AA9FC0();

    v26 = 0;
  }

  else
  {
    v26 = 1;
  }

  a1 = v19;
  v5 = v18;
  (*(v16 + 56))(v12, v26, 1, v15);
  sub_1E4A4EF94(v12, v14);
  sub_1E4A4EF3C(v22, 5u);
  v28 = (*(v16 + 48))(v14, 1, v15);
  v6 = v46;
  v29 = v41;
  if (v28 == 1)
  {
    goto LABEL_7;
  }

  v30 = v47;
  (*(v16 + 32))(v47, v14, v15);
  (*(v16 + 16))(&v8[v5[7]], v30, v15);
  if (v44)
  {
    v31 = v45;
    v58 = v45;
  }

  else
  {

    sub_1E4AAAA10();
    v32 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v33 = v42;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v43 + 8))(v33, v29);
    v31 = v58;
  }

  swift_getKeyPath();
  *&v48 = v31;
  sub_1E4A4F11C(&qword_1EE042900, type metadata accessor for WKWallpaperPosterLayerViewModel, &unk_1E4AB2458);
  sub_1E4AAA060();

  (*(v16 + 8))(v47, v15);
  v34 = v31[22];

  *&v48 = swift_getKeyPath();
  sub_1E4A4E620(&v48);
  v35 = v55;
  *(v8 + 6) = v54;
  *(v8 + 7) = v35;
  *(v8 + 8) = v56;
  v8[144] = v57;
  v36 = v51;
  *(v8 + 2) = v50;
  *(v8 + 3) = v36;
  v37 = v53;
  *(v8 + 4) = v52;
  *(v8 + 5) = v37;
  v38 = v49;
  *v8 = v48;
  *(v8 + 1) = v38;
  v39 = v5[5];
  *&v8[v39] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v8[v5[6]] = 1;
  *&v8[v5[8]] = v34;
  sub_1E4A4F004(v8, a1);
  return (*(v6 + 56))(a1, 0, 1, v5);
}

void sub_1E4A4EF3C(id a1, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
    goto LABEL_6;
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
      }

      return;
    }

LABEL_6:

    return;
  }

  if (a2 == 5 || a2 == 6)
  {
    goto LABEL_6;
  }
}

uint64_t sub_1E4A4EF94(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A4F004(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKAnimationPackageLayer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A4F068()
{
  result = qword_1EE042DA0[0];
  if (!qword_1EE042DA0[0])
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2C8, &unk_1E4AAF1B0);
    sub_1E4A4F11C(&qword_1EE042E00, type metadata accessor for WKAnimationPackageLayer, &unk_1E4AB1848);
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE042DA0);
  }

  return result;
}

uint64_t sub_1E4A4F11C(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void WKLiveWallpaper.fullsizeImageURL.getter()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

id WKLiveWallpaper.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

uint64_t WKLiveWallpaper.init(identifier:name:thumbnailImageURL:fullsizeImageURL:videoAssetURL:stillTimeInVideo:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t *a7@<X8>, double a8@<D0>)
{
  v32 = a6;
  v33 = a3;
  v34 = a5;
  v35 = a4;
  v31[1] = a2;
  v36 = a1;
  v37 = a7;
  v12 = sub_1E4AA9FE0();
  v13 = *(v12 - 8);
  v14 = MEMORY[0x1EEE9AC00](v12);
  v16 = v31 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = MEMORY[0x1EEE9AC00](v14);
  v19 = v31 - v18;
  MEMORY[0x1EEE9AC00](v17);
  v21 = v31 - v20;
  v22 = *(v13 + 16);
  v22(v31 - v20, a4, v12);
  v22(v19, a5, v12);
  v22(v16, a6, v12);
  v23 = objc_allocWithZone(WKLiveWallpaper);
  v24 = sub_1E4AAA870();

  v25 = sub_1E4AA9FA0();
  v26 = sub_1E4AA9FA0();
  v27 = sub_1E4AA9FA0();
  v28 = [v23 initWithIdentifier:v36 name:v24 type:0 thumbnailImageURL:v25 fullsizeImageURL:v26 videoAssetURL:v27 stillTimeInVideo:a8];

  v29 = *(v13 + 8);
  v29(v32, v12);
  v29(v34, v12);
  v29(v35, v12);
  v29(v16, v12);
  v29(v19, v12);
  v29(v21, v12);
  type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v28;
  *v37 = result;
  return result;
}

Swift::OpaquePointer_optional __swiftcall WKLiveWallpaper.propertyListRepresentation()()
{
  v1 = [*(*v0 + 16) propertyListRepresentation];
  if (v1)
  {
    v3 = v1;
    v4 = sub_1E4AAA810();
  }

  else
  {
    v4 = 0;
  }

  v5 = v4;
  result.value._rawValue = v5;
  result.is_nil = v2;
  return result;
}

id WKLiveWallpaper.copyWallpaperContents(to:)()
{
  v6[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v6[0] = 0;
  v3 = [v1 copyWallpaperContentsToDestinationDirectoryURL:v2 error:v6];

  if (v3)
  {
    return v6[0];
  }

  v5 = v6[0];
  sub_1E4AA9F60();

  return swift_willThrow();
}

uint64_t WKLiveWallpaper.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKLiveWallpaper.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

void sub_1E4A4F7D4()
{
  v1 = [*(*v0 + 16) fullsizeImageURL];
  sub_1E4AA9FC0();
}

unint64_t sub_1E4A4F85C()
{
  result = qword_1ECF8E2D0;
  if (!qword_1ECF8E2D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2D0);
  }

  return result;
}

uint64_t sub_1E4A4F8D4@<X0>(SEL *a1@<X2>, uint64_t a2@<X8>)
{
  v4 = [*(*v2 + 16) *a1];
  if (v4)
  {
    v5 = v4;
    sub_1E4AA9FC0();

    v6 = 0;
  }

  else
  {
    v6 = 1;
  }

  v7 = sub_1E4AA9FE0();
  v8 = *(*(v7 - 8) + 56);

  return v8(a2, v6, 1, v7);
}

uint64_t type metadata accessor for WKFlatWallpaperPoster(uint64_t a1)
{
  result = qword_1EE0433C8;
  if (!qword_1EE0433C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E4A4FA00(uint64_t a1)
{
  sub_1E4A48E74(319);
  if (v1 <= 0x3F)
  {
    sub_1E4A48ECC();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

__n128 sub_1E4A4FAA8@<Q0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WKFlatWallpaperPoster(0);
  v4 = *(v3 - 8);
  v5 = *(v4 + 64);
  MEMORY[0x1EEE9AC00](v3 - 8);
  sub_1E4A505CC(v1, v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v6 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v7 = swift_allocObject();
  sub_1E4A50670(v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0), v7 + v6);
  sub_1E4AAA6F0();
  sub_1E4AAA2B0();
  *a1 = sub_1E4A506D4;
  *(a1 + 8) = v7;
  v8 = v11[5];
  *(a1 + 80) = v11[4];
  *(a1 + 96) = v8;
  *(a1 + 112) = v11[6];
  v9 = v11[1];
  *(a1 + 16) = v11[0];
  *(a1 + 32) = v9;
  result = v11[3];
  *(a1 + 48) = v11[2];
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_1E4A4FC10@<X0>(uint64_t a1@<X1>, uint64_t *a2@<X8>)
{
  v3 = *(a1 + *(type metadata accessor for WKFlatWallpaperPoster(0) + 24));
  v4 = type metadata accessor for WKWallpaperPreviewImage(0);
  v5 = (a2 + v4[6]);
  v5[3] = &type metadata for WKWallpaperBundle;
  v5[4] = sub_1E4A50754();
  *v5 = v3;
  *a2 = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v6 = a2 + v4[5];
  *v6 = swift_getKeyPath();
  *(v6 + 1) = 0;
  v6[16] = 0;
  *(a2 + v4[7]) = 2;

  v7 = sub_1E4AAA250();
  v11 = sub_1E4A4FD3C(v7, v8, v9, v10);
  v13 = v12;
  sub_1E4AAA740();
  v15 = v14;
  v17 = v16;
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2D8, &unk_1E4AAF408);
  v19 = (a2 + *(result + 36));
  *v19 = v11;
  *(v19 + 1) = v13;
  *(v19 + 2) = v15;
  *(v19 + 3) = v17;
  return result;
}

double sub_1E4A4FD3C(uint64_t a1, uint64_t a2, double a3, double a4)
{
  v7 = WKStandardDisplayModeScreenSize(a1, a2);
  if (v7 > v8)
  {
    v9 = v7;
  }

  else
  {
    v9 = v8;
  }

  v10 = [objc_opt_self() currentDevice];
  v11 = [v10 userInterfaceIdiom];

  v14 = 156.0;
  if (!v11)
  {
    v14 = 52.0;
  }

  v15 = v9 + v14;
  v16 = 238.0;
  if (!v11)
  {
    v16 = 128.0;
  }

  v17 = v9 + v16;
  if (v15 > v17)
  {
    v18 = v15;
  }

  else
  {
    v18 = v17;
  }

  if (a4 >= a3)
  {
    v19 = a3;
  }

  else
  {
    v19 = a4;
  }

  v20 = WKStandardDisplayModeScreenSize(v12, v13);
  v21 = type metadata accessor for WKFlatWallpaperPoster(0);
  v22 = sub_1E4A4FEAC(*(v4 + *(v21 + 24)));
  v23 = 1.0;
  if (v22)
  {
    v24 = v22;
    [v22 size];
    v26 = v25;
    v28 = v27;

    if (v18 != v26 || v18 != v28)
    {
      if (v26 == v28)
      {
        return v19 / v20 * (v18 / v26);
      }

      else if (v26 / v28 != v18 / v18)
      {
        if (a3 / v26 >= a4 / v28)
        {
          v30 = a3;
        }

        else
        {
          v30 = v26 * (a4 / v28);
        }

        return v30 / v26;
      }
    }
  }

  return v23;
}

id sub_1E4A4FEAC(uint64_t a1)
{
  v2 = sub_1E4AA9FE0();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v51 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v51 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v7);
  v12 = &v51 - v11;
  v13 = MEMORY[0x1EEE9AC00](v10);
  v15 = &v51 - v14;
  MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  v18 = *(a1 + 16);
  v19 = [v18 wallpaperBackingTypeForLocation_];
  result = 0;
  if (!v19)
  {
    v54 = v9;
    v56 = v12;
    v60 = MEMORY[0x1E69E7CC8];
    if ([v18 fileBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
    {
      sub_1E4A5749C(v57);
      swift_unknownObjectRelease();
      v21 = v3;
      v22 = v5;
      v24 = v58;
      v23 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      v25 = v24;
      v5 = v22;
      v3 = v21;
      (*(v23 + 16))(v25, v23);
      v53 = *(v21 + 56);
      v53(v17, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    else
    {
      v53 = *(v3 + 56);
      v53(v17, 1, 1, v2);
    }

    v55 = v17;
    sub_1E4A48054(v17, v15);
    v52 = *(v3 + 48);
    if (v52(v15, 1, v2) == 1)
    {
      v26 = 0;
    }

    else
    {
      (*(v3 + 32))(v5, v15, v2);
      v27 = objc_opt_self();
      v28 = sub_1E4AA9FA0();
      v26 = [v27 wk:v28 imageWithContentsOfURL:?];

      (*(v3 + 8))(v5, v2);
    }

    v29 = v5;
    if (qword_1EE0421D0 != -1)
    {
      swift_once();
    }

    v30 = qword_1EE048B18;
    if (v26)
    {
      v31 = v26;
      if (MEMORY[0x1E69E7CC8] >> 62)
      {
        result = sub_1E4AAAC80();
        if (__OFADD__(result, 1))
        {
          goto LABEL_37;
        }

        v32 = sub_1E4A950AC(MEMORY[0x1E69E7CC8], result + 1);
      }

      else
      {
        v32 = v60;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v32;
      sub_1E4A95590(v31, v30, isUniquelyReferenced_nonNull_native);
      v60 = v57[0];
    }

    else
    {
    }

    v34 = [v18 fileBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"dark"];
    v35 = v56;
    v36 = v29;
    if (v34)
    {
      sub_1E4A5749C(v57);
      swift_unknownObjectRelease();
      v37 = v58;
      v38 = v59;
      __swift_project_boxed_opaque_existential_1(v57, v58);
      (*(v38 + 16))(v37, v38);
      v53(v35, 0, 1, v2);
      __swift_destroy_boxed_opaque_existential_1Tm(v57);
    }

    else
    {
      v53(v56, 1, 1, v2);
    }

    v39 = v54;
    sub_1E4A48054(v35, v54);
    if (v52(v39, 1, v2) == 1)
    {
      v40 = 0;
    }

    else
    {
      (*(v3 + 32))(v36, v39, v2);
      v41 = objc_opt_self();
      v42 = sub_1E4AA9FA0();
      v40 = [v41 wk:v42 imageWithContentsOfURL:?];

      (*(v3 + 8))(v36, v2);
    }

    v43 = v55;
    if (qword_1EE0421D8 != -1)
    {
      swift_once();
    }

    v44 = qword_1EE048B20;
    if (!v40)
    {

      v46 = 0;
LABEL_34:
      v48 = objc_opt_self();
      sub_1E4A47A2C(0, &unk_1EE0421C0, 0x1E69DD1B8);
      sub_1E4A47A2C(0, &unk_1EE043980, 0x1E69DCAB8);
      sub_1E4A507A8();
      v49 = sub_1E4AAA800();

      v50 = [v48 wk:v49 dynamicImageWithTraitCollectionToImageMap:v26 baseImage:?];

      sub_1E4A480C4(v35);
      sub_1E4A480C4(v43);
      return v50;
    }

    v45 = v60;
    if ((v60 & 0xC000000000000001) == 0)
    {
      v46 = v40;
      goto LABEL_33;
    }

    if (v60 >= 0)
    {
      v45 = v60 & 0xFFFFFFFFFFFFFF8;
    }

    v46 = v40;
    result = sub_1E4AAAC80();
    if (!__OFADD__(result, 1))
    {
      v45 = sub_1E4A950AC(v45, result + 1);
LABEL_33:
      v47 = swift_isUniquelyReferenced_nonNull_native();
      v57[0] = v45;
      sub_1E4A95590(v46, v44, v47);
      v60 = v57[0];
      goto LABEL_34;
    }

    __break(1u);
LABEL_37:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E4A505CC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKFlatWallpaperPoster(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A50630(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, void *a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, char a19)
{
  if (a19)
  {
  }
}

uint64_t sub_1E4A50670(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKFlatWallpaperPoster(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A506D4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(type metadata accessor for WKFlatWallpaperPoster(0) - 8);
  v4 = v1 + ((*(v3 + 80) + 16) & ~*(v3 + 80));

  return sub_1E4A4FC10(v4, a1);
}

unint64_t sub_1E4A50754()
{
  result = qword_1EE043FA0;
  if (!qword_1EE043FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043FA0);
  }

  return result;
}

unint64_t sub_1E4A507A8()
{
  result = qword_1EE0421B0;
  if (!qword_1EE0421B0)
  {
    sub_1E4A47A2C(255, &unk_1EE0421C0, 0x1E69DD1B8);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0421B0);
  }

  return result;
}

unint64_t sub_1E4A50810()
{
  result = qword_1ECF8E2E0;
  if (!qword_1ECF8E2E0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2E8, &qword_1E4AAF418);
    sub_1E4A5089C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2E0);
  }

  return result;
}

unint64_t sub_1E4A5089C()
{
  result = qword_1ECF8E2F0;
  if (!qword_1ECF8E2F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E2F8, &qword_1E4AAF420);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E2F0);
  }

  return result;
}

uint64_t sub_1E4A5092C@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for WKParameterizedCAWallpaperView(0);
  v4 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v12 = &v30 - v11;
  v13 = sub_1E4AA9FE0();
  v14 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v16 = &v30 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v30 = a1;
  v31 = v3;
  sub_1E4A57768(&v32);
  swift_unknownObjectRelease();
  v17 = *(&v33 + 1);
  v18 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  (*(v18 + 24))(&v42, v17, v18);
  v19 = v42;
  v20 = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  if (v20 != 6)
  {
    sub_1E4A4EF3C(v19, v20);
    v3 = v31;
    a1 = v30;
LABEL_6:
    (*(v14 + 56))(v12, 1, 1, v13);
    goto LABEL_7;
  }

  v21 = [v19[2] fileURL];
  if (v21)
  {
    v22 = v21;
    sub_1E4AA9FC0();

    v23 = 0;
  }

  else
  {
    v23 = 1;
  }

  v3 = v31;
  a1 = v30;
  (*(v14 + 56))(v10, v23, 1, v13);
  sub_1E4A4EF94(v10, v12);
  sub_1E4A4EF3C(v19, 6u);
  if ((*(v14 + 48))(v12, 1, v13) != 1)
  {
    v25 = *(v14 + 32);
    v25(v16, v12, v13);
    v25(&v6[*(v3 + 24)], v16, v13);
    *&v32 = swift_getKeyPath();
    sub_1E4A4E620(&v32);
    v26 = v39;
    *(v6 + 6) = v38;
    *(v6 + 7) = v26;
    *(v6 + 8) = v40;
    v6[144] = v41;
    v27 = v35;
    *(v6 + 2) = v34;
    *(v6 + 3) = v27;
    v28 = v37;
    *(v6 + 4) = v36;
    *(v6 + 5) = v28;
    v29 = v33;
    *v6 = v32;
    *(v6 + 1) = v29;
    v6[145] = 0;
    sub_1E4A50D2C(v6, a1);
    return (*(v4 + 56))(a1, 0, 1, v3);
  }

LABEL_7:
  sub_1E4A480C4(v12);
  return (*(v4 + 56))(a1, 1, 1, v3);
}

uint64_t sub_1E4A50D2C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for WKParameterizedCAWallpaperView(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E4A50D90()
{
  result = qword_1ECF8E300;
  if (!qword_1ECF8E300)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E308, &qword_1E4AAF570);
    sub_1E4A50E14();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E300);
  }

  return result;
}

unint64_t sub_1E4A50E14()
{
  result = qword_1ECF8E310;
  if (!qword_1ECF8E310)
  {
    type metadata accessor for WKParameterizedCAWallpaperView(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E310);
  }

  return result;
}

uint64_t sub_1E4A50E98@<X0>(uint64_t a1@<X8>)
{
  v31 = a1;
  v2 = type metadata accessor for WKParameterizedCAWallpaperView(0);
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v30 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v7 = MEMORY[0x1EEE9AC00](v6 - 8);
  v9 = &v30 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v11 = &v30 - v10;
  v12 = sub_1E4AA9FE0();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![*(*(v1 + 168) + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v30 = v2;
  sub_1E4A57768(&v32);
  swift_unknownObjectRelease();
  v16 = *(&v33 + 1);
  v17 = v34;
  __swift_project_boxed_opaque_existential_1(&v32, *(&v33 + 1));
  (*(v17 + 24))(&v42, v16, v17);
  v18 = v42;
  v19 = v43;
  __swift_destroy_boxed_opaque_existential_1Tm(&v32);
  if (v19 != 6)
  {
    sub_1E4A4EF3C(v18, v19);
    v2 = v30;
LABEL_6:
    (*(v13 + 56))(v11, 1, 1, v12);
    goto LABEL_7;
  }

  v20 = [v18[2] fileURL];
  if (v20)
  {
    v21 = v20;
    sub_1E4AA9FC0();

    v22 = 0;
  }

  else
  {
    v22 = 1;
  }

  v2 = v30;
  (*(v13 + 56))(v9, v22, 1, v12);
  sub_1E4A4EF94(v9, v11);
  sub_1E4A4EF3C(v18, 6u);
  if ((*(v13 + 48))(v11, 1, v12) != 1)
  {
    v24 = *(v13 + 32);
    v24(v15, v11, v12);
    v24(&v5[*(v2 + 24)], v15, v12);
    *&v32 = swift_getKeyPath();
    sub_1E4A4E620(&v32);
    v25 = v39;
    *(v5 + 6) = v38;
    *(v5 + 7) = v25;
    *(v5 + 8) = v40;
    v5[144] = v41;
    v26 = v35;
    *(v5 + 2) = v34;
    *(v5 + 3) = v26;
    v27 = v37;
    *(v5 + 4) = v36;
    *(v5 + 5) = v27;
    v28 = v33;
    *v5 = v32;
    *(v5 + 1) = v28;
    v5[145] = 1;
    v29 = v31;
    sub_1E4A50D2C(v5, v31);
    return (*(v3 + 56))(v29, 0, 1, v2);
  }

LABEL_7:
  sub_1E4A480C4(v11);
  return (*(v3 + 56))(v31, 1, 1, v2);
}

double sub_1E4A51294@<D0>(_OWORD *a1@<X0>, int a2@<W1>, uint64_t a3@<X8>)
{
  v3 = a2;
  HIDWORD(v57) = a2 & 0xFFFFFF00;
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1E4A51B08(a1, v3 & 0xFF01, v123);
  v59 = v123[1];
  v60 = v123[0];
  v58 = v123[2];
  v61 = v9;
  v62 = v7;
  v63 = v6;
  if (v3)
  {
    v122 = a1;

    v10 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v11 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v122;
  }

  swift_getKeyPath();
  v100 = v10;
  v64 = sub_1E4A52BC8();
  sub_1E4AAA060();

  v12 = *(v10 + 22);

  sub_1E4AAA740();
  v14 = v13;
  v16 = v15;
  sub_1E4A51F38(a1, BYTE4(v57) | v3 & 1);
  v18 = v17;
  v20 = v19;
  KeyPath = swift_getKeyPath();
  if (v3)
  {
    v121 = a1;

    v22 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v23 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v24 = v61;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v62 + 8))(v24, v63);
    v22 = v121;
  }

  swift_getKeyPath();
  v100 = v22;
  sub_1E4AAA060();

  v25 = v22[8];
  v95 = v22[7];
  v96 = v25;
  v26 = v22[10];
  v97 = v22[9];
  v98 = v26;
  v27 = v22[3];
  v28 = v22[5];
  v29 = v22[6];
  v92 = v22[4];
  v93 = v28;
  v94 = v29;
  v30 = v22[2];
  v91 = v27;
  v90 = v30;
  sub_1E4A49D24(&v90, &v100);

  *&v77[8] = v90;
  *&v77[72] = v94;
  *&v77[56] = v93;
  *&v77[40] = v92;
  *&v77[24] = v91;
  *&v77[136] = v98;
  *&v77[120] = v97;
  *&v77[104] = v96;
  *&v77[88] = v95;
  *&v99[0] = KeyPath;
  *(&v99[9] + 1) = *(&v98 + 1);
  *(&v99[7] + 8) = *&v77[112];
  *(&v99[6] + 8) = *&v77[96];
  *(&v99[3] + 8) = *&v77[48];
  *(&v99[2] + 8) = *&v77[32];
  *(&v99[8] + 8) = *&v77[128];
  *(&v99[4] + 8) = *&v77[64];
  *(&v99[5] + 8) = *&v77[80];
  *(v99 + 8) = *v77;
  *(&v99[1] + 8) = *&v77[16];
  v117 = v99[6];
  v118 = v99[7];
  v119 = v99[8];
  v120 = v99[9];
  v113 = v99[2];
  v114 = v99[3];
  v115 = v99[4];
  v116 = v99[5];
  v111 = v99[0];
  v112 = v99[1];
  v107 = *&v77[96];
  v108 = *&v77[112];
  v109 = *&v77[128];
  v103 = *&v77[32];
  v104 = *&v77[48];
  v105 = *&v77[64];
  v106 = *&v77[80];
  v101 = *v77;
  v100 = KeyPath;
  v110 = *(&v98 + 1);
  v102 = *&v77[16];
  sub_1E4A52D40(v99, &v80, &qword_1ECF8E328, &qword_1E4AAF830);
  sub_1E4A4DC88(&v100, &qword_1ECF8E328, &qword_1E4AAF830);

  v31 = a1;
  v32 = v63;
  if ((v3 & 1) == 0)
  {
    sub_1E4AAAA10();
    v33 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v34 = v61;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v62 + 8))(v34, v32);
    v31 = v80;
  }

  swift_getKeyPath();
  *&v80 = v31;
  sub_1E4AAA060();

  v35 = *(v31 + 12);

  if (v3)
  {
    v79 = a1;
  }

  else
  {

    sub_1E4AAAA10();
    v36 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v37 = v61;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v62 + 8))(v37, v32);
    a1 = v79;
  }

  swift_getKeyPath();
  *&v80 = a1;
  sub_1E4AAA060();

  v38 = a1[8];
  v72 = a1[7];
  v73 = v38;
  v39 = a1[10];
  v74 = a1[9];
  v75 = v39;
  v40 = a1[3];
  v41 = a1[5];
  v42 = a1[6];
  v69 = a1[4];
  v70 = v41;
  v71 = v42;
  v67 = a1[2];
  v68 = v40;
  sub_1E4A49D24(&v67, &v80);

  *&v66[8] = v67;
  *&v66[72] = v71;
  *&v66[56] = v70;
  *&v66[40] = v69;
  *&v66[24] = v68;
  *&v66[136] = v75;
  *&v66[120] = v74;
  *&v66[104] = v73;
  *&v66[88] = v72;
  *&v76[0] = v35;
  *(&v76[9] + 1) = *(&v75 + 1);
  *(&v76[7] + 8) = *&v66[112];
  *(&v76[6] + 8) = *&v66[96];
  *(&v76[3] + 8) = *&v66[48];
  *(&v76[2] + 8) = *&v66[32];
  *(&v76[8] + 8) = *&v66[128];
  *(&v76[4] + 8) = *&v66[64];
  *(&v76[5] + 8) = *&v66[80];
  *(v76 + 8) = *v66;
  *(&v76[1] + 8) = *&v66[16];
  v86 = v76[6];
  v87 = v76[7];
  v88 = v76[8];
  v89 = v76[9];
  v82 = v76[2];
  v83 = v76[3];
  v84 = v76[4];
  v85 = v76[5];
  v80 = v76[0];
  v81 = v76[1];
  *&v77[104] = *&v66[96];
  *&v77[120] = *&v66[112];
  *&v77[136] = *&v66[128];
  *&v77[40] = *&v66[32];
  *&v77[56] = *&v66[48];
  *&v77[72] = *&v66[64];
  *&v77[88] = *&v66[80];
  *&v77[8] = *v66;
  *v77 = v35;
  v78 = *(&v75 + 1);
  *&v77[24] = *&v66[16];
  sub_1E4A52D40(v76, &v65, &qword_1ECF8E330, &qword_1E4AAF838);
  sub_1E4A4DC88(v77, &qword_1ECF8E330, &qword_1E4AAF838);
  v43 = sub_1E4AAA290();
  v44 = sub_1E4AAA4F0();
  v45 = v59;
  *a3 = v60;
  *(a3 + 8) = v45;
  *(a3 + 16) = v58;
  *(a3 + 24) = v12;
  *(a3 + 32) = v14;
  *(a3 + 40) = v16;
  *(a3 + 48) = v18;
  *(a3 + 56) = v20;
  v46 = v118;
  *(a3 + 160) = v117;
  *(a3 + 176) = v46;
  v47 = v120;
  *(a3 + 192) = v119;
  *(a3 + 208) = v47;
  v48 = v114;
  *(a3 + 96) = v113;
  *(a3 + 112) = v48;
  v49 = v116;
  *(a3 + 128) = v115;
  *(a3 + 144) = v49;
  v50 = v112;
  *(a3 + 64) = v111;
  *(a3 + 80) = v50;
  v51 = v87;
  *(a3 + 320) = v86;
  *(a3 + 336) = v51;
  v52 = v89;
  *(a3 + 352) = v88;
  *(a3 + 368) = v52;
  v53 = v83;
  *(a3 + 256) = v82;
  *(a3 + 272) = v53;
  v54 = v85;
  *(a3 + 288) = v84;
  *(a3 + 304) = v54;
  result = *&v80;
  v56 = v81;
  *(a3 + 224) = v80;
  *(a3 + 240) = v56;
  *(a3 + 384) = v43;
  *(a3 + 392) = v44;
  return result;
}

void *sub_1E4A51B08@<X0>(uint64_t a1@<X0>, __int16 a2@<W1>, uint64_t *a3@<X8>)
{
  v6 = sub_1E4AAA320();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v17 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);

  v10 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1E4AAAA10();
    v11 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v18;
  }

  swift_getKeyPath();
  v18 = v10;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v12 = *(v10 + 16);

  if (v12)
  {
    result = sub_1E4A51CF4(a2 & 0xFF01, v12, &v18);
    v14 = v18;
    v15 = 256;
    if (!v20)
    {
      v15 = 0;
    }

    v16 = v15 | v19;
  }

  else
  {
    v14 = 0;
    v16 = 0;
  }

  *a3 = v14;
  a3[1] = v16;
  a3[2] = v12;
  return result;
}

void *sub_1E4A51CF4@<X0>(__int16 a1@<W1>, uint64_t a2@<X2>, uint64_t a3@<X8>)
{
  if (HIBYTE(a1))
  {
    if (HIBYTE(a1) != 1)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E338, &qword_1E4AAF868);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E340, &qword_1E4AAF870);
      sub_1E4A52DA8();
      sub_1E4A49E30(&qword_1EE042438, &qword_1ECF8E340, &qword_1E4AAF870, MEMORY[0x1E697BFA0]);
      goto LABEL_7;
    }

    v6 = a2;
    v7 = 1;
  }

  else
  {
    v6 = a2;
    v7 = 0;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E348, &qword_1E4AAF878);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E350, &qword_1E4AAF880);
  v4 = MEMORY[0x1E697BFA0];
  sub_1E4A49E30(&qword_1EE042430, &qword_1ECF8E348, &qword_1E4AAF878, MEMORY[0x1E697BFA0]);
  sub_1E4A49E30(&qword_1EE042428, &qword_1ECF8E350, &qword_1E4AAF880, v4);
  sub_1E4AAA430();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E338, &qword_1E4AAF868);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E340, &qword_1E4AAF870);
  sub_1E4A52DA8();
  sub_1E4A49E30(&qword_1EE042438, &qword_1ECF8E340, &qword_1E4AAF870, v4);
LABEL_7:
  result = sub_1E4AAA430();
  *a3 = v6;
  *(a3 + 8) = v7;
  *(a3 + 9) = v8;
  return result;
}

uint64_t sub_1E4A51F38(uint64_t a1, char a2)
{
  v4 = sub_1E4AAA320();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);

  v8 = a1;
  if ((a2 & 1) == 0)
  {
    sub_1E4AAAA10();
    v9 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v5 + 8))(v7, v4);
    v8 = v19;
  }

  swift_getKeyPath();
  v19 = v8;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v10 = *(v8 + 16);

  if (v10)
  {
    v12 = [*(v10 + 16) adjustmentTraits];
    v13 = [v12 offset];

    v14 = a1;
    if ((a2 & 1) == 0)
    {
      sub_1E4AAAA10();
      v15 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v5 + 8))(v7, v4);
      v14 = v19;
    }

    v18 = v5;
    swift_getKeyPath();
    v19 = v14;
    sub_1E4AAA060();

    v16 = *(v14 + 104);

    [v13 offsetForCurrentScreenScaleModeWithInterfaceOrientation_];

    if ((a2 & 1) == 0)
    {
      sub_1E4AAAA10();
      v17 = sub_1E4AAA4E0();
      sub_1E4AAA0B0();

      sub_1E4AAA310();
      swift_getAtKeyPath();

      (*(v18 + 8))(v7, v4);
      a1 = v19;
    }

    swift_getKeyPath();
    v19 = a1;
    sub_1E4AAA060();
  }

  return result;
}

void sub_1E4A52360()
{
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v0 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v0, qword_1EE048B58);
  oslog = sub_1E4AAA0C0();
  v1 = sub_1E4AAAA20();
  if (os_log_type_enabled(oslog, v1))
  {
    v2 = swift_slowAlloc();
    v3 = swift_slowAlloc();
    v5 = v3;
    *v2 = 136446466;
    *(v2 + 4) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB88B0, &v5);
    *(v2 + 12) = 2082;
    *(v2 + 14) = sub_1E4A85938(0xD000000000000049, 0x80000001E4AB88D0, &v5);
    _os_log_impl(&dword_1E4A23000, oslog, v1, "…Complete (%{public}s.%{public}s)", v2, 0x16u);
    swift_arrayDestroy();
    MEMORY[0x1E691FE80](v3, -1, -1);
    MEMORY[0x1E691FE80](v2, -1, -1);
  }
}

void sub_1E4A524E8(uint64_t a1, void *a2, void *a3, void *a4)
{
  v47 = a4;
  v44 = a3;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E318, &qword_1E4AAF6C0);
  v7 = *(v6 - 8);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v45 = &v41 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x1EEE9AC00](v8);
  v46 = &v41 - v11;
  v12 = MEMORY[0x1EEE9AC00](v10);
  v14 = &v41 - v13;
  v15 = MEMORY[0x1EEE9AC00](v12);
  v54 = &v41 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v53 = &v41 - v17;
  if (qword_1EE0424A8 != -1)
  {
    swift_once();
  }

  v18 = sub_1E4AAA0E0();
  __swift_project_value_buffer(v18, qword_1EE048B58);
  v19 = sub_1E4AAA0C0();
  v20 = sub_1E4AAAA20();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    v22 = a2;
    v23 = swift_slowAlloc();
    v55 = v23;
    *v21 = 136446466;
    *(v21 + 4) = sub_1E4A85938(0xD00000000000001BLL, 0x80000001E4AB88B0, &v55);
    *(v21 + 12) = 2082;
    *(v21 + 14) = sub_1E4A85938(0xD000000000000049, 0x80000001E4AB88D0, &v55);
    _os_log_impl(&dword_1E4A23000, v19, v20, "Start (%{public}s.%{public}s)…", v21, 0x16u);
    swift_arrayDestroy();
    v24 = v23;
    a2 = v22;
    MEMORY[0x1E691FE80](v24, -1, -1);
    MEMORY[0x1E691FE80](v21, -1, -1);
  }

  v25 = [objc_opt_self() blackColor];
  [a2 setBackgroundColor_];

  type metadata accessor for WKWallpaperPosterLayerViewModel(0);
  v48 = sub_1E4A52BC8();
  v55 = sub_1E4AAA1E0();
  v56 = v26 & 1;
  v57 = 0;
  v27 = sub_1E4A52C20();
  v51 = a1;
  v52 = v27;
  sub_1E4AAA560();

  v28 = *(v7 + 16);
  v29 = v54;
  v28();
  v50 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E320, &qword_1E4AAF6C8);
  v30 = v29;
  (v28)(v14, v29, v6);
  v31 = sub_1E4AAA270();
  [v31 _setSafeAreaInsetsFrozen_];
  v49 = *(v7 + 8);
  v49(v30, v6);
  v43 = v31;
  [a2 addSubview_];
  [a2 bounds];
  [v31 setFrame_];
  [v31 setAutoresizingMask_];
  v55 = sub_1E4AAA1E0();
  v56 = v32 & 1;
  v57 = 1;
  sub_1E4AAA560();

  v42 = v28;
  (v28)(v14, v30, v6);
  v33 = v46;
  (v28)(v46, v14, v6);
  v34 = sub_1E4AAA270();
  [v34 _setSafeAreaInsetsFrozen_];
  v49(v14, v6);
  v35 = v44;
  [v44 addSubview_];
  [v35 bounds];
  [v34 setFrame_];
  [v34 setAutoresizingMask_];
  v55 = sub_1E4AAA1E0();
  v56 = v36 & 1;
  v57 = 2;
  sub_1E4AAA560();

  v37 = v42;
  (v42)(v33, v14, v6);
  (v37)(v45, v33, v6);
  v38 = sub_1E4AAA270();
  [v38 _setSafeAreaInsetsFrozen_];
  v39 = v49;
  v49(v33, v6);
  v40 = v47;
  [v47 addSubview_];
  [v40 bounds];
  [v38 setFrame_];
  [v38 setAutoresizingMask_];

  v39(v14, v6);
  v39(v54, v6);
  v39(v53, v6);
  sub_1E4A52360();
}

unint64_t sub_1E4A52BC8()
{
  result = qword_1EE042900;
  if (!qword_1EE042900)
  {
    type metadata accessor for WKWallpaperPosterLayerViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042900);
  }

  return result;
}

unint64_t sub_1E4A52C20()
{
  result = qword_1EE043000;
  if (!qword_1EE043000)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043000);
  }

  return result;
}

uint64_t __swift_memcpy10_8(uint64_t result, uint64_t *a2)
{
  v2 = *a2;
  *(result + 8) = *(a2 + 4);
  *result = v2;
  return result;
}

uint64_t sub_1E4A52C88(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 10))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
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

uint64_t sub_1E4A52CD0(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 8) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 10) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 10) = 0;
    }

    if (a2)
    {
      *(result + 8) = -a2;
    }
  }

  return result;
}

uint64_t sub_1E4A52D40(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4A52DA8()
{
  result = qword_1EE0422E8;
  if (!qword_1EE0422E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E338, &qword_1E4AAF868);
    v1 = MEMORY[0x1E697BFA0];
    sub_1E4A49E30(&qword_1EE042430, &qword_1ECF8E348, &qword_1E4AAF878, MEMORY[0x1E697BFA0]);
    sub_1E4A49E30(&qword_1EE042428, &qword_1ECF8E350, &qword_1E4AAF880, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0422E8);
  }

  return result;
}

unint64_t sub_1E4A52E98()
{
  result = qword_1EE042360;
  if (!qword_1EE042360)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E358, &qword_1E4AAF890);
    sub_1E4A52F24();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042360);
  }

  return result;
}

unint64_t sub_1E4A52F24()
{
  result = qword_1EE042368;
  if (!qword_1EE042368)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E360, &qword_1E4AAF898);
    sub_1E4A52FDC();
    sub_1E4A49E30(&qword_1EE042350, &qword_1ECF8E330, &qword_1E4AAF838, MEMORY[0x1E697F548]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042368);
  }

  return result;
}

unint64_t sub_1E4A52FDC()
{
  result = qword_1EE042380;
  if (!qword_1EE042380)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E368, &qword_1E4AAF8A0);
    sub_1E4A53094();
    sub_1E4A49E30(&qword_1EE0422A0, &qword_1ECF8E328, &qword_1E4AAF830, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042380);
  }

  return result;
}

unint64_t sub_1E4A53094()
{
  result = qword_1EE042398;
  if (!qword_1EE042398)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E370, &qword_1E4AAF8A8);
    sub_1E4A53120();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042398);
  }

  return result;
}

unint64_t sub_1E4A53120()
{
  result = qword_1EE0423B8;
  if (!qword_1EE0423B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E378, &qword_1E4AAF8B0);
    sub_1E4A531AC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0423B8);
  }

  return result;
}

unint64_t sub_1E4A531AC()
{
  result = qword_1EE042270;
  if (!qword_1EE042270)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E380, &qword_1E4AAF8B8);
    sub_1E4A53230();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042270);
  }

  return result;
}

unint64_t sub_1E4A53230()
{
  result = qword_1EE042250;
  if (!qword_1EE042250)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E388, &qword_1E4AAF8C0);
    sub_1E4A49E30(&qword_1EE042258, &qword_1ECF8E390, qword_1E4AAF8C8, MEMORY[0x1E6981810]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042250);
  }

  return result;
}

unint64_t sub_1E4A532E4()
{
  result = qword_1ECF8E398;
  if (!qword_1ECF8E398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E398);
  }

  return result;
}

void *sub_1E4A53338()
{
  sub_1E4A53380();

  return sub_1E4AAA330();
}

unint64_t sub_1E4A53380()
{
  result = qword_1EE0433E0;
  if (!qword_1EE0433E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0433E0);
  }

  return result;
}

__n128 sub_1E4A533E4()
{
  if (qword_1EE043068 != -1)
  {
    swift_once();
  }

  v0 = byte_1EE043070;
  v1 = qword_1EE043078;
  if (qword_1EE043040 != -1)
  {
    swift_once();
  }

  v2 = byte_1EE043048;
  v3 = qword_1EE043050;
  v4 = *MEMORY[0x1E6979EB8];
  v5 = objc_opt_self();
  v6 = v4;
  v7 = [v5 functionWithName_];

  v8 = sub_1E4AAA720();
  LOBYTE(xmmword_1EE048C10) = 0;
  BYTE8(xmmword_1EE048C10) = v0;
  *&xmmword_1EE048C20 = v1;
  BYTE8(xmmword_1EE048C20) = v2;
  *&xmmword_1EE048C30 = v3;
  BYTE8(xmmword_1EE048C30) = 1;
  *&xmmword_1EE048C40 = 0;
  *(&xmmword_1EE048C40 + 1) = v7;
  *&xmmword_1EE048C50 = v8;
  *(&xmmword_1EE048C50 + 1) = 1;
  xmmword_1EE048C60 = 0uLL;
  __asm { FMOV            V0.2D, #1.0 }

  xmmword_1EE048C70 = result;
  *&xmmword_1EE048C90 = 0;
  *(&xmmword_1EE048C90 + 1) = 0x3FF0000000000000;
  xmmword_1EE048C80 = 0uLL;
  return result;
}

uint64_t sub_1E4A53524@<X0>(__int128 *a1@<X8>)
{
  if (qword_1EE0433E8 != -1)
  {
    v9 = a1;
    swift_once();
    a1 = v9;
  }

  v1 = xmmword_1EE048C60;
  v11[6] = xmmword_1EE048C70;
  v11[7] = xmmword_1EE048C80;
  v2 = xmmword_1EE048C80;
  v11[8] = xmmword_1EE048C90;
  v3 = xmmword_1EE048C20;
  v4 = xmmword_1EE048C30;
  v11[2] = xmmword_1EE048C30;
  v11[3] = xmmword_1EE048C40;
  v5 = xmmword_1EE048C40;
  v6 = xmmword_1EE048C50;
  v11[4] = xmmword_1EE048C50;
  v11[5] = xmmword_1EE048C60;
  v7 = xmmword_1EE048C10;
  v11[0] = xmmword_1EE048C10;
  v11[1] = xmmword_1EE048C20;
  a1[6] = xmmword_1EE048C70;
  a1[7] = v2;
  a1[8] = xmmword_1EE048C90;
  a1[2] = v4;
  a1[3] = v5;
  a1[4] = v6;
  a1[5] = v1;
  *a1 = v7;
  a1[1] = v3;
  return sub_1E4A49D24(v11, &v10);
}

uint64_t sub_1E4A535E4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_1E4A53648();

  return MEMORY[0x1EEDDEA00](a1, a2, a3, a4, v8);
}

unint64_t sub_1E4A53648()
{
  result = qword_1EE042A70;
  if (!qword_1EE042A70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042A70);
  }

  return result;
}

uint64_t sub_1E4A536B4(SEL *a1)
{
  v2 = [*(*v1 + 16) *a1];
  sub_1E4A459A0();
  v3 = sub_1E4AAA950();

  return v3;
}

uint64_t WKBokehWallpaperInput.init(backgroundColors:bubbleColors:bubbleCount:bubbleScale:parallaxMultiplier:thumbnailSeed:)@<X0>(uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>, double a6@<D0>, double a7@<D1>)
{
  v12 = objc_allocWithZone(WKBokehWallpaperInput);
  sub_1E4A459A0();
  v13 = sub_1E4AAA940();

  v14 = sub_1E4AAA940();

  v15 = [v12 initWithBackgroundColors:v13 bubbleColors:v14 bubbleCount:a3 bubbleScale:a4 parallaxMultiplier:a6 thumbnailSeed:a7];

  type metadata accessor for WKBokehWallpaperInput.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v15;
  *a5 = result;
  return result;
}

uint64_t WKBokehWallpaperInput.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKBokehWallpaperInput.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

uint64_t WKBokehWallpaperInput.description.getter()
{
  v1 = [*(*v0 + 16) description];
  v2 = sub_1E4AAA8A0();

  return v2;
}

unint64_t sub_1E4A539B4()
{
  result = qword_1ECF8E3A0;
  if (!qword_1ECF8E3A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3A0);
  }

  return result;
}

uint64_t sub_1E4A53A18(unsigned __int8 a1)
{
  if (a1 <= 7u)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v1 = swift_allocObject();
    *(v1 + 16) = xmmword_1E4AAFAF0;
    *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
    v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.0 blue:0.0 alpha:1.0];
LABEL_3:
    v3 = v2;
    result = v1;
    *(v1 + 40) = v3;
    return result;
  }

  if (a1 <= 0xAu)
  {
    if (a1 == 8)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.403921569 green:0.780392157 blue:0.941176471 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.184313725 green:0.509803922 blue:0.729411765 alpha:1.0];
    }

    else if (a1 == 9)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.62745098 green:0.839215686 blue:0.309803922 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.388235294 green:0.650980392 blue:0.156862745 alpha:1.0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.839215686 blue:0.309803922 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.980392157 green:0.745098039 blue:0.145098039 alpha:1.0];
    }

    goto LABEL_3;
  }

  if (a1 <= 0xCu)
  {
    if (a1 == 11)
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.360784314 blue:0.380392157 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.878431373 green:0.219607843 blue:0.262745098 alpha:1.0];
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
      v1 = swift_allocObject();
      *(v1 + 16) = xmmword_1E4AAFAF0;
      *(v1 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.658823529 green:0.654901961 blue:0.635294118 alpha:1.0];
      v2 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.380392157 green:0.37254902 blue:0.349019608 alpha:1.0];
    }

    goto LABEL_3;
  }

  if (a1 == 13)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v5 = swift_allocObject();
    *(v5 + 16) = xmmword_1E4AAFAE0;
    *(v5 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.243137255 green:0.501960784 blue:0.698039216 alpha:1.0];
    *(v5 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.305882353 green:0.576470588 blue:0.760784314 alpha:1.0];
    *(v5 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.384313725 green:0.647058824 blue:0.8 alpha:1.0];
    *(v5 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.435294118 green:0.705882353 blue:0.839215686 alpha:1.0];
    *(v5 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.482352941 green:0.745098039 blue:0.858823529 alpha:1.0];
    *(v5 + 72) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.521568627 green:0.752941176 blue:0.870588235 alpha:1.0];
    *(v5 + 80) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.541176471 green:0.749019608 blue:0.870588235 alpha:1.0];
    *(v5 + 88) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.560784314 green:0.717647059 blue:0.858823529 alpha:1.0];
    *(v5 + 96) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.576470588 green:0.670588235 blue:0.850980392 alpha:1.0];
    *(v5 + 104) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.541176471 green:0.607843137 blue:0.831372549 alpha:1.0];
    *(v5 + 112) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.478431373 green:0.525490196 blue:0.768627451 alpha:1.0];
    *(v5 + 120) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.37254902 green:0.415686275 blue:0.678431373 alpha:1.0];
    *(v5 + 128) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.258823529 green:0.305882353 blue:0.549019608 alpha:1.0];
    v6 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.121568627 green:0.180392157 blue:0.380392157 alpha:1.0];
    result = v5;
    *(v5 + 136) = v6;
  }

  else
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
    v7 = swift_allocObject();
    *(v7 + 16) = xmmword_1E4AAFAD0;
    *(v7 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.415686275 green:0.501960784 blue:0.560784314 alpha:1.0];
    *(v7 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.51372549 green:0.584313725 blue:0.619607843 alpha:1.0];
    *(v7 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.631372549 blue:0.658823529 alpha:1.0];
    *(v7 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.552941176 green:0.62745098 blue:0.650980392 alpha:1.0];
    *(v7 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.478431373 green:0.568627451 blue:0.6 alpha:1.0];
    v8 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.321568627 green:0.447058824 blue:0.501960784 alpha:1.0];
    result = v7;
    *(v7 + 72) = v8;
  }

  return result;
}

uint64_t sub_1E4A541E0(char a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E9A0, &qword_1E4AB3700);
  switch(a1)
  {
    case 1:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.156862745 green:0.662745098 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.196078431 blue:0.650980392 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0352941176 blue:0.22745098 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.466666667 blue:0.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.450980392 green:1.0 blue:0.450980392 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 0.882352941;
      goto LABEL_15;
    case 2:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0352941176 blue:0.22745098 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.917647059 green:0.0 blue:0.243137255 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.101960784 blue:0.274509804 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.188235294 blue:0.270588235 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:0.0 blue:0.145098039 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.925490196 green:0.0823529412 blue:0.203921569 alpha:1.0];
      goto LABEL_20;
    case 3:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.850980392 blue:0.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.866666667 blue:0.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.850980392 blue:0.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.854901961 blue:0.2 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.878431373 blue:0.101960784 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.894117647 blue:0.2 alpha:1.0];
      goto LABEL_20;
    case 4:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.349019608 green:1.0 blue:0.458823529 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.4 green:1.0 blue:0.478431373 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.349019608 green:1.0 blue:0.501960784 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.301960784 green:1.0 blue:0.356862745 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.450980392 green:1.0 blue:0.450980392 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.301960784 green:1.0 blue:0.415686275 alpha:0.898039216];
      goto LABEL_20;
    case 5:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.619607843 green:0.196078431 blue:0.650980392 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.639215686 green:0.168627451 blue:0.678431373 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.68627451 green:0.11372549 blue:0.749019608 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.607843137 green:0.0823529412 blue:0.701960784 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.631372549 green:0.105882353 blue:0.698039216 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.623529412 green:0.0980392157 blue:0.650980392 alpha:0.898039216];
      goto LABEL_20;
    case 6:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.431372549 blue:0.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.482352941 blue:0.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.501960784 blue:0.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.450980392 blue:0.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.466666667 blue:0.0 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 0.517647059;
LABEL_15:
      v8 = 1.0;
      v9 = 0.0;
      v10 = 1.0;
      goto LABEL_19;
    case 7:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.156862745 green:0.662745098 blue:1.0 alpha:0.898039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0784313725 green:0.709803922 blue:1.0 alpha:0.898039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0980392157 green:0.639215686 blue:1.0 alpha:0.898039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.603921569 blue:0.929411765 alpha:0.898039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.149019608 green:0.701960784 blue:1.0 alpha:0.898039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.0 green:0.584313725 blue:0.949019608 alpha:0.898039216];
      goto LABEL_20;
    case 8:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.8 green:1.0 blue:0.984313725 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:1.0 blue:0.976470588 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:1.0 blue:0.980392157 alpha:1.0];
      v6 = objc_allocWithZone(MEMORY[0x1E69DC888]);
      v7 = 1.0;
      v10 = 1.0;
      v8 = 0.749019608;
      v9 = 0.980392157;
LABEL_19:
      v5 = [v6 initWithRed:v8 green:v7 blue:v9 alpha:v10];
      goto LABEL_20;
    case 9:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.850980392 green:1.0 blue:0.549019608 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.866666667 green:1.0 blue:0.6 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.831372549 green:1.0 blue:0.501960784 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.850980392 green:1.0 blue:0.549019608 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.858823529 green:1.0 blue:0.501960784 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.831372549 green:1.0 blue:0.501960784 alpha:0.498039216];
      goto LABEL_20;
    case 10:
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1E4AAFB00;
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.988235294 blue:0.901960784 alpha:0.498039216];
      goto LABEL_17;
    case 11:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.901960784 blue:0.917647059 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.866666667 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.8 blue:0.866666667 alpha:0.498039216];
      goto LABEL_20;
    case 12:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.929411765 blue:0.874509804 alpha:0.498039216];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.980392157 blue:0.921568627 alpha:0.498039216];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.949019608 green:0.925490196 blue:0.854901961 alpha:0.498039216];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:0.968627451 blue:0.878431373 alpha:0.498039216];
      goto LABEL_20;
    case 13:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.549019608 green:0.811764706 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.733333333 green:0.733333333 blue:0.949019608 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.823529412 blue:1.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.941176471 blue:1.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.6 green:0.721568627 blue:1.0 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.549019608 green:1.0 blue:1.0 alpha:1.0];
      goto LABEL_20;
    case 14:
      v4 = swift_allocObject();
      *(v4 + 16) = xmmword_1E4AAFAD0;
      *(v4 + 32) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.909803922 blue:1.0 alpha:1.0];
      *(v4 + 40) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:0.925490196 blue:1.0 alpha:1.0];
      *(v4 + 48) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.698039216 green:0.909803922 blue:1.0 alpha:1.0];
      *(v4 + 56) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.894117647 blue:1.0 alpha:1.0];
      *(v4 + 64) = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.650980392 green:0.894117647 blue:1.0 alpha:1.0];
      v5 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:0.749019608 green:0.925490196 blue:1.0 alpha:1.0];
LABEL_20:
      v13 = v5;
      result = v4;
      *(v4 + 72) = v13;
      break;
    default:
      v2 = swift_allocObject();
      *(v2 + 16) = xmmword_1E4AAFB00;
      v3 = [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithRed:1.0 green:1.0 blue:1.0 alpha:0.498039216];
LABEL_17:
      v11 = v3;
      result = v2;
      *(v2 + 32) = v11;
      break;
  }

  return result;
}

uint64_t sub_1E4A55254(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E4A5575C();
  if (sub_1E4AAAB10())
  {
    if (sub_1E4AAAB10())
    {

      return 1;
    }

    if (sub_1E4AAAB10())
    {

      return 4;
    }

    if (sub_1E4AAAB10())
    {

      return 3;
    }

    if (sub_1E4AAAB10())
    {

      return 6;
    }

    if ((sub_1E4AAAB10() & 1) == 0)
    {
      if (sub_1E4AAAB10())
      {

        return 5;
      }

      else
      {
        v6 = sub_1E4AAAB10();

        if (v6)
        {
          return 7;
        }

        else
        {
          return 0;
        }
      }
    }

LABEL_25:

    return 2;
  }

  if (sub_1E4AAAB10())
  {

    return 14;
  }

  if ((sub_1E4AAAB10() & 1) != 0 && (sub_1E4AAAB10() & 1) == 0)
  {

    return 13;
  }

  if (sub_1E4AAAB10())
  {

    return 8;
  }

  if (sub_1E4AAAB10())
  {

    return 9;
  }

  if (sub_1E4AAAB10())
  {

    return 10;
  }

  if (sub_1E4AAAB10())
  {
    goto LABEL_25;
  }

  if (sub_1E4AAAB10())
  {
    v5 = sub_1E4AAAB10();

    if (v5)
    {
      return 0;
    }

    else
    {
      return 12;
    }
  }

  else
  {

    return 0;
  }
}

unint64_t sub_1E4A5575C()
{
  result = qword_1EE042220;
  if (!qword_1EE042220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042220);
  }

  return result;
}

Swift::OpaquePointer_optional __swiftcall WKWallpaper.propertyListRepresentation()()
{
  v0 = 0;
  result.value._rawValue = v0;
  return result;
}

uint64_t WKWallpaper.copyWallpaperContents(to:)(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = (*(a3 + 64))(a2, a3);
  if ((result & 1) == 0)
  {
    type metadata accessor for WKWallpaperKitError(0);
    sub_1E4A55FB0(MEMORY[0x1E69E7CC0]);
    sub_1E4A560C0();
    sub_1E4AA9F50();
    return swift_willThrow();
  }

  return result;
}

id sub_1E4A55888(uint64_t a1)
{
  v2 = v1;
  v4 = *(a1 - 8);
  MEMORY[0x1EEE9AC00](a1);
  v6 = &v10 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v4 + 16))(v6, v2, a1);
  if (swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast() || swift_dynamicCast())
  {
    v7 = *(v10 + 16);

    (*(v4 + 8))(v6, a1);
    return v7;
  }

  else
  {
    v10 = 0;
    v11 = 0xE000000000000000;
    sub_1E4AAABC0();

    v10 = 0xD000000000000018;
    v11 = 0x80000001E4AB89A0;
    swift_getDynamicType();
    v9 = sub_1E4AAAE90();
    MEMORY[0x1E691ECA0](v9);

    result = sub_1E4AAACB0();
    __break(1u);
  }

  return result;
}

unint64_t sub_1E4A55B0C(uint64_t a1, uint64_t a2)
{
  sub_1E4AAAE00();
  sub_1E4AAA8C0();
  v4 = sub_1E4AAAE40();

  return sub_1E4A55B84(a1, a2, v4);
}

unint64_t sub_1E4A55B84(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v4 = -1 << *(v3 + 32);
  v5 = a3 & ~v4;
  if ((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5))
  {
    v8 = ~v4;
    do
    {
      v9 = (*(v3 + 48) + 16 * v5);
      if (*v9 == a1 && v9[1] == a2)
      {
        break;
      }

      if (sub_1E4AAADA0())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t _s12WallpaperKit16WKWallpaperValueO2eeoiySbAC_ACtFZ_0(uint64_t a1, void *a2)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *a2;
  v5 = *(a2 + 8);
  if (v3 <= 2)
  {
    if (*(a1 + 8))
    {
      if (v3 == 1)
      {
        if (v5 == 1)
        {
          v13 = v2[2];
          v14 = v4[2];
          sub_1E4A562F4(*a2, 1u);
          sub_1E4A562F4(v2, 1u);
          v8 = v13;
          v9 = v14;
          v10 = [v8 isEqual_];
          sub_1E4A4EF3C(v2, 1u);
          v11 = v4;
          v12 = 1;
          goto LABEL_21;
        }
      }

      else if (v5 == 2)
      {
        v19 = v2[2];
        v20 = v4[2];
        sub_1E4A562F4(*a2, 2u);
        sub_1E4A562F4(v2, 2u);
        v8 = v19;
        v9 = v20;
        v10 = [v8 isEqual_];
        sub_1E4A4EF3C(v2, 2u);
        v11 = v4;
        v12 = 2;
        goto LABEL_21;
      }
    }

    else if (!*(a2 + 8))
    {
      v17 = v2[2];
      v18 = v4[2];
      sub_1E4A562F4(*a2, 0);
      sub_1E4A562F4(v2, 0);
      v8 = v17;
      v9 = v18;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 0);
      v11 = v4;
      v12 = 0;
      goto LABEL_21;
    }
  }

  else if (*(a1 + 8) > 4u)
  {
    if (v3 == 5)
    {
      if (v5 == 5)
      {
        v15 = v2[2];
        v16 = v4[2];
        sub_1E4A562F4(*a2, 5u);
        sub_1E4A562F4(v2, 5u);
        v8 = v15;
        v9 = v16;
        v10 = [v8 isEqual_];
        sub_1E4A4EF3C(v2, 5u);
        v11 = v4;
        v12 = 5;
        goto LABEL_21;
      }
    }

    else if (v5 == 6)
    {
      v23 = v2[2];
      v24 = v4[2];
      sub_1E4A562F4(*a2, 6u);
      sub_1E4A562F4(v2, 6u);
      v8 = v23;
      v9 = v24;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 6u);
      v11 = v4;
      v12 = 6;
      goto LABEL_21;
    }
  }

  else if (v3 == 3)
  {
    if (v5 == 3)
    {
      v6 = v2[2];
      v7 = v4[2];
      sub_1E4A562F4(*a2, 3u);
      sub_1E4A562F4(v2, 3u);
      v8 = v6;
      v9 = v7;
      v10 = [v8 isEqual_];
      sub_1E4A4EF3C(v2, 3u);
      v11 = v4;
      v12 = 3;
LABEL_21:
      sub_1E4A4EF3C(v11, v12);

      return v10;
    }
  }

  else if (v5 == 4)
  {
    sub_1E4A5634C();
    sub_1E4A562F4(v4, 4u);
    sub_1E4A562F4(v2, 4u);
    v21 = sub_1E4AAAAD0();
    sub_1E4A4EF3C(v2, 4u);
    sub_1E4A4EF3C(v4, 4u);
    return v21 & 1;
  }

  sub_1E4A562F4(*a2, *(a2 + 8));
  sub_1E4A562F4(v2, v3);
  sub_1E4A4EF3C(v2, v3);
  sub_1E4A4EF3C(v4, v5);
  return 0;
}

unint64_t sub_1E4A55FB0(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (v1)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2A0, &qword_1E4AAEF30);
    v3 = sub_1E4AAAD00();
    v4 = a1 + 32;

    while (1)
    {
      sub_1E4A56398(v4, &v13);
      v5 = v13;
      v6 = v14;
      result = sub_1E4A55B0C(v13, v14);
      if (v8)
      {
        break;
      }

      *(v3 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v9 = (v3[6] + 16 * result);
      *v9 = v5;
      v9[1] = v6;
      result = sub_1E4A4DCE8(&v15, (v3[7] + 32 * result));
      v10 = v3[2];
      v11 = __OFADD__(v10, 1);
      v12 = v10 + 1;
      if (v11)
      {
        goto LABEL_10;
      }

      v3[2] = v12;
      v4 += 48;
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

unint64_t sub_1E4A560C0()
{
  result = qword_1ECF8DF68;
  if (!qword_1ECF8DF68)
  {
    type metadata accessor for WKWallpaperKitError(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8DF68);
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

uint64_t sub_1E4A5623C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFA && *(a1 + 9))
  {
    return (*a1 + 250);
  }

  v3 = *(a1 + 8);
  if (v3 <= 6)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1E4A56284(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xF9)
  {
    *(result + 8) = 0;
    *result = a2 - 250;
    if (a3 >= 0xFA)
    {
      *(result + 9) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFA)
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

id sub_1E4A562F4(id result, unsigned __int8 a2)
{
  if (a2 <= 2u)
  {
  }

  if (a2 <= 4u)
  {
    if (a2 != 3)
    {
      if (a2 == 4)
      {
        return result;
      }

      return result;
    }
  }

  if (a2 == 5 || a2 == 6)
  {
  }

  return result;
}

unint64_t sub_1E4A5634C()
{
  result = qword_1EE042128;
  if (!qword_1EE042128)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_1EE042128);
  }

  return result;
}

uint64_t sub_1E4A56398(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3A8, &qword_1E4AAFFF0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E4A56434@<X0>(uint64_t a1@<X8>)
{
  v44 = sub_1E4AAA320();
  v43 = *(v44 - 8);
  MEMORY[0x1EEE9AC00](v44);
  v42 = &v42 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3B0, &unk_1E4AB0110);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v42 - v6;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  v9 = MEMORY[0x1EEE9AC00](v8 - 8);
  v11 = &v42 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v13 = &v42 - v12;
  v14 = sub_1E4AA9FE0();
  v15 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v46 = &v42 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *v1;
  v45 = *(v1 + 8);
  if (![*(v1[21] + 16) valueBasedWallpaperForLocation:@"WKWallpaperLocationCoverSheet" andAppearance:@"default"])
  {
    goto LABEL_6;
  }

  v47 = v4;
  v48 = a1;
  sub_1E4A57768(&v50);
  swift_unknownObjectRelease();
  v18 = *(&v51 + 1);
  v19 = v52;
  __swift_project_boxed_opaque_existential_1(&v50, *(&v51 + 1));
  (*(v19 + 24))(&v60, v18, v19);
  v20 = v60;
  v21 = v61;
  __swift_destroy_boxed_opaque_existential_1Tm(&v50);
  if (v21 != 5)
  {
    sub_1E4A4EF3C(v20, v21);
    a1 = v48;
    v4 = v47;
LABEL_6:
    (*(v15 + 56))(v13, 1, 1, v14);
LABEL_7:
    sub_1E4A480C4(v13);
    return (*(v5 + 56))(a1, 1, 1, v4);
  }

  v22 = [v20[2] floatingAnimationFileURL];
  if (v22)
  {
    v23 = v22;
    sub_1E4AA9FC0();

    v24 = 0;
  }

  else
  {
    v24 = 1;
  }

  a1 = v48;
  v4 = v47;
  (*(v15 + 56))(v11, v24, 1, v14);
  sub_1E4A56BAC(v11, v13, &qword_1ECF8E7C0, &qword_1E4AAEA40);
  sub_1E4A4EF3C(v20, 5u);
  if ((*(v15 + 48))(v13, 1, v14) == 1)
  {
    goto LABEL_7;
  }

  v26 = v46;
  (*(v15 + 32))(v46, v13, v14);
  v27 = type metadata accessor for WKAnimationPackageLayer(0);
  (*(v15 + 16))(&v7[v27[7]], v26, v14);
  if (v45)
  {
    v60 = v17;

    v28 = v17;
  }

  else
  {

    sub_1E4AAAA10();
    v29 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v30 = v42;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v43 + 8))(v30, v44);
    v28 = v60;
  }

  swift_getKeyPath();
  *&v50 = v28;
  sub_1E4A52BC8();
  sub_1E4AAA060();

  v31 = v28[22];

  *&v50 = swift_getKeyPath();
  sub_1E4A4E620(&v50);
  v32 = v57;
  *(v7 + 6) = v56;
  *(v7 + 7) = v32;
  *(v7 + 8) = v58;
  v7[144] = v59;
  v33 = v53;
  *(v7 + 2) = v52;
  *(v7 + 3) = v33;
  v34 = v55;
  *(v7 + 4) = v54;
  *(v7 + 5) = v34;
  v35 = v51;
  *v7 = v50;
  *(v7 + 1) = v35;
  v36 = v27[5];
  *&v7[v36] = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E2C0, &qword_1E4AB01A0);
  swift_storeEnumTagMultiPayload();
  v7[v27[6]] = 2;
  *&v7[v27[8]] = v31;

  if ((v45 & 1) == 0)
  {
    sub_1E4AAAA10();
    v37 = sub_1E4AAA4E0();
    sub_1E4AAA0B0();

    v38 = v42;
    sub_1E4AAA310();
    swift_getAtKeyPath();

    (*(v43 + 8))(v38, v44);
    v17 = v49;
  }

  swift_getKeyPath();
  v49 = v17;
  sub_1E4AAA060();

  (*(v15 + 8))(v46, v14);
  v39 = *(v17 + 192);

  v40 = v47;
  *&v7[*(v47 + 52)] = v39;
  v41 = v48;
  sub_1E4A56BAC(v7, v48, &qword_1ECF8E3B0, &unk_1E4AB0110);
  return (*(v5 + 56))(v41, 0, 1, v40);
}

uint64_t sub_1E4A56BAC(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 32))(a2, a1, v6);
  return a2;
}

unint64_t sub_1E4A56C14()
{
  result = qword_1EE042260;
  if (!qword_1EE042260)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E3B8, &unk_1E4AB01D0);
    sub_1E4A56C98();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042260);
  }

  return result;
}

unint64_t sub_1E4A56C98()
{
  result = qword_1EE042268;
  if (!qword_1EE042268)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF8E3B0, &unk_1E4AB0110);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE042268);
  }

  return result;
}

uint64_t WKWallpaperBundle.adjustmentTraits.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) adjustmentTraits];
  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

float WKWallpaperBundle.contentVersion.getter()
{
  v1 = [*(*v0 + 16) contentVersion];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

uint64_t WKWallpaperBundle.family.getter()
{
  v1 = [*(*v0 + 16) family];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4AAA8A0();

  return v3;
}

uint64_t WKWallpaperBundle.preferredProminentColors.getter()
{
  v1 = [*(*v0 + 16) preferredProminentColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  type metadata accessor for WKWallpaperAppearance(0);
  sub_1E4A47A2C(0, &qword_1EE042130, 0x1E69DC888);
  sub_1E4A58928(&qword_1EE042190, type metadata accessor for WKWallpaperAppearance, &unk_1E4AAE570);
  v3 = sub_1E4AAA810();

  return v3;
}

id WKWallpaperBundle.logicalScreenClass.getter()
{
  v1 = [*(*v0 + 16) logicalScreenClass];

  return v1;
}

uint64_t WKWallpaperBundle.maximumAdaptiveTimeMultiplier.getter()
{
  v1 = *v0;
  [*(*v0 + 16) maximumAdaptiveTimeMultiplier];
  if (v2 == 2.22507386e-308)
  {
    return 0;
  }

  [*(v1 + 16) maximumAdaptiveTimeMultiplier];
  return v4;
}

uint64_t WKWallpaperBundle.preferredTitleColors.getter()
{
  v1 = [*(*v0 + 16) preferredTitleColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E4A47A2C(0, &unk_1ECF8E3C0, 0x1E69C52D8);
  v3 = sub_1E4AAA950();

  return v3;
}

uint64_t sub_1E4A571B0@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    a2[3] = &type metadata for WKLayeredStripeWallpaper;
    a2[4] = &protocol witness table for WKLayeredStripeWallpaper;
    type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v4 = v5;
      a2[3] = &type metadata for WKLayeredStillWallpaper;
      a2[4] = &protocol witness table for WKLayeredStillWallpaper;
      type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v4 = v6;
        a2[3] = &type metadata for WKLayeredAnimationWallpaper;
        a2[4] = &protocol witness table for WKLayeredAnimationWallpaper;
        type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
      }

      else
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v4 = v7;
          a2[3] = &type metadata for WKLayeredThumbnailWallpaper;
          a2[4] = &protocol witness table for WKLayeredThumbnailWallpaper;
          type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
        }

        else
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (v8)
          {
            v4 = v8;
            a2[3] = &type metadata for WKBokehWallpaper;
            a2[4] = &protocol witness table for WKBokehWallpaper;
            type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
          }

          else
          {
            objc_opt_self();
            v9 = swift_dynamicCastObjCClass();
            if (v9)
            {
              v4 = v9;
              a2[3] = &type metadata for WKThumbnailWallpaper;
              a2[4] = &protocol witness table for WKThumbnailWallpaper;
              type metadata accessor for WKThumbnailWallpaper.ImplementationWrapper();
            }

            else
            {
              objc_opt_self();
              v10 = swift_dynamicCastObjCClass();
              if (!v10)
              {
                sub_1E4AAABC0();

                swift_getObjectType();
                v13 = sub_1E4AAAE90();
                MEMORY[0x1E691ECA0](v13);

                result = sub_1E4AAACB0();
                __break(1u);
                return result;
              }

              v4 = v10;
              a2[3] = &type metadata for WKParameterizedCAWallpaper;
              a2[4] = &protocol witness table for WKParameterizedCAWallpaper;
              type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
            }
          }
        }
      }
    }
  }

  v11 = swift_allocObject();
  *(v11 + 16) = v4;
  *a2 = v11;

  return swift_unknownObjectRetain();
}

uint64_t sub_1E4A5749C@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    a2[3] = &type metadata for WKLiveWallpaper;
    a2[4] = &protocol witness table for WKLiveWallpaper;
    type metadata accessor for WKLiveWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (!v5)
    {
      sub_1E4AAABC0();

      swift_getObjectType();
      v8 = sub_1E4AAAE90();
      MEMORY[0x1E691ECA0](v8);

      result = sub_1E4AAACB0();
      __break(1u);
      return result;
    }

    v4 = v5;
    a2[3] = &type metadata for WKStillWallpaper;
    a2[4] = &protocol witness table for WKStillWallpaper;
    type metadata accessor for WKStillWallpaper.ImplementationWrapper();
  }

  v6 = swift_allocObject();
  *(v6 + 16) = v4;
  *a2 = v6;

  return swift_unknownObjectRetain();
}

double sub_1E4A57628@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X2>, void (*a4)(void)@<X3>, uint64_t a5@<X8>)
{
  if ([*(*v5 + 16) *a3])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

double sub_1E4A576DC@<D0>(uint64_t a1@<X0>, SEL *a2@<X1>, void (*a3)(void)@<X2>, uint64_t a4@<X8>)
{
  if ([*(*v4 + 16) *a2])
  {
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

uint64_t sub_1E4A57768@<X0>(uint64_t *a2@<X8>)
{
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass();
  if (v3)
  {
    v4 = v3;
    a2[3] = &type metadata for WKLayeredStripeWallpaper;
    a2[4] = sub_1E4A58CFC();
    type metadata accessor for WKLayeredStripeWallpaper.ImplementationWrapper();
  }

  else
  {
    objc_opt_self();
    v5 = swift_dynamicCastObjCClass();
    if (v5)
    {
      v4 = v5;
      a2[3] = &type metadata for WKLayeredStillWallpaper;
      a2[4] = sub_1E4A58CA8();
      type metadata accessor for WKLayeredStillWallpaper.ImplementationWrapper();
    }

    else
    {
      objc_opt_self();
      v6 = swift_dynamicCastObjCClass();
      if (v6)
      {
        v4 = v6;
        a2[3] = &type metadata for WKBokehWallpaper;
        a2[4] = sub_1E4A58C54();
        type metadata accessor for WKBokehWallpaper.ImplementationWrapper();
      }

      else
      {
        objc_opt_self();
        v7 = swift_dynamicCastObjCClass();
        if (v7)
        {
          v4 = v7;
          a2[3] = &type metadata for WKLayeredThumbnailWallpaper;
          a2[4] = sub_1E4A58C00();
          type metadata accessor for WKLayeredThumbnailWallpaper.ImplementationWrapper();
        }

        else
        {
          objc_opt_self();
          v8 = swift_dynamicCastObjCClass();
          if (v8)
          {
            v4 = v8;
            a2[3] = &type metadata for WKLayeredAnimationWallpaper;
            a2[4] = sub_1E4A58BAC();
            type metadata accessor for WKLayeredAnimationWallpaper.ImplementationWrapper();
          }

          else
          {
            objc_opt_self();
            v9 = swift_dynamicCastObjCClass();
            if (!v9)
            {
              sub_1E4AAABC0();

              swift_getObjectType();
              v12 = sub_1E4AAAE90();
              MEMORY[0x1E691ECA0](v12);

              result = sub_1E4AAACB0();
              __break(1u);
              return result;
            }

            v4 = v9;
            a2[3] = &type metadata for WKParameterizedCAWallpaper;
            a2[4] = sub_1E4A58B58();
            type metadata accessor for WKParameterizedCAWallpaper.ImplementationWrapper();
          }
        }
      }
    }
  }

  v10 = swift_allocObject();
  *(v10 + 16) = v4;
  *a2 = v10;

  return swift_unknownObjectRetain();
}

void WKWallpaperBundle.copyWallpaperRepresenting(to:)()
{
  v7[1] = *MEMORY[0x1E69E9840];
  v1 = *(*v0 + 16);
  v2 = sub_1E4AA9FA0();
  v7[0] = 0;
  v3 = [v1 copyWallpaperRepresentingToDestinationDirectoryURL:v2 error:v7];

  v4 = v7[0];
  if (v3)
  {
    sub_1E4AA9FC0();
    v5 = v4;
  }

  else
  {
    v6 = v7[0];
    sub_1E4AA9F60();

    swift_willThrow();
  }
}

uint64_t WKWallpaperBundle.thumbnailImageURL.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = [*(*v1 + 16) thumbnailImageURL];
  if (v3)
  {
    v4 = v3;
    sub_1E4AA9FC0();

    v5 = 0;
  }

  else
  {
    v5 = 1;
  }

  v6 = sub_1E4AA9FE0();
  v7 = *(*(v6 - 8) + 56);

  return v7(a1, v5, 1, v6);
}

id WKWallpaperBundle.thumbnailImage.getter()
{
  v1 = [*(*v0 + 16) thumbnailImage];

  return v1;
}

void WKWallpaperBundle.bundleURL.getter()
{
  v1 = [*(*v0 + 16) bundleURL];
  sub_1E4AA9FC0();
}

uint64_t WKWallpaperBundle.init(url:)@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = sub_1E4AA9FE0();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v13 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v5 + 16))(v7, a1, v4);
  v8 = objc_allocWithZone(WKWallpaperBundle);
  v9 = sub_1E4AA9FA0();
  v10 = [v8 initWithURL_];

  v11 = *(v5 + 8);
  v11(a1, v4);
  v11(v7, v4);
  if (v10)
  {
    type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
    result = swift_allocObject();
    *(result + 16) = v10;
  }

  else
  {
    result = 0;
  }

  *a2 = result;
  return result;
}

uint64_t WKWallpaperBundle.hash(into:)()
{
  v1 = *(*v0 + 16);
  v2 = sub_1E4AAAAE0();

  return MEMORY[0x1E691F1E0](v2);
}

uint64_t WKWallpaperBundle.hashValue.getter()
{
  v1 = *v0;
  sub_1E4AAAE00();
  v2 = *(v1 + 16);
  v3 = sub_1E4AAAAE0();

  MEMORY[0x1E691F1E0](v3);
  return sub_1E4AAAE40();
}

float sub_1E4A57E94()
{
  v1 = [*(*v0 + 16) contentVersion];
  [v1 floatValue];
  v3 = v2;

  return v3;
}

id sub_1E4A57F4C()
{
  v1 = [*(*v0 + 16) logicalScreenClass];

  return v1;
}

uint64_t sub_1E4A58000@<X0>(uint64_t *a1@<X8>)
{
  v3 = [*(*v1 + 16) adjustmentTraits];
  type metadata accessor for WKWallpaperAdjustmentTraits.ImplementationWrapper();
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result;
  return result;
}

uint64_t sub_1E4A5805C()
{
  v1 = [*(*v0 + 16) preferredTitleColors];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E4A47A2C(0, &unk_1ECF8E3C0, 0x1E69C52D8);
  v3 = sub_1E4AAA950();

  return v3;
}

double sub_1E4A5818C@<D0>(uint64_t a1@<X0>, SEL *a2@<X3>, void (*a3)(void)@<X4>, uint64_t a4@<X8>)
{
  if ([*(*v4 + 16) *a2])
  {
    a3();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a4 + 32) = 0;
    result = 0.0;
    *a4 = 0u;
    *(a4 + 16) = 0u;
  }

  return result;
}

double sub_1E4A58238@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, SEL *a3@<X4>, void (*a4)(void)@<X5>, uint64_t a5@<X8>)
{
  if ([*(*v5 + 16) *a3])
  {
    a4();

    swift_unknownObjectRelease();
  }

  else
  {
    *(a5 + 32) = 0;
    result = 0.0;
    *a5 = 0u;
    *(a5 + 16) = 0u;
  }

  return result;
}

void static WKWallpaperBundle.createWallpaperBundle(in:version:identifier:name:family:wantsDeviceMotion:isOffloaded:logicalScreenClass:thumbnailImageURL:adjustmentTraits:preferredProminentColors:preferredTitleColors:assetMapping:)(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, int a8@<W7>, uint64_t *a9@<X8>, unsigned __int8 a10, uint64_t a11, uint64_t a12, uint64_t *a13, uint64_t a14, uint64_t a15, uint64_t a16)
{
  v78 = a8;
  v71 = a7;
  v70[1] = a6;
  v70[4] = a5;
  v70[3] = a4;
  v79 = a2;
  v80 = a3;
  v70[2] = a1;
  v81 = a9;
  v75 = a15;
  v72 = a12;
  v77 = a11;
  v76 = a10;
  v74 = a14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E7C0, &qword_1E4AAEA40);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v82 = v70 - v17;
  v73 = *a13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D0, &qword_1E4AB01E0);
  v18 = sub_1E4AAACD0();
  v19 = 0;
  v20 = *(a16 + 64);
  v83 = a16 + 64;
  v86 = v18;
  v87 = a16;
  v21 = 1 << *(a16 + 32);
  if (v21 < 64)
  {
    v22 = ~(-1 << v21);
  }

  else
  {
    v22 = -1;
  }

  v23 = v22 & v20;
  v24 = (v21 + 63) >> 6;
  v84 = v24;
  v85 = v18 + 64;
  if (v23)
  {
    while (1)
    {
      v25 = __clz(__rbit64(v23));
      v88 = (v23 - 1) & v23;
LABEL_11:
      v28 = v25 | (v19 << 6);
      v29 = *(v87 + 56);
      v30 = *(*(v87 + 48) + 8 * v28);
      v90 = v28;
      v31 = *(v29 + 8 * v28);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3D8, &qword_1E4AB01E8);
      v32 = sub_1E4AAACD0();
      v33 = v32;
      v34 = v31 + 64;
      v35 = 1 << *(v31 + 32);
      v36 = v35 < 64 ? ~(-1 << v35) : -1;
      v37 = v36 & *(v31 + 64);
      v38 = (v35 + 63) >> 6;
      v91 = v32 + 64;
      v89 = v30;
      v93 = v31;

      v39 = 0;
      v92 = v33;
      if (v37)
      {
        break;
      }

LABEL_16:
      v41 = v39;
      while (1)
      {
        v39 = v41 + 1;
        if (__OFADD__(v41, 1))
        {
          __break(1u);
          goto LABEL_46;
        }

        if (v39 >= v38)
        {
          break;
        }

        v42 = *(v34 + 8 * v39);
        ++v41;
        if (v42)
        {
          v40 = __clz(__rbit64(v42));
          v37 = (v42 - 1) & v42;
          goto LABEL_21;
        }
      }

      v51 = v90;
      v52 = v86;
      *(v85 + ((v90 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v90;
      *(v52[6] + 8 * v51) = v89;
      *(v52[7] + 8 * v51) = v33;
      v53 = v52[2];
      v49 = __OFADD__(v53, 1);
      v54 = v53 + 1;
      if (v49)
      {
        goto LABEL_48;
      }

      v52[2] = v54;
      v24 = v84;
      v23 = v88;
      if (!v88)
      {
        goto LABEL_6;
      }
    }

    while (1)
    {
      v40 = __clz(__rbit64(v37));
      v37 &= v37 - 1;
LABEL_21:
      v43 = v40 | (v39 << 6);
      v44 = *(*(v93 + 48) + 8 * v43);
      sub_1E4A4D9A0(*(v93 + 56) + 40 * v43, v94);
      v45 = v95;
      __swift_project_boxed_opaque_existential_1(v94, v95);
      v46 = v44;
      v47 = sub_1E4A55888(v45);
      __swift_destroy_boxed_opaque_existential_1Tm(v94);
      v33 = v92;
      *(v91 + ((v43 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v43;
      *(v33[6] + 8 * v43) = v46;
      *(v33[7] + 8 * v43) = v47;
      v48 = v33[2];
      v49 = __OFADD__(v48, 1);
      v50 = v48 + 1;
      if (v49)
      {
        break;
      }

      v33[2] = v50;
      if (!v37)
      {
        goto LABEL_16;
      }
    }
  }

  else
  {
LABEL_6:
    v26 = v19;
    while (1)
    {
      v19 = v26 + 1;
      if (__OFADD__(v26, 1))
      {
        break;
      }

      if (v19 >= v24)
      {
        v93 = sub_1E4AA9FA0();
        v55 = sub_1E4AAA870();
        if (v71)
        {
          v56 = sub_1E4AAA870();
        }

        else
        {
          v56 = 0;
        }

        v57 = v82;
        sub_1E4A48054(v72, v82);
        v58 = sub_1E4AA9FE0();
        v59 = *(v58 - 8);
        v60 = 0;
        if ((*(v59 + 48))(v57, 1, v58) != 1)
        {
          v60 = sub_1E4AA9FA0();
          (*(v59 + 8))(v57, v58);
        }

        if (v73)
        {
          v61 = *(v73 + 16);
        }

        else
        {
          v61 = 0;
        }

        if (v74)
        {
          v62 = sub_1E4AAA800();
        }

        else
        {
          v62 = 0;
        }

        if (v75)
        {
          v63 = sub_1E4AAA940();
        }

        else
        {
          v63 = 0;
        }

        v64 = objc_opt_self();
        type metadata accessor for WKWallpaperLocation(0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF8E3E0, &qword_1E4AB01F0);
        sub_1E4A58928(&qword_1ECF8DF70, type metadata accessor for WKWallpaperLocation, &unk_1E4AAE52C);
        v65 = sub_1E4AAA800();

        LOBYTE(v69) = v76 & 1;
        v66 = v93;
        v67 = [v64 _createWallpaperBundleInDirectory_version_identifier_name_family_wantsDeviceMotion_isOffloaded_logicalScreenClass_thumbnailImageURL_adjustmentTraits_preferredProminentColors_preferredTitleColors_assetMapping_];

        if (v67)
        {
          type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
          v68 = swift_allocObject();
          *(v68 + 16) = v67;
        }

        else
        {
          v68 = 0;
        }

        *v81 = v68;
        return;
      }

      v27 = *(v83 + 8 * v19);
      ++v26;
      if (v27)
      {
        v25 = __clz(__rbit64(v27));
        v88 = (v27 - 1) & v27;
        goto LABEL_11;
      }
    }

LABEL_46:
    __break(1u);
  }

  __break(1u);
LABEL_48:
  __break(1u);
}

uint64_t sub_1E4A58928(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id WKWallpaperBundle._valueType.getter@<X0>(uint64_t *a1@<X8>)
{
  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v2 = swift_allocObject();
  *(v2 + 16) = v4;
  a1[3] = &type metadata for WKWallpaperBundle;
  a1[4] = sub_1E4A50754();
  *a1 = v2;

  return v4;
}

unint64_t sub_1E4A589FC(uint64_t a1)
{
  result = sub_1E4A58A24();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E4A58A24()
{
  result = qword_1EE043FA8[0];
  if (!qword_1EE043FA8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE043FA8);
  }

  return result;
}

unint64_t sub_1E4A58A7C()
{
  result = qword_1EE043060;
  if (!qword_1EE043060)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE043060);
  }

  return result;
}

id sub_1E4A58AD0@<X0>(uint64_t *a1@<X8>)
{
  v5 = *v1;
  type metadata accessor for WKWallpaperBundle.ImplementationWrapper();
  v3 = swift_allocObject();
  *(v3 + 16) = v5;
  a1[3] = &type metadata for WKWallpaperBundle;
  a1[4] = sub_1E4A50754();
  *a1 = v3;

  return v5;
}

unint64_t sub_1E4A58B58()
{
  result = qword_1ECF8E3E8;
  if (!qword_1ECF8E3E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF8E3E8);
  }

  return result;
}

unint64_t sub_1E4A58BAC()
{
  result = qword_1EE0434B0;
  if (!qword_1EE0434B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0434B0);
  }

  return result;
}