BOOL sub_23A982414(char *a1, char *a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&unk_27DFAF020, &unk_23AA12300);
  MEMORY[0x28223BE20](v4 - 8);
  v6 = &v21 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v21 - v8;
  v10 = type metadata accessor for ScanItemStrut(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = (&v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v14);
  v16 = &v21 - v15;
  sub_23A8D5194(a1, v9, &unk_27DFAF020, &unk_23AA12300);
  v17 = *(v11 + 48);
  if (v17(v9, 1, v10) == 1)
  {
    v6 = v9;
  }

  else
  {
    sub_23A9826EC(v9, v16, type metadata accessor for ScanItemStrut);
    sub_23A8D5194(a2, v6, &unk_27DFAF020, &unk_23AA12300);
    if (v17(v6, 1, v10) != 1)
    {
      sub_23A9826EC(v6, v13, type metadata accessor for ScanItemStrut);
      v19 = sub_23A8E9A6C(v13, 0.001);
      sub_23A982754(v13, type metadata accessor for ScanItemStrut);
      sub_23A982754(v16, type metadata accessor for ScanItemStrut);
      return !v19;
    }

    sub_23A982754(v16, type metadata accessor for ScanItemStrut);
  }

  sub_23A8D50D0(v6, &unk_27DFAF020, &unk_23AA12300);
  return v17(a1, 1, v10) != 1 || v17(a2, 1, v10) != 1;
}

uint64_t sub_23A9826EC(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_23A982754(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_23A9827E4()
{

  return swift_deallocClassInstance();
}

uint64_t sub_23A982850(unint64_t a1)
{
  v1 = a1;
  v2 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_109;
  }

  for (result = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; result = sub_23AA0D7F4())
  {
    if ((result - 0x2000000000000000) >> 62 != 3)
    {
      __break(1u);
LABEL_111:
      __break(1u);
LABEL_112:
      __break(1u);
LABEL_113:
      __break(1u);
      return result;
    }

    v72 = v1;
    v1 = 4 * result;
    if (4 * result < 0)
    {
      goto LABEL_111;
    }

    if (HIDWORD(v1))
    {
      goto LABEL_112;
    }

    if (v1)
    {
      v4 = 0;
      v5 = 0;
      while (1)
      {
        v6 = v4 + 1;
        if (__OFADD__(v4, 1))
        {
          goto LABEL_97;
        }

        v7 = __CFADD__(v5, 4);
        v5 += 4;
        if (v7)
        {
          v5 = -1;
        }

        ++v4;
        if (v5 >= v1)
        {
          goto LABEL_15;
        }
      }
    }

    v6 = 0;
LABEL_15:
    v76 = MEMORY[0x277D84F90];
    result = sub_23A975DA0(0, v6 & ~(v6 >> 63), 0);
    if (v6 < 0)
    {
      goto LABEL_113;
    }

    v70 = v2;
    if (v6)
    {
      v8 = 0;
      while (v8 < v1)
      {
        if (v8 >= 0xFFFFFFFC)
        {
          v9 = -1;
        }

        else
        {
          v9 = v8 + 4;
        }

        if (v8 >= 0xFFFFFFFD)
        {
          goto LABEL_99;
        }

        v11 = v76[2];
        v10 = v76[3];
        v2 = v11 + 1;
        if (v11 >= v10 >> 1)
        {
          sub_23A975DA0((v10 > 1), v11 + 1, 1);
        }

        v76[2] = v2;
        v12 = &v76[2 * v11];
        *(v12 + 8) = v8;
        *(v12 + 36) = vadd_s32(vdup_n_s32(v8), 0x200000001);
        *(v12 + 11) = v8 + 3;
        v8 = v9;
        if (!--v6)
        {
          if (v9 < v1)
          {
            goto LABEL_30;
          }

          goto LABEL_39;
        }
      }

      goto LABEL_98;
    }

    if (v1)
    {
      v9 = 0;
LABEL_30:
      while (1)
      {
        v13 = v9 >= 0xFFFFFFFC ? -1 : v9 + 4;
        if (v9 >= 0xFFFFFFFD)
        {
          goto LABEL_104;
        }

        v15 = v76[2];
        v14 = v76[3];
        v2 = v15 + 1;
        if (v15 >= v14 >> 1)
        {
          sub_23A975DA0((v14 > 1), v15 + 1, 1);
        }

        v76[2] = v2;
        v16 = &v76[2 * v15];
        *(v16 + 8) = v9;
        *(v16 + 36) = vadd_s32(vdup_n_s32(v9), 0x200000001);
        *(v16 + 11) = v9 + 3;
        v9 = v13;
        if (v13 >= v1)
        {
          goto LABEL_39;
        }
      }
    }

    v2 = v76[2];
    if (!v2)
    {
      break;
    }

LABEL_39:
    v1 = 0;
    v17 = (v76 + 5);
    v18 = MEMORY[0x277D84F90];
    while (v1 < v76[2])
    {
      v74 = *(v17 - 1);
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAED48, &qword_23AA19520);
      v73 = *v17;
      inited = swift_initStackObject();
      *&v20 = v74;
      *(&v20 + 1) = __PAIR64__(v74, v73);
      *(inited + 32) = v20;
      v21 = inited + 32;
      *(inited + 48) = v73;
      v22 = *(v18 + 2);
      v23 = v22 + 6;
      if (__OFADD__(v22, 6))
      {
        goto LABEL_94;
      }

      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      if (!isUniquelyReferenced_nonNull_native || (v25 = *(v18 + 3) >> 1, v25 < v23))
      {
        if (v22 <= v23)
        {
          v26 = v22 + 6;
        }

        else
        {
          v26 = v22;
        }

        v18 = sub_23A9388BC(isUniquelyReferenced_nonNull_native, v26, 1, v18);
        v25 = *(v18 + 3) >> 1;
      }

      v27 = *(v18 + 2);
      if (v25 - v27 < 6)
      {
        goto LABEL_95;
      }

      v28 = *v21;
      v29 = &v18[4 * v27];
      *(v29 + 6) = *(v21 + 16);
      *(v29 + 2) = v28;
      swift_setDeallocating();
      v30 = *(v18 + 2);
      v31 = __OFADD__(v30, 6);
      v32 = v30 + 6;
      if (v31)
      {
        goto LABEL_96;
      }

      ++v1;
      *(v18 + 2) = v32;
      v17 += 2;
      if (v2 == v1)
      {
        goto LABEL_51;
      }
    }

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
    ;
  }

  v18 = MEMORY[0x277D84F90];
LABEL_51:

  v1 = v72;
  if (v70)
  {
    goto LABEL_89;
  }

  v2 = *((v72 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2)
  {
LABEL_53:
    v33 = 0;
    v34 = v1 & 0xC000000000000001;
    v75 = v1 & 0xFFFFFFFFFFFFFF8;
    v35 = MEMORY[0x277D84F90];
    while (1)
    {
      if (v34)
      {
        v36 = MEMORY[0x23EE90360](v33, v1);
        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
          goto LABEL_70;
        }
      }

      else
      {
        if (v33 >= *(v75 + 16))
        {
          goto LABEL_100;
        }

        v36 = *(v1 + 8 * v33 + 32);

        v37 = v33 + 1;
        if (__OFADD__(v33, 1))
        {
LABEL_70:
          __break(1u);
LABEL_71:
          v51 = 0;
          v52 = MEMORY[0x277D84F90];
          v71 = v18;
          while (2)
          {
            if (v34)
            {
              v53 = MEMORY[0x23EE90360](v51, v1);
              v54 = v51 + 1;
              if (__OFADD__(v51, 1))
              {
                break;
              }

              goto LABEL_75;
            }

            if (v51 >= *(v75 + 16))
            {
              goto LABEL_105;
            }

            v53 = *(v1 + 8 * v51 + 32);

            v54 = v51 + 1;
            if (!__OFADD__(v51, 1))
            {
LABEL_75:
              v55 = v35;
              v56 = v2;
              v2 = v34;
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
              v1 = swift_allocObject();
              *(v1 + 16) = xmmword_23AA11C20;
              v57 = *(v53 + 80);
              *(v1 + 32) = v57;
              *(v1 + 48) = v57;
              *(v1 + 64) = v57;
              *(v1 + 80) = v57;

              v58 = *(v52 + 2);
              v59 = v58 + 4;
              if (__OFADD__(v58, 4))
              {
                goto LABEL_106;
              }

              v60 = swift_isUniquelyReferenced_nonNull_native();
              if (!v60 || (v61 = *(v52 + 3) >> 1, v61 < v59))
              {
                if (v58 <= v59)
                {
                  v62 = v58 + 4;
                }

                else
                {
                  v62 = v58;
                }

                v52 = sub_23A9388A8(v60, v62, 1, v52);
                v61 = *(v52 + 3) >> 1;
              }

              v34 = v2;
              v63 = *(v52 + 2);
              if (v61 - v63 < 4)
              {
                goto LABEL_107;
              }

              v2 = v56;
              v64 = &v52[16 * v63];
              v65 = *(v1 + 32);
              v66 = *(v1 + 48);
              v67 = *(v1 + 80);
              *(v64 + 4) = *(v1 + 64);
              *(v64 + 5) = v67;
              *(v64 + 2) = v65;
              *(v64 + 3) = v66;

              v68 = *(v52 + 2);
              v31 = __OFADD__(v68, 4);
              v69 = v68 + 4;
              if (v31)
              {
                goto LABEL_108;
              }

              *(v52 + 2) = v69;
              ++v51;
              v35 = v55;
              v18 = v71;
              v1 = v72;
              if (v54 == v2)
              {
                goto LABEL_91;
              }

              continue;
            }

            break;
          }

          __break(1u);
LABEL_89:
          v2 = sub_23AA0D7F4();
          if (!v2)
          {
            break;
          }

          goto LABEL_53;
        }
      }

      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAEB58, &unk_23AA11BF0);
      v38 = swift_allocObject();
      v38[1] = xmmword_23AA11C20;
      v38[2] = v36[1];
      v39 = v38 + 2;
      v38[3] = v36[2];
      v38[4] = v36[3];
      v38[5] = v36[4];

      v1 = *(v35 + 2);
      v40 = v1 + 4;
      if (__OFADD__(v1, 4))
      {
        goto LABEL_101;
      }

      v41 = swift_isUniquelyReferenced_nonNull_native();
      if (!v41 || (v42 = *(v35 + 3) >> 1, v42 < v40))
      {
        if (v1 <= v40)
        {
          v43 = v1 + 4;
        }

        else
        {
          v43 = v1;
        }

        v35 = sub_23A9388A8(v41, v43, 1, v35);
        v42 = *(v35 + 3) >> 1;
      }

      v1 = v72;
      v44 = *(v35 + 2);
      if (v42 - v44 < 4)
      {
        goto LABEL_102;
      }

      v45 = &v35[16 * v44];
      v46 = *v39;
      v47 = v39[1];
      v48 = v39[3];
      *(v45 + 4) = v39[2];
      *(v45 + 5) = v48;
      *(v45 + 2) = v46;
      *(v45 + 3) = v47;

      v49 = *(v35 + 2);
      v31 = __OFADD__(v49, 4);
      v50 = v49 + 4;
      if (v31)
      {
        goto LABEL_103;
      }

      *(v35 + 2) = v50;
      ++v33;
      if (v37 == v2)
      {
        goto LABEL_71;
      }
    }
  }

  v35 = MEMORY[0x277D84F90];
  v52 = MEMORY[0x277D84F90];
LABEL_91:
  type metadata accessor for RoomCaptureMesh();
  result = swift_allocObject();
  *(result + 16) = v35;
  *(result + 24) = v52;
  *(result + 32) = v18;
  return result;
}

uint64_t sub_23A982F88(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 8))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 1;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_23A982FE4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2;
    }
  }

  return result;
}

uint64_t sub_23A983044()
{
  v1 = *(v0 + 16);

  return v1;
}

double sub_23A983074@<D0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>)
{
  result = 0.0;
  *a3 = xmmword_23AA10F60;
  *(a3 + 16) = a1;
  *(a3 + 24) = a2;
  return result;
}

uint64_t sub_23A983094@<X0>(uint64_t a1@<X0>, void *a2@<X8>)
{
  result = sub_23AA0DBB4();
  *a2 = a1;
  a2[1] = 0;
  a2[2] = result;
  a2[3] = v5;
  return result;
}

uint64_t sub_23A9830EC(uint64_t a1)
{
  v2 = sub_23A9846F4();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A983128(uint64_t a1)
{
  v2 = sub_23A9846F4();

  return MEMORY[0x2821FE720](a1, v2);
}

size_t sub_23A983164(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05E8, &qword_23AA18ED8);
  v53 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v39 - v5;
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05F0, &qword_23AA18EE0);
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v39 - v9;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A98464C();
  v11 = v7;
  v12 = v2;
  sub_23AA0DD84();
  CVPixelBufferGetPlaneCount(v2);
  LOBYTE(v54) = 0;
  v13 = v60;
  sub_23AA0DB64();
  if (v13)
  {
    return (*(v8 + 8))(v10, v11);
  }

  v60 = v8;
  v52 = v4;
  CVPixelBufferGetPixelFormatType(v2);
  LOBYTE(v54) = 1;
  sub_23AA0DB84();
  CVPixelBufferGetWidth(v2);
  LOBYTE(v54) = 2;
  sub_23AA0DB64();
  CVPixelBufferGetHeight(v2);
  LOBYTE(v54) = 3;
  sub_23AA0DB64();
  CVPixelBufferIsPlanar(v2);
  LOBYTE(v54) = 5;
  sub_23AA0DB44();
  CVPixelBufferLockBaseAddress(v2, 1uLL);
  if (CVPixelBufferIsPlanar(v2))
  {
    LOBYTE(v54) = 4;
    sub_23A9846F4();
    v42 = v6;
    sub_23AA0DB24();
    result = CVPixelBufferGetPlaneCount(v2);
    if ((result & 0x8000000000000000) != 0)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v43 = v2;
    v15 = v52;
    if (result)
    {
      v16 = 0;
      v40 = v7;
      v41 = 0x800000023AA20CE0;
      v39 = result;
      while (1)
      {
        v54 = 0x746144656E616C70;
        v55 = 0xE900000000000061;
        v58 = v16;
        v17 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v17);

        v50 = v54;
        v51 = v55;
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_23AA0D8A4();

        v18 = v41;
        v54 = 0xD000000000000010;
        v55 = v41;
        v58 = v16;
        v19 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v19);

        v20 = v55;
        v49 = v54;
        v54 = 0;
        v55 = 0xE000000000000000;
        sub_23AA0D8A4();

        v54 = 0xD000000000000010;
        v55 = v18;
        v58 = v16;
        v21 = sub_23AA0DBB4();
        MEMORY[0x23EE8FCA0](v21);

        v23 = v54;
        v22 = v55;
        v24 = v43;
        BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v43, v16);
        if (!BaseAddressOfPlane)
        {

          sub_23A9846A0();
          swift_allocError();
          *v38 = 0;
          swift_willThrow();
          (*(v53 + 8))(v42, v52);
          CVPixelBufferUnlockBaseAddress(v24, 1uLL);
          return (*(v60 + 8))(v10, v40);
        }

        v26 = BaseAddressOfPlane;
        v45 = v23;
        v48 = v22;
        HeightOfPlane = CVPixelBufferGetHeightOfPlane(v24, v16);
        result = CVPixelBufferGetBytesPerRowOfPlane(v24, v16);
        if ((HeightOfPlane * result) >> 64 != (HeightOfPlane * result) >> 63)
        {
          break;
        }

        v28 = sub_23A984748(v26, HeightOfPlane * result);
        v30 = v29;
        CVPixelBufferGetBytesPerRowOfPlane(v24, v16);
        v44 = CVPixelBufferGetHeightOfPlane(v24, v16);
        v46 = v28;
        v47 = v30;
        v58 = v28;
        v59 = v30;
        v54 = 0;
        LOBYTE(v55) = 1;
        v56 = v50;
        v57 = v51;
        sub_23A9348E4();
        v15 = v52;
        sub_23AA0DB74();

        v54 = 0;
        LOBYTE(v55) = 1;
        v56 = v49;
        v57 = v20;
        sub_23AA0DB64();

        v54 = 0;
        LOBYTE(v55) = 1;
        v56 = v45;
        v57 = v48;
        sub_23AA0DB64();
        v11 = v40;
        ++v16;
        sub_23A8EFA00(v46, v47);

        if (v39 == v16)
        {
          goto LABEL_10;
        }
      }

      __break(1u);
      goto LABEL_18;
    }

LABEL_10:
    (*(v53 + 8))(v42, v15);
    v12 = v43;
    v8 = v60;
LABEL_15:
    CVPixelBufferUnlockBaseAddress(v12, 1uLL);
    return (*(v8 + 8))(v10, v11);
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v2);
  if (!BaseAddress)
  {
    sub_23A9846A0();
    swift_allocError();
    *v37 = 3;
    swift_willThrow();
    CVPixelBufferUnlockBaseAddress(v2, 1uLL);
    return (*(v60 + 8))(v10, v7);
  }

  v32 = BaseAddress;
  Height = CVPixelBufferGetHeight(v2);
  result = CVPixelBufferGetBytesPerRow(v12);
  if ((Height * result) >> 64 == (Height * result) >> 63)
  {
    v34 = sub_23A984748(v32, Height * result);
    v36 = v35;
    v54 = v34;
    v55 = v35;
    LOBYTE(v58) = 6;
    sub_23A9348E4();
    sub_23AA0DB74();
    sub_23A8EFA00(v34, v36);
    v8 = v60;
    v11 = v7;
    goto LABEL_15;
  }

LABEL_19:
  __break(1u);
  return result;
}

uint64_t sub_23A983960@<X0>(void *a1@<X0>, __CVBuffer **a2@<X8>)
{
  v5 = sub_23A983DD0(a1);
  result = __swift_destroy_boxed_opaque_existential_1(a1);
  if (!v2)
  {
    *a2 = v5;
  }

  return result;
}

void *sub_23A9839AC(void *result)
{
  if (*v1)
  {
    return sub_23A983164(result);
  }

  return result;
}

double sub_23A9839EC(uint64_t a1)
{
  sub_23AA0D1D4();

  return result;
}

unint64_t sub_23A983AFC@<X0>(uint64_t *a1@<X0>, _BYTE *a2@<X8>)
{
  result = sub_23A983D84(*a1, a1[1]);
  *a2 = result;
  return result;
}

void sub_23A983B2C(uint64_t *a1@<X8>)
{
  v2 = *v1;
  v3 = 0xEA0000000000746ELL;
  v4 = 0x756F43656E616C70;
  v5 = 0xE800000000000000;
  v6 = 0x72616E616C507369;
  if (v2 != 5)
  {
    v6 = 1635017060;
    v5 = 0xE400000000000000;
  }

  v7 = 0x746867696568;
  if (v2 != 3)
  {
    v7 = 0x73656E616C70;
  }

  if (*v1 <= 4u)
  {
    v6 = v7;
    v5 = 0xE600000000000000;
  }

  v8 = 0xEB0000000074616DLL;
  v9 = 0x726F466C65786970;
  if (v2 != 1)
  {
    v9 = 0x6874646977;
    v8 = 0xE500000000000000;
  }

  if (*v1)
  {
    v4 = v9;
    v3 = v8;
  }

  if (*v1 <= 2u)
  {
    v10 = v4;
  }

  else
  {
    v10 = v6;
  }

  if (*v1 > 2u)
  {
    v3 = v5;
  }

  *a1 = v10;
  a1[1] = v3;
}

uint64_t sub_23A983C04()
{
  v1 = *v0;
  v2 = 0x756F43656E616C70;
  v3 = 0x72616E616C507369;
  if (v1 != 5)
  {
    v3 = 1635017060;
  }

  v4 = 0x746867696568;
  if (v1 != 3)
  {
    v4 = 0x73656E616C70;
  }

  if (*v0 <= 4u)
  {
    v3 = v4;
  }

  v5 = 0x726F466C65786970;
  if (v1 != 1)
  {
    v5 = 0x6874646977;
  }

  if (*v0)
  {
    v2 = v5;
  }

  if (*v0 <= 2u)
  {
    return v2;
  }

  else
  {
    return v3;
  }
}

unint64_t sub_23A983CD8@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, _BYTE *a3@<X8>)
{
  result = sub_23A983D84(a1, a2);
  *a3 = result;
  return result;
}

uint64_t sub_23A983D0C(uint64_t a1)
{
  v2 = sub_23A98464C();

  return MEMORY[0x2821FE718](a1, v2);
}

uint64_t sub_23A983D48(uint64_t a1)
{
  v2 = sub_23A98464C();

  return MEMORY[0x2821FE720](a1, v2);
}

unint64_t sub_23A983D84(uint64_t a1, uint64_t a2)
{
  v2 = sub_23AA0DA64();

  if (v2 >= 7)
  {
    return 7;
  }

  else
  {
    return v2;
  }
}

__CVBuffer *sub_23A983DD0(void *a1)
{
  v75 = *MEMORY[0x277D85DE8];
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05C0, &qword_23AA18EC8);
  v67 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = (&v60 - v4);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB05C8, &qword_23AA18ED0);
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v60 - v8;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_23A98464C();
  sub_23AA0DD74();
  if (v1)
  {
    return v5;
  }

  v10 = v5;
  v11 = v7;
  LOBYTE(pixelBufferOut) = 2;
  v12 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 3;
  v13 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 1;
  LODWORD(BaseAddressOfPlane) = sub_23AA0DB04();
  LOBYTE(pixelBufferOut) = 0;
  v64 = sub_23AA0DAE4();
  LOBYTE(pixelBufferOut) = 5;
  v15 = sub_23AA0DAB4();
  v65 = 0;
  v16 = v15;
  pixelBufferOut = 0;
  CVPixelBufferCreate(0, v12, v13, BaseAddressOfPlane, 0, &pixelBufferOut);
  v5 = pixelBufferOut;
  if (!pixelBufferOut)
  {
    sub_23A9846A0();
    swift_allocError();
    *v20 = 1;
    swift_willThrow();
    (*(v11 + 8))(v9, v6);

    return v5;
  }

  CVPixelBufferLockBaseAddress(pixelBufferOut, 0);
  if (v16)
  {
    LOBYTE(pixelBufferOut) = 4;
    sub_23A9846F4();
    v17 = v65;
    sub_23AA0DA74();
    if (!v17)
    {
      if (v64 < 0)
      {
        goto LABEL_61;
      }

      v65 = 0;
      v63 = v3;
      if (v64)
      {
        v18 = 0;
        v19 = v10;
        v61 = v10;
        while (1)
        {
          BaseAddressOfPlane = CVPixelBufferGetBaseAddressOfPlane(v5, v18);
          v68 = v18;
          pixelBufferOut = 0x746144656E616C70;
          v70 = 0xE900000000000061;
          v23 = sub_23AA0DBB4();
          MEMORY[0x23EE8FCA0](v23);

          v24 = pixelBufferOut;
          v25 = v70;
          pixelBufferOut = 0;
          LOBYTE(v70) = 1;
          v71 = v24;
          v72 = v25;
          sub_23A9347CC();
          v26 = v65;
          sub_23AA0DAF4();
          v65 = v26;
          if (v26)
          {

            v67[1](v19, v63);
            CVPixelBufferUnlockBaseAddress(v5, 0);

            (*(v11 + 8))(v9, v6);
            return v5;
          }

          v27 = v74;
          v28 = v74 >> 62;
          if ((v74 >> 62) > 1)
          {
            if (v28 == 2)
            {
              v62 = v73;
              v30 = *(v73 + 16);
              v31 = sub_23AA0BD34();
              if (!v31)
              {
                goto LABEL_66;
              }

              v32 = v31;
              v33 = sub_23AA0BD54();
              if (__OFSUB__(v30, v33))
              {
                goto LABEL_57;
              }

              v34 = (v30 - v33 + v32);
              sub_23AA0BD44();
              if (!v34)
              {
                goto LABEL_67;
              }

              v35 = v62;
              v37 = *(v62 + 16);
              v36 = *(v62 + 24);
              v38 = v36 - v37;
              v39 = v61;
              if (__OFSUB__(v36, v37))
              {
                goto LABEL_59;
              }

LABEL_32:
              memcpy(BaseAddressOfPlane, v34, v38);
              sub_23A8EFA00(v35, v27);
              v19 = v39;
              goto LABEL_14;
            }

            sub_23A8EFA00(v73, v74);
          }

          else
          {
            if (v28)
            {
              v40 = v73;
              v62 = v73;
              if (v73 > v73 >> 32)
              {
                __break(1u);
LABEL_57:
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
LABEL_64:
                __break(1u);
LABEL_65:
                __break(1u);
LABEL_66:
                sub_23AA0BD44();
LABEL_67:
                __break(1u);
LABEL_68:
                sub_23AA0BD44();
LABEL_69:
                __break(1u);
LABEL_70:
                sub_23AA0BD44();
                goto LABEL_71;
              }

              v41 = sub_23AA0BD34();
              v42 = v27;
              if (!v41)
              {
                goto LABEL_68;
              }

              v43 = v41;
              v44 = sub_23AA0BD54();
              if (__OFSUB__(v40, v44))
              {
                goto LABEL_58;
              }

              v34 = (v40 - v44 + v43);
              sub_23AA0BD44();
              if (!v34)
              {
                goto LABEL_69;
              }

              v27 = v42;
              v35 = v62;
              v39 = v61;
              if (__OFSUB__(HIDWORD(v62), v62))
              {
                goto LABEL_60;
              }

              v38 = HIDWORD(v62) - v62;
              goto LABEL_32;
            }

            pixelBufferOut = v73;
            LODWORD(v70) = v74;
            WORD2(v70) = WORD2(v74);
            v29 = v73;
            memcpy(BaseAddressOfPlane, &pixelBufferOut, BYTE6(v74));
            sub_23A8EFA00(v29, v27);
          }

LABEL_14:
          if (v64 == ++v18)
          {
            goto LABEL_44;
          }
        }
      }

      goto LABEL_43;
    }

    goto LABEL_12;
  }

  BaseAddress = CVPixelBufferGetBaseAddress(v5);
  LOBYTE(v73) = 6;
  sub_23A9347CC();
  v22 = v65;
  sub_23AA0DAF4();
  if (v22)
  {
LABEL_12:
    CVPixelBufferUnlockBaseAddress(v5, 0);

    (*(v11 + 8))(v9, v6);
    return v5;
  }

  v10 = pixelBufferOut;
  v45 = v70;
  v46 = v70 >> 62;
  v65 = 0;
  if ((v70 >> 62) > 1)
  {
    v67 = BaseAddress;
    if (v46 != 2)
    {
LABEL_54:
      sub_23A8EFA00(v10, v45);
LABEL_55:
      CVPixelBufferUnlockBaseAddress(v5, 0);
      (*(v11 + 8))(v9, v6);
      return v5;
    }

    v50 = *(pixelBufferOut + 2);
    v51 = sub_23AA0BD34();
    if (!v51)
    {
      goto LABEL_70;
    }

    v52 = v51;
    v53 = sub_23AA0BD54();
    if (__OFSUB__(v50, v53))
    {
      goto LABEL_63;
    }

    v54 = (v50 - v53 + v52);
    sub_23AA0BD44();
    if (v54)
    {
      v56 = *(v10 + 2);
      v55 = *(v10 + 3);
      v47 = v55 - v56;
      if (__OFSUB__(v55, v56))
      {
        __break(1u);
LABEL_43:
        v19 = v10;
LABEL_44:
        v67[1](v19, v63);
        goto LABEL_55;
      }

      goto LABEL_52;
    }

LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  if (!v46)
  {
    v47 = BYTE6(v70);
    p_pixelBufferOut = &pixelBufferOut;
    v49 = BaseAddress;
LABEL_53:
    memcpy(v49, p_pixelBufferOut, v47);
    goto LABEL_54;
  }

  v67 = BaseAddress;
  if (pixelBufferOut > pixelBufferOut >> 32)
  {
    goto LABEL_62;
  }

  v57 = sub_23AA0BD34();
  if (!v57)
  {
LABEL_72:
    result = sub_23AA0BD44();
    goto LABEL_73;
  }

  v58 = v57;
  v59 = sub_23AA0BD54();
  if (__OFSUB__(v10, v59))
  {
    goto LABEL_64;
  }

  v54 = (v10 - v59 + v58);
  result = sub_23AA0BD44();
  if (v54)
  {
    if (__OFSUB__(HIDWORD(v10), v10))
    {
      goto LABEL_65;
    }

    v47 = HIDWORD(v10) - v10;
LABEL_52:
    v49 = v67;
    p_pixelBufferOut = v54;
    goto LABEL_53;
  }

LABEL_73:
  __break(1u);
  return result;
}

unint64_t sub_23A98464C()
{
  result = qword_27DFB05D0;
  if (!qword_27DFB05D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05D0);
  }

  return result;
}

unint64_t sub_23A9846A0()
{
  result = qword_27DFB05D8;
  if (!qword_27DFB05D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05D8);
  }

  return result;
}

unint64_t sub_23A9846F4()
{
  result = qword_27DFB05E0;
  if (!qword_27DFB05E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05E0);
  }

  return result;
}

unint64_t sub_23A984748(_BYTE *a1, unint64_t a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 <= 14)
  {
    return sub_23A934510(a1, &a1[a2]);
  }

  sub_23AA0BD64();
  swift_allocObject();
  sub_23AA0BD24();
  if (a2 < 0x7FFFFFFF)
  {
    return a2 << 32;
  }

  sub_23AA0BFD4();
  result = swift_allocObject();
  *(result + 16) = 0;
  *(result + 24) = a2;
  return result;
}

uint64_t sub_23A984818(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 32))
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

uint64_t sub_23A984860(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 16) = 0;
    *(result + 24) = 0;
    *result = a2 & 0x7FFFFFFF;
    *(result + 8) = 0;
    if (a3 < 0)
    {
      *(result + 32) = 1;
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

    *(result + 32) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

unint64_t sub_23A9848B4()
{
  result = qword_27DFB05F8;
  if (!qword_27DFB05F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB05F8);
  }

  return result;
}

unint64_t sub_23A98490C()
{
  result = qword_27DFB0600;
  if (!qword_27DFB0600)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0600);
  }

  return result;
}

unint64_t sub_23A984964()
{
  result = qword_27DFB0608;
  if (!qword_27DFB0608)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0608);
  }

  return result;
}

unint64_t sub_23A9849BC()
{
  result = qword_27DFB0610;
  if (!qword_27DFB0610)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0610);
  }

  return result;
}

unint64_t sub_23A984A14()
{
  result = qword_27DFB0618;
  if (!qword_27DFB0618)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0618);
  }

  return result;
}

unint64_t sub_23A984A6C()
{
  result = qword_27DFB0620;
  if (!qword_27DFB0620)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0620);
  }

  return result;
}

void sub_23A984AC0(float a1)
{
  v2 = v1;
  if (qword_27DFAE518 != -1)
  {
    swift_once();
  }

  v4 = off_27DFB17B0;
  swift_beginAccess();
  v5 = v4[38];
  swift_beginAccess();
  if (*(v4 + 157))
  {
    v6 = 30;
  }

  else
  {
    if (qword_27DFAE510 != -1)
    {
      swift_once();
    }

    v6 = dword_27DFC0B48;
  }

  sub_23AA00900(v9);
  if (v9[0])
  {
    v7 = 30;
  }

  else
  {
    if (qword_27DFAE510 != -1)
    {
      swift_once();
    }

    v7 = dword_27DFC0B48;
  }

  if (v5 > a1)
  {
    v7 = v6;
  }

  swift_beginAccess();
  v8 = *(v2 + 56);
  sub_23A984C30(v8, v7);
}

void sub_23A984C30(void *a1, uint64_t a2)
{
  v30 = *MEMORY[0x277D85DE8];
  v3 = sub_23AA0CE84();
  v4 = *(v3 - 8);
  v5 = MEMORY[0x28223BE20](v3);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (![a1 powerUsage])
  {
    sub_23A8D6C58(0, &qword_27DFB0628, 0x277CE53B0);
    v8 = [swift_getObjCClassFromMetadata() configurableCaptureDeviceForPrimaryCamera];
    if (v8)
    {
      v26 = v8;
      v9 = sub_23AA0D5A4();
      v11 = v10;
      v13 = v12;
      [v26 activeVideoMinFrameDuration];
      if (sub_23AA0D594() & 1) != 0 && ([v26 activeVideoMaxFrameDuration], (sub_23AA0D594()))
      {
        v27 = 0;
        if ([v26 lockForConfiguration_])
        {
          v14 = v27;
          v27 = v9;
          v28 = v11;
          v29 = v13;
          [v26 setActiveVideoMinFrameDuration_];
          v27 = v9;
          v28 = v11;
          v29 = v13;
          [v26 setActiveVideoMaxFrameDuration_];
          [v26 unlockForConfiguration];
        }

        else
        {
          v16 = v27;
          v17 = sub_23AA0BE74();

          swift_willThrow();
          sub_23A8D6C58(0, &qword_27DFAF770, 0x277D86200);
          if (qword_27DFAE3A0 != -1)
          {
            swift_once();
          }

          sub_23AA0D644();
          sub_23AA0CE94();
          v18 = v17;
          v19 = sub_23AA0CE54();
          v20 = sub_23AA0D494();

          if (os_log_type_enabled(v19, v20))
          {
            v21 = swift_slowAlloc();
            v22 = swift_slowAlloc();
            v27 = v22;
            *v21 = 136315138;
            swift_getErrorValue();
            v23 = sub_23AA0DC34();
            v25 = sub_23A9A65A4(v23, v24, &v27);

            *(v21 + 4) = v25;
            _os_log_impl(&dword_23A8B4000, v19, v20, "Cannot change ARKit framerate: %s", v21, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v22);
            MEMORY[0x23EE91710](v22, -1, -1);
            MEMORY[0x23EE91710](v21, -1, -1);
          }

          else
          {
          }

          (*(v4 + 8))(v7, v3);
        }
      }

      else
      {
        v15 = v26;
      }
    }
  }
}

uint64_t sub_23A985084(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result || v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
    result = sub_23A97E578();
    v3 = result;
  }

  v5 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = *((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 0x20);
    memmove(((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 32), ((v3 & 0xFFFFFFFFFFFFFF8) + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23A985114(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C0C(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = &v3[3 * a1];
    v7 = v6[4];
    v8 = v5 - 1;
    memmove(v6 + 4, v6 + 7, 24 * (v5 - 1 - a1));
    v3[2] = v8;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_23A9851B8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C38(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 32 * a1 + 32), (v3 + 32 * a1 + 64), 32 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_23A985244(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C4C(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 16 * a1 + 32), (v3 + 16 * a1 + 48), 16 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_23A9852D0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C20(v3);
    v3 = result;
  }

  v5 = *(v3 + 16);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    result = memmove((v3 + 8 * a1 + 32), (v3 + 8 * a1 + 40), 8 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

char *sub_23A985358(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C60(v3);
    v3 = result;
  }

  v5 = *(v3 + 2);
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[16 * a1];
    v8 = v7[32];
    memmove(v7 + 32, v7 + 48, 16 * (v5 - 1 - a1));
    *(v3 + 2) = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23A9853F0@<X0>(unint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *v2;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975C88(v5);
    v5 = result;
  }

  v7 = v5[2];
  if (v7 <= a1)
  {
    __break(1u);
  }

  else
  {
    v8 = v7 - 1;
    v9 = sub_23AA0C0E4();
    v10 = *(v9 - 8);
    v11 = *(v10 + 72);
    v12 = v5 + ((*(v10 + 80) + 32) & ~*(v10 + 80)) + v11 * a1;
    result = (*(v10 + 32))(a2, v12, v9);
    if (v11 > 0 || v12 >= v12 + v11 + v11 * (v8 - a1))
    {
      result = swift_arrayInitWithTakeFrontToBack();
    }

    else if (v11)
    {
      result = swift_arrayInitWithTakeBackToFront();
    }

    v5[2] = v8;
    *v2 = v5;
  }

  return result;
}

uint64_t sub_23A9854F8(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_23A975D00(v3);
    v3 = result;
  }

  v5 = v3[2];
  if (v5 <= a1)
  {
    __break(1u);
  }

  else
  {
    v6 = v5 - 1;
    v7 = &v3[a1];
    v8 = v7[4];
    memmove(v7 + 4, v7 + 5, 8 * (v5 - 1 - a1));
    v3[2] = v6;
    *v1 = v3;
    return v8;
  }

  return result;
}

uint64_t sub_23A985580(uint64_t a1)
{
  v43 = sub_23AA0C0E4();
  v3 = *(v43 - 8);
  MEMORY[0x28223BE20](v43);
  v42 = &v33 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v41 = a1 & 0xC000000000000001;
  if ((a1 & 0xC000000000000001) != 0)
  {
    v5 = sub_23AA0D7F4();
    result = MEMORY[0x277D84F90];
    if (!v5)
    {
      return result;
    }

    v51 = MEMORY[0x277D84F90];
    sub_23AA0D964();
    result = sub_23AA0D7A4();
    v48 = result;
    v49 = v7;
    v50 = 1;
    if ((v5 & 0x8000000000000000) == 0)
    {
      goto LABEL_7;
    }

    __break(1u);
  }

  v5 = *(a1 + 16);
  result = MEMORY[0x277D84F90];
  if (!v5)
  {
    return result;
  }

  v51 = MEMORY[0x277D84F90];
  sub_23AA0D964();
  result = sub_23AA0D774();
  v8 = *(a1 + 36);
  v48 = result;
  v49 = v8;
  v50 = 0;
LABEL_7:
  v9 = 0;
  v39 = (v3 + 32);
  v40 = (v3 + 16);
  v10 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 < 0)
  {
    v10 = a1;
  }

  v35 = a1 + 56;
  v36 = v10;
  v33 = v1;
  v34 = a1 + 64;
  v37 = v5;
  v38 = a1;
  while (v9 < v5)
  {
    v12 = __OFADD__(v9, 1);
    v13 = v9 + 1;
    if (v12)
    {
      goto LABEL_34;
    }

    v14 = v50;
    v46 = v48;
    v44 = v13;
    v45 = v49;
    sub_23A9886A4(v48, v49, v50, a1);
    v16 = v15;
    v18 = v42;
    v17 = v43;
    (*v40)(v42, v15 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v43);
    v19 = *(v16 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
    v20 = *(v16 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);
    type metadata accessor for HullPointUUID(0);
    v21 = swift_allocObject();
    (*v39)(v21 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v18, v17);
    *(v21 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v19;
    *(v21 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v20;

    sub_23AA0D944();
    sub_23AA0D974();
    sub_23AA0D984();
    result = sub_23AA0D954();
    if (v41)
    {
      if (!v14)
      {
        goto LABEL_38;
      }

      v22 = sub_23AA0D7C4();
      a1 = v38;
      if (v22)
      {
        swift_isUniquelyReferenced_nonNull_native();
      }

      v5 = v37;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
      v11 = sub_23AA0D414();
      sub_23AA0D844();
      result = v11(v47, 0);
    }

    else
    {
      if (v14)
      {
        goto LABEL_39;
      }

      a1 = v38;
      result = v46;
      if ((v46 & 0x8000000000000000) != 0)
      {
        goto LABEL_35;
      }

      v23 = 1 << *(v38 + 32);
      if (v46 >= v23)
      {
        goto LABEL_35;
      }

      v24 = v46 >> 6;
      v25 = *(v35 + 8 * (v46 >> 6));
      if (((v25 >> v46) & 1) == 0)
      {
        goto LABEL_36;
      }

      v26 = v45;
      if (*(v38 + 36) != v45)
      {
        goto LABEL_37;
      }

      v27 = v25 & (-2 << (v46 & 0x3F));
      if (v27)
      {
        v23 = __clz(__rbit64(v27)) | v46 & 0x7FFFFFFFFFFFFFC0;
      }

      else
      {
        v28 = v24 << 6;
        v29 = v24 + 1;
        v30 = (v34 + 8 * v24);
        while (v29 < (v23 + 63) >> 6)
        {
          v32 = *v30++;
          v31 = v32;
          v28 += 64;
          ++v29;
          if (v32)
          {
            result = sub_23A8CA9CC(v46, v45, 0);
            v23 = __clz(__rbit64(v31)) + v28;
            goto LABEL_30;
          }
        }

        result = sub_23A8CA9CC(v46, v45, 0);
      }

LABEL_30:
      v48 = v23;
      v49 = v26;
      v50 = 0;
      v5 = v37;
    }

    v9 = v44;
    if (v44 == v5)
    {
      sub_23A8CA9CC(v48, v49, v50);
      return v51;
    }
  }

  __break(1u);
LABEL_34:
  __break(1u);
LABEL_35:
  __break(1u);
LABEL_36:
  __break(1u);
LABEL_37:
  __break(1u);
LABEL_38:
  __break(1u);
LABEL_39:
  __break(1u);
  return result;
}

void sub_23A9859BC()
{
  v1 = *v0;
  v2 = *v0 >> 62;
  if (!v2)
  {
    if (*((*v0 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_3;
    }

    goto LABEL_10;
  }

  if (sub_23AA0D7F4())
  {
    if (sub_23AA0D7F4())
    {
LABEL_3:
      if ((v1 & 0xC000000000000001) == 0)
      {
        if (!*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
LABEL_16:
          __break(1u);
          goto LABEL_17;
        }

        *(v1 + 32);
        if (!v2)
        {
          goto LABEL_6;
        }

        goto LABEL_12;
      }

LABEL_11:
      MEMORY[0x23EE90360](0, v1);
      if (!v2)
      {
LABEL_6:
        v4 = *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10);
        goto LABEL_13;
      }

LABEL_12:
      v4 = sub_23AA0D7F4();
LABEL_13:
      if (v4)
      {
        sub_23A945E14(0, 1, v3);
        return;
      }

      goto LABEL_16;
    }

    __break(1u);
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

LABEL_17:
  __break(1u);
}

uint64_t sub_23A985A94(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A97E5E8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23A985EE0(v6);
  return sub_23AA0D954();
}

void sub_23A985B10(uint64_t a1)
{
  v1 = a1;
  if ((a1 & 0xC000000000000001) != 0)
  {
    sub_23AA0D7B4();
    type metadata accessor for HullPointUUID(0);
    sub_23A98B508();
    sub_23AA0D424();
    v1 = v14[1];
    v2 = v14[2];
    v3 = v14[3];
    v4 = v14[4];
    v5 = v14[5];
  }

  else
  {
    v4 = 0;
    v6 = -1 << *(a1 + 32);
    v2 = a1 + 56;
    v3 = ~v6;
    v7 = -v6;
    if (v7 < 64)
    {
      v8 = ~(-1 << v7);
    }

    else
    {
      v8 = -1;
    }

    v5 = v8 & *(a1 + 56);
  }

  if (v1 < 0)
  {
    goto LABEL_14;
  }

  while (1)
  {
    v9 = v4;
    v10 = v5;
    v11 = v4;
    if (!v5)
    {
      break;
    }

LABEL_12:
    v12 = (v10 - 1) & v10;
    v13 = *(*(v1 + 48) + ((v11 << 9) | (8 * __clz(__rbit64(v10)))));

    if (!v13)
    {
LABEL_18:
      sub_23A8CA904(v1);
      return;
    }

    while (1)
    {
      sub_23A9EF31C(v14, v13);

      v4 = v11;
      v5 = v12;
      if ((v1 & 0x8000000000000000) == 0)
      {
        break;
      }

LABEL_14:
      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID(0);
        swift_dynamicCast();
        v13 = v14[0];
        v11 = v4;
        v12 = v5;
        if (v14[0])
        {
          continue;
        }
      }

      goto LABEL_18;
    }
  }

  while (1)
  {
    v11 = v9 + 1;
    if (__OFADD__(v9, 1))
    {
      break;
    }

    if (v11 >= ((v3 + 64) >> 6))
    {
      goto LABEL_18;
    }

    v10 = *(v2 + 8 * v11);
    ++v9;
    if (v10)
    {
      goto LABEL_12;
    }
  }

  __break(1u);
}

uint64_t sub_23A985D08(uint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_bridgeObject();
  if (!result)
  {
    if ((v3 & 0x8000000000000000) == 0 && (v3 & 0x4000000000000000) == 0)
    {
      goto LABEL_9;
    }

    goto LABEL_8;
  }

  if (v3 < 0 || (v3 & 0x4000000000000000) != 0)
  {
LABEL_8:
    sub_23AA0D7F4();
LABEL_9:
    result = sub_23AA0D8D4();
    v3 = result;
    goto LABEL_10;
  }

  if (a1 > *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_9;
  }

LABEL_10:
  *v1 = v3;
  return result;
}

void sub_23A985DA4(unint64_t a1)
{
  if ((*v1 & 0xC000000000000001) != 0)
  {
    if (!sub_23AA0D7F4())
    {
      return;
    }
  }

  else if (!*(*v1 + 16))
  {
    return;
  }

  if (a1 >> 62)
  {
    goto LABEL_17;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v4 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x23EE90360](v4, a1);
      v6 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        goto LABEL_15;
      }

LABEL_11:
      sub_23A98690C(v5);

      ++v4;
      if (v6 == i)
      {
        return;
      }
    }

    if (v4 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_16;
    }

    v5 = *(a1 + 8 * v4 + 32);

    v6 = v4 + 1;
    if (!__OFADD__(v4, 1))
    {
      goto LABEL_11;
    }

LABEL_15:
    __break(1u);
LABEL_16:
    __break(1u);
LABEL_17:
    ;
  }
}

void sub_23A985EE0(uint64_t *a1)
{
  v2 = a1[1];
  v3 = sub_23AA0DBA4();
  if (v3 < v2)
  {
    if (v2 >= -1)
    {
      v4 = v3;
      v5 = v2 / 2;
      if (v2 <= 1)
      {
        v6 = MEMORY[0x277D84F90];
      }

      else
      {
        type metadata accessor for DistanceAngleHullPoint();
        v6 = sub_23AA0D324();
        *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10) = v5;
      }

      v7 = v6 & 0xFFFFFFFFFFFFFF8;
      v8[0] = ((v6 & 0xFFFFFFFFFFFFFF8) + 32);
      v8[1] = v5;
      sub_23A986068(v8, v9, a1, v4);
      *(v7 + 16) = 0;

      return;
    }

    __break(1u);
LABEL_12:
    __break(1u);
    return;
  }

  if (v2 < 0)
  {
    goto LABEL_12;
  }

  if (v2)
  {
    sub_23A985FE4(0, v2, 1, a1);
  }
}

uint64_t sub_23A985FE4(uint64_t result, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  if (a3 != a2)
  {
    v4 = *a4;
    v5 = *a4 + 8 * a3 - 8;
    v6 = result - a3;
LABEL_5:
    v7 = *(v4 + 8 * a3);
    v8 = v6;
    v9 = v5;
    while (1)
    {
      v10 = *v9;
      v11 = *(v7 + 20);
      v12 = *(*v9 + 20);
      if (vabds_f32(v11, v12) < 0.00000011921)
      {
        v11 = *(v7 + 16);
        v12 = *(v10 + 16);
      }

      if (v11 >= v12)
      {
LABEL_4:
        ++a3;
        v5 += 8;
        --v6;
        if (a3 == a2)
        {
          return result;
        }

        goto LABEL_5;
      }

      if (!v4)
      {
        break;
      }

      *v9 = v7;
      v9[1] = v10;
      --v9;
      if (__CFADD__(v8++, 1))
      {
        goto LABEL_4;
      }
    }

    __break(1u);
  }

  return result;
}

void sub_23A986068(char **a1, uint64_t a2, uint64_t *a3, uint64_t a4)
{
  v7 = a3[1];
  if (v7 < 1)
  {
    v10 = MEMORY[0x277D84F90];
LABEL_104:
    v5 = *a1;
    if (!*a1)
    {
      goto LABEL_142;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
LABEL_136:
      v10 = sub_23A977E20(v10);
    }

    v86 = *(v10 + 2);
    if (v86 >= 2)
    {
      while (*a3)
      {
        v87 = *&v10[16 * v86];
        v88 = *&v10[16 * v86 + 24];
        sub_23A986640((*a3 + 8 * v87), (*a3 + 8 * *&v10[16 * v86 + 16]), (*a3 + 8 * v88), v5);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v88 < v87)
        {
          goto LABEL_129;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v86 - 2 >= *(v10 + 2))
        {
          goto LABEL_130;
        }

        v89 = &v10[16 * v86];
        *v89 = v87;
        *(v89 + 1) = v88;
        sub_23A977D94(v86 - 1);
        v86 = *(v10 + 2);
        if (v86 <= 1)
        {
          goto LABEL_114;
        }
      }

      goto LABEL_140;
    }

LABEL_114:

    return;
  }

  v8 = a4;
  v9 = 0;
  v10 = MEMORY[0x277D84F90];
  while (1)
  {
    v11 = v9++;
    if (v9 < v7)
    {
      v12 = *(*a3 + 8 * v9);
      v13 = *(*a3 + 8 * v11);
      v14 = *(v12 + 20);
      v15 = *(v13 + 20);
      if (vabds_f32(v14, v15) >= 0.00000011921)
      {
        v16 = v14 < v15;
      }

      else
      {
        v16 = *(v12 + 16) < *(v13 + 16);
      }

      v17 = v16;
      if (v7 <= v11 + 2)
      {
        v18 = v11 + 2;
      }

      else
      {
        v18 = v7;
      }

      v19 = v18 - v11 - 2;
      v20 = 8 * v11;
      v21 = *a3 + 8 * v11 + 16;
      while (v19)
      {
        v24 = *v21;
        v25 = *(*v21 + 20);
        if (vabds_f32(v25, v14) >= 0.00000011921)
        {
          v22 = v25 < v14;
        }

        else
        {
          v22 = *(v24 + 16) < *(v12 + 16);
        }

        v23 = v22;
        --v19;
        v21 += 8;
        ++v9;
        v14 = v25;
        v12 = v24;
        if (v17 != v23)
        {
          goto LABEL_24;
        }
      }

      v9 = v18;
LABEL_24:
      if (v17)
      {
        if (v9 < v11)
        {
          goto LABEL_133;
        }

        if (v11 < v9)
        {
          v26 = 8 * v9 - 8;
          v27 = v9;
          v28 = v11;
          do
          {
            if (v28 != --v27)
            {
              v30 = *a3;
              if (!*a3)
              {
                goto LABEL_139;
              }

              v29 = *(v30 + v20);
              *(v30 + v20) = *(v30 + v26);
              *(v30 + v26) = v29;
            }

            ++v28;
            v26 -= 8;
            v20 += 8;
          }

          while (v28 < v27);
          v7 = a3[1];
        }
      }
    }

    if (v9 < v7)
    {
      if (__OFSUB__(v9, v11))
      {
        goto LABEL_132;
      }

      if (v9 - v11 < v8)
      {
        if (__OFADD__(v11, v8))
        {
          goto LABEL_134;
        }

        if (v11 + v8 < v7)
        {
          v7 = v11 + v8;
        }

        if (v7 < v11)
        {
LABEL_135:
          __break(1u);
          goto LABEL_136;
        }

        if (v9 != v7)
        {
          break;
        }
      }
    }

LABEL_53:
    if (v9 < v11)
    {
      goto LABEL_131;
    }

    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v10 = sub_23A938B2C(0, *(v10 + 2) + 1, 1, v10);
    }

    v5 = *(v10 + 2);
    v41 = *(v10 + 3);
    v42 = v5 + 1;
    if (v5 >= v41 >> 1)
    {
      v10 = sub_23A938B2C((v41 > 1), v5 + 1, 1, v10);
    }

    *(v10 + 2) = v42;
    v43 = &v10[16 * v5];
    *(v43 + 4) = v11;
    *(v43 + 5) = v9;
    v44 = *a1;
    if (!*a1)
    {
      goto LABEL_141;
    }

    if (v5)
    {
      while (1)
      {
        v45 = v42 - 1;
        if (v42 >= 4)
        {
          break;
        }

        if (v42 == 3)
        {
          v46 = *(v10 + 4);
          v47 = *(v10 + 5);
          v56 = __OFSUB__(v47, v46);
          v48 = v47 - v46;
          v49 = v56;
LABEL_73:
          if (v49)
          {
            goto LABEL_120;
          }

          v62 = &v10[16 * v42];
          v64 = *v62;
          v63 = *(v62 + 1);
          v65 = __OFSUB__(v63, v64);
          v66 = v63 - v64;
          v67 = v65;
          if (v65)
          {
            goto LABEL_123;
          }

          v68 = &v10[16 * v45 + 32];
          v70 = *v68;
          v69 = *(v68 + 1);
          v56 = __OFSUB__(v69, v70);
          v71 = v69 - v70;
          if (v56)
          {
            goto LABEL_126;
          }

          if (__OFADD__(v66, v71))
          {
            goto LABEL_127;
          }

          if (v66 + v71 >= v48)
          {
            if (v48 < v71)
            {
              v45 = v42 - 2;
            }

            goto LABEL_94;
          }

          goto LABEL_87;
        }

        v72 = &v10[16 * v42];
        v74 = *v72;
        v73 = *(v72 + 1);
        v56 = __OFSUB__(v73, v74);
        v66 = v73 - v74;
        v67 = v56;
LABEL_87:
        if (v67)
        {
          goto LABEL_122;
        }

        v75 = &v10[16 * v45];
        v77 = *(v75 + 4);
        v76 = *(v75 + 5);
        v56 = __OFSUB__(v76, v77);
        v78 = v76 - v77;
        if (v56)
        {
          goto LABEL_125;
        }

        if (v78 < v66)
        {
          goto LABEL_3;
        }

LABEL_94:
        v83 = v45 - 1;
        if (v45 - 1 >= v42)
        {
          __break(1u);
LABEL_116:
          __break(1u);
LABEL_117:
          __break(1u);
LABEL_118:
          __break(1u);
LABEL_119:
          __break(1u);
LABEL_120:
          __break(1u);
LABEL_121:
          __break(1u);
LABEL_122:
          __break(1u);
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
LABEL_132:
          __break(1u);
LABEL_133:
          __break(1u);
LABEL_134:
          __break(1u);
          goto LABEL_135;
        }

        if (!*a3)
        {
          goto LABEL_138;
        }

        v84 = *&v10[16 * v83 + 32];
        v5 = *&v10[16 * v45 + 40];
        sub_23A986640((*a3 + 8 * v84), (*a3 + 8 * *&v10[16 * v45 + 32]), (*a3 + 8 * v5), v44);
        if (v4)
        {
          goto LABEL_114;
        }

        if (v5 < v84)
        {
          goto LABEL_116;
        }

        if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
        {
          v10 = sub_23A977E20(v10);
        }

        if (v83 >= *(v10 + 2))
        {
          goto LABEL_117;
        }

        v85 = &v10[16 * v83];
        *(v85 + 4) = v84;
        *(v85 + 5) = v5;
        sub_23A977D94(v45);
        v42 = *(v10 + 2);
        if (v42 <= 1)
        {
          goto LABEL_3;
        }
      }

      v50 = &v10[16 * v42 + 32];
      v51 = *(v50 - 64);
      v52 = *(v50 - 56);
      v56 = __OFSUB__(v52, v51);
      v53 = v52 - v51;
      if (v56)
      {
        goto LABEL_118;
      }

      v55 = *(v50 - 48);
      v54 = *(v50 - 40);
      v56 = __OFSUB__(v54, v55);
      v48 = v54 - v55;
      v49 = v56;
      if (v56)
      {
        goto LABEL_119;
      }

      v57 = &v10[16 * v42];
      v59 = *v57;
      v58 = *(v57 + 1);
      v56 = __OFSUB__(v58, v59);
      v60 = v58 - v59;
      if (v56)
      {
        goto LABEL_121;
      }

      v56 = __OFADD__(v48, v60);
      v61 = v48 + v60;
      if (v56)
      {
        goto LABEL_124;
      }

      if (v61 >= v53)
      {
        v79 = &v10[16 * v45 + 32];
        v81 = *v79;
        v80 = *(v79 + 1);
        v56 = __OFSUB__(v80, v81);
        v82 = v80 - v81;
        if (v56)
        {
          goto LABEL_128;
        }

        if (v48 < v82)
        {
          v45 = v42 - 2;
        }

        goto LABEL_94;
      }

      goto LABEL_73;
    }

LABEL_3:
    v7 = a3[1];
    v8 = a4;
    if (v9 >= v7)
    {
      goto LABEL_104;
    }
  }

  v31 = *a3;
  v32 = *a3 + 8 * v9 - 8;
  v33 = v11 - v9;
LABEL_44:
  v34 = *(v31 + 8 * v9);
  v35 = v33;
  v36 = v32;
  while (1)
  {
    v37 = *v36;
    v38 = *(v34 + 20);
    v39 = *(*v36 + 20);
    if (vabds_f32(v38, v39) < 0.00000011921)
    {
      v38 = *(v34 + 16);
      v39 = *(v37 + 16);
    }

    if (v38 >= v39)
    {
LABEL_43:
      ++v9;
      v32 += 8;
      --v33;
      if (v9 != v7)
      {
        goto LABEL_44;
      }

      v9 = v7;
      goto LABEL_53;
    }

    if (!v31)
    {
      break;
    }

    *v36 = v34;
    v36[1] = v37;
    --v36;
    if (__CFADD__(v35++, 1))
    {
      goto LABEL_43;
    }
  }

  __break(1u);
LABEL_138:
  __break(1u);
LABEL_139:
  __break(1u);
LABEL_140:
  __break(1u);
LABEL_141:
  __break(1u);
LABEL_142:
  __break(1u);
}

uint64_t sub_23A986640(char *__dst, char *__src, char *a3, char *a4)
{
  v4 = a4;
  v5 = a3;
  v6 = __src;
  v7 = __dst;
  v8 = __src - __dst;
  v9 = __src - __dst + 7;
  if (__src - __dst >= 0)
  {
    v9 = __src - __dst;
  }

  v10 = v9 >> 3;
  v11 = a3 - __src;
  v12 = a3 - __src + 7;
  if (a3 - __src >= 0)
  {
    v12 = a3 - __src;
  }

  v13 = v12 >> 3;
  if (v10 >= v12 >> 3)
  {
    if (a4 != __src || &__src[8 * v13] <= a4)
    {
      memmove(a4, __src, 8 * v13);
    }

    v14 = &v4[8 * v13];
    if (v11 >= 8 && v6 > v7)
    {
LABEL_27:
      v19 = v6 - 8;
      v20 = v5;
      v21 = v14;
      do
      {
        v23 = *(v21 - 8);
        v21 -= 8;
        v22 = v23;
        v24 = *v19;
        v25 = *(v23 + 20);
        v26 = *(*v19 + 20);
        if (vabds_f32(v25, v26) < 0.00000011921)
        {
          v25 = *(v22 + 16);
          v26 = *(v24 + 16);
        }

        v5 = v20 - 8;
        if (v25 < v26)
        {
          if (v20 != v6)
          {
            *v5 = v24;
          }

          if (v14 <= v4 || (v6 -= 8, v19 <= v7))
          {
            v6 = v19;
            goto LABEL_40;
          }

          goto LABEL_27;
        }

        if (v14 != v20)
        {
          *v5 = v22;
        }

        v14 = v21;
        v20 -= 8;
      }

      while (v21 > v4);
      v14 = v21;
    }
  }

  else
  {
    if (a4 != __dst || &__dst[8 * v10] <= a4)
    {
      memmove(a4, __dst, 8 * v10);
    }

    v14 = &v4[8 * v10];
    if (v8 >= 8 && v6 < v5)
    {
      while (1)
      {
        v15 = *v6;
        v16 = *(*v6 + 20);
        v17 = *(*v4 + 20);
        if (vabds_f32(v16, v17) < 0.00000011921)
        {
          v16 = *(v15 + 16);
          v17 = *(*v4 + 16);
        }

        if (v16 >= v17)
        {
          break;
        }

        v18 = v7 == v6;
        v6 += 8;
        if (!v18)
        {
          goto LABEL_18;
        }

LABEL_19:
        v7 += 8;
        if (v4 >= v14 || v6 >= v5)
        {
          goto LABEL_21;
        }
      }

      v15 = *v4;
      v18 = v7 == v4;
      v4 += 8;
      if (v18)
      {
        goto LABEL_19;
      }

LABEL_18:
      *v7 = v15;
      goto LABEL_19;
    }

LABEL_21:
    v6 = v7;
  }

LABEL_40:
  v27 = v14 - v4 + (v14 - v4 < 0 ? 7uLL : 0);
  if (v6 != v4 || v6 >= &v4[v27 & 0xFFFFFFFFFFFFFFF8])
  {
    memmove(v6, v4, 8 * (v27 >> 3));
  }

  return 1;
}

void *sub_23A98687C(void *result, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2 < 0)
  {
    __break(1u);
  }

  else
  {
    if (a2)
    {
      v6 = result;
      v7 = a2;
      bzero(result, 8 * a2);
      result = v6;
      a2 = v7;
    }

    sub_23A988240(result, a2, a3, a4);
    v9 = v8;

    return v9;
  }

  return result;
}

uint64_t sub_23A98690C(uint64_t a1)
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

    v5 = sub_23AA0D834();

    if (v5)
    {
      sub_23A986AE4(v4, a1);
      v7 = v6;

      return v7;
    }

    return 0;
  }

  v19 = v1;
  sub_23AA0DD14();
  sub_23AA0C0B4();
  v9 = sub_23AA0DD54();
  v10 = -1 << *(v3 + 32);
  v11 = v9 & ~v10;
  if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
  {
    return 0;
  }

  v12 = ~v10;
  v13 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v14 = *(*(v3 + 48) + 8 * v11);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_10:
    v11 = (v11 + 1) & v12;
    if (((*(v3 + 56 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) == 0)
    {
      return 0;
    }
  }

  v15 = *(v14 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v15 != *(a1 + v13))
  {
    goto LABEL_10;
  }

  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  v17 = *v19;
  v20 = *v19;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    sub_23A9F2474();
    v17 = v20;
  }

  v18 = *(*(v17 + 48) + 8 * v11);
  sub_23A986CA8(v11);
  result = v18;
  *v19 = v20;
  return result;
}

void sub_23A986AE4(uint64_t a1, uint64_t a2)
{

  v3 = sub_23AA0D7F4();
  v4 = swift_unknownObjectRetain();
  v5 = sub_23A9EFF10(v4, v3);
  v15 = v5;
  sub_23AA0DD14();

  sub_23AA0C0B4();
  v6 = sub_23AA0DD54();
  v7 = -1 << *(v5 + 32);
  v8 = v6 & ~v7;
  if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
  {
    goto LABEL_12;
  }

  v9 = ~v7;
  v10 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v11 = *(*(v5 + 48) + 8 * v8);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_4:
    v8 = (v8 + 1) & v9;
    if (((*(v5 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
    {
      goto LABEL_12;
    }
  }

  v12 = *(v11 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v12 != *(a2 + v10))
  {
    goto LABEL_4;
  }

  v13 = *(*(v5 + 48) + 8 * v8);
  sub_23A986CA8(v8);
  if (sub_23AA0C094())
  {
    if (v12 == *(v13 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type))
    {
      *v14 = v15;
      return;
    }
  }

  else
  {
    __break(1u);
  }

  __break(1u);
LABEL_12:

  __break(1u);
}

void sub_23A986CA8(unint64_t a1)
{
  v2 = a1;
  v3 = *v1;
  v4 = *v1 + 56;
  v5 = -1 << *(*v1 + 32);
  v6 = (a1 + 1) & ~v5;
  if (((1 << v6) & *(v4 + 8 * (v6 >> 6))) != 0)
  {
    v7 = ~v5;

    v8 = sub_23AA0D784();
    if ((*(v4 + 8 * (v6 >> 6)) & (1 << v6)) != 0)
    {
      v9 = (v8 + 1) & v7;
      do
      {
        sub_23AA0DD14();

        sub_23AA0C0B4();
        v10 = sub_23AA0DD54();

        v11 = v10 & v7;
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

unint64_t sub_23A986E78(unint64_t a1, unint64_t a2)
{
  v2 = a2;
  v54[2] = *MEMORY[0x277D85DE8];
  if (!*(a2 + 16))
  {
    goto LABEL_20;
  }

  v3 = a1;
  v54[0] = a1;
  v44 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_53;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_4:

  if (!v4)
  {
    goto LABEL_47;
  }

  v5 = 0;
  v49 = v4;
  v50 = v3 & 0xC000000000000001;
  v46 = v3 + 32;
  v47 = v3 & 0xFFFFFFFFFFFFFF8;
  v52 = (v2 + 56);
  v48 = v3;
  while (1)
  {
    if (v50)
    {
      v6 = MEMORY[0x23EE90360](v5, v3);
      v7 = __OFADD__(v5, 1);
      v8 = v5 + 1;
      if (v7)
      {
        goto LABEL_19;
      }
    }

    else
    {
      if (v5 >= *(v47 + 16))
      {
        goto LABEL_52;
      }

      v6 = *(v46 + 8 * v5);

      v7 = __OFADD__(v5, 1);
      v8 = v5 + 1;
      if (v7)
      {
LABEL_19:
        __break(1u);
LABEL_20:

        return MEMORY[0x277D84FA0];
      }
    }

    v51 = v8;
    v54[1] = v8;
    sub_23AA0DD14();
    sub_23AA0C0B4();
    v9 = sub_23AA0DD54();
    v10 = -1 << *(v2 + 32);
    v3 = v9 & ~v10;
    v11 = v3 >> 6;
    v12 = 1 << v3;
    if (((1 << v3) & v52[v3 >> 6]) != 0)
    {
      break;
    }

LABEL_6:

    v5 = v51;
    v3 = v48;
    if (v51 == v49)
    {
      goto LABEL_47;
    }
  }

  v13 = ~v10;
  v14 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v15 = v2;
    v16 = *(*(v2 + 48) + 8 * v3);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_13:
    v3 = (v3 + 1) & v13;
    v11 = v3 >> 6;
    v12 = 1 << v3;
    v2 = v15;
    if ((v52[v3 >> 6] & (1 << v3)) == 0)
    {
      goto LABEL_6;
    }
  }

  v17 = *(v16 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  if (v17 != *(v6 + v14))
  {
    goto LABEL_13;
  }

  v19 = v15;
  v20 = *(v15 + 32);
  v21 = v20 & 0x3F;
  v22 = ((1 << v20) + 63) >> 6;
  v42[0] = v22;
  if (v21 > 0xD)
  {
    v39 = 8 * v22;

    if (swift_stdlib_isStackAllocationSafe())
    {

      goto LABEL_22;
    }

    v40 = swift_slowAlloc();
    memcpy(v40, v52, v39);
    sub_23A987458(v40, v42[0], v15, v3, v54);
    v2 = v41;

    MEMORY[0x23EE91710](v40, -1, -1);
  }

  else
  {
LABEL_22:
    v42[1] = v42;
    MEMORY[0x28223BE20](v18);
    v24 = v42 - ((v23 + 15) & 0x3FFFFFFFFFFFFFF0);
    memcpy(v24, v52, v23);
    v25 = *(v15 + 16);
    v26 = *&v24[8 * v11] & ~v12;
    v45 = v24;
    *&v24[8 * v11] = v26;
    v43 = v25 - 1;
    if (v44)
    {
      v49 = sub_23AA0D7F4();
    }

    else
    {
      v49 = *(v47 + 16);
    }

LABEL_27:
    while (2)
    {
      v2 = v51;
LABEL_28:
      if (v2 != v49)
      {
        if (v50)
        {
          v27 = MEMORY[0x23EE90360](v2, v48);
          v7 = __OFADD__(v2++, 1);
          if (!v7)
          {
            goto LABEL_36;
          }

          goto LABEL_49;
        }

        if ((v2 & 0x8000000000000000) != 0)
        {
LABEL_50:
          __break(1u);
        }

        else if (v2 < *(v47 + 16))
        {
          v27 = *(v46 + 8 * v2);

          v7 = __OFADD__(v2++, 1);
          if (!v7)
          {
LABEL_36:
            v51 = v2;
            sub_23AA0DD14();
            sub_23AA0C0B4();
            v3 = v53;
            v28 = sub_23AA0DD54();
            v29 = -1 << *(v19 + 32);
            v30 = v28 & ~v29;
            v31 = v30 >> 6;
            v32 = 1 << v30;
            if (((1 << v30) & v52[v30 >> 6]) == 0)
            {
LABEL_26:

              continue;
            }

            v33 = ~v29;
            v34 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            while (1)
            {
              v3 = *(*(v19 + 48) + 8 * v30);

              if (sub_23AA0C094())
              {
                v35 = *(v3 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                if (v35 == *(v27 + v34))
                {

                  v36 = v45[v31];
                  v45[v31] = v36 & ~v32;
                  v19 = v15;
                  if ((v36 & v32) == 0)
                  {
                    goto LABEL_27;
                  }

                  v37 = v43 - 1;
                  v2 = v51;
                  if (__OFSUB__(v43, 1))
                  {
                    __break(1u);
                  }

                  --v43;
                  if (!v37)
                  {

                    v2 = MEMORY[0x277D84FA0];
                    goto LABEL_47;
                  }

                  goto LABEL_28;
                }
              }

              else
              {
              }

              v30 = (v30 + 1) & v33;
              v31 = v30 >> 6;
              v32 = 1 << v30;
              v19 = v15;
              if ((v52[v30 >> 6] & (1 << v30)) == 0)
              {
                goto LABEL_26;
              }
            }
          }

LABEL_49:
          __break(1u);
          goto LABEL_50;
        }

        __break(1u);
LABEL_52:
        __break(1u);
LABEL_53:
        v4 = sub_23AA0D7F4();
        goto LABEL_4;
      }

      break;
    }

    v2 = sub_23A9876E0(v45, v42[0], v43, v19);
  }

LABEL_47:

  return v2;
}

void sub_23A987458(unint64_t *a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t *a5)
{
  v5 = a5;
  v6 = a3;
  v7 = *(a3 + 16);
  *(a1 + ((a4 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a4) - 1;
  v8 = v7 - 1;
  v30 = a3 + 56;
  do
  {
    v26 = v8;
    do
    {
      while (1)
      {
        if (*v5 >> 62)
        {
          v9 = sub_23AA0D7F4();
        }

        else
        {
          v9 = *((*v5 & 0xFFFFFFFFFFFFFF8) + 0x10);
        }

        v10 = v5[1];
        if (v10 == v9)
        {

          sub_23A9876E0(a1, a2, v26, v6);
          return;
        }

        v11 = *v5;
        if ((*v5 & 0xC000000000000001) != 0)
        {
          v12 = MEMORY[0x23EE90360](v5[1]);
          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_29;
          }
        }

        else
        {
          if ((v10 & 0x8000000000000000) != 0)
          {
            __break(1u);
LABEL_29:
            __break(1u);
LABEL_30:
            __break(1u);
LABEL_31:
            __break(1u);
            return;
          }

          if (v10 >= *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_30;
          }

          v12 = *(v11 + 8 * v10 + 32);

          v13 = v10 + 1;
          if (__OFADD__(v10, 1))
          {
            goto LABEL_29;
          }
        }

        v5[1] = v13;
        sub_23AA0DD14();
        sub_23AA0C0B4();
        v14 = sub_23AA0DD54();
        v15 = -1 << *(v6 + 32);
        v16 = v14 & ~v15;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if (((1 << v16) & *(v30 + 8 * (v16 >> 6))) != 0)
        {
          break;
        }

LABEL_3:

        v5 = a5;
      }

      v19 = ~v15;
      v29 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      while (1)
      {
        v20 = *(*(v6 + 48) + 8 * v16);

        if (sub_23AA0C094())
        {
          break;
        }

LABEL_14:
        v16 = (v16 + 1) & v19;
        v17 = v16 >> 6;
        v18 = 1 << v16;
        if ((*(v30 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
        {
          goto LABEL_3;
        }
      }

      v21 = v6;
      v22 = *(v20 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      v23 = v22 == *(v12 + v29);
      v6 = v21;
      if (!v23)
      {
        goto LABEL_14;
      }

      v5 = a5;
      v24 = a1[v17];
      a1[v17] = v24 & ~v18;
    }

    while ((v24 & v18) == 0);
    v8 = v26 - 1;
    if (__OFSUB__(v26, 1))
    {
      goto LABEL_31;
    }
  }

  while (v26 != 1);
}

uint64_t sub_23A9876E0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v4 = a4;
  if (!a3)
  {
    v9 = MEMORY[0x277D84FA0];
LABEL_6:

    return v9;
  }

  v5 = a3;
  if (*(a4 + 16) == a3)
  {
    return v4;
  }

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB0A30, &qword_23AA19BF0);
  result = sub_23AA0D884();
  v9 = result;
  if (a2 < 1)
  {
    v10 = 0;
  }

  else
  {
    v10 = *a1;
  }

  v11 = 0;
  v12 = result + 56;
  while (v10)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_17:
    v16 = *(*(v4 + 48) + 8 * (v13 | (v11 << 6)));
    sub_23AA0DD14();

    sub_23AA0C0B4();
    result = sub_23AA0DD54();
    v17 = -1 << *(v9 + 32);
    v18 = result & ~v17;
    v19 = v18 >> 6;
    if (((-1 << v18) & ~*(v12 + 8 * (v18 >> 6))) == 0)
    {
      v21 = 0;
      v22 = (63 - v17) >> 6;
      while (++v19 != v22 || (v21 & 1) == 0)
      {
        v23 = v19 == v22;
        if (v19 == v22)
        {
          v19 = 0;
        }

        v21 |= v23;
        v24 = *(v12 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_27;
        }
      }

      goto LABEL_31;
    }

    v20 = __clz(__rbit64((-1 << v18) & ~*(v12 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_27:
    *(v12 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
    *(*(v9 + 48) + 8 * v20) = v16;
    ++*(v9 + 16);
    if (__OFSUB__(v5--, 1))
    {
      goto LABEL_32;
    }

    if (!v5)
    {
      goto LABEL_6;
    }
  }

  v14 = v11;
  while (1)
  {
    v11 = v14 + 1;
    if (__OFADD__(v14, 1))
    {
      break;
    }

    if (v11 >= a2)
    {
      goto LABEL_6;
    }

    v15 = a1[v11];
    ++v14;
    if (v15)
    {
      v13 = __clz(__rbit64(v15));
      v10 = (v15 - 1) & v15;
      goto LABEL_17;
    }
  }

  __break(1u);
LABEL_31:
  __break(1u);
LABEL_32:
  __break(1u);
  return result;
}

void *sub_23A9878FC(uint64_t a1, uint64_t a2, __n128 a3)
{
  v4 = a1 & 0xC000000000000001;
  if ((a2 & 0xC000000000000001) != 0)
  {
    if (v4)
    {
      if (a2 < 0)
      {
        v5 = a2;
      }

      else
      {
        v5 = a2 & 0xFFFFFFFFFFFFFF8;
      }

      v6 = sub_23AA0D7F4();
      a2 = sub_23A9EFF10(v5, v6);
      goto LABEL_8;
    }

    v8 = MEMORY[0x277D84FA0];
    v19 = MEMORY[0x277D84FA0];
    sub_23AA0D7B4();
    if (sub_23AA0D824())
    {
      type metadata accessor for HullPointUUID(0);
      v17 = MEMORY[0x277D84FA0];
      v9 = a1 + 56;
      while (1)
      {
        swift_dynamicCast();
        if (!*(a1 + 16) || (sub_23AA0DD14(), sub_23AA0C0B4(), v10 = sub_23AA0DD54(), v11 = -1 << *(a1 + 32), v12 = v10 & ~v11, ((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0))
        {
LABEL_13:

          goto LABEL_14;
        }

        v13 = ~v11;
        while (1)
        {
          v14 = *(*(a1 + 48) + 8 * v12);

          if (sub_23AA0C094())
          {
            break;
          }

LABEL_19:
          v12 = (v12 + 1) & v13;
          if (((*(v9 + ((v12 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v12) & 1) == 0)
          {
            goto LABEL_13;
          }
        }

        v15 = *(v14 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

        if (v15 != *(v18 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type))
        {
          goto LABEL_19;
        }

        v16 = *(v17 + 16);
        if (*(v17 + 24) <= v16)
        {
          sub_23A9F0590(v16 + 1);
        }

        v17 = v19;
        sub_23A9F153C(v18, v19);
LABEL_14:
        if (!sub_23AA0D824())
        {
          goto LABEL_29;
        }
      }
    }

    v17 = v8;
LABEL_29:

    return v17;
  }

  else
  {
    if (v4)
    {
LABEL_8:

      return sub_23A987B8C(a1, a2, a3);
    }

    return sub_23A987D2C(a1, a2);
  }
}

uint64_t sub_23A987B8C(uint64_t isStackAllocationSafe, uint64_t a2, __n128 a3)
{
  v4 = isStackAllocationSafe;
  v19[6] = *MEMORY[0x277D85DE8];
  v18 = isStackAllocationSafe;
  v5 = *(a2 + 32);
  v6 = v5 & 0x3F;
  v19[3] = &v18;
  v19[4] = a2;
  v7 = (1 << v5) + 63;
  v8 = v7 >> 6;
  if (v6 <= 0xD || (v14 = 8 * (v7 >> 6), isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    v10 = &v17 - ((v9 + 15) & 0x3FFFFFFFFFFFFFF0);
    bzero(v10, v9);
    sub_23A987EF0(v10, v8, v4, a2);
    v12 = v11;
  }

  else
  {
    v15 = v14;
    v16 = swift_slowAlloc();
    bzero(v16, v15);
    sub_23A98DEE0(v16, v8, v19);
    v12 = v19[0];

    MEMORY[0x23EE91710](v16, -1, -1);
  }

  return v12;
}

void *sub_23A987D2C(uint64_t a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v4 = *(a2 + 32);
  v5 = v4 & 0x3F;
  v6 = ((1 << v4) + 63) >> 6;
  v7 = 8 * v6;

  if (v5 <= 0xD || (isStackAllocationSafe = swift_stdlib_isStackAllocationSafe(), (isStackAllocationSafe & 1) != 0))
  {
    MEMORY[0x28223BE20](isStackAllocationSafe);
    bzero(v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0), v7);
    sub_23A988240((v13 - ((v7 + 15) & 0x3FFFFFFFFFFFFFF0)), v6, a2, a1);
    v10 = v9;
  }

  else
  {
    v12 = swift_slowAlloc();

    v10 = sub_23A98687C(v12, v6, a2, a1);

    MEMORY[0x23EE91710](v12, -1, -1);
  }

  return v10;
}

void sub_23A987EF0(unint64_t *a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v5 = a3;
  if ((a3 & 0xC000000000000001) != 0)
  {
    swift_unknownObjectRetain();
    sub_23AA0D7B4();
    type metadata accessor for HullPointUUID(0);
    sub_23A98B508();
    sub_23AA0D424();
    v5 = v47;
    v6 = v48;
    v8 = v49;
    v7 = v50;
    v9 = v51;
  }

  else
  {
    v10 = -1 << *(a3 + 32);
    v6 = a3 + 56;
    v8 = ~v10;
    v11 = -v10;
    if (v11 < 64)
    {
      v12 = ~(-1 << v11);
    }

    else
    {
      v12 = -1;
    }

    v9 = v12 & *(a3 + 56);

    v7 = 0;
  }

  v38 = 0;
  v13 = (v8 + 64) >> 6;
  v14 = a4 + 56;
  v41 = v6;
  v42 = v5;
  v40 = v13;
  while (2)
  {
    v15 = v7;
    v16 = v9;
    while (2)
    {
      while (2)
      {
        if (v5 < 0)
        {
          if (!sub_23AA0D824())
          {
            goto LABEL_31;
          }

          type metadata accessor for HullPointUUID(0);
          swift_dynamicCast();
          v21 = v46;
          v19 = v15;
          v20 = v16;
          if (!v46)
          {
            goto LABEL_31;
          }
        }

        else
        {
          v17 = v15;
          v18 = v16;
          v19 = v15;
          if (!v16)
          {
            while (1)
            {
              v19 = v17 + 1;
              if (__OFADD__(v17, 1))
              {
                break;
              }

              if (v19 >= v13)
              {
                goto LABEL_31;
              }

              v18 = *(v6 + 8 * v19);
              ++v17;
              if (v18)
              {
                goto LABEL_15;
              }
            }

            __break(1u);
            return;
          }

LABEL_15:
          v20 = (v18 - 1) & v18;
          v21 = *(*(v5 + 48) + ((v19 << 9) | (8 * __clz(__rbit64(v18)))));

          if (!v21)
          {
            goto LABEL_31;
          }
        }

        v43 = v20;
        sub_23AA0DD14();
        v22 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
        sub_23AA0C0B4();
        v23 = sub_23AA0DD54();
        v24 = -1 << *(a4 + 32);
        v25 = v23 & ~v24;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if (((1 << v25) & *(v14 + 8 * (v25 >> 6))) == 0)
        {
LABEL_9:

          v16 = v43;
          v15 = v19;
          v6 = v41;
          v5 = v42;
          v13 = v40;
          continue;
        }

        break;
      }

      v28 = ~v24;
      v44 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      v45 = ~v24;
      while (1)
      {
        v29 = *(*(a4 + 48) + 8 * v25);

        if (sub_23AA0C094())
        {
          break;
        }

LABEL_22:
        v25 = (v25 + 1) & v28;
        v26 = v25 >> 6;
        v27 = 1 << v25;
        if ((*(v14 + 8 * (v25 >> 6)) & (1 << v25)) == 0)
        {
          goto LABEL_9;
        }
      }

      v30 = v22;
      v31 = v14;
      v32 = a4;
      v33 = *(v29 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      v34 = v33 == *(v21 + v44);
      a4 = v32;
      v14 = v31;
      v22 = v30;
      v28 = v45;
      if (!v34)
      {
        goto LABEL_22;
      }

      v35 = a1[v26];
      a1[v26] = v35 | v27;
      v9 = v43;
      v7 = v19;
      v15 = v19;
      v16 = v43;
      v34 = (v35 & v27) == 0;
      v6 = v41;
      v5 = v42;
      v13 = v40;
      if (!v34)
      {
        continue;
      }

      break;
    }

    if (!__OFADD__(v38++, 1))
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_31:
  sub_23A8CA904(v5);

  sub_23A9876E0(a1, a2, v38, a4);
}

void sub_23A988240(unint64_t *a1, uint64_t a2, uint64_t a3, int64_t a4)
{
  v4 = a4;
  v5 = a3;
  if (*(a4 + 16) >= *(a3 + 16))
  {
    goto LABEL_24;
  }

  v46 = 0;
  v4 = 0;
  v41 = a4 + 56;
  v6 = 1 << *(a4 + 32);
  if (v6 < 64)
  {
    v7 = ~(-1 << v6);
  }

  else
  {
    v7 = -1;
  }

  v8 = v7 & *(a4 + 56);
  v9 = (v6 + 63) >> 6;
  v53 = a3 + 56;
  v43 = v9;
  while (1)
  {
LABEL_7:
    if (v8)
    {
      v10 = __clz(__rbit64(v8));
      v47 = (v8 - 1) & v8;
    }

    else
    {
      v11 = v4;
      do
      {
        v4 = v11 + 1;
        if (__OFADD__(v11, 1))
        {
          __break(1u);
LABEL_49:
          __break(1u);
          return;
        }

        if (v4 >= v9)
        {
          goto LABEL_47;
        }

        v12 = *(v41 + 8 * v4);
        ++v11;
      }

      while (!v12);
      v10 = __clz(__rbit64(v12));
      v47 = (v12 - 1) & v12;
    }

    v13 = *(*(a4 + 48) + 8 * (v10 | (v4 << 6)));
    sub_23AA0DD14();

    sub_23AA0C0B4();
    v14 = sub_23AA0DD54();
    v15 = -1 << *(v5 + 32);
    v16 = v14 & ~v15;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if (((1 << v16) & *(v53 + 8 * (v16 >> 6))) != 0)
    {
      break;
    }

LABEL_6:

    v9 = v43;
    v8 = v47;
  }

  v19 = ~v15;
  v49 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
  while (1)
  {
    v20 = *(*(v5 + 48) + 8 * v16);

    if (sub_23AA0C094())
    {
      break;
    }

LABEL_17:
    v16 = (v16 + 1) & v19;
    v17 = v16 >> 6;
    v18 = 1 << v16;
    if ((*(v53 + 8 * (v16 >> 6)) & (1 << v16)) == 0)
    {
      goto LABEL_6;
    }
  }

  v21 = *(v20 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

  v22 = v21 == *(v13 + v49);
  v5 = a3;
  if (!v22)
  {
    goto LABEL_17;
  }

  v9 = v43;
  a1[v17] |= v18;
  v8 = v47;
  v23 = __OFADD__(v46++, 1);
  if (!v23)
  {
    goto LABEL_7;
  }

  __break(1u);
LABEL_24:
  v46 = 0;
  v24 = 0;
  v44 = v5 + 56;
  v25 = 1 << *(v5 + 32);
  if (v25 < 64)
  {
    v26 = ~(-1 << v25);
  }

  else
  {
    v26 = -1;
  }

  v27 = v26 & *(v5 + 56);
  v28 = (v25 + 63) >> 6;
  v29 = v4 + 56;
  v50 = v28;
  while (2)
  {
    while (2)
    {
      if (v27)
      {
        v30 = __clz(__rbit64(v27));
        v54 = (v27 - 1) & v27;
      }

      else
      {
        v31 = v24;
        do
        {
          v24 = v31 + 1;
          if (__OFADD__(v31, 1))
          {
            goto LABEL_49;
          }

          if (v24 >= v28)
          {
            goto LABEL_46;
          }

          v32 = *(v44 + 8 * v24);
          ++v31;
        }

        while (!v32);
        v30 = __clz(__rbit64(v32));
        v54 = (v32 - 1) & v32;
      }

      v48 = v30 | (v24 << 6);
      v33 = *(*(a3 + 48) + 8 * v48);
      sub_23AA0DD14();

      sub_23AA0C0B4();
      v34 = sub_23AA0DD54();
      v35 = -1 << *(v4 + 32);
      v36 = v34 & ~v35;
      if (((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
      {
LABEL_28:

        v28 = v50;
        v27 = v54;
        continue;
      }

      break;
    }

    v37 = ~v35;
    v38 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
    while (2)
    {
      v39 = *(*(v4 + 48) + 8 * v36);

      if ((sub_23AA0C094() & 1) == 0)
      {

        goto LABEL_39;
      }

      v40 = *(v39 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

      v22 = v40 == *(v33 + v38);
      v4 = a4;
      if (!v22)
      {
LABEL_39:
        v36 = (v36 + 1) & v37;
        if (((*(v29 + ((v36 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v36) & 1) == 0)
        {
          goto LABEL_28;
        }

        continue;
      }

      break;
    }

    *(a1 + ((v48 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v48;
    v23 = __OFADD__(v46++, 1);
    v28 = v50;
    v27 = v54;
    if (!v23)
    {
      continue;
    }

    break;
  }

  __break(1u);
LABEL_46:
  v5 = a3;
LABEL_47:

  sub_23A9876E0(a1, a2, v46, v5);
}

void sub_23A9886A4(uint64_t a1, uint64_t a2, char a3, uint64_t a4)
{
  if ((a4 & 0xC000000000000001) == 0)
  {
    if (a3)
    {
      if (sub_23AA0D7D4() == *(a4 + 36))
      {
        sub_23AA0D7E4();
        type metadata accessor for HullPointUUID(0);
        swift_dynamicCast();
        sub_23AA0DD14();
        sub_23AA0C0B4();
        v6 = sub_23AA0DD54();
        v7 = -1 << *(a4 + 32);
        v8 = v6 & ~v7;
        if ((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8))
        {
          v9 = ~v7;
          v10 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
          while (1)
          {
            v11 = *(*(a4 + 48) + 8 * v8);

            if (sub_23AA0C094())
            {
              v12 = *(v11 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

              if (v12 == *(v13 + v10))
              {

                goto LABEL_20;
              }
            }

            else
            {
            }

            v8 = (v8 + 1) & v9;
            if (((*(a4 + 56 + ((v8 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v8) & 1) == 0)
            {
              goto LABEL_26;
            }
          }
        }

        goto LABEL_26;
      }

      __break(1u);
    }

    else if ((a1 & 0x8000000000000000) == 0 && 1 << *(a4 + 32) > a1)
    {
      if ((*(a4 + 8 * (a1 >> 6) + 56) >> a1))
      {
        if (*(a4 + 36) == a2)
        {
LABEL_20:

          return;
        }

        goto LABEL_25;
      }

LABEL_24:
      __break(1u);
LABEL_25:
      __break(1u);
LABEL_26:

      __break(1u);
      goto LABEL_27;
    }

    __break(1u);
    goto LABEL_24;
  }

  if ((a3 & 1) == 0)
  {
LABEL_27:
    __break(1u);
    return;
  }

  if (a4 < 0)
  {
    v5 = a4;
  }

  else
  {
    v5 = a4 & 0xFFFFFFFFFFFFFF8;
  }

  MEMORY[0x23EE902B0](a1, a2, v5);
  type metadata accessor for HullPointUUID(0);
  swift_dynamicCast();
}

unint64_t sub_23A9888E0(unint64_t a1)
{
  v1 = a1;
  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_71;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v3 = MEMORY[0x277D84F90];
    v45 = i;
    if (!i)
    {
      break;
    }

    v4 = 0;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v5 = MEMORY[0x23EE90360](v4, v1);
      }

      else
      {
        if (v4 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_66;
        }

        v5 = *(v1 + 8 * v4 + 32);
      }

      v6 = v5;
      v7 = v4 + 1;
      if (__OFADD__(v4, 1))
      {
        break;
      }

      v8 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v9 = *&v6[v8];

      v10 = v9;
      i = v45;
      sub_23A911BA4(v10);
      ++v4;
      if (v7 == v45)
      {
        v11 = v50;
        v3 = MEMORY[0x277D84F90];
        if (!(v50 >> 62))
        {
          goto LABEL_13;
        }

LABEL_60:
        v36 = v11;
        v12 = sub_23AA0D7F4();
        v11 = v36;
        if (!v12)
        {
          goto LABEL_61;
        }

LABEL_14:
        v13 = 0;
        v42 = v11 & 0xC000000000000001;
        v39 = v11 + 32;
        v40 = v11 & 0xFFFFFFFFFFFFFF8;
        v48 = v1 & 0xFFFFFFFFFFFFFF8;
        v43 = MEMORY[0x277D84F98];
        v46 = v1 & 0xC000000000000001;
        v47 = v1 + 32;
        v38 = v1;
        v1 &= 0xC000000000000001;
        v41 = v12;
        while (2)
        {
          if (v42)
          {
            v14 = MEMORY[0x23EE90360](v13);
            v15 = __OFADD__(v13++, 1);
            if (v15)
            {
              goto LABEL_67;
            }
          }

          else
          {
            if (v13 >= *(v40 + 16))
            {
              goto LABEL_70;
            }

            v14 = *(v39 + 8 * v13);

            v15 = __OFADD__(v13++, 1);
            if (v15)
            {
              goto LABEL_67;
            }
          }

          v51 = v3;
          if (i)
          {
            v44 = v13;
            v16 = 0;
            v49 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            while (1)
            {
              if (v1)
              {
                v17 = MEMORY[0x23EE90360](v16, v38);
              }

              else
              {
                if (v16 >= *(v48 + 16))
                {
                  goto LABEL_64;
                }

                v17 = *(v47 + 8 * v16);
              }

              v18 = v17;
              v15 = __OFADD__(v16++, 1);
              if (v15)
              {
                __break(1u);
LABEL_64:
                __break(1u);
                goto LABEL_65;
              }

              v19 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              swift_beginAccess();
              v20 = *&v18[v19];
              if ((v20 & 0xC000000000000001) != 0)
              {

                v21 = sub_23AA0D834();

                if (v21)
                {
LABEL_33:
                  sub_23AA0D944();
                  sub_23AA0D974();
                  sub_23AA0D984();
                  sub_23AA0D954();
                  goto LABEL_26;
                }
              }

              else if (*(v20 + 16))
              {
                sub_23AA0DD14();

                sub_23AA0C0B4();
                v22 = sub_23AA0DD54();
                v23 = -1 << *(v20 + 32);
                v24 = v22 & ~v23;
                if ((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24))
                {
                  v25 = ~v23;
                  do
                  {
                    v26 = *(*(v20 + 48) + 8 * v24);

                    if (sub_23AA0C094())
                    {
                      v27 = *(v26 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                      if (v27 == *(v14 + v49))
                      {

                        i = v45;
                        v1 = v46;
                        goto LABEL_33;
                      }
                    }

                    else
                    {
                    }

                    v24 = (v24 + 1) & v25;
                  }

                  while (((*(v20 + 56 + ((v24 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v24) & 1) != 0);

                  i = v45;
                }

                else
                {
                }

                v1 = v46;
                goto LABEL_26;
              }

LABEL_26:
              if (v16 == i)
              {
                v28 = v3;
                v3 = MEMORY[0x277D84F90];
                v13 = v44;
                if ((v51 & 0x8000000000000000) == 0)
                {
                  goto LABEL_49;
                }

                goto LABEL_56;
              }
            }
          }

          v28 = v3;
          if (v3 < 0)
          {
            goto LABEL_56;
          }

LABEL_49:
          if ((v28 & 0x4000000000000000) != 0)
          {
LABEL_56:
            if (sub_23AA0D7F4() != 2)
            {
              goto LABEL_15;
            }

LABEL_51:
            if ((v28 & 0xC000000000000001) != 0)
            {
              v30 = v13;
              v32 = MEMORY[0x23EE90360](0, v28);
              v33 = MEMORY[0x23EE90360](1, v28);
            }

            else
            {
              v29 = *(v28 + 16);
              if (!v29)
              {
                goto LABEL_68;
              }

              if (v29 == 1)
              {
                goto LABEL_69;
              }

              v30 = v13;
              v31 = *(v28 + 40);
              v32 = *(v28 + 32);
              v33 = v31;
            }

            v34 = v33;

            isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
            v50 = v43;
            sub_23A9D9E74(v32, v34, v14, isUniquelyReferenced_nonNull_native);

            v13 = v30;
            v1 = v46;
          }

          else
          {
            if (*(v28 + 16) == 2)
            {
              goto LABEL_51;
            }

LABEL_15:
          }

          if (v13 == v41)
          {
            goto LABEL_62;
          }

          continue;
        }
      }
    }

LABEL_65:
    __break(1u);
LABEL_66:
    __break(1u);
LABEL_67:
    __break(1u);
LABEL_68:
    __break(1u);
LABEL_69:
    __break(1u);
LABEL_70:
    __break(1u);
LABEL_71:
    ;
  }

  v11 = MEMORY[0x277D84F90];
  if (MEMORY[0x277D84F90] >> 62)
  {
    goto LABEL_60;
  }

LABEL_13:
  v12 = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v12)
  {
    goto LABEL_14;
  }

LABEL_61:
  v43 = MEMORY[0x277D84F98];
LABEL_62:

  return v43;
}

void *sub_23A988E44(uint64_t a1)
{
  v1 = a1 + 64;
  v2 = 1 << *(a1 + 32);
  v3 = -1;
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;

  v6 = 0;
  v7 = MEMORY[0x277D84F98];
  while (v4)
  {
LABEL_11:
    v9 = __clz(__rbit64(v4)) | (v6 << 6);
    v10 = *(*(a1 + 48) + 8 * v9);
    v11 = *(a1 + 56) + 16 * v9;
    v12 = *v11;
    v13 = *(v11 + 8);
    v14 = *&v13[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    v15 = *(*v11 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);

    v16 = v12;
    v17 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v19 = sub_23A9EDE74(v10);
    v22 = v7[2];
    v23 = (v20 & 1) == 0;
    v24 = __OFADD__(v22, v23);
    v25 = v22 + v23;
    if (v24)
    {
      goto LABEL_22;
    }

    v26 = v20;
    if (v7[3] >= v25)
    {
      if ((isUniquelyReferenced_nonNull_native & 1) == 0)
      {
        v36 = v19;
        sub_23A90D188();
        v19 = v36;
      }
    }

    else
    {
      sub_23A90697C(v25, isUniquelyReferenced_nonNull_native);
      v19 = sub_23A9EDE74(v10);
      if ((v26 & 1) != (v27 & 1))
      {
        goto LABEL_24;
      }
    }

    v28 = vsub_f32(v14, v15);
    *v21.i32 = -*&v28.i32[1];
    v29 = vzip1_s32(v21, v28);
    v30 = vmul_f32(v29, v29);
    v30.i32[0] = vadd_f32(v30, vdup_lane_s32(v30, 1)).u32[0];
    v31 = vrsqrte_f32(v30.u32[0]);
    v32 = vmul_f32(v31, vrsqrts_f32(v30.u32[0], vmul_f32(v31, v31)));
    v33 = vmul_n_f32(v29, vmul_f32(v32, vrsqrts_f32(v30.u32[0], vmul_f32(v32, v32))).f32[0]);
    if (v26)
    {
      *(v7[7] + 8 * v19) = v33;
    }

    else
    {
      v7[(v19 >> 6) + 8] |= 1 << v19;
      *(v7[6] + 8 * v19) = v10;
      *(v7[7] + 8 * v19) = v33;
      v34 = v7[2];
      v24 = __OFADD__(v34, 1);
      v35 = v34 + 1;
      if (v24)
      {
        goto LABEL_23;
      }

      v7[2] = v35;
    }

    v4 &= v4 - 1;
  }

  while (1)
  {
    v8 = v6 + 1;
    if (__OFADD__(v6, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return v7;
    }

    v4 = *(v1 + 8 * v8);
    ++v6;
    if (v4)
    {
      v6 = v8;
      goto LABEL_11;
    }
  }

  __break(1u);
LABEL_22:
  __break(1u);
LABEL_23:
  __break(1u);
LABEL_24:
  type metadata accessor for HullPointUUID(0);
  result = sub_23AA0DC24();
  __break(1u);
  return result;
}

unint64_t sub_23A9890A4(unint64_t result)
{
  v1 = result;
  if (result >> 62)
  {
    goto LABEL_26;
  }

  v2 = *((result & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (!v2)
  {
    return 0;
  }

LABEL_3:
  if ((v1 & 0xC000000000000001) != 0)
  {
    v3 = MEMORY[0x23EE90360](0, v1);
    goto LABEL_6;
  }

  if (*((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    v3 = *(v1 + 32);
LABEL_6:
    v4 = v3;
    if (v2 == 1)
    {
      return v4;
    }

    v5 = 1;
    while (1)
    {
      if ((v1 & 0xC000000000000001) != 0)
      {
        v6 = MEMORY[0x23EE90360](v5, v1);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
          goto LABEL_23;
        }
      }

      else
      {
        if ((v5 & 0x8000000000000000) != 0)
        {
          goto LABEL_24;
        }

        if (v5 >= *((v1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          goto LABEL_25;
        }

        v6 = *(v1 + 8 * v5 + 32);
        v7 = v5 + 1;
        if (__OFADD__(v5, 1))
        {
LABEL_23:
          __break(1u);
LABEL_24:
          __break(1u);
LABEL_25:
          __break(1u);
LABEL_26:
          result = sub_23AA0D7F4();
          v2 = result;
          if (!result)
          {
            return 0;
          }

          goto LABEL_3;
        }
      }

      LODWORD(v8) = HIDWORD(*&v6[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
      LODWORD(v9) = HIDWORD(*&v4[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
      v10 = v8 < v9;
      v11 = vcgt_f32(*&v4[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v6[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]).u8[0];
      if (vabds_f32(v8, v9) < 0.00000011921)
      {
        v10 = v11;
      }

      if (v10)
      {
        v12 = v6;

        result = v12;
        v4 = v12;
        v5 = v7;
        if (v7 == v2)
        {
          return result;
        }
      }

      else
      {

        ++v5;
        if (v7 == v2)
        {
          return v4;
        }
      }
    }
  }

  __break(1u);
  return result;
}

char *sub_23A989220(unint64_t a1, float a2)
{
  v3 = a1;
  v130 = MEMORY[0x277D84FA0];
  v128[0] = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
    goto LABEL_142;
  }

  v4 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (2)
  {
    v5 = MEMORY[0x277D84F90];
    v118 = v4;
    if (v4)
    {
      v6 = 0;
      do
      {
        if ((v3 & 0xC000000000000001) != 0)
        {
          v7 = MEMORY[0x23EE90360](v6, v3);
        }

        else
        {
          if (v6 >= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_141;
          }

          v7 = *(v3 + 8 * v6 + 32);
        }

        v8 = v7;
        v9 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_140;
        }

        v10 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v11 = *&v8[v10];

        sub_23A911BA4(v11);
        ++v6;
      }

      while (v9 != v118);
      v12 = v128[0];
    }

    else
    {
      v12 = MEMORY[0x277D84F90];
    }

    v13 = sub_23A9F4D08(v12);

    if ((v13 & 0xC000000000000001) != 0)
    {
      sub_23AA0D7B4();
      type metadata accessor for HullPointUUID(0);
      sub_23A98B508();
      sub_23AA0D424();
      v13 = v131;
      v14 = v132;
      v15 = v133;
      v16 = v134;
      v17 = v135;
    }

    else
    {
      v16 = 0;
      v18 = -1 << *(v13 + 32);
      v14 = v13 + 56;
      v15 = ~v18;
      v19 = -v18;
      if (v19 < 64)
      {
        v20 = ~(-1 << v19);
      }

      else
      {
        v20 = -1;
      }

      v17 = v20 & *(v13 + 56);
    }

    v21 = (v15 + 64) >> 6;
    v22 = v3 & 0xC000000000000001;
    v120 = v3 + 32;
    v122 = v3 & 0xFFFFFFFFFFFFFF8;
    v23 = v5;
    v109 = v3;
    v3 = v118;
    v111 = v21;
    v112 = v14;
    v110 = v13;
    v117 = v22;
    while (2)
    {
      v115 = v23;
      if ((v13 & 0x8000000000000000) == 0)
      {
        goto LABEL_21;
      }

LABEL_27:
      v28 = sub_23AA0D824();
      if (!v28)
      {
        goto LABEL_86;
      }

      v129 = v28;
      type metadata accessor for HullPointUUID(0);
      swift_dynamicCast();
      v27 = v128[0];
      v113 = v17;
      v114 = v16;
      if (!v128[0])
      {
        goto LABEL_86;
      }

LABEL_29:
      v129 = v5;
      if (!v3)
      {
        v42 = v5;
        if (v5 < 0)
        {
          break;
        }

        goto LABEL_55;
      }

      v29 = 0;
      v124 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
      do
      {
        if (v22)
        {
          v30 = MEMORY[0x23EE90360](v29, v109);
        }

        else
        {
          if (v29 >= *(v122 + 16))
          {
            goto LABEL_137;
          }

          v30 = *(v120 + 8 * v29);
        }

        v31 = v30;
        if (__OFADD__(v29++, 1))
        {
          __break(1u);
LABEL_137:
          __break(1u);
          goto LABEL_138;
        }

        v33 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v34 = *&v31[v33];
        if ((v34 & 0xC000000000000001) != 0)
        {

          v35 = sub_23AA0D834();

          if ((v35 & 1) == 0)
          {
            goto LABEL_31;
          }

LABEL_39:
          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
        }

        else
        {
          if (!*(v34 + 16))
          {
LABEL_31:

            continue;
          }

          sub_23AA0DD14();

          sub_23AA0C0B4();
          v36 = sub_23AA0DD54();
          v37 = -1 << *(v34 + 32);
          v38 = v36 & ~v37;
          if ((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38))
          {
            v39 = ~v37;
            do
            {
              v40 = *(*(v34 + 48) + 8 * v38);

              if (sub_23AA0C094())
              {
                v41 = *(v40 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                if (v41 == *(v27 + v124))
                {

                  v23 = v115;
                  v22 = v117;
                  v3 = v118;
                  goto LABEL_39;
                }
              }

              else
              {
              }

              v38 = (v38 + 1) & v39;
            }

            while (((*(v34 + 56 + ((v38 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v38) & 1) != 0);

            v23 = v115;
            v3 = v118;
          }

          else
          {
          }

          v22 = v117;
        }
      }

      while (v29 != v3);
      v42 = v129;
      v5 = MEMORY[0x277D84F90];
      v13 = v110;
      if ((v129 & 0x8000000000000000) == 0)
      {
LABEL_55:

        result = *(v42 + 16);
        if (result != 2)
        {
          goto LABEL_57;
        }

LABEL_61:
        if ((v42 & 0xC000000000000001) != 0)
        {
          v44 = *(MEMORY[0x23EE90360](1, v42) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          swift_unknownObjectRelease();
          v45 = MEMORY[0x23EE90360](0, v42);
        }

        else
        {
          if (*(v42 + 16) < 2uLL)
          {
            goto LABEL_144;
          }

          v44 = *(*(v42 + 40) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          v45 = *(v42 + 32);
        }

        v46 = v45;

        v47 = *&v46[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

        v48 = sub_23A938A28(0, 1, 1, v5);
        v50 = *(v48 + 2);
        v49 = *(v48 + 3);
LABEL_75:
        v59 = v50 + 1;
        if (v50 >= v49 >> 1)
        {
          v48 = sub_23A938A28((v49 > 1), v50 + 1, 1, v48);
        }

        *(v48 + 2) = v59;
        *&v48[8 * v50 + 32] = vsub_f32(v44, v47);
        v60 = 32;
        do
        {
          v125 = *&v48[v60];
          v61.f32[0] = _simd_orient_vf2(1065353216, v125);
          v116 = acosf(vaddv_f32(vmul_f32(vbsl_s8(vdup_lane_s32(vcgt_f32(0, v61), 0), vsub_f32(0, v125), v125), 1065353216)) / sqrtf(vaddv_f32(vmul_f32(v125, v125))));
          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v23 = sub_23A9388A8(0, *(v23 + 2) + 1, 1, v23);
          }

          v63 = *(v23 + 2);
          v62 = *(v23 + 3);
          if (v63 >= v62 >> 1)
          {
            v23 = sub_23A9388A8((v62 > 1), v63 + 1, 1, v23);
          }

          *&v64 = v125;
          *(&v64 + 1) = LODWORD(v116);
          *(v23 + 2) = v63 + 1;
          *&v23[16 * v63 + 32] = v64;
          sub_23A9EF224(v128, v116);
          v60 += 8;
          --v59;
        }

        while (v59);

        v5 = MEMORY[0x277D84F90];
        v13 = v110;
        v21 = v111;
        v14 = v112;
        v17 = v113;
        v16 = v114;
        continue;
      }

      break;
    }

    result = sub_23AA0D7F4();
    if (result == 2)
    {
      goto LABEL_61;
    }

LABEL_57:
    if (result != 4)
    {

      v17 = v113;
      v16 = v114;
      v21 = v111;
      v14 = v112;
      if (v13 < 0)
      {
        goto LABEL_27;
      }

LABEL_21:
      v24 = v16;
      v25 = v17;
      v26 = v16;
      if (!v17)
      {
        while (1)
        {
          v26 = v24 + 1;
          if (__OFADD__(v24, 1))
          {
            goto LABEL_139;
          }

          if (v26 >= v21)
          {
            break;
          }

          v25 = *(v14 + 8 * v26);
          ++v24;
          if (v25)
          {
            goto LABEL_25;
          }
        }

LABEL_86:
        sub_23A8CA904(v13);
        v65 = 0;
        v66 = v130 + 56;
        v123 = v130;
        v67 = 1 << *(v130 + 32);
        v68 = -1;
        if (v67 < 64)
        {
          v68 = ~(-1 << v67);
        }

        v69 = v68 & *(v130 + 56);
        v70 = (v67 + 63) >> 6;
        v119 = v5;
        v121 = v23 + 32;
        v71 = 0.0;
        while (2)
        {
          v72 = v65;
          if (!v69)
          {
            goto LABEL_91;
          }

LABEL_90:
          v65 = v72;
LABEL_94:
          v73 = *(v23 + 2);
          if (v73)
          {
            v74 = *(*(v123 + 48) + ((v65 << 8) | (4 * __clz(__rbit64(v69)))));
            v75 = v5;
            v76 = v121;
            do
            {
              v80 = COERCE_FLOAT(*(v76 + 1));
              if (v74 <= v80 && v80 < (v74 + a2))
              {
                v126 = *v76;
                isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
                v128[0] = v75;
                if ((isUniquelyReferenced_nonNull_native & 1) == 0)
                {
                  sub_23A975DC0(0, *(v75 + 2) + 1, 1);
                  v75 = v128[0];
                }

                v78 = *(v75 + 2);
                v77 = *(v75 + 3);
                v79 = v126;
                if (v78 >= v77 >> 1)
                {
                  sub_23A975DC0((v77 > 1), v78 + 1, 1);
                  v79 = v126;
                  v75 = v128[0];
                }

                *(v75 + 2) = v78 + 1;
                *&v75[16 * v78 + 32] = v79;
              }

              v76 += 16;
              --v73;
            }

            while (v73);
          }

          else
          {
            v75 = v5;
          }

          v69 &= v69 - 1;
          v3 = *(v75 + 2);
          if (v3)
          {
            v128[0] = MEMORY[0x277D84F90];
            sub_23A975DF0(0, v3, 0);
            v83 = v128[0];
            v84 = (v75 + 32);
            v85 = *(v128[0] + 16);
            do
            {
              v86 = *v84;
              v128[0] = v83;
              v87 = *(v83 + 24);
              v88 = v85 + 1;
              if (v85 >= v87 >> 1)
              {
                v127 = v86;
                sub_23A975DF0((v87 > 1), v85 + 1, 1);
                v86 = v127;
                v83 = v128[0];
              }

              *(v83 + 16) = v88;
              *(v83 + 4 * v85 + 32) = vmuls_lane_f32(sqrtf(vaddv_f32(*&vmulq_f32(v86, v86))), v86, 2);
              ++v84;
              ++v85;
              --v3;
            }

            while (v3);
            v5 = MEMORY[0x277D84F90];
            if (v88 <= 7)
            {
LABEL_114:
              v89 = 0;
              v90 = 0.0;
              goto LABEL_120;
            }

LABEL_117:
            v89 = v88 & 0xFFFFFFFFFFFFFFF8;
            v91 = v83 + 48;
            v90 = 0.0;
            v92 = v88 & 0xFFFFFFFFFFFFFFF8;
            do
            {
              v90 = (((((((v90 + COERCE_FLOAT(*(v91 - 16))) + COERCE_FLOAT(HIDWORD(*(v91 - 16)))) + COERCE_FLOAT(*(v91 - 8))) + COERCE_FLOAT(HIDWORD(*(v91 - 16)))) + COERCE_FLOAT(*v91)) + COERCE_FLOAT(HIDWORD(*v91))) + COERCE_FLOAT(*(v91 + 8))) + COERCE_FLOAT(HIDWORD(*v91));
              v91 += 32;
              v92 -= 8;
            }

            while (v92);
            if (v88 != v89)
            {
LABEL_120:
              v93 = v88 - v89;
              v94 = (v83 + 4 * v89 + 32);
              do
              {
                v95 = *v94++;
                v90 = v90 + v95;
                --v93;
              }

              while (v93);
            }

            if (v71 < v90)
            {
              goto LABEL_127;
            }
          }

          else
          {
            v5 = MEMORY[0x277D84F90];
            v88 = *(MEMORY[0x277D84F90] + 16);
            if (v88)
            {
              v83 = MEMORY[0x277D84F90];
              if (v88 <= 7)
              {
                goto LABEL_114;
              }

              goto LABEL_117;
            }

            if (v71 < 0.0)
            {
              v90 = 0.0;
LABEL_127:

              v71 = v90;
              v119 = v75;
              v23 = v115;
              continue;
            }
          }

          break;
        }

        v72 = v65;
        v23 = v115;
        if (!v69)
        {
LABEL_91:
          while (1)
          {
            v65 = v72 + 1;
            if (__OFADD__(v72, 1))
            {
              break;
            }

            if (v65 >= v70)
            {

              v96 = *(v119 + 2);
              if (v96)
              {
                v97 = (v119 + 32);
                v98 = 0.0;
                v99 = 0.0;
                do
                {
                  v100 = *v97++;
                  v101 = sqrtf(vaddv_f32(*&vmulq_f32(v100, v100)));
                  v98 = v98 + vmuls_lane_f32(v101, v100, 2);
                  v99 = v99 + v101;
                  --v96;
                }

                while (v96);
              }

              else
              {
                v98 = 0.0;
                v99 = 0.0;
              }

              if (fabsf(v99) < 0.00000011921)
              {
                return 0;
              }

              v102 = tanf(v98 / v99);
              __asm { FMOV            V1.2S, #1.0 }

              _D1.f32[1] = v102;
              v106 = vmul_f32(_D1, _D1);
              v106.i32[0] = vadd_f32(v106, vdup_lane_s32(v106, 1)).u32[0];
              v107 = vrsqrte_f32(v106.u32[0]);
              v108 = vmul_f32(v107, vrsqrts_f32(v106.u32[0], vmul_f32(v107, v107)));
              return vmul_n_f32(_D1, vmul_f32(v108, vrsqrts_f32(v106.u32[0], vmul_f32(v108, v108))).f32[0]);
            }

            v69 = *(v66 + 8 * v65);
            ++v72;
            if (v69)
            {
              goto LABEL_94;
            }
          }

LABEL_138:
          __break(1u);
LABEL_139:
          __break(1u);
LABEL_140:
          __break(1u);
LABEL_141:
          __break(1u);
LABEL_142:
          v4 = sub_23AA0D7F4();
          continue;
        }

        goto LABEL_90;
      }

LABEL_25:
      v113 = (v25 - 1) & v25;
      v114 = v26;
      v27 = *(*(v13 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

      if (!v27)
      {
        goto LABEL_86;
      }

      goto LABEL_29;
    }

    break;
  }

  if ((v42 & 0xC000000000000001) != 0)
  {
    v51 = v22;
    v53 = *(MEMORY[0x23EE90360](1, v42) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
    swift_unknownObjectRelease();
    v54 = MEMORY[0x23EE90360](0, v42);
    v52 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    goto LABEL_68;
  }

  if (*(v42 + 16) >= 2uLL)
  {
    v51 = v22;
    v52 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    v53 = *(*(v42 + 40) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
    v54 = *(v42 + 32);
LABEL_68:
    v55 = *&v54[v52];

    result = sub_23A938A28(0, 1, 1, v5);
    v48 = result;
    v57 = *(result + 2);
    v56 = *(result + 3);
    if (v57 >= v56 >> 1)
    {
      result = sub_23A938A28((v56 > 1), v57 + 1, 1, result);
      v48 = result;
    }

    *(v48 + 2) = v57 + 1;
    *&v48[8 * v57 + 32] = vsub_f32(v53, v55);
    if ((v42 & 0xC000000000000001) != 0)
    {
      v44 = *(MEMORY[0x23EE90360](3, v42) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      swift_unknownObjectRelease();
      v58 = MEMORY[0x23EE90360](0, v42);

      v22 = v51;
    }

    else
    {
      if (*(v42 + 16) < 4uLL)
      {
        goto LABEL_145;
      }

      v22 = v51;
      v44 = *(*(v42 + 56) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      v58 = *(v42 + 32);
    }

    v47 = *&v58[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

    v50 = *(v48 + 2);
    v49 = *(v48 + 3);
    goto LABEL_75;
  }

  __break(1u);
LABEL_144:
  __break(1u);
LABEL_145:
  __break(1u);
  return result;
}

void sub_23A989EB4(unint64_t a1, char *a2, char a3)
{
  if (a1 >> 62)
  {
    v6 = sub_23AA0D7F4();
    if (!v6)
    {
      return;
    }
  }

  else
  {
    v6 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    if (!v6)
    {
      return;
    }
  }

  v7 = sub_23A9890A4(a1);
  if (v7)
  {
    v8 = *&v7[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

    if (a3)
    {
      v11 = sub_23A989220(a1, 0.1);
      if (v12)
      {
        return;
      }

      a2 = v11;
    }

    if (v6 < 1)
    {
      __break(1u);
    }

    else
    {
      v13 = a2;
      v44 = HIDWORD(a2);
      v45 = -*(&a2 + 1);
      v46 = a2;
      v14.f32[0] = -*(&a2 + 1);
      v14.i32[1] = a2;
      if ((a1 & 0xC000000000000001) != 0)
      {
        v15 = 0;
        *&v9 = 0x7F0000007FLL;
        *&v10 = vneg_f32(0x7F0000007FLL);
        v47 = v14;
        v48 = v13;
        do
        {
          v49 = v10;
          v50 = v9;
          v16 = MEMORY[0x23EE90360](v15++, a1);
          v17 = *(v16 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
          swift_unknownObjectRelease();
          HIDWORD(v13) = v48.i32[1];
          *(&v10 + 1) = *(&v49 + 1);
          *(&v9 + 1) = *(&v50 + 1);
          v18 = vsub_f32(v17, v8);
          v19 = vmul_f32(v18, v48);
          v20 = vmul_f32(v47, v18);
          v21 = vadd_f32(vzip1_s32(v19, v20), vzip2_s32(v19, v20));
          *&v10 = vbsl_s8(vcgt_f32(*&v49, v21), v21, *&v49);
          *&v9 = vbsl_s8(vcgt_f32(v21, *&v50), v21, *&v50);
        }

        while (v6 != v15);
      }

      else
      {
        v22 = (a1 + 32);
        *&v9 = 0x7F0000007FLL;
        *&v10 = vneg_f32(0x7F0000007FLL);
        do
        {
          v23 = *v22++;
          v24 = vsub_f32(*(v23 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position), v8);
          v25 = vmul_f32(v24, a2);
          v26 = vmul_f32(v14, v24);
          v27 = vadd_f32(vzip1_s32(v25, v26), vzip2_s32(v25, v26));
          *&v10 = vbsl_s8(vcgt_f32(*&v10, v27), v27, *&v10);
          *&v9 = vbsl_s8(vcgt_f32(v27, *&v9), v27, *&v9);
          --v6;
        }

        while (v6);
      }

      LODWORD(v13) = v46;
      v28 = vadd_f32(v8, vmul_n_f32(v13, *&v10));
      v29 = vmul_lane_f32(__PAIR64__(v46, LODWORD(v45)), *&v10, 1);
      v30 = vadd_f32(v8, vmul_n_f32(v13, *&v9));
      v31 = vmul_lane_f32(__PAIR64__(v46, LODWORD(v45)), *&v9, 1);
      v32 = vadd_f32(v31, v28);
      v33 = vadd_f32(v30, v31);
      v34 = vadd_f32(v29, v30);
      v35 = vadd_f32(v29, v28);
      v36 = vsub_f32(*&v9, *&v10);
      type metadata accessor for OBB();
      v37 = swift_allocObject();
      *(v37 + 16) = v32;
      *(v37 + 24) = v33;
      *(v37 + 32) = v34;
      *(v37 + 40) = v35;
      *(v37 + 96) = v36;
      __asm { FMOV            V1.2S, #0.25 }

      *&v43 = vmul_f32(vadd_f32(v35, vadd_f32(v34, vadd_f32(v33, v32))), _D1);
      *(&v43 + 1) = 1065353216;
      *(v37 + 48) = __PAIR64__(v44, v46);
      *(v37 + 64) = __PAIR64__(v46, LODWORD(v45));
      *(v37 + 80) = v43;
    }
  }
}

unint64_t sub_23A98A108(unint64_t a1, float a2)
{
  v151 = sub_23AA0C0E4();
  v4 = *(v151 - 8);
  v5.n128_f64[0] = MEMORY[0x28223BE20](v151);
  v150 = &v129 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v139 = a1;
  v141 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_172;
  }

  v7 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
LABEL_3:
  v8 = MEMORY[0x277D84F90];
  if (!v7)
  {
    v51 = MEMORY[0x277D84F90];
    goto LABEL_49;
  }

  v160 = MEMORY[0x277D84F90];
  v142 = v7;
  result = sub_23AA0D964();
  if (v142 < 0)
  {
    __break(1u);
LABEL_175:
    __break(1u);
LABEL_176:
    __break(1u);
LABEL_177:
    __break(1u);
  }

  else
  {
    v10 = 0;
    v140 = v139 & 0xC000000000000001;
    v137 = v139 + 32;
    v138 = v139 & 0xFFFFFFFFFFFFFF8;
    v148 = (v4 + 32);
    v149 = (v4 + 16);
    v11 = v150;
    while (2)
    {
      if (__OFADD__(v10, 1))
      {
        goto LABEL_163;
      }

      v144 = v10 + 1;
      if (v140)
      {
        v18 = MEMORY[0x23EE90360]();
      }

      else
      {
        if (v10 >= *(v138 + 16))
        {
          goto LABEL_170;
        }

        v18 = *(v137 + 8 * v10);
      }

      v19 = v18;
      v20 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v143 = v19;
      v21 = *&v19[v20];
      v154 = v21 & 0xC000000000000001;
      if ((v21 & 0xC000000000000001) != 0)
      {
        if (v21 < 0)
        {
          v4 = v21;
        }

        else
        {
          v4 = v21 & 0xFFFFFFFFFFFFFF8;
        }

        v22 = v21;

        v23 = sub_23AA0D7F4();
        if (!v23)
        {
LABEL_6:

          v12 = v8;
          goto LABEL_7;
        }

        v24 = v23;
        v159 = v8;
        sub_23AA0D964();
        v162 = sub_23AA0D7A4();
        v163 = v25;
        LOBYTE(v164) = 1;
        v26 = v22;
        if ((v24 & 0x8000000000000000) != 0)
        {
          goto LABEL_164;
        }
      }

      else
      {
        v24 = *(v21 + 16);
        v27 = v21;

        if (!v24)
        {
          goto LABEL_6;
        }

        v159 = v8;
        sub_23AA0D964();
        v28 = sub_23AA0D774();
        v26 = v27;
        v29 = *(v27 + 36);
        v162 = v28;
        v163 = v29;
        LOBYTE(v164) = 0;
      }

      v30 = 0;
      v31 = v26 & 0xFFFFFFFFFFFFFF8;
      if (v26 < 0)
      {
        v31 = v26;
      }

      v146 = v26 + 56;
      v147 = v31;
      v145 = v26 + 64;
      v152 = v24;
      v153 = v26;
      do
      {
        while (1)
        {
          if (v30 >= v24)
          {
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
LABEL_163:
            __break(1u);
LABEL_164:
            __break(1u);
LABEL_165:
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
LABEL_171:
            __break(1u);
LABEL_172:
            v7 = sub_23AA0D7F4();
            goto LABEL_3;
          }

          v33 = __OFADD__(v30++, 1);
          if (v33)
          {
            goto LABEL_156;
          }

          v34 = v164;
          v155 = v163;
          v156 = v162;
          sub_23A9886A4(v162, v163, v164, v26);
          v36 = v35;
          v37 = v151;
          (*v149)(v11, v35 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v151);
          v38 = *(v36 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);
          v39 = *(v36 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness);

          type metadata accessor for HullPointUUID(0);
          v4 = swift_allocObject();
          (*v148)(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid, v11, v37);
          *(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type) = v38;
          *(v4 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_hasThickness) = v39;
          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          result = sub_23AA0D954();
          if (v154)
          {
            break;
          }

          if (v34)
          {
            goto LABEL_176;
          }

          v26 = v153;
          if ((v156 & 0x8000000000000000) != 0)
          {
            goto LABEL_158;
          }

          v40 = 1 << *(v153 + 32);
          if (v156 >= v40)
          {
            goto LABEL_158;
          }

          v41 = v156 >> 6;
          v42 = *(v146 + 8 * (v156 >> 6));
          if (((v42 >> v156) & 1) == 0)
          {
            goto LABEL_159;
          }

          if (*(v153 + 36) != v155)
          {
            goto LABEL_160;
          }

          v43 = v42 & (-2 << (v156 & 0x3F));
          if (v43)
          {
            v40 = __clz(__rbit64(v43)) | v156 & 0x7FFFFFFFFFFFFFC0;
            v24 = v152;
          }

          else
          {
            v44 = v41 << 6;
            v45 = v41 + 1;
            v46 = (v145 + 8 * v41);
            v24 = v152;
            while (v45 < (v40 + 63) >> 6)
            {
              v47 = *v46++;
              v4 = v47;
              v44 += 64;
              ++v45;
              if (v47)
              {
                v48 = v153;
                sub_23A8CA9CC(v156, v155, 0);
                v26 = v48;
                v40 = __clz(__rbit64(v4)) + v44;
                goto LABEL_45;
              }
            }

            v49 = v153;
            sub_23A8CA9CC(v156, v155, 0);
            v26 = v49;
          }

LABEL_45:
          v50 = *(v26 + 36);
          v162 = v40;
          v163 = v50;
          LOBYTE(v164) = 0;
          if (v30 == v24)
          {
            goto LABEL_46;
          }
        }

        if (!v34)
        {
          goto LABEL_175;
        }

        if (sub_23AA0D7C4())
        {
          swift_isUniquelyReferenced_nonNull_native();
        }

        v24 = v152;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAE8D8, &unk_23AA115D0);
        v32 = sub_23AA0D414();
        sub_23AA0D844();
        v32(v157, 0);
        v26 = v153;
      }

      while (v30 != v24);
LABEL_46:
      sub_23A8CA9CC(v162, v163, v164);

      v12 = v159;
      v8 = MEMORY[0x277D84F90];
LABEL_7:
      v13 = sub_23A9F4D08(v12);

      v14 = v143;
      v15 = *&v143[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v16 = type metadata accessor for HullPoint();
      v17 = objc_allocWithZone(v16);
      *&v17[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v15;
      *&v17[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v13;
      v161.receiver = v17;
      v161.super_class = v16;
      v4 = objc_msgSendSuper2(&v161, sel_init);

      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      v10 = v144;
      if (v144 != v142)
      {
        continue;
      }

      break;
    }

    v51 = v8;
    v8 = v160;
LABEL_49:
    v157[0] = v51;
    v52 = v139;
    if (v8 >> 62)
    {
      v4 = sub_23AA0D7F4();
    }

    else
    {
      v4 = *((v8 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v53 = MEMORY[0x277D84F90];
    v143 = v8;
    v144 = v4;
    if (v4)
    {
      v54 = 0;
      v4 = v8 & 0xC000000000000001;
      v55 = v8 & 0xFFFFFFFFFFFFFF8;
      do
      {
        if (v4)
        {
          v56 = MEMORY[0x23EE90360](v54, v8, v5);
        }

        else
        {
          if (v54 >= *(v55 + 16))
          {
            goto LABEL_162;
          }

          v56 = *(v8 + 8 * v54 + 32);
        }

        v57 = v56;
        v58 = v54 + 1;
        if (__OFADD__(v54, 1))
        {
          goto LABEL_161;
        }

        v59 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v60 = *&v57[v59];

        v61 = v60;
        v8 = v143;
        sub_23A911BA4(v61);
        ++v54;
      }

      while (v58 != v144);
      v53 = v157[0];
      v52 = v139;
      v4 = v144;
    }

    v136 = sub_23A9F4D08(v53);

    if (v4)
    {
      v62 = 0;
      v134 = v136 & 0xC000000000000001;
      v135 = v8 & 0xC000000000000001;
      v131 = v8 + 32;
      v132 = v8 & 0xFFFFFFFFFFFFFF8;
      v63 = v136 & 0xFFFFFFFFFFFFFF8;
      if (v136 < 0)
      {
        v63 = v136;
      }

      v133 = v63;
      v130 = v136 + 56;
      v64 = v52 & 0xFFFFFFFFFFFFFF8;
      if (v52 < 0)
      {
        v65 = v52;
      }

      else
      {
        v65 = v52 & 0xFFFFFFFFFFFFFF8;
      }

      v137 = v65;
      v66 = v52 & 0xC000000000000001;
      v67 = v52 + 32;
      v129 = xmmword_23AA11BB0;
      v150 = (v52 & 0xFFFFFFFFFFFFFF8);
      v151 = v52 + 32;
      v152 = v52 & 0xC000000000000001;
      while (1)
      {
        if (v135)
        {
          v68 = MEMORY[0x23EE90360](v62, v8);
        }

        else
        {
          if (v62 >= *(v132 + 16))
          {
            goto LABEL_171;
          }

          v68 = *(v131 + 8 * v62);
        }

        v69 = v68;
        v33 = __OFADD__(v62, 1);
        v70 = v62 + 1;
        if (v33)
        {
          goto LABEL_169;
        }

        v140 = v70;
        if (v134)
        {

          sub_23AA0D7B4();
          type metadata accessor for HullPointUUID(0);
          sub_23A98B508();
          sub_23AA0D424();
          v71 = v162;
          v72 = v163;
          v73 = v164;
          v74 = v165;
          v4 = v166;
        }

        else
        {
          v75 = -1 << *(v136 + 32);
          v76 = ~v75;
          v77 = -v75;
          v78 = v77 < 64 ? ~(-1 << v77) : -1;
          v4 = v78 & *(v136 + 56);

          v73 = v76;
          v74 = 0;
          v72 = v130;
        }

        v138 = v73;
        v79 = (v73 + 64) >> 6;
        v142 = v69;
        v146 = v72;
        v147 = v71;
        v145 = v79;
        while (v71 < 0)
        {
          v84 = sub_23AA0D824();
          if (!v84)
          {
            goto LABEL_68;
          }

          v158 = v84;
          type metadata accessor for HullPointUUID(0);
          swift_dynamicCast();
          v83 = v157[0];
          v148 = v4;
          v149 = v74;
          if (!v157[0])
          {
            goto LABEL_68;
          }

LABEL_92:
          v156 = v83;
          v85 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
          swift_beginAccess();
          v86 = *&v69[v85];
          if ((v86 & 0xC000000000000001) != 0)
          {

            v4 = v156;

            v87 = sub_23AA0D834();

            if (v87)
            {
              goto LABEL_81;
            }
          }

          else if (*(v86 + 16))
          {
            sub_23AA0DD14();

            sub_23AA0C0B4();
            v88 = sub_23AA0DD54();
            v4 = v86 + 56;
            v89 = -1 << *(v86 + 32);
            v90 = v88 & ~v89;
            if ((*(v86 + 56 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90))
            {
              v91 = ~v89;
              v92 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
              do
              {
                v93 = *(*(v86 + 48) + 8 * v90);

                v94 = v156;
                if (sub_23AA0C094())
                {
                  v95 = *(v93 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                  if (v95 == *(v94 + v92))
                  {

                    v4 = v148;
                    v74 = v149;
                    v64 = v150;
                    v67 = v151;
                    v66 = v152;
                    goto LABEL_151;
                  }
                }

                else
                {
                }

                v90 = (v90 + 1) & v91;
              }

              while (((*(v4 + ((v90 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v90) & 1) != 0);
            }

            v64 = v150;
            v67 = v151;
            v66 = v152;
          }

          v158 = MEMORY[0x277D84F90];
          if (v141)
          {
            v96 = sub_23AA0D7F4();
          }

          else
          {
            v96 = *(v64 + 16);
          }

          if (v96)
          {
            v4 = 0;
            v155 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_uuid;
            v154 = OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type;
            v153 = v96;
            while (1)
            {
              if (v66)
              {
                v97 = MEMORY[0x23EE90360](v4, v139);
              }

              else
              {
                if (v4 >= *(v64 + 16))
                {
                  goto LABEL_154;
                }

                v97 = *(v67 + 8 * v4);
              }

              v98 = v97;
              v33 = __OFADD__(v4++, 1);
              if (v33)
              {
                __break(1u);
LABEL_154:
                __break(1u);
                goto LABEL_155;
              }

              v99 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
              swift_beginAccess();
              v100 = *&v98[v99];
              if ((v100 & 0xC000000000000001) != 0)
              {

                v101 = sub_23AA0D834();

                if (v101)
                {
LABEL_109:
                  sub_23AA0D944();
                  sub_23AA0D974();
                  sub_23AA0D984();
                  sub_23AA0D954();
                }

                else
                {
                }
              }

              else
              {
                if (!*(v100 + 16))
                {

                  goto LABEL_111;
                }

                sub_23AA0DD14();

                sub_23AA0C0B4();
                v102 = sub_23AA0DD54();
                v103 = -1 << *(v100 + 32);
                v104 = v102 & ~v103;
                if (((*(v100 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) == 0)
                {

                  v67 = v151;
                  v66 = v152;
                  goto LABEL_111;
                }

                v105 = ~v103;
                do
                {
                  v106 = *(*(v100 + 48) + 8 * v104);

                  v107 = v156;
                  if (sub_23AA0C094())
                  {
                    v108 = *(v106 + OBJC_IVAR____TtC8RoomPlan13HullPointUUID_type);

                    if (v108 == *(v107 + v154))
                    {

                      v64 = v150;
                      v67 = v151;
                      v66 = v152;
                      goto LABEL_109;
                    }
                  }

                  else
                  {
                  }

                  v104 = (v104 + 1) & v105;
                }

                while (((*(v100 + 56 + ((v104 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v104) & 1) != 0);

                v64 = v150;
                v67 = v151;
                v66 = v152;
              }

              v96 = v153;
LABEL_111:
              if (v4 == v96)
              {
                v109 = v158;
                if ((v158 & 0x8000000000000000) == 0)
                {
                  goto LABEL_134;
                }

                goto LABEL_145;
              }
            }
          }

          v109 = MEMORY[0x277D84F90];
          if ((MEMORY[0x277D84F90] & 0x8000000000000000) != 0)
          {
            goto LABEL_145;
          }

LABEL_134:
          if ((v109 & 0x4000000000000000) != 0)
          {
LABEL_145:
            if (sub_23AA0D7F4() == 2)
            {
              v128 = sub_23AA0D7F4();
              if (!v128)
              {
                goto LABEL_165;
              }

              v110 = v128;
              if ((v109 & 0xC000000000000001) != 0)
              {
LABEL_148:
                v113 = *(MEMORY[0x23EE90360](0, v109) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
                swift_unknownObjectRelease();
                result = v110 - 1;
                if (__OFSUB__(v110, 1))
                {
                  goto LABEL_177;
                }

                v114 = MEMORY[0x23EE90360](result, v109);
LABEL_141:
                v115 = v114;

                v116 = *&v115[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

                v69 = v142;
                v117 = *(v142 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
                v118 = vsub_f32(v116, v113);
                v119 = vmul_f32(v118, vsub_f32(v117, v113));
                if (vaddv_f32(v119) > 0.0)
                {
                  v120 = vadd_f32(v119, vdup_lane_s32(v119, 1));
                  v121 = vmul_f32(v118, v118);
                  v122 = vadd_f32(v121, vdup_lane_s32(v121, 1));
                  if ((vmvn_s8(vcge_f32(v122, v120)).u8[0] & 1) == 0)
                  {
                    v123 = vmul_f32(v118, vrev64_s32(vsub_f32(v113, v117)));
                    if (fabsf(vsub_f32(v123, vdup_lane_s32(v123, 1)).f32[0] / sqrtf(v122.f32[0])) < a2)
                    {
                      v124 = v156;
                      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
                      inited = swift_initStackObject();
                      *(inited + 16) = v129;
                      *(inited + 32) = v124;

                      sub_23A9A6B4C(inited);
                      v127 = v126;
                      swift_setDeallocating();
                      swift_arrayDestroy();
                      swift_beginAccess();
                      sub_23A985B10(v127);
                      swift_endAccess();
                    }
                  }
                }

LABEL_81:

                v4 = v148;
                v74 = v149;
                goto LABEL_82;
              }

LABEL_137:
              v111 = *(v109 + 16);
              if (!v111)
              {
                goto LABEL_166;
              }

              v112 = v110 - 1;
              if (__OFSUB__(v110, 1))
              {
                goto LABEL_167;
              }

              if (v112 >= v111)
              {
                goto LABEL_168;
              }

              v113 = *(*(v109 + 32) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
              v114 = *(v109 + 32 + 8 * v112);
              goto LABEL_141;
            }
          }

          else if (*(v109 + 16) == 2)
          {
            v110 = 2;
            if ((v109 & 0xC000000000000001) != 0)
            {
              goto LABEL_148;
            }

            goto LABEL_137;
          }

          v4 = v148;
          v74 = v149;
LABEL_151:
          v69 = v142;
LABEL_82:
          v72 = v146;
          v71 = v147;
          v79 = v145;
        }

        v80 = v74;
        v81 = v4;
        v82 = v74;
        if (v4)
        {
          break;
        }

        while (1)
        {
          v82 = v80 + 1;
          if (__OFADD__(v80, 1))
          {
            goto LABEL_157;
          }

          if (v82 >= v79)
          {
            break;
          }

          v81 = *(v72 + 8 * v82);
          v80 = (v80 + 1);
          if (v81)
          {
            goto LABEL_88;
          }
        }

        v4 = 0;
LABEL_68:
        sub_23A8CA904(v147);

        v8 = v143;
        v62 = v140;
        if (v140 == v144)
        {
          goto LABEL_152;
        }
      }

LABEL_88:
      v148 = ((v81 - 1) & v81);
      v149 = v82;

      if (!v83)
      {
        goto LABEL_68;
      }

      goto LABEL_92;
    }

LABEL_152:

    return v8;
  }

  return result;
}

uint64_t sub_23A98B0B0(unint64_t a1, __n128 a2)
{
  v2 = a2.n128_f32[0];
  v3 = a1;
  v39 = a1 >> 62;
  if (a1 >> 62)
  {
    goto LABEL_63;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); ; i = sub_23AA0D7F4())
  {
    v5 = MEMORY[0x277D84F90];
    if (!i)
    {
      goto LABEL_11;
    }

    v44 = MEMORY[0x277D84F90];
    result = sub_23AA0D964();
    if (i < 0)
    {
      break;
    }

    v7 = 0;
    do
    {
      if ((v3 & 0xC000000000000001) != 0)
      {
        v8 = MEMORY[0x23EE90360](v7, v3);
      }

      else
      {
        v8 = *(v3 + 8 * v7 + 32);
      }

      v9 = v8;
      ++v7;
      swift_beginAccess();

      v11 = sub_23A985580(v10);

      v12 = sub_23A9F4D08(v11);

      v13 = *&v9[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v14 = type metadata accessor for HullPoint();
      v15 = objc_allocWithZone(v14);
      *&v15[OBJC_IVAR____TtC8RoomPlan9HullPoint_position] = v13;
      *&v15[OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids] = v12;
      v45.receiver = v15;
      v45.super_class = v14;
      objc_msgSendSuper2(&v45, sel_init);

      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
    }

    while (i != v7);
    v5 = v44;
LABEL_11:
    v46 = v5;
    if (v39)
    {
      v40 = v3 & 0xFFFFFFFFFFFFFF8;
      v17 = sub_23AA0D7F4();
      if (!v17)
      {
        return v5;
      }

      v16 = v17;
      v43 = sub_23AA0D7F4();
      v42 = sub_23AA0D7F4();
    }

    else
    {
      v40 = v3 & 0xFFFFFFFFFFFFFF8;
      v16 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      if (!v16)
      {
        return v5;
      }

      v42 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v43 = v42;
    }

    v18 = 0;
    v41 = v3 & 0xC000000000000001;
    v38 = v3 + 32;
LABEL_17:
    while (1)
    {
      v19 = v16 - 1;
      if (__OFSUB__(v16, 1))
      {
        break;
      }

      v20 = v18;
      if (v16 == v43)
      {
        if (v39)
        {
          v20 = sub_23AA0D7F4();
        }

        else
        {
          v20 = *(v40 + 16);
        }
      }

      v18 = v20 - 1;
      if (__OFSUB__(v20, 1))
      {
        goto LABEL_59;
      }

      if (v19 < 0 || v19 >= v42)
      {
        goto LABEL_60;
      }

      --v16;
      if (v41)
      {
        v21 = MEMORY[0x23EE90360](v19, v3);
        if (v18 < 0)
        {
          goto LABEL_61;
        }
      }

      else
      {
        if (v19 >= *(v40 + 16))
        {
          goto LABEL_62;
        }

        v21 = *(v38 + 8 * v19);
        if (v18 < 0)
        {
          goto LABEL_61;
        }
      }

      if (v20 != 1)
      {
        v22 = v3;
        v3 = v46;
        v23 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
        if ((v46 & 0xC000000000000001) != 0)
        {
          v24 = v20 - 1;
          while (v18 >= v24)
          {
            v25 = MEMORY[0x23EE90360](--v24, v3);
            v26 = vsub_f32(*&v21[v23], *&v25[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
            v27 = fabsf(v26.f32[0]);
            v28 = fabsf(v26.f32[1]);
            if (v27 < v2 && v28 < v2)
            {
              goto LABEL_51;
            }

            swift_unknownObjectRelease();
            if (!v24)
            {
              goto LABEL_52;
            }
          }

          __break(1u);
        }

        else
        {
          v30 = v20 - 2;
          v31 = (v46 + 8 * v20 + 16);
          v3 = v22;
          while (v18 >= v30 + 1)
          {
            if (v30 >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_57;
            }

            v32 = vsub_f32(*&v21[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *(*v31 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position));
            v33 = fabsf(v32.f32[0]);
            v34 = fabsf(v32.f32[1]);
            if (v33 < v2 && v34 < v2)
            {
              v25 = *v31;
LABEL_51:
              v36 = v25;
              swift_beginAccess();
              swift_beginAccess();

              sub_23A985B10(v37);
              swift_endAccess();

              v21 = v36;
LABEL_52:
              v3 = v22;

              if (v16)
              {
                goto LABEL_17;
              }

              return v46;
            }

            --v30;
            --v31;
            if (v30 == -1)
            {
              goto LABEL_48;
            }
          }
        }

        __break(1u);
LABEL_57:
        __break(1u);
        break;
      }

LABEL_48:

      if (!v16)
      {
        return v46;
      }
    }

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
    ;
  }

  __break(1u);
  return result;
}

unint64_t sub_23A98B508()
{
  result = qword_27DFB0630;
  if (!qword_27DFB0630)
  {
    type metadata accessor for HullPointUUID(255);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0630);
  }

  return result;
}

unint64_t sub_23A98B560(unint64_t a1)
{
  v1 = a1;
  if (a1 >> 62)
  {
LABEL_88:
    v2 = sub_23AA0D7F4();
    if (v2 >= 2)
    {
      goto LABEL_3;
    }

    return MEMORY[0x277D84F90];
  }

  v2 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  if (v2 < 2)
  {
    return MEMORY[0x277D84F90];
  }

LABEL_3:
  v3 = sub_23A9890A4(v1);
  result = MEMORY[0x277D84F90];
  if (!v3)
  {
    return result;
  }

  v5 = MEMORY[0x277D84F90];
  v65 = MEMORY[0x277D84F90];
  sub_23AA0D964();
  v6 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
  if ((v1 & 0xC000000000000001) != 0)
  {
    v7 = 0;
    while (1)
    {
      v11 = MEMORY[0x23EE90360](v7, v1);
      type metadata accessor for DistanceAngleHullPoint();
      v12 = swift_allocObject();
      v13 = *(v11 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      v14 = *&v3[v6];
      v15 = vsub_f32(v13, v14);
      *(v12 + 16) = vaddv_f32(vmul_f32(v15, v15));
      if (fabsf(vsub_f32(v14, v13).f32[0]) >= 0.00000011921)
      {
        v8 = v13.f32[1];
        v9 = v14.f32[1];
      }

      else
      {
        v9 = v14.f32[1];
        v8 = v13.f32[1];
        v10 = 0.00000011921;
        if (vabds_f32(v14.f32[1], v13.f32[1]) < 0.00000011921)
        {
          goto LABEL_8;
        }
      }

      v10 = atan2f(v8 - v9, v15.f32[0]);
LABEL_8:
      if (v10 <= 0.0)
      {
        v10 = v10 + 6.2832;
      }

      ++v7;
      *(v12 + 20) = v10;
      *(v12 + 24) = v11;
      sub_23AA0D944();
      sub_23AA0D974();
      sub_23AA0D984();
      sub_23AA0D954();
      if (v2 == v7)
      {
        goto LABEL_23;
      }
    }
  }

  v16 = (v1 + 32);
  v1 = type metadata accessor for DistanceAngleHullPoint();
  do
  {
    v21 = *v16;
    v22 = swift_allocObject();
    v23 = *&v21[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    v24 = *&v3[v6];
    v25 = vsub_f32(v23, v24);
    *(v22 + 16) = vaddv_f32(vmul_f32(v25, v25));
    if (fabsf(vsub_f32(v24, v23).f32[0]) >= 0.00000011921)
    {
      v17 = v23.f32[1];
      v18 = v24.f32[1];
LABEL_16:
      v19 = atan2f(v17 - v18, v25.f32[0]);
      goto LABEL_17;
    }

    v18 = v24.f32[1];
    v17 = v23.f32[1];
    v19 = 0.00000011921;
    if (vabds_f32(v24.f32[1], v23.f32[1]) >= 0.00000011921)
    {
      goto LABEL_16;
    }

LABEL_17:
    if (v19 <= 0.0)
    {
      v19 = v19 + 6.2832;
    }

    *(v22 + 20) = v19;
    *(v22 + 24) = v21;
    v20 = v21;
    sub_23AA0D944();
    sub_23AA0D974();
    sub_23AA0D984();
    sub_23AA0D954();
    ++v16;
    --v2;
  }

  while (v2);
LABEL_23:

  v65 = sub_23A8F28AC(v26);
  sub_23A985A94(&v65);
  v27 = v65;
  v65 = v5;
  if (v27 < 0 || (v27 & 0x4000000000000000) != 0)
  {
LABEL_91:
    v61 = sub_23AA0D7F4();
    sub_23A985D08(v61);
    v28 = sub_23AA0D7F4();
    if (v28)
    {
      goto LABEL_26;
    }
  }

  else
  {
    sub_23A985D08(*(v27 + 16));
    v28 = *(v27 + 16);
    if (v28)
    {
LABEL_26:
      v29 = 0;
      v63 = v27;
      v64 = v27 & 0xC000000000000001;
      v62 = v27 + 32;
      do
      {
        if (v64)
        {
          v30 = MEMORY[0x23EE90360](v29, v27);
          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
            goto LABEL_87;
          }
        }

        else
        {
          if (v29 >= *(v27 + 16))
          {
            __break(1u);
            goto LABEL_91;
          }

          v30 = *(v62 + 8 * v29);

          v31 = __OFADD__(v29++, 1);
          if (v31)
          {
LABEL_87:
            __break(1u);
            goto LABEL_88;
          }
        }

        v32 = v28;
        v33 = *(*(v30 + 24) + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
        for (i = v65; ; v65 = i)
        {
          v1 = i >> 62;
          if (i >> 62)
          {
            if (sub_23AA0D7F4() < 2)
            {
              goto LABEL_73;
            }

            v58 = sub_23AA0D7F4();
            v36 = v58 - 2;
            if (__OFSUB__(v58, 2))
            {
LABEL_78:
              __break(1u);
LABEL_79:
              __break(1u);
LABEL_80:
              __break(1u);
LABEL_81:
              __break(1u);
LABEL_82:
              __break(1u);
LABEL_83:
              __break(1u);
LABEL_84:
              __break(1u);
LABEL_85:
              __break(1u);
LABEL_86:
              __break(1u);
              goto LABEL_87;
            }
          }

          else
          {
            v35 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v35 < 2)
            {
              goto LABEL_73;
            }

            v36 = v35 - 2;
            if (__OFSUB__(v35, 2))
            {
              goto LABEL_78;
            }
          }

          v37 = i & 0xC000000000000001;
          if ((i & 0xC000000000000001) != 0)
          {

            v39 = MEMORY[0x23EE90360](v36, i);
          }

          else
          {
            if ((v36 & 0x8000000000000000) != 0)
            {
              goto LABEL_79;
            }

            if (v36 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_81;
            }

            v38 = *(i + 8 * v36 + 32);

            v39 = v38;
          }

          v40 = v39;
          if (v1)
          {
            v41 = sub_23AA0D7F4();
          }

          else
          {
            v41 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v41)
          {
            goto LABEL_80;
          }

          v42 = v41 - 1;
          if (__OFSUB__(v41, 1))
          {
            goto LABEL_82;
          }

          if (v37)
          {
            v43 = MEMORY[0x23EE90360](v41 - 1, i);
          }

          else
          {
            if ((v42 & 0x8000000000000000) != 0)
            {
              goto LABEL_85;
            }

            if (v42 >= *((i & 0xFFFFFFFFFFFFFF8) + 0x10))
            {
              goto LABEL_86;
            }

            v43 = *(i + 8 * v42 + 32);
          }

          v44 = *&v43[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

          v45 = *&v40[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
          v46 = v37 ? MEMORY[0x23EE90360](v42, i) : *(i + 8 * v42 + 32);
          v47 = v46;
          v48 = vsub_f32(v44, v45);

          v49 = *&v47[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

          v50 = _simd_orient_vf2(v48, vsub_f32(v33, v49));
          v51 = fabsf(v50);
          if (v50 > 0.0 && v51 >= 0.00000011921)
          {
            break;
          }

          if (v1)
          {
            v53 = sub_23AA0D7F4();
          }

          else
          {
            v53 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          }

          if (!v53)
          {
            goto LABEL_83;
          }

          isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
          if (v1 || (isUniquelyReferenced_nonNull_bridgeObject & 1) == 0)
          {
            i = sub_23A97E578();
          }

          v55 = *((i & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (!v55)
          {
            goto LABEL_84;
          }

          v56 = v55 - 1;
          v57 = *((i & 0xFFFFFFFFFFFFFF8) + 8 * v56 + 0x20);
          *((i & 0xFFFFFFFFFFFFFF8) + 0x10) = v56;
        }

LABEL_73:
        v59 = *(v30 + 24);
        MEMORY[0x23EE8FD70]();
        if (*((v65 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v65 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
        {
          v1 = *((v65 & 0xFFFFFFFFFFFFFF8) + 0x10);
          sub_23AA0D314();
        }

        sub_23AA0D334();

        v28 = v32;
        v60 = v29 == v32;
        v27 = v63;
      }

      while (!v60);
    }
  }

  return v65;
}

void *sub_23A98BB8C(unint64_t a1)
{
  v25 = a1 >> 62;
  v2 = a1 & 0xFFFFFFFFFFFFFF8;
  if (a1 >> 62)
  {
LABEL_43:
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  if (!v3)
  {
    return MEMORY[0x277D84F90];
  }

  v4 = 0;
  v5 = a1 & 0xC000000000000001;
  v6 = MEMORY[0x277D84F90];
  do
  {
    v24 = v6;
    for (i = v4; ; ++i)
    {
      if (v5)
      {
        v8 = MEMORY[0x23EE90360](i, a1);
      }

      else
      {
        if (i >= *(v2 + 16))
        {
          goto LABEL_38;
        }

        v8 = *(a1 + 8 * i + 32);
      }

      v9 = v8;
      v4 = i + 1;
      if (__OFADD__(i, 1))
      {
        __break(1u);
LABEL_38:
        __break(1u);
LABEL_39:
        __break(1u);
LABEL_40:
        __break(1u);
LABEL_41:
        __break(1u);
LABEL_42:
        __break(1u);
        goto LABEL_43;
      }

      if (v25)
      {
        v10 = sub_23AA0D7F4();
      }

      else
      {
        v10 = *(v2 + 16);
      }

      if (!v10)
      {
        goto LABEL_39;
      }

      if (i == 0x7FFFFFFFFFFFFFFFLL && v10 == -1)
      {
        goto LABEL_40;
      }

      v11 = v4 % v10;
      if (v5)
      {
        v12 = MEMORY[0x23EE90360](v11, a1);
      }

      else
      {
        if ((v11 & 0x8000000000000000) != 0)
        {
          goto LABEL_41;
        }

        if (v11 >= *(v2 + 16))
        {
          goto LABEL_42;
        }

        v12 = *(a1 + 32 + 8 * v11);
      }

      v13 = v12;
      v14 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v15 = *&v13[v14];
      swift_beginAccess();

      v18 = sub_23A9878FC(v16, v15, v17);

      v19 = (v18 & 0xC000000000000001) != 0 ? sub_23AA0D7F4() : *(v18 + 16);

      if (!v19)
      {
        break;
      }

      if (v4 == v3)
      {
        return v24;
      }
    }

    if (swift_isUniquelyReferenced_nonNull_native())
    {
      v6 = v24;
    }

    else
    {
      v6 = sub_23A938C30(0, v24[2] + 1, 1, v24);
    }

    v21 = v6[2];
    v20 = v6[3];
    if (v21 >= v20 >> 1)
    {
      v6 = sub_23A938C30((v20 > 1), v21 + 1, 1, v6);
    }

    v6[2] = v21 + 1;
    v22 = &v6[3 * v21];
    v22[4] = v9;
    v22[5] = v13;
    v22[6] = i;
  }

  while (v4 != v3);
  return v6;
}

void sub_23A98BE18(void *a1)
{
  v5 = MEMORY[0x277D84F90];
  v1 = a1;
  while (1)
  {
    v2 = *&v1[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint];
    MEMORY[0x23EE8FD70]();
    if (*((v5 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v5 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
    {
      sub_23AA0D314();
    }

    sub_23AA0D334();
    v3 = *&v1[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent];
    if (!v3)
    {
      break;
    }

    v4 = v3;

    v1 = v4;
    if (!*&v4[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent])
    {
      sub_23A8ED10C(v5);

      return;
    }
  }

  __break(1u);
}

char *sub_23A98BF18(void *a1, uint64_t a2, unint64_t a3, unint64_t a4)
{
  v6 = MEMORY[0x277D84F90];
  v75 = MEMORY[0x277D84F90];
  v7 = type metadata accessor for HullPointHierarchy();
  v8 = objc_allocWithZone(v7);
  *&v8[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint] = a1;
  *&v8[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent] = 0;
  v74.receiver = v8;
  v74.super_class = v7;
  v64 = v7;
  v9 = a1;
  v10 = objc_msgSendSuper2(&v74, sel_init);
  MEMORY[0x23EE8FD70]();
  if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
  {
    goto LABEL_96;
  }

LABEL_2:
  sub_23AA0D334();
  v11 = v75;
  if (v75 >> 62)
  {
    if (sub_23AA0D7F4())
    {
      goto LABEL_4;
    }

LABEL_98:

LABEL_99:

    return MEMORY[0x277D84F90];
  }

  if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    goto LABEL_98;
  }

LABEL_4:
  v60 = v10;
  v61 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
  v66 = a4 & 0xFFFFFFFFFFFFFF8;
  v70 = a4 & 0xC000000000000001;
  v69 = a4 + 32;
  v63 = a4;
  v12 = v6;
  while (1)
  {
    if ((v11 & 0xC000000000000001) != 0)
    {
      v13 = MEMORY[0x23EE90360](0, v11);
    }

    else
    {
      if (!*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_93;
      }

      v13 = *(v11 + 32);
    }

    v67 = v13;
    v14 = *&v13[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint];
    v73 = v6;
    v68 = v11;
    if (a3 >> 62)
    {
      v10 = sub_23AA0D7F4();
    }

    else
    {
      v10 = *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v15 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
    v65 = v14;
    swift_beginAccess();
    if (v10)
    {
      v6 = 0;
      do
      {
        if ((a3 & 0xC000000000000001) != 0)
        {
          v16 = MEMORY[0x23EE90360](v6, a3);
        }

        else
        {
          if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_90;
          }

          v16 = *(a3 + 8 * v6 + 32);
        }

        v17 = v16;
        a4 = v6 + 1;
        if (__OFADD__(v6, 1))
        {
          goto LABEL_89;
        }

        v18 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v19 = *&v17[v18];

        v22 = sub_23A9878FC(v20, v19, v21);

        if ((v22 & 0xC000000000000001) != 0)
        {
          v23 = sub_23AA0D7F4();
        }

        else
        {
          v23 = *(v22 + 16);
        }

        if (v23 <= 0 || (v24 = vceq_f32(*&v17[OBJC_IVAR____TtC8RoomPlan9HullPoint_position], *&v14[v15]), (v24.i32[0] & v24.i32[1] & 1) != 0))
        {
        }

        else
        {
          sub_23AA0D944();
          sub_23AA0D974();
          sub_23AA0D984();
          sub_23AA0D954();
        }

        ++v6;
      }

      while (a4 != v10);
      v6 = v73;
    }

    if ((v6 & 0x8000000000000000) != 0 || (v6 & 0x4000000000000000) != 0)
    {
      v10 = sub_23AA0D7F4();
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    else
    {
      v10 = *(v6 + 16);
      if (!v10)
      {
        goto LABEL_68;
      }
    }

    v25 = 0;
    v26 = *(a2 + v61);
    a4 = v6 & 0xC000000000000001;
LABEL_32:
    while (2)
    {
      if (a4)
      {
        v27 = MEMORY[0x23EE90360](v25, v6);
      }

      else
      {
        if (v25 >= *(v6 + 16))
        {
          goto LABEL_92;
        }

        v27 = *(v6 + 32 + 8 * v25);
      }

      v28 = __OFADD__(v25++, 1);
      v30 = v69;
      v29 = v70;
      if (v28)
      {
        goto LABEL_91;
      }

      v31 = OBJC_IVAR____TtC8RoomPlan9HullPoint_position;
      v32 = *&v27[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
      v33 = vceq_f32(v32, v26);
      if (v33.i8[0] & 1) != 0 && (v33.i8[4])
      {
        v57 = v27;

        sub_23A98BE18(v67);
        v59 = v58;

        return v59;
      }

      v34 = *(v12 + 2);
      v35 = 32;
      while (v34)
      {
        v36 = vceq_f32(*&v12[v35], v32);
        v35 += 8;
        --v34;
        if (v36.i8[0] & 1) != 0 && (v36.i8[4])
        {
LABEL_31:

          if (v25 == v10)
          {
            goto LABEL_68;
          }

          goto LABEL_32;
        }
      }

      if (v63 >> 62)
      {
        v47 = v27;
        v48 = sub_23AA0D7F4();
        v30 = v69;
        v29 = v70;
        v38 = v48;
        v27 = v47;
        v37 = v66;
        if (v38)
        {
          goto LABEL_46;
        }
      }

      else
      {
        v37 = v66;
        v38 = *(v66 + 16);
        if (v38)
        {
LABEL_46:
          v39 = 0;
          while (1)
          {
            if (v29)
            {
              v44 = v27;
              result = MEMORY[0x23EE90360](v39, v63);
              v28 = __OFADD__(v39++, 1);
              if (v28)
              {
                goto LABEL_101;
              }

              v41 = *&result[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
              swift_unknownObjectRelease();
              v27 = v44;
              v37 = v66;
              v30 = v69;
              v29 = v70;
              a4 = v6 & 0xC000000000000001;
            }

            else
            {
              if ((v39 & 0x8000000000000000) != 0)
              {
                __break(1u);
LABEL_88:
                __break(1u);
LABEL_89:
                __break(1u);
LABEL_90:
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
                sub_23AA0D314();
                goto LABEL_2;
              }

              if (v39 >= *(v37 + 16))
              {
                goto LABEL_88;
              }

              v40 = *(v30 + 8 * v39++);
              v41 = *(v40 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
            }

            v42 = *&v27[v31];
            v43 = vceq_f32(v41, v42);
            if (v43.i32[0] & v43.i32[1])
            {
              goto LABEL_31;
            }

            if (v39 == v38)
            {
              v46 = v27;
              goto LABEL_58;
            }
          }
        }
      }

      v46 = v27;
      v42 = *&v27[v31];
LABEL_58:
      if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
      {
        v12 = sub_23A938A28(0, *(v12 + 2) + 1, 1, v12);
      }

      v50 = *(v12 + 2);
      v49 = *(v12 + 3);
      if (v50 >= v49 >> 1)
      {
        v12 = sub_23A938A28((v49 > 1), v50 + 1, 1, v12);
      }

      *(v12 + 2) = v50 + 1;
      *&v12[8 * v50 + 32] = v42;
      v51 = objc_allocWithZone(v64);
      *&v51[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_hullPoint] = v46;
      *&v51[OBJC_IVAR____TtC8RoomPlan18HullPointHierarchy_parent] = v67;
      v72.receiver = v51;
      v72.super_class = v64;
      v52 = v46;
      v53 = v67;
      objc_msgSendSuper2(&v72, sel_init);
      MEMORY[0x23EE8FD70]();
      if (*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v75 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_23AA0D314();
      }

      sub_23AA0D334();

      v68 = v75;
      a4 = v6 & 0xC000000000000001;
      if (v25 != v10)
      {
        continue;
      }

      break;
    }

LABEL_68:

    a4 = v68;
    v55 = v68 >> 62;
    v6 = MEMORY[0x277D84F90];
    if (v68 >> 62)
    {
      result = sub_23AA0D7F4();
      if (!result)
      {
        goto LABEL_102;
      }

      result = sub_23AA0D7F4();
      if (!result)
      {
        goto LABEL_103;
      }
    }

    else if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_94;
    }

    if ((v68 & 0xC000000000000001) != 0)
    {
      MEMORY[0x23EE90360](0, v68);
      swift_unknownObjectRelease();
      v56 = v68 & 0xFFFFFFFFFFFFFF8;
      if (!v55)
      {
        goto LABEL_73;
      }
    }

    else
    {
      v56 = v68 & 0xFFFFFFFFFFFFFF8;
      if (!*((v68 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_95;
      }

      if (!v55)
      {
LABEL_73:
        result = *(v56 + 16);
        goto LABEL_79;
      }
    }

    result = sub_23AA0D7F4();
LABEL_79:
    if (!result)
    {
      break;
    }

    sub_23A945930(0, 1, v54);

    v11 = v75;
    if (v75 >> 62)
    {
      if (sub_23AA0D7F4() < 1 || !sub_23AA0D7F4())
      {
LABEL_85:

        goto LABEL_99;
      }
    }

    else if (!*((v75 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_85;
    }
  }

  __break(1u);
LABEL_101:
  __break(1u);
LABEL_102:
  __break(1u);
LABEL_103:
  __break(1u);
  return result;
}

unint64_t sub_23A98C6E0(unint64_t a1, unint64_t a2)
{
  v4 = sub_23A98BB8C(a1);
  v5 = v4[2];
  if (!v5)
  {
    goto LABEL_22;
  }

  v6 = &v4[3 * v5 + 3];
  while (1)
  {
    if (v5 > v4[2])
    {
      __break(1u);
LABEL_19:

      return a1;
    }

    v7 = *(v6 - 1);
    v8 = *v6;
    v9 = *(v6 - 2);
    v10 = v7;
    v11 = sub_23A98BF18(v9, v10, a2, a1);
    if (v11 >> 62)
    {
      v14 = v11;
      v15 = sub_23AA0D7F4();
      v11 = v14;
      if (v15 < 1)
      {
LABEL_3:

        goto LABEL_4;
      }
    }

    else if (*((v11 & 0xFFFFFFFFFFFFFF8) + 0x10) < 1)
    {
      goto LABEL_3;
    }

    v12 = v8 + 1;
    if (__OFADD__(v8, 1))
    {
      break;
    }

    if (a1 >> 62)
    {
      v16 = v11;
      v13 = sub_23AA0D7F4();
      v11 = v16;
    }

    else
    {
      v13 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    if (v12 >= v13)
    {
      sub_23A911F14(v11);

      goto LABEL_5;
    }

    sub_23A945AF8(v12, v12, v11);

LABEL_4:

LABEL_5:
    v6 -= 3;
    if (!--v5)
    {
      goto LABEL_19;
    }
  }

  __break(1u);
LABEL_22:

  return a1;
}

void sub_23A98C8A0(unint64_t a1, unint64_t a2)
{
  v3 = a1;
  v95 = a1;
  v96 = sub_23A98BB8C(a1);
  v4 = v96[2];
  if (!v4)
  {

    goto LABEL_76;
  }

  v5 = v4 - 1;
  if (a2 >> 62)
  {
LABEL_83:
    v92 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = sub_23AA0D7F4();
  }

  else
  {
    v92 = a2 & 0xFFFFFFFFFFFFFF8;
    v6 = *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v7 = v3 & 0xFFFFFFFFFFFFFF8;
  if ((v3 & 0x8000000000000000) != 0)
  {
    v8 = v3;
  }

  else
  {
    v8 = v3 & 0xFFFFFFFFFFFFFF8;
  }

  v78[4] = v8;
  v9 = a2 & 0xC000000000000001;
  v93 = a2;
  v91 = a2 + 32;
  a2 = v3 & 0xC000000000000001;
  v10 = v3 + 32;

  v84 = 0;
  v80 = v3;
  v85 = v3 >> 62;
  while (1)
  {
    if (v5 >= v96[2])
    {
LABEL_82:
      __break(1u);
      goto LABEL_83;
    }

    if (v6)
    {
      break;
    }

LABEL_9:
    if ((--v5 & 0x8000000000000000) != 0)
    {
      goto LABEL_76;
    }
  }

  v11 = &v96[3 * v5];
  v13 = v11[4];
  v12 = v11[5];
  v86 = v11[6];
  v14 = *&v13[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
  v15 = *&v12[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
  v89 = v5;
  if (v85)
  {
    v3 = sub_23AA0D7F4();
  }

  else
  {
    v3 = *(v7 + 16);
  }

  v16 = vsub_f32(v15, v14);
  v17 = vsub_f32(v14, v15);
  v18 = vmul_f32(v17, v17);
  v19 = vadd_f32(v18, vdup_lane_s32(v18, 1));
  v20 = sqrtf(vaddv_f32(v18));
  v88 = v13;
  v87 = v12;
  v90 = 0;
  v5 = 0;
  v21 = 0.0;
  while (1)
  {
    if (v9)
    {
      v22 = MEMORY[0x23EE90360](v5, v93);
    }

    else
    {
      if (v5 >= *(v92 + 16))
      {
        goto LABEL_81;
      }

      v22 = *(v91 + 8 * v5);
    }

    v23 = v22;
    v24 = __OFADD__(v5++, 1);
    if (v24)
    {
      __break(1u);
LABEL_81:
      __break(1u);
      goto LABEL_82;
    }

    v25 = *&v22[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
    if (v3)
    {
      break;
    }

LABEL_31:
    v31 = vmul_f32(v16, vsub_f32(v25, v14));
    v32 = vaddv_f32(v31);
    if (v32 > 0.0 && (vmvn_s8(vcge_f32(vadd_f32(v31, vdup_lane_s32(v31, 1)), v19)).u8[0] & 1) != 0 && (v33 = vsub_f32(v14, v25), v34 = v32 / (v20 * sqrtf(vaddv_f32(vmul_f32(v33, v33)))), v34 >= 0.98481) && v21 < v34)
    {

      v21 = v34;
      v90 = v23;
    }

    else
    {
LABEL_36:
    }

    if (v5 == v6)
    {
      v36 = v90;
      if (v90)
      {
        v3 = v95;
        v94 = v90;
        MEMORY[0x28223BE20](v35);
        v78[2] = &v94;
        v37 = v84;
        v38 = sub_23A9EAE00(sub_23A98DE88, v78, v3);
        v39 = v36;
        v5 = v89;
        v84 = v37;
        if (v38)
        {

          goto LABEL_9;
        }

        v40 = v86 + 1;
        if (__OFADD__(v86, 1))
        {
          __break(1u);
LABEL_85:
          __break(1u);
          goto LABEL_86;
        }

        v79 = v86 + 1;
        if (v3 >> 62)
        {
          if (v40 >= sub_23AA0D7F4())
          {
            goto LABEL_51;
          }

          if (sub_23AA0D7F4() < v40)
          {
            goto LABEL_86;
          }

LABEL_45:
          if (v40 < 0)
          {
            goto LABEL_87;
          }

          v42 = v90;
          sub_23A945D28(v40, v40, v42);
        }

        else
        {
          v41 = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
          if (v40 < v41)
          {
            if (v41 >= v40)
            {
              goto LABEL_45;
            }

LABEL_86:
            __break(1u);
LABEL_87:
            __break(1u);
LABEL_88:
            __break(1u);
            goto LABEL_89;
          }

LABEL_51:
          v43 = v90;
          MEMORY[0x23EE8FD70]();
          if (*((v95 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v95 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            sub_23AA0D314();
          }

          sub_23AA0D334();
        }

        v44 = sub_23A985114(v5);
        v46 = v45;

        v47 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        v48 = v88;
        swift_beginAccess();
        v83 = *&v48[v47];
        v49 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        swift_beginAccess();
        v82 = v49;
        v50 = v48;
        v88 = v87;
        v51 = v83;

        v54 = sub_23A9878FC(v52, v51, v53);

        if ((v54 & 0xC000000000000001) != 0)
        {
          v55 = sub_23AA0D7F4();
        }

        else
        {
          v55 = *(v54 + 16);
        }

        if (!v55)
        {
          v81 = v50;
          v56 = v5;
          v57 = v96;
          v58 = v96[2];
          if (v58 < v56)
          {
            goto LABEL_88;
          }

          v59 = v81;
          v60 = v90;
          v87 = v59;
          v61 = v60;
          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          if (!isUniquelyReferenced_nonNull_native || v58 >= v57[3] >> 1)
          {
            v57 = sub_23A938C30(isUniquelyReferenced_nonNull_native, v58 + 1, 1, v57);
            v96 = v57;
          }

          sub_23A9456CC(v89, v89, 1, v87, v61, v86);
          v64 = v57[2];
          v63 = v57[3];
          if (v64 >= v63 >> 1)
          {
            v57 = sub_23A938C30((v63 > 1), v64 + 1, 1, v57);
          }

          v65 = v89 + 1;
          v57[2] = v64 + 1;
          v66 = &v57[3 * v64];
          v66[4] = v87;
          v66[5] = v61;
          v66[6] = v86;
          v96 = v57;
          v5 = v65;
          v50 = v81;
        }

        v67 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
        v68 = v88;
        swift_beginAccess();
        v69 = *&v68[v67];

        v72 = sub_23A9878FC(v70, v69, v71);

        if ((v72 & 0xC000000000000001) != 0)
        {
          v73 = sub_23AA0D7F4();
        }

        else
        {
          v73 = *(v72 + 16);
        }

        if (v73)
        {

          v3 = v88;
          goto LABEL_9;
        }

        v74 = v96;
        v75 = v96[2];
        if (v75 >= v5)
        {
          v76 = swift_isUniquelyReferenced_nonNull_native();
          v81 = v50;
          if (!v76 || v75 >= v74[3] >> 1)
          {
            v74 = sub_23A938C30(v76, v75 + 1, 1, v74);
            v96 = v74;
          }

          v77 = v88;
          sub_23A9456CC(v5, v5, 1, v90, v88, v79);

          v3 = v81;
          v96 = v74;
          ++v5;
          goto LABEL_9;
        }

LABEL_89:
        __break(1u);
        return;
      }

      v5 = v89;
      goto LABEL_9;
    }
  }

  v26 = 0;
  while (1)
  {
    if (a2)
    {
      v30 = MEMORY[0x23EE90360](v26, v80);
      v24 = __OFADD__(v26++, 1);
      if (v24)
      {
        goto LABEL_85;
      }

      v28 = *(v30 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
      swift_unknownObjectRelease();
      goto LABEL_26;
    }

    if ((v26 & 0x8000000000000000) != 0)
    {
      break;
    }

    if (v26 >= *(v7 + 16))
    {
      goto LABEL_78;
    }

    v27 = *(v10 + 8 * v26++);
    v28 = *(v27 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
LABEL_26:
    v29 = vceq_f32(v28, v25);
    if (v29.i32[0] & v29.i32[1])
    {
      goto LABEL_36;
    }

    if (v26 == v3)
    {
      goto LABEL_31;
    }
  }

  __break(1u);
LABEL_78:
  __break(1u);
LABEL_76:
}

uint64_t sub_23A98D10C(unint64_t a1, uint64_t a2, uint64_t a3, double a4, float32x2_t a5)
{
  v7 = a1;
  v50 = MEMORY[0x277D84F90];
  if (a1 >> 62)
  {
LABEL_54:
    v44 = a4;
    v45 = a5;
    v46 = sub_23AA0D7F4();
    a5 = v45;
    a4 = v44;
    if (v46)
    {
      goto LABEL_3;
    }
  }

  else if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
LABEL_3:
    v8 = *&a4;
    v9 = vsub_f32(0, a5);

    while (1)
    {
      if ((v7 & 0xC000000000000001) != 0)
      {

        v10 = MEMORY[0x23EE90360](0, v7);
      }

      else
      {
        if (!*((v7 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          __break(1u);
          goto LABEL_54;
        }

        v10 = *(v7 + 32);
      }

      v11 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
      swift_beginAccess();
      v12 = *&v10[v11];
      v48 = v10;
      if ((v12 & 0xC000000000000001) != 0)
      {

        sub_23AA0D7B4();
        type metadata accessor for HullPointUUID(0);
        sub_23A98B508();
        sub_23AA0D424();
        v12 = v52;
        v16 = v53;
        v17 = v54;
        v18 = v55;
        v19 = v56;
      }

      else
      {
        v20 = -1 << *(v12 + 32);
        v16 = v12 + 56;
        v17 = ~v20;
        v21 = -v20;
        if (v21 < 64)
        {
          v22 = ~(-1 << v21);
        }

        else
        {
          v22 = -1;
        }

        v19 = v22 & *(v12 + 56);

        v18 = 0;
      }

      v23 = ((v17 + 64) >> 6);
      while ((v12 & 0x8000000000000000) == 0)
      {
        v24 = v18;
        v25 = v19;
        v26 = v18;
        if (!v19)
        {
          while (1)
          {
            v26 = v24 + 1;
            if (__OFADD__(v24, 1))
            {
              break;
            }

            if (v26 >= v23)
            {
              goto LABEL_28;
            }

            v25 = *(v16 + 8 * v26);
            ++v24;
            if (v25)
            {
              goto LABEL_20;
            }
          }

          __break(1u);
          goto LABEL_42;
        }

LABEL_20:
        v27 = (v25 - 1) & v25;
        v5 = *(*(v12 + 48) + ((v26 << 9) | (8 * __clz(__rbit64(v25)))));

        if (!v5)
        {
          goto LABEL_28;
        }

LABEL_24:
        if (*(a3 + 16))
        {
          v28 = sub_23A9EDE74(v5);
          if ((v29 & 1) != 0 && vaddv_f32(vmul_f32(v9, *(*(a3 + 56) + 8 * v28))) > 0.70711)
          {
            sub_23A8CA904(v12);

            v23 = v48;
            if (!*(a2 + 16))
            {
              goto LABEL_44;
            }

            v32 = sub_23A9EDE74(v5);
            if ((v33 & 1) == 0)
            {
              goto LABEL_44;
            }

            v34 = (*(a2 + 56) + 16 * v32);
            v35 = *v34;
            v14 = *(*v34 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
            v15 = *&v48[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];
            v13 = vsub_f32(v14, v15);
            if (fabsf(v13.f32[0]) < 0.07)
            {
              v36 = v34[1];
              LODWORD(v37) = HIDWORD(*&v48[OBJC_IVAR____TtC8RoomPlan9HullPoint_position]);
              if (fabsf(v13.f32[1]) < 0.07)
              {
                v35 = v36;
              }

              v14 = *(v35 + OBJC_IVAR____TtC8RoomPlan9HullPoint_position);
              v13.i32[0] = vsub_f32(v14, v15).u32[0];
LABEL_43:
              v13.f32[1] = v14.f32[1] - v37;
              if (vaddv_f32(vmul_f32(v13, v8)) >= 0.0)
              {
LABEL_44:
                v38 = *&v23[v11];
                __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFB10D0, &unk_23AA1A750);
                inited = swift_initStackObject();
                *(inited + 16) = xmmword_23AA11BB0;
                *(inited + 32) = v5;
                if ((v38 & 0xC000000000000001) != 0)
                {
                  if (v38 < 0)
                  {
                    v40 = v38;
                  }

                  else
                  {
                    v40 = v38 & 0xFFFFFFFFFFFFFF8;
                  }

                  v41 = sub_23AA0D7F4();
                  v38 = sub_23A9EFF10(v40, v41);
                }

                else
                {
                }

                v42 = sub_23A986E78(inited, v38);
                swift_setDeallocating();
                swift_arrayDestroy();
                sub_23A911BA4(v42);
              }

              return v50;
            }

LABEL_42:
            v37 = v15.f32[1];
            goto LABEL_43;
          }
        }

        v18 = v26;
        v19 = v27;
      }

      if (sub_23AA0D824())
      {
        type metadata accessor for HullPointUUID(0);
        swift_dynamicCast();
        v5 = v49;
        v26 = v18;
        v27 = v19;
        if (v49)
        {
          goto LABEL_24;
        }
      }

LABEL_28:
      sub_23A8CA904(v12);

      sub_23A911BA4(v30);
      sub_23A9859BC();

      v7 = a1;
      if (!(a1 >> 62))
      {
        if (*((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
        {
          continue;
        }

        goto LABEL_34;
      }

      if (sub_23AA0D7F4() < 1 || !sub_23AA0D7F4())
      {
LABEL_34:

        return v50;
      }
    }
  }

  return v50;
}

void sub_23A98D608(unint64_t a1)
{
  if (a1 >> 62)
  {
    goto LABEL_13;
  }

  for (i = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_23AA0D7F4())
  {
    v3 = 0;
    while ((a1 & 0xC000000000000001) != 0)
    {
      v4 = MEMORY[0x23EE90360](v3, a1);
      v5 = v3 + 1;
      if (__OFADD__(v3, 1))
      {
        goto LABEL_11;
      }

LABEL_7:
      sub_23A9EF31C(&v6, v4);

      ++v3;
      if (v5 == i)
      {
        return;
      }
    }

    if (v3 >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      goto LABEL_12;
    }

    v4 = *(a1 + 8 * v3 + 32);

    v5 = v3 + 1;
    if (!__OFADD__(v3, 1))
    {
      goto LABEL_7;
    }

LABEL_11:
    __break(1u);
LABEL_12:
    __break(1u);
LABEL_13:
    ;
  }
}

void *sub_23A98D6EC(unint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a2)
  {
    v5 = *(a2 + 96);
    v6 = *(a2 + 48);
    v7 = *(a2 + 64);
    v8 = *(a2 + 80);
    v9 = vmul_n_f32(*&v6, 0.5 * v5.f32[0]);
    v10 = vmul_n_f32(*&v7, vmuls_lane_f32(0.5, v5, 1));
    v11 = vadd_f32(*&v8, v10);
    v12 = vsub_f32(*&v8, v10);
    v13 = &v81;
    v82 = vsub_f32(v11, v9);
    v83 = vsub_f32(v12, v9);
    v84 = vsub_f32(0, *&v7);
    v85 = vsub_f32(0, *&v6);
    v86 = vadd_f32(v9, v12);
    v87 = vadd_f32(v9, v11);
    v95 = v85;
    v96 = v7;
    *(&v7 + 1) = v6;
    v88 = v7;
    v89 = v83;
    v90 = v86;
    v91 = v6;
    v92 = v84;
    v93 = v87;
    v94 = v82;
    v73 = a1 >> 62;
    v14 = a1 & 0xFFFFFFFFFFFFFF8;
    if (a1 >> 62)
    {
LABEL_109:
      v15 = sub_23AA0D7F4();
    }

    else
    {
      v15 = *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10);
    }

    v16 = v13 + 32;
    v77 = a1 & 0xC000000000000001;

    v17 = 0;
    v74 = MEMORY[0x277D84F98];
    v72 = v14;
    v69 = v13 + 32;
    do
    {
      v20 = (v16 + 32 * v17);
      v22 = v20[1];
      v21 = v20[2];
      v75 = v20[3];
      v23 = vsub_f32(0, *&v75);
      if (v15)
      {
        v24 = 0;
        v25 = 0;
        v26 = *v20;
        v13 = 1;
        v27 = INFINITY;
        v28 = INFINITY;
        while (2)
        {
          v29 = v25;
          v30 = v28;
          v31 = v27;
          v32 = v27 + 0.1;
          v25 = v24;
          while (1)
          {
            if (v77)
            {
              v33 = MEMORY[0x23EE90360](v25, a1);
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
                goto LABEL_94;
              }
            }

            else
            {
              if (v25 >= *(v14 + 16))
              {
                goto LABEL_95;
              }

              v33 = *(a1 + 8 * v25 + 32);
              v24 = v25 + 1;
              if (__OFADD__(v25, 1))
              {
LABEL_94:
                __break(1u);
LABEL_95:
                __break(1u);
LABEL_96:
                __break(1u);
LABEL_97:
                __break(1u);
                goto LABEL_98;
              }
            }

            v34 = *&v33[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

            v35 = vsub_f32(v34, v26);
            v27 = vaddv_f32(vmul_f32(*&v21, v35));
            if (v27 < v32)
            {
              v28 = vaddv_f32(vmul_f32(v23, v35));
              if (vabds_f32(v27, v31) >= 0.1 || v30 >= v28)
              {
                break;
              }
            }

            ++v25;
            if (v24 == v15)
            {
              goto LABEL_27;
            }
          }

          v13 = 0;
          if (v24 != v15)
          {
            continue;
          }

          break;
        }

        v29 = v25;
        v13 = v15 == 0;
      }

      else
      {
        v29 = 0;
        v13 = 1;
      }

LABEL_27:
      v76 = v17;
      v37 = vsub_f32(0, *&v21);
      if (v15)
      {
        v38 = 0;
        v39 = 0;
        v40 = 1;
        v41 = INFINITY;
        v42 = INFINITY;
        do
        {
          v43 = v39;
          v44 = v42;
          v45 = v41;
          v46 = v41 + 0.1;
          v39 = v38;
          while (1)
          {
            if (v77)
            {
              v47 = MEMORY[0x23EE90360](v39, a1);
              v38 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_96;
              }
            }

            else
            {
              if (v39 >= *(v14 + 16))
              {
                goto LABEL_97;
              }

              v47 = *(a1 + 8 * v39 + 32);
              v38 = v39 + 1;
              if (__OFADD__(v39, 1))
              {
                goto LABEL_96;
              }
            }

            v48 = *&v47[OBJC_IVAR____TtC8RoomPlan9HullPoint_position];

            v49 = vsub_f32(v48, v22);
            v41 = vaddv_f32(vmul_f32(v37, v49));
            if (v41 < v46)
            {
              v42 = vaddv_f32(vmul_f32(v23, v49));
              if (vabds_f32(v41, v45) >= 0.1 || v44 >= v42)
              {
                break;
              }
            }

            ++v39;
            if (v38 == v15)
            {
              goto LABEL_45;
            }
          }

          v40 = 0;
        }

        while (v38 != v15);
        v43 = v39;
        v40 = v15 == 0;
LABEL_45:
        if (((v13 | v40) & 1) == 0)
        {
          v51 = v29 - 1;
          if (__OFSUB__(v29, 1))
          {
            goto LABEL_105;
          }

          if (v51 < 0)
          {
            v52 = v73 ? sub_23AA0D7F4() : *(v14 + 16);
            v51 = v52 - 1;
            if (__OFSUB__(v52, 1))
            {
              goto LABEL_107;
            }
          }

          v80 = MEMORY[0x277D84F90];
          if (v77)
          {
            if (v73)
            {
              v53 = sub_23AA0D7F4();
            }

            else
            {
              v53 = *(v14 + 16);
            }

            if (v53)
            {
              while (1)
              {
                v55 = v51 + 1;
                if (__OFADD__(v51, 1))
                {
                  break;
                }

                if (v53 == -1 && v51 == 0x7FFFFFFFFFFFFFFFLL)
                {
                  goto LABEL_103;
                }

                v51 = v55 % v53;
                MEMORY[0x23EE90360](v55 % v53, a1);
                MEMORY[0x23EE8FD70]();
                v13 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
                if (v13 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                {
                  sub_23AA0D314();
                }

                sub_23AA0D334();
                if (v51 == v43)
                {
                  goto LABEL_78;
                }
              }

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
            }

            __break(1u);
LABEL_107:
            __break(1u);
LABEL_108:
            __break(1u);
            goto LABEL_109;
          }

          if (v73)
          {
            v54 = sub_23AA0D7F4();
          }

          else
          {
            v54 = *(v14 + 16);
          }

          v14 = a1 + 32;
          if (!v54)
          {
            goto LABEL_108;
          }

          v13 = *(v72 + 16);
          do
          {
            v56 = v51 + 1;
            if (__OFADD__(v51, 1))
            {
              goto LABEL_101;
            }

            if (v54 == -1 && v51 == 0x7FFFFFFFFFFFFFFFLL)
            {
              goto LABEL_104;
            }

            v51 = v56 % v54;
            if (v56 % v54 >= v13)
            {
              goto LABEL_102;
            }

            v57 = *(a1 + 32 + 8 * v51);
            MEMORY[0x23EE8FD70]();
            if (*((v80 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
            {
              sub_23AA0D314();
            }

            sub_23AA0D334();
          }

          while (v51 != v43);
LABEL_78:
          v79 = MEMORY[0x277D84FA0];
          v58 = MEMORY[0x277D84F90];
          v78 = MEMORY[0x277D84F90];

          v14 = a3;
          v60 = sub_23A98D10C(v59, a3, a4, v21, *&v75);
          sub_23A911F2C(v60);
          v13 = sub_23A8ED10C(v80);
          v61 = sub_23A98D10C(v13, a3, a4, *&v37, *&v75);

          sub_23A911F2C(v61);
          if (v80 >> 62)
          {
            v62 = sub_23AA0D7F4();
            if (v62)
            {
LABEL_80:
              v63 = 0;
              while (1)
              {
                if ((v80 & 0xC000000000000001) != 0)
                {
                  v64 = MEMORY[0x23EE90360](v63, v80);
                }

                else
                {
                  if (v63 >= *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10))
                  {
                    goto LABEL_100;
                  }

                  v64 = *(v80 + 8 * v63 + 32);
                }

                v65 = v64;
                v14 = v63 + 1;
                if (__OFADD__(v63, 1))
                {
                  goto LABEL_99;
                }

                v66 = OBJC_IVAR____TtC8RoomPlan9HullPoint_uuids;
                swift_beginAccess();
                v13 = *&v65[v66];

                sub_23A911BA4(v13);
                ++v63;
                if (v14 == v62)
                {
                  v18 = v58;
                  goto LABEL_5;
                }
              }
            }
          }

          else
          {
            v62 = *((v80 & 0xFFFFFFFFFFFFFF8) + 0x10);
            if (v62)
            {
              goto LABEL_80;
            }
          }

          v18 = MEMORY[0x277D84F90];
LABEL_5:

          sub_23A98D608(v18);

          sub_23A985DA4(v78);

          isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
          sub_23A9DA000(v79, isUniquelyReferenced_nonNull_native, v75);
          v14 = v72;
          v16 = v69;
        }
      }

      v17 = v76 + 1;
    }

    while (v76 != 3);

    return v74;
  }

  else
  {
    v67 = MEMORY[0x277D84F90];

    return sub_23A9DC5F8(v67);
  }
}

void sub_23A98DEE0(unint64_t *a1@<X0>, uint64_t a2@<X1>, void *a3@<X8>)
{
  sub_23A987EF0(a1, a2, **(v3 + 16), *(v3 + 24));
  if (!v4)
  {
    *a3 = v6;
  }
}

float sub_23A98DF14(double a1, double a2, __n128 a3, __n128 a4)
{
  result = a4.n128_f32[2];
  if (fabsf(a4.n128_f32[2] / a3.n128_f32[2]) != INFINITY)
  {
    return (a3.n128_f32[2] / (1.0 - a3.n128_f32[2])) * (a4.n128_f32[2] / a3.n128_f32[2]);
  }

  return result;
}

uint64_t sub_23A98DF4C()
{
  v1 = OBJC_IVAR____TtC8RoomPlan13JunctionPoint_leftUUID;
  v2 = sub_23AA0C0E4();
  v3 = *(*(v2 - 8) + 8);
  v3(v0 + v1, v2);
  v3(v0 + OBJC_IVAR____TtC8RoomPlan13JunctionPoint_rightUUID, v2);

  return swift_deallocClassInstance();
}

uint64_t type metadata accessor for JunctionPoint(uint64_t a1)
{
  result = qword_27DFB0638;
  if (!qword_27DFB0638)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_23A98E06C(uint64_t a1)
{
  result = sub_23AA0C0E4();
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

unint64_t sub_23A98E138()
{
  result = qword_27DFB0648;
  if (!qword_27DFB0648)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27DFB0648);
  }

  return result;
}

void sub_23A98E18C(char **a1, float32x2_t a2)
{
  v4 = *a1;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v4 = sub_23A977E34(v4);
  }

  v5 = *(v4 + 2);
  v6[0] = v4 + 32;
  v6[1] = v5;
  sub_23A9918EC(v6, a2);
  *a1 = v4;
}

uint64_t sub_23A98E208(uint64_t *a1)
{
  v2 = *a1;
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *a1 = v2;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v2 = sub_23A97E5E8(v2);
    *a1 = v2;
  }

  v4 = *(v2 + 16);
  v6[0] = v2 + 32;
  v6[1] = v4;
  sub_23A991A08(v6);
  return sub_23AA0D954();
}

unint64_t sub_23A98E284(unint64_t isUniquelyReferenced_nonNull_bridgeObject)
{
  if (isUniquelyReferenced_nonNull_bridgeObject >> 62)
  {
    goto LABEL_46;
  }

  v1 = *((isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8) + 0x10);
  while (v1)
  {
    v2 = 0;
    v29 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
    v30 = isUniquelyReferenced_nonNull_bridgeObject & 0xC000000000000001;
    v3 = MEMORY[0x277D84F90];
    v25 = isUniquelyReferenced_nonNull_bridgeObject;
    v28 = isUniquelyReferenced_nonNull_bridgeObject + 32;
    v26 = v1;
    while (1)
    {
      if (v30)
      {
        isUniquelyReferenced_nonNull_bridgeObject = MEMORY[0x23EE90360](v2, v25);
        v4 = isUniquelyReferenced_nonNull_bridgeObject;
        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      else
      {
        if (v2 >= *(v29 + 16))
        {
          goto LABEL_41;
        }

        v4 = *(v28 + 8 * v2);

        v5 = __OFADD__(v2++, 1);
        if (v5)
        {
          goto LABEL_40;
        }
      }

      v6 = *(v4 + 24);

      v7 = v6 >> 62;
      v8 = v6 >> 62 ? sub_23AA0D7F4() : *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v9 = v3 >> 62;
      if (v3 >> 62)
      {
        break;
      }

      isUniquelyReferenced_nonNull_bridgeObject = *((v3 & 0xFFFFFFFFFFFFFF8) + 0x10);
      v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
      if (__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
      {
        goto LABEL_39;
      }

LABEL_13:
      isUniquelyReferenced_nonNull_bridgeObject = swift_isUniquelyReferenced_nonNull_bridgeObject();
      v32 = v8;
      if (isUniquelyReferenced_nonNull_bridgeObject)
      {
        if (!v9)
        {
          v11 = v3 & 0xFFFFFFFFFFFFFF8;
          if (v10 <= *((v3 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
          {
            goto LABEL_20;
          }

          goto LABEL_19;
        }

LABEL_18:
        sub_23AA0D7F4();
        goto LABEL_19;
      }

      if (v9)
      {
        goto LABEL_18;
      }

LABEL_19:
      isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D8D4();
      v3 = isUniquelyReferenced_nonNull_bridgeObject;
      v11 = isUniquelyReferenced_nonNull_bridgeObject & 0xFFFFFFFFFFFFFF8;
LABEL_20:
      v12 = *(v11 + 16);
      v13 = *(v11 + 24);
      if (v7)
      {
        v15 = v11;
        isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D7F4();
        v11 = v15;
        v14 = isUniquelyReferenced_nonNull_bridgeObject;
        if (isUniquelyReferenced_nonNull_bridgeObject)
        {
LABEL_24:
          if (((v13 >> 1) - v12) < v32)
          {
            goto LABEL_43;
          }

          v16 = v11 + 8 * v12 + 32;
          v27 = v11;
          if (v7)
          {
            if (v14 < 1)
            {
              goto LABEL_45;
            }

            sub_23A914008(&qword_27DFAF108, &qword_27DFAF100, &unk_23AA19360);
            for (i = 0; i != v14; ++i)
            {
              __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27DFAF100, &unk_23AA19360);
              v18 = sub_23A9DC200(v31, i, v6);
              v20 = *v19;

              (v18)(v31, 0);
              *(v16 + 8 * i) = v20;
            }
          }

          else
          {
            type metadata accessor for CDTEdge();
            swift_arrayInitWithCopy();
          }

          v1 = v26;
          if (v32 >= 1)
          {
            v21 = *(v27 + 16);
            v5 = __OFADD__(v21, v32);
            v22 = v21 + v32;
            if (v5)
            {
              goto LABEL_44;
            }

            *(v27 + 16) = v22;
          }

          goto LABEL_5;
        }
      }

      else
      {
        v14 = *((v6 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v14)
        {
          goto LABEL_24;
        }
      }

      if (v32 > 0)
      {
        goto LABEL_42;
      }

LABEL_5:
      if (v2 == v1)
      {
        return v3;
      }
    }

    isUniquelyReferenced_nonNull_bridgeObject = sub_23AA0D7F4();
    v10 = isUniquelyReferenced_nonNull_bridgeObject + v8;
    if (!__OFADD__(isUniquelyReferenced_nonNull_bridgeObject, v8))
    {
      goto LABEL_13;
    }

LABEL_39:
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
LABEL_45:
    __break(1u);
LABEL_46:
    v23 = isUniquelyReferenced_nonNull_bridgeObject;
    v1 = sub_23AA0D7F4();
    isUniquelyReferenced_nonNull_bridgeObject = v23;
  }

  return MEMORY[0x277D84F90];
}