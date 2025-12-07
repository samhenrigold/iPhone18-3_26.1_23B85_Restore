uint64_t sub_255D2F870(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

uint64_t sub_255D2F894(uint64_t *a1)
{
  v1 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    sub_255E394D8();

    return sub_255E38AE8();
  }

  else
  {
    v3 = sub_255E38BF8();
    v4 = MEMORY[0x277CDFC18];
    swift_getWitnessTable(MEMORY[0x277CDFC18], v3);
    sub_255E39408();
    sub_255E38AE8();
    v5 = sub_255E3A8A8();
    v7 = v1;
    swift_getWitnessTable(MEMORY[0x277D84F48], v5, &v7);
    v6 = sub_255E38BF8();
    swift_getWitnessTable(v4, v6);
    sub_255E39408();
    return sub_255E38AE8();
  }
}

uint64_t sub_255D2F9F8(uint64_t *a1)
{
  v2 = a1[2];
  v1 = a1[3];
  if (__isPlatformVersionAtLeast(2, 26, 0, 0))
  {
    v3 = sub_255E394D8();
    v4 = sub_255E38AE8();
    v19[0] = v2;
    v19[1] = swift_getWitnessTable(MEMORY[0x277CE0750], v3);
    return swift_getWitnessTable(MEMORY[0x277CDFAD8], v4, v19);
  }

  else
  {
    v6 = sub_255E38BF8();
    v7 = MEMORY[0x277CDFC18];
    swift_getWitnessTable(MEMORY[0x277CDFC18], v6);
    v8 = sub_255E39408();
    v9 = sub_255E38AE8();
    v10 = sub_255E3A8A8();
    v18 = v1;
    swift_getWitnessTable(MEMORY[0x277D84F48], v10, &v18);
    v11 = sub_255E38BF8();
    swift_getWitnessTable(v7, v11);
    v12 = sub_255E39408();
    v13 = sub_255E38AE8();
    v14 = MEMORY[0x277CE04A0];
    v17[0] = v2;
    v17[1] = swift_getWitnessTable(MEMORY[0x277CE04A0], v8);
    v15 = MEMORY[0x277CDFAD8];
    v16[0] = swift_getWitnessTable(MEMORY[0x277CDFAD8], v9, v17);
    v16[1] = swift_getWitnessTable(v14, v12);
    return swift_getWitnessTable(v15, v13, v16);
  }
}

uint64_t sub_255D2FBF8(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D2FCB4(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D2FD68(uint64_t a1, int a2)
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

uint64_t sub_255D2FD88(uint64_t result, int a2, int a3)
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

uint64_t sub_255D2FDCC(uint64_t a1)
{

  *(v1 + 16) = a1;
  return result;
}

uint64_t sub_255D2FE10()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_255D2FE48()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D2FE98()
{
  v1 = *(*(v0 + 16) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  (*(v1 + 8))(v0 + v3);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySdGSg_0(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D30060()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D300D8(uint64_t a1, uint64_t a2)
{
  v4 = sub_255E38868();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_255D30144(uint64_t a1, uint64_t a2)
{
  v4 = sub_255E38868();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

uint64_t sub_255D301B8()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D301F0()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI14AnyViewContent_pSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_255D30298()
{

  sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 96);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  v2 = *(v0 + 128);
  if (v2 != 255)
  {
    sub_255D4E6E0(*(v0 + 104), *(v0 + 112), *(v0 + 120), v2 & 1, sub_255D398A4);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D30340()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D30378()
{
  sub_255D4C93C(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 49));

  return MEMORY[0x2821FE8E8](v0, 50, 7);
}

uint64_t sub_255D303BC()
{

  sub_255D4CA30(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_255D30414()
{

  v1 = *(v0 + 64);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D3047C()
{

  v1 = *(v0 + 56);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D304E8()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D30558()
{

  v1 = *(v0 + 56);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1);
  }

  v2 = *(v0 + 88);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v2);
  }

  v3 = *(v0 + 120);
  if (v3 <= 0xFD)
  {
    sub_255D38060(*(v0 + 96), *(v0 + 104), *(v0 + 112), v3);
  }

  return MEMORY[0x2821FE8E8](v0, 160, 7);
}

uint64_t sub_255D305F0()
{

  v1 = *(v0 + 56);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1);
  }

  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  if (*(v0 + 128))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 104));
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D30690()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 112);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 88), *(v0 + 96), *(v0 + 104), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_255D3070C()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D30764()
{

  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  if (*(v0 + 88))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 64));
  }

  v1 = *(v0 + 136);
  if (v1 != 255)
  {
    sub_255D4DE84(*(v0 + 112), *(v0 + 120), *(v0 + 128), v1 & 1);
  }

  sub_255D38130(*(v0 + 176), *(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 193, 7);
}

uint64_t sub_255D307FC()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  sub_255D34870(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D3085C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_255D308B4()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 104, 7);
}

uint64_t sub_255D3091C()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));
  sub_255D4E6E0(*(v0 + 72), *(v0 + 80), *(v0 + 88), *(v0 + 96), sub_255D398A4);

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D309A4()
{

  v1 = *(v0 + 64);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), v1);
  }

  if (*(v0 + 96))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 72));
  }

  sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), *(v0 + 144));
  if (*(v0 + 176))
  {
    __swift_destroy_boxed_opaque_existential_1Tm((v0 + 152));
  }

  return MEMORY[0x2821FE8E8](v0, 208, 7);
}

uint64_t sub_255D30A3C()
{

  v1 = *(v0 + 56);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 32), *(v0 + 40), *(v0 + 48), v1 & 1);
  }

  v2 = *(v0 + 88);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v2);
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D30B04()
{
  v1 = *(v0 + 32);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 48) & ~v3;
  v5 = (((*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8) + 15) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_255D30BEC()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D30C4C()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D30D18()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

uint64_t sub_255D30D58()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 88, 7);
}

uint64_t sub_255D30DA8()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D30DE0()
{
  swift_unknownObjectRelease();
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 32));

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

__n128 sub_255D30E3C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D30E50()
{

  v1 = *(v0 + 48);
  if (v1 != 255)
  {
    sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), v1 & 1);
  }

  v2 = *(v0 + 80);
  if (v2 != 255)
  {
    sub_255D4DE84(*(v0 + 56), *(v0 + 64), *(v0 + 72), v2 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D30ECC()
{
  swift_unknownObjectRelease();

  sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
  v1 = *(v0 + 96);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 72), *(v0 + 80), *(v0 + 88), v1);
  }

  v2 = *(v0 + 128);
  if (v2 != 255)
  {
    sub_255D5CA24(*(v0 + 104), *(v0 + 112), *(v0 + 120), v2 & 1, sub_255D398A4);
  }

  sub_255D34870(*(v0 + 136), *(v0 + 144), *(v0 + 152), *(v0 + 160));
  sub_255D38060(*(v0 + 168), *(v0 + 176), *(v0 + 184), *(v0 + 192));

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D30F94()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 72, 7);
}

uint64_t sub_255D30FF4()
{
  swift_unknownObjectRelease();

  if (*(v0 + 104) != 254)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
    v1 = *(v0 + 104);
    if (v1 != 255)
    {
      sub_255D34870(*(v0 + 80), *(v0 + 88), *(v0 + 96), v1 & 1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D31084()
{
  swift_unknownObjectRelease();
  sub_255D5CA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_255D398A4);
  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_255D4DE84(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  return MEMORY[0x2821FE8E8](v0, 144, 7);
}

uint64_t sub_255D31110()
{
  swift_unknownObjectRelease();
  sub_255D5CA24(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56), sub_255D398A4);
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D3118C()
{
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D5CA24(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), sub_255D398A4);

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D31208()
{
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D5CA24(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88), sub_255D398A4);

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D31294()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D313F4(uint64_t a1)
{

  *(v1 + 208) = a1;
  return result;
}

uint64_t sub_255D31428()
{

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D31478(uint64_t a1, uint64_t a2, uint64_t a3)
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D31534(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 0x7FFFFFFF)
  {
    *(result + 8) = (a2 - 1);
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6B28, &unk_255E48060);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D31604()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D31640()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D31884()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySSGSg_0(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_255D3198C()
{
  swift_unknownObjectRelease();
  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v1 = *(v0 + 88);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v1);
  }

  v2 = *(v0 + 120);
  if (v2 != 255)
  {
    sub_255D380E0(*(v0 + 96), *(v0 + 104), *(v0 + 112), v2 & 1);
  }

  v3 = *(v0 + 152);
  if (v3 != 255)
  {
    sub_255D380E0(*(v0 + 128), *(v0 + 136), *(v0 + 144), v3 & 1);
  }

  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 216, 7);
}

uint64_t sub_255D31A70()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D31AA8@<X0>(uint64_t *a1@<X8>)
{
  v3 = *v1;
  result = swift_allocObject();
  *(result + 16) = v3;
  *a1 = result | 0x4000000000000000;
  return result;
}

uint64_t sub_255D31B14()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

_OWORD *sub_255D31B4C(_OWORD *a1, _OWORD *a2)
{
  v2 = a1[1];
  *a2 = *a1;
  a2[1] = v2;
  return a2;
}

uint64_t sub_255D31B70()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D31BB0()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_255D31C08(uint64_t *a1@<X8>)
{
  v2 = 7563372;
  v3 = 0xE800000000000000;
  v4 = 0x726F74617265706FLL;
  if (*v1 != 1)
  {
    v4 = 7563378;
    v3 = 0xE300000000000000;
  }

  if (*v1)
  {
    v2 = v4;
    v5 = v3;
  }

  else
  {
    v5 = 0xE300000000000000;
  }

  *a1 = v2;
  a1[1] = v5;
}

uint64_t sub_255D31C54()
{
  v1 = 0x726F74617265706FLL;
  if (*v0 != 1)
  {
    v1 = 7563378;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 7563372;
  }
}

uint64_t sub_255D31CF0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D31E74()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D31F7C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(a3 + 20);
  v6 = sub_255E39EB8();
  v7 = *(*(v6 - 8) + 48);

  return v7(a1 + v5, a2, v6);
}

uint64_t sub_255D31FF4(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v6 = *(a4 + 20);
  v7 = sub_255E39EB8();
  v8 = *(*(v7 - 8) + 56);

  return v8(a1 + v6, a2, a2, v7);
}

uint64_t sub_255D32074()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D320F0()
{
  v1 = sub_255E38B18();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, ((v5 + 23) & 0xFFFFFFFFFFFFFFF8) + 17, v3 | 7);
}

uint64_t sub_255D32198()
{

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));
  v1 = *(v0 + 112);
  if (v1 <= 0xFD)
  {
    sub_255D38060(*(v0 + 88), *(v0 + 96), *(v0 + 104), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 152, 7);
}

uint64_t sub_255D32210()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D32260()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D3233C()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D323BC()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32434()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_255D324EC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D3252C()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D32564()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D325AC()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D3260C()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D32660()
{

  sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 56), *(v0 + 64), *(v0 + 72), v1 & 1);
  }

  v2 = *(v0 + 112);
  if (v2 != 255)
  {
    sub_255D4DE84(*(v0 + 88), *(v0 + 96), *(v0 + 104), v2 & 1);
  }

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), v3 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32710()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D32770()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D32834()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 & 1);
  }

  v2 = *(v0 + 72);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 128, 7);
}

uint64_t sub_255D328A8()
{
  v1 = *(v0 + 40);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), v1 & 1);
  }

  v2 = *(v0 + 72);
  if (v2 <= 0xFD)
  {
    sub_255D38060(*(v0 + 48), *(v0 + 56), *(v0 + 64), v2);
  }

  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 80));

  return MEMORY[0x2821FE8E8](v0, 136, 7);
}

uint64_t sub_255D32928()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D329A4()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D329EC()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  if ((~*(v0 + 48) & 0xF000000000000007) != 0)
  {
  }

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D32A54()
{
  v1 = *(type metadata accessor for RemoteContent(0) - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 32) & ~v2;
  v4 = *(v1 + 64);
  swift_unknownObjectRelease();
  v5 = v0 + v3;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      goto LABEL_16;
    }

    v9 = *v5;
    v10 = *(v5 + 8);
LABEL_15:
    sub_255D37E60(v9, v10);
    goto LABEL_16;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v11 = sub_255E38588();
    (*(*(v11 - 8) + 8))(v0 + v3, v11);
    v12 = (v5 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v10 = v12[1];
    if (v10 >> 60 == 15)
    {
      goto LABEL_16;
    }

    v9 = *v12;
    goto LABEL_15;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v5, *(v5 + 8), *(v5 + 16), *(v5 + 24));
    v7 = *(v5 + 56);
    if (v7 <= 0xFD)
    {
      sub_255D38060(*(v5 + 32), *(v5 + 40), *(v5 + 48), v7);
    }

    v8 = *(v5 + 88);
    if (v8 != 255)
    {
      sub_255D380E0(*(v5 + 64), *(v5 + 72), *(v5 + 80), v8 & 1);
    }
  }

LABEL_16:

  return MEMORY[0x2821FE8E8](v0, ((v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8) + 9, v2 | 7);
}

uint64_t sub_255D32C18()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D32C98(uint64_t *a1)
{
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FA0, &qword_255E54E60);
  v2 = sub_255E38AE8();
  v4[0] = v1;
  v4[1] = sub_255D38950(&qword_27F7E5F98, &qword_27F7E5FA0, &qword_255E54E60, MEMORY[0x277CE0868]);
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, v4);
}

__n128 sub_255D32D58(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D32D94@<X0>(uint64_t *a1@<X8>)
{
  result = sub_255DF3B58();
  *a1 = result;
  return result;
}

__n128 sub_255D32DF8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D32E6C()
{

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_255D32ED0()
{

  return MEMORY[0x2821FE8E8](v0, 64, 7);
}

uint64_t sub_255D32F84()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D32FD8()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33010()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

__n128 sub_255D3305C(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D33070()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D3316C()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33214()
{

  if (*(v0 + 96) != 254)
  {
    sub_255D38060(*(v0 + 40), *(v0 + 48), *(v0 + 56), *(v0 + 64));
    v1 = *(v0 + 96);
    if (v1 != 255)
    {
      sub_255D34870(*(v0 + 72), *(v0 + 80), *(v0 + 88), v1 & 1);
    }
  }

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

__n128 sub_255D332B8(__n128 *a1, __n128 *a2)
{
  result = *a1;
  a2[1].n128_u64[0] = a1[1].n128_u64[0];
  *a2 = result;
  return result;
}

uint64_t sub_255D332FC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a2 == 254)
  {
    v4 = *(a1 + 24);
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
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v9 = *(*(v8 - 8) + 48);
    v10 = a1 + *(a3 + 20);

    return v9(v10, a2, v8);
  }
}

uint64_t sub_255D333B0(uint64_t result, uint64_t a2, int a3, uint64_t a4)
{
  v5 = result;
  if (a3 == 254)
  {
    *(result + 24) = -a2;
  }

  else
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E8110, &unk_255E538E0);
    v8 = *(*(v7 - 8) + 56);
    v9 = v5 + *(a4 + 20);

    return v8(v9, a2, a2, v7);
  }

  return result;
}

uint64_t sub_255D3356C()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D335EC(uint64_t *a1)
{
  v1 = a1[1];
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E8A08, &unk_255E598F0);
  v2 = sub_255E38AE8();
  v4[0] = v1;
  v4[1] = sub_255E08E00();
  return swift_getWitnessTable(MEMORY[0x277CDFAD8], v2, v4);
}

uint64_t sub_255D336B0()
{

  sub_255D4DE84(*(v0 + 24), *(v0 + 32), *(v0 + 40), *(v0 + 48));
  v1 = *(v0 + 80);
  if (v1 != 255)
  {
    sub_255D34870(*(v0 + 56), *(v0 + 64), *(v0 + 72), v1 & 1);
  }

  v2 = *(v0 + 112);
  if (v2 != 255)
  {
    sub_255D4DE84(*(v0 + 88), *(v0 + 96), *(v0 + 104), v2 & 1);
  }

  v3 = *(v0 + 144);
  if (v3 != 255)
  {
    sub_255D4DE84(*(v0 + 120), *(v0 + 128), *(v0 + 136), v3 & 1);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D337B0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D33800()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D33850()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_255D338B0()
{
  sub_255D34870(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 48));

  return MEMORY[0x2821FE8E8](v0, 96, 7);
}

uint64_t sub_255D33900()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D33978()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D339B0()
{
  __swift_destroy_boxed_opaque_existential_1Tm((v0 + 16));

  return MEMORY[0x2821FE8E8](v0, 56, 7);
}

uint64_t sub_255D339E8()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D33A28()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D33AAC()
{
  v1 = sub_255E38588();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 185) & ~v3;
  v5 = v4 + *(v2 + 64) + 23;

  sub_255D38060(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  v6 = *(v0 + 88);
  if (v6 <= 0xFD)
  {
    sub_255D38060(*(v0 + 64), *(v0 + 72), *(v0 + 80), v6);
  }

  v7 = v5 & 0xFFFFFFFFFFFFFFF8;
  v8 = *(v0 + 120);
  if (v8 != 255)
  {
    sub_255D380E0(*(v0 + 96), *(v0 + 104), *(v0 + 112), v8 & 1);
  }

  sub_255D34870(*(v0 + 128), *(v0 + 136), *(v0 + 144), *(v0 + 152));
  sub_255D38060(*(v0 + 160), *(v0 + 168), *(v0 + 176), *(v0 + 184));
  (*(v2 + 8))(v0 + v4, v1);

  v9 = *(v0 + v7 + 8);
  if (v9 >> 60 != 15)
  {
    sub_255D37E60(*(v0 + v7), v9);
  }

  return MEMORY[0x2821FE8E8](v0, v7 + 16, v3 | 7);
}

uint64_t sub_255D33CFC()
{

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_255D33D34()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

uint64_t sub_255D33D74()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), *(v0 + 72));
  sub_255D4CB98(*(v0 + 80), *(v0 + 88), *(v0 + 96), *(v0 + 104));
  v1 = *(v0 + 136);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 112), *(v0 + 120), *(v0 + 128), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 137, 7);
}

uint64_t sub_255D33DEC()
{
  sub_255D4CB98(*(v0 + 16), *(v0 + 24), *(v0 + 32), *(v0 + 40));
  v1 = *(v0 + 72);
  if (v1 <= 0xFD)
  {
    sub_255D4CB98(*(v0 + 48), *(v0 + 56), *(v0 + 64), v1);
  }

  return MEMORY[0x2821FE8E8](v0, 73, 7);
}

uint64_t sub_255D33E50()
{
  swift_unknownObjectRelease();
  sub_255D38090(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D380E0(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  return MEMORY[0x2821FE8E8](v0, 120, 7);
}

uint64_t sub_255D33EC8()
{
  v1 = sub_255E385F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 136) & ~v3;
  v5 = (*(v2 + 64) + v4 + 7) & 0xFFFFFFFFFFFFFFF8;
  swift_unknownObjectRelease();
  sub_255D380E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4CB98(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));
  sub_255D4DE84(*(v0 + 96), *(v0 + 104), *(v0 + 112), *(v0 + 120));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + 8, v3 | 7);
}

uint64_t sub_255D33FD0()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D34008()
{
  v1 = sub_255E385F8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 104) & ~v3;
  v5 = *(v2 + 64);
  swift_unknownObjectRelease();
  sub_255D380E0(*(v0 + 32), *(v0 + 40), *(v0 + 48), *(v0 + 56));
  sub_255D4DE84(*(v0 + 64), *(v0 + 72), *(v0 + 80), *(v0 + 88));

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_255D34104@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v4 = a1[3];
  v3 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v4);
  result = (*(*(v3 + 8) + 8))(v4);
  *a2 = result;
  a2[1] = v6;
  return result;
}

uint64_t sub_255D3415C()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D341D4()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

void sub_255D342AC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE400000000000000;
  v5 = 2003134838;
  if (v2 != 1)
  {
    v5 = 0x79654B61746164;
    v4 = 0xE700000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D342F8()
{
  v1 = 2003134838;
  if (*v0 != 1)
  {
    v1 = 0x79654B61746164;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D34340()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_255D34378()
{

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_255D34424()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D3459C()
{

  if (v0[10])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 7);
  }

  if (v0[15])
  {
    __swift_destroy_boxed_opaque_existential_1Tm(v0 + 12);
  }

  return MEMORY[0x2821FE8E8](v0, 168, 7);
}

uint64_t sub_255D34630(__int128 *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = a1[1];
  *(a2 + 32) = *(a1 + 4);
  *a2 = v2;
  *(a2 + 16) = v3;
  return a2;
}

uint64_t sub_255D34744(uint64_t a1)
{
  sub_255E3A578();
}

void sub_255D347A4(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x7377656976;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D347D4()
{
  if (*v0)
  {
    return 0x7377656976;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D34858(uint64_t result)
{
  if ((~result & 0xF000000000000007) != 0)
  {
  }

  return result;
}

void sub_255D34870(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_255D2F870(a3);
  }
}

void sub_255D348B4(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    sub_255D34858(a3);
  }
}

void sub_255D34910(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4 != -1)
  {
    sub_255D34870(a1, a2, a3, a4 & 1);
  }
}

uint64_t RemoteContentView.id.getter()
{
  v1 = *v0;

  return v1;
}

uint64_t sub_255D349CC(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1 + *(type metadata accessor for RemoteContentView(0) + 24);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = type metadata accessor for RemoteStateStore(0);
  v7 = sub_255D37FBC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);

  return a1(v3, v4, v5, v6, v7);
}

uint64_t sub_255D34AB0(uint64_t (*a1)(uint64_t, uint64_t, uint64_t, uint64_t, uint64_t))
{
  v2 = v1 + *(type metadata accessor for RemoteContentView(0) + 28);
  v3 = *v2;
  v4 = *(v2 + 8);
  v5 = *(v2 + 16);
  v6 = type metadata accessor for LocalStateStore(0);
  v7 = sub_255D37FBC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);

  return a1(v3, v4, v5, v6, v7);
}

uint64_t sub_255D34B64()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RemoteContentView(0) + 36);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v8 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

uint64_t sub_255D34CD4()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v10 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RemoteContentView(0) + 40);
  v6 = *v5;
  v7 = *(v5 + 8);
  if (*(v5 + 16) == 1)
  {
    swift_unknownObjectRetain();
  }

  else
  {

    sub_255E3A858();
    v8 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v6, v7, 0);
    (*(v2 + 8))(v4, v1);
    return v10;
  }

  return v6;
}

id sub_255D34E44()
{
  v1 = sub_255E38D48();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = v0 + *(type metadata accessor for RemoteContentView(0) + 44);
  v6 = *v5;
  if (*(v5 + 8) == 1)
  {

    return v6;
  }

  else
  {
    v9[0] = *v5;

    sub_255E3A858();
    v8 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D3813C(v9[0], 0);
    (*(v2 + 8))(v4, v1);
    return v9[1];
  }
}

uint64_t RemoteContentView.init(id:url:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, char *a6@<X8>)
{
  v34 = a3;
  v35 = a5;
  v32 = a1;
  v33 = a2;
  v9 = type metadata accessor for RemoteContent(0);
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v31 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920);
  v14 = *(v13 + 48);
  v15 = *(v13 + 64);
  v16 = sub_255E38588();
  v17 = *(v16 - 8);
  (*(v17 + 16))(v12, a3, v16);
  v12[v14] = 8;
  *&v12[v15] = xmmword_255E3B900;
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for RemoteContentView(0);
  v19 = &a6[v18[9]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &a6[v18[10]];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a6[v18[11]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  v22 = v33;
  *a6 = v32;
  *(a6 + 1) = v22;
  v23 = v18[5];
  sub_255D37EF4(v12, &a6[v23], type metadata accessor for RemoteContent);
  (*(v10 + 56))(&a6[v23], 0, 1, v9);
  v24 = objc_allocWithZone(type metadata accessor for ContentRegistry());

  v36 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a4, [v24 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  (*(v17 + 8))(v34, v16);
  result = sub_255D37F5C(v12, type metadata accessor for RemoteContent);
  v26 = v38;
  v27 = &a6[v18[8]];
  *v27 = v37;
  *(v27 + 1) = v26;
  v28 = &a6[v18[6]];
  *v28 = sub_255D37E04;
  *(v28 + 1) = a4;
  v28[16] = 0;
  v29 = &a6[v18[7]];
  v30 = v35;
  *v29 = sub_255D3989C;
  *(v29 + 1) = v30;
  v29[16] = 0;
  return result;
}

uint64_t sub_255D352BC(uint64_t a1, uint64_t *a2, uint64_t a3)
{
  result = *a2;
  if (!*a2)
  {
    return swift_getSingletonMetadata();
  }

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

uint64_t RemoteContentView.init(id:json:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v14 = type metadata accessor for RemoteContent(0);
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v17 = (v29 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v17 = a3;
  v17[1] = a4;
  swift_storeEnumTagMultiPayload();
  v18 = type metadata accessor for RemoteContentView(0);
  v19 = &a7[v18[9]];
  *v19 = swift_getKeyPath();
  *(v19 + 1) = 0;
  v19[16] = 0;
  v20 = &a7[v18[10]];
  *v20 = swift_getKeyPath();
  *(v20 + 1) = 0;
  v20[16] = 0;
  v21 = &a7[v18[11]];
  *v21 = swift_getKeyPath();
  v21[8] = 0;
  *a7 = a1;
  *(a7 + 1) = a2;
  v22 = v18[5];
  sub_255D37EF4(v17, &a7[v22], type metadata accessor for RemoteContent);
  (*(v15 + 56))(&a7[v22], 0, 1, v14);
  v23 = objc_allocWithZone(type metadata accessor for ContentRegistry());

  v29[1] = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a5, [v23 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  result = sub_255D37F5C(v17, type metadata accessor for RemoteContent);
  v25 = v29[3];
  v26 = &a7[v18[8]];
  *v26 = v29[2];
  *(v26 + 1) = v25;
  v27 = &a7[v18[6]];
  *v27 = sub_255D3989C;
  *(v27 + 1) = a5;
  v27[16] = 0;
  v28 = &a7[v18[7]];
  *v28 = sub_255D3989C;
  *(v28 + 1) = a6;
  v28[16] = 0;
  return result;
}

uint64_t RemoteContentView.init(id:data:stateStore:localStateStore:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, unint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char *a7@<X8>)
{
  v30 = a2;
  v31 = a6;
  v12 = type metadata accessor for RemoteContent(0);
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = (&v29 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  *v15 = a3;
  v15[1] = a4;
  swift_storeEnumTagMultiPayload();
  v16 = type metadata accessor for RemoteContentView(0);
  v17 = &a7[v16[9]];
  *v17 = swift_getKeyPath();
  *(v17 + 1) = 0;
  v17[16] = 0;
  v18 = &a7[v16[10]];
  *v18 = swift_getKeyPath();
  *(v18 + 1) = 0;
  v18[16] = 0;
  v19 = &a7[v16[11]];
  *v19 = swift_getKeyPath();
  v19[8] = 0;
  v20 = v30;
  *a7 = a1;
  *(a7 + 1) = v20;
  v21 = v16[5];
  sub_255D37EF4(v15, &a7[v21], type metadata accessor for RemoteContent);
  (*(v13 + 56))(&a7[v21], 0, 1, v12);
  v22 = objc_allocWithZone(type metadata accessor for ContentRegistry());
  sub_255D37E0C(a3, a4);

  v32 = _s6LiftUI12RemoteLoaderC11remoteState15contentRegistryAcA0cF5StoreC_AA07ContentH0CtcfC_0(a5, [v22 init]);
  type metadata accessor for RemoteLoader(0);
  sub_255E39F98();
  sub_255D37E60(a3, a4);
  result = sub_255D37F5C(v15, type metadata accessor for RemoteContent);
  v24 = v34;
  v25 = &a7[v16[8]];
  *v25 = v33;
  *(v25 + 1) = v24;
  v26 = &a7[v16[6]];
  *v26 = sub_255D3989C;
  *(v26 + 1) = a5;
  v26[16] = 0;
  v27 = &a7[v16[7]];
  v28 = v31;
  *v27 = sub_255D3989C;
  *(v27 + 1) = v28;
  v27[16] = 0;
  return result;
}

uint64_t RemoteContentView.init(id:remoteLoader:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, char *a4@<X8>)
{
  v8 = type metadata accessor for RemoteContentView(0);
  v9 = &a4[v8[9]];
  *v9 = swift_getKeyPath();
  *(v9 + 1) = 0;
  v9[16] = 0;
  v10 = &a4[v8[10]];
  *v10 = swift_getKeyPath();
  *(v10 + 1) = 0;
  v10[16] = 0;
  v11 = &a4[v8[11]];
  *v11 = swift_getKeyPath();
  v11[8] = 0;
  *a4 = a1;
  *(a4 + 1) = a2;
  type metadata accessor for RemoteLoader(0);

  sub_255E39F98();
  v12 = &a4[v8[8]];
  *v12 = v18;
  *(v12 + 1) = v19;
  v13 = &a4[v8[6]];
  *v13 = sub_255D37EB4;
  *(v13 + 1) = a3;
  v13[16] = 0;
  v14 = &a4[v8[7]];
  *v14 = sub_255D35A70;
  *(v14 + 1) = 0;
  v14[16] = 0;
  v15 = v8[5];
  v16 = type metadata accessor for RemoteContent(0);
  return (*(*(v16 - 8) + 56))(&a4[v15], 1, 1, v16);
}

uint64_t sub_255D35944(uint64_t a1)
{
  v1 = *(a1 + 112);
  if (v1)
  {
    v2 = v1;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    v2 = swift_allocObject();
    v3 = qword_27F7E8600;
    v4 = MEMORY[0x277D84F90];
    *(v2 + v3) = sub_255DC5124(MEMORY[0x277D84F90]);
    *(v2 + qword_27F7E85F8) = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6160, &unk_255E4DBA0);
    sub_255E38708();
    v5 = *(*v2 + 112);
    *(v2 + v5) = sub_255DC513C(v4);
    *(v2 + *(*v2 + 128)) = 0;
    *(v2 + *(*v2 + 120)) = 0;
    *(v2 + *(*v2 + 128)) = 0;
  }

  return v2;
}

uint64_t sub_255D35A70()
{
  type metadata accessor for LocalStateStore(0);
  v0 = swift_allocObject();
  v1 = qword_27F7E8608;
  v2 = MEMORY[0x277D84F90];
  *(v0 + v1) = sub_255DC5124(MEMORY[0x277D84F90]);
  *(v0 + qword_27F7E8610) = 0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6158, &unk_255E3BB80);
  sub_255E38708();
  v3 = *(*v0 + 112);
  *(v0 + v3) = sub_255DC513C(v2);
  *(v0 + *(*v0 + 128)) = 0;
  *(v0 + *(*v0 + 120)) = 0;
  *(v0 + *(*v0 + 128)) = 0;
  return v0;
}

__n128 RemoteContentView.body.getter@<Q0>(__n128 *a1@<X8>)
{
  v2 = v1;
  v4 = sub_255E38EE8();
  MEMORY[0x28223BE20](v4 - 8);
  v74 = &v74 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v76 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F08, &qword_255E3B9A0);
  MEMORY[0x28223BE20](v76);
  v75 = &v74 - v6;
  v7 = type metadata accessor for RemoteContentView(0);
  v79 = *(v7 - 8);
  v8 = MEMORY[0x28223BE20](v7);
  v80 = v9;
  v81 = &v74 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v11 = &v74 - v10;
  if (qword_27F7E5E80 != -1)
  {
    swift_once();
  }

  v12 = sub_255E386A8();
  __swift_project_value_buffer(v12, qword_27F8152D8);
  sub_255D37EF4(v1, v11, type metadata accessor for RemoteContentView);
  v13 = sub_255E38688();
  v14 = sub_255E3A868();
  v15 = os_log_type_enabled(v13, v14);
  v82 = a1;
  if (!v15)
  {

    sub_255D37F5C(v11, type metadata accessor for RemoteContentView);
    goto LABEL_12;
  }

  v78 = v1;
  v16 = swift_slowAlloc();
  v17 = swift_slowAlloc();
  v83.n128_u64[0] = v17;
  *v16 = 136315138;
  v77 = v7;
  v18 = &v11[*(v7 + 32)];
  v20 = *v18;
  v19 = *(v18 + 1);
  v106.n128_u64[0] = v20;
  v106.n128_u64[1] = v19;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v21 = v99.n128_u64[0];
  swift_getKeyPath();
  v106.n128_u64[0] = v21;
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  sub_255D38004(v21 + 16, &v106);

  sub_255D38004(&v106, &v99);
  if (v101.n128_u8[8])
  {
    if (v101.n128_u8[8] != 1)
    {
      v22 = 0xE700000000000000;
      v23 = 0x676E6964616F6CLL;
      v7 = v77;
      goto LABEL_11;
    }

    v22 = 0xE500000000000000;
    v23 = 0x726F727265;
  }

  else
  {
    v22 = 0xE600000000000000;
    v23 = 0x646564616F6CLL;
  }

  v7 = v77;
  sub_255D38CA8(&v99);
LABEL_11:
  sub_255D38CA8(&v106);
  sub_255D37F5C(v11, type metadata accessor for RemoteContentView);
  v24 = sub_255D378C0(v23, v22, &v83);

  *(v16 + 4) = v24;
  _os_log_impl(&dword_255D2E000, v13, v14, "Using loader status: %s", v16, 0xCu);
  __swift_destroy_boxed_opaque_existential_1Tm(v17);
  MEMORY[0x259C4F9E0](v17, -1, -1);
  MEMORY[0x259C4F9E0](v16, -1, -1);

  v2 = v78;
LABEL_12:
  v25 = (v2 + *(v7 + 32));
  v27 = *v25;
  v26 = v25[1];
  v106.n128_u64[0] = *v25;
  v106.n128_u64[1] = v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v28 = v99.n128_u64[0];
  swift_getKeyPath();
  v29 = v7;
  v106.n128_u64[0] = v28;
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  sub_255D38004(v28 + 16, v104);

  if (v105)
  {
    if (v105 == 1)
    {
      v30 = *&v104[0];
      has_internal_content = os_variant_has_internal_content();
      v32 = sub_255D34CD4();
      v34 = v33;
      v35 = v82;
      if (has_internal_content)
      {
        if (!v32 || (ObjectType = swift_getObjectType(), v37 = (*(v34 + 8))(v30, ObjectType, v34), swift_unknownObjectRelease(), !v37))
        {
          sub_255E38ED8();
          sub_255E38EC8();
          v106.n128_u64[0] = v30;
          v38 = v30;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5FC0, &unk_255E48660);
          sub_255E3A528();
          sub_255E38EB8();

          sub_255E38EC8();
          sub_255E38F08();
          v106.n128_u64[0] = sub_255E397E8();
          v106.n128_u64[1] = v39;
          v107.n128_u8[0] = v40 & 1;
          v107.n128_u64[1] = v41;
          v37 = sub_255E3A038();
        }

        v42 = v81;
        sub_255D37EF4(v2, v81, type metadata accessor for RemoteContentView);
        v43 = (*(v79 + 80) + 16) & ~*(v79 + 80);
        v44 = (v80 + v43 + 7) & 0xFFFFFFFFFFFFFFF8;
        v45 = swift_allocObject();
        sub_255D39644(v42, v45 + v43, type metadata accessor for RemoteContentView);
        *(v45 + v44) = v30;
        v99.n128_u64[0] = v37;
        v99.n128_u64[1] = sub_255D38870;
        v100 = v45;
        v101.n128_u64[0] = 0;
        v101.n128_u8[8] = 0;
      }

      else
      {
        if (!v32 || (v64 = swift_getObjectType(), v65 = (*(v34 + 8))(v30, v64, v34), swift_unknownObjectRelease(), !v65))
        {
          v65 = sub_255E3A038();
        }

        v66 = v81;
        sub_255D37EF4(v2, v81, type metadata accessor for RemoteContentView);
        v67 = (*(v79 + 80) + 16) & ~*(v79 + 80);
        v68 = (v80 + v67 + 7) & 0xFFFFFFFFFFFFFFF8;
        v69 = swift_allocObject();
        sub_255D39644(v66, v69 + v67, type metadata accessor for RemoteContentView);
        *(v69 + v68) = v30;
        v99.n128_u64[0] = v65;
        v99.n128_u64[1] = sub_255D398A0;
        v100 = v69;
        v101.n128_u64[0] = 0;
        v101.n128_u8[8] = 1;
      }

      v70 = v30;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
      sub_255D38148();
      sub_255E39258();
      v83.n128_u8[0] = v108.n128_u8[8];
      v91.n128_u8[0] = 1;
      v110[25] = 1;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
      sub_255D38214();
      sub_255D38554();
      sub_255E39258();
    }

    else
    {
      v56 = sub_255D34CD4();
      v35 = v82;
      if (!v56 || (v58 = v57, v59 = swift_getObjectType(), v60 = (*(v58 + 16))(v59, v58), swift_unknownObjectRelease(), !v60))
      {
        sub_255E388C8();
        sub_255D38950(&qword_27F7E5FC8, &qword_27F7E5F08, &qword_255E3B9A0, MEMORY[0x277CDD7F8]);
        v60 = sub_255E3A038();
      }

      v61 = v81;
      sub_255D37EF4(v2, v81, type metadata accessor for RemoteContentView);
      v62 = (*(v79 + 80) + 16) & ~*(v79 + 80);
      v63 = swift_allocObject();
      sub_255D39644(v61, v63 + v62, type metadata accessor for RemoteContentView);
      LOBYTE(v88[0]) = 0;
      v106.n128_u64[0] = v60;
      v106.n128_u64[1] = sub_255D38C1C;
      v107 = v63;
      v108.n128_u64[0] = 0;
      v110[24] = 0;

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F50, &qword_255E3B9F0);
      sub_255D38148();
      sub_255D382A0();
      sub_255E39258();
      v108 = v85;
      v109 = v86;
      *v110 = v87[0];
      *&v110[9] = *(v87 + 9);
      v106 = v83;
      v107 = v84;
      v91.n128_u8[0] = 0;
      v110[25] = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
      sub_255D38214();
      sub_255D38554();
      sub_255E39258();
    }

    v108 = v101;
    v109 = v102;
    *v110 = v103[0];
    *&v110[10] = *(v103 + 10);
    v106 = v99;
    v107 = v100;
  }

  else
  {
    sub_255D34630(v104, v88);
    v46 = v89;
    v47 = v90;
    __swift_project_boxed_opaque_existential_1(v88, v89);
    v76 = (*(v47 + 24))(v46, v47);
    v77 = v29;
    v78 = v2;
    type metadata accessor for RemoteStateStore(0);
    sub_255D37FBC(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    v75 = sub_255E38888();
    v74 = sub_255E386C8();
    v106.n128_u64[0] = v27;
    v106.n128_u64[1] = v26;
    sub_255E39FA8();
    v48 = v99.n128_u64[0];
    KeyPath = swift_getKeyPath();
    v50 = v78;
    type metadata accessor for LocalStateStore(0);
    sub_255D37FBC(&qword_27F7E5EF8, type metadata accessor for LocalStateStore, protocol conformance descriptor for StateDict<A, B>);
    v51 = sub_255E38888();
    v52 = sub_255E386C8();
    v53 = v81;
    sub_255D37EF4(v50, v81, type metadata accessor for RemoteContentView);
    v54 = (*(v79 + 80) + 16) & ~*(v79 + 80);
    v55 = swift_allocObject();
    sub_255D39644(v53, v55 + v54, type metadata accessor for RemoteContentView);
    v91.n128_u64[0] = v76;
    v91.n128_u64[1] = v74;
    v35 = v82;
    v92.n128_u64[0] = v75;
    v92.n128_u64[1] = KeyPath;
    v93.n128_u64[0] = v48;
    v93.n128_u64[1] = v52;
    v94.n128_u64[0] = v51;
    v94.n128_u64[1] = sub_255D38938;
    v95 = v55;
    v96 = 0;
    v108 = v93;
    v109 = v94;
    *v110 = v55;
    v106 = v91;
    *&v110[16] = 0;
    v107 = v92;
    v97 = 1;
    v110[24] = 1;
    sub_255D3957C(&v91, &v99, &qword_27F7E5F50, &qword_255E3B9F0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F20, &qword_255E3B9D8);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F50, &qword_255E3B9F0);
    sub_255D38148();
    sub_255D382A0();
    sub_255E39258();
    v108 = v85;
    v109 = v86;
    *v110 = v87[0];
    *&v110[9] = *(v87 + 9);
    v106 = v83;
    v107 = v84;
    v98 = 0;
    v110[25] = 0;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F30, &qword_255E3B9E0);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F38, &qword_255E3B9E8);
    sub_255D38214();
    sub_255D38554();
    sub_255E39258();
    sub_255D395E4(&v91, &qword_27F7E5F50, &qword_255E3B9F0);
    v108 = v101;
    v109 = v102;
    *v110 = v103[0];
    *&v110[10] = *(v103 + 10);
    v106 = v99;
    v107 = v100;
    __swift_destroy_boxed_opaque_existential_1Tm(v88);
  }

  v71 = v109;
  v35[2] = v108;
  v35[3] = v71;
  v35[4] = *v110;
  *(v35 + 74) = *&v110[10];
  result = v106;
  v73 = v107;
  *v35 = v106;
  v35[1] = v73;
  return result;
}

uint64_t sub_255D36AA4(uint64_t a1)
{
  v2 = sub_255E3AAE8();
  v26 = *(v2 - 8);
  v27 = v2;
  MEMORY[0x28223BE20](v2);
  v28 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6010, &unk_255E3BB10);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v25 - v5;
  v7 = type metadata accessor for RemoteContent(0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v25 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = type metadata accessor for RemoteContentView(0);
  v12 = (a1 + *(v11 + 32));
  v14 = *v12;
  v13 = v12[1];
  v30 = *v12;
  v31 = v13;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F10, &qword_255E3B9A8);
  sub_255E39FA8();
  v15 = *(v29[0] + 120);

  if ((v15 & 1) == 0)
  {
    sub_255D3957C(a1 + *(v11 + 20), v6, &qword_27F7E6010, &unk_255E3BB10);
    if ((*(v8 + 48))(v6, 1, v7) == 1)
    {
      return sub_255D395E4(v6, &qword_27F7E6010, &unk_255E3BB10);
    }

    else
    {
      sub_255D39644(v6, v10, type metadata accessor for RemoteContent);
      v30 = v14;
      v31 = v13;
      sub_255E39FA8();
      v17 = v29[0];
      sub_255D34B64();
      *(v17 + 136) = v18;
      swift_unknownObjectWeakAssign();

      swift_unknownObjectRelease();
      v30 = v14;
      v31 = v13;
      sub_255E39FA8();
      v19 = sub_255D34E44();
      if (qword_27F7E5E88 != -1)
      {
        swift_once();
      }

      v20 = v27;
      v21 = __swift_project_value_buffer(v27, qword_27F8152F0);
      v22 = v28;
      (*(v26 + 16))(v28, v21, v20);
      v32 = type metadata accessor for ContentRegistry();
      v30 = v19;
      v23 = v19;
      v24 = sub_255E38428();
      sub_255DCF60C(&v30, v22);
      v24(v29, 0);

      v30 = v14;
      v31 = v13;
      sub_255E39FA8();
      LOBYTE(v30) = 2;
      RemoteLoader.reload(content:showLoading:reloadtype:)(v10, 1, &v30);

      return sub_255D37F5C(v10, type metadata accessor for RemoteContent);
    }
  }

  return result;
}

uint64_t sub_255D36E78(void *a1)
{
  v2 = sub_255E38D48();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = v12 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = a1 + *(type metadata accessor for RemoteContentView(0) + 40);
  v7 = *v6;
  v8 = *(v6 + 1);
  if (v6[16] != 1)
  {

    sub_255E3A858();
    v10 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v7, v8, 0);
    result = (*(v3 + 8))(v5, v2);
    v8 = v12[1];
    if (!v12[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v7)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(v8 + 24))(*a1, a1[1], ObjectType, v8);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255D3701C(void *a1, uint64_t a2)
{
  v4 = sub_255E38D48();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1 + *(type metadata accessor for RemoteContentView(0) + 40);
  v9 = *v8;
  v10 = *(v8 + 1);
  if (v8[16] != 1)
  {

    sub_255E3A858();
    v12 = sub_255E39598();
    sub_255E38678();

    sub_255E38D38();
    swift_getAtKeyPath();
    sub_255D38130(v9, v10, 0);
    result = (*(v5 + 8))(v7, v4);
    v10 = v14[1];
    if (!v14[0])
    {
      return result;
    }

    goto LABEL_5;
  }

  result = swift_unknownObjectRetain();
  if (v9)
  {
LABEL_5:
    ObjectType = swift_getObjectType();
    (*(v10 + 32))(*a1, a1[1], a2, ObjectType, v10);
    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_255D371D8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v3 = *a1;
  swift_getKeyPath();
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
  sub_255E38618();

  swift_beginAccess();
  return sub_255D38004(v3 + 16, a2);
}

uint64_t sub_255D37298(uint64_t a1, uint64_t *a2)
{
  sub_255D38004(a1, v3);
  swift_getKeyPath();
  sub_255D37FBC(&qword_27F7E5F18, type metadata accessor for RemoteLoader, protocol conformance descriptor for RemoteLoader);
  sub_255E38608();

  return sub_255D38CA8(v3);
}

uint64_t sub_255D37398(uint64_t *a1)
{
  sub_255D396AC();

  return sub_255E38D68();
}

double sub_255D373F8@<D0>(_OWORD *a1@<X8>)
{
  sub_255D397C4();
  sub_255E38D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255D37448(__int128 *a1)
{
  sub_255D397C4();
  swift_unknownObjectRetain();
  return sub_255E38D68();
}

double sub_255D374A4@<D0>(_OWORD *a1@<X8>)
{
  sub_255D39770();
  sub_255E38D58();
  result = *&v3;
  *a1 = v3;
  return result;
}

uint64_t sub_255D374F4(__int128 *a1, uint64_t a2)
{
  sub_255D39770();
  swift_unknownObjectRetain();
  return sub_255E38D68();
}

uint64_t sub_255D37560(uint64_t a1, char a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v17 = a5;
  v9 = *(a4 - 8);
  MEMORY[0x28223BE20](a1);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_255E394D8();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v17 - v14;
  (*(v9 + 16))(v11, a1, a4);
  (*(v9 + 32))(v15, v11, a4);
  v15[*(v12 + 36)] = a2;
  MEMORY[0x259C4DFE0](v15, a3, v12, v17);
  return (*(v13 + 8))(v15, v12);
}

void *sub_255D37738@<X0>(uint64_t (*a1)(void)@<X3>, void *a3@<X8>)
{
  a1();
  result = sub_255E38D58();
  *a3 = v5;
  return result;
}

uint64_t sub_255D37794(id *a1)
{
  v1 = *a1;
  sub_255D3971C();
  v2 = v1;
  return sub_255E38D68();
}

uint64_t sub_255D377F0(uint64_t result, _BYTE **a2)
{
  v2 = *a2;
  *v2 = result;
  *a2 = v2 + 1;
  return result;
}

uint64_t sub_255D37864(unint64_t **a1, uint64_t a2, uint64_t *a3, uint64_t (*a4)(unint64_t **, uint64_t))
{
  v6 = a4(a1, a2);
  v8 = sub_255D378C0(v6, v7, a3);

  v10 = *a1;
  *v10 = v8;
  *a1 = v10 + 1;
  return result;
}

unint64_t sub_255D378C0(uint64_t a1, unint64_t a2, uint64_t *a3)
{

  v6 = sub_255D3798C(v11, 0, 0, 1, a1, a2);
  v7 = v11[0];
  if (!v6)
  {
    ObjectType = MEMORY[0x277D840A0];
    v11[0] = a1;
    v11[1] = a2;
    v9 = *a3;
    if (!*a3)
    {
      goto LABEL_4;
    }

    goto LABEL_3;
  }

  v8 = v6;

  ObjectType = swift_getObjectType();
  v11[0] = v8;
  v9 = *a3;
  if (*a3)
  {
LABEL_3:
    sub_255D3951C(v11, v9);
    *a3 = v9 + 32;
  }

LABEL_4:
  __swift_destroy_boxed_opaque_existential_1Tm(v11);
  return v7;
}

unint64_t sub_255D3798C(unint64_t *a1, void *__dst, uint64_t a3, char a4, uint64_t a5, unint64_t a6)
{
  if ((a6 & 0x2000000000000000) != 0)
  {
    if ((a4 & 1) == 0)
    {
      if (__dst)
      {
        v9 = HIBYTE(a6) & 0xF;
        if (a3 - __dst > v9)
        {
          v12[0] = a5;
          v12[1] = a6 & 0xFFFFFFFFFFFFFFLL;
          memcpy(__dst, v12, HIBYTE(a6) & 0xF);
          result = 0;
          *(__dst + v9) = 0;
          *a1 = __dst;
          return result;
        }
      }
    }

LABEL_8:
    result = sub_255D37A98(a5, a6);
    *a1 = v8;
    return result;
  }

  if ((a6 & 0x1000000000000000) != 0)
  {
    goto LABEL_8;
  }

  if ((a5 & 0x1000000000000000) != 0)
  {
    result = (a6 & 0xFFFFFFFFFFFFFFFLL) + 32;
  }

  else
  {
    v11 = a6;
    result = sub_255E3AA18();
    a6 = v11;
    if (!result)
    {
      __break(1u);
      return result;
    }
  }

  *a1 = result;
  if ((a6 & 0x8000000000000000) != 0)
  {
    return 0;
  }

  else
  {
    return swift_unknownObjectRetain();
  }
}

void *sub_255D37A98(uint64_t a1, unint64_t a2)
{
  v3 = sub_255D37AE4(a1, a2);
  sub_255D37C14(&unk_2867E8B38);
  return v3;
}

void *sub_255D37AE4(uint64_t a1, unint64_t a2)
{
  if ((a2 & 0x1000000000000000) != 0)
  {
    goto LABEL_13;
  }

  v4 = a1 & 0xFFFFFFFFFFFFLL;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v5 = HIBYTE(a2) & 0xF;
  }

  else
  {
    v5 = a1 & 0xFFFFFFFFFFFFLL;
  }

  if (!v5)
  {
    return MEMORY[0x277D84F90];
  }

  v6 = sub_255DE5C6C(v5, 0);
  v7 = v6;
  if ((a2 & 0x2000000000000000) != 0)
  {
    v15[0] = a1;
    v15[1] = a2 & 0xFFFFFFFFFFFFFFLL;
    memcpy(v6 + 4, v15, HIBYTE(a2) & 0xF);
    return v7;
  }

  if ((a1 & 0x1000000000000000) != 0)
  {
    v8 = ((a2 & 0xFFFFFFFFFFFFFFFLL) + 32);
    v9 = a1 & 0xFFFFFFFFFFFFLL;
    goto LABEL_9;
  }

  result = sub_255E3AA18();
  v9 = v14;
  v8 = result;
  if (v4 >= v9)
  {
LABEL_9:
    memcpy(v7 + 4, v8, v9);
    if (v9 != v4)
    {
      while (1)
      {
        __break(1u);
LABEL_13:
        v10 = sub_255E3A5A8();
        if (!v10)
        {
          return MEMORY[0x277D84F90];
        }

        v11 = v10;
        v7 = sub_255DE5C6C(v10, 0);
        result = sub_255E3A998();
        if (v13)
        {
          goto LABEL_20;
        }

        if (result == v11)
        {
          return v7;
        }
      }
    }

    return v7;
  }

LABEL_20:
  __break(1u);
  return result;
}

uint64_t sub_255D37C14(uint64_t result)
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
    v11 = v4 + v2;
  }

  else
  {
    v11 = v4;
  }

  result = sub_255D37D00(result, v11, 1, v3);
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
  v7 = *(v3 + 16);
  if ((*(v3 + 24) >> 1) - v7 < v2)
  {
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  memcpy((v3 + v7 + 32), (v6 + 32), v2);

  if (!v2)
  {
LABEL_14:
    *v1 = v3;
    return result;
  }

  v8 = *(v3 + 16);
  v9 = __OFADD__(v8, v2);
  v10 = v8 + v2;
  if (!v9)
  {
    *(v3 + 16) = v10;
    goto LABEL_14;
  }

LABEL_18:
  __break(1u);
  return result;
}

char *sub_255D37D00(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6148, &qword_255E3BB78);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * v11 - 64;
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v8])
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

_BYTE **sub_255D37DF4(_BYTE **result, uint64_t a2, uint64_t a3, char a4)
{
  v4 = *result;
  *v4 = a4;
  *result = v4 + 1;
  return result;
}

uint64_t sub_255D37E0C(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t sub_255D37E60(uint64_t result, unint64_t a2)
{
  if (a2 >> 62 != 1)
  {
    if (a2 >> 62 != 2)
    {
      return v3;
    }
  }
}

uint64_t __swift_project_value_buffer(uint64_t a1, uint64_t a2)
{
  if ((*(*(a1 - 8) + 82) & 2) != 0)
  {
    return *a2;
  }

  return a2;
}

uint64_t sub_255D37EF4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_255D37F5C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_255D37FBC(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_255D38060(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      v4 = a4 & 1;
      return sub_255D38090(result, a2, a3, v4);
    }
  }

  else
  {
    if (!(a4 >> 6))
    {
      v4 = a4 & 1;
      return sub_255D38090(result, a2, a3, v4);
    }
  }

  return result;
}

uint64_t sub_255D38090(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {

    return sub_255D2F870(a3);
  }

  return result;
}

uint64_t sub_255D380E0(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{
  if (a4)
  {

    return sub_255D2F870(a3);
  }

  else
  {
  }
}

uint64_t sub_255D38130(uint64_t a1, uint64_t a2, char a3)
{
  if (a3)
  {
    return swift_unknownObjectRelease();
  }

  else
  {
  }
}

void sub_255D3813C(id a1, char a2)
{
  if (a2)
  {
  }

  else
  {
  }
}

unint64_t sub_255D38148()
{
  result = qword_27F7E5F28;
  if (!qword_27F7E5F28)
  {
    v4[2] = v0;
    v4[3] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F20, &qword_255E3B9D8);
    v4[0] = MEMORY[0x277CE11C0];
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E5F28);
  }

  return result;
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

unint64_t sub_255D38214()
{
  result = qword_27F7E5F40;
  if (!qword_27F7E5F40)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F30, &qword_255E3B9E0);
    v4[0] = sub_255D38148();
    v4[1] = sub_255D382A0();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E5F40);
  }

  return result;
}

unint64_t sub_255D382A0()
{
  result = qword_27F7E5F48;
  if (!qword_27F7E5F48)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F50, &qword_255E3B9F0);
    v4[0] = sub_255D3832C();
    v4[1] = MEMORY[0x277CE0790];
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E5F48);
  }

  return result;
}

unint64_t sub_255D3832C()
{
  result = qword_27F7E5F58;
  if (!qword_27F7E5F58)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F60, &qword_255E3B9F8);
    v4[0] = sub_255D383E4();
    v4[1] = sub_255D38950(&qword_27F7E5FA8, &qword_27F7E5FB0, &unk_255E3BA20, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E5F58);
  }

  return result;
}

unint64_t sub_255D383E4()
{
  result = qword_27F7E5F68;
  if (!qword_27F7E5F68)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F70, &unk_255E3BA00);
    v4[0] = sub_255D3849C();
    v4[1] = sub_255D38950(&qword_27F7E5F98, &qword_27F7E5FA0, &qword_255E54E60, MEMORY[0x277CE0868]);
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v4);
    atomic_store(result, &qword_27F7E5F68);
  }

  return result;
}

unint64_t sub_255D3849C()
{
  result = qword_27F7E5F78;
  if (!qword_27F7E5F78)
  {
    v5[4] = v0;
    v5[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F80, &unk_255E43FF0);
    v4 = sub_255D38950(&qword_27F7E5F88, &qword_27F7E5F90, &unk_255E3BA10, MEMORY[0x277CE0868]);
    v5[0] = MEMORY[0x277CE11C0];
    v5[1] = v4;
    result = swift_getWitnessTable(MEMORY[0x277CDFAD8], v3, v5);
    atomic_store(result, &qword_27F7E5F78);
  }

  return result;
}

unint64_t sub_255D38554()
{
  result = qword_27F7E5FB8;
  if (!qword_27F7E5FB8)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5F38, &qword_255E3B9E8);
    v4[0] = sub_255D38148();
    v4[1] = v4[0];
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E5FB8);
  }

  return result;
}

uint64_t objectdestroyTm()
{
  v1 = type metadata accessor for RemoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  v7 = type metadata accessor for RemoteContent(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      goto LABEL_2;
    }

    v12 = *v6;
    v13 = *(v6 + 8);
LABEL_19:
    sub_255D37E60(v12, v13);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v14 = sub_255E38588();
    (*(*(v14 - 8) + 8))(v6, v14);
    v15 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v13 = v15[1];
    if (v13 >> 60 == 15)
    {
      goto LABEL_2;
    }

    v12 = *v15;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
    v10 = *(v6 + 56);
    if (v10 <= 0xFD)
    {
      sub_255D38060(*(v6 + 32), *(v6 + 40), *(v6 + 48), v10);
    }

    v11 = *(v6 + 88);
    if (v11 != 255)
    {
      sub_255D380E0(*(v6 + 64), *(v6 + 72), *(v6 + 80), v11 & 1);
    }
  }

LABEL_2:
  v8 = (v4 + v3 + 7) & 0xFFFFFFFFFFFFFFF8;
  sub_255D2F888(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_255D2F888(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  sub_255D38130(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 16));
  sub_255D38130(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));
  sub_255D3813C(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v8 + 8, v2 | 7);
}

uint64_t sub_255D38874()
{
  v1 = *(type metadata accessor for RemoteContentView(0) - 8);
  v2 = (*(v1 + 80) + 16) & ~*(v1 + 80);
  return sub_255D3701C((v0 + v2), *(v0 + ((*(v1 + 64) + v2 + 7) & 0xFFFFFFFFFFFFFFF8)));
}

void *__swift_project_boxed_opaque_existential_1(void *result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    return (*result + ((*(*(a2 - 8) + 80) + 16) & ~*(*(a2 - 8) + 80)));
  }

  return result;
}

uint64_t sub_255D38950(unint64_t *a1, uint64_t *a2, uint64_t *a3, const char *a4)
{
  result = *a1;
  if (!result)
  {
    v7 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a2, a3);
    result = swift_getWitnessTable(a4, v7);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_205Tm()
{
  v1 = type metadata accessor for RemoteContentView(0);
  v2 = *(*(v1 - 1) + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(*(v1 - 1) + 64);
  v5 = v0 + v3;

  v6 = v0 + v3 + v1[5];
  v7 = type metadata accessor for RemoteContent(0);
  if ((*(*(v7 - 8) + 48))(v6, 1, v7))
  {
    goto LABEL_2;
  }

  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload <= 1)
  {
    if (EnumCaseMultiPayload)
    {
      if (EnumCaseMultiPayload == 1)
      {
      }

      goto LABEL_2;
    }

    v11 = *v6;
    v12 = *(v6 + 8);
LABEL_19:
    sub_255D37E60(v11, v12);
    goto LABEL_2;
  }

  if (EnumCaseMultiPayload == 2)
  {
    v13 = sub_255E38588();
    (*(*(v13 - 8) + 8))(v6, v13);
    v14 = (v6 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E5F00, &qword_255E3B920) + 64));
    v12 = v14[1];
    if (v12 >> 60 == 15)
    {
      goto LABEL_2;
    }

    v11 = *v14;
    goto LABEL_19;
  }

  if (EnumCaseMultiPayload == 3)
  {
    sub_255D38060(*v6, *(v6 + 8), *(v6 + 16), *(v6 + 24));
    v9 = *(v6 + 56);
    if (v9 <= 0xFD)
    {
      sub_255D38060(*(v6 + 32), *(v6 + 40), *(v6 + 48), v9);
    }

    v10 = *(v6 + 88);
    if (v10 != 255)
    {
      sub_255D380E0(*(v6 + 64), *(v6 + 72), *(v6 + 80), v10 & 1);
    }
  }

LABEL_2:
  sub_255D2F888(*(v5 + v1[6]), *(v5 + v1[6] + 8));
  sub_255D2F888(*(v5 + v1[7]), *(v5 + v1[7] + 8));

  sub_255D38130(*(v5 + v1[9]), *(v5 + v1[9] + 8), *(v5 + v1[9] + 16));
  sub_255D38130(*(v5 + v1[10]), *(v5 + v1[10] + 8), *(v5 + v1[10] + 16));
  sub_255D3813C(*(v5 + v1[11]), *(v5 + v1[11] + 8));

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

uint64_t sub_255D38C34(uint64_t (*a1)(uint64_t))
{
  v2 = *(type metadata accessor for RemoteContentView(0) - 8);
  v3 = v1 + ((*(v2 + 80) + 16) & ~*(v2 + 80));

  return a1(v3);
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

void sub_255D38E08(uint64_t a1)
{
  sub_255D38E90(319);
  if (v1 <= 0x3F)
  {
    sub_255D38F34(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initEnumMetadataMultiPayloadWithLayoutString();
    }
  }
}

void sub_255D38E90(uint64_t a1)
{
  if (!qword_27F7E5FE0)
  {
    sub_255E38588();
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FE8, &qword_255E3BAE0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E5FF0, &qword_255E3BAE8);
    TupleTypeMetadata3 = swift_getTupleTypeMetadata3();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata3, &qword_27F7E5FE0);
    }
  }
}

void sub_255D38F34(uint64_t a1)
{
  if (!qword_27F7E5FF8)
  {
    MEMORY[0x28223BE20](a1);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6000, &qword_255E3BAF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6008, &qword_255E3BAF8);
    type metadata accessor for RemoteStateStore(255);
    TupleTypeMetadata = swift_getTupleTypeMetadata();
    if (!v2)
    {
      atomic_store(TupleTypeMetadata, &qword_27F7E5FF8);
    }
  }
}

void sub_255D39098(uint64_t a1)
{
  sub_255D39368(319, &qword_27F7E6028, type metadata accessor for RemoteContent, MEMORY[0x277D83D88]);
  if (v1 <= 0x3F)
  {
    sub_255D392D4(319, &qword_27F7E6030, type metadata accessor for RemoteStateStore, &qword_27F7E5EF0, type metadata accessor for RemoteStateStore);
    if (v2 <= 0x3F)
    {
      sub_255D392D4(319, &qword_27F7E6038, type metadata accessor for LocalStateStore, &qword_27F7E5EF8, type metadata accessor for LocalStateStore);
      if (v3 <= 0x3F)
      {
        sub_255D39368(319, &qword_27F7E6040, type metadata accessor for RemoteLoader, MEMORY[0x277CE10B8]);
        if (v4 <= 0x3F)
        {
          sub_255D393CC(319, &qword_27F7E6048, &qword_27F7E6050, &qword_255E3BB38);
          if (v5 <= 0x3F)
          {
            sub_255D393CC(319, &qword_27F7E6058, &qword_27F7E6060, &qword_255E3BB40);
            if (v6 <= 0x3F)
            {
              sub_255D39368(319, &qword_27F7E6068, type metadata accessor for ContentRegistry, MEMORY[0x277CDF468]);
              if (v7 <= 0x3F)
              {
                swift_cvw_initStructMetadataWithLayoutString();
              }
            }
          }
        }
      }
    }
  }
}

void sub_255D392D4(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), unint64_t *a4, uint64_t (*a5)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    sub_255D37FBC(a4, a5, protocol conformance descriptor for StateDict<A, B>);
    v8 = sub_255E38898();
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255D39368(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
{
  if (!*a2)
  {
    v7 = a3(255);
    v8 = a4(a1, v7);
    if (!v9)
    {
      atomic_store(v8, a2);
    }
  }
}

void sub_255D393CC(uint64_t a1, unint64_t *a2, uint64_t *a3, uint64_t *a4)
{
  if (!*a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(a3, a4);
    v5 = sub_255E38878();
    if (!v6)
    {
      atomic_store(v5, a2);
    }
  }
}

unint64_t sub_255D39420()
{
  result = qword_27F7E6070;
  if (!qword_27F7E6070)
  {
    v4[4] = v0;
    v4[5] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6078, &qword_255E3BB48);
    v4[0] = sub_255D38214();
    v4[1] = sub_255D38554();
    result = swift_getWitnessTable(MEMORY[0x277CE0340], v3, v4);
    atomic_store(result, &qword_27F7E6070);
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

uint64_t sub_255D394BC(uint64_t a1, int a2)
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

uint64_t sub_255D394DC(uint64_t result, int a2, int a3)
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

uint64_t sub_255D3951C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  (**(v3 - 8))(a2, a1);
  return a2;
}

uint64_t sub_255D3957C(uint64_t a1, uint64_t a2, uint64_t *a3, uint64_t *a4)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  (*(*(v6 - 8) + 16))(a2, a1, v6);
  return a2;
}

uint64_t sub_255D395E4(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  (*(*(v4 - 8) + 8))(a1, v4);
  return a1;
}

uint64_t sub_255D39644(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

unint64_t sub_255D396AC()
{
  result = qword_27F7E6150;
  if (!qword_27F7E6150)
  {
    result = swift_getWitnessTable(byte_255E54E78, &type metadata for RemoteLoaderKey, v0, v1);
    atomic_store(result, &qword_27F7E6150);
  }

  return result;
}

unint64_t sub_255D3971C()
{
  result = qword_27F7E6168;
  if (!qword_27F7E6168)
  {
    result = swift_getWitnessTable(byte_255E599D4, &type metadata for ContentRegistryKey, v0, v1);
    atomic_store(result, &qword_27F7E6168);
  }

  return result;
}

unint64_t sub_255D39770()
{
  result = qword_27F7E6170;
  if (!qword_27F7E6170)
  {
    result = swift_getWitnessTable(byte_255E55DD4, &type metadata for LiftUIDelegateKey, v0, v1);
    atomic_store(result, &qword_27F7E6170);
  }

  return result;
}

unint64_t sub_255D397C4()
{
  result = qword_27F7E6178;
  if (!qword_27F7E6178)
  {
    result = swift_getWitnessTable(aM_22, &type metadata for LiftUIDataSourceKey, v0, v1);
    atomic_store(result, &qword_27F7E6178);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

void sub_255D3984C(uint64_t a1, unint64_t *a2, uint64_t a3)
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

uint64_t Shape.anyShape.getter@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, double (**a3)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  MEMORY[0x28223BE20](a1);
  v8 = &v11 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v9 + 16))(v8, v3, a1);
  return sub_255D3998C(v8, a1, a2, a3);
}

uint64_t sub_255D3998C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, double (**a4)@<D0>(uint64_t a1@<X8>)@<X8>)
{
  v8 = *(a2 - 8);
  v9 = (*(v8 + 80) + 32) & ~*(v8 + 80);
  v10 = swift_allocObject();
  *(v10 + 16) = a2;
  *(v10 + 24) = a3;
  result = (*(v8 + 32))(v10 + v9, a1, a2);
  *a4 = sub_255D3D704;
  a4[1] = v10;
  return result;
}

double AnyShape.path(in:)@<D0>(uint64_t a1@<X8>)
{
  (*v1)(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

double sub_255D39AB8@<D0>(uint64_t a1@<X8>)
{
  (*v1)(v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

uint64_t (*sub_255D39B24(uint64_t *a1))()
{
  if (MEMORY[0x277D84FD8])
  {
    v2 = swift_coroFrameAlloc();
  }

  else
  {
    v2 = malloc(0x28uLL);
  }

  *a1 = v2;
  *(v2 + 32) = sub_255E38768();
  return sub_255D39BAC;
}

void sub_255D39BAC(void *a1)
{
  v1 = *a1;
  (*(*a1 + 32))(*a1);

  free(v1);
}

uint64_t sub_255D39BF8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D3D6B0();

  return MEMORY[0x282133768](a1, a2, a3, v6);
}

uint64_t sub_255D39C5C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_255D3D6B0();

  return MEMORY[0x282133720](a1, a2, a3, v6);
}

uint64_t sub_255D39CC0(uint64_t a1)
{
  v2 = sub_255D3D6B0();

  return MEMORY[0x282133738](a1, v2);
}

uint64_t sub_255D39D0C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0xE700000000000000;
  v4 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v4 = 0x7265696669646F6DLL;
    v3 = 0xE900000000000073;
  }

  if (*a1)
  {
    v5 = v4;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v3;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0xE700000000000000;
  v8 = 0x746E65746E6F63;
  if (*a2 != 1)
  {
    v8 = 0x7265696669646F6DLL;
    v7 = 0xE900000000000073;
  }

  if (*a2)
  {
    v9 = v8;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v7;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D39E10()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D39EAC(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D39F34(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D39FCC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D3D664(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D39FFC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xE700000000000000;
  v5 = 0x746E65746E6F63;
  if (v2 != 1)
  {
    v5 = 0x7265696669646F6DLL;
    v4 = 0xE900000000000073;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D3A054()
{
  v1 = 0x746E65746E6F63;
  if (*v0 != 1)
  {
    v1 = 0x7265696669646F6DLL;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255D3A0A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D3D664(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D3A0DC(uint64_t a1)
{
  v2 = sub_255D3CDC8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3A118(uint64_t a1)
{
  v2 = sub_255D3CDC8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t ShapeContentBox.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v46 = a2;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6190, &unk_255E3BBD0);
  v47 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v36 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6198, &unk_255E536B0);
  v57 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v36 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v10 = sub_255E3AE18();
  if (qword_27F7E5E88 != -1)
  {
    swift_once();
  }

  v11 = sub_255E3AAE8();
  v12 = __swift_project_value_buffer(v11, qword_27F8152F0);
  if (!*(v10 + 16) || (v13 = sub_255D3CA98(v12), (v14 & 1) == 0))
  {

    goto LABEL_9;
  }

  sub_255D3951C(*(v10 + 56) + 32 * v13, v52);

  type metadata accessor for ContentRegistry();
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_9:
    type metadata accessor for ContentRegistryError(0);
    sub_255D3E628(&qword_27F7E61A0, type metadata accessor for ContentRegistryError, aQ_9);
    swift_allocError();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v43 = v4;
  v44 = v7;
  v15 = v49;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  v16 = sub_255D3CAFC();
  v45 = v9;
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v42 = v15;
  v18 = v44;
  v19 = sub_255E3ABD8();
  if (!*(v19 + 16))
  {

    type metadata accessor for DynamicKeyError(0);
    sub_255D3E628(&qword_27F7E61D8, type metadata accessor for DynamicKeyError, byte_255E482E4);
    swift_allocError();
    v27 = v45;
    sub_255E3AB68();
    sub_255E3A9C8();
    swift_storeEnumTagMultiPayload();
    swift_willThrow();

    (*(v57 + 8))(v27, v18);
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v21 = *(v19 + 32);
  v20 = *(v19 + 40);
  v22 = *(v19 + 48);
  v41 = *(v19 + 56);
  swift_bridgeObjectRetain_n();

  v23 = sub_255E3AB68();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61B0, &qword_255E3BBE0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_255E3BBC0;
  *(inited + 56) = &type metadata for DynamicKey;
  *(inited + 64) = v16;
  v25 = swift_allocObject();
  *(inited + 32) = v25;
  *(v25 + 16) = v21;
  *(v25 + 24) = v20;
  v39 = v22;
  *(v25 + 32) = v22;
  *(v25 + 40) = v41;
  v52[0] = v23;

  sub_255D3D544(inited, sub_255DE56C0, &qword_27F7E6228, &qword_255E3BEE0);
  v40 = v21;
  v26 = sub_255E0800C(v21, v20, v52[0]);
  v37 = v28;
  v38 = v26;

  v52[0] = v40;
  v52[1] = v20;
  v52[2] = v39;
  v53 = v41;
  sub_255D3CDC8();
  v29 = v45;
  sub_255E3AB58();

  LOBYTE(v49) = 1;
  v30 = v43;
  sub_255E3AB78();
  v31 = v42;
  sub_255D3CE1C(v52, v48);
  v50 = v38;
  v51 = v37;
  __swift_allocate_boxed_opaque_existential_1(&v49);
  sub_255E3A7B8();
  sub_255D34630(&v49, v54);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E61C0, &qword_255E3BBE8);
  v48[0] = 2;
  sub_255D3CF34();
  sub_255E3ABA8();
  if (v49)
  {
    v32 = v49;
  }

  else
  {
    v32 = MEMORY[0x277D84F90];
  }

  v33 = v31;
  v34 = v55;
  v35 = v56;
  __swift_mutable_project_boxed_opaque_existential_1(v54, v55);
  (*(v35 + 64))(v32, v34, v35);

  __swift_destroy_boxed_opaque_existential_1Tm(v52);
  (*(v47 + 8))(v6, v30);
  (*(v57 + 8))(v29, v44);
  sub_255D3D05C(v54, v46);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D3D094(v54);
}

uint64_t sub_255D3AA30()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D3AA78(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D3AABC@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D3AB1C@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D3AB74(uint64_t a1)
{
  v2 = sub_255D3EDE8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3ABB0(uint64_t a1)
{
  v2 = sub_255D3EDE8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3ABEC@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EF4C();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3AC74@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EEF8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3ACDC@<X0>(void *a1@<X8>)
{
  v3 = sub_255E3A0A8();
  MEMORY[0x28223BE20](v3 - 8);
  if (*(v1 + 56))
  {

    sub_255D3AEE8(v4, v7);

    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D3AEE8@<X0>(unint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)@<X8>)
{
  v26 = a2;
  v5 = sub_255E38F38();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255E3A0A8();
  v21 = *(v9 - 8);
  v10 = *(v21 + 64);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = *(v2 + 40);
  if (v11 <= 0xFD)
  {
    v12 = *(v2 + 24);
    v13 = *(v2 + 32);
    v22 = *(v2 + 16);
    v23 = v12;
    v24 = v13;
    v25 = v11;
    sub_255D3E5A8(v22, v12, v13, v11);
    StringResolvable.resolved(with:)(a1);
    if (v3)
    {
    }

    sub_255D38060(v22, v23, v24, v25);
  }

  v14 = sub_255E3AB48();

  v15 = MEMORY[0x277CE0118];
  if (v14 != 1)
  {
    v15 = MEMORY[0x277CE0128];
  }

  (*(v6 + 104))(v8, *v15, v5);
  (*(v6 + 32))(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v8, v5);
  v16 = (*(v21 + 80) + 16) & ~*(v21 + 80);
  v17 = swift_allocObject();
  result = sub_255D3E780(&v20 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0), v17 + v16, MEMORY[0x277CE1260]);
  v19 = v26;
  *v26 = sub_255D3E57C;
  v19[1] = v17;
  return result;
}

uint64_t sub_255D3B18C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x656C797473;
  }

  else
  {
    v3 = 25705;
  }

  if (v2)
  {
    v4 = 0xE200000000000000;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x656C797473;
  }

  else
  {
    v5 = 25705;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D3B224()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3B298(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D3B2F8(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3B368@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D3B3C8(uint64_t *a1@<X8>)
{
  v2 = 25705;
  if (*v1)
  {
    v2 = 0x656C797473;
  }

  v3 = 0xE200000000000000;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D3B3F8()
{
  if (*v0)
  {
    return 0x656C797473;
  }

  else
  {
    return 25705;
  }
}

uint64_t sub_255D3B424@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D3B488(uint64_t a1)
{
  v2 = sub_255D3EE3C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3B4C4(uint64_t a1)
{
  v2 = sub_255D3EE3C();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3B500@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v30 = a2;
  v27 = sub_255E385D8();
  v28 = *(v27 - 8);
  MEMORY[0x28223BE20](v27);
  v5 = &v25 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6310, &unk_255E3C950);
  v29 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v8 = &v25 - v7;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v49 = sub_255E38CC8();
  v10 = v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3EE3C();
  sub_255E3AE28();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v11 = v29;
    v26 = v10;
    v12 = v30;
    LOBYTE(v36[0]) = 0;
    v13 = sub_255E3AB88();
    if (v14)
    {
      v25 = v13;
      v16 = v14;
    }

    else
    {
      v17 = v5;
      sub_255E385C8();
      v25 = sub_255E385B8();
      v16 = v18;
      (*(v28 + 8))(v17, v27);
    }

    v44 = 1;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v11 + 8))(v8, v6);
    v19 = v45;
    v29 = v46;
    LODWORD(v30) = v47;
    v20 = v25;
    *&v31 = v25;
    *(&v31 + 1) = v16;
    v32 = v45;
    *&v33 = v46;
    BYTE8(v33) = v47;
    HIDWORD(v33) = *(v48 + 3);
    *(&v33 + 9) = v48[0];
    v21 = v49;
    *&v34 = MEMORY[0x277D84F90];
    *(&v34 + 1) = v49;
    v22 = v26;
    v35 = v26;
    *(v12 + 64) = v26;
    v23 = v34;
    *(v12 + 32) = v33;
    *(v12 + 48) = v23;
    v24 = v32;
    *v12 = v31;
    *(v12 + 16) = v24;
    sub_255D3EE90(&v31, v36);
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v36[0] = v20;
    v36[1] = v16;
    v37 = v19;
    v38 = v29;
    v39 = v30;
    *v40 = v48[0];
    *&v40[3] = *(v48 + 3);
    v41 = MEMORY[0x277D84F90];
    v42 = v21;
    v43 = v22;
    return sub_255D3EEC8(v36);
  }
}

uint64_t sub_255D3B91C@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3ACDC(&v3);
  sub_255D3D120();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3B990(uint64_t a1)
{

  *(v1 + 48) = a1;
  return result;
}

uint64_t sub_255D3B9F4@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3EAC8();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

double sub_255D3BA5C@<D0>(uint64_t a1@<X8>, void *a2@<X0>)
{
  sub_255D3EB1C(a2, v6);
  if (!v2)
  {
    result = *v6;
    v5 = v6[1];
    *a1 = v6[0];
    *(a1 + 16) = v5;
    *(a1 + 32) = v7;
  }

  return result;
}

uint64_t sub_255D3BAA4@<X0>(void *a1@<X8>)
{
  v3 = sub_255E38BC8();
  MEMORY[0x28223BE20](v3);
  if (*(v1 + 88))
  {

    sub_255D3BCC8(v4, v7);

    v6 = v7[1];
    *a1 = v7[0];
    a1[1] = v6;
  }

  else
  {
    type metadata accessor for RemoteStateStore(0);
    sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
    result = sub_255E38CB8();
    __break(1u);
  }

  return result;
}

uint64_t sub_255D3BCC8@<X0>(unint64_t a1@<X0>, double (**a2)@<D0>(uint64_t a1@<X8>, double a2@<D0>, double a3@<D1>, double a4@<D2>, double a5@<D3>)@<X8>)
{
  v4 = v3;
  v34 = a2;
  v33 = sub_255E38F38();
  v6 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v32 = &v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_255E38BC8();
  v9 = *(v8 - 8);
  v29 = v8;
  v30 = v9;
  MEMORY[0x28223BE20](v8);
  v31 = v10;
  v11 = &v27 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *(v2 + 40);
  v13 = *(v2 + 48);
  v14 = *(v2 + 56);
  v15 = *(v2 + 64);
  v16 = *(v2 + 72);
  v17 = 0;
  v28 = a1;
  if (v12 != 255)
  {
    sub_255DDEF98(a1, *(v2 + 16), *(v2 + 24), *(v2 + 32), v12 & 1);
    if (v3)
    {

      v4 = 0;
    }

    else
    {
      v17 = v18;
    }
  }

  if (v16 <= 0xFD)
  {
    v35 = v13;
    v36 = v14;
    v37 = v15;
    v38 = v16;
    sub_255D3E5A8(v13, v14, v15, v16);
    StringResolvable.resolved(with:)(v28);
    if (v4)
    {
    }

    sub_255D38060(v35, v36, v37, v38);
  }

  v19 = sub_255E3AB48();

  v20 = MEMORY[0x277CE0118];
  if (v19 != 1)
  {
    v20 = MEMORY[0x277CE0128];
  }

  v22 = v32;
  v21 = v33;
  (*(v6 + 104))(v32, *v20, v33);
  *v11 = v17;
  *(v11 + 1) = v17;
  (*(v6 + 32))(&v11[*(v29 + 20)], v22, v21);
  v23 = (*(v30 + 80) + 16) & ~*(v30 + 80);
  v24 = swift_allocObject();
  result = sub_255D3E780(v11, v24 + v23, MEMORY[0x277CDFC08]);
  v26 = v34;
  *v34 = sub_255D3E7E8;
  v26[1] = v24;
  return result;
}

uint64_t sub_255D3BFEC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1;
  v3 = 0x615272656E726F63;
  v4 = 0xEC00000073756964;
  if (v2 != 1)
  {
    v3 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  if (*a1)
  {
    v5 = v3;
  }

  else
  {
    v5 = 25705;
  }

  if (v2)
  {
    v6 = v4;
  }

  else
  {
    v6 = 0xE200000000000000;
  }

  v7 = 0x615272656E726F63;
  v8 = 0xEC00000073756964;
  if (*a2 != 1)
  {
    v7 = 0x656C797473;
    v8 = 0xE500000000000000;
  }

  if (*a2)
  {
    v9 = v7;
  }

  else
  {
    v9 = 25705;
  }

  if (*a2)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xE200000000000000;
  }

  if (v5 == v9 && v6 == v10)
  {
    v11 = 1;
  }

  else
  {
    v11 = sub_255E3AC68();
  }

  return v11 & 1;
}

uint64_t sub_255D3C0F0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D3C18C(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D3C214(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D3C2AC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D3F734(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D3C2DC(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE200000000000000;
  v4 = 0xEC00000073756964;
  v5 = 0x615272656E726F63;
  if (v2 != 1)
  {
    v5 = 0x656C797473;
    v4 = 0xE500000000000000;
  }

  v6 = v2 == 0;
  if (*v1)
  {
    v7 = v5;
  }

  else
  {
    v7 = 25705;
  }

  if (!v6)
  {
    v3 = v4;
  }

  *a1 = v7;
  a1[1] = v3;
}

uint64_t sub_255D3C334()
{
  v1 = 0x615272656E726F63;
  if (*v0 != 1)
  {
    v1 = 0x656C797473;
  }

  if (*v0)
  {
    return v1;
  }

  else
  {
    return 25705;
  }
}

unint64_t sub_255D3C388@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_255D3F734(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_255D3C3B0(uint64_t a1)
{
  v2 = sub_255D3E9B8();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D3C3EC(uint64_t a1)
{
  v2 = sub_255D3E9B8();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D3C428@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v38 = a2;
  v3 = sub_255E385D8();
  v4 = *(v3 - 8);
  v39 = v3;
  v40 = v4;
  MEMORY[0x28223BE20](v3);
  v6 = &v30 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62D0, &qword_255E3C938);
  v41 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v30 - v8;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v71 = sub_255E38CC8();
  v11 = v10;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3E9B8();
  v12 = v42;
  sub_255E3AE28();
  if (v12)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v13 = v40;
    v42 = v11;
    LOBYTE(v50) = 0;
    v14 = sub_255E3AB88();
    v36 = v9;
    if (v15)
    {
      v35 = v14;
      v37 = v15;
    }

    else
    {
      sub_255E385C8();
      v35 = sub_255E385B8();
      v37 = v17;
      (*(v13 + 8))(v6, v39);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E62E0, &qword_255E3C940);
    LOBYTE(v43) = 1;
    sub_255D38950(&qword_27F7E62E8, &qword_27F7E62E0, &qword_255E3C940, protocol conformance descriptor for Referenceable<A>);
    v18 = v36;
    sub_255E3ABA8();
    v19 = v51;
    v39 = v52;
    v40 = v50;
    v34 = v53;
    v65 = 2;
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v41 + 8))(v18, v7);
    v36 = *(&v66 + 1);
    v41 = v66;
    v32 = v67;
    v33 = v19;
    v31 = v68;
    v20 = v35;
    v21 = v37;
    *&v43 = v35;
    *(&v43 + 1) = v37;
    *&v44 = v40;
    *(&v44 + 1) = v19;
    *&v45 = v39;
    LOBYTE(v19) = v34;
    BYTE8(v45) = v34;
    HIDWORD(v45) = *(v70 + 3);
    *(&v45 + 9) = v70[0];
    v46 = v66;
    *&v47 = v67;
    BYTE8(v47) = v68;
    HIDWORD(v47) = *&v69[3];
    *(&v47 + 9) = *v69;
    v30 = a1;
    v22 = v71;
    *&v48 = MEMORY[0x277D84F90];
    *(&v48 + 1) = v71;
    v23 = v42;
    v49 = v42;
    v24 = v47;
    v25 = v48;
    v26 = v38;
    *(v38 + 96) = v42;
    v26[4] = v24;
    v26[5] = v25;
    v27 = v43;
    v28 = v44;
    v29 = v46;
    v26[2] = v45;
    v26[3] = v29;
    *v26 = v27;
    v26[1] = v28;
    sub_255D3EA60(&v43, &v50);
    __swift_destroy_boxed_opaque_existential_1Tm(v30);
    v50 = v20;
    v51 = v21;
    v52 = v40;
    v53 = v33;
    v54 = v39;
    v55 = v19;
    *v56 = v70[0];
    *&v56[3] = *(v70 + 3);
    v57 = v41;
    v58 = v36;
    v59 = v32;
    v60 = v31;
    *v61 = *v69;
    *&v61[3] = *&v69[3];
    v62 = MEMORY[0x277D84F90];
    v63 = v22;
    v64 = v23;
    return sub_255D3EA98(&v50);
  }
}

uint64_t sub_255D3C948@<X0>(uint64_t *a1@<X8>)
{
  sub_255D3BAA4(&v3);
  sub_255D3D120();
  result = sub_255E3A038();
  *a1 = result;
  return result;
}

uint64_t sub_255D3C9BC(uint64_t a1)
{

  *(v1 + 80) = a1;
  return result;
}

unint64_t sub_255D3CA20(uint64_t a1, uint64_t a2)
{
  sub_255E3AD98();
  sub_255E3A578();
  v4 = sub_255E3ADD8();

  return sub_255D3CB50(a1, a2, v4);
}

unint64_t sub_255D3CA98(uint64_t a1)
{
  sub_255E3AAE8();
  v2 = sub_255E3A478();

  return sub_255D3CC08(a1, v2);
}

unint64_t sub_255D3CAFC()
{
  result = qword_27F7E61A8;
  if (!qword_27F7E61A8)
  {
    result = swift_getWitnessTable(byte_255E48324, &type metadata for DynamicKey, v0, v1);
    atomic_store(result, &qword_27F7E61A8);
  }

  return result;
}

unint64_t sub_255D3CB50(uint64_t a1, uint64_t a2, uint64_t a3)
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

      if (sub_255E3AC68())
      {
        break;
      }

      v5 = (v5 + 1) & v8;
    }

    while (((*(v3 + 64 + ((v5 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v5) & 1) != 0);
  }

  return v5;
}

unint64_t sub_255D3CC08(uint64_t a1, uint64_t a2)
{
  v21 = a1;
  v4 = sub_255E3AAE8();
  MEMORY[0x28223BE20](v4);
  v7 = &v19 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v22 = v2;
  v8 = -1 << *(v2 + 32);
  v9 = a2 & ~v8;
  v20 = v2 + 64;
  if ((*(v2 + 64 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9))
  {
    v10 = ~v8;
    v13 = *(v5 + 16);
    v11 = v5 + 16;
    v12 = v13;
    v14 = *(v11 + 56);
    v15 = (v11 - 8);
    do
    {
      v16 = v11;
      v12(v7, *(v22 + 48) + v14 * v9, v4);
      v17 = sub_255E3A4B8();
      (*v15)(v7, v4);
      if (v17)
      {
        break;
      }

      v9 = (v9 + 1) & v10;
      v11 = v16;
    }

    while (((*(v20 + ((v9 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v9) & 1) != 0);
  }

  return v9;
}

unint64_t sub_255D3CDC8()
{
  result = qword_27F7E61B8;
  if (!qword_27F7E61B8)
  {
    result = swift_getWitnessTable(byte_255E3BE8C, &type metadata for ShapeContentBox.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E61B8);
  }

  return result;
}

uint64_t sub_255D3CE1C(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 24);
  *(a2 + 24) = v3;
  *(a2 + 32) = *(a1 + 32);
  (**(v3 - 8))(a2, a1);
  return a2;
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

uint64_t __swift_deallocate_boxed_opaque_existential_1(uint64_t result)
{
  if ((*(*(*(result + 24) - 8) + 80) & 0x20000) != 0)
  {
    JUMPOUT(0x259C4F9E0);
  }

  return result;
}

unint64_t sub_255D3CF34()
{
  result = qword_27F7E61C8;
  if (!qword_27F7E61C8)
  {
    v4[3] = v0;
    v4[4] = v1;
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E61C0, &qword_255E3BBE8);
    v4[0] = sub_255D3CFB8();
    result = swift_getWitnessTable(MEMORY[0x277D83978], v3, v4);
    atomic_store(result, &qword_27F7E61C8);
  }

  return result;
}

unint64_t sub_255D3CFB8()
{
  result = qword_27F7E61D0;
  if (!qword_27F7E61D0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyViewModifier, &type metadata for AnyViewModifier, v0, v1);
    atomic_store(result, &qword_27F7E61D0);
  }

  return result;
}

uint64_t __swift_mutable_project_boxed_opaque_existential_1(uint64_t result, uint64_t a2)
{
  if ((*(*(a2 - 8) + 80) & 0x20000) != 0)
  {
    swift_makeBoxUnique();
    return v2;
  }

  return v3;
}

unint64_t sub_255D3D0C8()
{
  result = qword_27F7E61E0;
  if (!qword_27F7E61E0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyShape, &type metadata for AnyShape, v0, v1);
    atomic_store(result, &qword_27F7E61E0);
  }

  return result;
}

unint64_t sub_255D3D120()
{
  result = qword_27F7E61E8;
  if (!qword_27F7E61E8)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyShape, &type metadata for AnyShape, v0, v1);
    atomic_store(result, &qword_27F7E61E8);
  }

  return result;
}

unint64_t sub_255D3D178()
{
  result = qword_27F7E61F0;
  if (!qword_27F7E61F0)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE02C0], MEMORY[0x277CE02C8], v0, v1);
    atomic_store(result, &qword_27F7E61F0);
  }

  return result;
}

uint64_t sub_255D3D2B0(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 16))
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

uint64_t sub_255D3D2F8(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 16) = 1;
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

    *(result + 16) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy40_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 32) = *(a2 + 32);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255D3D358(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255D3D3A0(uint64_t result, int a2, int a3)
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
      *(result + 24) = (a2 - 1);
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

unint64_t sub_255D3D418()
{
  result = qword_27F7E6208;
  if (!qword_27F7E6208)
  {
    result = swift_getWitnessTable(aE_22, &type metadata for ShapeContentBox.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6208);
  }

  return result;
}

unint64_t sub_255D3D470()
{
  result = qword_27F7E6210;
  if (!qword_27F7E6210)
  {
    result = swift_getWitnessTable(byte_255E3BD9C, &type metadata for ShapeContentBox.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6210);
  }

  return result;
}

unint64_t sub_255D3D4C8()
{
  result = qword_27F7E6218;
  if (!qword_27F7E6218)
  {
    result = swift_getWitnessTable(byte_255E3BDC4, &type metadata for ShapeContentBox.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6218);
  }

  return result;
}

uint64_t sub_255D3D544(uint64_t result, uint64_t (*a2)(void), uint64_t *a3, uint64_t *a4)
{
  v5 = *(result + 16);
  v6 = *v4;
  v7 = *(*v4 + 16);
  if (__OFADD__(v7, v5))
  {
    __break(1u);
LABEL_13:
    __break(1u);
    goto LABEL_14;
  }

  v11 = result;
  result = swift_isUniquelyReferenced_nonNull_native();
  if (result && v7 + v5 <= *(v6 + 24) >> 1)
  {
    if (*(v11 + 16))
    {
      goto LABEL_5;
    }

    goto LABEL_10;
  }

  result = a2();
  v6 = result;
  if (!*(v11 + 16))
  {
LABEL_10:

    if (!v5)
    {
      goto LABEL_11;
    }

    goto LABEL_13;
  }

LABEL_5:
  if ((*(v6 + 24) >> 1) - *(v6 + 16) < v5)
  {
LABEL_14:
    __break(1u);
    goto LABEL_15;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(a3, a4);
  swift_arrayInitWithCopy();

  if (!v5)
  {
LABEL_11:
    *v4 = v6;
    return result;
  }

  v12 = *(v6 + 16);
  v13 = __OFADD__(v12, v5);
  v14 = v12 + v5;
  if (!v13)
  {
    *(v6 + 16) = v14;
    goto LABEL_11;
  }

LABEL_15:
  __break(1u);
  return result;
}

unint64_t sub_255D3D664(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D3D6B0()
{
  result = qword_27F7E6220;
  if (!qword_27F7E6220)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for AnyShape, &type metadata for AnyShape, v0, v1);
    atomic_store(result, &qword_27F7E6220);
  }

  return result;
}

double sub_255D3D704@<D0>(uint64_t a1@<X8>)
{
  sub_255E39F08();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI13ReferenceableOySdGSg(uint64_t a1)
{
  v1 = *(a1 + 24);
  if (v1 > 1)
  {
    return (v1 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t get_enum_tag_for_layout_string_6LiftUI16StringResolvableOSg(uint64_t a1)
{
  v1 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v2 = v1 ^ 0x7F;
  v3 = 128 - v1;
  if (v2 >= 0x7D)
  {
    return 0;
  }

  else
  {
    return v3;
  }
}

__n128 __swift_memcpy104_8(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[2];
  *(a1 + 16) = a2[1];
  *(a1 + 32) = v3;
  *a1 = v2;
  result = a2[3];
  v5 = a2[4];
  v6 = a2[5];
  *(a1 + 96) = *(a2 + 12);
  *(a1 + 64) = v5;
  *(a1 + 80) = v6;
  *(a1 + 48) = result;
  return result;
}

uint64_t sub_255D3D7F4(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 104))
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

uint64_t sub_255D3D83C(uint64_t result, int a2, int a3)
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

__n128 __swift_memcpy72_8(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_255D3D8D8(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_255D3D920(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 72) = 1;
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

    *(result + 72) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_255D3D990(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 40))
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

uint64_t sub_255D3D9D8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_255D3DA30(uint64_t a1)
{
  result = sub_255D3DA58();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DA58()
{
  result = qword_27F7E6230;
  if (!qword_27F7E6230)
  {
    result = swift_getWitnessTable(asc_255E3C4FC, &type metadata for CircleView, v0, v1);
    atomic_store(result, &qword_27F7E6230);
  }

  return result;
}

unint64_t sub_255D3DAC4()
{
  result = qword_27F7E6238;
  if (!qword_27F7E6238)
  {
    result = swift_getWitnessTable(byte_255E3C91C, &type metadata for CircleView, v0, v1);
    atomic_store(result, &qword_27F7E6238);
  }

  return result;
}

unint64_t sub_255D3DB44()
{
  result = qword_27F7E6240;
  if (!qword_27F7E6240)
  {
    result = swift_getWitnessTable(aE_23, &type metadata for CircleView, v0, v1);
    atomic_store(result, &qword_27F7E6240);
  }

  return result;
}

unint64_t sub_255D3DB98()
{
  result = qword_27F7E6248;
  if (!qword_27F7E6248)
  {
    result = swift_getWitnessTable(aO_2, &type metadata for CircleView, v0, v1);
    atomic_store(result, &qword_27F7E6248);
  }

  return result;
}

unint64_t sub_255D3DBEC(uint64_t a1)
{
  result = sub_255D3DC14();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DC14()
{
  result = qword_27F7E6250;
  if (!qword_27F7E6250)
  {
    result = swift_getWitnessTable(aM_24, &type metadata for EllipseView, v0, v1);
    atomic_store(result, &qword_27F7E6250);
  }

  return result;
}

unint64_t sub_255D3DC80()
{
  result = qword_27F7E6258;
  if (!qword_27F7E6258)
  {
    result = swift_getWitnessTable(byte_255E3C900, &type metadata for EllipseView, v0, v1);
    atomic_store(result, &qword_27F7E6258);
  }

  return result;
}

unint64_t sub_255D3DD00()
{
  result = qword_27F7E6260;
  if (!qword_27F7E6260)
  {
    result = swift_getWitnessTable(byte_255E3C5E4, &type metadata for EllipseView, v0, v1);
    atomic_store(result, &qword_27F7E6260);
  }

  return result;
}

unint64_t sub_255D3DD54()
{
  result = qword_27F7E6268;
  if (!qword_27F7E6268)
  {
    result = swift_getWitnessTable(byte_255E3C61C, &type metadata for EllipseView, v0, v1);
    atomic_store(result, &qword_27F7E6268);
  }

  return result;
}

unint64_t sub_255D3DDA8(uint64_t a1)
{
  result = sub_255D3DDD0();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DDD0()
{
  result = qword_27F7E6270;
  if (!qword_27F7E6270)
  {
    result = swift_getWitnessTable(byte_255E3C67C, &type metadata for CapsuleView, v0, v1);
    atomic_store(result, &qword_27F7E6270);
  }

  return result;
}

unint64_t sub_255D3DE3C()
{
  result = qword_27F7E6278;
  if (!qword_27F7E6278)
  {
    result = swift_getWitnessTable(asc_255E3C8E4, &type metadata for CapsuleView, v0, v1);
    atomic_store(result, &qword_27F7E6278);
  }

  return result;
}

unint64_t sub_255D3DEBC()
{
  result = qword_27F7E6280;
  if (!qword_27F7E6280)
  {
    result = swift_getWitnessTable(byte_255E3C6A4, &type metadata for CapsuleView, v0, v1);
    atomic_store(result, &qword_27F7E6280);
  }

  return result;
}

unint64_t sub_255D3DF10()
{
  result = qword_27F7E6288;
  if (!qword_27F7E6288)
  {
    result = swift_getWitnessTable(byte_255E3C6DC, &type metadata for CapsuleView, v0, v1);
    atomic_store(result, &qword_27F7E6288);
  }

  return result;
}

unint64_t sub_255D3DF64(uint64_t a1)
{
  result = sub_255D3DF8C();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3DF8C()
{
  result = qword_27F7E6290;
  if (!qword_27F7E6290)
  {
    result = swift_getWitnessTable(byte_255E3C73C, &type metadata for RectangleView, v0, v1);
    atomic_store(result, &qword_27F7E6290);
  }

  return result;
}

unint64_t sub_255D3DFF8()
{
  result = qword_27F7E6298;
  if (!qword_27F7E6298)
  {
    result = swift_getWitnessTable(aD, &type metadata for RectangleView, v0, v1);
    atomic_store(result, &qword_27F7E6298);
  }

  return result;
}

unint64_t sub_255D3E078()
{
  result = qword_27F7E62A0;
  if (!qword_27F7E62A0)
  {
    result = swift_getWitnessTable(byte_255E3C764, &type metadata for RectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62A0);
  }

  return result;
}

unint64_t sub_255D3E0CC()
{
  result = qword_27F7E62A8;
  if (!qword_27F7E62A8)
  {
    result = swift_getWitnessTable(byte_255E3C79C, &type metadata for RectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62A8);
  }

  return result;
}

unint64_t sub_255D3E120(uint64_t a1)
{
  result = sub_255D3E148();
  *(a1 + 16) = result;
  return result;
}

unint64_t sub_255D3E148()
{
  result = qword_27F7E62B0;
  if (!qword_27F7E62B0)
  {
    result = swift_getWitnessTable(asc_255E3C7FC, &type metadata for RoundedRectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62B0);
  }

  return result;
}

unint64_t sub_255D3E208()
{
  result = qword_27F7E62B8;
  if (!qword_27F7E62B8)
  {
    result = swift_getWitnessTable(asc_255E3C8AC, &type metadata for RoundedRectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62B8);
  }

  return result;
}

uint64_t sub_255D3E288(uint64_t a1, uint64_t a2, uint64_t a3, void (*a4)(uint64_t, uint64_t, uint64_t), uint64_t (*a5)(void))
{
  a4(a1, a2, a3);
  a5();
  return swift_getOpaqueTypeConformance2();
}

unint64_t sub_255D3E2F8()
{
  result = qword_27F7E62C0;
  if (!qword_27F7E62C0)
  {
    result = swift_getWitnessTable(aE_24, &type metadata for RoundedRectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62C0);
  }

  return result;
}

unint64_t sub_255D3E34C()
{
  result = qword_27F7E62C8;
  if (!qword_27F7E62C8)
  {
    result = swift_getWitnessTable(aL_1, &type metadata for RoundedRectangleView, v0, v1);
    atomic_store(result, &qword_27F7E62C8);
  }

  return result;
}

unint64_t sub_255D3E3BC(uint64_t a1)
{
  result = sub_255D3E2F8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E400(uint64_t a1)
{
  result = sub_255D3E078();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E444(uint64_t a1)
{
  result = sub_255D3DEBC();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E488(uint64_t a1)
{
  result = sub_255D3DD00();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D3E4CC(uint64_t a1)
{
  result = sub_255D3DB44();
  *(a1 + 8) = result;
  return result;
}

double sub_255D3E4F4@<D0>(uint64_t a1@<X8>)
{
  sub_255E39FD8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

double sub_255D3E538@<D0>(uint64_t a1@<X8>)
{
  sub_255E3A0D8();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_255D3E5A8(uint64_t result, uint64_t a2, uint64_t a3, unsigned __int8 a4)
{
  if ((a4 >> 6) > 1u)
  {
    if (a4 >> 6 == 2)
    {
      v4 = a4 & 1;
      return sub_255D3E5D8(result, a2, a3, v4);
    }
  }

  else
  {
    if (!(a4 >> 6))
    {
      v4 = a4 & 1;
      return sub_255D3E5D8(result, a2, a3, v4);
    }
  }

  return result;
}

uint64_t sub_255D3E5D8(uint64_t a1, uint64_t a2, uint64_t a3, char a4)
{

  if (a4)
  {

    return sub_255D34858(a3);
  }

  return result;
}

uint64_t sub_255D3E628(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

uint64_t objectdestroy_67Tm()
{
  v1 = *(sub_255E3A0A8() - 8);
  v2 = *(v1 + 80);
  v3 = (v2 + 16) & ~v2;
  v4 = *(v1 + 64);
  v5 = sub_255E38F38();
  (*(*(v5 - 8) + 8))(v0 + v3, v5);

  return MEMORY[0x2821FE8E8](v0, v3 + v4, v2 | 7);
}

double sub_255D3E73C@<D0>(uint64_t a1@<X8>)
{
  sub_255E3A308();
  result = *&v3;
  *a1 = v3;
  *(a1 + 16) = v4;
  *(a1 + 32) = v5;
  return result;
}

uint64_t sub_255D3E780(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t objectdestroy_77Tm()
{
  v1 = sub_255E38BC8();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 16) & ~v3;
  v5 = *(v2 + 64);
  v6 = v0 + *(v1 + 20);
  v7 = sub_255E38F38();
  (*(*(v7 - 8) + 8))(v6 + v4, v7);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

double sub_255D3E8F0@<D0>(void (*a1)(void)@<X0>, void (*a2)(_OWORD *__return_ptr, double, double, double, double)@<X1>, uint64_t a3@<X8>, double a4@<D0>, double a5@<D1>, double a6@<D2>, double a7@<D3>)
{
  a1(0);
  a2(v15, a4, a5, a6, a7);
  result = *v15;
  v14 = v15[1];
  *a3 = v15[0];
  *(a3 + 16) = v14;
  *(a3 + 32) = v16;
  return result;
}

unint64_t sub_255D3E9B8()
{
  result = qword_27F7E62D8;
  if (!qword_27F7E62D8)
  {
    result = swift_getWitnessTable(byte_255E3CD2C, &type metadata for RoundedRectangleView.RoundedRectangleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E62D8);
  }

  return result;
}

unint64_t sub_255D3EA0C()
{
  result = qword_27F7E62F0;
  if (!qword_27F7E62F0)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for StringResolvable, &type metadata for StringResolvable, v0, v1);
    atomic_store(result, &qword_27F7E62F0);
  }

  return result;
}

unint64_t sub_255D3EAC8()
{
  result = qword_27F7E62F8;
  if (!qword_27F7E62F8)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE1490], MEMORY[0x277CE14A8], v0, v1);
    atomic_store(result, &qword_27F7E62F8);
  }

  return result;
}

uint64_t sub_255D3EB1C@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v28 = a2;
  v4 = sub_255E385D8();
  v5 = *(v4 - 8);
  v26 = v4;
  v27 = v5;
  MEMORY[0x28223BE20](v4);
  v30 = &v22 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6300, &qword_255E3C948);
  v29 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  type metadata accessor for RemoteStateStore(0);
  sub_255D3E628(&qword_27F7E5EF0, type metadata accessor for RemoteStateStore, protocol conformance descriptor for StateDict<A, B>);
  v10 = sub_255E38CC8();
  v12 = v11;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D3EDE8();
  sub_255E3AE28();
  if (v2)
  {

    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    v25 = v10;
    v13 = v30;
    v14 = v29;
    v15 = sub_255E3AB88();
    if (v16)
    {
      v23 = v15;
      v24 = v16;
    }

    else
    {
      sub_255E385C8();
      v23 = sub_255E385B8();
      v24 = v18;
      (*(v27 + 8))(v13, v26);
    }

    (*(v14 + 8))(v9, v7);
    v19 = v28;
    result = __swift_destroy_boxed_opaque_existential_1Tm(a1);
    v20 = v24;
    *v19 = v23;
    v19[1] = v20;
    v21 = v25;
    v19[2] = MEMORY[0x277D84F90];
    v19[3] = v21;
    v19[4] = v12;
  }

  return result;
}

unint64_t sub_255D3EDE8()
{
  result = qword_27F7E6308;
  if (!qword_27F7E6308)
  {
    result = swift_getWitnessTable(aM_23, &type metadata for BasicShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6308);
  }

  return result;
}

unint64_t sub_255D3EE3C()
{
  result = qword_27F7E6318;
  if (!qword_27F7E6318)
  {
    result = swift_getWitnessTable(byte_255E3CC8C, &type metadata for CapsuleView.CapsuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6318);
  }

  return result;
}

unint64_t sub_255D3EEF8()
{
  result = qword_27F7E6320;
  if (!qword_27F7E6320)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE1268], MEMORY[0x277CE1278], v0, v1);
    atomic_store(result, &qword_27F7E6320);
  }

  return result;
}

unint64_t sub_255D3EF4C()
{
  result = qword_27F7E6328;
  if (!qword_27F7E6328)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE10F8], MEMORY[0x277CE1120], v0, v1);
    atomic_store(result, &qword_27F7E6328);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for CapsuleView.CapsuleCodingKeys(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFF)
  {
    goto LABEL_17;
  }

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
    if (v4)
    {
      return (*a1 | (v4 << 8)) - 1;
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

      return (*a1 | (v4 << 8)) - 1;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 1;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 2;
  v8 = v6 - 2;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for CapsuleView.CapsuleCodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

  if (a3 < 0xFF)
  {
    v4 = 0;
  }

  if (a2 > 0xFE)
  {
    v5 = ((a2 - 255) >> 8) + 1;
    *result = a2 + 1;
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
    *result = a2 + 1;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for BasicShapeCodingKeys(unsigned int *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if ((a2 + 1) >= 0x10000)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 1) < 0x100)
  {
    v3 = 1;
  }

  else
  {
    v3 = v2;
  }

  if (v3 == 4)
  {
    return *a1;
  }

  if (v3 == 2)
  {
    return *a1;
  }

  return *a1;
}

_WORD *storeEnumTagSinglePayload for BasicShapeCodingKeys(_WORD *result, int a2, int a3)
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

  if (!a3)
  {
    v4 = 0;
  }

  if (a2)
  {
    if (v4 > 1)
    {
      if (v4 == 2)
      {
        *result = a2;
      }

      else
      {
        *result = a2;
      }
    }

    else if (v4)
    {
      *result = a2;
    }
  }

  else if (v4 > 1)
  {
    if (v4 == 2)
    {
      *result = 0;
    }

    else
    {
      *result = 0;
    }
  }

  else if (v4)
  {
    *result = 0;
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ViewContent.CodingKeys(unsigned __int8 *a1, unsigned int a2)
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

uint64_t storeEnumTagSinglePayload for ViewContent.CodingKeys(uint64_t result, unsigned int a2, unsigned int a3)
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

unint64_t sub_255D3F320()
{
  result = qword_27F7E6338;
  if (!qword_27F7E6338)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE1110], MEMORY[0x277CE1120], v0, v1);
    atomic_store(result, &qword_27F7E6338);
  }

  return result;
}

unint64_t sub_255D3F374()
{
  result = qword_27F7E6340;
  if (!qword_27F7E6340)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE1270], MEMORY[0x277CE1278], v0, v1);
    atomic_store(result, &qword_27F7E6340);
  }

  return result;
}

unint64_t sub_255D3F3C8()
{
  result = qword_27F7E6348;
  if (!qword_27F7E6348)
  {
    result = swift_getWitnessTable(MEMORY[0x277CE14A0], MEMORY[0x277CE14A8], v0, v1);
    atomic_store(result, &qword_27F7E6348);
  }

  return result;
}

unint64_t sub_255D3F420()
{
  result = qword_27F7E6350;
  if (!qword_27F7E6350)
  {
    result = swift_getWitnessTable(aE_25, &type metadata for RoundedRectangleView.RoundedRectangleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6350);
  }

  return result;
}

unint64_t sub_255D3F478()
{
  result = qword_27F7E6358;
  if (!qword_27F7E6358)
  {
    result = swift_getWitnessTable(aU_23, &type metadata for BasicShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6358);
  }

  return result;
}

unint64_t sub_255D3F4D0()
{
  result = qword_27F7E6360;
  if (!qword_27F7E6360)
  {
    result = swift_getWitnessTable(aE_26, &type metadata for CapsuleView.CapsuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6360);
  }

  return result;
}

unint64_t sub_255D3F528()
{
  result = qword_27F7E6368;
  if (!qword_27F7E6368)
  {
    result = swift_getWitnessTable(byte_255E3CB9C, &type metadata for CapsuleView.CapsuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6368);
  }

  return result;
}

unint64_t sub_255D3F580()
{
  result = qword_27F7E6370;
  if (!qword_27F7E6370)
  {
    result = swift_getWitnessTable(byte_255E3CBC4, &type metadata for CapsuleView.CapsuleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6370);
  }

  return result;
}

unint64_t sub_255D3F5D8()
{
  result = qword_27F7E6378;
  if (!qword_27F7E6378)
  {
    result = swift_getWitnessTable(byte_255E3CAAC, &type metadata for BasicShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6378);
  }

  return result;
}

unint64_t sub_255D3F630()
{
  result = qword_27F7E6380;
  if (!qword_27F7E6380)
  {
    result = swift_getWitnessTable(byte_255E3CAD4, &type metadata for BasicShapeCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6380);
  }

  return result;
}

unint64_t sub_255D3F688()
{
  result = qword_27F7E6388;
  if (!qword_27F7E6388)
  {
    result = swift_getWitnessTable(byte_255E3C9BC, &type metadata for RoundedRectangleView.RoundedRectangleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6388);
  }

  return result;
}

unint64_t sub_255D3F6E0()
{
  result = qword_27F7E6390;
  if (!qword_27F7E6390)
  {
    result = swift_getWitnessTable(byte_255E3C9E4, &type metadata for RoundedRectangleView.RoundedRectangleCodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6390);
  }

  return result;
}

unint64_t sub_255D3F734(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 3)
  {
    return 3;
  }

  else
  {
    return v2;
  }
}

void *sub_255D3F810(uint64_t a1, uint64_t a2)
{
  v8 = sub_255E39248();
  MEMORY[0x28223BE20](v8);
  (*(*(a2 - 8) + 16))(&v11 - v9, a1, a2);
  swift_storeEnumTagMultiPayload();
  return sub_255E39258();
}

void *sub_255D3F908(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v8 = sub_255E39248();
  MEMORY[0x28223BE20](v8);
  (*(*(a3 - 8) + 16))(&v11 - v9, a1, a3);
  swift_storeEnumTagMultiPayload();
  return sub_255E39258();
}

uint64_t sub_255D3FA00@<X0>(void (*a1)(char *, uint64_t)@<X0>, int a2@<W1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  LODWORD(v325) = a2;
  v328 = a1;
  v332 = a5;
  v7 = sub_255E38B68();
  v289 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v288 = &v275 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_255D42A04(&qword_27F7E63A0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  v393 = a3;
  v394 = v7;
  v349 = v7;
  v395 = a4;
  v396 = v9;
  v350 = v9;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v316 = *(OpaqueTypeMetadata2 - 8);
  v11 = MEMORY[0x28223BE20](OpaqueTypeMetadata2);
  v315 = &v275 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v304 = &v275 - v13;
  v14 = sub_255E39508();
  v287 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v286 = &v275 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_255D42A04(&qword_27F7E63A8, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  v393 = a3;
  v394 = v14;
  v348 = v14;
  v395 = a4;
  v396 = v16;
  v347 = v16;
  v17 = swift_getOpaqueTypeMetadata2();
  v314 = *(v17 - 8);
  v18 = MEMORY[0x28223BE20](v17);
  v302 = &v275 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v301 = &v275 - v20;
  v21 = sub_255E38E48();
  v22 = sub_255D42A04(&qword_27F7E63B0, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  v393 = a3;
  v394 = v21;
  v395 = a4;
  v396 = v22;
  v345 = v22;
  v23 = swift_getOpaqueTypeMetadata2();
  v317 = v17;
  v24 = sub_255E39268();
  v300 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v299 = &v275 - v25;
  v346 = v26;
  v322 = OpaqueTypeMetadata2;
  v351 = sub_255E39268();
  v318 = *(v351 - 8);
  MEMORY[0x28223BE20](v351);
  v323 = &v275 - v27;
  v344 = swift_checkMetadataState();
  v285 = *(v344 - 8);
  v28 = MEMORY[0x28223BE20](v344);
  v284 = &v275 - v29;
  v303 = v23;
  v312 = *(v23 - 8);
  v30 = MEMORY[0x28223BE20](v28);
  v298 = &v275 - ((v31 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v30);
  v297 = &v275 - v32;
  v33 = sub_255E39388();
  v283 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v282 = &v275 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = sub_255D42A04(&qword_27F7E63B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  v393 = a3;
  v394 = v33;
  v343 = v33;
  v395 = a4;
  v396 = v35;
  v342 = v35;
  v36 = swift_getOpaqueTypeMetadata2();
  v310 = *(v36 - 8);
  v37 = MEMORY[0x28223BE20](v36);
  v294 = &v275 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v37);
  v293 = &v275 - v39;
  v40 = sub_255E38BB8();
  v41 = sub_255D42A04(&qword_27F7E63C0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  v393 = a3;
  v394 = v40;
  v395 = a4;
  v396 = v41;
  v340 = v41;
  v42 = swift_getOpaqueTypeMetadata2();
  v313 = v36;
  v43 = sub_255E39268();
  v296 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v295 = &v275 - v44;
  v339 = swift_checkMetadataState();
  v281 = *(v339 - 8);
  v45 = MEMORY[0x28223BE20](v339);
  v306 = &v275 - v46;
  v311 = v42;
  v309 = *(v42 - 8);
  v47 = MEMORY[0x28223BE20](v45);
  v320 = &v275 - ((v48 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v47);
  v291 = &v275 - v49;
  v50 = sub_255E39588();
  v280 = *(v50 - 8);
  MEMORY[0x28223BE20](v50);
  v305 = &v275 - ((v51 + 15) & 0xFFFFFFFFFFFFFFF0);
  v52 = sub_255D42A04(&qword_27F7E63C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  v393 = a3;
  v394 = v50;
  v337 = v52;
  v338 = v50;
  v395 = a4;
  v396 = v52;
  v53 = swift_getOpaqueTypeMetadata2();
  v308 = *(v53 - 8);
  v54 = MEMORY[0x28223BE20](v53);
  v319 = &v275 - ((v55 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v54);
  v290 = &v275 - v56;
  v57 = sub_255E390C8();
  v58 = sub_255D42A04(&qword_27F7E63D0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  v333 = a3;
  v393 = a3;
  v394 = v57;
  v324 = a4;
  v395 = a4;
  v396 = v58;
  v335 = v58;
  v59 = swift_getOpaqueTypeMetadata2();
  v60 = sub_255E39268();
  v292 = *(v60 - 8);
  MEMORY[0x28223BE20](v60);
  v62 = &v275 - v61;
  v336 = v63;
  v341 = v43;
  v64 = sub_255E39268();
  v321 = *(v64 - 8);
  MEMORY[0x28223BE20](v64);
  v329 = (&v275 - v65);
  v334 = swift_checkMetadataState();
  v66 = *(v334 - 8);
  v67 = MEMORY[0x28223BE20](v334);
  v69 = &v275 - v68;
  v307 = *(v59 - 8);
  v70 = MEMORY[0x28223BE20](v67);
  v72 = &v275 - ((v71 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v70);
  v74 = &v275 - v73;
  v331 = v64;
  v75 = sub_255E39268();
  v76 = MEMORY[0x28223BE20](v75);
  v78 = &v275 - v77;
  v79 = v325;
  v326 = v80;
  v327 = v76;
  v330 = v78;
  if (v325 <= 2u)
  {
    v110 = v66;
    v277 = v74;
    v278 = v59;
    v325 = v62;
    v112 = v319;
    v111 = v320;
    v279 = v53;
    if (v79)
    {
      if (v79 == 1)
      {
        v113 = v305;
        sub_255E39578();
        v114 = v112;
        v82 = v333;
        v116 = v337;
        v115 = v338;
        v81 = v324;
        sub_255E398B8();
        (*(v280 + 8))(v113, v115);
        v393 = v82;
        v394 = v115;
        v395 = v81;
        v396 = v116;
        OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
        v118 = v279;
        sub_255D4F130();
        v119 = *(v308 + 8);
        v308 += 8;
        v328 = v119;
        v119(v114, v118);
        sub_255D4F130();
        v393 = v82;
        v394 = v334;
        v395 = v81;
        v396 = v335;
        v120 = swift_getOpaqueTypeConformance2();
        v121 = v325;
        sub_255D3F908(v114, v278, v118);
        v361[0] = v120;
        v361[1] = OpaqueTypeConformance2;
        v122 = MEMORY[0x277CE0340];
        v123 = v336;
        WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v336, v361);
        v393 = v82;
        v394 = v339;
        v395 = v81;
        v396 = v340;
        v125 = swift_getOpaqueTypeConformance2();
        v393 = v82;
        v394 = v343;
        v395 = v81;
        v396 = v342;
        v126 = swift_getOpaqueTypeConformance2();
        v360[0] = v125;
        v360[1] = v126;
        v127 = swift_getWitnessTable(v122, v341, v360);
        sub_255D3F810(v121, v123);
        (*(v292 + 8))(v121, v123);
        v359[0] = WitnessTable;
        v359[1] = v127;
        v128 = v331;
        swift_getWitnessTable(v122, v331, v359);
        v393 = v82;
        v394 = v344;
        v395 = v81;
        v396 = v345;
        v129 = swift_getOpaqueTypeConformance2();
        v393 = v82;
        v394 = v348;
        v395 = v81;
        v396 = v347;
        v130 = swift_getOpaqueTypeConformance2();
        v358[0] = v129;
        v358[1] = v130;
        v131 = swift_getWitnessTable(v122, v346, v358);
        v393 = v82;
        v394 = v349;
        v395 = v81;
        v396 = v350;
        v132 = swift_getOpaqueTypeConformance2();
        v357[0] = v131;
        v357[1] = v132;
        swift_getWitnessTable(v122, v351, v357);
        v133 = v329;
        v106 = v330;
        sub_255D3F810(v329, v128);
        v107 = v128;
        (*(v321 + 8))(v133, v128);
        v134 = v279;
        v135 = v328;
        v328(v319, v279);
        v135(v290, v134);
      }

      else
      {
        v188 = v306;
        sub_255E38BA8();
        v189 = v111;
        v190 = v333;
        v191 = v339;
        v81 = v324;
        v192 = v340;
        sub_255E398B8();
        (*(v281 + 8))(v188, v191);
        v393 = v190;
        v394 = v191;
        v395 = v81;
        v396 = v192;
        v193 = swift_getOpaqueTypeConformance2();
        v82 = v190;
        v194 = v311;
        sub_255D4F130();
        v195 = *(v309 + 8);
        v309 += 8;
        v328 = v195;
        v195(v189, v194);
        v196 = v194;
        sub_255D4F130();
        v393 = v82;
        v394 = v343;
        v395 = v81;
        v396 = v342;
        v197 = swift_getOpaqueTypeConformance2();
        v198 = v295;
        sub_255D3F810(v189, v196);
        v393 = v82;
        v394 = v334;
        v395 = v81;
        v396 = v335;
        v199 = swift_getOpaqueTypeConformance2();
        v393 = v82;
        v394 = v338;
        v395 = v81;
        v396 = v337;
        v200 = swift_getOpaqueTypeConformance2();
        v366[0] = v199;
        v366[1] = v200;
        v201 = MEMORY[0x277CE0340];
        v202 = v336;
        v203 = swift_getWitnessTable(MEMORY[0x277CE0340], v336, v366);
        v365[0] = v193;
        v365[1] = v197;
        v204 = v341;
        v205 = swift_getWitnessTable(v201, v341, v365);
        sub_255D3F908(v198, v202, v204);
        (*(v296 + 8))(v198, v204);
        v364[0] = v203;
        v364[1] = v205;
        v206 = v331;
        swift_getWitnessTable(v201, v331, v364);
        v393 = v82;
        v394 = v344;
        v395 = v81;
        v396 = v345;
        v207 = swift_getOpaqueTypeConformance2();
        v393 = v82;
        v394 = v348;
        v395 = v81;
        v396 = v347;
        v208 = swift_getOpaqueTypeConformance2();
        v363[0] = v207;
        v363[1] = v208;
        v209 = swift_getWitnessTable(v201, v346, v363);
        v393 = v82;
        v394 = v349;
        v395 = v81;
        v396 = v350;
        v210 = swift_getOpaqueTypeConformance2();
        v362[0] = v209;
        v362[1] = v210;
        swift_getWitnessTable(v201, v351, v362);
        v211 = v329;
        v106 = v330;
        sub_255D3F810(v329, v206);
        v107 = v206;
        (*(v321 + 8))(v211, v206);
        v212 = v311;
        v213 = v328;
        v328(v320, v311);
        v213(v291, v212);
      }
    }

    else
    {
      sub_255E390B8();
      v162 = v72;
      v163 = v334;
      v164 = v333;
      v81 = v324;
      v165 = v307;
      v166 = v335;
      sub_255E398B8();
      (*(v110 + 8))(v69, v163);
      v393 = v164;
      v394 = v163;
      v167 = v164;
      v395 = v81;
      v396 = v166;
      v168 = swift_getOpaqueTypeConformance2();
      v169 = v278;
      sub_255D4F130();
      v170 = *(v165 + 8);
      v307 = v165 + 8;
      v328 = v170;
      v170(v162, v169);
      v276 = v162;
      v171 = v169;
      sub_255D4F130();
      v393 = v164;
      v394 = v338;
      v395 = v81;
      v396 = v337;
      v172 = swift_getOpaqueTypeConformance2();
      v173 = v325;
      sub_255D3F810(v162, v171);
      v356[0] = v168;
      v356[1] = v172;
      v174 = MEMORY[0x277CE0340];
      v175 = v336;
      v176 = swift_getWitnessTable(MEMORY[0x277CE0340], v336, v356);
      v393 = v167;
      v394 = v339;
      v395 = v81;
      v396 = v340;
      v177 = swift_getOpaqueTypeConformance2();
      v393 = v167;
      v394 = v343;
      v395 = v81;
      v396 = v342;
      v178 = swift_getOpaqueTypeConformance2();
      v355[0] = v177;
      v355[1] = v178;
      v179 = swift_getWitnessTable(v174, v341, v355);
      v180 = v329;
      sub_255D3F810(v173, v175);
      (*(v292 + 8))(v173, v175);
      v354[0] = v176;
      v354[1] = v179;
      v181 = v331;
      v325 = swift_getWitnessTable(v174, v331, v354);
      v82 = v333;
      v393 = v333;
      v394 = v344;
      v395 = v81;
      v396 = v345;
      v182 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v348;
      v395 = v81;
      v396 = v347;
      v183 = swift_getOpaqueTypeConformance2();
      v353[0] = v182;
      v353[1] = v183;
      v184 = swift_getWitnessTable(v174, v346, v353);
      v393 = v82;
      v394 = v349;
      v395 = v81;
      v396 = v350;
      v185 = swift_getOpaqueTypeConformance2();
      v352[0] = v184;
      v352[1] = v185;
      swift_getWitnessTable(v174, v351, v352);
      v106 = v330;
      sub_255D3F810(v180, v181);
      v107 = v181;
      (*(v321 + 8))(v180, v181);
      v186 = v278;
      v187 = v328;
      v328(v276, v278);
      v187(v277, v186);
    }
  }

  else if (v325 > 4u)
  {
    v136 = v350;
    v137 = v348;
    v138 = v345;
    v81 = v324;
    v82 = v333;
    if (v325 == 5)
    {
      v139 = v288;
      sub_255E38B58();
      v140 = v315;
      v141 = v349;
      sub_255E398B8();
      (*(v289 + 8))(v139, v141);
      v393 = v82;
      v394 = v141;
      v395 = v81;
      v396 = v136;
      v142 = swift_getOpaqueTypeConformance2();
      v143 = v140;
      v144 = v322;
      v145 = v142;
      sub_255D4F130();
      v329 = *(v316 + 8);
      v316 += 8;
      (v329)(v143, v144);
      sub_255D4F130();
      v393 = v82;
      v394 = v344;
      v395 = v81;
      v396 = v138;
      v146 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v137;
      v395 = v81;
      v396 = v347;
      v147 = swift_getOpaqueTypeConformance2();
      v392[0] = v146;
      v392[1] = v147;
      v148 = MEMORY[0x277CE0340];
      v149 = v346;
      v328 = swift_getWitnessTable(MEMORY[0x277CE0340], v346, v392);
      sub_255D3F908(v315, v149, v144);
      v393 = v82;
      v394 = v334;
      v395 = v81;
      v396 = v335;
      v150 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v338;
      v395 = v81;
      v396 = v337;
      v151 = swift_getOpaqueTypeConformance2();
      v391[0] = v150;
      v391[1] = v151;
      v152 = swift_getWitnessTable(v148, v336, v391);
      v393 = v82;
      v394 = v339;
      v395 = v81;
      v396 = v340;
      v153 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v343;
      v395 = v81;
      v396 = v342;
      v154 = swift_getOpaqueTypeConformance2();
      v390[0] = v153;
      v390[1] = v154;
      v155 = swift_getWitnessTable(v148, v341, v390);
      v389[0] = v152;
      v389[1] = v155;
      v156 = v331;
      swift_getWitnessTable(v148, v331, v389);
      v388[0] = v328;
      v388[1] = v145;
      v157 = v148;
      v158 = v351;
      swift_getWitnessTable(v157, v351, v388);
      v106 = v330;
      v159 = v323;
      v107 = v156;
      sub_255D3F908(v323, v156, v158);
      (*(v318 + 8))(v159, v158);
      v160 = v322;
      v161 = v329;
      (v329)(v315, v322);
      v161(v304, v160);
    }

    else
    {
      v252 = v286;
      sub_255E394F8();
      v253 = v302;
      v254 = v347;
      sub_255E398B8();
      (*(v287 + 8))(v252, v137);
      v393 = v82;
      v394 = v137;
      v395 = v81;
      v396 = v254;
      v255 = swift_getOpaqueTypeConformance2();
      v256 = v317;
      sub_255D4F130();
      v329 = *(v314 + 8);
      v314 += 8;
      (v329)(v253, v256);
      v257 = v256;
      sub_255D4F130();
      v393 = v82;
      v394 = v344;
      v395 = v81;
      v396 = v138;
      v258 = swift_getOpaqueTypeConformance2();
      v259 = v299;
      sub_255D3F908(v253, v303, v257);
      v381[0] = v258;
      v381[1] = v255;
      v260 = MEMORY[0x277CE0340];
      v261 = v346;
      v328 = swift_getWitnessTable(MEMORY[0x277CE0340], v346, v381);
      v393 = v82;
      v394 = v349;
      v395 = v81;
      v396 = v350;
      v262 = swift_getOpaqueTypeConformance2();
      sub_255D3F810(v259, v261);
      (*(v300 + 8))(v259, v261);
      v393 = v82;
      v394 = v334;
      v395 = v81;
      v396 = v335;
      v263 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v338;
      v395 = v81;
      v396 = v337;
      v264 = swift_getOpaqueTypeConformance2();
      v380[0] = v263;
      v380[1] = v264;
      v265 = swift_getWitnessTable(v260, v336, v380);
      v393 = v82;
      v394 = v339;
      v395 = v81;
      v396 = v340;
      v266 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v343;
      v395 = v81;
      v396 = v342;
      v267 = swift_getOpaqueTypeConformance2();
      v379[0] = v266;
      v379[1] = v267;
      v268 = swift_getWitnessTable(v260, v341, v379);
      v378[0] = v265;
      v378[1] = v268;
      v269 = v331;
      swift_getWitnessTable(v260, v331, v378);
      v377[0] = v328;
      v377[1] = v262;
      v270 = v260;
      v271 = v351;
      swift_getWitnessTable(v270, v351, v377);
      v106 = v330;
      v272 = v323;
      v107 = v269;
      sub_255D3F908(v323, v269, v271);
      (*(v318 + 8))(v272, v271);
      v273 = v317;
      v274 = v329;
      (v329)(v302, v317);
      v274(v301, v273);
    }
  }

  else
  {
    v81 = v324;
    v82 = v333;
    if (v325 == 3)
    {
      v83 = v282;
      sub_255E39378();
      v84 = v294;
      v85 = v343;
      v86 = v342;
      sub_255E398B8();
      (*(v283 + 8))(v83, v85);
      v393 = v82;
      v394 = v85;
      v395 = v81;
      v396 = v86;
      v87 = swift_getOpaqueTypeConformance2();
      v88 = v313;
      sub_255D4F130();
      v89 = *(v310 + 8);
      v310 += 8;
      v328 = v89;
      v89(v84, v88);
      v90 = v88;
      sub_255D4F130();
      v393 = v82;
      v394 = v339;
      v395 = v81;
      v396 = v340;
      v91 = swift_getOpaqueTypeConformance2();
      v92 = v295;
      sub_255D3F908(v84, v311, v90);
      v393 = v82;
      v394 = v334;
      v395 = v81;
      v396 = v335;
      v93 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v338;
      v395 = v81;
      v396 = v337;
      v94 = swift_getOpaqueTypeConformance2();
      v371[0] = v93;
      v371[1] = v94;
      v95 = MEMORY[0x277CE0340];
      v96 = v336;
      v97 = swift_getWitnessTable(MEMORY[0x277CE0340], v336, v371);
      v370[0] = v91;
      v370[1] = v87;
      v98 = v341;
      v99 = swift_getWitnessTable(v95, v341, v370);
      sub_255D3F908(v92, v96, v98);
      (*(v296 + 8))(v92, v98);
      v369[0] = v97;
      v369[1] = v99;
      v100 = v331;
      swift_getWitnessTable(v95, v331, v369);
      v393 = v82;
      v394 = v344;
      v395 = v81;
      v396 = v345;
      v101 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v348;
      v395 = v81;
      v396 = v347;
      v102 = swift_getOpaqueTypeConformance2();
      v368[0] = v101;
      v368[1] = v102;
      v103 = swift_getWitnessTable(v95, v346, v368);
      v393 = v82;
      v394 = v349;
      v395 = v81;
      v396 = v350;
      v104 = swift_getOpaqueTypeConformance2();
      v367[0] = v103;
      v367[1] = v104;
      swift_getWitnessTable(v95, v351, v367);
      v105 = v329;
      v106 = v330;
      sub_255D3F810(v329, v100);
      v107 = v100;
      (*(v321 + 8))(v105, v100);
      v108 = v313;
      v109 = v328;
      v328(v294, v313);
      v109(v293, v108);
    }

    else
    {
      v229 = v284;
      sub_255E38E38();
      v230 = v298;
      v231 = v344;
      v232 = v345;
      sub_255E398B8();
      (*(v285 + 8))(v229, v231);
      v393 = v82;
      v394 = v231;
      v395 = v81;
      v396 = v232;
      v233 = swift_getOpaqueTypeConformance2();
      v234 = v303;
      sub_255D4F130();
      v235 = *(v312 + 8);
      v312 += 8;
      v329 = v235;
      (v235)(v230, v234);
      sub_255D4F130();
      v393 = v82;
      v394 = v348;
      v395 = v81;
      v396 = v347;
      v236 = swift_getOpaqueTypeConformance2();
      v237 = v299;
      sub_255D3F810(v230, v234);
      v376[0] = v233;
      v376[1] = v236;
      v238 = MEMORY[0x277CE0340];
      v239 = v346;
      v240 = swift_getWitnessTable(MEMORY[0x277CE0340], v346, v376);
      v393 = v82;
      v394 = v349;
      v395 = v81;
      v396 = v350;
      v328 = swift_getOpaqueTypeConformance2();
      sub_255D3F810(v237, v239);
      (*(v300 + 8))(v237, v239);
      v393 = v82;
      v394 = v334;
      v395 = v81;
      v396 = v335;
      v241 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v338;
      v395 = v81;
      v396 = v337;
      v242 = swift_getOpaqueTypeConformance2();
      v375[0] = v241;
      v375[1] = v242;
      v243 = swift_getWitnessTable(v238, v336, v375);
      v393 = v82;
      v394 = v339;
      v395 = v81;
      v396 = v340;
      v244 = swift_getOpaqueTypeConformance2();
      v393 = v82;
      v394 = v343;
      v395 = v81;
      v396 = v342;
      v245 = swift_getOpaqueTypeConformance2();
      v374[0] = v244;
      v374[1] = v245;
      v246 = swift_getWitnessTable(v238, v341, v374);
      v373[0] = v243;
      v373[1] = v246;
      v247 = v331;
      swift_getWitnessTable(v238, v331, v373);
      v372[0] = v240;
      v372[1] = v328;
      v248 = v238;
      v249 = v351;
      swift_getWitnessTable(v248, v351, v372);
      v106 = v330;
      v250 = v323;
      v107 = v247;
      sub_255D3F908(v323, v247, v249);
      (*(v318 + 8))(v250, v249);
      v251 = v329;
      (v329)(v298, v234);
      v251(v297, v234);
    }
  }

  v393 = v82;
  v394 = v334;
  v395 = v81;
  v396 = v335;
  v214 = swift_getOpaqueTypeConformance2();
  v393 = v82;
  v394 = v338;
  v395 = v81;
  v396 = v337;
  v215 = swift_getOpaqueTypeConformance2();
  v387[0] = v214;
  v387[1] = v215;
  v216 = MEMORY[0x277CE0340];
  v217 = swift_getWitnessTable(MEMORY[0x277CE0340], v336, v387);
  v393 = v82;
  v394 = v339;
  v395 = v81;
  v396 = v340;
  v218 = swift_getOpaqueTypeConformance2();
  v393 = v82;
  v394 = v343;
  v395 = v81;
  v396 = v342;
  v219 = swift_getOpaqueTypeConformance2();
  v386[0] = v218;
  v386[1] = v219;
  v220 = swift_getWitnessTable(v216, v341, v386);
  v385[0] = v217;
  v385[1] = v220;
  v221 = swift_getWitnessTable(v216, v107, v385);
  v393 = v82;
  v394 = v344;
  v395 = v81;
  v396 = v345;
  v222 = swift_getOpaqueTypeConformance2();
  v393 = v82;
  v394 = v348;
  v395 = v81;
  v396 = v347;
  v223 = swift_getOpaqueTypeConformance2();
  v384[0] = v222;
  v384[1] = v223;
  v224 = swift_getWitnessTable(v216, v346, v384);
  v393 = v82;
  v394 = v349;
  v395 = v81;
  v396 = v350;
  v225 = swift_getOpaqueTypeConformance2();
  v383[0] = v224;
  v383[1] = v225;
  v226 = swift_getWitnessTable(v216, v351, v383);
  v382[0] = v221;
  v382[1] = v226;
  v227 = v327;
  swift_getWitnessTable(v216, v327, v382);
  sub_255D4F130();
  return (*(v326 + 8))(v106, v227);
}

uint64_t sub_255D41F10(uint64_t a1)
{
  sub_255E3A578();
}

unint64_t sub_255D42038@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D42F78(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_255D42068(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xE800000000000000;
  v4 = 0x6465726564726F62;
  v5 = 0xE500000000000000;
  v6 = 0x7373616C67;
  if (v2 != 5)
  {
    v6 = 0x6F72507373616C67;
    v5 = 0xEE00746E656E696DLL;
  }

  v7 = 0xEA00000000007373;
  v8 = 0x656C726564726F62;
  if (v2 != 3)
  {
    v8 = 0x6974616D6F747561;
    v7 = 0xE900000000000063;
  }

  if (*v1 <= 4u)
  {
    v6 = v8;
    v5 = v7;
  }

  v9 = 0x8000000255E653D0;
  v10 = 0xD000000000000011;
  if (v2 != 1)
  {
    v10 = 0x6E69616C70;
    v9 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v10;
    v3 = v9;
  }

  v13 = __OFSUB__(v2, 2);
  v11 = v2 == 2;
  v12 = v2 - 2 < 0;
  if (*v1 <= 2u)
  {
    v14 = v4;
  }

  else
  {
    v14 = v6;
  }

  if (!(v12 ^ v13 | v11))
  {
    v3 = v5;
  }

  *a1 = v14;
  a1[1] = v3;
}

uint64_t sub_255D42208()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D4226C(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D422B8@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D42338@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D42390(uint64_t a1)
{
  v2 = sub_255D42BBC();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D423CC(uint64_t a1)
{
  v2 = sub_255D42BBC();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D42408@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v45 = a2;
  v4 = a1[3];
  v3 = a1[4];
  v34 = *v2;
  v33 = __swift_project_boxed_opaque_existential_1(a1, v4);
  sub_255E390C8();
  sub_255D42A04(&qword_27F7E63D0, MEMORY[0x277CDDEE0], MEMORY[0x277CDDED0]);
  swift_getOpaqueTypeMetadata2();
  v32 = sub_255E39588();
  v31 = sub_255D42A04(&qword_27F7E63C8, MEMORY[0x277CDE400], MEMORY[0x277CDE3E8]);
  swift_getOpaqueTypeMetadata2();
  v5 = sub_255E39268();
  v30 = sub_255E38BB8();
  v29 = sub_255D42A04(&qword_27F7E63C0, MEMORY[0x277CDDB18], MEMORY[0x277CDDB08]);
  swift_getOpaqueTypeMetadata2();
  v28 = sub_255E39388();
  v27 = sub_255D42A04(&qword_27F7E63B8, MEMORY[0x277CDE0B8], MEMORY[0x277CDE0A0]);
  swift_getOpaqueTypeMetadata2();
  v26 = sub_255E39268();
  v6 = sub_255E39268();
  v25 = sub_255E38E48();
  v24 = sub_255D42A04(&qword_27F7E63B0, MEMORY[0x277CDDE40], MEMORY[0x277CDDE38]);
  swift_getOpaqueTypeMetadata2();
  v23 = sub_255E39508();
  v22 = sub_255D42A04(&qword_27F7E63A8, MEMORY[0x277CDE340], MEMORY[0x277CDE338]);
  swift_getOpaqueTypeMetadata2();
  v19 = sub_255E39268();
  v20 = sub_255E38B68();
  v7 = sub_255D42A04(&qword_27F7E63A0, MEMORY[0x277CDDA98], MEMORY[0x277CDDA90]);
  swift_getOpaqueTypeMetadata2();
  v8 = sub_255E39268();
  v21 = sub_255E39268();
  v45[3] = v21;
  v41 = v4;
  v42 = v32;
  v43 = v3;
  v44 = v31;
  v40[0] = swift_getOpaqueTypeConformance2();
  v40[1] = swift_getOpaqueTypeConformance2();
  v9 = MEMORY[0x277CE0340];
  WitnessTable = swift_getWitnessTable(MEMORY[0x277CE0340], v5, v40);
  v41 = v4;
  v42 = v30;
  v43 = v3;
  v44 = v29;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v41 = v4;
  v42 = v28;
  v43 = v3;
  v44 = v27;
  v39[0] = OpaqueTypeConformance2;
  v39[1] = swift_getOpaqueTypeConformance2();
  v38[0] = WitnessTable;
  v38[1] = swift_getWitnessTable(v9, v26, v39);
  v12 = swift_getWitnessTable(v9, v6, v38);
  v41 = v4;
  v42 = v25;
  v43 = v3;
  v44 = v24;
  v13 = swift_getOpaqueTypeConformance2();
  v41 = v4;
  v42 = v23;
  v43 = v3;
  v44 = v22;
  v37[0] = v13;
  v37[1] = swift_getOpaqueTypeConformance2();
  v14 = swift_getWitnessTable(v9, v19, v37);
  v41 = v4;
  v42 = v20;
  v43 = v3;
  v44 = v7;
  v36[0] = v14;
  v36[1] = swift_getOpaqueTypeConformance2();
  v35[0] = v12;
  v35[1] = swift_getWitnessTable(v9, v8, v36);
  v15 = swift_getWitnessTable(v9, v21, v35);
  v16 = v45;
  v45[4] = v15;
  boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(v16);
  return sub_255D3FA00(v33, v34, v4, v3, boxed_opaque_existential_1);
}

void *sub_255D4295C@<X0>(_BYTE *a1@<X8>, void *a2@<X0>)
{
  result = sub_255D42A4C(a2);
  if (!v2)
  {
    *a1 = result;
  }

  return result;
}

unint64_t sub_255D42988(uint64_t a1)
{
  result = sub_255D429B0();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D429B0()
{
  result = qword_27F7E6398;
  if (!qword_27F7E6398)
  {
    result = swift_getWitnessTable(aU_24, &type metadata for ButtonStyleModifier, v0, v1);
    atomic_store(result, &qword_27F7E6398);
  }

  return result;
}

uint64_t sub_255D42A04(unint64_t *a1, uint64_t (*a2)(uint64_t), const char *a3)
{
  result = *a1;
  if (!result)
  {
    v6 = a2(255);
    result = swift_getWitnessTable(a3, v6);
    atomic_store(result, a1);
  }

  return result;
}

void *sub_255D42A4C(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E63D8, &qword_255E3CDF8);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  v7 = __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D42BBC();
  sub_255E3AE28();
  if (v1)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  else
  {
    sub_255D42C10();
    sub_255E3ABC8();
    (*(v4 + 8))(v6, v3);
    v7 = v9[15];
    __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  return v7;
}

unint64_t sub_255D42BBC()
{
  result = qword_27F7E63E0;
  if (!qword_27F7E63E0)
  {
    result = swift_getWitnessTable(asc_255E3CFFC, &type metadata for ButtonStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E63E0);
  }

  return result;
}

unint64_t sub_255D42C10()
{
  result = qword_27F7E63E8;
  if (!qword_27F7E63E8)
  {
    result = swift_getWitnessTable(a5_14, &type metadata for ButtonStyleType, v0, v1);
    atomic_store(result, &qword_27F7E63E8);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for EdgeSetString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xFA)
  {
    goto LABEL_17;
  }

  if (a2 + 6 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 6) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 6;
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

      return (*a1 | (v4 << 8)) - 6;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 6;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 7;
  v8 = v6 - 7;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for EdgeSetString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 6 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 6) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xFA)
  {
    v4 = 0;
  }

  if (a2 > 0xF9)
  {
    v5 = ((a2 - 250) >> 8) + 1;
    *result = a2 + 6;
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
    *result = a2 + 6;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D42DC8()
{
  result = qword_27F7E63F0;
  if (!qword_27F7E63F0)
  {
    result = swift_getWitnessTable(asc_255E3CEBC, &type metadata for ButtonStyleType, v0, v1);
    atomic_store(result, &qword_27F7E63F0);
  }

  return result;
}

unint64_t sub_255D42E20()
{
  result = qword_27F7E63F8;
  if (!qword_27F7E63F8)
  {
    result = swift_getWitnessTable(byte_255E3CFAC, &type metadata for ButtonStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E63F8);
  }

  return result;
}

unint64_t sub_255D42E78()
{
  result = qword_27F7E6400;
  if (!qword_27F7E6400)
  {
    result = swift_getWitnessTable(byte_255E3CEE4, &type metadata for ButtonStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6400);
  }

  return result;
}

unint64_t sub_255D42ED0()
{
  result = qword_27F7E6408;
  if (!qword_27F7E6408)
  {
    result = swift_getWitnessTable(byte_255E3CF0C, &type metadata for ButtonStyleModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6408);
  }

  return result;
}

unint64_t sub_255D42F24()
{
  result = qword_27F7E6410;
  if (!qword_27F7E6410)
  {
    result = swift_getWitnessTable(asc_255E3CE44, &type metadata for ButtonStyleType, v0, v1);
    atomic_store(result, &qword_27F7E6410);
  }

  return result;
}

unint64_t sub_255D42F78(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

__n128 __swift_memcpy41_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  *(a1 + 25) = *(a2 + 25);
  *a1 = result;
  *(a1 + 16) = v3;
  return result;
}

uint64_t sub_255D42FE0(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 41))
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

uint64_t sub_255D43028(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 41) = 1;
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

    *(result + 41) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

__n128 __swift_memcpy25_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 9) = *(a2 + 9);
  *a1 = result;
  return result;
}

uint64_t sub_255D43098(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7D && *(a1 + 25))
  {
    return (*a1 + 125);
  }

  v3 = (*(a1 + 24) >> 6) & 0xFFFFFF83 | (4 * ((*(a1 + 24) >> 1) & 0x1F));
  v4 = v3 ^ 0x7F;
  v5 = 126 - v3;
  if (v4 >= 0x7D)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_255D430F4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7C)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 125;
    if (a3 >= 0x7D)
    {
      *(result + 25) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7D)
    {
      *(result + 25) = 0;
    }

    if (a2)
    {
      *result = 0;
      *(result + 8) = 0;
      *(result + 16) = 0;
      *(result + 24) = ((a2 ^ 0x7F) >> 1) & 0xFE | ((a2 ^ 0x7F) << 6);
    }
  }

  return result;
}

uint64_t sub_255D43160@<X0>(void *a1@<X0>, unint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  v24 = sub_255E38D98();
  v8 = *(v24 - 8);
  MEMORY[0x28223BE20](v24);
  v10 = &v20 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = *(v3 + 24);
  if (v11 <= 0xFD)
  {
    v12 = *(v3 + 8);
    v13 = *(v3 + 16);
    v20 = *v3;
    v21 = v12;
    v22 = v13;
    v23 = v11;
    sub_255D3E5A8(v20, v12, v13, v11);
    StringResolvable.resolved(with:)(a2);
    if (v4)
    {
    }

    sub_255D38060(v20, v21, v22, v23);
  }

  v14 = sub_255E3AB48();

  v15 = a1[3];
  v16 = a1[4];
  __swift_project_boxed_opaque_existential_1(a1, v15);
  if (v14 == 2)
  {
    v17 = 2;
  }

  else
  {
    v17 = v14 == 1;
  }

  v18 = v24;
  (*(v8 + 104))(v10, **(&unk_279812158 + v17), v24);
  v20 = v15;
  v21 = v16;
  a3[3] = swift_getOpaqueTypeMetadata2();
  v20 = v15;
  v21 = v16;
  a3[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a3);
  sub_255E39B58();
  return (*(v8 + 8))(v10, v18);
}

uint64_t sub_255D433AC()
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D43428(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();
  return sub_255E3ADD8();
}

uint64_t sub_255D43480@<X0>(BOOL *a2@<X8>)
{
  v3 = sub_255E3AB48();

  *a2 = v3 != 0;
  return result;
}

uint64_t sub_255D43518@<X0>(BOOL *a3@<X8>)
{
  v4 = sub_255E3AB48();

  *a3 = v4 != 0;
  return result;
}

uint64_t sub_255D43570(uint64_t a1)
{
  v2 = sub_255D448A4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D435AC(uint64_t a1)
{
  v2 = sub_255D448A4();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D435E8@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6460, &qword_255E3D388);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v12 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D448A4();
  sub_255E3AE28();
  if (!v2)
  {
    sub_255D3EA0C();
    sub_255E3ABA8();
    (*(v6 + 8))(v8, v5);
    v9 = v13;
    v10 = v14;
    *a2 = v12;
    *(a2 + 16) = v9;
    *(a2 + 24) = v10;
  }

  return __swift_destroy_boxed_opaque_existential_1Tm(a1);
}

uint64_t sub_255D43798(char a1)
{
  switch(a1)
  {
    case 1:
      result = MEMORY[0x28212E590]();
      break;
    case 2:
      result = MEMORY[0x28212E5E0]();
      break;
    case 3:
      result = MEMORY[0x28212E5D0]();
      break;
    case 4:
      result = MEMORY[0x28212E5C0]();
      break;
    case 5:
      result = MEMORY[0x28212E628]();
      break;
    case 6:
      result = MEMORY[0x28212E588]();
      break;
    case 7:
      result = MEMORY[0x28212E5E8]();
      break;
    case 8:
      result = MEMORY[0x28212E5F0]();
      break;
    case 9:
      result = MEMORY[0x28212E620]();
      break;
    case 10:
      result = MEMORY[0x28212E608]();
      break;
    case 11:
      result = MEMORY[0x28212E5B8]();
      break;
    case 12:
      result = MEMORY[0x28212E610]();
      break;
    default:
      result = MEMORY[0x28212E618]();
      break;
  }

  return result;
}

unint64_t sub_255D437F0(char a1)
{
  result = 0x6974616D6F747561;
  switch(a1)
  {
    case 1:
      result = 0x417972616D697270;
      break;
    case 2:
      result = 0xD000000000000012;
      break;
    case 3:
      result = 0xD000000000000012;
      break;
    case 4:
      result = 0xD000000000000011;
      break;
    case 5:
      result = 0x617069636E697270;
      break;
    case 6:
      result = 0x697461676976616ELL;
      break;
    case 7:
      result = 0xD000000000000014;
      break;
    case 8:
      result = 0xD000000000000015;
      break;
    case 9:
      result = 0x61426D6F74746F62;
      break;
    case 10:
      result = 0x737574617473;
      break;
    case 11:
      result = 0x7261646E6F636573;
      break;
    case 12:
      result = 0x6472616F6279656BLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_255D43980(char *a1, char *a2)
{
  v2 = *a2;
  v3 = sub_255D437F0(*a1);
  v5 = v4;
  if (v3 == sub_255D437F0(v2) && v5 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D43A08()
{
  v1 = *v0;
  sub_255E3AD98();
  sub_255D437F0(v1);
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43A6C(uint64_t a1)
{
  sub_255D437F0(*v1);
  sub_255E3A578();
}

uint64_t sub_255D43AC0(uint64_t a1)
{
  v2 = *v1;
  sub_255E3AD98();
  sub_255D437F0(v2);
  sub_255E3A578();

  return sub_255E3ADD8();
}

unint64_t sub_255D43B20@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_255D4462C(*a1, a1[1]);
  *a2 = result;
  return result;
}

unint64_t sub_255D43B50@<X0>(unint64_t *a1@<X8>)
{
  result = sub_255D437F0(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_255D43C2C(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6E656D6563616C70;
  }

  else
  {
    v3 = 0x746E65746E6F63;
  }

  if (v2)
  {
    v4 = 0xE700000000000000;
  }

  else
  {
    v4 = 0xE900000000000074;
  }

  if (*a2)
  {
    v5 = 0x6E656D6563616C70;
  }

  else
  {
    v5 = 0x746E65746E6F63;
  }

  if (*a2)
  {
    v6 = 0xE900000000000074;
  }

  else
  {
    v6 = 0xE700000000000000;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D43CD8()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43D60(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D43DD4(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D43E58@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D43EB8(uint64_t *a1@<X8>)
{
  v2 = 0x746E65746E6F63;
  if (*v1)
  {
    v2 = 0x6E656D6563616C70;
  }

  v3 = 0xE700000000000000;
  if (*v1)
  {
    v3 = 0xE900000000000074;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D43EFC()
{
  if (*v0)
  {
    return 0x6E656D6563616C70;
  }

  else
  {
    return 0x746E65746E6F63;
  }
}

uint64_t sub_255D43F3C@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D43FA0(uint64_t a1)
{
  v2 = sub_255D44740();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D43FDC(uint64_t a1)
{
  v2 = sub_255D44740();

  return MEMORY[0x2821FE720](a1, v2);
}

uint64_t sub_255D44018@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6440, &qword_255E3D380);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D44740();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v18[63] = 0;
  v16 = &type metadata for ViewContent;
  v17 = sub_255D44794();
  *&v15 = swift_allocObject();
  sub_255D447E8();
  sub_255E3ABC8();
  sub_255D34630(&v15, v18);
  LOBYTE(v15) = 1;
  v9 = sub_255E3ABB8();
  v12 = sub_255D4462C(v9, v11);
  (*(v6 + 8))(v8, v5);
  if (v12 == 13)
  {
    v13 = 0;
  }

  else
  {
    v13 = v12;
  }

  v18[40] = v13;
  sub_255D4483C(v18, a2);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  return sub_255D44874(v18);
}

uint64_t sub_255D44264(uint64_t a1)
{
  v2 = sub_255E39368();
  MEMORY[0x28223BE20](v2 - 8);
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E6430, &qword_255E3D378);
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v9[-v5];
  sub_255D43798(*(a1 + 40));
  v10 = a1;
  sub_255E388B8();
  v7 = sub_255D44680();
  MEMORY[0x259C4D740](v6, v3, v7);
  return (*(v4 + 8))(v6, v3);
}

uint64_t sub_255D443D8@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6428, &qword_255E3D370);
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6430, &qword_255E3D378);
  sub_255D44680();
  swift_getOpaqueTypeConformance2();
  a2[3] = swift_getOpaqueTypeMetadata2();
  a2[4] = swift_getOpaqueTypeConformance2();
  __swift_allocate_boxed_opaque_existential_1(a2);
  return sub_255E39C68();
}

unint64_t sub_255D44534(uint64_t a1)
{
  result = sub_255D4455C();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D4455C()
{
  result = qword_27F7E6418;
  if (!qword_27F7E6418)
  {
    result = swift_getWitnessTable(byte_255E3D310, &type metadata for ToolbarModifier, v0, v1);
    atomic_store(result, &qword_27F7E6418);
  }

  return result;
}

unint64_t sub_255D445B0(uint64_t a1)
{
  result = sub_255D445D8();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_255D445D8()
{
  result = qword_27F7E6420;
  if (!qword_27F7E6420)
  {
    result = swift_getWitnessTable(asc_255E3D2E8, &type metadata for NavigationBarTitleDisplayModeModifier, v0, v1);
    atomic_store(result, &qword_27F7E6420);
  }

  return result;
}

unint64_t sub_255D4462C(uint64_t a1, uint64_t a2)
{
  v2 = sub_255E3AB48();

  if (v2 >= 0xD)
  {
    return 13;
  }

  else
  {
    return v2;
  }
}

unint64_t sub_255D44680()
{
  result = qword_27F7E6438;
  if (!qword_27F7E6438)
  {
    v3 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27F7E6430, &qword_255E3D378);
    result = swift_getWitnessTable(MEMORY[0x277CDD7A8], v3, v0, v1);
    atomic_store(result, &qword_27F7E6438);
  }

  return result;
}

uint64_t sub_255D446E4@<X0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + 16);
  v4 = v3[3];
  v5 = v3[4];
  __swift_project_boxed_opaque_existential_1(v3, v4);
  result = (*(v5 + 24))(v4, v5);
  *a1 = result;
  return result;
}

unint64_t sub_255D44740()
{
  result = qword_27F7E6448;
  if (!qword_27F7E6448)
  {
    result = swift_getWitnessTable(aM_25, &type metadata for ToolbarModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6448);
  }

  return result;
}

unint64_t sub_255D44794()
{
  result = qword_27F7E6450;
  if (!qword_27F7E6450)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewContent, &type metadata for ViewContent, v0, v1);
    atomic_store(result, &qword_27F7E6450);
  }

  return result;
}

unint64_t sub_255D447E8()
{
  result = qword_27F7E6458;
  if (!qword_27F7E6458)
  {
    result = swift_getWitnessTable(protocol conformance descriptor for ViewContent, &type metadata for ViewContent, v0, v1);
    atomic_store(result, &qword_27F7E6458);
  }

  return result;
}

unint64_t sub_255D448A4()
{
  result = qword_27F7E6468;
  if (!qword_27F7E6468)
  {
    result = swift_getWitnessTable(byte_255E3D68C, &type metadata for NavigationBarTitleDisplayModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6468);
  }

  return result;
}

uint64_t getEnumTagSinglePayload for ToolbarItemPlacementString(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF4)
  {
    goto LABEL_17;
  }

  if (a2 + 12 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 12) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 12;
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

      return (*a1 | (v4 << 8)) - 12;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 12;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xD;
  v8 = v6 - 13;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t storeEnumTagSinglePayload for ToolbarItemPlacementString(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 12 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 12) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF4)
  {
    v4 = 0;
  }

  if (a2 > 0xF3)
  {
    v5 = ((a2 - 244) >> 8) + 1;
    *result = a2 + 12;
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
    *result = a2 + 12;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_255D44A6C()
{
  result = qword_27F7E6470;
  if (!qword_27F7E6470)
  {
    result = swift_getWitnessTable(aE_27, &type metadata for ToolbarItemPlacementString, v0, v1);
    atomic_store(result, &qword_27F7E6470);
  }

  return result;
}

unint64_t sub_255D44AC4()
{
  result = qword_27F7E6478;
  if (!qword_27F7E6478)
  {
    result = swift_getWitnessTable(aU_25, &type metadata for ToolbarModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6478);
  }

  return result;
}

unint64_t sub_255D44B1C()
{
  result = qword_27F7E6480;
  if (!qword_27F7E6480)
  {
    result = swift_getWitnessTable(aE_28, &type metadata for NavigationBarTitleDisplayModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6480);
  }

  return result;
}

unint64_t sub_255D44B74()
{
  result = qword_27F7E6488;
  if (!qword_27F7E6488)
  {
    result = swift_getWitnessTable(byte_255E3D59C, &type metadata for NavigationBarTitleDisplayModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6488);
  }

  return result;
}

unint64_t sub_255D44BCC()
{
  result = qword_27F7E6490;
  if (!qword_27F7E6490)
  {
    result = swift_getWitnessTable(byte_255E3D5C4, &type metadata for NavigationBarTitleDisplayModeModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6490);
  }

  return result;
}

unint64_t sub_255D44C24()
{
  result = qword_27F7E6498;
  if (!qword_27F7E6498)
  {
    result = swift_getWitnessTable(byte_255E3D4AC, &type metadata for ToolbarModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E6498);
  }

  return result;
}

unint64_t sub_255D44C7C()
{
  result = qword_27F7E64A0;
  if (!qword_27F7E64A0)
  {
    result = swift_getWitnessTable(byte_255E3D4D4, &type metadata for ToolbarModifier.CodingKeys, v0, v1);
    atomic_store(result, &qword_27F7E64A0);
  }

  return result;
}

unint64_t sub_255D44CD0()
{
  result = qword_27F7E64A8;
  if (!qword_27F7E64A8)
  {
    result = swift_getWitnessTable(byte_255E3D40C, &type metadata for ToolbarItemPlacementString, v0, v1);
    atomic_store(result, &qword_27F7E64A8);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_6LiftUI12SubReferenceOySbGSg(void *a1)
{
  v1 = *a1 >> 57;
  v2 = v1 & 0x38 | *a1 & 7;
  if (v2)
  {
    return 128 - ((v1 >> 6) | (2 * v2));
  }

  else
  {
    return 0;
  }
}

__n128 __swift_memcpy57_8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 41) = *(a2 + 41);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_255D44D84(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 57))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 24);
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

uint64_t sub_255D44DCC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0;
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
      *(result + 24) = -a2;
    }
  }

  return result;
}

uint64_t sub_255D44E30@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64B8, &qword_255E3D938);
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v20 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_255D456E0();
  sub_255E3AE28();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1Tm(a1);
  }

  v24 = a2;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27F7E64C8, &qword_255E3D940);
  LOBYTE(v25) = 0;
  sub_255D45734();
  sub_255E3ABC8();
  v22 = v28;
  v23 = v29;
  v39 = v30;
  v40 = 1;
  sub_255E3ABC8();
  (*(v6 + 8))(v8, v5);
  v9 = *(&v35 + 1);
  v21 = v35;
  v10 = v36;
  v11 = v37;
  v38 = v37;
  v12 = v22;
  v25 = v22;
  v13 = v23;
  *&v26 = v23;
  v14 = v39;
  BYTE8(v26) = v39;
  *v27 = v35;
  *&v27[16] = v36;
  v27[24] = v37;
  v15 = v22;
  v16 = v26;
  v17 = v35;
  v18 = v24;
  *(v24 + 41) = *&v27[9];
  v18[1] = v16;
  v18[2] = v17;
  *v18 = v15;
  sub_255D45798(&v25, &v28);
  __swift_destroy_boxed_opaque_existential_1Tm(a1);
  v28 = v12;
  v29 = v13;
  v30 = v14;
  v31 = v21;
  v32 = v9;
  v33 = v10;
  v34 = v11;
  return sub_255D457D0(&v28);
}

uint64_t sub_255D45124(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6C61636974726576;
  }

  else
  {
    v3 = 0x746E6F7A69726F68;
  }

  if (v2)
  {
    v4 = 0xEA00000000006C61;
  }

  else
  {
    v4 = 0xE800000000000000;
  }

  if (*a2)
  {
    v5 = 0x6C61636974726576;
  }

  else
  {
    v5 = 0x746E6F7A69726F68;
  }

  if (*a2)
  {
    v6 = 0xE800000000000000;
  }

  else
  {
    v6 = 0xEA00000000006C61;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_255E3AC68();
  }

  return v8 & 1;
}

uint64_t sub_255D451D0()
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45258(uint64_t a1)
{
  sub_255E3A578();
}

uint64_t sub_255D452CC(uint64_t a1)
{
  sub_255E3AD98();
  sub_255E3A578();

  return sub_255E3ADD8();
}

uint64_t sub_255D45350@<X0>(char *a2@<X8>)
{
  v3 = sub_255E3AB48();

  if (v3 == 1)
  {
    v5 = 1;
  }

  else
  {
    v5 = 2;
  }

  if (!v3)
  {
    v5 = 0;
  }

  *a2 = v5;
  return result;
}

void sub_255D453B0(uint64_t *a1@<X8>)
{
  v2 = 0x746E6F7A69726F68;
  if (*v1)
  {
    v2 = 0x6C61636974726576;
  }

  v3 = 0xEA00000000006C61;
  if (*v1)
  {
    v3 = 0xE800000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_255D453F4()
{
  if (*v0)
  {
    return 0x6C61636974726576;
  }

  else
  {
    return 0x746E6F7A69726F68;
  }
}

uint64_t sub_255D45434@<X0>(char *a3@<X8>)
{
  v4 = sub_255E3AB48();

  if (v4 == 1)
  {
    v6 = 1;
  }

  else
  {
    v6 = 2;
  }

  if (!v4)
  {
    v6 = 0;
  }

  *a3 = v6;
  return result;
}

uint64_t sub_255D45498(uint64_t a1)
{
  v2 = sub_255D456E0();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_255D454D4(uint64_t a1)
{
  v2 = sub_255D456E0();

  return MEMORY[0x2821FE720](a1, v2);
}