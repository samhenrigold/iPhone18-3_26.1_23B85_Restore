unint64_t sub_245FC82A8()
{
  result = qword_27EE3A458;
  if (!qword_27EE3A458)
  {
    objc_opt_self();
    result = swift_getObjCClassMetadata();
    atomic_store(result, &qword_27EE3A458);
  }

  return result;
}

uint64_t sub_245FC82F4(uint64_t a1)
{
  if (*(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

__n128 sub_245FC8310(uint64_t a1, __int128 *a2)
{
  v2 = *a2;
  v3 = a2[1];
  v4 = a2[3];
  *(a1 + 32) = a2[2];
  *(a1 + 48) = v4;
  *a1 = v2;
  *(a1 + 16) = v3;
  result = a2[4];
  v6 = a2[5];
  v7 = a2[6];
  *(a1 + 112) = *(a2 + 14);
  *(a1 + 80) = v6;
  *(a1 + 96) = v7;
  *(a1 + 64) = result;
  return result;
}

uint64_t sub_245FC833C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 120))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_245FC835C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
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

  *(result + 120) = v3;
  return result;
}

double sub_245FC83B4(uint64_t a1)
{
  *(a1 + 112) = 0;
  result = 0.0;
  *(a1 + 80) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 120) = 1;
  return result;
}

uint64_t sub_245FC841C(uint64_t a1)
{
  swift_beginAccess();
  swift_weakAssign();
}

void (*sub_245FC846C(uint64_t *a1))(void **a1, char a2, __n128 a3)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x28uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 32) = v1;
  swift_beginAccess();
  *(v4 + 24) = swift_weakLoadStrong();
  return sub_245FC84FC;
}

void sub_245FC84FC(void **a1, char a2, __n128 a3)
{
  v4 = *a1;
  swift_weakAssign();
  if (a2)
  {

    swift_endAccess();
  }

  else
  {
    swift_endAccess();
  }

  free(v4);
}

uint64_t sub_245FC8664(uint64_t a1, uint64_t a2, double a3)
{
  v5 = swift_allocObject();
  swift_weakInit();
  swift_beginAccess();
  swift_weakAssign();

  *(v5 + 24) = a2;
  *(v5 + 32) = a3;
  return v5;
}

uint64_t sub_245FC86F8()
{
  swift_weakDestroy();

  return swift_deallocClassInstance();
}

void *sub_245FC8730@<X0>(char a2@<W1>, unint64_t a3@<X8>)
{
  v5 = sub_2460918F4();
  v6 = *(v5 - 1);
  MEMORY[0x28223BE20](v5);
  v8 = &v82 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v89 = &v82 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v82 - v12;
  v92 = sub_246091704();
  v14 = *(v92 - 8);
  MEMORY[0x28223BE20](v92);
  v88 = &v82 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v90 = &v82 - v17;
  MEMORY[0x28223BE20](v18);
  v20 = &v82 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v82 - v22;
  if (a2)
  {
    QuadMeshUsdaAssetsURLs = CPGOutputGetQuadMeshUsdaAssetsURLs();
    if (!QuadMeshUsdaAssetsURLs)
    {
LABEL_3:
      v25 = 0;
LABEL_21:
      v38 = sub_245FA31EC();
      (*(v6 + 16))(v8, v38, v5);
      v39 = sub_2460918D4();
      v40 = sub_246091FB4();
      if (os_log_type_enabled(v39, v40))
      {
        v41 = swift_slowAlloc();
        *v41 = 0;
        _os_log_impl(&dword_245F8A000, v39, v40, "Backend Manager: Failed to get output USDA assets!", v41, 2u);
        MEMORY[0x24C1989D0](v41, -1, -1);
        v42 = v25;
      }

      else
      {
        v42 = v39;
        v39 = v25;
      }

      (*(v6 + 8))(v8, v5);
      v43 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v44 = *(*(v43 - 8) + 56);
      v45 = a3;
      return v44(v45, 1, 1, v43);
    }
  }

  else
  {
    QuadMeshUsdaAssetsURLs = CPGOutputGetUsdaAssetsURLs();
    if (!QuadMeshUsdaAssetsURLs)
    {
      goto LABEL_3;
    }
  }

  v86 = v23;
  v25 = QuadMeshUsdaAssetsURLs;
  objc_opt_self();
  if (!swift_dynamicCastObjCClass())
  {
    goto LABEL_21;
  }

  v84 = v13;
  v93 = 0;
  type metadata accessor for CFURL();
  v26 = v25;
  sub_246091DC4();
  v87 = v26;

  v27 = v93;
  if (!v93)
  {
    v25 = v87;
    goto LABEL_21;
  }

  if (v93 >> 62)
  {
LABEL_45:
    v28 = sub_246092354();
  }

  else
  {
    v28 = *((v93 & 0xFFFFFFFFFFFFFF8) + 0x10);
  }

  v85 = a3;
  v82 = v6;
  v83 = v5;
  if (!v28)
  {

    v31 = MEMORY[0x277D84F90];
    v37 = v92;
    v27 = *(MEMORY[0x277D84F90] + 16);
    if (!v27)
    {
LABEL_33:

      v48 = sub_245FA31EC();
      v50 = v82;
      v49 = v83;
      v51 = v89;
      (*(v82 + 16))(v89, v48, v83);
      v52 = sub_2460918D4();
      v53 = sub_246091FB4();
      if (os_log_type_enabled(v52, v53))
      {
        v54 = swift_slowAlloc();
        *v54 = 0;
        _os_log_impl(&dword_245F8A000, v52, v53, "Backend Manager: Failed to find USDA asset", v54, 2u);
        MEMORY[0x24C1989D0](v54, -1, -1);
        v55 = v87;
      }

      else
      {
        v55 = v52;
        v52 = v87;
      }

      v56 = v85;

      (*(v50 + 8))(v51, v49);
      v43 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v44 = *(*(v43 - 8) + 56);
      v45 = v56;
      return v44(v45, 1, 1, v43);
    }

LABEL_27:
    v20 = 0;
    v6 = 1633973109;
    v5 = (v14 + 8);
    while (1)
    {
      if (v20 >= *(v31 + 16))
      {
        __break(1u);
        goto LABEL_45;
      }

      a3 = *(v14 + 16);
      (a3)(v90, v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * v20, v37);
      if (sub_2460915F4() == 1633973109 && v46 == 0xE400000000000000)
      {
        break;
      }

      v47 = sub_2460923E4();

      if (v47)
      {
        goto LABEL_38;
      }

      ++v20;
      v37 = v92;
      (*v5)(v90, v92);
      if (v27 == v20)
      {
        goto LABEL_33;
      }
    }

LABEL_38:
    v57 = *(v14 + 32);
    v58 = v86;
    v57(v86, v90, v92);
    v59 = objc_allocWithZone(MEMORY[0x277D778A8]);
    v60 = sub_246091674();
    v61 = [v59 initSceneFromURL_];

    if (v61)
    {

      v62 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
      v63 = *(v62 + 48);
      v64 = *(v62 + 64);
      v65 = v85;
      *v85 = v61;
      v57(&v65[v63], v58, v92);
      *&v65[v64] = v31;
      return (*(*(v62 - 8) + 56))(v65, 0, 1, v62);
    }

    v66 = sub_245FA31EC();
    v67 = v82;
    v68 = v83;
    (*(v82 + 16))(v84, v66, v83);
    v69 = v88;
    (a3)(v88, v58, v92);
    v70 = sub_2460918D4();
    v71 = sub_246091FB4();
    if (os_log_type_enabled(v70, v71))
    {
      v72 = v69;
      v73 = swift_slowAlloc();
      v91 = swift_slowAlloc();
      v93 = v91;
      *v73 = 141558275;
      *(v73 + 4) = 1752392040;
      *(v73 + 12) = 2081;
      v74 = sub_2460916F4();
      v76 = v75;
      v77 = *v5;
      (*v5)(v72, v92);
      v78 = sub_245F8D3C0(v74, v76, &v93);

      *(v73 + 14) = v78;
      _os_log_impl(&dword_245F8A000, v70, v71, "Backend Manager: Failed to create USKScene for USDA URL = %{private,mask.hash}s", v73, 0x16u);
      v79 = v91;
      sub_245F8E6F4(v91);
      MEMORY[0x24C1989D0](v79, -1, -1);
      MEMORY[0x24C1989D0](v73, -1, -1);

      (*(v67 + 8))(v84, v83);
      v77(v58, v92);
    }

    else
    {

      v80 = *v5;
      v81 = v92;
      (*v5)(v69, v92);
      (*(v67 + 8))(v84, v68);
      v80(v58, v81);
    }

    v43 = sub_245F8E624(&qword_27EE3A468, &unk_246097A90);
    v44 = *(*(v43 - 8) + 56);
    v45 = v85;
    return v44(v45, 1, 1, v43);
  }

  v93 = MEMORY[0x277D84F90];
  result = sub_245FAC7A8(0, v28 & ~(v28 >> 63), 0);
  v91 = v28;
  if ((v28 & 0x8000000000000000) == 0)
  {
    v30 = 0;
    v31 = v93;
    v32 = v27;
    v33 = v27 & 0xC000000000000001;
    do
    {
      if (v33)
      {
        v34 = MEMORY[0x24C196C20](v30, v32);
      }

      else
      {
        v34 = *(v32 + 8 * v30 + 32);
      }

      v35 = v34;
      sub_2460916D4();

      v93 = v31;
      a3 = *(v31 + 16);
      v36 = *(v31 + 24);
      if (a3 >= v36 >> 1)
      {
        sub_245FAC7A8((v36 > 1), a3 + 1, 1);
        v31 = v93;
      }

      v30 = (v30 + 1);
      *(v31 + 16) = a3 + 1;
      v37 = v92;
      (*(v14 + 32))(v31 + ((*(v14 + 80) + 32) & ~*(v14 + 80)) + *(v14 + 72) * a3, v20, v92);
    }

    while (v91 != v30);

    v27 = *(v31 + 16);
    if (!v27)
    {
      goto LABEL_33;
    }

    goto LABEL_27;
  }

  __break(1u);
  return result;
}

double sub_245FC90CC(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v32 = a4;
  v33 = a5;
  v30 = a2;
  v31 = a3;
  v36 = *MEMORY[0x277D85DE8];
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 data];
  if (v11)
  {
    v12 = v11;
    v13 = [v11 arraySize];
    v14 = [v12 dataNoCopy];
    v15 = sub_246091744();
    v17 = v16;

    v18 = v17 >> 62;
    if ((v17 >> 62) > 1)
    {
      if (v18 != 2)
      {
        memset(v34, 0, 14);
        goto LABEL_21;
      }

      v24 = *(v15 + 16);
      v25 = *(v15 + 24);
      v26 = sub_2460914B4();
      if (v26)
      {
        v27 = sub_2460914E4();
        if (__OFSUB__(v24, v27))
        {
          goto LABEL_24;
        }

        v26 += v24 - v27;
      }

      if (!__OFSUB__(v25, v24))
      {
        goto LABEL_19;
      }

      __break(1u);
    }

    else if (!v18)
    {
      v34[0] = v15;
      LOWORD(v34[1]) = v17;
      BYTE2(v34[1]) = BYTE2(v17);
      BYTE3(v34[1]) = BYTE3(v17);
      BYTE4(v34[1]) = BYTE4(v17);
      BYTE5(v34[1]) = BYTE5(v17);
LABEL_21:
      v29 = v34;
      goto LABEL_22;
    }

    if (v15 <= v15 >> 32)
    {
      v26 = sub_2460914B4();
      if (!v26)
      {
LABEL_19:
        sub_2460914D4();
        v29 = v26;
LABEL_22:
        sub_245FC9418(v29, v13, &v35, v30, v31, v32, v33);
        sub_245FAEC7C(v15, v17);

        return *&v35;
      }

      v28 = sub_2460914E4();
      if (!__OFSUB__(v15, v28))
      {
        v26 += v15 - v28;
        goto LABEL_19;
      }

LABEL_25:
      __break(1u);
    }

    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  v19 = sub_245FA31EC();
  (*(v7 + 16))(v10, v19, v6);
  v20 = sub_2460918D4();
  v21 = sub_246091FB4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_245F8A000, v20, v21, "Backend Manager: Failed to get the point array property data!", v22, 2u);
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v7 + 8))(v10, v6);
  return 0.0;
}

uint64_t sub_245FC9418@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X8>, float32x4_t a4@<Q0>, float32x4_t a5@<Q1>, float32x4_t a6@<Q2>, float32x4_t a7@<Q3>)
{
  if (!result)
  {
    *a3 = 0;
    *(a3 + 8) = 0;
    *(a3 + 16) = 0;
    *(a3 + 24) = 1;
    return result;
  }

  if (a2 < 0)
  {
    goto LABEL_16;
  }

  if (a2)
  {
    v7 = 0x7F0000007FLL;
    v8 = vneg_f32(0x7F0000007FLL);
    v9 = (result + 8);
    v10 = 0x2AAAAAAAAAAAAAAALL;
    v11 = INFINITY;
    v12 = -INFINITY;
    while (v10)
    {
      v14 = *(v9 - 2);
      v13 = *(v9 - 1);
      v15 = *v9;
      v9 += 3;
      v16 = vaddq_f32(vmlaq_n_f32(vmlaq_n_f32(vmulq_n_f32(a4, v14), a5, v13), a6, v15), a7);
      v8 = vbsl_s8(vcgt_f32(v8, *v16.f32), *v16.f32, v8);
      v7 = vbsl_s8(vcge_f32(*v16.f32, v7), *v16.f32, v7);
      if (v16.f32[2] < v11)
      {
        v11 = v16.f32[2];
      }

      if (v12 <= v16.f32[2])
      {
        v12 = v16.f32[2];
      }

      --v10;
      if (!--a2)
      {
        v17.i64[0] = v8.u32[0];
        v17.i64[1] = v8.u32[1];
        v18 = vorrq_s8(vshll_n_s32(v7, 0x20uLL), v17);
        v19 = LODWORD(v11) | (LODWORD(v12) << 32);
        goto LABEL_14;
      }
    }

    __break(1u);
LABEL_16:
    __break(1u);
    return result;
  }

  v19 = 0xFF8000007F800000;
  v18 = vdupq_n_s64(0xFF8000007F800000);
LABEL_14:
  *a3 = v18;
  *(a3 + 16) = v19;
  *(a3 + 24) = 0;
  return result;
}

double sub_245FC94E8(void *a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5)
{
  v57 = a4;
  v58 = a5;
  v55 = a2;
  v56 = a3;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  *&v8 = MEMORY[0x28223BE20](v6).n128_u64[0];
  v10 = &v51 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = [a1 nodeIterator];
  v12 = &off_278E99000;
  v13 = [v11 nextObject];
  if (!v13)
  {
    swift_unknownObjectRelease();
    return 0.0;
  }

  v14 = v13;
  v54 = 0;
  v15 = (v7 + 16);
  v16 = (v7 + 8);
  v17 = 0x7F0000007FLL;
  v18 = vneg_f32(0x7F0000007FLL);
  v59 = *MEMORY[0x277D779A0];
  v19 = -INFINITY;
  v20 = INFINITY;
  do
  {
    while (1)
    {
      objc_opt_self();
      v23 = swift_dynamicCastObjCClass();
      if (v23)
      {
        break;
      }

      v24 = sub_245FA31EC();
      (*v15)(v10, v24, v6);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v21 = swift_slowAlloc();
        *v21 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Backend Manager: Failed to cast iterator in USKScene to USKNode!", v21, 2u);
        MEMORY[0x24C1989D0](v21, -1, -1);
        v22 = v14;
      }

      else
      {
        v22 = v25;
        v25 = v14;
      }

      (*v16)(v10, v6);
      v14 = [v11 v12[123]];
      if (!v14)
      {
        goto LABEL_31;
      }
    }

    v52 = v11;
    v53 = v6;
    v27 = [v23 propertyList];
    v28 = v12[123];
    v60 = v27;
    v29 = [v27 v28];
    if (v29)
    {
      v30 = v29;
      v51 = v15;
      while (1)
      {
        v31 = v12;
        objc_opt_self();
        v32 = swift_dynamicCastObjCClass();
        if (!v32)
        {
          swift_unknownObjectRelease();

          v14 = v30;
          v15 = v51;
          goto LABEL_30;
        }

        v33 = v32;
        v34 = [v32 role];
        v35 = sub_246091C04();
        v37 = v36;
        if (v35 == sub_246091C04() && v37 == v38)
        {
          break;
        }

        v40 = sub_2460923E4();

        if (v40)
        {
LABEL_20:
          sub_245FC90CC(v33, v55, v56, v57, v58);
          v42 = v41;
          v44 = v43;
          v46 = v45;
          v48 = v47;

          if (v48)
          {
            goto LABEL_11;
          }

          v18 = vbsl_s8(vcgt_f32(v18, __PAIR64__(v44, v42)), __PAIR64__(v44, v42), v18);
          v17 = vbsl_s8(vcge_f32(__PAIR64__(HIDWORD(v44), HIDWORD(v42)), v17), __PAIR64__(HIDWORD(v44), HIDWORD(v42)), v17);
          if (v20 > *&v46)
          {
            v20 = *&v46;
          }

          if (v19 <= *(&v46 + 1))
          {
            v19 = *(&v46 + 1);
          }

          v12 = v31;
          v30 = [v60 v31 + 2680];
          v54 = 1;
          v15 = v51;
          if (!v30)
          {
            goto LABEL_29;
          }
        }

        else
        {

LABEL_11:
          v12 = v31;
          v30 = [v60 v31 + 2680];
          if (!v30)
          {
            v15 = v51;
            goto LABEL_29;
          }
        }
      }

      goto LABEL_20;
    }

LABEL_29:
    swift_unknownObjectRelease();
LABEL_30:

    v11 = v52;
    v14 = [v52 v12[123]];
    v6 = v53;
  }

  while (v14);
LABEL_31:
  swift_unknownObjectRelease();
  if (v54)
  {
    v49.i64[0] = v18.u32[0];
    v49.i64[1] = v18.u32[1];
    *&result = vorrq_s8(vshll_n_s32(v17, 0x20uLL), v49).u64[0];
    return result;
  }

  return 0.0;
}

__n128 sub_245FC9964@<Q0>(uint64_t a1@<X0>, void *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](a1);
  v9 = &v59 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v59 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v59 - v14;
  if (v16 && (v17 = CPGSfmMapCopyBoundingBox()) != 0)
  {
    v69 = v17;
    CPGBoundingBoxGetTransform();
    *v18.i64 = sub_2460211BC(v87);
    *v97.columns[0].i64 = sub_2460214C8(v18);
    v98 = __invert_f4(v97);
    v67 = v98.columns[1];
    v68 = v98.columns[0];
    v65 = v98.columns[3];
    v66 = v98.columns[2];
    sub_245FC94E8(a2, v98.columns[0], v98.columns[1], v98.columns[2], v98.columns[3]);
    if (v22)
    {
      v23 = sub_245FA31EC();
      (*(v7 + 16))(v12, v23, v6);
      v24 = sub_2460918D4();
      v25 = sub_246091FB4();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = swift_slowAlloc();
        *v26 = 0;
        _os_log_impl(&dword_245F8A000, v24, v25, "Backend Manager: Failed to get the initial mesh bounds!", v26, 2u);
        MEMORY[0x24C1989D0](v26, -1, -1);
      }

      (*(v7 + 8))(v12, v6);
      sub_245F97B40(&v70);
    }

    else
    {
      v31 = v19;
      v32 = v20;
      v33 = v21;
      v34 = *&v19;
      v62 = HIDWORD(v19);
      v35 = *(&v19 + 1);
      v36 = *&v20;
      v37 = *&v21;
      v38 = HIDWORD(v21);
      v39 = *(&v21 + 1);
      v40 = sub_245FA31EC();
      (*(v7 + 16))(v15, v40, v6);
      v41 = sub_2460918D4();
      LODWORD(v63.f64[0]) = sub_246091FC4();
      *&v64.f64[0] = v41;
      if (os_log_type_enabled(v41, LOBYTE(v63.f64[0])))
      {
        v60 = HIDWORD(v32);
        v42 = swift_slowAlloc();
        v61 = swift_slowAlloc();
        *&v70.f64[0] = v61;
        *v42 = 136315138;
        *&v88.f64[0] = __PAIR64__(v62, v31);
        *&v88.f64[1] = __PAIR64__(v60, v32);
        v89.n128_u64[0] = __PAIR64__(v38, v33);
        v43 = sub_246091C54();
        v45 = sub_245F8D3C0(v43, v44, &v70);

        v46 = v42;
        *(v42 + 4) = v45;
        v47 = v64.f64[0];
        _os_log_impl(&dword_245F8A000, *&v64.f64[0], LOBYTE(v63.f64[0]), "Found recenter mesh bounds: %s", v46, 0xCu);
        v48 = v61;
        sub_245F8E6F4(v61);
        MEMORY[0x24C1989D0](v48, -1, -1);
        MEMORY[0x24C1989D0](v46, -1, -1);
      }

      else
      {
      }

      (*(v7 + 8))(v15, v6);
      v49.f32[0] = (v34 + v35) * -0.5;
      v49.f32[1] = -v36;
      __asm { FMOV            V1.2D, #1.0 }

      _Q1.f64[0] = ((v37 + v39) * -0.5);
      v63 = _Q1;
      v64 = vcvtq_f64_f32(v49);
      sub_246021188(&v79, v68, v67, v66, v65);
      v70 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v79.f64[0]), xmmword_246097A80, v79, 1), 0, v80.f64[0]), v64, v80, 1);
      v71 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v79.f64[0]), 0, v79, 1), xmmword_246097A70, v80.f64[0]), v63, v80, 1);
      v72 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v81.f64[0]), xmmword_246097A80, v81, 1), 0, v82.f64[0]), v64, v82, 1);
      v73 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v81.f64[0]), 0, v81, 1), xmmword_246097A70, v82.f64[0]), v63, v82, 1);
      v74 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v83.f64[0]), xmmword_246097A80, v83, 1), 0, v84.f64[0]), v64, v84, 1);
      v75 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v83.f64[0]), 0, v83, 1), xmmword_246097A70, v84.f64[0]), v63, v84, 1);
      v76 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(xmmword_246097A70, v85.f64[0]), xmmword_246097A80, v85, 1), 0, v86.f64[0]), v64, v86, 1);
      v77 = vmlaq_laneq_f64(vmlaq_n_f64(vmlaq_laneq_f64(vmulq_n_f64(0, v85.f64[0]), 0, v85, 1), xmmword_246097A70, v86.f64[0]), v63, v86, 1);
      sub_245F97D8C(&v70);
    }

    CPGBoundingBoxRelease();
    v94 = v76;
    v95 = v77;
    v96 = v78;
    v90 = v72;
    v91 = v73;
    v92 = v74;
    v93 = v75;
    v88 = v70;
    v89 = v71;
  }

  else
  {
    v27 = sub_245FA31EC();
    (*(v7 + 16))(v9, v27, v6);
    v28 = sub_2460918D4();
    v29 = sub_246091FB4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Backend Manager: Failed to get the initial SfM map bounding box!", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    (*(v7 + 8))(v9, v6);
    sub_245F97B40(&v88);
  }

  v55 = v95;
  *(a3 + 96) = v94;
  *(a3 + 112) = v55;
  *(a3 + 128) = v96;
  v56 = v91;
  *(a3 + 32) = v90;
  *(a3 + 48) = v56;
  v57 = v93;
  *(a3 + 64) = v92;
  *(a3 + 80) = v57;
  result = v89;
  *a3 = v88;
  *(a3 + 16) = result;
  return result;
}

BOOL sub_245FC9F0C(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FCB7EC(a1, v4);
  v5 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  v6 = (*(*(v5 - 8) + 48))(v4, 3, v5);
  if (v6)
  {
    sub_245FCB850(v4);
  }

  else
  {
    v7 = sub_246091704();
    (*(*(v7 - 8) + 8))(v4, v7);
  }

  return v6 == 0;
}

uint64_t sub_245FCA01C(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v15 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245FCB7EC(a1, v4);
  v5 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v5 - 8) + 48))(v4, 3, v5))
  {
    sub_245FCB850(v4);
  }

  else
  {
    v6 = &v4[*(v5 + 64)];
    v7 = *(v6 + 7);
    v21 = *(v6 + 6);
    v22 = v7;
    v23 = v6[128];
    v8 = *(v6 + 3);
    v17 = *(v6 + 2);
    v18 = v8;
    v9 = *(v6 + 5);
    v19 = *(v6 + 4);
    v20 = v9;
    v10 = *(v6 + 1);
    v15 = *v6;
    v16 = v10;
    v11 = sub_245F97DBC(&v15);
    if (v11 != 1 && (sub_246021E38(v11, v15, v16, v17, v18) & 1) != 0)
    {
      v12 = sub_246091704();
      (*(*(v12 - 8) + 8))(v4, v12);
      return 1;
    }

    v14 = sub_246091704();
    (*(*(v14 - 8) + 8))(v4, v14);
  }

  return 0;
}

uint64_t sub_245FCA1BC(uint64_t a1)
{
  v2 = sub_2460918F4();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v83 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v83 - v21;
  strcpy(v85, "reports");
  v85[1] = 0xE700000000000000;
  sub_2460921F4();
  if (!*(a1 + 16) || (v23 = sub_245FCB8AC(v86), (v24 & 1) == 0))
  {
    sub_245FCB8F0(v86);
    goto LABEL_19;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v23, v87);
  sub_245FCB8F0(v86);
  sub_245F8E624(&qword_27EE3A478, &unk_246097AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v47 = sub_245FA31EC();
    v48 = v83;
    v49 = v84;
    (*(v83 + 16))(v4, v47, v84);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v86[0] = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_245F8D3C0(0x7374726F706572, 0xE700000000000000, v86);
      _os_log_impl(&dword_245F8A000, v50, v51, "Native dictionary has no %{public}s key.", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    (*(v48 + 8))(v4, v49);
    goto LABEL_22;
  }

  v25 = v85[0];
  strcpy(v85, "report_mvsprep");
  HIBYTE(v85[1]) = -18;
  sub_2460921F4();
  if (!*(v25 + 16) || (v26 = sub_245FCB8AC(v86), (v27 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    goto LABEL_25;
  }

  sub_245F8E5C8(*(v25 + 56) + 32 * v26, v87);
  sub_245FCB8F0(v86);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v55 = sub_245FA31EC();
    v56 = v83;
    v57 = v84;
    (*(v83 + 16))(v7, v55, v84);
    v58 = sub_2460918D4();
    v59 = sub_246091FB4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v86[0] = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_245F8D3C0(0x6D5F74726F706572, 0xEE00706572707376, v86);
      _os_log_impl(&dword_245F8A000, v58, v59, "Native dictionary has no %{public}s key.", v60, 0xCu);
      sub_245F8E6F4(v61);
      MEMORY[0x24C1989D0](v61, -1, -1);
      MEMORY[0x24C1989D0](v60, -1, -1);
    }

    (*(v56 + 8))(v7, v57);
    goto LABEL_22;
  }

  v28 = v85[0];
  strcpy(v85, "runtime_info");
  BYTE5(v85[1]) = 0;
  HIWORD(v85[1]) = -5120;
  sub_2460921F4();
  if (!*(v28 + 16) || (v29 = sub_245FCB8AC(v86), (v30 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    goto LABEL_29;
  }

  sub_245F8E5C8(*(v28 + 56) + 32 * v29, v87);
  sub_245FCB8F0(v86);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v62 = sub_245FA31EC();
    v63 = v83;
    v64 = v84;
    (*(v83 + 16))(v10, v62, v84);
    v65 = sub_2460918D4();
    v66 = sub_246091FB4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86[0] = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_245F8D3C0(0x5F656D69746E7572, 0xEC0000006F666E69, v86);
      _os_log_impl(&dword_245F8A000, v65, v66, "Native dictionary has no %{public}s key.", v67, 0xCu);
      sub_245F8E6F4(v68);
      MEMORY[0x24C1989D0](v68, -1, -1);
      MEMORY[0x24C1989D0](v67, -1, -1);
    }

    (*(v63 + 8))(v10, v64);
    goto LABEL_22;
  }

  v31 = v85[0];
  strcpy(v85, "error_codes");
  HIDWORD(v85[1]) = -352321536;
  sub_2460921F4();
  if (!*(v31 + 16) || (v32 = sub_245FCB8AC(v86), (v33 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    v69 = sub_245FA31EC();
    v70 = v83;
    v71 = v84;
    (*(v83 + 16))(v13, v69, v84);
    v72 = sub_2460918D4();
    v73 = sub_246091FB4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v86[0] = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v86);
      _os_log_impl(&dword_245F8A000, v72, v73, "Native dictionary has no %{public}s array...", v74, 0xCu);
      sub_245F8E6F4(v75);
      MEMORY[0x24C1989D0](v75, -1, -1);
      MEMORY[0x24C1989D0](v74, -1, -1);
    }

    (*(v70 + 8))(v13, v71);
    goto LABEL_22;
  }

  sub_245F8E5C8(*(v31 + 56) + 32 * v32, v87);
  sub_245FCB8F0(v86);

  sub_245F8E5C8(v87, v86);
  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  if (!swift_dynamicCast())
  {
    v76 = sub_245FA31EC();
    v77 = v83;
    v78 = v84;
    (*(v83 + 16))(v16, v76, v84);
    v79 = sub_2460918D4();
    v80 = sub_246091FB4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v81 = 136446210;
      *(v81 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v86);
      _os_log_impl(&dword_245F8A000, v79, v80, "Native dictionary can't coerce %{public}s array to [String]..", v81, 0xCu);
      sub_245F8E6F4(v82);
      MEMORY[0x24C1989D0](v82, -1, -1);
      MEMORY[0x24C1989D0](v81, -1, -1);
    }

    (*(v77 + 8))(v16, v78);
    sub_245F8E6F4(v87);
LABEL_22:
    v43 = 0;
    return v43 & 1;
  }

  v34 = v85[0];
  v35 = sub_245FA31EC();
  v36 = *(v83 + 16);
  v36(v22, v35, v84);
  v37 = sub_2460918D4();
  v38 = sub_246091FA4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245F8A000, v37, v38, "Checking error codes for automatic downsampling...", v39, 2u);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  v40 = v84;
  v41 = *(v83 + 8);
  v42 = v41(v22, v84);
  v86[0] = 0xD00000000000001ALL;
  v86[1] = 0x800000024609F5C0;
  MEMORY[0x28223BE20](v42);
  *(&v83 - 2) = v86;
  v43 = sub_245FCB944(sub_245FCBAB8, (&v83 - 4), v34);

  v36(v19, v35, v40);
  v44 = sub_2460918D4();
  v45 = sub_246091FA4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 67240192;
    *(v46 + 4) = v43 & 1;
    _os_log_impl(&dword_245F8A000, v44, v45, "... downsampled = %{BOOL,public}d...", v46, 8u);
    MEMORY[0x24C1989D0](v46, -1, -1);
  }

  v41(v19, v84);
  sub_245F8E6F4(v87);
  return v43 & 1;
}

uint64_t sub_245FCACB8(uint64_t a1)
{
  v2 = sub_2460918F4();
  v83 = *(v2 - 8);
  v84 = v2;
  MEMORY[0x28223BE20](v2);
  v4 = &v83 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v83 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v83 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v83 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v83 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v83 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v83 - v21;
  strcpy(v85, "reports");
  v85[1] = 0xE700000000000000;
  sub_2460921F4();
  if (!*(a1 + 16) || (v23 = sub_245FCB8AC(v86), (v24 & 1) == 0))
  {
    sub_245FCB8F0(v86);
    goto LABEL_19;
  }

  sub_245F8E5C8(*(a1 + 56) + 32 * v23, v87);
  sub_245FCB8F0(v86);
  sub_245F8E624(&qword_27EE3A478, &unk_246097AA0);
  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_19:
    v47 = sub_245FA31EC();
    v48 = v83;
    v49 = v84;
    (*(v83 + 16))(v4, v47, v84);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      v53 = swift_slowAlloc();
      v86[0] = v53;
      *v52 = 136446210;
      *(v52 + 4) = sub_245F8D3C0(0x7374726F706572, 0xE700000000000000, v86);
      _os_log_impl(&dword_245F8A000, v50, v51, "Native dictionary has no %{public}s key.", v52, 0xCu);
      sub_245F8E6F4(v53);
      MEMORY[0x24C1989D0](v53, -1, -1);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    (*(v48 + 8))(v4, v49);
    goto LABEL_22;
  }

  v25 = v85[0];
  strcpy(v85, "report_sfm");
  BYTE3(v85[1]) = 0;
  HIDWORD(v85[1]) = -369098752;
  sub_2460921F4();
  if (!*(v25 + 16) || (v26 = sub_245FCB8AC(v86), (v27 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    goto LABEL_25;
  }

  sub_245F8E5C8(*(v25 + 56) + 32 * v26, v87);
  sub_245FCB8F0(v86);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_25:
    v55 = sub_245FA31EC();
    v56 = v83;
    v57 = v84;
    (*(v83 + 16))(v7, v55, v84);
    v58 = sub_2460918D4();
    v59 = sub_246091FB4();
    if (os_log_type_enabled(v58, v59))
    {
      v60 = swift_slowAlloc();
      v61 = swift_slowAlloc();
      v86[0] = v61;
      *v60 = 136446210;
      *(v60 + 4) = sub_245F8D3C0(0x735F74726F706572, 0xEA00000000006D66, v86);
      _os_log_impl(&dword_245F8A000, v58, v59, "Native dictionary has no %{public}s key.", v60, 0xCu);
      sub_245F8E6F4(v61);
      MEMORY[0x24C1989D0](v61, -1, -1);
      MEMORY[0x24C1989D0](v60, -1, -1);
    }

    (*(v56 + 8))(v7, v57);
    goto LABEL_22;
  }

  v28 = v85[0];
  strcpy(v85, "runtime_info");
  BYTE5(v85[1]) = 0;
  HIWORD(v85[1]) = -5120;
  sub_2460921F4();
  if (!*(v28 + 16) || (v29 = sub_245FCB8AC(v86), (v30 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    goto LABEL_29;
  }

  sub_245F8E5C8(*(v28 + 56) + 32 * v29, v87);
  sub_245FCB8F0(v86);

  if ((swift_dynamicCast() & 1) == 0)
  {
LABEL_29:
    v62 = sub_245FA31EC();
    v63 = v83;
    v64 = v84;
    (*(v83 + 16))(v10, v62, v84);
    v65 = sub_2460918D4();
    v66 = sub_246091FB4();
    if (os_log_type_enabled(v65, v66))
    {
      v67 = swift_slowAlloc();
      v68 = swift_slowAlloc();
      v86[0] = v68;
      *v67 = 136446210;
      *(v67 + 4) = sub_245F8D3C0(0x5F656D69746E7572, 0xEC0000006F666E69, v86);
      _os_log_impl(&dword_245F8A000, v65, v66, "Native dictionary has no %{public}s key.", v67, 0xCu);
      sub_245F8E6F4(v68);
      MEMORY[0x24C1989D0](v68, -1, -1);
      MEMORY[0x24C1989D0](v67, -1, -1);
    }

    (*(v63 + 8))(v10, v64);
    goto LABEL_22;
  }

  v31 = v85[0];
  strcpy(v85, "error_codes");
  HIDWORD(v85[1]) = -352321536;
  sub_2460921F4();
  if (!*(v31 + 16) || (v32 = sub_245FCB8AC(v86), (v33 & 1) == 0))
  {

    sub_245FCB8F0(v86);
    v69 = sub_245FA31EC();
    v70 = v83;
    v71 = v84;
    (*(v83 + 16))(v13, v69, v84);
    v72 = sub_2460918D4();
    v73 = sub_246091FB4();
    if (os_log_type_enabled(v72, v73))
    {
      v74 = swift_slowAlloc();
      v75 = swift_slowAlloc();
      v86[0] = v75;
      *v74 = 136446210;
      *(v74 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v86);
      _os_log_impl(&dword_245F8A000, v72, v73, "Native dictionary has no %{public}s array...", v74, 0xCu);
      sub_245F8E6F4(v75);
      MEMORY[0x24C1989D0](v75, -1, -1);
      MEMORY[0x24C1989D0](v74, -1, -1);
    }

    (*(v70 + 8))(v13, v71);
    goto LABEL_22;
  }

  sub_245F8E5C8(*(v31 + 56) + 32 * v32, v87);
  sub_245FCB8F0(v86);

  sub_245F8E5C8(v87, v86);
  sub_245F8E624(&qword_27EE3A138, &qword_246097250);
  if (!swift_dynamicCast())
  {
    v76 = sub_245FA31EC();
    v77 = v83;
    v78 = v84;
    (*(v83 + 16))(v16, v76, v84);
    v79 = sub_2460918D4();
    v80 = sub_246091FB4();
    if (os_log_type_enabled(v79, v80))
    {
      v81 = swift_slowAlloc();
      v82 = swift_slowAlloc();
      v86[0] = v82;
      *v81 = 136446210;
      *(v81 + 4) = sub_245F8D3C0(0x6F635F726F727265, 0xEB00000000736564, v86);
      _os_log_impl(&dword_245F8A000, v79, v80, "Native dictionary can't coerce %{public}s array to [String]..", v81, 0xCu);
      sub_245F8E6F4(v82);
      MEMORY[0x24C1989D0](v82, -1, -1);
      MEMORY[0x24C1989D0](v81, -1, -1);
    }

    (*(v77 + 8))(v16, v78);
    sub_245F8E6F4(v87);
LABEL_22:
    v43 = 0;
    return v43 & 1;
  }

  v34 = v85[0];
  v35 = sub_245FA31EC();
  v36 = *(v83 + 16);
  v36(v22, v35, v84);
  v37 = sub_2460918D4();
  v38 = sub_246091FA4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = swift_slowAlloc();
    *v39 = 0;
    _os_log_impl(&dword_245F8A000, v37, v38, "Checking error codes for incomplete stitcking...", v39, 2u);
    MEMORY[0x24C1989D0](v39, -1, -1);
  }

  v40 = v84;
  v41 = *(v83 + 8);
  v42 = v41(v22, v84);
  v86[0] = 0xD00000000000002ALL;
  v86[1] = 0x800000024609F5E0;
  MEMORY[0x28223BE20](v42);
  *(&v83 - 2) = v86;
  v43 = sub_245FCB944(sub_245FCBBD0, (&v83 - 4), v34);

  v36(v19, v35, v40);
  v44 = sub_2460918D4();
  v45 = sub_246091FA4();
  if (os_log_type_enabled(v44, v45))
  {
    v46 = swift_slowAlloc();
    *v46 = 67240192;
    *(v46 + 4) = v43 & 1;
    _os_log_impl(&dword_245F8A000, v44, v45, "... has incomplete stitching = %{BOOL,public}d...", v46, 8u);
    MEMORY[0x24C1989D0](v46, -1, -1);
  }

  v41(v19, v84);
  sub_245F8E6F4(v87);
  return v43 & 1;
}

void type metadata accessor for CFURL()
{
  if (!qword_27EE3A480)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3A480);
    }
  }
}

uint64_t sub_245FCB7EC(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_245FCB850(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

unint64_t sub_245FCB8AC(uint64_t a1)
{
  v2 = sub_2460921D4();

  return sub_245FCB9F0(a1, v2);
}

uint64_t sub_245FCB944(uint64_t (*a1)(void *, __n128), uint64_t a2, uint64_t a3)
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

      v9 = (a1)(v12);

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

unint64_t sub_245FCB9F0(uint64_t a1, uint64_t a2)
{
  v3 = -1 << *(v2 + 32);
  v4 = a2 & ~v3;
  if ((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4))
  {
    v6 = ~v3;
    do
    {
      sub_245FCBB74(*(v2 + 48) + 40 * v4, v9);
      v7 = MEMORY[0x24C196B60](v9, a1);
      sub_245FCB8F0(v9);
      if (v7)
      {
        break;
      }

      v4 = (v4 + 1) & v6;
    }

    while (((*(v2 + 64 + ((v4 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v4) & 1) != 0);
  }

  return v4;
}

uint64_t sub_245FCBAD4(uint64_t *a1)
{
  v2 = *(v1 + 16);
  if (*a1 == *v2 && a1[1] == v2[1])
  {
    return 1;
  }

  else
  {
    return sub_2460923E4() & 1;
  }
}

__n128 initializeBufferWithCopyOfBuffer for MeshBounds(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u64[0] = a2[1].n128_u64[0];
  *a1 = result;
  return result;
}

__n128 sub_245FCBBEC@<Q0>(uint64_t a1@<X8>)
{
  swift_beginAccess();
  v3 = *(v1 + 32);
  *a1 = *(v1 + 16);
  *(a1 + 16) = v3;
  result = *(v1 + 48);
  *(a1 + 32) = result;
  *(a1 + 45) = *(v1 + 61);
  return result;
}

__n128 sub_245FCBC40(uint64_t a1)
{
  swift_beginAccess();
  v3 = *(a1 + 16);
  *(v1 + 16) = *a1;
  *(v1 + 32) = v3;
  result = *(a1 + 32);
  *(v1 + 48) = result;
  *(v1 + 61) = *(a1 + 45);
  return result;
}

uint64_t sub_245FCBC94(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v10 = swift_allocObject();
  sub_245FCBD0C(a1, a2, a3, a4, a5);
  return v10;
}

uint64_t sub_245FCBD0C(uint64_t a1, uint64_t a2, uint64_t a3, NSObject *a4, double a5)
{
  v6 = v5;
  v68 = a4;
  v66[0] = a1;
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v67 = v66 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v13);
  v15 = v66 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = v66 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = v66 - v20;
  sub_24608BC2C(v6 + 16);
  *(v6 + 112) = 0;
  *(v6 + 80) = 0u;
  *(v6 + 96) = 0u;
  *(v6 + 128) = 0;
  *(v6 + 136) = 0;
  *(v6 + 160) = 2;
  *(v6 + 168) = 0;
  *(v6 + 176) = 0x3FF0000000000000;
  v22 = COERCE_DOUBLE(sub_245F92DAC());
  if (v23)
  {
    v22 = 0.75;
  }

  *(v6 + 184) = v22;
  *(v6 + 192) = 258;
  *(v6 + 196) = 1058642330;
  *(v6 + 200) = sub_246020ED0(10.0);
  *(v6 + 204) = sub_246020ED0(5.0);
  *(v6 + 208) = 1036831949;
  v24 = sub_245F92DC8();
  v25 = *&v24;
  if ((v24 & 0x100000000) != 0)
  {
    v25 = 0.075;
  }

  *(v6 + 212) = v25;
  v26 = sub_245F92DE0();
  v27 = *&v26;
  if ((v26 & 0x100000000) != 0)
  {
    v27 = 7.5;
  }

  v28 = sub_246020ED0(v27);
  *(v6 + 216) = cosf(v28);
  *(v6 + 220) = 1;
  *(v6 + 224) = xmmword_246097C00;
  *(v6 + 240) = 0;
  *(v6 + 248) = xmmword_246097C10;
  sub_245FCC394(v69);
  v29 = v69[7];
  v30 = v69[8];
  *(v6 + 368) = v69[6];
  *(v6 + 384) = v29;
  v31 = v69[9];
  v32 = a2;
  *(v6 + 400) = v30;
  *(v6 + 416) = v31;
  v33 = v69[3];
  *(v6 + 304) = v69[2];
  *(v6 + 320) = v33;
  v34 = v69[5];
  *(v6 + 336) = v69[4];
  *(v6 + 352) = v34;
  v35 = v69[1];
  *(v6 + 272) = v69[0];
  *(v6 + 288) = v35;
  __asm { FMOV            V9.2S, #-1.0 }

  *(v6 + 432) = _D9;
  *(v6 + 440) = -1082130432;
  v41 = sub_245F924E0();
  v42 = *&v41;
  if ((v41 & 0x100000000) != 0)
  {
    v42 = 2.0;
  }

  *(v6 + 444) = v42;
  *(v6 + 448) = 10;
  *(v6 + 456) = 0x3FC000003E4CCCCDLL;
  *(v6 + 472) = _D9;
  *(v6 + 480) = 0;
  *(v6 + 488) = 0x41200000BF800000;
  sub_246086C34(v6 + 496);
  type metadata accessor for OCObjectCentricPoseGraph(0);
  v43 = sub_246086C74(v66[0]);
  v44 = v68;
  *(v6 + 72) = v43;
  *(v6 + 144) = v32;
  *(v6 + 120) = v44;
  v45 = *(v6 + 200);
  swift_beginAccess();
  *(v6 + 560) = v45;
  *(v6 + 564) = *(v6 + 204);
  *(v6 + 568) = 1036831949;
  *(v6 + 152) = a5;
  *(v6 + 464) = a3;
  v66[2] = a3;
  v66[1] = v32;
  if (a3)
  {

    v46 = v44;
    v47 = sub_245FA3394();
    v48 = *(v11 + 16);
    v48(v21, v47, v10);
    v49 = sub_2460918D4();
    v50 = sub_246091FC4();
    if (!os_log_type_enabled(v49, v50))
    {
      goto LABEL_16;
    }

    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_245F8A000, v49, v50, "Internal motion manager is available.", v51, 2u);
    goto LABEL_14;
  }

  v52 = v44;
  v53 = sub_245FA3394();
  v48 = *(v11 + 16);
  v48(v18, v53, v10);
  v49 = sub_2460918D4();
  v54 = sub_246091FC4();
  if (os_log_type_enabled(v49, v54))
  {
    v51 = swift_slowAlloc();
    *v51 = 0;
    _os_log_impl(&dword_245F8A000, v49, v54, "Internal motion manager is not available, gyro gates not applied.", v51, 2u);
    v21 = v18;
LABEL_14:
    MEMORY[0x24C1989D0](v51, -1, -1);
    goto LABEL_16;
  }

  v21 = v18;
LABEL_16:

  v55 = *(v11 + 8);
  v55(v21, v10);
  v56 = sub_245FA3394();
  v48(v15, v56, v10);
  v57 = sub_2460918D4();
  v58 = sub_246091FC4();
  if (os_log_type_enabled(v57, v58))
  {
    v59 = swift_slowAlloc();
    *v59 = 134349056;
    if (qword_27EE3C120 != -1)
    {
      v66[0] = v59;
      swift_once();
      v59 = v66[0];
    }

    *(v59 + 4) = *&dword_27EE3EFF8;
    v60 = v58;
    v61 = v59;
    _os_log_impl(&dword_245F8A000, v57, v60, "IMU max angular speed threshold = %{public}f", v59, 0xCu);
    MEMORY[0x24C1989D0](v61, -1, -1);
  }

  v55(v15, v10);
  v48(v67, v56, v10);
  v62 = sub_2460918D4();
  v63 = sub_246091FC4();
  if (os_log_type_enabled(v62, v63))
  {
    v64 = swift_slowAlloc();
    *v64 = 0;
    _os_log_impl(&dword_245F8A000, v62, v63, "Initialized capture manager", v64, 2u);
    MEMORY[0x24C1989D0](v64, -1, -1);
  }

  else
  {

    v62 = v68;
  }

  v55(v67, v10);
  return v6;
}

double sub_245FCC394(uint64_t a1)
{
  result = 0.0;
  *(a1 + 48) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 32) = 0u;
  *a1 = 0u;
  *(a1 + 80) = 0;
  *(a1 + 88) = 1;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  return result;
}

int *sub_245FCC3B8()
{
  if (qword_27EE3C120 != -1)
  {
    swift_once();
  }

  return &dword_27EE3EFF8;
}

uint64_t sub_245FCC408(const void *a1, __int128 *a2, char *a3, uint64_t *a4, void (*a5)(void), uint64_t a6, float a7)
{
  v8 = v7;
  v84 = a5;
  v85 = a6;
  v13 = *a2;
  v81 = a2[1];
  v82 = v13;
  v14 = a2[3];
  v79 = a2[2];
  v80 = v14;
  v15 = *(a2 + 64);
  v83 = sub_2460918F4();
  v86 = *(v83 - 8);
  MEMORY[0x28223BE20](v83);
  v17 = &v74 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v18);
  v20 = &v74 - v19;
  MEMORY[0x28223BE20](v21);
  v23 = &v74 - v22;
  memcpy(v92, a1, 0x191uLL);
  v24 = *a3;
  v25 = *a4;
  sub_246023B40(*(&v92[0] + 1));
  v27 = v26;
  v29 = v28;
  v30 = 1;
  v31 = swift_beginAccess();
  *(v8 + 16) = v27;
  *(v8 + 24) = v29;
  v32 = *(v8 + 464);
  if (v32)
  {
    v33 = (*(*v32 + 176))(v31);
    v30 = v34;
    v36 = v35;
    v37 = v35;
    if (v34)
    {
      v37 = -1.0;
    }

    v38 = *&v33;
  }

  else
  {
    v38 = 0.0;
    v37 = -1.0;
    v36 = 0.0;
  }

  *(v8 + 32) = v37;
  if ((*(v8 + 168) & 1) != 0 || (*(v8 + 169) & 1) != 0 || *(v8 + 128) || *(v8 + 136))
  {
    return 0;
  }

  v39 = *(**(v8 + 144) + 120);
  v78 = *(v8 + 144);
  v39();
  LOBYTE(v87[0]) = v24;
  if (sub_246023604(v87))
  {
    v76 = v92[11];
    v77 = v92[10];
    v74 = v92[13];
    v75 = v92[12];
    v40 = (a7 <= 0.6) & ~v15;
    v42 = v81;
    v41 = v82;
    v44 = v79;
    v43 = v80;
  }

  else
  {
    v40 = 0;
    v15 = 1;
    LOBYTE(v87[0]) = 1;
    v76 = v92[11];
    v77 = v92[10];
    v41 = 0uLL;
    v42 = 0uLL;
    v44 = 0uLL;
    v43 = 0uLL;
    v74 = v92[13];
    v75 = v92[12];
  }

  v90[0] = v41;
  v90[1] = v42;
  v90[2] = v44;
  v90[3] = v43;
  v91 = v15;
  swift_beginAccess();
  sub_24608A458(v40);
  swift_endAccess();
  v87[0] = *sub_246036028();
  v89 = v25;
  sub_245FCFD24();
  v45 = sub_246092184();
  swift_beginAccess();
  sub_24608A614(v45 & 1);
  swift_endAccess();
  v46 = *(v8 + 72);
  swift_beginAccess();
  v47 = *(*v46 + 184);

  v48 = (v15 & 1) != 0 ? sub_245FD0284 : sub_245FCFEAC;
  v49 = v47(v90, v48, v8, v8 + 496, v77, v76, v75, v74);
  swift_endAccess();

  swift_beginAccess();
  sub_24608A7D0(v49 & 1);
  v50 = swift_endAccess();
  v51 = v78;
  v52 = ((*(*v78 + 152))(v50) & 1) != 0 ? 0 : (*(*v51 + 168))() ^ 1;
  swift_beginAccess();
  sub_24608A988(v52 & 1);
  swift_endAccess();
  *(v8 + 472) = -1082130432;
  if (v30)
  {
    v53 = 1;
  }

  else
  {
    v54 = v36;
    *(v8 + 472) = v54;
    if (qword_27EE3C120 != -1)
    {
      swift_once();
    }

    v53 = *&dword_27EE3EFF8 > v54;
  }

  swift_beginAccess();
  sub_24608AB40(v53);
  v55 = swift_endAccess();
  v56 = *(*v8 + 448);
  v56(v87, v55);
  v57 = sub_24608BC00();
  swift_beginAccess();
  sub_24608A29C(v57 & 1);
  v58 = swift_endAccess();
  v56(v87, v58);
  if (v88 != 1)
  {
    return 0;
  }

  v59 = sub_245FA3394();
  v60 = *(v86 + 16);
  *&v82 = v60;
  if (v30)
  {
    v61 = v83;
    v60(v20, v59, v83);
    v62 = sub_2460918D4();
    v63 = sub_246091FA4();
    if (os_log_type_enabled(v62, v63))
    {
      v64 = swift_slowAlloc();
      *v64 = 0;
      _os_log_impl(&dword_245F8A000, v62, v63, "IMU ahead of video frame timestamp unknown.", v64, 2u);
      MEMORY[0x24C1989D0](v64, -1, -1);
    }

    v65 = *(v86 + 8);
    v65(v20, v61);
  }

  else
  {
    v61 = v83;
    v60(v23, v59, v83);

    sub_245FCFDFC(v92, v87);
    v67 = sub_2460918D4();
    v68 = sub_246091FA4();

    sub_245FCFE58(v92);
    if (os_log_type_enabled(v67, v68))
    {
      v69 = swift_slowAlloc();
      *v69 = 134349312;
      *(v69 + 4) = v38 - (*v92 + *(v8 + 152));
      *(v69 + 12) = 2050;
      *(v69 + 14) = v36;
      _os_log_impl(&dword_245F8A000, v67, v68, "IMU ahead of video frame timestamp by = %{public}f with speed = %{public}f", v69, 0x16u);
      MEMORY[0x24C1989D0](v69, -1, -1);
    }

    v65 = *(v86 + 8);
    v65(v23, v61);
    *(v8 + 480) = v38;
  }

  *(v8 + 224) = *&v92[0];
  v70 = sub_245FA3394();
  (v82)(v17, v70, v61);

  v71 = sub_2460918D4();
  v72 = sub_246091FC4();

  if (os_log_type_enabled(v71, v72))
  {
    v73 = swift_slowAlloc();
    *v73 = 134349056;
    *(v73 + 4) = *(v8 + 224);
    _os_log_impl(&dword_245F8A000, v71, v72, "Pre-check passed at timestamp = %{public}f", v73, 0xCu);
    MEMORY[0x24C1989D0](v73, -1, -1);
  }

  v65(v17, v61);
  sub_245FCDF98(1, 1, v84, v85);
  return 1;
}

uint64_t sub_245FCCC88(int a1, void (*a2)(void), uint64_t a3)
{
  v4 = v3;
  v36 = a1;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v33 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = &v33 - v12;
  v14 = sub_245FA3394();
  v34 = *(v8 + 16);
  v35 = v14;
  v34(v13);
  v15 = sub_2460918D4();
  v16 = sub_246091FC4();
  if (os_log_type_enabled(v15, v16))
  {
    v17 = swift_slowAlloc();
    v33 = v8;
    v18 = v7;
    v19 = a2;
    v20 = a3;
    v21 = v10;
    v22 = v17;
    *v17 = 0;
    _os_log_impl(&dword_245F8A000, v15, v16, "Trying manual capture...", v17, 2u);
    v23 = v22;
    v10 = v21;
    a3 = v20;
    a2 = v19;
    v7 = v18;
    v8 = v33;
    MEMORY[0x24C1989D0](v23, -1, -1);
  }

  v24 = *(v8 + 8);
  v24(v13, v7);
  if (*(v4 + 128))
  {

    sub_246091AD4();
  }

  *(v4 + 128) = 0;

  v25 = (*(**(v4 + 144) + 104))(1);
  v26 = (*(*v4 + 576))(v25);
  if (v26)
  {
    sub_245FCDF98(0, v36 & 1, a2, a3);
  }

  else
  {
    (v34)(v10, v35, v7);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = v10;
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v27, v28, "Ignoring manual capture, too frequent!", v30, 2u);
      MEMORY[0x24C1989D0](v30, -1, -1);

      v31 = v29;
    }

    else
    {

      v31 = v10;
    }

    v24(v31, v7);
  }

  return v26 & 1;
}

uint64_t sub_245FCCFB8(uint64_t a1, const void *a2, __n128 *a3)
{
  v54 = a1;
  v55 = a3;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v52 = &v52 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v52 - v8;
  MEMORY[0x28223BE20](v10);
  v12 = &v52 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v52 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v52 - v17;
  memcpy(v58, a2, 0x191uLL);
  v19 = v58[400];
  v20 = sub_245FA3394();
  v21 = *(v5 + 16);
  v56 = v21;
  if (v19)
  {
    v53 = v4;
    v21(v18, v20, v4);
    v22 = sub_2460918D4();
    v23 = sub_246091FC4();
    if (os_log_type_enabled(v22, v23))
    {
      v24 = swift_slowAlloc();
      *v24 = 0;
      _os_log_impl(&dword_245F8A000, v22, v23, "Trying to add automatic capture shot...", v24, 2u);
      MEMORY[0x24C1989D0](v24, -1, -1);
    }

    v25 = *(v5 + 8);
    v26 = v53;
    v25(v18, v53);
    v27 = v57;
    if ((sub_245FCF2B0(v58) & 1) == 0)
    {
      v47 = v52;
      v56(v52, v20, v26);
      v48 = sub_2460918D4();
      v49 = sub_246091FC4();
      if (os_log_type_enabled(v48, v49))
      {
        v50 = swift_slowAlloc();
        *v50 = 0;
        _os_log_impl(&dword_245F8A000, v48, v49, "Shot image sharpness is not good, discard this shot!", v50, 2u);
        v51 = v50;
        v27 = v57;
        MEMORY[0x24C1989D0](v51, -1, -1);
      }

      v25(v47, v26);
      sub_245FCD520(v58, v27);
      v46 = 0;
      return v46 & 1;
    }

    v56(v9, v20, v26);
    v28 = sub_2460918D4();
    v29 = sub_246091FC4();
    if (os_log_type_enabled(v28, v29))
    {
      v30 = swift_slowAlloc();
      *v30 = 0;
      _os_log_impl(&dword_245F8A000, v28, v29, "Passed post-capture check, saving image...", v30, 2u);
      v31 = v30;
      v27 = v57;
      MEMORY[0x24C1989D0](v31, -1, -1);
    }

    result = (v25)(v9, v53);
    v33 = *(v27 + 96);
    v34 = __OFADD__(v33, 1);
    v35 = v33 + 1;
    if (!v34)
    {
      *(v27 + 96) = v35;
      sub_245FCF964();
      if (*(v27 + 193) != 1)
      {
        goto LABEL_18;
      }

      goto LABEL_17;
    }
  }

  else
  {
    v21(v15, v20, v4);
    v36 = sub_2460918D4();
    v37 = sub_246091FC4();
    if (os_log_type_enabled(v36, v37))
    {
      v38 = swift_slowAlloc();
      *v38 = 0;
      _os_log_impl(&dword_245F8A000, v36, v37, "Trying to add manual capture shot...", v38, 2u);
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    v39 = *(v5 + 8);
    result = v39(v15, v4);
    v27 = v57;
    v40 = *(v57 + 104);
    v34 = __OFADD__(v40, 1);
    v41 = v40 + 1;
    if (!v34)
    {
      *(v57 + 104) = v41;
      sub_245FCF964();
      if (*(v27 + 193) != 1)
      {
LABEL_18:
        sub_245FCD520(v58, v27);
        v46 = 1;
        return v46 & 1;
      }

      v56(v12, v20, v4);
      v42 = sub_2460918D4();
      v43 = sub_246091FC4();
      if (os_log_type_enabled(v42, v43))
      {
        v44 = swift_slowAlloc();
        *v44 = 0;
        _os_log_impl(&dword_245F8A000, v42, v43, "Adding the manual shot to pose graph. It must be the first hidden shot at start capturing.", v44, 2u);
        v45 = v44;
        v27 = v57;
        MEMORY[0x24C1989D0](v45, -1, -1);
      }

      v39(v12, v4);
LABEL_17:
      v46 = sub_245FCF550(v54, v58, v55);
      sub_245FCD520(v58, v27);
      return v46 & 1;
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_245FCD520(uint64_t a1, uint64_t a2)
{
  sub_246023D7C(*(a1 + 8));
  v5 = v4;
  v7 = v6;
  swift_beginAccess();
  *(a2 + 36) = v5;
  *(a2 + 40) = v7;
  v8 = *(a2 + 488);
  *(a2 + 48) = *(a2 + 476);
  *(a2 + 52) = v8;
  v9 = *(a1 + 400);
  if (v9 == 1)
  {
    if (*(a2 + 128))
    {

      sub_246091AD4();
    }

    *(a2 + 128) = 0;
  }

  else
  {
    if (*(a2 + 136))
    {

      sub_246091AD4();
    }

    *(a2 + 136) = 0;
  }

  result = (*(**(a2 + 144) + 104))(1);
  *(a2 + 192) = v9;
  return result;
}

uint64_t sub_245FCD634(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v7 = *(**(v5 + 72) + 160);

  LOBYTE(a1) = v7(a1, a2, a3, a4, a5);

  return a1 & 1;
}

void sub_245FCD6B8(uint64_t a1)
{
  v2 = v1;
  v4 = *(**(v2 + 72) + 152);

  LOBYTE(a1) = v4(a1);

  if (a1)
  {
    swift_beginAccess();
    v5 = *(v2 + 112);
    v6 = __OFADD__(v5, 1);
    v7 = v5 + 1;
    if (v6)
    {
      __break(1u);
    }

    else
    {
      *(v2 + 112) = v7;
    }
  }
}

uint64_t sub_245FCD768()
{
  v1 = *(**(v0 + 72) + 168);

  v1(v2);
}

uint64_t sub_245FCD7D0()
{
  v1 = *(**(v0 + 72) + 176);

  v1(v2);
}

double sub_245FCD84C(char a1)
{
  result = 1.0;
  if (a1)
  {
    return *(v1 + 184);
  }

  return result;
}

uint64_t sub_245FCD85C()
{
  v1 = *(v0 + 464);
  if (v1)
  {
    return (*(*v1 + 184))();
  }

  else
  {
    return MEMORY[0x277D84F90];
  }
}

uint64_t sub_245FCD8D0()
{
  v1 = sub_246091AA4();
  v37 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v34 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v4);
  v36 = &v34 - v5;
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v34 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v10);
  v12 = &v34 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v34 - v14;
  v16 = sub_2460919F4();
  MEMORY[0x28223BE20](v16);
  v38 = v0;
  v17 = *(v0 + 192);
  if (v17 != 2)
  {
    v35 = v1;
    if (v17)
    {
      *(v38 + 168) = 1;
      v23 = swift_allocObject();
      swift_weakInit();
      v44 = sub_245FD01B8;
      v45 = v23;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_245F913A4;
      v43 = &unk_2858DEB38;
      v34 = _Block_copy(&aBlock);
      v39 = MEMORY[0x277D84F90];
      sub_245FD00FC();

      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245FD0154();
      sub_2460921A4();
      sub_246091AE4();
      swift_allocObject();
      sub_246091AC4();

      v24 = sub_245FA3394();
      (*(v7 + 16))(v15, v24, v6);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Set cooldown time for automatic shot", v27, 2u);
        v12 = v15;
LABEL_10:
        v31 = v35;
        MEMORY[0x24C1989D0](v27, -1, -1);
LABEL_13:

        (*(v7 + 8))(v12, v6);
        sub_246091A84();
        v32 = v36;
        sub_246091B14();
        v33 = *(v37 + 8);
        v33(v3, v31);
        sub_246092014();

        return (v33)(v32, v31);
      }

      v12 = v15;
    }

    else
    {
      *(v38 + 169) = 1;
      v28 = swift_allocObject();
      swift_weakInit();
      v44 = sub_245FD00A0;
      v45 = v28;
      aBlock = MEMORY[0x277D85DD0];
      v41 = 1107296256;
      v42 = sub_245F913A4;
      v43 = &unk_2858DEB10;
      v34 = _Block_copy(&aBlock);
      v39 = MEMORY[0x277D84F90];
      sub_245FD00FC();

      sub_245F8E624(&qword_27EE39F38, &qword_246096680);
      sub_245FD0154();
      sub_2460921A4();
      sub_246091AE4();
      swift_allocObject();
      sub_246091AC4();

      v29 = sub_245FA3394();
      (*(v7 + 16))(v12, v29, v6);
      v25 = sub_2460918D4();
      v30 = sub_246091FB4();
      if (os_log_type_enabled(v25, v30))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245F8A000, v25, v30, "Set cooldown time for manual shot", v27, 2u);
        goto LABEL_10;
      }
    }

    v31 = v35;
    goto LABEL_13;
  }

  v18 = sub_245FA3394();
  (*(v7 + 16))(v9, v18, v6);
  v19 = sub_2460918D4();
  v20 = sub_246091FB4();
  if (os_log_type_enabled(v19, v20))
  {
    v21 = swift_slowAlloc();
    *v21 = 0;
    _os_log_impl(&dword_245F8A000, v19, v20, "Failed to set cooldown time because last shot couldn't be added!", v21, 2u);
    MEMORY[0x24C1989D0](v21, -1, -1);
  }

  return (*(v7 + 8))(v9, v6);
}

uint64_t sub_245FCDF98(int a1, int a2, void (*a3)(void), uint64_t a4)
{
  v30[1] = a4;
  v31 = a3;
  v35 = a2;
  v34 = sub_2460919E4();
  v32 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v7 = (v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0));
  v33 = sub_246091AA4();
  v8 = *(v33 - 8);
  MEMORY[0x28223BE20](v33);
  v10 = v30 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v30 - v12;
  v14 = sub_2460919F4();
  MEMORY[0x28223BE20](v14);
  v15 = swift_allocObject();
  swift_weakInit();
  v36 = a1;
  if (a1)
  {
    v42 = sub_245FD0264;
    v43 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_245F913A4;
    v41 = &unk_2858DEB88;
    v30[0] = _Block_copy(&aBlock);
    v37 = MEMORY[0x277D84F90];
    sub_245FD00FC();

    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FD0154();
    sub_2460921A4();
    sub_246091AE4();
    swift_allocObject();
    v16 = sub_246091AC4();

    *(v4 + 128) = v16;
  }

  else
  {
    v42 = sub_245FD025C;
    v43 = v15;
    aBlock = MEMORY[0x277D85DD0];
    v39 = 1107296256;
    v40 = sub_245F913A4;
    v41 = &unk_2858DEB60;
    v30[0] = _Block_copy(&aBlock);
    v37 = MEMORY[0x277D84F90];
    sub_245FD00FC();

    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FD0154();
    sub_2460921A4();
    sub_246091AE4();
    swift_allocObject();
    v17 = sub_246091AC4();

    *(v4 + 136) = v17;
  }

  swift_retain_n();

  sub_246091A84();
  *v7 = 2;
  v18 = v32;
  v19 = v34;
  (*(v32 + 104))(v7, *MEMORY[0x277D85188], v34);
  MEMORY[0x24C196480](v10, v7);
  (*(v18 + 8))(v7, v19);
  v20 = *(v8 + 8);
  v21 = v10;
  v22 = v33;
  v20(v21, v33);
  sub_246092014();

  result = (v20)(v13, v22);
  *(v4 + 436) = *(v4 + 432);
  v24 = v36;
  *(v4 + 193) = v35 & 1;
  if (v24)
  {
    v25 = *(v4 + 80);
    v26 = __OFADD__(v25, 1);
    v27 = v25 + 1;
    if (!v26)
    {
      *(v4 + 80) = v27;
LABEL_9:
      v31(v24 & 1);
      (*(**(v4 + 144) + 104))(0);
    }

    __break(1u);
  }

  else
  {
    v28 = *(v4 + 88);
    v26 = __OFADD__(v28, 1);
    v29 = v28 + 1;
    if (!v26)
    {
      *(v4 + 88) = v29;
      goto LABEL_9;
    }
  }

  __break(1u);
  return result;
}

uint64_t sub_245FCE4BC(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_245FA3394();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Created cancel request for automatic capture", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    if (*(v6 + 128))
    {

      sub_246091AD4();
    }

    *(v6 + 128) = 0;

    (*(**(v6 + 144) + 104))(1);
  }

  return result;
}

uint64_t sub_245FCE6A4(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v11 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    v6 = result;
    v7 = sub_245FA3394();
    (*(v2 + 16))(v4, v7, v1);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Created cancel request for manual capture", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
    if (*(v6 + 136))
    {

      sub_246091AD4();
    }

    *(v6 + 136) = 0;

    (*(**(v6 + 144) + 104))(1);
  }

  return result;
}

BOOL sub_245FCE88C(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v23 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v23 - v9;
  if (CVBufferCopyAttachment(*(a1 + 8), *MEMORY[0x277CE5180], 0))
  {
    objc_opt_self();
    v11 = swift_dynamicCastObjCClass();
    if (v11)
    {
      [v11 floatValue];
      *(v2 + 488) = v12;
      v13 = sub_245FA3394();
      (*(v5 + 16))(v10, v13, v4);

      v14 = sub_2460918D4();
      v15 = sub_246091FC4();

      if (os_log_type_enabled(v14, v15))
      {
        v16 = swift_slowAlloc();
        *v16 = 134349056;
        *(v16 + 4) = *(v2 + 488);
        _os_log_impl(&dword_245F8A000, v14, v15, "postcheck: Focus pixel blur score = %{public}f", v16, 0xCu);
        MEMORY[0x24C1989D0](v16, -1, -1);
      }

      swift_unknownObjectRelease();
      (*(v5 + 8))(v10, v4);
      v17 = *(v2 + 488);
      return v17 >= 0.0 && v17 < 10.0;
    }

    swift_unknownObjectRelease();
  }

  *(v2 + 488) = 0;
  v19 = sub_245FA3394();
  (*(v5 + 16))(v7, v19, v4);
  v20 = sub_2460918D4();
  v21 = sub_246091FB4();
  if (os_log_type_enabled(v20, v21))
  {
    v22 = swift_slowAlloc();
    *v22 = 0;
    _os_log_impl(&dword_245F8A000, v20, v21, "postcheck: missing blur score in still image data, not using focus pixel blur score in post capture check.", v22, 2u);
    MEMORY[0x24C1989D0](v22, -1, -1);
  }

  (*(v5 + 8))(v7, v4);
  return 1;
}

BOOL sub_245FCEB64(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v73 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  MEMORY[0x28223BE20](v9);
  v11 = &v73 - v10;
  MEMORY[0x28223BE20](v12);
  MEMORY[0x28223BE20](v13);
  v15 = &v73 - v14;
  MEMORY[0x28223BE20](v16);
  v20 = &v73 - v19;
  v21 = *a1;
  v22 = *(a1 + 8);
  *(v2 + 476) = -1082130432;
  v23 = *(v2 + 464);
  if (!v23)
  {
    return 1;
  }

  v76 = v18;
  v78 = v17;

  sub_246023D7C(v22);
  v25 = v24;
  v26 = v21 - v24;
  v27 = v21 + 0.015;
  v28 = *(v2 + 224);
  if (v28 < v21 + 0.015 && v26 <= v28)
  {
    v30 = sub_245FA3394();
    (*(v5 + 16))(v20, v30, v4);
    v31 = sub_2460918D4();
    v32 = sub_246091FA4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v79 = v11;
      v34 = v33;
      *v33 = 0;
      _os_log_impl(&dword_245F8A000, v31, v32, "postcheck: IMU shot frame hit type 1 (triggering video frame time ~= shot frame time)!", v33, 2u);
      v35 = v34;
      v11 = v79;
      MEMORY[0x24C1989D0](v35, -1, -1);
    }

    (*(v5 + 8))(v20, v4);
  }

  v36 = *(v2 + 152);
  v37 = v26 + v36;
  v38 = v27 + v36;
  v80 = 0;
  v39 = (*(*v23 + 168))(&v80, v37, v27 + v36);
  if (v40)
  {
    v41 = sub_245FA3394();
    (*(v5 + 16))(v7, v41, v4);
    v42 = sub_2460918D4();
    v43 = sub_246091FB4();
    if (os_log_type_enabled(v42, v43))
    {
      v44 = swift_slowAlloc();
      *v44 = 134349312;
      *(v44 + 4) = v37;
      *(v44 + 12) = 2050;
      *(v44 + 14) = v38;
      _os_log_impl(&dword_245F8A000, v42, v43, "postcheck: No IMU data available from %{public}f to %{public}f", v44, 0x16u);
      MEMORY[0x24C1989D0](v44, -1, -1);
    }

    (*(v5 + 8))(v7, v4);
    return 0;
  }

  v46 = *&v39;
  v79 = v11;
  v47 = sub_245FA3394();
  v77 = *(v5 + 16);
  v77(v15, v47, v4);

  v48 = sub_2460918D4();
  v49 = sub_246091FA4();

  v50 = os_log_type_enabled(v48, v49);
  v75 = v47;
  if (v50)
  {
    v51 = swift_slowAlloc();
    *v51 = 134349312;
    *(v51 + 4) = *(v2 + 480) + (v37 + v38) * -0.5;
    *(v51 + 12) = 2050;
    *(v51 + 14) = v46;
    _os_log_impl(&dword_245F8A000, v48, v49, "postcheck: IMU ahead of shot frame timestamp by %{public}f with speed = %{public}f", v51, 0x16u);
    v52 = v51;
    v47 = v75;
    MEMORY[0x24C1989D0](v52, -1, -1);
  }

  v53 = v46;

  v54 = *(v5 + 8);
  v54(v15, v4);
  v55 = *(v2 + 480);
  if (v37 <= v55 && v55 < v38)
  {
    v74 = v54;
    v63 = v76;
    v77(v76, v47, v4);
    v60 = sub_2460918D4();
    v64 = sub_246091FA4();
    v65 = os_log_type_enabled(v60, v64);
    v59 = v78;
    if (!v65)
    {
      v79 = v63;
      goto LABEL_31;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_245F8A000, v60, v64, "postcheck: IMU shot frame hit type 2 (current time ~= shot frame time)!", v62, 2u);
    v79 = v63;
    goto LABEL_29;
  }

  v57 = v55 + 0.05;
  v58 = v37 <= v57 && v57 < v38;
  v59 = v78;
  if (v58)
  {
    v74 = v54;
    v77(v79, v47, v4);
    v60 = sub_2460918D4();
    v61 = sub_246091FA4();
    if (!os_log_type_enabled(v60, v61))
    {
LABEL_31:
      v47 = v75;

      v54 = v74;
      v74(v79, v4);
      goto LABEL_32;
    }

    v62 = swift_slowAlloc();
    *v62 = 0;
    _os_log_impl(&dword_245F8A000, v60, v61, "postcheck: IMU shot frame hit type 3 (predicted time ~= shot frame time)!", v62, 2u);
LABEL_29:
    MEMORY[0x24C1989D0](v62, -1, -1);
    goto LABEL_31;
  }

LABEL_32:
  v66 = v53;
  *(v2 + 476) = v66;
  v77(v59, v47, v4);
  v67 = v80;

  v68 = sub_2460918D4();
  v69 = sub_246091FA4();

  if (os_log_type_enabled(v68, v69))
  {
    v70 = swift_slowAlloc();
    *v70 = 134349568;
    *(v70 + 4) = *(v2 + 476);
    *(v70 + 12) = 2050;
    *(v70 + 14) = v25;
    *(v70 + 22) = 2050;
    *(v70 + 24) = v67;
    _os_log_impl(&dword_245F8A000, v68, v69, "postcheck: Max IMU angular speed = %{public}f, exposureTime = %{public}f, computed from %{public}ld samples.", v70, 0x20u);
    MEMORY[0x24C1989D0](v70, -1, -1);
  }

  v54(v59, v4);
  v71 = *(v2 + 476);
  if (v71 < 0.0)
  {

    return 0;
  }

  if (qword_27EE3C120 != -1)
  {
    swift_once();
  }

  v72 = *&dword_27EE3EFF8;

  return v71 < v72;
}

uint64_t sub_245FCF2B0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v20 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FCEB64(a1);
  swift_beginAccess();
  *(v2 + 67) = v8;
  v9 = sub_245FCE88C(a1);
  swift_beginAccess();
  sub_24608AEA4(v9);
  v10 = swift_endAccess();
  v11 = *(*v2 + 448);
  v11(v20, v10);
  v12 = j___s6CoreOC14CaptureFactorsV023focusPixelBlurScorePostC11CheckPassedSbvg();
  swift_beginAccess();
  sub_24608ACF4(v12 & 1);
  v13 = swift_endAccess();
  v14 = (v11)(v20, v13);
  if (v21 == 1)
  {
    v15 = sub_245FA3394();
    (*(v5 + 16))(v7, v15, v4);

    v16 = sub_2460918D4();
    v17 = sub_246091FC4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 134349056;
      *(v18 + 4) = *(v2 + 488);
      _os_log_impl(&dword_245F8A000, v16, v17, "postCaptureCheck: focus pixel blur score = %{public}f", v18, 0xCu);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    v14 = (*(v5 + 8))(v7, v4);
  }

  v11(v20, v14);
  return v21;
}

uint64_t sub_245FCF550(uint64_t a1, uint64_t a2, __n128 *a3)
{
  v7 = type metadata accessor for VIOPoseNode(0);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v29 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246091834();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v29 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = type metadata accessor for OCObjectCentricPoseNode(0);
  MEMORY[0x28223BE20](v14 - 8);
  v16 = &v29 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = *a2;
  v18 = *(a2 + 128);
  v37[0] = *(a2 + 112);
  v37[1] = v18;
  v19 = *(a2 + 160);
  v37[2] = *(a2 + 144);
  v20 = *(a2 + 192);
  v34 = *(a2 + 176);
  v35 = v19;
  v36 = v20;
  v33 = *(a2 + 208);
  if (a3[4].n128_u8[0])
  {
    (*(v11 + 16))(v13, a1, v10);
    sub_24608686C(v13, v37, v9, v17, v35, v34, v36, v33);
    v21 = *(**(v3 + 72) + 144);

    v22 = v21(v9);

    v23 = type metadata accessor for VIOPoseNode;
    v24 = v9;
  }

  else
  {
    v25 = a3[3];
    v31 = a3[2];
    v32 = v25;
    v26 = *a3;
    v30 = a3[1];
    v29 = v26;
    (*(v11 + 16))(v13, a1, v10);
    sub_2460866E4(v13, v37, v16, v17, v29, v30, v31, v32, v35, v34, v36, v33);
    v27 = *(**(v3 + 72) + 136);

    v22 = v27(v16);

    v23 = type metadata accessor for OCObjectCentricPoseNode;
    v24 = v16;
  }

  sub_245FD01FC(v24, v23);
  return v22 & 1;
}

BOOL sub_245FCF844(uint64_t a1, double a2, double a3, double a4, float32x4_t a5, double a6, double a7, double a8, float32x4_t a9)
{
  v11 = vmulq_f32(a5, a5);
  v12 = vaddv_f32(*v11.f32);
  *v11.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12));
  *v11.f32 = vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32)));
  v13 = vmulq_n_f32(a5, vmul_f32(*v11.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v11.f32[2] + v12), vmul_f32(*v11.f32, *v11.f32))).f32[0]);
  v14 = vmulq_f32(a9, a9);
  *&v15 = v14.f32[2] + vaddv_f32(*v14.f32);
  *v14.f32 = vrsqrte_f32(v15);
  *v14.f32 = vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32)));
  v16 = vmulq_f32(v13, vmulq_n_f32(a9, vmul_f32(*v14.f32, vrsqrts_f32(v15, vmul_f32(*v14.f32, *v14.f32))).f32[0]));
  v17 = sub_246021418(v16.f32[2] + vaddv_f32(*v16.f32), -1.0, 1.0);
  v18 = acosf(v17);
  result = 0;
  v20 = vsubq_f32(a5, a9);
  v21 = vmulq_f32(v20, v20);
  v22 = sqrtf(vaddv_f32(vadd_f32(*v21.i8, *&vextq_s8(v21, v21, 8uLL))));
  *a1 = v18;
  *(a1 + 4) = 0;
  *(a1 + 8) = v22;
  *(a1 + 12) = 0;
  if (*(v9 + 200) >= v18)
  {
    return v22 <= 0.1 || *(v9 + 204) >= v18;
  }

  return result;
}

void sub_245FCF964()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v20 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(v0 + 80);
  v5 = *(v0 + 88);
  v7 = v5 + v6;
  if (__OFADD__(v5, v6))
  {
    __break(1u);
    goto LABEL_8;
  }

  v9 = *(v0 + 96);
  v8 = *(v0 + 104);
  v10 = __OFADD__(v8, v9);
  v11 = v8 + v9;
  if (v10)
  {
LABEL_8:
    __break(1u);
    return;
  }

  v12 = v11 / v7;
  swift_beginAccess();
  *(v0 + 56) = v12;
  v13 = sub_245FA3394();
  (*(v2 + 16))(v4, v13, v1);

  v14 = sub_2460918D4();
  v15 = sub_246091FC4();
  if (os_log_type_enabled(v14, v15))
  {
    v16 = swift_slowAlloc();
    v17 = *(v0 + 88);
    *(v16 + 4) = *(v0 + 80);
    v18 = *(v0 + 104);
    *(v16 + 14) = *(v0 + 96);
    *v16 = 134350336;
    *(v16 + 24) = v17;
    *(v16 + 12) = 2050;
    *(v16 + 22) = 2050;
    *(v16 + 32) = 2050;
    *(v16 + 34) = v18;

    *(v16 + 42) = 2050;
    (*(*v0 + 448))(v20, v19);
    *(v16 + 44) = v21;
    *(v16 + 52) = 2050;
    *(v16 + 54) = v7;
    _os_log_impl(&dword_245F8A000, v14, v15, "CaptureStats: Automatic shots attempted = %{public}ld and captured = %{public}ld | Manual shots attempted = %{public}ld and captured = %{public}ld | Shot acceptance rate = %{public}f with attempt count = %{public}ld", v16, 0x3Eu);
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  else
  {
  }

  (*(v2 + 8))(v4, v1);
}

unint64_t sub_245FCFC38()
{
  result = sub_245F924F8();
  if ((result & 0x100000000) != 0)
  {
    v1 = 1051931443;
  }

  else
  {
    v1 = result;
  }

  dword_27EE3EFF8 = v1;
  return result;
}

uint64_t sub_245FCFC68()
{

  v1 = *(v0 + 384);
  v7[6] = *(v0 + 368);
  v7[7] = v1;
  v2 = *(v0 + 416);
  v7[8] = *(v0 + 400);
  v7[9] = v2;
  v3 = *(v0 + 320);
  v7[2] = *(v0 + 304);
  v7[3] = v3;
  v4 = *(v0 + 352);
  v7[4] = *(v0 + 336);
  v7[5] = v4;
  v5 = *(v0 + 288);
  v7[0] = *(v0 + 272);
  v7[1] = v5;
  sub_245FCFEB0(v7);

  return v0;
}

uint64_t sub_245FCFCF0()
{
  sub_245FCFC68();

  return swift_deallocClassInstance();
}

unint64_t sub_245FCFD24()
{
  result = qword_27EE3AB40;
  if (!qword_27EE3AB40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AB40);
  }

  return result;
}

BOOL sub_245FCFD78(uint64_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6, float32x4_t a7, float32x4_t a8, float32x4_t a9)
{
  result = 0;
  v12 = vmlaq_f32(vmulq_f32(a2, 0), 0, a3);
  __asm { FMOV            V1.4S, #-1.0 }

  v18 = vmulq_f32(vmlaq_f32(vmlaq_f32(v12, _Q1, a4), 0, a5), vmlaq_f32(vmlaq_f32(vmlaq_f32(vmulq_f32(a6, 0), 0, a7), _Q1, a8), 0, a9));
  _Q1.f32[0] = vaddv_f32(vadd_f32(*v18.i8, *&vextq_s8(v18, v18, 8uLL)));
  v19 = vsubq_f32(a5, a9);
  v20 = vmulq_f32(v19, v19);
  v21 = sqrtf(vaddv_f32(vadd_f32(*v20.i8, *&vextq_s8(v20, v20, 8uLL))));
  *(a1 + 16) = _Q1.i32[0];
  *(a1 + 20) = 0;
  *(a1 + 24) = v21;
  *(a1 + 28) = 0;
  if (_Q1.f32[0] >= *(v9 + 216))
  {
    return *(v9 + 212) >= v21;
  }

  return result;
}

uint64_t sub_245FCFEB0(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3A488, &qword_246097C50);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_245FCFF3C(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 sub_245FCFF54(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 16);
  *a1 = *a2;
  *(a1 + 16) = v2;
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  v5 = *(a2 + 80);
  *(a1 + 64) = *(a2 + 64);
  *(a1 + 80) = v5;
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  result = *(a2 + 96);
  v7 = *(a2 + 112);
  v8 = *(a2 + 144);
  *(a1 + 128) = *(a2 + 128);
  *(a1 + 144) = v8;
  *(a1 + 96) = result;
  *(a1 + 112) = v7;
  return result;
}

uint64_t sub_245FCFF80(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFF && *(a1 + 160))
  {
    return (*a1 + 0x7FFFFFFF);
  }

  v3 = *(a1 + 88);
  if (v3 >= 0xFFFFFFFF)
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

uint64_t sub_245FCFFDC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFE)
  {
    *(result + 152) = 0;
    *(result + 136) = 0u;
    *(result + 120) = 0u;
    *(result + 104) = 0u;
    *(result + 88) = 0u;
    *(result + 72) = 0u;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 0x7FFFFFFF;
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFF)
    {
      *(result + 160) = 0;
    }

    if (a2)
    {
      *(result + 88) = a2;
    }
  }

  return result;
}

uint64_t sub_245FD0068()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_245FD00A0()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 169) = 0;
  }

  return result;
}

uint64_t sub_245FD00E4(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;
}

unint64_t sub_245FD00FC()
{
  result = qword_27EE3A380;
  if (!qword_27EE3A380)
  {
    sub_2460919F4();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A380);
  }

  return result;
}

unint64_t sub_245FD0154()
{
  result = qword_27EE3A390;
  if (!qword_27EE3A390)
  {
    sub_245F9135C(&qword_27EE39F38, &qword_246096680);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A390);
  }

  return result;
}

uint64_t sub_245FD01B8()
{
  swift_beginAccess();
  result = swift_weakLoadStrong();
  if (result)
  {
    *(result + 168) = 0;
  }

  return result;
}

uint64_t sub_245FD01FC(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_245FD0288()
{
  result = sub_245FFBCC0(&unk_2858DEBB0);
  qword_27EE3C138 = result;
  return result;
}

unint64_t sub_245FD02B0()
{
  result = sub_245FFBDAC(&unk_2858DECC0, &qword_27EE3A608, &qword_246098468);
  qword_27EE3C148 = result;
  return result;
}

uint64_t sub_245FD02E8(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5)
{
  LODWORD(v76) = a5;
  v75 = a4;
  v6 = a2;
  v8 = HIDWORD(a2);
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  MEMORY[0x28223BE20](v9 - 8);
  v11 = &v68.i8[-((v10 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v12 = 0xE000000000000000;
  v97 = 0;
  v98 = 0xE000000000000000;
  sub_245FFE868(a1, v11, type metadata accessor for PhotogrammetrySession.Request);
  v13 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
  if ((*(*(v13 - 8) + 48))(v11, 3, v13))
  {
    v14 = 0;
    LODWORD(v74) = 1;
    goto LABEL_21;
  }

  v15 = a3;
  v16 = v11[*(v13 + 48)];
  v17 = &v11[*(v13 + 64)];
  v18 = *(v17 + 7);
  v94 = *(v17 + 6);
  v95 = v18;
  v96 = v17[128];
  v19 = *(v17 + 3);
  v90 = *(v17 + 2);
  v91 = v19;
  v20 = *(v17 + 5);
  v92 = *(v17 + 4);
  v93 = v20;
  v21 = *(v17 + 1);
  v88 = *v17;
  v89 = v21;
  MEMORY[0x24C196640](0x6C206C6961746564, 0xEE00203A6C657665);
  if (v16 <= 2)
  {
    if (v16)
    {
      if (v16 == 1)
      {
        v22 = 0x6D756964656D2ELL;
        v23 = 0xE700000000000000;
      }

      else
      {
        v22 = 0x6C6C75662ELL;
        v23 = 0xE500000000000000;
      }

      goto LABEL_16;
    }

    v22 = 0x646563756465722ELL;
LABEL_13:
    v23 = 0xE800000000000000;
    goto LABEL_16;
  }

  if (v16 <= 4)
  {
    if (v16 != 3)
    {
      v22 = 2002874926;
      v23 = 0xE400000000000000;
      goto LABEL_16;
    }

    v22 = 0x776569766572702ELL;
    goto LABEL_13;
  }

  if (v16 != 5)
  {
    MEMORY[0x24C196640](0x6D6F747375632ELL, 0xE700000000000000);
    v24 = 0;
    goto LABEL_17;
  }

  v22 = 0x656C69626F6D2ELL;
  v23 = 0xE700000000000000;
LABEL_16:
  MEMORY[0x24C196640](v22, v23);
  v24 = 1;
LABEL_17:
  a3 = v15;
  MEMORY[0x24C196640](0x74656D6F6567202CLL, 0xED00007B203A7972);
  v85 = v94;
  v86 = v95;
  v87 = v96;
  v81 = v90;
  v82 = v91;
  v83 = v92;
  v84 = v93;
  v79 = v88;
  v80 = v89;
  if (sub_245F97DBC(&v79) == 1)
  {
    MEMORY[0x24C196640](7104878, 0xE300000000000000);
  }

  else
  {
    v72 = v84;
    v73 = v83;
    v70 = v86;
    v71 = v85;
    v25 = sub_246021244(v79, v80, v81, v82);
    v27 = v26;
    v73.i64[0] = sub_246021244(v73, v72, v71, v70);
    v72.i64[0] = v28;
    v77 = v97;
    v78 = v98;

    MEMORY[0x24C196640](0xD000000000000019, 0x80000002460A0D20);

    MEMORY[0x24C196640](v25, v27);

    MEMORY[0x24C196640](32, 0xE100000000000000);

    MEMORY[0x24C196640](0x6E617254746F6F72, 0xEF203A6D726F6673);

    MEMORY[0x24C196640](v73.i64[0], v72.i64[0]);

    v97 = v77;
    v98 = v78;
  }

  LODWORD(v74) = v24;
  MEMORY[0x24C196640](125, 0xE100000000000000);
  v29 = sub_246091704();
  (*(*(v29 - 8) + 8))(v11, v29);
  v14 = v97;
  v12 = v98;
LABEL_21:
  v88.i64[0] = v14;
  v88.i64[1] = v12;

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A0BD0);

  v30 = (v6 & 1) == 0;
  if (v6)
  {
    v31 = 1702195828;
  }

  else
  {
    v31 = 0x65736C6166;
  }

  if (v30)
  {
    v32 = 0xE500000000000000;
  }

  else
  {
    v32 = 0xE400000000000000;
  }

  MEMORY[0x24C196640](v31, v32);

  v33 = 0xE000000000000000;
  v34 = 0x726564726F6E752ELL;
  if (v8)
  {
    v34 = 0;
  }

  else
  {
    v33 = 0xEA00000000006465;
  }

  if (v8 == 1)
  {
    v35 = 0x746E65757165732ELL;
  }

  else
  {
    v35 = v34;
  }

  if (v8 == 1)
  {
    v36 = 0xEB000000006C6169;
  }

  else
  {
    v36 = v33;
  }

  MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A0BF0);

  MEMORY[0x24C196640](v35, v36);

  v37 = 0xE700000000000000;
  v38 = 0x6C616D726F6E2ELL;
  if (a3)
  {
    v38 = 0;
    v37 = 0xE000000000000000;
  }

  if (a3 == 1)
  {
    v39 = 0x686769682ELL;
  }

  else
  {
    v39 = v38;
  }

  if (a3 == 1)
  {
    v40 = 0xE500000000000000;
  }

  else
  {
    v40 = v37;
  }

  MEMORY[0x24C196640](0xD000000000000016, 0x80000002460A0C10);

  MEMORY[0x24C196640](v39, v40);

  v41 = v76;
  if (v76)
  {
    v42 = 1702195828;
  }

  else
  {
    v42 = 0x65736C6166;
  }

  if (v76)
  {
    v43 = 0xE400000000000000;
  }

  else
  {
    v43 = 0xE500000000000000;
  }

  MEMORY[0x24C196640](0xD000000000000015, 0x80000002460A0C30);

  MEMORY[0x24C196640](v42, v43);

  if ((v41 & 0x100) != 0)
  {
    v44 = 1702195828;
  }

  else
  {
    v44 = 0x65736C6166;
  }

  if ((v41 & 0x100) != 0)
  {
    v45 = 0xE400000000000000;
  }

  else
  {
    v45 = 0xE500000000000000;
  }

  MEMORY[0x24C196640](0xD00000000000001ALL, 0x80000002460A0C50);

  MEMORY[0x24C196640](v44, v45);

  result = v88.i64[0];
  v47 = v74;
  if (!v75)
  {
    v47 = 1;
  }

  if ((v47 & 1) == 0)
  {
    v71.i64[0] = v88.i64[1];
    v70.i64[0] = v88.i64[0];
    MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
    v88.i64[0] = 0;
    v88.i64[1] = 0xE000000000000000;
    sub_246092284();

    strcpy(v88.i8, "maxPolyCount: ");
    v88.i8[15] = -18;
    v79.i64[0] = MaxPolyCount;
    v49 = sub_2460923D4();
    MEMORY[0x24C196640](v49);

    v69 = v88;
    MaxTextureResolution = CPGOutputModelOptionsGetMaxTextureResolution();
    v88.i64[0] = 0;
    v88.i64[1] = 0xE000000000000000;
    sub_246092284();

    v88.i64[0] = 0xD000000000000013;
    v88.i64[1] = 0x80000002460A0C70;
    v79.i64[0] = MaxTextureResolution;
    v51 = sub_2460923D4();
    MEMORY[0x24C196640](v51);

    v52 = 0;
    v68 = v88;
    v88.i64[0] = 0xD000000000000021;
    v88.i64[1] = 0x80000002460A0C90;
    v74 = "xture settings: {";
    v73.i64[0] = 0x80000002460A0CE0;
    v53 = &off_2858DED90;
    v72.i64[0] = 0x80000002460A0D00;
    do
    {
      v55 = *(v53 - 1);
      v54 = *v53;

      TextureDestination = CPGOutputModelOptionsGetTextureDestination();
      if (TextureDestination)
      {
        v57 = 0;
      }

      else
      {
        v57 = 0xD000000000000010;
      }

      v58 = v72.i64[0];
      if (TextureDestination)
      {
        v58 = 0xE000000000000000;
      }

      if (TextureDestination == 1)
      {
        v59 = 0xD000000000000010;
      }

      else
      {
        v59 = v57;
      }

      if (TextureDestination == 1)
      {
        v60 = v73.i64[0];
      }

      else
      {
        v60 = v58;
      }

      TextureFormat = CPGOutputModelOptionsGetTextureFormat();
      v62 = 1735290926;
      if (TextureFormat)
      {
        v62 = 0;
        v63 = 0xE000000000000000;
      }

      else
      {
        v63 = 0xE400000000000000;
      }

      if (TextureFormat == 1)
      {
        v62 = 0x6765706A2ELL;
        v63 = 0xE500000000000000;
      }

      if (TextureFormat == 2)
      {
        v62 = 1920492846;
      }

      v76 = v62;
      if (TextureFormat == 2)
      {
        v64 = 0xE400000000000000;
      }

      else
      {
        v64 = v63;
      }

      CPGOutputModelOptionsGetTextureLossyCompressionQuality();
      v79 = v88;

      MEMORY[0x24C196640](v55, v54);

      MEMORY[0x24C196640](8250, 0xE200000000000000);

      MEMORY[0x24C196640](v59, v60);

      MEMORY[0x24C196640](8236, 0xE200000000000000);

      MEMORY[0x24C196640](v76, v64);

      MEMORY[0x24C196640](8236, 0xE200000000000000);

      v65 = v79;
      v79.i64[0] = 0;
      v79.i64[1] = 0xE000000000000000;
      sub_246092284();
      MEMORY[0x24C196640](0xD000000000000015, v74 | 0x8000000000000000);
      sub_246091F14();
      v66 = v79;
      v79 = v65;

      MEMORY[0x24C196640](v66.i64[0], v66.i64[1]);

      v88 = v79;
      if (v52 <= 3)
      {
        MEMORY[0x24C196640](8251, 0xE200000000000000);
      }

      ++v52;
      v53 += 2;
    }

    while (v52 != 5);
    swift_arrayDestroy();
    MEMORY[0x24C196640](125, 0xE100000000000000);
    v79.i64[0] = v70.i64[0];
    v79.i64[1] = v71.i64[0];

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    MEMORY[0x24C196640](v69.i64[0], v69.i64[1]);

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    MEMORY[0x24C196640](v68.i64[0], v68.i64[1]);

    MEMORY[0x24C196640](8236, 0xE200000000000000);

    v67 = v88;

    MEMORY[0x24C196640](v67.i64[0], v67.i64[1]);

    return v79.i64[0];
  }

  return result;
}

uint64_t sub_245FD0F78(_BYTE *a1)
{
  LOBYTE(v3) = *a1;
  HIDWORD(v3) = a1[1];
  type metadata accessor for PhotogrammetrySession.Configuration(0);
  sub_245FD0FEC(a1);
  return v3;
}

uint64_t sub_245FD0FEC(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v101 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v106 = &v101 - v8;
  MEMORY[0x28223BE20](v9);
  v110 = &v101 - v10;
  MEMORY[0x28223BE20](v11);
  v13 = &v101 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v101 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v101 - v18;
  v20 = *(a1 + 8);
  v21 = *(a1 + 16);
  v113 = *(a1 + 24);
  LODWORD(v111) = *(a1 + 36);
  v22 = CPGOutputModelOptionsCreate();
  *(v1 + 16) = v22;
  if (!v22)
  {
    v70 = sub_245FA31EC();
    (v4[2])(v6, v70, v3);
    v71 = sub_2460918D4();
    v72 = sub_246091FB4();
    if (os_log_type_enabled(v71, v72))
    {
      v73 = swift_slowAlloc();
      *v73 = 0;
      _os_log_impl(&dword_245F8A000, v71, v72, "Function to create output model options returned nil", v73, 2u);
      MEMORY[0x24C1989D0](v73, -1, -1);
    }

    return (v4[1])(v6, v3);
  }

  v23 = v22;
  sub_24601EF7C(v116);
  v24 = sub_246021418(v20, v116[4], v116[3]);
  if ((LODWORD(v24) & 0x7FFFFFFFu) > 0x7F7FFFFF)
  {
    goto LABEL_69;
  }

  if (v24 <= -9.2234e18)
  {
LABEL_70:
    __break(1u);
    goto LABEL_71;
  }

  if (v24 >= 9.2234e18)
  {
LABEL_71:
    __break(1u);
    goto LABEL_72;
  }

  v25 = v24;
  v112 = v3;
  v109 = v4;
  if (v20 != v24)
  {
    v26 = sub_245FA31EC();
    (v4[2])(v19, v26, v3);
    v27 = sub_2460918D4();
    v28 = sub_246091FB4();
    if (os_log_type_enabled(v27, v28))
    {
      v29 = swift_slowAlloc();
      *v29 = 134349312;
      *(v29 + 4) = v20;
      *(v29 + 12) = 2050;
      *(v29 + 14) = v25;
      _os_log_impl(&dword_245F8A000, v27, v28, "Clamped max poly count: %{public}ld to device limit. %{public}ld is used.", v29, 0x16u);
      v30 = v29;
      v4 = v109;
      MEMORY[0x24C1989D0](v30, -1, -1);
    }

    v3 = v112;
    v4[1](v19, v112);
  }

  if (CPGOutputModelOptionsSetMaxPolyCount())
  {
    MaxPolyCount = CPGOutputModelOptionsGetMaxPolyCount();
    v32 = sub_245FA31EC();
    (v4[2])(v16, v32, v3);
    v33 = sub_2460918D4();
    v34 = sub_246091FB4();
    if (os_log_type_enabled(v33, v34))
    {
      v35 = swift_slowAlloc();
      *v35 = 134349312;
      *(v35 + 4) = v20;
      *(v35 + 12) = 2050;
      *(v35 + 14) = MaxPolyCount;
      _os_log_impl(&dword_245F8A000, v33, v34, "Error setting max poly count: %{public}ld to output model options for custom detail level, %{public}ld is used.", v35, 0x16u);
      v36 = v35;
      v3 = v112;
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    v4[1](v16, v3);
  }

  LOBYTE(v116[0]) = v21;
  if ((PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.rawValue.getter() & 0x8000000000000000) == 0)
  {
    if (!CPGOutputModelOptionsSetMaxTextureResolution())
    {
LABEL_19:
      v107 = v23;
      v43 = sub_245FFBDAC(&unk_2858DEDD8, &qword_27EE3A610, &unk_246098470);
      v44 = v43;
      v45 = v43 + 64;
      v46 = 1 << *(v43 + 32);
      v47 = -1;
      if (v46 < 64)
      {
        v47 = ~(-1 << v46);
      }

      v48 = v47 & *(v43 + 64);
      v49 = (v46 + 63) >> 6;
      v50 = 0;

      {
        while (1)
        {
          do
          {
            if (!v48)
            {
              v54 = v112;
              while (1)
              {
                v55 = v50 + 1;
                if (__OFADD__(v50, 1))
                {
                  __break(1u);
                  goto LABEL_68;
                }

                if (v55 >= v49)
                {
                  break;
                }

                v48 = *(v45 + 8 * v55);
                ++v50;
                if (v48)
                {
                  v50 = v55;
                  goto LABEL_22;
                }
              }

              if (v111)
              {
                v105 = 0;
                v113 = 0xE300000000000000;
                v69 = 6778480;
              }

              else
              {
                v113 = 0xE400000000000000;
                v105 = 1;
                v69 = 1734701162;
              }

              v104 = v69;
              v75 = v110;
              v76 = i + 64;
              v77 = 1 << *(i + 32);
              v78 = -1;
              if (v77 < 64)
              {
                v78 = ~(-1 << v77);
              }

              v79 = v78 & *(i + 64);
              v80 = (v77 + 63) >> 6;
              v108 = (v109 + 2);
              ++v109;

              v81 = 0;
              *&v82 = 136446466;
              v103 = v82;
              v111 = i;
              while (v79)
              {
LABEL_55:
                v84 = *(*(i + 48) + 8 * (__clz(__rbit64(v79)) | (v81 << 6)));
                if (qword_27EE3C140 != -1)
                {
                  swift_once();
                }

                v79 &= v79 - 1;
                if (*(qword_27EE3C148 + 16))
                {
                  sub_245FF8590(v84);
                  if ((v85 & 1) != 0 && (CPGOutputModelOptionsSetTextureFormat() || CPGOutputModelOptionsSetTextureLossyCompressionQuality() || CPGOutputModelOptionsSetTextureDestination()))
                  {
                    v86 = sub_245FA31EC();
                    (*v108)(v75, v86, v54);
                    v87 = v113;

                    v88 = sub_2460918D4();
                    v89 = sub_246091FB4();

                    if (os_log_type_enabled(v88, v89))
                    {
                      v90 = swift_slowAlloc();
                      v102 = swift_slowAlloc();
                      v116[0] = v102;
                      *v90 = v103;
                      PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs.init(rawValue:)(v84);
                      v114 = v115;
                      v91 = sub_246091C54();
                      v93 = sub_245F8D3C0(v91, v92, v116);

                      *(v90 + 4) = v93;
                      v75 = v110;
                      *(v90 + 12) = 2082;
                      *(v90 + 14) = sub_245F8D3C0(v104, v87, v116);
                      _os_log_impl(&dword_245F8A000, v88, v89, "Error setting texture format %{public}s to %{public}s for custom detail level!", v90, 0x16u);
                      v94 = v102;
                      swift_arrayDestroy();
                      MEMORY[0x24C1989D0](v94, -1, -1);
                      v95 = v90;
                      v54 = v112;
                      MEMORY[0x24C1989D0](v95, -1, -1);
                    }

                    (*v109)(v75, v54);
                    i = v111;
                  }
                }
              }

              while (1)
              {
                v83 = v81 + 1;
                if (__OFADD__(v81, 1))
                {
                  break;
                }

                if (v83 >= v80)
                {

                  v96 = sub_245FA31EC();
                  v97 = v106;
                  (*v108)(v106, v96, v54);
                  v98 = sub_2460918D4();
                  v99 = sub_246091FC4();
                  if (os_log_type_enabled(v98, v99))
                  {
                    v100 = swift_slowAlloc();
                    *v100 = 0;
                    _os_log_impl(&dword_245F8A000, v98, v99, "Finished populating custom detail output model option.", v100, 2u);
                    MEMORY[0x24C1989D0](v100, -1, -1);
                  }

                  return (*v109)(v97, v54);
                }

                v79 = *(v76 + 8 * v83);
                ++v81;
                if (v79)
                {
                  v81 = v83;
                  i = v111;
                  goto LABEL_55;
                }
              }

LABEL_68:
              __break(1u);
LABEL_69:
              __break(1u);
              goto LABEL_70;
            }

LABEL_22:
            v52 = __clz(__rbit64(v48));
            v48 &= v48 - 1;
            v53 = *(*(v44 + 48) + ((v50 << 9) | (8 * v52)));
            PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureMapOutputs.init(rawValue:)(v53);
            v114 = v113;
            v115 = v116[0];
            sub_245FFBE84();
          }

          while ((sub_246092184() & 1) == 0);
          LODWORD(v108) = swift_isUniquelyReferenced_nonNull_native();
          v116[0] = i;
          v56 = sub_245FF8590(v53);
          v58 = *(i + 16);
          v59 = (v57 & 1) == 0;
          v60 = __OFADD__(v58, v59);
          v61 = v58 + v59;
          if (v60)
          {
            goto LABEL_74;
          }

          if (*(i + 24) < v61)
          {
            break;
          }

          if (v108)
          {
            i = v116[0];
            if ((v57 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

          else
          {
            v108 = v56;
            v65 = v57;
            sub_245FFA018();
            v66 = v65;
            v56 = v108;
            i = v116[0];
            if ((v66 & 1) == 0)
            {
              goto LABEL_38;
            }
          }

LABEL_36:
          *(*(i + 56) + 4 * v56) = 1;
        }

        v62 = v57;
        sub_245FF8700(v61, v108);
        v56 = sub_245FF8590(v53);
        if ((v62 & 1) != (v63 & 1))
        {
          goto LABEL_76;
        }

        v64 = v62;
        i = v116[0];
        if (v64)
        {
          goto LABEL_36;
        }

LABEL_38:
        *(i + 8 * (v56 >> 6) + 64) |= 1 << v56;
        *(*(i + 48) + 8 * v56) = v53;
        *(*(i + 56) + 4 * v56) = 1;
        v67 = *(i + 16);
        v60 = __OFADD__(v67, 1);
        v68 = v67 + 1;
        if (v60)
        {
          goto LABEL_75;
        }
      }
    }

    MaxTextureResolution = CPGOutputModelOptionsGetMaxTextureResolution();
    v38 = sub_245FA31EC();
    (v4[2])(v13, v38, v3);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (!os_log_type_enabled(v39, v40))
    {
LABEL_18:

      v4[1](v13, v3);
      goto LABEL_19;
    }

    v41 = swift_slowAlloc();
    *v41 = 134349312;
    LOBYTE(v116[0]) = v21;
    v42 = PhotogrammetrySession.Configuration.CustomDetailSpecification.TextureDimension.rawValue.getter();
    if ((v42 & 0x8000000000000000) == 0)
    {
      *(v41 + 4) = v42;
      *(v41 + 12) = 2050;
      *(v41 + 14) = MaxTextureResolution;
      _os_log_impl(&dword_245F8A000, v39, v40, "Error setting texture dimension: %{public}ld to output model options for custom detail level, %{public}ld is used.", v41, 0x16u);
      MEMORY[0x24C1989D0](v41, -1, -1);
      v3 = v112;
      goto LABEL_18;
    }

    goto LABEL_73;
  }

LABEL_72:
  __break(1u);
LABEL_73:
  __break(1u);
LABEL_74:
  __break(1u);
LABEL_75:
  __break(1u);
LABEL_76:
  result = sub_246092424();
  __break(1u);
  return result;
}

uint64_t sub_245FD1B40(uint64_t *a1, char a2)
{
  v48 = sub_2460918F4();
  MEMORY[0x28223BE20](v48);
  v7 = v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = a1[8];
  if (!*(v8 + 16))
  {
    v34 = 0x80000002460A06A0;
    sub_245FFCF7C();
    swift_allocError();
    v36 = 0xD000000000000025;
LABEL_23:
    *v35 = v36;
    *(v35 + 8) = v34;
    *(v35 + 16) = 5;
    return swift_willThrow();
  }

  v40 = v5;
  v38[1] = v2;
  v9 = *a1;
  v10 = a1[1];
  v11 = a1[2];
  v12 = a1[4];
  v44 = a1[5];
  if (a2)
  {
    v13 = 34;
  }

  else
  {
    v13 = 22;
  }

  v14 = a1[6];
  v15 = a1[7];
  result = CPGDepthPointCloudCreateWithSensorConfig();
  if (!result)
  {
    v49 = 0;
    v50 = 0xE000000000000000;
    sub_246092284();
    MEMORY[0x24C196640](0xD000000000000036, 0x80000002460A0660);
    v51 = v13;
    v37 = sub_2460923D4();
    MEMORY[0x24C196640](v37);

    v36 = v49;
    v34 = v50;
    sub_245FFCF7C();
    swift_allocError();
    goto LABEL_23;
  }

  v18 = *(v9 + 16);
  if (!v18)
  {
    return result;
  }

  if (v18 > *(v11 + 16))
  {
    __break(1u);
    goto LABEL_25;
  }

  if (v18 > *(v10 + 16))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  if (v18 > *(v12 + 16))
  {
LABEL_26:
    __break(1u);
    goto LABEL_27;
  }

  if (v18 > *(v14 + 16))
  {
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  if (v18 > *(v44 + 16))
  {
LABEL_28:
    __break(1u);
    goto LABEL_29;
  }

  if (v18 > *(v15 + 16))
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v18 > *(v8 + 16))
  {
LABEL_30:
    __break(1u);
    return result;
  }

  v19 = v9;
  v20 = v12;
  v21 = 0;
  v22 = v19 + 32;
  v46 = v20 + 32;
  v47 = v10 + 32;
  v44 += 32;
  v45 = v14 + 32;
  v42 = v8 + 32;
  v43 = v15 + 32;
  v23 = v11 + 32;
  v24 = v40++;
  v41 = (v24 + 2);
  *&v17 = 134349056;
  v39 = v17;
  do
  {
    v25 = result;
    if (CPGDepthPointCloudAddPoint())
    {
      v26 = sub_245FA31EC();
      (*v41)(v7, v26, v48);
      v27 = v7;
      v28 = sub_2460918D4();
      v29 = sub_246091FB4();
      if (os_log_type_enabled(v28, v29))
      {
        v30 = v23;
        v31 = v22;
        v32 = swift_slowAlloc();
        *v32 = v39;
        *(v32 + 4) = v21;
        _os_log_impl(&dword_245F8A000, v28, v29, "Failed to add point %{public}ld in LiDAR point cloud", v32, 0xCu);
        v33 = v32;
        v22 = v31;
        v23 = v30;
        MEMORY[0x24C1989D0](v33, -1, -1);
      }

      v7 = v27;
      (*v40)(v27, v48);
    }

    ++v21;
    result = v25;
  }

  while (v18 != v21);
  return result;
}

void sub_245FD1F30(uint64_t a1, uint64_t a2, __int32 a3)
{
  v183.i32[0] = a3;
  v181 = a2;
  v211 = *MEMORY[0x277D85DE8];
  v180 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v180);
  v175 = (&v163 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0));
  MEMORY[0x28223BE20](v6);
  v171 = (&v163 - v7);
  MEMORY[0x28223BE20](v8);
  v177 = (&v163 - v9);
  MEMORY[0x28223BE20](v10);
  v169 = &v163 - v11;
  MEMORY[0x28223BE20](v12);
  v14 = (&v163 - v13);
  MEMORY[0x28223BE20](v15);
  v178 = (v163.i64 - v16);
  MEMORY[0x28223BE20](v17);
  v172 = (&v163 - v18);
  MEMORY[0x28223BE20](v19);
  v21 = (&v163 - v20);
  v22 = sub_2460918F4();
  v184 = *(v22 - 8);
  MEMORY[0x28223BE20](v22);
  v174 = &v163 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v24);
  v170 = &v163 - v25;
  MEMORY[0x28223BE20](v26);
  v182 = &v163 - v27;
  MEMORY[0x28223BE20](v28);
  v173 = &v163 - v29;
  MEMORY[0x28223BE20](v30);
  v179 = &v163 - v31;
  MEMORY[0x28223BE20](v32);
  v34 = &v163 - v33;
  MEMORY[0x28223BE20](v35);
  v37 = &v163 - v36;
  MEMORY[0x28223BE20](v38);
  v176 = &v163 - v39;
  MEMORY[0x28223BE20](v40);
  v42 = &v163 - v41;
  v185 = a1;
  v43 = *(a1 + 8);
  if (!sub_245FC6568(v43))
  {
    sub_245FFCF7C();
    swift_allocError();
    *v51 = 0xD00000000000002DLL;
    *(v51 + 8) = 0x80000002460A0380;
    *(v51 + 16) = 5;
    swift_willThrow();
    return;
  }

  v166 = v22;
  v167.i64[0] = v3;
  v205 = 0;
  v44 = CPGSampleMetadataCreate();
  if (!v44 || (v45 = sub_246091B34(), v168 = v44, v46 = v45, v47 = CPGSampleMetadataSetFromCGImageProperties(), v46, v47))
  {
    v48 = 0x80000002460A03B0;
    sub_245FFCF7C();
    swift_allocError();
    v50 = 0xD000000000000030;
LABEL_5:
    *v49 = v50;
    *(v49 + 8) = v48;
    *(v49 + 16) = 5;
LABEL_6:
    swift_willThrow();
LABEL_96:
    CPGSampleMetadataRelease();
    return;
  }

  v165 = v43;
  v52 = v185;
  memcpy(v204, (v185 + 96), 0x171uLL);
  if (sub_245F97C38(v204) != 1)
  {
    if ((v204[0] & 0x80000000) != 0)
    {
      __break(1u);
      goto LABEL_98;
    }

    if (CPGSampleMetadataSetCameraID())
    {
      v48 = 0x80000002460A0630;
      sub_245FFCF7C();
      swift_allocError();
      v50 = 0xD000000000000023;
      goto LABEL_5;
    }
  }

  memcpy(v203, (v52 + 96), 0x171uLL);
  if (sub_245F97C38(v203) != 1)
  {
    v163 = v203[2];
    v164 = v203[1];
    if (CPGSampleMetadataSetPrincipalPoint())
    {
      v48 = 0x80000002460A05D0;
      sub_245FFCF7C();
      swift_allocError();
      v50 = 0xD000000000000029;
      goto LABEL_5;
    }

    if (CPGSampleMetadataSetFocalLengthInPixel())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v55 = 0xD00000000000002DLL;
      *(v55 + 8) = 0x80000002460A0600;
      *(v55 + 16) = 5;
      goto LABEL_6;
    }
  }

  memcpy(v202, (v52 + 96), 0x171uLL);
  v53 = sub_245F97C38(v202);
  v54 = v167.i64[0];
  if (v53 != 1)
  {
    sub_246021188(v199, v202[4], v202[5], v202[6], v202[7]);
    v195 = v199[4];
    v196 = v199[5];
    v197 = v199[6];
    v198 = v199[7];
    v191 = v199[0];
    v192 = v199[1];
    v193 = v199[2];
    v194 = v199[3];
    if (CPGSampleMetadataSetCameraTransform())
    {
      v48 = 0x80000002460A05A0;
      sub_245FFCF7C();
      swift_allocError();
      v50 = 0xD00000000000002ALL;
      goto LABEL_5;
    }

    v52 = v185;
  }

  if ((*(v52 + 72) & 1) == 0)
  {
    *&v56 = -*(v52 + 64);
    v199[0] = vnegq_f64(vextq_s8(*(v52 + 48), *(v52 + 48), 8uLL));
    v199[1] = v56;
    if (CPGSampleMetadataSetGravity())
    {
      v48 = 0x80000002460A0570;
      sub_245FFCF7C();
      swift_allocError();
      v50 = 0xD000000000000022;
      goto LABEL_5;
    }
  }

  v57 = *(v52 + 32);
  if (v57)
  {
    v58 = v57;
    if (CPGSampleMetadataSetDepthMapWithConfidence())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v59 = 0xD000000000000031;
      *(v59 + 8) = 0x80000002460A0530;
      *(v59 + 16) = 5;
      swift_willThrow();

      goto LABEL_96;
    }

    v164.i64[0] = v58;
    v60 = sub_245FA31EC();
    (*(v184 + 16))(v42, v60, v166);
    sub_245FFE868(v52, v21, type metadata accessor for PhotogrammetrySample);
    v61 = sub_2460918D4();
    v62 = sub_246091FC4();
    if (os_log_type_enabled(v61, v62))
    {
      v63 = swift_slowAlloc();
      v163.i32[0] = v62;
      v64 = v63;
      *v63 = 134349056;
      v65 = *v21;
      sub_245FFEA30(v21, type metadata accessor for PhotogrammetrySample);
      *(v64 + 1) = v65;
      _os_log_impl(&dword_245F8A000, v61, v163.i8[0], "Prepared depth data map of sample %{public}ld for reconstruction.", v64, 0xCu);
      MEMORY[0x24C1989D0](v64, -1, -1);
      v66 = v164.i64[0];
    }

    else
    {
      sub_245FFEA30(v21, type metadata accessor for PhotogrammetrySample);
      v66 = v61;
      v61 = v164.i64[0];
    }

    v54 = v167.i64[0];

    (*(v184 + 8))(v42, v166);
    v52 = v185;
  }

  v67 = *(v52 + 80);
  if (v67)
  {
    v68 = v67;
    if (CPGSampleMetadataSetMaskWithCVPixelBuffer())
    {
      sub_245FFCF7C();
      swift_allocError();
      *v69 = 0xD000000000000030;
      *(v69 + 8) = 0x80000002460A04F0;
      *(v69 + 16) = 5;
      swift_willThrow();

      goto LABEL_96;
    }
  }

  sub_245F9789C(&v206);
  if (v183.i8[0])
  {
    v70 = v184;
    if ((v210 & 1) == 0)
    {
      v186 = v206;
      v187 = v207;
      v188 = v208;
      v189 = v209;
      v71 = sub_245FA31EC();
      v72 = v166;
      (*(v70 + 16))(v34, v71, v166);
      sub_245FFE868(v185, v14, type metadata accessor for PhotogrammetrySample);
      v73 = sub_2460918D4();
      v74 = sub_246091FC4();
      if (os_log_type_enabled(v73, v74))
      {
        v75 = swift_slowAlloc();
        v76 = swift_slowAlloc();
        *&v191.f64[0] = v76;
        *v75 = 136446466;
        v199[0] = v186;
        v199[1] = v187;
        v199[2] = v188;
        v199[3] = v189;
        type metadata accessor for simd_float4x4(0);
        v77 = sub_246091C54();
        v79 = sub_245F8D3C0(v77, v78, &v191);

        *(v75 + 4) = v79;
        *(v75 + 12) = 2050;
        v80 = *v14;
        sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySample);
        *(v75 + 14) = v80;
        v54 = v167.i64[0];
        _os_log_impl(&dword_245F8A000, v73, v74, "Ignored setting CPG bounding box %{public}s for\nsample = %{public}ld", v75, 0x16u);
        sub_245F8E6F4(v76);
        v81 = v76;
        v70 = v184;
        MEMORY[0x24C1989D0](v81, -1, -1);
        MEMORY[0x24C1989D0](v75, -1, -1);

        (*(v70 + 8))(v34, v166);
      }

      else
      {
        sub_245FFEA30(v14, type metadata accessor for PhotogrammetrySample);

        (*(v70 + 8))(v34, v72);
      }
    }
  }

  else
  {
    v70 = v184;
    if ((v210 & 1) == 0)
    {
      *&v200[0] = 0;
      v163 = v206;
      v164 = v207;
      v167 = v208;
      v183 = v209;
      sub_246021188(v199, v206, v207, v208, v209);
      v195 = v199[4];
      v196 = v199[5];
      v197 = v199[6];
      v198 = v199[7];
      v191 = v199[0];
      v192 = v199[1];
      v193 = v199[2];
      v194 = v199[3];
      if (CPGBoundingBoxCreateFromTransform())
      {
        v82 = sub_245FA31EC();
        v83 = v166;
        (*(v70 + 16))(v37, v82, v166);
        v84 = v178;
        sub_245FFE868(v185, v178, type metadata accessor for PhotogrammetrySample);
        v85 = sub_2460918D4();
        v86 = sub_246091FB4();
        if (os_log_type_enabled(v85, v86))
        {
          v87 = swift_slowAlloc();
          v88 = swift_slowAlloc();
          v190 = v88;
          *v87 = 136446466;
          v191 = v163;
          v192 = v164;
          v193 = v167;
          v194 = v183;
          type metadata accessor for simd_float4x4(0);
          v89 = sub_246091C54();
          v90 = v70;
          v92 = sub_245F8D3C0(v89, v91, &v190);

          *(v87 + 4) = v92;
          *(v87 + 12) = 2050;
          v93 = *v178;
          sub_245FFEA30(v178, type metadata accessor for PhotogrammetrySample);
          *(v87 + 14) = v93;
          _os_log_impl(&dword_245F8A000, v85, v86, "Failed to create CPG bounding box %{public}s for\nsample = %{public}ld", v87, 0x16u);
          sub_245F8E6F4(v88);
          MEMORY[0x24C1989D0](v88, -1, -1);
          MEMORY[0x24C1989D0](v87, -1, -1);

          (*(v90 + 8))(v37, v166);
        }

        else
        {
          sub_245FFEA30(v84, type metadata accessor for PhotogrammetrySample);

          (*(v70 + 8))(v37, v83);
        }

        v131 = "CPGBoundingBoxCreateFromTransform failed";
LABEL_94:
        v48 = (v131 - 32) | 0x8000000000000000;
        sub_245FFCF7C();
        swift_allocError();
        v50 = 0xD000000000000028;
        goto LABEL_5;
      }

      if (!*&v200[0])
      {
        goto LABEL_100;
      }

      v117 = CPGSampleMetadataSetObjectBoundingBox();
      v118 = v176;
      if (v117)
      {
        v119 = sub_245FA31EC();
        v120 = v166;
        (*(v70 + 16))(v118, v119, v166);
        v121 = v172;
        sub_245FFE868(v185, v172, type metadata accessor for PhotogrammetrySample);
        v122 = sub_2460918D4();
        v123 = sub_246091FB4();
        if (os_log_type_enabled(v122, v123))
        {
          v124 = swift_slowAlloc();
          v125 = swift_slowAlloc();
          v190 = v125;
          *v124 = 136446466;
          v191 = v163;
          v192 = v164;
          v193 = v167;
          v194 = v183;
          type metadata accessor for simd_float4x4(0);
          v126 = sub_246091C54();
          v128 = v70;
          v129 = sub_245F8D3C0(v126, v127, &v190);

          *(v124 + 4) = v129;
          *(v124 + 12) = 2050;
          v130 = *v121;
          sub_245FFEA30(v121, type metadata accessor for PhotogrammetrySample);
          *(v124 + 14) = v130;
          _os_log_impl(&dword_245F8A000, v122, v123, "Failed to set CPG bounding box %{public}s for\nsample = %{public}ld", v124, 0x16u);
          sub_245F8E6F4(v125);
          MEMORY[0x24C1989D0](v125, -1, -1);
          MEMORY[0x24C1989D0](v124, -1, -1);

          (*(v128 + 8))(v176, v166);
        }

        else
        {
          sub_245FFEA30(v121, type metadata accessor for PhotogrammetrySample);

          (*(v70 + 8))(v118, v120);
        }

        sub_245FFCF7C();
        swift_allocError();
        *v132 = 0xD00000000000002CLL;
        *(v132 + 8) = 0x80000002460A04C0;
        *(v132 + 16) = 5;
        swift_willThrow();
        CPGBoundingBoxRelease();
        goto LABEL_96;
      }

      CPGBoundingBoxRelease();
    }
  }

  v94 = v185;
  if ((*(v185 + 728) & 1) == 0)
  {
    sub_24602138C(*(v185 + 720));
    v95 = sub_246091BD4();

    v96 = CPGSampleMetadataSetTimestamp();

    if (v96)
    {
      v48 = 0x80000002460A0460;
      sub_245FFCF7C();
      swift_allocError();
      v50 = 0xD000000000000024;
      goto LABEL_5;
    }
  }

  v97 = *(v94 + 88);
  if (v97)
  {
    LOBYTE(v191.f64[0]) = 0;
    v98 = v97;
    sub_24602335C(&v191, v199);
    v201 = v199[4].f64[0];
    v200[2] = v199[2];
    v200[3] = v199[3];
    v200[0] = v199[0];
    v200[1] = v199[1];
    sub_245FD1B40(v199, SLOBYTE(v191.f64[0]));
    if (v54)
    {

      sub_245FFEA90(v200);
      goto LABEL_96;
    }

    v167.i64[0] = 0;
    sub_245FFEA90(v200);
    NumberOfPoints = CPGDepthPointCloudGetNumberOfPoints();
    v108 = sub_245FA31EC();
    v100 = *(v70 + 16);
    v182 = v108;
    v100(v179);
    v109 = sub_2460918D4();
    v110 = sub_246091FC4();
    if (os_log_type_enabled(v109, v110))
    {
      v111 = swift_slowAlloc();
      *v111 = 134349056;
      *(v111 + 4) = NumberOfPoints;
      _os_log_impl(&dword_245F8A000, v109, v110, "Created LiDAR point cloud of %{public}llu points", v111, 0xCu);
      MEMORY[0x24C1989D0](v111, -1, -1);
    }

    v183.i64[0] = *(v184 + 8);
    (v183.i64[0])(v179, v166);
    if (NumberOfPoints)
    {
      memcpy(v199, (v185 + 96), 0x171uLL);
      if (sub_245F97C38(v199) == 1 || (LOBYTE(v199[13].f64[0]) & 1) != 0)
      {
        v112 = *MEMORY[0x277D860B8];
        v113 = *(MEMORY[0x277D860B8] + 16);
        v114 = (MEMORY[0x277D860B8] + 48);
        v115 = *(MEMORY[0x277D860B8] + 32);
      }

      else
      {
        v112 = v199[9];
        v113 = v199[10];
        v115 = v199[11];
        v114 = &v199[12];
      }

      sub_246021188(&v191, v112, v113, v115, *v114);
      if (CPGSampleMetadataSetDepthPointCloudWithExtrinsics())
      {
        sub_245FFCF7C();
        swift_allocError();
        *v133 = 0xD000000000000038;
        *(v133 + 8) = 0x80000002460A0420;
        *(v133 + 16) = 5;
        swift_willThrow();
        CPGDepthPointCloudRelease();

        goto LABEL_96;
      }

      (v100)(v173, v182, v166);
      v134 = v169;
      sub_245FFE868(v185, v169, type metadata accessor for PhotogrammetrySample);
      v135 = sub_2460918D4();
      v136 = sub_246091FC4();
      if (os_log_type_enabled(v135, v136))
      {
        v137 = swift_slowAlloc();
        v138 = v134;
        v139 = v137;
        *v137 = 134349056;
        v140 = *v138;
        sub_245FFEA30(v138, type metadata accessor for PhotogrammetrySample);
        *(v139 + 1) = v140;
        _os_log_impl(&dword_245F8A000, v135, v136, "Successfully added LiDAR point cloud of sample %{public}ld", v139, 0xCu);
        MEMORY[0x24C1989D0](v139, -1, -1);
      }

      else
      {
        sub_245FFEA30(v134, type metadata accessor for PhotogrammetrySample);
      }

      (v183.i64[0])(v173, v166);
    }

    CPGDepthPointCloudRelease();

    v116 = v181;
  }

  else
  {
    v99 = sub_245FA31EC();
    v100 = *(v70 + 16);
    (v100)(v182, v99, v166);
    v101 = v177;
    sub_245FFE868(v94, v177, type metadata accessor for PhotogrammetrySample);
    v102 = sub_2460918D4();
    v103 = sub_246091FB4();
    if (os_log_type_enabled(v102, v103))
    {
      v104 = swift_slowAlloc();
      *v104 = 134349056;
      v105 = v101;
      v106 = *v101;
      sub_245FFEA30(v105, type metadata accessor for PhotogrammetrySample);
      *(v104 + 4) = v106;
      _os_log_impl(&dword_245F8A000, v102, v103, "Sample %{public}ld missing LiDAR point cloud!", v104, 0xCu);
      MEMORY[0x24C1989D0](v104, -1, -1);
    }

    else
    {
      sub_245FFEA30(v101, type metadata accessor for PhotogrammetrySample);
    }

    v116 = v181;

    v183.i64[0] = *(v70 + 8);
    (v183.i64[0])(v182, v166);
  }

  if (v116)
  {
    v141 = *(v180 + 84);
    v182 = *(v180 + 80);
    v142 = v185;
    v143 = (v185 + v141);
    v144 = *v143;
    v145 = v100;
    v146 = *(v143 + 8);
    v147 = *(*v116 + 104);

    v148 = v146;
    v100 = v145;
    v149 = v147(v142 + v182, v144, v148);
  }

  else
  {
    v150 = v185 + *(v180 + 84);
    if (*(v150 + 8))
    {
      goto LABEL_91;
    }

    v149 = *v150;
  }

  if ((v149 & 0x8000000000000000) != 0)
  {
LABEL_91:
    if ((*v185 & 0x8000000000000000) == 0)
    {
      if (!CPGSampleCreateWithCVPixelBuffer() && v205)
      {
        goto LABEL_96;
      }

      v131 = "CPGSampleCreateWithCVPixelBuffer failed!";
      goto LABEL_94;
    }

LABEL_98:
    __break(1u);
  }

  if (!(v149 >> 31))
  {
    v151 = CPGSampleMetadataSetSegmentID();
    v152 = sub_245FA31EC();
    if (v151)
    {
      v153 = v174;
      (v100)(v174, v152, v166);
      v154 = v153;
      v155 = v175;
      sub_245FFE868(v185, v175, type metadata accessor for PhotogrammetrySample);
      v156 = sub_2460918D4();
      v157 = sub_246091FB4();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 134349312;
        *(v158 + 4) = v149;
        *(v158 + 12) = 2050;
        v159 = *v155;
        sub_245FFEA30(v155, type metadata accessor for PhotogrammetrySample);
        *(v158 + 14) = v159;
        v160 = "Failed to set static segment ID %{public}ld for sample = %{public}ld";
LABEL_88:
        _os_log_impl(&dword_245F8A000, v156, v157, v160, v158, 0x16u);
        MEMORY[0x24C1989D0](v158, -1, -1);
LABEL_90:

        (v183.i64[0])(v154, v166);
        goto LABEL_91;
      }
    }

    else
    {
      v161 = v170;
      (v100)(v170, v152, v166);
      v154 = v161;
      v155 = v171;
      sub_245FFE868(v185, v171, type metadata accessor for PhotogrammetrySample);
      v156 = sub_2460918D4();
      v157 = sub_246091FC4();
      if (os_log_type_enabled(v156, v157))
      {
        v158 = swift_slowAlloc();
        *v158 = 134349312;
        *(v158 + 4) = v149;
        *(v158 + 12) = 2050;
        v162 = *v155;
        sub_245FFEA30(v155, type metadata accessor for PhotogrammetrySample);
        *(v158 + 14) = v162;
        v160 = "Success in setting static segment ID %{public}ld for sample = %{public}ld";
        goto LABEL_88;
      }
    }

    sub_245FFEA30(v155, type metadata accessor for PhotogrammetrySample);
    goto LABEL_90;
  }

  __break(1u);
LABEL_100:
  __break(1u);
}

char *sub_245FD36E0(uint64_t a1)
{
  v89 = *MEMORY[0x277D85DE8];
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v38 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  memcpy(v88, (a1 + 96), 0x171uLL);
  v6 = sub_245F97C38(v88);
  v39 = v3;
  v40 = v2;
  v38 = v5;
  if (v6 == 1 || (v88[13] & 1) != 0)
  {
    v7 = *MEMORY[0x277D860B8];
    v8 = *(MEMORY[0x277D860B8] + 16);
    v9 = *(MEMORY[0x277D860B8] + 32);
    v10 = *(MEMORY[0x277D860B8] + 48);
  }

  else
  {
    v7 = v88[9];
    v8 = v88[10];
    v9 = v88[11];
    v10 = v88[12];
  }

  sub_246021188(v71, v7, v8, v9, v10);
  v11 = *(a1 + *(type metadata accessor for PhotogrammetrySample(0) + 96));
  if (v11 >> 62)
  {
    goto LABEL_27;
  }

  for (i = *((v11 & 0xFFFFFFFFFFFFFF8) + 0x10); i; i = sub_246092354())
  {
    v13 = 0;
    v43 = v11 & 0xFFFFFFFFFFFFFF8;
    v41 = MEMORY[0x277D84F90];
    v42 = i;
    while ((v11 & 0xC000000000000001) != 0)
    {
      v14 = MEMORY[0x24C196C20](v13, v11);
      v15 = v13 + 1;
      if (__OFADD__(v13, 1))
      {
        goto LABEL_25;
      }

LABEL_15:
      v16 = (*(*v14 + 128))();
      v68 = 0;
      sub_24602335C(&v68, &v58);
      v70 = v62.f64[0];
      v69[2] = v60;
      v69[3] = v61;
      v69[0] = v58;
      v69[1] = v59;
      v66[2] = v60;
      v66[3] = v61;
      v67 = v62.f64[0];
      v66[0] = v58;
      v66[1] = v59;
      sub_245FD1B40(v66, v68);

      v17 = sub_245FFEA90(v69);
      v87 = 0;
      v18 = *(*v14 + 152);
      (v18)(v72, v17);
      v80[0] = v72[0];
      v80[1] = v72[1];
      v80[2] = v72[2];
      sub_246021134(v80, v73);
      v48 = v73[2];
      v49 = v73[0];
      v45 = v73[3];
      v46 = v73[1];
      v47 = v73[4];
      v44 = v73[5];
      v18(v74);
      v19 = sub_246021188(&v58, v75, v76, v77, v78);
      (v18)(v79, v19);
      v82 = v46;
      v81 = v49;
      v84 = v45;
      v83 = v48;
      v86 = v44;
      v85 = v47;
      v54 = v62;
      v55 = v63;
      v56 = v64;
      v57 = v65;
      v50 = v58;
      v51 = v59;
      v52 = v60;
      v53 = v61;
      if (!CPGCameraCreateWithIntrinsicsExtrinsicsResolution())
      {
        *&v81 = 0;
        v20 = (*(*v14 + 104))();
        sub_24602138C(v20);
        v21 = sub_246091BD4();

        v54 = v71[4];
        v55 = v71[5];
        v56 = v71[6];
        v57 = v71[7];
        v50 = v71[0];
        v51 = v71[1];
        v52 = v71[2];
        v53 = v71[3];
        v22 = CPGTemporalDepthPointFrameCreateWithTimeCameraAndPointCloud();

        if (!v22)
        {
          v23 = v81;
          if (!v81)
          {
            __break(1u);
          }

          if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
          {
            v41 = sub_245FF82A8(0, *(v41 + 2) + 1, 1, v41, &qword_27EE3A5C0, &qword_246098420);
          }

          v25 = *(v41 + 2);
          v24 = *(v41 + 3);
          v26 = v25 + 1;
          if (v25 >= v24 >> 1)
          {
            *&v49 = v25 + 1;
            v28 = sub_245FF82A8((v24 > 1), v25 + 1, 1, v41, &qword_27EE3A5C0, &qword_246098420);
            v26 = v49;
            v41 = v28;
          }

          v27 = v41;
          *(v41 + 2) = v26;
          *&v27[8 * v25 + 32] = v23;
        }

        CPGCameraRelease();
      }

      CPGDepthPointCloudRelease();

      ++v13;
      if (v15 == v42)
      {
        goto LABEL_29;
      }
    }

    if (v13 >= *(v43 + 16))
    {
      goto LABEL_26;
    }

    v14 = *(v11 + 8 * v13 + 32);

    v15 = v13 + 1;
    if (!__OFADD__(v13, 1))
    {
      goto LABEL_15;
    }

LABEL_25:
    __break(1u);
LABEL_26:
    __break(1u);
LABEL_27:
    ;
  }

  v41 = MEMORY[0x277D84F90];
LABEL_29:
  v29 = sub_245FA31EC();
  v31 = v38;
  v30 = v39;
  v32 = v40;
  (*(v39 + 16))(v38, v29, v40);
  v33 = v41;

  v34 = sub_2460918D4();
  v35 = sub_246091FC4();
  if (os_log_type_enabled(v34, v35))
  {
    v36 = swift_slowAlloc();
    *v36 = 134349056;
    *(v36 + 4) = *(v33 + 2);

    _os_log_impl(&dword_245F8A000, v34, v35, "Create %{public}ld temporal LiDAR point frames.", v36, 0xCu);
    MEMORY[0x24C1989D0](v36, -1, -1);

    (*(v30 + 8))(v31, v32);
  }

  else
  {

    (*(v30 + 8))(v31, v32);
  }

  return v33;
}

void (*sub_245FD3D10(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 24);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245F8FD54;
}

uint64_t sub_245FD3DE0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 40) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD3E40(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 40);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD3ED4;
}

void sub_245FD3ED4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 40) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD3F94(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 56) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD3FF4(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 56);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD4088;
}

void sub_245FD4088(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 56) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD4148(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 72) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD41A8(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 72);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD423C;
}

void sub_245FD423C(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 72) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD42FC(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 88) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD435C(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 88);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD43F0;
}

void sub_245FD43F0(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 88) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD44B0(uint64_t a1, uint64_t a2)
{
  swift_beginAccess();
  *(v2 + 104) = a2;
  swift_unknownObjectWeakAssign();
  return swift_unknownObjectRelease();
}

void (*sub_245FD4510(uint64_t *a1))(uint64_t a1, char a2)
{
  if (MEMORY[0x277D84FD8])
  {
    v3 = swift_coroFrameAlloc();
  }

  else
  {
    v3 = malloc(0x30uLL);
  }

  v4 = v3;
  *a1 = v3;
  *(v3 + 40) = v1;
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  v6 = *(v1 + 104);
  *(v4 + 24) = Strong;
  *(v4 + 32) = v6;
  return sub_245FD45A4;
}

void sub_245FD45A4(uint64_t a1, char a2)
{
  v3 = *a1;
  *(*(*a1 + 40) + 104) = *(*a1 + 32);
  swift_unknownObjectWeakAssign();
  if (a2)
  {
    swift_unknownObjectRelease();
    swift_endAccess();
  }

  else
  {
    swift_endAccess();
    swift_unknownObjectRelease();
  }

  free(v3);
}

uint64_t sub_245FD4634(_BYTE *a1)
{
  v1 = sub_245FD0F78(a1);
  v4 = v1 & (v3 == 0);
  if (HIDWORD(v1))
  {
    v4 = 0;
  }

  return v4 & ((v2 | ((v2 & 0x100) >> 8)) ^ 1u);
}

uint64_t sub_245FD4674(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = &v21 - v7;
  v9 = type metadata accessor for PhotogrammetrySession.Request(0);
  v10 = *(v9 - 8);
  v11 = MEMORY[0x28223BE20](v9);
  v13 = &v21 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v10 + 48))(a1, 1, v9, v11) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A4B8, &unk_246097ED8);
    v14 = sub_245FF8528(a2);
    if (v15)
    {
      v16 = v14;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v18 = *v3;
      v22 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FFA164();
        v18 = v22;
      }

      sub_245FFE800(*(v18 + 56) + *(v10 + 72) * v16, v8, type metadata accessor for PhotogrammetrySession.Request);
      sub_245FF96F0(v16, v18);
      *v3 = v18;
      (*(v10 + 56))(v8, 0, 1, v9);
    }

    else
    {
      (*(v10 + 56))(v8, 1, 1, v9);
    }

    return sub_245F8E744(v8, &qword_27EE3A4B8, &unk_246097ED8);
  }

  else
  {
    sub_245FFE800(a1, v13, type metadata accessor for PhotogrammetrySession.Request);
    v19 = swift_isUniquelyReferenced_nonNull_native();
    v22 = *v3;
    result = sub_245FF9A30(v13, a2, v19);
    *v3 = v22;
  }

  return result;
}

unint64_t sub_245FD48C8(__int128 *a1, uint64_t a2)
{
  v3 = v2;
  if (*(a1 + 3) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3A510, &qword_246098378);
    v5 = sub_245FF8590(a2);
    if (v6)
    {
      v7 = v5;
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v9 = *v2;
      v15 = *v3;
      if (!isUniquelyReferenced_nonNull_native)
      {
        sub_245FFA398();
        v9 = v15;
      }

      v10 = (*(v9 + 56) + 32 * v7);
      v11 = v10[1];
      v17 = *v10;
      v18 = v11;
      sub_245FF98C0(v7, v9);
      *v3 = v9;
    }

    else
    {
      v17 = 0uLL;
      *&v18 = 0;
      *(&v18 + 1) = 1;
    }

    return sub_245F8E744(&v17, &qword_27EE3A510, &qword_246098378);
  }

  else
  {
    v12 = a1[1];
    v17 = *a1;
    v18 = v12;
    v13 = swift_isUniquelyReferenced_nonNull_native();
    v16 = *v2;
    result = sub_245FF9B7C(&v17, a2, v13);
    *v2 = v16;
  }

  return result;
}

uint64_t sub_245FD49D4(unsigned __int8 *a1, unsigned __int8 *a2)
{
  v2 = *(a1 + 2);
  v3 = a1[24];
  v4 = a1[25];
  v5 = *(a1 + 2);
  v6 = *a1 | (*(a1 + 1) << 32);
  if (v4)
  {
    v7 = 256;
  }

  else
  {
    v7 = 0;
  }

  if (a2[25])
  {
    v8 = 256;
  }

  else
  {
    v8 = 0;
  }

  return sub_245FFBC68(v6, v5, v2, v7 | v3, *a2 | (*(a2 + 1) << 32), *(a2 + 2), *(a2 + 2), v8 | a2[24]);
}

uint64_t sub_245FD4A48(uint64_t a1, _BYTE *a2)
{
  v28[3] = *MEMORY[0x277D85DE8];
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = v28 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = v28 - v8;
  MEMORY[0x28223BE20](v10);
  v11 = sub_245FD0F78(a2);
  v13 = v12;
  v28[2] = 0;
  v14 = sub_246091674();
  v15 = CPGSnapshotInfoLoadFromURL();

  if (v15)
  {
    v16 = sub_245FA31EC();
    (*(v4 + 16))(v6, v16, v3);
    v17 = sub_2460918D4();
    v18 = sub_246091FB4();
    if (os_log_type_enabled(v17, v18))
    {
      v19 = swift_slowAlloc();
      *v19 = 0;
      _os_log_impl(&dword_245F8A000, v17, v18, "Failed to load snapshot info from snapshot URL!", v19, 2u);
      MEMORY[0x24C1989D0](v19, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
LABEL_11:
    v26 = 2;
    goto LABEL_12;
  }

  v20 = CPGSessionOptionsCreate();
  v21 = CPGSfmOptionsCreate();
  if (!v20 || !v21)
  {
    v22 = sub_245FA31EC();
    (*(v4 + 16))(v9, v22, v3);
    v23 = sub_2460918D4();
    v24 = sub_246091FB4();
    if (os_log_type_enabled(v23, v24))
    {
      v25 = swift_slowAlloc();
      *v25 = 0;
      _os_log_impl(&dword_245F8A000, v23, v24, "Failed to create CPG session options and sfm options!", v25, 2u);
      MEMORY[0x24C1989D0](v25, -1, -1);
    }

    (*(v4 + 8))(v9, v3);
    CPGSfmOptionsRelease();
    CPGSessionOptionsRelease();
    goto LABEL_11;
  }

  sub_245FFCCA4(v11 & 1, HIDWORD(v11), v13, v20, v21);
  v26 = CPGSnapshotInfoCheckSessionOptionsCompatibility();
  CPGSfmOptionsRelease();
  CPGSessionOptionsRelease();
LABEL_12:
  CPGSnapshotInfoRelease();
  return v26;
}

uint64_t sub_245FD4EA4()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v4 = sub_246091674();
  v5 = CPGSnapshotInfoLoadFromURL();

  if (v5)
  {
    v6 = sub_245FA31EC();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_2460918D4();
    v8 = sub_246091FB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = 2;
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v7, v8, "Failed to load snapshot info from snapshot URL!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);

      (*(v1 + 8))(v3, v0);
    }

    else
    {

      (*(v1 + 8))(v3, v0);
      return 2;
    }
  }

  else
  {
    v9 = CPGSnapshotInfoCheckDeviceCompatibility();
    CPGSnapshotInfoRelease();
  }

  return v9;
}

uint64_t sub_245FD5098()
{
  v12[1] = *MEMORY[0x277D85DE8];
  v0 = sub_2460918F4();
  v1 = *(v0 - 8);
  MEMORY[0x28223BE20](v0);
  v3 = v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12[0] = 0;
  v4 = sub_246091674();
  v5 = CPGSnapshotInfoLoadFromURL();

  if (v5)
  {
    v6 = sub_245FA31EC();
    (*(v1 + 16))(v3, v6, v0);
    v7 = sub_2460918D4();
    v8 = sub_246091FB4();
    if (os_log_type_enabled(v7, v8))
    {
      v9 = swift_slowAlloc();
      *v9 = 0;
      _os_log_impl(&dword_245F8A000, v7, v8, "Failed to load snapshot info from snapshot URL!", v9, 2u);
      MEMORY[0x24C1989D0](v9, -1, -1);
    }

    (*(v1 + 8))(v3, v0);
    return 0;
  }

  else
  {
    NumberOfSamples = CPGSnapshotInfoGetNumberOfSamples();
    CPGSnapshotInfoRelease();
    return NumberOfSamples;
  }
}

unint64_t sub_245FD5270(_BYTE *a1)
{
  v2 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v2 - 8);
  v4 = &v24[-v3];
  v5 = sub_246091704();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v24[-((v7 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v9);
  v30 = &v24[-v10];
  v27 = *(type metadata accessor for MemoryLogger() + 88);
  v27(0xD00000000000002FLL, 0x800000024609FC10);
  v11 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  sub_245F8E7A4(&a1[*(v11 + 32)], v4, &qword_27EE3A498, &unk_246097EB8);
  if ((*(v6 + 48))(v4, 1, v5) == 1)
  {
    sub_245F8E744(v4, &qword_27EE3A498, &unk_246097EB8);
    v12 = a1;
    v13 = 0x800000024609FC40;
    sub_245FFCF7C();
    swift_allocError();
    *v14 = 0xD000000000000018;
    *(v14 + 8) = 0x800000024609FC40;
    *(v14 + 16) = 0;
    swift_willThrow();
    sub_245FFEA30(v12, type metadata accessor for PhotogrammetrySession.Configuration);
  }

  else
  {
    v15 = v30;
    (*(v6 + 32))(v30, v4, v5);
    v26 = a1;
    v16 = sub_245FD0F78(a1);
    v25 = v17;
    v19 = v18;
    v13 = v20;
    (*(v6 + 16))(v8, v15, v5);
    v21 = v29;
    v22 = (*(v28 + 584))(v8, v16 & 0xFFFFFFFF00000001, v25, v19, v13 & 0x101);
    if (!v21)
    {
      v13 = v22;
      v27(0xD000000000000032, 0x800000024609FC60);
    }

    sub_245FFEA30(v26, type metadata accessor for PhotogrammetrySession.Configuration);
    (*(v6 + 8))(v30, v5);
  }

  return v13;
}

uint64_t sub_245FD55FC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, __int16 a5)
{
  v7 = a3;
  v10 = swift_allocObject();
  sub_245FD5680(a1, a2 & 0xFFFFFFFF00000001, v7, a4, a5 & 0x101);
  return v10;
}

uint64_t sub_245FD5680(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v58 = a5;
  v57 = a4;
  v61 = a3;
  v56 = a2;
  v59 = a1;
  v60 = HIDWORD(a2);
  v51 = sub_246092034();
  v65 = *(v51 - 8);
  MEMORY[0x28223BE20](v51);
  v47 = v46 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_246092004();
  MEMORY[0x28223BE20](v8);
  v9 = sub_246091A64();
  MEMORY[0x28223BE20](v9 - 8);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 112) = 1008981770;
  *(v5 + 120) = 0;
  v10 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v11 = sub_246091704();
  v54 = v11;
  v53 = *(v11 - 8);
  v55 = v11 - 8;
  v52 = v53;
  v12 = *(v53 + 56);
  v12(v6 + v10, 1, 1, v11);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v12(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v11);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v13 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v6 + v13) = sub_2460251F8();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v50 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v49 = sub_245F90360();
  v48 = "guration completed";
  sub_246091A54();
  *&v62[0] = MEMORY[0x277D84F90];
  v46[2] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v46[1] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v46[3] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v14 = *MEMORY[0x277D85260];
  v15 = *(v65 + 104);
  v65 += 104;
  v46[0] = v15;
  v16 = v47;
  v17 = v51;
  v15(v47, v14, v51);
  *(v6 + v50) = sub_246092074();
  v50 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v48 = ".queues.serial.addsample";
  sub_246091A34();
  *&v62[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  (v46[0])(v16, v14, v17);
  *(v6 + v50) = sub_246092074();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v18 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v19 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v19 - 8) + 56))(v6 + v18, 1, 1, v19);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v20 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v62[0]) = 0;
  *(v6 + v20) = sub_24608FD48(v62);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v21 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v62);
  v22 = v62[7];
  *(v21 + 96) = v62[6];
  *(v21 + 112) = v22;
  *(v21 + 128) = v63;
  v23 = v62[3];
  *(v21 + 32) = v62[2];
  *(v21 + 48) = v23;
  v24 = v62[5];
  *(v21 + 64) = v62[4];
  *(v21 + 80) = v24;
  v25 = v62[1];
  *v21 = v62[0];
  *(v21 + 16) = v25;
  v26 = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v27 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v64 = 1;
  *v27 = 0u;
  *(v27 + 16) = 0u;
  *(v27 + 32) = 0u;
  *(v27 + 48) = 0u;
  *(v27 + 64) = 1;
  v28 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v6 + v28) = sub_245FFBED8(v26);
  v29 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v6 + v29) = sub_245FFC018(v26);
  v30 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v6 + v30) = sub_245FFC124(v26);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v26;
  v31 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v6 + v31) = sub_245FFC244(v26);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v32 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LODWORD(v65) = v56 & 1;
  *v32 = v56 & 1;
  v33 = v61;
  *(v32 + 4) = v60;
  *(v32 + 8) = v33;
  v34 = v57;
  *(v32 + 16) = v57;
  v35 = v58;
  LOBYTE(v12) = v58 & 1;
  *(v32 + 24) = v58 & 1;
  v36 = (v35 >> 8) & 1;
  *(v32 + 25) = BYTE1(v35) & 1;
  v37 = swift_allocObject();
  swift_weakInit();
  v38 = v52;
  v39 = (*(v52 + 80) + 24) & ~*(v52 + 80);
  v40 = (*(v53 + 64) + v39 + 7) & 0xFFFFFFFFFFFFFFF8;
  v41 = swift_allocObject();
  *(v41 + 16) = v37;
  (*(v38 + 32))(v41 + v39, v59, v54);
  v42 = v41 + v40;
  *v42 = v65;
  v43 = v61;
  *(v42 + 4) = v60;
  *(v42 + 8) = v43;
  *(v42 + 16) = v34;
  *(v42 + 24) = v12;
  *(v42 + 25) = v36;
  type metadata accessor for PGManager.SessionInitializer();
  v44 = swift_allocObject();
  *(v44 + 32) = 0;
  *(v44 + 16) = sub_245FFD0D8;
  *(v44 + 24) = v41;
  *(v6 + 120) = v44;

  return v6;
}

uint64_t sub_245FD5F50(uint64_t a1, char *a2, unint64_t a3, int a4, uint64_t a5, int a6)
{
  v96 = a6;
  v95 = a5;
  v94 = a4;
  v93 = a3;
  v107 = a2;
  v114 = *MEMORY[0x277D85DE8];
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v92 = &v85 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v98 = &v85 - v9;
  MEMORY[0x28223BE20](v10);
  v97 = &v85 - v11;
  v108 = sub_246091704();
  v106 = *(v108 - 8);
  MEMORY[0x28223BE20](v108);
  v13 = &v85 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = sub_2460918F4();
  v15 = *(v14 - 8);
  MEMORY[0x28223BE20](v14);
  v90 = &v85 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v17);
  v100 = &v85 - v18;
  MEMORY[0x28223BE20](v19);
  v21 = &v85 - v20;
  MEMORY[0x28223BE20](v22);
  v24 = &v85 - v23;
  v25 = sub_245FA31EC();
  v26 = *(v15 + 16);
  v102 = v25;
  v103 = v26;
  v104 = v15 + 16;
  (v26)(v24);
  v27 = sub_2460918D4();
  v28 = sub_246091FC4();
  if (os_log_type_enabled(v27, v28))
  {
    v29 = v15;
    v30 = swift_slowAlloc();
    *v30 = 0;
    _os_log_impl(&dword_245F8A000, v27, v28, "Initializer thunk: Starting initialization...", v30, 2u);
    v31 = v30;
    v15 = v29;
    MEMORY[0x24C1989D0](v31, -1, -1);
  }

  v33 = *(v15 + 8);
  v32 = v15 + 8;
  v105 = v33;
  v33(v24, v14);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (!Strong)
  {
    v103(v21, v102, v14);
    v59 = sub_2460918D4();
    v60 = sub_246091FB4();
    if (os_log_type_enabled(v59, v60))
    {
      v61 = swift_slowAlloc();
      *v61 = 0;
      _os_log_impl(&dword_245F8A000, v59, v60, "Initializer thunk: Failed to initialize since self is nil", v61, 2u);
      MEMORY[0x24C1989D0](v61, -1, -1);
    }

    v62 = v21;
    return v105(v62, v14);
  }

  v35 = Strong;
  v99 = v32;
  v36 = v14;
  v37 = v106;
  v38 = v100;
  v103(v100, v102, v36);
  v39 = *(v37 + 2);
  v40 = v108;
  v39(v13, v107, v108);
  v41 = sub_2460918D4();
  v89 = sub_246091FC4();
  v42 = os_log_type_enabled(v41, v89);
  v91 = v36;
  if (v42)
  {
    v43 = v93;
    v86 = HIDWORD(v93);
    v44 = swift_slowAlloc();
    v88 = v39;
    v45 = v44;
    v87 = swift_slowAlloc();
    v113 = v87;
    *v45 = 136380931;
    sub_245FFF308(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
    v46 = sub_2460923D4();
    v48 = v47;
    v49 = v13;
    v50 = *(v37 + 1);
    v50(v49, v108);
    v51 = sub_245F8D3C0(v46, v48, &v113);

    *(v45 + 4) = v51;
    *(v45 + 12) = 2082;
    LOBYTE(v109) = v43 & 1;
    HIDWORD(v109) = v86;
    v110 = v94;
    v111 = v95;
    v112 = v96 & 0x101;
    v52 = sub_246091C54();
    v54 = sub_245F8D3C0(v52, v53, &v113);
    v40 = v108;

    *(v45 + 14) = v54;
    _os_log_impl(&dword_245F8A000, v41, v89, "Backend Manager: Initializing with snapshot URL = %{private}s and configuration = %{public}s", v45, 0x16u);
    v55 = v87;
    swift_arrayDestroy();
    MEMORY[0x24C1989D0](v55, -1, -1);
    v56 = v45;
    v39 = v88;
    MEMORY[0x24C1989D0](v56, -1, -1);

    v57 = v100;
    v58 = v91;
  }

  else
  {

    v64 = v13;
    v50 = *(v37 + 1);
    v50(v64, v40);
    v57 = v38;
    v58 = v36;
  }

  v105(v57, v58);
  *(v35 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;

  v65 = v97;
  v39(v97, v107, v40);
  (*(v37 + 7))(v65, 0, 1, v40);
  v66 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
  swift_beginAccess();
  sub_245F97BAC(v65, v35 + v66, &qword_27EE3A498, &unk_246097EB8);
  swift_endAccess();
  *(v35 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;

  type metadata accessor for SegmentIDConverter();
  *(v35 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter) = sub_2460251F8();

  v67 = v108;
  v68 = v98;
  sub_245F8E7A4(v35 + v66, v98, &qword_27EE3A498, &unk_246097EB8);
  v69 = *(v37 + 6);
  result = v69(v68, 1, v67);
  v70 = v101;
  if (result == 1)
  {
    __break(1u);
LABEL_28:
    __break(1u);
    return result;
  }

  sub_246090F3C();
  if (v70)
  {

    return (v50)(v68, v67);
  }

  v107 = v106 + 8;
  v50(v68, v67);
  v106 = [objc_opt_self() defaultManager];
  v71 = v35 + v66;
  v72 = v92;
  sub_245F8E7A4(v71, v92, &qword_27EE3A498, &unk_246097EB8);
  result = v69(v72, 1, v67);
  if (result == 1)
  {
    goto LABEL_28;
  }

  sub_2460916F4();
  v73 = sub_246091BD4();

  v50(v72, v67);
  v109 = 0;
  v74 = v106;
  v75 = [v106 contentsOfDirectoryAtPath:v73 error:&v109];

  v76 = v109;
  v14 = v91;
  if (v75)
  {
    v77 = sub_246091DD4();
    v78 = v76;

    v79 = *(v77 + 16);

    if (v79)
    {
      sub_245FE44C0();
    }

    else
    {
      sub_245FE356C();
      sub_245FE4A74();
      sub_245FE588C();
    }

    v80 = type metadata accessor for MemoryLogger();
    (*(v80 + 88))(0xD000000000000043, 0x80000002460A0EB0);
    v103(v90, v102, v14);
    v81 = sub_2460918D4();
    v82 = sub_246091FC4();
    if (os_log_type_enabled(v81, v82))
    {
      v83 = swift_slowAlloc();
      *v83 = 0;
      _os_log_impl(&dword_245F8A000, v81, v82, "... done Initializer thunk.", v83, 2u);
      MEMORY[0x24C1989D0](v83, -1, -1);
    }

    else
    {
    }

    v62 = v90;
    return v105(v62, v14);
  }

  v84 = v109;
  sub_2460915D4();

  swift_willThrow();
}

uint64_t sub_245FD69FC(uint64_t a1, _BYTE *a2)
{
  v34 = a1;
  v3 = sub_246091704();
  v33 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v8 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v11 = v27 - v10;
  v12 = type metadata accessor for MemoryLogger();
  v13 = *(v12 + 88);
  v27[1] = v12;
  v28 = v13;
  v13(0xD00000000000003ELL, 0x800000024609FD00);
  v14 = type metadata accessor for PhotogrammetrySession.Configuration(0);
  sub_245F8E7A4(&a2[*(v14 + 32)], v11, &qword_27EE3A498, &unk_246097EB8);
  v31 = a2;
  v15 = sub_245FD0F78(a2);
  v29 = v16;
  v18 = v17;
  v20 = v19;
  v21 = *(v33 + 16);
  v32 = v3;
  v21(v5, v34, v3);
  sub_245F8E7A4(v11, v8, &qword_27EE3A498, &unk_246097EB8);
  type metadata accessor for PGManager(0);
  v22 = swift_allocObject();
  v23 = v30;
  v24 = v18;
  v25 = v22;
  sub_245FD6CB8(v5, v8, v15 & 0xFFFFFFFF00000001, v29, v24, v20 & 0x101);
  if (!v23)
  {
    v28(0xD000000000000041, 0x800000024609FD40);
  }

  sub_245FFEA30(v31, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v33 + 8))(v34, v32);
  sub_245F8E744(v11, &qword_27EE3A498, &unk_246097EB8);
  return v25;
}

uint64_t sub_245FD6CB8(uint64_t a1, uint64_t a2, unint64_t a3, int a4, uint64_t a5, unsigned int a6)
{
  v7 = v6;
  v61 = a6;
  v60 = a5;
  v65 = a4;
  v59 = a3;
  v62 = a2;
  v63 = a1;
  v64 = HIDWORD(a3);
  v54 = sub_246092034();
  v8 = *(v54 - 8);
  MEMORY[0x28223BE20](v54);
  v53 = v49 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246092004();
  MEMORY[0x28223BE20](v10);
  v11 = sub_246091A64();
  MEMORY[0x28223BE20](v11 - 8);
  *(v6 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v6 + 112) = 1008981770;
  *(v6 + 120) = 0;
  v12 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v13 = sub_246091704();
  v58 = v13;
  v56 = *(v13 - 8);
  v57 = v13 - 8;
  v55 = v56;
  v14 = *(v56 + 56);
  v14(v7 + v12, 1, 1, v13);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v14(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v13);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v15 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v7 + v15) = sub_2460251F8();
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v52 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v51 = sub_245F90360();
  v50 = "guration completed";
  sub_246091A54();
  *&v66[0] = MEMORY[0x277D84F90];
  v49[2] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v49[1] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v49[3] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v16 = *MEMORY[0x277D85260];
  v17 = *(v8 + 104);
  v49[0] = v8 + 104;
  v18 = v53;
  v19 = v54;
  v17(v53, v16, v54);
  *(v7 + v52) = sub_246092074();
  v52 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v50 = ".queues.serial.addsample";
  sub_246091A34();
  *&v66[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v17(v18, v16, v19);
  *(v7 + v52) = sub_246092074();
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v20 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v21 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v21 - 8) + 56))(v7 + v20, 1, 1, v21);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v22 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v66[0]) = 0;
  *(v7 + v22) = sub_24608FD48(v66);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v23 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v66);
  v24 = v66[7];
  *(v23 + 96) = v66[6];
  *(v23 + 112) = v24;
  *(v23 + 128) = v67;
  v25 = v66[3];
  *(v23 + 32) = v66[2];
  *(v23 + 48) = v25;
  v26 = v66[5];
  *(v23 + 64) = v66[4];
  *(v23 + 80) = v26;
  v27 = v66[1];
  *v23 = v66[0];
  *(v23 + 16) = v27;
  v28 = MEMORY[0x277D84F90];
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v29 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v68 = 1;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 1;
  v30 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v7 + v30) = sub_245FFBED8(v28);
  v31 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v7 + v31) = sub_245FFC018(v28);
  v32 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v7 + v32) = sub_245FFC124(v28);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v28;
  v33 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v7 + v33) = sub_245FFC244(v28);
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v7 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v34 = v7 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LODWORD(v59) = v59 & 1;
  *v34 = v59;
  v35 = v65;
  *(v34 + 4) = v64;
  *(v34 + 8) = v35;
  v36 = v60;
  *(v34 + 16) = v60;
  v37 = v61;
  LOBYTE(v19) = v61 & 1;
  *(v34 + 24) = v61 & 1;
  LODWORD(v8) = (v37 >> 8) & 1;
  *(v34 + 25) = BYTE1(v37) & 1;
  v38 = swift_allocObject();
  swift_weakInit();
  v39 = *(sub_245F8E624(&qword_27EE3A498, &unk_246097EB8) - 8);
  v40 = (*(v39 + 80) + 24) & ~*(v39 + 80);
  v41 = v55;
  v42 = (v40 + *(v39 + 64) + *(v55 + 80)) & ~*(v55 + 80);
  v43 = (*(v56 + 64) + v42 + 7) & 0xFFFFFFFFFFFFFFF8;
  v44 = swift_allocObject();
  *(v44 + 16) = v38;
  sub_245FC5914(v62, v44 + v40, &qword_27EE3A498, &unk_246097EB8);
  (*(v41 + 32))(v44 + v42, v63, v58);
  v45 = v44 + v43;
  *v45 = v59;
  v46 = v65;
  *(v45 + 4) = v64;
  *(v45 + 8) = v46;
  *(v45 + 16) = v36;
  *(v45 + 24) = v19;
  *(v45 + 25) = v8;
  type metadata accessor for PGManager.SessionInitializer();
  v47 = swift_allocObject();
  *(v47 + 32) = 0;
  *(v47 + 16) = sub_245FFF16C;
  *(v47 + 24) = v44;
  *(v7 + 120) = v47;

  return v7;
}

uint64_t sub_245FD75F8(uint64_t a1, uint64_t a2, uint64_t a3, unint64_t a4, int a5, uint64_t a6, int a7)
{
  v112 = a7;
  v111 = a6;
  v110 = a5;
  v109 = a4;
  v119 = a3;
  v120 = a2;
  v7 = sub_246091704();
  v127 = *(v7 - 8);
  v128 = v7;
  MEMORY[0x28223BE20](v7);
  v113 = &v98 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v9);
  v117 = &v98 - v10;
  MEMORY[0x28223BE20](v11);
  v115 = &v98 - v12;
  v13 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v13 - 8);
  v118 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v116 = &v98 - v16;
  MEMORY[0x28223BE20](v17);
  v19 = &v98 - v18;
  v20 = sub_2460918F4();
  v21 = *(v20 - 8);
  MEMORY[0x28223BE20](v20);
  v108 = &v98 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v23);
  v114 = &v98 - v24;
  MEMORY[0x28223BE20](v25);
  v27 = &v98 - v26;
  MEMORY[0x28223BE20](v28);
  v30 = &v98 - v29;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  v34 = sub_245FA31EC();
  v35 = v21;
  v36 = *(v21 + 16);
  v123 = v34;
  v124 = v36;
  v125 = v21 + 16;
  v126 = v20;
  (v36)(v33);
  v37 = sub_2460918D4();
  v38 = sub_246091FC4();
  if (os_log_type_enabled(v37, v38))
  {
    v39 = v27;
    v40 = swift_slowAlloc();
    *v40 = 0;
    _os_log_impl(&dword_245F8A000, v37, v38, "Initializer thunk: Starting initialization...", v40, 2u);
    v41 = v40;
    v27 = v39;
    MEMORY[0x24C1989D0](v41, -1, -1);
  }

  v42 = *(v35 + 8);
  v121 = v35 + 8;
  v122 = v42;
  v43 = v126;
  v42(v33, v126);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v45 = Strong;
    sub_245F8E7A4(v120, v19, &qword_27EE3A498, &unk_246097EB8);
    v47 = v127;
    v46 = v128;
    v48 = *(v127 + 48);
    v107 = v127 + 48;
    v106 = v48;
    if (v48(v19, 1, v128) == 1)
    {
      sub_245F8E744(v19, &qword_27EE3A498, &unk_246097EB8);
      v104 = 0;
      v49 = 0xE000000000000000;
    }

    else
    {
      v104 = sub_246091604();
      v49 = v54;
      (*(v47 + 8))(v19, v46);
    }

    v124(v27, v123, v43);
    v55 = v115;
    v105 = *(v47 + 16);
    v105(v115, v119, v46);

    v56 = sub_2460918D4();
    v57 = sub_246091FC4();

    v103 = v57;
    if (os_log_type_enabled(v56, v57))
    {
      v58 = v109;
      v100 = HIDWORD(v109);
      v59 = swift_slowAlloc();
      v102 = swift_slowAlloc();
      v135 = v102;
      *v59 = 136381187;
      sub_245FFF308(&qword_27EE3A000, MEMORY[0x277CC9260], MEMORY[0x277CC9290]);
      v99 = v56;
      v60 = sub_2460923D4();
      v101 = v27;
      v62 = v61;
      v115 = *(v127 + 8);
      (v115)(v55, v46);
      v63 = sub_245F8D3C0(v60, v62, &v135);

      *(v59 + 4) = v63;
      *(v59 + 12) = 2081;
      v64 = sub_245F8D3C0(v104, v49, &v135);

      *(v59 + 14) = v64;
      *(v59 + 22) = 2082;
      v130 = v58 & 1;
      v131 = v100;
      v132 = v110;
      v133 = v111;
      v134 = v112 & 0x101;
      v65 = sub_246091C54();
      v67 = sub_245F8D3C0(v65, v66, &v135);
      v46 = v128;

      *(v59 + 24) = v67;
      v68 = v99;
      _os_log_impl(&dword_245F8A000, v99, v103, "Backend Manager: Initializing with images URL = %{private}s, snapshotURL = %{private}s and configuration = %{public}s", v59, 0x20u);
      v69 = v102;
      swift_arrayDestroy();
      MEMORY[0x24C1989D0](v69, -1, -1);
      MEMORY[0x24C1989D0](v59, -1, -1);

      v70 = v101;
      v71 = v126;
    }

    else
    {

      v115 = *(v127 + 8);
      (v115)(v55, v46);
      v70 = v27;
      v71 = v43;
    }

    v122(v70, v71);
    v72 = v116;
    v73 = v119;
    v74 = v105;
    v105(v116, v119, v46);
    (*(v127 + 56))(v72, 0, 1, v46);
    v75 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
    swift_beginAccess();
    sub_245F97BAC(v72, v45 + v75, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    type metadata accessor for ObjectCaptureImageFolderReader(0);
    v76 = v117;
    v74(v117, v73, v128);
    *(v45 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = ObjectCaptureImageFolderReader.__allocating_init(url:)(v76);

    v77 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    v78 = v45 + v77;
    v79 = v120;
    sub_245FFF298(v120, v78);
    swift_endAccess();
    *(v45 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;

    v80 = v118;
    v81 = v128;
    sub_245F8E7A4(v79, v118, &qword_27EE3A498, &unk_246097EB8);
    if (v106(v80, 1, v81) == 1)
    {
      sub_245F8E744(v80, &qword_27EE3A498, &unk_246097EB8);
    }

    else
    {
      v88 = v113;
      (*(v127 + 32))(v113, v80, v81);
      v89 = v129;
      sub_246090F3C();
      v129 = v89;
      if (v89)
      {
        (v115)(v88, v81);
      }

      if ((sub_246090F38(v88) & 1) == 0)
      {
        sub_245FFD204();
        v96 = swift_allocError();
        *v97 = 0;
        *(v97 + 8) = 1;
        v129 = v96;
        swift_willThrow();

        return (v115)(v88, v81);
      }

      (v115)(v88, v81);
    }

    v82 = sub_245FE31E4();
    v83 = OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData;
    *(v45 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = v82 & 1;
    v84 = v114;
    v124(v114, v123, v126);

    v85 = sub_2460918D4();
    v86 = sub_246091FC4();
    if (os_log_type_enabled(v85, v86))
    {
      v87 = swift_slowAlloc();
      *v87 = 67240192;
      *(v87 + 4) = *(v45 + v83);

      _os_log_impl(&dword_245F8A000, v85, v86, "Backend Manager: ImageURL contains area mode data: %{BOOL,public}d", v87, 8u);
      MEMORY[0x24C1989D0](v87, -1, -1);
    }

    else
    {
    }

    v43 = v126;
    v122(v84, v126);
    v90 = v129;
    sub_245FE356C();
    v129 = v90;
    if (v90)
    {
    }

    v92 = type metadata accessor for MemoryLogger();
    (*(v92 + 88))(0xD00000000000004FLL, 0x80000002460A0E60);
    v124(v108, v123, v43);
    v93 = sub_2460918D4();
    v94 = sub_246091FC4();
    if (os_log_type_enabled(v93, v94))
    {
      v95 = swift_slowAlloc();
      *v95 = 0;
      _os_log_impl(&dword_245F8A000, v93, v94, "... done initializer thunk.", v95, 2u);
      MEMORY[0x24C1989D0](v95, -1, -1);
    }

    else
    {
    }

    v53 = v108;
  }

  else
  {
    v124(v30, v123, v43);
    v50 = sub_2460918D4();
    v51 = sub_246091FB4();
    if (os_log_type_enabled(v50, v51))
    {
      v52 = swift_slowAlloc();
      *v52 = 0;
      _os_log_impl(&dword_245F8A000, v50, v51, "Initializer thunk: Failed to initialize since self is nil", v52, 2u);
      MEMORY[0x24C1989D0](v52, -1, -1);
    }

    v53 = v30;
  }

  return (v122)(v53, v43);
}

uint64_t sub_245FD826C(uint64_t a1, _BYTE *a2, uint64_t a3)
{
  v6 = *(a3 - 8);
  MEMORY[0x28223BE20](a1);
  v8 = &v20 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = *(type metadata accessor for MemoryLogger() + 88);
  v21(0xD00000000000003CLL, 0x800000024609FD90);
  v24 = a2;
  v9 = sub_245FD0F78(a2);
  v22 = v10;
  v12 = v11;
  LOWORD(a2) = v13;
  v14 = *(v6 + 16);
  v25 = a1;
  v14(v8, a1, a3);
  sub_245F8E624(&qword_27EE3A4B0, &qword_246097ED0);
  swift_dynamicCast();
  v15 = v26;
  type metadata accessor for PGManager(0);
  v16 = swift_allocObject();
  v17 = a2 & 0x101;
  v18 = v23;
  sub_245FD8488(v15, v9 & 0xFFFFFFFF00000001, v22, v12, v17);
  if (!v18)
  {
    v21(0xD00000000000003FLL, 0x800000024609FDD0);
  }

  sub_245FFEA30(v24, type metadata accessor for PhotogrammetrySession.Configuration);
  (*(v6 + 8))(v25, a3);
  return v16;
}

uint64_t sub_245FD8488(uint64_t a1, unint64_t a2, int a3, uint64_t a4, unsigned int a5)
{
  v6 = v5;
  v52 = a5;
  v51 = a4;
  v50 = a3;
  v48 = a2;
  v53 = a1;
  v49 = HIDWORD(a2);
  v47 = sub_246092034();
  v7 = *(v47 - 8);
  MEMORY[0x28223BE20](v47);
  v9 = v43 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_246092004();
  MEMORY[0x28223BE20](v10);
  v11 = sub_246091A64();
  MEMORY[0x28223BE20](v11 - 8);
  v43[5] = v43 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  *(v5 + 24) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 40) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 56) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 72) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 88) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 104) = 0;
  swift_unknownObjectWeakInit();
  *(v5 + 112) = 1008981770;
  *(v5 + 120) = 0;
  v13 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
  v14 = sub_246091704();
  v15 = *(*(v14 - 8) + 56);
  v15(v6 + v13, 1, 1, v14);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;
  v15(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, 1, 1, v14);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = 0;
  v16 = OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter;
  type metadata accessor for SegmentIDConverter();
  *(v6 + v16) = sub_2460251F8();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isImageURLFreeformData) = 0;
  v46 = OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue;
  v45 = sub_245F90360();
  v44 = "guration completed";
  sub_246091A54();
  *&v54[0] = MEMORY[0x277D84F90];
  v43[3] = sub_245FFF308(&qword_27EE3A9D0, MEMORY[0x277D85230], MEMORY[0x277D85238]);
  v43[2] = sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  v43[4] = sub_245FFD28C(&qword_27EE3A9E0, &unk_27EE3A230, &qword_246096660);
  sub_2460921A4();
  v17 = *MEMORY[0x277D85260];
  v18 = *(v7 + 104);
  v43[1] = v7 + 104;
  v19 = v47;
  v18(v9, v17, v47);
  *(v6 + v46) = sub_246092074();
  v46 = OBJC_IVAR____TtC6CoreOC9PGManager_processQueue;
  v44 = ".queues.serial.addsample";
  sub_246091A34();
  *&v54[0] = MEMORY[0x277D84F90];
  sub_2460921A4();
  v18(v9, v17, v19);
  *(v6 + v46) = sub_246092074();
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet) = MEMORY[0x277D84FA0];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_adjustedProgressBase) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleProgressBound) = 1036831949;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameRequestProgressBound) = 1063675494;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = 0;
  v20 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
  v21 = type metadata accessor for PhotogrammetrySession.Request(0);
  (*(*(v21 - 8) + 56))(v6 + v20, 1, 1, v21);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isOneTimeOutputEmitted) = 0;
  v22 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
  sub_245F8E624(&qword_27EE3A4A8, &qword_246097EC8);
  LOBYTE(v54[0]) = 0;
  *(v6 + v22) = sub_24608FD48(v54);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_session) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_processingCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_finalizeInputCallbackBundle) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_baseFrameCPGRequest) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap) = 0;
  v23 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_reCenterTransform;
  sub_245F97B40(v54);
  v24 = v54[7];
  *(v23 + 96) = v54[6];
  *(v23 + 112) = v24;
  *(v23 + 128) = v55;
  v25 = v54[3];
  *(v23 + 32) = v54[2];
  *(v23 + 48) = v25;
  v26 = v54[5];
  *(v23 + 64) = v54[4];
  *(v23 + 80) = v26;
  v27 = v54[1];
  *v23 = v54[0];
  *(v23 + 16) = v27;
  v28 = MEMORY[0x277D84F90];
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_pointCloud) = MEMORY[0x277D84F90];
  v29 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_orientedBoundsTransform;
  v56 = 1;
  *v29 = 0u;
  *(v29 + 16) = 0u;
  *(v29 + 32) = 0u;
  *(v29 + 48) = 0u;
  *(v29 + 64) = 1;
  v30 = OBJC_IVAR____TtC6CoreOC9PGManager_posesBySample;
  *(v6 + v30) = sub_245FFBED8(v28);
  v31 = OBJC_IVAR____TtC6CoreOC9PGManager_intrinsicsBySample;
  *(v6 + v31) = sub_245FFC018(v28);
  v32 = OBJC_IVAR____TtC6CoreOC9PGManager_lensDistortionDataBySample;
  *(v6 + v32) = sub_245FFC124(v28);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests) = v28;
  v33 = OBJC_IVAR____TtC6CoreOC9PGManager_requestByCPGRequest;
  *(v6 + v33) = sub_245FFC244(v28);
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated) = 0;
  *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated) = 0;
  v34 = v6 + OBJC_IVAR____TtC6CoreOC9PGManager_configuration;
  LOBYTE(v7) = v48 & 1;
  *v34 = v48 & 1;
  v35 = v49;
  v36 = v50;
  *(v34 + 4) = v49;
  *(v34 + 8) = v36;
  v37 = v51;
  *(v34 + 16) = v51;
  v38 = v52;
  LOBYTE(v9) = v52 & 1;
  *(v34 + 24) = v52 & 1;
  LODWORD(v18) = (v38 >> 8) & 1;
  *(v34 + 25) = BYTE1(v38) & 1;
  v39 = swift_allocObject();
  swift_weakInit();
  v40 = swift_allocObject();
  *(v40 + 16) = v39;
  *(v40 + 24) = v7;
  *(v40 + 28) = v35;
  *(v40 + 32) = v36;
  *(v40 + 40) = v37;
  *(v40 + 48) = v9;
  *(v40 + 49) = v18;
  *(v40 + 56) = v53;
  type metadata accessor for PGManager.SessionInitializer();
  v41 = swift_allocObject();
  *(v41 + 32) = 0;
  *(v41 + 16) = sub_245FFEFA4;
  *(v41 + 24) = v40;
  *(v6 + 120) = v41;

  return v6;
}

uint64_t sub_245FD8C80(uint64_t a1, unint64_t a2, int a3, uint64_t a4, int a5, uint64_t a6)
{
  v62 = a6;
  v60 = a5;
  v59 = a4;
  v58 = a3;
  v57 = a2;
  v6 = sub_245F8E624(&qword_27EE3A498, &unk_246097EB8);
  MEMORY[0x28223BE20](v6 - 8);
  v63 = v55 - v7;
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v61 = v55 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v13 = v55 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = v55 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = v55 - v18;
  v20 = sub_245FA31EC();
  v21 = *(v9 + 16);
  v65 = v20;
  v66 = v21;
  (v21)(v19);
  v22 = sub_2460918D4();
  v23 = sub_246091FC4();
  v24 = os_log_type_enabled(v22, v23);
  v67 = v8;
  if (v24)
  {
    v25 = swift_slowAlloc();
    *v25 = 0;
    _os_log_impl(&dword_245F8A000, v22, v23, "Initializer thunk: Starting initialization...", v25, 2u);
    v26 = v25;
    v8 = v67;
    MEMORY[0x24C1989D0](v26, -1, -1);
  }

  v27 = *(v9 + 8);
  v27(v19, v8);
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v29 = Strong;
    v66(v13, v65, v8);
    v30 = sub_2460918D4();
    v31 = sub_246091FC4();
    v32 = os_log_type_enabled(v30, v31);
    v55[1] = v9 + 8;
    v56 = v27;
    if (v32)
    {
      v33 = v57;
      v55[0] = HIDWORD(v57);
      v34 = swift_slowAlloc();
      v35 = swift_slowAlloc();
      v73 = v35;
      *v34 = 136446210;
      v68 = v33 & 1;
      v69 = v55[0];
      v70 = v58;
      v71 = v59;
      v72 = v60 & 0x101;
      v36 = sub_246091C54();
      v38 = sub_245F8D3C0(v36, v37, &v73);

      *(v34 + 4) = v38;
      _os_log_impl(&dword_245F8A000, v30, v31, "Backend Manager: Initializing from source and configuration = %{public}s", v34, 0xCu);
      sub_245F8E6F4(v35);
      MEMORY[0x24C1989D0](v35, -1, -1);
      MEMORY[0x24C1989D0](v34, -1, -1);

      v56(v13, v67);
    }

    else
    {

      v27(v13, v8);
    }

    *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples) = v62;

    v45 = sub_246091704();
    v46 = *(*(v45 - 8) + 56);
    v47 = v63;
    v46(v63, 1, 1, v45);
    v48 = OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL;
    swift_beginAccess();
    sub_245F97BAC(v47, v29 + v48, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader) = 0;

    v46(v47, 1, 1, v45);
    v49 = OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL;
    swift_beginAccess();
    sub_245F97BAC(v47, v29 + v49, &qword_27EE3A498, &unk_246097EB8);
    swift_endAccess();
    type metadata accessor for SegmentIDConverter();
    *(v29 + OBJC_IVAR____TtC6CoreOC9PGManager_segmentIDConverter) = sub_2460251F8();

    v50 = v64;
    sub_245FE356C();
    if (v50)
    {
    }

    v51 = type metadata accessor for MemoryLogger();
    (*(v51 + 88))(0xD00000000000003DLL, 0x80000002460A0E20);
    v16 = v61;
    v8 = v67;
    v66(v61, v65, v67);
    v52 = sub_2460918D4();
    v53 = sub_246091FC4();
    if (os_log_type_enabled(v52, v53))
    {
      v54 = swift_slowAlloc();
      *v54 = 0;
      _os_log_impl(&dword_245F8A000, v52, v53, "... done initializer thunk.", v54, 2u);
      v16 = v61;
      MEMORY[0x24C1989D0](v54, -1, -1);
    }

    else
    {
    }

    v27 = v56;
  }

  else
  {
    v66(v16, v65, v8);
    v39 = sub_2460918D4();
    v40 = sub_246091FB4();
    if (os_log_type_enabled(v39, v40))
    {
      v41 = v27;
      v42 = swift_slowAlloc();
      *v42 = 0;
      _os_log_impl(&dword_245F8A000, v39, v40, "Initializer thunk: Failed to initialize since self is nil", v42, 2u);
      v43 = v67;
      MEMORY[0x24C1989D0](v42, -1, -1);

      return v41(v16, v43);
    }
  }

  return (v27)(v16, v8);
}

void *sub_245FD934C()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v14 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = *(type metadata accessor for MemoryLogger() + 88);
  v6(0xD00000000000001ELL, 0x800000024609FE10);
  v7 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
  swift_beginAccess();
  if (*(v1 + v7) && (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    v8 = sub_245FA31EC();
    (*(v3 + 16))(v5, v8, v2);
    v9 = sub_2460918D4();
    v10 = sub_246091FB4();
    if (os_log_type_enabled(v9, v10))
    {
      v11 = swift_slowAlloc();
      *v11 = 0;
      _os_log_impl(&dword_245F8A000, v9, v10, "Backend Managercd .. deinit: user did not call close, we do an internal call.", v11, 2u);
      MEMORY[0x24C1989D0](v11, -1, -1);
    }

    v12 = (*(v3 + 8))(v5, v2);
    (*(*v1 + 704))(v12);
  }

  v6(0xD000000000000021, 0x800000024609FE30);
  sub_245F91E84(v1 + 16);
  sub_245F91E84(v1 + 32);
  sub_245F91E84(v1 + 48);
  sub_245F91E84(v1 + 64);
  sub_245F91E84(v1 + 80);
  sub_245F91E84(v1 + 96);

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_imagesURL, &qword_27EE3A498, &unk_246097EB8);

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_snapshotURL, &qword_27EE3A498, &unk_246097EB8);

  sub_245F8E744(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest, &qword_27EE3A4B8, &unk_246097ED8);

  return v1;
}

uint64_t sub_245FD9704()
{
  sub_245FD934C();

  return swift_deallocClassInstance();
}

void sub_245FD975C()
{
  sub_245FDE410(&v4);
  if (v0)
  {
    v1 = v4;
    v2 = v5;
    sub_245FFD204();
    swift_allocError();
    *v3 = v1;
    *(v3 + 8) = v2;
  }
}

uint64_t sub_245FD97BC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v22 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v20 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v20 = *(v7 - 8);
  v21 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v20 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for PhotogrammetrySample(0);
  v11 = *(v10 - 8);
  v12 = *(v11 + 64);
  MEMORY[0x28223BE20](v10 - 8);
  v13 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v14 = swift_allocObject();
  swift_weakInit();
  sub_245FFE868(a1, &v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), type metadata accessor for PhotogrammetrySample);
  v15 = (*(v11 + 80) + 24) & ~*(v11 + 80);
  v16 = swift_allocObject();
  *(v16 + 16) = v14;
  sub_245FFE800(&v20 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0), v16 + v15, type metadata accessor for PhotogrammetrySample);
  aBlock[4] = sub_245FFD25C;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEEC0;
  v17 = _Block_copy(aBlock);
  v18 = v13;

  sub_246091A14();
  v23 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v6, v17);
  _Block_release(v17);

  (*(v22 + 8))(v6, v4);
  (*(v20 + 8))(v9, v21);
}

void sub_245FD9B7C(uint64_t a1, uint64_t *a2)
{
  v75 = a2;
  v2 = type metadata accessor for PhotogrammetrySample(0);
  MEMORY[0x28223BE20](v2 - 8);
  MEMORY[0x28223BE20](v3);
  v74 = (&v71 - v4);
  MEMORY[0x28223BE20](v5);
  v72 = (&v71 - v6);
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v9);
  v11 = &v71 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v71 - v13;
  MEMORY[0x28223BE20](v15);
  MEMORY[0x28223BE20](v16);
  v18 = &v71 - v17;
  MEMORY[0x28223BE20](v19);
  v73 = &v71 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v71 - v22;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v25 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v26 = sub_245FA31EC();
      (*(v8 + 16))(v11, v26, v7);
      v27 = sub_2460918D4();
      v28 = sub_246091FB4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_245F8A000, v27, v28, "Skipped adding sample. Internal manager is closed!", v29, 2u);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v11, v7);
      return;
    }

    sub_245FDE410(&v77);
    if (*(v25 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
    {
      v35 = sub_245FA31EC();
      (*(v8 + 16))(v14, v35, v7);
      v36 = sub_2460918D4();
      v37 = sub_246091FC4();
      if (os_log_type_enabled(v36, v37))
      {
        v38 = swift_slowAlloc();
        *v38 = 0;
        _os_log_impl(&dword_245F8A000, v36, v37, "Process has started, ignoring new samples.", v38, 2u);
        MEMORY[0x24C1989D0](v38, -1, -1);
      }

      else
      {
      }

      (*(v8 + 8))(v14, v7);
      return;
    }

    v39 = v75;
    sub_245FD1F30(v75, 0, 0);
    swift_beginAccess();
    v40 = CPGSessionAddSampleWithCallbacks();
    if (v40)
    {
      v41 = v40;
      v42 = v25;
      v43 = sub_245FA31EC();
      (*(v8 + 16))(v18, v43, v7);
      v44 = v74;
      sub_245FFE868(v39, v74, type metadata accessor for PhotogrammetrySample);
      v45 = sub_2460918D4();
      v46 = sub_246091FB4();
      if (os_log_type_enabled(v45, v46))
      {
        v47 = swift_slowAlloc();
        *v47 = 134349312;
        v48 = v44;
        v49 = *v44;
        sub_245FFEA30(v48, type metadata accessor for PhotogrammetrySample);
        *(v47 + 4) = v49;
        *(v47 + 12) = 1026;
        *(v47 + 14) = v41;
        _os_log_impl(&dword_245F8A000, v45, v46, "Failed to add sample of id = %{public}ld, with error code = %{public}d", v47, 0x12u);
        v50 = v47;
        v39 = v75;
        MEMORY[0x24C1989D0](v50, -1, -1);
      }

      else
      {
        sub_245FFEA30(v44, type metadata accessor for PhotogrammetrySample);
      }

      v53 = v18;
      v25 = v42;
    }

    else
    {
      v51 = *v39;
      swift_beginAccess();
      sub_245FACC10(v76, v51);
      swift_endAccess();
      v52 = sub_245FA31EC();
      v53 = v73;
      (*(v8 + 16))(v73, v52, v7);
      v54 = v72;
      sub_245FFE868(v39, v72, type metadata accessor for PhotogrammetrySample);
      v45 = sub_2460918D4();
      v55 = sub_246091FC4();
      if (os_log_type_enabled(v45, v55))
      {
        v56 = swift_slowAlloc();
        *v56 = 134349056;
        v57 = *v54;
        sub_245FFEA30(v54, type metadata accessor for PhotogrammetrySample);
        *(v56 + 4) = v57;
        v53 = v73;
        _os_log_impl(&dword_245F8A000, v45, v55, "Added sample of id = %{public}ld", v56, 0xCu);
        v58 = v56;
        v39 = v75;
        MEMORY[0x24C1989D0](v58, -1, -1);
      }

      else
      {
        sub_245FFEA30(v54, type metadata accessor for PhotogrammetrySample);
      }
    }

    (*(v8 + 8))(v53, v7);
    CPGSampleRelease();
    v59 = v25;
    sub_245FE5D14(v39);
    v60 = v39[1];
    Width = CVPixelBufferGetWidth(v60);
    Height = CVPixelBufferGetHeight(v60);
    v63 = Width * Height;
    if ((Width * Height) >> 64 == (Width * Height) >> 63)
    {
      if ((v63 & 0x8000000000000000) == 0)
      {
        v64 = OBJC_IVAR____TtC6CoreOC9PGManager_numPixelsAccumulated;
        swift_beginAccess();
        v65 = *(v59 + v64);
        v66 = __CFADD__(v65, v63);
        v67 = v65 + v63;
        if (!v66)
        {
          *(v59 + v64) = v67;
          v68 = OBJC_IVAR____TtC6CoreOC9PGManager_numImagesAccumulated;
          swift_beginAccess();
          v69 = *(v59 + v68);
          v66 = __CFADD__(v69, 1);
          v70 = v69 + 1;
          if (!v66)
          {
            *(v59 + v68) = v70;

            return;
          }

          goto LABEL_34;
        }

LABEL_33:
        __break(1u);
LABEL_34:
        __break(1u);
        return;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_33;
  }

  v30 = sub_245FA31EC();
  (*(v8 + 16))(v23, v30, v7);
  v31 = sub_2460918D4();
  v32 = sub_246091FB4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v77 = v34;
    *v33 = 136380675;
    *(v33 + 4) = sub_245F8D3C0(0x706D617328646461, 0xEC000000293A656CLL, &v77);
    _os_log_impl(&dword_245F8A000, v31, v32, "Backend Manager.%{private}s failed to capture the instance!", v33, 0xCu);
    sub_245F8E6F4(v34);
    MEMORY[0x24C1989D0](v34, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  (*(v8 + 8))(v23, v7);
}

uint64_t sub_245FDA6A0(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460919F4();
  v18 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v6 = &v16 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091A64();
  v16 = *(v7 - 8);
  v17 = v7;
  MEMORY[0x28223BE20](v7);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v11 = swift_allocObject();
  swift_weakInit();
  v12 = swift_allocObject();
  *(v12 + 16) = v11;
  *(v12 + 24) = a1;
  aBlock[4] = sub_245FFD2E4;
  aBlock[5] = v12;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF10;
  v13 = _Block_copy(aBlock);
  v14 = v10;

  sub_246091A14();
  v19 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v9, v6, v13);
  _Block_release(v13);

  (*(v18 + 8))(v6, v4);
  (*(v16 + 8))(v9, v17);
}

void sub_245FDA9A8(uint64_t a1, uint64_t a2)
{
  v114 = a2;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  MEMORY[0x28223BE20](v4);
  v6 = &v97 - v5;
  MEMORY[0x28223BE20](v7);
  v112 = &v97 - v8;
  MEMORY[0x28223BE20](v9);
  v11 = &v97 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v97 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v97 - v16;
  MEMORY[0x28223BE20](v18);
  v20 = &v97 - v19;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v22 = Strong;
    v113 = v2;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v23 = sub_245FA31EC();
      v24 = v113;
      (*(v3 + 16))(v6, v23, v113);
      v25 = sub_2460918D4();
      v26 = sub_246091FB4();
      if (os_log_type_enabled(v25, v26))
      {
        v27 = swift_slowAlloc();
        *v27 = 0;
        _os_log_impl(&dword_245F8A000, v25, v26, "Update VIO camera transform exited. Backend manager is closed.", v27, 2u);
        MEMORY[0x24C1989D0](v27, -1, -1);
      }

      else
      {
      }

      (*(v3 + 8))(v6, v24);
    }

    else
    {
      sub_245FDE410(v124);
      v34 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
      swift_beginAccess();
      if (*(v22 + v34))
      {
        if (*(v114 + 16))
        {
          v35 = CPGSampleCameraTransformMapCreate();
          if (v35)
          {
            v103 = v35;
            v100 = v34;
            v36 = *(v114 + 64);
            v105 = v114 + 64;
            v37 = 1 << *(v114 + 32);
            if (v37 < 64)
            {
              v38 = ~(-1 << v37);
            }

            else
            {
              v38 = -1;
            }

            v39 = v38 & v36;
            v40 = OBJC_IVAR____TtC6CoreOC9PGManager_sampleIdSet;

            v110 = v40;
            swift_beginAccess();
            v41 = v39;
            LODWORD(v101) = 0;
            v42 = 0;
            v104 = (v37 + 63) >> 6;
            v102 = (v3 + 16);
            v43 = (v3 + 8);
            *&v44 = 134349314;
            v99 = v44;
LABEL_18:
            while (v41)
            {
              v45 = v41;
LABEL_24:
              v41 = (v45 - 1) & v45;
              v47 = *(v22 + v110);
              if (*(v47 + 16))
              {
                v48 = __clz(__rbit64(v45)) | (v42 << 6);
                v49 = *(*(v114 + 48) + 8 * v48);
                v50 = (*(v114 + 56) + (v48 << 6));
                v51 = v50[1];
                v106 = *v50;
                v107 = v51;
                v52 = v50[3];
                v108 = v50[2];
                v109 = v52;
                v111 = v41;
                v53 = sub_2460924F4();
                v41 = v111;
                v54 = -1 << *(v47 + 32);
                v55 = v53 & ~v54;
                if ((*(v47 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55))
                {
                  v56 = ~v54;
                  while (*(*(v47 + 48) + 8 * v55) != v49)
                  {
                    v55 = (v55 + 1) & v56;
                    if (((*(v47 + 56 + ((v55 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v55) & 1) == 0)
                    {
                      goto LABEL_18;
                    }
                  }

                  if (v49 < 0)
                  {
LABEL_50:
                    __break(1u);
                    return;
                  }

                  sub_246021188(v124, v106, v107, v108, v109);
                  v120 = v124[4];
                  v121 = v124[5];
                  v122 = v124[6];
                  v123 = v124[7];
                  v116 = v124[0];
                  v117 = v124[1];
                  v118 = v124[2];
                  v119 = v124[3];
                  v57 = CPGSampleCameraTransformMapAddBySampleID();
                  v58 = sub_245FA31EC();
                  v59 = *v102;
                  if (v57)
                  {
                    v59(v14, v58, v113);
                    v60 = sub_2460918D4();
                    v61 = sub_246091FB4();
                    if (os_log_type_enabled(v60, v61))
                    {
                      v62 = swift_slowAlloc();
                      v98 = v43;
                      v63 = v62;
                      v97 = swift_slowAlloc();
                      v115 = v97;
                      *v63 = v99;
                      *(v63 + 4) = v49;
                      *(v63 + 12) = 2082;
                      v116 = v106;
                      v117 = v107;
                      v118 = v108;
                      v119 = v109;
                      type metadata accessor for simd_float4x4(0);
                      v64 = sub_246091C54();
                      v66 = sub_245F8D3C0(v64, v65, &v115);
                      *&v109.f64[0] = v60;
                      v67 = v66;

                      *(v63 + 14) = v67;
                      v68 = v61;
                      v69 = v109.f64[0];
                      _os_log_impl(&dword_245F8A000, *&v109.f64[0], v68, "Failed to update to map sample of id = %{public}ld with updated VIO transform = %{public}s", v63, 0x16u);
                      v70 = v97;
                      sub_245F8E6F4(v97);
                      MEMORY[0x24C1989D0](v70, -1, -1);
                      v71 = v63;
                      v43 = v98;
                      MEMORY[0x24C1989D0](v71, -1, -1);
                    }

                    else
                    {
                    }

                    (*v43)(v14, v113);
                    v41 = v111;
                  }

                  else
                  {
                    v59(v17, v58, v113);
                    v72 = sub_2460918D4();
                    v73 = sub_246091FC4();
                    if (os_log_type_enabled(v72, v73))
                    {
                      v74 = swift_slowAlloc();
                      v98 = v43;
                      v75 = v74;
                      v101 = swift_slowAlloc();
                      v115 = v101;
                      *v75 = v99;
                      *(v75 + 4) = v49;
                      *(v75 + 12) = 2082;
                      v116 = v106;
                      v117 = v107;
                      v118 = v108;
                      v119 = v109;
                      type metadata accessor for simd_float4x4(0);
                      v76 = sub_246091C54();
                      v78 = sub_245F8D3C0(v76, v77, &v115);
                      *&v109.f64[0] = v72;
                      v79 = v73;
                      v80 = v78;

                      *(v75 + 14) = v80;
                      v81 = v79;
                      v72 = *&v109.f64[0];
                      _os_log_impl(&dword_245F8A000, *&v109.f64[0], v81, "Updated to map sample of id = %{public}ld with updated VIO transform = %{public}s", v75, 0x16u);
                      v82 = v101;
                      sub_245F8E6F4(v101);
                      MEMORY[0x24C1989D0](v82, -1, -1);
                      v83 = v75;
                      v43 = v98;
                      MEMORY[0x24C1989D0](v83, -1, -1);
                    }

                    (*v43)(v17, v113);
                    LODWORD(v101) = 1;
                    v41 = v111;
                  }
                }
              }
            }

            while (1)
            {
              v46 = v42 + 1;
              if (__OFADD__(v42, 1))
              {
                __break(1u);
                goto LABEL_50;
              }

              if (v46 >= v104)
              {
                break;
              }

              v45 = *(v105 + 8 * v46);
              ++v42;
              if (v45)
              {
                v42 = v46;
                goto LABEL_24;
              }
            }

            if (v101)
            {
              v84 = v43;
              updated = CPGSessionUpdateSampleCameraTransforms();
              v86 = sub_245FA31EC();
              v87 = *v102;
              if (updated)
              {
                v89 = v112;
                v88 = v113;
                v87(v112, v86, v113);
                v90 = sub_2460918D4();
                v91 = sub_246091FB4();
                if (os_log_type_enabled(v90, v91))
                {
                  v92 = swift_slowAlloc();
                  *v92 = 0;
                  _os_log_impl(&dword_245F8A000, v90, v91, "Failed to update the sample camera transform map", v92, 2u);
                  MEMORY[0x24C1989D0](v92, -1, -1);
                }

                (*v84)(v89, v88);
              }

              else
              {
                v93 = v113;
                v87(v11, v86, v113);
                v94 = sub_2460918D4();
                v95 = sub_246091FC4();
                if (os_log_type_enabled(v94, v95))
                {
                  v96 = swift_slowAlloc();
                  *v96 = 0;
                  _os_log_impl(&dword_245F8A000, v94, v95, "Success to update the sample camera transform map", v96, 2u);
                  MEMORY[0x24C1989D0](v96, -1, -1);
                }

                (*v84)(v11, v93);
              }
            }

            CPGSampleCameraTransformMapRelease();
          }
        }
      }
    }
  }

  else
  {
    v28 = sub_245FA31EC();
    (*(v3 + 16))(v20, v28, v2);
    v29 = sub_2460918D4();
    v30 = sub_246091FB4();
    v31 = v2;
    if (os_log_type_enabled(v29, v30))
    {
      v32 = swift_slowAlloc();
      v33 = swift_slowAlloc();
      *&v124[0].f64[0] = v33;
      *v32 = 136380675;
      *(v32 + 4) = sub_245F8D3C0(0xD00000000000002DLL, 0x80000002460A0DF0, v124);
      _os_log_impl(&dword_245F8A000, v29, v30, "Backend Manager.%{private}s failed to capture the instance!", v32, 0xCu);
      sub_245F8E6F4(v33);
      MEMORY[0x24C1989D0](v33, -1, -1);
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    (*(v3 + 8))(v20, v31);
  }
}

uint64_t sub_245FDB4D8(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v24 = a4;
  v25 = a5;
  v22 = a2;
  v23 = a3;
  v8 = sub_2460919F4();
  v28 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v10 = &v22 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v11 = sub_246091A64();
  v26 = *(v11 - 8);
  v27 = v11;
  MEMORY[0x28223BE20](v11);
  v13 = &v22 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *(v6 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v15 = swift_allocObject();
  swift_weakInit();
  v16 = swift_allocObject();
  *(v16 + 16) = v15;
  *(v16 + 24) = a1;
  v17 = v23;
  *(v16 + 32) = v22;
  *(v16 + 48) = v17;
  v18 = v25;
  *(v16 + 64) = v24;
  *(v16 + 80) = v18;
  aBlock[4] = sub_245FFD324;
  aBlock[5] = v16;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF60;
  v19 = _Block_copy(aBlock);
  v20 = v14;

  sub_246091A14();
  v29 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v13, v10, v19);
  _Block_release(v19);

  (*(v28 + 8))(v10, v8);
  (*(v26 + 8))(v13, v27);
}

uint64_t sub_245FDB7F0(uint64_t a1, unint64_t a2, float32x4_t a3, float32x4_t a4, float32x4_t a5, float32x4_t a6)
{
  v76 = a6;
  v75 = a5;
  v74 = a4;
  v73 = a3;
  v72 = a2;
  v84 = *MEMORY[0x277D85DE8];
  v6 = sub_2460918F4();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  MEMORY[0x28223BE20](v8);
  v10 = &v71 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = &v71 - v12;
  MEMORY[0x28223BE20](v14);
  v16 = &v71 - v15;
  MEMORY[0x28223BE20](v17);
  v19 = &v71 - v18;
  MEMORY[0x28223BE20](v20);
  v22 = &v71 - v21;
  MEMORY[0x28223BE20](v23);
  v25 = &v71 - v24;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v27 = Strong;
    v77 = v6;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v28 = sub_245FA31EC();
      v29 = v77;
      (*(v7 + 16))(v10, v28, v77);
      v30 = sub_2460918D4();
      v31 = sub_246091FB4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        *v32 = 0;
        _os_log_impl(&dword_245F8A000, v30, v31, "Update bounding box exited. Backend manager is closed.", v32, 2u);
        MEMORY[0x24C1989D0](v32, -1, -1);
      }

      else
      {
      }

      return (*(v7 + 8))(v10, v29);
    }

    else
    {
      sub_245FDE410(&v79);
      v40 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
      v41 = swift_beginAccess();
      v42 = v72;
      if (*(v27 + v40) && (v72 & 0x8000000000000000) == 0 && (sub_246021E38(v41, v73, v74, v75, v76) & 1) != 0)
      {
        v83 = 0;
        sub_246021188(&v79, v73, v74, v75, v76);
        if (CPGBoundingBoxCreateFromTransform())
        {
          v43 = sub_245FA31EC();
          v44 = v77;
          (*(v7 + 16))(v16, v43, v77);
          v45 = sub_2460918D4();
          v46 = sub_246091FB4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            *v47 = 0;
            _os_log_impl(&dword_245F8A000, v45, v46, "Failed to create bounding box from transform.", v47, 2u);
            MEMORY[0x24C1989D0](v47, -1, -1);
          }

          else
          {
          }

          return (*(v7 + 8))(v16, v44);
        }

        else
        {
          if (v42 >> 31)
          {
            __break(1u);
          }

          updated = CPGSessionUpdateBoundingBoxBySegmentID();
          v58 = sub_245FA31EC();
          v59 = *(v7 + 16);
          if (updated)
          {
            v59(v19, v58, v77);
            v60 = sub_2460918D4();
            v61 = sub_246091FB4();
            if (os_log_type_enabled(v60, v61))
            {
              v62 = swift_slowAlloc();
              *v62 = 0;
              _os_log_impl(&dword_245F8A000, v60, v61, "Failed to update bounding box by segment ID.", v62, 2u);
              MEMORY[0x24C1989D0](v62, -1, -1);
            }

            (*(v7 + 8))(v19, v77);
          }

          else
          {
            v63 = v77;
            v59(v22, v58, v77);
            v64 = sub_2460918D4();
            v65 = sub_246091FC4();
            if (os_log_type_enabled(v64, v65))
            {
              v66 = swift_slowAlloc();
              v67 = swift_slowAlloc();
              v78 = v67;
              *v66 = 136446466;
              v79 = v73;
              v80 = v74;
              v81 = v75;
              v82 = v76;
              type metadata accessor for simd_float4x4(0);
              v68 = sub_246091C54();
              v70 = sub_245F8D3C0(v68, v69, &v78);

              *(v66 + 4) = v70;
              *(v66 + 12) = 2050;
              *(v66 + 14) = v72;
              _os_log_impl(&dword_245F8A000, v64, v65, "Successfully updated bounding box transform = %{public}s for segmentID = %{public}ld", v66, 0x16u);
              sub_245F8E6F4(v67);
              MEMORY[0x24C1989D0](v67, -1, -1);
              MEMORY[0x24C1989D0](v66, -1, -1);
            }

            (*(v7 + 8))(v22, v63);
          }

          CPGBoundingBoxRelease();
        }
      }

      else
      {
        v48 = sub_245FA31EC();
        v49 = v77;
        (*(v7 + 16))(v13, v48, v77);
        v50 = sub_2460918D4();
        v51 = sub_246091FB4();
        if (os_log_type_enabled(v50, v51))
        {
          v52 = swift_slowAlloc();
          v53 = swift_slowAlloc();
          v83 = v53;
          *v52 = 134349314;
          *(v52 + 4) = v42;
          *(v52 + 12) = 2082;
          v79 = v73;
          v80 = v74;
          v81 = v75;
          v82 = v76;
          type metadata accessor for simd_float4x4(0);
          v54 = sub_246091C54();
          v56 = sub_245F8D3C0(v54, v55, &v83);

          *(v52 + 14) = v56;
          _os_log_impl(&dword_245F8A000, v50, v51, "Invalid argument segmentID = %{public}ld or bounding box transform = %{public}s", v52, 0x16u);
          sub_245F8E6F4(v53);
          MEMORY[0x24C1989D0](v53, -1, -1);
          MEMORY[0x24C1989D0](v52, -1, -1);
        }

        else
        {
        }

        return (*(v7 + 8))(v13, v49);
      }
    }
  }

  else
  {
    v33 = sub_245FA31EC();
    (*(v7 + 16))(v25, v33, v6);
    v34 = sub_2460918D4();
    v35 = sub_246091FB4();
    v36 = v6;
    if (os_log_type_enabled(v34, v35))
    {
      v37 = swift_slowAlloc();
      v38 = swift_slowAlloc();
      *&v79.f64[0] = v38;
      *v37 = 136380675;
      *(v37 + 4) = sub_245F8D3C0(0xD00000000000003BLL, 0x80000002460A0DB0, &v79);
      _os_log_impl(&dword_245F8A000, v34, v35, "Backend Manager.%{private}s failed to capture the instance!", v37, 0xCu);
      sub_245F8E6F4(v38);
      MEMORY[0x24C1989D0](v38, -1, -1);
      MEMORY[0x24C1989D0](v37, -1, -1);
    }

    return (*(v7 + 8))(v25, v36);
  }
}

uint64_t sub_245FDC264()
{
  v1 = v0;
  v2 = sub_2460919F4();
  v30 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v4 = &v26 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_246091A64();
  v28 = *(v5 - 8);
  v29 = v5;
  MEMORY[0x28223BE20](v5);
  v7 = &v26 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245FA31EC();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    v16 = swift_slowAlloc();
    v27 = v4;
    v17 = v2;
    v18 = v1;
    v19 = v16;
    aBlock[0] = v16;
    *v15 = 136380675;
    *(v15 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, aBlock);
    _os_log_impl(&dword_245F8A000, v13, v14, "Backend Manager.%{private}s called.", v15, 0xCu);
    sub_245F8E6F4(v19);
    v20 = v19;
    v1 = v18;
    v2 = v17;
    v4 = v27;
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v15, -1, -1);
  }

  (*(v9 + 8))(v11, v8);
  v21 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v22 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD334;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DEF88;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  sub_246091A14();
  v31 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v7, v4, v23);
  _Block_release(v23);

  (*(v30 + 8))(v4, v2);
  (*(v28 + 8))(v7, v29);
}

uint64_t sub_245FDC6E0(uint64_t a1)
{
  v1 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v1);
  v3 = &v48 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  MEMORY[0x28223BE20](v6);
  v8 = &v48 - v7;
  MEMORY[0x28223BE20](v9);
  v11 = &v48 - v10;
  MEMORY[0x28223BE20](v12);
  v14 = &v48 - v13;
  MEMORY[0x28223BE20](v15);
  v17 = &v48 - v16;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v19 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
    {
      v20 = sub_245FA31EC();
      (*(v5 + 16))(v8, v20, v4);
      v21 = sub_2460918D4();
      v22 = sub_246091FB4();
      if (os_log_type_enabled(v21, v22))
      {
        v23 = swift_slowAlloc();
        *v23 = 0;
        _os_log_impl(&dword_245F8A000, v21, v22, "Finalize input exited. Backend manager is closed.", v23, 2u);
        MEMORY[0x24C1989D0](v23, -1, -1);
      }

      else
      {
      }

      return (*(v5 + 8))(v8, v4);
    }

    else
    {
      sub_245FDE410(&v49);
      v30 = OBJC_IVAR____TtC6CoreOC9PGManager_processStarted;
      v31 = *(v19 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted);
      v32 = sub_245FA31EC();
      v33 = *(v5 + 16);
      if (v31)
      {
        v33(v11, v32, v4);
        v34 = sub_2460918D4();
        v35 = sub_246091FC4();
        if (os_log_type_enabled(v34, v35))
        {
          v36 = swift_slowAlloc();
          *v36 = 0;
          _os_log_impl(&dword_245F8A000, v34, v35, "Process has started, the input must have been finalized.", v36, 2u);
          MEMORY[0x24C1989D0](v36, -1, -1);
        }

        else
        {
        }

        return (*(v5 + 8))(v11, v4);
      }

      else
      {
        v33(v14, v32, v4);
        v37 = sub_2460918D4();
        v38 = sub_246091FC4();
        if (os_log_type_enabled(v37, v38))
        {
          v39 = swift_slowAlloc();
          v48 = swift_slowAlloc();
          v49 = v48;
          *v39 = 136380675;
          *(v39 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, &v49);
          _os_log_impl(&dword_245F8A000, v37, v38, "Backend Manager.%{private}s happened", v39, 0xCu);
          v40 = v48;
          sub_245F8E6F4(v48);
          MEMORY[0x24C1989D0](v40, -1, -1);
          MEMORY[0x24C1989D0](v39, -1, -1);
        }

        v41 = (*(v5 + 8))(v14, v4);
        if ((*(v19 + v30) & 1) == 0)
        {
          *(v19 + v30) = 1;
          if ((*(*v19 + 464))(v41))
          {
            v43 = v42;
            ObjectType = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            (*(v43 + 8))(v3, ObjectType, v43);
            swift_unknownObjectRelease();
            sub_245FFEA30(v3, type metadata accessor for PhotogrammetrySession.Output);
          }
        }

        swift_beginAccess();
        if (CPGSessionFinalizeInput() && (*(*v19 + 536))())
        {
          v46 = v45;
          v47 = swift_getObjectType();
          (*(v46 + 8))(0, 0, 1, v47, v46);

          return swift_unknownObjectRelease();
        }

        else
        {
        }
      }
    }
  }

  else
  {
    v24 = sub_245FA31EC();
    (*(v5 + 16))(v17, v24, v4);
    v25 = sub_2460918D4();
    v26 = sub_246091FB4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v49 = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_245F8D3C0(0x657A696C616E6966, 0xEF29287475706E49, &v49);
      _os_log_impl(&dword_245F8A000, v25, v26, "Backend Manager.%{private}s failed to capture the instance!", v27, 0xCu);
      sub_245F8E6F4(v28);
      MEMORY[0x24C1989D0](v28, -1, -1);
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    return (*(v5 + 8))(v17, v4);
  }
}

void sub_245FDCF18(uint64_t a1)
{
  v2 = sub_2460919F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v23 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_246091A64();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v23 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2460918F4();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v23 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(a1 + 16))
  {
    v24 = v7;
    v25 = v6;
    v26 = v3;
    v14 = sub_245FA31EC();
    (*(v11 + 16))(v13, v14, v10);
    v15 = sub_2460918D4();
    v16 = sub_246091FC4();
    if (os_log_type_enabled(v15, v16))
    {
      v17 = swift_slowAlloc();
      *v17 = 0;
      _os_log_impl(&dword_245F8A000, v15, v16, "process() call is queuing the work item onto the serial processing queue.", v17, 2u);
      MEMORY[0x24C1989D0](v17, -1, -1);
    }

    (*(v11 + 8))(v13, v10);
    v18 = *(v27 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
    v19 = swift_allocObject();
    swift_weakInit();
    v20 = swift_allocObject();
    *(v20 + 16) = v19;
    *(v20 + 24) = a1;
    aBlock[4] = sub_245FFD37C;
    aBlock[5] = v20;
    aBlock[0] = MEMORY[0x277D85DD0];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_245F913A4;
    aBlock[3] = &unk_2858DEFD8;
    v21 = _Block_copy(aBlock);
    v22 = v18;

    sub_246091A14();
    v28 = MEMORY[0x277D84F90];
    sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
    sub_245F8E624(&qword_27EE39F38, &qword_246096680);
    sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
    sub_2460921A4();
    MEMORY[0x24C1969D0](0, v9, v5, v21);
    _Block_release(v21);

    (*(v26 + 8))(v5, v2);
    (*(v24 + 8))(v9, v25);
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_245FDD35C(uint64_t a1, uint64_t a2)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = &v22 - v8;
  v10 = sub_245FA31EC();
  v24 = *(v4 + 16);
  v24(v9, v10, v3);
  v11 = sub_2460918D4();
  v12 = sub_246091FC4();
  if (os_log_type_enabled(v11, v12))
  {
    v13 = swift_slowAlloc();
    v23 = v10;
    v14 = a2;
    v15 = v13;
    *v13 = 0;
    _os_log_impl(&dword_245F8A000, v11, v12, "Beginning queued processing work...", v13, 2u);
    v16 = v15;
    a2 = v14;
    v10 = v23;
    MEMORY[0x24C1989D0](v16, -1, -1);
  }

  v17 = *(v4 + 8);
  v17(v9, v3);
  swift_beginAccess();
  if (swift_weakLoadStrong())
  {
    sub_245FDD5DC(a2);
  }

  v24(v6, v10, v3);
  v18 = sub_2460918D4();
  v19 = sub_246091FC4();
  if (os_log_type_enabled(v18, v19))
  {
    v20 = swift_slowAlloc();
    *v20 = 0;
    _os_log_impl(&dword_245F8A000, v18, v19, "... finished queued processing work.", v20, 2u);
    MEMORY[0x24C1989D0](v20, -1, -1);
  }

  return (v17)(v6, v3);
}

void sub_245FDD5DC(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v30[1] = v30 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  MEMORY[0x28223BE20](v8);
  v10 = v30 - v9;
  v11 = sub_246091AF4();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x28223BE20](v11);
  v15 = (v30 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0));
  v16 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  *v15 = v16;
  (*(v12 + 104))(v15, *MEMORY[0x277D85200], v11, v13);
  v17 = v16;
  LOBYTE(v16) = sub_246091B24();
  (*(v12 + 8))(v15, v11);
  if ((v16 & 1) == 0)
  {
    __break(1u);
    goto LABEL_10;
  }

  v31 = a1;
  sub_245FE8EF8(a1, &v35);
  v18 = v35;
  v19 = v36;
  v20 = v37;
  v21 = v38;

  sub_245FDE258(v22);

  v33 = 0;
  v34 = 256;
  v23 = v2[15];
  if (!v23)
  {
LABEL_10:
    __break(1u);
    return;
  }

  if (*(v23 + 32) == 3)
  {

    v24 = sub_245FA31EC();
    v25 = v4;
    (*(v5 + 16))(v10, v24, v4);
    v26 = sub_2460918D4();
    v27 = sub_246091FB4();
    if (os_log_type_enabled(v26, v27))
    {
      v28 = swift_slowAlloc();
      *v28 = 0;
      _os_log_impl(&dword_245F8A000, v26, v27, "The session failed to initialize, so this session cannot be used.", v28, 2u);
      MEMORY[0x24C1989D0](v28, -1, -1);
    }

    (*(v5 + 8))(v10, v25);
    v33 = 2;
    v34 = 1;
  }

  else
  {
    sub_245FDE410(&v35);

    sub_245FDEC78(v29);

    v35 = v18;
    v36 = v19;
    v37 = v20;
    v38 = v21;
    sub_245FDF174(&v35, &v32);
  }

  sub_245FDDBD4(&v33, v2, v31);
}

uint64_t sub_245FDDBD4(uint64_t *a1, void *a2, uint64_t a3)
{
  v64 = type metadata accessor for PhotogrammetrySession.Output(0);
  MEMORY[0x28223BE20](v64);
  v7 = &v58 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = type metadata accessor for PhotogrammetrySession.Request(0);
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8 - 8);
  v11 = &v58 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v58 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v58 - v17;
  if (*(a1 + 9))
  {
    v19 = sub_245FA31EC();
    (*(v13 + 16))(v15, v19, v12);
    v20 = sub_2460918D4();
    v21 = sub_246091FC4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      *v22 = 0;
      _os_log_impl(&dword_245F8A000, v20, v21, "Process work item completed.", v22, 2u);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    return (*(v13 + 8))(v15, v12);
  }

  v61 = *a1;
  LODWORD(v63) = *(a1 + 8);
  v24 = sub_245FA31EC();
  (*(v13 + 16))(v18, v24, v12);
  v25 = sub_2460918D4();
  v26 = sub_246091FB4();
  if (os_log_type_enabled(v25, v26))
  {
    v27 = swift_slowAlloc();
    v66 = v9;
    v28 = a3;
    v29 = v27;
    *v27 = 0;
    _os_log_impl(&dword_245F8A000, v25, v26, "Encountered an error during the process work item... publishing it to all requests and finalizing call.", v27, 2u);
    v30 = v29;
    a3 = v28;
    v9 = v66;
    MEMORY[0x24C1989D0](v30, -1, -1);
  }

  result = (*(v13 + 8))(v18, v12);
  v31 = *(a3 + 16);
  if (v31)
  {
    v32 = v9;
    v33 = (*a2 + 464);
    v34 = *v33;
    v35 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    v59 = OBJC_IVAR____TtC6CoreOC9PGManager_isProcessCancelled;
    v36 = a3 + ((*(v32 + 80) + 32) & ~*(v32 + 80));
    v65 = v32[9];
    v66 = v33;
    v60 = v63 & 1;
    v62 = OBJC_IVAR____TtC6CoreOC9PGManager_isAddSampleCancelled;
    v63 = OBJC_IVAR____TtC6CoreOC9PGManager_requestNum;
    do
    {
      v37 = sub_245FFE868(v36, v11, type metadata accessor for PhotogrammetrySession.Request);
      result = v34(v37);
      v39 = v11;
      if (result)
      {
        v40 = v38;
        ObjectType = swift_getObjectType();
        v42 = v34;
        v43 = &v7[*(sub_245F8E624(&qword_27EE3A548, &unk_246098FB0) + 48)];
        sub_245FFE868(v39, v7, type metadata accessor for PhotogrammetrySession.Request);
        *v43 = v61;
        v43[8] = v60;
        v34 = v42;
        swift_storeEnumTagMultiPayload();
        v44 = ObjectType;
        v35 = v63;
        (*(v40 + 8))(v7, v44, v40);
        swift_unknownObjectRelease();
        result = sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySession.Output);
      }

      v45 = *(a2 + v35);
      v46 = __OFSUB__(v45, 1);
      v47 = v45 - 1;
      if (v46)
      {
        __break(1u);
LABEL_27:
        __break(1u);
        return result;
      }

      *(a2 + v35) = v47;
      if (v47 < 0)
      {
        goto LABEL_27;
      }

      if (v47)
      {
        v11 = v39;
        v48 = v39;
      }

      else
      {

        sub_2460900AC();

        v11 = v39;
        if ((v67[1] & 1) != 0 || *(a2 + v59) == 1)
        {
          if (v34(v49))
          {
            v51 = v50;
            v52 = swift_getObjectType();
            swift_storeEnumTagMultiPayload();
            v53 = v52;
            v35 = v63;
            (*(v51 + 8))(v7, v53, v51);
            swift_unknownObjectRelease();
            sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySession.Output);
          }

          v67[0] = 0;

          sub_2460901B8(v67);

          result = sub_245FFEA30(v39, type metadata accessor for PhotogrammetrySession.Request);
          *(a2 + v59) = 0;
          goto LABEL_10;
        }

        if (v34(v49))
        {
          v55 = v54;
          v56 = swift_getObjectType();
          swift_storeEnumTagMultiPayload();
          v57 = v56;
          v35 = v63;
          (*(v55 + 8))(v7, v57, v55);
          swift_unknownObjectRelease();
          sub_245FFEA30(v7, type metadata accessor for PhotogrammetrySession.Output);
        }

        v48 = v39;
      }

      result = sub_245FFEA30(v48, type metadata accessor for PhotogrammetrySession.Request);
LABEL_10:
      v36 += v65;
      --v31;
    }

    while (v31);
  }

  return result;
}

void sub_245FDE258(uint64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v16 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = sub_245FA31EC();
  (*(v5 + 16))(v7, v8, v4);

  v9 = sub_2460918D4();
  v10 = sub_246091FC4();
  if (os_log_type_enabled(v9, v10))
  {
    v11 = swift_slowAlloc();
    *v11 = 134217984;
    *(v11 + 4) = *(a1 + 16);

    _os_log_impl(&dword_245F8A000, v9, v10, "Anticipating %ld request results.", v11, 0xCu);
    MEMORY[0x24C1989D0](v11, -1, -1);
  }

  else
  {
  }

  (*(v5 + 8))(v7, v4);
  v12 = *(a1 + 16);
  v13 = *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum);
  v14 = __OFADD__(v13, v12);
  v15 = v13 + v12;
  if (v14)
  {
    __break(1u);
  }

  else
  {
    *(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_requestNum) = v15;
    sub_245FE2E78();
  }
}

void sub_245FDE410(uint64_t *a1)
{
  v86 = a1;
  v2 = v1;
  v88 = sub_2460918F4();
  v3 = *(v88 - 8);
  MEMORY[0x28223BE20](v88);
  v84 = &v80 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v80 - v6;
  MEMORY[0x28223BE20](v8);
  v85 = &v80 - v9;
  MEMORY[0x28223BE20](v10);
  v12 = &v80 - v11;
  MEMORY[0x28223BE20](v13);
  v15 = &v80 - v14;
  MEMORY[0x28223BE20](v16);
  v18 = &v80 - v17;
  MEMORY[0x28223BE20](v19);
  v21 = &v80 - v20;
  v22 = *(v2 + 120);
  if (!v22)
  {
    __break(1u);
    goto LABEL_30;
  }

  v23 = *(v22 + 32);
  v24 = sub_245FA31EC();
  v25 = *(v3 + 16);
  if (v23 != 2)
  {
    if (v23 == 3)
    {
      v26 = v88;
      v25(v15, v24, v88);
      v27 = sub_2460918D4();
      v28 = sub_246091FB4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_245F8A000, v27, v28, "Delayed init already failed... not trying again.", v29, 2u);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      (*(v3 + 8))(v15, v26);
      return;
    }

    v81 = v24;
    v82 = v25;
    v34 = v88;
    (v25)(v21);
    v35 = sub_2460918D4();
    v36 = sub_246091FC4();
    if (os_log_type_enabled(v35, v36))
    {
      v37 = swift_slowAlloc();
      *v37 = 0;
      _os_log_impl(&dword_245F8A000, v35, v36, "Running delayed init ...", v37, 2u);
      v38 = v37;
      v34 = v88;
      MEMORY[0x24C1989D0](v38, -1, -1);
    }

    v39 = *(v3 + 8);
    v83 = v3 + 8;
    v39(v21, v34);
    if (*(v2 + 120))
    {

      v40 = v87;
      sub_245FE2788();
      if (v40)
      {

        v94 = v40;
        v41 = v40;
        sub_245F8E624(&qword_27EE39F10, &qword_246098FF0);
        if (swift_dynamicCast())
        {

          v42 = v92;
          v43 = v93;
          v44 = v85;
          v82(v85, v81, v34);
          v45 = sub_2460918D4();
          v46 = sub_246091FB4();
          if (os_log_type_enabled(v45, v46))
          {
            v47 = swift_slowAlloc();
            v48 = swift_slowAlloc();
            v89 = v48;
            v90 = v42;
            *v47 = 136315138;
            v91 = v43;
            v49 = sub_246091C54();
            v51 = v43;
            v52 = sub_245F8D3C0(v49, v50, &v89);

            *(v47 + 4) = v52;
            v43 = v51;
            _os_log_impl(&dword_245F8A000, v45, v46, "Error while running delayed init on process queue: %s", v47, 0xCu);
            sub_245F8E6F4(v48);
            MEMORY[0x24C1989D0](v48, -1, -1);
            MEMORY[0x24C1989D0](v47, -1, -1);

            v39(v85, v88);
          }

          else
          {

            v39(v44, v34);
          }

          v79 = v86;
          *v86 = v42;
          *(v79 + 8) = v43;
          v90 = v42;
          v91 = v43;
          sub_245FFD204();
          swift_willThrowTypedImpl();
          v78 = v94;
        }

        else
        {

          v82(v7, v81, v34);
          v59 = v40;
          v60 = sub_2460918D4();
          v61 = sub_246091FB4();

          v62 = os_log_type_enabled(v60, v61);
          v87 = v40;
          if (v62)
          {
            v63 = swift_slowAlloc();
            v85 = v39;
            v64 = v63;
            v65 = swift_slowAlloc();
            v92 = v65;
            *v64 = 136315138;
            v90 = v40;
            v66 = v40;
            v67 = sub_246091C54();
            v69 = sub_245F8D3C0(v67, v68, &v92);

            *(v64 + 4) = v69;
            _os_log_impl(&dword_245F8A000, v60, v61, "Error while running delayed init on process queue: %s", v64, 0xCu);
            sub_245F8E6F4(v65);
            v70 = v65;
            v34 = v88;
            MEMORY[0x24C1989D0](v70, -1, -1);
            v71 = v64;
            v39 = v85;
            MEMORY[0x24C1989D0](v71, -1, -1);
          }

          v39(v7, v34);
          v72 = v84;
          v82(v84, v81, v34);
          v73 = sub_2460918D4();
          v74 = sub_246091FB4();
          if (os_log_type_enabled(v73, v74))
          {
            v75 = swift_slowAlloc();
            *v75 = 0;
            _os_log_impl(&dword_245F8A000, v73, v74, "Using .initError...", v75, 2u);
            v76 = v75;
            v34 = v88;
            MEMORY[0x24C1989D0](v76, -1, -1);
          }

          v39(v72, v34);
          v77 = v86;
          *v86 = 2;
          *(v77 + 8) = 1;
          v92 = 2;
          v93 = 1;
          sub_245FFD204();
          swift_willThrowTypedImpl();
          v78 = v87;
        }
      }

      else
      {

        v82(v18, v81, v34);
        v53 = sub_2460918D4();
        v54 = sub_246091FC4();
        if (os_log_type_enabled(v53, v54))
        {
          v55 = v34;
          v56 = swift_slowAlloc();
          *v56 = 0;
          _os_log_impl(&dword_245F8A000, v53, v54, "... done running delayed init.", v56, 2u);
          MEMORY[0x24C1989D0](v56, -1, -1);

          v57 = v18;
          v58 = v55;
        }

        else
        {

          v57 = v18;
          v58 = v34;
        }

        v39(v57, v58);
      }

      return;
    }

LABEL_30:
    __break(1u);
    return;
  }

  v30 = v88;
  v25(v12, v24, v88);
  v31 = sub_2460918D4();
  v32 = sub_246091FC4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    *v33 = 0;
    _os_log_impl(&dword_245F8A000, v31, v32, "Delayed init already run... skipping.", v33, 2u);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  (*(v3 + 8))(v12, v30);
}

uint64_t sub_245FDEC78(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = aBlock - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v9 = aBlock - v8;
  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v10 = sub_245FA31EC();
    (*(v4 + 16))(v6, v10, v3);
    v11 = sub_2460918D4();
    v12 = sub_246091FB4();
    if (os_log_type_enabled(v11, v12))
    {
      v13 = swift_slowAlloc();
      *v13 = 0;
      _os_log_impl(&dword_245F8A000, v11, v12, "Can't add new samples. Backend manager is closed", v13, 2u);
      MEMORY[0x24C1989D0](v13, -1, -1);
    }

    return (*(v4 + 8))(v6, v3);
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
  {
    v15 = sub_245FA31EC();
    (*(v4 + 16))(v9, v15, v3);
    v16 = sub_2460918D4();
    v17 = sub_246091FC4();
    if (os_log_type_enabled(v16, v17))
    {
      v18 = swift_slowAlloc();
      *v18 = 0;
      _os_log_impl(&dword_245F8A000, v16, v17, "Images have already been added... continuing.", v18, 2u);
      MEMORY[0x24C1989D0](v18, -1, -1);
    }

    return (*(v4 + 8))(v9, v3);
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgInputReader))
  {

    sub_245FE6070(v19, a1);
LABEL_14:
  }

  if (*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_pgSamples))
  {

    sub_245FE6EC8(v20, a1, 0, 1, 0, 1);
    goto LABEL_14;
  }

  v21 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
  v22 = swift_allocObject();
  *(v22 + 16) = sub_245FFEAE4;
  *(v22 + 24) = v1;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v22;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858DF5C8;
  v23 = _Block_copy(aBlock);
  v24 = v21;

  dispatch_sync(v24, v23);

  _Block_release(v23);
  LOBYTE(v23) = swift_isEscapingClosureAtFileLocation();

  if (v23)
  {
    __break(1u);
  }

  return result;
}

void sub_245FDF048(uint64_t a1)
{
  v2 = type metadata accessor for PhotogrammetrySession.Output(0);
  v3 = MEMORY[0x28223BE20](v2);
  v5 = &v9 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) & 1) == 0)
  {
    *(a1 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) = 1;
    if ((*(*a1 + 464))(v3))
    {
      v7 = v6;
      ObjectType = swift_getObjectType();
      swift_storeEnumTagMultiPayload();
      (*(v7 + 8))(v5, ObjectType, v7);
      swift_unknownObjectRelease();
      sub_245FFEA30(v5, type metadata accessor for PhotogrammetrySession.Output);
    }
  }
}

void sub_245FDF174(char **a1, uint64_t *a2)
{
  v98 = a2;
  i = a1;
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v83 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v7);
  v99 = &v83 - v8;
  v89 = sub_246091704();
  v88 = *(v89 - 8);
  MEMORY[0x28223BE20](v89);
  v91 = &v83 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v86 = type metadata accessor for PhotogrammetrySession.Request(0);
  v94 = *(v86 - 8);
  MEMORY[0x28223BE20](v86);
  v90 = &v83 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v95 = &v83 - v12;
  MEMORY[0x28223BE20](v13);
  v15 = (&v83 - v14);
  v16 = sub_245F8E624(&qword_27EE3A590, &qword_246098400);
  v87 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v93 = (&v83 - v17);
  v18 = sub_245F8E624(&qword_27EE3A598, &qword_246098408);
  MEMORY[0x28223BE20](v18 - 8);
  v20 = &v83 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v21);
  v23 = (&v83 - v22);
  v24 = sub_245F8E624(&qword_27EE3A4B8, &unk_246097ED8);
  MEMORY[0x28223BE20](v24 - 8);
  v27 = MEMORY[0x28223BE20](v25);
  v29 = &v83 - v28;
  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
  {
    v30 = sub_245FA31EC();
    v31 = v4;
    (*(v4 + 16))(v6, v30, v3);
    v32 = sub_2460918D4();
    v33 = sub_246091FB4();
    v34 = v31;
    v35 = v6;
    if (os_log_type_enabled(v32, v33))
    {
      v36 = swift_slowAlloc();
      *v36 = 0;
      _os_log_impl(&dword_245F8A000, v32, v33, "Process exited. Backend manager is closed.", v36, 2u);
      MEMORY[0x24C1989D0](v36, -1, -1);
    }

    (*(v34 + 8))(v35, v3);
    return;
  }

  if (*(v2 + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted) != 1)
  {
    v75 = sub_245FA31EC();
    v76 = v4;
    v77 = v99;
    (*(v4 + 16))(v99, v75, v3);
    v78 = sub_2460918D4();
    v79 = sub_246091FB4();
    if (os_log_type_enabled(v78, v79))
    {
      v80 = swift_slowAlloc();
      *v80 = 0;
      _os_log_impl(&dword_245F8A000, v78, v79, "Process has not started.", v80, 2u);
      MEMORY[0x24C1989D0](v80, -1, -1);
    }

    (*(v76 + 8))(v77, v3);
    v81 = 4;
    goto LABEL_40;
  }

  v37 = *i;
  v38 = *(i + 8);
  v97 = *(i + 10);
  v92 = v2;
  v99 = v37;
  if (v38)
  {
    v85 = v26;
    LODWORD(i) = *(i + 9);
    v39 = OBJC_IVAR____TtC6CoreOC9PGManager_firstRequest;
    swift_beginAccess();
    sub_245F8E7A4(v2 + v39, v29, &qword_27EE3A4B8, &unk_246097ED8);
    v40 = v86;
    v84 = *(v94 + 48);
    v41 = v84(v29, 1, v86);
    sub_245F8E744(v29, &qword_27EE3A4B8, &unk_246097ED8);
    if (v41 == 1)
    {
      goto LABEL_42;
    }

    if (i != 7)
    {
      LOBYTE(v100) = i;
      if (sub_245FE9894(&v100))
      {
        v42 = v92 + v39;
        v43 = v85;
        sub_245F8E7A4(v42, v85, &qword_27EE3A4B8, &unk_246097ED8);
        if (v84(v43, 1, v40) == 1)
        {
          goto LABEL_43;
        }

        sub_245FEA118(v43);
        v45 = v44;
        sub_245FFEA30(v43, type metadata accessor for PhotogrammetrySession.Request);
        *(v92 + OBJC_IVAR____TtC6CoreOC9PGManager_modelFileRequestEstimatedTime) = v45;
        v37 = v99;
        goto LABEL_13;
      }
    }

    v81 = 3;
LABEL_40:
    v82 = v98;
    *v98 = v81;
    *(v82 + 8) = 1;
    v100 = v81;
    v101 = 1;
    sub_245FFD204();
    swift_willThrowTypedImpl();
    return;
  }

LABEL_13:
  v46 = 0;
  v47 = *(v37 + 2);
  v86 = OBJC_IVAR____TtC6CoreOC9PGManager_sfmMap;
  v98 = (v87 + 7);
  v48 = (v87 + 6);
  v85 = (v88 + 32);
  v84 = OBJC_IVAR____TtC6CoreOC9PGManager_cachedRequests;
  v87 = (v88 + 8);
  v49 = v89;
  for (i = v47; ; v47 = i)
  {
    if (v46 == v47)
    {
      v50 = 1;
      v46 = v47;
      goto LABEL_20;
    }

    if (v46 >= *(v37 + 2))
    {
      break;
    }

    v51 = &v37[((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v46];
    v52 = *(v16 + 48);
    v53 = v93;
    *v93 = v46;
    sub_245FFE868(v51, v53 + v52, type metadata accessor for PhotogrammetrySession.Request);
    v54 = v53;
    v37 = v99;
    sub_245FC5914(v54, v20, &qword_27EE3A590, &qword_246098400);
    v50 = 0;
    v46 = (v46 + 1);
LABEL_20:
    (*v98)(v20, v50, 1, v16, v27);
    sub_245FC5914(v20, v23, &qword_27EE3A598, &qword_246098408);
    if ((*v48)(v23, 1, v16) == 1)
    {
      return;
    }

    v55 = *v23;
    sub_245FFE800(v23 + *(v16 + 48), v15, type metadata accessor for PhotogrammetrySession.Request);
    if (((v55 == 0) & v97) == 1)
    {
      goto LABEL_14;
    }

    v56 = v95;
    sub_245FFE868(v15, v95, type metadata accessor for PhotogrammetrySession.Request);
    v57 = sub_245F8E624(&qword_27EE3A470, &qword_2460983C0);
    v58 = (*(*(v57 - 8) + 48))(v56, 3, v57);
    if (v58 > 1)
    {
      v37 = v99;
      if (v58 == 2)
      {
        sub_245FEB84C(v15);
      }

      else
      {
        sub_245FEBC1C(v15);
      }

LABEL_14:
      sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Request);
      continue;
    }

    if (v58)
    {
      sub_245FEB48C(v15);
    }

    else
    {
      LODWORD(v88) = *(v95 + *(v57 + 48));
      v59 = (v95 + *(v57 + 64));
      v60 = v59[7];
      v102[6] = v59[6];
      v102[7] = v60;
      v103 = v59[8].i8[0];
      v61 = v59[3];
      v102[2] = v59[2];
      v102[3] = v61;
      v62 = v59[5];
      v102[4] = v59[4];
      v102[5] = v62;
      v63 = v59[1];
      v102[0] = *v59;
      v102[1] = v63;
      v64 = v91;
      (*v85)(v91);
      v66 = v92;
      if (*(v92 + v86))
      {
        LOBYTE(v100) = v88;
        sub_245FEA360(v15, v65, &v100, v102);
        (*v87)(v64, v49);
      }

      else
      {
        sub_245FFE868(v15, v90, type metadata accessor for PhotogrammetrySession.Request);
        v67 = v84;
        swift_beginAccess();
        v68 = *(v67 + v66);
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        *(v67 + v66) = v68;
        if ((isUniquelyReferenced_nonNull_native & 1) == 0)
        {
          v68 = sub_245FF7EC4(0, v68[2] + 1, 1, v68);
          *(v84 + v92) = v68;
        }

        v70 = v91;
        v72 = v68[2];
        v71 = v68[3];
        v73 = v72 + 1;
        if (v72 >= v71 >> 1)
        {
          v88 = v72 + 1;
          v74 = sub_245FF7EC4((v71 > 1), v72 + 1, 1, v68);
          v73 = v88;
          v68 = v74;
        }

        v68[2] = v73;
        sub_245FFE800(v90, v68 + ((*(v94 + 80) + 32) & ~*(v94 + 80)) + *(v94 + 72) * v72, type metadata accessor for PhotogrammetrySession.Request);
        *(v84 + v92) = v68;
        swift_endAccess();
        v49 = v89;
        (*v87)(v70, v89);
      }
    }

    sub_245FFEA30(v15, type metadata accessor for PhotogrammetrySession.Request);
    v37 = v99;
  }

  __break(1u);
LABEL_42:
  __break(1u);
LABEL_43:
  __break(1u);
}

uint64_t sub_245FDFD9C()
{
  v1 = sub_2460919F4();
  v14 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v3 = &v12 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_246091A64();
  v12 = *(v4 - 8);
  v13 = v4;
  MEMORY[0x28223BE20](v4);
  v6 = &v12 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  LOBYTE(aBlock[0]) = 1;

  sub_2460901B8(aBlock);

  v7 = *(v0 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
  v8 = swift_allocObject();
  swift_weakInit();
  aBlock[4] = sub_245FFD384;
  aBlock[5] = v8;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245F913A4;
  aBlock[3] = &unk_2858DF000;
  v9 = _Block_copy(aBlock);
  v10 = v7;

  sub_246091A14();
  v15 = MEMORY[0x277D84F90];
  sub_245FFF308(&qword_27EE3A380, MEMORY[0x277D85198], MEMORY[0x277D851A0]);
  sub_245F8E624(&qword_27EE39F38, &qword_246096680);
  sub_245FFD28C(&qword_27EE3A390, &qword_27EE39F38, &qword_246096680);
  sub_2460921A4();
  MEMORY[0x24C1969D0](0, v6, v3, v9);
  _Block_release(v9);

  (*(v14 + 8))(v3, v1);
  (*(v12 + 8))(v6, v13);
}

uint64_t sub_245FE00AC(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = v36 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = v36 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = v36 - v9;
  MEMORY[0x28223BE20](v11);
  v13 = v36 - v12;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v15 = Strong;
    if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_processStarted))
    {
      if (*(Strong + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed))
      {
        v16 = sub_245FA31EC();
        (*(v2 + 16))(v7, v16, v1);
        v17 = sub_2460918D4();
        v18 = sub_246091FB4();
        if (os_log_type_enabled(v17, v18))
        {
          v19 = swift_slowAlloc();
          *v19 = 0;
          _os_log_impl(&dword_245F8A000, v17, v18, "Skip cancel. Backend manager is closed.", v19, 2u);
          MEMORY[0x24C1989D0](v19, -1, -1);
        }

        (*(v2 + 8))(v7, v1);
      }

      else
      {
        v30 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
        swift_beginAccess();
        if (*(v15 + v30))
        {
          v31 = CPGSessionCancelProcessing();
          if (v31 != -10)
          {
            if (v31)
            {
              v32 = sub_245FA31EC();
              (*(v2 + 16))(v10, v32, v1);
              v33 = sub_2460918D4();
              v34 = sub_246091FB4();
              if (os_log_type_enabled(v33, v34))
              {
                v35 = swift_slowAlloc();
                *v35 = 0;
                _os_log_impl(&dword_245F8A000, v33, v34, "Cancel processing submits but failed", v35, 2u);
                MEMORY[0x24C1989D0](v35, -1, -1);
              }

              (*(v2 + 8))(v10, v1);
            }
          }
        }
      }
    }

    else
    {
      v26 = sub_245FA31EC();
      (*(v2 + 16))(v4, v26, v1);
      v27 = sub_2460918D4();
      v28 = sub_246091FC4();
      if (os_log_type_enabled(v27, v28))
      {
        v29 = swift_slowAlloc();
        *v29 = 0;
        _os_log_impl(&dword_245F8A000, v27, v28, "Process has not started, nothing to cancel.", v29, 2u);
        MEMORY[0x24C1989D0](v29, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
    }
  }

  else
  {
    v20 = sub_245FA31EC();
    (*(v2 + 16))(v13, v20, v1);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v36[0] = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0x29286C65636E6163, 0xE800000000000000, v36);
      _os_log_impl(&dword_245F8A000, v21, v22, "Backend Manager.%{private}s failed to capture the instance!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (*(v2 + 8))(v13, v1);
  }
}

uint64_t sub_245FE0544(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v18 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = sub_245FA31EC();
  (*(v9 + 16))(v11, v12, v8);
  v13 = sub_2460918D4();
  v14 = sub_246091FC4();
  if (os_log_type_enabled(v13, v14))
  {
    v15 = swift_slowAlloc();
    *v15 = 134349056;
    *(v15 + 4) = a2;
    _os_log_impl(&dword_245F8A000, v13, v14, "Processing cancellation status callback with code = %{public}llu", v15, 0xCu);
    MEMORY[0x24C1989D0](v15, -1, -1);
  }

  result = (*(v9 + 8))(v11, v8);
  if (a1)
  {
    if (a4)
    {
      v17 = *(*a4 + 1976);

      v17(a1, a2, a3);
    }
  }

  return result;
}

uint64_t sub_245FE0718()
{
  v1 = v0;
  v2 = sub_2460918F4();
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &aBlock - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_245FA31EC();
  (*(v3 + 16))(v5, v6, v2);
  v7 = sub_2460918D4();
  v8 = sub_246091FC4();
  if (os_log_type_enabled(v7, v8))
  {
    v9 = swift_slowAlloc();
    v10 = swift_slowAlloc();
    aBlock = v10;
    *v9 = 136380675;
    *(v9 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, &aBlock);
    _os_log_impl(&dword_245F8A000, v7, v8, "Backend Manager.%{private}s called", v9, 0xCu);
    sub_245F8E6F4(v10);
    MEMORY[0x24C1989D0](v10, -1, -1);
    MEMORY[0x24C1989D0](v9, -1, -1);
  }

  result = (*(v3 + 8))(v5, v2);
  if ((*(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) & 1) == 0)
  {
    *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_isClosed) = 1;
    v12 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_addSampleQueue);
    v24 = nullsub_1;
    v25 = 0;
    aBlock = MEMORY[0x277D85DD0];
    v21 = 1107296256;
    v22 = sub_245FB4BFC;
    v23 = &unk_2858DF028;
    v13 = _Block_copy(&aBlock);
    v14 = v12;

    dispatch_sync(v14, v13);

    _Block_release(v13);
    result = swift_isEscapingClosureAtFileLocation();
    if (result)
    {
      __break(1u);
    }

    else
    {
      v15 = *(v1 + OBJC_IVAR____TtC6CoreOC9PGManager_processQueue);
      v16 = swift_allocObject();
      swift_weakInit();
      v17 = swift_allocObject();
      *(v17 + 16) = sub_245FFD38C;
      *(v17 + 24) = v16;
      v24 = sub_245FC4C80;
      v25 = v17;
      aBlock = MEMORY[0x277D85DD0];
      v21 = 1107296256;
      v22 = sub_245FB4BFC;
      v23 = &unk_2858DF078;
      v18 = _Block_copy(&aBlock);
      v19 = v15;

      dispatch_sync(v19, v18);

      _Block_release(v18);
      LOBYTE(v18) = swift_isEscapingClosureAtFileLocation();

      if ((v18 & 1) == 0)
      {
        return result;
      }
    }

    __break(1u);
  }

  return result;
}

uint64_t sub_245FE0AD0(uint64_t a1)
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v35 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v35 - v6;
  MEMORY[0x28223BE20](v8);
  v10 = &v35 - v9;
  swift_beginAccess();
  Strong = swift_weakLoadStrong();
  if (Strong)
  {
    v12 = Strong;
    v13 = OBJC_IVAR____TtC6CoreOC9PGManager_session;
    swift_beginAccess();
    if (*(v12 + v13))
    {
      v14 = sub_245FA31EC();
      v37 = *(v2 + 16);
      v37(v7, v14, v1);
      v15 = sub_2460918D4();
      v16 = sub_246091FC4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = swift_slowAlloc();
        v36 = v2;
        v18 = v17;
        v19 = swift_slowAlloc();
        v35 = v14;
        v20 = v19;
        v38 = v19;
        *v18 = 136380675;
        *(v18 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, &v38);
        _os_log_impl(&dword_245F8A000, v15, v16, "Backend Manager.%{private}s happened.", v18, 0xCu);
        sub_245F8E6F4(v20);
        v21 = v20;
        v14 = v35;
        MEMORY[0x24C1989D0](v21, -1, -1);
        v22 = v18;
        v2 = v36;
        MEMORY[0x24C1989D0](v22, -1, -1);
      }

      v23 = *(v2 + 8);
      v23(v7, v1);
      v24 = CPGSessionCancelProcessing();
      if (v24 != -10 && v24 != 0)
      {
        v37(v4, v14, v1);
        v26 = sub_2460918D4();
        v27 = sub_246091FB4();
        if (os_log_type_enabled(v26, v27))
        {
          v28 = swift_slowAlloc();
          *v28 = 0;
          _os_log_impl(&dword_245F8A000, v26, v27, "Unexpected return state for cancel.", v28, 2u);
          MEMORY[0x24C1989D0](v28, -1, -1);
        }

        v23(v4, v1);
      }

      sub_245FEDFE8();
    }
  }

  else
  {
    v30 = sub_245FA31EC();
    (*(v2 + 16))(v10, v30, v1);
    v31 = sub_2460918D4();
    v32 = sub_246091FB4();
    if (os_log_type_enabled(v31, v32))
    {
      v33 = swift_slowAlloc();
      v34 = swift_slowAlloc();
      v39[0] = v34;
      *v33 = 136380675;
      *(v33 + 4) = sub_245F8D3C0(0x292865736F6C63, 0xE700000000000000, v39);
      _os_log_impl(&dword_245F8A000, v31, v32, "Backend Manager.%{private}s failed to capture the instance!", v33, 0xCu);
      sub_245F8E6F4(v34);
      MEMORY[0x24C1989D0](v34, -1, -1);
      MEMORY[0x24C1989D0](v33, -1, -1);
    }

    return (*(v2 + 8))(v10, v1);
  }
}