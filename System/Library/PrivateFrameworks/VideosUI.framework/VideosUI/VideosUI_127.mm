_OWORD *OUTLINED_FUNCTION_32_93@<X0>(uint64_t a1@<X8>, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, __int128 a14)
{

  return sub_1E329504C(&a14, (a1 + 32 * v14));
}

BOOL sub_1E40B0110()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

uint64_t sub_1E40B015C()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E40B01C0(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E40B0208@<W0>(_BYTE *a1@<X8>)
{
  result = sub_1E40B0110();
  *a1 = result;
  return result;
}

uint64_t sub_1E40B0254()
{
  if ([v0 shadowColor])
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v3 = 0u;
    v4 = 0u;
  }

  v5[0] = v3;
  v5[1] = v4;
  if (*(&v4 + 1))
  {
    sub_1E3755B54();
    if (swift_dynamicCast())
    {
      return v2;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E329505C(v5);
    return 0;
  }
}

void sub_1E40B0308(double *a1)
{
  v2 = sub_1E41FDEC4();
  v3 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2);
  v5 = &v60 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  sub_1E328438C(a1, &v65);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_6_229(v7, v8, v9, v7) & 1) == 0)
  {
    goto LABEL_6;
  }

  if (!*(*&v69 + 16))
  {

LABEL_6:
    v13 = sub_1E328438C(a1, &v65);
    if ((OUTLINED_FUNCTION_6_229(v13, v14, v15, MEMORY[0x1E69E6158]) & 1) == 0)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      return;
    }

    v17 = v69;
    v16 = v70;
    v18 = HIBYTE(v70) & 0xF;
    if ((v70 & 0x2000000000000000) == 0)
    {
      v18 = *&v69 & 0xFFFFFFFFFFFFLL;
    }

    if (!v18)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

      goto LABEL_14;
    }

    v63 = v6;
    v65 = v69;
    v66 = v70;
    v19 = sub_1E41FDE64();
    sub_1E32822E0(v19, v20, v21);
    v22 = sub_1E4207184();
    v23 = *(v3 + 8);
    v23(v5, v2);
    v24 = *(v22 + 16);

    if (v24 < 2)
    {
      __swift_destroy_boxed_opaque_existential_1(a1);

LABEL_14:

      return;
    }

    v65 = v17;
    v66 = v16;
    sub_1E41FDE64();
    v36 = MEMORY[0x1E69E6158];
    v37 = sub_1E4207184();
    v23(v5, v2);

    *&v38 = COERCE_DOUBLE(sub_1E38EA748(v37));
    if (v39)
    {
      v40 = v38;
      v41 = v39;
      sub_1E3755B54();
      v67 = v36;
      v65 = *&v40;
      v66 = v41;
      sub_1E39F8BAC(&v65);
      v61 = v42;
      __swift_destroy_boxed_opaque_existential_1(&v65);
      *&v38 = COERCE_DOUBLE();
    }

    else
    {
      v61 = 0;
    }

    v43 = 0;
    v44 = *(v37 + 16);
    v45 = v37 + 40;
    v46 = 0.0;
    v47 = 0.0;
    v48 = 0.0;
    v62 = a1;
    v60 = v37 + 40;
LABEL_27:
    v49 = v48;
    v50 = (v45 + 16 * v43);
    for (i = v43; ; ++i)
    {
      if (v44 == i)
      {

        v58 = v63;
        [v63 setShadowOffset_];
        [v58 setShadowBlurRadius_];
        v59 = v61;
        [v58 setShadowColor_];

        v35 = v62;
        goto LABEL_57;
      }

      if (i >= *(v37 + 16))
      {
        __break(1u);
        return;
      }

      v53 = *(v50 - 1);
      v52 = *v50;
      v69 = 0.0;
      MEMORY[0x1EEE9AC00](v38);
      *(&v60 - 2) = &v69;
      if ((*&v52 & 0x1000000000000000) == 0)
      {
        if ((*&v52 & 0x2000000000000000) != 0)
        {
          v65 = v53;
          v66 = *&v52 & 0xFFFFFFFFFFFFFFLL;

          if (LOBYTE(v53) < 0x21u && ((0x100003E01uLL >> SLOBYTE(v53)) & 1) != 0)
          {
            goto LABEL_40;
          }

LABEL_38:
          v55 = _swift_stdlib_strtod_clocale();
          if (!v55)
          {
            goto LABEL_40;
          }

          v56 = *v55 == 0;
LABEL_41:
          LOBYTE(v64) = v56;
          goto LABEL_42;
        }

        if ((*&v53 & 0x1000000000000000) != 0)
        {
          v54 = *((*&v52 & 0xFFFFFFFFFFFFFFFLL) + 0x20);

          if (v54 >= 0x21 || ((0x100003E01uLL >> v54) & 1) == 0)
          {
            goto LABEL_38;
          }

LABEL_40:
          v56 = 0;
          goto LABEL_41;
        }
      }

      sub_1E4207484();
LABEL_42:
      *&v38 = COERCE_DOUBLE();
      if (v64)
      {
        v48 = v69;
        v43 = 1;
        v45 = v60;
        if (i)
        {
          v43 = i + 1;
          if (i == 2)
          {
            v57 = v69;
          }

          else
          {
            v57 = v46;
          }

          if (i == 2)
          {
            v43 = 3;
          }

          if (i == 1)
          {
            v47 = v69;
          }

          else
          {
            v46 = v57;
          }

          v48 = v49;
          if (i == 1)
          {
            v43 = 2;
          }
        }

        goto LABEL_27;
      }

      v50 += 2;
    }
  }

  v67 = &type metadata for ViewLayoutKeys;
  v68 = &off_1F5D82368;
  LOBYTE(v65) = 2;
  v10 = OUTLINED_FUNCTION_0_338();
  if (v71)
  {
    OUTLINED_FUNCTION_3_271(v10, v11, v12, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_2_258();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
    sub_1E329505C(&v69);
  }

  OUTLINED_FUNCTION_1_299();
  MEMORY[0x1EEE9AC00](v25);
  *(&v60 - 2) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CA40, &qword_1E429EC80);
  sub_1E4148DE0(sub_1E40B0A20);
  v67 = &type metadata for ViewLayoutKeys;
  v68 = &off_1F5D82368;
  LOBYTE(v65) = 6;
  v26 = OUTLINED_FUNCTION_0_338();
  if (v71)
  {
    OUTLINED_FUNCTION_3_271(v26, v27, v28, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_2_258();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
    sub_1E329505C(&v69);
  }

  OUTLINED_FUNCTION_1_299();
  MEMORY[0x1EEE9AC00](v29);
  OUTLINED_FUNCTION_5_244();
  sub_1E4148DE0(sub_1E40B0A7C);
  v67 = &_s16ShadowLayoutKeysON;
  v68 = &off_1F5D96520;
  v30 = OUTLINED_FUNCTION_0_338();
  if (v71)
  {
    OUTLINED_FUNCTION_3_271(v30, v31, v32, MEMORY[0x1E69E7DE0]);
    OUTLINED_FUNCTION_2_258();
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1(&v65);
    sub_1E329505C(&v69);
  }

  OUTLINED_FUNCTION_1_299();
  MEMORY[0x1EEE9AC00](v33);
  OUTLINED_FUNCTION_5_244();
  sub_1E4148DE0(sub_1E40B0AD8);
  v67 = &type metadata for ViewLayoutKeys;
  v68 = &off_1F5D82368;
  LOBYTE(v65) = 21;
  OUTLINED_FUNCTION_0_338();

  MEMORY[0x1EEE9AC00](v34);
  *(&v60 - 2) = v6;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF296E0, &unk_1E4298030);
  sub_1E4148DE0(sub_1E40B0AF0);
  __swift_destroy_boxed_opaque_existential_1(a1);
  sub_1E329505C(&v69);
  v35 = &v65;
LABEL_57:
  __swift_destroy_boxed_opaque_existential_1(v35);
}

id sub_1E40B0A20(double *a1)
{
  v2 = *(v1 + 16);
  v3 = *a1;
  [v2 shadowOffset];

  return [v2 setShadowOffset_];
}

id sub_1E40B0A7C()
{
  v1 = *(v0 + 16);
  [v1 shadowOffset];

  return [v1 setShadowOffset_];
}

void sub_1E40B0AF0(uint64_t a1)
{
  v3 = *(v1 + 16);
  sub_1E3755B54();
  sub_1E39F8BAC(a1);
  v5 = v4;

  [v3 setShadowColor_];
}

unint64_t sub_1E40B0B70(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F870;
  if (!qword_1ECF3F870)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F870);
  }

  return result;
}

_BYTE *_s16ShadowLayoutKeysOwst(_BYTE *result, int a2, int a3)
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

  if (a3)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2)
  {
    switch(v5)
    {
      case 1:
        *result = a2;
        break;
      case 2:
        *result = a2;
        break;
      case 3:
        goto LABEL_19;
      case 4:
        *result = a2;
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
        *result = 0;
        break;
      case 2:
        *result = 0;
        break;
      case 3:
LABEL_19:
        __break(1u);
        break;
      case 4:
        *result = 0;
        break;
      default:
        return result;
    }
  }

  return result;
}

uint64_t sub_1E40B0C70()
{
  type metadata accessor for ViewLayout();
  v0 = sub_1E3C2F968();
  v12[0] = 0x4066800000000000;
  LOBYTE(v12[1]) = 0;
  *&v34[0] = 0x4066800000000000;
  BYTE8(v34[0]) = 0;
  *&v32[0] = 0x406F400000000000;
  BYTE8(v32[0]) = 0;
  *&v30[0] = 0x406F400000000000;
  BYTE8(v30[0]) = 0;
  *&v28[0] = 0x4066800000000000;
  BYTE8(v28[0]) = 0;
  v1 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  *&v23[0] = v25;
  BYTE8(v23[0]) = BYTE8(v25);
  sub_1E3C2FCB8(v12, v23, v34, v32, v30, v28, v1, __src);
  memcpy(v12, __src, 0x59uLL);
  v2 = OUTLINED_FUNCTION_18();
  v3 = *(*v0 + 1600);
  v3(v12, 6, v2 & 1, v1);
  sub_1E3952C88();
  v12[0] = v4;
  v12[1] = v5;
  v12[2] = v6;
  v12[3] = v7;
  LOBYTE(v12[4]) = 0;
  type metadata accessor for UIEdgeInsets();
  v9 = v8;
  sub_1E3C3DE00();
  v32[0] = v34[0];
  v32[1] = v34[1];
  v33 = v35;
  sub_1E3C2FC98();
  v28[0] = v30[0];
  v28[1] = v30[1];
  v29 = v31;
  sub_1E3C3DE00();
  v23[0] = v25;
  v23[1] = v26;
  v24 = v27;
  sub_1E3C3DE00();
  v18[0] = v20;
  v18[1] = v21;
  v19 = v22;
  sub_1E3C3DE00();
  v13[0] = v15;
  v13[1] = v16;
  v14 = v17;
  sub_1E3C2FCB8(v32, v28, v12, v23, v18, v13, v9, __src);
  memcpy(v12, __src, 0xE9uLL);
  v10 = OUTLINED_FUNCTION_18();
  v3(v12, 1, v10 & 1, v9);
  return v0;
}

uint64_t sub_1E40B0EA4()
{
  v0 = swift_allocObject();
  *(v0 + 104) = sub_1E40B0C70();
  return sub_1E3C2F9A0();
}

unint64_t sub_1E40B0F04()
{
  sub_1E4207784();
  OUTLINED_FUNCTION_15_19();
  if (v0 >= 3)
  {
    return 3;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40B0F48(char a1)
{
  if (!a1)
  {
    return 0x70756B636F6CLL;
  }

  if (a1 == 1)
  {
    return 1953720684;
  }

  return 0x6143797469746E65;
}

uint64_t sub_1E40B0FC0(uint64_t a1, unsigned __int8 a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40B104C(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E40B10E4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40B0F04();
  *a1 = result;
  return result;
}

uint64_t sub_1E40B1114@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40B0F48(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40B1140()
{
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 1016))();
  if (!v2)
  {
    return 0;
  }

  v3 = v2;
  result = sub_1E32AE9B0(v2);
  if (!result)
  {

    return 0;
  }

  if ((v3 & 0xC000000000000001) != 0)
  {
    v0 = MEMORY[0x1E6911E60](0, v3);
    goto LABEL_6;
  }

  if (*((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    OUTLINED_FUNCTION_77_24();

LABEL_6:

    return v0;
  }

  __break(1u);
  return result;
}

double sub_1E40B11F0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 264, a2);

  return result;
}

uint64_t sub_1E40B121C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 264, a2);
  *(v2 + 264) = a1;
}

uint64_t sub_1E40B12B8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 296, a2);

  return OUTLINED_FUNCTION_32_0();
}

uint64_t sub_1E40B12F4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 296, a2);
  *(v2 + 296) = a1;
  *(v2 + 304) = a2;
}

double sub_1E40B1340(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 312, a2);

  return result;
}

uint64_t sub_1E40B136C(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 312, a2);
  *(v2 + 312) = a1;
}

double sub_1E40B13AC(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 320, a2);

  return result;
}

uint64_t sub_1E40B13D8(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 320, a2);
  *(v2 + 320) = a1;
}

uint64_t sub_1E40B1448(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_3_0(v2 + 328, &v10);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v2 + 336);
  *(v2 + 336) = a2;
  swift_unknownObjectWeakAssign();
  if (Strong)
  {
    OUTLINED_FUNCTION_5_0(v2 + 328, v11);
    v6 = swift_unknownObjectWeakLoadStrong();
    if (v6)
    {
      v7 = v6;
      v8 = swift_unknownObjectRetain();
      sub_1E40B501C(v8, v5, v7);
      swift_unknownObjectRelease();
      swift_unknownObjectRelease();
    }
  }

  swift_unknownObjectRelease();
  return swift_unknownObjectRelease();
}

void (*sub_1E40B150C(void *a1))(uint64_t **a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  OUTLINED_FUNCTION_5_0(v1 + 328, v3);
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 336);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E40B1584;
}

void sub_1E40B1584(uint64_t **a1, char a2)
{
  v2 = *a1;
  v3 = (*a1)[3];
  v4 = v2[4];
  if (a2)
  {
    v5 = swift_unknownObjectRetain();
    sub_1E40B1448(v5, v4);
    swift_unknownObjectRelease();
  }

  else
  {
    sub_1E40B1448(v3, v2[4]);
  }

  free(v2);
}

void (*sub_1E40B15F4(void *a1))(uint64_t a1, char a2)
{
  v3 = __swift_coroFrameAllocStub(0x30uLL);
  *a1 = v3;
  v3[5] = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v5 = *(v1 + 352);
  v3[3] = Strong;
  v3[4] = v5;
  return sub_1E3CC88E0;
}

uint64_t *sub_1E40B1674()
{
  v1 = v0;
  OUTLINED_FUNCTION_8();
  v27 = (*(v2 + 368))();
  v28 = v3;
  MEMORY[0x1E69109E0](23328, 0xE200000000000000);
  sub_1E414A784(v27, v28, v1[2], v1[3]);

  v5 = (*(*v0 + 264))(v4);
  if (v6)
  {
    sub_1E37614CC(v5, v6, v5);
    v7 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v7, v8, v9);

    v10 = v28;
  }

  else
  {
    v10 = 0;
  }

  v11 = OUTLINED_FUNCTION_53();
  v14 = sub_1E414A784(v11, v12, v13, v10);
  v16 = v15;

  v18 = v1;
  v19 = (*(*v1 + 1112))(v17);
  v21 = v19;
  v22 = v20;
  if (v20)
  {
    sub_1E37614CC(v19, v20, v19);
    v23 = OUTLINED_FUNCTION_53_1();
    sub_1E38D2484(v23, v24, v25);

    v21 = v27;
    v22 = v28;
  }

  sub_1E414A784(v14, v16, v21, v22);
  OUTLINED_FUNCTION_145();

  MEMORY[0x1E69109E0](93, 0xE100000000000000);

  return v18;
}

uint64_t sub_1E40B18D4@<X0>(void *a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, void *a4@<X8>)
{
  result = MEMORY[0x1E69109E0](*a1, a1[1]);
  *a4 = a2;
  a4[1] = a3;
  return result;
}

uint64_t sub_1E40B198C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_58();
  OUTLINED_FUNCTION_81_28();
  swift_allocObject();
  v4 = OUTLINED_FUNCTION_74();
  return sub_1E40B19D4(v4, v5, a3);
}

uint64_t sub_1E40B19D4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  OUTLINED_FUNCTION_31_58();
  *(v3 + 248) = 0u;
  *(v3 + 336) = 0;
  *(v3 + 264) = 0u;
  *(v3 + 280) = 0u;
  *(v3 + 296) = 0u;
  *(v3 + 312) = 0u;
  swift_unknownObjectWeakInit();
  *(v3 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v3 + 385) = 0u;
  *(v3 + 360) = 0u;
  *(v3 + 376) = 0u;
  *(v3 + 401) = 1;
  sub_1E3277E60(0xD000000000000018, 0x80000001E42909B0, v4, &v16);
  if (v17)
  {
    v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    v7 = OUTLINED_FUNCTION_53_37(v6);
    v8 = v15;
    if (!v7)
    {
      v8 = 0;
    }
  }

  else
  {
    sub_1E325F6F0(&v16, &unk_1ECF296E0, &unk_1E4298030);
    v8 = 0;
  }

  *(v3 + 280) = v8;

  v9 = OUTLINED_FUNCTION_74();
  v11 = sub_1E39BEDCC(v9, v10, a3);
  if (v11)
  {
    OUTLINED_FUNCTION_8();
    v13 = *(v12 + 1368);

    v13(v4);
  }

  return v11;
}

uint64_t sub_1E40B1B68()
{
  OUTLINED_FUNCTION_48_1();
  OUTLINED_FUNCTION_81_28();
  swift_allocObject();
  OUTLINED_FUNCTION_13_11();
  return sub_1E40B1BB0();
}

uint64_t sub_1E40B1BB0()
{
  OUTLINED_FUNCTION_48_1();
  *(v0 + 336) = 0;
  *(v0 + 248) = 0u;
  *(v0 + 264) = 0u;
  *(v0 + 280) = 0u;
  *(v0 + 296) = 0u;
  *(v0 + 312) = 0u;
  swift_unknownObjectWeakInit();
  *(v0 + 352) = 0;
  swift_unknownObjectWeakInit();
  *(v0 + 385) = 0u;
  *(v0 + 360) = 0u;
  *(v0 + 376) = 0u;
  *(v0 + 401) = 1;
  OUTLINED_FUNCTION_13_11();

  return sub_1E39C0300();
}

Swift::Void __swiftcall CollectionViewModel.updateContextDataRef(_:)(Swift::OpaquePointer_optional a1)
{
  rawValue = a1.value._rawValue;
  OUTLINED_FUNCTION_14_0(v1 + 320, *&a1.is_nil);
  *(v1 + 320) = rawValue;
}

uint64_t sub_1E40B1C90(uint64_t a1)
{
  OUTLINED_FUNCTION_36();
  v3 = *(v1 + 24);
  v5 = *(v4 + 24);
  v6 = (v3 | v5) == 0;
  if (v3 && v5)
  {
    if (*(v1 + 16) == *(a1 + 16) && v3 == v5)
    {
      v6 = 1;
    }

    else
    {
      v6 = sub_1E42079A4();
    }
  }

  OUTLINED_FUNCTION_27_0();
  v8 = swift_dynamicCastClass();
  v9 = 0;
  if (v8 && (v6 & 1) != 0)
  {
    v10 = v8;
    OUTLINED_FUNCTION_8();
    v12 = *(v11 + 1040);

    v14 = v12(v13);
    v15 = (*(*v10 + 1040))();
    v16 = v15;
    if (v14)
    {
      if (v15)
      {
        v9 = sub_1E3A7B2F4(v14, v15);
      }

      else
      {

        v9 = 0;
      }
    }

    else
    {

      if (!v16)
      {
        v9 = 1;
        return v9 & 1;
      }

      v9 = 0;
    }
  }

  return v9 & 1;
}

uint64_t sub_1E40B1E18()
{
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (v1)
  {
    v2 = v1;
    result = sub_1E32AE9B0(v1);
    v4 = result;
    v5 = 0;
    while (1)
    {
      v6 = v4 != v5;
      if (v4 == v5)
      {
LABEL_11:

        return v6;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        v11 = OUTLINED_FUNCTION_11_6();
        result = MEMORY[0x1E6911E60](v11);
        v7 = result;
      }

      else
      {
        if (v5 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_15;
        }

        v7 = *(v2 + 8 * v5 + 32);
      }

      if (__OFADD__(v5, 1))
      {
        break;
      }

      (*(*v7 + 872))(result);
      v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v9);
      v10 = sub_1E4149048(v8);

      ++v5;
      if (v10)
      {
        goto LABEL_11;
      }
    }

    __break(1u);
LABEL_15:
    __break(1u);
  }

  else
  {
    return 1;
  }

  return result;
}

uint64_t sub_1E40B1FA0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (TVAppFeature.isEnabled.getter(10, a2, a3))
  {
    OUTLINED_FUNCTION_111();
    if ((*(v4 + 392))())
    {
      type metadata accessor for CollectionViewLayout();
      v5 = swift_dynamicCastClass();
      if (v5)
      {
        (*(*v5 + 1696))(v7);

        result = LOWORD(v7[0]);
        if (LOWORD(v7[0]) != 263)
        {
          return result;
        }
      }

      else
      {
      }
    }

    return *(v3 + 98);
  }

  return sub_1E40B3588();
}

void sub_1E40B20A4()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E32AE9B0(v2);
  v5 = MEMORY[0x1E69E7CC0];
  if (!v4)
  {
LABEL_10:
    v14 = sub_1E3AAF2AC(v5);
    v15 = MEMORY[0x1EEE9AC00](v14);
    (*(*v1 + 1360))(sub_1E40BA468, v15);

    OUTLINED_FUNCTION_25_2();
    return;
  }

  v6 = v4;
  v16 = MEMORY[0x1E69E7CC0];
  sub_1E3E31650(0, v4 & ~(v4 >> 63), 0);
  if ((v6 & 0x8000000000000000) == 0)
  {
    v7 = 0;
    v5 = v16;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x1E6911E60](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v10 = *(v8 + 16);
      v9 = *(v8 + 24);

      v12 = *(v16 + 16);
      v11 = *(v16 + 24);
      if (v12 >= v11 >> 1)
      {
        sub_1E3E31650((v11 > 1), v12 + 1, 1);
      }

      ++v7;
      *(v16 + 16) = v12 + 1;
      v13 = v16 + 16 * v12;
      *(v13 + 32) = v10;
      *(v13 + 40) = v9;
    }

    while (v6 != v7);
    goto LABEL_10;
  }

  __break(1u);
}

uint64_t sub_1E40B2234()
{
  OUTLINED_FUNCTION_8();
  (*(v1 + 1040))();
  sub_1E40B36B8();
  v3 = v2;

  if (v3)
  {
    OUTLINED_FUNCTION_14_0(v0 + 272, v5);
    *(v0 + 272) = v3;

    OUTLINED_FUNCTION_36();
    if ((*(v6 + 1208))())
    {
      swift_getObjectType();
      v7 = OUTLINED_FUNCTION_75_28();
      v8(v7);

      return swift_unknownObjectRelease();
    }

    else
    {
    }
  }

  return result;
}

void sub_1E40B2348()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v74 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E3DD55E0(24, v4, v0);
  OUTLINED_FUNCTION_3_0((v2 + 31), &v88);
  v2[31] = v11;

  v12 = sub_1E3DD55E0(25, v4, v2);
  OUTLINED_FUNCTION_3_0((v2 + 32), &v87);
  v2[32] = v12;

  *(&v94 + 1) = &type metadata for ViewModelKeys;
  v95 = &off_1F5D7BCA8;
  LOBYTE(v93) = 26;
  v13 = MEMORY[0x1E69E7CA0];
  sub_1E3F9F164(&v93, v4, MEMORY[0x1E69E7CA0] + 8);
  __swift_destroy_boxed_opaque_existential_1Tm(&v93);
  sub_1E379D7E4(v86, &v93, &unk_1ECF296E0, &unk_1E4298030);
  v73 = v10;
  if (!*(&v94 + 1))
  {
    goto LABEL_6;
  }

  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((OUTLINED_FUNCTION_86_6(v89, &v93, v13 + 8) & 1) == 0)
  {
    goto LABEL_7;
  }

  sub_1E379D7E4(v86, &v93, &unk_1ECF296E0, &unk_1E4298030);
  if (!*(&v94 + 1))
  {
LABEL_6:
    sub_1E325F6F0(&v93, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (OUTLINED_FUNCTION_86_6(v89, &v93, v13 + 8))
  {
    v12 = *&v89[0];
    v14 = type metadata accessor for ViewModel();
    v15 = sub_1E3DD5014(13, v12, v2, v14);

    OUTLINED_FUNCTION_3_0((v2 + 33), v85);
    v2[33] = v15;
    goto LABEL_8;
  }

LABEL_7:
  OUTLINED_FUNCTION_3_0((v2 + 33), v85);
  v2[33] = 0;
LABEL_8:

  if ((TVAppFeature.isEnabled.getter(10, v16, v17) & 1) == 0)
  {
    OUTLINED_FUNCTION_44_66();
    v21 = xmmword_1E42EA7A0;
LABEL_13:
    v20 = 0uLL;
    goto LABEL_15;
  }

  OUTLINED_FUNCTION_47_0();
  v12 = v2;
  if (!(*(v18 + 392))())
  {
    OUTLINED_FUNCTION_44_66();
    goto LABEL_15;
  }

  type metadata accessor for CollectionViewLayout();
  v19 = swift_dynamicCastClass();
  if (!v19)
  {

    OUTLINED_FUNCTION_44_66();
    v21 = xmmword_1E42EA7A0;
    goto LABEL_13;
  }

  (*(*v19 + 1696))(v89);
  v71 = v89[1];
  v75 = v89[0];
  v12 = v90;
  v10 = v91;
  v1 = v92;

  v20 = v71;
  v21 = v75;
LABEL_15:
  v76 = v21;
  v93 = v21;
  v94 = v20;
  v95 = v12;
  v96 = v10;
  v97 = v1;
  OUTLINED_FUNCTION_79_29();
  (*(v22 + 816))();
  if (v76 != 263)
  {
    OUTLINED_FUNCTION_79_29();
    if ((*(v23 + 392))())
    {
      type metadata accessor for CollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v24 + 1704))(&v93);
      }
    }
  }

  v25 = type metadata accessor for CollectionGroupViewModel();
  v26 = sub_1E3DD5014(27, v4, v2, v25);
  OUTLINED_FUNCTION_3_0((v2 + 34), &v84);
  v2[34] = v26;

  ViewModelKeys.rawValue.getter(33);
  OUTLINED_FUNCTION_40_74(v27, v28);

  if (v83)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (swift_dynamicCast())
    {
      v29 = v80[0];
      OUTLINED_FUNCTION_3_0((v2 + 36), &v77);
      v2[36] = v29;
    }
  }

  else
  {
    sub_1E325F6F0(v82, &unk_1ECF296E0, &unk_1E4298030);
  }

  ViewModelKeys.rawValue.getter(30);
  OUTLINED_FUNCTION_40_74(v30, v31);

  if (v83)
  {
    if (OUTLINED_FUNCTION_31_93(v32, v33, v34, MEMORY[0x1E69E6158]))
    {
      v35 = v80[0];
      v36 = v80[1];
      OUTLINED_FUNCTION_3_0((v2 + 37), &v78);
      v2[37] = v35;
      v2[38] = v36;
    }
  }

  else
  {
    sub_1E325F6F0(v82, &unk_1ECF296E0, &unk_1E4298030);
  }

  ViewModelKeys.rawValue.getter(31);
  OUTLINED_FUNCTION_40_74(v37, v38);

  if (v83)
  {
    v39 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_31_93(v39, v40, v41, v39))
    {
      v42 = v80[0];
      OUTLINED_FUNCTION_3_0((v2 + 39), &v79);
      v2[39] = v42;
    }
  }

  else
  {
    sub_1E325F6F0(v82, &unk_1ECF296E0, &unk_1E4298030);
  }

  ViewModelKeys.rawValue.getter(35);
  OUTLINED_FUNCTION_40_74(v43, v44);

  if (v83)
  {
    v45 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    if (OUTLINED_FUNCTION_31_93(v45, v46, v47, v45))
    {
      v48 = v80[0];
      OUTLINED_FUNCTION_3_0((v2 + 40), v80);
      v2[40] = v48;

      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v49(v73);

      v50 = sub_1E41FFC94();
      v51 = sub_1E4206814();

      if (os_log_type_enabled(v50, v51))
      {
        v52 = OUTLINED_FUNCTION_49_0();
        v82[0] = OUTLINED_FUNCTION_72_0();
        *v52 = 136446466;
        v72 = v51;
        v53 = sub_1E40B4E10();
        v55 = sub_1E3270FC8(v53, v54, v82);

        *(v52 + 4) = v55;
        *(v52 + 12) = 2080;
        sub_1E4205C74();

        v56 = OUTLINED_FUNCTION_63_0();
        v59 = sub_1E3270FC8(v56, v57, v58);

        *(v52 + 14) = v59;
        _os_log_impl(&dword_1E323F000, v50, v72, "%{public}s AppendContextData [%s]", v52, 0x16u);
        OUTLINED_FUNCTION_77_24();
        swift_arrayDestroy();
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_79();
      }

      else
      {
      }

      (*(v6 + 8))(v73, v74);
    }
  }

  else
  {
    sub_1E325F6F0(v82, &unk_1ECF296E0, &unk_1E4298030);
  }

  v81 = 6;
  OUTLINED_FUNCTION_79_29();
  (*(v60 + 776))(v82, &v81, &unk_1F5D5D888, &off_1F5D5C918);
  if (v83)
  {
    if (swift_dynamicCast() && (v81 & 1) != 0)
    {
      OUTLINED_FUNCTION_79_29();
      v62 = (*(v61 + 264))();
      if (v63)
      {
        v64 = v62;
        v65 = v63;
      }

      else
      {
        v65 = v2[3];
        if (v65)
        {
          v64 = v2[2];
        }

        else
        {
          v65 = 0xEA00000000006E6FLL;
          v64 = 0x697463656C6C6F63;
        }
      }

      type metadata accessor for UpdateEventMonitorController();
      OUTLINED_FUNCTION_4_0();
      v66 = swift_allocObject();
      swift_weakInit();

      sub_1E3B03DA0(v67, v64, v65, 0, sub_1E40BAC60, v66);
      v68 = v2[47];
      v2[47] = v69;
      v70 = v69;

      sub_1E3B050E8();
      sub_1E3B050F0();
    }
  }

  else
  {
    sub_1E325F6F0(v82, &unk_1ECF296E0, &unk_1E4298030);
  }

  sub_1E325F6F0(v86, &unk_1ECF296E0, &unk_1E4298030);
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B2C84(unsigned int a1, uint64_t a2, char a3)
{
  v6 = v3;
  v51 = 0;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 1016))();
  if (v8)
  {
    v9 = v8;
  }

  else
  {
    v9 = MEMORY[0x1E69E7CC0];
  }

  v10 = sub_1E32AE9B0(v9);
  if (!v10)
  {

    v4 = 0;
    goto LABEL_31;
  }

  v11 = v10;
  if (v10 < 1)
  {
    __break(1u);
    goto LABEL_60;
  }

  v38 = 0;
  v12 = 0;
  v41 = v9 & 0xC000000000000001;
  v40 = *(*v6 + 392);
  v39 = v9;
  do
  {
    if (v41)
    {
      v13 = MEMORY[0x1E6911E60](v12, v9);
    }

    else
    {
      v13 = *(v9 + 8 * v12 + 32);
    }

    v14 = sub_1E40B3480(a1, a2, a3);
    v16 = v15;
    v18 = v17;
    sub_1E4038DF8(v14, v15, v17, v13, v52);
    v51 = v53;
    if (v40())
    {
      type metadata accessor for CollectionViewLayout();
      if (swift_dynamicCastClass())
      {
        OUTLINED_FUNCTION_30();
        (*(v19 + 1704))(v52);
      }
    }

    OUTLINED_FUNCTION_66_3();
    v21 = (*(v20 + 392))();
    if (!v21)
    {

      v47 = 0;
      v45 = 0u;
      v46 = 0u;
      goto LABEL_22;
    }

    v48[0] = v21;
    type metadata accessor for ViewLayout();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF38E68, &qword_1E42D2CE8);
    if ((swift_dynamicCast() & 1) == 0)
    {
      v47 = 0;
      v45 = 0u;
      v46 = 0u;
LABEL_21:

LABEL_22:
      sub_1E325F6F0(&v45, &qword_1ECF38E60, &qword_1E42D2CE0);
      v9 = v39;
      goto LABEL_23;
    }

    if (!*(&v46 + 1))
    {
      goto LABEL_21;
    }

    sub_1E3251BE8(&v45, v48);
    if (v38)
    {
      v38 = 1;
    }

    else
    {
      v22 = v49;
      v23 = v50;
      __swift_project_boxed_opaque_existential_1(v48, v49);
      v38 = (*(v23 + 8))(v14, v16, v18, v22, v23);
    }

    v9 = v39;

    __swift_destroy_boxed_opaque_existential_1Tm(v48);
LABEL_23:
    ++v12;
  }

  while (v11 != v12);

  if (v38)
  {
    v4 = 256;
  }

  else
  {
    v4 = 0;
  }

LABEL_31:
  OUTLINED_FUNCTION_111();
  v24 += 130;
  v5 = *v24;
  v25 = (*v24)();
  if (!v25)
  {
    goto LABEL_38;
  }

  v9 = v25;
  result = sub_1E32AE9B0(v25);
  if (!result)
  {
    v29 = 0;
    goto LABEL_40;
  }

  if ((v9 & 0xC000000000000001) != 0)
  {
LABEL_60:
    MEMORY[0x1E6911E60](0, v9);
LABEL_36:

    OUTLINED_FUNCTION_47_0();
    v28 = (*(v27 + 872))();

    if (v28)
    {
      v29 = sub_1E32AE9B0(v28);
LABEL_40:

LABEL_41:
      v30 = (v5)(v25);
      if (v30)
      {
        v31 = v30;
        result = sub_1E32AE9B0(v30);
        if (result)
        {
          if ((v31 & 0xC000000000000001) != 0)
          {
            MEMORY[0x1E6911E60](0, v31);
          }

          else
          {
            if (!*((v31 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_64;
            }
          }

          OUTLINED_FUNCTION_12_6();
          (*(v32 + 888))();
        }

        else
        {
        }
      }

      v33 = (v5)(v30);
      if (v33)
      {
        v34 = v33;
        result = sub_1E32AE9B0(v33);
        if (!result)
        {
          v37 = 0;
          goto LABEL_57;
        }

        if ((v34 & 0xC000000000000001) != 0)
        {
          MEMORY[0x1E6911E60](0, v34);
        }

        else
        {
          if (!*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_65;
          }

          OUTLINED_FUNCTION_77_24();
        }

        OUTLINED_FUNCTION_8();
        v36 = (*(v35 + 872))();

        if (v36)
        {
          v37 = sub_1E32AE9B0(v36);
LABEL_57:

          return v4 | (v37 != v29);
        }
      }

      v37 = 0;
      return v4 | (v37 != v29);
    }

LABEL_38:
    v29 = 0;
    goto LABEL_41;
  }

  if (*((v9 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {

    goto LABEL_36;
  }

  __break(1u);
LABEL_64:
  __break(1u);
LABEL_65:
  __break(1u);
  return result;
}

uint64_t sub_1E40B3228()
{
  OUTLINED_FUNCTION_31_58();
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (!v1)
  {
    v1 = MEMORY[0x1E69E7CC0];
  }

  v12 = v1;
  result = sub_1E32AE9B0(v1);
  v13 = result;
  if (!result)
  {
LABEL_27:
  }

  v3 = 0;
  while (1)
  {
    if ((v12 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](v3, v12);
    }

    else
    {
      if (v3 >= *((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_32;
      }
    }

    if (__OFADD__(v3++, 1))
    {
      break;
    }

    OUTLINED_FUNCTION_8();
    result = (*(v5 + 872))();
    if (result)
    {
      v6 = result;
    }

    else
    {
      v6 = MEMORY[0x1E69E7CC0];
    }

    if (v6 >> 62)
    {
      result = sub_1E4207384();
      v7 = result;
      if (!result)
      {
        goto LABEL_23;
      }
    }

    else
    {
      v7 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v7)
      {
        goto LABEL_23;
      }
    }

    if (v7 < 1)
    {
      goto LABEL_31;
    }

    for (i = 0; i != v7; ++i)
    {
      if ((v6 & 0xC000000000000001) != 0)
      {
        v9 = MEMORY[0x1E6911E60](i, v6);
      }

      else
      {
        v9 = *(v6 + 8 * i + 32);
      }

      if ((*(*v9 + 392))())
      {
        OUTLINED_FUNCTION_30();
        v10 = OUTLINED_FUNCTION_74();
        v11(v10);
      }
    }

LABEL_23:

    if (v3 == v13)
    {
      goto LABEL_27;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

uint64_t sub_1E40B3480(uint64_t a1, uint64_t a2, char a3)
{
  OUTLINED_FUNCTION_31_58();
  if (v8 != 5)
  {
    v15[0] = a3;
    v15[31] = 0;
    sub_1E3890B18(v6, v7, v8);
    v9 = sub_1E4205E84();
    if (v9)
    {
      v10 = (*(*v3 + 648))(v9);
      if (v10)
      {
        v11 = v10;
        OUTLINED_FUNCTION_5_0(v10 + 56, v15);
        v12 = *(v11 + 56);
      }

      else
      {
        v12 = 0;
      }

      sub_1E3C2AD40(v12);
    }
  }

  v13 = v4;
  return OUTLINED_FUNCTION_74();
}

uint64_t sub_1E40B3588()
{
  v1 = *(v0 + 98);
  OUTLINED_FUNCTION_8();
  if ((*(v2 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v4 = (*(v3 + 1560))();

    v5 = *(v0 + 280);
    if (v5)
    {

      v6 = sub_1E3A253B8(v4);
      sub_1E3277E60(v6, v7, v5, &v10);

      if (v11)
      {
        if (swift_dynamicCast())
        {
          v8 = sub_1E38506C8();
          if (v8 == 263)
          {
            return v1;
          }

          else
          {
            return v8;
          }
        }
      }

      else
      {
        sub_1E325F6F0(&v10, &unk_1ECF296E0, &unk_1E4298030);
      }
    }
  }

  return v1;
}

void sub_1E40B36B8()
{
  OUTLINED_FUNCTION_31_1();
  v92 = v0;
  v89 = v1;
  v90 = v2;
  v4 = v3;
  sub_1E41FE7A4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  if (v4)
  {
    v83 = v7;
    OUTLINED_FUNCTION_69_32(v6);

    v84 = v10;
    sub_1E41FE794();
    v91 = sub_1E32AE9B0(v4);
    v11 = 0;
    v88 = v4 & 0xC000000000000001;
    v87 = v4 & 0xFFFFFFFFFFFFFF8;
    v82 = v4;
    v94 = MEMORY[0x1E69E7CC0];
    while (1)
    {
      if (v11 == v91)
      {
        if ((sub_1E41FE774() & 1) == 0)
        {
          v79 = OUTLINED_FUNCTION_32_0();
          __swift_instantiateConcreteTypeFromMangledNameV2(v79, v80);
          sub_1E32752B0(&qword_1ECF3F898, &unk_1ECF3F4C0, &unk_1E42A0990, MEMORY[0x1E69E6318]);
          sub_1E32752B0(&qword_1ECF3F8A0, &unk_1ECF3F4C0, &unk_1E42A0990, MEMORY[0x1E69E6348]);
          sub_1E4206774();
        }

        v81 = sub_1E32AE9B0(v94);
        (*(v83 + 8))(v84);
        if (!v81)
        {
        }

        break;
      }

      if (v88)
      {
        MEMORY[0x1E6911E60](v11, v82);
      }

      else
      {
        if (v11 >= *(v87 + 16))
        {
          goto LABEL_68;
        }
      }

      if (__OFADD__(v11, 1))
      {
        __break(1u);
LABEL_68:
        __break(1u);
LABEL_69:
        __break(1u);
LABEL_70:
        __break(1u);
LABEL_71:
        __break(1u);
LABEL_72:
        __break(1u);
LABEL_73:
        __break(1u);
LABEL_74:
        __break(1u);
LABEL_75:
        __break(1u);
LABEL_76:
        __break(1u);
LABEL_77:
        __break(1u);
        return;
      }

      v93 = v11 + 1;
      OUTLINED_FUNCTION_111();
      v13 = (*(v12 + 1048))(v89, v90);
      ViewModelKeys.rawValue.getter(27);
      v15 = v14;
      v17 = v16;
      OUTLINED_FUNCTION_36();
      v19 = (*(v18 + 672))();
      sub_1E3277E60(v15, v17, v19, &v100);

      v95 = v13;
      if (!v101)
      {
        goto LABEL_25;
      }

      v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
      if ((OUTLINED_FUNCTION_45_17(v98, &v100, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
      {
        goto LABEL_26;
      }

      if (*(v98[0] + 16) <= v11)
      {
        goto LABEL_72;
      }

      v21 = *(v98[0] + 8 * v11 + 32);

      sub_1E384EE08(140);
      sub_1E3277E60(v22, v23, v21, &v100);

      if (!v101)
      {
        goto LABEL_25;
      }

      v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
      if ((OUTLINED_FUNCTION_86_6(v98, &v100, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
      {
        goto LABEL_26;
      }

      v96 = v24;
      v25 = v98[0];
      ViewModelKeys.rawValue.getter(13);
      sub_1E3277E60(v26, v27, v25, &v100);

      if (v101)
      {
        if (OUTLINED_FUNCTION_45_17(v98, &v100, MEMORY[0x1E69E7CA0] + 8))
        {
          v99 = v98[0];
          v28 = sub_1E32AE9B0(v13);
          v86 = v20;
          if (v28)
          {
            v29 = v28;
            *&v100 = MEMORY[0x1E69E7CC0];
            sub_1E3E31650(0, v28 & ~(v28 >> 63), 0);
            if (v29 < 0)
            {
              goto LABEL_77;
            }

            v30 = 0;
            v31 = v100;
            v32 = v13 & 0xC000000000000001;
            do
            {
              if (v32)
              {
                v33 = OUTLINED_FUNCTION_53();
                v34 = MEMORY[0x1E6911E60](v33);
              }

              else
              {
                v34 = *(v13 + 8 * v30 + 32);
              }

              v35 = *(v34 + 16);
              v36 = *(v34 + 24);

              *&v100 = v31;
              v38 = *(v31 + 16);
              v37 = *(v31 + 24);
              if (v38 >= v37 >> 1)
              {
                sub_1E3E31650((v37 > 1), v38 + 1, 1);
                v31 = v100;
              }

              ++v30;
              *(v31 + 16) = v38 + 1;
              v39 = v31 + 16 * v38;
              *(v39 + 32) = v35;
              *(v39 + 40) = v36;
              v13 = v95;
            }

            while (v29 != v30);
          }

          else
          {
            v31 = MEMORY[0x1E69E7CC0];
          }

          v64 = sub_1E3AAF2AC(v31);

          v65 = sub_1E40BA0C4(&v99, v64);
          v66 = v99[2];
          if (v66 < v65)
          {
            goto LABEL_76;
          }

          sub_1E4038CF8(v65, v66);

          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
          v67 = swift_allocObject();
          *(v67 + 16) = xmmword_1E4298AD0;
          ViewModelKeys.rawValue.getter(27);
          *(v67 + 32) = v68;
          *(v67 + 40) = v69;
          *&v100 = v11;
          *(v67 + 48) = sub_1E4207944();
          *(v67 + 56) = v70;
          ViewModelKeys.rawValue.getter(28);
          *(v67 + 64) = v71;
          *(v67 + 72) = v72;
          ViewModelKeys.rawValue.getter(13);
          *(v67 + 80) = v73;
          *(v67 + 88) = v74;
          *&v100 = v67;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2C420, &qword_1E429CDD0);
          OUTLINED_FUNCTION_1_34();
          sub_1E32752B0(&qword_1EE23B510, &qword_1ECF2C420, &qword_1E429CDD0, v75);
          v76 = sub_1E4205DF4();
          v78 = v77;

          v101 = v86;
          *&v100 = v99;
          (*(*v92 + 688))(v98);
          OUTLINED_FUNCTION_152();
          sub_1E3FA012C(&v100, v76, v78, v96);
          (v67)(v98, 0);
        }
      }

      else
      {
LABEL_25:
        sub_1E325F6F0(&v100, &unk_1ECF296E0, &unk_1E4298030);
      }

LABEL_26:
      OUTLINED_FUNCTION_111();
      *&v100 = (*(v40 + 872))();
      v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2CEA8, &qword_1E42A8990);
      OUTLINED_FUNCTION_0_32();
      sub_1E32752B0(&qword_1EE23B540, &unk_1ECF2C790, &qword_1E42996A0, v42);
      v43 = sub_1E4149048(v41);

      if (v43)
      {
        sub_1E41FE764();
      }

      if (v95 >> 62)
      {
        v97 = sub_1E4207384();
      }

      else
      {
        v97 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v44 = v94;
      v45 = v94 >> 62;
      if (v94 >> 62)
      {
        v46 = sub_1E4207384();
      }

      else
      {
        v46 = *((v94 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      v47 = v46 + v97;
      if (__OFADD__(v46, v97))
      {
        goto LABEL_69;
      }

      if (swift_isUniquelyReferenced_nonNull_bridgeObject())
      {
        if (!v45)
        {
          v48 = v94 & 0xFFFFFFFFFFFFFF8;
          if (v47 <= *((v94 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_40;
          }

          goto LABEL_39;
        }

LABEL_38:
        sub_1E4207384();
        goto LABEL_39;
      }

      if (v45)
      {
        goto LABEL_38;
      }

LABEL_39:
      v44 = sub_1E4207514();
      v48 = v44 & 0xFFFFFFFFFFFFFF8;
LABEL_40:
      v94 = v44;
      v49 = *(v48 + 16);
      v50 = (*(v48 + 24) >> 1) - v49;
      v51 = v48 + 8 * v49;
      if (v95 >> 62)
      {
        v53 = sub_1E4207384();
        if (v53)
        {
          v54 = v53;
          v55 = sub_1E4207384();
          if (v50 < v55)
          {
            goto LABEL_73;
          }

          if (v54 < 1)
          {
            goto LABEL_75;
          }

          v85 = v55;
          v56 = 0;
          v57 = v51 + 32;
          do
          {
            __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
            v58 = sub_1E3797EB0(&v100, v56, v95);
            v60 = *v59;

            (v58)(&v100, 0);
            *(v57 + 8 * v56++) = v60;
          }

          while (v54 != v56);
          v52 = v85;
          goto LABEL_50;
        }
      }

      else
      {
        v52 = *((v95 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v52)
        {
          if (v50 < v52)
          {
            goto LABEL_74;
          }

          type metadata accessor for ViewModel();
          swift_arrayInitWithCopy();
LABEL_50:

          if (v52 < v97)
          {
            goto LABEL_70;
          }

          if (v52 > 0)
          {
            v61 = *(v48 + 16);
            v62 = __OFADD__(v61, v52);
            v63 = v61 + v52;
            if (v62)
            {
              goto LABEL_71;
            }

            *(v48 + 16) = v63;
          }

          goto LABEL_55;
        }
      }

      if (v97 > 0)
      {
        goto LABEL_70;
      }

LABEL_55:

      v11 = v93;
    }
  }

  OUTLINED_FUNCTION_27_0();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B40C8(unint64_t a1)
{
  v3 = sub_1E32AE9B0(a1);
  v4 = sub_1E32AE9B0(*v1);
  v5 = __OFADD__(v4, v3);
  result = v4 + v3;
  if (v5)
  {
    __break(1u);
    goto LABEL_8;
  }

  sub_1E3797CDC(result, 1);
  v7 = *v1;
  v8 = *v1 & 0xFFFFFFFFFFFFFF8;
  sub_1E40BA980(v8 + 8 * *(v8 + 0x10) + 32, (*(v8 + 0x18) >> 1) - *(v8 + 0x10), a1);
  v10 = v9;

  if (v10 < v3)
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v10 < 1)
  {
LABEL_6:
    *v1 = v7;
    return result;
  }

  v11 = *(v8 + 16);
  v5 = __OFADD__(v11, v10);
  v12 = v11 + v10;
  if (!v5)
  {
    *(v8 + 16) = v12;
    goto LABEL_6;
  }

LABEL_9:
  __break(1u);
  return result;
}

uint64_t sub_1E40B4174(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 272, a2);
  *(v2 + 272) = a1;
}

uint64_t sub_1E40B41C4(uint64_t a1)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v3 = swift_allocObject();
  *(v3 + 16) = xmmword_1E4298880;
  *(v3 + 32) = a1;
  OUTLINED_FUNCTION_14_0(v1 + 264, v4);
  *(v1 + 264) = v3;
}

uint64_t sub_1E40B4248()
{
  OUTLINED_FUNCTION_3_0((v0 + 40), v9);
  v0[40] = 0;

  ViewModelKeys.rawValue.getter(35);
  v2 = v1;
  v4 = v3;
  memset(v8, 0, sizeof(v8));
  v5 = (*(*v0 + 688))(v7);
  sub_1E3946774(v8, v2, v4);
  return v5(v7, 0);
}

uint64_t sub_1E40B4350()
{
  if ((*(v0 + 401) & 1) == 0)
  {
    return *(v0 + 392);
  }

  LOBYTE(v5) = 6;
  OUTLINED_FUNCTION_8();
  v2 = (*(v1 + 776))(v6, &v5, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (!v6[3])
  {
    sub_1E325F6F0(v6, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_7;
  }

  if (!OUTLINED_FUNCTION_53_37(v2))
  {
LABEL_7:
    result = 0;
    v3 = 1;
    goto LABEL_8;
  }

  v3 = 0;
  result = v5;
LABEL_8:
  *(v0 + 392) = result;
  *(v0 + 400) = v3;
  *(v0 + 401) = 0;
  return result;
}

uint64_t sub_1E40B4424()
{
  result = sub_1E40B4350();
  *(v0 + 392) = 0;
  *(v0 + 400) = 1;
  return result;
}

uint64_t sub_1E40B444C()
{
  OUTLINED_FUNCTION_8();
  result = (*(v0 + 1208))();
  if (result)
  {
    swift_getObjectType();
    v2 = OUTLINED_FUNCTION_75_28();
    v3(v2);

    return swift_unknownObjectRelease();
  }

  return result;
}

void sub_1E40B44FC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v10 = v9;
  v11 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v75 - v16;
  v18 = v0[45];
  sub_1E324FBDC();
  OUTLINED_FUNCTION_0_11();
  if (!v18)
  {
    v82 = v6;
    v29 = v4;
    v19(v17);
    v30 = v8;

    v31 = sub_1E41FFC94();
    v32 = sub_1E4206814();
    v81 = v30;

    v80 = v32;
    if (os_log_type_enabled(v31, v32))
    {
      v76 = v11;
      v77 = v31;
      v79 = v29;
      v33 = swift_slowAlloc();
      *&v88 = swift_slowAlloc();
      *v33 = 136446978;
      v34 = sub_1E40B4E10();
      OUTLINED_FUNCTION_14_64(v34, v35);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 4) = v8;
      *(v33 + 12) = 2080;
      v37 = (*(*v10 + 376))(v36);
      OUTLINED_FUNCTION_14_64(v37, v38);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 14) = v8;
      *(v33 + 22) = 2080;
      v40 = v2;
      v41 = (*(*v2 + 376))(v39);
      OUTLINED_FUNCTION_14_64(v41, v42);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 24) = v8;
      *(v33 + 32) = 2080;
      v78 = v8;
      if (v8)
      {
        v43 = [v81 description];
        sub_1E4205F14();
        OUTLINED_FUNCTION_152();
      }

      else
      {
        v40 = 0xE700000000000000;
        v8 = 0x6E776F6E6B6E75;
      }

      v45 = v76;
      sub_1E3270FC8(v8, v40, &v88);
      OUTLINED_FUNCTION_11_5();

      *(v33 + 34) = v8;
      v46 = v77;
      _os_log_impl(&dword_1E323F000, v77, v80, "%{public}s fetchSingle %s\nin %s %s", v33, 0x2Au);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_21_0();

      (*(v13 + 8))(v17, v45);
      v8 = v78;
      v44 = v79;
    }

    else
    {

      (*(v13 + 8))(v17, v11);
      v44 = v29;
    }

    v47 = v82;
    if (v8)
    {
      v48 = v44;
      v49 = v81;
      v85[0] = v81;
      sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210);
      v50 = v49;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F888, &qword_1E42EA7C8);
      if ((swift_dynamicCast() & 1) == 0)
      {
        v90 = 0;
        v88 = 0u;
        v89 = 0u;
      }

      v44 = v48;
    }

    else
    {
      v90 = 0;
      v88 = 0u;
      v89 = 0u;
    }

    OUTLINED_FUNCTION_111();
    v53 = dynamic_cast_existential_1_conditional(v10, v51, &protocol descriptor for CollectionChildViewModelDataUpdating);
    if (v53)
    {
      v54 = v52;
    }

    else
    {
      v54 = 0;
    }

    v86 = &unk_1F5D5DAC8;
    v87 = &off_1F5D5C998;
    LOBYTE(v85[0]) = 32;
    v55 = j__OUTLINED_FUNCTION_18();
    v56 = sub_1E39C29F0(v85, v55 & 1);
    __swift_destroy_boxed_opaque_existential_1Tm(v85);
    if (v56)
    {
      goto LABEL_25;
    }

    sub_1E379D7E4(&v88, v85, &qword_1ECF3F878, &qword_1E42EA7B8);
    if (v86)
    {
      __swift_project_boxed_opaque_existential_1(v85, v86);
      v57 = OUTLINED_FUNCTION_27_0();
      v59 = v58(v57);
      __swift_destroy_boxed_opaque_existential_1Tm(v85);
    }

    else
    {
      v60 = sub_1E325F6F0(v85, &qword_1ECF3F878, &qword_1E42EA7B8);
      v85[0] = v53;
      v85[1] = v54;
      MEMORY[0x1EEE9AC00](v60);
      *(&v75 - 2) = v8;
      v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F880, &qword_1E42EA7C0);
      sub_1E4148F70(sub_1E40BA484, (&v75 - 4), v61, &type metadata for DocumentEventUpdateResult, v84);
      v59 = v84[0];
    }

    if (v59 - 2 < 2)
    {
LABEL_25:
      if (v53)
      {
        OUTLINED_FUNCTION_3_0((v2 + 48), v84);
        if (!v2[48])
        {
          if (sub_1E32AE9B0(MEMORY[0x1E69E7CC0]))
          {
            v62 = sub_1E37CB554(MEMORY[0x1E69E7CC0]);
          }

          else
          {
            v62 = MEMORY[0x1E69E7CD0];
          }

          v2[48] = v62;
        }

        v66 = v47;
        v67 = sub_1E40B193C(v85);
        if (*v68)
        {

          sub_1E37CB934(&v83, v10);
        }

        (v67)(v85, 0);
        OUTLINED_FUNCTION_71_2();
        v70 = v69;
        OUTLINED_FUNCTION_4_0();
        v71 = swift_allocObject();
        swift_weakInit();
        OUTLINED_FUNCTION_4_0();
        v72 = swift_allocObject();
        swift_weakInit();
        v73 = swift_allocObject();
        v73[2] = v71;
        v73[3] = v72;
        v73[4] = v47;
        v73[5] = v44;
        v74 = *(v54 + 16);

        sub_1E34AF604(v66, v44);
        v74(sub_1E40BA55C, v73, v70, v54);

LABEL_41:

        sub_1E325F6F0(&v88, &qword_1ECF3F878, &qword_1E42EA7B8);
        goto LABEL_42;
      }
    }

    else
    {
      if (v59)
      {
        OUTLINED_FUNCTION_12_6();
        if ((*(v63 + 1208))())
        {
          OUTLINED_FUNCTION_145();
          swift_getObjectType();
          v64 = OUTLINED_FUNCTION_11_6();
          v65(v64);
          swift_unknownObjectRelease();
        }

        if (v47)
        {
          v47(1);
        }

        goto LABEL_41;
      }
    }

    sub_1E325F6F0(&v88, &qword_1ECF3F878, &qword_1E42EA7B8);
    goto LABEL_42;
  }

  v19(v1);

  v20 = sub_1E41FFC94();
  v21 = sub_1E4206814();

  if (os_log_type_enabled(v20, v21))
  {
    v22 = OUTLINED_FUNCTION_49_0();
    *&v88 = OUTLINED_FUNCTION_72_0();
    *v22 = 136446466;
    v23 = sub_1E40B4E10();
    v25 = OUTLINED_FUNCTION_14_64(v23, v24);

    *(v22 + 4) = v25;
    *(v22 + 12) = 2080;
    v27 = (*(*v10 + 376))(v26);
    sub_1E3270FC8(v27, v28, &v88);
    OUTLINED_FUNCTION_15_19();
    *(v22 + 14) = v10;
    _os_log_impl(&dword_1E323F000, v20, v21, "%{public}s fetchSingle already in progress, ignoring request for %s", v22, 0x16u);
    OUTLINED_FUNCTION_58_40();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v13 + 8))(v1, v11);
LABEL_42:
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E40B4E10()
{
  if (*(v0 + 24))
  {
    v1 = *(v0 + 16);
    v2 = *(v0 + 24);
  }

  else
  {
    v2 = 0xE700000000000000;
    v1 = 0x6E776F6E6B6E55;
  }

  MEMORY[0x1E69109E0](v1, v2);

  MEMORY[0x1E69109E0](8285, 0xE200000000000000);

  return 0xD00000000000001ALL;
}

uint64_t sub_1E40B4EC8(uint64_t a1, void *a2, char a3, uint64_t a4, uint64_t a5)
{
  v6 = v5;
  if (!a2 || (sub_1E3280A90(0, &qword_1EE23AFD8, off_1E8728210), v8 = a2, __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F888, &qword_1E42EA7C8), (swift_dynamicCast() & 1) == 0))
  {
    v16 = 0;
    v14 = 0u;
    v15 = 0u;
    goto LABEL_8;
  }

  v9 = *(&v15 + 1);
  if (!*(&v15 + 1))
  {
LABEL_8:
    sub_1E325F6F0(&v14, &qword_1ECF3F878, &qword_1E42EA7B8);
LABEL_9:
    sub_1E40B50A0();
    return v12 & 1;
  }

  v10 = v16;
  __swift_project_boxed_opaque_existential_1(&v14, *(&v15 + 1));
  v11 = (*(v10 + 8))(v6, v9, v10);
  __swift_destroy_boxed_opaque_existential_1Tm(&v14);
  if (!v11)
  {
    v12 = 0;
    return v12 & 1;
  }

  if (v11 != 1)
  {
    goto LABEL_9;
  }

  v12 = 1;
  return v12 & 1;
}

uint64_t sub_1E40B501C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = swift_getObjectType();
  if (a1 != a3)
  {
    OUTLINED_FUNCTION_122();
    ObjectType = swift_getObjectType();
    result = (*(a2 + 8))(ObjectType, a2);
    if (result)
    {
      v8 = OUTLINED_FUNCTION_63_0();
      return sub_1E3FCC1B4(v8);
    }
  }

  return result;
}

void sub_1E40B50A0()
{
  OUTLINED_FUNCTION_31_1();
  v3 = v0;
  v111 = v4;
  v112 = v5;
  LODWORD(v110) = v6;
  v113 = v7;
  v8 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v109 = v9;
  MEMORY[0x1EEE9AC00](v10);
  OUTLINED_FUNCTION_4_6();
  v13 = v11 - v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v104 - v16;
  v18 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v20 = v19;
  MEMORY[0x1EEE9AC00](v21);
  OUTLINED_FUNCTION_5();
  v24 = v23 - v22;
  OUTLINED_FUNCTION_36();
  if ((*(v25 + 1184))())
  {
    OUTLINED_FUNCTION_145();
    ObjectType = swift_getObjectType();
    (*(v1 + 16))(v113, v110 & 1, v111, v112, ObjectType, v1);
    swift_unknownObjectRelease();
    goto LABEL_15;
  }

  v106 = v24;
  v107 = v20;
  v110 = v18;
  v105 = v17;
  v108 = v2;
  v27 = v112;
  OUTLINED_FUNCTION_71_2();
  v29 = (*(v28 + 1112))();
  v32 = v113;
  if (v30)
  {
    v33 = v29;
    v34 = v30;
    OUTLINED_FUNCTION_71_2();
    v36 = (*(v35 + 648))();
    if (v36 && (OUTLINED_FUNCTION_5_0(v36 + 48, &v114), swift_unknownObjectWeakLoadStrong(), OUTLINED_FUNCTION_6_19(), , v17))
    {
      if (sub_1E40B5B78(v32, v37, v38))
      {
        v39 = sub_1E4206BA4();
        v40 = VUISignpostLogObject(v39);
        v41 = v106;
        sub_1E41FFBE4();
        sub_1E41FFBA4();

        v107[1](v41, v110);
        if (v0[45])
        {
          v110 = v33;
          sub_1E324FBDC();
          v42 = v109;
          OUTLINED_FUNCTION_131_0();
          v40 = v105;
          v43(v105);

          v44 = sub_1E41FFC94();
          v45 = sub_1E4206814();

          if (os_log_type_enabled(v44, v45))
          {
            v46 = OUTLINED_FUNCTION_49_0();
            v107 = v17;
            v47 = v46;
            v106 = OUTLINED_FUNCTION_72_0();
            v115 = v106;
            *v47 = 136315394;
            v48 = sub_1E40B5D58();
            OUTLINED_FUNCTION_58_0(v48, v49);
            OUTLINED_FUNCTION_11_5();

            *(v47 + 4) = v40;
            *(v47 + 12) = 2080;
            v50 = ViewModelRequestType.rawValue.getter(v113);
            OUTLINED_FUNCTION_58_0(v50, v51);
            OUTLINED_FUNCTION_11_5();

            *(v47 + 14) = v40;
            _os_log_impl(&dword_1E323F000, v44, v45, "%s Cancelling to handle new request of type [%s]", v47, 0x16u);
            swift_arrayDestroy();
            OUTLINED_FUNCTION_6_0();
            v17 = v107;
            OUTLINED_FUNCTION_6_0();

            (*(v42 + 8))(v105, v8);
          }

          else
          {

            (*(v42 + 8))(v40, v8);
          }

          v3 = v0;
          if (v0[45])
          {
            OUTLINED_FUNCTION_8();
            v40 = *(v61 + 376);

            (v40)(v62);
          }

          v33 = v110;
          v0[45] = 0;
        }

        type metadata accessor for CollectionServiceRequestContext(0);
        v63 = v17;
        v64 = sub_1E3E3D284(v113, v33, v34, v17);
        if ((*(*v3 + 1208))())
        {
          OUTLINED_FUNCTION_145();
          v65 = swift_getObjectType();
          (*(v40 + 1))(v65, v40);
          OUTLINED_FUNCTION_11_5();
          swift_unknownObjectRelease();
          if (v40)
          {
            OUTLINED_FUNCTION_11_13();
            (*(v66 + 208))(v40);
          }
        }

        OUTLINED_FUNCTION_71_2();
        (*(v67 + 1136))();
        OUTLINED_FUNCTION_11_13();
        (*(v68 + 232))();
        v69 = sub_1E39C1AA0();
        (*(*v64 + 280))(v69);
        if (sub_1E37D01CC(v113, 2, v70))
        {
          OUTLINED_FUNCTION_71_2();
          (*(v71 + 1160))();
          OUTLINED_FUNCTION_11_13();
          v73 = (*(v72 + 256))();
          v74 = (*(*v3 + 1040))(v73);
          if (v74)
          {
            v75 = sub_1E37D027C(v74);
          }

          else
          {
            v75 = 0;
          }

          v79 = v108;
          OUTLINED_FUNCTION_11_13();
          (*(v80 + 184))(v75);
        }

        else
        {
          OUTLINED_FUNCTION_11_13();
          v77 = *(v76 + 184);

          v77(v78);
          v79 = v108;
        }

        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A2A8, qword_1E429D270);
        v3[45] = sub_1E37B2890();

        v110 = v3;
        v81 = sub_1E40B5D58();
        v83 = v82;
        sub_1E324FBDC();
        v84 = v109;
        OUTLINED_FUNCTION_131_0();
        v85(v79);

        v86 = sub_1E41FFC94();
        v87 = sub_1E4206814();

        v88 = os_log_type_enabled(v86, v87);
        v106 = v81;
        v107 = v83;
        if (v88)
        {
          v89 = OUTLINED_FUNCTION_49_0();
          v90 = OUTLINED_FUNCTION_72_0();
          v105 = v63;
          v115 = v90;
          *v89 = 136315394;
          *(v89 + 4) = sub_1E3270FC8(v81, v83, &v115);
          *(v89 + 12) = 2080;
          v91 = ViewModelRequestType.rawValue.getter(v113);
          v93 = sub_1E3270FC8(v91, v92, &v115);

          *(v89 + 14) = v93;
          _os_log_impl(&dword_1E323F000, v86, v87, "%s Starting with type [%s]", v89, 0x16u);
          OUTLINED_FUNCTION_58_40();
          v63 = v105;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_6_0();

          (*(v84 + 8))(v108, v8);
        }

        else
        {

          (*(v84 + 8))(v79, v8);
        }

        v94 = v110;
        v95 = v111;
        v96 = *(v110 + 360);
        if (v96)
        {
          OUTLINED_FUNCTION_47_0();
          v98 = *(v97 + 352);

          v100 = v98(v99);

          v101 = v107;
          if (!v100)
          {

            v96 = 0;
            goto LABEL_38;
          }

          OUTLINED_FUNCTION_4_0();
          v96 = swift_allocObject();
          swift_weakInit();
          v102 = swift_allocObject();
          v103 = v106;
          *(v102 + 16) = v96;
          *(v102 + 24) = v103;
          *(v102 + 32) = v101;
          *(v102 + 40) = v113;
          *(v102 + 48) = v95;
          *(v102 + 56) = v27;
          sub_1E34AF604(v95, v27);
          sub_1E41EC148(sub_1E40BAC04, v102);
          OUTLINED_FUNCTION_11_5();
        }

        else
        {
        }

LABEL_38:
        *(v94 + 368) = v96;

        goto LABEL_15;
      }
    }

    else
    {
    }
  }

  sub_1E40B5B78(v32, v30, v31);
  v52 = sub_1E324FBDC();
  v53 = v109;
  (*(v109 + 16))(v13, v52, v8);

  v54 = sub_1E41FFC94();
  v55 = sub_1E4206814();

  if (os_log_type_enabled(v54, v55))
  {
    v56 = OUTLINED_FUNCTION_49_0();
    v115 = OUTLINED_FUNCTION_72_0();
    *v56 = 136446466;
    v57 = sub_1E40B4E10();
    sub_1E3270FC8(v57, v58, &v115);
    OUTLINED_FUNCTION_15_19();
    *(v56 + 4) = v0;
    *(v56 + 12) = 2080;
    v59 = ViewModelRequestType.rawValue.getter(v32);
    sub_1E3270FC8(v59, v60, &v115);
    OUTLINED_FUNCTION_15_19();
    *(v56 + 14) = v0;
    _os_log_impl(&dword_1E323F000, v54, v55, "%{public}s Failed to make fetch request [%s]", v56, 0x16u);
    OUTLINED_FUNCTION_58_40();
    OUTLINED_FUNCTION_7_7();
    OUTLINED_FUNCTION_21_0();
  }

  (*(v53 + 8))(v13, v8);
LABEL_15:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B5B78(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v5 = *(v3 + 360);
  if (v5)
  {
    sub_1E327F454(v5 + 16, v19);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
    type metadata accessor for CollectionServiceRequestContext(0);
    if (swift_dynamicCast())
    {
      v7 = v18;
    }

    else
    {
      v7 = 0;
    }

    v8 = sub_1E37D01CC(a1, 1, v6);
    if (v8)
    {
      if (!v7)
      {
LABEL_19:

        return 1;
      }

      if (*(v7 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType) == 5 || (v19[0] = *(v7 + OBJC_IVAR____TtC8VideosUI31CollectionServiceRequestContext_requestType), sub_1E37D17DC(v8, v9, v10), (sub_1E4205E84() & 1) == 0))
      {
LABEL_11:

        goto LABEL_19;
      }

      OUTLINED_FUNCTION_111();
      if ((*(v11 + 168))(v12))
      {
        OUTLINED_FUNCTION_111();
        (*(v13 + 376))(v14);
        goto LABEL_11;
      }
    }

    return 0;
  }

  if (sub_1E37D01CC(a1, 2, a3))
  {
    OUTLINED_FUNCTION_8();
    if ((*(v16 + 1160))())
    {

      return 1;
    }
  }

  return sub_1E37D01CC(a1, 1, v15);
}

unint64_t sub_1E40B5D58()
{
  v1 = 0xD000000000000016;
  v2 = v0[45];
  if (v2)
  {
    sub_1E327F454(v2 + 16, &v11);

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
    type metadata accessor for CollectionServiceRequestContext(0);
    if (swift_dynamicCast())
    {
      if (v0[3])
      {
        v3 = v0[2];
        v4 = v0[3];
      }

      else
      {
        v4 = 0xE700000000000000;
        v3 = 0x6E776F6E6B6E55;
      }

      v11 = 0xD00000000000001ALL;
      v12 = 0x80000001E4290AF0;

      MEMORY[0x1E69109E0](v3, v4);

      MEMORY[0x1E69109E0](0x736575716552205DLL, 0xEB000000005B2074);

      v6 = v11;
      v5 = v12;
      v7 = sub_1E41FE5E4();
      v9 = v8;
      v11 = v6;
      v12 = v5;

      MEMORY[0x1E69109E0](v7, v9);

      MEMORY[0x1E69109E0](2112093, 0xE300000000000000);

      return v11;
    }

    else
    {
    }
  }

  return v1;
}

void sub_1E40B5F3C()
{
  OUTLINED_FUNCTION_31_1();
  v105 = v1;
  v106 = v0;
  v109 = v2;
  v108 = v3;
  v5 = v4;
  v7 = v6;
  v9 = v8;
  v10 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v12 = v11;
  MEMORY[0x1EEE9AC00](v13);
  OUTLINED_FUNCTION_4_6();
  v16 = v14 - v15;
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = v101 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = v101 - v23;
  MEMORY[0x1EEE9AC00](v25);
  v27 = v101 - v26;
  v28 = *(v9 + 8);
  v107 = *v9;
  v104 = *(v9 + 16);
  v29 = *(v9 + 17);
  OUTLINED_FUNCTION_5_0(v7 + 16, &v113);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v31 = Strong;
    if (v29)
    {
      v101[1] = v12;
      if (v104 == 2)
      {
        v32 = sub_1E324FBDC();
        v33 = *(v12 + 16);
        v34 = v10;
        v33(v24, v32, v10);
        v35 = v5;

        v5 = v107;
        v36 = OUTLINED_FUNCTION_68_35();
        sub_1E3781FA4(v36, v37, v38, v39);
        v40 = sub_1E41FFC94();
        v41 = sub_1E42067F4();

        v42 = OUTLINED_FUNCTION_68_35();
        sub_1E37D172C(v42, v43, v44, v45);
        if (os_log_type_enabled(v40, v41))
        {
          v46 = OUTLINED_FUNCTION_49_0();
          v101[0] = v33;
          v47 = v46;
          *&v111[0] = OUTLINED_FUNCTION_72_0();
          *v47 = 136315394;
          v48 = OUTLINED_FUNCTION_35_81();
          *(v47 + 4) = sub_1E3270FC8(v48, v35, v49);
          *(v47 + 12) = 2080;
          *(v47 + 14) = sub_1E3270FC8(v5, v28, v111);
          _os_log_impl(&dword_1E323F000, v40, v41, "%s Received empty items from fragment request: [%s]", v47, 0x16u);
          swift_arrayDestroy();
          v34 = v10;
          OUTLINED_FUNCTION_6_0();
          v33 = v101[0];
          OUTLINED_FUNCTION_6_0();
        }

        OUTLINED_FUNCTION_65_38();
        (v5)(v24, v34);
      }

      else
      {
        v110[0] = sub_1E3F6FB3C(v107, v28, v104);
        v110[1] = v64;
        v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D960, &unk_1E4298000);
        sub_1E4148C68(sub_1E37BCD7C, v65, v111);

        v66 = v111[0];
        v67 = sub_1E324FBDC();
        v34 = v10;
        v101[0] = *(v12 + 16);
        (v101[0])(v21, v67, v10);
        v35 = v5;

        v68 = sub_1E41FFC94();
        v69 = sub_1E42067F4();

        if (os_log_type_enabled(v68, v69))
        {
          v5 = OUTLINED_FUNCTION_49_0();
          *&v111[0] = OUTLINED_FUNCTION_72_0();
          *v5 = 136315394;
          v70 = OUTLINED_FUNCTION_35_81();
          *(v5 + 4) = sub_1E3270FC8(v70, v35, v71);
          *(v5 + 12) = 2080;
          v72 = sub_1E3270FC8(v66, *(&v66 + 1), v111);

          *(v5 + 14) = v72;
          _os_log_impl(&dword_1E323F000, v68, v69, "%s Received error [%s]", v5, 0x16u);
          swift_arrayDestroy();
          v34 = v10;
          OUTLINED_FUNCTION_6_0();
          OUTLINED_FUNCTION_79();
        }

        else
        {
        }

        OUTLINED_FUNCTION_65_38();
        (v5)(v21, v34);
        v33 = v101[0];
      }

      v31[45] = 0;

      v73 = v108;
      v75 = sub_1E37D01CC(v108, 2, v74);
      v77 = v103;
      if (v75)
      {
        v78 = sub_1E324FBDC();
        v79 = v102;
        v33(v102, v78, v34);

        v80 = sub_1E41FFC94();
        v81 = sub_1E42067D4();

        if (os_log_type_enabled(v80, v81))
        {
          v82 = OUTLINED_FUNCTION_6_21();
          *&v111[0] = OUTLINED_FUNCTION_100();
          *v82 = 136315138;
          v83 = OUTLINED_FUNCTION_35_81();
          *(v82 + 4) = sub_1E3270FC8(v83, v35, v84);
          OUTLINED_FUNCTION_72_4(&dword_1E323F000, v85, v86, "%s error trying to append: removing pagination");
          OUTLINED_FUNCTION_18_138();
          OUTLINED_FUNCTION_6_0();
        }

        (v5)(v79, v34);
        OUTLINED_FUNCTION_3_0((v31 + 40), &v112);
        v31[40] = 0;

        ViewModelKeys.rawValue.getter(35);
        v88 = v87;
        v90 = v89;
        memset(v111, 0, sizeof(v111));
        v91 = (*(*v31 + 688))(v110);
        sub_1E3946774(v111, v88, v90);
        v91(v110, 0);
      }

      else
      {
        v92 = sub_1E37D01CC(v73, 1, v76);
        if (v104 == 2 && (v92 & 1) != 0)
        {
          v93 = sub_1E324FBDC();
          v33(v77, v93, v34);

          v94 = sub_1E41FFC94();
          v95 = sub_1E42067D4();

          if (os_log_type_enabled(v94, v95))
          {
            v96 = OUTLINED_FUNCTION_6_21();
            *&v111[0] = OUTLINED_FUNCTION_100();
            *v96 = 136315138;
            v97 = OUTLINED_FUNCTION_35_81();
            *(v96 + 4) = sub_1E3270FC8(v97, v35, v98);
            OUTLINED_FUNCTION_72_4(&dword_1E323F000, v99, v100, "%s request type was replace and no items were returned; ignoring.");
            OUTLINED_FUNCTION_18_138();
            OUTLINED_FUNCTION_6_0();
          }

          (v5)(v77, v34);
        }
      }

      if (v109)
      {
        v109(0);
      }
    }

    else
    {
      *(Strong + 360) = 0;

      v56 = sub_1E324FBDC();
      (*(v12 + 16))(v27, v56, v10);

      v57 = sub_1E41FFC94();
      v58 = sub_1E4206814();

      if (os_log_type_enabled(v57, v58))
      {
        v59 = v5;
        v60 = OUTLINED_FUNCTION_6_21();
        v61 = OUTLINED_FUNCTION_100();
        *&v111[0] = v61;
        *v60 = 136315138;
        v62 = OUTLINED_FUNCTION_35_81();
        *(v60 + 4) = sub_1E3270FC8(v62, v59, v63);
        _os_log_impl(&dword_1E323F000, v57, v58, "%s Received success response", v60, 0xCu);
        __swift_destroy_boxed_opaque_existential_1Tm(v61);
        OUTLINED_FUNCTION_79();
        OUTLINED_FUNCTION_7_7();
      }

      (*(v12 + 8))(v27, v10);
      sub_1E40B6838();
    }

    v31[46] = 0;
  }

  else
  {
    v50 = sub_1E324FBDC();
    (*(v12 + 16))(v16, v50, v10);

    v51 = sub_1E41FFC94();
    v52 = sub_1E42067F4();

    if (os_log_type_enabled(v51, v52))
    {
      v53 = OUTLINED_FUNCTION_6_21();
      *&v111[0] = OUTLINED_FUNCTION_100();
      *v53 = 136315138;
      v54 = OUTLINED_FUNCTION_35_81();
      *(v53 + 4) = sub_1E3270FC8(v54, v5, v55);
      _os_log_impl(&dword_1E323F000, v51, v52, "%s collection view model object is invalid.", v53, 0xCu);
      OUTLINED_FUNCTION_18_138();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v12 + 8))(v16, v10);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B6838()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v192 = v5;
  v7 = v6;
  v9 = v8;
  v186 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v184 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v185 = v13 - v12;
  v14 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v190 = v15;
  MEMORY[0x1EEE9AC00](v16);
  OUTLINED_FUNCTION_4_6();
  OUTLINED_FUNCTION_37_5();
  MEMORY[0x1EEE9AC00](v17);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v18);
  OUTLINED_FUNCTION_18_6();
  OUTLINED_FUNCTION_4_7();
  MEMORY[0x1EEE9AC00](v19);
  v21 = &v172 - v20;
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v172 - v23;
  v26 = sub_1E37D01CC(v7, 2, v25);
  v187 = v2;
  v191 = v4;
  if (v26)
  {
    v188 = v14;
    ViewModelKeys.rawValue.getter(35);
    v29 = v28;
    v31 = v30;
    OUTLINED_FUNCTION_5_0((v9 + 3), v203);
    v32 = v9[3];
    if (v32)
    {
      v33 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
    }

    else
    {
      v33 = 0;
      *(&v198 + 1) = 0;
      *&v199 = 0;
    }

    *&v198 = v32;
    *(&v199 + 1) = v33;
    OUTLINED_FUNCTION_66_3();
    v41 = *(v40 + 688);

    v42 = (v41)(&v195);
    sub_1E3946774(&v198, v29, v31);
    v42(&v195, 0);
    v43 = v9[3];
    OUTLINED_FUNCTION_3_0((v2 + 40), &v198);
    v44 = v2[40];
    v2[40] = v43;

    OUTLINED_FUNCTION_5_0((v9 + 4), &v195);
    v45 = v188;
    if (v9[4])
    {

      sub_1E408A950(v46);
      OUTLINED_FUNCTION_122();

      if (v44)
      {

        sub_1E40B8580();
        if (v47)
        {
LABEL_12:
          OUTLINED_FUNCTION_5_0((v9 + 6), v194);
          if (v9[6])
          {
            v202 = v9[6];

            v48 = OUTLINED_FUNCTION_63_0();
            __swift_instantiateConcreteTypeFromMangledNameV2(v48, v49);
            sub_1E32752B0(&qword_1EE23B610, &qword_1ECF2A770, &qword_1E42992B0, MEMORY[0x1E69E5E60]);
            sub_1E38D2484(sub_1E40BA6B4, MEMORY[0x1E69E7CA8] + 8, v201);
          }

          v50 = 1;
          goto LABEL_78;
        }

        goto LABEL_77;
      }

      v51 = v9[4];
      if (v51 && sub_1E32AE9B0(v9[4]))
      {
        OUTLINED_FUNCTION_66_3();
        v52 += 130;
        v41 = *v52;
        v53 = v52;

        v55 = (v41)(v54);
        if (v55)
        {
          sub_1E37D027C(v55);
          OUTLINED_FUNCTION_6_19();

          if (v53)
          {
            v56 = (*v53)[127](v51);

            if (sub_1E32AE9B0(v56))
            {
              v57 = sub_1E324FBDC();
              v58 = v190;
              v59 = v188;
              (*(v190 + 16))(v24, v57, v188);

              v60 = sub_1E41FFC94();
              v61 = sub_1E4206814();

              if (os_log_type_enabled(v60, v61))
              {
                v62 = OUTLINED_FUNCTION_6_21();
                v189 = OUTLINED_FUNCTION_100();
                OUTLINED_FUNCTION_69_32(v189);
                *v62 = 136315138;
                v63 = sub_1E40B5D58();
                v65 = sub_1E3270FC8(v63, v64, v194);

                *(v62 + 4) = v65;
                v2 = v187;
                _os_log_impl(&dword_1E323F000, v60, v61, "%s Appended items from fragment successfully", v62, 0xCu);
                __swift_destroy_boxed_opaque_existential_1Tm(v189);
                OUTLINED_FUNCTION_6_0();
                OUTLINED_FUNCTION_79();

                (*(v58 + 8))(v24, v188);
              }

              else
              {

                (*(v58 + 8))(v24, v59);
              }

              sub_1E40B8BC0(v9);

              sub_1E41D89B8(v163);

              if ((*(*v2 + 1208))(v164))
              {
                v166 = v165;
                ObjectType = swift_getObjectType();
                (*(v166 + 16))(v2, v56, ObjectType, v166);

                swift_unknownObjectRelease();
              }

              else
              {
              }

              goto LABEL_12;
            }

LABEL_77:
            v50 = 0;
LABEL_78:
            v38 = v192;
            goto LABEL_79;
          }
        }

        v45 = v188;
      }
    }

    sub_1E324FBDC();
    v128 = v190;
    OUTLINED_FUNCTION_131_0();
    v129(v21);

    v130 = sub_1E41FFC94();
    v131 = sub_1E4206814();

    if (os_log_type_enabled(v130, v131))
    {
      v132 = OUTLINED_FUNCTION_6_21();
      v133 = v128;
      v134 = OUTLINED_FUNCTION_100();
      OUTLINED_FUNCTION_69_32(v134);
      *v132 = 136315138;
      v135 = sub_1E40B5D58();
      sub_1E3270FC8(v135, v136, v194);
      OUTLINED_FUNCTION_11_5();

      *(v132 + 4) = v41;
      _os_log_impl(&dword_1E323F000, v130, v131, "%s Received empty items for .append", v132, 0xCu);
      OUTLINED_FUNCTION_18_138();
      OUTLINED_FUNCTION_21_0();

      (*(v133 + 8))(v21, v45);
    }

    else
    {

      (*(v128 + 8))(v21, v45);
    }

    goto LABEL_77;
  }

  if ((sub_1E37D01CC(v7, 1, v27) & 1) == 0)
  {
    goto LABEL_77;
  }

  OUTLINED_FUNCTION_5_0((v2 + 48), &v202);
  v34 = v2[48];
  v182 = v1;
  if (v34)
  {
    v188 = v14;
    v181 = v34;
    if ((v34 & 0xC000000000000001) != 0)
    {

      swift_unknownObjectRetain();
      sub_1E4207344();
      type metadata accessor for ViewModel();
      sub_1E40BAC18(qword_1EE23BA70, type metadata accessor for ViewModel, &protocol conformance descriptor for ViewModel);
      OUTLINED_FUNCTION_32_0();
      sub_1E4206664();
      v35 = v203[0];
      v36 = v203[1];
      v37 = v203[2];
      v38 = v203[3];
      v39 = v203[4];
    }

    else
    {
      v66 = -1 << *(v34 + 32);
      v35 = v34;
      v36 = v34 + 56;
      v37 = ~v66;
      v67 = -v66;
      if (v67 < 64)
      {
        v68 = ~(-1 << v67);
      }

      else
      {
        v68 = -1;
      }

      v39 = v68 & *(v34 + 56);
      swift_bridgeObjectRetain_n();
      v38 = 0;
    }

    v180 = v37;
    if ((v35 & 0x8000000000000000) == 0)
    {
      goto LABEL_30;
    }

    while (1)
    {
      v69 = sub_1E42073C4();
      if (!v69)
      {
        break;
      }

      *&v195 = v69;
      type metadata accessor for ViewModel();
      swift_dynamicCast();
      v70 = v198;
      v71 = v38;
      v72 = v39;
      if (!v198)
      {
        break;
      }

      while (1)
      {
        OUTLINED_FUNCTION_66_3();
        if (dynamic_cast_existential_1_conditional(v70, v75, &protocol descriptor for CollectionChildViewModelDataUpdating))
        {
          OUTLINED_FUNCTION_145();
          v76 = swift_getObjectType();
          (*(v38 + 24))(v76, v38);
        }

        v38 = v71;
        v39 = v72;
        if (v35 < 0)
        {
          break;
        }

LABEL_30:
        v73 = v38;
        v74 = v39;
        v71 = v38;
        if (!v39)
        {
          while (1)
          {
            v71 = v73 + 1;
            if (__OFADD__(v73, 1))
            {
              break;
            }

            if (v71 >= ((v37 + 64) >> 6))
            {
              goto LABEL_39;
            }

            v74 = *(v36 + 8 * v71);
            ++v73;
            if (v74)
            {
              goto LABEL_34;
            }
          }

          __break(1u);
          goto LABEL_96;
        }

LABEL_34:
        v72 = (v74 - 1) & v74;
        v70 = *(*(v35 + 48) + ((v71 << 9) | (8 * __clz(__rbit64(v74)))));

        if (!v70)
        {
          goto LABEL_39;
        }
      }
    }

LABEL_39:
    sub_1E34AF4DC(v35);

    v2 = v187;
    v14 = v188;
    v1 = v182;
  }

  v77 = &v198;
  v79 = sub_1E40B193C(&v198);
  v80 = v190;
  if (*v78)
  {
    v81 = v78;

    *v81 = MEMORY[0x1E69E7CD0];
  }

  (v79)(&v198, 0);
  OUTLINED_FUNCTION_5_0((v9 + 5), v201);
  v82 = v9[5];
  if (!v82)
  {
LABEL_74:
    sub_1E324FBDC();
    OUTLINED_FUNCTION_131_0();
    v137(v1);

    v138 = sub_1E41FFC94();
    v139 = sub_1E4206814();

    if (os_log_type_enabled(v138, v139))
    {
      v140 = OUTLINED_FUNCTION_6_21();
      v141 = v80;
      v142 = v14;
      v143 = OUTLINED_FUNCTION_100();
      *&v198 = v143;
      *v140 = 136315138;
      v144 = sub_1E40B5D58();
      sub_1E3270FC8(v144, v145, &v198);
      OUTLINED_FUNCTION_11_5();

      *(v140 + 4) = v77;
      OUTLINED_FUNCTION_88_21(&dword_1E323F000, v146, v147, "%s Received invalid fragment for .replace");
      __swift_destroy_boxed_opaque_existential_1Tm(v143);
      OUTLINED_FUNCTION_21_0();
      OUTLINED_FUNCTION_6_0();

      (*(v141 + 8))(v1, v142);
    }

    else
    {

      (*(v80 + 8))(v1, v14);
    }

    goto LABEL_77;
  }

  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v83, v84, v82, &v198);

  if (!*(&v199 + 1))
  {
    v127 = &v198;
LABEL_73:
    sub_1E325F6F0(v127, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_74;
  }

  v85 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v77 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_86_6(&v195, &v198, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    goto LABEL_74;
  }

  *(&v199 + 1) = &type metadata for ViewModelKeys;
  *&v200 = &off_1F5D7BCA8;
  LOBYTE(v198) = 13;
  sub_1E3F9F164(&v198, v195, v77 + 8);

  if (!*(&v196 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v198);
    v127 = &v195;
    goto LABEL_73;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v198);
    goto LABEL_74;
  }

  v86 = *&v194[0];
  __swift_destroy_boxed_opaque_existential_1Tm(&v198);
  if (!*(v86 + 16))
  {

    goto LABEL_74;
  }

  v175 = v85;
  OUTLINED_FUNCTION_77_24();

  v174 = 0;
  v87 = 0;
  v88 = v85 + 64;
  v178 = v85;
  OUTLINED_FUNCTION_4_4();
  v89 = v80;
  v92 = v91 & v90;
  v173 = (v184 + 8);
  v179 = v89 + 16;
  v180 = v89 + 8;
  *&v93 = 136315394;
  v176 = v93;
  OUTLINED_FUNCTION_71_34();
  v177 = v85 + 64;
  v181 = v94;
  if (!v92)
  {
    goto LABEL_50;
  }

LABEL_54:
  while (1)
  {
    OUTLINED_FUNCTION_50_56();
    v97 = (*(v178 + 48) + 16 * v96);
    v98 = *v97;
    v86 = v97[1];
    sub_1E328438C(*(v178 + 56) + 32 * v96, v194);
    *&v195 = v98;
    *(&v195 + 1) = v86;
    sub_1E329504C(v194, &v196);

    OUTLINED_FUNCTION_71_34();
LABEL_55:
    v198 = v195;
    v199 = v196;
    v200 = v197;
    v99 = *(&v195 + 1);
    if (!*(&v195 + 1))
    {
      break;
    }

    v100 = v198;
    sub_1E329504C(&v199, &v195);

    v101 = sub_1E38506C8();
    if (v101 != 263 && (v104 = *(v2 + 49), LOWORD(v194[0]) = v101, LOWORD(v193) = v104, sub_1E3741534(v101, v102, v103), (sub_1E4205E84() & 1) != 0) && (sub_1E328438C(&v195, v194), (swift_dynamicCast() & 1) != 0))
    {

      v105 = v193;
      OUTLINED_FUNCTION_66_3();
      v107 = *(v106 + 680);

      v107(v108);
      v109 = sub_1E4206BA4();
      v110 = VUISignpostLogObject(v109);
      v111 = v185;
      sub_1E41FFBE4();
      sub_1E41FFBA4();

      v77 = v173;
      v184 = *v173;
      v112 = v186;
      (v184)(v111, v186);
      (*(*v2 + 1368))(v105);

      v114 = (*(*v2 + 1040))(v113);
      sub_1E41D7FB4(v114);

      v86 = sub_1E4206B94();
      v115 = VUISignpostLogObject(v86);
      sub_1E41FFBE4();
      OUTLINED_FUNCTION_71_34();
      sub_1E41FFBA4();

      v116 = v111;
      v88 = v177;
      (v184)(v116, v112);
      __swift_destroy_boxed_opaque_existential_1Tm(&v195);
      v174 = 1;
    }

    else
    {
      v184 = v100;
      sub_1E324FBDC();
      OUTLINED_FUNCTION_86_21();
      v117(v86);

      v77 = v14;
      v118 = sub_1E41FFC94();
      v119 = sub_1E4206814();

      if (os_log_type_enabled(v118, v119))
      {
        v120 = OUTLINED_FUNCTION_49_0();
        v86 = OUTLINED_FUNCTION_72_0();
        OUTLINED_FUNCTION_69_32(v86);
        *v120 = v176;
        v121 = sub_1E40B5D58();
        v123 = sub_1E3270FC8(v121, v122, v194);

        *(v120 + 4) = v123;
        v2 = v187;
        *(v120 + 12) = 2080;
        v124 = sub_1E3270FC8(v184, v99, v194);

        *(v120 + 14) = v124;
        _os_log_impl(&dword_1E323F000, v118, v119, "%s Invalid model type in fragment <%s>", v120, 0x16u);
        swift_arrayDestroy();
        OUTLINED_FUNCTION_71_34();
        OUTLINED_FUNCTION_6_0();
        v88 = v177;
        OUTLINED_FUNCTION_6_0();
      }

      else
      {
      }

      OUTLINED_FUNCTION_45_70();
      v125 = OUTLINED_FUNCTION_27_0();
      v126(v125);
      __swift_destroy_boxed_opaque_existential_1Tm(&v195);
      v14 = v77;
    }

    v94 = v181;
    if (!v92)
    {
LABEL_50:
      while (1)
      {
        v95 = v87 + 1;
        if (__OFADD__(v87, 1))
        {
          break;
        }

        if (v95 >= v94)
        {
          v92 = 0;
          v196 = 0u;
          v197 = 0u;
          v195 = 0u;
          goto LABEL_55;
        }

        v92 = *(v88 + 8 * v95);
        ++v87;
        if (v92)
        {
          v87 = v95;
          goto LABEL_54;
        }
      }

      __break(1u);
      return;
    }
  }

  v80 = v190;
  v1 = v182;
  if ((v174 & 1) == 0)
  {
    goto LABEL_74;
  }

  sub_1E324FBDC();
  OUTLINED_FUNCTION_86_21();
  v148 = v183;
  v149(v183);

  v150 = sub_1E41FFC94();
  v151 = sub_1E4206814();

  if (os_log_type_enabled(v150, v151))
  {
    v152 = OUTLINED_FUNCTION_6_21();
    v153 = v14;
    v154 = OUTLINED_FUNCTION_100();
    *&v198 = v154;
    *v152 = 136315138;
    v155 = sub_1E40B5D58();
    v157 = sub_1E3270FC8(v155, v156, &v198);

    *(v152 + 4) = v157;
    OUTLINED_FUNCTION_88_21(&dword_1E323F000, v158, v159, "%s Replaced from fragment successfully");
    __swift_destroy_boxed_opaque_existential_1Tm(v154);
    OUTLINED_FUNCTION_21_0();
    OUTLINED_FUNCTION_6_0();

    OUTLINED_FUNCTION_45_70();
    v161 = v148;
    v162 = v153;
  }

  else
  {

    OUTLINED_FUNCTION_45_70();
    v161 = v148;
    v162 = v14;
  }

  v160(v161, v162);
  v38 = v192;
  OUTLINED_FUNCTION_66_3();
  if ((*(v168 + 1208))())
  {
    v170 = v169;
    v171 = swift_getObjectType();
    v50 = (*(v170 + 32))(v2, 1, v171, v170);
    swift_unknownObjectRelease();
    goto LABEL_79;
  }

LABEL_96:
  v50 = 0;
LABEL_79:
  if (v38)
  {
    (v38)(v50 & 1);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B7BC0()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      *v8 = 136446210;
      v9 = sub_1E40B5D58();
      OUTLINED_FUNCTION_58_0(v9, v10);
      OUTLINED_FUNCTION_122();

      *(v8 + 4) = v0;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v11, v12, "%{public}s suspended.");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 360))();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B7D64()
{
  OUTLINED_FUNCTION_31_1();
  sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  MEMORY[0x1EEE9AC00](v1);
  OUTLINED_FUNCTION_5();
  v4 = v3 - v2;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    v5(v4);

    v6 = sub_1E41FFC94();
    v7 = sub_1E42067F4();

    if (os_log_type_enabled(v6, v7))
    {
      v8 = OUTLINED_FUNCTION_6_21();
      v16 = OUTLINED_FUNCTION_100();
      *v8 = 136446210;
      v9 = sub_1E40B5D58();
      OUTLINED_FUNCTION_58_0(v9, v10);
      OUTLINED_FUNCTION_122();

      *(v8 + 4) = v0;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v11, v12, "%{public}s resumed.");
      __swift_destroy_boxed_opaque_existential_1Tm(v16);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();
    }

    v13 = OUTLINED_FUNCTION_11_6();
    v14(v13);
    OUTLINED_FUNCTION_47_0();
    (*(v15 + 368))();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E40B7F08()
{
  OUTLINED_FUNCTION_31_1();
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if (*(v0 + 360))
  {

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v8(v7);

    v9 = sub_1E41FFC94();
    v10 = sub_1E42067F4();

    if (os_log_type_enabled(v9, v10))
    {
      v18 = v1;
      v11 = OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_100();
      *v11 = 136446210;
      v12 = sub_1E40B5D58();
      v14 = OUTLINED_FUNCTION_58_0(v12, v13);

      *(v11 + 4) = v14;
      OUTLINED_FUNCTION_54_1(&dword_1E323F000, v15, v16, "%{public}s cancelled.");
      __swift_destroy_boxed_opaque_existential_1Tm(v19);
      OUTLINED_FUNCTION_79();
      OUTLINED_FUNCTION_7_7();

      (*(v3 + 8))(v7, v18);
    }

    else
    {

      (*(v3 + 8))(v7, v1);
    }

    OUTLINED_FUNCTION_12_6();
    (*(v17 + 376))();

    *(v0 + 360) = 0;
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B80D8()
{
  LOBYTE(v3) = 18;
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 776))(v4, &v3, &unk_1F5D5DAC8, &off_1F5D5C998);
  if (v4[3])
  {
    if (OUTLINED_FUNCTION_53_37(v1))
    {
      return v3;
    }

    else
    {
      return 0;
    }
  }

  else
  {
    sub_1E325F6F0(v4, &unk_1ECF296E0, &unk_1E4298030);
    return 0;
  }
}

uint64_t sub_1E40B8190()
{

  sub_1E32AF6F8(v0 + 328);
  sub_1E32AF6F8(v0 + 344);
}

uint64_t CollectionViewModel.deinit()
{
  v0 = ViewModel.deinit();

  sub_1E32AF6F8(v0 + 328);
  sub_1E32AF6F8(v0 + 344);

  return v0;
}

uint64_t CollectionViewModel.__deallocating_deinit()
{
  CollectionViewModel.deinit();
  OUTLINED_FUNCTION_81_28();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

void sub_1E40B8580()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v0;
  v4 = v3;
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_4_6();
  v11 = v9 - v10;
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v56 - v13;
  OUTLINED_FUNCTION_5_0(v4 + 32, &v64);
  if (*(v4 + 32))
  {

    v16 = sub_1E408A950(v15);

    if (v16)
    {
      OUTLINED_FUNCTION_111();
      v18 = (*(v17 + 1040))();
      if (!v18 || (sub_1E37D027C(v18), OUTLINED_FUNCTION_6_19(), , !v1))
      {
LABEL_28:

        goto LABEL_29;
      }

      if (sub_1E32AE9B0(v16))
      {
        v63 = v16;
        if (sub_1E32AE9B0(v16))
        {
          if (sub_1E32AE9B0(v16))
          {
            if ((v16 & 0xC000000000000001) == 0)
            {
              if (!*((v16 & 0xFFFFFFFFFFFFFF8) + 0x10))
              {
                __break(1u);
                goto LABEL_46;
              }

              v19 = *(v16 + 32);

LABEL_11:
              if (!sub_1E32AE9B0(v16))
              {
LABEL_48:
                __break(1u);
                goto LABEL_49;
              }

              if (sub_1E32AE9B0(v16) >= 1)
              {
                v20 = sub_1E32AE9B0(v16);
                v21 = __OFSUB__(v20, 1);
                v22 = v20 - 1;
                if (!v21)
                {
                  sub_1E3797CDC(v22, 1);
                  sub_1E40BAB08(0, 1, 0);
                  v23 = v63;
                  v24 = *(v1 + 24);
                  v25 = v19[3];
                  if (v24)
                  {
                    if (v25)
                    {
                      v26 = *(v1 + 16) == v19[2] && v24 == v25;
                      if (v26 || (sub_1E42079A4() & 1) != 0)
                      {
LABEL_21:
                        v59 = v23;
                        v61 = v1;
                        v27 = *(*v19 + 872);
                        v60 = v19;
                        if (v27())
                        {
                          OUTLINED_FUNCTION_8();
                          v29 = (*(v28 + 1016))();

                          sub_1E32AE9B0(v29);
                          OUTLINED_FUNCTION_6_19();

                          sub_1E324FBDC();
                          OUTLINED_FUNCTION_12_7();
                          v30(v14);

                          v31 = sub_1E41FFC94();
                          v32 = sub_1E4206814();

                          if (os_log_type_enabled(v31, v32))
                          {
                            v33 = OUTLINED_FUNCTION_6_21();
                            v58 = OUTLINED_FUNCTION_100();
                            v62[0] = v58;
                            *v33 = 136315138;
                            v57 = v31;
                            v34 = sub_1E40B5D58();
                            v31 = v35;
                            sub_1E3270FC8(v34, v35, v62);
                            HIDWORD(v56) = v32;
                            OUTLINED_FUNCTION_6_19();

                            *(v33 + 4) = v32;
                            OUTLINED_FUNCTION_70_32();
                            _os_log_impl(v36, v37, v38, v39, v33, 0xCu);
                            __swift_destroy_boxed_opaque_existential_1Tm(v58);
                            OUTLINED_FUNCTION_21_0();
                            OUTLINED_FUNCTION_6_0();
                          }

                          (*(v7 + 8))(v14, v5);
                        }

                        else
                        {
                          sub_1E324FBDC();
                          OUTLINED_FUNCTION_12_7();
                          v40(v11);

                          v41 = sub_1E41FFC94();
                          v42 = sub_1E4206814();

                          if (os_log_type_enabled(v41, v42))
                          {
                            v43 = OUTLINED_FUNCTION_6_21();
                            v58 = OUTLINED_FUNCTION_100();
                            v62[0] = v58;
                            *v43 = 136315138;
                            v57 = v41;
                            v44 = sub_1E40B5D58();
                            v41 = v45;
                            sub_1E3270FC8(v44, v45, v62);
                            HIDWORD(v56) = v42;
                            OUTLINED_FUNCTION_6_19();

                            *(v43 + 4) = v42;
                            OUTLINED_FUNCTION_70_32();
                            _os_log_impl(v46, v47, v48, v49, v43, 0xCu);
                            __swift_destroy_boxed_opaque_existential_1Tm(v58);
                            OUTLINED_FUNCTION_21_0();
                            OUTLINED_FUNCTION_79();
                          }

                          (*(v7 + 8))(v11, v5);
                        }

                        v50 = sub_1E40B125C(v62);
                        if (*v51)
                        {
                          sub_1E40B40C8(v59);
                        }

                        else
                        {
                        }

                        (v50)(v62, 0);
                        sub_1E40B8BC0(v4);

                        sub_1E41D7FB4(v52);

                        if (!(*(*v2 + 1208))(v53))
                        {

                          goto LABEL_41;
                        }

                        if (!(v16 >> 62))
                        {

                          sub_1E42079D4();
                          type metadata accessor for ViewModel();
                          v54 = v16;
LABEL_39:

                          swift_getObjectType();
                          OUTLINED_FUNCTION_131_0();
                          v55(v2, v54);

                          swift_unknownObjectRelease();
LABEL_41:

                          goto LABEL_29;
                        }

LABEL_49:
                        type metadata accessor for ViewModel();

                        v54 = sub_1E42076C4();

                        goto LABEL_39;
                      }
                    }
                  }

                  else if (!v25)
                  {
                    goto LABEL_21;
                  }

                  goto LABEL_28;
                }

                goto LABEL_47;
              }

LABEL_46:
              __break(1u);
LABEL_47:
              __break(1u);
              goto LABEL_48;
            }

LABEL_44:

            v19 = MEMORY[0x1E6911E60](0, v16);
            goto LABEL_11;
          }
        }

        else
        {
          __break(1u);
        }

        __break(1u);
        goto LABEL_44;
      }
    }
  }

LABEL_29:
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40B8BC0(uint64_t a1)
{
  v2 = v1;
  ViewModelKeys.rawValue.getter(3);
  *&v186 = v4;
  *(&v186 + 1) = v5;
  v6 = OUTLINED_FUNCTION_42_71();
  MEMORY[0x1E69109E0](v6);
  ViewModelKeys.rawValue.getter(13);
  MEMORY[0x1E69109E0]();

  v7 = v186;
  ViewModelKeys.rawValue.getter(27);
  v9 = v8;
  v11 = v10;
  v12 = (*(*v1 + 672))();
  sub_1E3277E60(v9, v11, v12, &v186);

  if (!*(&v187 + 1))
  {

    return sub_1E325F6F0(&v186, &unk_1ECF296E0, &unk_1E4298030);
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  v14 = MEMORY[0x1E69E7CA0];
  v22 = OUTLINED_FUNCTION_2_259(v13, v15, v16, v17, v18, v19, v20, v21, v141, v149, v159, v166, v174, v182);
  if ((OUTLINED_FUNCTION_45_17(v22, v23, v24) & 1) == 0)
  {
  }

  v25 = v182;
  sub_1E3FE381C(v182);
  if (!v26)
  {
    goto LABEL_23;
  }

  v27 = v26;
  v185 = v26;
  sub_1E384EE08(140);
  sub_1E3277E60(v28, v29, v27, &v186);

  if (!*(&v187 + 1))
  {
LABEL_26:

LABEL_27:
    sub_1E325F6F0(&v186, &unk_1ECF296E0, &unk_1E4298030);
  }

  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v38 = OUTLINED_FUNCTION_2_259(v30, v31, v32, v33, v34, v35, v36, v37, v142, v150, v160, v167, v175, v182);
  if ((OUTLINED_FUNCTION_86_6(v38, v39, v40) & 1) == 0)
  {

LABEL_23:
  }

  v176 = v30;
  v41 = v182;
  ViewModelKeys.rawValue.getter(13);
  sub_1E3277E60(v42, v43, v182, &v186);

  if (!*(&v187 + 1))
  {

    goto LABEL_26;
  }

  v52 = OUTLINED_FUNCTION_2_259(v44, v45, v46, v47, v48, v49, v50, v51, v143, v151, v161, v168, v176, v182);
  if ((OUTLINED_FUNCTION_45_17(v52, v53, v54) & 1) == 0)
  {

    goto LABEL_23;
  }

  v184 = v182;
  OUTLINED_FUNCTION_5_0(a1 + 40, v183);
  v55 = *(a1 + 40);
  if (!v55)
  {

    v186 = 0u;
    v187 = 0u;
    goto LABEL_27;
  }

  sub_1E3F9F204(v55, v14 + 8, &v186, v7, *(&v7 + 1));

  if (!*(&v187 + 1))
  {
    goto LABEL_30;
  }

  v64 = OUTLINED_FUNCTION_2_259(v56, v57, v58, v59, v60, v61, v62, v63, v144, v152, v162, v169, v177, v182);
  if ((OUTLINED_FUNCTION_45_17(v64, v65, v66) & 1) == 0)
  {
LABEL_31:
  }

  v67 = v182;
  if (!v182[2])
  {
    goto LABEL_32;
  }

  v170 = v182[2];
  v68 = v182[4];

  sub_1E384EE08(140);
  sub_1E3277E60(v69, v70, v68, &v186);

  if (!*(&v187 + 1))
  {

    sub_1E325F6F0(&v186, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_34;
  }

  OUTLINED_FUNCTION_2_259(v71, v72, v73, v74, v75, v76, v77, v78, v145, v153, (v182 + 4), v170, v178, v182);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_32:

LABEL_34:
    sub_1E3EA0974(v67);
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2F320, &unk_1E429A280);
    v99 = swift_allocObject();
    *(v99 + 16) = xmmword_1E4298AD0;
    ViewModelKeys.rawValue.getter(27);
    *(v99 + 32) = v100;
    *(v99 + 40) = v101;
    v102 = v25[2];

    *&v186 = v102 - 1;
    *(v99 + 48) = sub_1E4207944();
    *(v99 + 56) = v103;
    ViewModelKeys.rawValue.getter(28);
    *(v99 + 64) = v104;
    *(v99 + 72) = v105;
    ViewModelKeys.rawValue.getter(13);
    *(v99 + 80) = v106;
    *(v99 + 88) = v107;
    *&v186 = v99;
    v108 = OUTLINED_FUNCTION_63_0();
    __swift_instantiateConcreteTypeFromMangledNameV2(v108, v109);
    OUTLINED_FUNCTION_1_34();
    sub_1E32752B0(v110, &qword_1ECF2C420, &qword_1E429CDD0, v111);
    OUTLINED_FUNCTION_42_71();
    v112 = sub_1E4205DF4();
    v114 = v113;

    *(&v187 + 1) = v13;
    *&v186 = v184;
    (*(*v2 + 688))(&v182);
    OUTLINED_FUNCTION_152();
    sub_1E3FA012C(&v186, v112, v114, v178);
    v2(&v182, 0);
  }

  v79 = v182;
  ViewModelKeys.rawValue.getter(7);
  sub_1E3277E60(v80, v81, v41, &v186);

  if (!*(&v187 + 1))
  {
LABEL_36:

LABEL_30:

    goto LABEL_26;
  }

  OUTLINED_FUNCTION_2_259(v82, v83, v84, MEMORY[0x1E69E6158], v85, v86, v87, v88, v146, v154, v163, v171, v178, v182);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_20:

    goto LABEL_31;
  }

  ViewModelKeys.rawValue.getter(7);
  sub_1E3277E60(v89, v90, v79, &v186);

  if (!*(&v187 + 1))
  {

    goto LABEL_36;
  }

  OUTLINED_FUNCTION_2_259(v91, v92, v93, MEMORY[0x1E69E6158], v94, v95, v96, v97, v147, v182, v164, v172, v179, v182);
  if ((swift_dynamicCast() & 1) == 0)
  {

    goto LABEL_31;
  }

  if (v155 == v182)
  {
  }

  else
  {
    v156 = sub_1E42079A4();

    if ((v156 & 1) == 0)
    {
      goto LABEL_20;
    }
  }

  sub_1E384EE08(140);
  *&v186 = v115;
  *(&v186 + 1) = v116;
  v117 = OUTLINED_FUNCTION_42_71();
  MEMORY[0x1E69109E0](v117);
  ViewModelKeys.rawValue.getter(13);
  MEMORY[0x1E69109E0]();

  v118 = *(&v186 + 1);
  v157 = v186;
  ViewModelKeys.rawValue.getter(13);
  v120 = v119;
  sub_1E3277E60(v121, v119, v79, &v186);

  if (!*(&v187 + 1))
  {

    sub_1E325F6F0(&v186, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_48;
  }

  v130 = OUTLINED_FUNCTION_2_259(v122, v123, v124, v125, v126, v127, v128, v129, v148, v157, v165, v173, v180, v182);
  if ((OUTLINED_FUNCTION_45_17(v130, v131, v132) & 1) == 0)
  {

    goto LABEL_47;
  }

  sub_1E3EA0974(v182);
  *(&v187 + 1) = v13;
  *&v186 = v184;
  sub_1E3FA012C(&v186, v158, v118, v181);
  v120 = v25[2];
  v27 = v185;

  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    goto LABEL_59;
  }

  if (v120)
  {
    while (v120 <= v25[2])
    {
      v25[v120 + 3] = v27;
LABEL_47:

LABEL_48:
      v133 = 0;
      while (1)
      {
        if (v133 == v173)
        {

          ViewModelKeys.rawValue.getter(27);
          v138 = v137;
          v140 = v139;
          *(&v187 + 1) = v13;
          *&v186 = v25;
          (*(*v2 + 688))(&v182);
          OUTLINED_FUNCTION_152();
          sub_1E3946774(&v186, v138, v140);
          v2(&v182, 0);
        }

        v134 = v133;
        if (v133 >= *(v67 + 16))
        {
          break;
        }

        v133 = 1;
        if (v134)
        {
          v120 = *(v165 + 8 * v134);

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v25 = sub_1E39239C8(0, v25[2] + 1, 1, v25);
          }

          v136 = v25[2];
          v135 = v25[3];
          if (v136 >= v135 >> 1)
          {
            v25 = sub_1E39239C8((v135 > 1), v136 + 1, 1, v25);
          }

          v133 = v134 + 1;
          v25[2] = v136 + 1;
          v25[v136 + 4] = v120;
        }
      }

      __break(1u);
LABEL_59:
      result = sub_1E3FA2A70(v25);
      v25 = result;
      if (!v120)
      {
        goto LABEL_60;
      }
    }
  }

  else
  {
LABEL_60:
    __break(1u);
  }

  __break(1u);
  return result;
}

void sub_1E40B947C(uint64_t a1, uint64_t a2)
{
  ViewModelKeys.rawValue.getter(3);
  sub_1E3277E60(v4, v5, a1, &v28);

  if (!*(&v29 + 1))
  {
    v21 = &v28;
LABEL_21:
    sub_1E325F6F0(v21, &unk_1ECF296E0, &unk_1E4298030);
    return;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v6 = MEMORY[0x1E69E7CA0];
  if ((OUTLINED_FUNCTION_86_6(&v25, &v28, MEMORY[0x1E69E7CA0] + 8) & 1) == 0)
  {
    return;
  }

  *(&v29 + 1) = &type metadata for ViewModelKeys;
  *&v30 = &off_1F5D7BCA8;
  LOBYTE(v28) = 13;
  sub_1E3F9F164(&v28, v25, v6 + 8);

  if (!*(&v26 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    v21 = &v25;
    goto LABEL_21;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110);
  if (swift_dynamicCast())
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
    if (*(*&v24[0] + 16))
    {
      v7 = *(*&v24[0] + 32);

      v8 = 0;
      OUTLINED_FUNCTION_4_4();
      v11 = v10 & v9;
      v13 = (v12 + 63) >> 6;
      if ((v10 & v9) == 0)
      {
        goto LABEL_8;
      }

      do
      {
LABEL_12:
        OUTLINED_FUNCTION_50_56();
        v16 = (*(v7 + 48) + 16 * v15);
        v18 = *v16;
        v17 = v16[1];
        sub_1E328438C(*(v7 + 56) + 32 * v15, v24);
        *&v25 = v18;
        *(&v25 + 1) = v17;
        sub_1E329504C(v24, &v26);

LABEL_13:
        v28 = v25;
        v29 = v26;
        v30 = v27;
        if (!*(&v25 + 1))
        {

          return;
        }

        sub_1E329504C(&v29, &v25);
        OUTLINED_FUNCTION_53();
        v19 = sub_1E38506C8();
        if (v19 != 263)
        {
          v20 = v19;
          sub_1E328438C(&v25, v24);
          if (OUTLINED_FUNCTION_86_6(&v23, v24, v6 + 8))
          {
            v22 = v23;
            type metadata accessor for CollectionViewModel();
            OUTLINED_FUNCTION_81_28();
            swift_allocObject();

            sub_1E40B19D4(v20, v22, a2);

            __swift_destroy_boxed_opaque_existential_1Tm(&v25);
            return;
          }
        }

        __swift_destroy_boxed_opaque_existential_1Tm(&v25);
      }

      while (v11);
LABEL_8:
      while (1)
      {
        v14 = v8 + 1;
        if (__OFADD__(v8, 1))
        {
          break;
        }

        if (v14 >= v13)
        {
          v11 = 0;
          v26 = 0u;
          v27 = 0u;
          v25 = 0u;
          goto LABEL_13;
        }

        v11 = *(v7 + 64 + 8 * v14);
        ++v8;
        if (v11)
        {
          v8 = v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    else
    {
    }
  }

  else
  {
    __swift_destroy_boxed_opaque_existential_1Tm(&v28);
  }
}

uint64_t sub_1E40B977C(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  v4 = (*(v3 + 1040))();
  if (v4)
  {
    v5 = v4;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = sub_1E32AE9B0(v5);
  if (!v6)
  {
LABEL_30:

    return 0;
  }

  v7 = v6;
  v8 = 0;
  v9 = 0;
  while (1)
  {
    if ((v5 & 0xC000000000000001) != 0)
    {
      MEMORY[0x1E6911E60](v8, v5);
    }

    else
    {
      if (v8 >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_38;
      }
    }

    v10 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      __break(1u);
LABEL_36:
      __break(1u);
LABEL_37:
      __break(1u);
LABEL_38:
      __break(1u);
      goto LABEL_39;
    }

    OUTLINED_FUNCTION_8();
    v12 = (*(v11 + 872))();
    if (!v12)
    {
      goto LABEL_28;
    }

    v1 = v12;
    v13 = v12 >> 62;
    if (v12 >> 62)
    {
      if (!sub_1E4207384())
      {
LABEL_27:

LABEL_28:

        goto LABEL_29;
      }
    }

    else if (!*((v12 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_27;
    }

    v2 = a1 - v9;
    if (__OFSUB__(a1, v9))
    {
      goto LABEL_36;
    }

    if ((v2 & 0x8000000000000000) == 0)
    {
      v14 = v13 ? sub_1E4207384() : *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (v2 < v14)
      {
        break;
      }
    }

    if (v13)
    {
      v2 = sub_1E4207384();
    }

    else
    {
      v2 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = __OFADD__(v9, v2);
    v9 += v2;
    if (v15)
    {
      goto LABEL_37;
    }

LABEL_29:
    ++v8;
    if (v10 == v7)
    {
      goto LABEL_30;
    }
  }

  sub_1E34AF4E4(v2, (v1 & 0xC000000000000001) == 0, v1);
  if ((v1 & 0xC000000000000001) == 0)
  {
    v16 = *(v1 + 8 * v2 + 32);

    goto LABEL_34;
  }

LABEL_39:
  v16 = MEMORY[0x1E6911E60](v2, v1);
LABEL_34:

  return v16;
}

void sub_1E40B99B8()
{
  OUTLINED_FUNCTION_60_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  OUTLINED_FUNCTION_8();
  v8 = (*(v7 + 1040))();
  if (v8)
  {
    v16 = OUTLINED_FUNCTION_16_156(v8, v9, v10, v11, v12, v13, v14, v15, v19[6]);
    MEMORY[0x1EEE9AC00](v16);
    v19[2] = v2;
    v19[3] = v6;
    v19[4] = v4;
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0, &unk_1E42A0990);
    v17 = sub_1E4206374();
    sub_1E32752B0(&qword_1ECF3F890, &unk_1ECF3F4C0, &unk_1E42A0990, MEMORY[0x1E69E6328]);
    swift_getWitnessTable();
    sub_1E4206224();
    v18 = OUTLINED_FUNCTION_91_22();
    if (!v0)
    {
      MEMORY[0x1EEE9AC00](v18);
      v19[-2] = v2;
      sub_1E42061B4();

      OUTLINED_FUNCTION_0_286();
      swift_getWitnessTable();
      sub_1E38D2480(v17, &v20);
    }
  }

  OUTLINED_FUNCTION_83_24();
  OUTLINED_FUNCTION_59_39();
}

void sub_1E40B9BA4()
{
  OUTLINED_FUNCTION_60_39();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  OUTLINED_FUNCTION_8();
  v10 = (*(v9 + 872))();
  if (v10)
  {
    v18 = OUTLINED_FUNCTION_16_156(v10, v11, v12, v13, v14, v15, v16, v17, v25[6]);
    MEMORY[0x1EEE9AC00](v18);
    v25[2] = v2;
    v25[3] = v6;
    v25[4] = v4;
    v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C790, &qword_1E42996A0);
    v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF32480, &unk_1E42A9410);
    OUTLINED_FUNCTION_0_32();
    v23 = sub_1E32752B0(v21, &unk_1ECF2C790, &qword_1E42996A0, v22);
    v24 = sub_1E3CA543C(sub_1E40BA944, v25, v19, v2, v20, v23, MEMORY[0x1E69E7288], &v26);
    OUTLINED_FUNCTION_91_22();
    if (!v0)
    {
      *v8 = v24;
    }
  }

  else
  {
    *v8 = sub_1E4206304();
  }

  OUTLINED_FUNCTION_83_24();
  OUTLINED_FUNCTION_59_39();
}

void sub_1E40B9D0C(uint64_t (*a1)(uint64_t))
{
  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1040))();
  if (v3)
  {
    v4 = v3;
    v20 = sub_1E32AE9B0(v3);
    v5 = 0;
    v6 = 0;
    v18 = v4 & 0xFFFFFFFFFFFFFF8;
    v19 = v4 & 0xC000000000000001;
LABEL_3:
    for (i = v5; ; ++i)
    {
      if (v20 == i)
      {

        return;
      }

      if (v19)
      {
        MEMORY[0x1E6911E60](i, v4);
      }

      else
      {
        if (i >= *(v18 + 16))
        {
          goto LABEL_32;
        }
      }

      v5 = i + 1;
      if (__OFADD__(i, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_11_13();
      v9 = (*(v8 + 872))();
      if (v9)
      {
        v10 = v9;
        v11 = v9 & 0xFFFFFFFFFFFFFF8;
        v16 = v4;
        if (v9 >> 62)
        {
          v12 = sub_1E4207384();
        }

        else
        {
          v12 = *((v9 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        for (j = 0; ; ++j)
        {
          if (v12 == j)
          {

            v4 = v16;
            goto LABEL_3;
          }

          if ((v10 & 0xC000000000000001) != 0)
          {
            v14 = MEMORY[0x1E6911E60](j, v10);
          }

          else
          {
            if (j >= *(v11 + 16))
            {
              goto LABEL_34;
            }

            v14 = *(v10 + 8 * j + 32);
          }

          if (__OFADD__(j, 1))
          {
            goto LABEL_33;
          }

          if (v6)
          {
            v6 = 1;
          }

          else
          {
            v15 = a1(v14);
            if (v1)
            {

              return;
            }

            v6 = v15;
          }
        }
      }
    }

    __break(1u);
LABEL_32:
    __break(1u);
LABEL_33:
    __break(1u);
LABEL_34:
    __break(1u);
  }
}

void sub_1E40B9F70()
{
  OUTLINED_FUNCTION_31_1();
  OUTLINED_FUNCTION_8();
  v1 = (*(v0 + 1040))();
  if (v1)
  {
    v2 = v1;
    v3 = sub_1E32AE9B0(v1);
    v4 = 0;
    v5 = 0;
    while (1)
    {
      if (v3 == v4)
      {

        goto LABEL_19;
      }

      if ((v2 & 0xC000000000000001) != 0)
      {
        MEMORY[0x1E6911E60](v4, v2);
      }

      else
      {
        if (v4 >= *((v2 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_21;
        }
      }

      if (__OFADD__(v4, 1))
      {
        break;
      }

      OUTLINED_FUNCTION_8();
      v7 = (*(v6 + 872))();
      if (v7)
      {
        if (v7 >> 62)
        {
          v8 = sub_1E4207384();
        }

        else
        {
          v8 = *((v7 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }
      }

      else
      {
        v8 = 0;
      }

      ++v4;
      v9 = __OFADD__(v5, v8);
      v5 += v8;
      if (v9)
      {
        goto LABEL_22;
      }
    }

    __break(1u);
LABEL_21:
    __break(1u);
LABEL_22:
    __break(1u);
  }

  else
  {
LABEL_19:
    OUTLINED_FUNCTION_25_2();
  }
}

uint64_t sub_1E40BA0C4(void **a1, uint64_t a2)
{
  v6 = *a1;

  result = sub_1E40BA308(v6, a2);
  if (v2)
  {

    return v3;
  }

  if (v8)
  {
    v3 = v6[2];

    return v3;
  }

  v3 = result;
  v29 = 0;
  if (!__OFADD__(result, 1))
  {
    for (i = result + 5; ; ++i)
    {
      v10 = i - 4;
      v11 = v6[2];
      if (i - 4 == v11)
      {

        return v3;
      }

      if (i - 4 >= v11)
      {
        break;
      }

      v12 = v6[i];

      ViewModelKeys.rawValue.getter(7);
      if (*(v12 + 16) && (v15 = sub_1E327D33C(v13, v14), (v16 & 1) != 0))
      {
        sub_1E328438C(*(v12 + 56) + 32 * v15, &v27);
      }

      else
      {
        v27 = 0u;
        v28 = 0u;
      }

      if (*(&v28 + 1))
      {
        v17 = swift_dynamicCast();
        v18 = v17 == 0;
        if (v17)
        {
          v19 = v25;
        }

        else
        {
          v19 = 0;
        }

        if (v18)
        {
          v20 = 0;
        }

        else
        {
          v20 = v26;
        }
      }

      else
      {
        sub_1E325F6F0(&v27, &unk_1ECF296E0, &unk_1E4298030);
        v19 = 0;
        v20 = 0;
      }

      v21 = sub_1E3AB391C(v19, v20, a2);

      if ((v21 & 1) == 0)
      {
        if (v10 != v3)
        {
          if ((v3 & 0x8000000000000000) != 0)
          {
            goto LABEL_35;
          }

          v22 = v6[2];
          if (v3 >= v22)
          {
            goto LABEL_36;
          }

          if (v10 >= v22)
          {
            goto LABEL_37;
          }

          v23 = v6[v3 + 4];
          v24 = v6[i];

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v6 = sub_1E3FA2A70(v6);
          }

          v6[v3 + 4] = v24;

          if (v10 >= v6[2])
          {
            goto LABEL_38;
          }

          v6[i] = v23;

          *a1 = v6;
        }

        ++v3;
      }
    }

    __break(1u);
LABEL_35:
    __break(1u);
LABEL_36:
    __break(1u);
LABEL_37:
    __break(1u);
LABEL_38:
    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40BA308(uint64_t a1, uint64_t a2)
{
  v3 = 0;
  v4 = *(a1 + 16);
  v5 = a1 + 32;
  while (1)
  {
    if (v4 == v3)
    {
      v16 = 0;
      goto LABEL_19;
    }

    v6 = *(v5 + 8 * v3);

    ViewModelKeys.rawValue.getter(7);
    if (*(v6 + 16) && (v9 = sub_1E327D33C(v7, v8), (v10 & 1) != 0))
    {
      sub_1E328438C(*(v6 + 56) + 32 * v9, &v20);
    }

    else
    {
      v20 = 0u;
      v21 = 0u;
    }

    if (*(&v21 + 1))
    {
      v11 = swift_dynamicCast();
      v12 = v11 == 0;
      v13 = v11 ? v18 : 0;
      v14 = v12 ? 0 : v19;
    }

    else
    {
      sub_1E325F6F0(&v20, &unk_1ECF296E0, &unk_1E4298030);
      v13 = 0;
      v14 = 0;
    }

    v15 = sub_1E3AB391C(v13, v14, a2);

    if (v15)
    {
      break;
    }

    ++v3;
  }

  v16 = v3;
LABEL_19:

  return v16;
}

uint64_t sub_1E40BA468(uint64_t a1)
{
  v2 = *(a1 + 24);
  if (v2)
  {
    return sub_1E3AB391C(*(a1 + 16), v2, *(v1 + 16));
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E40BA484@<X0>(uint64_t *a1@<X0>, char *a2@<X8>)
{
  v4 = *(v2 + 16);
  v5 = *a1;
  v6 = a1[1];
  OUTLINED_FUNCTION_8();
  result = (*(v6 + 40))(v7, v6);
  if (result)
  {
    v10 = v9;
    ObjectType = swift_getObjectType();
    v12 = (*(v10 + 8))(v5, v6, v4, ObjectType, v10);
    result = swift_unknownObjectRelease();
  }

  else
  {
    v12 = 3;
  }

  *a2 = v12;
  return result;
}

double sub_1E40BA55C(char a1)
{
  v3 = v1[3];
  v4 = v1[4];
  OUTLINED_FUNCTION_5_0(v1[2] + 16, v18);
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v7 = Strong;
    OUTLINED_FUNCTION_5_0(v3 + 16, v17);
    v8 = swift_weakLoadStrong();
    if (v8)
    {
      v9 = v8;
      v10 = sub_1E40B193C(v16);
      if (*v11)
      {
        sub_1E37CC6E0(v9);
      }

      (v10)(v16, 0);
      if (a1)
      {
        OUTLINED_FUNCTION_12_6();
        if ((*(v12 + 1208))())
        {
          v14 = v13;
          ObjectType = swift_getObjectType();
          (*(v14 + 56))(v7, v9, ObjectType, v14);
          swift_unknownObjectRelease();
        }
      }

      if (v4)
      {
        v4(a1 & 1);
      }
    }
  }

  return result;
}

uint64_t sub_1E40BA6B4@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  v4 = *a1;
  ViewModelKeys.rawValue.getter(34);
  v6 = v5;
  v8 = v7;
  v13[3] = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  v13[0] = v4;
  v9 = *(*v2 + 688);

  v10 = v9(v12);
  sub_1E3946774(v13, v6, v8);
  result = v10(v12, 0);
  *a2 = 0;
  return result;
}

uint64_t sub_1E40BA7E8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(v2 + 16);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return __swift_storeEnumTagSinglePayload(a2, 0, 1, v4);
}

_BYTE *storeEnumTagSinglePayload for CollectionAppearanceType(_BYTE *result, unsigned int a2, unsigned int a3)
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

uint64_t sub_1E40BA944(void *a1, void *a2)
{
  result = (*(v2 + 24))(*a1);
  if (v3)
  {
    *a2 = v3;
  }

  return result;
}

uint64_t sub_1E40BA980(uint64_t result, uint64_t a2, unint64_t a3)
{
  v5 = result;
  v6 = a3 >> 62;
  if (a3 >> 62)
  {
    result = sub_1E4207384();
    v7 = result;
    if (!result)
    {
      return a3;
    }
  }

  else
  {
    v7 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v7)
    {
      return a3;
    }
  }

  if (v5)
  {
    result = sub_1E32AE9B0(a3);
    if (result > a2)
    {
      __break(1u);
    }

    else
    {
      if (!v6)
      {
        type metadata accessor for CollectionGroupViewModel();
        swift_arrayInitWithCopy();
        return a3;
      }

      if (v7 >= 1)
      {
        sub_1E32752B0(&qword_1EE23B578, &unk_1ECF3F4C0, &unk_1E42A0990, MEMORY[0x1E69E6340]);
        for (i = 0; i != v7; ++i)
        {
          __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3F4C0, &unk_1E42A0990);
          v9 = sub_1E38CF91C(v12, i, a3);
          v11 = *v10;

          (v9)(v12, 0);
          *(v5 + 8 * i) = v11;
        }

        return a3;
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_1E40BAB08(uint64_t a1, uint64_t a2, uint64_t a3)
{
  v9 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_20;
  }

  v3 = a3;
  v6 = a2;
  v10 = *v4;
  v4 = (*v4 & 0xFFFFFFFFFFFFFF8);
  v7 = v4 + 4;
  v5 = &v4[a1 + 4];
  type metadata accessor for CollectionGroupViewModel();
  result = swift_arrayDestroy();
  v12 = __OFSUB__(v3, v9);
  v9 = v3 - v9;
  if (v12)
  {
LABEL_20:
    __break(1u);
    goto LABEL_21;
  }

  if (!v9)
  {
    goto LABEL_17;
  }

  v8 = v10 >> 62;
  if (!(v10 >> 62))
  {
    result = v4[2];
    goto LABEL_6;
  }

LABEL_21:
  result = sub_1E4207384();
LABEL_6:
  v13 = result - v6;
  if (__OFSUB__(result, v6))
  {
    __break(1u);
LABEL_23:
    __break(1u);
    goto LABEL_24;
  }

  v14 = (v5 + 8 * v3);
  v15 = &v7[v6];
  if (v14 != v15 || &v15[8 * v13] <= v14)
  {
    memmove(v14, v15, 8 * v13);
  }

  if (v8)
  {
    result = sub_1E4207384();
  }

  else
  {
    result = v4[2];
  }

  if (__OFADD__(result, v9))
  {
    goto LABEL_23;
  }

  v4[2] = result + v9;
LABEL_17:
  if (v3 > 0)
  {
LABEL_24:
    __break(1u);
  }

  return result;
}

uint64_t sub_1E40BAC18(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

double sub_1E40BAC60(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  if (swift_weakLoadStrong())
  {
    v5 = [objc_opt_self() sharedMonitor];
    sub_1E3280A90(0, &qword_1EE23AEF0, off_1E8728218);
    sub_1E3A60E60();
    v6 = sub_1E4206614();
    [v5 addObserver:a1 forEventDescriptors:v6 viewController:0];
  }

  return result;
}

uint64_t OUTLINED_FUNCTION_58_40()
{

  return swift_arrayDestroy();
}

void OUTLINED_FUNCTION_88_21(void *a1, uint64_t a2, uint64_t a3, const char *a4)
{

  _os_log_impl(a1, v4, v5, a4, v6, 0xCu);
}

uint64_t OUTLINED_FUNCTION_91_22()
{
}

uint64_t sub_1E40BADF8()
{
  v0 = sub_1E4205BF4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v9 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  (*(v2 + 104))(v6, *MEMORY[0x1E69D3D88], v0, v4);
  v7 = sub_1E4205BE4();
  (*(v2 + 8))(v6, v0);
  return v7;
}

uint64_t sub_1E40BAEE8()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E40BAF5C@<X0>(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  result = (*(**a1 + 2432))();
  *a2 = result;
  return result;
}

uint64_t sub_1E40BAFDC(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E40BB04C()
{
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8, &qword_1E42EAA28);
  sub_1E4200644();
  return swift_endAccess();
}

uint64_t sub_1E40BB0C0(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8B0, &unk_1E42EAA30);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  v6 = MEMORY[0x1EEE9AC00](v5);
  (*(v4 + 16))(&v9 - v7, a1, v2, v6);
  swift_beginAccess();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8, &qword_1E42EAA28);
  sub_1E4200654();
  swift_endAccess();
  return (*(v4 + 8))(a1, v2);
}

uint64_t sub_1E40BB1E8()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2120))())
  {
    OUTLINED_FUNCTION_8();
    v2 = (*(v1 + 1216))() ^ 1;
  }

  else
  {
    v2 = 0;
  }

  return v2 & 1;
}

double sub_1E40BB260()
{
  sub_1E3F94408();
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 2480))())
  {
    OUTLINED_FUNCTION_8();
    (*(v1 + 1192))();
  }

  OUTLINED_FUNCTION_8();
  v3 = (*(v2 + 1520))();
  switch(v5)
  {
    case 1:

      break;
    case 2:
      sub_1E3827608(v3, v4, 2);
      break;
    case 3:
      break;
    default:
      sub_1E3827608(v3, v4, 0);
      break;
  }

  OUTLINED_FUNCTION_8();
  (*(v6 + 2432))();
  sub_1E3DF7884();

  return result;
}

double sub_1E40BB3B8()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA80, &qword_1E42A0930);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v36 - v5;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2D2B0, &unk_1E429D3D0);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = v36 - v8;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF3DA90, &unk_1E42982A0);
  OUTLINED_FUNCTION_0_10();
  v46 = v11;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v12);
  v14 = v36 - v13;
  v15.n128_f64[0] = sub_1E3F942F0();
  v16 = (*(*v0 + 1096))(v15);
  if (v17)
  {
    v19 = v16;
    v20 = v17;
    v36[1] = sub_1E4205004();
    v21 = sub_1E4204FF4();
    v22 = sub_1E4204FB4();
    v41 = v19;
    v23 = v22;

    v47 = v23;
    sub_1E32ADE38();
    v39 = v20;
    v24 = sub_1E4206A04();
    v45 = v1;
    v25 = v24;
    v48 = v24;
    v42 = sub_1E42069A4();
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v42);
    v43 = v6;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C08, &unk_1E42E3A90);
    v44 = v3;
    v40 = MEMORY[0x1E695BED8];
    sub_1E32752B0(&qword_1EE28A210, &qword_1ECF28C08, &unk_1E42E3A90, MEMORY[0x1E695BED8]);
    v38 = sub_1E32ADF08(&qword_1EE23B1E0, sub_1E32ADE38, MEMORY[0x1E69E8028]);
    sub_1E42007D4();
    sub_1E32ADF50(v9);

    swift_allocObject();
    swift_weakInit();
    v37 = MEMORY[0x1E695BE98];
    sub_1E32752B0(&qword_1EE28A2A0, &unk_1ECF3DA90, &unk_1E42982A0, MEMORY[0x1E695BE98]);
    sub_1E4200844();

    (*(v46 + 8))(v14, v10);
    OUTLINED_FUNCTION_4_264();
    sub_1E42004C4();
    swift_endAccess();

    v26 = sub_1E4204FF4();
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B550, &unk_1E42A0970);
    v27 = sub_1E4205484();
    OUTLINED_FUNCTION_0_10();
    v29 = v28;
    v30 = (*(v28 + 80) + 32) & ~*(v28 + 80);
    v31 = swift_allocObject();
    *(v31 + 16) = xmmword_1E4297BE0;
    (*(v29 + 104))(v31 + v30, *MEMORY[0x1E69D3B20], v27);
    v32 = sub_1E4204FE4();

    v47 = v32;
    v33 = sub_1E4206A04();
    v48 = v33;
    __swift_storeEnumTagSinglePayload(v9, 1, 1, v42);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3DAA0, &qword_1E42E3AA0);
    sub_1E32752B0(&qword_1EE28A1E0, &qword_1ECF3DAA0, &qword_1E42E3AA0, v40);
    v34 = v43;
    sub_1E42007D4();
    sub_1E32ADF50(v9);

    swift_allocObject();
    swift_weakInit();
    sub_1E32752B0(&qword_1EE28A290, &unk_1ECF3DA80, &qword_1E42A0930, v37);
    v35 = v45;
    sub_1E4200844();

    (*(v44 + 8))(v34, v35);
    OUTLINED_FUNCTION_4_264();
    sub_1E42004C4();
    swift_endAccess();
  }

  return result;
}

double sub_1E40BB9B4(uint64_t a1, uint64_t a2)
{
  v2 = sub_1E4205754();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v17 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v17 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v13 = Strong;
    v14 = sub_1E42056A4();
    sub_1E4205044();

    (*(v4 + 104))(v7, *MEMORY[0x1E69D3B98], v2);
    sub_1E32ADF08(&qword_1EE23B680, MEMORY[0x1E69D3BB8], MEMORY[0x1E69D3BC0]);
    LOBYTE(v14) = sub_1E4205E84();
    v15 = *(v4 + 8);
    v15(v7, v2);
    v16 = (v15)(v10, v2);
    if ((v14 & 1) == 0)
    {
      (*(*v13 + 2432))(v16);
      sub_1E3DF7DE8();

      sub_1E3FE3B24();
    }
  }

  return result;
}

double sub_1E40BBBE4(uint64_t *a1)
{
  v1 = *a1;
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {

    sub_1E3FE48F4(v1);
  }

  return result;
}

uint64_t sub_1E40BBC5C(char a1)
{
  sub_1E3F94378(a1);
  v2 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel_cancellables;
  swift_beginAccess();
  *(v1 + v2) = MEMORY[0x1E69E7CD0];
}

void sub_1E40BBD08()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8, &qword_1E42EAA28);
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v8 - v5;
  *(v0 + OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel_cancellables) = MEMORY[0x1E69E7CD0];
  v7 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  type metadata accessor for BaseballClockViewModel(0);
  v8[1] = sub_1E3DF8228();
  sub_1E4200634();
  (*(v3 + 32))(v0 + v7, v6, v1);
  sub_1E3F90D94();
}

uint64_t sub_1E40BBE3C()
{

  v1 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8, &qword_1E42EAA28);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E40BBEB4()
{
  sub_1E3F92F20();
  v1 = v0;

  v2 = OBJC_IVAR____TtC8VideosUI33SportsBaseballScoreboardViewModel__baseballClockViewModel;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8A8, &qword_1E42EAA28);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(v1 + v2);
  return v1;
}

uint64_t sub_1E40BBF2C()
{
  v0 = sub_1E40BBEB4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t type metadata accessor for SportsBaseballScoreboardViewModel(uint64_t a1)
{
  result = qword_1EE2918C8;
  if (!qword_1EE2918C8)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E40BBFD4(uint64_t a1)
{
  sub_1E40BC074(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E40BC074(uint64_t a1)
{
  if (!qword_1EE28A010)
  {
    type metadata accessor for BaseballClockViewModel(255);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1EE28A010);
    }
  }
}

double sub_1E40BC114(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout;
  swift_beginAccess();
  *(v1 + v3) = a1;

  return result;
}

void sub_1E40BC1CC(void *a1)
{
  v4 = *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
  *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView] = a1;
  v2 = *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
  v3 = a1;
  [v1 vui:v2 addSubview:v4 oldView:?];
  [v1 vui_setNeedsLayout];
}

void sub_1E40BC260(uint64_t a1, double a2, double a3)
{
  v4 = v3;
  v5 = a1;
  v106.receiver = v4;
  v106.super_class = type metadata accessor for FeaturedLockupCell();
  objc_msgSendSuper2(&v106, sel_vui_layoutSubviews_computationOnly_, v5 & 1, a2, a3);
  if ((v5 & 1) == 0)
  {
    v8 = (v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
    v9 = MEMORY[0x1E69E7D40];
    if ((*(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 16) & 1) == 0 && *v8 == a2 && v8[1] == a3)
    {
      goto LABEL_25;
    }

    type metadata accessor for LayoutGrid();
    v10 = sub_1E3A256EC();
    v11 = OUTLINED_FUNCTION_5_245();
    if (!v11)
    {
      __break(1u);
LABEL_61:
      __break(1u);
      goto LABEL_62;
    }

    v12 = v11;
    v13 = [v11 overlayView];

    if (!v13)
    {
LABEL_25:
      if (![objc_opt_self() isPad] || (v38 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize), v39 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 8), v40 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize + 16), OUTLINED_FUNCTION_4_265(), (v40 & 1) == 0) && (v38 == v41 ? (v43 = v39 == v42) : (v43 = 0), v43))
      {
LABEL_47:
        OUTLINED_FUNCTION_4_265();
        *v8 = v68;
        *(v8 + 1) = v69;
        *(v8 + 16) = 0;
        v70 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView);
        if (!v70)
        {
          return;
        }

        v105 = a3;
        v71 = *((*v9 & *v4) + 0x80);
        v72 = v70;
        if (!v71() || (, , OUTLINED_FUNCTION_12_6(), (*(v73 + 152))(&v108), v75 = *(&v108 + 1), v74 = *&v108, v77 = *(&v109 + 1), v76 = *&v109, , (v110 & 1) != 0))
        {
          v74 = *MEMORY[0x1E69DDCE0];
          v75 = *(MEMORY[0x1E69DDCE0] + 8);
          v76 = *(MEMORY[0x1E69DDCE0] + 16);
          v77 = *(MEMORY[0x1E69DDCE0] + 24);
        }

        v98 = v77;
        [v72 vui:a2 - sub_1E3952BE0(v74 sizeThatFits:{v75, v76, v77), 0.0}];
        OUTLINED_FUNCTION_4_265();
        [v4 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        v101 = v79;
        v102 = v78;
        v99 = v81;
        v100 = v80;
        sub_1E3952BE0(v74, v75, v76, v77);
        OUTLINED_FUNCTION_4_265();
        [v4 vuiIsRTL];
        VUIRectWithFlippedOriginRelativeToBoundingRectWithCondition();
        v83 = v82;
        v85 = v84;
        v87 = v86;
        v89 = v88;
        type metadata accessor for LayoutGrid();
        v90 = sub_1E3A256EC();
        v91 = sub_1E3A24FDC(v90);
        v93 = v101;
        v92 = v102;
        if ((v91 & 1) == 0)
        {
          v92 = v83;
          v93 = v85;
        }

        v95 = v99;
        v94 = v100;
        if ((v91 & 1) == 0)
        {
          v94 = v87;
          v95 = v89;
        }

        [v72 setFrame_];
        if (sub_1E3A24FDC(v90))
        {
          v105 = *sub_1E3AE14D0();
        }

        v96 = OUTLINED_FUNCTION_5_245();
        if (v96)
        {
          v97 = v96;
          [v96 setPreferredGradientHeight_];

          return;
        }

        goto LABEL_61;
      }

      v44 = OUTLINED_FUNCTION_5_245();
      if (!v44)
      {
LABEL_62:
        __break(1u);
        goto LABEL_63;
      }

      v45 = v44;
      v46 = [v44 imageView];

      v47 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel);

      if (!v47)
      {
LABEL_46:

        goto LABEL_47;
      }

      OUTLINED_FUNCTION_12_6();
      v49 = *(v48 + 392);

      v51 = 0.0;
      if (v49(v50))
      {
        type metadata accessor for ImageLayout();
        v52 = swift_dynamicCastClass();
        if (v52)
        {

          OUTLINED_FUNCTION_4_265();
          Width = CGRectGetWidth(v111);
          (*(*v52 + 208))(*&Width, 0);

          OUTLINED_FUNCTION_4_265();
          Height = CGRectGetHeight(v112);
          (*(*v52 + 312))(COERCE_CGFLOAT(*&Height), 0);

          v55 = v9;
          v56 = *(*v52 + 2288);

          v58 = v56(v57);
          v9 = v55;
          v51 = v58;
          v60 = v59;

          if (!v46)
          {
            goto LABEL_45;
          }

          goto LABEL_40;
        }
      }

      v60 = 0.0;
      if (!v46)
      {
LABEL_45:

        goto LABEL_46;
      }

LABEL_40:
      objc_opt_self();
      v61 = swift_dynamicCastObjCClass();
      if (v61)
      {
        v62 = v61;
        v104 = v46;
        v63 = sub_1E3C3E520(v47, v51, v60);
        v64 = v63;
        if (!v63 || (v65 = v63, v66 = [v62 imageProxy], v67 = objc_msgSend(v65, sel_isEqual_, v66), v65, v66, (v67 & 1) == 0))
        {
          [v62 setImageProxy_];
          v65 = v64;
        }

        v9 = MEMORY[0x1E69E7D40];
      }

      goto LABEL_45;
    }

    objc_opt_self();
    v14 = swift_dynamicCastObjCClass();
    if (!v14)
    {
LABEL_24:

      goto LABEL_25;
    }

    v17 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_overlayViewModel);
    if (!v17)
    {
LABEL_19:
      v32 = OUTLINED_FUNCTION_5_245();
      if (!v32)
      {
LABEL_63:
        __break(1u);
        goto LABEL_64;
      }

      v33 = v32;
      v34 = [v32 gradientView];

      if (v34)
      {
        type metadata accessor for GradientView();
        v35 = swift_dynamicCastClass();
        if (v35)
        {
          v36 = v35;
          v37 = (*((*v9 & *v4) + 0x80))();
          sub_1E40BDC24(v36, v37);

          goto LABEL_25;
        }
      }

      goto LABEL_24;
    }

    v18 = v14;
    v103 = OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_configuredSizeClass;
    v19 = *(v4 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_configuredSizeClass);
    LOBYTE(v108) = v10;
    if (v19 == 7)
    {
    }

    else
    {
      v107 = v19;
      sub_1E37F99D4(v14, v15, v16);

      v9 = MEMORY[0x1E69E7D40];
      if (sub_1E4205E84())
      {
        goto LABEL_18;
      }
    }

    if (sub_1E373F6E0(*(v17 + 98), 161, v20, v21, v22, v23))
    {
      v24 = OUTLINED_FUNCTION_5_245();
      if (!v24)
      {
LABEL_64:
        __break(1u);
        goto LABEL_65;
      }

      v25 = v24;
      type metadata accessor for UIFactory();
      v110 = 0;
      v108 = 0u;
      v109 = 0u;
      v26 = sub_1E373C4DC();

      v28 = sub_1E393D92C(v27, v18, &v108, 0, v26);

      sub_1E325F748(&v108, &qword_1ECF296C0, &unk_1E429BBE0);
      [v25 setOverlayView_];

      v29 = [v4 featuredView];
      if (!v29)
      {
LABEL_65:
        __break(1u);
        goto LABEL_66;
      }

      v30 = v29;
      v31 = [v29 overlayView];

      v9 = MEMORY[0x1E69E7D40];
      if (!v31)
      {
LABEL_66:
        __break(1u);
        return;
      }

      [v31 vui_setNeedsLayout];

      *(v4 + v103) = v10;
      goto LABEL_19;
    }

LABEL_18:

    goto LABEL_19;
  }
}

void *sub_1E40BCBE0(unsigned __int16 *a1, uint64_t a2, uint64_t a3)
{
  v5 = sub_1E41FFCB4();
  v6 = *(v5 - 1);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v126[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v126[-v10];
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v126[-v13];
  if (v15)
  {
    OUTLINED_FUNCTION_12_6();
    v17 = *(v16 + 488);
    v137 = v18;
    v136 = v18;
    v19 = v17();
    if (v19)
    {
      v20 = v19;
      if (*(v19 + 16))
      {
        OUTLINED_FUNCTION_12_6();
        v22 = (*(v21 + 392))();
        if (v22)
        {
          v23 = v22;
          type metadata accessor for FeaturedLockupCellLayout();
          v24 = swift_dynamicCastClass();
          if (v24)
          {
            v25 = v24;
            v26 = *((*MEMORY[0x1E69E7D40] & *v136) + 0x88);
            swift_retain_n();
            v26(v25);
            v27 = (*v25 + 1560);
            v28 = *v27;

            v133 = v27;
            v134 = v25;
            v132 = v28;
            v8 = (v28)(v29);
            v31 = sub_1E373E010(39, v20, v30);
            v6 = &selRef_alwaysPrefetchAppConfiguration;
            v135 = v23;
            if (v31)
            {
              v32 = v31;
              type metadata accessor for ImageViewModel();
              v33 = swift_dynamicCastClass();
              if (v33)
              {
                v34 = v33;
                v128 = v134[13];
                v129 = v32;

                if (sub_1E373F630(v8, 1, v35))
                {
                  v37 = 25204;
                }

                else if (sub_1E373F630(v8, 0, v36))
                {
                  v37 = 25204;
                }

                else
                {
                  v37 = 29299;
                }

                v5 = v136;
                (*(*v34 + 1024))(v37, 0xE200000000000000, v8);
                v59 = *a3;
                v131 = *(a3 + 8);
                v130 = *(a3 + 16);
                v60 = *(a3 + 33);
                v148 = *(a3 + 17);
                v149 = v60;
                v150[0] = *(a3 + 49);
                v6 = *(a3 + 72);
                *(v150 + 15) = *(a3 + 64);
                v61 = *(a3 + 80);
                sub_1E38F1B60(a3, v146);
                v8 = &selRef_alwaysPrefetchAppConfiguration;
                v62 = [v5 featuredView];
                if (!v62)
                {
                  goto LABEL_78;
                }

                v63 = v62;
                v64 = [v5 featuredView];
                if (!v64)
                {
LABEL_79:
                  __break(1u);
LABEL_80:
                  __break(1u);
                  goto LABEL_81;
                }

                v65 = v64;
                v66 = [v64 imageView];

                v146[0] = v59;
                v146[1] = v131;
                LOBYTE(v146[2]) = v130;
                *(&v146[2] + 1) = v148;
                *(&v146[4] + 1) = v149;
                *(&v146[6] + 1) = v150[0];
                v146[8] = *(v150 + 15);
                v146[9] = v6;
                v147 = v61;
                if (v6 == 1)
                {
                  v67 = 0;
                  v68 = 0;
                  v69 = 0;
                  v145[1] = 0;
                  v145[2] = 0;
                }

                else
                {
                  v67 = swift_allocObject();
                  memcpy((v67 + 16), v146, 0x48uLL);
                  *(v67 + 88) = v6;
                  *(v67 + 96) = v61;
                  v69 = &off_1F5D868A0;
                  v68 = &unk_1F5D869A0;
                }

                v127 = v61;
                v145[0] = v67;
                v145[3] = v68;
                v145[4] = v69;
                type metadata accessor for UIFactory();
                sub_1E38F1B60(v146, v138);
                v70 = sub_1E373C4DC();
                v8 = sub_1E393D92C(v34, v66, v145, 0, v70);

                sub_1E325F748(v145, &qword_1ECF296C0, &unk_1E429BBE0);
                [v63 setImageView_];

                v5 = v136;
                v71 = [v136 featuredView];
                if (!v71)
                {
                  goto LABEL_80;
                }

                v72 = v71;
                v73 = [v71 imageView];

                if (v73)
                {
                  [v73 setVuiUserInteractionEnabled_];
                }

                v74 = v130;
                v75 = (v6 == 1) | v130;
                v76 = v131;
                if (v6 == 1)
                {
                  v77 = 0;
                }

                else
                {
                  v77 = v131;
                }

                if (v6 == 1)
                {
                  v78 = 0;
                }

                else
                {
                  v78 = v59;
                }

                v79 = v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize;
                *v79 = v78;
                *(v79 + 1) = v77;
                v79[16] = v75 & 1;
                v8 = *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel);
                *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_imageViewModel) = v34;

                v138[0] = v59;
                v138[1] = v76;
                v139 = v74;
                v140 = v148;
                v141 = v149;
                *v142 = v150[0];
                *&v142[15] = *(v150 + 15);
                v143 = v6;
                v144 = v127;
                sub_1E325F748(v138, &unk_1ECF31AB0, qword_1E42CD4C0);

                v6 = &selRef_alwaysPrefetchAppConfiguration;
                goto LABEL_41;
              }
            }

            v5 = v136;
            v57 = [v136 featuredView];
            if (!v57)
            {
LABEL_77:
              __break(1u);
LABEL_78:
              __break(1u);
              goto LABEL_79;
            }

            v8 = v57;
            [v57 setImageView_];

LABEL_41:
            v80 = sub_1E373E010(161, v20, v58);
            if (v80)
            {
              v82 = v80;
              v5 = v5;
              v83 = [v5 featuredView];
              if (!v83)
              {
LABEL_73:
                __break(1u);
                goto LABEL_74;
              }

              v84 = v83;
              v8 = OUTLINED_FUNCTION_10_176();

              if (!v8)
              {
LABEL_74:
                __break(1u);
                goto LABEL_75;
              }
            }

            else
            {
              v85 = sub_1E373E010(159, v20, v81);
              if (!v85)
              {
                v113 = OUTLINED_FUNCTION_10_176();
                if (!v113)
                {
LABEL_86:
                  __break(1u);
                  goto LABEL_87;
                }

                v114 = v113;
                [v113 setOverlayView_];

                goto LABEL_49;
              }

              v82 = v85;
              v5 = v5;
              v86 = [v5 featuredView];
              if (!v86)
              {
LABEL_82:
                __break(1u);
                goto LABEL_83;
              }

              v84 = v86;
              v8 = OUTLINED_FUNCTION_10_176();

              if (!v8)
              {
LABEL_83:
                __break(1u);
                goto LABEL_84;
              }
            }

            type metadata accessor for UIFactory();
            v87 = [v8 overlayView];

            v88 = sub_1E373C4DC();
            memset(v146, 0, 40);
            v89 = sub_1E393D92C(v82, v87, v146, 0, v88);

            sub_1E325F748(v146, &qword_1ECF296C0, &unk_1E429BBE0);
            [v84 setOverlayView_];

            *(v5 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_overlayViewModel) = v82;

            v5 = v136;
LABEL_49:
            v8 = a1;
            v90 = sub_1E39C408C();
            if (v90)
            {
              v131 = v90;
              v91 = v5;
              v92 = [v91 featuredView];
              if (!v92)
              {
LABEL_75:
                __break(1u);
                goto LABEL_76;
              }

              v93 = v92;
              v8 = [v91 featuredView];

              if (!v8)
              {
LABEL_76:
                __break(1u);
                goto LABEL_77;
              }

              v94 = [v8 gradientView];

              if (v94)
              {
                type metadata accessor for GradientView();
                v95 = swift_dynamicCastClass();
                if (!v95)
                {
                }
              }

              else
              {
                v95 = 0;
              }

              v138[0] = v95;
              v99 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8C0, &qword_1E42EAA98);
              sub_1E4148C68(sub_1E40BDBE4, v99, v146);
              v100 = v146[0];
              sub_1E40BDC24(v146[0], v134);

              [v93 setGradientView_];
              type metadata accessor for UIFactory();
              v101 = *&v91[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_contentLogoView];
              memset(v146, 0, 40);
              v102 = sub_1E373C4DC();
              v103 = v101;
              v98 = sub_1E393D92C(v131, v101, v146, 0, v102);

              sub_1E325F748(v146, &qword_1ECF296C0, &unk_1E429BBE0);
              v5 = v136;
            }

            else
            {

              v96 = OUTLINED_FUNCTION_10_176();
              if (!v96)
              {
LABEL_81:
                __break(1u);
                goto LABEL_82;
              }

              v97 = v96;
              [v96 setGradientView_];

              v98 = 0;
            }

            v104 = v98;
            v8 = v5;
            sub_1E40BC1CC(v104);
            v105 = v5;
            v106 = [v105 featuredView];
            if (v106)
            {
              v107 = v106;
              v108 = [v106 overlayView];

              v6 = v135;
              if (!v108)
              {

                goto LABEL_65;
              }

              v109 = v132();

              sub_1E3C5F26C(a1, v109);
              if ((v111 & 1) != 0 || (v8 = v110, [v105 vuiOverrideUserInterfaceStyle] == v110))
              {

LABEL_65:

LABEL_66:

                return v137;
              }

              a1 = [v105 featuredView];

              if (a1)
              {
                v112 = [a1 overlayView];

                if (v112)
                {

                  [v112 vui:v8 setOverrideUserInterfaceStyle:?];

                  goto LABEL_66;
                }

                goto LABEL_85;
              }

LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
              goto LABEL_86;
            }

            __break(1u);
            goto LABEL_73;
          }
        }

        else
        {
        }

        sub_1E324FBDC();
        OUTLINED_FUNCTION_12_7();
        v46(v14);

        v47 = sub_1E41FFC94();
        v48 = sub_1E4206814();

        if (os_log_type_enabled(v47, v48))
        {
          v49 = swift_slowAlloc();
          v50 = swift_slowAlloc();
          v146[0] = v50;
          *v49 = 136315138;
          sub_1E384EE08(a1[49]);
          v53 = sub_1E3270FC8(v51, v52, v146);

          *(v49 + 4) = v53;
          OUTLINED_FUNCTION_9_192(&dword_1E323F000, v54, v55, "Featured Cell layout missing for view model type %s");
          __swift_destroy_boxed_opaque_existential_1(v50);
          OUTLINED_FUNCTION_55();
          MEMORY[0x1E69143B0](v49, -1, -1);
        }

        (v6[1])(v14, v5);
        return v137;
      }
    }

    sub_1E324FBDC();
    OUTLINED_FUNCTION_12_7();
    v38(v11);

    v39 = sub_1E41FFC94();
    v40 = sub_1E4206814();

    if (os_log_type_enabled(v39, v40))
    {
      v41 = swift_slowAlloc();
      v42 = swift_slowAlloc();
      v146[0] = v42;
      *v41 = 136315138;
      sub_1E384EE08(a1[49]);
      v45 = sub_1E3270FC8(v43, v44, v146);

      *(v41 + 4) = v45;
      _os_log_impl(&dword_1E323F000, v39, v40, "View model of type [%s] does not have any children, this is an error.", v41, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v42);
      MEMORY[0x1E69143B0](v42, -1, -1);
      OUTLINED_FUNCTION_55();
    }

    (v6[1])(v11, v5);
    return v137;
  }

LABEL_87:
  sub_1E324FBDC();
  OUTLINED_FUNCTION_12_7();
  v137 = v5;
  v115(v8);

  v116 = v8;
  v117 = sub_1E41FFC94();
  v118 = sub_1E4206814();

  if (os_log_type_enabled(v117, v118))
  {
    v119 = swift_slowAlloc();
    v120 = swift_slowAlloc();
    v146[0] = v120;
    *v119 = 136315138;
    sub_1E384EE08(a1[49]);
    v123 = sub_1E3270FC8(v121, v122, v146);

    *(v119 + 4) = v123;
    OUTLINED_FUNCTION_9_192(&dword_1E323F000, v124, v125, "FeaturedLockupCell: Failed to get correct cell for %s");
    __swift_destroy_boxed_opaque_existential_1(v120);
    OUTLINED_FUNCTION_55();
    MEMORY[0x1E69143B0](v119, -1, -1);
  }

  (v6[1])(v116, v137);
  result = sub_1E42076B4();
  __break(1u);
  return result;
}

id sub_1E40BDA20()
{
  OUTLINED_FUNCTION_0_8();
  *(v0 + OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout) = 0;
  v5 = OUTLINED_FUNCTION_0_339(&OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
  v1 = OUTLINED_FUNCTION_2_0();
  return objc_msgSendSuper2(v2, v3, v1, v0, v5);
}

id sub_1E40BDAA4(void *a1)
{
  *&v1[OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_featuredLockupCellLayout] = 0;
  v5.receiver = v1;
  v5.super_class = OUTLINED_FUNCTION_0_339(&OBJC_IVAR____TtC8VideosUI18FeaturedLockupCell_previousSize);
  v3 = objc_msgSendSuper2(&v5, sel_initWithCoder_, a1);

  if (v3)
  {
  }

  return v3;
}

id sub_1E40BDB48()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FeaturedLockupCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E40BDBE4@<X0>(void *a1@<X8>)
{
  type metadata accessor for GradientView();
  result = [objc_allocWithZone(swift_getObjCClassFromMetadata()) init];
  *a1 = result;
  return result;
}

uint64_t sub_1E40BDC24(uint64_t result, void *a2)
{
  if (a2)
  {
    v3 = a2[16];
    v4 = (*(*a2 + 1560))();
    v5 = sub_1E3A24FDC(v4);
    (*(*a2 + 1752))(v5 & 1);
    v6 = sub_1E396030C(v3);
    v7 = (*(*a2 + 552))(v9, v6);
    MEMORY[0x1EEE9AC00](v7);
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B3C0, &qword_1E42B9710);
    return sub_1E4148DE0(sub_1E40BDD84);
  }

  return v8;
}

void sub_1E40BDD84(double *a1)
{
  v2 = *a1;
  v3 = a1[1];
  v4 = a1[2];
  v5 = a1[3];
  v6 = [*(v1 + 16) vuiLayer];
  if (v6)
  {
    v7 = v6;
    [v6 setCornerRadius_];
  }
}

unint64_t sub_1E40BDE28()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

unint64_t sub_1E40BDE74(char a1)
{
  result = 0x676E69646E616CLL;
  switch(a1)
  {
    case 1:
      result = 0x73746C75736572;
      break;
    case 2:
      result = 0x6C75736552706F74;
      break;
    case 3:
      result = 0xD000000000000018;
      break;
    case 4:
      result = 0x73746E6968;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40BDF1C(unsigned __int8 a1, char a2)
{
  v2 = 0x676E69646E616CLL;
  v3 = 0xE700000000000000;
  v4 = a1;
  v5 = 0x676E69646E616CLL;
  switch(v4)
  {
    case 1:
      v5 = 0x73746C75736572;
      break;
    case 2:
      v5 = 0x6C75736552706F74;
      v3 = 0xEA00000000007374;
      break;
    case 3:
      v5 = 0xD000000000000018;
      v3 = 0x80000001E4290C50;
      break;
    case 4:
      v3 = 0xE500000000000000;
      v5 = 0x73746E6968;
      break;
    default:
      break;
  }

  v6 = 0xE700000000000000;
  switch(a2)
  {
    case 1:
      v2 = 0x73746C75736572;
      break;
    case 2:
      v2 = 0x6C75736552706F74;
      v6 = 0xEA00000000007374;
      break;
    case 3:
      v2 = 0xD000000000000018;
      v6 = 0x80000001E4290C50;
      break;
    case 4:
      v6 = 0xE500000000000000;
      v2 = 0x73746E6968;
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

uint64_t sub_1E40BE098(char a1)
{
  sub_1E4207B44();
  sub_1E40BDE74(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40BE104(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40BE1DC(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40BDE74(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E40BE23C@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40BDE28();
  *a1 = result;
  return result;
}

unint64_t sub_1E40BE26C@<X0>(unint64_t *a1@<X8>)
{
  result = sub_1E40BDE74(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40BE2C8()
{
  OUTLINED_FUNCTION_156();
  OUTLINED_FUNCTION_8_203();
  v2 = swift_allocObject();
  sub_1E40BE30C(v1, v0);
  return v2;
}

uint64_t sub_1E40BE30C(uint64_t a1, void *a2)
{
  v3 = v2;
  *(v2 + 16) = 0u;
  v6 = v2 + 16;
  *(v2 + 32) = 0u;
  v7 = (v2 + 32);
  *(v2 + 48) = 0;
  v8 = v2 + 48;
  *(v2 + 56) = 0u;
  v9 = v2 + 56;
  *(v2 + 104) = 0;
  v10 = (v2 + 104);
  *(v2 + 72) = 0u;
  *(v2 + 88) = 0u;
  sub_1E327F454(a2, &v126);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28BC0, &unk_1E42980F0);
  type metadata accessor for SearchFragmentRequestContext(0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);
LABEL_13:

    return v3;
  }

  v11 = sub_1E3C7E1CC(0);
  sub_1E3277E60(v11, v12, a1, &v126);

  if (!*(&v127 + 1))
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    sub_1E329505C(&v126);
    return v3;
  }

  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
  if ((swift_dynamicCast() & 1) == 0)
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_13;
  }

  v112 = v10;
  v14 = v125[0];
  if (!*(v125[0] + 16))
  {
    __swift_destroy_boxed_opaque_existential_1(a2);

    goto LABEL_13;
  }

  v113 = a1;
  v110 = a2;
  v111 = v125[0];
  v16 = *(v125[0] + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query);
  v15 = *(v125[0] + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_query + 8);
  OUTLINED_FUNCTION_3_0(v6, v125);
  *(v3 + 16) = v16;
  *(v3 + 24) = v15;
  v17 = v111;

  *(&v127 + 1) = v13;
  *&v126 = v14;
  v109 = v14;

  v18 = sub_1E3A7C9B4(15, &v126, 0);
  __swift_destroy_boxed_opaque_existential_1(&v126);
  if (v18)
  {
    v19 = *(*v111 + 232);

    v21 = v19(v20);
    (*(*v18 + 656))(v21);
  }

  OUTLINED_FUNCTION_3_0(v7, v124);
  *v7 = v18;

  if ([objc_opt_self() isSearchEnabled])
  {
    v22 = *(v3 + 32);
    *(&v127 + 1) = &unk_1F5D5DE28;
    v128 = &off_1F5D5CA58;
    LOBYTE(v126) = 2;
    type metadata accessor for TemplateViewModel(0);

    v23 = j__OUTLINED_FUNCTION_18();
    v24 = sub_1E39C3418(&v126, v23 & 1, v22);

    __swift_destroy_boxed_opaque_existential_1(&v126);
    OUTLINED_FUNCTION_3_0(v8, &v118);
    *(v3 + 48) = v24 & 1;
    v25 = v113;
    v123[0] = sub_1E39BD118(0xD000000000000019, 0x80000001E4287480, v113);
    v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2EB10, &qword_1E42B9000);
    sub_1E4148F70(sub_1E40BECC0, 0, v26, &type metadata for NaturalLanguageSearchData, &v126);

    v27 = v128;
    v107 = v126;
    v108 = v127;
    OUTLINED_FUNCTION_3_0(v9, &v114);
    v28 = *(v3 + 56);
    v29 = *(v3 + 64);
    v30 = *(v3 + 72);
    v31 = *(v3 + 80);
    *(v3 + 56) = v107;
    *(v3 + 72) = v108;
    *(v3 + 88) = v27;
    sub_1E3DBFA40(v28, v29, v30, v31);
  }

  else
  {
    v25 = v113;
  }

  type metadata accessor for PagePerformanceReporter();
  v33 = sub_1E3C69AA0(v25);
  OUTLINED_FUNCTION_3_0(v6 + 24, v123);
  *(v6 + 24) = v33;

  if (!*(v25 + 16) || (v34 = v25, v35 = sub_1E327D33C(0x69726F6765746163, 0xEA00000000007365), (v36 & 1) == 0) || (sub_1E328438C(*(v25 + 56) + 32 * v35, &v126), __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2E9B0, qword_1E4298110), (swift_dynamicCast() & 1) == 0))
  {
    v86 = MEMORY[0x1E69E7CC0];
LABEL_48:

    OUTLINED_FUNCTION_3_0(v112, &v126);
    *v112 = v86;

    v87 = sub_1E40BDE74(*(v17 + OBJC_IVAR____TtC8VideosUI28SearchFragmentRequestContext_requestType));
    v89 = v88;
    if (v87 == 0x6C75736552706F74 && v88 == 0xEA00000000007374)
    {

      v37 = v110;
    }

    else
    {
      v91 = v87;
      v92 = sub_1E42079A4();

      v37 = v110;
      if ((v92 & 1) == 0)
      {
        if (v91 == 0xD000000000000018 && 0x80000001E4290C50 == v89)
        {
        }

        else
        {
          v94 = sub_1E42079A4();

          if ((v94 & 1) == 0)
          {
            __swift_destroy_boxed_opaque_existential_1(v110);

            goto LABEL_69;
          }
        }
      }
    }

    v95 = type metadata accessor for CollectionViewModel();
    v34 = sub_1E3DD5014(13, v109, 0, v95);

    if (v34)
    {
      result = sub_1E32AE9B0(v34);
      if (result)
      {
        if ((v34 & 0xC000000000000001) != 0)
        {
          goto LABEL_73;
        }

        if (*((v34 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          v96 = *(v34 + 32);

          goto LABEL_65;
        }

        __break(1u);
        return result;
      }

      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    else
    {
      __swift_destroy_boxed_opaque_existential_1(v37);
    }

    goto LABEL_69;
  }

  v103 = 0;
  v37 = 0;
  v38 = v121;
  v105 = "eId";
  v106 = MEMORY[0x1E69E7CC0];
  v39 = *(v121 + 16);
  v104 = 0xD000000000000017;
  while (1)
  {
    if (v39 == v37)
    {

      v86 = v106;
      goto LABEL_48;
    }

    if (v37 >= *(v38 + 16))
    {
      break;
    }

    v40 = *(v38 + 8 * v37 + 32);
    if (!*(v40 + 16))
    {
      goto LABEL_30;
    }

    v34 = v40;
    v41 = sub_1E327D33C(25705, 0xE200000000000000);
    if (v42 & 1) != 0 && (v43 = OUTLINED_FUNCTION_7_238(v41), OUTLINED_FUNCTION_2_260(v43, v44, v45, v46, v47, v48, v49, v50, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121), (swift_dynamicCast()))
    {
      v34 = v122;
      if (!*(v40 + 16) || (*&v107 = v121, *&v108 = v122, v51 = sub_1E327D33C(0x656C746974, 0xE500000000000000), v34 = v108, (v52 & 1) == 0) || (v53 = OUTLINED_FUNCTION_7_238(v51), OUTLINED_FUNCTION_2_260(v53, v54, v55, v56, v57, v58, v59, v60, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121), (swift_dynamicCast() & 1) == 0))
      {

        goto LABEL_29;
      }

      v100 = v122;
      v101 = v121;
      if (*(v40 + 16) && (v61 = sub_1E327D33C(0x7363697274656DLL, 0xE700000000000000), (v62 & 1) != 0))
      {
        OUTLINED_FUNCTION_7_238(v61);
        v63 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2A770, &qword_1E42992B0);
        OUTLINED_FUNCTION_2_260(v63, v64, v65, v63, v66, v67, v68, v69, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121);
        v70 = swift_dynamicCast();
        v71 = v121;
        if (!v70)
        {
          v71 = 0;
        }

        v99 = v71;
      }

      else
      {
        v99 = 0;
      }

      if (*(v40 + 16) && (v72 = sub_1E327D33C(v104, v105 | 0x8000000000000000), (v73 & 1) != 0) && (v74 = OUTLINED_FUNCTION_7_238(v72), OUTLINED_FUNCTION_2_260(v74, v75, v76, v77, v78, v79, v80, v81, v97, v98, v99, v100, v101, v102, v103, v104, v105, v106, v107, *(&v107 + 1), v108, *(&v108 + 1), v109, v110, v111, v112, v113, v114, v115, v116, v117, v118, v119, v120, v121), (swift_dynamicCast() & 1) != 0))
      {
        v97 = v122;
        type metadata accessor for Accessibility();
        sub_1E40A7DC8();
        v102 = v82;
        v98 = v83;
      }

      else
      {

        v102 = 0;
        v98 = 0;
      }

      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v106 = sub_1E40BEDF4(0, *(v106 + 2) + 1, 1, v106);
      }

      v34 = *(v106 + 2);
      v84 = *(v106 + 3);
      if (v34 >= v84 >> 1)
      {
        v106 = sub_1E40BEDF4((v84 > 1), v34 + 1, 1, v106);
      }

      ++v37;
      *(v106 + 2) = v34 + 1;
      v85 = &v106[56 * v34];
      *(v85 + 4) = v107;
      *(v85 + 5) = v108;
      *(v85 + 6) = v101;
      *(v85 + 7) = v100;
      *(v85 + 8) = v102;
      *(v85 + 9) = v98;
      *(v85 + 10) = v99;
    }

    else
    {
LABEL_29:

LABEL_30:
      ++v37;
    }
  }

  __break(1u);
LABEL_73:
  v96 = MEMORY[0x1E6911E60](0, v34);
LABEL_65:

  __swift_destroy_boxed_opaque_existential_1(v37);
  OUTLINED_FUNCTION_3_0(v6 + 80, &v121);
  *(v6 + 80) = v96;
LABEL_69:

  return v3;
}

double sub_1E40BEC78@<D0>(uint64_t a1@<X8>)
{

  sub_1E3EA3AA4(v2, v5);
  result = *v5;
  v4 = v5[1];
  *a1 = v5[0];
  *(a1 + 16) = v4;
  *(a1 + 32) = v6;
  return result;
}

__n128 sub_1E40BECC0@<Q0>(__n128 *a1@<X8>)
{
  sub_1E40BEC78(&v5);
  v2 = v6;
  result = v7;
  v4 = v8;
  a1->n128_u64[0] = v5;
  a1->n128_u64[1] = v2;
  a1[1] = result;
  a1[2].n128_u64[0] = v4;
  return result;
}

double sub_1E40BED18()
{
  OUTLINED_FUNCTION_8_203();
  v0 = swift_allocObject();
  result = 0.0;
  *(v0 + 16) = 0u;
  *(v0 + 32) = 0u;
  *(v0 + 48) = 0;
  *(v0 + 56) = 0u;
  *(v0 + 72) = 0u;
  *(v0 + 88) = 0u;
  *(v0 + 104) = 0;
  return result;
}

uint64_t *sub_1E40BED50()
{

  sub_1E3DBFA40(v0[7], v0[8], v0[9], v0[10]);

  return v0;
}

uint64_t sub_1E40BEDA0()
{
  sub_1E40BED50();
  v0 = OUTLINED_FUNCTION_8_203();

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

uint64_t sub_1E40BEDCC@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40BE2C8();
  *a1 = result;
  return result;
}

char *sub_1E40BEDF4(char *result, int64_t a2, char a3, char *a4)
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
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F8D0, &unk_1E42EAC60);
    v10 = swift_allocObject();
    v11 = _swift_stdlib_malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 56);
  }

  else
  {
    v10 = MEMORY[0x1E69E7CC0];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  if (v5)
  {
    if (v10 != a4 || &v13[56 * v8] <= v12)
    {
      memmove(v12, v13, 56 * v8);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v10;
}

unint64_t sub_1E40BEF10(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = sub_1E40BEF38(a1, a2, a3);
  *(a1 + 8) = result;
  return result;
}

unint64_t sub_1E40BEF38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F8C8;
  if (!qword_1ECF3F8C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8C8);
  }

  return result;
}

_BYTE *sub_1E40BEF8C(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

double sub_1E40BF0B0(char a1, double a2, double a3, double a4, double a5, double a6)
{
  result = (a2 - a6) * 0.5;
  if ((a1 & 2) == 0)
  {
    return a4;
  }

  return result;
}

int8x16_t sub_1E40BF0E0(unint64_t a1, double a2, double a3, float64x2_t a4, float64_t a5)
{
  a4.f64[1] = a5;
  __asm { FMOV            V3.2D, #0.5 }

  result = vbslq_s8(vceqzq_s64(vandq_s8(vdupq_n_s64(a1), xmmword_1E42EAC70)), *v5, vmulq_f64(vsubq_f64(a4, *(v5 + 16)), _Q3));
  *v5 = result;
  return result;
}

unint64_t sub_1E40BF130(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F8D8;
  if (!qword_1ECF3F8D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8D8);
  }

  return result;
}

unint64_t sub_1E40BF188(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F8E0;
  if (!qword_1ECF3F8E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8E0);
  }

  return result;
}

unint64_t sub_1E40BF1E0(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F8E8;
  if (!qword_1ECF3F8E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8E8);
  }

  return result;
}

unint64_t sub_1E40BF238(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F8F0;
  if (!qword_1ECF3F8F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8F0);
  }

  return result;
}

unint64_t sub_1E40BF29C()
{
  result = qword_1ECF3F8F8;
  if (!qword_1ECF3F8F8)
  {
    type metadata accessor for SportsPeriodSelectionViewModel(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F8F8);
  }

  return result;
}

double sub_1E40BF314(uint64_t a1, char a2)
{
  v4 = sub_1E4201AB4();
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (a2)
  {
    return *&a1;
  }

  v9 = sub_1E4206804();
  v10 = sub_1E42026D4();
  if (os_log_type_enabled(v10, v9))
  {
    v11 = swift_slowAlloc();
    v12 = swift_slowAlloc();
    v15 = *&v12;
    *v11 = 136315138;
    *(v11 + 4) = sub_1E3270FC8(0x74616F6C464743, 0xE700000000000000, &v15);
    _os_log_impl(&dword_1E323F000, v10, v9, "Accessing Environment<%s>'s value outside of being installed on a View. This will always read the default value and will not update.", v11, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v12);
    MEMORY[0x1E69143B0](v12, -1, -1);
    MEMORY[0x1E69143B0](v11, -1, -1);
  }

  sub_1E4201AA4();
  swift_getAtKeyPath();
  v13 = sub_1E38D5FEC(a1, 0);
  (*(v5 + 8))(v7, v4, v13);
  return v15;
}

uint64_t sub_1E40BF554@<X0>(uint64_t a1@<X8>)
{
  *(a1 + 16) = swift_getKeyPath();
  *(a1 + 24) = 0;
  v2 = *(type metadata accessor for SportsPeriodSelectionView(0) + 24);
  *(a1 + v2) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  swift_storeEnumTagMultiPayload();
  type metadata accessor for SportsPeriodSelectionViewModel(0);
  sub_1E40BF29C();
  OUTLINED_FUNCTION_27_0();
  result = sub_1E42010C4();
  *a1 = result;
  *(a1 + 8) = v4;
  return result;
}

double sub_1E40BF5F4()
{
  v1 = v0;
  v2 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = (v7 - v6);
  type metadata accessor for SportsPeriodSelectionView(0);
  sub_1E3746E10(v8);
  v9 = sub_1E3B02A04();
  v10 = *(v4 + 8);
  v10(v8, v2);
  if (v9)
  {
    v11 = sub_1E40BF314(*(v1 + 16), *(v1 + 24));
    return v11 + v11;
  }

  else
  {
    sub_1E3746E10(v8);
    v13 = sub_1E3B028AC();
    v10(v8, v2);
    result = sub_1E40BF314(*(v1 + 16), *(v1 + 24));
    if (v13)
    {
      return result * 1.5;
    }
  }

  return result;
}

uint64_t sub_1E40BF730@<X0>(uint64_t a1@<X8>)
{
  v71 = a1;
  sub_1E4201FA4();
  OUTLINED_FUNCTION_0_10();
  v72 = v3;
  v73 = v2;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v70 = v5 - v4;
  sub_1E4203654();
  OUTLINED_FUNCTION_0_10();
  v68 = v7;
  v69 = v6;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v67 = v9 - v8;
  v63 = sub_1E42012F4();
  OUTLINED_FUNCTION_0_10();
  v61 = v10;
  MEMORY[0x1EEE9AC00](v11);
  OUTLINED_FUNCTION_5();
  v60 = (v13 - v12);
  v14 = OUTLINED_FUNCTION_27_0();
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(v14, v15);
  OUTLINED_FUNCTION_0_10();
  v57 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v56 - v19;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F908, &qword_1E42EAEF0);
  OUTLINED_FUNCTION_0_10();
  v59 = v21;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v56 - v23;
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F910, &qword_1E42EAEF8) - 8;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v26);
  v28 = &v56 - v27;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F918, &qword_1E42EAF00);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v29);
  v64 = &v56 - v30;
  v65 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F920, &qword_1E42EAF08);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v31);
  v66 = &v56 - v32;
  v74 = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F928, &unk_1E42EAF10);
  sub_1E40C0030();
  sub_1E4202AE4();
  *&v75 = sub_1E42036E4();
  v33 = sub_1E32752B0(&qword_1ECF3F938, &qword_1ECF3F900, &qword_1E42EAEE8, MEMORY[0x1E697CD20]);
  v34 = MEMORY[0x1E69815C0];
  v35 = MEMORY[0x1E6981568];
  sub_1E4203324();

  v36 = v20;
  v37 = v28;
  (*(v57 + 8))(v36, v16);
  *&v75 = v16;
  *(&v75 + 1) = v34;
  v38 = v60;
  *&v76 = v33;
  *(&v76 + 1) = v35;
  v39 = v61;
  swift_getOpaqueTypeConformance2();
  v40 = v58;
  sub_1E4202E14();
  (*(v59 + 8))(v24, v40);
  KeyPath = swift_getKeyPath();
  v42 = &v37[*(v25 + 44)];
  *v42 = KeyPath;
  *(v42 + 1) = 0;
  v42[16] = 0;
  type metadata accessor for SportsPeriodSelectionView(0);
  sub_1E3746E10(v38);
  v43 = v63;
  v44 = (*(v39 + 88))(v38, v63);
  if (v44 != *MEMORY[0x1E697E6C8] && v44 != *MEMORY[0x1E697E6D0] && v44 != *MEMORY[0x1E697E6D8] && v44 != *MEMORY[0x1E697E6E0])
  {
    (*(v39 + 8))(v38, v43);
  }

  sub_1E40BF5F4();
  sub_1E40C0350();
  sub_1E4203DA4();
  sub_1E4200D94();
  v48 = v64;
  sub_1E3782004();
  v49 = &v48[*(v62 + 36)];
  v50 = v76;
  *v49 = v75;
  *(v49 + 1) = v50;
  *(v49 + 2) = v77;
  (*(v68 + 104))(v67, *MEMORY[0x1E69814C8], v69);
  v51 = sub_1E4203774();
  v52 = v66;
  sub_1E3782004();
  v53 = (v52 + *(v65 + 36));
  *v53 = v51;
  v53[1] = 0x4024000000000000;
  v53[2] = 0;
  v53[3] = 0;
  v54 = v70;
  sub_1E4201F94();
  LOBYTE(v48) = sub_1E4202704();
  sub_1E42026F4();
  sub_1E42026F4();
  if (sub_1E42026F4() != v48)
  {
    sub_1E42026F4();
  }

  sub_1E40C04E4();
  sub_1E4203244();
  (*(v72 + 8))(v54, v73);
  return sub_1E32E3694(v52);
}

void sub_1E40BFE4C()
{
  OUTLINED_FUNCTION_31_1();
  v0 = OUTLINED_FUNCTION_173();
  v1 = type metadata accessor for SportsPeriodSelectionView(v0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  sub_1E40C00E0();
  swift_getKeyPath();
  sub_1E40C09D0();
  swift_allocObject();
  sub_1E40C0A28();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F958, &qword_1E42EAFA0);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2F428, &qword_1E42AE420);
  sub_1E32752B0(&qword_1ECF3F9A0, &qword_1ECF3F958, &qword_1E42EAFA0, MEMORY[0x1E69E6338]);
  OUTLINED_FUNCTION_3_120();
  sub_1E32752B0(v3, &qword_1ECF2F428, &qword_1E42AE420, v4);
  sub_1E4203B34();
  OUTLINED_FUNCTION_25_2();
}

unint64_t sub_1E40C0030()
{
  result = qword_1ECF3F930;
  if (!qword_1ECF3F930)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F928, &unk_1E42EAF10);
    sub_1E32752B0(&qword_1EE288638, &qword_1ECF2F428, &qword_1E42AE420, MEMORY[0x1E697D680]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F930);
  }

  return result;
}

uint64_t sub_1E40C00E0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

void sub_1E40C0154()
{
  OUTLINED_FUNCTION_31_1();
  v0 = OUTLINED_FUNCTION_173();
  v1 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(v0);
  v2 = OUTLINED_FUNCTION_8_0(v1);
  MEMORY[0x1EEE9AC00](v2);
  v3 = type metadata accessor for SportsPeriodSelectionView(0);
  v4 = OUTLINED_FUNCTION_8_0(v3);
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_7_239();
  sub_1E40C09D0();
  OUTLINED_FUNCTION_9_193();
  sub_1E40C09D0();
  OUTLINED_FUNCTION_12_170();
  v5 = swift_allocObject();
  OUTLINED_FUNCTION_21_120(v5);
  sub_1E40C0A28();
  sub_1E4203964();
  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E40C02EC@<X0>(uint64_t a1@<X8>)
{
  result = sub_1E4201994();
  *a1 = result;
  *(a1 + 8) = v3 & 1;
  return result;
}

void sub_1E40C0350()
{
  OUTLINED_FUNCTION_31_1();
  type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_5();
  v5 = v4 - v3;
  v6 = sub_1E40C00E0();
  v7 = *(v6 + 16);
  if (v7)
  {
    v8 = 0;
    v9 = v6 + ((*(v1 + 80) + 32) & ~*(v1 + 80));
    v10 = *(v1 + 72);
    while (1)
    {
      OUTLINED_FUNCTION_0_340();
      v11 = sub_1E40C09D0();
      sub_1E32822E0(v11, v12, v13);
      v14 = *(sub_1E4207194() + 16);

      if (v14 <= 2)
      {
        v15 = sub_1E4206024() <= 12 ? 1 : 2;
      }

      else
      {
        v15 = 2;
      }

      sub_1E40C0A8C(v5, type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod);
      v16 = __OFADD__(v8, v15);
      v8 += v15;
      if (v16)
      {
        break;
      }

      v9 += v10;
      if (!--v7)
      {
        goto LABEL_10;
      }
    }

    __break(1u);
  }

  else
  {
LABEL_10:

    OUTLINED_FUNCTION_25_2();
  }
}

unint64_t sub_1E40C04E4()
{
  result = qword_1ECF3F940;
  if (!qword_1ECF3F940)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F920, &qword_1E42EAF08);
    sub_1E40C0570();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F940);
  }

  return result;
}

unint64_t sub_1E40C0570()
{
  result = qword_1ECF3F948;
  if (!qword_1ECF3F948)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F918, &qword_1E42EAF00);
    sub_1E40C05FC();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F948);
  }

  return result;
}

unint64_t sub_1E40C05FC()
{
  result = qword_1ECF3F950;
  if (!qword_1ECF3F950)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F910, &qword_1E42EAEF8);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F908, &qword_1E42EAEF0);
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F900, &qword_1E42EAEE8);
    sub_1E32752B0(&qword_1ECF3F938, &qword_1ECF3F900, &qword_1E42EAEE8, MEMORY[0x1E697CD20]);
    swift_getOpaqueTypeConformance2();
    swift_getOpaqueTypeConformance2();
    sub_1E32752B0(&qword_1ECF3AF50, &qword_1ECF3AF58, &qword_1E42EAF50, MEMORY[0x1E6980A18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F950);
  }

  return result;
}

uint64_t sub_1E40C07F0(uint64_t a1)
{
  v2 = OUTLINED_FUNCTION_173();
  v3 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(v2);
  sub_1E32822E0(v3, v4, v5);

  v6 = sub_1E4202C44();
  v8 = v7;
  v10 = v9;
  v11 = objc_opt_self();
  v12 = [v11 blackColor];
  v13 = [v11 whiteColor];
  v14 = [v11 vui:v12 dynamicColorWithLightColor:v13 darkColor:?];

  sub_1E4203644();
  v15 = sub_1E4202B94();
  v17 = v16;
  v19 = v18;
  v21 = v20;

  sub_1E37434B8(v6, v8, v10 & 1);

  *v1 = v15;
  *(v1 + 8) = v17;
  *(v1 + 16) = v19 & 1;
  *(v1 + 24) = v21;
  return result;
}

uint64_t sub_1E40C0958@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40C00E0();
  *a1 = result;
  return result;
}

uint64_t sub_1E40C09D0()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E40C0A28()
{
  OUTLINED_FUNCTION_155();
  v1(0);
  OUTLINED_FUNCTION_2();
  v2 = OUTLINED_FUNCTION_32_0();
  v3(v2);
  return v0;
}

uint64_t sub_1E40C0A8C(uint64_t a1, void (*a2)(void))
{
  a2(0);
  OUTLINED_FUNCTION_10();
  (*(v3 + 8))(a1);
  return a1;
}

uint64_t sub_1E40C0AE0(uint64_t a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

void sub_1E40C0B50()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F968, &unk_1E42EAFB8);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  v43 = v35 - v3;
  v42 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  OUTLINED_FUNCTION_0_10();
  v35[1] = v4;
  MEMORY[0x1EEE9AC00](v5);
  v36 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v7);
  v41 = v35 - v8;
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3EAF8, &unk_1E42E6720);
  MEMORY[0x1EEE9AC00](v9);
  v11 = v35 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v40 = v35 - v15;
  v16 = *(v1 + 16);
  if (v16)
  {
    v39 = *(v13 + 48);
    v17 = v1 + ((*(v14 + 80) + 32) & ~*(v14 + 80));
    v18 = MEMORY[0x1E69E7CC0];
    v37 = *(v14 + 72);
    v38 = v11;
    do
    {
      v19 = v40;
      sub_1E378249C();
      sub_1E378249C();
      v20 = *(v19 + v39);
      sub_1E385CD18();
      v22 = v21;
      v24 = v23;
      sub_1E325F7A8(v19, &qword_1ECF3EAF8, &unk_1E42E6720);
      if (v24)
      {
        OUTLINED_FUNCTION_4_266();
        v25 = v18;
        v26 = v42;
        v27 = v36;
        sub_1E40C0A28();
        *&v27[*(v26 + 24)] = v20;
        v28 = &v27[*(v26 + 20)];
        *v28 = v22;
        *(v28 + 1) = v24;
        OUTLINED_FUNCTION_0_340();
        v18 = v25;
        sub_1E40C0A28();
        v29 = 0;
      }

      else
      {
        OUTLINED_FUNCTION_10_177();
        v29 = 1;
      }

      v30 = v42;
      v31 = v43;
      __swift_storeEnumTagSinglePayload(v43, v29, 1, v42);
      if (__swift_getEnumTagSinglePayload(v31, 1, v30) == 1)
      {
        sub_1E325F7A8(v43, &qword_1ECF3F968, &unk_1E42EAFB8);
      }

      else
      {
        OUTLINED_FUNCTION_0_340();
        sub_1E40C0A28();
        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v18 = sub_1E40C13A4(0, v18[2] + 1, 1, v18);
        }

        v33 = v18[2];
        v32 = v18[3];
        if (v33 >= v32 >> 1)
        {
          v18 = sub_1E40C13A4((v32 > 1), v33 + 1, 1, v18);
        }

        v18[2] = v33 + 1;
        OUTLINED_FUNCTION_0_340();
        sub_1E40C0A28();
      }

      v17 += v37;
      --v16;
    }

    while (v16);
  }

  else
  {
    v18 = MEMORY[0x1E69E7CC0];
  }

  sub_1E40C0F0C(v18);
  sub_1E40C0AE0(v34);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E40C0F0C(void *a1)
{
  v2 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  v14 = *(v2 - 8);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v14 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v5);
  v15 = &v14 - v6;
  v7 = a1[2];
  if (v7 < 2)
  {
    return;
  }

  v8 = 0;
  v9 = v7 >> 1;
  for (i = v7 - 1; ; --i)
  {
    if (v8 == i)
    {
      goto LABEL_10;
    }

    v11 = a1[2];
    if (v8 >= v11)
    {
      break;
    }

    v12 = (*(v14 + 80) + 32) & ~*(v14 + 80);
    v13 = *(v14 + 72);
    sub_1E40C09D0();
    if (i >= v11)
    {
      goto LABEL_13;
    }

    sub_1E40C09D0();
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      a1 = sub_1E40C1390(a1);
    }

    sub_1E40C1978(v4, a1 + v12 + v13 * v8);
    if (i >= a1[2])
    {
      goto LABEL_14;
    }

    sub_1E40C1978(v15, a1 + v12 + v13 * i);
LABEL_10:
    if (v9 == ++v8)
    {
      return;
    }
  }

  __break(1u);
LABEL_13:
  __break(1u);
LABEL_14:
  __break(1u);
}

uint64_t sub_1E40C10E0()
{
  v0 = OUTLINED_FUNCTION_32_0();
  __swift_instantiateConcreteTypeFromMangledNameV2(v0, v1);
  sub_1E32752B0(&qword_1ECF3F978, &qword_1ECF3F970, &qword_1E42EAFC8, MEMORY[0x1E695BF88]);
  return sub_1E42006B4();
}

uint64_t sub_1E40C1170()
{
  v1 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel__periods;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F960, &unk_1E42EAFA8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);

  v3 = *(*v0 + 48);
  v4 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v3, v4);
}

uint64_t sub_1E40C1224()
{
  v0 = swift_allocObject();
  sub_1E40C125C();
  return v0;
}

uint64_t sub_1E40C125C()
{
  v1 = v0;
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F960, &unk_1E42EAFA8);
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = v11 - v6;
  v8 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel__periods;
  v11[1] = MEMORY[0x1E69E7CC0];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F958, &qword_1E42EAFA0);
  sub_1E4200634();
  (*(v4 + 32))(v1 + v8, v7, v2);
  v9 = OBJC_IVAR____TtC8VideosUI30SportsPeriodSelectionViewModel_jumpToPeriodSubject;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F970, &qword_1E42EAFC8);
  swift_allocObject();
  *(v1 + v9) = sub_1E4200544();
  return v1;
}

void *sub_1E40C13A4(void *result, int64_t a2, char a3, uint64_t a4)
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
  v9 = sub_1E40C17A8(v8, v7);
  v10 = *(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8);
  if (v5)
  {
    v11 = (*(v10 + 80) + 32) & ~*(v10 + 80);
    sub_1E40C18A4(a4 + v11, v8, v9 + v11);
    *(a4 + 16) = 0;
  }

  else
  {
    swift_arrayInitWithCopy();
  }

  return v9;
}

void sub_1E40C14D4()
{
  sub_1E40C1558(319);
  if (v1 <= 0x3F)
  {
    v12 = v0;
    sub_1E40C15BC();
    if (v2 <= 0x3F)
    {
      sub_1E38D5D68(319);
      if (v4 <= 0x3F)
      {
        OUTLINED_FUNCTION_14_181(v3, v4, v5, v6, v7, v8, v9, v10, *v11, v11[4], 0, 0, v12);
      }
    }
  }
}

void sub_1E40C1558(uint64_t a1)
{
  if (!qword_1ECF3F980)
  {
    type metadata accessor for SportsPeriodSelectionViewModel(255);
    sub_1E40BF29C();
    v1 = sub_1E42010F4();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3F980);
    }
  }
}

void sub_1E40C15BC()
{
  if (!qword_1ECF3F988)
  {
    v0 = sub_1E4200B94();
    if (!v1)
    {
      atomic_store(v0, &qword_1ECF3F988);
    }
  }
}

void sub_1E40C1614(uint64_t a1)
{
  sub_1E40C16B0(319);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

void sub_1E40C16B0(uint64_t a1)
{
  if (!qword_1ECF3F990)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3F958, &qword_1E42EAFA0);
    v1 = sub_1E4200694();
    if (!v2)
    {
      atomic_store(v1, &qword_1ECF3F990);
    }
  }
}

uint64_t sub_1E40C173C()
{
  result = type metadata accessor for SportsPlayPeriod(319);
  if (v1 <= 0x3F)
  {
    OUTLINED_FUNCTION_14_181(result, v1, v2, v3, v4, v5, v6, v7, *v8, v8[4], 0, 0, result);
    return 0;
  }

  return result;
}

void *sub_1E40C17A8(uint64_t a1, uint64_t a2)
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

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3F998, &qword_1E42EB0B8);
  v4 = *(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8);
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

uint64_t sub_1E40C18A4(unint64_t a1, uint64_t a2, unint64_t a3)
{
  if (a3 < a1 || (result = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0), a1 + *(*(result - 8) + 72) * a2 <= a3))
  {
    type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);

    return swift_arrayInitWithTakeFrontToBack();
  }

  else if (a3 != a1)
  {

    return swift_arrayInitWithTakeBackToFront();
  }

  return result;
}

uint64_t sub_1E40C1978(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0);
  (*(*(v4 - 8) + 40))(a2, a1, v4);
  return a2;
}

void sub_1E40C19DC()
{
  type metadata accessor for SportsPeriodSelectionView(0);

  sub_1E40C0154();
}

uint64_t objectdestroyTm_63()
{
  OUTLINED_FUNCTION_31_1();
  v1 = (type metadata accessor for SportsPeriodSelectionView(0) - 8);
  v2 = (*(*v1 + 80) + 16) & ~*(*v1 + 80);
  v3 = *(*v1 + 64);
  v4 = *(*(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8) + 80);
  v5 = (v2 + v3 + v4) & ~v4;
  v6 = v0 + v2;

  sub_1E38D5FEC(*(v6 + 16), *(v6 + 24));
  v7 = v1[8];
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF28C18, &qword_1E42982F0);
  if (swift_getEnumCaseMultiPayload() == 1)
  {
    sub_1E42012F4();
    OUTLINED_FUNCTION_10();
    (*(v8 + 8))(v6 + v7);
  }

  else
  {
  }

  v9 = v0 + v5;
  v10 = type metadata accessor for SportsPlayPeriod(0);
  v11 = v10[5];
  sub_1E4205784();
  OUTLINED_FUNCTION_10();
  (*(v12 + 8))(v0 + v5 + v11);
  v13 = v10[6];
  v14 = sub_1E4205B24();
  if (!__swift_getEnumTagSinglePayload(v0 + v5 + v13, 1, v14))
  {
    (*(*(v14 - 8) + 8))(v9 + v13, v14);
  }

  v15 = v10[7];
  sub_1E4205BF4();
  OUTLINED_FUNCTION_10();
  (*(v16 + 8))(v9 + v15);

  OUTLINED_FUNCTION_25_2();

  return swift_deallocObject();
}

uint64_t sub_1E40C1CB0()
{
  v1 = type metadata accessor for SportsPeriodSelectionView(0);
  OUTLINED_FUNCTION_8_0(v1);
  v3 = (*(v2 + 80) + 16) & ~*(v2 + 80);
  v5 = *(v4 + 64);
  v6 = *(type metadata accessor for SportsPeriodSelectionViewModel.NavigationPeriod(0) - 8);
  v7 = v0 + ((v3 + v5 + *(v6 + 80)) & ~*(v6 + 80));

  return sub_1E40C077C(v0 + v3, v7);
}

uint64_t sub_1E40C1D7C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  swift_beginAccess();
  return *v1;
}

uint64_t sub_1E40C1DC8(uint64_t a1, uint64_t a2, char a3)
{
  v7 = v3 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  result = swift_beginAccess();
  *v7 = a1;
  *(v7 + 8) = a2;
  *(v7 + 16) = a3 & 1;
  return result;
}

id sub_1E40C1EC0(void *a1)
{
  v3 = &v1[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize];
  *v3 = 0;
  *(v3 + 1) = 0;
  v3[16] = 1;
  *&v1[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_wrappedView] = a1;
  v7.receiver = v1;
  v7.super_class = type metadata accessor for FixedSizeBadgeView();
  v4 = a1;
  v5 = objc_msgSendSuper2(&v7, sel_initWithFrame_, 0.0, 0.0, 0.0, 0.0);
  [v5 vui:v4 addSubview:0 oldView:{v7.receiver, v7.super_class}];

  return v5;
}

void sub_1E40C1F8C()
{
  v1 = v0 + OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_badgeSize;
  *v1 = 0;
  *(v1 + 8) = 0;
  *(v1 + 16) = 1;
  sub_1E42076B4();
  __break(1u);
}

double sub_1E40C2018(char a1, double a2, double a3)
{
  v11.receiver = v3;
  v11.super_class = type metadata accessor for FixedSizeBadgeView();
  objc_msgSendSuper2(&v11, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  v9 = *&v3[OBJC_IVAR____TtC8VideosUI18FixedSizeBadgeView_wrappedView];
  [v3 bounds];
  [v9 setFrame_];
  return v8;
}

id sub_1E40C214C()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for FixedSizeBadgeView();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

id sub_1E40C2190(char a1)
{
  v1 = MEMORY[0x1E6979DB0];
  v2 = MEMORY[0x1E6979DA8];
  if (a1 != 3)
  {
    v2 = MEMORY[0x1E6979DA0];
  }

  if (a1 != 2)
  {
    v1 = v2;
  }

  return *v1;
}

unint64_t sub_1E40C21C4()
{
  v0 = sub_1E4207784();

  if (v0 >= 5)
  {
    return 5;
  }

  else
  {
    return v0;
  }
}

uint64_t sub_1E40C2210(char a1)
{
  result = 0x6669636570736E75;
  switch(a1)
  {
    case 1:
      result = 0x7261656E696CLL;
      break;
    case 2:
      result = 0x6C6169646172;
      break;
    case 3:
      result = 0x63696E6F63;
      break;
    case 4:
      result = 0x6163697470696C65;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1E40C22C0(char a1)
{
  sub_1E4207B44();
  sub_1E40C2210(a1);
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E40C232C(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E40C2404(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E40C2210(a2);
  sub_1E4206014();

  return sub_1E4207BA4();
}

unint64_t sub_1E40C2464@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E40C21C4();
  *a1 = result;
  return result;
}

uint64_t sub_1E40C2494@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E40C2210(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E40C24D0()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 48) = v0;
  type metadata accessor for CGPoint(0);
  *(v1 + 56) = v3;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_5_246();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E40C2554()
{
  type metadata accessor for CGPoint(0);
  sub_1E3C2C6A0();
  return v1;
}

uint64_t sub_1E40C25F0()
{
  v2 = __swift_coroFrameAllocStub(0x40uLL);
  *(OUTLINED_FUNCTION_18_4(v2) + 48) = v0;
  type metadata accessor for CGPoint(0);
  *(v1 + 56) = v3;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_5_246();
  return OUTLINED_FUNCTION_40_1();
}

void sub_1E40C266C(_OWORD **a1)
{
  v2 = *(*a1 + 16);
  v1 = *a1;
  *(v1 + 24) = **a1;
  v1[40] = v2;
  sub_1E3C2CA00();

  free(v1);
}

uint64_t sub_1E40C2728(void *a1)
{
  *a1 = v1;
  sub_1E3C2C6A0();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t (*sub_1E40C27EC(uint64_t a1))()
{
  *(a1 + 8) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2D3B0, &unk_1E42A9630);
  sub_1E3C2C6A0();
  return sub_1E40C2850;
}

uint64_t sub_1E40C2880(uint64_t *a1, uint64_t *a2)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a1, a2);
  sub_1E3C2C6A0();
  return v3;
}

uint64_t sub_1E40C28D8(uint64_t a1, uint64_t *a2, uint64_t *a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(a2, a3);
  sub_1E3C2CA00();
}

uint64_t (*sub_1E40C2934(uint64_t a1))()
{
  *(a1 + 8) = v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2FC90, &unk_1E42A75C0);
  sub_1E3C2C6A0();
  return sub_1E40C2998;
}

uint64_t sub_1E40C29B0(void *a1, char a2, void (*a3)(__n128))
{
  if ((a2 & 1) == 0)
  {
    return (a3)(*a1);
  }

  (a3)(v4);
}

uint64_t sub_1E40C2A64()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_18_4(v1) + 32) = v0;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

uint64_t sub_1E40C2B1C()
{
  v1 = __swift_coroFrameAllocStub(0x28uLL);
  *(OUTLINED_FUNCTION_18_4(v1) + 32) = v0;
  sub_1E3C2C6A0();
  OUTLINED_FUNCTION_3_138();
  return OUTLINED_FUNCTION_40_1();
}

void *sub_1E40C2B90(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E40C2BCC(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E40C2C64()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  swift_beginAccess();
  v2 = *v1;

  return v2;
}

uint64_t sub_1E40C2CBC(uint64_t a1, uint64_t a2)
{
  v5 = (v2 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  swift_beginAccess();
  *v5 = a1;
  v5[1] = a2;
}

void *sub_1E40C2D6C(uint64_t a1)
{
  v2 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter;
  OUTLINED_FUNCTION_0_12(a1);
  v3 = *(v1 + v2);
  v4 = v3;
  return v3;
}

void sub_1E40C2DA8(uint64_t a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter;
  OUTLINED_FUNCTION_37(a1);
  v4 = *(v1 + v3);
  *(v1 + v3) = a1;
}

uint64_t sub_1E40C2E40()
{
  OUTLINED_FUNCTION_1_300();
  swift_allocObject();
  return sub_1E40C2EAC();
}

uint64_t sub_1E40C2EAC()
{
  OUTLINED_FUNCTION_1_300();
  sub_1E41FE614();
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect) = 0;
  v8 = (v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  *v8 = 0;
  v8[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter) = 0;
  v9 = sub_1E3C2F9A0();
  v10 = *(*v9 + 1728);

  v10(v7, v6, 0);
  (*(*v9 + 1752))(v5, v4, 0);
  (*(*v9 + 1776))(v3);
  (*(*v9 + 1800))(v2);
  (*(*v9 + 1824))(v0);

  return v9;
}

uint64_t sub_1E40C30BC(uint64_t a1)
{
  sub_1E41FE614();
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurEffect) = 0;
  v2 = (v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_blurMaskName);
  *v2 = 0;
  v2[1] = 0;
  *(v1 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter) = 0;

  return sub_1E3C2F9A0();
}

void sub_1E40C3118()
{
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  v3 = *(v0 + OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_compositingFilter);
}

uint64_t sub_1E40C31AC()
{
  v0 = sub_1E3C36C6C();
  v1 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  (*(v2 + 8))(v0 + v1);

  return v0;
}

uint64_t sub_1E40C3240()
{
  v0 = sub_1E40C31AC();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E40C3298(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3F9B8;
  if (!qword_1ECF3F9B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3F9B8);
  }

  return result;
}

unint64_t sub_1E40C32F0()
{
  result = qword_1EE28A440;
  if (!qword_1EE28A440)
  {
    sub_1E41FE624();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE28A440);
  }

  return result;
}

uint64_t sub_1E40C3348@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = OBJC_IVAR____TtC8VideosUI18ViewGradientLayout_id;
  sub_1E41FE624();
  OUTLINED_FUNCTION_2();
  v7 = *(v6 + 16);

  return v7(a1, v3 + v4, v5);
}

uint64_t type metadata accessor for ViewGradientLayout(uint64_t a1)
{
  result = qword_1EE29FC00;
  if (!qword_1EE29FC00)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E40C3410(uint64_t a1)
{
  result = sub_1E41FE624();
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

_BYTE *storeEnumTagSinglePayload for ViewGradientLayout.GradientType(_BYTE *result, unsigned int a2, unsigned int a3)
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

  if (a3 >= 0xFC)
  {
    v5 = v4;
  }

  else
  {
    v5 = 0;
  }

  if (a2 > 0xFB)
  {
    v6 = ((a2 - 252) >> 8) + 1;
    *result = a2 + 4;
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
          *result = a2 + 4;
        }

        break;
    }
  }

  return result;
}

id sub_1E40C3590()
{
  OUTLINED_FUNCTION_0_8();
  v7 = type metadata accessor for ColorBackgroundDecorationView();
  v1 = OUTLINED_FUNCTION_2_0();
  v4 = objc_msgSendSuper2(v2, v3, v1, v0, v7);
  if (*sub_1E41C83E4() == 1)
  {
    v5 = [objc_opt_self() randomColor];
    [v4 setVuiBackgroundColor_];
  }

  else
  {
    [v4 setVuiBackgroundColor_];
  }

  return v4;
}

char *sub_1E40C36F8()
{
  OUTLINED_FUNCTION_0_8();
  v1 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  v13 = type metadata accessor for ColorBackgroundSeparatorDecorationView();
  v3 = OUTLINED_FUNCTION_2_0();
  v6 = objc_msgSendSuper2(v4, v5, v3, v0, v13);
  v7 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  v8 = *&v6[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView];
  [v8 setVuiBackgroundColor_];

  v9 = *&v6[v7];
  v10 = v6;
  [v10 vui:v9 addSubview:0 oldView:?];
  if (*sub_1E41C83E4() == 1)
  {
    v11 = [objc_opt_self() randomColor];
    [v10 setVuiBackgroundColor_];
  }

  else
  {
    [v10 setVuiBackgroundColor_];
    v11 = v10;
  }

  return v10;
}

void sub_1E40C3890()
{
  v1 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView;
  *(v0 + v1) = [objc_allocWithZone(VUIBaseView) init];
  v2 = OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight;
  *(v0 + v2) = *sub_1E418BA90();
  OUTLINED_FUNCTION_0_341("Fatal error", v3, v4, v5, v6, "VideosUI/ColorBackgroundDecorationView.swift");
  __break(1u);
}

double sub_1E40C3920(char a1, double a2, double a3)
{
  v18.receiver = v3;
  v18.super_class = type metadata accessor for ColorBackgroundSeparatorDecorationView();
  objc_msgSendSuper2(&v18, sel_vui_layoutSubviews_computationOnly_, a1 & 1, a2, a3);
  v8 = v7;
  type metadata accessor for LayoutGrid();
  [v3 bounds];
  Width = CGRectGetWidth(v19);
  sub_1E3A258E4(Width);
  v11 = v10;
  v13 = v12;
  [v3 bounds];
  Height = CGRectGetHeight(v20);
  v15 = *&v3[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineHeight];
  [v3 bounds];
  v16 = CGRectGetWidth(v21);
  if ((a1 & 1) == 0)
  {
    [*&v3[OBJC_IVAR____TtC8VideosUI38ColorBackgroundSeparatorDecorationView_lineView] setFrame_];
  }

  return v8;
}

id sub_1E40C3AB8(uint64_t (*a1)(void))
{
  v3.receiver = v1;
  v3.super_class = a1();
  return objc_msgSendSuper2(&v3, sel_dealloc);
}

__n128 sub_1E40C3B00@<Q0>(uint64_t *a1@<X8>)
{
  v2 = type metadata accessor for RoutingTransaction();
  OUTLINED_FUNCTION_58_41();
  v3 = swift_allocObject();
  sub_1E40C42B0();
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = *(v1 + 48);
  v9 = *(v1 + 56);
  *(v3 + 16) = v4;
  *(v3 + 24) = v5;
  *(v3 + 32) = v6;
  *(v3 + 40) = v7;
  *(v3 + 48) = v8;
  *(v3 + 56) = v9;
  v10 = *(v1 + 64);
  v11 = *(v3 + 64);
  *(v3 + 64) = v10;
  sub_1E40D6474(v4, v5, v6, v7, v8, v9, v10);
  OUTLINED_FUNCTION_42_72();
  sub_1E40D60A0(v12, v13, v14, v15, v16, v17, v11);
  if (sub_1E40C40A4())
  {
    sub_1E40C40D8();
  }

  *(v3 + 65) = *(v1 + 65);
  *(v3 + 66) = *(v1 + 66);
  v18 = *(v1 + 72);
  v19 = *(v1 + 80);
  *(v3 + 72) = v18;
  *(v3 + 80) = v19;
  sub_1E34AF604(v18, v19);
  v20 = OUTLINED_FUNCTION_32_0();
  sub_1E34AF594(v20, v21);
  Strong = swift_unknownObjectWeakLoadStrong();
  swift_unknownObjectWeakAssign();

  *(v3 + 96) = *(v1 + 96);
  v23 = *(v1 + 136);
  *(v3 + 104) = *(v1 + 104);
  result = *(v1 + 120);
  *(v3 + 120) = result;
  *(v3 + 136) = v23;
  a1[3] = v2;
  *a1 = v3;
  return result;
}

uint64_t sub_1E40C3CA0()
{
  v5 = 0;
  v6 = 0xE000000000000000;
  v1 = *(v0 + 32);
  v7[0] = *(v0 + 16);
  v7[1] = v1;
  v7[2] = *(v0 + 48);
  v8 = *(v0 + 64);
  sub_1E40C3D78();
  sub_1E40D6B84(v7, v4);
  v2 = OUTLINED_FUNCTION_34();
  MEMORY[0x1E69109E0](v2);

  sub_1E40D6BBC(v7);
  MEMORY[0x1E69109E0](10272, 0xE200000000000000);
  v4[0] = *(v0 + 65);
  sub_1E4207614();
  MEMORY[0x1E69109E0](41, 0xE100000000000000);
  return v5;
}