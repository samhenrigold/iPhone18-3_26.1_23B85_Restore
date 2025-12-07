void *sub_1E3AB6618@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, const void *a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X8>)
{
  type metadata accessor for AppEnvironment(0);
  OUTLINED_FUNCTION_1_134();
  sub_1E3AB6DE0(v10, v11, &unk_1E42BD340);
  v12 = sub_1E4201754();
  v14 = v13;
  type metadata accessor for FullScreenBarButtonModel(0);

  v15 = sub_1E39EF110();
  v16 = *(*a3 + 416);

  v18 = v16(v17);

  *a6 = a1;
  *(a6 + 8) = a2;
  *(a6 + 16) = a3;
  result = memcpy((a6 + 24), a4, 0x64uLL);
  *(a6 + 128) = v12;
  *(a6 + 136) = v14;
  *(a6 + 144) = sub_1E3AB6768;
  *(a6 + 152) = v15;
  *(a6 + 160) = 0;
  *(a6 + 168) = v18;
  *(a6 + 176) = a5;
  return result;
}

uint64_t sub_1E3AB6768()
{
  type metadata accessor for CanonicalStateObjectWrapper(0);
  v1 = swift_allocObject();
  v2 = OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper__templateDidHost;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2BA58, &qword_1E42B80A0);
  *(v1 + v2) = sub_1E3B508D0();
  *(v1 + OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper_fullScreenBarButtonModel) = v0;
  return sub_1E3B500B4();
}

uint64_t sub_1E3AB6804()
{
  v1 = *(v0 + 16);
  v2 = *(*v1 + 392);

  v4 = v2(v3);
  type metadata accessor for CanonicalStateObjectWrapper(0);
  OUTLINED_FUNCTION_0_132();
  sub_1E3AB6DE0(v5, v6, &unk_1E42BD340);
  v7 = *(sub_1E4200BC4() + OBJC_IVAR____TtC8VideosUIP33_3C2142267515083C36C101C7284D880727CanonicalStateObjectWrapper_fullScreenBarButtonModel);

  (*(*v4 + 360))(v7);
  memcpy(__dst, (v0 + 24), 0x64uLL);

  sub_1E3AB6E28(__dst, v19);

  OUTLINED_FUNCTION_3_24();
  sub_1E40D9BF4();
  v8 = swift_allocObject();
  OUTLINED_FUNCTION_2_107(v8);
  sub_1E3AB7008(v0, v19);
  sub_1E40DB940();

  sub_1E3AB7040(v16);
  v9 = memcpy(v15, __src, sizeof(v15));
  (*(*v1 + 296))(v9);
  v10 = swift_allocObject();
  OUTLINED_FUNCTION_2_107(v10);
  sub_1E3AB7008(v0, v19);
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF321E8, &qword_1E42B8088);
  sub_1E3AB6CD8(v11, v12, v13);
  sub_1E3AB6D2C();
  sub_1E4203524();

  memcpy(v19, v15, sizeof(v19));
  return sub_1E3AB7040(v19);
}

uint64_t type metadata accessor for CanonicalStateObjectWrapper(uint64_t a1)
{
  result = qword_1EE294DA0;
  if (!qword_1EE294DA0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3AB6C1C(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 184))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 8);
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

uint64_t sub_1E3AB6C5C(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
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
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 184) = 1;
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

    *(result + 184) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AB6CD8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF321F0;
  if (!qword_1ECF321F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321F0);
  }

  return result;
}

unint64_t sub_1E3AB6D2C()
{
  result = qword_1ECF321F8;
  if (!qword_1ECF321F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF321E8, &qword_1E42B8088);
    sub_1E3AB6DE0(qword_1EE23C0A8, type metadata accessor for Document, &protocol conformance descriptor for Document);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF321F8);
  }

  return result;
}

uint64_t sub_1E3AB6DE0(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3AB6E84(void *a1)
{
  v3 = *(v1 + 32);
  if (!(*(*v3 + 752))())
  {
    v4 = (*a1 + 576);
    v5 = *v4;
    v6 = (*v4)();
    v7 = (*(*v3 + 760))(v6);
    v8 = *(v1 + 184);
    (v5)(v7);
    (*(*v8 + 200))();
  }

  type metadata accessor for CanonicalStateObjectWrapper(0);
  OUTLINED_FUNCTION_0_132();
  sub_1E3AB6DE0(v9, v10, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3AB64D0(1);

  return result;
}

uint64_t objectdestroyTm_23()
{

  sub_1E3264CE0(*(v0 + 160), *(v0 + 168));

  return swift_deallocObject();
}

void sub_1E3AB7120(uint64_t a1, uint64_t *a2)
{
  v4 = v2;
  v5 = *a2;
  if (!*a2 || (a1 = swift_beginAccess(), (v6 = *(v5 + 64)) == 0))
  {
LABEL_45:
    v34 = *(v4 + 32);
    v35 = (*(*v34 + 392))(a1);
    v36 = (*(*v34 + 296))();
    if (v36)
    {
      v37 = v36;
      swift_beginAccess();
      v38 = *(v37 + 64);
    }

    else
    {
      v38 = 0;
    }

    (*(*v35 + 200))(v38);

    return;
  }

  v7 = *(*v6 + 488);

  v9 = v7(v8);
  if (!v9 || (v11 = sub_1E373E010(102, v9, v10), v12 = , !v11) || (v13 = (*(*v11 + 464))(v12), , !v13))
  {
LABEL_44:

    goto LABEL_45;
  }

  swift_beginAccess();
  v14 = *(v5 + 56);
  if (!v14)
  {

    goto LABEL_44;
  }

  v49 = v4;
  v15 = sub_1E32AE9B0(v13);
  v50 = v14;

  for (i = 0; ; ++i)
  {
    if (v15 == i)
    {

      v4 = v49;
      goto LABEL_44;
    }

    if ((v13 & 0xC000000000000001) != 0)
    {
      v17 = MEMORY[0x1E6911E60](i, v13);
      v3 = v17;
    }

    else
    {
      if (i >= *((v13 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_53;
      }

      v3 = *(v13 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      __break(1u);
LABEL_53:
      __break(1u);
LABEL_54:

LABEL_55:

      v39 = type metadata accessor for EpisodeCollectionViewModel();
      v40 = swift_dynamicCastClass();
      if (v40)
      {
        v41 = v40;
        v42 = (*(*v3 + 600))();
        v4 = v49;
        if (v42)
        {
          v43 = v42;
          v54 = v39;
          *&v53 = v41;
          sub_1E329504C(&v53, v52);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_1E32A87C0(v52, v47, v48, isUniquelyReferenced_nonNull_native);

          v45 = v43;
        }

        else
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F240, &unk_1E4298910);
          inited = swift_initStackObject();
          *(inited + 16) = xmmword_1E4297BE0;
          *(inited + 32) = v47;
          *(inited + 40) = v48;
          *(inited + 72) = v39;
          *(inited + 48) = v41;

          v45 = sub_1E4205CB4();
        }

        (*(*v3 + 608))(v45);
      }

      else
      {

        v4 = v49;
      }

      goto LABEL_43;
    }

    v55 = 63;
    sub_1E3742F1C(v17, v18, v19);
    sub_1E4206254();
    sub_1E4206254();
    if (v53 == *&v52[0] && *(&v53 + 1) == *(&v52[0] + 1))
    {
      break;
    }

    v21 = sub_1E42079A4();

    if (v21)
    {
      goto LABEL_23;
    }
  }

LABEL_23:

  v4 = v49;
  if ((sub_1E373F6E0(v3[49], 63, v22, v23, v24, v25) & 1) == 0 || (sub_1E397D25C() & 1) == 0)
  {
LABEL_43:

    goto LABEL_44;
  }

  LOBYTE(v52[0]) = 15;
  (*(*v3 + 776))(&v53, v52, &unk_1F5D5D0A8, &off_1F5D5C758);
  if (!v54)
  {
    sub_1E329505C(&v53);
    goto LABEL_43;
  }

  if (!swift_dynamicCast() || (v52[0] & 1) == 0)
  {
    goto LABEL_43;
  }

  *&v53 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32268, &unk_1E42B8090);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32270, &qword_1E42F2500);
  v26 = sub_1E4205F84();
  v28 = v27;
  v29 = (*(*v50 + 464))();
  if (!v29)
  {
LABEL_51:

    v4 = v49;
    goto LABEL_43;
  }

  v30 = v29;
  v47 = v26;
  v48 = v28;
  v51 = sub_1E32AE9B0(v29);
  for (j = 0; ; ++j)
  {
    if (v51 == j)
    {

      goto LABEL_51;
    }

    if ((v30 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](j, v30);
    }

    else
    {
      if (j >= *((v30 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_62;
      }
    }

    if (__OFADD__(j, 1))
    {
      break;
    }

    v55 = 130;
    sub_1E4206254();
    sub_1E4206254();
    if (v53 == *&v52[0] && *(&v53 + 1) == *(&v52[0] + 1))
    {
      goto LABEL_54;
    }

    v33 = sub_1E42079A4();

    if (v33)
    {
      goto LABEL_55;
    }
  }

  __break(1u);
LABEL_62:
  __break(1u);
}

uint64_t sub_1E3AB7854(void *a1)
{
  v2 = v1;
  v56 = 263;
  v3 = *v1;
  if (v3 == 256)
  {
    v13 = *(v1 + 3);
    if (v13)
    {
      v14 = *(v13 + 16);
      for (i = (v13 + 32); v14; --v14)
      {
        v16 = *i;
        if (*i < 0)
        {
          v23 = objc_opt_self();

          if ([v23 isVision])
          {
            goto LABEL_50;
          }
        }

        else
        {

          v17 = *(sub_1E3AF4598() + 98);

          v55 = v17;
          v54 = 15;
          sub_1E3742F1C(v18, v19, v20);
          OUTLINED_FUNCTION_125();
          sub_1E4206254();
          OUTLINED_FUNCTION_125();
          sub_1E4206254();
          if (v57 == v52 && *(&v57 + 1) == v53)
          {

LABEL_50:

            v51 = sub_1E403C45C(v16);

            v56 = v51;
            goto LABEL_28;
          }

          v22 = OUTLINED_FUNCTION_97_0(v57, *(&v57 + 1), v52);

          if (v22)
          {
            goto LABEL_50;
          }
        }

        ++i;
      }
    }

LABEL_26:
    v24 = 23;
    goto LABEL_27;
  }

  if (v3 != 193)
  {
    if (v3 != 171)
    {
      goto LABEL_28;
    }

    goto LABEL_26;
  }

  v4 = *(v1 + 3);
  if (!v4)
  {
    goto LABEL_26;
  }

  v5 = *(v4 + 16);
  v6 = (v4 + 32);
  if (!v5)
  {
    goto LABEL_26;
  }

  while (1)
  {
    if ((*v6 & 0x8000000000000000) != 0)
    {
      goto LABEL_13;
    }

    OUTLINED_FUNCTION_47_28();
    swift_retain_n();
    v7 = *(sub_1E3AF4598() + 98);

    v55 = v7;
    v54 = 15;
    sub_1E3742F1C(v8, v9, v10);
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    OUTLINED_FUNCTION_125();
    sub_1E4206254();
    if (v57 == v52 && *(&v57 + 1) == v53)
    {
      break;
    }

    v12 = OUTLINED_FUNCTION_97_0(v57, *(&v57 + 1), v52);

    OUTLINED_FUNCTION_47_28();

    if (v12)
    {
      goto LABEL_48;
    }

LABEL_13:
    ++v6;
    if (!--v5)
    {
      goto LABEL_26;
    }
  }

  OUTLINED_FUNCTION_47_28();

LABEL_48:
  v24 = 15;
LABEL_27:
  v56 = v24;
LABEL_28:
  v52 = MEMORY[0x1E69E7CC0];
  v25 = v2[9];
  if (v25)
  {
    type metadata accessor for LibDownloadButtonViewModel();
    v26 = swift_dynamicCastClass();
    if (v26)
    {
      v27 = *(v26 + 280);
      v28 = type metadata accessor for DownloadStateIndicatorViewModel(0);
      v29 = *(*v25 + 624);

      v30 = v27;

      v29(v31);
      v59 = 0;
      v57 = 0u;
      v58 = 0u;
      OUTLINED_FUNCTION_52_0();
      sub_1E4173E90(v32, v33, v34, v35, v36, v37);
      OUTLINED_FUNCTION_31_4();

      if (v28)
      {
LABEL_34:
        MEMORY[0x1E6910BF0](v38);
        OUTLINED_FUNCTION_51_22();
        if (v39)
        {
          OUTLINED_FUNCTION_41_30();
        }

        sub_1E4206324();
      }
    }

    else if (*v25 == _TtC8VideosUI31DownloadStateIndicatorViewModel)
    {

      goto LABEL_34;
    }
  }

  if (v2[10])
  {

    MEMORY[0x1E6910BF0](v40);
    OUTLINED_FUNCTION_51_22();
    if (v39)
    {
      OUTLINED_FUNCTION_41_30();
    }

    sub_1E4206324();
  }

  *&v57 = sub_1E4201D44();
  v45 = sub_1E373F6E0(v3, 256, v41, v42, v43, v44);
  if (v45)
  {
    v45 = sub_1E4201D64();
    *&v57 = v45;
  }

  HIBYTE(v55) = BYTE1(v3);
  v54 = 256;
  sub_1E3741534(v45, v46, v47);
  LOBYTE(v55) = (sub_1E4205E84() & 1) == 0;
  v48 = v2[3];
  if (v48)
  {
    v49 = sub_1E3AB7CF4(v48, &v55, &v56, &v52);
  }

  else
  {

    return 0;
  }

  return v49;
}

uint64_t sub_1E3AB7CF4(uint64_t a1, _BYTE *a2, _WORD *a3, void *a4)
{
  v4 = *(a1 + 16);
  v5 = MEMORY[0x1E69E7CC0];
  if (v4)
  {
    v27 = MEMORY[0x1E69E7CC0];
    sub_1E3ABC6C8(0, v4, 0);
    v9 = (a1 + 32);
    v5 = v27;
    v22 = a3;
    do
    {
      v11 = *v9++;
      v10 = v11;
      if (v11 < 0)
      {
      }

      else
      {

        v12 = sub_1E3AF4598();
        if ((*a2 & 1) != 0 && *a3 != 263)
        {
          sub_1E3742F1C(v12, v13, v14);
          sub_1E4206254();
          sub_1E4206254();
          if (v25 == v23 && v26 == v24)
          {
          }

          else
          {
            v16 = sub_1E42079A4();

            if ((v16 & 1) == 0)
            {
              goto LABEL_16;
            }
          }

          v17 = [objc_opt_self() sharedInstance];
          v18 = [v17 launchConfig];

          [v18 deferRichTextViewUpdate];

          sub_1E3AF4DE0();

LABEL_16:

          a3 = v22;
          goto LABEL_17;
        }
      }

LABEL_17:
      v20 = *(v27 + 16);
      v19 = *(v27 + 24);
      if (v20 >= v19 >> 1)
      {
        sub_1E3ABC6C8((v19 > 1), v20 + 1, 1);
      }

      *(v27 + 16) = v20 + 1;
      *(v27 + 8 * v20 + 32) = v10;
      --v4;
    }

    while (v4);
  }

  return v5;
}

void sub_1E3AB7F40(uint64_t a1, uint64_t a2, double a3, double a4, double a5)
{
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2DEE8, &unk_1E42B3940);
  v9 = OUTLINED_FUNCTION_17_2(v8);
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_4_6();
  v12 = v10 - v11;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v40 - v14;
  v16 = sub_1E4202A94();
  OUTLINED_FUNCTION_0_10();
  v18 = v17;
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_5();
  v22 = v21 - v20;
  v23 = &unk_1F5D6EC58;
  v24 = &unk_1F5D6EBB0;
  switch(*(a1 + 98))
  {
    case 0xAA:
      v24 = &unk_1F5D6EBD8;
      goto LABEL_8;
    case 0xAB:
      v24 = &unk_1F5D6EC08;
      goto LABEL_8;
    case 0xAC:
    case 0xAE:
    case 0xAF:
    case 0xB0:
    case 0xB1:
    case 0xB2:
      goto LABEL_6;
    case 0xAD:
      goto LABEL_8;
    case 0xB3:
      goto LABEL_9;
    default:
      if (&unk_1F5D6EBB0 - 187 < 2)
      {
        goto LABEL_9;
      }

      if (&unk_1F5D6EBB0 == 183)
      {
        v24 = &unk_1F5D6EC30;
      }

      else
      {
LABEL_6:
        v24 = &unk_1F5D6EC80;
      }

LABEL_8:
      v23 = v24;
LABEL_9:
      OUTLINED_FUNCTION_8();
      v26 = (*(v25 + 488))();
      if (!v26)
      {
        goto LABEL_18;
      }

      v29 = v26;
      v30 = v23[2];
      if (!v30)
      {
        goto LABEL_17;
      }

      v41 = a2;
      v31 = v30 + 15;
      break;
  }

  while (1)
  {
    if ((v31 - 16) >= v23[2])
    {
      __break(1u);
      return;
    }

    if (*(v29 + 16))
    {
      v32 = sub_1E3740AE8(*(v23 + v31), v27, v28);
      if ((v27 & 1) != 0 && **(*(v29 + 56) + 8 * v32) == _TtC8VideosUI13TextViewModel)
      {
        break;
      }
    }

    if (--v31 == 15)
    {
LABEL_17:

LABEL_18:

      return;
    }
  }

  v35 = sub_1E3C27528(v33, v34);

  if (!v35)
  {
    return;
  }

  type metadata accessor for TextLayout();
  if (!swift_dynamicCastClass())
  {

    return;
  }

  OUTLINED_FUNCTION_26_0();
  v37 = (*(v36 + 1688))();
  if (v37 == 27)
  {

    __swift_storeEnumTagSinglePayload(v15, 1, 1, v16);
LABEL_26:
    sub_1E325F6F0(v15, &qword_1ECF2DEE8, &unk_1E42B3940);
    return;
  }

  sub_1E3E3B33C(v37, v15);
  if (__swift_getEnumTagSinglePayload(v15, 1, v16) == 1)
  {

    goto LABEL_26;
  }

  (*(v18 + 32))(v22, v15, v16);
  v38 = OUTLINED_FUNCTION_125();
  v39(v38);
  __swift_storeEnumTagSinglePayload(v12, 0, 1, v16);
  sub_1E405EA04(a5, v12, v41);

  sub_1E325F6F0(v12, &qword_1ECF2DEE8, &unk_1E42B3940);
  (*(v18 + 8))(v22, v16);
}

void *sub_1E3AB8358(unsigned __int16 a1)
{
  v1 = a1;
  v2 = a1 - 170;
  result = &unk_1F5D6EBB0;
  switch(v2)
  {
    case 0:
      return &unk_1F5D6EBD8;
    case 1:
      return &unk_1F5D6EC08;
    case 2:
    case 4:
    case 5:
    case 6:
    case 7:
    case 8:
      return &unk_1F5D6EC80;
    case 3:
      return result;
    case 9:
      return &unk_1F5D6EC58;
    default:
      if ((v1 - 187) < 2)
      {
        return &unk_1F5D6EC58;
      }

      if (v1 == 183)
      {
        return &unk_1F5D6EC30;
      }

      return &unk_1F5D6EC80;
  }
}

void sub_1E3AB83E0()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v7 = v6;
  v8 = sub_1E4201274();
  OUTLINED_FUNCTION_0_10();
  v10 = v9;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v14 = v13 - v12;
  v15 = type metadata accessor for Card(0);
  v16 = v15[6];
  *(v7 + v16) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  *v7 = v5;
  type metadata accessor for ContextMenuModel(0);
  OUTLINED_FUNCTION_47_28();
  swift_retain_n();
  v17 = sub_1E3E6CDBC();
  v19 = *v17;
  v18 = v17[1];
  v22[0] = v19;
  v22[1] = v18;

  sub_1E4207414();
  (*(v10 + 104))(v14, *MEMORY[0x1E697E660], v8);
  *(v7 + v15[7]) = sub_1E4188148(v5, v14);
  memcpy(v7 + 1, v3, 0xC3uLL);
  v20 = swift_allocObject();
  v20[2] = v5;
  memcpy(v20 + 3, v3, 0xC3uLL);
  v20[28] = v1;
  v21 = v7 + v15[8];
  *v21 = sub_1E3ABC810;
  *(v21 + 1) = v20;
  v21[16] = 0;
  sub_1E375C1CC(v3, v22);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3AB85C4(uint64_t a1, const void *a2, uint64_t a3)
{
  swift_allocObject();
  v5 = OUTLINED_FUNCTION_31_4();
  return sub_1E3ABB958(v5, a2, a3);
}

void sub_1E3AB8614(uint64_t a1@<X8>)
{
  v115 = a1;
  v3 = type metadata accessor for Card(0);
  v4 = v3 - 8;
  v111 = *(v3 - 8);
  MEMORY[0x1EEE9AC00](v3);
  v112 = v5;
  OUTLINED_FUNCTION_17_3(&v90 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  v93 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32278, &qword_1E42B80E0);
  OUTLINED_FUNCTION_0_10();
  v92 = v6;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v8);
  v107 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v105 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  OUTLINED_FUNCTION_17_3(v12 - v11);
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32280, &qword_1E42B80E8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v14);
  v97 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32288, &qword_1E42B80F0);
  OUTLINED_FUNCTION_0_10();
  v98 = v15;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_50_1();
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32290, &qword_1E42B80F8);
  OUTLINED_FUNCTION_0_10();
  v99 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v19);
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32298, &qword_1E42B8100);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v20);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v21);
  v108 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322A0, &qword_1E42B8108);
  OUTLINED_FUNCTION_0_10();
  v106 = v22;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v24);
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322A8, &qword_1E42B8110);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_44();
  OUTLINED_FUNCTION_17_3(v26);
  v27 = *(v2 + *(v4 + 40) + 16);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v28, v29, &unk_1E42BD340);
  HIDWORD(v94) = v27;
  sub_1E4200BC4();
  v30 = *v2;
  sub_1E3AB9000();

  sub_1E3ABC8B4(v119);
  sub_1E4200BC4();
  sub_1E3AB9A8C();

  v32 = v95;
  sub_1E3AB9B88(v31, v33, v34, v35, v36, v37, v38, v39, v90, v91, v92, v93, v94, v95, v96, v97, v98, v99, v100, v101);
  v40 = *(v4 + 36);
  v114 = v2;
  v41 = *(v2 + v40);
  v42 = sub_1E3ABC8E4();
  v43 = v116;
  sub_1E4187EA8(v41, v116, v42);
  sub_1E325F6F0(v32, &qword_1ECF32280, &qword_1E42B80E8);
  v120 = v43;
  v121 = v42;
  v44 = v96;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  v116 = v30;
  v46 = v30;
  v47 = v97;
  sub_1E4035F10(v46, v97, OpaqueTypeConformance2);
  (*(v98 + 8))(v1, v47);
  v48 = sub_1E4200BC4();
  v49 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0(v48 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, v118);
  v50 = *(v48 + v49);

  if (v50 && (OUTLINED_FUNCTION_8(), (*(v51 + 152))(&v120), v52 = v120, v53 = v121, v54 = v122, v55 = v123, , (v124 & 1) == 0))
  {
    v56.n128_u64[0] = v52;
    v57.n128_u64[0] = v53;
    v58.n128_u64[0] = v54;
    v59.n128_u64[0] = v55;
    v60 = j_nullsub_1(v56, v57, v58, v59);
  }

  else
  {
    v60 = OUTLINED_FUNCTION_5_8();
  }

  v64 = v60;
  v65 = v61;
  v66 = v62;
  v67 = v63;
  v68 = sub_1E4202734();
  v69 = v101;
  (*(v99 + 32))(v101, v44, v102);
  v70 = v69 + *(v100 + 36);
  *v70 = v68;
  *(v70 + 8) = v64;
  *(v70 + 16) = v65;
  *(v70 + 24) = v66;
  *(v70 + 32) = v67;
  *(v70 + 40) = 0;
  v71 = v103;
  sub_1E4202474();
  sub_1E3ABC9C4();
  v72 = v104;
  sub_1E4203224();
  (*(v105 + 8))(v71, v107);
  sub_1E325F6F0(v69, &qword_1ECF32298, &qword_1E42B8100);
  type metadata accessor for LibLockupViewModel(0);
  if (swift_dynamicCastClass())
  {
    OUTLINED_FUNCTION_26_0();
    v74 = (*(v73 + 1184))();
  }

  else
  {
    v75 = v91;
    sub_1E42005D4();
    sub_1E32752B0(&qword_1ECF322C0, &qword_1ECF32278, &qword_1E42B80E0, MEMORY[0x1E695C018]);
    v76 = v93;
    v74 = sub_1E42006B4();
    (*(v92 + 8))(v75, v76);
  }

  v77 = v114;
  v78 = v113;
  sub_1E3ABCAD0(v114, v113);
  v79 = (*(v111 + 80) + 16) & ~*(v111 + 80);
  v80 = swift_allocObject();
  sub_1E3ABCB34(v78, v80 + v79);
  v81 = swift_allocObject();
  *(v81 + 16) = sub_1E3ABCB98;
  *(v81 + 24) = v80;
  v82 = v110;
  (*(v106 + 32))(v110, v72, v108);
  v83 = v109;
  *(v82 + *(v109 + 52)) = v74;
  v84 = (v82 + *(v83 + 56));
  *v84 = sub_1E379E500;
  v84[1] = v81;
  v117 = v116;
  sub_1E3ABCAD0(v77, v78);
  v85 = swift_allocObject();
  sub_1E3ABCB34(v78, v85 + v79);
  type metadata accessor for ViewModel();
  OUTLINED_FUNCTION_1_33();
  sub_1E32752B0(v86, &qword_1ECF322A8, &qword_1E42B8110, v87);
  OUTLINED_FUNCTION_9_79();
  sub_1E3ABCEA4(v88, v89, &protocol conformance descriptor for ViewModel);

  sub_1E4203524();

  sub_1E325F6F0(v82, &qword_1ECF322A8, &qword_1E42B8110);
}

void sub_1E3AB9000()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  if ((v6 & 1) == 0)
  {
    type metadata accessor for ViewModel();
    v7 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
    OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel, &v143);
    v8 = *(v0 + v7);

    v9 = static ViewModel.== infix(_:_:)(v3, v8);

    if (v9)
    {
      v10 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
      OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, v130);
      memcpy(__dst, (v1 + v10), sizeof(__dst));
      v11 = __dst[7];
      if (__dst[7])
      {
        v12 = __dst[5];
        v13 = __dst[8];
        v14 = __dst[6];
        v125 = *&__dst[1];
        v128 = *&__dst[3];
        v15 = __dst[0];
        v122 = *&__dst[9];
        sub_1E3743538(__dst, v137, &qword_1ECF322C8, &qword_1E42B8140);

        sub_1E3ABB8CC(v16);
        v18 = v125;
        v17 = v128;
        v19 = v122;
LABEL_75:
        *v5 = v15;
        *(v5 + 8) = v18;
        *(v5 + 24) = v17;
        *(v5 + 40) = v12 & 1;
        *(v5 + 48) = v14;
        *(v5 + 56) = v11;
        *(v5 + 64) = v13 & 1;
        *(v5 + 72) = v19;
        OUTLINED_FUNCTION_25_2();
        return;
      }
    }
  }

  __dst[0] = v3;
  type metadata accessor for ViewModel();

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D558, &qword_1E42A98F8);
  if (swift_dynamicCast())
  {
    v20 = v142;
    __swift_project_boxed_opaque_existential_1(&v140, *(&v141 + 1));
    v21 = OUTLINED_FUNCTION_31_4();
    v22(v21, v20);
    __swift_destroy_boxed_opaque_existential_1(&v140);
  }

  else
  {
    v142 = 0;
    v140 = 0u;
    v141 = 0u;
    sub_1E325F6F0(&v140, &qword_1ECF2D560, &unk_1E42B8130);
  }

  v24.n128_f64[0] = sub_1E3ABB8CC(v23);
  v137[0] = (*(*v3 + 464))(v24);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
  OUTLINED_FUNCTION_24_40(v25, v26, v25);

  v27 = __dst[0];
  v28 = swift_allocObject();
  v29 = v3[49];
  LOBYTE(v137[0]) = 0;
  sub_1E4203AD4();
  v30 = __dst[0];
  v31 = __dst[1];
  *(v28 + 16) = v29;
  v129 = (v28 + 16);
  v32 = __dst[2];
  *(v28 + 24) = 0u;
  *(v28 + 40) = 0u;
  *(v28 + 56) = 0;
  *(v28 + 64) = v30;
  *(v28 + 72) = v31;
  *(v28 + 80) = v32;
  *(v28 + 88) = 0;
  *(v28 + 96) = 0;
  v33 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, &v139);
  if (*(v1 + v33) && (type metadata accessor for CardCollectionViewCellLayout(), (v38 = swift_dynamicCastClass()) != 0))
  {
    v39 = v38;
    OUTLINED_FUNCTION_26_0();
    v41 = *(v40 + 2040);
    v42 = swift_retain_n();
    v126 = v39;
    v43 = v41(v42);
  }

  else
  {
    v43 = 0;
    v126 = 0;
  }

  v44 = sub_1E373F6E0(v29, 256, v34, v35, v36, v37);
  v45 = sub_1E32AE9B0(v27);
  if (!v45)
  {

    v51 = (*(*v3 + 488))(v50);
    if (v51)
    {
      if (*(v51 + 16))
      {
        v115 = v5;
        v52 = v51 + 64;
        v53 = 1 << *(v51 + 32);
        v54 = -1;
        if (v53 < 64)
        {
          v54 = ~(-1 << v53);
        }

        v55 = v54 & *(v51 + 64);
        v117 = v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext;
        v56 = (v53 + 63) >> 6;
        v123 = v51;

        HIDWORD(v116) = 0;
        v60 = 0;
        v118 = v56;
        v119 = v52;
        v120 = v29;
        if (!v55)
        {
          while (1)
          {
LABEL_25:
            v61 = v60 + 1;
            if (__OFADD__(v60, 1))
            {
              __break(1u);
              goto LABEL_80;
            }

            if (v61 >= v56)
            {
              break;
            }

            v55 = *(v52 + 8 * v61);
            ++v60;
            if (v55)
            {
              v60 = v61;
              goto LABEL_29;
            }
          }

          v68 = v123;

          if ((v116 & 0x100000000) == 0)
          {

LABEL_73:
            v5 = v115;
            goto LABEL_74;
          }

          v69 = sub_1E3AB8358(v29);
          v5 = v115;
          if (v69)
          {
            v70 = v69;
            v71 = *(v69 + 2);
            if (v71)
            {
              v72 = OUTLINED_FUNCTION_3_0(v129, v131);
              v75 = 32;
              v121 = v70;
              while (1)
              {
                v76 = *&v70[v75];
                if (*(v68 + 16) && (v72 = sub_1E3740AE8(*&v70[v75], v73, v74), (v73 & 1) != 0) && (v77 = *(*(v68 + 56) + 8 * v72), *v77 == _TtC8VideosUI13TextViewModel))
                {
                  v137[0] = *(v28 + 40);

                  v78 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0, &qword_1E42B8148);
                  OUTLINED_FUNCTION_24_40(v78, v79, v78);

                  *(v28 + 40) = __dst[0];

                  v80 = type metadata accessor for RichTextViewModel(0);

                  v81 = sub_1E3AF46D0();
                  v82 = sub_1E3AF46DC(v81);
                  v83 = sub_1E3AF46E0(v77, 0, v81, v82, 0, 1);
                  OUTLINED_FUNCTION_43_28(v83, v84, v85, v86, v87, v88, v89, v90, v115, v116, v117, v118, v119, v121, v123, v124, v126, v127, v129);
                  v91 = *(v28 + 40);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v91 = OUTLINED_FUNCTION_40_33();
                  }

                  v93 = *(v91 + 2);
                  v92 = *(v91 + 3);
                  if (v93 >= v92 >> 1)
                  {
                    v91 = OUTLINED_FUNCTION_42_36(v92);
                  }

                  *(v91 + 2) = v93 + 1;
                  *&v91[8 * v93 + 32] = v80;
                }

                else
                {
                  __src[0] = v76;
                  v135[0] = 222;
                  v94 = sub_1E3742F1C(v72, v73, v74);
                  sub_1E4206254();
                  sub_1E4206254();
                  v95 = OUTLINED_FUNCTION_49_25();
                  if (v66 && v94 == v135)
                  {
                  }

                  else
                  {
                    v98 = OUTLINED_FUNCTION_97_0(v95, v94, v96);

                    if ((v98 & 1) == 0)
                    {
                      goto LABEL_68;
                    }
                  }

                  if (!*(v68 + 16))
                  {
                    goto LABEL_68;
                  }

                  v72 = sub_1E3740AE8(v76, v73, v74);
                  if ((v73 & 1) == 0)
                  {
                    goto LABEL_68;
                  }

                  v99 = *(*(v68 + 56) + 8 * v72);
                  v137[0] = *(v28 + 40);

                  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0, &qword_1E42B8148);
                  OUTLINED_FUNCTION_24_40(v100, v101, v100);

                  *(v28 + 40) = __dst[0];

                  v102 = type metadata accessor for MediaTagsViewModel();

                  v103 = v43;
                  v104 = sub_1E403C2C0(v99, v43);
                  OUTLINED_FUNCTION_43_28(v104, v105, v106, v107, v108, v109, v110, v111, v115, v116, v117, v118, v119, v121, v123, v124, v126, v127, v129);
                  v91 = *(v28 + 40);

                  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
                  {
                    v91 = OUTLINED_FUNCTION_40_33();
                  }

                  v113 = *(v91 + 2);
                  v112 = *(v91 + 3);
                  if (v113 >= v112 >> 1)
                  {
                    v91 = OUTLINED_FUNCTION_42_36(v112);
                  }

                  *(v91 + 2) = v113 + 1;
                  *&v91[8 * v113 + 32] = v102 | 0x8000000000000000;
                }

                *(v28 + 40) = v91;
                swift_endAccess();

                v68 = v123;
LABEL_68:
                v75 += 2;
                --v71;
                v70 = v121;
                if (!v71)
                {

                  goto LABEL_73;
                }
              }
            }
          }

          else
          {
          }

LABEL_74:
          OUTLINED_FUNCTION_5_0(v129, v134);
          memcpy(v135, v129, sizeof(v135));
          memcpy(__src, v129, sizeof(__src));
          v114 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
          OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, v133);
          memcpy(v137, (v1 + v114), sizeof(v137));
          memcpy((v1 + v114), __src, 0x58uLL);
          sub_1E3ABCEEC(v135, __dst);
          memcpy(__dst, v129, sizeof(__dst));
          sub_1E325F6F0(v137, &qword_1ECF322C8, &qword_1E42B8140);
          sub_1E3ABCEEC(__dst, v132);

          v19 = *&__dst[9];
          v14 = __dst[6];
          v11 = __dst[7];
          v13 = __dst[8];
          v12 = __dst[5];
          v17 = *&__dst[3];
          v18 = *&__dst[1];
          v15 = __dst[0];
          goto LABEL_75;
        }

LABEL_29:
        while (1)
        {
          v62 = *(*(v123 + 56) + ((v60 << 9) | (8 * __clz(__rbit64(v55)))));
          v55 &= v55 - 1;
          __src[0] = v62[49];
          v135[0] = 222;
          v63 = sub_1E3742F1C(v57, v58, v59);

          OUTLINED_FUNCTION_98();
          sub_1E4206254();
          OUTLINED_FUNCTION_98();
          sub_1E4206254();
          v64 = OUTLINED_FUNCTION_49_25();
          v66 = v66 && v63 == v135;
          if (v66)
          {
            break;
          }

          v67 = OUTLINED_FUNCTION_97_0(v64, v63, v65);

          if ((v67 & 1) != 0 || *v62 == _TtC8VideosUI13TextViewModel && *(v117 + 178) == 3)
          {
            goto LABEL_40;
          }

          sub_1E3ABBD98(v62, v1, v44 & 1, v28, v43);

LABEL_37:
          LOWORD(v29) = v120;
          v56 = v118;
          v52 = v119;
          if (!v55)
          {
            goto LABEL_25;
          }
        }

LABEL_40:

        HIDWORD(v116) = 1;
        goto LABEL_37;
      }
    }

    goto LABEL_74;
  }

  v46 = v45;
  if (v45 >= 1)
  {
    v47 = v5;
    for (i = 0; i != v46; ++i)
    {
      if ((v27 & 0xC000000000000001) != 0)
      {
        v49 = MEMORY[0x1E6911E60](i, v27);
      }

      else
      {
        v49 = *(v27 + 8 * i + 32);
      }

      sub_1E3ABBD98(v49, v1, v44 & 1, v28, v43);
    }

    v5 = v47;
    goto LABEL_74;
  }

LABEL_80:
  __break(1u);
}

uint64_t sub_1E3AB9A8C()
{
  v1 = v0;
  v2 = (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel);
  OUTLINED_FUNCTION_5_0(v2, v10);
  if (v2[7])
  {
    memcpy(__dst, v2, sizeof(__dst));
    memcpy(v11, v2, sizeof(v11));
    memcpy(v9, v2, sizeof(v9));
    v3 = sub_1E3ABCEEC(v9, v7);
    v4 = sub_1E3AB7854(v3);
    sub_1E325F6F0(__dst, &qword_1ECF322C8, &qword_1E42B8140);
  }

  else
  {
    v4 = 0;
  }

  v5 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel, v9);
  *(v1 + v5) = v4;

  if (v4)
  {
    return v4;
  }

  else
  {
    return MEMORY[0x1E69E7CC0];
  }
}

double sub_1E3AB9E3C()
{
  v1 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel, v13);
  *(v0 + v1) = 0;

  v2 = (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel);
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, v12);
  memcpy(__dst, v2, sizeof(__dst));
  *v2 = 0u;
  v2[1] = 0u;
  v2[2] = 0u;
  v2[3] = 0u;
  v2[4] = 0u;
  *(v2 + 10) = 0;
  sub_1E325F6F0(__dst, &qword_1ECF322C8, &qword_1E42B8140);
  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_preferredLayout);
  if (!v3)
  {
    OUTLINED_FUNCTION_8();
    v3 = (*(v4 + 392))();
  }

  v5 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, &v9);
  *(v0 + v5) = v3;

  sub_1E3AB9000();
  memcpy(v11, v2, sizeof(v11));
  memcpy(v2, __src, 0x58uLL);
  sub_1E325F6F0(v11, &qword_1ECF322C8, &qword_1E42B8140);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v6, v7, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  return result;
}

void sub_1E3ABA020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32310, &qword_1E42B82D8);
  v27 = v26 - 8;
  MEMORY[0x1EEE9AC00](v26);
  OUTLINED_FUNCTION_4_6();
  v30 = v28 - v29;
  MEMORY[0x1EEE9AC00](v31);
  v33 = &a9 - v32;
  v34 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32318, &qword_1E42B82E0);
  v35 = OUTLINED_FUNCTION_17_2(v34);
  MEMORY[0x1EEE9AC00](v35);
  OUTLINED_FUNCTION_4_6();
  v38 = v36 - v37;
  MEMORY[0x1EEE9AC00](v39);
  v41 = &a9 - v40;
  sub_1E3ABA218();

  v42 = j__OUTLINED_FUNCTION_18();
  sub_1E403C5C0(v23, v42 & 1, v33);
  *&v33[*(v27 + 44)] = 256;
  sub_1E3743538(v41, v38, &qword_1ECF32318, &qword_1E42B82E0);
  v43 = OUTLINED_FUNCTION_98();
  sub_1E3743538(v43, v44, &qword_1ECF32310, &qword_1E42B82D8);
  sub_1E3743538(v38, v25, &qword_1ECF32318, &qword_1E42B82E0);
  v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32320, &qword_1E42B82E8);
  sub_1E3743538(v30, v25 + *(v45 + 48), &qword_1ECF32310, &qword_1E42B82D8);
  sub_1E325F6F0(v33, &qword_1ECF32310, &qword_1E42B82D8);
  sub_1E325F6F0(v41, &qword_1ECF32318, &qword_1E42B82E0);
  sub_1E325F6F0(v30, &qword_1ECF32310, &qword_1E42B82D8);
  sub_1E325F6F0(v38, &qword_1ECF32318, &qword_1E42B82E0);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABA218()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32328, &qword_1E42B82F0);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_50_1();
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32330, &qword_1E42B82F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v47 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32338, &qword_1E42B8300);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v47 - v13;
  v15 = *v2;
  if (sub_1E373F6E0(*(*v2 + 98), 256, v16, v17, v18, v19))
  {
    if (*(v15 + 24))
    {
      v20 = *(v15 + 16);
      v48 = *(v15 + 24);
    }

    else
    {
      v20 = 0;
      v48 = 0xE000000000000000;
    }

    v50 = v11;
    v51 = v5;

    v31 = sub_1E39DFFC0(v28, v29, v30);
    v52 = v4;
    v49 = v7;
    if (v31)
    {
      v47 = v20;
      type metadata accessor for Card(0);
      type metadata accessor for CardViewInteractor(0);
      OUTLINED_FUNCTION_0_133();
      sub_1E3ABCEA4(v32, v33, &unk_1E42BD340);
      v34 = sub_1E4200BC4();
      v35 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
      OUTLINED_FUNCTION_5_0(v34 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v54);
      memcpy(v55, (v34 + v35), 0x58uLL);
      sub_1E3743538(v55, &v53, &qword_1ECF322C8, &qword_1E42B8140);

      if (v55[7])
      {
        v36 = v55[1];

        sub_1E325F6F0(v55, &qword_1ECF322C8, &qword_1E42B8140);
        if (v36)
        {
          OUTLINED_FUNCTION_8();
          (*(v37 + 392))();
        }
      }
    }

    nullsub_1();
    MEMORY[0x1EEE9AC00](v38);
    *(&v47 - 4) = v2;
    *(&v47 - 3) = v39;
    *(&v47 - 2) = v40;
    *(&v47 - 1) = v41;

    v42 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32350, &qword_1E42B8318);
    v43 = sub_1E3ABD5C0();
    OUTLINED_FUNCTION_98();
    v44 = OUTLINED_FUNCTION_51_1();
    sub_1E40424BC(v15, v44 & 1, sub_1E3ABD540, v42, v43, v14, (&v47 - 6));
    sub_1E3743538(v14, v10, &qword_1ECF32338, &qword_1E42B8300);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_2();
    sub_1E32752B0(v45, &qword_1ECF32338, &qword_1E42B8300, v46);
    sub_1E3ABD344();
    sub_1E4201F44();

    v25 = v14;
    v26 = &qword_1ECF32338;
    v27 = &qword_1E42B8300;
  }

  else
  {
    sub_1E3ABAE90();
    sub_1E3743538(v0, v10, &qword_1ECF32328, &qword_1E42B82F0);
    swift_storeEnumTagMultiPayload();
    OUTLINED_FUNCTION_13_2();
    sub_1E32752B0(v21, v22, v23, v24);
    sub_1E3ABD344();
    sub_1E4201F44();
    v25 = OUTLINED_FUNCTION_32_0();
    v27 = &qword_1E42B82F0;
  }

  sub_1E325F6F0(v25, v26, v27);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABA6AC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v138 = v3;
  v137 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32358, &qword_1E42B8320);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_44();
  v129 = v5;
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32360, &qword_1E42B8328);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_44();
  v136 = v7;
  v135 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32368, &unk_1E42B8330);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_50_1();
  v130 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32370, &qword_1E42C8F50);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_44();
  v126 = v10;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32378, &qword_1E42B8340);
  v12 = OUTLINED_FUNCTION_17_2(v11);
  MEMORY[0x1EEE9AC00](v12);
  OUTLINED_FUNCTION_4_6();
  v127 = v13 - v14;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_18_6();
  v128 = v16;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  v132 = v18;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v19);
  OUTLINED_FUNCTION_18_6();
  v123 = v20;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v21);
  v124 = &v122 - v22;
  v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32318, &qword_1E42B82E0);
  v24 = OUTLINED_FUNCTION_17_2(v23);
  MEMORY[0x1EEE9AC00](v24);
  OUTLINED_FUNCTION_4_6();
  MEMORY[0x1EEE9AC00](v25);
  OUTLINED_FUNCTION_18_6();
  v133 = v26;
  OUTLINED_FUNCTION_49();
  MEMORY[0x1EEE9AC00](v27);
  v125 = &v122 - v28;
  type metadata accessor for Card(0);
  v131 = v2;
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v29, v30, &unk_1E42BD340);
  v31 = OUTLINED_FUNCTION_18_53();
  v32 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  OUTLINED_FUNCTION_5_0(v31 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, &v140);
  v33 = *(v31 + v32);

  if (v33)
  {
    type metadata accessor for CardCollectionViewCellLayout();
    if (swift_dynamicCastClass())
    {
      OUTLINED_FUNCTION_26_0();
      (*(v34 + 1920))();
      OUTLINED_FUNCTION_26_0();
      v36 = (*(v35 + 504))();
      v122 = v0;

      if (v36 != 18 && (sub_1E3A92050(v36, 2, v37) & 1) != 0)
      {
        sub_1E3ABA218();
        v38 = sub_1E4201D54();
        v39 = OUTLINED_FUNCTION_18_53();
        v40 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
        OUTLINED_FUNCTION_5_0(v39 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel, v139);
        v41 = *(v39 + v40);

        if (v41)
        {
          v42 = v126;
          sub_1E403E1F8(v41, v38, v126);
          OUTLINED_FUNCTION_46_26();
          v43 = v42;
          v44 = v123;
          sub_1E3741EA0(v43, v123, &qword_1ECF32370, &qword_1E42C8F50);
          v45 = 0;
        }

        else
        {
          v45 = 1;
          v38 = v130;
          v44 = v123;
        }

        __swift_storeEnumTagSinglePayload(v44, v45, 1, v38);
        OUTLINED_FUNCTION_19_1();
        sub_1E3741EA0(v95, v96, v97, v98);
        v99 = v125;
        v100 = v133;
        sub_1E3743538(v125, v133, &qword_1ECF32318, &qword_1E42B82E0);
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v101, v102, v103, v104);
        v105 = v122;
        sub_1E3743538(v100, v122, &qword_1ECF32318, &qword_1E42B82E0);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32398, &qword_1E42B8350);
        OUTLINED_FUNCTION_19_1();
        sub_1E3743538(v106, v107, v108, v109);
        OUTLINED_FUNCTION_21_1();
        sub_1E325F6F0(v110, v111, v112);
        sub_1E325F6F0(v100, &qword_1ECF32318, &qword_1E42B82E0);
        OUTLINED_FUNCTION_52_0();
        sub_1E3743538(v113, v114, v115, v116);
        swift_storeEnumTagMultiPayload();
        OUTLINED_FUNCTION_11_79();
        sub_1E32752B0(v117, &qword_1ECF32368, &unk_1E42B8330, v118);
        sub_1E32752B0(&qword_1ECF32390, &qword_1ECF32358, &qword_1E42B8320, &qword_1ECF32318);
        OUTLINED_FUNCTION_45_30();
        sub_1E325F6F0(v105, &qword_1ECF32368, &unk_1E42B8330);
        OUTLINED_FUNCTION_21_1();
        sub_1E325F6F0(v119, v120, v121);
        v92 = v99;
        v93 = &qword_1ECF32318;
        v94 = &qword_1E42B82E0;
        goto LABEL_12;
      }
    }

    else
    {
    }
  }

  v46 = sub_1E4201D54();
  v47 = OUTLINED_FUNCTION_18_53();
  v48 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_5_0(v47 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel, v139);
  v49 = *(v47 + v48);

  if (v49)
  {
    v50 = v126;
    sub_1E403E1F8(v49, v46, v126);
    OUTLINED_FUNCTION_46_26();
    v51 = v127;
    sub_1E3741EA0(v50, v127, &qword_1ECF32370, &qword_1E42C8F50);
    v52 = 0;
  }

  else
  {
    v52 = 1;
    v48 = v130;
    v51 = v127;
  }

  __swift_storeEnumTagSinglePayload(v51, v52, 1, v48);
  v53 = v128;
  OUTLINED_FUNCTION_48_25();
  sub_1E3741EA0(v54, v55, v56, v57);
  sub_1E3ABA218();
  v58 = v132;
  OUTLINED_FUNCTION_48_25();
  sub_1E3743538(v59, v60, v61, v62);
  OUTLINED_FUNCTION_125();
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v63, v64, v65, v66);
  v67 = v129;
  OUTLINED_FUNCTION_48_25();
  sub_1E3743538(v68, v69, v70, v71);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32380, &qword_1E42B8348);
  OUTLINED_FUNCTION_19_1();
  sub_1E3743538(v72, v73, v74, v75);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v76, v77, v78);
  sub_1E325F6F0(v58, &qword_1ECF32378, &qword_1E42B8340);
  sub_1E3743538(v67, v136, &qword_1ECF32358, &qword_1E42B8320);
  swift_storeEnumTagMultiPayload();
  OUTLINED_FUNCTION_11_79();
  sub_1E32752B0(v79, v80, v81, v82);
  OUTLINED_FUNCTION_50_22();
  sub_1E32752B0(v83, v84, v85, &qword_1E42B8340);
  OUTLINED_FUNCTION_45_30();
  OUTLINED_FUNCTION_50_22();
  sub_1E325F6F0(v86, v87, v88);
  OUTLINED_FUNCTION_21_1();
  sub_1E325F6F0(v89, v90, v91);
  v92 = v53;
  v93 = &qword_1ECF32378;
  v94 = &qword_1E42B8340;
LABEL_12:
  sub_1E325F6F0(v92, v93, v94);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3ABAE90()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  type metadata accessor for ImageViewWithOverlay(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v6 = (v5 - v4);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32340, &qword_1E42B8308);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_44();
  v66 = v9;
  type metadata accessor for Card(0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v10, v11, &unk_1E42BD340);
  OUTLINED_FUNCTION_19_4();
  v12 = sub_1E4200BC4();
  v13 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v12 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v76);
  memcpy(v77, (v12 + v13), sizeof(v77));
  sub_1E3743538(v77, v84, &qword_1ECF322C8, &qword_1E42B8140);

  if (!v77[7] || (v14 = v77[1], , sub_1E325F6F0(v77, &qword_1ECF322C8, &qword_1E42B8140), !v14))
  {
    v17 = v2;
    v18 = 1;
LABEL_34:
    __swift_storeEnumTagSinglePayload(v17, v18, 1, v7);
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v62 = v14;
  OUTLINED_FUNCTION_19_4();
  v15 = sub_1E4200BC4();
  v16 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v15 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v74);
  memcpy(v75, (v15 + v16), sizeof(v75));
  sub_1E3743538(v75, v84, &qword_1ECF322C8, &qword_1E42B8140);

  v60 = v7;
  v61 = v2;
  v59 = v6;
  if (v75[7])
  {
    v65 = v75[2];

    sub_1E325F6F0(v75, &qword_1ECF322C8, &qword_1E42B8140);
  }

  else
  {
    v65 = 0;
  }

  memcpy(v84, v0 + 1, 0x5BuLL);
  v19 = v84[10];
  v20 = v84[11];
  v21 = *(&v84[11] + 1);
  v22 = *v0;
  v23 = *(*v0 + 98);
  sub_1E375C2C0(v84, v80);
  v25 = sub_1E3ABB674(v23, &unk_1F5D6ECA8, v24);
  if (v25)
  {
    v19 = *sub_1E3E5FD24();
    v25 = sub_1E375C31C(v84);
  }

  if (sub_1E39DFFC0(v25, v26, v27) & 1) != 0 && (sub_1E373F6E0(*(v22 + 98), 256, v28, v29, v30, v31))
  {
    v20 = 0;
  }

  memcpy(v79, v0 + 1, 0x50uLL);
  v79[10] = v19;
  LOBYTE(v79[11]) = v20;
  *(&v79[11] + 1) = v21;
  memcpy(v80, v0 + 1, sizeof(v80));
  v81 = v19;
  v82 = v20;
  v83 = v21;
  sub_1E375C2C0(v79, v78);
  sub_1E375C31C(v80);
  memcpy(v78, v79, 0x5BuLL);
  OUTLINED_FUNCTION_19_4();
  v32 = sub_1E4200BC4();
  v33 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v32 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v70);
  memcpy(v79, (v32 + v33), 0x58uLL);
  sub_1E3743538(v79, v84, &qword_1ECF322C8, &qword_1E42B8140);

  v34 = v79[7];
  if (v79[7])
  {
    v35 = v79[8];
    v36 = v79[6];

    sub_1E325F6F0(v79, &qword_1ECF322C8, &qword_1E42B8140);
    v63 = v36;
    v64 = v34;
    v71 = v36;
    v72 = v34;
    v73 = v35 & 1;
  }

  else
  {
    LOBYTE(v84[0]) = 0;
    sub_1E4203AD4();
    v63 = v71;
    v64 = v72;
    v35 = v73;
  }

  v37 = v59;
  OUTLINED_FUNCTION_19_4();
  v38 = sub_1E4200BC4();
  v39 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v38 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v68);
  memcpy(v69, (v38 + v39), sizeof(v69));
  sub_1E3743538(v69, v84, &qword_1ECF322C8, &qword_1E42B8140);

  if (v69[7])
  {
    v40 = v69[5];
    sub_1E325F6F0(v69, &qword_1ECF322C8, &qword_1E42B8140);
  }

  else
  {
    v40 = 0;
  }

  sub_1E375C2C0(v78, v84);

  sub_1E3FB1C2C(v62, v78, v65, 0, v40 & 1, v63, v64, v35 & 1, v59, 0, 0);
  v41 = sub_1E4200BC4();
  v42 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  OUTLINED_FUNCTION_5_0(v41 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel, &v87);
  memcpy(v84, (v41 + v42), 0x58uLL);
  sub_1E3743538(v84, v80, &qword_1ECF322C8, &qword_1E42B8140);

  if (!v84[7])
  {
    v7 = v60;
    goto LABEL_29;
  }

  v43 = v84[1];

  sub_1E325F6F0(v84, &qword_1ECF322C8, &qword_1E42B8140);
  v7 = v60;
  if (!v43)
  {
LABEL_29:
    v47 = v61;
LABEL_33:
    sub_1E3ABCEA4(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay, &unk_1E42E2390);
    sub_1E4202ED4();

    sub_1E375C31C(v78);

    sub_1E3ABD6A0(v37);
    *(v66 + *(v7 + 36)) = 256;
    sub_1E3741EA0(v66, v47, &qword_1ECF32340, &qword_1E42B8308);
    v17 = v47;
    v18 = 0;
    goto LABEL_34;
  }

  v44 = sub_1E4200BC4();
  v45 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel;
  OUTLINED_FUNCTION_5_0(v44 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel, v80);
  v46 = *(v44 + v45);

  v47 = v61;
  if (!v46)
  {
    goto LABEL_32;
  }

  type metadata accessor for ImageViewModel();
  v48 = swift_dynamicCastClass();
  if (!v48 || (v49 = *(*v48 + 904), v50 = , v67 = v49(v50), v52 = v51, , !v52))
  {
LABEL_31:

LABEL_32:

    goto LABEL_33;
  }

  v53 = 0;
  v54 = *(v46 + 16);
  while (1)
  {
    if (v54 == v53)
    {
LABEL_27:

      v7 = v60;
      v47 = v61;
      v37 = v59;
      goto LABEL_31;
    }

    if (v53 >= *(v46 + 16))
    {
      break;
    }

    v55 = v53 + 1;

    v85 = sub_1E403C3DC();
    v86 = v56;
    v84[12] = v67;
    v84[13] = v52;
    sub_1E32822E0(v85, v56, v57);
    v58 = sub_1E4207254();

    v53 = v55;
    if (v58)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
}

BOOL sub_1E3ABB674(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = *(a2 + 16);
  v4 = a2 + 32;
  do
  {
    v5 = v3;
    if (v3-- == 0)
    {
      break;
    }

    v4 += 2;
    sub_1E3741534(a1, a2, a3);
    a1 = sub_1E4205E84();
  }

  while ((a1 & 1) == 0);
  return v5 != 0;
}

uint64_t sub_1E3ABB6F8()
{
  v1 = v0;
  v2 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel, v12);
  if (dynamic_cast_existential_1_conditional(*(v1 + v2), **(v1 + v2), &protocol descriptor for CollectionChildViewModelDataUpdating))
  {
    v4 = v3;
    ObjectType = swift_getObjectType();
    v6 = *(v4 + 32);

    v6(ObjectType, v4);
    swift_allocObject();
    swift_weakInit();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322E0, &unk_1E42D6F80);
    sub_1E32752B0(&qword_1ECF322E8, &qword_1ECF322E0, &unk_1E42D6F80, MEMORY[0x1E695BED8]);
    sub_1E4200844();
    OUTLINED_FUNCTION_31_4();

    *(&v10 + 1) = sub_1E42004F4();
    v11 = MEMORY[0x1E695BF08];

    *&v9 = &v9;
  }

  else
  {
    v11 = 0;
    v9 = 0u;
    v10 = 0u;
  }

  v7 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver;
  swift_beginAccess();
  sub_1E3ABD288(&v9, v1 + v7);
  return swift_endAccess();
}

double sub_1E3ABB8CC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
  OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel, &v7);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;

  OUTLINED_FUNCTION_5_0(v1 + v5, v8);
  if (*(v1 + v5) != v4)
  {
    sub_1E3ABB6F8();
  }

  return result;
}

uint64_t sub_1E3ABB958(uint64_t a1, const void *a2, uint64_t a3)
{
  v4 = v3;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_stackedTextViewModel) = 0;
  v7 = v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver;
  *(v7 + 32) = 0;
  *v7 = 0u;
  *(v7 + 16) = 0u;
  v8 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout) = 0;
  v9 = v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel;
  *v9 = 0u;
  *(v9 + 16) = 0u;
  *(v9 + 32) = 0u;
  *(v9 + 48) = 0u;
  *(v9 + 64) = 0u;
  *(v9 + 80) = 0;
  *(v3 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel) = a1;
  if (a3)
  {

    v10 = a3;
  }

  else
  {
    v11 = *(*a1 + 392);

    v10 = v11(v12);
  }

  OUTLINED_FUNCTION_3_0(v4 + v8, v16);
  *(v4 + v8) = v10;

  memcpy((v4 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), a2, 0xC3uLL);
  *(v4 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_preferredLayout) = a3;

  sub_1E375C1CC(a2, &v15);
  v13 = sub_1E3B500B4();

  sub_1E3ABB6F8();

  sub_1E37E6F2C(a2);

  return v13;
}

void sub_1E3ABBAE8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v9, v2);

  v10 = sub_1E41FFC94();
  v11 = sub_1E4206814();

  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v23[0] = v13;
    *v12 = 136315138;
    v14 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel;
    OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel, &v21);
    v15 = *(v1 + v14);
    if (*(v15 + 24))
    {
      v16 = *(v15 + 16);
      v17 = *(v15 + 24);
    }

    else
    {
      v17 = 0xE400000000000000;
      v16 = 1819047278;
    }

    v18 = sub_1E3270FC8(v16, v17, v23);

    *(v12 + 4) = v18;
    _os_log_impl(&dword_1E323F000, v10, v11, "CardViewInteractor:: LockupUpdating handleViewModelChanged id: %s", v12, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v13);
    MEMORY[0x1E69143B0](v13, -1, -1);
    MEMORY[0x1E69143B0](v12, -1, -1);

    (*(v4 + 8))(v8, v2);
  }

  else
  {

    (*(v4 + 8))(v8, v2);
  }

  OUTLINED_FUNCTION_5_0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewModel, &v22);

  sub_1E3AB9000();

  sub_1E3ABC8B4(v23);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v19, v20, &unk_1E42BD340);
  sub_1E4200514();
  sub_1E4200594();

  OUTLINED_FUNCTION_25_2();
}

double sub_1E3ABBD98(unsigned __int16 *a1, uint64_t a2, char a3, void *a4, uint64_t *a5)
{
  v10 = OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout;
  v11 = OUTLINED_FUNCTION_5_0(a2 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_viewLayout, v158);
  v12 = *(a2 + v10);
  if (v12 && (v13 = *(*v12 + 1624), v14 = a1[49], , v15 = v13(v14, a1), v11 = , v15) || (v16 = (*(*a1 + 392))(v11)) != 0)
  {
    type metadata accessor for TextLayout();
    v16 = swift_dynamicCastClass();
    if (!v16)
    {
    }
  }

  v22 = a1[49];
  if (*a1 == _TtC8VideosUI13TextViewModel)
  {
    if ((a3 & 1) != 0 || *(a2 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext + 178) == 3)
    {
      OUTLINED_FUNCTION_14_89(v16, v17, v18, v19, v20, v21);
      OUTLINED_FUNCTION_56_19();

      v23 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0, &qword_1E42B8148);
      OUTLINED_FUNCTION_25_48(v23, v24, v23);

      OUTLINED_FUNCTION_12_74(v25, v26, v27);
      *a5 = v157;

      type metadata accessor for RichTextViewModel(0);

      v28 = sub_1E3AF46D0();
      sub_1E3AF46DC(v28);
      OUTLINED_FUNCTION_50_22();
      v33 = sub_1E3AF46E0(v29, v30, v31, v32, 0, 1);
      OUTLINED_FUNCTION_15_78(v33, v34, v35, v36, v37, v38, v39, v40, v157);
      if (*a5)
      {

        sub_1E3ABC534();
        v41 = OUTLINED_FUNCTION_55_22(*a5);
        sub_1E3ABC580(v41);
        OUTLINED_FUNCTION_54_17();
        *(v42 + 32) = v33;
        *a5 = v43;
      }

      swift_endAccess();

      goto LABEL_24;
    }
  }

  else if (*a1 == _TtC8VideosUI31LibDownloadingEpisodesViewModel)
  {
    type metadata accessor for RichTextViewModel(0);

    swift_retain_n();
    v44 = sub_1E3AF46D0();
    sub_1E3AF73A8(v44);
    sub_1E3AF4B30();
    if (v45)
    {
      v51 = v45;
      OUTLINED_FUNCTION_14_89(v45, v46, v47, v48, v49, v50);
      OUTLINED_FUNCTION_56_19();
      v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0, &qword_1E42B8148);
      OUTLINED_FUNCTION_25_48(v52, v53, v52);

      OUTLINED_FUNCTION_12_74(v54, v55, v56);
      *a5 = v157;

      OUTLINED_FUNCTION_15_78(v57, v58, v59, v60, v61, v62, v63, v64, v157);
      if (*a5)
      {

        sub_1E3ABC534();
        v65 = OUTLINED_FUNCTION_55_22(*a5);
        sub_1E3ABC580(v65);
        OUTLINED_FUNCTION_54_17();
        *(v66 + 32) = v51;
        *a5 = v67;
      }

      swift_endAccess();

      goto LABEL_23;
    }
  }

  v68 = sub_1E373F6E0(v22, 222, v18, v19, v20, v21);
  if (v68)
  {
    OUTLINED_FUNCTION_14_89(v68, v69, v70, v71, v72, v73);
    v74 = a4 + 5;

    v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D0, &qword_1E42B8148);
    OUTLINED_FUNCTION_25_48(v75, v76, v75);

    OUTLINED_FUNCTION_12_74(v77, v78, v79);
    a4[5] = v157;

    type metadata accessor for MediaTagsViewModel();
    v80 = a5;

    v82 = sub_1E403C2C0(v81, a5);
    OUTLINED_FUNCTION_15_78(v82, v83, v84, v85, v86, v87, v88, v89, v157);
    if (a4[5])
    {

      sub_1E3ABC534();
      v90 = OUTLINED_FUNCTION_55_22(*v74);
      sub_1E3ABC580(v90);
      v91 = *v74;
      *(v91 + 16) = a4 + 1;
      *(v91 + 8 * a4 + 32) = v82 | 0x8000000000000000;
      *v74 = v91;
    }

    swift_endAccess();
LABEL_23:

    goto LABEL_24;
  }

  type metadata accessor for ImageViewModel();
  v93 = swift_dynamicCastClass();
  if (v93)
  {
    v94 = v93;
    v95 = *(v93 + 98);

    LOBYTE(v95) = sub_1E373F6E0(v95, 39, v96, v97, v98, v99);

    if (v95)
    {
      OUTLINED_FUNCTION_13_83(v100, v101, v102, v103, v104, v105);
      a4[3] = v94;
    }

    goto LABEL_24;
  }

  if (sub_1E3850584())
  {

    OUTLINED_FUNCTION_13_83(v110, v111, v112, v113, v114, v115);
    a4[4] = a1;
LABEL_34:

    goto LABEL_24;
  }

  if (sub_1E373F6E0(v22, 233, v106, v107, v108, v109) & 1) != 0 || (sub_1E373F6E0(v22, 63, v116, v117, v118, v119) & 1) != 0 || (sub_1E373F6E0(v22, 116, v120, v121, v122, v123))
  {

    OUTLINED_FUNCTION_13_83(v128, v129, v130, v131, v132, v133);
    a4[11] = a1;
    goto LABEL_34;
  }

  v134 = sub_1E373F6E0(v22, 67, v124, v125, v126, v127);
  if (v134)
  {

    OUTLINED_FUNCTION_13_83(v140, v141, v142, v143, v144, v145);
    a4[12] = a1;
    goto LABEL_34;
  }

  v146 = OUTLINED_FUNCTION_14_89(v134, v135, v136, v137, v138, v139);
  v154 = a4 + 6;
  if (!a4[6])
  {
    v146 = OUTLINED_FUNCTION_12_74(v146, v147, v148);
    *v154 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_15_78(v146, v147, v148, v149, v150, v151, v152, v153, v157);

  MEMORY[0x1E6910BF0](v155);
  v156 = OUTLINED_FUNCTION_55_22(*v154 & 0xFFFFFFFFFFFFFF8);
  sub_1E38C5A18(v156);
  sub_1E4206324();
  swift_endAccess();
LABEL_24:

  return result;
}

double sub_1E3ABC36C()
{

  memcpy(__dst, (v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), 0xC3uLL);
  sub_1E37E6F2C(__dst);

  sub_1E325F6F0(v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver, &qword_1ECF322D8, &qword_1E42B8150);

  return OUTLINED_FUNCTION_22_45((v0 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel));
}

uint64_t sub_1E3ABC41C(uint64_t a1)
{
  v1 = sub_1E3B4FF80();

  memcpy(__dst, (v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_builderContext), 0xC3uLL);
  sub_1E37E6F2C(__dst);

  sub_1E325F6F0(v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_lockupUpdatingObserver, &qword_1ECF322D8, &qword_1E42B8150);

  OUTLINED_FUNCTION_22_45((v1 + OBJC_IVAR____TtC8VideosUI18CardViewInteractor_cardViewModel));
  return v1;
}

uint64_t sub_1E3ABC4E0(uint64_t a1)
{
  v1 = sub_1E3ABC41C(a1);
  v2 = *(*v1 + 48);
  v3 = *(*v1 + 52);

  return MEMORY[0x1EEE6BDC0](v1, v2, v3);
}

char *sub_1E3ABC534()
{
  v1 = *v0;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v0 = v1;
  if (!result)
  {
    result = sub_1E3ABC5C0(result, *(v1 + 2) + 1, 1, v1);
    *v0 = result;
  }

  return result;
}

char *sub_1E3ABC580(char *result)
{
  v2 = *(*v1 + 3);
  if ((result + 1) > (v2 >> 1))
  {
    result = sub_1E3ABC5C0((v2 > 1), (result + 1), 1, *v1);
    *v1 = result;
  }

  return result;
}

char *sub_1E3ABC5C0(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322F0, &unk_1E42CAA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

char *sub_1E3ABC6C8(char *a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E3ABC6E8(a1, a2, a3, *v3);
  *v3 = result;
  return result;
}

char *sub_1E3ABC6E8(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322F0, &unk_1E42CAA30);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 8);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[8 * v8] <= v12)
    {
      memmove(v12, v13, 8 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

uint64_t sub_1E3ABC810()
{
  v1 = v0[2];
  v2 = v0[28];
  type metadata accessor for CardViewInteractor(0);
  swift_allocObject();

  sub_1E375C1CC((v0 + 3), v4);

  return sub_1E3ABB958(v1, v0 + 3, v2);
}

unint64_t sub_1E3ABC8E4()
{
  result = qword_1EE288D88;
  if (!qword_1EE288D88)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32280, &qword_1E42B80E8);
    v1 = MEMORY[0x1E6981870];
    sub_1E32752B0(&qword_1EE288470, &qword_1ECF322B0, &qword_1E42B8118, MEMORY[0x1E6981870]);
    sub_1E32752B0(&qword_1EE288540, &qword_1ECF322B8, &unk_1E42B8120, v1);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE288D88);
  }

  return result;
}

unint64_t sub_1E3ABC9C4()
{
  result = qword_1EE289988;
  if (!qword_1EE289988)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32298, &qword_1E42B8100);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32288, &qword_1E42B80F0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32280, &qword_1E42B80E8);
    sub_1E3ABC8E4();
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289988);
  }

  return result;
}

uint64_t sub_1E3ABCAD0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ABCB34(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for Card(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

double sub_1E3ABCB98()
{
  v0 = type metadata accessor for Card(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v1, v2, &unk_1E42BD340);
  OUTLINED_FUNCTION_32_0();
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t objectdestroy_14Tm_0()
{
  v1 = type metadata accessor for Card(0);
  v2 = v0 + ((*(*(v1 - 8) + 80) + 16) & ~*(*(v1 - 8) + 80));

  v3 = *(v1 + 24);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_2();
    (*(v4 + 8))(v2 + v3);
  }

  else
  {
  }

  sub_1E3264CE0(*(v2 + *(v1 + 32)), *(v2 + *(v1 + 32) + 8));

  return swift_deallocObject();
}

double sub_1E3ABCDC0()
{
  v0 = type metadata accessor for Card(0);
  OUTLINED_FUNCTION_17_2(v0);
  type metadata accessor for CardViewInteractor(0);
  OUTLINED_FUNCTION_0_133();
  sub_1E3ABCEA4(v1, v2, &unk_1E42BD340);
  sub_1E4200BC4();
  sub_1E3AB9E3C();

  return result;
}

uint64_t sub_1E3ABCEA4(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E3ABCF24(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  if (a8)
  {
  }

  return result;
}

uint64_t sub_1E3ABCFE0(uint64_t a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 88))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *(a1 + 56);
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

uint64_t sub_1E3ABD020(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 88) = 1;
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
      *(result + 56) = (a2 - 1);
      return result;
    }

    *(result + 88) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_1E3ABD0AC(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E38D5D68(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for ContextMenuModel(319);
      if (v3 <= 0x3F)
      {
        sub_1E3ABD168(319);
        if (v4 <= 0x3F)
        {
          swift_cvw_initStructMetadataWithLayoutString();
        }
      }
    }
  }
}

void sub_1E3ABD168(uint64_t a1)
{
  if (!qword_1EE289E60)
  {
    type metadata accessor for CardViewInteractor(255);
    sub_1E3ABCEA4(&qword_1EE2792F8, type metadata accessor for CardViewInteractor, &unk_1E42BD340);
    v1 = sub_1E4200BE4();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE289E60);
    }
  }
}

uint64_t sub_1E3ABD288(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF322D8, &qword_1E42B8150);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1E3ABD2F8()
{
  OUTLINED_FUNCTION_5_0(v0 + 16, v2);
  if (swift_weakLoadStrong())
  {
    sub_1E3ABBAE8();
  }

  return result;
}

unint64_t sub_1E3ABD344()
{
  result = qword_1EE2896B0;
  if (!qword_1EE2896B0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32328, &qword_1E42B82F0);
    sub_1E3ABD3C8();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896B0);
  }

  return result;
}

unint64_t sub_1E3ABD3C8()
{
  result = qword_1EE2896B8;
  if (!qword_1EE2896B8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32340, &qword_1E42B8308);
    sub_1E3ABD454();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896B8);
  }

  return result;
}

unint64_t sub_1E3ABD454()
{
  result = qword_1EE289BB0;
  if (!qword_1EE289BB0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32348, &qword_1E42B8310);
    sub_1E3ABCEA4(qword_1EE26CB60, type metadata accessor for ImageViewWithOverlay, &unk_1E42E2390);
    sub_1E3ABCEA4(&qword_1EE288768, MEMORY[0x1E697CBE8], MEMORY[0x1E697CBD8]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289BB0);
  }

  return result;
}

double sub_1E3ABD540@<D0>(uint64_t a1@<X8>)
{
  v3 = v1[3];
  v4 = v1[4];
  v5 = v1[5];
  sub_1E3ABAE90();
  v6 = (a1 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32350, &qword_1E42B8318) + 36));
  *v6 = v3;
  v6[1] = v4;
  v6[2] = v5;

  return result;
}

unint64_t sub_1E3ABD5C0()
{
  result = qword_1EE2894E8;
  if (!qword_1EE2894E8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF32350, &qword_1E42B8318);
    v3 = sub_1E3ABD344();
    sub_1E3ABD64C(v3, v1, v2);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2894E8);
  }

  return result;
}

unint64_t sub_1E3ABD64C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1EE24E8E8[0];
  if (!qword_1EE24E8E8[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1EE24E8E8);
  }

  return result;
}

uint64_t sub_1E3ABD6A0(uint64_t a1)
{
  v2 = type metadata accessor for ImageViewWithOverlay(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

double OUTLINED_FUNCTION_56_19()
{

  return result;
}

uint64_t sub_1E3ABD728(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v3[20] = a2;
  v3[21] = a3;
  v3[19] = a1;
  v4 = sub_1E41FE414();
  v3[22] = v4;
  v3[23] = *(v4 - 8);
  v3[24] = swift_task_alloc();

  return MEMORY[0x1EEE6DFA0](sub_1E3ABD7EC, 0, 0);
}

uint64_t sub_1E3ABD7EC()
{
  type metadata accessor for VUIJetPackController();
  v1 = kVUIBagTVAppJetpackURL;
  v2 = [objc_opt_self() standardUserDefaults];
  static VUIJetPackController.controller(bagKey:defaults:urlOverrideDefaultKey:)(v1, v2, 0x6C72752D746F6F62, 0xE800000000000000);
  v0[25] = v3;

  v4 = VUIJetPackController.getJetPackURL()();
  v0[26] = v4;
  v0[2] = v0;
  v0[7] = v0 + 18;
  v0[3] = sub_1E3ABD980;
  v5 = swift_continuation_init();
  v0[17] = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF323A0, &qword_1E42B8360);
  v0[10] = MEMORY[0x1E69E9820];
  v0[11] = 1107296256;
  v0[12] = sub_1E3ABDE1C;
  v0[13] = &block_descriptor_53;
  v0[14] = v5;
  [v4 resultWithCompletion_];

  return MEMORY[0x1EEE6DEC8](v0 + 2);
}

uint64_t sub_1E3ABD980()
{
  v1 = *(*v0 + 48);
  *(*v0 + 216) = v1;
  if (v1)
  {
    v2 = sub_1E3ABDD94;
  }

  else
  {
    v2 = sub_1E3ABDA90;
  }

  return MEMORY[0x1EEE6DFA0](v2, 0, 0);
}

uint64_t sub_1E3ABDA90()
{
  v1 = *(v0 + 208);
  v2 = *(v0 + 192);
  v3 = *(v0 + 168);
  v8 = *(v0 + 152);
  v4 = *(v0 + 144);
  (*(*(v0 + 184) + 16))(v2, v4 + OBJC_IVAR____TtC8VideosUI13VUIJetPackURL_url, *(v0 + 176));

  v5 = swift_task_alloc();
  *(v0 + 224) = v5;
  *(v5 + 16) = v2;
  *(v5 + 24) = v8;
  *(v5 + 40) = v3;
  v6 = swift_task_alloc();
  *(v0 + 232) = v6;
  *v6 = v0;
  v6[1] = sub_1E3ABDBBC;

  return sub_1E3ABE118(sub_1E3ABE08C, v5);
}

void sub_1E3ABDBBC(uint64_t a1)
{
  v4 = *v2;

  if (v1)
  {
  }

  else
  {
    *(v4 + 240) = a1;

    MEMORY[0x1EEE6DFA0](sub_1E3ABDD00, 0, 0);
  }
}

uint64_t sub_1E3ABDD00()
{
  v1 = *(v0 + 192);
  v2 = *(v0 + 176);
  v3 = *(v0 + 184);

  (*(v3 + 8))(v1, v2);

  v4 = *(v0 + 8);
  v5 = *(v0 + 240);

  return v4(v5);
}

uint64_t sub_1E3ABDD94()
{
  v1 = v0[26];
  v2 = v0[25];
  swift_willThrow();

  v3 = v0[1];

  return v3();
}

uint64_t *sub_1E3ABDE1C(uint64_t a1, void *a2, void *a3)
{
  result = __swift_project_boxed_opaque_existential_1((a1 + 32), *(a1 + 56));
  v6 = *result;
  if (a3)
  {
    v7 = a3;

    return sub_1E3ABDEAC(v6, v7);
  }

  else if (a2)
  {
    v8 = a2;

    return sub_1E3ABDF18(v6, v8);
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3ABDEAC(uint64_t a1, uint64_t a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
  v4 = swift_allocError();
  *v5 = a2;

  return MEMORY[0x1EEE6DEE8](a1, v4);
}

id sub_1E3ABDF38@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t *a5@<X8>)
{
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v19 - v11;
  sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_5();
  v16 = v15 - v14;
  (*(v17 + 16))(v15 - v14, a1);
  sub_1E38B2468(a2, v12);
  objc_allocWithZone(type metadata accessor for TVExtension(0));
  swift_unknownObjectRetain();
  result = sub_1E3ABE288(v16, v12, a3, a4);
  *a5 = result;
  return result;
}

uint64_t sub_1E3ABE118(uint64_t a1, uint64_t a2)
{
  *(v2 + 24) = a1;
  *(v2 + 32) = a2;
  return MEMORY[0x1EEE6DFA0](sub_1E3ABE138, 0, 0);
}

uint64_t sub_1E3ABE138()
{
  sub_1E4206434();
  *(v0 + 40) = sub_1E4206424();
  OUTLINED_FUNCTION_50();
  v2 = sub_1E42063B4();

  return MEMORY[0x1EEE6DFA0](sub_1E3ABE1C8, v2, v1);
}

uint64_t sub_1E3ABE1C8()
{
  v1 = v0[3];

  v1(v2);
  v3 = v0[2];
  v4 = v0[1];

  return v4(v3);
}

id sub_1E3ABE288(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = OBJC_IVAR____TtC8VideosUI11TVExtension_url;
  v9 = sub_1E41FE414();
  __swift_storeEnumTagSinglePayload(&v4[v8], 1, 1, v9);
  v10 = &v4[OBJC_IVAR____TtC8VideosUI11TVExtension_delegate];
  *&v4[OBJC_IVAR____TtC8VideosUI11TVExtension_delegate + 8] = 0;
  swift_unknownObjectWeakInit();
  v11 = *(v9 - 8);
  (*(v11 + 16))(&v4[OBJC_IVAR____TtC8VideosUI11TVExtension_jetPackURL], a1, v9);
  swift_beginAccess();
  sub_1E38DAA9C(a2, &v4[v8]);
  swift_endAccess();
  *(v10 + 1) = a4;
  swift_unknownObjectWeakAssign();
  v14.receiver = v4;
  v14.super_class = type metadata accessor for TVExtension(0);
  v12 = objc_msgSendSuper2(&v14, sel_init);
  swift_unknownObjectRelease();
  sub_1E3ABE43C(a2);
  (*(v11 + 8))(a1, v9);
  return v12;
}

uint64_t type metadata accessor for TVExtension(uint64_t a1)
{
  result = qword_1ECF554A0;
  if (!qword_1ECF554A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3ABE43C(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

id sub_1E3ABE4E4()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for TVExtension(0);
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E3ABE5AC()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v35 - v3;
  v5 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2B710, &qword_1E429AC10);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4297BE0;
  *&v43[0] = 0x6E6F697461636F6CLL;
  *(&v43[0] + 1) = 0xE800000000000000;
  v13 = MEMORY[0x1E69E6158];
  sub_1E4207414();
  v14 = [v1 appJSURL];
  sub_1E41FE3C4();

  v15 = sub_1E41FE314();
  v17 = v16;
  (*(v7 + 8))(v11, v5);
  *(inited + 96) = v13;
  *(inited + 72) = v15;
  *(inited + 80) = v17;
  v18 = sub_1E4205CB4();
  result = [objc_opt_self() sharedInstance];
  if (result)
  {
    v20 = sub_1E3ABF258(result);
    if (v20)
    {
      v21 = v20;
      if (*(v20 + 16))
      {
        strcpy(v42, "featureFlags");
        BYTE13(v42[0]) = 0;
        HIWORD(v42[0]) = -5120;
        sub_1E4207414();
        *(&v42[1] + 1) = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8C0, &unk_1E42A1250);
        *&v42[0] = v21;
        sub_1E329504C(v42, v41);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *&v44[0] = v18;
        sub_1E377DF14(v41, v43, isUniquelyReferenced_nonNull_native);
        v18 = *&v44[0];
        sub_1E375D84C(v43);
      }

      else
      {
      }
    }

    v23 = OBJC_IVAR____TtC8VideosUI11TVExtension_url;
    swift_beginAccess();
    sub_1E38B2468(v1 + v23, v4);
    v24 = static AppConfig.createAppConfiguration(url:)(v4);
    v26 = v25;
    sub_1E3ABE43C(v4);
    v44[0] = xmmword_1E4297170;
    memset(&v44[1], 0, 32);
    v27 = TVExtensionConfig.init(askToBuy:appConfig:)(v44, v24, v26, v43);
    if (*(&v43[0] + 1) != 1)
    {
      v42[1] = v43[1];
      v42[2] = v43[2];
      v42[3] = v43[3];
      v42[4] = v43[4];
      v42[0] = v43[0];
      v30 = sub_1E3A60F3C(v27, v28, v29);
      sub_1E3BFE88C(&type metadata for TVExtensionConfig, v30, v31);
      v33 = v32;
      memcpy(v41, v42, sizeof(v41));
      sub_1E3A60F90(v41);
      if (v33)
      {
        *&v38 = 0xD000000000000011;
        *(&v38 + 1) = 0x80000001E426FEE0;
        sub_1E4207414();
        v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        *&v38 = v33;
        sub_1E329504C(&v38, v37);
        v34 = swift_isUniquelyReferenced_nonNull_native();
        v36 = v18;
        sub_1E377DF14(v37, v40, v34);
        v18 = v36;
        sub_1E375D84C(v40);
      }
    }

    return v18;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3ABEA54@<X0>(uint64_t a1@<X8>)
{
  v3 = OBJC_IVAR____TtC8VideosUI11TVExtension_jetPackURL;
  v4 = sub_1E41FE414();
  v5 = *(*(v4 - 8) + 16);

  return v5(a1, v1 + v3, v4);
}

id sub_1E3ABEB9C()
{
  v0 = [objc_opt_self() sharedUserDefaults];

  return v0;
}

uint64_t sub_1E3ABEC20()
{
  v0 = [objc_opt_self() mainBundle];

  return sub_1E3ABF2D0(v0);
}

void sub_1E3ABECDC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  v8 = [objc_opt_self() sharedInstance];
  v9 = sub_1E41FE364();
  OUTLINED_FUNCTION_4_0();
  v10 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v11 = swift_allocObject();
  v11[2] = v10;
  v11[3] = a4;
  v11[4] = a5;
  v13[4] = sub_1E3ABF340;
  v13[5] = v11;
  v13[0] = MEMORY[0x1E69E9820];
  v13[1] = 1107296256;
  v13[2] = sub_1E3ABEE38;
  v13[3] = &block_descriptor_8_1;
  v12 = _Block_copy(v13);

  [v8 fetchAppJavascript:v9 cachePolicy:a3 completionHandler:v12];
  _Block_release(v12);
}

uint64_t sub_1E3ABEE38(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v6 = *(a1 + 32);
  if (a2)
  {
    v7 = sub_1E4205F14();
    v9 = v8;
  }

  else
  {
    v7 = 0;
    v9 = 0;
  }

  v10 = a3;
  v6(v7, v9, a3, a4);
}

void sub_1E3ABF020(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5)
{
  if (a2)
  {
    v7 = sub_1E4205ED4();
    if (a3)
    {
LABEL_3:
      v8 = sub_1E41FE264();
      goto LABEL_6;
    }
  }

  else
  {
    v7 = 0;
    if (a3)
    {
      goto LABEL_3;
    }
  }

  v8 = 0;
LABEL_6:
  v9 = v8;
  (*(a5 + 16))(a5, v7);
}

uint64_t sub_1E3ABF0B8()
{
  type metadata accessor for VideosUI();
  OUTLINED_FUNCTION_50();
  return static VideosUI.initializeJSContext(_:)();
}

uint64_t sub_1E3ABF158(uint64_t a1, uint64_t a2)
{
  v4 = v2 + OBJC_IVAR____TtC8VideosUI11TVExtension_delegate;
  result = swift_unknownObjectWeakLoadStrong();
  if (result)
  {
    v6 = *(v4 + 8);
    ObjectType = swift_getObjectType();
    (*(v6 + 32))(a2, ObjectType, v6);

    return swift_unknownObjectRelease();
  }

  return result;
}

uint64_t sub_1E3ABF258(void *a1)
{
  v2 = [a1 osFeatureFlagsJSON];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205C64();

  return v3;
}

uint64_t sub_1E3ABF2D0(void *a1)
{
  v2 = [a1 bundleIdentifier];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3ABF340(uint64_t a1, uint64_t a2, void *a3, uint64_t a4)
{
  v9 = *(v4 + 24);
  if (!a2)
  {
    swift_beginAccess();
    Strong = swift_unknownObjectWeakLoadStrong();
    if (Strong)
    {
      v12 = Strong;
      v13 = Strong + OBJC_IVAR____TtC8VideosUI11TVExtension_delegate;
      v14 = swift_unknownObjectWeakLoadStrong();
      v15 = *(v13 + 8);

      if (v14)
      {
        ObjectType = swift_getObjectType();
        sub_1E3A609B8(ObjectType, v16, v17);
        v18 = swift_allocError();
        *v19 = a3;
        v20 = *(v15 + 32);
        v21 = a3;
        v20(v18, ObjectType, v15);
        swift_unknownObjectRelease();
      }
    }
  }

  return v9(a1, a2, a3, a4);
}

uint64_t block_copy_helper_6_1(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

void sub_1E3ABF494(uint64_t a1)
{
  sub_1E41FE414();
  if (v1 <= 0x3F)
  {
    sub_1E3286EF4(319);
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

uint64_t NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(uint64_t a1, void *a2, void *a3)
{
  v4 = a3;
  v5 = a2;
  if (a2)
  {
    v7 = a2;
    if (!a3)
    {
      goto LABEL_9;
    }

LABEL_3:
    for (i = v4; ; i = v5)
    {
      v16 = v5;
      v17 = v4;
      [v7 ensureLayoutForTextContainer_];
      v33 = i;

      v18 = [v3 fullRange];
      v34 = [v7 glyphRangeForCharacterRange:v18 actualCharacterRange:{v19, 0}];
      v21 = v20;
      v4 = swift_allocObject();
      v4[2] = 0;
      v5 = swift_allocObject();
      v5[2] = sub_1E41FDD54();
      v22 = v5 + 2;
      v5[3] = 0;
      v23 = swift_allocObject();
      *(v23 + 16) = 0;
      *(v23 + 24) = 0;
      *(v23 + 32) = 1;
      v24 = swift_allocObject();
      v24[2] = v4;
      v24[3] = a1;
      v24[4] = v5;
      v24[5] = v7;
      v24[6] = v23;
      aBlock[4] = sub_1E3ABFB14;
      aBlock[5] = v24;
      aBlock[0] = MEMORY[0x1E69E9820];
      aBlock[1] = 1107296256;
      aBlock[2] = sub_1E3ABF9AC;
      aBlock[3] = &block_descriptor_54;
      v3 = _Block_copy(aBlock);
      v25 = v7;

      [v25 enumerateLineFragmentsForGlyphRange:v34 usingBlock:{v21, v3}];
      _Block_release(v3);
      if (a1 == -1)
      {
        swift_beginAccess();
        if ((*(v23 + 32) & 1) == 0)
        {
          v26 = [v25 characterRangeForGlyphRange:*(v23 + 16) actualGlyphRange:{*(v23 + 24), 0}];
          v3 = v27;
          OUTLINED_FUNCTION_3_0((v5 + 2), v35);
          v5[2] = v26;
          v5[3] = v3;
        }
      }

      v10 = sub_1E41FDD54();
      swift_beginAccess();
      if (v10 == *v22)
      {

        return -1;
      }

      if (!__OFSUB__(v5[3] + *v22, 1))
      {
        break;
      }

      __break(1u);
LABEL_25:
      v11 = MEMORY[0x1E6911E60](0, v10);
LABEL_8:
      v7 = v11;

      if (v4)
      {
        goto LABEL_3;
      }

LABEL_9:
      v12 = v5;
      v13 = [v7 textContainers];
      sub_1E3280A90(0, &qword_1ECF32498, 0x1E69DB800);
      v14 = sub_1E42062B4();
      if (!sub_1E32AE9B0(v14))
      {
        goto LABEL_30;
      }

      if ((v14 & 0xC000000000000001) != 0)
      {
        v15 = MEMORY[0x1E6911E60](0, v14);
      }

      else
      {
        if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_28;
        }

        v15 = *(v14 + 32);
      }

      v5 = v15;
    }

    NSAttributedString.strongBaseWritingDirectionOfParagraph(atOrBefore:)();
    v30 = v29;
    v32 = v31;

    if (v32)
    {
      return -1;
    }

    else
    {
      return v30;
    }
  }

  else
  {
    v9 = [v3 layoutManagers];
    sub_1E3280A90(0, &qword_1ECF32490, 0x1E69DB7C0);
    v10 = sub_1E42062B4();
    if (sub_1E32AE9B0(v10))
    {

      if ((v10 & 0xC000000000000001) != 0)
      {
        goto LABEL_25;
      }

      if (*((v10 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        v11 = *(v10 + 32);
        goto LABEL_8;
      }

      __break(1u);
LABEL_28:
      __break(1u);
    }

    __break(1u);
LABEL_30:

    __break(1u);
  }

  return result;
}

void sub_1E3ABF9AC(uint64_t a1, void *a2, double a3, double a4, double a5, double a6, double a7, double a8, double a9, double a10)
{
  v19 = *(a1 + 32);

  v20 = a2;
  v19(a3, a4, a5, a6, a7, a8, a9, a10);
}

uint64_t sub_1E3ABFA98(void *a1, uint64_t a2, uint64_t a3, void *a4, void *a5)
{
  v9 = a4;
  v10 = a5;
  v11 = a1;
  v12 = NSTextStorage.writingDirectionOfLine(_:layoutManager:textContainer:)(a3, a4, a5);

  return v12;
}

void sub_1E3ABFB14(double a1, double a2, double a3, double a4, CGFloat a5, CGFloat a6, CGFloat a7, CGFloat a8, uint64_t a9, uint64_t a10, uint64_t a11, _BYTE *a12)
{
  v27.size.height = a8;
  v27.size.width = a7;
  v27.origin.y = a6;
  v27.origin.x = a5;
  v16 = v12[2];
  v17 = v12[3];
  v19 = v12[4];
  v18 = v12[5];
  v20 = v12[6];
  if (CGRectGetHeight(v27) != 0.0)
  {
    swift_beginAccess();
    v21 = *(v16 + 16);
    if (v21 == v17)
    {
      v22 = [v18 characterRangeForGlyphRange:a10 actualGlyphRange:{a11, 0}];
      v24 = v23;
      OUTLINED_FUNCTION_3_0(v19 + 16, v26);
      *(v19 + 16) = v22;
      *(v19 + 24) = v24;
      *a12 = 1;
    }

    else
    {
      OUTLINED_FUNCTION_3_0(v16 + 16, v26);
      if (__OFADD__(v21, 1))
      {
        __break(1u);
      }

      else
      {
        *(v16 + 16) = v21 + 1;
        OUTLINED_FUNCTION_3_0(v20 + 16, v25);
        *(v20 + 16) = a10;
        *(v20 + 24) = a11;
        *(v20 + 32) = 0;
      }
    }
  }
}

void type metadata accessor for _NSRange()
{
  if (!qword_1ECF324A0)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_1ECF324A0);
    }
  }
}

uint64_t sub_1E3ABFC84@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, __int16 a3@<W2>, uint64_t a4@<X8>)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324A8, &qword_1E42B83D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v8);
  v10 = v20 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324B0, &qword_1E42B83D8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v20 - v13;
  v15 = sub_1E3ABFE50(a1, a2, a3 & 0x101, v10);
  if (a2)
  {
    (*(*a2 + 128))(v15);
  }

  sub_1E4203DA4();
  sub_1E4200D94();
  sub_1E379E528(v10, v14, &qword_1ECF324A8, &qword_1E42B83D0);
  v16 = &v14[*(v11 + 36)];
  v17 = v20[1];
  *v16 = v20[0];
  *(v16 + 1) = v17;
  *(v16 + 2) = v20[2];
  sub_1E379E528(v14, a4, &qword_1ECF324B0, &qword_1E42B83D8);
  result = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324B8, &qword_1E42B83E0);
  v19 = (a4 + *(result + 36));
  *v19 = 0;
  v19[1] = a3 & 1;
  return result;
}

uint64_t sub_1E3ABFE50@<X0>(unint64_t a1@<X0>, uint64_t a2@<X1>, unsigned int a3@<W2>, uint64_t a4@<X8>)
{
  v80 = a3;
  v81 = a2;
  v91 = a4;
  v85 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v84 = v5;
  MEMORY[0x1EEE9AC00](v6);
  v83 = &v74 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v79 = sub_1E4202494();
  OUTLINED_FUNCTION_0_10();
  v78 = v8;
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v74 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v82 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32500, &qword_1E42B8488);
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v87 = &v74 - v15;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF324F0, &qword_1E42B8480);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v16);
  v18 = &v74 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v19);
  v88 = &v74 - v20;
  MEMORY[0x1EEE9AC00](v21);
  v86 = &v74 - v22;
  v89 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32508, qword_1E42B8490);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v23);
  v25 = &v74 - v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29A90, &qword_1E429C780);
  OUTLINED_FUNCTION_0_10();
  v28 = v27;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v31 = &v74 - v30;
  v32 = type metadata accessor for ViewModel();
  v33 = j___s8VideosUI9ViewModelCMa(v32);
  v34 = sub_1E39C1CF8(145, v33, v32);
  if (!sub_1E32AE9B0(v34))
  {

LABEL_13:
    nullsub_1();
    (*(v28 + 16))(v25, v31, v26);
    swift_storeEnumTagMultiPayload();
    v41 = sub_1E3AC0A44();
    OUTLINED_FUNCTION_10_1(v41);
    sub_1E4201F44();
    return (*(v28 + 8))(v31, v26);
  }

  v75 = v18;
  if ((v34 & 0xC000000000000001) != 0)
  {
    v35 = v13;
    v36 = MEMORY[0x1E6911E60](0, v34);
  }

  else
  {
    if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      goto LABEL_30;
    }

    v35 = v13;
    v36 = *(v34 + 32);
  }

  type metadata accessor for SubsetCollectionViewModel();
  v37 = swift_dynamicCastClass();
  if (!v37)
  {

    goto LABEL_13;
  }

  v34 = v37;
  v77 = v36;
  v76 = [objc_opt_self() sharedInstance];
  v38 = j___s8VideosUI9ViewModelCMa(v32);
  a1 = sub_1E39C1CF8(138, v38, v32);
  result = sub_1E32AE9B0(a1);
  if (!result)
  {

    v40 = 0;
    v13 = v35;
    goto LABEL_15;
  }

  v13 = v35;
  if ((a1 & 0xC000000000000001) == 0)
  {
    if (!*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return result;
    }

    v40 = *(a1 + 32);

    goto LABEL_10;
  }

LABEL_30:
  v40 = MEMORY[0x1E6911E60](0, a1);
LABEL_10:

LABEL_15:
  v42 = v80;
  v43 = v81;

  sub_1E3D8FE68(v34, v40, v43, v42 & 1, HIBYTE(v42) & 1, v93);
  v44 = sub_1E4202464();
  v47 = sub_1E3AC0AFC(v44, v45, v46);
  sub_1E4203224();
  (*(v78 + 8))(v11, v79);
  v95[0] = v93[0];
  v95[1] = v93[1];
  v95[2] = v93[2];
  v96 = v94;
  sub_1E3AC0B50(v95);
  if (v40)
  {
    v48 = *(*v40 + 488);

    v50 = v48(v49);

    if (v50)
    {
      *&v93[0] = v50;
      v51 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34240, &unk_1E4297E90);
      sub_1E3AC0BA4();
      sub_1E38D2480(v51, v92);

      if (v92[0])
      {
        v53 = sub_1E373E010(23, v92[0], v52);

        if (v53)
        {
          if (*v53 == _TtC8VideosUI13TextViewModel)
          {
            v54 = sub_1E3C27024();
            v56 = v55;

            if (v56)
            {
              goto LABEL_24;
            }
          }

          else
          {
          }
        }
      }
    }
  }

  v54 = 0;
  v56 = 0xE000000000000000;
LABEL_24:
  *&v93[0] = v54;
  *(&v93[0] + 1) = v56;
  v92[0] = &type metadata for FlexibleGridSubsetView;
  v92[1] = v47;
  OpaqueTypeConformance2 = swift_getOpaqueTypeConformance2();
  sub_1E32822E0(OpaqueTypeConformance2, v58, v59);
  v60 = v75;
  v61 = v82;
  v62 = v87;
  sub_1E4203114();

  (*(v13 + 8))(v62, v61);
  v63 = v83;
  sub_1E4201C94();
  sub_1E4201374();
  (*(v84 + 8))(v63, v85);
  sub_1E32C3898(v60);
  if (!v76 || (v64 = sub_1E3741090(0xD000000000000025, 0x80000001E4270050, v76), !v65))
  {

    v64 = 0;
    v65 = 0xE000000000000000;
  }

  *&v93[0] = v64;
  *(&v93[0] + 1) = v65;
  v66 = sub_1E4202C44();
  v68 = v67;
  v70 = v69;
  v71 = v86;
  v72 = v88;
  sub_1E4201364();
  sub_1E37434B8(v66, v68, v70 & 1);

  sub_1E32C3898(v72);
  sub_1E32C38F8(v71, v25);
  swift_storeEnumTagMultiPayload();
  v73 = sub_1E3AC0A44();
  OUTLINED_FUNCTION_10_1(v73);
  sub_1E4201F44();

  return sub_1E32C3898(v71);
}

uint64_t sub_1E3AC0740@<X0>(uint64_t a1@<X8>)
{
  if (*(v1 + 17))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_1E3ABFC84(*v1, *(v1 + 8), v2 | *(v1 + 16), a1);
}

__n128 __swift_memcpy18_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u16[0] = a2[1].n128_u16[0];
  *a1 = result;
  return result;
}

uint64_t sub_1E3AC0774(uint64_t *a1, int a2)
{
  if (a2)
  {
    if (a2 < 0 && *(a1 + 18))
    {
      LODWORD(v2) = *a1 + 0x7FFFFFFF;
    }

    else
    {
      v2 = *a1;
      if (*a1 >= 0xFFFFFFFF)
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

uint64_t sub_1E3AC07B4(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 18) = 1;
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

    *(result + 18) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_1E3AC0804()
{
  result = qword_1ECF324C0;
  if (!qword_1ECF324C0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324B8, &qword_1E42B83E0);
    sub_1E3AC0890();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324C0);
  }

  return result;
}

unint64_t sub_1E3AC0890()
{
  result = qword_1ECF324C8;
  if (!qword_1ECF324C8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324B0, &qword_1E42B83D8);
    sub_1E3AC091C();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324C8);
  }

  return result;
}

unint64_t sub_1E3AC091C()
{
  result = qword_1ECF324D0;
  if (!qword_1ECF324D0)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324A8, &qword_1E42B83D0);
    sub_1E3AC09A0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324D0);
  }

  return result;
}

unint64_t sub_1E3AC09A0()
{
  result = qword_1ECF324D8;
  if (!qword_1ECF324D8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324E0, &qword_1E42B8478);
    sub_1E3AC0A44();
    swift_getOpaqueTypeConformance2();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324D8);
  }

  return result;
}

unint64_t sub_1E3AC0A44()
{
  result = qword_1ECF324E8;
  if (!qword_1ECF324E8)
  {
    v1 = __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF324F0, &qword_1E42B8480);
    sub_1E3AC0AFC(v1, v2, v3);
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324E8);
  }

  return result;
}

unint64_t sub_1E3AC0AFC(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF324F8;
  if (!qword_1ECF324F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF324F8);
  }

  return result;
}

unint64_t sub_1E3AC0BA4()
{
  result = qword_1ECF289A8;
  if (!qword_1ECF289A8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF34240, &unk_1E4297E90);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF289A8);
  }

  return result;
}

void sub_1E3AC0C08()
{
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView) = 1;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cancellables) = MEMORY[0x1E69E7CC0];
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed) = 2;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_badgeView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView) = 0;
  sub_1E42076B4();
  __break(1u);
}

char *sub_1E3AC0CF4()
{
  OUTLINED_FUNCTION_0_8();
  ObjectType = swift_getObjectType();
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView] = 1;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cancellables] = MEMORY[0x1E69E7CC0];
  v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed] = 2;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_badgeView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] = 0;
  *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] = 0;
  v15 = ObjectType;
  v2 = OUTLINED_FUNCTION_2_0();
  v5 = objc_msgSendSuper2(v3, v4, v2, v0, v15);
  v6 = swift_getObjectType();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF379F0, qword_1E42CC4A0);
  v7 = swift_allocObject();
  *(v7 + 16) = xmmword_1E4297BE0;
  *(v7 + 32) = sub_1E3280A90(0, &qword_1EE23AEE0, 0x1E69DF7B0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF37A00, &unk_1E429BBA0);
  sub_1E42062A4();
  OUTLINED_FUNCTION_38();

  v8 = swift_allocObject();
  swift_unknownObjectWeakInit();
  v9 = swift_allocObject();
  *(v9 + 16) = v8;
  *(v9 + 24) = v6;
  aBlock[4] = sub_1E3AC3BC0;
  aBlock[5] = v9;
  aBlock[0] = MEMORY[0x1E69E9820];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_1E3790FBC;
  aBlock[3] = &block_descriptor_55;
  v10 = _Block_copy(aBlock);

  [v5 vui:v0 registerForTraitChanges:v10 withHandler:?];
  _Block_release(v10);

  sub_1E3CFEA54();
  OUTLINED_FUNCTION_8();
  v12 = *(v11 + 136);

  v12(v13);
  OUTLINED_FUNCTION_112();

  aBlock[0] = v12;
  swift_allocObject();
  swift_unknownObjectWeakInit();
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32570, &unk_1E4299870);
  sub_1E32752B0(&qword_1EE28A1B0, &unk_1ECF32570, &unk_1E4299870, MEMORY[0x1E695BED8]);
  sub_1E4200844();
  OUTLINED_FUNCTION_38();

  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32580, &qword_1E42A9B90);
  sub_1E32752B0(&qword_1EE23B5E0, &qword_1ECF32580, &qword_1E42A9B90, MEMORY[0x1E69E6348]);
  sub_1E42004D4();
  swift_endAccess();

  return v5;
}

id sub_1E3AC10BC()
{
  v1 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView;
  v2 = *&v0[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell____lazy_storage___subviewsContainerView];
  v3 = v2;
  if (v2 == 1)
  {
    v3 = [v0 vuiContentView];
    v4 = *&v0[v1];
    *&v0[v1] = v3;
    v5 = v3;
    sub_1E3A96F0C(v4);
  }

  sub_1E3A96F10(v2);
  return v3;
}

void *sub_1E3AC113C(uint64_t a1, void *a2, void *a3)
{
  v6 = sub_1E41FFCB4();
  v7 = *(v6 - 1);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v195 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v207 = a1;
  if (!a2)
  {
    goto LABEL_119;
  }

  v10 = *(*a1 + 392);
  v208 = a2;
  v11 = v10();
  if (!v11)
  {
    goto LABEL_117;
  }

  v12 = v11;
  v206 = v10;
  v197 = a2;
  type metadata accessor for EntityLockupCollectionViewCellLayout();
  v13 = swift_dynamicCastClass();
  if (!v13)
  {

    goto LABEL_119;
  }

  v14 = v13;
  v15 = v208;
  *&v208[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout] = v13;
  v204 = v12;

  *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel] = v207;

  OUTLINED_FUNCTION_36();
  v17 = *(v16 + 464);

  v209 = v17(v18);
  OUTLINED_FUNCTION_36();
  v202 = (*(v19 + 488))();
  v20 = (*a3 == 2) | *a3 ^ 1;
  v21 = *v14 + 1888;
  v22 = *v21;
  (*v21)();
  OUTLINED_FUNCTION_15_9();
  v205 = (*(v23 + 1744))();

  v201 = v14;
  (v22)(v24);
  OUTLINED_FUNCTION_15_9();
  (*(v25 + 1744))();
  OUTLINED_FUNCTION_112();

  v27 = (*(*v21 + 200))(v26);
  v29 = v28;

  if (v29)
  {
    [v15 vuiBounds];
    v27 = v30;
  }

  OUTLINED_FUNCTION_8();
  v32 = *(v31 + 208);

  v32(v27, 0);
  OUTLINED_FUNCTION_36();
  (*(v33 + 312))(0, 0);

  OUTLINED_FUNCTION_36();
  v35 = (*(v34 + 2288))();
  v37 = v36;
  sub_1E3DF9E68(&v221);
  v217 = v222;
  v218 = v223;
  v219[0] = v224[0];
  *(v219 + 15) = *(v224 + 15);
  v220 = 0;
  *__src = v35;
  __src[1] = v37;
  v230 = 0;
  *v233 = v224[0];
  *&v233[15] = *(v224 + 15);
  v232 = v223;
  v231 = v222;
  LODWORD(v200) = v20 & 1;
  v234 = v20 & 1;
  LODWORD(v203) = v225;
  v235 = v225;
  sub_1E37CCDA0(__src, v226);
  sub_1E38B04A4(__src, v226);
  v38 = *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  if (v38)
  {
    v39 = *&v15[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  }

  else
  {
    v39 = [objc_allocWithZone(VUIBaseView) init];
    v38 = 0;
  }

  v40 = v206(v38);
  if (v40)
  {
    v41 = v40;
    (*(*v40 + 744))();
    OUTLINED_FUNCTION_31_4();
  }

  else
  {
    v41 = 0;
  }

  v42 = v208;
  v43 = v209;
  [v39 setVuiBackgroundColor_];

  v44 = [v39 vuiLayer];
  if (v44)
  {
    v45 = v44;
    OUTLINED_FUNCTION_8();
    v47 = *(v46 + 552);

    v47(v227, v48);
    v49 = *v227;
    v50 = *&v227[1];
    v51 = *&v227[2];
    v52 = *&v227[3];

    v53 = 0.0;
    if ((v228 & 1) == 0)
    {
      v53 = sub_1E3952BE8(v49, v50, v51, v52);
    }

    [v45 setCornerRadius_];

    v42 = v208;
    v43 = v209;
  }

  v54 = [v39 vuiLayer];
  if (v54)
  {
    v55 = v54;
    v56 = [*sub_1E3E60CFC() CGColor];
    [v55 setBorderColor_];
  }

  v57 = [v39 vuiLayer];
  if (v57)
  {
    v58 = v57;
    [v57 setBorderWidth_];
  }

  v59 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] = v39;
  v60 = v39;
  v61 = sub_1E3AC10BC();
  if (v61)
  {
    v62 = v61;
    [v61 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView] addSubview:v59 oldView:?];
  }

  [v42 vui_setNeedsLayout];

  v199 = v60;
  v63 = [v42 vuiContentView];
  v64 = sub_1E3AC10BC();
  [v63 vui:v64 addSubview:0 oldView:?];

  v65 = type metadata accessor for UIFactory();
  sub_1E39C408C();
  v198 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView;
  v66 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  *(&v215 + 1) = &type metadata for MonogramContext;
  v216 = &off_1F5D61598;
  *&v214 = swift_allocObject();
  memcpy((v214 + 16), v226, 0x52uLL);
  sub_1E3280A90(0, &unk_1EE23B2D0, off_1E87284C0);
  v67 = v66;
  v68 = OUTLINED_FUNCTION_7_109();
  v206 = v65;
  v73 = sub_1E393D92C(v68, v69, v70, v71, v72);

  sub_1E325F748(&v214, &qword_1ECF296C0, &unk_1E429BBE0);
  v74 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView] = v73;
  v75 = v73;
  v76 = sub_1E3AC10BC();
  if (v76)
  {
    v77 = v76;
    [v76 &selRef_videoLayoutAttributes + 2];
  }

  v78 = &selRef_vui_disableLocalAsset;
  [v42 vui_setNeedsLayout];

  sub_1E39C408C();
  v7 = &OBJC_IVAR____TtC8VideosUI32TVAppExtensionHostViewController_loadingViewController;
  v196 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView;
  v79 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
  v80 = v220;
  *(&v215 + 1) = &unk_1F5D869A0;
  v216 = &off_1F5D868A0;
  v81 = swift_allocObject();
  *&v214 = v81;
  *(v81 + 16) = v35;
  *(v81 + 24) = v37;
  *(v81 + 32) = v80;
  v82 = v218;
  *(v81 + 33) = v217;
  *(v81 + 49) = v82;
  *(v81 + 65) = v219[0];
  *(v81 + 80) = *(v219 + 15);
  *(v81 + 96) = v200;
  *(v81 + 97) = v203;
  sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
  v83 = v79;
  v84 = OUTLINED_FUNCTION_7_109();
  v89 = sub_1E393D92C(v84, v85, v86, v87, v88);

  sub_1E325F748(&v214, &qword_1ECF296C0, &unk_1E429BBE0);
  v9 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
  *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] = v89;
  v90 = v89;
  v91 = sub_1E3AC10BC();
  if (v91)
  {
    v92 = v91;
    [v91 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView] addSubview:v9 oldView:?];
  }

  [v42 vui_setNeedsLayout];

  if (!v43)
  {
LABEL_41:
    v101 = v202;
    if (v202)
    {

      sub_1E373E010(23, v101, v102);
      OUTLINED_FUNCTION_112();
    }

    else
    {
      v9 = 0;
    }

LABEL_46:
    v103 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel;
    v104 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    v216 = 0;
    v214 = 0u;
    v215 = 0u;
    v105 = sub_1E3280A90(0, &qword_1EE23AD40, off_1E87283A8);
    v106 = v104;
    v203 = v9;
    v200 = v105;
    v107 = sub_1E393D92C(v9, v104, &v214, 0, v105);

    sub_1E325F748(&v214, &qword_1ECF296C0, &unk_1E429BBE0);
    v108 = *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    *&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] = v107;
    v109 = v107;
    v110 = sub_1E3AC10BC();
    if (v110)
    {
      v111 = v110;
      [v110 vui:*&v42[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel] addSubview:v108 oldView:?];
    }

    [v42 v78[122]];

    v112 = *&v42[v103];
    if (v112)
    {
      v113 = v203 == 0;
      if (v203)
      {
        v114 = *(*v203 + 392);
        v115 = v112;

        v117 = v114(v116);

        if (v117)
        {
          OUTLINED_FUNCTION_8();
          v119 = (*(v118 + 936))();

          if (v119 != 2 && (v119 & 1) != 0)
          {
            v113 = 1;
          }
        }
      }

      else
      {
        v115 = v112;
      }

      [v115 setHidden_];
    }

    v120 = sub_1E39C2CD0();
    v122 = v121;
    sub_1E3CFEA54();
    OUTLINED_FUNCTION_8();
    v124 = *(v123 + 144);

    v7 = v124(v125);

    if (v7)
    {
      OUTLINED_FUNCTION_8();
      v7 = *(v126 + 376);

      v127 = (v7)(v120, v122);
    }

    else
    {

      *(&v215 + 1) = &unk_1F5D5D528;
      v216 = &off_1F5D5C858;
      LOBYTE(v214) = 0;
      v128 = j__OUTLINED_FUNCTION_18();
      v127 = sub_1E39C29F0(&v214, v128 & 1);
      __swift_destroy_boxed_opaque_existential_1(&v214);
    }

    v129 = sub_1E39C408C();
    v130 = v129;
    if (!_MergedGlobals_54)
    {
      if (v129)
      {

        v131 = j__OUTLINED_FUNCTION_18();
        sub_1E39C26D0(2, v131 & 1);
        v133 = v132;

        if (v133)
        {
          type metadata accessor for ImageViewModel();
          if (swift_dynamicCastClass())
          {
            v134 = v201;
            OUTLINED_FUNCTION_8();
            (*(v135 + 1936))();
            v136 = OUTLINED_FUNCTION_38();
            v7 = sub_1E37E9528(v136, v134);

            v137 = _MergedGlobals_54;
            _MergedGlobals_54 = v7;
          }

          else
          {
          }
        }
      }
    }

    if (!qword_1ECF554B8)
    {
      if (v130)
      {

        v138 = j__OUTLINED_FUNCTION_18();
        sub_1E39C26D0(3, v138 & 1);
        v140 = v139;

        if (v140)
        {
          type metadata accessor for ImageViewModel();
          if (swift_dynamicCastClass())
          {
            v141 = v201;
            OUTLINED_FUNCTION_8();
            (*(v142 + 1936))();
            v143 = OUTLINED_FUNCTION_38();
            v7 = sub_1E37E9528(v143, v141);

            v144 = qword_1ECF554B8;
            qword_1ECF554B8 = v7;
          }

          else
          {
          }
        }
      }
    }

    v145 = v208;
    sub_1E3AC2628(v127 & 1, 0, 0);
    v147 = *&v145[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
    if (v147)
    {
      if (_MergedGlobals_54)
      {
        OUTLINED_FUNCTION_8();
        v149 = *(v148 + 1936);
        v151 = v150;
        v7 = v149();
        OUTLINED_FUNCTION_15_9();
        v153 = (*(v152 + 936))();
      }

      else
      {
        v151 = v147;
        v153 = 1;
      }

      [v151 setHidden_];
    }

    v207 = v130;
    if (v43)
    {
      v9 = sub_1E32AE9B0(v43);
      v154 = 0;
      v155 = v43 & 0xC000000000000001;
      v156 = v43 & 0xFFFFFFFFFFFFFF8;
      v6 = &qword_1F5D5CE68;
      while (1)
      {
        if (v9 == v154)
        {

          goto LABEL_91;
        }

        if (v155)
        {
          v158 = MEMORY[0x1E6911E60](v154, v43);
          v157 = v158;
        }

        else
        {
          if (v154 >= *(v156 + 16))
          {
            goto LABEL_116;
          }

          v157 = *(v43 + 8 * v154 + 32);
        }

        if (__OFADD__(v154, 1))
        {
          goto LABEL_115;
        }

        v213 = *(v157 + 98);
        v212 = 15;
        sub_1E3742F1C(v158, v159, v160);
        sub_1E4206254();
        sub_1E4206254();
        v7 = *(&v214 + 1);
        if (v214 == v210 && *(&v214 + 1) == v211)
        {
          break;
        }

        v162 = sub_1E42079A4();

        if (v162)
        {
          goto LABEL_96;
        }

        ++v154;
        v43 = v209;
      }

LABEL_96:

      v166 = *v157;
      v163 = v197;
    }

    else
    {
LABEL_91:
      v163 = v197;
      if (!v202)
      {
        goto LABEL_104;
      }

      v164 = sub_1E373E010(15, v202, v146);

      if (!v164)
      {
        goto LABEL_104;
      }

      v166 = *v164;
      if (*v164 != _TtC8VideosUI13TextViewModel)
      {
LABEL_100:

        goto LABEL_104;
      }
    }

    if ((v166[9].info)(v165))
    {
      OUTLINED_FUNCTION_30();
      v168 = (*(v167 + 936))();

      if (v168 != 2 && (v168 & 1) != 0)
      {
        goto LABEL_100;
      }
    }

    v169 = v208;
    v170 = *&v208[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    v216 = 0;
    v214 = 0u;
    v215 = 0u;
    v171 = v170;

    v173 = sub_1E393D92C(v172, v170, &v214, 0, v200);

    sub_1E325F748(&v214, &qword_1ECF296C0, &unk_1E429BBE0);
    v174 = *&v169[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    *&v169[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] = v173;
    v175 = v173;
    v176 = sub_1E3AC10BC();
    if (v176)
    {
      v177 = v176;
      [v176 vui:*&v169[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel] addSubview:v174 oldView:?];
    }

LABEL_104:
    v178 = v208;
    v179 = *&v208[v198];
    if (v179)
    {
      v180 = v208;
      v181 = [v179 accessibilityLabel];
      if (v181)
      {
        v182 = v181;
        goto LABEL_110;
      }
    }

    else
    {
      v183 = v208;
    }

    v184 = *&v178[v196];
    if (!v184)
    {
      v182 = 0;
      goto LABEL_112;
    }

    v182 = [v184 accessibilityLabel];
    if (!v182)
    {
LABEL_112:
      v185 = v208;
      [v208 setAccessibilityLabel_];

      return v163;
    }

LABEL_110:
    sub_1E4205F14();

    sub_1E4205ED4();
    OUTLINED_FUNCTION_31_4();

    goto LABEL_112;
  }

  v9 = sub_1E32AE9B0(v43);
  v93 = v43 & 0xC000000000000001;
  v94 = v43 & 0xFFFFFFFFFFFFFF8;

  v95 = 0;
  v6 = &qword_1F5D5CE68;
  while (1)
  {
    if (v9 == v95)
    {

      v42 = v208;
      v78 = &selRef_vui_disableLocalAsset;
      goto LABEL_41;
    }

    if (v93)
    {
      v96 = MEMORY[0x1E6911E60](v95, v43);
    }

    else
    {
      if (v95 >= *(v94 + 16))
      {
        goto LABEL_114;
      }
    }

    if (__OFADD__(v95, 1))
    {
      break;
    }

    v99 = v96;
    v213 = *(v96 + 98);
    v212 = 23;
    sub_1E3742F1C(v96, v97, v98);
    sub_1E4206254();
    sub_1E4206254();
    if (v214 == v210 && *(&v214 + 1) == v211)
    {

LABEL_45:
      v43 = v209;

      v42 = v208;
      v9 = v99;
      v78 = &selRef_vui_disableLocalAsset;
      goto LABEL_46;
    }

    v7 = sub_1E42079A4();

    if (v7)
    {
      goto LABEL_45;
    }

    ++v95;
    v43 = v209;
  }

  __break(1u);
LABEL_114:
  __break(1u);
LABEL_115:
  __break(1u);
LABEL_116:
  __break(1u);
LABEL_117:

LABEL_119:
  v187 = sub_1E324FBDC();
  (*(v7 + 16))(v9, v187, v6);

  v188 = sub_1E41FFC94();
  v189 = sub_1E4206814();

  if (os_log_type_enabled(v188, v189))
  {
    v190 = swift_slowAlloc();
    v191 = swift_slowAlloc();
    __src[0] = v191;
    *v190 = 136315138;
    sub_1E384EE08(*(v207 + 98));
    v194 = sub_1E3270FC8(v192, v193, __src);

    *(v190 + 4) = v194;
    _os_log_impl(&dword_1E323F000, v188, v189, "EntityLockupCollectionViewCell: Failed to get correct cell for [%s]", v190, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v191);
    MEMORY[0x1E69143B0](v191, -1, -1);
    MEMORY[0x1E69143B0](v190, -1, -1);
  }

  (*(v7 + 8))(v9, v6);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

void sub_1E3AC2628(int a1, char a2, char a3)
{
  v4 = &_MergedGlobals_54;
  if ((a1 & 1) == 0)
  {
    v4 = &qword_1ECF554B8;
  }

  v5 = *v4;
  if (*v4)
  {
    v6 = v3;
    if (a3 & 1) != 0 || (v12 = v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed], v12 == 2) || ((v12 ^ a1))
    {
      v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed] = a1 & 1;
      v8 = *&v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel];
      if (v8)
      {
        v25 = 0;
        v24 = MEMORY[0x1E69E6370];
        v23[0] = a1 & 1;
        v9 = *(*v8 + 784);
        v10 = v5;

        v9(&v25, v23, &unk_1F5D5D528, &off_1F5D5C858);

        sub_1E325F748(v23, &unk_1ECF296E0, &unk_1E4298030);
        if (a2)
        {
LABEL_7:
          v11 = [objc_opt_self() symbolReplaceContentTransition];
          goto LABEL_13;
        }
      }

      else
      {
        v13 = v5;
        if (a2)
        {
          goto LABEL_7;
        }
      }

      v11 = 0;
LABEL_13:
      v14 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
      if (v14 && (objc_opt_self(), (v15 = swift_dynamicCastObjCClass()) != 0))
      {
        v16 = v15;
        v17 = v5;
        v18 = v14;
        [v16 setSymbolImage:v5 withSymbolTransition:v11];
        v5 = v18;
      }

      else
      {
        v19 = [objc_opt_self() makeImageWithImage:v5 existingView:v14];
        v17 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
        *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] = v19;
        v20 = v19;
        v21 = sub_1E3AC10BC();
        if (v21)
        {
          v22 = v21;
          [v21 vui:*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView] addSubview:v17 oldView:?];
        }

        [v6 vui_setNeedsLayout];

        v11 = v20;
      }
    }
  }
}

double sub_1E3AC2874(char a1, double a2, double a3)
{
  v5 = *&v3[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout];
  if (v5)
  {
    v6 = v3;
    OUTLINED_FUNCTION_111();
    v8 = *(v7 + 432);
    v9 = swift_retain_n();
    v150 = v8;
    v10 = COERCE_DOUBLE((v8)(v9));
    if (v11)
    {
      v12 = 0.0;
    }

    else
    {
      v12 = 1.0 / v10 * a2;
    }

    v169 = a2;
    OUTLINED_FUNCTION_111();
    v158 = *(v13 + 1888);
    v158();
    OUTLINED_FUNCTION_30();
    (*(v14 + 152))(v170);
    v15 = *v170;
    v16 = *&v170[1];
    v17 = *&v170[2];
    v18 = *&v170[3];

    if ((v171 & 1) == 0)
    {
      sub_1E3952BE0(v15, v16, v17, v18);
    }

    v19 = [v3 vuiTraitCollection];
    v166 = [v19 isAXEnabled];

    v20 = *(*v5 + 1864);
    v20();
    OUTLINED_FUNCTION_15_9();
    v22 = (*(v21 + 504))();

    if (v22 == 18)
    {
      v26 = 0;
    }

    else
    {
      LOBYTE(v190[0]) = v22;
      LOBYTE(v189) = 2;
      sub_1E39E67F4(v23, v24, v25);
      v26 = sub_1E4205E84();
    }

    v165 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel;
    v27 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_subtitleLabel];
    v28 = 0.0;
    v29 = &selRef_textLayout;
    if (v27)
    {
      v30 = v27;
      v31 = OUTLINED_FUNCTION_6_92();
      [v31 v32];
      OUTLINED_FUNCTION_3();
      v20();
      OUTLINED_FUNCTION_30();
      (*(v33 + 152))(&v172);

      OUTLINED_FUNCTION_2_108();
      sub_1E3CEE8A0(v34, v35, v36, v37, v38);
      v41 = [v30 sizeThatFits_];
      if (v26)
      {
        (v20)(v41);
        OUTLINED_FUNCTION_30();
        (*(v42 + 152))(v174);

        v28 = 0.0;
      }

      else
      {
        v28 = 0.0;
        if (v166)
        {
          if (!*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel])
          {
            (v20)(v41);
            OUTLINED_FUNCTION_30();
            (*(v44 + 152))(v173);

            (v20)(v45);
            OUTLINED_FUNCTION_30();
            (*(v46 + 152))(v174);
          }
        }

        else
        {
          (v20)(v41);
          OUTLINED_FUNCTION_30();
          (*(v43 + 152))(v174);

          OUTLINED_FUNCTION_32_1();
        }
      }
    }

    v154 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel;
    v47 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
    if (v47)
    {
      v48 = v47;
      v49 = OUTLINED_FUNCTION_6_92();
      [v49 v50];
      OUTLINED_FUNCTION_3();
      v51 = *(*v5 + 1840);
      v51();
      OUTLINED_FUNCTION_30();
      (*(v52 + 152))(&v175);

      OUTLINED_FUNCTION_2_108();
      v28 = sub_1E3CEE8A0(v53, v54, v55, v56, v57);
      v60 = [v48 sizeThatFits_];
      if (v166)
      {
        (v51)(v60);
        OUTLINED_FUNCTION_30();
        (*(v61 + 152))(v176);

        (v51)(v62);
        OUTLINED_FUNCTION_30();
        (*(v63 + 152))(&v177);

        if (*&v6[v165] && (v26 & 1) == 0)
        {
          (v51)(v64);
          OUTLINED_FUNCTION_30();
          (*(v66 + 152))(&v178);

          OUTLINED_FUNCTION_32_1();
          v20();
          OUTLINED_FUNCTION_30();
          (*(v67 + 152))(v179);

          OUTLINED_FUNCTION_32_1();
          v20();
          OUTLINED_FUNCTION_30();
          (*(v68 + 152))(v180);

          OUTLINED_FUNCTION_32_1();
        }

        else
        {
        }

        v29 = &selRef_textLayout;
      }

      else
      {
        if ((*&v6[v165] == 0) | v26 & 1)
        {
          (v51)(v60);
        }

        else
        {
          (v20)(v60);
        }

        OUTLINED_FUNCTION_30();
        (*(v65 + 152))(v180);

        OUTLINED_FUNCTION_32_1();
        v29 = &selRef_textLayout;
      }
    }

    v69 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView;
    if (*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView])
    {

      v70 = OUTLINED_FUNCTION_6_92();
      (v158)([v70 v71]);
      OUTLINED_FUNCTION_30();
      (*(v72 + 152))(v187);

      if (v166)
      {
        v191.origin.x = 0.0;
        v191.origin.y = 0.0;
        v191.size.width = v169;
        v191.size.height = v12;
        CGRectGetHeight(v191);
      }

      OUTLINED_FUNCTION_3_113();
    }

    else if (*&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView])
    {
      OUTLINED_FUNCTION_111();
      v74 = *(v73 + 176);
      v74(v181);
      if (v182)
      {
        OUTLINED_FUNCTION_111();
        (*(v75 + 1912))();
        OUTLINED_FUNCTION_30();
        (*(v76 + 152))(v183);

        v77 = v183[0];
        if (v184)
        {
          v77 = 45.0;
        }
      }

      else
      {
        v77 = v181[0];
      }

      v167 = v77;
      if (OUTLINED_FUNCTION_19_63() <= 0.0)
      {
        [v6 v29[394]];
        Height = CGRectGetHeight(v192);
        v74(v185);
        v80 = v186;
        if (v186)
        {
          v81 = 0;
        }

        else
        {
          v81 = sub_1E3952BD8(v185[0], v185[1], v185[2]);
        }

        v78 = sub_1E4149E0C(v81, v80 & 1, Height);
      }

      else
      {
        v78 = OUTLINED_FUNCTION_19_63();
      }

      v82 = v78;
      OUTLINED_FUNCTION_111();
      (*(v83 + 1912))();
      OUTLINED_FUNCTION_30();
      (*(v84 + 152))(v187);

      if (v188)
      {
        v85 = 0;
      }

      else
      {
        v85 = v187[2];
      }

      sub_1E4149E0C(v85, v188 & 1, v82 - v167);
      v150();

      [v6 v29[394]];
      CGRectGetWidth(v193);
    }

    else
    {

      OUTLINED_FUNCTION_3_113();
    }

    v86 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView;
    v87 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_accessoryImageView];
    if (v87)
    {
      v88 = v87;
      v89 = [v88 vui:v169 sizeThatFits:a3];
      v90 = *(*v5 + 1936);
      v90(v89);
      OUTLINED_FUNCTION_30();
      (*(v91 + 152))(&v189);

      v90(v92);
      OUTLINED_FUNCTION_30();
      (*(v93 + 152))(v190);
    }

    if ((a1 & 1) == 0)
    {
      v94 = OUTLINED_FUNCTION_6_92();
      [v94 v95];
      v96 = v28;
      v98 = v97;
      v100 = v99;
      v102 = v101;
      OUTLINED_FUNCTION_10_76();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v148 = v104;
      v149 = v103;
      v146 = v106;
      v147 = v105;
      v107 = OUTLINED_FUNCTION_6_92();
      [v107 v108];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v168 = v109;
      v162 = v110;
      v159 = v111;
      v156 = v112;
      v113 = OUTLINED_FUNCTION_6_92();
      [v113 v114];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v152 = v116;
      v153 = v115;
      v151 = v117;
      v145 = v118;
      v119 = OUTLINED_FUNCTION_6_92();
      [v119 v120];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v164 = v121;
      v161 = v122;
      v157 = v123;
      v155 = v124;
      v125 = OUTLINED_FUNCTION_6_92();
      [v125 v126];
      OUTLINED_FUNCTION_3();
      OUTLINED_FUNCTION_10_76();
      OUTLINED_FUNCTION_2_108();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      v128 = v127;
      v130 = v129;
      v132 = v131;
      v134 = v133;
      v135 = OUTLINED_FUNCTION_6_92();
      [v135 v136];
      OUTLINED_FUNCTION_16_72();
      OUTLINED_FUNCTION_10_76();
      VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
      OUTLINED_FUNCTION_16_72();
      v137 = *&v6[v69];
      if (v137)
      {
        [v137 setFrame_];
      }

      v138 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupImageView];
      if (v138)
      {
        [v138 setFrame_];
      }

      v139 = *&v6[v154];
      if (v139)
      {
        [v139 setFrame_];
      }

      v140 = *&v6[v86];
      if (v140)
      {
        [v140 setFrame_];
      }

      v141 = *&v6[v165];
      if (v141)
      {
        [v141 setFrame_];
      }

      v142 = *&v6[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_cardBackgroundView];
      if (v142)
      {
        v143 = v142;
        [v143 setFrame_];
      }
    }

    return v169;
  }

  return a2;
}

id sub_1E3AC3840(char a1)
{
  v4.receiver = v1;
  v4.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v4, sel_vui_setHighlighted_, a1 & 1);
  result = *&v1[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_monogramView];
  if (result)
  {
    return [result vui:a1 & 1 setHighlighted:?];
  }

  return result;
}

id sub_1E3AC3900()
{
  v2.receiver = v0;
  v2.super_class = swift_getObjectType();
  result = objc_msgSendSuper2(&v2, sel_prepareForReuse);
  *(v0 + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed) = 2;
  return result;
}

void *sub_1E3AC3A48@<X0>(void *a2@<X8>, double a3@<D0>, double a4@<D1>, double a5@<D2>, double a6@<D3>, double a7@<D4>)
{
  sub_1E41A300C(v18);
  v14 = [v7 vui:a3 sizeThatFits:0.0];
  sub_1E41A2FE8(v14, v15, v16);
  *&v18[6] = a4;
  *&v18[7] = a5;
  *&v18[8] = a6;
  *&v18[9] = a7;
  return memcpy(a2, v18, 0x50uLL);
}

id sub_1E3AC3B20()
{
  v1 = [v0 vuiContentView];

  return v1;
}

double sub_1E3AC3BC0()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v2 = Strong;
    if (*(Strong + OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel))
    {

      v3 = sub_1E39C408C();

      if (v3)
      {

        v4 = j__OUTLINED_FUNCTION_18();
        sub_1E39C26D0(2, v4 & 1);
        v6 = v5;

        if (v6)
        {
          type metadata accessor for ImageViewModel();
          v7 = swift_dynamicCastClass();
          if (v7)
          {
            v8 = v7;
            if (*&v2[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout])
            {
              OUTLINED_FUNCTION_8();
              v10 = *(v9 + 1936);

              v12 = v10(v11);
            }

            else
            {
              type metadata accessor for ImageLayout();
              v12 = sub_1E3BD61D8();
            }

            v13 = sub_1E37E9528(v8, v12);

            v14 = _MergedGlobals_54;
            _MergedGlobals_54 = v13;
          }

          else
          {
          }
        }

        v15 = j__OUTLINED_FUNCTION_18();
        sub_1E39C26D0(3, v15 & 1);
        v17 = v16;

        if (v17)
        {
          type metadata accessor for ImageViewModel();
          v18 = swift_dynamicCastClass();
          if (v18)
          {
            v19 = v18;
            if (*&v2[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout])
            {
              OUTLINED_FUNCTION_8();
              v21 = *(v20 + 1936);

              v23 = v21(v22);
            }

            else
            {
              type metadata accessor for ImageLayout();
              v23 = sub_1E3BD61D8();
            }

            v24 = sub_1E37E9528(v19, v23);

            v25 = qword_1ECF554B8;
            qword_1ECF554B8 = v24;
          }

          else
          {
          }
        }
      }
    }

    v26 = v2[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_isFollowed];
    if (v26 != 2)
    {
      sub_1E3AC2628(v26 & 1, 0, 1);
    }

    v27 = OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout;
    v28 = *&v2[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_lockupLayout];
    if (v28)
    {
      type metadata accessor for LayoutGrid();
      OUTLINED_FUNCTION_31_4();

      sub_1E3A256EC();
      v29 = [v2 vuiTraitCollection];
      sub_1E3C2AE10();
      v31 = v30;
      (*(*v28 + 1640))();

      if (*&v2[v27])
      {
        OUTLINED_FUNCTION_8();
        v33 = *(v32 + 1840);

        v33(v34);
        OUTLINED_FUNCTION_112();

        v36 = v33;
        (*(*v33 + 2408))(v35);
        OUTLINED_FUNCTION_31_4();

        v37 = *&v2[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_titleLabel];
        if (v37)
        {
          v38 = v37;
          [v38 updateTextLayout_];
        }
      }
    }

    [v2 setNeedsLayout];
  }

  return result;
}

void sub_1E3AC3FBC()
{
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v1 = Strong;
  if (Strong)
  {
    if (*&Strong[OBJC_IVAR____TtC8VideosUI30EntityLockupCollectionViewCell_viewModel])
    {

      v1 = sub_1E39C2CD0();
      v3 = v2;

      goto LABEL_6;
    }

    v1 = 0;
  }

  v3 = 0;
LABEL_6:
  v4 = *(**sub_1E3CFEA54() + 376);

  v5 = v4(v1, v3);

  swift_beginAccess();
  v6 = swift_unknownObjectWeakLoadStrong();
  if (v6)
  {
    v7 = v6;
    sub_1E3AC2628(v5 & 1, 1, 0);
  }
}

void sub_1E3AC40F8()
{
  v1 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel;
  OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel, v17);
  if (*(v0 + v1))
  {
    OUTLINED_FUNCTION_8();
    v3 = *(v2 + 464);

    v5 = v3(v4);

    if (v5)
    {
      v6 = sub_1E32AE9B0(v5);
      for (i = 0; ; ++i)
      {
        if (v6 == i)
        {

          return;
        }

        if ((v5 & 0xC000000000000001) != 0)
        {
          v8 = MEMORY[0x1E6911E60](i, v5);
        }

        else
        {
          if (i >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_22;
          }
        }

        if (__OFADD__(i, 1))
        {
          __break(1u);
LABEL_22:
          __break(1u);
          return;
        }

        sub_1E3742F1C(v8, v9, v10);
        sub_1E4206254();
        sub_1E4206254();
        if (v15 == v13 && v16 == v14)
        {
          break;
        }

        v12 = sub_1E42079A4();

        if (v12)
        {
          goto LABEL_18;
        }
      }

LABEL_18:

      type metadata accessor for SportsCanonicalBannerScoreboardViewModel(0);
      if (!swift_dynamicCastClass())
      {
      }
    }
  }
}

void sub_1E3AC42DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v3 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer;
  OUTLINED_FUNCTION_3_0(&v0[OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer], &v31);
  if (!*&v0[v3])
  {
    sub_1E3AC40F8();
    if (v4)
    {
      OUTLINED_FUNCTION_30();
      v6 = (*(v5 + 1176))();

      if (v6)
      {
        sub_1E3E37F30();
        v7 = OUTLINED_FUNCTION_4_114();
        v8(v7);
        v9 = v0;
        v10 = sub_1E41FFC94();
        v11 = sub_1E42067E4();

        if (os_log_type_enabled(v10, v11))
        {
          v29 = v11;
          v12 = OUTLINED_FUNCTION_6_21();
          v28 = OUTLINED_FUNCTION_100();
          *v12 = 136315138;
          v30[0] = v28;
          sub_1E3AC40F8();
          if (!v13 || (OUTLINED_FUNCTION_30(), v15 = (*(v14 + 1096))(), v17 = v16, , !v17))
          {

            v15 = 0;
            v17 = 0xE000000000000000;
          }

          v18 = sub_1E3270FC8(v15, v17, v30);

          *(v12 + 4) = v18;
          _os_log_impl(&dword_1E323F000, v10, v29, "SportsCanonicalBannerCell:: scoreboard updates start/resume [%s]", v12, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v28);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          v19 = OUTLINED_FUNCTION_74();
          v20(v19);
        }

        else
        {

          v21 = OUTLINED_FUNCTION_74();
          v22(v21);
        }

        v23 = objc_opt_self();
        v24 = swift_allocObject();
        swift_unknownObjectWeakInit();
        v30[4] = sub_1E3AC5750;
        v30[5] = v24;
        v30[0] = MEMORY[0x1E69E9820];
        v30[1] = 1107296256;
        v30[2] = sub_1E377674C;
        v30[3] = &block_descriptor_56;
        v25 = _Block_copy(v30);

        v26 = [v23 scheduledTimerWithTimeInterval:1 repeats:v25 block:60.0];
        _Block_release(v25);
        v27 = *&v1[v3];
        *&v1[v3] = v26;
      }
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4620(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12)
{
  OUTLINED_FUNCTION_31_1();
  v13 = v12;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v15 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  OUTLINED_FUNCTION_5();
  v18 = (v17 - v16);
  sub_1E3AC40F8();
  if (v19)
  {
    OUTLINED_FUNCTION_30();
    v21 = (*(v20 + 2120))();

    if (v21)
    {
LABEL_22:
      OUTLINED_FUNCTION_25_2();
      return;
    }
  }

  sub_1E3AC40F8();
  if (v22)
  {
    v23 = (*(*v22 + 552))();

    if (v23)
    {
      v24 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
      OUTLINED_FUNCTION_3_0(v13 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest, &v51);
      if (*(v13 + v24))
      {

        sub_1E3AC40F8();
        if (!v25 || (OUTLINED_FUNCTION_30(), v27 = (*(v26 + 1096))(), v29 = v28, , !v29))
        {

          v27 = 0;
          v29 = 0xE000000000000000;
        }

        sub_1E3E37F30();
        v30 = OUTLINED_FUNCTION_4_114();
        v31(v30);

        v32 = sub_1E41FFC94();
        v33 = sub_1E42067E4();

        if (os_log_type_enabled(v32, v33))
        {
          v34 = OUTLINED_FUNCTION_6_21();
          v35 = OUTLINED_FUNCTION_100();
          v50[0] = v35;
          *v34 = 136315138;
          v36 = sub_1E3270FC8(v27, v29, v50);

          *(v34 + 4) = v36;
          _os_log_impl(&dword_1E323F000, v32, v33, "SportsCanonicalBannerCell::waiting for previous scoreboard request [%s]", v34, 0xCu);
          __swift_destroy_boxed_opaque_existential_1(v35);
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        else
        {
        }

        v46 = OUTLINED_FUNCTION_74();
        v47(v46);
      }

      else
      {
        v38 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel;
        OUTLINED_FUNCTION_5_0(v13 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_bannerViewModel, v50);
        v39 = *(v13 + v38);

        v40 = sub_1E3744600(v23);

        sub_1E3C5F7FC(v39, v40, v18);
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29440, &qword_1E429AFF0);
        *(v13 + v24) = sub_1E37B2D9C();

        swift_beginAccess();
        v41 = *(v13 + v24);
        if (v41)
        {
          swift_endAccess();
          v42 = *(*v41 + 352);

          v44 = v42(v43);

          if (v44)
          {
            v45 = swift_allocObject();
            swift_unknownObjectWeakInit();
            v41 = sub_1E41EC148(sub_1E3AC580C, v45);

            sub_1E3AC57B0(v18);
          }

          else
          {
            sub_1E3AC57B0(v18);
            v41 = 0;
          }
        }

        else
        {
          sub_1E3AC57B0(v18);
          swift_endAccess();
        }

        v48 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable;
        OUTLINED_FUNCTION_3_0(v13 + OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable, &v49);
        *(v13 + v48) = v41;
      }

      goto LABEL_22;
    }
  }

  OUTLINED_FUNCTION_25_2();

  sub_1E3AC4AAC();
}

void sub_1E3AC4AAC()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  sub_1E3E37F30();
  v2 = OUTLINED_FUNCTION_4_114();
  v3(v2);
  v4 = v0;
  v5 = sub_1E41FFC94();
  v6 = sub_1E42067E4();

  if (os_log_type_enabled(v5, v6))
  {
    v7 = OUTLINED_FUNCTION_6_21();
    v22 = OUTLINED_FUNCTION_100();
    v24[0] = v22;
    *v7 = 136315138;
    sub_1E3AC40F8();
    if (!v8 || (v9 = (*(*v8 + 1096))(), v11 = v10, , !v11))
    {

      v9 = 0;
      v11 = 0xE000000000000000;
    }

    v12 = sub_1E3270FC8(v9, v11, v24);

    *(v7 + 4) = v12;
    _os_log_impl(&dword_1E323F000, v5, v6, "SportsCanonicalBannerCell:: scoreboard updates stop [%s]", v7, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v22);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();
  }

  v13 = OUTLINED_FUNCTION_74();
  v14(v13);
  v15 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer;
  OUTLINED_FUNCTION_3_0(&v4[OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateTimer], v24);
  v16 = *&v4[v15];
  if (v16)
  {
    [v16 invalidate];
    v17 = *&v4[v15];
  }

  else
  {
    v17 = 0;
  }

  *&v4[v15] = 0;

  v18 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
  OUTLINED_FUNCTION_3_0(&v4[OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest], &v23);
  if (*&v4[v18])
  {
    OUTLINED_FUNCTION_8();
    v20 = *(v19 + 376);

    v20(v21);
  }

  *&v4[v18] = 0;

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4D34()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_8_1();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = *v4;
  v12 = v4[1];
  v13 = *(v4 + 16);
  v14 = *(v4 + 17);
  OUTLINED_FUNCTION_5_0(v2 + 16, &v40);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v16 = Strong;
    if (v14)
    {
      v17 = sub_1E3E37F30();
      (*(v6 + 16))(v10, v17, v0);
      v18 = OUTLINED_FUNCTION_5_12();
      sub_1E3781F8C(v18, v19, v20);
      v21 = sub_1E41FFC94();
      v22 = sub_1E42067F4();
      v23 = OUTLINED_FUNCTION_5_12();
      sub_1E37D172C(v23, v24, v25, 1);
      if (os_log_type_enabled(v21, v22))
      {
        v37 = v22;
        v26 = OUTLINED_FUNCTION_6_21();
        v36 = swift_slowAlloc();
        *v26 = 138412290;
        sub_1E3781F38(v36, v27, v28);
        swift_allocError();
        *v29 = v11;
        *(v29 + 8) = v12;
        *(v29 + 16) = v13;
        v30 = OUTLINED_FUNCTION_5_12();
        sub_1E3781F8C(v30, v31, v32);
        v33 = _swift_stdlib_bridgeErrorToNSError();
        *(v26 + 4) = v33;
        *v36 = v33;
        _os_log_impl(&dword_1E323F000, v21, v37, "SportsCanonicalBannerCell:: scoreboard update error [%@]", v26, 0xCu);
        sub_1E3A66B00(v36);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v10, v0);
    }

    else
    {

      sub_1E3AC4F8C();
    }

    v34 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest;
    OUTLINED_FUNCTION_3_0(&v16[OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequest], &v39);
    *&v16[v34] = 0;

    v35 = OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable;
    OUTLINED_FUNCTION_3_0(&v16[OBJC_IVAR____TtC8VideosUI25SportsCanonicalBannerCell_scoreboardUpdateRequestCancellable], &v38);
    *&v16[v35] = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC4F8C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v71 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v71 - v9;
  v12 = MEMORY[0x1EEE9AC00](v11);
  v14 = &v71 - v13;
  v15 = *(*v3 + 1096);
  v73 = *v3 + 1096;
  v16 = v15(v12);
  v74 = v5;
  v75 = v4;
  if (!v17)
  {
LABEL_10:
    v27 = sub_1E3E37F30();
    (*(v5 + 16))(v7, v27, v4);

    v28 = v1;
    v29 = v5;
    v30 = sub_1E41FFC94();
    v31 = sub_1E42067F4();

    if (os_log_type_enabled(v30, v31))
    {
      v32 = swift_slowAlloc();
      v76 = swift_slowAlloc();
      *v32 = 136315394;
      sub_1E3AC40F8();
      if (!v33 || (v34 = (*(*v33 + 1096))(), v36 = v35, , !v36))
      {

        v36 = 0xE300000000000000;
        v34 = 7104878;
      }

      v37 = sub_1E3270FC8(v34, v36, &v76);

      *(v32 + 4) = v37;
      *(v32 + 12) = 2080;
      v39 = (v15)(v38);
      if (v40)
      {
        v41 = v40;
      }

      else
      {
        v39 = 7104878;
        v41 = 0xE300000000000000;
      }

      v42 = sub_1E3270FC8(v39, v41, &v76);

      *(v32 + 14) = v42;
      _os_log_impl(&dword_1E323F000, v30, v31, "SportsCanonicalBannerCell:: wrong canonicalId for score update\n[current: %s received: %s", v32, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v74 + 8))(v7, v75);
    }

    else
    {

      (*(v29 + 8))(v7, v4);
    }

    goto LABEL_19;
  }

  v18 = v17;
  v71 = v16;
  v72 = v0;
  sub_1E3AC40F8();
  if (!v19 || (OUTLINED_FUNCTION_30(), v21 = (*(v20 + 1096))(), v23 = v22, , !v23))
  {
LABEL_9:

    v5 = v74;
    v4 = v75;
    v1 = v72;
    goto LABEL_10;
  }

  if (v71 == v21 && v18 == v23)
  {
  }

  else
  {
    v25 = sub_1E42079A4();

    if ((v25 & 1) == 0)
    {
      goto LABEL_9;
    }
  }

  v43 = (*(*v3 + 1176))(v26);
  v44 = sub_1E3E37F30();
  v45 = v74;
  v46 = *(v74 + 16);
  if (v43)
  {
    v47 = v75;
    v46(v14, v44, v75);

    v48 = sub_1E41FFC94();
    v49 = sub_1E42067E4();

    if (os_log_type_enabled(v48, v49))
    {
      v50 = swift_slowAlloc();
      v73 = swift_slowAlloc();
      v76 = v73;
      *v50 = 136315394;
      v51 = sub_1E3270FC8(v71, v18, &v76);

      *(v50 + 4) = v51;
      *(v50 + 12) = 2080;
      v53 = (*(*v3 + 1136))(v52);
      if (v53)
      {
        v54 = v53;
        v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
        v56 = MEMORY[0x1E6910C30](v54, v55);
        v58 = v57;
      }

      else
      {
        v58 = 0xE400000000000000;
        v56 = 1701736302;
      }

      v66 = sub_1E3270FC8(v56, v58, &v76);

      *(v50 + 14) = v66;
      _os_log_impl(&dword_1E323F000, v48, v49, "SportsCanonicalBannerCell:: updating scoreboard [%s]: %s", v50, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v74 + 8))(v14, v75);
    }

    else
    {

      (*(v45 + 8))(v14, v47);
    }

    sub_1E3AC40F8();
    if (v67)
    {
      v68 = v67;
      v69 = (*(*v3 + 464))();
      if (v69)
      {
        v70 = v69;
      }

      else
      {
        v70 = MEMORY[0x1E69E7CC0];
      }

      (*(*v68 + 2384))(v70, 0);
    }
  }

  else
  {
    v59 = v75;
    v46(v10, v44, v75);

    v60 = sub_1E41FFC94();
    v61 = sub_1E42067E4();

    if (os_log_type_enabled(v60, v61))
    {
      v62 = v45;
      v63 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      v76 = v64;
      *v63 = 136315138;
      v65 = sub_1E3270FC8(v71, v18, &v76);

      *(v63 + 4) = v65;
      _os_log_impl(&dword_1E323F000, v60, v61, "SportsCanonicalBannerCell:: received scoreboardViewModel without scores [%s]", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v62 + 8))(v10, v59);
    }

    else
    {

      (*(v45 + 8))(v10, v59);
    }

    sub_1E3AC4AAC();
  }

LABEL_19:
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3AC5750(void *a1)
{
  OUTLINED_FUNCTION_5_0(v1 + 16, v13);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v11 = Strong;
    sub_1E3AC4620(Strong, v4, v5, v6, v7, v8, v9, v10, v12, v13[0], v13[1], v13[2]);
  }

  else
  {
    [a1 invalidate];
  }
}

uint64_t sub_1E3AC57B0(uint64_t a1)
{
  v2 = type metadata accessor for SportsCanonicalBannerScoreboardUpdate.RequestContext(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3AC582C(uint64_t result)
{
  *v1 = result;
  v1[32] = result;
  return result;
}

uint64_t sub_1E3AC5838(uint64_t a1)
{
  v6 = *(a1 + 8);
  sub_1E3AC58B8(&v6, &v5);

  v3 = *(a1 + 16);
  *(v1 + 48) = *a1;
  *(v1 + 64) = v3;
  *(v1 + 80) = *(a1 + 32);
  *(v1 + 96) = *(a1 + 48);
  return sub_1E3AC5928(&v6, v1 + 16);
}

uint64_t sub_1E3AC58B8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3AC5928(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

double sub_1E3AC59C4@<D0>(uint64_t a1@<X8>)
{
  v2 = j__OUTLINED_FUNCTION_18();
  v3 = j__OUTLINED_FUNCTION_51_1();
  v4 = j__OUTLINED_FUNCTION_18();
  v5 = j__OUTLINED_FUNCTION_18();
  v6 = j__OUTLINED_FUNCTION_18();
  DocumentLoadingConfiguration.init(loadImmediately:labelTextOverride:withZoomTransition:prefersLargeTitle:navigationTitle:isComingFromExtras:isComingFromRoot:isRootViewController:)(&v9, 0, 0, v2 & 1, v3 & 1, 0, v4 & 1, v5 & 1, v6 & 1);
  v7 = *&v9.labelTextOverride.value._object;
  *a1 = *&v9.loadImmediately;
  *(a1 + 16) = v7;
  result = *&v9.navigationTitle.value._countAndFlagsBits;
  *(a1 + 32) = v9.navigationTitle;
  *(a1 + 48) = *&v9.isComingFromExtras;
  return result;
}

__n128 sub_1E3AC5A74@<Q0>(char a1@<W0>, char a2@<W1>, char a3@<W2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, char a7@<W6>, uint64_t a8@<X7>, uint64_t a9@<X8>, uint64_t a10)
{
  *a9 = a1;
  *(a9 + 1) = a2;
  *(a9 + 2) = a3;
  *(a9 + 8) = a4;
  *(a9 + 16) = a5;
  *(a9 + 24) = a6;
  *(a9 + 32) = a7;
  *(a9 + 40) = a8;
  v10 = *(a10 + 16);
  *(a9 + 48) = *a10;
  *(a9 + 64) = v10;
  result = *(a10 + 32);
  *(a9 + 80) = result;
  *(a9 + 96) = *(a10 + 48);
  return result;
}

uint64_t sub_1E3AC5AB4(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 32))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
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

uint64_t sub_1E3AC5B08(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 - 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 32) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

uint64_t sub_1E3AC5B68(uint64_t a1, unsigned int a2)
{
  if (a2)
  {
    if (a2 >= 0x7FFFFFFF && *(a1 + 100))
    {
      v2 = *a1 + 2147483646;
    }

    else
    {
      v3 = *(a1 + 8);
      if (v3 >= 0xFFFFFFFF)
      {
        LODWORD(v3) = -1;
      }

      v2 = v3 - 1;
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

uint64_t sub_1E3AC5BBC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 88) = 0;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 96) = 0;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 100) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 100) = 0;
    }

    if (a2)
    {
      return OUTLINED_FUNCTION_2_109(result, a2);
    }
  }

  return result;
}

double sub_1E3AC5C5C(uint64_t a1, double a2, double a3)
{
  v6 = objc_opt_self();
  [v6 scaleContentSizeValue:a1 forTraitCollection:a2];
  v8 = v7;
  [v6 scaleContentSizeValue:a1 forTraitCollection:a3];
  return v8;
}

double sub_1E3AC5CD8(uint64_t a1, uint64_t a2, double a3)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A250, " B\r");
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v27 - v7;
  v9 = sub_1E42012F4();
  v10 = *(v9 - 8);
  MEMORY[0x1EEE9AC00](v9);
  v12 = &v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v27 - v14;
  v17 = MEMORY[0x1EEE9AC00](v16);
  v19 = &v27 - v18;
  v20 = *(v10 + 16);
  v20(&v27 - v18, a1, v9, v17);
  sub_1E3831F24(a2, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E37ECA8C(v8);
  }

  else
  {
    v28 = v12;
    v21 = *(v10 + 32);
    v21(v15, v8, v9);
    sub_1E3AC6100();
    v22 = sub_1E4205E14();
    v23 = *(v10 + 8);
    if (v22)
    {
      v23(v19, v9);
      v21(v19, v15, v9);
    }

    else
    {
      v23(v15, v9);
    }

    v12 = v28;
  }

  (v20)(v12, v19, v9);
  v24 = (*(v10 + 88))(v12, v9);
  if (v24 == *MEMORY[0x1E697E718])
  {
    v25 = 0.82;
  }

  else if (v24 == *MEMORY[0x1E697E6F0])
  {
    v25 = 0.88;
  }

  else if (v24 == *MEMORY[0x1E697E6F8])
  {
    v25 = 0.94;
  }

  else
  {
    v25 = 1.0;
    if (v24 != *MEMORY[0x1E697E6E8])
    {
      if (v24 == *MEMORY[0x1E697E708])
      {
        v25 = 1.12;
      }

      else if (v24 == *MEMORY[0x1E697E720])
      {
        v25 = 1.24;
      }

      else if (v24 == *MEMORY[0x1E697E728])
      {
        v25 = 1.35;
      }

      else if (v24 == *MEMORY[0x1E697E6C0])
      {
        v25 = 1.62;
      }

      else if (v24 == *MEMORY[0x1E697E6C8])
      {
        v25 = 1.95;
      }

      else if (v24 == *MEMORY[0x1E697E6D0])
      {
        v25 = 2.34;
      }

      else if (v24 == *MEMORY[0x1E697E6D8])
      {
        v25 = 2.74;
      }

      else if (v24 == *MEMORY[0x1E697E6E0])
      {
        v25 = 3.15;
      }

      else
      {
        (*(v10 + 8))(v12, v9);
      }
    }
  }

  (*(v10 + 8))(v19, v9);
  return ceil(v25 * a3);
}

unint64_t sub_1E3AC6100()
{
  result = qword_1EE289CD0;
  if (!qword_1EE289CD0)
  {
    sub_1E42012F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289CD0);
  }

  return result;
}

double sub_1E3AC6158(double result, double a2)
{
  if (a2 > 0.0 && result > 0.0)
  {
    return result / a2;
  }

  return result;
}

double sub_1E3AC6180(uint64_t a1, uint64_t a2, double a3, double a4, double a5, double a6)
{
  v9 = sub_1E3AC5CD8(a1, a2, a3);
  v10 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v10, v11, a4);
  v12 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v12, v13, a5);
  v14 = OUTLINED_FUNCTION_16_0();
  sub_1E3AC5CD8(v14, v15, a6);
  return v9;
}

uint64_t sub_1E3AC6204()
{
  if (*(v0 + 112))
  {
    v1 = *(v0 + 112);
  }

  else
  {
    type metadata accessor for VideoLayout();
    v1 = sub_1E383BCC0();
    *(v0 + 112) = v1;
  }

  return v1;
}

uint64_t sub_1E3AC626C(uint64_t a1)
{
  v1 = a1;
  swift_allocObject();
  return sub_1E3AC62A8(v1);
}

uint64_t sub_1E3AC62A8(char a1)
{
  v2 = v1;
  *(v2 + 112) = 0;
  type metadata accessor for MediaShowcasingMetadataLayout();
  if (a1)
  {
    v4 = 5;
  }

  else
  {
    v4 = 4;
  }

  *(v2 + 104) = sub_1E3CCEAA8(v4);
  v5 = sub_1E3C2F9A0();

  swift_beginAccess();

  sub_1E3C37CBC(v6, 224);

  v7 = sub_1E3AC6204();
  sub_1E3C37CBC(v7, 95);

  v8 = sub_1E3AC6204();
  __dst[8] = 0;
  v56 = 0x3FE8000000000000;
  v57 = 0;
  v9 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v52 = v54;
  v53 = v55;
  sub_1E3C3DE00();
  v48 = v50;
  v49 = v51;
  sub_1E3C3DE00();
  LOBYTE(v45) = v47;
  v10 = sub_1E3C3DE00();
  LOBYTE(v41) = v43;
  OUTLINED_FUNCTION_0_135(v10, v11, v12, v13, v14, v15, v16, v17, v31, v33, v35, v37, 0, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v42, v41, v42, v43, v46, v45, v46, v47);
  memcpy(__dst, __src, 0x59uLL);
  v18 = OUTLINED_FUNCTION_18();
  (*(*v8 + 1600))(__dst, 81, v18 & 1, v9);

  v19 = *(v5 + 112);
  __dst[0] = 0;
  LOBYTE(v56) = 1;

  v20 = MEMORY[0x1E69E6370];
  sub_1E3C3DE00();
  LOBYTE(v52) = v54;
  sub_1E3C3DE00();
  LOBYTE(v48) = v50;
  sub_1E3C3DE00();
  LOBYTE(v44) = v46;
  v21 = sub_1E3C3DE00();
  LOBYTE(v40) = v42;
  OUTLINED_FUNCTION_0_135(v21, v22, v23, v24, v25, v26, v27, v28, v32, v34, v36, v38, *__dst, *&__dst[8], *&__dst[16], *&__dst[24], *&__dst[32], *&__dst[40], *&__dst[48], *&__dst[56], *&__dst[64], *&__dst[72], *&__dst[80], *&__dst[88], v40, v41, v42, v43, v44, v45, v46, v47);
  *__dst = __src[0];
  *&__dst[4] = __src[1];
  v29 = OUTLINED_FUNCTION_18();
  (*(*v19 + 1600))(__dst, 120, v29 & 1, v20);

  return v5;
}

void sub_1E3AC65AC(uint64_t a1)
{
  v2 = sub_1E3A7B638(a1);
  if (v2)
  {
    v6 = v2;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
LABEL_6:
      [v3 setDelegate_];
      v5 = v6;
      goto LABEL_9;
    }
  }

  v4 = sub_1E3A7B638(v2);
  if (v4)
  {
    v6 = v4;
    objc_opt_self();
    v3 = swift_dynamicCastObjCClass();
    if (v3)
    {
      goto LABEL_6;
    }
  }

  v5 = sub_1E3A7B638(v4);
LABEL_9:
}

void sub_1E3AC6654(void *a1)
{
  v3 = a1;
  sub_1E3A7B674(a1);
  sub_1E3AC65AC(v2);
}

uint64_t (*sub_1E3AC66A4(void *a1))()
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[4] = v1;
  v3[5] = sub_1E3A7B6BC();
  return sub_1E3AC6704;
}

void sub_1E3AC6704(void *a1, char a2)
{
  v3 = *a1;
  v4 = (*(*a1 + 40))(*a1, 0);
  if ((a2 & 1) == 0)
  {
    sub_1E3AC65AC(v4);
  }

  free(v3);
}

id sub_1E3AC6760()
{
  v1 = OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView);
  }

  else
  {
    type metadata accessor for UnifiedMessagingBannerView();
    v4 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

void sub_1E3AC67D8()
{
  v3.receiver = v0;
  v3.super_class = swift_getObjectType();
  objc_msgSendSuper2(&v3, sel_vui_loadView);
  v1 = sub_1E3AC6760();
  [v0 setVuiView_];

  sub_1E3AC683C(v2);
}

void sub_1E3AC683C(uint64_t a1)
{
  v2 = sub_1E3A7B638(a1);
  if (v2)
  {
    v3 = v2;
    [v1 vui:v2 addChildViewController:?];
    v4 = [v1 vuiView];
    if (v4)
    {
      v5 = v4;
      v6 = [v3 vuiView];
      if (v6)
      {
        v7 = v6;
        [v5 addSubview_];

        [v3 vui:v1 didMoveToParentViewController:?];
        v8 = sub_1E3AC6760();
        v9 = [v3 view];

        v10 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
        OUTLINED_FUNCTION_3_0(&v8[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView], v12);
        v11 = *&v8[v10];
        *&v8[v10] = v9;

        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
  }
}

id sub_1E3AC6994(uint64_t a1, void *a2)
{
  v12[3] = a2;
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF32588, qword_1E42B8650);
  sub_1E4148C68(sub_1E3AC6ABC, v3, v12);
  v4 = v12[0];

  sub_1E3A7B5A0(v5);

  v6 = sub_1E3AC6760();
  v7 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel;
  OUTLINED_FUNCTION_3_0(&v6[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel], v12);
  *&v6[v7] = a1;

  v8 = (*(*a1 + 896))();
  v9 = v8;
  sub_1E3A7B674(v8);
  sub_1E3AC65AC(v10);

  return v4;
}

id sub_1E3AC6ABC@<X0>(void *a2@<X8>)
{
  type metadata accessor for UnifiedMessagingBannerViewController();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a2 = result;
  return result;
}

id sub_1E3AC6AF8(uint64_t a1, uint64_t a2, void *a3)
{
  ObjectType = swift_getObjectType();
  *&v3[OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView] = 0;
  if (a2)
  {
    v7 = sub_1E4205ED4();
  }

  else
  {
    v7 = 0;
  }

  v10.receiver = v3;
  v10.super_class = ObjectType;
  v8 = objc_msgSendSuper2(&v10, sel_initWithNibName_bundle_, v7, a3);

  return v8;
}

id sub_1E3AC6C00(void *a1)
{
  ObjectType = swift_getObjectType();
  *&v1[OBJC_IVAR____TtC8VideosUI36UnifiedMessagingBannerViewController____lazy_storage___containerView] = 0;
  v6.receiver = v1;
  v6.super_class = ObjectType;
  v4 = objc_msgSendSuper2(&v6, sel_initWithCoder_, a1);

  if (v4)
  {
  }

  return v4;
}

id sub_1E3AC6CC0(uint64_t a1)
{
  v2 = v1;
  type metadata accessor for UnifiedMessagingBannerViewModel();
  v3 = swift_dynamicCastClass();
  v4 = v3;
  if (!v3)
  {
    return (v4 != 0);
  }

  v5 = *(*v3 + 896);

  v7 = v5(v6);
  v8 = v7;
  v9 = sub_1E3A7B638(v8);
  v10 = v9;
  if (!v7)
  {
    v11 = v9;
    if (!v9)
    {
      v15 = 0;
      goto LABEL_9;
    }

LABEL_16:

    goto LABEL_17;
  }

  v11 = v8;
  if (!v9)
  {
    goto LABEL_16;
  }

  if (v7 == v10)
  {
    result = [v8 vuiView];
    if (!result)
    {
      goto LABEL_26;
    }

    v14 = result;
    v15 = [result superview];

LABEL_9:
    v16 = [v2 vuiView];
    v11 = v16;
    if (v15)
    {
      if (v16)
      {
        sub_1E373C4DC();
        v17 = sub_1E4206F64();

        if (v17)
        {
          goto LABEL_23;
        }

        goto LABEL_17;
      }

      v11 = v15;
    }

    else if (!v16)
    {
      goto LABEL_23;
    }

    goto LABEL_16;
  }

LABEL_17:
  v18 = sub_1E3A7B638(v12);
  if (!v18)
  {
LABEL_22:

    sub_1E3A7B5A0(v25);
    v26 = sub_1E3AC6760();
    v27 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel;
    OUTLINED_FUNCTION_3_0(&v26[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_viewModel], &v30);
    *&v26[v27] = v4;

    v8 = v8;
    sub_1E3A7B674(v7);
    sub_1E3AC65AC(v28);
    sub_1E3AC683C(v29);
LABEL_23:

    return (v4 != 0);
  }

  v19 = v18;
  v20 = [v18 parentViewController];
  if (!v20)
  {

    goto LABEL_22;
  }

  [v19 vui:0 willMoveToParentViewController:?];
  result = [v19 vuiView];
  if (result)
  {
    v21 = result;
    [result vui_removeFromSuperView];

    [v19 vui_removeFromParentViewController];
    v22 = sub_1E3AC6760();

    v23 = OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView;
    OUTLINED_FUNCTION_3_0(&v22[OBJC_IVAR____TtC8VideosUI26UnifiedMessagingBannerView_bannerContentView], v31);
    v24 = *&v22[v23];
    *&v22[v23] = 0;

    goto LABEL_22;
  }

  __break(1u);
LABEL_26:
  __break(1u);
  return result;
}

BOOL sub_1E3AC6F98(uint64_t a1)
{
  v1 = sub_1E3A7B638(a1);
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  objc_opt_self();
  v3 = swift_dynamicCastObjCClass() != 0;

  return v3;
}

CGFloat sub_1E3AC6FF0()
{
  v1 = [v0 vuiView];
  if (v1)
  {
    v3 = v1;
    [v1 bounds];
    v5 = v4;
    v7 = v6;
    v9 = v8;
    v11 = v10;

    v12 = v5;
    v13 = v7;
    v14 = v9;
    v15 = v11;

    return CGRectGetHeight(*&v12);
  }

  else
  {
    __break(1u);
  }

  return result;
}

id sub_1E3AC7084(uint64_t a1)
{
  v1 = *sub_1E3E60700();

  return v1;
}

void sub_1E3AC7170()
{
  v12.receiver = v0;
  v12.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v12, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v2 = sub_1E42062B4();

  v3 = sub_1E32AE9B0(v2);
  v4 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v5 = 0;
  v6 = *MEMORY[0x1E69D5D10];
  while (1)
  {
    if (v3 == v5)
    {

      return;
    }

    if ((v2 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](v5, v2);
    }

    else
    {
      if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v7 = *(v2 + 8 * v5 + 32);
    }

    v8 = v7;
    if (__OFADD__(v5, 1))
    {
      break;
    }

    v9 = [v7 tvpPlaylist];
    v10 = [v9 currentMediaItem];

    if (v10)
    {
      v11 = *&v0[v4];
      [v10 setMediaItemMetadata:v11 forProperty:v6];

      swift_unknownObjectRelease();
    }

    ++v5;
  }

  __break(1u);
LABEL_13:
  __break(1u);
}

uint64_t sub_1E3AC7314()
{
  v4.receiver = v0;
  v4.super_class = swift_getObjectType();
  v1 = objc_msgSendSuper2(&v4, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062B4();

  return v2;
}

void sub_1E3AC738C(void *a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption;
  OUTLINED_FUNCTION_57_2();
  swift_beginAccess();
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
  v5 = a1;

  sub_1E3AC7170();
}

uint64_t sub_1E3AC74D8()
{
  ObjectType = swift_getObjectType();
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062A4();

  v4.receiver = v0;
  v4.super_class = ObjectType;
  objc_msgSendSuper2(&v4, sel_setMediaInfos_, v2);

  sub_1E3AC7568();
  return sub_1E3AC7AF0(0);
}

void sub_1E3AC7568()
{
  ObjectType = swift_getObjectType();
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  type metadata accessor for ClipItem(0);
  OUTLINED_FUNCTION_0_10();
  v55 = v10;
  v56 = v9;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v54 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325F8, &qword_1E42B87F8);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v14);
  v53 = &v47 - v15;
  v16 = [objc_allocWithZone(MEMORY[0x1E696AB78]) init];
  [v16 setDateStyle_];
  v59 = v16;
  [v16 setTimeStyle_];
  v65.receiver = v0;
  v65.super_class = ObjectType;
  v17 = objc_msgSendSuper2(&v65, sel_mediaInfos);
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  OUTLINED_FUNCTION_19_3();
  v18 = sub_1E42062B4();

  v19 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *&v0[v19];
  v60 = sub_1E32AE9B0(v18);
  v61 = v18;
  v57 = v18 & 0xFFFFFFFFFFFFFF8;
  v58 = v18 & 0xC000000000000001;
  v51 = v4 + 16;
  v50 = v4 + 8;

  v21 = 0;
  *&v22 = 136315394;
  v47 = v22;
  v49 = v2;
  v48 = v8;
  for (i = v20; ; v20 = i)
  {
    if (v60 == v21)
    {
      goto LABEL_17;
    }

    if (!v58)
    {
      break;
    }

    v23 = MEMORY[0x1E6911E60](v21, v61);
LABEL_6:
    v24 = v23;
    v25 = *(v20 + 16);
    if (v21 == v25)
    {

LABEL_17:

      return;
    }

    if (v21 >= v25)
    {
      goto LABEL_19;
    }

    v26 = v20 + ((*(v55 + 80) + 32) & ~*(v55 + 80)) + *(v55 + 72) * v21;
    v27 = v53;
    v28 = *(v54 + 48);
    sub_1E3ACA40C(v26, &v53[v28]);
    sub_1E3ACA34C(&v27[v28], v13);
    v29 = [v24 tvpPlaylist];
    v30 = [v29 currentMediaItem];

    v31 = sub_1E41FE514();
    v32 = [v59 stringFromDate_];

    v33 = sub_1E4205F14();
    v35 = v34;

    sub_1E324FBDC();
    OUTLINED_FUNCTION_36_5();
    v36(v8);

    swift_unknownObjectRetain();
    v37 = sub_1E41FFC94();
    v38 = v8;
    v39 = sub_1E42067D4();
    swift_unknownObjectRelease();

    if (os_log_type_enabled(v37, v39))
    {
      v40 = swift_slowAlloc();
      v64 = swift_slowAlloc();
      *v40 = v47;
      v41 = sub_1E3270FC8(v33, v35, &v64);

      *(v40 + 4) = v41;
      *(v40 + 12) = 2080;
      if (v30)
      {
        *(&v63 + 1) = swift_getObjectType();
        *&v62 = v30;
      }

      else
      {
        v62 = 0u;
        v63 = 0u;
      }

      swift_unknownObjectRetain();
      v43 = sub_1E3294FA4(&v62);
      v45 = sub_1E3270FC8(v43, v44, &v64);

      *(v40 + 14) = v45;
      _os_log_impl(&dword_1E323F000, v37, v39, "CatchUpFetchController:: setting start date %s for %s", v40, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      OUTLINED_FUNCTION_36_5();
      v8 = v48;
      v2 = v49;
      v46(v48, v49);
    }

    else
    {

      OUTLINED_FUNCTION_36_5();
      v42(v38, v2);
      v8 = v38;
    }

    sub_1E3AC98E0(v30, v13);
    swift_unknownObjectRelease();

    sub_1E3ACA3B0(v13);
    ++v21;
  }

  if (v21 < *(v57 + 16))
  {
    v23 = *(v61 + 8 * v21 + 32);
    goto LABEL_6;
  }

  __break(1u);
LABEL_19:
  __break(1u);
}

uint64_t sub_1E3AC7AF0(uint64_t a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v57 - v5;
  v7 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v9 = v8;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v63 = v11 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v67 = &v57 - v14;
  v69 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325E0, &qword_1E42B87E0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_4_6();
  v68 = v16 - v17;
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v57 - v19;
  v21 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v59 = v1;
  v22 = *(v1 + v21);
  v23 = v20;
  sub_1E3AC9C00(a1, v22, v74);
  v24 = v74[4];
  v25 = v74[2];
  v26 = v74[0];
  v71 = v74[1];
  v62 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue;
  v64 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;

  sub_1E37E93E8(v74, v73, &qword_1ECF325E8, &qword_1E42B87E8);
  v61 = v9 + 32;
  v60 = v9 + 16;
  v57 = v9 + 8;
  v70 = v26;
  v58 = v6;
  v65 = v25;
  for (i = v24; ; v24 = i)
  {
    if (v25 == v26)
    {
      sub_1E325F6F0(v74, &qword_1ECF325E8, &qword_1E42B87E8);
    }

    if (v70 < 0 || v26 >= v25)
    {
      break;
    }

    if (v26 >= *(v24 + 16))
    {
      goto LABEL_21;
    }

    v27 = v23;
    v28 = v69;
    v29 = *(v69 + 48);
    v30 = *(type metadata accessor for ClipItem(0) - 8);
    v31 = v68;
    sub_1E3ACA40C(v24 + ((*(v30 + 80) + 32) & ~*(v30 + 80)) + *(v30 + 72) * v26, v68 + v29);
    v32 = v71;
    *v27 = v71;
    v33 = *(v28 + 48);
    v23 = v27;
    sub_1E3ACA34C(v31 + v29, v27 + v33);
    if (__OFADD__(v32, 1))
    {
      goto LABEL_22;
    }

    sub_1E3B9D814(v6);
    if (__swift_getEnumTagSinglePayload(v6, 1, v7) == 1)
    {
      sub_1E325F6F0(v6, &unk_1ECF363C0, &unk_1E42A9420);
    }

    else
    {
      OUTLINED_FUNCTION_36_5();
      v34 = v67;
      v35(v67, v6, v7);
      type metadata accessor for ClipImageFetchOperation(0);
      OUTLINED_FUNCTION_36_5();
      v36 = v63;
      v37(v63, v34, v7);
      v38 = sub_1E3E3F9F8(v36);
      v39 = v59;
      [*(v59 + v62) addOperation_];
      v40 = v64;
      swift_beginAccess();
      v41 = v38;
      swift_isUniquelyReferenced_nonNull_native();
      v72 = *(v39 + v40);
      v42 = v72;
      *(v39 + v40) = 0x8000000000000000;
      v43 = sub_1E3928950(v71);
      if (__OFADD__(v42[2], (v44 & 1) == 0))
      {
        goto LABEL_23;
      }

      v45 = v43;
      v46 = v44;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325F0, &qword_1E42B87F0);
      if (sub_1E4207644())
      {
        v47 = sub_1E3928950(v71);
        if ((v46 & 1) != (v48 & 1))
        {
          goto LABEL_25;
        }

        v45 = v47;
      }

      v49 = v72;
      if (v46)
      {
        v50 = v72[7];
        v51 = *(v50 + 8 * v45);
        *(v50 + 8 * v45) = v41;
      }

      else
      {
        v72[(v45 >> 6) + 8] |= 1 << v45;
        *(v49[6] + 8 * v45) = v71;
        *(v49[7] + 8 * v45) = v41;
        v52 = v49[2];
        v53 = __OFADD__(v52, 1);
        v54 = v52 + 1;
        if (v53)
        {
          goto LABEL_24;
        }

        v49[2] = v54;
      }

      *(v39 + v64) = v49;
      swift_endAccess();

      OUTLINED_FUNCTION_36_5();
      v55(v67, v7);
      v6 = v58;
      v23 = v27;
    }

    sub_1E325F6F0(v23, &qword_1ECF325E0, &qword_1E42B87E0);
    ++v71;
    ++v26;
    v25 = v65;
  }

  __break(1u);
LABEL_21:
  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  __break(1u);
LABEL_25:
  result = sub_1E4207A74();
  __break(1u);
  return result;
}

char *sub_1E3AC8088(uint64_t a1, void *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v4 = swift_allocObject();
  *(v4 + 16) = xmmword_1E4298880;
  *(v4 + 32) = a2;
  v5 = objc_allocWithZone(VUIMediaInfo);
  v6 = a2;
  OUTLINED_FUNCTION_25();
  sub_1E376538C(v7, v8, v9, v10);
  v11 = objc_allocWithZone(OUTLINED_FUNCTION_50());
  v12 = sub_1E3AC818C(a1, v5);

  return v12;
}

char *sub_1E3AC818C(uint64_t a1, void *a2)
{
  ObjectType = swift_getObjectType();
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_selectedAudioOption] = 0;
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer] = 0;
  v6 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue;
  *&v2[v6] = [objc_allocWithZone(MEMORY[0x1E696ADC8]) init];
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations] = MEMORY[0x1E69E7CC8];
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems] = a1;
  *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_mediaInfo] = a2;
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  v7 = a2;
  v8 = sub_1E42062A4();
  v17.receiver = v2;
  v17.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v17, sel_initWithMediaInfos_, v8);

  v10 = v9;
  v11 = OUTLINED_FUNCTION_50();
  v12 = sub_1E3AC82F4(v11, 1);
  v13 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer;
  v14 = *&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer];
  *&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer] = v12;

  v15 = *&v9[v13];
  if (v15)
  {
    [v15 pause];
  }

  [*&v9[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_imageOperationQueue] setMaxConcurrentOperationCount_];
  sub_1E3AC7AF0(0);

  return v9;
}

void *sub_1E3AC82F4(void *a1, char a2)
{
  v4 = [a1 tvpPlaylist];
  v5 = sub_1E3AC9D30(v4, a2);
  v7 = v6;

  v8 = objc_allocWithZone(VUIPlayer);
  v9 = sub_1E38A6730(v5, v7);
  v10 = v9;
  if (v9)
  {
    if (a2)
    {
      [v9 setWaitsAfterPreparingMediaItems_];
      [v10 setSendsPlayerReports_];
    }

    v11 = v10;
    v12 = [a1 tvpPlaylist];
    [v11 setPlaylist_];
  }

  return v10;
}

id sub_1E3AC83E4()
{
  ObjectType = swift_getObjectType();
  v2 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer;
  v3 = *&v0[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_prewarmPlayer];
  if (v3)
  {
    [v3 stop];
    v4 = *&v0[v2];
    if (v4)
    {
      [v4 invalidate];
    }
  }

  v6.receiver = v0;
  v6.super_class = ObjectType;
  return objc_msgSendSuper2(&v6, sel_dealloc);
}

uint64_t sub_1E3AC8510(uint64_t a1, char a2)
{
  v4 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  if (a2)
  {
    OUTLINED_FUNCTION_25();
    swift_beginAccess();
    v5 = *(*(v2 + v4) + 16);
    swift_beginAccess();

    sub_1E3AC85E8(v6);
    result = swift_endAccess();
    if (v5 >= *(*(v2 + v4) + 16))
    {
      return result;
    }

    v8 = v5;
  }

  else
  {
    swift_beginAccess();
    *(v2 + v4) = a1;

    v8 = 0;
  }

  return sub_1E3AC7AF0(v8);
}

uint64_t sub_1E3AC85E8(uint64_t a1)
{
  v3 = *(a1 + 16);
  v4 = *(*v1 + 16);
  result = v4 + v3;
  if (__OFADD__(v4, v3))
  {
    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  sub_1E3ACA2E4(result, 1);
  v6 = *v1;
  if (!*(a1 + 16))
  {

    if (!v3)
    {
      goto LABEL_8;
    }

    goto LABEL_10;
  }

  v7 = (*(v6 + 24) >> 1) - *(v6 + 16);
  result = type metadata accessor for ClipItem(0);
  if (v7 < v3)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  swift_arrayInitWithCopy();

  if (!v3)
  {
LABEL_8:
    *v1 = v6;
    return result;
  }

  v8 = *(v6 + 16);
  v9 = __OFADD__(v8, v3);
  v10 = v8 + v3;
  if (!v9)
  {
    *(v6 + 16) = v10;
    goto LABEL_8;
  }

LABEL_12:
  __break(1u);
  return result;
}

void sub_1E3AC86E8()
{
  ObjectType = swift_getObjectType();
  sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
  OUTLINED_FUNCTION_19_3();
  v2 = sub_1E42062A4();
  v3.receiver = v0;
  v3.super_class = ObjectType;
  objc_msgSendSuper2(&v3, sel_appendMediaInfos_, v2);

  sub_1E3AC7568();
}

uint64_t sub_1E3AC87D4(uint64_t a1)
{
  *(v2 + 80) = a1;
  *(v2 + 88) = v1;
  return MEMORY[0x1EEE6DFA0](sub_1E3AC87F4, 0, 0);
}

uint64_t sub_1E3AC87F4()
{
  OUTLINED_FUNCTION_134();
  v9 = v0[10];
  if (v9 < 0)
  {
    __break(1u);
    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v10 = v0[11];
  v11 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;
  swift_beginAccess();
  v12 = sub_1E3926118(v9, *(v10 + v11));
  v0[12] = v12;
  if (!v12)
  {
    v21 = swift_endAccess();
    sub_1E3AC9FA8(v21, v22, v23);
    v24 = swift_allocError();
    OUTLINED_FUNCTION_20_58(v24, v25);
LABEL_16:
    v31 = v0[1];

    return v31();
  }

  v13 = v12;
  swift_endAccess();
  if (![v13 isFinished])
  {
    v26 = swift_task_alloc();
    v0[13] = v26;
    *(v26 + 16) = v13;
    v27 = swift_task_alloc();
    v0[14] = v27;
    v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325B8, &unk_1E42B86C0);
    *v27 = v0;
    v27[1] = sub_1E3AC8A98;
    v6 = sub_1E3AC9FFC;
    v4 = 0x67616D4964616F6CLL;
    v5 = 0xEE00293A74612865;
    v1 = v0 + 8;
    v2 = 0;
    v3 = 0;
    v7 = v26;

    return MEMORY[0x1EEE6DE38](v1, v2, v3, v4, v5, v6, v7, v8);
  }

  v14 = &v13[OBJC_IVAR____TtC8VideosUI23ClipImageFetchOperation_result];
  OUTLINED_FUNCTION_25();
  v15 = swift_beginAccess();
  v18 = *(v14 + 4);
  if (v18 >> 8 > 0xFE)
  {
    sub_1E3AC9FA8(v15, v16, v17);
    v19 = swift_allocError();
    OUTLINED_FUNCTION_20_58(v19, v20);
LABEL_15:

    goto LABEL_16;
  }

  v28 = *v14;
  if ((v18 & 0x100) != 0)
  {
    swift_willThrow();
    sub_1E3ACA004(v28, v18);
    goto LABEL_15;
  }

  sub_1E3ACA004(v28, v18);

  v29 = v0[1];

  return v29(v28, v18 & 1);
}

uint64_t sub_1E3AC8A98()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v3 + 120) = v0;

  if (v0)
  {
    v6 = sub_1E3AC8C0C;
  }

  else
  {

    v6 = sub_1E3AC8BA4;
  }

  return MEMORY[0x1EEE6DFA0](v6, 0, 0);
}

uint64_t sub_1E3AC8BA4()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 64);
  v2 = *(v0 + 72);
  v3 = *(v0 + 8);

  return v3(v1, v2);
}

uint64_t sub_1E3AC8C0C()
{
  OUTLINED_FUNCTION_24();

  v1 = *(v0 + 8);

  return v1();
}

double sub_1E3AC8C78(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0, &qword_1E42B87C8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v12 - v7;
  (*(v4 + 16))(&v12 - v7, a1, v2, v6);
  v9 = (*(v4 + 80) + 16) & ~*(v4 + 80);
  v10 = swift_allocObject();
  (*(v4 + 32))(v10 + v9, v8, v2);
  sub_1E3E3FBB4(sub_1E3ACA67C, v10);

  return result;
}

uint64_t sub_1E3AC8E38(uint64_t a1, void *aBlock, void *a3)
{
  v3[2] = a3;
  v3[3] = _Block_copy(aBlock);
  a3;
  v6 = swift_task_alloc();
  v3[4] = v6;
  *v6 = v3;
  v6[1] = sub_1E3AC8EF4;

  return sub_1E3AC87D4(a1);
}

uint64_t sub_1E3AC8EF4()
{
  OUTLINED_FUNCTION_134();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_39();
  v8 = v7;
  v9 = *(v7 + 24);
  v10 = *(v7 + 16);
  v11 = *v1;
  OUTLINED_FUNCTION_7();
  *v12 = v11;

  v13 = (v9 + 16);
  v14 = *(v8 + 24);
  if (v2)
  {
    sub_1E41FE264();

    (*v13)(v14, 0, v6, 0);
    _Block_release(v14);
  }

  else
  {
    (*v13)(v14, v6, 0, v4 & 1);
    _Block_release(v14);
  }

  OUTLINED_FUNCTION_54();

  return v15();
}

uint64_t sub_1E3AC9084(uint64_t result)
{
  if (result < 0)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_operations;
    OUTLINED_FUNCTION_57_2();
    swift_beginAccess();
    if (*(*(v1 + v3) + 16))
    {
      sub_1E3928950(v2);
      v5 = v4;
    }

    else
    {
      v5 = 0;
    }

    swift_endAccess();
    return v5 & 1;
  }

  return result;
}

uint64_t sub_1E3AC912C(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_57_2();
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) == 0)
  {
    return *(*(v1 + v3) + 16) > a1;
  }

  __break(1u);
  return result;
}

void *sub_1E3AC91B4(uint64_t a1)
{
  v2 = v1;
  ObjectType = swift_getObjectType();
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_4_6();
  v10 = v8 - v9;
  MEMORY[0x1EEE9AC00](v11);
  v66 = &v66 - v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v66 - v14;
  MEMORY[0x1EEE9AC00](v16);
  v69 = &v66 - v17;
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80, &qword_1E42D0100);
  OUTLINED_FUNCTION_17_2(v18);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v66 - v20;
  v22 = type metadata accessor for ClipItem(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v23);
  OUTLINED_FUNCTION_4_6();
  v26 = v24 - v25;
  MEMORY[0x1EEE9AC00](v27);
  v71 = &v66 - v28;
  v29 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  result = swift_beginAccess();
  if ((a1 & 0x8000000000000000) == 0)
  {
    v67 = v15;
    v72 = v6;
    v70 = v4;
    v77 = *&v2[v29];
    v75 = a1;
    v76 = 0;

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40CE0, &qword_1E42B86D0);
    sub_1E3827828(&qword_1ECF325C0, &qword_1ECF40CE0, &qword_1E42B86D0);
    sub_1E38D2054(&v75, v21);
    if (__swift_getEnumTagSinglePayload(v21, 1, v22) == 1)
    {
      sub_1E325F6F0(v21, &qword_1ECF40C80, &qword_1E42D0100);

      v31 = sub_1E324FBDC();
      v32 = v72;
      v33 = v70;
      (*(v72 + 16))(v10, v31, v70);
      v34 = sub_1E41FFC94();
      v35 = sub_1E42067F4();
      if (os_log_type_enabled(v34, v35))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v36, v37, "CatchUpFetchController:: missing clip");
        OUTLINED_FUNCTION_6_0();
      }

      (*(v32 + 8))(v10, v33);
    }

    else
    {
      sub_1E3ACA34C(v21, v71);

      v74.receiver = v2;
      v74.super_class = ObjectType;
      v38 = objc_msgSendSuper2(&v74, sel_mediaInfos);
      sub_1E3280A90(0, &qword_1EE23B350, off_1E8728420);
      OUTLINED_FUNCTION_19_3();
      v39 = sub_1E42062B4();

      v77 = v39;
      v75 = a1;
      v76 = 0;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37A40, &unk_1E42CC520);
      sub_1E3827828(&qword_1EE23B4D0, &qword_1ECF37A40, &unk_1E42CC520);
      sub_1E38D2054(&v75, &v73);

      v40 = v73;
      v41 = v70;
      if (!v73)
      {
        v40 = *&v2[OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_mediaInfo];
      }

      v42 = v72;
      v43 = sub_1E3AC82F4(v40, 0);
      if (v43)
      {
        v44 = v43;
        v45 = sub_1E324FBDC();
        v46 = *(v42 + 16);
        v46(v69, v45, v41);
        sub_1E3ACA40C(v71, v26);
        v47 = sub_1E41FFC94();
        v48 = sub_1E42067E4();
        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          *v49 = 134217984;
          v50 = sub_1E3B9D7E0();
          sub_1E3ACA3B0(v26);
          *(v49 + 4) = v50;
          _os_log_impl(&dword_1E323F000, v47, v48, "CatchUpFetchController:: duration %f", v49, 0xCu);
          v41 = v70;
          OUTLINED_FUNCTION_6_0();
        }

        else
        {

          sub_1E3ACA3B0(v26);
        }

        v57 = *(v72 + 8);
        v72 += 8;
        v57(v69, v41);
        [v44 setPreferredForwardBufferDuration_];
        v58 = v67;
        v46(v67, v45, v41);
        v59 = v58;
        v60 = v44;
        v61 = sub_1E41FFC94();
        v62 = sub_1E42067E4();

        if (os_log_type_enabled(v61, v62))
        {
          v63 = swift_slowAlloc();
          v64 = swift_slowAlloc();
          *v63 = 138412290;
          *(v63 + 4) = v60;
          *v64 = v44;
          v65 = v60;
          _os_log_impl(&dword_1E323F000, v61, v62, "CatchUpFetchController:: returning player %@", v63, 0xCu);
          sub_1E325F6F0(v64, &unk_1ECF28E30, &qword_1E429E820);
          v41 = v70;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();
        }

        v57(v59, v41);
        sub_1E3ACA3B0(v71);
        return v44;
      }

      v51 = sub_1E324FBDC();
      v52 = v66;
      (*(v42 + 16))(v66, v51, v41);
      v53 = sub_1E41FFC94();
      v54 = sub_1E42067F4();
      if (os_log_type_enabled(v53, v54))
      {
        *swift_slowAlloc() = 0;
        OUTLINED_FUNCTION_15_14(&dword_1E323F000, v55, v56, "CatchUpFetchController:: failed to create player");
        OUTLINED_FUNCTION_6_0();
      }

      (*(v42 + 8))(v52, v41);
      sub_1E3ACA3B0(v71);
    }

    return 0;
  }

  __break(1u);
  return result;
}

void sub_1E3AC98E0(void *a1, uint64_t a2)
{
  if (a1)
  {
    type metadata accessor for ClipItem(0);
    swift_unknownObjectRetain();
    v4 = sub_1E41FE514();
    [a1 setMediaItemMetadata:v4 forProperty:*MEMORY[0x1E69D5D88]];

    sub_1E3B9D7E0();
    v5 = sub_1E41FE954();
    [a1 setMediaItemMetadata:v5 forProperty:@"VUIMediaItemMetadataClipDuration"];

    if (*(a2 + 8))
    {
      v6 = sub_1E4205ED4();
      [a1 setMediaItemMetadata:v6 forProperty:@"VUIMediaItemMetadataClipId"];
      swift_unknownObjectRelease();
    }

    else
    {

      swift_unknownObjectRelease();
    }
  }
}

id sub_1E3AC9A14(void *a1, uint64_t a2)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40C80, &qword_1E42D0100);
  OUTLINED_FUNCTION_17_2(v5);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v6);
  v8 = &v18 - v7;
  v9 = type metadata accessor for ClipItem(0);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_5();
  v13 = v12 - v11;
  v14 = OBJC_IVAR____TtC8VideosUI22CatchUpFetchController_clipItems;
  OUTLINED_FUNCTION_25();
  swift_beginAccess();
  v20 = *(v2 + v14);
  v18 = a2;
  v19 = 0;

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF40CE0, &qword_1E42B86D0);
  sub_1E3827828(&qword_1ECF325C0, &qword_1ECF40CE0, &qword_1E42B86D0);
  sub_1E38D2054(&v18, v8);
  if (__swift_getEnumTagSinglePayload(v8, 1, v9) == 1)
  {
    sub_1E325F6F0(v8, &qword_1ECF40C80, &qword_1E42D0100);
  }

  else
  {
    sub_1E3ACA34C(v8, v13);

    result = [a1 playlist];
    if (result)
    {
      v16 = result;
      v17 = [result currentMediaItem];

      sub_1E3AC98E0(v17, v13);
      swift_unknownObjectRelease();
      return sub_1E3ACA3B0(v13);
    }

    else
    {
      __break(1u);
    }
  }

  return result;
}

uint64_t sub_1E3AC9C00@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t *a3@<X8>)
{
  if (result < 0)
  {
    __break(1u);
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  result = sub_1E3ACA760(0, 0, result, *(a2 + 16), 0, a2);
  v6 = 0;
  v7 = *(a2 + 16);
  v8 = v7;
  if (v9)
  {
LABEL_5:
    *a3 = v8;
    a3[1] = v6;
    a3[2] = v7;
    a3[3] = 0;
    a3[4] = a2;
    return result;
  }

  if (v7 < result)
  {
    goto LABEL_7;
  }

  v8 = result;
  v6 = v5;
  if ((result & 0x8000000000000000) == 0)
  {
    goto LABEL_5;
  }

LABEL_8:
  __break(1u);
  return result;
}

uint64_t sub_1E3AC9D30(void *a1, char a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF363C0, &unk_1E42A9420);
  v5 = OUTLINED_FUNCTION_17_2(v4);
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_4_6();
  v8 = v6 - v7;
  *&v10 = MEMORY[0x1EEE9AC00](v9).n128_u64[0];
  v12 = &v25 - v11;
  v13 = [a1 currentMediaItem];
  if (!v13)
  {
    goto LABEL_10;
  }

  ObjectType = swift_getObjectType();
  v15 = *MEMORY[0x1E69D5B98];
  swift_unknownObjectRetain();
  v16 = MEMORY[0x1E69E6158];
  sub_1E4123588(ObjectType, MEMORY[0x1E69E6158]);
  sub_1E4123590(v15, v16, &v25);
  swift_unknownObjectRelease();
  v17 = v26;
  if (!v26)
  {
    v19 = [v13 mediaItemURL];
    if (v19)
    {
      v20 = v19;
      sub_1E41FE3C4();

      v21 = 0;
    }

    else
    {
      v21 = 1;
    }

    v22 = sub_1E41FE414();
    __swift_storeEnumTagSinglePayload(v8, v21, 1, v22);
    sub_1E327D738(v8, v12);
    if (__swift_getEnumTagSinglePayload(v12, 1, v22) != 1)
    {
      v18 = sub_1E41FE314();
      v17 = v23;
      (*(*(v22 - 8) + 8))(v12, v22);

      if (a2)
      {
        goto LABEL_11;
      }

      goto LABEL_13;
    }

    sub_1E325F6F0(v12, &unk_1ECF363C0, &unk_1E42A9420);
LABEL_10:

    v18 = 0;
    v17 = 0xE000000000000000;
    if (a2)
    {
      goto LABEL_11;
    }

LABEL_13:
    swift_unknownObjectRelease();
    return v18;
  }

  v18 = v25;
  if ((a2 & 1) == 0)
  {
    goto LABEL_13;
  }

LABEL_11:
  v25 = 0x206D726177657250;
  v26 = 0xE800000000000000;
  MEMORY[0x1E69109E0](v18, v17);
  swift_unknownObjectRelease();

  return v25;
}

unint64_t sub_1E3AC9FA8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF325B0;
  if (!qword_1ECF325B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF325B0);
  }

  return result;
}

id sub_1E3ACA004(id result, uint64_t a2)
{
  if (BYTE1(a2) != 255)
  {
    return sub_1E3ACA01C(result);
  }

  return result;
}

void *sub_1E3ACA028(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E3ACA114(v8, v7);
  v10 = *(type metadata accessor for ClipItem(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E3ACA210(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void *sub_1E3ACA114(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D8, &unk_1E42B87D0);
  v4 = *(type metadata accessor for ClipItem(0) - 8);
  v5 = *(v4 + 72);
  v6 = (*(v4 + 80) + 32) & ~*(v4 + 80);
  v7 = swift_allocObject();
  result = _swift_stdlib_malloc_size(v7);
  if (v5)
  {
    if ((result - v6) != 0x8000000000000000 || v5 != -1)
    {
      v7[2] = a1;
      v7[3] = 2 * ((result - v6) / v5);
      return v7;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E3ACA210(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for ClipItem(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for ClipItem(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

void *sub_1E3ACA2E4(int64_t a1, char a2)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  *v2 = v5;
  if (!result || a1 > *(v5 + 24) >> 1)
  {
    if (*(v5 + 16) <= a1)
    {
      v7 = a1;
    }

    else
    {
      v7 = *(v5 + 16);
    }

    result = sub_1E3ACA028(result, v7, a2 & 1, v5);
    *v2 = result;
  }

  return result;
}

uint64_t sub_1E3ACA34C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClipItem(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3ACA3B0(uint64_t a1)
{
  v2 = type metadata accessor for ClipItem(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_1E3ACA40C(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ClipItem(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

unint64_t sub_1E3ACA474(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF325C8;
  if (!qword_1ECF325C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF325C8);
  }

  return result;
}

_BYTE *storeEnumTagSinglePayload for CatchUpFetchController.CatchUpFetchError(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E3ACA5C8()
{
  v2 = v0[2];
  v3 = v0[3];
  v4 = v0[4];
  v5 = swift_task_alloc();
  *(v1 + 16) = v5;
  *v5 = v1;
  v5[1] = sub_1E3286A7C;

  return sub_1E3AC8E38(v2, v3, v4);
}

uint64_t sub_1E3ACA67C(void *a1, __int16 a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0, &qword_1E42B87C8);
  OUTLINED_FUNCTION_17_2(v4);
  v5 = a1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF325D0, &qword_1E42B87C8);
  if ((a2 & 0x100) != 0)
  {
    return sub_1E42063C4();
  }

  else
  {
    return sub_1E42063D4();
  }
}

uint64_t sub_1E3ACA760(uint64_t result, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6)
{
  v6 = a4 - result;
  if (__OFSUB__(a4, result))
  {
    __break(1u);
LABEL_18:
    __break(1u);
LABEL_19:
    __break(1u);
    return result;
  }

  v7 = result;
  if (a3 < 1)
  {
    if (v6 <= 0 && v6 > a3)
    {
      return 0;
    }
  }

  else if ((v6 & 0x8000000000000000) == 0 && v6 < a3)
  {
    return 0;
  }

  result += a3;
  if (__OFADD__(v7, a3))
  {
    goto LABEL_18;
  }

  if (a3 < 0 && *(a6 + 16) == v7)
  {
    a2 = *(a6 + 16);
  }

  if (__OFADD__(a2, a3))
  {
    goto LABEL_19;
  }

  return result;
}

uint64_t sub_1E3ACA7D0()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    type metadata accessor for ViewLayout();
    v1 = sub_1E3C2F968();
    *(v0 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3ACA874(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 98) = a1;
  v2 = sub_1E3C2F9A0();

  sub_1E3ACA8B4();

  return v2;
}

void sub_1E3ACA8B4()
{
  v13[0] = 0x407C200000000000;
  LOBYTE(v13[1]) = 0;
  v26 = 0;
  v27 = 1;
  v24 = 0;
  v25 = 1;
  v22 = 0x4085000000000000;
  v23 = 0;
  v0 = MEMORY[0x1E69E7DE0];
  sub_1E3C3DE00();
  v18 = v20;
  v19 = v21;
  sub_1E3C3DE00();
  v14 = v16;
  v15 = v17;
  sub_1E3C2FCB8(v13, &v26, &v24, &v22, &v18, &v14, v0, __src);
  memcpy(v13, __src, 0x59uLL);
  v1 = OUTLINED_FUNCTION_18();
  sub_1E3C2FDFC(v13, 6, v1 & 1, v0);
  v2 = *(MEMORY[0x1E69DDCE0] + 16);
  __src[0] = *MEMORY[0x1E69DDCE0];
  __src[1] = v2;
  LOBYTE(__src[2]) = 0;
  sub_1E3C2CC78();
  sub_1E3952C58();
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E3ACA7D0();
  v13[0] = v4;
  v13[1] = v6;
  v13[2] = v8;
  v13[3] = v10;
  LOBYTE(v13[4]) = 0;
  (*(*v11 + 184))(v13);

  sub_1E3C37CBC(v12, 72);
}

uint64_t sub_1E3ACAA8C(uint64_t a1)
{
  *(v1 + 104) = 0;
  *(v1 + 98) = 130;
  v2 = sub_1E3C2F9A0();

  sub_1E3ACA8B4();

  return v2;
}

unint64_t sub_1E3ACAAF4()
{
  v0 = sub_1E4207784();

  if (v0 >= 4)
  {
    return 4;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E3ACAB40(char a1)
{
  result = 0x6C6C616D7378;
  switch(a1)
  {
    case 1:
      result = 0x6C6C616D73;
      break;
    case 2:
      result = OUTLINED_FUNCTION_17_67();
      break;
    case 3:
      result = 0x656772616CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E3ACABC8(unsigned __int8 a1, char a2)
{
  v2 = 0x6C6C616D7378;
  v3 = 0xE600000000000000;
  v4 = a1;
  v5 = 0x6C6C616D7378;
  switch(v4)
  {
    case 1:
      v3 = 0xE500000000000000;
      v5 = 0x6C6C616D73;
      break;
    case 2:
      v3 = 0xE800000000000000;
      v5 = 0x647261646E617473;
      break;
    case 3:
      v3 = 0xE500000000000000;
      v5 = 0x656772616CLL;
      break;
    default:
      break;
  }

  v6 = 0xE600000000000000;
  switch(a2)
  {
    case 1:
      v6 = 0xE500000000000000;
      v2 = 0x6C6C616D73;
      break;
    case 2:
      v6 = 0xE800000000000000;
      v2 = 0x647261646E617473;
      break;
    case 3:
      v6 = 0xE500000000000000;
      v2 = 0x656772616CLL;
      break;
    default:
      break;
  }

  if (v5 == v2 && v3 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1E42079A4();
  }

  return v8 & 1;
}

uint64_t sub_1E3ACAD08(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3ACADBC(v3, v1);
  return sub_1E4207BA4();
}

uint64_t sub_1E3ACAD50(uint64_t a1)
{
  v1 = a1;
  sub_1E4207B44();
  sub_1E3ACC944(v1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3ACADBC(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3ACAE68(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3ACAFB0(uint64_t a1, uint64_t a2)
{
  v2 = a2;
  sub_1E4207B44();
  sub_1E3ACC944(v2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3ACB010(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E3ACADBC(v4, a2);
  return sub_1E4207BA4();
}

unint64_t sub_1E3ACB054@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3ACAAF4();
  *a1 = result;
  return result;
}

uint64_t sub_1E3ACB084@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3ACAB40(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

double sub_1E3ACB0B0()
{
  v1 = v0;
  switch((*(*v0 + 1736))())
  {
    case 4u:
      type metadata accessor for TextLayout();
      v3 = sub_1E383BCC0();
      OUTLINED_FUNCTION_13_18((v1 + 13), v4, v5, v6, v7, v8, v9, v10, v365);
      v1[13] = v3;

      OUTLINED_FUNCTION_9_2();
      v12 = *(v11 + 1784);
      v13 = v12();
      if (v13)
      {
        LOBYTE(v418[0]) = 27;
        LOBYTE(v415[0]) = 27;
        LOBYTE(v412[0]) = 3;
        LOBYTE(v409[0]) = 6;
        v14 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v401[0]) = v405[0];
        v22 = OUTLINED_FUNCTION_0_136(v14, v15, v16, v17, v18, v19, v20, v21, v365, v366, v367, v368, 7);
        OUTLINED_FUNCTION_8_78(v22, v23, v24, v25, v26, v365, v366, v367, v368, *__dst, *&__dst[8], v370[0], v370[1], v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397[0], v397[1], v398, *(&v398 + 1), v399, v400, v401[0], v401[1], v402, *(&v402 + 1), v403, v404, v405[0], v405[1], v406, *(&v406 + 1), v407, v408);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v35 = OUTLINED_FUNCTION_7_25(v27, v28, v29, v30, v31, v32, v33, v34, v365, v366, v367, v368, __dst[0]);
        v36(v35, 48);
      }

      v37 = (v12)(v13);
      if (v37)
      {
        *__dst = sub_1E3952C40();
        *&__dst[8] = v38;
        v370[0] = v39;
        v370[1] = v40;
        OUTLINED_FUNCTION_5_109();
        v412[0] = sub_1E3952C40();
        v412[1] = v41;
        v413[0] = v42;
        v413[1] = v43;
        LOBYTE(v414) = 0;
        type metadata accessor for UIEdgeInsets();
        v45 = v44;
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_6_93(v46, v47, v48, v49, v50, v51, v52, v53, *&v365, *&v366, *&v367, *&v368, *__dst, *&__dst[8], *v370, *&v370[1], *&v371, *&v372, *&v373, *&v374, *&v375, *&v376, *&v377, *&v378, *&v379, *&v380, *&v381, *&v382, *&v383, *&v384, *&v385, *&v386, *&v387, *&v388, *&v389, *&v390, *&v391, *&v392, *&v393, *&v394, *&v395, *&v396, *v397, *&v397[1], *&v398, *(&v398 + 1), *&v399, *&v400, *v401, *&v401[1], *&v402, *(&v402 + 1), *&v403, *&v404, *v405, *&v405[1], *&v406, *(&v406 + 1), *&v407, *&v408, *v409);
        v54 = sub_1E3C3DE00();
        *v397 = *v401;
        v398 = v402;
        LOBYTE(v399) = v403;
        v62 = OUTLINED_FUNCTION_0_136(v54, v55, v56, v57, v58, v59, v60, v61, v365, v366, v367, v368, __dst[0]);
        sub_1E3C2FCB8(v62, v63, v64, v65, v405, v397, v45, v66);
        OUTLINED_FUNCTION_11_80(v67, v68, v69, v70, v71, v72, v73, v74);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v83 = OUTLINED_FUNCTION_7_25(v75, v76, v77, v78, v79, v80, v81, v82, v365, v366, v367, v368, __dst[0]);
        v84(v83, 0);
      }

      v85 = (v12)(v37);
      if (v85)
      {
        OUTLINED_FUNCTION_1_136();
        v86 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v401[0]) = v405[0];
        v94 = OUTLINED_FUNCTION_0_136(v86, v87, v88, v89, v90, v91, v92, v93, v365, v366, v367, v368, __dst[0]);
        OUTLINED_FUNCTION_8_78(v94, v95, v96, v97, v98, v365, v366, v367, v368, *__dst, *&__dst[8], v370[0], v370[1], v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397[0], v397[1], v398, *(&v398 + 1), v399, v400, v401[0], v401[1], v402, *(&v402 + 1), v403, v404, v405[0], v405[1], v406, *(&v406 + 1), v407, v408);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v107 = OUTLINED_FUNCTION_7_25(v99, v100, v101, v102, v103, v104, v105, v106, v365, v366, v367, v368, __dst[0]);
        v108(v107, 54);
      }

      v109 = (v12)(v85);
      if (v109)
      {
        OUTLINED_FUNCTION_30();
        (*(v110 + 1984))(1);
      }

      v111 = (v12)(v109);
      if (v111)
      {
        OUTLINED_FUNCTION_30();
        (*(v112 + 2056))(3, 0);
      }

      v113 = (v12)(v111);
      if (v113)
      {
        v114 = v113;
        sub_1E3755B54();
        v115 = sub_1E4206F24();
        (*(*v114 + 680))(v115);
        goto LABEL_46;
      }

      break;
    case 5u:
      type metadata accessor for TextLayout();
      v254 = sub_1E383BCC0();
      OUTLINED_FUNCTION_13_18((v1 + 13), v255, v256, v257, v258, v259, v260, v261, v365);
      v1[13] = v254;

      OUTLINED_FUNCTION_9_2();
      v118 = *(v262 + 1784);
      v263 = v118();
      if (v263)
      {
        __dst[0] = 22;
        LOBYTE(v418[0]) = 15;
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_21_11();
        OUTLINED_FUNCTION_20_6();
        LOBYTE(v397[0]) = v401[0];
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_15_79();
        sub_1E3C2FCB8(v264, v265, v266, v397, v418, &v368 + 6, &qword_1F5D549D8, v267);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v276 = OUTLINED_FUNCTION_7_25(v268, v269, v270, v271, v272, v273, v274, v275, v365, v366, v367, v368, __dst[0]);
        v277(v276, 48);
      }

      v278 = (v118)(v263);
      if (v278)
      {
        OUTLINED_FUNCTION_1_136();
        v279 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v401[0]) = v405[0];
        v287 = OUTLINED_FUNCTION_0_136(v279, v280, v281, v282, v283, v284, v285, v286, v365, v366, v367, v368, __dst[0]);
        OUTLINED_FUNCTION_8_78(v287, v288, v289, v290, v291, v365, v366, v367, v368, *__dst, *&__dst[8], v370[0], v370[1], v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397[0], v397[1], v398, *(&v398 + 1), v399, v400, v401[0], v401[1], v402, *(&v402 + 1), v403, v404, v405[0], v405[1], v406, *(&v406 + 1), v407, v408);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v300 = OUTLINED_FUNCTION_7_25(v292, v293, v294, v295, v296, v297, v298, v299, v365, v366, v367, v368, __dst[0]);
        v301(v300, 54);
      }

      v302 = (v118)(v278);
      if (v302)
      {
        OUTLINED_FUNCTION_30();
        (*(v303 + 1720))(7);
      }

      v304 = (v118)(v302);
      if (v304)
      {
        OUTLINED_FUNCTION_30();
        v305 = OUTLINED_FUNCTION_8_5();
        v306(v305);
      }

      v307 = (v118)(v304);
      if (v307)
      {
        OUTLINED_FUNCTION_30();
        v308 = OUTLINED_FUNCTION_8_5();
        v309(v308);
      }

      v310 = (v118)(v307);
      if (v310)
      {
        OUTLINED_FUNCTION_30();
        v311 = OUTLINED_FUNCTION_8_5();
        v312(v311);
      }

      v313 = (v118)(v310);
      if (v313)
      {
        *__dst = xmmword_1E42B8870;
        *v370 = xmmword_1E42B8880;
        OUTLINED_FUNCTION_5_109();
        *v412 = xmmword_1E42B8890;
        *v413 = xmmword_1E42B88A0;
        LOBYTE(v414) = 0;
        type metadata accessor for UIEdgeInsets();
        v315 = v314;
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_6_93(v316, v317, v318, v319, v320, v321, v322, v323, *&v365, *&v366, *&v367, *&v368, *__dst, *&__dst[8], *v370, *&v370[1], *&v371, *&v372, *&v373, *&v374, *&v375, *&v376, *&v377, *&v378, *&v379, *&v380, *&v381, *&v382, *&v383, *&v384, *&v385, *&v386, *&v387, *&v388, *&v389, *&v390, *&v391, *&v392, *&v393, *&v394, *&v395, *&v396, *v397, *&v397[1], *&v398, *(&v398 + 1), *&v399, *&v400, *v401, *&v401[1], *&v402, *(&v402 + 1), *&v403, *&v404, *v405, *&v405[1], *&v406, *(&v406 + 1), *&v407, *&v408, *v409);
        v324 = sub_1E3C3DE00();
        *v397 = *v401;
        v398 = v402;
        LOBYTE(v399) = v403;
        v332 = OUTLINED_FUNCTION_0_136(v324, v325, v326, v327, v328, v329, v330, v331, v365, v366, v367, v368, __dst[0]);
        sub_1E3C2FCB8(v332, v333, v334, v335, v405, v397, v315, v336);
        OUTLINED_FUNCTION_11_80(v337, v338, v339, v340, v341, v342, v343, v344);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v353 = OUTLINED_FUNCTION_7_25(v345, v346, v347, v348, v349, v350, v351, v352, v365, v366, v367, v368, __dst[0]);
        v354(v353, 0);
      }

      v196 = (v118)(v313);
      if (!v196)
      {
        goto LABEL_44;
      }

      OUTLINED_FUNCTION_30();
      (*(v355 + 1984))(1);
      goto LABEL_43;
    case 6u:
      type metadata accessor for TextLayout();
      v116 = sub_1E383BCC0();
      swift_beginAccess();
      v1[13] = v116;

      OUTLINED_FUNCTION_9_2();
      v118 = *(v117 + 1784);
      v119 = v118();
      if (v119)
      {
        __dst[0] = 12;
        LOBYTE(v418[0]) = 3;
        sub_1E3C2FC98();
        OUTLINED_FUNCTION_21_11();
        OUTLINED_FUNCTION_20_6();
        LOBYTE(v365) = v401[0];
        sub_1E3C3DE00();
        OUTLINED_FUNCTION_15_79();
        sub_1E3C2FCB8(v120, v121, v122, &v365, v418, &v368 + 6, &qword_1F5D549D8, v123);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v132 = OUTLINED_FUNCTION_7_25(v124, v125, v126, v127, v128, v129, v130, v131, v365, v366, v367, v368, __dst[0]);
        v133(v132, 48);
      }

      v134 = (v118)(v119);
      if (v134)
      {
        sub_1E3952C94();
        *__dst = v135;
        *&__dst[8] = v136;
        v370[0] = v137;
        v370[1] = v138;
        OUTLINED_FUNCTION_5_109();
        *v412 = xmmword_1E42B8830;
        *v413 = xmmword_1E42B8840;
        LOBYTE(v414) = 0;
        *v409 = xmmword_1E42B8850;
        v410 = xmmword_1E42B8860;
        LOBYTE(v411) = 0;
        type metadata accessor for UIEdgeInsets();
        v139 = sub_1E3C3DE00();
        *v401 = *v405;
        v402 = v406;
        LOBYTE(v403) = v407;
        v147 = OUTLINED_FUNCTION_0_136(v139, v140, v141, v142, v143, v144, v145, v146, v365, v366, v367, v368, __dst[0]);
        OUTLINED_FUNCTION_8_78(v147, v148, v149, v150, v151, v365, v366, v367, v368, *__dst, *&__dst[8], v370[0], v370[1], v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397[0], v397[1], v398, *(&v398 + 1), v399, v400, v401[0], v401[1], v402, *(&v402 + 1), v403, v404, v405[0], v405[1], v406, *(&v406 + 1), v407, v408);
        OUTLINED_FUNCTION_11_80(v152, v153, v154, v155, v156, v157, v158, v159);
        OUTLINED_FUNCTION_18();
        OUTLINED_FUNCTION_14();
        v168 = OUTLINED_FUNCTION_7_25(v160, v161, v162, v163, v164, v165, v166, v167, v365, v366, v367, v368, __dst[0]);
        v169(v168, 0);
      }

      v170 = (v118)(v134);
      if (v170)
      {
        OUTLINED_FUNCTION_1_136();
        v171 = OUTLINED_FUNCTION_22_46();
        LOBYTE(v401[0]) = v405[0];
        v179 = OUTLINED_FUNCTION_0_136(v171, v172, v173, v174, v175, v176, v177, v178, v365, v366, v367, v368, __dst[0]);
        OUTLINED_FUNCTION_8_78(v179, v180, v181, v182, v183, v365, v366, v367, v368, *__dst, *&__dst[8], v370[0], v370[1], v371, v372, v373, v374, v375, v376, v377, v378, v379, v380, v381, v382, v383, v384, v385, v386, v387, v388, v389, v390, v391, v392, v393, v394, v395, v396, v397[0], v397[1], v398, *(&v398 + 1), v399, v400, v401[0], v401[1], v402, *(&v402 + 1), v403, v404, v405[0], v405[1], v406, *(&v406 + 1), v407, v408);
        OUTLINED_FUNCTION_4_115();
        OUTLINED_FUNCTION_14();
        v192 = OUTLINED_FUNCTION_7_25(v184, v185, v186, v187, v188, v189, v190, v191, v365, v366, v367, v368, __dst[0]);
        v193(v192, 54);
      }

      v194 = (v118)(v170);
      if (v194)
      {
        OUTLINED_FUNCTION_30();
        (*(v195 + 1984))(1);
      }

      v196 = (v118)(v194);
      if (v196)
      {
        OUTLINED_FUNCTION_30();
        v197 = OUTLINED_FUNCTION_8_5();
        v198(v197);
LABEL_43:
      }

LABEL_44:
      v356 = (v118)(v196);
      if (v356)
      {
        v357 = v356;
        v358 = *sub_1E3E5F58C();
        v359 = *(*v357 + 680);
        v360 = v358;
        v359(v358);
LABEL_46:
      }

      break;
    case 7u:
      v2.n128_u64[0] = 8.0;
      v418[0] = j__OUTLINED_FUNCTION_7_78(v2);
      v418[1] = v199;
      v418[2] = v200;
      v418[3] = v201;
      LOBYTE(v419) = 0;
      *v415 = 0u;
      v416 = 0u;
      LOBYTE(v417) = 1;
      *v412 = 0u;
      *v413 = 0u;
      LOBYTE(v414) = 1;
      v204 = TVAppFeature.isEnabled.getter(10, v202, v203);
      v205.n128_u64[0] = 16.0;
      if (v204)
      {
        v205.n128_f64[0] = 18.0;
      }

      *__dst = j__OUTLINED_FUNCTION_7_78(v205);
      *&__dst[8] = v206;
      v370[0] = v207;
      v370[1] = v208;
      LOBYTE(v371) = 0;
      type metadata accessor for UIEdgeInsets();
      v210 = v209;
      sub_1E3C3DE00();
      OUTLINED_FUNCTION_6_93(v211, v212, v213, v214, v215, v216, v217, v218, *&v365, *&v366, *&v367, *&v368, *__dst, *&__dst[8], *v370, *&v370[1], *&v371, *&v372, *&v373, *&v374, *&v375, *&v376, *&v377, *&v378, *&v379, *&v380, *&v381, *&v382, *&v383, *&v384, *&v385, *&v386, *&v387, *&v388, *&v389, *&v390, *&v391, *&v392, *&v393, *&v394, *&v395, *&v396, *v397, *&v397[1], *&v398, *(&v398 + 1), *&v399, *&v400, *v401, *&v401[1], *&v402, *(&v402 + 1), *&v403, *&v404, *v405, *&v405[1], *&v406, *(&v406 + 1), *&v407, *&v408, *v409);
      sub_1E3C3DE00();
      *v397 = *v401;
      v398 = v402;
      LOBYTE(v399) = v403;
      sub_1E3C2FCB8(v418, v415, v412, __dst, v405, v397, v210, v420);
      OUTLINED_FUNCTION_11_80(v219, v220, v221, v222, v223, v224, v225, v226);
      OUTLINED_FUNCTION_18();
      OUTLINED_FUNCTION_9_2();
      v235 = OUTLINED_FUNCTION_7_25(v227, v228, v229, v230, v231, v232, v233, v234, v365, v366, v367, v368, __dst[0]);
      v236(v235, 1);
      v237 = type metadata accessor for ProgressLayout();
      v238 = sub_1E3FB3220(v237);
      swift_beginAccess();
      v1[15] = v238;

      v239 = [objc_opt_self() configurationWithPointSize:4 weight:20.0];
      OUTLINED_FUNCTION_9_2();
      v241 = *(v240 + 1856);
      v242 = *(*v241() + 1952);
      v243 = v239;
      v242(v239);

      v245 = (v241)(v244);
      v246 = [objc_opt_self() whiteColor];
      (*(*v245 + 680))(v246);

      v248 = (v241)(v247);
      memset(__dst, 0, sizeof(__dst));
      __asm { FMOV            V0.2D, #8.0 }

      *v370 = _Q0;
      LOBYTE(v371) = 0;
      (*(*v248 + 160))(__dst);

      break;
    default:
      break;
  }

  v361 = sub_1E3ACC288();
  v420[0] = (*(*v1 + 1784))(v361);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B848, &unk_1E42A1750);
  sub_1E4148DE0(sub_1E3ACCD08);

  OUTLINED_FUNCTION_9_2();
  v363 = (*(v362 + 1856))();
  sub_1E3C37CBC(v363, 36);

  return result;
}

void sub_1E3ACBF70(char a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8)
{
  v10 = 0x746C7561666564;
  OUTLINED_FUNCTION_13_18(v8 + 98, a2, a3, a4, a5, a6, a7, a8, v17);
  v11 = *(v8 + 98);
  *(v8 + 98) = a1;
  OUTLINED_FUNCTION_5_0(v8 + 98, v18);
  v12 = 0xE700000000000000;
  v13 = 0x746C7561666564;
  switch(*(v8 + 98))
  {
    case 1:
      v12 = 0xE600000000000000;
      v13 = 0x7478654E7075;
      break;
    case 2:
      v12 = 0xE600000000000000;
      v13 = 0x7374726F7073;
      break;
    case 3:
      v13 = 0x70537478654E7075;
      v12 = 0xEC0000007374726FLL;
      break;
    case 4:
      v12 = 0xE800000000000000;
      v13 = 0x6B6369726276616ELL;
      break;
    case 5:
      v13 = 0x6169726F74696465;
      v12 = 0xE90000000000006CLL;
      break;
    case 6:
      v13 = 0x6867696C746F7073;
      v12 = 0xE900000000000074;
      break;
    case 7:
      v12 = 0xE600000000000000;
      v13 = 0x70756B636F6CLL;
      break;
    case 8:
      v13 = 0x6669636570736E75;
      v12 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  v14 = 0xE700000000000000;
  switch(v11)
  {
    case 1:
      v14 = 0xE600000000000000;
      v10 = 0x7478654E7075;
      break;
    case 2:
      v14 = 0xE600000000000000;
      v10 = 0x7374726F7073;
      break;
    case 3:
      v10 = 0x70537478654E7075;
      v14 = 0xEC0000007374726FLL;
      break;
    case 4:
      v14 = 0xE800000000000000;
      v10 = 0x6B6369726276616ELL;
      break;
    case 5:
      v10 = 0x6169726F74696465;
      v14 = 0xE90000000000006CLL;
      break;
    case 6:
      v10 = 0x6867696C746F7073;
      v14 = 0xE900000000000074;
      break;
    case 7:
      v14 = 0xE600000000000000;
      v10 = 0x70756B636F6CLL;
      break;
    case 8:
      v10 = 0x6669636570736E75;
      v14 = 0xEB00000000646569;
      break;
    default:
      break;
  }

  if (v13 == v10 && v12 == v14)
  {
  }

  else
  {
    v16 = OUTLINED_FUNCTION_44_10(v13);

    if ((v16 & 1) == 0)
    {
      sub_1E3ACB0B0();
    }
  }
}

void (*sub_1E3ACC200(void *a1))(uint64_t a1, uint64_t a2)
{
  v3 = __swift_coroFrameAllocStub(0x28uLL);
  *a1 = v3;
  v3[3] = v1;
  OUTLINED_FUNCTION_5_0(v1 + 98, v3);
  *(v3 + 32) = *(v1 + 98);
  return sub_1E3ACC270;
}

uint64_t sub_1E3ACC288()
{
  if ([objc_opt_self() isTV])
  {
    switch((*(*v0 + 1760))())
    {
      case 2u:
        OUTLINED_FUNCTION_17_67();
        goto LABEL_5;
      case 3u:

        goto LABEL_8;
      default:
LABEL_5:
        v5 = sub_1E42079A4();

        if (v5)
        {
LABEL_8:
          v6.n128_u64[0] = 0x4041000000000000;
        }

        else
        {
          v6.n128_u64[0] = 16.0;
        }

        v11 = j__OUTLINED_FUNCTION_7_78(v6);
        v12 = v7;
        v13 = v8;
        v14 = v9;
        break;
    }
  }

  else
  {
    v1.n128_u64[0] = 8.0;
    v11 = j__OUTLINED_FUNCTION_7_78(v1);
    v12 = v2;
    v13 = v3;
    v14 = v4;
  }

  v15 = 0;
  return (*(*v0 + 184))(&v11);
}