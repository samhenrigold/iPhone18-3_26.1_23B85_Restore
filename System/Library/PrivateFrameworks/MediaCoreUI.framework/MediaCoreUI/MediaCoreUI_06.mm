void sub_1C59CF1A4(char *a1, unsigned int a2, unsigned int a3, uint64_t a4)
{
  v6 = *(*(a4 + 16) - 8);
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
  v10 = ((*(*(*(a4 + 16) - 8) + 64) + v9 + ((v9 + 16) & ~v9)) & ~v9) + *(*(*(a4 + 16) - 8) + 64);
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
  v19 = ((a1 + 15) & 0xFFFFFFFFFFFFFFF8);
  if ((v7 & 0x80000000) != 0)
  {
    v21 = *(v6 + 56);

    v21((v19 + v9 + 8) & ~v9);
  }

  else
  {
    if ((a2 & 0x80000000) != 0)
    {
      v20 = a2 & 0x7FFFFFFF;
    }

    else
    {
      v20 = a2 - 1;
    }

    *v19 = v20;
  }
}

uint64_t sub_1C59CF408(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59CF444(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 25))
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

uint64_t sub_1C59CF48C(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C59CF59C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X3>, uint64_t *a3@<X8>)
{
  v6 = *(v3 + 16);
  type metadata accessor for ScopePicker.AnchorPreference(0, v6, *(v3 + 24), a2);

  return sub_1C59CA940(a1, v6, a3);
}

unint64_t sub_1C59CF638()
{
  result = qword_1EC192508;
  if (!qword_1EC192508)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924F0, &qword_1C5BD4D08);
    sub_1C59CF6C4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192508);
  }

  return result;
}

unint64_t sub_1C59CF6C4()
{
  result = qword_1EC192510;
  if (!qword_1EC192510)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1924E8, &qword_1C5BD4D00);
    sub_1C59CF750();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192510);
  }

  return result;
}

unint64_t sub_1C59CF750()
{
  result = qword_1EC192518;
  if (!qword_1EC192518)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192520, &qword_1C5BD4D18);
    sub_1C59CD938();
    sub_1C5924F54(&qword_1EC192528, &qword_1EC1924E0, &qword_1C5BD4CF8, MEMORY[0x1E697DDB0]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192518);
  }

  return result;
}

unint64_t sub_1C59CF808()
{
  result = qword_1EC192530;
  if (!qword_1EC192530)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192538, &qword_1C5BD4D20);
    sub_1C59CF894();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192530);
  }

  return result;
}

unint64_t sub_1C59CF894()
{
  result = qword_1EC192540;
  if (!qword_1EC192540)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192548, &qword_1C5BD4D28);
    sub_1C59CF920();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192540);
  }

  return result;
}

unint64_t sub_1C59CF920()
{
  result = qword_1EC192550;
  if (!qword_1EC192550)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192558, &unk_1C5BD4D30);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192550);
  }

  return result;
}

void sub_1C59CF9F4(uint64_t a1)
{
  sub_1C5BC7A24();
  if (v1 <= 0x3F)
  {
    type metadata accessor for CGSize(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

uint64_t sub_1C59CFA88()
{
  type metadata accessor for MotionAssetDownload.AssetKey(0);
  v5 = sub_1C5BCB304();
  v7 = v0;
  MEMORY[0x1C694F170](120, 0xE100000000000000);
  v1 = sub_1C5BCB304();
  MEMORY[0x1C694F170](v1);

  v2 = v5;
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192580, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FE0]);
  v6 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](2113568, 0xE300000000000000);
  MEMORY[0x1C694F170](v2, v7);

  MEMORY[0x1C694F170](540945696, 0xE400000000000000);
  v3 = sub_1C5BCBD64();
  MEMORY[0x1C694F170](v3);

  return v6;
}

id sub_1C59CFBDC(void *a1)
{
  v2 = v1;
  v4 = sub_1C5BC7A24();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v25[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = objc_allocWithZone(MEMORY[0x1E6988168]);
  v9 = sub_1C5BC7994();
  v10 = [v8 initWithURL:v9 options:0];

  sub_1C5BC79A4();
  sub_1C5BC7984();
  (*(v5 + 8))(v7, v4);
  v11 = sub_1C5BCAE44();

  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC193A10, &unk_1C5BF5580);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = sub_1C5BCAE74();
  *(inited + 40) = v13;
  v14 = type metadata accessor for MotionAssetDownload.AssetKey(0);
  v15 = *(v14 + 20);
  *(inited + 72) = v4;
  boxed_opaque_existential_0 = __swift_allocate_boxed_opaque_existential_0((inited + 48));
  (*(v5 + 16))(boxed_opaque_existential_0, v2 + v15, v4);
  *(inited + 80) = sub_1C5BCAE74();
  *(inited + 88) = v17;
  v18 = (v2 + *(v14 + 24));
  v19 = *v18;
  v20 = v18[1];
  type metadata accessor for CGSize(0);
  *(inited + 120) = v21;
  *(inited + 96) = v19;
  *(inited + 104) = v20;
  sub_1C59AD990(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1917A8, &qword_1C5BD4E10);
  swift_arrayDestroy();
  v22 = sub_1C5BCACA4();

  v23 = [a1 assetDownloadTaskWithURLAsset:v10 assetTitle:v11 assetArtworkData:0 options:v22];

  return v23;
}

uint64_t sub_1C59CFE80(uint64_t a1)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(v1 + *(a1 + 24)), *(v1 + *(a1 + 24) + 8));
  return sub_1C5BCBF94();
}

uint64_t sub_1C59CFF50(uint64_t a1, uint64_t a2)
{
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  v4 = (v2 + *(a2 + 24));
  v5 = *v4;
  v6 = v4[1];

  return sub_1C5BC37A0(v5, v6);
}

uint64_t sub_1C59D0014(uint64_t a1, uint64_t a2)
{
  sub_1C5BCBF54();
  sub_1C5BC7A24();
  sub_1C59D01A4(&qword_1EC192578, MEMORY[0x1E6968FB0], MEMORY[0x1E6968FC0]);
  sub_1C5BCAD44();
  sub_1C5BCAD44();
  sub_1C5BC37A0(*(v2 + *(a2 + 24)), *(v2 + *(a2 + 24) + 8));
  return sub_1C5BCBF94();
}

BOOL sub_1C59D00E4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if ((sub_1C5BC79D4() & 1) == 0 || (sub_1C5BC79D4() & 1) == 0)
  {
    return 0;
  }

  v6 = *(a3 + 24);
  v7 = *(a1 + v6);
  v8 = *(a1 + v6 + 8);
  v9 = (a2 + v6);
  v10 = v9[1];
  v11 = v7 == *v9;
  return v8 == v10 && v11;
}

uint64_t sub_1C59D01A4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1C59D01EC@<X0>(void *a1@<X8>)
{
  v2 = v1[1];
  *a1 = *v1;
  a1[1] = v2;
}

uint64_t sub_1C59D01F8()
{
  MEMORY[0x1C694F170](*v0, v0[1]);
  MEMORY[0x1C694F170](2112093, 0xE300000000000000);
  v1 = sub_1C59CFA88();
  MEMORY[0x1C694F170](v1);

  return 91;
}

uint64_t sub_1C59D02C4(uint64_t a1)
{
  result = type metadata accessor for MotionAssetDownload.AssetKey(319);
  if (v2 <= 0x3F)
  {
    swift_cvw_initStructMetadataWithLayoutString();
    return 0;
  }

  return result;
}

void sub_1C59D034C(__n128 a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v8 = a1.n128_f64[0];
  v9 = sub_1C5BC7AC4();
  v10 = *(v9 - 8);
  v11 = MEMORY[0x1EEE9AC00](v9);
  v13 = &v18 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(*((*(a6 + 224))(a4, a6, v11) + 96) + 24);

  v15 = v8 * 5220.0;
  sub_1C5BC7AB4();
  sub_1C5BC7A84();
  v17 = v16;
  (*(v10 + 8))(v13, v9);
  v19 = v15;
  v18 = xmmword_1C5BD4E80;
  v20 = xmmword_1C5BD4E80;
  v21 = 1;
  v22 = v17;
  v23 = 0;
  v24 = 0;
  sub_1C596D6D0(&v19);
  swift_beginAccess();
  *(v14 + 24) = v15;
  *(v14 + 32) = v18;
  *(v14 + 48) = 1;
  *(v14 + 56) = v17;
  *(v14 + 64) = 0;
  *(v14 + 72) = 0;
}

uint64_t sub_1C59D04F0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, double a6)
{
  *(v6 + 48) = a4;
  *(v6 + 56) = a5;
  *(v6 + 32) = a2;
  *(v6 + 40) = a3;
  *(v6 + 24) = a1;
  *(v6 + 16) = a6;
  v7 = sub_1C5BCBB84();
  *(v6 + 64) = v7;
  *(v6 + 72) = *(v7 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 96) = swift_task_alloc();
  *(v6 + 104) = swift_task_alloc();
  *(v6 + 112) = swift_task_alloc();
  sub_1C5BCB1E4();
  *(v6 + 120) = sub_1C5BCB1D4();
  v9 = sub_1C5BCB194();
  *(v6 + 128) = v9;
  *(v6 + 136) = v8;

  return MEMORY[0x1EEE6DFA0](sub_1C59D0620, v9, v8);
}

uint64_t sub_1C59D0620()
{
  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 144) = v1;
  *v1 = v0;
  v1[1] = sub_1C59D06EC;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D06EC()
{
  v2 = *v1;
  v3 = *(*v1 + 112);
  v4 = *(*v1 + 72);
  v5 = *(*v1 + 64);
  v2[19] = v0;

  v6 = *(v4 + 8);
  v2[20] = v6;
  v2[21] = (v4 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v3, v5);
  v7 = v2[17];
  v8 = v2[16];
  if (v0)
  {
    v9 = sub_1C59D0B34;
  }

  else
  {
    v9 = sub_1C59D0898;
  }

  return MEMORY[0x1EEE6DFA0](v9, v8, v7);
}

uint64_t sub_1C59D0898(__n128 a1)
{
  a1.n128_u64[0] = v1[2];
  sub_1C59D034C(a1, v1[3], v1[4], v1[5], v1[6], v1[7]);
  v2 = sub_1C5BCBFC4();
  v4 = v3;
  sub_1C5BCBEB4();
  v5 = swift_task_alloc();
  v1[22] = v5;
  *v5 = v1;
  v5[1] = sub_1C59D098C;

  return sub_1C59D9270(v2, v4, 0, 0, 1);
}

uint64_t sub_1C59D098C()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 104);
  v5 = *(*v1 + 64);
  *(*v1 + 184) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D0E30;
  }

  else
  {
    v8 = sub_1C59D0B50;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D0B50()
{
  v1 = *(v0 + 40);
  v2 = *(v0 + 56);
  v3 = *(v2 + 224);
  *(v0 + 192) = v3;
  *(v0 + 200) = (v2 + 224) & 0xFFFFFFFFFFFFLL | 0x3906000000000000;
  v3(v1);
  *(v0 + 256) = 1;

  sub_1C5BC7F34();

  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 208) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D0C88;

  return sub_1C59D9270(2000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D0C88()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 96);
  v5 = *(*v1 + 64);
  *(*v1 + 216) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D1120;
  }

  else
  {
    v8 = sub_1C59D0E4C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D0E4C()
{
  (*(v0 + 192))(*(v0 + 40), *(v0 + 56));
  *(v0 + 257) = 2;

  sub_1C5BC7F34();

  v1 = sub_1C5BCBFC4();
  v3 = v2;
  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 224) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D0F78;

  return sub_1C59D9270(v1, v3, 0, 0, 1);
}

uint64_t sub_1C59D0F78()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 88);
  v5 = *(*v1 + 64);
  *(*v1 + 232) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D1400;
  }

  else
  {
    v8 = sub_1C59D113C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D113C()
{
  (*(v0 + 192))(*(v0 + 40), *(v0 + 56));
  *(v0 + 258) = 0;

  sub_1C5BC7F34();

  sub_1C5BCBEB4();
  v1 = swift_task_alloc();
  *(v0 + 240) = v1;
  *v1 = v0;
  v1[1] = sub_1C59D1258;

  return sub_1C59D9270(1000000000000000000, 0, 0, 0, 1);
}

uint64_t sub_1C59D1258()
{
  v2 = *v1;
  v3 = *(*v1 + 160);
  v4 = *(*v1 + 80);
  v5 = *(*v1 + 64);
  *(*v1 + 248) = v0;

  v3(v4, v5);
  v6 = *(v2 + 136);
  v7 = *(v2 + 128);
  if (v0)
  {
    v8 = sub_1C59D14BC;
  }

  else
  {
    v8 = sub_1C59D141C;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D141C()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C59D1528()
{
  ObjectType = swift_getObjectType();
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v27 - v3;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] = 2;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = 2;
  v5 = &v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette];
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDA48EA8;
  v7 = unk_1EDA48EB0;
  v8 = qword_1EDA48EB8;
  v9 = unk_1EDA48EC0;
  *v5 = qword_1EDA48EA8;
  v5[1] = v7;
  v5[2] = v8;
  v5[3] = v9;
  v10 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs;
  v11 = qword_1EDA4DAE0;
  v12 = v6;
  v13 = v7;
  v14 = v8;
  v15 = v9;
  if (v11 != -1)
  {
    swift_once();
  }

  *&v0[v10] = xmmword_1EDA5DB50;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformValueSubscriber] = 0;
  v16 = &v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
  *v16 = 0u;
  *(v16 + 1) = 0u;
  *(v16 + 2) = 0u;
  v16[48] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask] = 0;
  v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars] = 0;
  *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset] = 0;
  v27.receiver = v0;
  v27.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v27, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  result = sub_1C59D18D4();
  v19 = result;
  if (!(result >> 62))
  {
    v20 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v20)
    {
      goto LABEL_7;
    }

LABEL_14:

    v24 = sub_1C5BCB214();
    (*(*(v24 - 8) + 56))(v4, 1, 1, v24);
    v25 = swift_allocObject();
    v25[2] = 0;
    v25[3] = 0;
    v25[4] = v17;
    v26 = v17;
    sub_1C5A0BB28(0, 0, v4, &unk_1C5BD5058, v25);

    sub_1C5924EF4(v4, &qword_1EC1930A0, &qword_1C5BD7440);
    return v26;
  }

  result = sub_1C5BCB984();
  v20 = result;
  if (!result)
  {
    goto LABEL_14;
  }

LABEL_7:
  if (v20 >= 1)
  {
    v21 = 0;
    do
    {
      if ((v19 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1C694FD20](v21, v19);
      }

      else
      {
        v22 = *(v19 + 8 * v21 + 32);
      }

      v23 = v22;
      ++v21;
      [v17 addSubview_];
      [v23 setAlpha_];
    }

    while (v20 != v21);
    goto LABEL_14;
  }

  __break(1u);
  return result;
}

uint64_t sub_1C59D18D4()
{
  v1 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars;
  if (*(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars))
  {
    v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars);
  }

  else
  {
    v2 = sub_1C59D42C4();
    *(v0 + v1) = v2;
  }

  return v2;
}

uint64_t sub_1C59D1938(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  *(v4 + 16) = a4;
  type metadata accessor for BouncyBarsAsset();
  swift_allocObject();
  v5 = swift_task_alloc();
  *(v4 + 24) = v5;
  *v5 = v4;
  v5[1] = sub_1C59D19E0;

  return sub_1C59D7F78();
}

uint64_t sub_1C59D19E0(uint64_t a1)
{
  *(*v1 + 32) = a1;

  return MEMORY[0x1EEE6DFA0](sub_1C59D1AE0, 0, 0);
}

uint64_t sub_1C59D1AE0()
{
  sub_1C5BCB1E4();
  *(v0 + 40) = sub_1C5BCB1D4();
  v2 = sub_1C5BCB194();

  return MEMORY[0x1EEE6DFA0](sub_1C59D1B74, v2, v1);
}

uint64_t sub_1C59D1B74()
{
  v11 = v0;
  v1 = v0[4];
  v2 = v0[2];

  v3 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  *(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset) = v1;
  v4 = v0[4];
  if (v3)
  {
  }

  else if (v4)
  {
    v5 = *(v0[2] + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    if ((v5 - 2) >= 3 && v5 == 1)
    {
      v9 = 1;
      v10 = 1;
      swift_retain_n();
      v7.n128_f64[0] = sub_1C59D9228(1uLL, v6);
      sub_1C59D2560(&v9, &v10, 1, v7);
    }

    else
    {
    }
  }

  v0[6] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1C59D1C7C, 0, 0);
}

uint64_t sub_1C59D1C7C()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C59D1D00()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v2 = MEMORY[0x1EEE9AC00](v1 - 8);
  v4 = aBlock - v3;
  v5 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode;
  v6 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask;
  v7 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask];
  if (*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode] == 4)
  {
    if (v7)
    {
      return;
    }

    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] = 0;
    v8 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
    *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = 4;
    sub_1C59D9228(v8, v2);
    v9.n128_f64[0] = sub_1C59D924C(v8);
    aBlock[0] = v8;
    v10 = v0;
    sub_1C59D32E8(aBlock, v9);
    sub_1C59D924C(v8);
    v11 = sub_1C5BCB214();
    (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
    sub_1C5BCB1E4();
    v12 = v0;
    v13 = sub_1C5BCB1D4();
    v14 = swift_allocObject();
    v15 = MEMORY[0x1E69E85E0];
    v14[2] = v13;
    v14[3] = v15;
    v14[4] = v12;
    *&v10[v6] = sub_1C59D2FAC(0, 0, v4, &unk_1C5BD4FF0, v14, MEMORY[0x1E69E7CA8] + 8);
  }

  else
  {
    if (v7)
    {

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930D0, &qword_1C5BD4FE0);
      sub_1C5BCB2A4();
    }

    *&v0[v6] = 0;

    v17 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState;
    if (v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState] == 1)
    {
      v18 = *&v0[v5];
      v19 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
      *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] = v18;
      v20.n128_f64[0] = sub_1C59D9228(v18, v16);
      sub_1C59D9228(v19, v20);
      v21.n128_f64[0] = sub_1C59D924C(v19);
      aBlock[0] = v19;
      sub_1C59D32E8(aBlock, v21);
      sub_1C59D924C(v19);
      return;
    }

    v22 = objc_opt_self();
    v23 = swift_allocObject();
    *(v23 + 16) = v0;
    v24 = swift_allocObject();
    *(v24 + 16) = sub_1C59D9E20;
    *(v24 + 24) = v23;
    aBlock[4] = sub_1C59DA404;
    aBlock[5] = v24;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1C59D32C0;
    aBlock[3] = &block_descriptor_108;
    v25 = _Block_copy(aBlock);
    v26 = v0;

    [v22 performWithoutAnimation_];
    _Block_release(v25);
    LOBYTE(v22) = swift_isEscapingClosureAtFileLocation();

    if (v22)
    {
      __break(1u);
      return;
    }

    v0[v17] = 1;
  }
}

uint64_t sub_1C59D209C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BCBB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1C5BCB1E4();
  v4[6] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C59D2190, v7, v6);
}

uint64_t sub_1C59D2190()
{
  v1 = sub_1C5BCBFC4();
  v3 = v2;
  sub_1C5BCBEB4();
  v4 = swift_task_alloc();
  *(v0 + 72) = v4;
  *v4 = v0;
  v4[1] = sub_1C59D226C;

  return sub_1C59D9270(v1, v3, 0, 0, 1);
}

uint64_t sub_1C59D226C()
{
  v2 = *v1;
  v3 = *(*v1 + 40);
  v4 = *(*v1 + 32);
  v5 = *(*v1 + 24);
  *(*v1 + 80) = v0;

  (*(v4 + 8))(v3, v5);
  v6 = *(v2 + 64);
  v7 = *(v2 + 56);
  if (v0)
  {
    v8 = sub_1C59D24F4;
  }

  else
  {
    v8 = sub_1C59D2404;
  }

  return MEMORY[0x1EEE6DFA0](v8, v7, v6);
}

uint64_t sub_1C59D2404()
{
  v10 = v0;
  v1 = v0[10];

  sub_1C5BCB2E4();
  if (v1)
  {
  }

  else
  {
    v4 = v0[2];
    *(v4 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled) = 1;
    v8 = *(v4 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    v9 = v8;
    v5.n128_f64[0] = sub_1C59D9228(v8, v2);
    v6.n128_f64[0] = sub_1C59D9228(v8, v5);
    sub_1C59D2560(&v8, &v9, 1, v6);
    sub_1C59D924C(v9);
    sub_1C59D924C(v8);
  }

  v3 = v0[1];

  return v3();
}

uint64_t sub_1C59D24F4()
{

  v1 = *(v0 + 8);

  return v1();
}

void sub_1C59D2560(unint64_t *a1, uint64_t *a2, char a3, __n128 a4)
{
  v6 = *a2;
  v72 = *a1;
  aBlock = *a1;
  v70 = v6;
  v83 = v6;
  if (!sub_1C59D9B20(&aBlock, &v83, a4) && (a3 & 1) == 0)
  {
    return;
  }

  v73 = sub_1C59D18D4();
  type metadata accessor for AnimationGroup();
  v7 = swift_allocObject();
  v8 = MEMORY[0x1E69E7CC0];
  *(v7 + 16) = MEMORY[0x1E69E7CC0];
  v76 = (v7 + 16);
  *(v7 + 24) = v8;
  v9 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask;
  if (*&v4[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask])
  {

    sub_1C5BCB2A4();
  }

  *&v4[v9] = 0;

  v71 = v4;
  if (v72 == 1)
  {
    sub_1C59D923C(1uLL);
    sub_1C59D5170();
  }

  v68 = v70 - 3;
  if (v70 == 3)
  {
    v18 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.33 controlPoint2:{1.0, 0.67, 1.0}];
    v19 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v18 timingParameters:0.9];

    v20 = swift_allocObject();
    *(v20 + 16) = v4;
    v21 = v4;
    sub_1C59D7718(v19, sub_1C59D9C64, v20, 0.0);
  }

  else if (v70 == 4)
  {
    v10 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v11 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v10 timingParameters:0.25];

    v12 = swift_allocObject();
    *(v12 + 16) = v4;
    v81 = sub_1C59D9C6C;
    v82 = v12;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1C596D09C;
    v80 = &block_descriptor_43;
    v13 = _Block_copy(&aBlock);
    v14 = v4;

    [v11 addAnimations_];
    _Block_release(v13);
    v15 = swift_allocObject();
    *(v15 + 16) = v14;
    v81 = sub_1C59D9C74;
    v82 = v15;
    aBlock = MEMORY[0x1E69E9820];
    v78 = 1107296256;
    v79 = sub_1C59D56C4;
    v80 = &block_descriptor_49;
    v16 = _Block_copy(&aBlock);
    v17 = v14;

    [v11 addCompletion_];
    _Block_release(v16);
    sub_1C59D7718(v11, 0, 0, 0.0);
  }

  v69 = v7;
  if (v72 == 2)
  {

    sub_1C59D5814(v22);
    v24 = v23;
    sub_1C59D45C0(v25);
    v74 = *(v24 + 16);
    v75 = v24;
    if (v74)
    {
      v7 = 0;
      v26 = (v24 + 40);
      while (v7 < *(v75 + 16))
      {
        v28 = *(v26 - 1);
        v27 = *v26;
        v29 = objc_allocWithZone(MEMORY[0x1E69DC908]);
        v30 = v27;
        v31 = v28;
        v32 = [v29 initWithControlPoint1:0.32 controlPoint2:{0.0, 0.67, 0.0}];
        v33 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v32 timingParameters:0.5];

        v34 = swift_allocObject();
        *(v34 + 16) = v31;
        *(v34 + 24) = v27;
        v81 = sub_1C59D9C18;
        v82 = v34;
        aBlock = MEMORY[0x1E69E9820];
        v78 = 1107296256;
        v79 = sub_1C596D09C;
        v80 = &block_descriptor_34;
        v35 = _Block_copy(&aBlock);
        swift_retain_n();
        v36 = v31;
        v37 = v30;

        [v33 addAnimations_];
        _Block_release(v35);

        swift_beginAccess();
        v38 = *v76;
        v39 = v33;
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *v76 = v38;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v38 = sub_1C5B761C4(0, *(v38 + 2) + 1, 1, v38);
          *v76 = v38;
        }

        v42 = *(v38 + 2);
        v41 = *(v38 + 3);
        if (v42 >= v41 >> 1)
        {
          v38 = sub_1C5B761C4((v41 > 1), v42 + 1, 1, v38);
        }

        *(v38 + 2) = v42 + 1;
        v43 = &v38[16 * v42];
        *(v43 + 4) = v39;
        *(v43 + 5) = v7 * 0.03;
        *v76 = v38;
        swift_endAccess();

        v26 += 2;
        if (v74 == ++v7)
        {
          goto LABEL_20;
        }
      }

      __break(1u);
      goto LABEL_40;
    }

LABEL_20:

    v7 = v69;
    v4 = v71;
  }

  if (v70 <= 2)
  {
    if (v70)
    {
      if (v70 == 1)
      {
        v53 = objc_allocWithZone(MEMORY[0x1E69DC908]);
        sub_1C59D923C(1uLL);
        v54 = [v53 initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
        v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v54 timingParameters:0.15];

        v55 = swift_allocObject();
        *(v55 + 16) = v4;
        v56 = v4;
        sub_1C59D7718(v49, sub_1C59D9C10, v55, 0.0);
        v4 = v71;

        goto LABEL_38;
      }

      if (v70 == 2)
      {
        if (!(v73 >> 62))
        {
          v44 = *((v73 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v44)
          {
LABEL_41:

            v4 = v71;
            sub_1C59D45C0(v57);
            goto LABEL_42;
          }

LABEL_27:
          if (v44 < 1)
          {
            __break(1u);
            return;
          }

          for (i = 0; i != v44; ++i)
          {
            if ((v73 & 0xC000000000000001) != 0)
            {
              v46 = MEMORY[0x1C694FD20](i, v73);
            }

            else
            {
              v46 = *(v73 + 8 * i + 32);
            }

            v47 = v46;
            [v46 setAlpha_];
          }

          goto LABEL_41;
        }

LABEL_40:
        v44 = sub_1C5BCB984();
        if (!v44)
        {
          goto LABEL_41;
        }

        goto LABEL_27;
      }
    }

    else
    {
      sub_1C59D923C(0);
    }

LABEL_36:

    v48 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.5 controlPoint2:{1.0, 0.89, 1.0}];
    v49 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v48 timingParameters:0.15];

    v50 = swift_allocObject();
    *(v50 + 16) = v4;
    *(v50 + 24) = v72;
    sub_1C59D9228(v72, v51);
    v52 = v4;
    sub_1C59D7718(v49, sub_1C59D9C08, v50, 0.0);
    v4 = v71;
LABEL_38:

    goto LABEL_42;
  }

  if (v68 >= 2)
  {
    goto LABEL_36;
  }

LABEL_42:
  v58 = v4;
  v59 = *&v4[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation];
  if (v59)
  {
    v60 = swift_allocObject();
    *(v60 + 16) = v58;
    *(v60 + 24) = v7;
    v61 = swift_allocObject();
    *(v61 + 16) = sub_1C59D9C00;
    *(v61 + 24) = v60;
    swift_beginAccess();
    v62 = *(v59 + 24);
    v63 = v58;

    v64 = swift_isUniquelyReferenced_nonNull_native();
    *(v59 + 24) = v62;
    if ((v64 & 1) == 0)
    {
      v62 = sub_1C5B762D0(0, v62[2] + 1, 1, v62);
      *(v59 + 24) = v62;
    }

    v66 = v62[2];
    v65 = v62[3];
    if (v66 >= v65 >> 1)
    {
      v62 = sub_1C5B762D0((v65 > 1), v66 + 1, 1, v62);
    }

    v62[2] = v66 + 1;
    v67 = &v62[2 * v66];
    v67[4] = sub_1C59D9200;
    v67[5] = v61;
    *(v59 + 24) = v62;
    swift_endAccess();
  }

  else
  {
    sub_1C59D78A4();
  }
}

uint64_t sub_1C59D2FAC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = v23 - v10;
  sub_1C5929BC8(a3, v23 - v10);
  v12 = sub_1C5BCB214();
  v13 = *(v12 - 8);
  v14 = (*(v13 + 48))(v11, 1, v12);

  if (v14 == 1)
  {
    sub_1C5924EF4(v11, &qword_1EC1930A0, &qword_1C5BD7440);
  }

  else
  {
    sub_1C5BCB204();
    (*(v13 + 8))(v11, v12);
  }

  v15 = *(a5 + 16);
  swift_unknownObjectRetain();

  if (v15)
  {
    swift_getObjectType();
    v16 = sub_1C5BCB194();
    v18 = v17;
    swift_unknownObjectRelease();
    if (a2)
    {
LABEL_6:
      v23[0] = a2;
      v19 = sub_1C5BCAED4() + 32;

      if (v18 | v16)
      {
        v24[0] = 0;
        v24[1] = 0;
        v20 = v24;
        v24[2] = v16;
        v24[3] = v18;
      }

      else
      {
        v20 = 0;
      }

      v23[1] = 7;
      v23[2] = v20;
      v23[3] = v19;
      v21 = swift_task_create();

      sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);

      return v21;
    }
  }

  else
  {
    v16 = 0;
    v18 = 0;
    if (a2)
    {
      goto LABEL_6;
    }
  }

  sub_1C5924EF4(a3, &qword_1EC1930A0, &qword_1C5BD7440);
  if (v18 | v16)
  {
    v24[4] = 0;
    v24[5] = 0;
    v24[6] = v16;
    v24[7] = v18;
  }

  return swift_task_create();
}

double sub_1C59D3248(uint64_t a1, __n128 a2)
{
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode);
  v4 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode) = v3;
  v5.n128_f64[0] = sub_1C59D9228(v3, a2);
  sub_1C59D9228(v4, v5);
  v6.n128_f64[0] = sub_1C59D924C(v4);
  v8 = v4;
  sub_1C59D32E8(&v8, v6);

  return sub_1C59D924C(v4);
}

double sub_1C59D32E8(unint64_t *a1, __n128 a2)
{
  v3 = *a1;
  v4 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode;
  if (*a1 - 2 >= 3)
  {
    v5 = *(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
    v6 = v3 != v5 && v3 >= 2;
    if (v6 && v5 >= 5)
    {
      v8 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
      if (*(v2 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
      {
        v9.n128_f64[0] = sub_1C59D9228(*a1, a2);
        sub_1C59D9228(v5, v9);

        sub_1C5BC7EF4();
        sub_1C59D924C(v5);
        sub_1C59D924C(v3);
      }

      *(v2 + v8) = 0;

      v4 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode;
    }
  }

  v14 = *(v2 + v4);
  v15 = v3;
  sub_1C59D9228(v14, a2);
  sub_1C59D3408(&v15, &v14);
  v10.n128_f64[0] = sub_1C59D924C(v14);
  v14 = *(v2 + v4);
  v15 = v3;
  v11.n128_f64[0] = sub_1C59D9228(v14, v10);
  sub_1C59D2560(&v15, &v14, 0, v11);
  v12 = v14;

  return sub_1C59D924C(v12);
}

double sub_1C59D3408(void *a1, unint64_t *a2)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v37 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1916B8, &qword_1C5BD5000);
  v41 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v37 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192628, &qword_1C5BD5008);
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v37 - v14;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  v17 = MEMORY[0x1EEE9AC00](v16 - 8);
  v19 = &v37 - v18;
  v20 = *a2;
  if (!v20)
  {
    if (*a1)
    {
      v25 = *(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber);
      sub_1C59D9228(0, v17);
      if (!v25)
      {
        sub_1C59D496C();
        if (qword_1EDA490C8 != -1)
        {
          swift_once();
        }

        v26 = qword_1EDA5DB00;
        v27 = sub_1C5BCB214();
        (*(*(v27 - 8) + 56))(v19, 1, 1, v27);
        v28 = swift_allocObject();
        v28[2] = 0;
        v28[3] = 0;
        v28[4] = v26;

        sub_1C5AD0FB8(0, 0, v19, &unk_1C5BD5020, v28);
      }
    }

    else
    {
      v34.n128_f64[0] = sub_1C59D9228(0, v17);
      sub_1C59D9228(0, v34);
    }

    sub_1C59D923C(0);
    goto LABEL_18;
  }

  v39 = v12;
  v21 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber;
  if (*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber))
  {
    v40 = v13;
    if (qword_1EDA490C8 != -1)
    {
      swift_once();
    }

    v22 = qword_1EDA5DB00;
    v23 = sub_1C5BCB214();
    (*(*(v23 - 8) + 56))(v19, 1, 1, v23);
    v24 = swift_allocObject();
    v24[2] = 0;
    v24[3] = 0;
    v24[4] = v22;

    sub_1C5AD0FB8(0, 0, v19, &unk_1C5BD5018, v24);

    if (*(v3 + v21))
    {

      sub_1C5BC7EF4();
    }

    v13 = v40;
    *(v3 + v21) = 0;
  }

  if (v20 < 5)
  {
LABEL_18:
    v35 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
    if (*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
    {

      sub_1C5BC7EF4();
    }

    *(v3 + v35) = 0;
    goto LABEL_21;
  }

  if (!*(v3 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber))
  {
    v38 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
    swift_beginAccess();
    sub_1C59D923C(v20);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191658, &qword_1C5BD5010);
    sub_1C5BC8004();
    swift_endAccess();
    sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
    v29 = sub_1C5BCB5A4();
    v42 = v29;
    v30 = sub_1C5BCB594();
    (*(*(v30 - 8) + 56))(v8, 1, 1, v30);
    sub_1C5924F54(&qword_1EC192630, &qword_1EC1916B8, &qword_1C5BD5000, MEMORY[0x1E695C068]);
    v40 = v13;
    sub_1C5931640();
    sub_1C5BC80D4();
    sub_1C5924EF4(v8, &unk_1EC199F20, &qword_1C5BD88C0);

    (*(v41 + 8))(v11, v9);
    swift_allocObject();
    swift_unknownObjectWeakInit();
    sub_1C5924F54(&qword_1EC192638, &qword_1EC192628, &qword_1C5BD5008, MEMORY[0x1E695BE98]);
    v31 = v39;
    v32 = sub_1C5BC8114();

    v33 = sub_1C59D924C(v20);
    (*(v40 + 8))(v15, v31, v33);
    *(v3 + v38) = v32;
LABEL_21:
  }

  return v17.n128_f64[0];
}

void sub_1C59D3A80()
{
  v1 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  switch(v1)
  {
    case 2:
      return;
    case 3:
      v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
      v3 = sub_1C59D18D4();
      v4 = v3;
      if (v3 >> 62)
      {
        v5 = sub_1C5BCB984();
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      else
      {
        v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (!v5)
        {
          goto LABEL_24;
        }
      }

      if (v5 >= 1)
      {
        for (i = 0; i != v5; ++i)
        {
          if ((v4 & 0xC000000000000001) != 0)
          {
            v7 = MEMORY[0x1C694FD20](i, v4);
          }

          else
          {
            v7 = *(v4 + 8 * i + 32);
          }

          v8 = v7;
          [v7 setBackgroundColor_];
        }

        goto LABEL_24;
      }

      __break(1u);
      goto LABEL_28;
    case 4:
      return;
  }

  v2 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v9 = sub_1C59D18D4();
  v10 = v9;
  if (v9 >> 62)
  {
    v11 = sub_1C5BCB984();
    if (v11)
    {
LABEL_15:
      if (v11 >= 1)
      {
        for (j = 0; j != v11; ++j)
        {
          if ((v10 & 0xC000000000000001) != 0)
          {
            v13 = MEMORY[0x1C694FD20](j, v10);
          }

          else
          {
            v13 = *(v10 + 8 * j + 32);
          }

          v14 = v13;
          [v13 setBackgroundColor_];
        }

        goto LABEL_24;
      }

LABEL_28:
      __break(1u);
      return;
    }
  }

  else
  {
    v11 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v11)
    {
      goto LABEL_15;
    }
  }

LABEL_24:
}

void sub_1C59D3C58(uint64_t a1)
{
  v2 = *a1;
  v3 = *(a1 + 8);
  v4 = *(a1 + 16);
  v5 = *(a1 + 24);
  v6 = (v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v7 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
  v15 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v8 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16);
  v9 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 24);
  *v6 = *a1;
  v6[1] = v3;
  v6[2] = v4;
  v6[3] = v5;
  sub_1C592535C(0, &qword_1EDA45D70, 0x1E69E58C0);
  v10 = v2;
  v11 = v3;
  v12 = v4;
  v13 = v5;
  if ((sub_1C5BCB744() & 1) == 0 || (sub_1C5BCB744() & 1) == 0 || (sub_1C5BCB744() & 1) == 0)
  {

    goto LABEL_7;
  }

  v14 = sub_1C5BCB744();

  if ((v14 & 1) == 0)
  {
LABEL_7:
    sub_1C59D3A80();
  }
}

void sub_1C59D3D94(double *a1)
{
  if (*a1 != *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] || a1[1] != *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs + 8])
  {
    v3 = objc_opt_self();
    v4 = swift_allocObject();
    *(v4 + 16) = v1;
    v5 = swift_allocObject();
    *(v5 + 16) = sub_1C59D91F8;
    *(v5 + 24) = v4;
    v9[4] = sub_1C59D9200;
    v9[5] = v5;
    v9[0] = MEMORY[0x1E69E9820];
    v9[1] = 1107296256;
    v9[2] = sub_1C59D32C0;
    v9[3] = &block_descriptor_0;
    v6 = _Block_copy(v9);
    v7 = v1;

    [v3 performWithoutAnimation_];
    _Block_release(v6);
    isEscapingClosureAtFileLocation = swift_isEscapingClosureAtFileLocation();

    if (isEscapingClosureAtFileLocation)
    {
      __break(1u);
    }
  }
}

double sub_1C59D3F14(uint64_t a1, __n128 a2)
{
  v6 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode);
  v7 = v6;
  v2.n128_f64[0] = sub_1C59D9228(v6, a2);
  v3.n128_f64[0] = sub_1C59D9228(v6, v2);
  sub_1C59D2560(&v7, &v6, 1, v3);
  sub_1C59D924C(v6);
  v4 = v7;

  return sub_1C59D924C(v4);
}

void sub_1C59D3F88(unsigned __int8 *a1)
{
  if (*a1 != v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout])
  {
    v2 = sub_1C59D18D4();
    v3 = v2;
    if (v2 >> 62)
    {
      goto LABEL_14;
    }

    for (i = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
    {
      v5 = 0;
      while (1)
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v6 = MEMORY[0x1C694FD20](v5, v3);
        }

        else
        {
          if (v5 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_13;
          }

          v6 = *(v3 + 8 * v5 + 32);
        }

        v7 = v6;
        v8 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          break;
        }

        [v6 removeFromSuperview];

        ++v5;
        if (v8 == i)
        {
          goto LABEL_15;
        }
      }

      __break(1u);
LABEL_13:
      __break(1u);
LABEL_14:
      ;
    }

LABEL_15:

    v9 = sub_1C59D42C4();
    *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars] = v9;

    if (v9 >> 62)
    {
      goto LABEL_33;
    }

    for (j = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10); ; j = sub_1C5BCB984())
    {
      v1 = v1;
      if (!j)
      {
        break;
      }

      v11 = 0;
      while (1)
      {
        if ((v9 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x1C694FD20](v11, v9);
        }

        else
        {
          if (v11 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_32;
          }

          v12 = *(v9 + 8 * v11 + 32);
        }

        v13 = v12;
        v14 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          break;
        }

        [v1 addSubview_];

        ++v11;
        if (v14 == j)
        {
          goto LABEL_26;
        }
      }

      __break(1u);
LABEL_32:
      __break(1u);
LABEL_33:
      ;
    }

LABEL_26:

    sub_1C59D3A80();
    v15 = objc_opt_self();
    v16 = swift_allocObject();
    *(v16 + 16) = v1;
    v17 = swift_allocObject();
    *(v17 + 16) = sub_1C59DA0C4;
    *(v17 + 24) = v16;
    v21[4] = sub_1C59DA404;
    v21[5] = v17;
    v21[0] = MEMORY[0x1E69E9820];
    v21[1] = 1107296256;
    v21[2] = sub_1C59D32C0;
    v21[3] = &block_descriptor_155;
    v18 = _Block_copy(v21);
    v19 = v1;

    [v15 performWithoutAnimation_];
    _Block_release(v18);
    LOBYTE(v15) = swift_isEscapingClosureAtFileLocation();

    if (v15)
    {
      __break(1u);
    }

    else
    {
      sub_1C59D45C0(v20);
      if (!*&v19[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode])
      {
        sub_1C59D923C(0);
        sub_1C59D496C();
      }
    }
  }
}

uint64_t sub_1C59D42C4()
{
  v1 = &unk_1F4513760;
  if (!*(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout))
  {
    v1 = &unk_1F4513728;
  }

  v2 = *v1;

  v4 = v2 - 1;
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    result = MEMORY[0x1E69E7CC0];
    if (v4)
    {
      v10 = MEMORY[0x1E69E7CC0];
      sub_1C5BCBB44();
      v5 = *MEMORY[0x1E69796E8];
      do
      {
        v6 = [objc_allocWithZone(MEMORY[0x1E69DD250]) init];
        v7 = [v6 layer];
        [v7 setCornerCurve_];

        v8 = [v6 layer];
        [v8 setAllowsEdgeAntialiasing_];

        v9 = [v6 tintColor];
        [v6 setBackgroundColor_];

        sub_1C5BCBB24();
        sub_1C5BCBB54();
        sub_1C5BCBB64();
        sub_1C5BCBB34();
        --v4;
      }

      while (v4);
      return v10;
    }
  }

  return result;
}

void sub_1C59D445C(_BYTE *a1)
{
  v3 = a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout];
  v4 = &a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
  *v4 = 0u;
  *(v4 + 1) = 0u;
  *(v4 + 2) = 0u;
  v4[48] = v3;
  v5 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v5 - 2) >= 3 && v5 != 1)
  {
    v13[10] = v1;
    v13[11] = v2;
    if (!v5)
    {
      sub_1C59D923C(0);
    }

    v8 = objc_opt_self();
    v9 = swift_allocObject();
    v10 = a1;
    *(v9 + 16) = a1;
    v13[4] = sub_1C59DA428;
    v13[5] = v9;
    v13[0] = MEMORY[0x1E69E9820];
    v13[1] = 1107296256;
    v13[2] = sub_1C596D09C;
    v13[3] = &block_descriptor_162;
    v11 = _Block_copy(v13);
    v12 = v10;

    [v8 animateWithDuration:0 delay:v11 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
    _Block_release(v11);
  }
}

void sub_1C59D45C0(__n128 a1)
{
  v2 = v1;
  v3 = *&v1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  v4 = (v3 - 2) < 3 || v3 == 1;
  if (!v4 && !v3)
  {
    sub_1C59D923C(0);
  }

  v5 = sub_1C5ACC430();
  v6 = [v1 traitCollection];
  [v6 displayScale];
  v37 = v7;

  v8 = sub_1C59D18D4();
  v9 = v8;
  v38 = *(v5 + 16);
  if (v38)
  {
    v10 = 0;
    v11 = &v2[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs];
    v12 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
    if (v8 < 0)
    {
      v13 = v8;
    }

    else
    {
      v13 = v8 & 0xFFFFFFFFFFFFFF8;
    }

    v34 = v13;
    v35 = v8 & 0xC000000000000001;
    v36 = v8 >> 62;
    v14 = 0.125;
    v15 = 5.0;
    v16 = 6.0;
    v17 = 1.0;
    v18 = 0.5;
    while (v10 < *(v5 + 16))
    {
      v19 = *(v5 + 32 + 8 * v10);
      if (v36)
      {
        if (v10 == sub_1C5BCB984())
        {
          goto LABEL_40;
        }
      }

      else if (v10 == *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_40;
      }

      if (v35)
      {
        v20 = MEMORY[0x1C694FD20](v10, v9);
      }

      else
      {
        if (v10 >= *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_44;
        }

        v20 = *(v9 + 8 * v10 + 32);
      }

      v21 = v20;
      v22 = *v11 * v14;
      if (v2[v12] == 1)
      {
        v22 = v22 * v15 / v16;
      }

      [v2 bounds];
      Height = CGRectGetHeight(v40);
      if (v19 < v17)
      {
        Height = v19 * Height;
      }

      if (v22 <= Height)
      {
        v22 = Height;
      }

      v24 = *v11 * v14;
      if (v2[v12] == 1)
      {
        v24 = v24 * v15 / v16;
      }

      v25 = (v19 * 0.12 + v17) * v24;
      v26 = [v21 layer];
      [v26 setCornerRadius_];

      v27 = *v11;
      v28 = v2[v12];
      v29 = *v11 * v14;
      v30 = v29 * v15 / 6.0;
      if (v28 == 1)
      {
        v31 = &unk_1F45137C8;
      }

      else
      {
        v31 = &unk_1F4513790;
      }

      if (v28 == 1)
      {
        v32 = v30;
      }

      else
      {
        v32 = *v11 * v14;
      }

      v33 = v31[2];

      if (v28)
      {
        v29 = v30;
      }

      v18 = 0.5;
      [v21 setFrame_];

      ++v10;
      v14 = 0.125;
      v15 = 5.0;
      v16 = 6.0;
      v17 = 1.0;
      if (v38 == v10)
      {
        goto LABEL_40;
      }
    }

    __break(1u);
LABEL_44:
    __break(1u);
  }

  else
  {
LABEL_40:
  }
}

double sub_1C59D496C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC199F20, &qword_1C5BD88C0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v15 - v3;
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192640, &qword_1C5BD5028);
  v5 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v7 = &v15 - v6;
  if (qword_1EDA490C8 != -1)
  {
    swift_once();
  }

  v8 = *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout);

  v9 = sub_1C5A16718(v8);

  v18 = v9;
  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v10 = sub_1C5BCB5A4();
  v17 = v10;
  v11 = sub_1C5BCB594();
  (*(*(v11 - 8) + 56))(v4, 1, 1, v11);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192648, &qword_1C5BD5030);
  sub_1C5924F54(&qword_1EDA468B8, &qword_1EC192648, &qword_1C5BD5030, MEMORY[0x1E695BED8]);
  sub_1C5931640();
  sub_1C5BC80D4();
  sub_1C5924EF4(v4, &unk_1EC199F20, &qword_1C5BD88C0);

  swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1C5924F54(&qword_1EDA46900, &qword_1EC192640, &qword_1C5BD5028, MEMORY[0x1E695BE98]);
  v12 = v16;
  v13 = sub_1C5BC8114();

  (*(v5 + 8))(v7, v12);
  *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber) = v13;

  return result;
}

double sub_1C59D4CA4()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *&result = MEMORY[0x1EEE9AC00](v2 - 8).n128_u64[0];
  v5 = &v10 - v4;
  v6 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber;
  if (*(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber))
  {
    if (qword_1EDA490C8 != -1)
    {
      swift_once();
    }

    v7 = qword_1EDA5DB00;
    v8 = sub_1C5BCB214();
    (*(*(v8 - 8) + 56))(v5, 1, 1, v8);
    v9 = swift_allocObject();
    v9[2] = 0;
    v9[3] = 0;
    v9[4] = v7;

    sub_1C5AD0FB8(0, 0, v5, &unk_1C5BD5038, v9);

    if (*(v1 + v6))
    {

      sub_1C5BC7EF4();
    }

    *(v1 + v6) = 0;
  }

  return result;
}

void sub_1C59D4E30(__int128 *a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v18 = a1[1];
  v19 = *a1;
  v7 = *(a1 + 4);
  v8 = *(a1 + 5);
  v9 = *(a1 + 48);
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = &Strong[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform];
    *v11 = v19;
    *(v11 + 1) = v18;
    *(v11 + 4) = v7;
    *(v11 + 5) = v8;
    v11[48] = v9;
    v12 = *&Strong[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
    if ((v12 - 2) < 3 || v12 == 1)
    {
    }

    else
    {
      v13 = Strong;
      if (!v12)
      {
        sub_1C59D923C(0);
      }

      v14 = objc_opt_self();
      v15 = swift_allocObject();
      *(v15 + 16) = v13;
      aBlock[4] = a4;
      aBlock[5] = v15;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1C596D09C;
      aBlock[3] = a5;
      v16 = _Block_copy(aBlock);
      v17 = v13;

      [v14 animateWithDuration:0 delay:v16 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];

      _Block_release(v16);
    }
  }
}

id sub_1C59D4FC4()
{
  ObjectType = swift_getObjectType();
  sub_1C59D4CA4();
  v2 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber;
  if (*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber])
  {

    sub_1C5BC7EF4();
  }

  *&v0[v2] = 0;

  v4.receiver = v0;
  v4.super_class = ObjectType;
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1C59D5170()
{
  v0 = sub_1C59D18D4();
  v1 = v0;
  if (!(v0 >> 62))
  {
    v2 = *((v0 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v2)
    {
      goto LABEL_3;
    }

LABEL_20:

    v8 = MEMORY[0x1E69E7CC0];
    if (!(MEMORY[0x1E69E7CC0] >> 62))
    {
      goto LABEL_10;
    }

    goto LABEL_21;
  }

  v2 = sub_1C5BCB984();
  if (!v2)
  {
    goto LABEL_20;
  }

LABEL_3:
  v21 = MEMORY[0x1E69E7CC0];
  result = sub_1C5BCBB44();
  if (v2 < 0)
  {
    __break(1u);
    goto LABEL_26;
  }

  v4 = 0;
  do
  {
    if ((v1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1C694FD20](v4, v1);
    }

    else
    {
      v5 = *(v1 + 8 * v4 + 32);
    }

    v6 = v5;
    ++v4;
    v7 = [v5 layer];

    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    sub_1C5BCBB34();
  }

  while (v2 != v4);

  v8 = v21;
  if (!(v21 >> 62))
  {
LABEL_10:
    v9 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v9)
    {
      goto LABEL_11;
    }

    goto LABEL_22;
  }

LABEL_21:
  v19 = v8;
  result = sub_1C5BCB984();
  v8 = v19;
  v9 = result;
  if (result)
  {
LABEL_11:
    if (v9 >= 1)
    {
      v10 = 0;
      v20 = v8 & 0xC000000000000001;
      v11 = v8;
      do
      {
        if (v20)
        {
          v12 = MEMORY[0x1C694FD20](v10);
        }

        else
        {
          v12 = *(v8 + 8 * v10 + 32);
        }

        v13 = v12;
        v14 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v15 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v16 = sub_1C5BCAE44();
        [v13 removeAnimationForKey_];

        v17 = [v13 presentationLayer];
        if (v17)
        {
          v18 = v17;
          [v17 frame];
          [v13 setFrame_];
          [v18 cornerRadius];
          [v13 setCornerRadius_];
        }

        ++v10;

        v8 = v11;
      }

      while (v9 != v10);
      goto LABEL_22;
    }

LABEL_26:
    __break(1u);
    return result;
  }

LABEL_22:
}

unint64_t sub_1C59D5464(uint64_t a1, __n128 a2)
{
  sub_1C59D45C0(a2);
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16);
  result = sub_1C59D18D4();
  v5 = result;
  if (result >> 62)
  {
    result = sub_1C5BCB984();
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C694FD20](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    [v8 setBackgroundColor_];
  }

LABEL_10:
}

double sub_1C59D5560(uint64_t a1, char *a2)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1930A0, &qword_1C5BD7440);
  *&result = MEMORY[0x1EEE9AC00](v3 - 8).n128_u64[0];
  v6 = &v12 - v5;
  if (*&a2[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode] == 4 && a2[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled] == 1)
  {
    v7 = sub_1C5BCB214();
    (*(*(v7 - 8) + 56))(v6, 1, 1, v7);
    sub_1C5BCB1E4();
    v8 = a2;
    v9 = sub_1C5BCB1D4();
    v10 = swift_allocObject();
    v11 = MEMORY[0x1E69E85E0];
    v10[2] = v9;
    v10[3] = v11;
    v10[4] = v8;
    *&v8[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask] = sub_1C5AD0FB8(0, 0, v6, &unk_1C5BD4FC8, v10);
  }

  return result;
}

double sub_1C59D56C4(uint64_t a1, uint64_t a2)
{
  v3 = *(a1 + 32);

  v3(a2);

  return result;
}

unint64_t sub_1C59D5718(uint64_t a1, __n128 a2)
{
  sub_1C59D45C0(a2);
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 8);
  result = sub_1C59D18D4();
  v5 = result;
  if (result >> 62)
  {
    result = sub_1C5BCB984();
    v6 = result;
    if (!result)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v6 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      goto LABEL_10;
    }
  }

  if (v6 < 1)
  {
    __break(1u);
    return result;
  }

  for (i = 0; i != v6; ++i)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      v8 = MEMORY[0x1C694FD20](i, v5);
    }

    else
    {
      v8 = *(v5 + 8 * i + 32);
    }

    v9 = v8;
    [v8 setBackgroundColor_];
  }

LABEL_10:
}

void sub_1C59D5814(unint64_t a1)
{
  sub_1C59D97B4(a1);
  v2 = v1;

  v3 = v2[2];
  if (v3 < 2)
  {
    return;
  }

  v4 = 0;
  v5 = 0;
  v6 = v3 >> 1;
  v7 = v3 - 1;
  v8 = 16 * v3 + 24;
  v24 = v3 >> 1;
  while (1)
  {
    if (v5 == v7)
    {
      goto LABEL_5;
    }

    v12 = v2[2];
    if (v5 >= v12)
    {
      break;
    }

    if (v7 >= v12)
    {
      goto LABEL_14;
    }

    v13 = v2[v4 + 4];
    v14 = v2[v4 + 5];
    v15 = *(v2 + v8 - 8);
    v16 = *(v2 + v8);
    v17 = v16;
    v18 = v13;
    v19 = v14;
    v20 = v15;
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v2 = sub_1C5BAA66C(v2);
    }

    v21 = &v2[v4];
    v22 = v2[v4 + 4];
    v23 = v2[v4 + 5];
    v21[4] = v20;
    v21[5] = v16;

    if (v7 >= v2[2])
    {
      goto LABEL_15;
    }

    v9 = (v2 + v8);
    v10 = *(v2 + v8 - 8);
    v11 = *(v2 + v8);
    *(v9 - 1) = v18;
    *v9 = v14;

    v6 = v24;
LABEL_5:
    ++v5;
    --v7;
    v8 -= 16;
    v4 += 2;
    if (v6 == v5)
    {
      return;
    }
  }

  __break(1u);
LABEL_14:
  __break(1u);
LABEL_15:
  __break(1u);
}

void sub_1C59D595C(uint64_t a1, __n128 a2)
{
  sub_1C59D45C0(a2);
  v3 = *(a1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  v4 = sub_1C59D18D4();
  v5 = v4;
  if (!(v4 >> 62))
  {
    v6 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (v6)
    {
      goto LABEL_3;
    }

LABEL_10:

    sub_1C59D5A4C();
    return;
  }

  v6 = sub_1C5BCB984();
  if (!v6)
  {
    goto LABEL_10;
  }

LABEL_3:
  if (v6 >= 1)
  {
    for (i = 0; i != v6; ++i)
    {
      if ((v5 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1C694FD20](i, v5);
      }

      else
      {
        v8 = *(v5 + 8 * i + 32);
      }

      v9 = v8;
      [v8 setBackgroundColor_];
    }

    goto LABEL_10;
  }

  __break(1u);
}

void sub_1C59D5A4C()
{
  v3 = *(v1 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset);
  if (!v3)
  {
    return;
  }

  v4 = v1;

  v5 = sub_1C59D9728(3uLL);
  if (v5 > 2)
  {
    goto LABEL_60;
  }

  v45 = byte_1F4513830[v5 + 32];
  v7 = sub_1C59D18D4();
  v1 = v7;
  v0 = v7 >> 62;
  v41 = v3;
  v6 = v7 & 0xFFFFFFFFFFFFFF8;
  if (v7 >> 62)
  {
    goto LABEL_61;
  }

  v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v8 >= 5)
  {
    v9 = 5;
  }

  else
  {
    v9 = v8;
  }

  if (v8 < v9)
  {
LABEL_78:
    __break(1u);
    return;
  }

  while (1)
  {
    if ((v1 & 0xC000000000000001) != 0 && v9)
    {
      v2 = sub_1C592535C(0, &qword_1EDA4E078, 0x1E69DD250);

      sub_1C5BCBAC4();
      if (v9 != 1)
      {
        sub_1C5BCBAC4();
        if (v9 != 2)
        {
          sub_1C5BCBAC4();
          if (v9 != 3)
          {
            sub_1C5BCBAC4();
            if (v9 != 4)
            {
              sub_1C5BCBAC4();
            }
          }
        }
      }
    }

    else
    {
    }

    if (v0)
    {
      v0 = sub_1C5BCBC44();
      v11 = v12;
      v10 = v13;
      v15 = v14;

      v9 = v15 >> 1;
      v3 = v41;
    }

    else
    {
      v10 = 0;
      v0 = v1 & 0xFFFFFFFFFFFFFF8;
      v11 = (v1 & 0xFFFFFFFFFFFFFF8) + 32;
    }

    v16 = v9 - v10;
    if (__OFSUB__(v9, v10))
    {
      goto LABEL_66;
    }

    v2 = MEMORY[0x1E69E7CC0];
    if (!v16)
    {
      goto LABEL_29;
    }

    *&v47[0] = MEMORY[0x1E69E7CC0];
    v1 = v47;
    sub_1C5BCBB44();
    if ((v16 & 0x8000000000000000) == 0)
    {
      break;
    }

    __break(1u);
LABEL_71:
    if (v9 >= 5)
    {
      v39 = 5;
    }

    else
    {
      v39 = v9;
    }

    if (v9 >= 0)
    {
      v9 = v39;
    }

    else
    {
      v9 = 5;
    }

    v3 = v41;
    if (sub_1C5BCB984() < v9)
    {
      goto LABEL_78;
    }
  }

  if (v9 <= v10)
  {
    v6 = v10;
  }

  else
  {
    v6 = v9;
  }

  v0 = v6 - v10;
  v2 = v11 + 8 * v10;
  do
  {
    if (!v0)
    {
      __break(1u);
LABEL_58:
      __break(1u);
      while (2)
      {
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        if (v1 < 0)
        {
          v3 = v1;
        }

        else
        {
          v3 = v6;
        }

        v9 = sub_1C5BCB984();
        if (sub_1C5BCB984() < 0)
        {
          __break(1u);
LABEL_66:
          __break(1u);
LABEL_67:
          v19 = sub_1C5BCB984();
          if (!v19)
          {
            goto LABEL_68;
          }

LABEL_31:
          v20 = 0;
          v44 = (v4 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs);
          v42 = v2 & 0xFFFFFFFFFFFFFF8;
          v43 = v2 & 0xC000000000000001;
          v40 = v2;
LABEL_34:
          if (v43)
          {
            v21 = MEMORY[0x1C694FD20](v20, v2);
          }

          else
          {
            v6 = *(v42 + 16);
            if (v20 >= v6)
            {
              continue;
            }

            v21 = *(v2 + 8 * v20 + 32);
          }

          v22 = v21;
          v0 = v20 + 1;
          if (__OFADD__(v20, 1))
          {
            goto LABEL_58;
          }

          *v47 = *v44;
          v1 = v3;
          v23 = sub_1C59D85A4(v45, v20, v47);
          if (!v23)
          {

            goto LABEL_33;
          }

          v26 = v24;
          v27 = v25;
          v1 = v23;
          v28 = sub_1C5BCAE44();
          v4 = &off_1E822B000;
          [v22 addAnimation:v1 forKey:v28];

          v29 = v26;
          v30 = sub_1C5BCAE44();
          [v22 addAnimation:v29 forKey:v30];

          v31 = v27;
          v32 = sub_1C5BCAE44();
          [v22 addAnimation:v31 forKey:v32];

          v33 = [v29 values];
          if (v33)
          {
            v4 = v33;
            v34 = sub_1C5BCB054();

            if (*(v34 + 16))
            {
              sub_1C592B32C(v34 + 32, v47);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_49;
              }

              v35 = [v1 values];
              if (!v35)
              {
                goto LABEL_53;
              }

              v4 = v35;
              v36 = sub_1C5BCB054();

              if (!*(v36 + 16))
              {
                goto LABEL_54;
              }

              sub_1C592B32C(v36 + 32, v47);

              if ((swift_dynamicCast() & 1) == 0)
              {
                goto LABEL_49;
              }

              v37 = [v31 values];
              if (v37)
              {
                v4 = v37;
                v38 = sub_1C5BCB054();

                if (*(v38 + 16))
                {
                  sub_1C592B32C(v38 + 32, v47);

                  if (swift_dynamicCast())
                  {
                    [v22 frame];
                    [v22 setFrame_];
                    [v22 setCornerRadius_];
                  }

LABEL_49:

                  v3 = v41;
                  v2 = v40;
LABEL_33:
                  ++v20;
                  if (v0 == v19)
                  {
                    goto LABEL_68;
                  }

                  goto LABEL_34;
                }

LABEL_54:
              }

              else
              {
LABEL_53:
              }

              v3 = v41;
              v2 = v40;
              goto LABEL_33;
            }

            v2 = v40;
          }

          else
          {
          }

          v3 = v41;
          goto LABEL_33;
        }

        goto LABEL_71;
      }
    }

    v17 = *v2;
    v2 += 8;
    v18 = [v17 layer];
    sub_1C5BCBB24();
    sub_1C5BCBB54();
    sub_1C5BCBB64();
    v1 = v47;
    sub_1C5BCBB34();
    --v0;
    --v16;
  }

  while (v16);
  v2 = *&v47[0];
  v3 = v41;
LABEL_29:
  if (v2 >> 62)
  {
    goto LABEL_67;
  }

  v19 = *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v19)
  {
    goto LABEL_31;
  }

LABEL_68:

  swift_unknownObjectRelease();
}

void sub_1C59D6154(char *a1, uint64_t a2)
{
  v4 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette];
  v5 = sub_1C59D18D4();
  v6 = v5;
  if (v5 >> 62)
  {
    v7 = sub_1C5BCB984();
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v7 = *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      goto LABEL_10;
    }
  }

  if (v7 < 1)
  {
    __break(1u);
    return;
  }

  for (i = 0; i != v7; ++i)
  {
    if ((v6 & 0xC000000000000001) != 0)
    {
      v9 = MEMORY[0x1C694FD20](i, v6);
    }

    else
    {
      v9 = *(v6 + 8 * i + 32);
    }

    v10 = v9;
    [v9 setBackgroundColor_];
  }

LABEL_10:

  if (a2 == 1)
  {
    v11 = objc_opt_self();
    v12 = swift_allocObject();
    *(v12 + 16) = a1;
    v16[4] = sub_1C59D9E00;
    v16[5] = v12;
    v16[0] = MEMORY[0x1E69E9820];
    v16[1] = 1107296256;
    v16[2] = sub_1C596D09C;
    v16[3] = &block_descriptor_89;
    v13 = _Block_copy(v16);
    sub_1C59D9228(1uLL, v14);
    v15 = a1;

    [v11 animateWithDuration:0 delay:v13 usingSpringWithDamping:0 initialSpringVelocity:0.325 options:0.0 animations:0.8 completion:0.0];
    _Block_release(v13);
  }
}

void sub_1C59D6338(char *a1, uint64_t a2)
{
  *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = a2;

  v4 = swift_allocObject();
  *(v4 + 16) = a1;
  v5 = swift_allocObject();
  *(v5 + 16) = sub_1C59D9E08;
  *(v5 + 24) = v4;
  swift_beginAccess();
  v6 = *(a2 + 24);

  v7 = a1;

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(a2 + 24) = v6;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v6 = sub_1C5B762D0(0, v6[2] + 1, 1, v6);
    *(a2 + 24) = v6;
  }

  v10 = v6[2];
  v9 = v6[3];
  if (v10 >= v9 >> 1)
  {
    v6 = sub_1C5B762D0((v9 > 1), v10 + 1, 1, v6);
  }

  v6[2] = v10 + 1;
  v11 = &v6[2 * v10];
  v11[4] = sub_1C59DA404;
  v11[5] = v5;
  *(a2 + 24) = v6;
  swift_endAccess();

  sub_1C59D78A4();
}

void sub_1C59D6494(char *a1)
{
  v5.receiver = a1;
  v5.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v5, sel_layoutSubviews);
  v3 = *&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v3 - 2) >= 3 && v3 != 1)
  {
    if (!v3)
    {
      sub_1C59D923C(0);
    }

    if (!*&a1[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation])
    {
      sub_1C59D45C0(v2);
    }
  }
}

void sub_1C59D6510()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_layoutSubviews);
  v2 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode];
  if ((v2 - 2) >= 3 && v2 != 1)
  {
    if (!v2)
    {
      sub_1C59D923C(0);
    }

    if (!*&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation])
    {
      sub_1C59D45C0(v1);
    }
  }
}

void sub_1C59D6584()
{
  if (v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout] == 1)
  {
    v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] * 0.125 * 5.0 / 6.0;
  }

  else
  {
    v1 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs] * 0.125;
  }

  [v0 bounds];
  Height = CGRectGetHeight(v61);
  v3 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 16];
  v4 = *&v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette + 24];
  type metadata accessor for AnimationGroup();
  v5 = swift_allocObject();
  v6 = MEMORY[0x1E69E7CC0];
  *(v5 + 16) = MEMORY[0x1E69E7CC0];
  v7 = (v5 + 16);
  *(v5 + 24) = v6;
  v53 = v3;
  v52 = v4;
  v45 = v0;
  v8 = sub_1C59D18D4();
  v9 = v8;
  v46 = v5;
  v44 = (v5 + 24);
  if (v8 >> 62)
  {
    goto LABEL_20;
  }

  for (i = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_1C5BCB984())
  {
    v11 = 0;
    v12 = Height * 0.7;
    v50 = v9 & 0xFFFFFFFFFFFFFF8;
    v51 = v9 & 0xC000000000000001;
    Height = 0.11;
    v48 = i;
    v49 = v9;
    v47 = v7;
    while (1)
    {
      if (v51)
      {
        v13 = MEMORY[0x1C694FD20](v11, v9);
      }

      else
      {
        if (v11 >= *(v50 + 16))
        {
          goto LABEL_19;
        }

        v13 = *(v9 + 8 * v11 + 32);
      }

      v14 = v13;
      if (__OFADD__(v11, 1))
      {
        break;
      }

      v54 = v11 + 1;
      v15 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v16 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v15 timingParameters:0.25];

      v17 = swift_allocObject();
      *(v17 + 16) = v14;
      *(v17 + 24) = v52;
      *(v17 + 32) = v12;
      v59 = sub_1C59DA3FC;
      v60 = v17;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1C596D09C;
      v58 = &block_descriptor_63;
      v18 = _Block_copy(&aBlock);
      v19 = v52;
      v20 = v14;

      [v16 addAnimations_];
      _Block_release(v18);
      v21 = [objc_allocWithZone(MEMORY[0x1E69DC908]) initWithControlPoint1:0.11 controlPoint2:{0.0, 0.5, 0.0}];
      v22 = [objc_allocWithZone(MEMORY[0x1E69DD278]) initWithDuration:v21 timingParameters:0.25];

      v23 = swift_allocObject();
      *(v23 + 16) = v20;
      *(v23 + 24) = v53;
      *(v23 + 32) = v1;
      v59 = sub_1C59D9D78;
      v60 = v23;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v57 = sub_1C596D09C;
      v58 = &block_descriptor_69;
      v24 = _Block_copy(&aBlock);
      v25 = v53;
      v26 = v20;

      [v22 addAnimations_];
      _Block_release(v24);
      v27 = swift_allocObject();
      *(v27 + 16) = v22;
      v59 = sub_1C59D9DE8;
      v60 = v27;
      aBlock = MEMORY[0x1E69E9820];
      v56 = 1107296256;
      v7 = v47;
      v57 = sub_1C59D56C4;
      v58 = &block_descriptor_75;
      v28 = _Block_copy(&aBlock);
      v29 = v22;

      [v16 addCompletion_];
      _Block_release(v28);
      swift_beginAccess();
      v30 = *v47;
      v31 = v16;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      *v47 = v30;
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v30 = sub_1C5B761C4(0, *(v30 + 2) + 1, 1, v30);
        *v47 = v30;
      }

      v34 = *(v30 + 2);
      v33 = *(v30 + 3);
      if (v34 >= v33 >> 1)
      {
        v30 = sub_1C5B761C4((v33 > 1), v34 + 1, 1, v30);
      }

      *(v30 + 2) = v34 + 1;
      v35 = &v30[16 * v34];
      *(v35 + 4) = v31;
      *(v35 + 5) = v11 * 0.1;
      *v47 = v30;
      swift_endAccess();

      ++v11;
      v9 = v49;
      if (v54 == v48)
      {
        goto LABEL_21;
      }
    }

    __break(1u);
LABEL_19:
    __break(1u);
LABEL_20:
    ;
  }

LABEL_21:

  v36 = swift_allocObject();
  *(v36 + 16) = v45;
  v37 = swift_allocObject();
  *(v37 + 16) = sub_1C59DA400;
  *(v37 + 24) = v36;
  swift_beginAccess();
  v38 = *v44;
  v39 = v45;

  v40 = swift_isUniquelyReferenced_nonNull_native();
  *v44 = v38;
  if ((v40 & 1) == 0)
  {
    v38 = sub_1C5B762D0(0, v38[2] + 1, 1, v38);
    *v44 = v38;
  }

  v42 = v38[2];
  v41 = v38[3];
  if (v42 >= v41 >> 1)
  {
    v38 = sub_1C5B762D0((v41 > 1), v42 + 1, 1, v38);
  }

  v38[2] = v42 + 1;
  v43 = &v38[2 * v42];
  v43[4] = sub_1C59DA404;
  v43[5] = v37;
  *(v46 + 24) = v38;
  swift_endAccess();

  *&v39[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation] = v46;

  sub_1C59D78A4();
}

uint64_t sub_1C59D6C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4[2] = a4;
  v5 = sub_1C5BCBB84();
  v4[3] = v5;
  v4[4] = *(v5 - 8);
  v4[5] = swift_task_alloc();
  sub_1C5BCB1E4();
  v4[6] = sub_1C5BCB1D4();
  v7 = sub_1C5BCB194();
  v4[7] = v7;
  v4[8] = v6;

  return MEMORY[0x1EEE6DFA0](sub_1C59D6D08, v7, v6);
}

uint64_t sub_1C59D6D08()
{
  if (sub_1C5BCB2D4())
  {

    v1 = v0[1];

    return v1();
  }

  v3 = v0[2];
  v4 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
  v0[9] = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout;
  sub_1C59D6584();
  v5 = &unk_1F4513760;
  if (!*(v3 + v4))
  {
    v5 = &unk_1F4513728;
  }

  v6 = *v5;

  v7 = 100 * (v6 - 1);
  if (((v6 - 1) * 100) >> 64 != v7 >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = __OFADD__(v7, 500);
  v9 = v7 + 500;
  if (v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 + 600;
  if (__OFADD__(v9, 600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = 1000000000000000 * v10;
  v12 = (v10 * 0x38D7EA4C68000uLL) >> 64;
  sub_1C5BCBEB4();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1C59D6EB0;

  return sub_1C59D9270(v11, v12, 0, 0, 1);
}

uint64_t sub_1C59D6EB0()
{
  v3 = *v1;
  v2 = *v1;

  v4 = v2[5];
  v5 = v2[4];
  v6 = v2[3];
  v7 = (v5 + 8);
  if (v0)
  {

    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1C59DA3F8;
  }

  else
  {
    (*v7)(v4, v6);
    v8 = v3[7];
    v9 = v3[8];
    v10 = sub_1C59D7048;
  }

  return MEMORY[0x1EEE6DFA0](v10, v8, v9);
}

uint64_t sub_1C59D7048()
{
  if (sub_1C5BCB2D4())
  {

    v1 = v0[1];

    return v1();
  }

  v3 = v0[9];
  v4 = v0[2];
  sub_1C59D6584();
  v5 = &unk_1F4513760;
  if (!*(v4 + v3))
  {
    v5 = &unk_1F4513728;
  }

  v6 = *v5;

  v7 = 100 * (v6 - 1);
  if (((v6 - 1) * 100) >> 64 != v7 >> 63)
  {
    __break(1u);
    goto LABEL_15;
  }

  v8 = __OFADD__(v7, 500);
  v9 = v7 + 500;
  if (v8)
  {
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  v10 = v9 + 600;
  if (__OFADD__(v9, 600))
  {
LABEL_16:
    __break(1u);
    goto LABEL_17;
  }

  if (v10 < 0)
  {
LABEL_17:
    __break(1u);
    return result;
  }

  v11 = 1000000000000000 * v10;
  v12 = (v10 * 0x38D7EA4C68000uLL) >> 64;
  sub_1C5BCBEB4();
  v13 = swift_task_alloc();
  v0[10] = v13;
  *v13 = v0;
  v13[1] = sub_1C59D6EB0;

  return sub_1C59D9270(v11, v12, 0, 0, 1);
}

uint64_t sub_1C59D7210()
{
  v1 = v0;
  ObjectType = swift_getObjectType();
  v3 = sub_1C5BCAC14();
  v16 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v15 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = sub_1C5BCAC44();
  v6 = *(v15 - 8);
  *&v7 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v9 = &v15 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18.receiver = v1;
  v18.super_class = ObjectType;
  objc_msgSendSuper2(&v18, sel_tintColorDidChange, v7);
  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v10 = sub_1C5BCB5A4();
  v11 = swift_allocObject();
  *(v11 + 16) = v1;
  aBlock[4] = sub_1C59DA0DC;
  aBlock[5] = v11;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1C596D09C;
  aBlock[3] = &block_descriptor_180;
  v12 = _Block_copy(aBlock);
  v13 = v1;

  sub_1C5BCAC34();
  aBlock[0] = MEMORY[0x1E69E7CC0];
  sub_1C59D9D30(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  sub_1C5BCB8F4();
  MEMORY[0x1C694F7F0](0, v9, v5, v12);
  _Block_release(v12);

  (*(v16 + 8))(v5, v3);
  return (*(v6 + 8))(v9, v15);
}

void sub_1C59D75B4()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_didMoveToWindow);
  v1 = [v0 window];
  if (v1)
  {

    v3 = v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible];
    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 1;
    if (v3 != 1)
    {
      sub_1C59D45C0(v2);
    }
  }

  else
  {
    v0[OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible] = 0;
  }
}

uint64_t sub_1C59D76D8@<X0>(uint64_t *a2@<X8>)
{
  swift_getObjectType();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t sub_1C59D7718(void *a1, uint64_t a2, uint64_t a3, double a4)
{
  if (a2)
  {
    v17[4] = a2;
    v17[5] = a3;
    v17[0] = MEMORY[0x1E69E9820];
    v17[1] = 1107296256;
    v17[2] = sub_1C596D09C;
    v17[3] = &block_descriptor_174;
    v9 = _Block_copy(v17);
    sub_1C5974664(a2, a3);

    [a1 addAnimations_];
    _Block_release(v9);
    sub_1C59A5824(a2, a3);
  }

  swift_beginAccess();
  v10 = *(v4 + 16);
  v11 = a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v4 + 16) = v10;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v10 = sub_1C5B761C4(0, *(v10 + 2) + 1, 1, v10);
    *(v4 + 16) = v10;
  }

  v14 = *(v10 + 2);
  v13 = *(v10 + 3);
  if (v14 >= v13 >> 1)
  {
    v10 = sub_1C5B761C4((v13 > 1), v14 + 1, 1, v10);
  }

  *(v10 + 2) = v14 + 1;
  v15 = &v10[16 * v14];
  *(v15 + 4) = v11;
  *(v15 + 5) = a4;
  *(v4 + 16) = v10;
  return swift_endAccess();
}

void sub_1C59D78A4()
{
  v1 = v0;
  v2 = sub_1C5BCAC14();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v29 = &v21 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_1C5BCAC44();
  v27 = *(v5 - 8);
  v28 = v5;
  MEMORY[0x1EEE9AC00](v5);
  v26 = &v21 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = dispatch_group_create();
  swift_beginAccess();
  v8 = *(*(v0 + 16) + 16);
  if (v8)
  {
    v23 = v0;
    v24 = v3;
    v25 = v2;

    v9 = (v22 + 40);
    do
    {
      v10 = *(v9 - 1);
      v11 = *v9;
      v9 += 2;
      v12 = v10;
      dispatch_group_enter(v7);
      [v12 startAnimationAfterDelay_];
      v13 = swift_allocObject();
      *(v13 + 16) = v7;
      v35 = sub_1C59DA0CC;
      v36 = v13;
      aBlock = MEMORY[0x1E69E9820];
      v32 = 1107296256;
      v33 = sub_1C59D56C4;
      v34 = &block_descriptor_168;
      v14 = _Block_copy(&aBlock);
      v15 = v12;
      v16 = v7;

      [v15 addCompletion_];
      _Block_release(v14);

      --v8;
    }

    while (v8);

    v3 = v24;
    v2 = v25;
    v1 = v23;
  }

  sub_1C592535C(0, &qword_1EDA4E620, 0x1E69E9610);
  v25 = sub_1C5BCB5A4();
  v35 = sub_1C59DA0D4;
  v36 = v1;
  aBlock = MEMORY[0x1E69E9820];
  v32 = 1107296256;
  v33 = sub_1C596D09C;
  v34 = &block_descriptor_171;
  v17 = _Block_copy(&aBlock);

  v18 = v26;
  sub_1C5BCAC34();
  v30 = MEMORY[0x1E69E7CC0];
  sub_1C59D9D30(&qword_1EDA4E6A0, MEMORY[0x1E69E7F60], MEMORY[0x1E69E7F70]);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC1961C0, &unk_1C5BD76A0);
  sub_1C5924F54(&qword_1EDA4E690, &unk_1EC1961C0, &unk_1C5BD76A0, MEMORY[0x1E69E6328]);
  v19 = v29;
  sub_1C5BCB8F4();
  v20 = v25;
  sub_1C5BCB574();
  _Block_release(v17);

  (*(v3 + 8))(v19, v2);
  (*(v27 + 8))(v18, v28);
}

void sub_1C59D7CD8(uint64_t a1)
{
  swift_beginAccess();
  v2 = *(a1 + 24);
  v3 = *(v2 + 16);
  if (v3)
  {

    v4 = v2 + 40;
    do
    {
      v5 = *(v4 - 8);

      v5(v6);

      v4 += 16;
      --v3;
    }

    while (v3);
  }
}

uint64_t sub_1C59D7D6C()
{

  return swift_deallocClassInstance();
}

void sub_1C59D7DD0()
{
  v0 = sub_1C5BC7A24();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v10 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  __swift_allocate_value_buffer(v4, qword_1EDA4BFD0);
  v5 = __swift_project_value_buffer(v0, qword_1EDA4BFD0);
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v6 = qword_1EDA5DD00;
  v7 = sub_1C5BCAE44();
  v8 = sub_1C5BCAE44();
  v9 = [v6 URLForResource:v7 withExtension:v8];

  if (v9)
  {
    sub_1C5BC79E4();

    (*(v1 + 32))(v5, v3, v0);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1C59D7F78()
{
  v1[6] = v0;
  v2 = sub_1C5BC7D64();
  v1[7] = v2;
  v1[8] = *(v2 - 8);
  v1[9] = swift_task_alloc();
  v3 = sub_1C5BC7A24();
  v1[10] = v3;
  v1[11] = *(v3 - 8);
  v1[12] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1C59D8094, 0, 0);
}

uint64_t sub_1C59D8094()
{
  if (qword_1EDA4BFC8 != -1)
  {
    swift_once();
  }

  v2 = v0[11];
  v1 = v0[12];
  v3 = v0[10];
  v4 = __swift_project_value_buffer(v3, qword_1EDA4BFD0);
  (*(v2 + 16))(v1, v4, v3);
  v5 = swift_task_alloc();
  v0[13] = v5;
  *v5 = v0;
  v5[1] = sub_1C59D81A8;
  v6 = v0[12];

  return sub_1C5A5B254(v6);
}

uint64_t sub_1C59D81A8(uint64_t a1, uint64_t a2)
{
  v6 = *v3;
  *(*v3 + 112) = v2;

  if (v2)
  {
    v7 = sub_1C59D835C;
  }

  else
  {
    *(v6 + 120) = a2;
    *(v6 + 128) = a1;
    v7 = sub_1C59D82DC;
  }

  return MEMORY[0x1EEE6DFA0](v7, 0, 0);
}

uint64_t sub_1C59D82DC()
{
  v1 = *(v0 + 48);
  v1[1] = vextq_s8(*(v0 + 120), *(v0 + 120), 8uLL);

  v2 = *(v0 + 8);

  return v2(v1);
}

uint64_t sub_1C59D835C()
{
  v23 = v0;
  if (qword_1EC190510 != -1)
  {
    swift_once();
  }

  v1 = v0[14];
  v3 = v0[8];
  v2 = v0[9];
  v4 = v0[7];
  v5 = __swift_project_value_buffer(v4, qword_1EC1A6970);
  (*(v3 + 16))(v2, v5, v4);
  v6 = v1;
  v7 = sub_1C5BC7D44();
  v8 = sub_1C5BCB4F4();

  v9 = os_log_type_enabled(v7, v8);
  v10 = v0[14];
  v12 = v0[8];
  v11 = v0[9];
  v13 = v0[7];
  if (v9)
  {
    v14 = swift_slowAlloc();
    v15 = swift_slowAlloc();
    v22 = v15;
    *v14 = 136446210;
    swift_getErrorValue();
    v16 = sub_1C5BCBEE4();
    v18 = sub_1C592ADA8(v16, v17, &v22);

    *(v14 + 4) = v18;
    _os_log_impl(&dword_1C5922000, v7, v8, "WaveformPlayIndicator: unable to decode mica asset for WaveformIndicator  %{public}s", v14, 0xCu);
    v19 = __swift_destroy_boxed_opaque_existential_0(v15);
    MEMORY[0x1C69510F0](v15, -1, -1, v19);
    MEMORY[0x1C69510F0](v14, -1, -1);

    (*(v12 + 8))(v11, v13);
  }

  else
  {

    (*(v12 + 8))(v11, v13);
  }

  type metadata accessor for BouncyBarsAsset();
  swift_deallocPartialClassInstance();

  v20 = v0[1];

  return v20(0);
}

NSObject *sub_1C59D85A4(uint64_t a1, unint64_t a2, double *a3)
{
  v6 = sub_1C5BC7D64();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = (&v57 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v57 - v11;
  v14 = *a3;
  v13 = a3[1];
  sub_1C59D8E38(a1, a2);
  if (!v15)
  {
LABEL_25:
    if (qword_1EC190510 != -1)
    {
LABEL_45:
      swift_once();
    }

    v42 = __swift_project_value_buffer(v6, qword_1EC1A6970);
    (*(v7 + 16))(v9, v42, v6);
    v43 = sub_1C5BC7D44();
    v44 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v43, v44))
    {
      v45 = swift_slowAlloc();
      *v45 = 0;
      _os_log_impl(&dword_1C5922000, v43, v44, "WaveformPlayIndicator: BouncyBars asset does not have expected layers / animations", v45, 2u);
      MEMORY[0x1C69510F0](v45, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    return 0;
  }

  v16 = v15;
  v17 = [v15 values];
  if (!v17)
  {

    goto LABEL_25;
  }

  v57 = v12;
  v58 = v7;
  v59 = v6;
  v18 = v17;
  v19 = sub_1C5BCB054();

  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  v9 = sub_1C592535C(0, &qword_1EC192650, 0x1E6979390);
  swift_dynamicCast();
  v20 = v67;
  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v63 = v67;
  v60 = v16;
  [v16 copy];
  sub_1C5BCB8D4();
  swift_unknownObjectRelease();
  swift_dynamicCast();
  v62 = v67;
  v64 = v19;
  v21 = *(v19 + 16);
  if (!v21)
  {
LABEL_30:
    v72 = 0;
    v70 = 0u;
    v71 = 0u;
LABEL_31:

    swift_bridgeObjectRelease_n();
    return v20;
  }

  v22 = 0;
  v23 = v64 + 32;
  v61 = "cannedCornerAnimation";
  v24 = v14 * 0.125;
  v25 = MEMORY[0x1E69E7DE0];
  v6 = &off_1E822B000;
  while (1)
  {
    if (v22 >= v21)
    {
      __break(1u);
LABEL_40:
      __break(1u);
LABEL_41:
      __break(1u);
LABEL_42:
      __break(1u);
LABEL_43:
      __break(1u);
LABEL_44:
      __break(1u);
      goto LABEL_45;
    }

    *&v67 = v22;
    sub_1C592B32C(v23, &v67 + 8);
    v70 = v67;
    v71 = v68;
    v72 = v69;
    if (!v69)
    {
      goto LABEL_31;
    }

    v65 = v67;
    sub_1C593F33C((&v70 + 8), &v67);
    if (!swift_dynamicCast())
    {
      swift_bridgeObjectRelease_n();
      if (qword_1EC190510 != -1)
      {
        swift_once();
      }

      v46 = v59;
      v47 = __swift_project_value_buffer(v59, qword_1EC1A6970);
      v48 = v58;
      v49 = v57;
      (*(v58 + 16))(v57, v47, v46);
      v50 = sub_1C5BC7D44();
      v51 = sub_1C5BCB4F4();
      v52 = os_log_type_enabled(v50, v51);
      v53 = v60;
      if (v52)
      {
        v54 = v60;
        v55 = swift_slowAlloc();
        *v55 = 0;
        _os_log_impl(&dword_1C5922000, v50, v51, "BouncyBars asset does not have expected layers / animations", v55, 2u);
        MEMORY[0x1C69510F0](v55, -1, -1);
        v56 = v63;
        v53 = v62;
      }

      else
      {
        v56 = v50;
        v54 = v20;
        v50 = v62;
        v20 = v63;
      }

      (*(v48 + 8))(v49, v46);
      return 0;
    }

    v26 = v66 / 100.0;
    *(&v68 + 1) = v25;
    *&v67 = v13 * (v66 / 100.0);
    result = [v20 values];
    if (!result)
    {
      break;
    }

    v9 = result;
    v28 = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v28 = sub_1C5BAA6E4(v28);
    }

    v7 = v65;
    if ((v65 & 0x8000000000000000) != 0)
    {
      goto LABEL_40;
    }

    if (v65 >= *(v28 + 16))
    {
      goto LABEL_41;
    }

    v29 = v28 + 32 * v65;
    __swift_destroy_boxed_opaque_existential_0((v29 + 32));
    sub_1C593F33C(&v67, (v29 + 32));
    v30 = sub_1C5BCB044();

    [v20 setValues:v30];

    v31 = v63;
    v32 = sub_1C5BCAE44();
    [v31 setKeyPath:v32];

    if (v24 > v24 * 1.12)
    {
      goto LABEL_42;
    }

    v33 = v24 + (v24 * 1.12 - v24) * v26;
    *(&v68 + 1) = v25;
    *&v67 = v33;
    result = [v31 values];
    if (!result)
    {
      goto LABEL_47;
    }

    v34 = result;
    v9 = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1C5BAA6E4(v9);
    }

    if (v7 >= v9[2].isa)
    {
      goto LABEL_43;
    }

    v35 = &v9[4 * v7];
    __swift_destroy_boxed_opaque_existential_0(&v35[4].isa);
    sub_1C593F33C(&v67, &v35[4]);
    v36 = sub_1C5BCB044();

    [v31 setValues:v36];

    v37 = v62;
    v38 = sub_1C5BCAE44();
    [v37 setKeyPath:v38];

    *(&v68 + 1) = v25;
    *&v67 = v33 * 0.5;
    result = [v37 values];
    if (!result)
    {
      goto LABEL_48;
    }

    v39 = result;
    v9 = sub_1C5BCB054();

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v9 = sub_1C5BAA6E4(v9);
    }

    if (v7 >= v9[2].isa)
    {
      goto LABEL_44;
    }

    ++v22;
    v40 = &v9[4 * v7];
    __swift_destroy_boxed_opaque_existential_0(&v40[4].isa);
    sub_1C593F33C(&v67, &v40[4]);
    v41 = sub_1C5BCB044();

    [v37 setValues:v41];

    v21 = *(v64 + 16);
    v23 += 32;
    if (v22 == v21)
    {
      goto LABEL_30;
    }
  }

  __break(1u);
LABEL_47:
  __break(1u);
LABEL_48:
  __break(1u);
  return result;
}

void sub_1C59D8E38(uint64_t a1, unint64_t a2)
{
  v4 = *(v2 + 16);
  v5 = (a1 << 56) + 0x41746E6169726156;

  v6 = sub_1C59D9014(v5, 0xE800000000000000, v4);

  if (!v6)
  {
    return;
  }

  v7 = [v6 sublayers];

  if (!v7)
  {
    return;
  }

  sub_1C592535C(0, &qword_1EDA45DB0, 0x1E6979398);
  v8 = sub_1C5BCB054();

  if ((v8 & 0xC000000000000001) == 0)
  {
    if ((a2 & 0x8000000000000000) != 0)
    {
      __break(1u);
    }

    else if (*((v8 & 0xFFFFFFFFFFFFFF8) + 0x10) > a2)
    {
      v9 = *(v8 + 8 * a2 + 32);
      goto LABEL_7;
    }

    __break(1u);
    return;
  }

  v9 = MEMORY[0x1C694FD20](a2, v8);
LABEL_7:
  v10 = v9;

  v11 = [v10 animationKeys];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1C5BCB054();

    if (*(v13 + 16))
    {

      v14 = sub_1C5BCAE44();

      v15 = [v10 animationForKey_];

      if (v15)
      {
        objc_opt_self();
        if (!swift_dynamicCastObjCClass())
        {
        }
      }
    }

    else
    {
    }
  }

  else
  {
  }
}

uint64_t sub_1C59D9014(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (*(a3 + 16) && (v4 = sub_1C596FBD8(a1, a2), (v5 & 1) != 0))
  {
    sub_1C592B32C(*(a3 + 56) + 32 * v4, v7);
  }

  else
  {
    memset(v7, 0, sizeof(v7));
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC191700, &unk_1C5BD5040);
  sub_1C592535C(0, &qword_1EDA45DB0, 0x1E6979398);
  if (swift_dynamicCast())
  {
    return v8;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59D90BC()
{

  return swift_deallocClassInstance();
}

uint64_t sub_1C59D9128(uint64_t *a1, int a2)
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

uint64_t sub_1C59D9180()
{
  v0 = sub_1C5BC7D64();
  __swift_allocate_value_buffer(v0, qword_1EC1A6970);
  __swift_project_value_buffer(v0, qword_1EC1A6970);
  return sub_1C5BC7D54();
}

double sub_1C59D9228(unint64_t a1, __n128 a2)
{
  if (a1 - 2 >= 3)
  {
    sub_1C59D923C(a1);
  }

  return result;
}

unint64_t sub_1C59D923C(unint64_t result)
{
  if (result >= 2)
  {
  }

  return result;
}

double sub_1C59D924C(unint64_t result)
{
  if (result - 2 >= 3)
  {
    return sub_1C59D9260(result);
  }

  return v1;
}

double sub_1C59D9260(unint64_t a1)
{
  if (a1 >= 2)
  {
  }

  return result;
}

uint64_t sub_1C59D9270(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, char a5)
{
  *(v6 + 56) = v5;
  v12 = sub_1C5BCBB74();
  *(v6 + 64) = v12;
  *(v6 + 72) = *(v12 - 8);
  *(v6 + 80) = swift_task_alloc();
  *(v6 + 88) = swift_task_alloc();
  *(v6 + 40) = a1;
  *(v6 + 48) = a2;
  *(v6 + 16) = a3;
  *(v6 + 24) = a4;
  *(v6 + 32) = a5 & 1;

  return MEMORY[0x1EEE6DFA0](sub_1C59D9370, 0, 0);
}

uint64_t sub_1C59D9370()
{
  v1 = v0[10];
  v2 = v0[8];
  v3 = v0[9];
  v4 = sub_1C5BCBB84();
  v5 = sub_1C59D9D30(&qword_1EDA45D18, MEMORY[0x1E69E8820], MEMORY[0x1E69E8828]);
  sub_1C5BCBE94();
  sub_1C59D9D30(&qword_1EDA45D20, MEMORY[0x1E69E87E8], MEMORY[0x1E69E8818]);
  sub_1C5BCBB94();
  v6 = *(v3 + 8);
  v0[12] = v6;
  v0[13] = (v3 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v6(v1, v2);
  v7 = swift_task_alloc();
  v0[14] = v7;
  *v7 = v0;
  v7[1] = sub_1C59D9500;
  v8 = v0[11];

  return MEMORY[0x1EEE6DE58](v8, v0 + 2, v4, v5);
}

uint64_t sub_1C59D9500()
{
  v2 = *(*v1 + 96);
  v3 = *(*v1 + 88);
  v4 = *(*v1 + 64);
  v5 = *v1;
  *(v5 + 120) = v0;

  v2(v3, v4);
  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1C59D96BC, 0, 0);
  }

  else
  {

    v6 = *(v5 + 8);

    return v6();
  }
}

uint64_t sub_1C59D96BC()
{

  v1 = *(v0 + 8);

  return v1();
}

unint64_t sub_1C59D9728(unint64_t result)
{
  if (result)
  {
    v1 = result;
    v3 = 0;
    MEMORY[0x1C6951110](&v3, 8);
    result = (v3 * v1) >> 64;
    if (v3 * v1 < v1)
    {
      v2 = -v1 % v1;
      if (v2 > v3 * v1)
      {
        do
        {
          v3 = 0;
          MEMORY[0x1C6951110](&v3, 8);
        }

        while (v2 > v3 * v1);
        return (v3 * v1) >> 64;
      }
    }
  }

  else
  {
    __break(1u);
  }

  return result;
}

void sub_1C59D97B4(unint64_t a1)
{

  v2 = 0;
  v3 = MEMORY[0x1E69E7CC0];
  for (i = (MEMORY[0x1E69E7CC0] + 32); ; i += 2)
  {
    v5 = a1 >> 62;
    if (a1 >> 62)
    {
      break;
    }

    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_53;
    }

LABEL_4:
    if ((a1 & 0xC000000000000001) != 0)
    {
      v6 = MEMORY[0x1C694FD20](0, a1);
    }

    else
    {
      if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_58:
        __break(1u);
LABEL_59:
        __break(1u);
LABEL_60:
        __break(1u);
LABEL_61:
        __break(1u);
LABEL_62:
        __break(1u);
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v6 = *(a1 + 32);
    }

    v7 = v6;
    if (v5)
    {
      if (!sub_1C5BCB984())
      {
        goto LABEL_61;
      }

      if (sub_1C5BCB984() < 1)
      {
        goto LABEL_62;
      }

      v8 = sub_1C5BCB984();
    }

    else
    {
      v8 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v8)
      {
        goto LABEL_61;
      }
    }

    v9 = v8 - 1;
    if (__OFSUB__(v8, 1))
    {
      goto LABEL_58;
    }

    if (swift_isUniquelyReferenced_nonNull_bridgeObject())
    {
      if (!v5)
      {
        v10 = a1 & 0xFFFFFFFFFFFFFF8;
        if (v9 <= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          goto LABEL_21;
        }

        goto LABEL_20;
      }

LABEL_19:
      sub_1C5BCB984();
      goto LABEL_20;
    }

    if (v5)
    {
      goto LABEL_19;
    }

LABEL_20:
    a1 = sub_1C5BCBAF4();
    v10 = a1 & 0xFFFFFFFFFFFFFF8;
LABEL_21:

    if (a1 >> 62)
    {
      v17 = sub_1C5BCB984();
      if (__OFSUB__(v17, 1))
      {
        goto LABEL_67;
      }

      memmove((v10 + 32), (v10 + 40), 8 * (v17 - 1));
      v18 = sub_1C5BCB984();
      if (__OFSUB__(v18, 1))
      {
        goto LABEL_68;
      }

      *(v10 + 16) = v18 - 1;
      if (!sub_1C5BCB984())
      {
LABEL_39:
        v15 = 0;
        if (v2)
        {
          goto LABEL_28;
        }

        goto LABEL_40;
      }
    }

    else
    {
      v11 = *(v10 + 16);
      memmove((v10 + 32), (v10 + 40), 8 * v11 - 8);
      *(v10 + 16) = v11 - 1;
      if (v11 == 1)
      {
        goto LABEL_39;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
    if (a1 >> 62 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
    {
      a1 = sub_1C5BAA680(a1);
      v10 = a1 & 0xFFFFFFFFFFFFFF8;
    }

    v13 = *(v10 + 16);
    if (!v13)
    {
      goto LABEL_60;
    }

    v14 = v13 - 1;
    v15 = *(v10 + 8 * v14 + 32);
    *(v10 + 16) = v14;
    if (v2)
    {
LABEL_28:
      v16 = __OFSUB__(v2--, 1);
      if (v16)
      {
        goto LABEL_59;
      }

      goto LABEL_52;
    }

LABEL_40:
    v19 = v3[3];
    if (((v19 >> 1) + 0x4000000000000000) < 0)
    {
      goto LABEL_63;
    }

    v20 = v19 & 0xFFFFFFFFFFFFFFFELL;
    if (v20 <= 1)
    {
      v21 = 1;
    }

    else
    {
      v21 = v20;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192620, &qword_1C5BF06B0);
    v22 = swift_allocObject();
    v23 = _swift_stdlib_malloc_size(v22);
    v24 = v23 - 32;
    if (v23 < 32)
    {
      v24 = v23 - 17;
    }

    v25 = v24 >> 4;
    v22[2] = v21;
    v22[3] = 2 * (v24 >> 4);
    v26 = (v22 + 4);
    v27 = v3[3] >> 1;
    if (v3[2])
    {
      v28 = v3 + 4;
      if (v22 != v3 || v26 >= v28 + 16 * v27)
      {
        memmove(v22 + 4, v28, 16 * v27);
      }

      v3[2] = 0;
    }

    i = (v26 + 16 * v27);
    v29 = (v25 & 0x7FFFFFFFFFFFFFFFLL) - v27;

    v3 = v22;
    v16 = __OFSUB__(v29, 1);
    v2 = v29 - 1;
    if (v16)
    {
      goto LABEL_59;
    }

LABEL_52:
    *i = v7;
    i[1] = v15;
  }

  if (sub_1C5BCB984())
  {
    if (!sub_1C5BCB984())
    {
      goto LABEL_65;
    }

    if (!sub_1C5BCB984())
    {
      goto LABEL_66;
    }

    goto LABEL_4;
  }

LABEL_53:

  v30 = v3[3];
  if (v30 < 2)
  {
    return;
  }

  v31 = v30 >> 1;
  v16 = __OFSUB__(v31, v2);
  v32 = v31 - v2;
  if (!v16)
  {
    v3[2] = v32;
    return;
  }

LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
LABEL_66:
  __break(1u);
LABEL_67:
  __break(1u);
LABEL_68:
  __break(1u);
}

BOOL sub_1C59D9B20(uint64_t *a1, uint64_t *a2, __n128 a3)
{
  v3 = *a1;
  v4 = *a2;
  if (*a1 <= 1)
  {
    if (v3)
    {
      if (v3 == 1)
      {
        if (v4 == 1)
        {
          v5.n128_f64[0] = sub_1C59D9228(1uLL, a3);
          sub_1C59D9228(1uLL, v5);
          return 0;
        }

        sub_1C59D923C(1uLL);
        return 1;
      }
    }

    else
    {
      sub_1C59D923C(0);
    }
  }

  else
  {
    switch(v3)
    {
      case 2:
        return v4 != 2;
      case 3:
        return v4 != 3;
      case 4:
        return v4 != 4;
    }
  }

  if ((v4 - 2) >= 3)
  {
    if (v4 != 1)
    {
      if (!v4)
      {
        sub_1C59D923C(0);
        return 0;
      }

      return 0;
    }
  }

  else if (v3 == 4)
  {
    return v4 != 4;
  }

  return 1;
}

id sub_1C59D9C18()
{
  v1 = *(v0 + 24);
  [*(v0 + 16) setAlpha_];

  return [v1 setAlpha_];
}

uint64_t sub_1C59D9C7C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59D6C14(a1, v4, v5, v6);
}

uint64_t sub_1C59D9D30(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

id sub_1C59D9D7C()
{
  v1 = *(v0 + 16);
  [v1 setBackgroundColor_];
  [v1 bounds];

  return [v1 setBounds_];
}

id sub_1C59D9DE8(id result)
{
  if (!result)
  {
    return [*(v1 + 16) startAnimation];
  }

  return result;
}

double sub_1C59D9E08()
{
  *(*(v0 + 16) + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;

  return result;
}

uint64_t sub_1C59D9E28(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C59D209C(a1, v4, v5, v6);
}

uint64_t sub_1C59D9F1C(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C5A14030(a1, v4, v5, v6);
}

uint64_t sub_1C59D9FD0(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592ABD4;

  return sub_1C5A13C0C(a1, v4, v5, v6);
}

void sub_1C59DA100()
{
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isBufferingPulseEnabled) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waitToEnableBufferingPulseTask) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_hasAppliedInitialState) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_inputMode) = 2;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_mode) = 2;
  v1 = (v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_colorPalette);
  if (qword_1EDA48EA0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA48EA8;
  v3 = unk_1EDA48EB0;
  v4 = qword_1EDA48EB8;
  v5 = unk_1EDA48EC0;
  *v1 = qword_1EDA48EA8;
  v1[1] = v3;
  v1[2] = v4;
  v1[3] = v5;
  v6 = OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_sizeSpecs;
  v7 = qword_1EDA4DAE0;
  v8 = v2;
  v9 = v3;
  v10 = v4;
  v11 = v5;
  if (v7 != -1)
  {
    swift_once();
  }

  *(v0 + v6) = xmmword_1EDA5DB50;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_barLayout) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_defaultWaveformValueSubscriber) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_customWaveformValueSubscriber) = 0;
  v12 = v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_waveform;
  *v12 = 0u;
  *(v12 + 16) = 0u;
  *(v12 + 32) = 0u;
  *(v12 + 48) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_exclusiveAnimation) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_pulseTask) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_isVisible) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator____lazy_storage___bars) = 0;
  *(v0 + OBJC_IVAR____TtC11MediaCoreUI21WaveformPlayIndicator_cannedAnimationAsset) = 0;
  sub_1C5BCBBC4();
  __break(1u);
}

uint64_t objectdestroy_51Tm()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

uint64_t sub_1C59DA304(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = swift_task_alloc();
  *(v2 + 16) = v7;
  *v7 = v2;
  v7[1] = sub_1C592A748;

  return sub_1C59D1938(a1, v4, v5, v6);
}

uint64_t sub_1C59DA44C()
{
  v1 = v0;
  v2 = sub_1C5BC7CE4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v16 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = _s18SingleFireSignpostVMa(0);
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v16 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (qword_1EC190518 != -1)
  {
    swift_once();
  }

  v9 = __swift_project_value_buffer(v2, qword_1EC1A6988);
  v10 = *(v3 + 16);
  v17 = v9;
  v10(v5, v9, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v11 = &v8[*(v6 + 20)];
  *v11 = "Looper Configuration";
  *(v11 + 1) = 20;
  v11[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12 = *(v3 + 8);
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperConfiguration);
  v10(v5, v9, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v13 = &v8[*(v6 + 20)];
  *v13 = "Geometry Computation";
  *(v13 + 1) = 20;
  v13[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_geometry);
  v10(v5, v17, v2);
  *&v8[*(v6 + 28)] = 0;
  v10(v8, v5, v2);
  v14 = &v8[*(v6 + 20)];
  *v14 = "Looper Begin Playback";
  *(v14 + 1) = 21;
  v14[16] = 2;
  sub_1C5BC7CC4();
  sub_1C5BC7C64();
  v12(v5, v2);
  sub_1C59DAA68(v8, v1 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperBeginPlayback);
  return v1;
}

uint64_t sub_1C59DA764()
{
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperConfiguration);
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_geometry);
  sub_1C59DA8D0(v0 + OBJC_IVAR____TtC11MediaCoreUI15MotionSignposts_looperBeginPlayback);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for MotionSignposts(uint64_t a1)
{
  result = qword_1EC192658;
  if (!qword_1EC192658)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1C59DA83C(uint64_t a1)
{
  result = _s18SingleFireSignpostVMa(319);
  if (v2 <= 0x3F)
  {
    result = swift_updateClassMetadata2();
    if (!result)
    {
      return 0;
    }
  }

  return result;
}

uint64_t sub_1C59DA8D0(uint64_t a1)
{
  v2 = _s18SingleFireSignpostVMa(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1C59DA92C()
{
  v0 = sub_1C5BC7D64();
  v1 = *(v0 - 8);
  MEMORY[0x1EEE9AC00](v0);
  v3 = &v7 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1C5BC7CE4();
  __swift_allocate_value_buffer(v4, qword_1EC1A6988);
  __swift_project_value_buffer(v4, qword_1EC1A6988);
  if (qword_1EDA4E1C0 != -1)
  {
    swift_once();
  }

  v5 = __swift_project_value_buffer(v0, qword_1EDA5DB60);
  (*(v1 + 16))(v3, v5, v0);
  return sub_1C5BC7CB4();
}

uint64_t sub_1C59DAA68(uint64_t a1, uint64_t a2)
{
  v4 = _s18SingleFireSignpostVMa(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

BOOL sub_1C59DAACC()
{
  v1 = sub_1C5BC8F34();
  v2 = *(v1 - 8);
  MEMORY[0x1EEE9AC00](v1);
  v4 = v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1C59416B4(v21);
  v5 = v22;
  v6 = v23;
  __swift_project_boxed_opaque_existential_0(v21, v22);
  *&v25[10] = *(v0 + 154);
  v7 = v0[9];
  v24[2] = v0[8];
  *v25 = v7;
  v8 = v0[7];
  v24[0] = v0[6];
  v24[1] = v8;
  if (v25[25])
  {
    v9 = v0[9];
    v19 = v0[8];
    v20[0] = v9;
    *(v20 + 9) = *(v0 + 153);
    v10 = v0[7];
    v17 = v0[6];
    v18 = v10;
  }

  else
  {

    sub_1C5BCB4E4();
    v11 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    sub_1C5924EF4(v24, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v2 + 8))(v4, v1);
  }

  v15[2] = v19;
  v16[0] = v20[0];
  *(v16 + 9) = *(v20 + 9);
  v15[0] = v17;
  v15[1] = v18;
  v12 = (*(v6 + 16))(v15, v5, v6);
  v13 = sub_1C593EBD4(3u, v12);

  __swift_destroy_boxed_opaque_existential_0(v21);
  return v13;
}

uint64_t sub_1C59DACE8(uint64_t a1)
{
  v36 = sub_1C5BC8F34();
  v35 = *(v36 - 8);
  MEMORY[0x1EEE9AC00](v36);
  v34 = v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *(a1 + 16);
  v4 = *(a1 + 24);
  swift_getAssociatedTypeWitness();
  swift_getAssociatedConformanceWitness();
  swift_getAssociatedTypeWitness();
  sub_1C5BCB804();
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30, &qword_1C5BE3D80);
  sub_1C5BC8AB4();
  sub_1C5BC8AB4();
  sub_1C5BC97C4();
  sub_1C5BC8AB4();
  sub_1C5BCB804();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A38, &unk_1C5BD67F0);
  _s23MarqueeTitleAndSubtitleVMa(255, v5, v4, v6);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  sub_1C5BCAB74();
  swift_getWitnessTable();
  sub_1C5BCA7D4();
  v39 = v5;
  v40 = v4;
  type metadata accessor for MetadataStyleModifier(255, v5, v4, v7);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v8 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v9 = sub_1C5BCA714();
  v38 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v32 - v10;
  v12 = sub_1C5BC8AB4();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = v32 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v16);
  v18 = v32 - v17;
  *&v48[10] = *(v1 + 154);
  v19 = v1[9];
  v47[2] = v1[8];
  *v48 = v19;
  v20 = v1[7];
  v47[0] = v1[6];
  v47[1] = v20;
  if (v48[25])
  {
    v21 = v1[9];
    v45 = v1[8];
    v46[0] = v21;
    *(v46 + 9) = *(v1 + 153);
    v22 = v1[7];
    v43 = v1[6];
    v44 = v22;
  }

  else
  {
    v33 = v13;

    sub_1C5BCB4E4();
    v23 = sub_1C5BC9844();
    v32[1] = v8;
    v24 = v23;
    sub_1C5BC7C54();

    v25 = v34;
    sub_1C5BC8F24();
    v13 = v33;
    swift_getAtKeyPath();
    sub_1C5924EF4(v47, &unk_1EC194DE0, &qword_1C5BDCD20);
    (*(v35 + 8))(v25, v36);
  }

  if (BYTE2(v44) == 1)
  {
    v26 = sub_1C5BC8F94();
  }

  else
  {
    v26 = sub_1C5BC8FC4();
  }

  MEMORY[0x1EEE9AC00](v26);
  v27 = v40;
  v32[-4] = v39;
  v32[-3] = v27;
  v32[-2] = v1;
  sub_1C5BCA704();
  v28 = swift_getWitnessTable();
  MEMORY[0x1C694E550](v28, v9, MEMORY[0x1E697FB10], v28);
  (*(v38 + 8))(v11, v9);
  v41 = v28;
  v42 = MEMORY[0x1E697FB08];
  v29 = swift_getWitnessTable();
  sub_1C593EDC0(v15, v12, v29);
  v30 = *(v13 + 8);
  v30(v15, v12);
  sub_1C593EDC0(v18, v12, v29);
  return (v30)(v18, v12);
}

uint64_t sub_1C59DB384@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v144 = a4;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A38, &unk_1C5BD67F0);
  _s23MarqueeTitleAndSubtitleVMa(255, a2, a3, v7);
  sub_1C5BC8AB4();
  swift_getTupleTypeMetadata2();
  v8 = sub_1C5BCAB74();
  WitnessTable = swift_getWitnessTable();
  v133 = v8;
  v9 = sub_1C5BCA7D4();
  v138 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v112 - v10;
  v12 = type metadata accessor for MetadataStyleModifier(255, a2, a3, v11);
  v139 = v9;
  v136 = v12;
  v13 = sub_1C5BC8AB4();
  v140 = *(v13 - 8);
  v141 = v13;
  MEMORY[0x1EEE9AC00](v13);
  v143 = &v112 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v135 = &v112 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v142 = &v112 - v18;
  v125 = type metadata accessor for ArtworkCornerStyle(0);
  MEMORY[0x1EEE9AC00](v125);
  v129 = &v112 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v148 = swift_getAssociatedTypeWitness();
  v22 = sub_1C5BCB804();
  v121 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v120 = &v112 - v23;
  v24 = sub_1C5950C90();
  *&v183 = &type metadata for NowPlayingLookupID;
  *(&v183 + 1) = AssociatedTypeWitness;
  *&v184 = v24;
  *(&v184 + 1) = AssociatedConformanceWitness;
  v153 = AssociatedConformanceWitness;
  v25 = type metadata accessor for ViewProvider(0, &v183);
  v117 = *(v25 - 8);
  v118 = v25;
  MEMORY[0x1EEE9AC00](v25);
  v116 = &v112 - v26;
  v147 = v22;
  v27 = sub_1C5BC8AB4();
  v122 = *(v27 - 8);
  MEMORY[0x1EEE9AC00](v27);
  v119 = &v112 - v28;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A28, &unk_1C5BD67E0);
  v150 = v27;
  v29 = sub_1C5BC8AB4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A30, &qword_1C5BE3D80);
  v30 = sub_1C5BC8AB4();
  v126 = *(v30 - 8);
  MEMORY[0x1EEE9AC00](v30);
  v123 = &v112 - v31;
  v152 = v32;
  v33 = sub_1C5BC8AB4();
  v127 = *(v33 - 8);
  MEMORY[0x1EEE9AC00](v33);
  v124 = &v112 - v34;
  sub_1C5BC97C4();
  v149 = v33;
  v35 = sub_1C5BC8AB4();
  v36 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v130 = &v112 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v38);
  v128 = &v112 - v39;
  v151 = sub_1C5BCB804();
  v131 = *(v151 - 8);
  MEMORY[0x1EEE9AC00](v151);
  v41 = &v112 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v42);
  v155 = &v112 - v43;
  _s19DefaultMetadataViewVMa(0, a2, a3, v44);
  v45 = sub_1C59DAACC();
  v46 = MEMORY[0x1E697F568];
  v134 = AssociatedTypeWitness;
  v145 = v35;
  v146 = v29;
  v154 = v41;
  if (v45)
  {
    v113 = v36;
    v114 = a1;
    sub_1C59498C4(a1[4], a1[5], a2, *(a3 + 8));
    v47 = v147;
    v48 = *(a3 + 384);
    swift_unknownObjectRetain();
    v49 = v116;
    v115 = a2;
    v112 = a3;
    v48(a2, a3);
    swift_unknownObjectRelease();
    *&v183 = 0x617461646174654DLL;
    *(&v183 + 1) = 0xEF6B726F77747241;
    v50 = v120;
    v51 = v118;
    sub_1C595BC70();

    (*(v117 + 8))(v49, v51);
    v166 = swift_getAssociatedConformanceWitness();
    v52 = swift_getWitnessTable();
    v53 = v119;
    sub_1C5BC9D94();
    (*(v121 + 8))(v50, v47);
    v54 = *(v125 + 20);
    v55 = *MEMORY[0x1E697F480];
    v56 = sub_1C5BC9044();
    v57 = v129;
    (*(*(v56 - 8) + 104))(&v129[v54], v55, v56);
    *v57 = 0x4014000000000000;
    v58 = v53;
    if (qword_1EDA4DAD0 != -1)
    {
      swift_once();
    }

    v183 = xmmword_1EDA5DB28;
    v184 = *algn_1EDA5DB38;
    v185 = qword_1EDA5DB48;
    v164 = v52;
    v165 = MEMORY[0x1E697F568];
    v59 = v150;
    v60 = swift_getWitnessTable();
    v61 = v123;
    sub_1C5AC1394(v57, &v183, v59, v60, v123, 0.5);
    sub_1C59E79E4(v57);
    (*(v122 + 8))(v58, v59);
    sub_1C5BCAA54();
    v62 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28, &unk_1C5BD67E0, &unk_1C5BE52F0);
    v162 = v60;
    v163 = v62;
    v63 = swift_getWitnessTable();
    v64 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30, &qword_1C5BE3D80, MEMORY[0x1E6980A18]);
    v160 = v63;
    v161 = v64;
    v110 = v152;
    v111 = swift_getWitnessTable();
    v65 = v124;
    sub_1C5BCA244();
    (*(v126 + 8))(v61, v110);
    v158 = v111;
    v159 = MEMORY[0x1E697EBF8];
    v66 = v149;
    v67 = swift_getWitnessTable();
    v68 = v130;
    sub_1C595BB1C(0xD00000000000001ALL, 0x80000001C5BF6A20, v66);
    (*(v127 + 8))(v65, v66);
    v69 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v156 = v67;
    v157 = v69;
    v70 = v145;
    v71 = swift_getWitnessTable();
    v72 = v128;
    sub_1C593EDC0(v68, v70, v71);
    v73 = v113;
    v74 = *(v113 + 8);
    v74(v68, v70);
    sub_1C593EDC0(v72, v70, v71);
    v74(v72, v70);
    v75 = v154;
    (*(v73 + 32))(v154, v68, v70);
    (*(v73 + 56))(v75, 0, 1, v70);
    a3 = v112;
    a1 = v114;
    a2 = v115;
  }

  else
  {
    (*(v36 + 56))(v41, 1, 1, v35);
    v182[15] = swift_getAssociatedConformanceWitness();
    v182[13] = swift_getWitnessTable();
    v182[14] = v46;
    v76 = swift_getWitnessTable();
    v77 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28, &unk_1C5BD67E0, &unk_1C5BE52F0);
    v182[11] = v76;
    v182[12] = v77;
    v78 = swift_getWitnessTable();
    v79 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30, &qword_1C5BE3D80, MEMORY[0x1E6980A18]);
    v182[9] = v78;
    v182[10] = v79;
    v182[7] = swift_getWitnessTable();
    v182[8] = MEMORY[0x1E697EBF8];
    v80 = swift_getWitnessTable();
    v81 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    v182[5] = v80;
    v182[6] = v81;
    swift_getWitnessTable();
    v75 = v41;
  }

  sub_1C5941600(v75, v155);
  v82 = v131;
  v83 = *(v131 + 8);
  v130 = (v131 + 8);
  WitnessTable = v83;
  v83(v75, v151);
  sub_1C5BC9144();
  v84 = [objc_opt_self() currentTraitCollection];
  [v84 displayScale];

  MEMORY[0x1EEE9AC00](v85);
  v86 = v137;
  sub_1C5BCA7C4();
  v87 = sub_1C59498C4(a1[4], a1[5], a2, *(a3 + 8));
  v88 = a1[1];
  swift_beginAccess();
  sub_1C59318C8(v88 + 80, v182);
  swift_unknownObjectRetain();
  v89 = v139;
  v90 = swift_getWitnessTable();
  v91 = v135;
  sub_1C59DD4E8(v87, v182, v89, a2, v90, a3);
  swift_unknownObjectRelease();
  v92 = __swift_destroy_boxed_opaque_existential_0(v182);
  (*(v138 + 8))(v86, v89, v92);
  v93 = swift_getWitnessTable();
  v181[2] = v90;
  v181[3] = v93;
  v94 = v141;
  v139 = swift_getWitnessTable();
  v95 = v142;
  sub_1C593EDC0(v91, v94, v139);
  v96 = v140;
  v97 = *(v140 + 8);
  v97(v91, v94);
  v98 = v154;
  v99 = v151;
  (*(v82 + 16))(v154, v155, v151);
  v182[0] = v98;
  v100 = v143;
  (*(v96 + 16))(v143, v95, v94);
  v182[1] = v100;
  v181[0] = v99;
  v101 = v99;
  v181[1] = v94;
  v178 = swift_getAssociatedConformanceWitness();
  v176 = swift_getWitnessTable();
  v177 = MEMORY[0x1E697F568];
  v102 = swift_getWitnessTable();
  v103 = sub_1C5924F54(&qword_1EC192A40, &qword_1EC192A28, &unk_1C5BD67E0, &unk_1C5BE52F0);
  v174 = v102;
  v175 = v103;
  v104 = swift_getWitnessTable();
  v105 = sub_1C5924F54(&qword_1EDA46180, &qword_1EC192A30, &qword_1C5BE3D80, MEMORY[0x1E6980A18]);
  v172 = v104;
  v173 = v105;
  v170 = swift_getWitnessTable();
  v171 = MEMORY[0x1E697EBF8];
  v106 = swift_getWitnessTable();
  v107 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v168 = v106;
  v169 = v107;
  v167 = swift_getWitnessTable();
  v179 = swift_getWitnessTable();
  v180 = v139;
  sub_1C594226C(v182, 2uLL, v181);
  v97(v95, v94);
  v108 = WitnessTable;
  WitnessTable(v155, v101);
  v97(v100, v94);
  return v108(v154, v101);
}

uint64_t sub_1C59DC610@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>, uint64_t a5@<X3>)
{
  v5 = a3;
  v6 = a2;
  v128 = a4;
  v8 = _s23MarqueeTitleAndSubtitleVMa(255, a2, a3, a5);
  v125 = type metadata accessor for MCUINamespace(0, v8, v9, v10);
  v123 = *(v125 - 8);
  MEMORY[0x1EEE9AC00](v125);
  v122 = &v99 - v11;
  v118 = *(v8 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v117 = &v99 - v13;
  v121 = v8;
  v120 = sub_1C5BC8AB4();
  v124 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v127 = &v99 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v15);
  v119 = &v99 - v16;
  MEMORY[0x1EEE9AC00](v17);
  v126 = &v99 - v18;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v106);
  v113 = &v99 - v19;
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A48, &qword_1C5BD6800);
  MEMORY[0x1EEE9AC00](v105);
  v112 = &v99 - v20;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A50, &qword_1C5BD6808);
  v110 = *(v21 - 8);
  v111 = v21;
  MEMORY[0x1EEE9AC00](v21);
  v109 = &v99 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A58, &qword_1C5BD6810);
  v24 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v108 = &v99 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v26);
  v107 = &v99 - v27;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A38, &unk_1C5BD67F0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v99 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v99 - v30;
  v32 = *(a1 + 8);
  swift_beginAccess();
  v33 = *(v32 + 24);
  v129 = v31;
  v130 = a1;
  if (v33 && (v34 = *(v32 + 16), v114 = v24, v35 = *(a1 + 24), swift_beginAccess(), v36 = *(v35 + 16), v24 = v114, (v36 & 1) == 0))
  {
    v100 = v23;
    v37 = qword_1EC190520;

    if (v37 != -1)
    {
      swift_once();
    }

    v101 = v5;
    v102 = v6;
    if (byte_1EC192680 == 1)
    {
      v34 = sub_1C5BCAEC4();
      v39 = v38;

      v33 = v39;
    }

    *&v134 = v34;
    *(&v134 + 1) = v33;
    sub_1C594A23C();
    v40 = sub_1C5BC9CA4();
    v42 = v41;
    v44 = v43;
    v45 = sub_1C5BC9C14();
    v47 = v46;
    v49 = v48;
    sub_1C5953BD8(v40, v42, v44 & 1);

    if (qword_1EC190538 != -1)
    {
      swift_once();
    }

    v134 = xmmword_1EC1926C8;
    sub_1C59E6BD4();

    v50 = sub_1C5BC9BC4();
    v103 = v51;
    v104 = v52;
    v54 = v53;
    sub_1C5953BD8(v45, v47, v49 & 1);

    KeyPath = swift_getKeyPath(byte_1C5BD6238);
    v56 = swift_getKeyPath("(~\\&");
    v133 = 0;
    type metadata accessor for Geometry(0);
    sub_1C59576B4(&qword_1EDA46EB8, 255, type metadata accessor for Geometry, &unk_1C5BE9818);
    v57 = sub_1C5BC8C84();
    v145 = v54 & 1;
    v143 = 0;
    *&v134 = v50;
    *(&v134 + 1) = v103;
    LOBYTE(v135) = v54 & 1;
    *(&v135 + 1) = *v144;
    DWORD1(v135) = *&v144[3];
    *(&v135 + 1) = v104;
    *&v136 = KeyPath;
    *(&v136 + 1) = 1;
    LOBYTE(v137) = 0;
    DWORD1(v137) = *&v142[3];
    *(&v137 + 1) = *v142;
    *(&v137 + 1) = v56;
    LOBYTE(v138) = v133;
    DWORD1(v138) = *&v141[3];
    *(&v138 + 1) = *v141;
    *(&v138 + 1) = v57;
    *&v139 = v58;
    *(&v139 + 1) = 0x776F7262657965;
    v140 = 0xE700000000000000;
    v131[4] = v138;
    v131[5] = v139;
    v132 = 0xE700000000000000;
    v131[0] = v134;
    v131[1] = v135;
    v131[2] = v136;
    v131[3] = v137;
    v59 = [objc_opt_self() mainBundle];
    v60 = sub_1C5949F2C();
    v62 = v61;

    v146 = v60;
    v147 = v62;
    MEMORY[0x1C694F170](46, 0xE100000000000000);
    MEMORY[0x1C694F170](0xD000000000000012, 0x80000001C5BF6A40);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A80, &qword_1C5BD6818);
    sub_1C59E7C54();
    v63 = v112;
    sub_1C5BCA164();
    sub_1C5924EF4(&v134, &qword_1EC192A80, &qword_1C5BD6818);

    v64 = *MEMORY[0x1E697E720];
    v65 = sub_1C5BC89B4();
    v66 = v113;
    (*(*(v65 - 8) + 104))(v113, v64, v65);
    sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
    result = sub_1C5BCADB4();
    if ((result & 1) == 0)
    {
      __break(1u);
      return result;
    }

    sub_1C59E7B94();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    v68 = v109;
    sub_1C5BC9F54();
    sub_1C5924EF4(v66, &qword_1EC192838, &qword_1C5BD5C80);
    sub_1C5924EF4(v63, &qword_1EC192A48, &qword_1C5BD6800);
    sub_1C5BC8604();
    sub_1C5BC8634();
    sub_1C5BC8644();

    sub_1C5BC8604();
    sub_1C5BC8634();
    sub_1C5BC8644();

    v69 = sub_1C5BC85F4();

    v70 = v108;
    (*(v110 + 32))(v108, v68, v111);
    v71 = v100;
    *&v70[*(v100 + 36)] = v69;
    v72 = v70;
    v73 = v107;
    sub_1C59E7D34(v72, v107, &qword_1EC192A58, &qword_1C5BD6810);
    v74 = v129;
    sub_1C59E7D34(v73, v129, &qword_1EC192A58, &qword_1C5BD6810);
    (*(v114 + 56))(v74, 0, 1, v71);
    v5 = v101;
    v6 = v102;
  }

  else
  {
    (*(v24 + 56))(v31, 1, 1, v23);
  }

  v75 = qword_1EC190520;

  if (v75 != -1)
  {
    swift_once();
  }

  _s19DefaultMetadataViewVMa(0, v6, v5, v76);
  v77 = qword_1EC192668;
  v78 = unk_1EC192670;
  v79 = qword_1EC192678;
  v80 = v5;
  v81 = byte_1EC192680;

  v82 = v117;
  sub_1C59DD354(v77, v78, v79, v81, v6, v80, v117);
  v83 = v121;
  WitnessTable = swift_getWitnessTable();
  v85 = v122;
  View.mcui.getter(v83, v122);
  (*(v118 + 8))(v82, v83);
  if (sub_1C59DAACC())
  {
    v86 = 0x4024000000000000;
  }

  else
  {
    v86 = 0x4038000000000000;
  }

  v87 = v119;
  v88 = v125;
  v89 = MCUINamespace<A>.marqueeFeathering(_:_:)(0, v86, 0, v125, WitnessTable);
  (*(v123 + 8))(v85, v88, v89);
  v90 = sub_1C5958FE8();
  v148 = WitnessTable;
  v149 = v90;
  v91 = v120;
  v92 = swift_getWitnessTable();
  v93 = v126;
  sub_1C593EDC0(v87, v91, v92);
  v94 = v124;
  v95 = *(v124 + 8);
  v95(v87, v91);
  v96 = v129;
  v97 = v116;
  sub_1C597B474(v129, v116);
  *&v134 = v97;
  v98 = v127;
  (*(v94 + 16))(v127, v93, v91);
  *(&v134 + 1) = v98;
  *&v131[0] = v115;
  *(&v131[0] + 1) = v91;
  v146 = sub_1C595E060(&qword_1EC192A60, &qword_1EC192A38, &unk_1C5BD67F0, sub_1C59E7A40);
  v147 = v92;
  sub_1C594226C(&v134, 2uLL, v131);
  v95(v93, v91);
  sub_1C5924EF4(v96, &qword_1EC192A38, &unk_1C5BD67F0);
  v95(v98, v91);
  return sub_1C5924EF4(v97, &qword_1EC192A38, &unk_1C5BD67F0);
}

uint64_t sub_1C59DD354@<X0>(uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v15, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
  *a8 = sub_1C5BC88C4();
  *(a8 + 8) = v16;
  *(a8 + 16) = a2;
  *(a8 + 24) = a3;
  *(a8 + 32) = a4;
  *(a8 + 40) = a5;
  *(a8 + 48) = swift_getKeyPath(byte_1C5BD5A70);
  *(a8 + 56) = 0;
  _s12PresentationCMa(0);
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  *(a8 + 64) = sub_1C5BC8324();
  *(a8 + 72) = v17 & 1;
  v19 = _s23MarqueeTitleAndSubtitleVMa(0, a6, a7, v18);
  v20 = *(v19 + 48);
  *(a8 + v20) = swift_getKeyPath(byte_1C5BD5AA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC195900, &qword_1C5BD5AD0);
  swift_storeEnumTagMultiPayload();
  v21 = a8 + *(v19 + 52);
  result = swift_getKeyPath(byte_1C5BD5AD8);
  *v21 = result;
  *(v21 + 8) = 0;
  return result;
}

uint64_t sub_1C59DD4E8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  sub_1C59318C8(a2, v14);
  v15 = a1;
  sub_1C5931F84(v14, &v16);
  v12 = type metadata accessor for MetadataStyleModifier(0, a4, a6, v11);
  swift_unknownObjectRetain();
  MEMORY[0x1C694E550](&v15, a3, v12, a5);
  return (*(*(v12 - 8) + 8))(&v15, v12);
}

uint64_t sub_1C59DD5C4@<X0>(uint64_t a5@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v6, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
  *a5 = sub_1C5BC88C4();
  *(a5 + 8) = v7;
  _s6BannerCMa();
  sub_1C59576B4(qword_1EDA49FB8, 255, _s6BannerCMa, &unk_1C5BEAEC0);
  *(a5 + 16) = sub_1C5BC88C4();
  *(a5 + 24) = v8;
  *(a5 + 32) = sub_1C5BC8C84();
  *(a5 + 40) = v9;
  *(a5 + 48) = swift_getKeyPath(a8_4);
  *(a5 + 88) = 0;
  result = swift_getKeyPath(byte_1C5BD6628);
  *(a5 + 96) = result;
  *(a5 + 169) = 0;
  return result;
}

uint64_t sub_1C59DD6F4@<X0>(uint64_t a1@<X1>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X4>, uint64_t a5@<X5>, uint64_t a6@<X8>)
{
  v53 = a3;
  v52 = a2;
  v68 = a6;
  v9 = _s23MarqueeTitleAndSubtitleVMa(255, a4, a5, a3);
  v61 = a5;
  v62 = type metadata accessor for MetadataStyleModifier(255, a4, a5, v10);
  v11 = sub_1C5BC8AB4();
  v14 = type metadata accessor for MCUINamespace(0, v11, v12, v13);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v52 - v15;
  v63 = v9;
  v54 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v52 - v17;
  v56 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v19);
  v55 = &v52 - v20;
  v21 = sub_1C5BC8AB4();
  v60 = *(v21 - 8);
  MEMORY[0x1EEE9AC00](v21);
  v58 = &v52 - v22;
  v23 = sub_1C5BC8AB4();
  v64 = *(v23 - 8);
  MEMORY[0x1EEE9AC00](v23);
  v57 = &v52 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v59 = &v52 - v26;
  v27 = qword_1EC190528;

  if (v27 != -1)
  {
    swift_once();
  }

  v29 = qword_1EC192688;
  v28 = unk_1EC192690;
  v30 = qword_1EC192698;
  v31 = byte_1EC1926A0;

  v32 = v30;
  v33 = v61;
  sub_1C59DD354(v29, v28, v32, v31, a4, v61, v18);
  v34 = sub_1C59498C4(v52, v53, a4, *(v33 + 8));
  swift_beginAccess();
  sub_1C59318C8(a1 + 80, v75);
  swift_unknownObjectRetain();

  v35 = v63;
  WitnessTable = swift_getWitnessTable();
  v37 = v55;
  sub_1C59DD4E8(v34, v75, v35, a4, WitnessTable, v33);
  swift_unknownObjectRelease();
  v38 = __swift_destroy_boxed_opaque_existential_0(v75);
  (*(v54 + 8))(v18, v35, v38);
  v39 = swift_getWitnessTable();
  v73 = WitnessTable;
  v74 = v39;
  v40 = swift_getWitnessTable();
  v41 = v65;
  View.mcui.getter(v11, v65);
  (*(v56 + 8))(v37, v11);
  v42 = v58;
  v43 = v67;
  v44 = MCUINamespace<A>.marqueeFeathering(_:_:)(0, 0x4024000000000000, 0, v67, v40);
  (*(v66 + 8))(v41, v43, v44);
  v45 = sub_1C5958FE8();
  v71 = v40;
  v72 = v45;
  v46 = swift_getWitnessTable();
  v47 = v57;
  MEMORY[0x1C694E550](v46, v21, MEMORY[0x1E697FB10], v46);
  (*(v60 + 8))(v42, v21);
  v69 = v46;
  v70 = MEMORY[0x1E697FB08];
  v48 = swift_getWitnessTable();
  v49 = v59;
  sub_1C593EDC0(v47, v23, v48);
  v50 = *(v64 + 8);
  v50(v47, v23);
  sub_1C593EDC0(v49, v23, v48);
  return (v50)(v49, v23);
}

uint64_t sub_1C59DDD40(uint64_t a1, uint64_t a2, uint64_t a3)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  sub_1C59576B4(qword_1EDA4A8C8, v3, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
  v4 = sub_1C5BC88C4();
  sub_1C5BC8C84();
  return v4;
}

uint64_t sub_1C59DDDF0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192828, &qword_1C5BD5C70);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v53 - v7;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192830, &qword_1C5BD5C78);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v53 - v10;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v53 - v13;
  v59 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192840, &qword_1C5BD5C88);
  MEMORY[0x1EEE9AC00](v59);
  v16 = (&v53 - v15);
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192848, &qword_1C5BD5C90);
  v63 = *(v65 - 8);
  MEMORY[0x1EEE9AC00](v65);
  v56 = &v53 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192850, &qword_1C5BD5C98);
  MEMORY[0x1EEE9AC00](v58);
  v57 = &v53 - v18;
  v60 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192858, &qword_1C5BD5CA0);
  MEMORY[0x1EEE9AC00](v60);
  v64 = &v53 - v19;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192860, &qword_1C5BD5CA8);
  MEMORY[0x1EEE9AC00](v61);
  v62 = &v53 - v20;
  v21 = sub_1C5BC9144();
  v22 = [objc_opt_self() currentTraitCollection];
  [v22 displayScale];
  v24 = v23;

  v25 = 1.0;
  if ((*&v24 & 0xFFFFFFFFFFFFFLL) != 0)
  {
    v26 = 1.0;
  }

  else
  {
    v26 = v24;
  }

  if ((~*&v24 & 0x7FF0000000000000) != 0)
  {
    v26 = v24;
  }

  if (v24 >= 1.0)
  {
    v25 = v26;
  }

  *v16 = v21;
  v16[1] = 2.0 / v25 + 4.0;
  *(v16 + 16) = 0;
  v27 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192868, &qword_1C5BD5CB0);
  sub_1C59DE4A8(v3, *(a1 + 16), *(a1 + 24), v16 + *(v27 + 44));
  v28 = *MEMORY[0x1E697E728];
  v29 = sub_1C5BC89B4();
  (*(*(v29 - 8) + 104))(v14, v28, v29);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v55 = v3;
    sub_1C5924F54(&qword_1EC192870, &qword_1EC192840, &qword_1C5BD5C88, MEMORY[0x1E6981870]);
    v53 = a1;
    v54 = a2;
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    v31 = v56;
    sub_1C5BC9F54();
    sub_1C5924EF4(v14, &qword_1EC192838, &qword_1C5BD5C80);
    sub_1C5924EF4(v16, &qword_1EC192840, &qword_1C5BD5C88);
    v32 = *(v63 + 32);
    v33 = v65;
    v32(v11, v31, v65);
    v66 = 0;
    sub_1C5BCA684();
    v34 = v67;
    v35 = v68;
    v36 = v57;
    v32(v57, v11, v33);
    v37 = (v36 + *(v58 + 36));
    *v37 = v34;
    v37[1] = v35;
    sub_1C59E7D34(v36, v8, &qword_1EC192850, &qword_1C5BD5C98);
    KeyPath = swift_getKeyPath(byte_1C5BD5CB8);
    v39 = v8;
    v40 = v64;
    sub_1C59E7D34(v39, v64, &qword_1EC192850, &qword_1C5BD5C98);
    v41 = v40 + *(v60 + 36);
    *v41 = KeyPath;
    *(v41 + 8) = 256;
    *(v41 + 16) = 0x4040000000000000;
    *(v41 + 24) = 0;
    v42 = swift_getKeyPath("؈\\&");
    v43 = sub_1C595E4FC(&unk_1F4513880);
    v44 = v40;
    v45 = v62;
    sub_1C59E7D34(v44, v62, &qword_1EC192858, &qword_1C5BD5CA0);
    v46 = (v45 + *(v61 + 36));
    *v46 = v42;
    v46[1] = v43;
    v47 = sub_1C59E0230();
    v49 = v48;
    v50 = v45;
    v51 = v54;
    sub_1C59E7D34(v50, v54, &qword_1EC192860, &qword_1C5BD5CA8);
    result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192878, &qword_1C5BD5D08);
    v52 = (v51 + *(result + 52));
    *v52 = v47;
    v52[1] = v49;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59DE4A8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v46 = a4;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192890, &qword_1C5BD5D20);
  MEMORY[0x1EEE9AC00](v41);
  v8 = &v38 - v7;
  v43 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192898, &qword_1C5BD5D28);
  MEMORY[0x1EEE9AC00](v43);
  v45 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v10);
  v40 = &v38 - v11;
  MEMORY[0x1EEE9AC00](v12);
  v44 = &v38 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928A0, &qword_1C5BD5D30);
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v38 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928A8, &qword_1C5BD5D38);
  MEMORY[0x1EEE9AC00](v17 - 8);
  v42 = &v38 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v38 - v20;
  *v16 = sub_1C5BC8FC4();
  *(v16 + 1) = 0;
  v16[16] = 1;
  v22 = &v16[*(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928B0, &qword_1C5BD5D40) + 44)];
  v38 = a3;
  sub_1C59DE9B4(a1, a2, a3, v22);
  _s23MarqueeTitleAndSubtitleVMa(0, a2, a3, v23);
  v24 = *(a1 + 8);
  swift_beginAccess();
  v25 = *(v24 + 40);
  v49 = *(v24 + 32);
  v50 = v25;
  sub_1C5924F54(&qword_1EC1928B8, &qword_1EC1928A0, &qword_1C5BD5D30, MEMORY[0x1E69817F8]);
  sub_1C594A23C();
  v39 = v21;
  sub_1C5BCA034();
  sub_1C5924EF4(v16, &qword_1EC1928A0, &qword_1C5BD5D30);
  *v8 = sub_1C5BC8FC4();
  *(v8 + 1) = 0;
  v8[16] = 1;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928C0, &qword_1C5BD5D48);
  sub_1C59DF884(a1, a2, v38, &v8[*(v26 + 44)]);
  v27 = *(a1 + 8);
  swift_beginAccess();
  if (*(v27 + 64))
  {
    v28 = *(v27 + 56);
    v29 = *(v27 + 64);
  }

  else
  {
    v28 = 0;
    v29 = 0xE000000000000000;
  }

  v47 = v28;
  v48 = v29;
  sub_1C5924F54(&qword_1EC1928C8, &qword_1EC192890, &qword_1C5BD5D20, MEMORY[0x1E69817F8]);

  v30 = v40;
  sub_1C5BCA034();

  sub_1C5924EF4(v8, &qword_1EC192890, &qword_1C5BD5D20);
  swift_beginAccess();
  v31 = v44;
  sub_1C5BC8A44();
  sub_1C5924EF4(v30, &qword_1EC192898, &qword_1C5BD5D28);
  v32 = v39;
  v33 = v42;
  sub_1C59400B0(v39, v42, &qword_1EC1928A8, &qword_1C5BD5D38);
  v34 = v45;
  sub_1C59400B0(v31, v45, &qword_1EC192898, &qword_1C5BD5D28);
  v35 = v46;
  sub_1C59400B0(v33, v46, &qword_1EC1928A8, &qword_1C5BD5D38);
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928D0, &qword_1C5BD5D50);
  sub_1C59400B0(v34, v35 + *(v36 + 48), &qword_1EC192898, &qword_1C5BD5D28);
  sub_1C5924EF4(v31, &qword_1EC192898, &qword_1C5BD5D28);
  sub_1C5924EF4(v32, &qword_1EC1928A8, &qword_1C5BD5D38);
  sub_1C5924EF4(v34, &qword_1EC192898, &qword_1C5BD5D28);
  return sub_1C5924EF4(v33, &qword_1EC1928A8, &qword_1C5BD5D38);
}

uint64_t sub_1C59DE9B4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v57 = a2;
  v58 = a3;
  v60 = a4;
  v5 = sub_1C5BC90F4();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v56 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v56 - v10;
  v12 = sub_1C5BC8F34();
  v13 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v15 = &v56 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192928, &qword_1C5BD5E60);
  MEMORY[0x1EEE9AC00](v16 - 8);
  v59 = &v56 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v18);
  v61 = &v56 - v19;
  v62 = a1;
  v20 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v83 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v56 = v12;
    v21 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v13 + 8))(v15, v56);
    v20 = v83;
  }

  swift_getKeyPath(asc_1C5BD5D60);
  *&v98[0] = v20;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v22 = *(v20 + 17);

  v97[0] = 0;
  sub_1C5BCA684();
  v88 = v98[0];
  *&v89 = swift_getKeyPath("؈\\&");
  BYTE8(v89) = 0;
  KeyPath = swift_getKeyPath(asc_1C5BD5D88);
  v91 = 0uLL;
  LOBYTE(v92) = 0;
  *(&v92 + 1) = swift_getKeyPath(asc_1C5BD5DB0);
  LOBYTE(v93) = 0;
  *(&v93 + 1) = swift_getKeyPath(byte_1C5BD5CB8);
  LOBYTE(v94) = 0;
  v80 = 1;
  v85 = xmmword_1C5BD5080;
  *&v86[0] = 0x4008000000000000;
  BYTE8(v86[0]) = v22;
  *(v86 + 9) = v81;
  BYTE11(v86[0]) = v82;
  *(v86 + 12) = 0;
  DWORD1(v86[1]) = 0;
  BYTE8(v86[1]) = 1;
  *(&v86[1] + 9) = *v79;
  HIDWORD(v86[1]) = *&v79[3];
  *&v87 = 0xD000000000000010;
  *(&v87 + 1) = 0x80000001C5BF6940;
  v23 = v62;
  v25 = v57;
  v24 = v58;
  sub_1C59DF29C(v62, v57, v58, v84);
  *(&v94 + 1) = 0;
  v95 = 1;
  _s23MarqueeTitleAndSubtitleVMa(0, v25, v24, v26);
  v27 = *(v23 + 8);
  swift_beginAccess();
  v28 = *(v27 + 48);

  sub_1C594C704(v11);
  (*(v6 + 104))(v8, *MEMORY[0x1E697F600], v5);
  LOBYTE(v24) = sub_1C5BC8274();
  v29 = *(v6 + 8);
  v29(v8, v5);
  v29(v11, v5);
  if (v24)
  {
    if (qword_1EC190670 != -1)
    {
      swift_once();
    }
  }

  else
  {
    sub_1C5BCA524();
  }

  if (*(v28 + 16))
  {
    v30 = sub_1C5B5CC2C(v28);
    v32 = v31;
    v34 = v33;
    v35 = swift_getKeyPath(asc_1C5BD5D88);
  }

  else
  {

    v35 = swift_getKeyPath(asc_1C5BD5D88);
    v30 = 0;
    v32 = 0;
    v34 = 0;
  }

  v75 = v92;
  v76 = v93;
  v77 = v94;
  LOBYTE(v78) = v95;
  v71 = v88;
  v72 = v89;
  v73 = KeyPath;
  v74 = v91;
  v67 = v85;
  v68 = v86[0];
  v69 = v86[1];
  v70 = v87;
  v65 = v84[0];
  v66 = v84[1];
  v36 = swift_getKeyPath(byte_1C5BD5DD8);
  v37 = _AXSInvertColorsEnabled();
  v38 = &type metadata for DefaultMarqueeMaskStyle;
  if (!v37)
  {
    v38 = &type metadata for BackdropMarqueeMaskStyle;
  }

  v39 = &off_1F4528E98;
  if (!v37)
  {
    v39 = &off_1F4528E90;
  }

  *(&v98[1] + 1) = v38;
  *&v98[2] = v39;
  sub_1C59318C8(v98, &v96[16] + 8);
  *&v96[16] = v36;
  v96[10] = v75;
  v96[11] = v76;
  v96[12] = v77;
  v96[6] = v71;
  v96[7] = v72;
  v96[8] = v73;
  v96[9] = v74;
  v96[2] = v67;
  v96[3] = v68;
  v96[4] = v69;
  v96[5] = v70;
  v96[0] = v65;
  v96[1] = v66;
  *&v96[13] = v78;
  *(&v96[13] + 1) = v35;
  *&v96[14] = 0;
  *(&v96[14] + 1) = v30;
  *&v96[15] = v32;
  *(&v96[15] + 1) = v34;
  __swift_destroy_boxed_opaque_existential_0(v98);
  memcpy(v97, v96, sizeof(v97));
  v40 = v62;
  swift_beginAccess();

  v41 = sub_1C5BCAE44();

  v42 = [v41 _isNaturallyRTL];

  v43 = swift_getKeyPath(byte_1C5BD5E00);
  v44 = *(v40 + 24);
  v45 = swift_getKeyPath(byte_1C5BD5E68);
  memcpy(v98, v97, sizeof(v98));
  v99 = v43;
  v100 = v42;
  v101 = v45;
  v102 = v44;
  v46 = objc_opt_self();

  v47 = [v46 mainBundle];
  v48 = sub_1C5949F2C();
  v50 = v49;

  v63 = v48;
  v64 = v50;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF6960);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192930, &qword_1C5BD5E98);
  sub_1C59E6C28();
  v51 = v61;
  sub_1C5BCA164();

  sub_1C5924EF4(v98, &qword_1EC192930, &qword_1C5BD5E98);
  v52 = v59;
  sub_1C59400B0(v51, v59, &qword_1EC192928, &qword_1C5BD5E60);
  v53 = v60;
  sub_1C59400B0(v52, v60, &qword_1EC192928, &qword_1C5BD5E60);
  v54 = v53 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192988, &qword_1C5BD5EC8) + 48);
  *v54 = 0;
  *(v54 + 8) = 0;
  sub_1C5924EF4(v51, &qword_1EC192928, &qword_1C5BD5E60);
  return sub_1C5924EF4(v52, &qword_1EC192928, &qword_1C5BD5E60);
}

uint64_t sub_1C59DF29C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t *a4@<X8>)
{
  v49 = a4;
  v46 = sub_1C5BC8F34();
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v8 = &v44 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  _s23MarqueeTitleAndSubtitleVMa(0, a2, a3, v9);
  v10 = *(a1 + 8);
  swift_beginAccess();
  v11 = *(v10 + 32);
  v12 = *(v10 + 40);
  v51 = v11;
  v52 = v12;
  sub_1C594A23C();

  v13 = sub_1C5BC9CA4();
  v15 = v14;
  v17 = v16;
  v18 = sub_1C5BC9C14();
  v20 = v19;
  v22 = v21;
  sub_1C5953BD8(v13, v15, v17 & 1);

  if (qword_1EC190540 != -1)
  {
    swift_once();
  }

  v51 = qword_1EC1926D8;
  v52 = unk_1EC1926E0;
  sub_1C59E6BD4();

  v47 = sub_1C5BC9BC4();
  v24 = v23;
  v26 = v25;
  v48 = v27;
  sub_1C5953BD8(v18, v20, v22 & 1);

  v28 = *(a1 + 48);
  if (*(a1 + 56) == 1)
  {
    if ((v28 & 1) == 0)
    {
      goto LABEL_8;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v30 = sub_1C5942458(v28, 0);
    (*(v45 + 8))(v8, v46, v30);
    if (v51 != 1)
    {
      goto LABEL_8;
    }
  }

  v31 = *(a1 + 8);
  swift_beginAccess();
  sub_1C59318C8(v31 + 80, &v51);
  v32 = v53;
  v33 = v54;
  __swift_project_boxed_opaque_existential_0(&v51, v53);
  v50[3] = &type metadata for MetadataButtonStyle;
  v50[4] = sub_1C59E6F34();
  sub_1C59DF660(v50, v32, v33);
  __swift_destroy_boxed_opaque_existential_0(v50);
  __swift_destroy_boxed_opaque_existential_0(&v51);
LABEL_8:
  v34 = v47;
  v35 = sub_1C5BC9C84();
  v37 = v36;
  v39 = v38;
  v41 = v40;
  sub_1C5953BD8(v34, v24, v26 & 1);

  v43 = v49;
  *v49 = v35;
  v43[1] = v37;
  *(v43 + 16) = v39 & 1;
  v43[3] = v41;
  return result;
}

uint64_t sub_1C59DF660(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1C5BCB804();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v18[-v7 - 8];
  v9 = *(a2 - 8);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v18[-((v11 + 15) & 0xFFFFFFFFFFFFFFF0) - 8];
  sub_1C59318C8(a1, v18);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192750, &qword_1C5BD50A0);
  v13 = swift_dynamicCast();
  v14 = *(v9 + 56);
  if (v13)
  {
    v14(v8, 0, 1, a2);
    (*(v9 + 32))(v12, v8, a2);
    v15 = sub_1C5BCADB4();
    (*(v9 + 8))(v12, a2);
  }

  else
  {
    v14(v8, 1, 1, a2);
    (*(v6 + 8))(v8, v5);
    v15 = 0;
  }

  return v15 & 1;
}

uint64_t sub_1C59DF884@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v37 = a2;
  v38 = a3;
  v40 = a4;
  v5 = sub_1C5BC8F34();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928D8, &qword_1C5BD5D58);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v39 = &v37 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v37 - v12;
  v14 = *(a1 + 64);
  if (*(a1 + 72) == 1)
  {
    v46 = *(a1 + 64);
  }

  else
  {

    sub_1C5BCB4E4();
    v15 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v6 + 8))(v8, v5);
    v14 = v46;
  }

  swift_getKeyPath(asc_1C5BD5D60, v37, v38);
  *v60 = v14;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v16 = *(v14 + 17);

  *v59 = 0;
  sub_1C5BCA684();
  v51 = *v60;
  *&v52 = swift_getKeyPath("؈\\&");
  BYTE8(v52) = 0;
  KeyPath = swift_getKeyPath(asc_1C5BD5D88);
  v54 = 0uLL;
  LOBYTE(v55) = 0;
  *(&v55 + 1) = swift_getKeyPath(asc_1C5BD5DB0);
  LOBYTE(v56) = 0;
  *(&v56 + 1) = swift_getKeyPath(byte_1C5BD5CB8);
  LOBYTE(v57) = 0;
  v43 = 1;
  v48 = xmmword_1C5BD5080;
  *&v49[0] = 0x4008000000000000;
  BYTE8(v49[0]) = v16;
  *(v49 + 9) = v44;
  BYTE11(v49[0]) = v45;
  *(v49 + 12) = 0;
  DWORD1(v49[1]) = 0;
  BYTE8(v49[1]) = 1;
  *(&v49[1] + 9) = *v42;
  HIDWORD(v49[1]) = *&v42[3];
  *&v50 = 0xD000000000000013;
  *(&v50 + 1) = 0x80000001C5BF6900;
  v18 = v37;
  v17 = v38;
  sub_1C59DFEA4(a1, v37, v38, v47);
  *(&v57 + 1) = 0;
  v58 = 1;
  v19 = swift_getKeyPath(byte_1C5BD5DD8);
  v20 = _AXSInvertColorsEnabled();
  v21 = &type metadata for DefaultMarqueeMaskStyle;
  if (!v20)
  {
    v21 = &type metadata for BackdropMarqueeMaskStyle;
  }

  v22 = &off_1F4528E90;
  if (v20)
  {
    v22 = &off_1F4528E98;
  }

  *&v60[24] = v21;
  *&v60[32] = v22;
  sub_1C59318C8(v60, &v59[224]);
  *&v59[216] = v19;
  *&v59[160] = v55;
  *&v59[176] = v56;
  *&v59[192] = v57;
  v59[208] = v58;
  *&v59[96] = v51;
  *&v59[112] = v52;
  *&v59[128] = KeyPath;
  *&v59[144] = v54;
  *&v59[32] = v48;
  *&v59[48] = v49[0];
  *&v59[64] = v49[1];
  *&v59[80] = v50;
  *v59 = v47[0];
  *&v59[16] = v47[1];
  __swift_destroy_boxed_opaque_existential_0(v60);
  memcpy(v41, v59, sizeof(v41));
  _s23MarqueeTitleAndSubtitleVMa(0, v18, v17, v23);
  v24 = *(a1 + 8);
  swift_beginAccess();
  v27 = 0;
  if (*(v24 + 64))
  {

    v25 = sub_1C5BCAE44();

    v26 = [v25 _isNaturallyRTL];

    if (v26)
    {
      v27 = 1;
    }
  }

  v28 = swift_getKeyPath(byte_1C5BD5E00);
  memcpy(v60, v41, sizeof(v60));
  v61 = v28;
  v62 = v27;
  v29 = [objc_opt_self() mainBundle];
  v30 = sub_1C5949F2C();
  v32 = v31;

  v41[0] = v30;
  v41[1] = v32;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000013, 0x80000001C5BF6920);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1928E0, &qword_1C5BD5E28);
  sub_1C59E6A38();
  sub_1C5BCA164();

  sub_1C5924EF4(v60, &qword_1EC1928E0, &qword_1C5BD5E28);
  v33 = v39;
  sub_1C59400B0(v13, v39, &qword_1EC1928D8, &qword_1C5BD5D58);
  v34 = v40;
  sub_1C59400B0(v33, v40, &qword_1EC1928D8, &qword_1C5BD5D58);
  v35 = v34 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192918, &unk_1C5BD5E50) + 48);
  *v35 = 0;
  *(v35 + 8) = 0;
  sub_1C5924EF4(v13, &qword_1EC1928D8, &qword_1C5BD5D58);
  return sub_1C5924EF4(v33, &qword_1EC1928D8, &qword_1C5BD5D58);
}

uint64_t sub_1C59DFEA4@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v41 = sub_1C5BC8F34();
  v8 = *(v41 - 8);
  MEMORY[0x1EEE9AC00](v41);
  v10 = &v40 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = _s23MarqueeTitleAndSubtitleVMa(0, a2, a3, v11);
  v13 = *(a1 + 8);
  swift_beginAccess();
  if (*(v13 + 64))
  {
    v14 = *(v13 + 56);
    v15 = *(v13 + 64);
  }

  else
  {
    v15 = 0xE100000000000000;
    v14 = 32;
  }

  v45 = v14;
  v46 = v15;
  sub_1C594A23C();

  v16 = sub_1C5BC9CA4();
  v18 = v17;
  v20 = v19;
  v21 = sub_1C5BC9C14();
  v42 = v22;
  v43 = v21;
  v24 = v23;
  v44 = v25;
  sub_1C5953BD8(v16, v18, v20 & 1);

  v26 = a1 + *(v12 + 52);
  v27 = *v26;
  if (*(v26 + 8) == 1)
  {
    if ((v27 & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  else
  {

    sub_1C5BCB4E4();
    v28 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v29 = sub_1C5942458(v27, 0);
    (*(v8 + 8))(v10, v41, v29);
    if (v45 != 1)
    {
LABEL_12:
      if (qword_1EC190548 != -1)
      {
        swift_once();
      }

      v45 = qword_1EC1926E8;
      v46 = qword_1EC1926F0;
      sub_1C59E6BD4();

      goto LABEL_15;
    }
  }

  if (!_UISolariumEnabled())
  {
    goto LABEL_12;
  }

  if (qword_1EC190550 != -1)
  {
    swift_once();
  }

  v45 = *__swift_project_value_buffer(MEMORY[0x1E69815C0], qword_1EC1926F8);

LABEL_15:
  v45 = sub_1C5BC85E4();
  v31 = v42;
  v30 = v43;
  v32 = sub_1C5BC9BC4();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  sub_1C5953BD8(v30, v31, v24 & 1);

  *a4 = v32;
  *(a4 + 8) = v34;
  *(a4 + 16) = v36 & 1;
  *(a4 + 24) = v38;
  return result;
}

uint64_t sub_1C59E0230()
{
  v1 = *(v0 + 8);
  swift_beginAccess();
  v14[0] = v1[5];
  swift_beginAccess();
  v2 = v1[8];
  v14[1] = v1[7];
  v14[2] = v2;

  v3 = 0;
  v4 = MEMORY[0x1E69E7CC0];
LABEL_2:
  v5 = &v14[2 * v3];
  while (++v3 != 3)
  {
    v6 = v5 + 2;
    v7 = *v5;
    v5 += 2;
    if (v7)
    {
      v8 = *(v6 - 3);

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v4 = sub_1C59622E4(0, *(v4 + 2) + 1, 1, v4);
      }

      v10 = *(v4 + 2);
      v9 = *(v4 + 3);
      if (v10 >= v9 >> 1)
      {
        v4 = sub_1C59622E4((v9 > 1), v10 + 1, 1, v4);
      }

      *(v4 + 2) = v10 + 1;
      v11 = &v4[16 * v10];
      *(v11 + 4) = v8;
      *(v11 + 5) = v7;
      goto LABEL_2;
    }
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192880, &unk_1C5BD5D10);
  swift_arrayDestroy();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192888, &qword_1C5BDE420);
  sub_1C5924F54(&qword_1EDA45EB0, &qword_1EC192888, &qword_1C5BDE420, MEMORY[0x1E69E6310]);
  v12 = sub_1C5BCAD74();

  return v12;
}

uint64_t MetadataStyleModifier.body(content:)@<X0>(char *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v4 = v3;
  v55 = a1;
  v59 = a3;
  swift_getWitnessTable();
  v6 = sub_1C5BC9394();
  v53 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v51 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = sub_1C5BC8B34();
  v54 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v52 = &v47 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  WitnessTable = swift_getWitnessTable();
  v13 = sub_1C5BCA6F4();
  v50 = *(v13 - 8);
  MEMORY[0x1EEE9AC00](v13);
  v48 = &v47 - v14;
  v15 = swift_getWitnessTable();
  v16 = sub_1C59576B4(&qword_1EC192338, 255, MEMORY[0x1E697C248], MEMORY[0x1E697C240]);
  *&v63 = v13;
  *(&v63 + 1) = v11;
  v58 = v11;
  v61 = v16;
  v62 = v15;
  *&v64 = v15;
  *(&v64 + 1) = v16;
  OpaqueTypeMetadata2 = swift_getOpaqueTypeMetadata2();
  v49 = *(OpaqueTypeMetadata2 - 8);
  MEMORY[0x1EEE9AC00](OpaqueTypeMetadata2);
  v19 = &v47 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v47 = &v47 - v21;
  v22 = sub_1C5BC92D4();
  v56 = *(v22 - 8);
  v57 = v22;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v47 - v23;
  sub_1C59318C8(v4 + 8, v68);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192750, &qword_1C5BD50A0);
  if (swift_dynamicCast())
  {
    (*(*(a2 - 8) + 16))(&v63, v4, a2);
    v25 = swift_allocObject();
    v26 = *(a2 + 24);
    *(v25 + 16) = *(a2 + 16);
    *(v25 + 24) = v26;
    v27 = v64;
    *(v25 + 32) = v63;
    *(v25 + 48) = v27;
    *(v25 + 64) = v65;
    MEMORY[0x1EEE9AC00](v25);
    *(&v47 - 4) = v28;
    *(&v47 - 3) = v29;
    *(&v47 - 2) = v55;
    v30 = v48;
    sub_1C5BCA6E4();
    v31 = v52;
    sub_1C5BC8B24();
    v32 = v58;
    v34 = v61;
    v33 = v62;
    sub_1C5BC9DA4();
    (*(v54 + 8))(v31, v32);
    v35 = v32;
    (*(v50 + 8))(v30, v13);
    *&v63 = v13;
    *(&v63 + 1) = v32;
    *&v64 = v33;
    *(&v64 + 1) = v34;
    OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
    v37 = v47;
    sub_1C593EDC0(v19, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v38 = *(v49 + 8);
    v38(v19, OpaqueTypeMetadata2);
    sub_1C593EDC0(v37, OpaqueTypeMetadata2, OpaqueTypeConformance2);
    v39 = OpaqueTypeConformance2;
    v40 = WitnessTable;
    sub_1C5950E54(v19, OpaqueTypeMetadata2, v6, v39, WitnessTable);
    v38(v19, OpaqueTypeMetadata2);
    v38(v37, OpaqueTypeMetadata2);
  }

  else
  {
    v40 = WitnessTable;
    sub_1C593EDC0(v55, v6, WitnessTable);
    v41 = v51;
    sub_1C593EDC0(v10, v6, v40);
    v35 = v58;
    *&v63 = v13;
    *(&v63 + 1) = v58;
    *&v64 = v62;
    *(&v64 + 1) = v61;
    v42 = swift_getOpaqueTypeConformance2();
    sub_1C5941738(v41, OpaqueTypeMetadata2, v6, v42, v40);
    v43 = *(v53 + 8);
    v43(v41, v6);
    v43(v10, v6);
  }

  __swift_destroy_boxed_opaque_existential_0(v68);
  *&v63 = v13;
  *(&v63 + 1) = v35;
  *&v64 = v62;
  *(&v64 + 1) = v61;
  v66 = swift_getOpaqueTypeConformance2();
  v67 = v40;
  v44 = v57;
  v45 = swift_getWitnessTable();
  sub_1C593EDC0(v24, v44, v45);
  return (*(v56 + 8))(v24, v44);
}

uint64_t sub_1C59E0BD8(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  type metadata accessor for MetadataStyleModifier(255, a2, a3, a4);
  swift_getWitnessTable();
  v5 = sub_1C5BC9394();
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  WitnessTable = swift_getWitnessTable();
  sub_1C593EDC0(a1, v5, WitnessTable);
  sub_1C593EDC0(v8, v5, WitnessTable);
  return (*(v6 + 8))(v8, v5);
}

uint64_t sub_1C59E0D40@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v109 = a4;
  v9 = sub_1C5BC8F34();
  v100 = *(v9 - 8);
  v101 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v99 = v94 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8, &qword_1C5BD61B0);
  v102 = *(v11 - 8);
  v103 = v11;
  MEMORY[0x1EEE9AC00](v11);
  v98 = v94 - v12;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192998, &qword_1C5BD6120);
  MEMORY[0x1EEE9AC00](v13);
  v107 = v94 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  *&v16 = MEMORY[0x1EEE9AC00](v15).n128_u64[0];
  v18 = v94 - v17;
  v19 = *(a1 + 32);
  if (v19)
  {
    swift_getKeyPath(aP_20, v16);
    swift_getKeyPath(a0_3);

    sub_1C5BC8034();

    v20 = v144;
    v104 = v19;
    v105 = v13;
    v106 = a5;
    v108 = a3;
    if (v144)
    {
      if (([v144 isDeviceRoute] & 1) == 0)
      {
        v97 = v18;
        v22 = _UISolariumEnabled();
        v95 = v20;
        v23 = [v20 routeName];
        v24 = sub_1C5BCAE74();
        v26 = v25;

        v96 = a1;
        if ((v22 & 1) == 0)
        {
          v24 = sub_1C5BCAEC4();
          v28 = v27;

          v26 = v28;
        }

        *&v144 = v24;
        *(&v144 + 1) = v26;
        sub_1C594A23C();
        v29 = sub_1C5BC9CA4();
        v31 = v30;
        v33 = v32;
        v34 = *(a2 + 16);
        v35 = sub_1C5BC9C14();
        v37 = v36;
        v39 = v38;
        sub_1C5953BD8(v29, v31, v33 & 1);

        v170[0] = v34;
        *&v144 = v34;

        v40 = sub_1C5BC9BC4();
        v42 = v41;
        LOBYTE(v34) = v43;
        v45 = v44;
        v94[1] = v44;
        sub_1C5953BD8(v35, v37, v39 & 1);

        sub_1C5961F90(v170);
        KeyPath = swift_getKeyPath(byte_1C5BD6238);
        *&v144 = v40;
        v47 = v40;
        *(&v144 + 1) = v42;
        LOBYTE(v40) = v34 & 1;
        LOBYTE(v145) = v34 & 1;
        *(&v145 + 1) = v45;
        *&v146 = KeyPath;
        *(&v146 + 1) = 1;
        LOBYTE(v147) = 0;
        v48 = [objc_opt_self() mainBundle];
        v49 = sub_1C5949F2C();
        v51 = v50;

        *&v136 = v49;
        *(&v136 + 1) = v51;
        MEMORY[0x1C694F170](46, 0xE100000000000000);
        MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF6980);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0, &qword_1C5BE3590);
        sub_1C595E1AC();
        v52 = v98;
        sub_1C5BCA164();

        sub_1C5953BD8(v47, v42, v40);

        v53 = v52;
        v18 = v97;
        sub_1C59E71FC(v53, v97);
        v21 = 0;
        a1 = v96;
LABEL_9:
        (*(v102 + 56))(v18, v21, 1, v103);
        v54 = *(a1 + 8);
        swift_beginAccess();
        v56 = *(v54 + 24);
        v55 = *(v54 + 32);
        swift_beginAccess();
        v57 = *(v54 + 89);
        swift_beginAccess();
        if (*(v54 + 16) == 2)
        {
          swift_beginAccess();
          sub_1C59318C8(v54 + 96, &v144);
          v58 = *(&v145 + 1);
          v59 = v146;
          __swift_project_boxed_opaque_existential_0(&v144, *(&v145 + 1));
          *(&v137 + 1) = &type metadata for MetadataButtonStyle;
          *&v138 = sub_1C59E6F34();

          sub_1C59DF660(&v136, v58, v59);
          __swift_destroy_boxed_opaque_existential_0(&v136);
          __swift_destroy_boxed_opaque_existential_0(&v144);
        }

        else
        {
        }

        v60 = sub_1C5BC8C84();
        v62 = v61;
        v63 = swift_getKeyPath(byte_1C5BD5C28);
        v161 = 0;
        *&v157 = v56;
        *(&v157 + 1) = v55;
        LOWORD(v158) = v57;
        *(&v158 + 1) = v60;
        *&v159 = v62;
        *(&v159 + 1) = v63;
        v160 = 0;
        v64 = *(a1 + 128);
        if (*(a1 + 136) == 1)
        {
          v156 = *(a1 + 128);
        }

        else
        {

          sub_1C5BCB4E4();
          v65 = sub_1C5BC9844();
          sub_1C5BC7C54();

          v66 = v99;
          sub_1C5BC8F24();
          swift_getAtKeyPath();

          (*(v100 + 8))(v66, v101);
          v64 = v156;
        }

        swift_getKeyPath(byte_1C5BD6200);
        *&v144 = v64;
        sub_1C59576B4(&qword_1EDA4B960, 255, type metadata accessor for WindowProperties, &unk_1C5BDAF08);
        sub_1C5BC7B74();

        v67 = *(v64 + 49);

        LOBYTE(v144) = v67;
        v69 = _s22MiniPlayerMetadataViewV5TitleVMa(0, v108, v109, v68);
        WitnessTable = swift_getWitnessTable();
        v71 = sub_1C59E7054();
        sub_1C5BCA1C4();
        v152[0] = v157;
        v152[1] = v158;
        v152[2] = v159;
        v153 = v160;
        (*(*(v69 - 8) + 8))(v152, v69);
        v144 = v162;
        v145 = v163;
        v146 = v164;
        v147 = v165;
        *&v136 = v69;
        *(&v136 + 1) = &type metadata for NowPlayingMiniPlayerPosition;
        *&v137 = WitnessTable;
        *(&v137 + 1) = v71;
        v72 = sub_1C5BCA724();
        v101 = swift_getWitnessTable();
        sub_1C593EDC0(&v144, v72, v101);
        v154[0] = v144;
        v154[1] = v145;
        v154[2] = v146;
        v155 = v147;
        v100 = *(v72 - 8);
        v102 = *(v100 + 8);
        v103 = v100 + 8;
        (v102)(v154, v72);
        swift_getKeyPath(aP_20);
        swift_getKeyPath(a0_3);

        sub_1C5BC8034();

        v73 = v144;
        if (!v144 || (v74 = [v144 isDeviceRoute], v73, v74))
        {
          v76 = *(a1 + 8);
          swift_beginAccess();
          sub_1C59400B0(v76 + 40, &v144, &qword_1EC192770, &qword_1C5BEBF20);
          if (v147 != 255)
          {
            v132 = v144;
            v133 = v145;
            v134 = v146;
            LOBYTE(v135) = v147;
            sub_1C59E64F4(&v132, &v136);
            swift_beginAccess();
            v77 = *(v76 + 89);
            v144 = v136;
            v145 = v137;
            v146 = v138;
            LOBYTE(v147) = v139;
            HIBYTE(v147) = v77;
            v78 = v108;
            v148 = sub_1C5BC8C84();
            v149 = v79;
            v150 = swift_getKeyPath(byte_1C5BD5C28);
            v151 = 0;
            sub_1C59E6580(&v132);
            v80 = v109;
            v82 = _s22MiniPlayerMetadataViewV8SubtitleVMa(0, v78, v109, v81);
            v83 = swift_getWitnessTable();
            sub_1C593EDC0(&v144, v82, v83);
            v84 = *(*(v82 - 8) + 8);
            v84(&v144, v82);
            sub_1C593EDC0(&v136, v82, v83);
            v84(&v136, v82);
            v112 = v118;
            v113 = v119;
            v114 = v120;
            v115 = v121;
            v110 = v116;
            v111 = v117;
            sub_1C5941600(&v110, &v144);
            v85 = sub_1C5BCB804();
            (*(*(v85 - 8) + 8))(&v110, v85);
LABEL_21:
            v87 = v107;
            sub_1C59400B0(v18, v107, &qword_1EC192998, &qword_1C5BD6120);
            v132 = v166;
            v133 = v167;
            v134 = v168;
            v135 = v169;
            v127 = v166;
            v128 = v167;
            v129 = v168;
            v130 = v169;
            v131[0] = v87;
            v131[1] = &v127;
            _s22MiniPlayerMetadataViewV8SubtitleVMa(255, v78, v80, v88);
            v89 = sub_1C5BCB804();
            v90 = *(v89 - 8);
            (*(v90 + 16))(&v136, &v144, v89);
            v131[2] = &v136;
            (*(v100 + 16))(&v116, &v132, v72);
            v126[0] = v105;
            v126[1] = v72;
            v126[2] = v89;
            v123 = sub_1C595E060(&qword_1EDA46498, &qword_1EC192998, &qword_1C5BD6120, sub_1C595E0EC);
            v124 = v101;
            v122 = swift_getWitnessTable();
            v125 = swift_getWitnessTable();
            sub_1C594226C(v131, 3uLL, v126);
            v91 = *(v90 + 8);
            v91(&v144, v89);
            v110 = v166;
            v111 = v167;
            v112 = v168;
            LOWORD(v113) = v169;
            v92 = v102;
            (v102)(&v110, v72);
            sub_1C5924EF4(v18, &qword_1EC192998, &qword_1C5BD6120);
            v91(&v136, v89);
            v116 = v127;
            v117 = v128;
            v118 = v129;
            LOWORD(v119) = v130;
            v92(&v116, v72);
            return sub_1C5924EF4(v107, &qword_1EC192998, &qword_1C5BD6120);
          }

          sub_1C5924EF4(&v144, &qword_1EC192770, &qword_1C5BEBF20);
        }

        v137 = 0u;
        v138 = 0u;
        v136 = 0u;
        v139 = 0;
        v140 = 1;
        v78 = v108;
        v80 = v109;
        _s22MiniPlayerMetadataViewV8SubtitleVMa(0, v108, v109, v75);
        v142 = 0;
        v141 = 0;
        v143 = 0;
        swift_getWitnessTable();
        sub_1C5941600(&v136, &v144);
        v86 = sub_1C5BCB804();
        (*(*(v86 - 8) + 8))(&v136, v86);
        goto LABEL_21;
      }
    }

    v21 = 1;
    goto LABEL_9;
  }

  type metadata accessor for NowPlayingRouteObserver(0);
  sub_1C59576B4(&qword_1EDA48458, 255, type metadata accessor for NowPlayingRouteObserver, &unk_1C5BEA348);
  result = sub_1C5BC8C74();
  __break(1u);
  return result;
}

void sub_1C59E1B90(uint64_t a1)
{
  v2 = sub_1C5BC8F34();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v17 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(a1 + 48);
  v7 = *(a1 + 56);

  if ((v7 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v8 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v3 + 8))(v5, v2);
    v6 = v18;
  }

  swift_getKeyPath(asc_1C5BD5D60);
  v18 = v6;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v9 = *(v6 + 17);

  if (v9 == 1)
  {
    v10 = *(a1 + 8);
    KeyPath = swift_getKeyPath(byte_1C5BD6168);
    v12 = swift_getKeyPath(aP_21);

    sub_1C5B3EBBC(0, v10, KeyPath, v12);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v13 = sub_1C5BC7D64();
    __swift_project_value_buffer(v13, qword_1EDA5DA78);
    v14 = sub_1C5BC7D44();
    v15 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v14, v15))
    {
      v16 = swift_slowAlloc();
      *v16 = 0;
      _os_log_impl(&dword_1C5922000, v14, v15, "Mini player marquee disabled (transitioning out of mini player)", v16, 2u);
      MEMORY[0x1C69510F0](v16, -1, -1);
    }
  }
}

void sub_1C59E1E50(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v6 = sub_1C5BC8F34();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v30[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *(a3 + 48);
  v11 = *(a3 + 56);

  if ((v11 & 1) == 0)
  {
    sub_1C5BCB4E4();
    v12 = sub_1C5BC9844();
    sub_1C5BC7C54();

    sub_1C5BC8F24();
    swift_getAtKeyPath();

    (*(v7 + 8))(v9, v6);
    v10 = v33[0];
  }

  swift_getKeyPath(asc_1C5BD5D60);
  v33[0] = v10;
  sub_1C59576B4(&qword_1EDA4AF70, 255, _s12PresentationCMa, &unk_1C5BD2B30);
  sub_1C5BC7B74();

  v13 = *(v10 + 17);

  if ((v13 & 1) == 0)
  {
    v14 = *(a3 + 8);
    KeyPath = swift_getKeyPath(byte_1C5BD6168);
    v16 = swift_getKeyPath(aP_21);

    sub_1C5B3EBBC(1, v14, KeyPath, v16);
    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DA78);
    sub_1C59400B0(a1, v33, &qword_1EC1929B0, &qword_1C5BDD720);
    sub_1C59400B0(a2, v32, &qword_1EC1929B0, &qword_1C5BDD720);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4F4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      v31 = v21;
      *v20 = 136446466;
      sub_1C59400B0(v33, v30, &qword_1EC1929B0, &qword_1C5BDD720);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B0, &qword_1C5BDD720);
      v22 = sub_1C5BCAEA4();
      v24 = v23;
      sub_1C5924EF4(v33, &qword_1EC1929B0, &qword_1C5BDD720);
      v25 = sub_1C592ADA8(v22, v24, &v31);

      *(v20 + 4) = v25;
      *(v20 + 12) = 2082;
      sub_1C59400B0(v32, v30, &qword_1EC1929B0, &qword_1C5BDD720);
      v26 = sub_1C5BCAEA4();
      v28 = v27;
      sub_1C5924EF4(v32, &qword_1EC1929B0, &qword_1C5BDD720);
      v29 = sub_1C592ADA8(v26, v28, &v31);

      *(v20 + 14) = v29;
      _os_log_impl(&dword_1C5922000, v18, v19, "Mini player marquee enabled (currentItemID changed from %{public}s to %{public}s)", v20, 0x16u);
      swift_arrayDestroy();
      MEMORY[0x1C69510F0](v21, -1, -1);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    else
    {

      sub_1C5924EF4(v32, &qword_1EC1929B0, &qword_1C5BDD720);
      sub_1C5924EF4(v33, &qword_1EC1929B0, &qword_1C5BDD720);
    }
  }
}

uint64_t sub_1C59E22A8@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  v38 = a3;
  v37 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v37);
  v6 = &v36 - v5;
  v36 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8, &qword_1C5BD61B0);
  MEMORY[0x1EEE9AC00](v36);
  v39 = &v36 - v7;
  v8 = *a1;
  v9 = a1[1];
  v42 = v8;
  v43 = v9;
  sub_1C594A23C();

  v10 = sub_1C5BC9CA4();
  v12 = v11;
  v14 = v13;
  v15 = *(a2 + 32);
  v16 = sub_1C5BC9C14();
  v18 = v17;
  v20 = v19;
  sub_1C5953BD8(v10, v12, v14 & 1);

  v49 = v15;
  v42 = v15;

  v21 = sub_1C5BC9BC4();
  v23 = v22;
  LOBYTE(v15) = v24;
  v26 = v25;
  sub_1C5953BD8(v16, v18, v20 & 1);

  sub_1C5961F90(&v49);
  KeyPath = swift_getKeyPath(byte_1C5BD6238);
  v42 = v21;
  v43 = v23;
  LOBYTE(v15) = v15 & 1;
  v44 = v15;
  v45 = v26;
  v46 = KeyPath;
  v47 = 1;
  v48 = 0;
  v28 = [objc_opt_self() mainBundle];
  v29 = sub_1C5949F2C();
  v31 = v30;

  v40 = v29;
  v41 = v31;
  MEMORY[0x1C694F170](46, 0xE100000000000000);
  MEMORY[0x1C694F170](0xD000000000000010, 0x80000001C5BF69C0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1964C0, &qword_1C5BE3590);
  sub_1C595E1AC();
  sub_1C5BCA164();
  sub_1C5953BD8(v21, v23, v15);

  v32 = *MEMORY[0x1E697E6E8];
  v33 = sub_1C5BC89B4();
  (*(*(v33 - 8) + 104))(v6, v32, v33);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    sub_1C595E0EC();
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    v35 = v39;
    sub_1C5BC9F54();
    sub_1C5924EF4(v6, &qword_1EC192838, &qword_1C5BD5C80);
    return sub_1C5924EF4(v35, &qword_1EC1929B8, &qword_1C5BD61B0);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1C59E26A0@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v82 = a2;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08, &qword_1C5BD65A0);
  v6 = *(a1 + 16);
  v5 = *(a1 + 24);
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v67 = v6;
  v68 = v5;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v66 = AssociatedTypeWitness;
  v62 = swift_getAssociatedTypeWitness();
  v63 = sub_1C5BCB804();
  v8 = sub_1C5BC92D4();
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A10, &unk_1C5BD65A8);
  v65 = v8;
  v69 = sub_1C5BC92D4();
  v9 = sub_1C5BCA584();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v70 = &v60 - v11;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192980, &qword_1C5BD5EC0);
  v12 = sub_1C5BC8AB4();
  v73 = *(v12 - 8);
  MEMORY[0x1EEE9AC00](v12);
  v71 = &v60 - v13;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192180, &qword_1C5BD4870);
  v14 = sub_1C5BC8AB4();
  v75 = *(v14 - 8);
  MEMORY[0x1EEE9AC00](v14);
  v72 = &v60 - v15;
  __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929C0, &qword_1C5BD6230);
  v76 = v14;
  v16 = sub_1C5BC8AB4();
  v78 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v74 = &v60 - v17;
  sub_1C5BC97C4();
  v80 = v16;
  v18 = sub_1C5BC8AB4();
  v81 = *(v18 - 8);
  MEMORY[0x1EEE9AC00](v18);
  v77 = &v60 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v79 = &v60 - v21;
  v22 = sub_1C5BC8F34();
  v23 = *(v22 - 8);
  MEMORY[0x1EEE9AC00](v22);
  v26 = &v60 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = *(v3 + 72);
  if (*(v3 + 80) == 1)
  {
    v28 = *(v3 + 72);
    v100 = *(v3 + 72);
  }

  else
  {
    v60 = v24;

    sub_1C5BCB4E4();
    v29 = sub_1C5BC9844();
    v61 = v3;
    v30 = v29;
    sub_1C5BC7C54();

    v3 = v61;
    sub_1C5BC8F24();
    swift_getAtKeyPath();
    v31 = sub_1C5942458(v27, 0);
    (*(v23 + 8))(v26, v60, v31);
    v28 = v100;
  }

  if (v28 == 3)
  {
    LOBYTE(v28) = 0;
  }

  LOBYTE(v98[0]) = v28;
  v32 = sub_1C595D950(v98, &type metadata for NowPlayingMetadataViewSpecs.MiniPlayer, &off_1F451C840);
  v98[0] = v101;
  v98[1] = v102;
  v98[2] = v103;
  v99 = v104;
  MEMORY[0x1EEE9AC00](v32);
  v33 = v68;
  *(&v60 - 4) = v67;
  *(&v60 - 3) = v33;
  *(&v60 - 2) = v3;
  v34 = sub_1C59E75D8();
  v97 = swift_getAssociatedConformanceWitness();
  WitnessTable = swift_getWitnessTable();
  v95 = v34;
  v96 = WitnessTable;
  v36 = swift_getWitnessTable();
  v37 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10, &unk_1C5BD65A8, MEMORY[0x1E6981810]);
  v93 = v36;
  v94 = v37;
  v38 = swift_getWitnessTable();
  v39 = v70;
  sub_1C5BCA574();
  v40 = v99;
  v92 = v38;
  v41 = swift_getWitnessTable();
  v42 = v71;
  sub_1C5BCA1F4();
  (*(v10 + 8))(v39, v9);
  v91 = v40;
  v43 = MEMORY[0x1E6980A18];
  v44 = sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
  v89 = v41;
  v90 = v44;
  v45 = swift_getWitnessTable();
  v46 = v72;
  sub_1C5BC9F64();
  (*(v73 + 8))(v42, v12);
  v47 = sub_1C5924F54(&qword_1EDA461E0, &qword_1EC192180, &qword_1C5BD4870, MEMORY[0x1E6980490]);
  v87 = v45;
  v88 = v47;
  v48 = v76;
  v49 = swift_getWitnessTable();
  v50 = v74;
  sub_1C5BCA3B4();
  (*(v75 + 8))(v46, v48);
  v51 = sub_1C5924F54(&qword_1EDA46040, &qword_1EC1929C0, &qword_1C5BD6230, v43);
  v85 = v49;
  v86 = v51;
  v52 = v80;
  v53 = swift_getWitnessTable();
  v54 = v77;
  sub_1C595BB1C(0xD000000000000013, 0x80000001C5BF69E0, v52);
  sub_1C595E8B8(v98);
  (*(v78 + 8))(v50, v52);
  v55 = sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
  v83 = v53;
  v84 = v55;
  v56 = swift_getWitnessTable();
  v57 = v79;
  sub_1C593EDC0(v54, v18, v56);
  v58 = *(v81 + 8);
  v58(v54, v18);
  sub_1C593EDC0(v57, v18, v56);
  return (v58)(v57, v18);
}

uint64_t sub_1C59E303C@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X8>)
{
  v122 = a4;
  v123 = a1;
  AssociatedTypeWitness = swift_getAssociatedTypeWitness();
  v7 = sub_1C5950C90();
  v106 = a2;
  AssociatedConformanceWitness = swift_getAssociatedConformanceWitness();
  v144 = &type metadata for NowPlayingLookupID;
  *&v145 = AssociatedTypeWitness;
  *(&v145 + 1) = v7;
  *&v146 = AssociatedConformanceWitness;
  v9 = type metadata accessor for ViewProvider(0, &v144);
  v104 = *(v9 - 8);
  v105 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v103 = &v102 - v10;
  v114 = AssociatedConformanceWitness;
  v116 = AssociatedTypeWitness;
  v113 = swift_getAssociatedTypeWitness();
  v11 = sub_1C5BCB804();
  v108 = *(v11 - 8);
  MEMORY[0x1EEE9AC00](v11);
  v107 = &v102 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v112 = &v102 - v14;
  v15 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08, &qword_1C5BD65A0);
  v121 = v11;
  v16 = sub_1C5BC92D4();
  v111 = *(v16 - 8);
  MEMORY[0x1EEE9AC00](v16);
  v110 = &v102 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A20, &qword_1C5BD65C0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v102 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192838, &qword_1C5BD5C80);
  MEMORY[0x1EEE9AC00](v21);
  v23 = &v102 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192A18, &qword_1C5BD65B8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v102 - v25;
  v109 = v15;
  MEMORY[0x1EEE9AC00](v27);
  v29 = &v102 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v30);
  v32 = &v102 - v31;
  v33 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A10, &unk_1C5BD65A8);
  v120 = v16;
  v34 = v123;
  v115 = v33;
  v35 = sub_1C5BC92D4();
  v118 = *(v35 - 8);
  v119 = v35;
  MEMORY[0x1EEE9AC00](v35);
  v117 = &v102 - v36;
  sub_1C59E64F4(v34, &v144);
  if (v148)
  {
    if (v148 == 1)
    {
      v37 = v144;
      v38 = v145;
      v39 = v106;
      sub_1C59498C4(*(v34 + 56), *(v34 + 64), v106, *(a3 + 8));
      v40 = *(a3 + 384);
      swift_unknownObjectRetain();
      v41 = v103;
      v40(v39, a3);
      swift_unknownObjectRelease();
      v138 = v37;
      v139 = v38;
      v42 = v107;
      v43 = v105;
      sub_1C595BC70();

      (v104->Description)(v41, v43);
      v123 = swift_getAssociatedConformanceWitness();
      v129 = v123;
      v44 = v121;
      WitnessTable = swift_getWitnessTable();
      v46 = v112;
      sub_1C593EDC0(v42, v44, WitnessTable);
      v47 = *(v108 + 1);
      v47(v42, v44);
      sub_1C593EDC0(v46, v44, WitnessTable);
      v48 = sub_1C59E75D8();
      v49 = v110;
      sub_1C5941738(v42, v109, v44, v48, WitnessTable);
      v127 = v48;
      v128 = WitnessTable;
      v50 = v120;
      v51 = swift_getWitnessTable();
      v52 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10, &unk_1C5BD65A8, MEMORY[0x1E6981810]);
      v53 = v117;
      sub_1C5950E54(v49, v50, v115, v51, v52);
      (*(v111 + 8))(v49, v50);
      v47(v42, v44);
      v47(v112, v44);
      v54 = v123;
    }

    else
    {
      v142[0] = v145;
      v142[1] = v146;
      v89 = v144;
      v143 = v147;
      sub_1C59E6618(v142, &v139);
      v138 = v89;
      v90 = sub_1C59E75D8();
      v54 = swift_getAssociatedConformanceWitness();
      v137 = v54;
      v91 = swift_getWitnessTable();
      v135 = v90;
      v136 = v91;
      v92 = v120;
      v93 = swift_getWitnessTable();
      v94 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10, &unk_1C5BD65A8, MEMORY[0x1E6981810]);
      v53 = v117;
      sub_1C5941738(&v138, v92, v115, v93, v94);
      sub_1C5924EF4(&v138, &qword_1EC192A10, &unk_1C5BD65A8);
      sub_1C59E652C(v142);
    }

    goto LABEL_7;
  }

  v106 = v21;
  v107 = v29;
  v108 = v20;
  v112 = v32;
  v56 = v144;
  v55 = v145;
  v57 = *(v34 + 49);
  v58 = &v26[v24[10]];
  *&v142[0] = 0;
  sub_1C5BCA684();
  v59 = v139;
  *v58 = v138;
  v58[1] = v59;
  v60 = &v26[v24[11]];
  *v60 = swift_getKeyPath("؈\\&");
  v60[8] = 0;
  v61 = &v26[v24[12]];
  *v61 = swift_getKeyPath(asc_1C5BD5D88);
  *(v61 + 1) = 0;
  *(v61 + 2) = 0;
  *(v61 + 3) = 0;
  v61[32] = 0;
  v62 = &v26[v24[13]];
  *v62 = swift_getKeyPath(asc_1C5BD5DB0);
  v62[8] = 0;
  v63 = &v26[v24[14]];
  *v63 = swift_getKeyPath(byte_1C5BD5CB8);
  v63[8] = 0;
  LOBYTE(v142[0]) = 1;
  v64 = &v26[v24[9]];
  *v64 = xmmword_1C5BD5090;
  *(v64 + 2) = 0x4008000000000000;
  v64[24] = v57;
  *(v64 + 28) = 0;
  *(v64 + 9) = 0;
  v64[40] = 1;
  *(v64 + 6) = 0xD000000000000013;
  *(v64 + 7) = 0x80000001C5BF6A00;
  v138 = v56;
  v139 = v55;
  sub_1C594A23C();

  v123 = sub_1C5BC9CA4();
  v138 = v123;
  v139 = v65;
  v105 = v65;
  v67 = v66 & 1;
  v140 = v66 & 1;
  v141 = v68;
  v69 = *MEMORY[0x1E697E6E8];
  v70 = sub_1C5BC89B4();
  (*(*(v70 - 8) + 104))(v23, v69, v70);
  sub_1C59576B4(&qword_1EDA46688, 255, MEMORY[0x1E697E730], MEMORY[0x1E697E750]);
  result = sub_1C5BCADB4();
  if (result)
  {
    v104 = v56;
    sub_1C5924F54(&qword_1EDA45D08, &qword_1EC192838, &qword_1C5BD5C80, MEMORY[0x1E69E6ED8]);
    sub_1C5BC9F54();
    sub_1C5924EF4(v23, &qword_1EC192838, &qword_1C5BD5C80);
    sub_1C5953BD8(v123, v105, v67);

    v72 = &v26[v24[15]];
    *v72 = 0;
    v72[8] = 1;
    v73 = v108;
    sub_1C59E7D34(v26, v108, &qword_1EC192A18, &qword_1C5BD65B8);
    v74 = sub_1C5BCAE44();

    v75 = [v74 _isNaturallyRTL];

    KeyPath = swift_getKeyPath(byte_1C5BD5E00);
    v77 = v73;
    v78 = v107;
    sub_1C59E7D34(v77, v107, &qword_1EC192A18, &qword_1C5BD65B8);
    v79 = v109;
    v80 = v78 + *(v109 + 36);
    *v80 = KeyPath;
    *(v80 + 8) = v75;
    v81 = v112;
    sub_1C59E7D34(v78, v112, &qword_1EC192A08, &qword_1C5BD65A0);
    v82 = sub_1C59E75D8();
    v54 = swift_getAssociatedConformanceWitness();
    v126 = v54;
    v83 = v121;
    v84 = swift_getWitnessTable();
    v85 = v110;
    sub_1C5950E54(v81, v79, v83, v82, v84);
    v124 = v82;
    v125 = v84;
    v86 = v120;
    v87 = swift_getWitnessTable();
    v88 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10, &unk_1C5BD65A8, MEMORY[0x1E6981810]);
    v53 = v117;
    sub_1C5950E54(v85, v86, v115, v87, v88);
    (*(v111 + 8))(v85, v86);
    sub_1C5924EF4(v81, &qword_1EC192A08, &qword_1C5BD65A0);
LABEL_7:
    v96 = v118;
    v95 = v119;
    v97 = sub_1C59E75D8();
    v134 = v54;
    v98 = swift_getWitnessTable();
    v132 = v97;
    v133 = v98;
    v99 = swift_getWitnessTable();
    v100 = sub_1C5924F54(&qword_1EDA45FB0, &qword_1EC192A10, &unk_1C5BD65A8, MEMORY[0x1E6981810]);
    v130 = v99;
    v131 = v100;
    v101 = swift_getWitnessTable();
    sub_1C593EDC0(v53, v95, v101);
    return (*(v96 + 8))(v53, v95);
  }

  __break(1u);
  return result;
}

uint64_t sub_1C59E3D54(__n128 a1)
{
  if (_UISolariumEnabled())
  {
    v1 = sub_1C5BC9A44();
    sub_1C5BC99D4();
    sub_1C5BC9994();
    v2 = sub_1C5BC99E4();

    result = sub_1C5BC99D4();
    v4 = result;
    v5 = 0;
  }

  else
  {
    if (qword_1EC190530 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC1926A8;
    v2 = unk_1EC1926B0;
    v4 = qword_1EC1926B8;
    v5 = byte_1EC1926C0;
  }

  qword_1EC192668 = v1;
  unk_1EC192670 = v2;
  qword_1EC192678 = v4;
  byte_1EC192680 = v5;
  return result;
}

uint64_t sub_1C59E3E28(__n128 a1)
{
  if (_UISolariumEnabled())
  {
    v1 = sub_1C5BC9A44();
    v2 = sub_1C5BC9A54();
    result = sub_1C5BC9924();
    v4 = result;
    v5 = 0;
  }

  else
  {
    if (qword_1EC190530 != -1)
    {
      swift_once();
    }

    v1 = qword_1EC1926A8;
    v2 = unk_1EC1926B0;
    v4 = qword_1EC1926B8;
    v5 = byte_1EC1926C0;
  }

  qword_1EC192688 = v1;
  unk_1EC192690 = v2;
  qword_1EC192698 = v4;
  byte_1EC1926A0 = v5;
  return result;
}

uint64_t sub_1C59E3EE4()
{
  sub_1C5BC9A34();
  sub_1C5BC9994();
  v0 = sub_1C5BC99E4();

  sub_1C5BC9924();
  sub_1C5BC9994();
  v1 = sub_1C5BC99E4();

  result = sub_1C5BC9924();
  qword_1EC1926A8 = v0;
  unk_1EC1926B0 = v1;
  qword_1EC1926B8 = result;
  byte_1EC1926C0 = 1;
  return result;
}

uint64_t sub_1C59E3F74()
{
  v0 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v0);
  v2 = v13 - ((v1 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = (v13 - v4);
  if (qword_1EC190668 != -1)
  {
    swift_once();
  }

  v6 = qword_1EC1A6AB0;
  v7 = *(v0 + 36);
  v8 = *MEMORY[0x1E6981DB8];
  v9 = sub_1C5BCAB54();
  (*(*(v9 - 8) + 104))(v5 + v7, v8, v9);
  *v5 = v6;

  v13[1] = sub_1C5BCA4C4();
  sub_1C59400B0(v5, v2, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  v10 = sub_1C5BC85E4();
  v11 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v5, &unk_1EC196170, &qword_1C5BDA000);
  qword_1EC1926D8 = v10;
  unk_1EC1926E0 = v11;
  return result;
}

uint64_t sub_1C59E4160(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1EC196170, &qword_1C5BDA000);
  MEMORY[0x1EEE9AC00](v5);
  v7 = v18 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = (v18 - v9);
  if (qword_1EC190670 != -1)
  {
    swift_once();
  }

  v11 = qword_1EC1A6AB8;
  v12 = *(v5 + 36);
  v13 = *MEMORY[0x1E6981DB8];
  v14 = sub_1C5BCAB54();
  (*(*(v14 - 8) + 104))(v10 + v12, v13, v14);
  *v10 = v11;

  v18[1] = sub_1C5BCA434();
  sub_1C59400B0(v10, v7, &unk_1EC196170, &qword_1C5BDA000);
  sub_1C5924F54(&qword_1EC192920, &unk_1EC196170, &qword_1C5BDA000, MEMORY[0x1E697FAF0]);
  v15 = sub_1C5BC85E4();
  v16 = sub_1C5BC85E4();
  result = sub_1C5924EF4(v10, &unk_1EC196170, &qword_1C5BDA000);
  *a2 = v15;
  *a3 = v16;
  return result;
}

uint64_t sub_1C59E4348()
{
  v0 = MEMORY[0x1E69815C0];
  __swift_allocate_value_buffer(MEMORY[0x1E69815C0], qword_1EC1926F8);
  v1 = __swift_project_value_buffer(v0, qword_1EC1926F8);
  result = sub_1C5BCA434();
  *v1 = result;
  return result;
}

uint64_t sub_1C59E4398(__n128 a1)
{
  if (_UISolariumEnabled())
  {
    v1 = sub_1C5BC9904();
    sub_1C5BCA4C4();
    v2 = sub_1C5BC85E4();
    sub_1C5BC9904();
    sub_1C5BC9994();
    v3 = sub_1C5BC99E4();

    sub_1C5BCA4C4();
    v4 = sub_1C5BC85E4();
    v5 = sub_1C5BC9904();
    *&v11[0] = sub_1C5BCA4C4();
    result = sub_1C5BC85E4();
    v7 = result;
    v8 = 20.0;
    v9 = 0;
  }

  else
  {
    if (qword_1EC190568 != -1)
    {
      swift_once();
    }

    v11[2] = xmmword_1EC192730;
    v11[3] = *&qword_1EC192740;
    v11[0] = xmmword_1EC192710;
    v11[1] = *&qword_1EC192720;
    v8 = unk_1EC192748;
    v5 = *(&xmmword_1EC192730 + 1);
    v7 = qword_1EC192740;
    v3 = unk_1EC192728;
    v4 = xmmword_1EC192730;
    v1 = *(&xmmword_1EC192710 + 1);
    v2 = qword_1EC192720;
    v9 = xmmword_1EC192710;
    result = sub_1C595DE28(v11, &v10);
  }

  *&xmmword_1EC1A69B8 = v9;
  *(&xmmword_1EC1A69B8 + 1) = v1;
  unk_1EC1A69C8 = v2;
  qword_1EC1A69D0 = v3;
  unk_1EC1A69D8 = v4;
  qword_1EC1A69E0 = v5;
  unk_1EC1A69E8 = v7;
  qword_1EC1A69F0 = *&v8;
  return result;
}

uint64_t sub_1C59E4508()
{
  v0 = sub_1C5BC9A34();
  sub_1C5BCA524();
  v1 = sub_1C5BC85E4();
  sub_1C5BC9904();
  sub_1C5BC9974();
  v2 = sub_1C5BC99E4();

  sub_1C5BC93F4();
  v3 = sub_1C5BC85E4();
  v4 = sub_1C5BC9904();
  sub_1C5BCA524();
  result = sub_1C5BC85E4();
  *&xmmword_1EC192710 = 0;
  *(&xmmword_1EC192710 + 1) = v0;
  qword_1EC192720 = v1;
  unk_1EC192728 = v2;
  *&xmmword_1EC192730 = v3;
  *(&xmmword_1EC192730 + 1) = v4;
  qword_1EC192740 = result;
  unk_1EC192748 = 0x4038000000000000;
  return result;
}

uint64_t sub_1C59E45F8@<X0>(_OWORD *a1@<X8>)
{
  if (qword_1EC190560 != -1)
  {
    v5 = a1;
    swift_once();
    a1 = v5;
  }

  v1 = unk_1EC1A69C8;
  v7[0] = xmmword_1EC1A69B8;
  v7[1] = unk_1EC1A69C8;
  v2 = unk_1EC1A69D8;
  v3 = unk_1EC1A69E8;
  v7[2] = unk_1EC1A69D8;
  v7[3] = unk_1EC1A69E8;
  *a1 = xmmword_1EC1A69B8;
  a1[1] = v1;
  a1[2] = v2;
  a1[3] = v3;
  return sub_1C595DE28(v7, &v6);
}

uint64_t sub_1C59E46C8()
{
  v0 = sub_1C5BC7B24();
  MEMORY[0x1EEE9AC00](v0 - 8);
  v1 = sub_1C5BCAE34();
  MEMORY[0x1EEE9AC00](v1 - 8);
  sub_1C5BCADC4();
  if (qword_1EDA4E5D0 != -1)
  {
    swift_once();
  }

  v2 = qword_1EDA5DD00;
  sub_1C5BC7B14();
  result = sub_1C5BCAE94();
  qword_1EC1A69F8 = result;
  unk_1EC1A6A00 = v4;
  return result;
}

uint64_t sub_1C59E4814@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 24);
  *a2 = *(v3 + 16);
  a2[1] = v4;
}

uint64_t sub_1C59E4874()
{
  swift_beginAccess();
  v1 = *(v0 + 16);

  return v1;
}

uint64_t sub_1C59E48C0()
{
  swift_beginAccess();
  v1 = *(v0 + 32);

  return v1;
}

uint64_t sub_1C59E490C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 48);
}

double sub_1C59E4958(uint64_t *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(a8_2);
  v5 = swift_getKeyPath(byte_1C5BD5810);

  return sub_1C5971010(v2, v3, KeyPath, v5);
}

uint64_t sub_1C59E4A0C@<X0>(uint64_t *a1@<X0>, void *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  v4 = *(v3 + 64);
  *a2 = *(v3 + 56);
  a2[1] = v4;
}

double sub_1C59E4A6C(uint64_t *a1, uint64_t *a2, uint64_t a3, uint64_t a4, const char *a5, const char *a6)
{
  v7 = *a1;
  v8 = a1[1];
  v9 = *a2;
  KeyPath = swift_getKeyPath(a5);
  v11 = swift_getKeyPath(a6);

  return sub_1C59707FC(v7, v8, v9, KeyPath, v11);
}

uint64_t sub_1C59E4AF0()
{
  swift_beginAccess();
  v1 = *(v0 + 56);

  return v1;
}

void sub_1C59E4B3C(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v3 = *a1;
  swift_beginAccess();
  *a2 = *(v3 + 72);
}

double sub_1C59E4B84(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BD5758);
  v5 = swift_getKeyPath(byte_1C5BD5780);

  return sub_1C59713E8(v2, v3, KeyPath, v5);
}

void *NowPlayingViewModel.PrimaryMetadata.deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));
  return v0;
}

uint64_t NowPlayingViewModel.PrimaryMetadata.__deallocating_deinit()
{

  __swift_destroy_boxed_opaque_existential_0((v0 + 80));

  return swift_deallocClassInstance();
}

uint64_t sub_1C59E4CD4@<X0>(uint64_t *a2@<X8>)
{
  type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
  result = sub_1C5BC7F24();
  *a2 = result;
  return result;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.text(_:)@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  *a3 = a1;
  *(a3 + 8) = a2;
  *(a3 + 48) = 0;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.lookup(_:)@<X0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v2 = *a1;
  v3 = a1[1];
  *a2 = v2;
  *(a2 + 8) = v3;
  *(a2 + 48) = 1;
}

uint64_t static NowPlayingViewModel.MiniPlayerSubtitle.customView<A, B>(id:content:)@<X0>(uint64_t a1@<X0>, uint64_t a6@<X8>)
{
  v7 = MEMORY[0x1EEE9AC00](a1);
  v8(v7);
  *a6 = sub_1C5BCA804();
  result = sub_1C5BCBCA4();
  *(a6 + 48) = 3;
  return result;
}

_BYTE *static NowPlayingViewModel.MiniPlayerSubtitle.copy(_:)@<X0>(_BYTE *result@<X0>, _BYTE *a2@<X8>)
{
  *a2 = *result;
  a2[48] = 2;
  return result;
}

uint64_t sub_1C59E4E54()
{
  swift_beginAccess();
  v1 = *(v0 + 24);

  return v1;
}

uint64_t sub_1C59E4F2C(uint64_t a1)
{
  v2 = v1;
  sub_1C59400B0(a1, &v33, &qword_1EC192780, &qword_1C5BD5878);
  if (v36 == 255)
  {
    sub_1C5924EF4(&v33, &qword_1EC192780, &qword_1C5BD5878);
    v40 = 0u;
    v41 = 0u;
    v39 = 0u;
    v42 = -1;
    KeyPath = swift_getKeyPath(byte_1C5BD5880);
    v4 = swift_getKeyPath(byte_1C5BD58A8);
    sub_1C59400B0(&v39, v37, &qword_1EC192770, &qword_1C5BEBF20);

    sub_1C5971800(v37, v2, KeyPath, v4);
    return sub_1C5924EF4(&v39, &qword_1EC192770, &qword_1C5BEBF20);
  }

  sub_1C59E65B0(&v33, v37);
  sub_1C59E65E8(&v33);
  v39 = *v37;
  v40 = *&v37[16];
  v41 = *&v37[32];
  v42 = v38;
  sub_1C59E65B0(&v39, v37);
  if (v38 <= 1u)
  {
    if (!v38)
    {
      v33 = *v37;
      v36 = 0;
LABEL_19:
      v26 = swift_getKeyPath(byte_1C5BD5880);
      v27 = swift_getKeyPath(byte_1C5BD58A8);
      sub_1C59400B0(&v33, v30, &qword_1EC192770, &qword_1C5BEBF20);

      sub_1C5971800(v30, v2, v26, v27);
LABEL_20:
      sub_1C5924EF4(&v33, &qword_1EC192770, &qword_1C5BEBF20);
      return sub_1C59E6674(&v39);
    }

    v33 = *v37;
    v14 = 1;
LABEL_18:
    v36 = v14;
    goto LABEL_19;
  }

  if (v38 == 2)
  {
    v6 = v37[0];
    v7 = *(v1 + 136);
    if (*(v7 + 16))
    {
      v8 = sub_1C5AB97D8();
      if (v9)
      {
        v10 = (*(v7 + 56) + 16 * v8);
        v11 = v10[1];
        if (v11)
        {
          v12 = 0;
          v13 = *v10;
        }

        else
        {
          v13 = 0;
          v35 = 0u;
          v34 = 0u;
          v12 = -1;
        }

        *&v33 = v13;
        *(&v33 + 1) = v11;
        v36 = v12;
        v28 = swift_getKeyPath(byte_1C5BD5880);
        v29 = swift_getKeyPath(byte_1C5BD58A8);
        sub_1C59400B0(&v33, v30, &qword_1EC192770, &qword_1C5BEBF20);

        sub_1C5971800(v30, v2, v28, v29);
        goto LABEL_20;
      }
    }

    if (qword_1EDA469E0 != -1)
    {
      swift_once();
    }

    v17 = sub_1C5BC7D64();
    __swift_project_value_buffer(v17, qword_1EDA5DA78);
    v18 = sub_1C5BC7D44();
    v19 = sub_1C5BCB4D4();
    if (os_log_type_enabled(v18, v19))
    {
      v20 = swift_slowAlloc();
      v21 = swift_slowAlloc();
      *&v33 = v21;
      *v20 = 136446210;
      v30[0] = v6;
      v22 = sub_1C5BCAEA4();
      v24 = sub_1C592ADA8(v22, v23, &v33);

      *(v20 + 4) = v24;
      _os_log_impl(&dword_1C5922000, v18, v19, "Mini player subtitle unable to copy field %{public}s because its corresponding value could not be found.", v20, 0xCu);
      v25 = __swift_destroy_boxed_opaque_existential_0(v21);
      MEMORY[0x1C69510F0](v21, -1, -1, v25);
      MEMORY[0x1C69510F0](v20, -1, -1);
    }

    v35 = 0u;
    v33 = 0u;
    v34 = 0u;
    v14 = -1;
    goto LABEL_18;
  }

  v31[0] = *&v37[8];
  v31[1] = *&v37[24];
  v32 = *&v37[40];
  *&v33 = *v37;
  sub_1C59E6618(v31, &v33 + 8);
  v36 = 2;
  v15 = swift_getKeyPath(byte_1C5BD5880);
  v16 = swift_getKeyPath(byte_1C5BD58A8);
  sub_1C59400B0(&v33, v30, &qword_1EC192770, &qword_1C5BEBF20);

  sub_1C5971800(v30, v2, v15, v16);
  sub_1C5924EF4(&v33, &qword_1EC192770, &qword_1C5BEBF20);
  sub_1C59E652C(v31);
  return sub_1C59E6674(&v39);
}

uint64_t sub_1C59E53CC()
{

  sub_1C5924EF4(v0 + 40, &qword_1EC192778, &qword_1C5BD5750);
  __swift_destroy_boxed_opaque_existential_0((v0 + 96));

  return swift_deallocClassInstance();
}

uint64_t sub_1C59E542C(uint64_t a1, uint64_t *a2)
{
  sub_1C59400B0(a1, v8, &qword_1EC192770, &qword_1C5BEBF20);
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BD5880);
  v5 = swift_getKeyPath(byte_1C5BD58A8);
  sub_1C59400B0(v8, v7, &qword_1EC192770, &qword_1C5BEBF20);

  sub_1C5971800(v7, v3, KeyPath, v5);
  return sub_1C5924EF4(v8, &qword_1EC192770, &qword_1C5BEBF20);
}

double sub_1C59E54E8(char *a1, uint64_t *a2)
{
  v2 = *a1;
  v3 = *a2;
  KeyPath = swift_getKeyPath(byte_1C5BD6168);
  v5 = swift_getKeyPath(aP_21);

  return sub_1C5B3EBBC(v2, v3, KeyPath, v5);
}

uint64_t sub_1C59E555C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v41[-1] - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 16))(a3, a4);
  v13 = v12;
  KeyPath = swift_getKeyPath(byte_1C5BD5830);
  v15 = swift_getKeyPath(byte_1C5BD5858);

  v16 = sub_1C59707FC(v11, v13, a2, KeyPath, v15);
  v17 = (*(a4 + 24))(a3, a4, v16);
  v19 = v18;
  v20 = swift_getKeyPath(byte_1C5BD5958);
  v21 = swift_getKeyPath(byte_1C5BD5980);

  v22 = sub_1C59709E4(v17, v19, a2, v20, v21);
  v23 = (*(a4 + 32))(a3, a4, v22);
  v24 = swift_getKeyPath(a8_2);
  v25 = swift_getKeyPath(byte_1C5BD5810);

  v26 = sub_1C5971010(v23, a2, v24, v25);
  v27 = (*(a4 + 40))(a3, a4, v26);
  v29 = v28;
  v30 = swift_getKeyPath(aP_13);
  v31 = swift_getKeyPath(aP_14);

  v32 = sub_1C59707FC(v27, v29, a2, v30, v31);
  (*(a4 + 48))(&v42, a3, a4, v32);
  LOBYTE(v27) = v42;
  v33 = swift_getKeyPath(byte_1C5BD5758);
  v34 = swift_getKeyPath(byte_1C5BD5780);

  v35 = sub_1C59713E8(v27, a2, v33, v34);
  (*(a4 + 56))(&v42, a3, a4, v35);
  v36 = v43;
  v37 = v44;
  __swift_project_boxed_opaque_existential_0(&v42, v43);
  swift_beginAccess();
  sub_1C59318C8(a2 + 80, v41);
  LOBYTE(v36) = sub_1C59DF660(v41, v36, v37);
  __swift_destroy_boxed_opaque_existential_0(v41);
  if ((v36 & 1) == 0)
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C59576B4(qword_1EDA4A8C8, v38, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a2 + 80));
  sub_1C5931F84(&v42, a2 + 80);
  swift_endAccess();
  return (*(v7 + 8))(v10, a3);
}

uint64_t sub_1C59E5950(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v7 = *(a3 - 8);
  v8 = MEMORY[0x1EEE9AC00](a1);
  v10 = &v28 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v7 + 16))(v10, v8);
  v11 = (*(a4 + 24))(a3, a4);
  v13 = v12;
  KeyPath = swift_getKeyPath(byte_1C5BD58C8);
  v15 = swift_getKeyPath(aH_5);

  v16 = sub_1C5971730(v11, v13, a2, KeyPath, v15);
  (*(a4 + 56))(&v29, a3, a4, v16);
  v17 = v30;
  v18 = v31;
  __swift_project_boxed_opaque_existential_0(&v29, v30);
  swift_beginAccess();
  sub_1C59318C8(a2 + 96, v32);
  LOBYTE(v17) = sub_1C59DF660(v32, v17, v18);
  __swift_destroy_boxed_opaque_existential_0(v32);
  if ((v17 & 1) == 0)
  {
    _s18MiniPlayerMetadataCMa();
    sub_1C59576B4(qword_1EDA4A4D8, v19, _s18MiniPlayerMetadataCMa, &unk_1C5BD5704);
    sub_1C5BC7F24();
    sub_1C5BC7FA4();
  }

  swift_beginAccess();
  __swift_destroy_boxed_opaque_existential_0((a2 + 96));
  sub_1C5931F84(&v29, a2 + 96);
  swift_endAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192788, &qword_1C5BD59A0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1C5BD4D40;
  *(inited + 32) = 0;
  *(inited + 40) = (*(a4 + 16))(a3, a4);
  *(inited + 48) = v21;
  *(inited + 56) = 1;
  *(inited + 64) = (*(a4 + 40))(a3, a4);
  *(inited + 72) = v22;
  v23 = sub_1C592D330(inited);
  swift_setDeallocating();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC192790, &qword_1C5BD59A8);
  swift_arrayDestroy();
  *(a2 + 136) = v23;

  (*(a4 + 64))(&v29, a3, a4);
  sub_1C59E4F2C(&v29);
  sub_1C5924EF4(&v29, &qword_1EC192780, &qword_1C5BD5878);
  v24 = swift_getKeyPath(aP_15);
  v25 = swift_getKeyPath(a0_2);

  v26 = sub_1C5971E8C(2u, a2, v24, v25);
  return (*(v7 + 8))(v10, a3, v26);
}

uint64_t sub_1C59E5CF8(uint64_t a1, uint64_t a2)
{
  sub_1C59E64F4(a1, v13);
  sub_1C59E64F4(a2, &v15);
  if (!v14)
  {
    sub_1C59E64F4(v13, &v10);
    v3 = *&v11[0];
    if (!v19)
    {
LABEL_4:
      if (v10 == v15 && v3 == v16)
      {
        v4 = 1;
      }

      else
      {
        v4 = sub_1C5BCBDE4();
      }

      goto LABEL_15;
    }

    goto LABEL_8;
  }

  if (v14 == 1)
  {
    sub_1C59E64F4(v13, &v10);
    v3 = *&v11[0];
    if (v19 == 1)
    {
      goto LABEL_4;
    }

LABEL_8:

    goto LABEL_12;
  }

  sub_1C59E64F4(v13, &v10);

  if (v19 == 2)
  {

    v8[0] = v11[0];
    v8[1] = v11[1];
    v9 = v12;
    v6[0] = v16;
    v6[1] = v17;
    v7 = v18;
    v4 = MEMORY[0x1C694FC40](v8, v6);
    sub_1C59E652C(v6);
    sub_1C59E652C(v8);
LABEL_15:
    sub_1C59E6580(v13);
    return v4 & 1;
  }

  sub_1C59E652C(v11);
LABEL_12:
  sub_1C5924EF4(v13, &qword_1EC192768, &unk_1C5BD5740);
  v4 = 0;
  return v4 & 1;
}

uint64_t _s11MediaCoreUI19NowPlayingViewModelC18MiniPlayerSubtitleV2eeoiySbAE_AEtFZ_0(uint64_t a1, uint64_t a2)
{
  sub_1C59E65B0(a1, v13);
  sub_1C59E65B0(a2, &v15);
  if (v14 > 1u)
  {
    if (v14 == 2)
    {
      sub_1C59E65B0(v13, &v10);
      if (v19 != 2)
      {
        goto LABEL_15;
      }

      v4 = v10 ^ v15 ^ 1;
    }

    else
    {
      sub_1C59E65B0(v13, &v10);

      if (v19 != 3)
      {
        sub_1C59E652C(v11);
        goto LABEL_15;
      }

      v8[0] = v11[0];
      v8[1] = v11[1];
      v9 = v12;
      v6[0] = v16;
      v6[1] = v17;
      v7 = v18;
      v4 = MEMORY[0x1C694FC40](v8, v6);
      sub_1C59E652C(v6);
      sub_1C59E652C(v8);
    }

LABEL_18:
    sub_1C59E6674(v13);
    return v4 & 1;
  }

  if (v14)
  {
    sub_1C59E65B0(v13, &v10);
    v3 = *&v11[0];
    if (v19 != 1)
    {
      goto LABEL_4;
    }

    goto LABEL_9;
  }

  sub_1C59E65B0(v13, &v10);
  v3 = *&v11[0];
  if (!v19)
  {
LABEL_9:
    if (v10 == v15 && v3 == v16)
    {
      v4 = 1;
    }

    else
    {
      v4 = sub_1C5BCBDE4();
    }

    goto LABEL_18;
  }

LABEL_4:

LABEL_15:
  sub_1C5924EF4(v13, qword_1EC192798, &qword_1C5BD59B0);
  v4 = 0;
  return v4 & 1;
}

unint64_t sub_1C59E602C(uint64_t a1)
{
  result = sub_1C59E6054();
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1C59E6054()
{
  result = qword_1EDA4B248;
  if (!qword_1EDA4B248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B248);
  }

  return result;
}

unint64_t sub_1C59E60F0()
{
  result = qword_1EC192758;
  if (!qword_1EC192758)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192758);
  }

  return result;
}

uint64_t sub_1C59E6164(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

uint64_t sub_1C59E61A0(uint64_t *a1, int a2)
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

uint64_t sub_1C59E61E8(uint64_t result, int a2, int a3)
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

uint64_t sub_1C59E6318(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 <= 3)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t sub_1C59E6360(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59E63B0(uint64_t result, unsigned int a2)
{
  if (a2 > 2)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 3;
    LOBYTE(a2) = 3;
  }

  *(result + 48) = a2;
  return result;
}

uint64_t sub_1C59E63D8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFD && *(a1 + 49))
  {
    return (*a1 + 253);
  }

  v3 = *(a1 + 48);
  if (v3 >= 4)
  {
    return (v3 ^ 0xFF) + 1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1C59E6414(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFC)
  {
    *(result + 48) = 0;
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 253;
    if (a3 >= 0xFD)
    {
      *(result + 49) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFD)
    {
      *(result + 49) = 0;
    }

    if (a2)
    {
      *(result + 48) = -a2;
    }
  }

  return result;
}

uint64_t sub_1C59E6464(uint64_t result, unsigned int a2)
{
  if (a2 > 3)
  {
    *(result + 16) = 0u;
    *(result + 32) = 0u;
    *result = 0u;
    *result = a2 - 4;
    LOBYTE(a2) = 4;
  }

  *(result + 48) = a2;
  return result;
}

unint64_t sub_1C59E64A0()
{
  result = qword_1EC192760;
  if (!qword_1EC192760)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192760);
  }

  return result;
}

uint64_t sub_1C59E66A4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

void sub_1C59E6754(uint64_t a1)
{
  sub_1C59E6874(319);
  if (v1 <= 0x3F)
  {
    sub_1C594F0B0();
    if (v2 <= 0x3F)
    {
      sub_1C59E6904(319, &qword_1EDA46798, _s12PresentationCMa);
      if (v3 <= 0x3F)
      {
        sub_1C59E6904(319, &qword_1EDA46750, MEMORY[0x1E697F610]);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1C59E6874(uint64_t a1)
{
  if (!qword_1EC192820)
  {
    type metadata accessor for NowPlayingViewModel.PrimaryMetadata();
    sub_1C59576B4(qword_1EDA4A8C8, v1, type metadata accessor for NowPlayingViewModel.PrimaryMetadata, &protocol conformance descriptor for NowPlayingViewModel.PrimaryMetadata);
    v2 = sub_1C5BC88D4();
    if (!v3)
    {
      atomic_store(v2, &qword_1EC192820);
    }
  }
}

void sub_1C59E6904(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1C5BC8304();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1C59E6958(uint64_t *a1, int a2)
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

uint64_t sub_1C59E69A0(uint64_t result, int a2, int a3)
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

unint64_t sub_1C59E6A38()
{
  result = qword_1EC1928E8;
  if (!qword_1EC1928E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1928E0, &qword_1C5BD5E28);
    sub_1C59E6AF0();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910, &qword_1C5BD5E48, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1928E8);
  }

  return result;
}

unint64_t sub_1C59E6AF0()
{
  result = qword_1EC1928F0;
  if (!qword_1EC1928F0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1928F8, &qword_1C5BD5E30);
    sub_1C5924F54(qword_1EDA46ED8, &qword_1EC192900, &qword_1C5BD5E38, &protocol conformance descriptor for Marquee<A>);
    sub_1C5924F54(&qword_1EDA46190, &qword_1EC192908, &qword_1C5BD5E40, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC1928F0);
  }

  return result;
}

unint64_t sub_1C59E6BD4()
{
  result = qword_1EC196180;
  if (!qword_1EC196180)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC196180);
  }

  return result;
}

unint64_t sub_1C59E6C28()
{
  result = qword_1EC192938;
  if (!qword_1EC192938)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192930, &qword_1C5BD5E98);
    sub_1C59E6CE0();
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192938);
  }

  return result;
}

unint64_t sub_1C59E6CE0()
{
  result = qword_1EC192940;
  if (!qword_1EC192940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192948, &qword_1C5BD5EA0);
    sub_1C59E6D98();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910, &qword_1C5BD5E48, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192940);
  }

  return result;
}

unint64_t sub_1C59E6D98()
{
  result = qword_1EC192950;
  if (!qword_1EC192950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192958, &qword_1C5BD5EA8);
    sub_1C59E6E50();
    sub_1C5924F54(&qword_1EDA46190, &qword_1EC192908, &qword_1C5BD5E40, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192950);
  }

  return result;
}

unint64_t sub_1C59E6E50()
{
  result = qword_1EC192960;
  if (!qword_1EC192960)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192968, &unk_1C5BD5EB0);
    sub_1C5924F54(qword_1EDA46ED8, &qword_1EC192900, &qword_1C5BD5E38, &protocol conformance descriptor for Marquee<A>);
    sub_1C5924F54(&qword_1EC192970, &qword_1EC192978, &qword_1C5BED4B0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EC192960);
  }

  return result;
}

unint64_t sub_1C59E6F34()
{
  result = qword_1EDA4B240;
  if (!qword_1EDA4B240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B240);
  }

  return result;
}

uint64_t sub_1C59E6F88(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 137))
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

uint64_t sub_1C59E6FD0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 136) = 0;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 137) = 1;
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

    *(result + 137) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1C59E7054()
{
  result = qword_1EDA47970;
  if (!qword_1EDA47970)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA47970);
  }

  return result;
}

unint64_t sub_1C59E70A8()
{
  result = qword_1EDA4B258;
  if (!qword_1EDA4B258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA4B258);
  }

  return result;
}

uint64_t objectdestroy_220Tm()
{

  swift_unknownObjectRelease();

  if (*(v0 + 136))
  {
    if (*(v0 + 120))
    {
      __swift_destroy_boxed_opaque_existential_0((v0 + 96));
    }
  }

  else
  {
  }

  sub_1C5942458(*(v0 + 144), *(v0 + 152));

  return swift_deallocObject();
}

unint64_t sub_1C59E71A8()
{
  result = qword_1EDA46378;
  if (!qword_1EDA46378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46378);
  }

  return result;
}

uint64_t sub_1C59E71FC(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1EC1929B8, &qword_1C5BD61B0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1C59E726C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
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

uint64_t sub_1C59E72B4(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

uint64_t sub_1C59E7314(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 80) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 81) = 0;
    }

    if (a2)
    {
      *(result + 56) = a2;
    }
  }

  return result;
}

uint64_t sub_1C59E7380(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 49))
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

uint64_t sub_1C59E73C8(uint64_t result, int a2, int a3)
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
      *(result + 8) = (a2 - 1);
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

unint64_t sub_1C59E745C()
{
  result = qword_1EDA464E8;
  if (!qword_1EDA464E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929D0, &qword_1C5BD6548);
    sub_1C59E74E8();
    sub_1C5949828();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA464E8);
  }

  return result;
}

unint64_t sub_1C59E74E8()
{
  result = qword_1EDA46658;
  if (!qword_1EDA46658)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929F0, &qword_1C5BD6568);
    sub_1C5924F54(&qword_1EDA46ED0, &qword_1EC1929E8, &qword_1C5BD6560, &protocol conformance descriptor for Marquee<A>);
    sub_1C5924F54(&qword_1EDA46090, &qword_1EC192980, &qword_1C5BD5EC0, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46658);
  }

  return result;
}

unint64_t sub_1C59E75D8()
{
  result = qword_1EDA46660;
  if (!qword_1EDA46660)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A08, &qword_1C5BD65A0);
    sub_1C5924F54(&qword_1EDA46EC8, &qword_1EC192A18, &qword_1C5BD65B8, &protocol conformance descriptor for Marquee<A>);
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910, &qword_1C5BD5E48, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46660);
  }

  return result;
}

unint64_t sub_1C59E76CC()
{
  result = qword_1EDA46450;
  if (!qword_1EDA46450)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC192A00, &qword_1C5BD6598);
    sub_1C59E7784();
    sub_1C5924F54(&qword_1EDA46100, &qword_1EC192910, &qword_1C5BD5E48, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46450);
  }

  return result;
}

unint64_t sub_1C59E7784()
{
  result = qword_1EDA46468;
  if (!qword_1EDA46468)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1EC1929D8, &unk_1C5BD6550);
    sub_1C59E745C();
    sub_1C59576B4(&qword_1EDA4E190, 255, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EDA46468);
  }

  return result;
}

uint64_t sub_1C59E7844(uint64_t a1, uint64_t a2, uint64_t a3)
{
  GenericValueMetadataWithLayoutString = swift_cvw_allocateGenericValueMetadataWithLayoutString();
  swift_cvw_instantiateLayoutString();
  return GenericValueMetadataWithLayoutString;
}

__n128 __swift_memcpy170_8(uint64_t a1, __int128 *a2)
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
  v9 = a2[9];
  *(a1 + 154) = *(a2 + 154);
  *(a1 + 128) = v8;
  *(a1 + 144) = v9;
  *(a1 + 112) = result;
  return result;
}