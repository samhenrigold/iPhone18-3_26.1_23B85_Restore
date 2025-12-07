id sub_1E3FB16FC()
{
  v2.receiver = v0;
  v2.super_class = type metadata accessor for OrdinalListCell();
  return objc_msgSendSuper2(&v2, sel_dealloc);
}

void *sub_1E3FB17BC(double a1, double a2, double a3, double a4, double a5)
{
  OUTLINED_FUNCTION_9_23();
  v11 = v10;
  v12 = (*((*MEMORY[0x1E69E7D40] & *v5) + 0x80))();
  if (v12)
  {
    v13 = v12;
    [v5 vui:v8 sizeThatFits:1.79769313e308];
    v15 = v14;
    v17 = v16;
    sub_1E41A300C(__src);
    sub_1E41A2FE8(v18, v15, v17);
    v19 = *(*v13 + 176);

    v19(v24, v20);

    v21 = v24[0];
    if (v25)
    {
      v21 = 0.0;
    }

    __src[6] = v7 - v21;
    __src[7] = v6;
    __src[8] = 0.0;
    __src[9] = a5;
    return memcpy(v11, __src, 0x50uLL);
  }

  else
  {
    OUTLINED_FUNCTION_6_102();
    result = sub_1E42076B4();
    __break(1u);
  }

  return result;
}

uint64_t sub_1E3FB1A00(void *a1)
{
  v2 = [a1 vuiText];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E4205F14();

  return v3;
}

uint64_t type metadata accessor for ImageViewWithOverlay(uint64_t a1)
{
  result = qword_1EE29D8F0;
  if (!qword_1EE29D8F0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

uint64_t sub_1E3FB1C2C@<X0>(uint64_t a1@<X0>, const void *a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, char a5@<W4>, uint64_t a6@<X5>, uint64_t a7@<X6>, char a8@<W7>, void *a9@<X8>, uint64_t a10, uint64_t a11)
{
  v17 = type metadata accessor for ImageViewWithOverlay(0);
  v18 = v17[9];
  *(a9 + v18) = swift_getKeyPath();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299D8, &qword_1E429C690);
  swift_storeEnumTagMultiPayload();
  v19 = a9 + v17[13];
  type metadata accessor for CGRect(0);
  sub_1E42038E4();
  *v19 = v30;
  *(v19 + 1) = v31;
  *(v19 + 4) = v32;
  *a9 = a1;
  v20 = memcpy(a9 + 1, a2, 0x5BuLL);
  a9[13] = a4;
  a9[14] = a3;
  if (a3 && (sub_1E3741534(v20, v21, v22), (sub_1E4205E84() & 1) != 0))
  {
    result = sub_1E4203DA4();
  }

  else
  {
    result = sub_1E4203D94();
  }

  a9[15] = result;
  a9[16] = v24;
  v25 = (a9 + v17[10]);
  *v25 = a10;
  v25[1] = a11;
  *(a9 + v17[11]) = a5 & 1;
  v26 = a9 + v17[12];
  *v26 = a6;
  *(v26 + 1) = a7;
  v26[16] = a8 & 1;
  return result;
}

uint64_t sub_1E3FB1DA4@<X0>(uint64_t *a1@<X8>)
{
  v2 = v1;
  v117 = type metadata accessor for ImageViewWithOverlay(0);
  OUTLINED_FUNCTION_0_10();
  v109 = v4;
  MEMORY[0x1EEE9AC00](v5);
  v110 = v6;
  v111 = &v100 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D570, &qword_1E42E2340);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v100 - v8;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D578, &qword_1E42E2348);
  OUTLINED_FUNCTION_2();
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v10);
  v119 = &v100 - v11;
  v116 = sub_1E4201CB4();
  OUTLINED_FUNCTION_0_10();
  v115 = v12;
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v100 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29238, &unk_1E42999B0);
  OUTLINED_FUNCTION_0_10();
  v114 = v17;
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v100 - v19;
  v21 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF37758, &qword_1E42CC218);
  OUTLINED_FUNCTION_2();
  MEMORY[0x1EEE9AC00](v22);
  v24 = &v100 - ((v23 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v25);
  v27 = &v100 - v26;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D580, &qword_1E42E2350);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v28);
  v30 = &v100 - v29;
  v32 = v2[15];
  v31 = v2[16];
  v33 = v2[14];
  *a1 = v32;
  a1[1] = v31;
  v121 = a1;
  if (v33)
  {
    v101 = v20;
    v102 = v15;
    v104 = v27;
    v105 = v32;
    v106 = v31;
    v107 = v9;
    v108 = v30;
    v34 = *v2;
    v35 = *(**v2 + 392);
    v113 = v33;

    v37 = v35(v36);
    v38 = 0.0;
    v112 = v21;
    if (v37)
    {
      type metadata accessor for ImageLayout();
      v39 = swift_dynamicCastClass();
      if (v39)
      {
        v40 = v39;
        v41 = *(*v39 + 552);

        v41(&v126, v42);

        v103 = v40;
        if ((v127 & 1) == 0)
        {
          v43 = OUTLINED_FUNCTION_24_0();
          v38 = sub_1E3952BE8(v43, v44, v45, v46);
        }

        goto LABEL_9;
      }
    }

    v103 = 0;
LABEL_9:
    v56 = v117;
    v57 = v116;
    memcpy(__dst, v2 + 1, 0x5BuLL);
    v117 = __dst[1];
    LODWORD(v116) = LOBYTE(__dst[2]);
    v58 = v2[13];
    v59 = v111;
    sub_1E3FB2954(v2, v111);
    v60 = (*(v109 + 80) + 16) & ~*(v109 + 80);
    v61 = swift_allocObject();
    sub_1E3FB29B8(v59, v61 + v60);
    v62 = OUTLINED_FUNCTION_18();
    v63 = v101;
    sub_1E37E8BE8(v34, __dst, v58, v62 & 1, sub_1E3FB2A1C, v61, v101);

    v64 = v102;
    v65 = sub_1E4201C84();
    OUTLINED_FUNCTION_19_0(v65);
    v66 = v104;
    sub_1E4203364();
    OUTLINED_FUNCTION_15_5();
    v67(v64, v57);
    OUTLINED_FUNCTION_15_5();
    v68(v63, v16);
    v69 = v107;
    sub_1E4201394();
    sub_1E325F6F0(v66, &qword_1ECF37758, &qword_1E42CC218);
    sub_1E3AC5824();
    v70 = v2 + v56[13];
    v71 = *(v70 + 4);
    v72 = *(v70 + 1);
    v123 = *v70;
    v124 = v72;
    v125 = v71;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
    sub_1E42038F4();
    LODWORD(v63) = *(v2 + v56[11]);
    v73 = v2 + v56[12];
    v74 = *v73;
    v75 = *(v73 + 1);
    LOBYTE(v73) = v73[16];
    *&v123 = v74;
    *(&v123 + 1) = v75;
    LOBYTE(v124) = v73;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF299C8, &qword_1E42B22C0);
    sub_1E4203AB4();
    v76 = v122[0];
    v77 = v122[1];
    v78 = v69 + *(v120 + 36);
    v79 = OUTLINED_FUNCTION_24_0();
    sub_1E3CCD0F0(v80, v81, v82, v83, v63, v76, v77, v84, v79, v85, v86, v87);

    KeyPath = swift_getKeyPath();
    v89 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF34B00, &unk_1E42E2370) + 36));
    v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF291E0, &qword_1E42AE9A0);
    sub_1E3FB2B1C((v89 + *(v90 + 28)));
    *v89 = KeyPath;
    v91 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D598, &unk_1E42E2380) + 36));
    v92 = *(sub_1E4201534() + 20);
    v93 = *MEMORY[0x1E697F468];
    sub_1E4201C44();
    OUTLINED_FUNCTION_2();
    (*(v94 + 104))(v91 + v92, v93);
    *v91 = v38;
    v91[1] = v38;
    *(v91 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF298B0, &unk_1E42AC0E0) + 36)) = 256;
    v95 = (v78 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D588, &qword_1E42E2358) + 36));
    v96 = v106;
    *v95 = v105;
    v95[1] = v96;
    sub_1E379D7E4(v69, v119, &qword_1ECF3D570, &qword_1E42E2340);
    swift_storeEnumTagMultiPayload();
    sub_1E3FB27F8();
    sub_1E3FB28B0();
    v55 = v108;
    sub_1E4201F44();

    sub_1E325F6F0(v69, &qword_1ECF3D570, &qword_1E42E2340);
    goto LABEL_10;
  }

  v113 = *v2;
  memcpy(__dst, v2 + 1, 0x5BuLL);
  v47 = v2[13];
  v48 = (v2 + *(v117 + 40));
  v49 = *v48;
  v50 = v48[1];
  v51 = OUTLINED_FUNCTION_18();
  sub_1E37E8BE8(v113, __dst, v47, v51 & 1, v49, v50, v20);
  v52 = sub_1E4201C84();
  OUTLINED_FUNCTION_19_0(v52);
  sub_1E4203364();
  OUTLINED_FUNCTION_15_5();
  v53(v15, v116);
  OUTLINED_FUNCTION_15_5();
  v54(v20, v16);
  sub_1E4201394();
  sub_1E325F6F0(v24, &qword_1ECF37758, &qword_1E42CC218);
  sub_1E379D7E4(v27, v119, &qword_1ECF37758, &qword_1E42CC218);
  swift_storeEnumTagMultiPayload();
  sub_1E3FB27F8();
  sub_1E3FB28B0();
  sub_1E4201F44();
  sub_1E325F6F0(v27, &qword_1ECF37758, &qword_1E42CC218);
  v55 = v30;
LABEL_10:
  v97 = v121;
  v98 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D590, &unk_1E42E2360);
  return sub_1E32DE3C0(v55, v97 + *(v98 + 44));
}

unint64_t sub_1E3FB27F8()
{
  result = qword_1EE2896F8;
  if (!qword_1EE2896F8)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF3D570, &qword_1E42E2340);
    sub_1E3FB28B0();
    sub_1E32752B0(&qword_1EE289328, &qword_1ECF3D588, &qword_1E42E2358, MEMORY[0x1E697EC18]);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE2896F8);
  }

  return result;
}

unint64_t sub_1E3FB28B0()
{
  result = qword_1EE289C30;
  if (!qword_1EE289C30)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECF37758, &qword_1E42CC218);
    swift_getOpaqueTypeConformance2();
    sub_1E3806164();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE289C30);
  }

  return result;
}

uint64_t sub_1E3FB2954(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageViewWithOverlay(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1E3FB29B8(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for ImageViewWithOverlay(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

void sub_1E3FB2A1C(uint64_t a1, double a2, double a3)
{
  v7 = (type metadata accessor for ImageViewWithOverlay(0) - 8);
  v8 = v3 + ((*(*v7 + 80) + 16) & ~*(*v7 + 80));
  nullsub_1();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF30DF8, &unk_1E42B38C0);
  sub_1E4203904();
  v9 = (v8 + v7[12]);
  if (*v9)
  {
    (*v9)(a1, a2, a3);
  }
}

uint64_t sub_1E3FB2B1C@<X0>(void *a1@<X8>)
{
  v2 = sub_1E4200B44();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v14 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  type metadata accessor for ImageViewWithOverlay(0);
  sub_1E379EBAC(a1);
  type metadata accessor for ImageViewModel();
  result = swift_dynamicCastClass();
  if (result)
  {
    v9 = result;
    type metadata accessor for LayoutGrid();
    v10 = sub_1E3A256EC();
    result = (*(*v9 + 1032))(v10);
    if ((v11 & 1) == 0)
    {
      v12 = result;
      (*(v4 + 8))(a1, v2);
      v13 = MEMORY[0x1E697DBB8];
      if (v12 != 1)
      {
        v13 = MEMORY[0x1E697DBA8];
      }

      (*(v4 + 104))(v7, *v13, v2);
      return (*(v4 + 32))(a1, v7, v2);
    }
  }

  return result;
}

void sub_1E3FB2CF8(uint64_t a1)
{
  type metadata accessor for ViewModel();
  if (v1 <= 0x3F)
  {
    sub_1E3FB2EE8(319, qword_1EE286130, type metadata accessor for ImageLayout, MEMORY[0x1E69E6720]);
    if (v2 <= 0x3F)
    {
      sub_1E3FB2EE8(319, qword_1EE23B6C8, type metadata accessor for ViewModel, MEMORY[0x1E69E6720]);
      if (v3 <= 0x3F)
      {
        sub_1E3FB2EE8(319, &qword_1EE289EC0, MEMORY[0x1E697DBD0], MEMORY[0x1E697DCC0]);
        if (v4 <= 0x3F)
        {
          sub_1E381ECE4(319);
          if (v5 <= 0x3F)
          {
            sub_1E3FB2F4C(319, &qword_1EE288418, MEMORY[0x1E69E6370], MEMORY[0x1E6981948]);
            if (v6 <= 0x3F)
            {
              sub_1E3FB2EE8(319, &qword_1EE288650, type metadata accessor for CGRect, MEMORY[0x1E6981790]);
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

void sub_1E3FB2EE8(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t), uint64_t (*a4)(uint64_t, uint64_t))
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

void sub_1E3FB2F4C(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

uint64_t sub_1E3FB2F9C()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5A8, &unk_1E42F41B0);
  v0 = swift_allocObject();
  *(v0 + 16) = xmmword_1E4298AD0;
  v10.origin.x = OUTLINED_FUNCTION_2_0();
  MinX = CGRectGetMinX(v10);
  v11.origin.x = OUTLINED_FUNCTION_2_0();
  MinY = CGRectGetMinY(v11);
  *(v0 + 32) = MinX;
  *(v0 + 40) = MinY;
  v12.origin.x = OUTLINED_FUNCTION_2_0();
  v3 = CGRectGetMinX(v12);
  v13.origin.x = OUTLINED_FUNCTION_2_0();
  MaxY = CGRectGetMaxY(v13);
  *(v0 + 48) = v3;
  *(v0 + 56) = MaxY;
  v14.origin.x = OUTLINED_FUNCTION_2_0();
  MaxX = CGRectGetMaxX(v14);
  v15.origin.x = OUTLINED_FUNCTION_2_0();
  v6 = CGRectGetMinY(v15);
  *(v0 + 64) = MaxX;
  *(v0 + 72) = v6;
  v16.origin.x = OUTLINED_FUNCTION_2_0();
  v7 = CGRectGetMaxX(v16);
  v17.origin.x = OUTLINED_FUNCTION_2_0();
  v8 = CGRectGetMaxY(v17);
  *(v0 + 80) = v7;
  *(v0 + 88) = v8;
  return v0;
}

uint64_t sub_1E3FB3074(double a1, double a2)
{
  v4 = sub_1E3FB2F9C();
  v5 = *(v4 + 16);
  if (v5)
  {
    v13 = MEMORY[0x1E69E7CC0];
    sub_1E3887DC4(0, v5, 0);
    v6 = v13;
    v7 = *(v13 + 16);
    v8 = (v4 + 40);
    do
    {
      v9 = *(v8 - 1);
      v10 = *v8;
      v11 = *(v13 + 24);
      if (v7 >= v11 >> 1)
      {
        sub_1E3887DC4((v11 > 1), v7 + 1, 1);
      }

      *(v13 + 16) = v7 + 1;
      *(v13 + 8 * v7 + 32) = sqrt((v9 - a1) * (v9 - a1) + (v10 - a2) * (v10 - a2));
      v8 += 2;
      ++v7;
      --v5;
    }

    while (v5);
  }

  else
  {

    v6 = MEMORY[0x1E69E7CC0];
  }

  sub_1E3FB31DC(v6);
}

uint64_t sub_1E3FB31DC(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  v2 = *(a1 + 32);
  v3 = v1 - 1;
  if (v1 != 1)
  {
    v4 = (a1 + 40);
    do
    {
      v5 = *v4++;
      v6 = v5;
      if (v5 < v2)
      {
        v2 = v6;
      }

      --v3;
    }

    while (v3);
  }

  return *&v2;
}

uint64_t sub_1E3FB3220(uint64_t a1)
{
  type metadata accessor for ProgressLayout();
  swift_allocObject();
  v1 = sub_1E3FB3550();

  v2 = *sub_1E3E5FE74();
  v3 = *(*v1 + 680);
  v4 = v2;
  v5 = v3(v2);
  v5.n128_u64[0] = 5.0;
  v14[0] = j__OUTLINED_FUNCTION_7_78(v5);
  v14[1] = v6;
  v14[2] = v7;
  v14[3] = v8;
  v15 = 0;
  (*(*v1 + 560))(v14);
  OUTLINED_FUNCTION_9_2();
  (*(v9 + 1728))(1);
  OUTLINED_FUNCTION_9_2();
  (*(v10 + 312))(0x4000000000000000, 0);
  sub_1E3755B54();
  sub_1E4206F24();
  OUTLINED_FUNCTION_9_2();
  (*(v11 + 752))();

  OUTLINED_FUNCTION_9_2();
  (*(v12 + 1752))(0);
  return v1;
}

uint64_t sub_1E3FB34D4(uint64_t a1, uint64_t a2)
{
  v3 = a2;
  result = OUTLINED_FUNCTION_14_0(v2 + 104, a2);
  *(v2 + 104) = a1;
  *(v2 + 112) = v3 & 1;
  return result;
}

uint64_t sub_1E3FB3550()
{
  *(v0 + 98) = 514;
  *(v0 + 100) = 1;
  *(v0 + 104) = 0;
  *(v0 + 112) = 1;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3FB356C()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 113, 7);
}

uint64_t sub_1E3FB35C0()
{
  swift_getKeyPath();
  swift_getKeyPath();
  sub_1E4200674();

  return v1;
}

uint64_t sub_1E3FB3634@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FB35C0();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FB3688(char a1)
{
  swift_getKeyPath();
  swift_getKeyPath();

  return sub_1E4200684();
}

uint64_t sub_1E3FB3738(uint64_t a1)
{
  *(v1 + 136) = 0u;
  *(v1 + 120) = 0u;
  *(v1 + 104) = 0u;
  OUTLINED_FUNCTION_53_49(a1);
  sub_1E4200634();
  swift_endAccess();
  v2 = sub_1E3C2F9A0();

  sub_1E3FB3854();
  v3 = sub_1E37BD068();
  sub_1E3C37CBC(v3, 23);

  v4 = sub_1E374EA2C();
  sub_1E3C37CBC(v4, 15);

  v5 = sub_1E374EA94();
  sub_1E3C37CBC(v5, 17);

  v6 = sub_1E38A86A4();
  sub_1E3C37CBC(v6, 39);

  v7 = sub_1E3B910AC();
  sub_1E3C37CBC(v7, 31);

  v8 = sub_1E38A8794();
  sub_1E3C37CBC(v8, 40);

  return v2;
}

double sub_1E3FB3854()
{
  v1 = v0;
  if (sub_1E3FB35C0())
  {
    sub_1E37BD068();
    BYTE8(v827) = 0;
    OUTLINED_FUNCTION_51_48();
    v2 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_0();
    v3 = sub_1E3C3DE00();
    *&v859 = v863;
    BYTE8(v859) = BYTE8(v863);
    v11 = OUTLINED_FUNCTION_0_308(v3, v4, v5, v6, v7, v8, v9, v10, 2);
    sub_1E3C2FCB8(v11, v12, v13, v14, v15, v16, v2, v17);
    v26 = OUTLINED_FUNCTION_21_109(v18, v19, v20, v21, v22, v23, v24, v25, v827);
    memcpy(v26, v27, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v36 = OUTLINED_FUNCTION_30_3(v28, v29, v30, v31, v32, v33, v34, v35, v827);
    v37(v36, 62);

    OUTLINED_FUNCTION_0_36();
    v39 = *(v38 + 2080);

    v40 = OUTLINED_FUNCTION_15_8();
    v39(v40);

    OUTLINED_FUNCTION_0_36();
    v42 = *(v41 + 2104);

    v43 = OUTLINED_FUNCTION_15_8();
    v42(v43);

    v44 = *(v0 + 104);

    v45 = *sub_1E3E5FD88();
    v46 = *(*v44 + 680);
    v47 = v45;
    v46(v45);

    LOBYTE(v827) = 19;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_28_84();
    v48 = sub_1E3C3DE00();
    LOBYTE(v859) = v863;
    v56 = OUTLINED_FUNCTION_0_308(v48, v49, v50, v51, v52, v53, v54, v55, v827);
    sub_1E3C2FCB8(v56, v57, v58, v59, v60, v61, &qword_1F5D549D8, v62);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v71 = OUTLINED_FUNCTION_30_3(v63, v64, v65, v66, v67, v68, v69, v70, v827);
    v72(v71, 48);

    LOBYTE(v827) = 10;
    LOBYTE(v875) = 10;
    LOBYTE(v872) = 11;

    sub_1E3C3DE00();
    LOBYTE(v870[0]) = v871;
    sub_1E3C3DE00();
    LOBYTE(v868[0]) = v869;
    sub_1E3C3DE00();
    LOBYTE(v863) = v867;
    v73 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v73, v74, v75, v76, v77, v78, &qword_1F5D54AF8, v79);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v88 = OUTLINED_FUNCTION_30_3(v80, v81, v82, v83, v84, v85, v86, v87, v827);
    v89(v88, 54);

    sub_1E3952C94();
    OUTLINED_FUNCTION_18_8();
    type metadata accessor for UIEdgeInsets();
    v91 = v90;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_36_66();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_184();
    v92 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_190(v92, v93, v94, v95, v96, v97, v98, v99, v827, *(&v827 + 1), v828, *(&v828 + 1), v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, *(&v855 + 1), v856, *(&v856 + 1), v857, v858, v859, *(&v859 + 1), v860, *(&v860 + 1), v861, v862, v863, *(&v863 + 1), v864, *(&v864 + 1), v865, v866, v867);
    sub_1E3C3DE00();
    v855 = v859;
    v856 = v860;
    LOBYTE(v857) = v861;
    sub_1E3C2FCB8(&v872, v870, v868, &v827, &v863, &v855, v91, &v878);
    v108 = OUTLINED_FUNCTION_21_109(v100, v101, v102, v103, v104, v105, v106, v107, v827);
    memcpy(v108, v109, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v118 = OUTLINED_FUNCTION_15_154(v110, v111, v112, v113, v114, v115, v116, v117, v827);
    v119(v118);

    OUTLINED_FUNCTION_0_36();
    v121 = *(v120 + 1720);

    v121(10);

    sub_1E374EA2C();
    *&v827 = 2;
    BYTE8(v827) = 0;
    OUTLINED_FUNCTION_51_48();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_0();
    v122 = sub_1E3C3DE00();
    *&v859 = v863;
    BYTE8(v859) = BYTE8(v863);
    v130 = OUTLINED_FUNCTION_0_308(v122, v123, v124, v125, v126, v127, v128, v129, v827);
    sub_1E3C2FCB8(v130, v131, v132, v133, v134, v135, v2, v136);
    v145 = OUTLINED_FUNCTION_21_109(v137, v138, v139, v140, v141, v142, v143, v144, v827);
    memcpy(v145, v146, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v155 = OUTLINED_FUNCTION_30_3(v147, v148, v149, v150, v151, v152, v153, v154, v827);
    v156(v155, 62);

    OUTLINED_FUNCTION_3_1();
    v158 = *(v157 + 2080);

    v159 = OUTLINED_FUNCTION_15_8();
    v158(v159);

    OUTLINED_FUNCTION_3_1();
    v161 = *(v160 + 2104);

    v162 = OUTLINED_FUNCTION_15_8();
    v161(v162);

    OUTLINED_FUNCTION_3_1();
    v164 = *(v163 + 680);

    v164(0);

    OUTLINED_FUNCTION_3_1();
    v166 = *(v165 + 704);

    v166(1);

    LOBYTE(v827) = 19;
    LOBYTE(v875) = 22;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_28_84();
    v167 = sub_1E3C3DE00();
    LOBYTE(v859) = v863;
    v175 = OUTLINED_FUNCTION_0_308(v167, v168, v169, v170, v171, v172, v173, v174, v827);
    sub_1E3C2FCB8(v175, v176, v177, v178, v179, v180, &qword_1F5D549D8, v181);
    OUTLINED_FUNCTION_35_74();
    OUTLINED_FUNCTION_14();
    v190 = OUTLINED_FUNCTION_30_3(v182, v183, v184, v185, v186, v187, v188, v189, v827);
    v191(v190, 48);

    OUTLINED_FUNCTION_3_1();
    v193 = *(v192 + 1720);

    v193(10);

    OUTLINED_FUNCTION_3_1();
    v195 = *(v194 + 728);

    v195(2);

    sub_1E374EA94();
    OUTLINED_FUNCTION_2_1();
    v196 = OUTLINED_FUNCTION_15_8();
    v197(v196);

    OUTLINED_FUNCTION_2_186();
    v199 = *(v198 + 680);

    v199(0);

    OUTLINED_FUNCTION_2_186();
    v201 = *(v200 + 704);

    v201(1);

    OUTLINED_FUNCTION_2_186();
    v203 = *(v202 + 728);

    v203(2);

    LOBYTE(v827) = 21;

    sub_1E3C2FC98();
    LOBYTE(v872) = v875;
    sub_1E3C3DE00();
    LOBYTE(v870[0]) = v871;
    sub_1E3C3DE00();
    LOBYTE(v868[0]) = v869;
    sub_1E3C3DE00();
    LOBYTE(v863) = v867;
    v204 = sub_1E3C3DE00();
    LOBYTE(v855) = v859;
    v212 = OUTLINED_FUNCTION_34_73(v204, v205, v206, v207, v208, v209, v210, v211, v827);
    sub_1E3C2FCB8(v212, v213, v214, v215, v216, v217, &qword_1F5D549D8, v218);
    OUTLINED_FUNCTION_35_74();
    OUTLINED_FUNCTION_14();
    v227 = OUTLINED_FUNCTION_30_3(v219, v220, v221, v222, v223, v224, v225, v226, v827);
    v228(v227, 48);

    v827 = 0uLL;
    v828 = xmmword_1E4298720;
    LOBYTE(v829) = 0;
    v875 = 0uLL;
    v876 = xmmword_1E42A1380;
    v877 = 0;
    v872 = 0uLL;
    v873 = xmmword_1E42E2450;
    v874 = 0;

    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_184();
    v229 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_190(v229, v230, v231, v232, v233, v234, v235, v236, v827, *(&v827 + 1), v828, *(&v828 + 1), v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, *(&v855 + 1), v856, *(&v856 + 1), v857, v858, v859, *(&v859 + 1), v860, *(&v860 + 1), v861, v862, v863, *(&v863 + 1), v864, *(&v864 + 1), v865, v866, v867);
    v237 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v237, v238, v239, v240, v241, v242, v91, v243);
    v252 = OUTLINED_FUNCTION_21_109(v244, v245, v246, v247, v248, v249, v250, v251, v827);
    memcpy(v252, v253, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v262 = OUTLINED_FUNCTION_15_154(v254, v255, v256, v257, v258, v259, v260, v261, v827);
    v263(v262);

    OUTLINED_FUNCTION_2_186();
    v265 = *(v264 + 1720);

    v265(8);

    sub_1E38A86A4();
    *&v827 = 0x4058800000000000;
    BYTE8(v827) = 0;
    OUTLINED_FUNCTION_51_48();
    *&v872 = 0x4066C00000000000;
    BYTE8(v872) = 0;
    v266 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00();
    *&v863 = v867;
    BYTE8(v863) = BYTE8(v867);
    v267 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v267, v268, v269, v270, v271, v272, v266, v273);
    v282 = OUTLINED_FUNCTION_21_109(v274, v275, v276, v277, v278, v279, v280, v281, v827);
    memcpy(v282, v283, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v292 = OUTLINED_FUNCTION_30_3(v284, v285, v286, v287, v288, v289, v290, v291, v827);
    v293(v292, 6);

    *&v827 = 0x4058800000000000;
    BYTE8(v827) = 0;
    OUTLINED_FUNCTION_51_48();
    *&v872 = 0x4066C00000000000;
    BYTE8(v872) = 0;

    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00();
    *&v863 = v867;
    BYTE8(v863) = BYTE8(v867);
    v294 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v294, v295, v296, v297, v298, v299, v266, v300);
    v309 = OUTLINED_FUNCTION_21_109(v301, v302, v303, v304, v305, v306, v307, v308, v827);
    memcpy(v309, v310, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v319 = OUTLINED_FUNCTION_30_3(v311, v312, v313, v314, v315, v316, v317, v318, v827);
    v320(v319, 2);

    OUTLINED_FUNCTION_29_44();
    v321.n128_u64[0] = 5.0;
    j__OUTLINED_FUNCTION_7_78(v321);
    OUTLINED_FUNCTION_18_8();
    v322.n128_u64[0] = 12.0;
    v323 = j__OUTLINED_FUNCTION_7_78(v322);
    OUTLINED_FUNCTION_18_130(v323, v324, v325, v326);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v327 = OUTLINED_FUNCTION_23_94();
    v859 = v863;
    v860 = v864;
    LOBYTE(v861) = v865;
    v335 = OUTLINED_FUNCTION_0_308(v327, v328, v329, v330, v331, v332, v333, v334, v827);
    sub_1E3C2FCB8(v335, v336, v337, v338, v339, v340, v91, v341);
    v350 = OUTLINED_FUNCTION_21_109(v342, v343, v344, v345, v346, v347, v348, v349, v827);
    memcpy(v350, v351, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v360 = OUTLINED_FUNCTION_30_3(v352, v353, v354, v355, v356, v357, v358, v359, v827);
    v361(v360, 17);

    OUTLINED_FUNCTION_29_44();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    v362 = sub_1E3952CA4();
    OUTLINED_FUNCTION_18_130(v362, v363, v364, v365);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v366 = OUTLINED_FUNCTION_23_94();
    v859 = v863;
    v860 = v864;
    LOBYTE(v861) = v865;
    v374 = OUTLINED_FUNCTION_0_308(v366, v367, v368, v369, v370, v371, v372, v373, v827);
    sub_1E3C2FCB8(v374, v375, v376, v377, v378, v379, v91, v380);
    v389 = OUTLINED_FUNCTION_21_109(v381, v382, v383, v384, v385, v386, v387, v388, v827);
    memcpy(v389, v390, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v399 = OUTLINED_FUNCTION_15_154(v391, v392, v393, v394, v395, v396, v397, v398, v827);
    v400(v399);

    v401 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v401 setShadowOffset_];
    [v401 setShadowBlurRadius_];
    v402 = [objc_opt_self() blackColor];
    v403 = [v402 colorWithAlphaComponent_];

    [v401 setShadowColor_];
    v404 = *(v1 + 128);
    v405 = *(*v404 + 608);

    v406 = v401;
    v405(v401);

    if (sub_1E39DFFC8())
    {
      OUTLINED_FUNCTION_29_44();
      sub_1E39537A8();
      *&v878 = v407;
      *(&v878 + 1) = v408;
      *&v879 = v409;
      *(&v879 + 1) = v410;
      LOBYTE(v880) = 0;
      (*(*v404 + 560))(&v878);
    }

    sub_1E3FB6340();
    sub_1E38A8794();
    *&v827 = 1;
    BYTE8(v827) = 0;
    *&v875 = 2;
    BYTE8(v875) = 0;
    type metadata accessor for SymbolScale(0);
    v412 = v411;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_0();
    v413 = sub_1E3C3DE00();
    *&v859 = v863;
    BYTE8(v859) = BYTE8(v863);
    v421 = OUTLINED_FUNCTION_0_308(v413, v414, v415, v416, v417, v418, v419, v420, v827);
    sub_1E3C2FCB8(v421, v422, v423, v424, v425, v426, v412, v427);
    v436 = OUTLINED_FUNCTION_21_109(v428, v429, v430, v431, v432, v433, v434, v435, v827);
    memcpy(v436, v437, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v446 = OUTLINED_FUNCTION_30_3(v438, v439, v440, v441, v442, v443, v444, v445, v827);
    v447(v446, 91);

    v448 = *(v1 + 144);
    LOBYTE(v827) = 21;
    LOBYTE(v875) = 22;

    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_28_84();
    v449 = sub_1E3C3DE00();
    LOBYTE(v859) = v863;
    v457 = OUTLINED_FUNCTION_0_308(v449, v450, v451, v452, v453, v454, v455, v456, v827);
    sub_1E3C2FCB8(v457, v458, v459, v460, v461, v462, &qword_1F5D549D8, v463);
    OUTLINED_FUNCTION_14_166();
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v472 = OUTLINED_FUNCTION_30_3(v464, v465, v466, v467, v468, v469, v470, v471, v827);
    v473(v472, 96);

    OUTLINED_FUNCTION_56_38();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    v474 = sub_1E3952CA4();
    OUTLINED_FUNCTION_18_130(v474, v475, v476, v477);
    OUTLINED_FUNCTION_25_98();
    OUTLINED_FUNCTION_24_102();
    v478 = OUTLINED_FUNCTION_23_94();
    v859 = v863;
    v860 = v864;
    LOBYTE(v861) = v865;
    v486 = OUTLINED_FUNCTION_0_308(v478, v479, v480, v481, v482, v483, v484, v485, v827);
    sub_1E3C2FCB8(v486, v487, v488, v489, v490, v491, v91, v492);
    v501 = OUTLINED_FUNCTION_21_109(v493, v494, v495, v496, v497, v498, v499, v500, v827);
    memcpy(v501, v502, 0xE9uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v511 = OUTLINED_FUNCTION_15_154(v503, v504, v505, v506, v507, v508, v509, v510, v827);
    v512(v511);

    OUTLINED_FUNCTION_56_38();
    sub_1E3E603B8();
    OUTLINED_FUNCTION_81_12();
    v513 = *(*v448 + 680);
    v514 = &qword_1F5D549D8;
    v513(&qword_1F5D549D8);

    LOBYTE(v827) = 2;
    LOBYTE(v875) = 7;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_30_81();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_29_95();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_28_84();
    v515 = sub_1E3C3DE00();
    LOBYTE(v859) = v863;
    v523 = OUTLINED_FUNCTION_0_308(v515, v516, v517, v518, v519, v520, v521, v522, v827);
    sub_1E3C2FCB8(v523, v524, v525, v526, v527, v528, &unk_1F5D999E0, v529);
    OUTLINED_FUNCTION_14_166();
    v530 = OUTLINED_FUNCTION_18();
    v538 = OUTLINED_FUNCTION_30_3(v530, v531, v532, v533, v534, v535, v536, v537, v827);
    sub_1E3C2FDFC(v538, 26, v539, &unk_1F5D999E0);
    sub_1E3C2DE50();
    [objc_allocWithZone(MEMORY[0x1E69DC888]) initWithWhite:1.0 alpha:0.2];
    sub_1E3C2E258();
    sub_1E39DFFC8();
    sub_1E39537A8();
    OUTLINED_FUNCTION_18_8();
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_36_66();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_184();
    v540 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_190(v540, v541, v542, v543, v544, v545, v546, v547, v827, *(&v827 + 1), v828, *(&v828 + 1), v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, *(&v855 + 1), v856, *(&v856 + 1), v857, v858, v859, *(&v859 + 1), v860, *(&v860 + 1), v861, v862, v863, *(&v863 + 1), v864, *(&v864 + 1), v865, v866, v867);
    v548 = sub_1E3C3DE00();
    v855 = v859;
    v856 = v860;
    LOBYTE(v857) = v861;
    v556 = OUTLINED_FUNCTION_34_73(v548, v549, v550, v551, v552, v553, v554, v555, v827);
    sub_1E3C2FCB8(v556, v557, v558, v559, v560, v561, v91, v562);
    v571 = OUTLINED_FUNCTION_21_109(v563, v564, v565, v566, v567, v568, v569, v570, v827);
    memcpy(v571, v572, 0xE9uLL);
    v573 = OUTLINED_FUNCTION_18();
    v581 = OUTLINED_FUNCTION_30_3(v573, v574, v575, v576, v577, v578, v579, v580, v827);
    sub_1E3C2FDFC(v581, 17, v582, v91);
    sub_1E3C2EA08();
    __asm { FMOV            V0.2D, #12.0 }

    v827 = _Q0;
    v828 = xmmword_1E42E2460;
    LOBYTE(v829) = 0;
    __asm { FMOV            V0.2D, #14.0 }

    v875 = _Q0;
    v876 = xmmword_1E42E2470;
    v877 = 0;
    v872 = xmmword_1E42CA3A0;
    v873 = xmmword_1E42CA3A0;
    v874 = 0;
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_9_173();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_8_184();
    v589 = sub_1E3C3DE00();
    OUTLINED_FUNCTION_4_190(v589, v590, v591, v592, v593, v594, v595, v596, v827, *(&v827 + 1), v828, *(&v828 + 1), v829, v830, v831, v832, v833, v834, v835, v836, v837, v838, v839, v840, v841, v842, v843, v844, v845, v846, v847, v848, v849, v850, v851, v852, v853, v854, v855, *(&v855 + 1), v856, *(&v856 + 1), v857, v858, v859, *(&v859 + 1), v860, *(&v860 + 1), v861, v862, v863, *(&v863 + 1), v864, *(&v864 + 1), v865, v866, v867);
    v597 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v597, v598, v599, v600, v601, v602, v91, v603);
    v612 = OUTLINED_FUNCTION_21_109(v604, v605, v606, v607, v608, v609, v610, v611, v827);
    memcpy(v612, v613, 0xE9uLL);
    v614 = OUTLINED_FUNCTION_18();
    v622 = OUTLINED_FUNCTION_30_3(v614, v615, v616, v617, v618, v619, v620, v621, v827);
    sub_1E3C2FDFC(v622, 1, v623, v91);
    *&v827 = 0x405E800000000000;
    BYTE8(v827) = 0;
    *&v875 = 0x4061C00000000000;
    BYTE8(v875) = 0;
    *&v872 = 0x406CC00000000000;
    BYTE8(v872) = 0;
    v624 = MEMORY[0x1E69E7DE0];
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_20_119();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_19_141();
    sub_1E3C3DE00();
    *&v863 = v867;
    BYTE8(v863) = BYTE8(v867);
    v625 = OUTLINED_FUNCTION_1_271();
    sub_1E3C2FCB8(v625, v626, v627, v628, v629, v630, v624, v631);
    v640 = OUTLINED_FUNCTION_21_109(v632, v633, v634, v635, v636, v637, v638, v639, v827);
    memcpy(v640, v641, 0x59uLL);
    v642 = OUTLINED_FUNCTION_18();
    v650 = OUTLINED_FUNCTION_30_3(v642, v643, v644, v645, v646, v647, v648, v649, v827);
    sub_1E3C2FDFC(v650, 6, v651, v624);
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
  }

  else
  {
    sub_1E37BD068();
    BYTE8(v827) = 0;
    *&v875 = 1;
    BYTE8(v875) = 0;
    v652 = MEMORY[0x1E69E6810];
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_0();
    v653 = sub_1E3C3DE00();
    *&v859 = v863;
    BYTE8(v859) = BYTE8(v863);
    v661 = OUTLINED_FUNCTION_0_308(v653, v654, v655, v656, v657, v658, v659, v660, 2);
    sub_1E3C2FCB8(v661, v662, v663, v664, v665, v666, v652, v667);
    v676 = OUTLINED_FUNCTION_21_109(v668, v669, v670, v671, v672, v673, v674, v675, v827);
    memcpy(v676, v677, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v686 = OUTLINED_FUNCTION_30_3(v678, v679, v680, v681, v682, v683, v684, v685, v827);
    v687(v686, 62);

    OUTLINED_FUNCTION_0_36();
    v689 = *(v688 + 2080);

    v690 = OUTLINED_FUNCTION_10_7();
    v689(v690);

    OUTLINED_FUNCTION_0_36();
    v692 = (v691 + 2104);
    v693 = *(v691 + 2104);

    v694 = OUTLINED_FUNCTION_10_7();
    v693(v694);

    v695 = *(v0 + 104);

    sub_1E3E5FD88();
    OUTLINED_FUNCTION_81_12();
    v696 = *(*v695 + 680);
    v697 = v692;
    v696(v692);

    OUTLINED_FUNCTION_0_36();
    v699 = *(v698 + 1696);

    v699(19);

    OUTLINED_FUNCTION_0_36();
    v701 = *(v700 + 1792);

    v701(10);

    v878 = 0u;
    v879 = 0u;
    LOBYTE(v880) = 1;
    OUTLINED_FUNCTION_8();
    v703 = *(v702 + 160);

    v703(&v878);

    OUTLINED_FUNCTION_0_36();
    v705 = *(v704 + 1720);

    v705(12);

    sub_1E374EA2C();
    BYTE8(v827) = 0;
    *&v875 = 1;
    BYTE8(v875) = 0;
    sub_1E3C2FC98();
    OUTLINED_FUNCTION_1_226();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_102();
    sub_1E3C3DE00();
    OUTLINED_FUNCTION_101_0();
    v706 = sub_1E3C3DE00();
    *&v859 = v863;
    BYTE8(v859) = BYTE8(v863);
    v714 = OUTLINED_FUNCTION_0_308(v706, v707, v708, v709, v710, v711, v712, v713, 2);
    sub_1E3C2FCB8(v714, v715, v716, v717, v718, v719, v652, v720);
    v729 = OUTLINED_FUNCTION_21_109(v721, v722, v723, v724, v725, v726, v727, v728, v827);
    memcpy(v729, v730, 0x59uLL);
    OUTLINED_FUNCTION_18();
    OUTLINED_FUNCTION_14();
    v739 = OUTLINED_FUNCTION_30_3(v731, v732, v733, v734, v735, v736, v737, v738, v827);
    v740(v739, 62);

    OUTLINED_FUNCTION_3_1();
    v742 = *(v741 + 2080);

    v743 = OUTLINED_FUNCTION_10_7();
    v742(v743);

    OUTLINED_FUNCTION_3_1();
    v745 = *(v744 + 2104);

    v746 = OUTLINED_FUNCTION_10_7();
    v745(v746);

    OUTLINED_FUNCTION_3_1();
    v748 = *(v747 + 680);

    v748(0);

    OUTLINED_FUNCTION_3_1();
    v750 = *(v749 + 704);

    v750(1);

    OUTLINED_FUNCTION_3_1();
    v752 = *(v751 + 1696);

    v752(19);

    OUTLINED_FUNCTION_3_1();
    v754 = *(v753 + 1720);

    v754(12);

    OUTLINED_FUNCTION_3_1();
    v756 = *(v755 + 728);

    v756(2);

    sub_1E374EA94();
    OUTLINED_FUNCTION_2_1();
    v757 = OUTLINED_FUNCTION_15_8();
    v758(v757);

    OUTLINED_FUNCTION_2_186();
    v760 = *(v759 + 680);

    v760(0);

    OUTLINED_FUNCTION_2_186();
    v762 = *(v761 + 704);

    v762(1);

    OUTLINED_FUNCTION_2_186();
    v764 = *(v763 + 728);

    v764(2);

    OUTLINED_FUNCTION_2_186();
    v766 = *(v765 + 1696);

    v766(21);

    v878 = 0uLL;
    v879 = xmmword_1E4298720;
    LOBYTE(v880) = 0;
    OUTLINED_FUNCTION_8();
    v768 = *(v767 + 160);

    v768(&v878);

    OUTLINED_FUNCTION_2_186();
    v770 = *(v769 + 1720);

    v770(8);

    sub_1E38A86A4();
    OUTLINED_FUNCTION_2_1();
    (*(v771 + 312))(0x4054000000000000, 0);

    v772 = *(v1 + 128);
    OUTLINED_FUNCTION_8();
    v774 = *(v773 + 208);

    v774(0x4054000000000000, 0);

    OUTLINED_FUNCTION_29_44();
    v775.n128_u64[0] = 5.0;
    *&v878 = j__OUTLINED_FUNCTION_7_78(v775);
    *(&v878 + 1) = v776;
    *&v879 = v777;
    *(&v879 + 1) = v778;
    LOBYTE(v880) = 0;
    (*(*v772 + 560))(&v878);

    OUTLINED_FUNCTION_29_44();
    sub_1E3952CA4();
    OUTLINED_FUNCTION_18_8();
    OUTLINED_FUNCTION_8();
    (*(v779 + 160))(&v827);

    v875 = 0u;
    v876 = 0u;
    v877 = 1;
    OUTLINED_FUNCTION_8();
    v781 = *(v780 + 1856);

    v781(&v875);

    OUTLINED_FUNCTION_36();
    v783 = *(v782 + 1832);

    v783(0);

    v784 = [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    [v784 setShadowOffset_];
    [v784 setShadowBlurRadius_];
    v785 = [objc_opt_self() blackColor];
    v786 = [v785 colorWithAlphaComponent_];

    [v784 setShadowColor_];
    v787 = *(**(v1 + 128) + 608);

    v788 = v784;
    v787(v784);

    sub_1E3FB5F30();
    sub_1E38A8794();
    OUTLINED_FUNCTION_2_1();
    v789 = OUTLINED_FUNCTION_15_8();
    v790(v789);

    v791 = *(v1 + 144);
    OUTLINED_FUNCTION_36();
    v793 = *(v792 + 2072);

    v793(21);

    OUTLINED_FUNCTION_56_38();
    *&v878 = sub_1E3952CA4();
    *(&v878 + 1) = v794;
    *&v879 = v795;
    *(&v879 + 1) = v796;
    LOBYTE(v880) = 0;
    OUTLINED_FUNCTION_8();
    (*(v797 + 160))(&v878);

    OUTLINED_FUNCTION_56_38();
    v798 = *sub_1E3E60364();
    v799 = *(*v791 + 680);
    v800 = v798;
    v799(v798);

    __asm { FMOV            V1.2D, #10.0 }

    v875 = _Q1;
    v876 = xmmword_1E42E2480;
    v877 = 0;
    sub_1E3C2CC78();
    OUTLINED_FUNCTION_36_0();
    sub_1E3C2D0A0();
    sub_1E3C2D150();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2CE80();
    OUTLINED_FUNCTION_13_12();
    sub_1E3C2D200();
    v802 = *sub_1E3E60638();
    *&v827 = v802;
    v803 = objc_allocWithZone(MEMORY[0x1E69DC888]);
    v804 = v802;
    *&v872 = [v803 initWithWhite:1.0 alpha:0.2];
    v805 = sub_1E3755B54();
    sub_1E3C2FC98();
    v870[0] = v871;
    sub_1E3C3DE00();
    v868[0] = v869;
    sub_1E3C3DE00();
    *&v863 = v867;
    sub_1E3C3DE00();
    *&v855 = v859;
    sub_1E3C2FCB8(&v827, v870, v868, &v872, &v863, &v855, v805, &v878);
    v806 = v878;
    v807 = v879;
    v808 = v880;
    v809 = v881;
    v827 = v878;
    v828 = v879;
    v829 = v880;
    v830 = v881;
    v810 = OUTLINED_FUNCTION_18();
    v818 = OUTLINED_FUNCTION_30_3(v810, v811, v812, v813, v814, v815, v816, v817, v827);
    sub_1E3C2FDFC(v818, 29, v819, v805);

    if ((sub_1E39DFFC8() & 1) == 0)
    {
      v820 = [objc_opt_self() secondarySystemBackgroundColor];
      sub_1E3C2DE50();
      sub_1E3C2E014(11);
    }

    sub_1E39537A8();
    *&v878 = v821;
    *(&v878 + 1) = v822;
    *&v879 = v823;
    *(&v879 + 1) = v824;
    LOBYTE(v880) = 0;
    sub_1E3C2D7EC();
  }

  sub_1E38A86A4();
  sub_1E418A4F4();
  OUTLINED_FUNCTION_8();
  (*(v825 + 440))();

  return result;
}

double sub_1E3FB5A04(uint64_t a1, void *a2)
{
  sub_1E3C35CF4(a1, a2);

  return sub_1E3FB3854();
}

double sub_1E3FB5A2C(__objc2_class **a1)
{
  if (*a1 == _TtC8VideosUI22PlaybackSongViewLayout)
  {

    sub_1E3C35F80();
    v1 = sub_1E3FB35C0();
    sub_1E3FB3688(v1);
  }

  return result;
}

void sub_1E3FB5AF0()
{
  *(v0 + 136) = 0u;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FB5B5C()
{

  v1 = OBJC_IVAR____TtC8VideosUI22PlaybackSongViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5B0, &unk_1E42E24D8);
  OUTLINED_FUNCTION_10();
  v3 = *(v2 + 8);

  return v3(v0 + v1);
}

uint64_t sub_1E3FB5BF4()
{
  v0 = sub_1E3C36C6C();

  v1 = OBJC_IVAR____TtC8VideosUI22PlaybackSongViewLayout__type;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D5B0, &unk_1E42E24D8);
  OUTLINED_FUNCTION_10();
  (*(v2 + 8))(v0 + v1);
  return v0;
}

uint64_t sub_1E3FB5C8C()
{
  v0 = sub_1E3FB5BF4();
  v1 = *(*v0 + 48);
  v2 = *(*v0 + 52);

  return MEMORY[0x1EEE6BDC0](v0, v1, v2);
}

unint64_t sub_1E3FB5CE4(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D5B8;
  if (!qword_1ECF3D5B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D5B8);
  }

  return result;
}

uint64_t type metadata accessor for PlaybackSongViewLayout(uint64_t a1)
{
  result = qword_1EE29A4A0;
  if (!qword_1EE29A4A0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

void sub_1E3FB5D8C(uint64_t a1)
{
  sub_1E3C59724(319, &qword_1EE28A008, &type metadata for PlaybackSongViewLayout.PlaybackSongViewType, MEMORY[0x1E695C070]);
  if (v1 <= 0x3F)
  {
    swift_updateClassMetadata2();
  }
}

_BYTE *storeEnumTagSinglePayload for PlaybackSongViewLayout.PlaybackSongViewType(_BYTE *result, unsigned int a2, unsigned int a3)
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

double sub_1E3FB5F30()
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858, &unk_1E42A1760);
  OUTLINED_FUNCTION_17_2(v2);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_26_2();
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_17_2(v4);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v5);
  v7 = &v29[-1] - v6;
  sub_1E3B910AC();
  OUTLINED_FUNCTION_2_1();
  (*(v8 + 2072))(27);

  OUTLINED_FUNCTION_36();
  v10 = *(v9 + 2024);

  v11 = OUTLINED_FUNCTION_36_0();
  v10(v11);

  v12 = *(v0 + 136);
  v13 = sub_1E42028E4();
  OUTLINED_FUNCTION_31_41(v13);

  OUTLINED_FUNCTION_36_0();
  v14 = sub_1E42029B4();
  sub_1E3FB67A8(v7);
  OUTLINED_FUNCTION_36();
  (*(v15 + 2120))(v14);

  OUTLINED_FUNCTION_55_48();
  sub_1E4201DE4();
  v16 = sub_1E4201DF4();
  __swift_storeEnumTagSinglePayload(v1, 0, 1, v16);
  OUTLINED_FUNCTION_36();
  (*(v17 + 2192))(v1);

  OUTLINED_FUNCTION_55_48();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v18 = *(*v12 + 680);
  v19 = v1;
  v18(v1);

  v33[0] = 0x4024000000000000;
  v33[1] = 0;
  v33[2] = 0;
  v33[3] = 0x4024000000000000;
  v34 = 0;
  OUTLINED_FUNCTION_8();
  v21 = *(v20 + 160);

  v21(v33);

  v29[0] = 0x403C000000000000;
  LOBYTE(v29[1]) = 0;
  v30 = 0x4044000000000000;
  v31 = 0;

  v22 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_40_68();
  OUTLINED_FUNCTION_39_63();
  OUTLINED_FUNCTION_38_67();
  OUTLINED_FUNCTION_26_110();
  memcpy(v29, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v23 + 1600))(v29, 6, v24 & 1, v22);

  v29[0] = 0x403C000000000000;
  LOBYTE(v29[1]) = 0;
  v30 = 0x4044000000000000;
  v31 = 0;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_40_68();
  OUTLINED_FUNCTION_39_63();
  OUTLINED_FUNCTION_38_67();
  OUTLINED_FUNCTION_26_110();
  memcpy(v29, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v25 + 1600))(v29, 2, v26 & 1, v22);

  return result;
}

double sub_1E3FB6340()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2B858, &unk_1E42A1760);
  OUTLINED_FUNCTION_17_2(v1);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v2);
  OUTLINED_FUNCTION_26_2();
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  OUTLINED_FUNCTION_17_2(v3);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v4);
  v6 = v26 - v5;
  v7 = sub_1E3B910AC();
  v8 = sub_1E42028E4();
  OUTLINED_FUNCTION_31_41(v8);
  OUTLINED_FUNCTION_36_0();
  v9 = sub_1E42029B4();
  sub_1E3FB67A8(v6);
  OUTLINED_FUNCTION_36();
  (*(v10 + 2120))(v9);

  OUTLINED_FUNCTION_55_48();
  sub_1E4201DE4();
  v11 = sub_1E4201DF4();
  __swift_storeEnumTagSinglePayload(v0, 0, 1, v11);
  OUTLINED_FUNCTION_36();
  (*(v12 + 2192))(v0);

  OUTLINED_FUNCTION_55_48();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_81_12();
  v13 = *(*v7 + 680);
  v14 = v0;
  v13(v0);

  v26[0] = 0x4028000000000000;
  v26[1] = 0;
  v26[2] = 0;
  v26[3] = 0x4028000000000000;
  LOBYTE(v26[4]) = 0;
  v44 = 0x402C000000000000;
  v45 = 0;
  v46 = 0;
  v47 = 0x402C000000000000;
  v48 = 0;
  v42[0] = 0x4035000000000000;
  v42[1] = 0;
  v42[2] = 0;
  v42[3] = 0x4035000000000000;
  v43 = 0;
  type metadata accessor for UIEdgeInsets();
  v16 = v15;

  sub_1E3C2FC98();
  v37[0] = v39;
  v37[1] = v40;
  v38 = v41;
  sub_1E3C3DE00();
  v32[0] = v34;
  v32[1] = v35;
  v33 = v36;
  sub_1E3C3DE00();
  v27[0] = v29;
  v27[1] = v30;
  v28 = v31;
  sub_1E3C2FCB8(v26, v37, &v44, v42, v32, v27, v16, v49);
  memcpy(v26, v49, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v17 + 1600))(v26, 0, v18 & 1, v16);

  v26[0] = 0x403C000000000000;
  LOBYTE(v26[1]) = 0;
  v44 = 0x4044000000000000;
  LOBYTE(v45) = 0;

  v19 = MEMORY[0x1E69E7DE0];
  sub_1E3C2FC98();
  OUTLINED_FUNCTION_43_64();
  OUTLINED_FUNCTION_42_66();
  OUTLINED_FUNCTION_41_64();
  OUTLINED_FUNCTION_27_91();
  memcpy(v26, v49, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v20 + 1600))(v26, 6, v21 & 1, v19);

  v26[0] = 0x403C000000000000;
  LOBYTE(v26[1]) = 0;
  v44 = 0x4044000000000000;
  LOBYTE(v45) = 0;

  sub_1E3C2FC98();
  OUTLINED_FUNCTION_43_64();
  OUTLINED_FUNCTION_42_66();
  OUTLINED_FUNCTION_41_64();
  OUTLINED_FUNCTION_27_91();
  memcpy(v26, v49, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  (*(v22 + 1600))(v26, 2, v23 & 1, v19);

  return result;
}

uint64_t sub_1E3FB67A8(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF335F8, &qword_1E42BB500);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t OUTLINED_FUNCTION_53_49(uint64_t a1, ...)
{

  return swift_beginAccess();
}

uint64_t OUTLINED_FUNCTION_56_38()
{
}

void *sub_1E3FB687C()
{
  *(v0 + 136) = 0;
  *(v0 + 120) = 0u;
  *(v0 + 104) = 0u;
  v1 = sub_1E3C2F9A0();

  sub_1E39537A8();
  v150 = v2;
  v151 = v3;
  v152 = v4;
  v153 = v5;
  LOBYTE(v154) = 0;
  sub_1E3C2D7EC();
  __asm { FMOV            V1.2D, #10.0 }

  v148 = _Q1;
  LOBYTE(v149) = 0;
  sub_1E3C2CC78();

  if (TVAppFeature.isEnabled.getter(10, v11, v12))
  {
    v13 = *sub_1E3E5FB0C();
    sub_1E3C2DE50();
    v14 = sub_1E3E5FB88();
  }

  else
  {
    v14 = sub_1E3E5FACC();
    v15 = *v14;
    sub_1E3C2DE50();
  }

  v16 = *v14;
  sub_1E3C2E258();
  if ((TVAppFeature.isEnabled.getter(10, v17, v18) & 1) == 0)
  {
    [objc_allocWithZone(MEMORY[0x1E69DB7D8]) init];
    sub_1E3C2D938();
    v19 = sub_1E3C2D8FC();
    if (v19)
    {
      v20 = v19;
      [v19 setShadowOffset_];
    }

    v21 = sub_1E3C2D8FC();
    [v21 setShadowBlurRadius_];

    v22 = sub_1E3C2D8FC();
    if (v22)
    {
      v23 = v22;
      v24 = [objc_opt_self() blackColor];
      v25 = [v24 colorWithAlphaComponent_];

      [v23 setShadowColor_];
    }
  }

  sub_1E374E9C4();
  OUTLINED_FUNCTION_2_1();
  (*(v26 + 1712))(1);

  OUTLINED_FUNCTION_0_36();
  v28 = (v27 + 1808);
  v29 = *(v27 + 1808);

  v29(3);

  OUTLINED_FUNCTION_12_13();
  v30.n128_u64[0] = 0.5;
  v157[0] = j__OUTLINED_FUNCTION_7_78(v30);
  v157[1] = v31;
  v157[2] = v32;
  v157[3] = v33;
  v158 = 0;
  (*(*v1 + 1856))(v157);

  OUTLINED_FUNCTION_12_13();
  sub_1E3E6097C();
  OUTLINED_FUNCTION_7_16();
  v34 = *(*v1 + 1832);
  v35 = v28;
  v34(v28);

  OUTLINED_FUNCTION_0_36();
  v37 = *(v36 + 2216);

  v37(1);

  v38 = objc_opt_self();
  if ([v38 isVision])
  {
    v38 = v1[13];
    v39 = *(*v38 + 2000);

    v39(2);

    OUTLINED_FUNCTION_0_36();
    v41 = *(v40 + 312);

    v41(0x4055800000000000, 0);

    OUTLINED_FUNCTION_12_13();
    v42 = sub_1E418A4F4();
    v43 = OUTLINED_FUNCTION_105_0(v42);
    (*(*v38 + 440))(v43, 0);

    OUTLINED_FUNCTION_12_13();
    v44.n128_u64[0] = 8.0;
  }

  else if ([v38 isTV])
  {
    v38 = v1[13];
    v45 = *(*v38 + 312);

    v45(0x405E000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v47 = *(v46 + 2000);

    v47(0);

    OUTLINED_FUNCTION_12_13();
    v48 = sub_1E418A524();
    v49 = OUTLINED_FUNCTION_105_0(v48);
    (*(*v38 + 440))(v49, 0);

    OUTLINED_FUNCTION_12_13();
    v44.n128_u64[0] = 16.0;
  }

  else
  {
    v50 = [v38 isMac];
    OUTLINED_FUNCTION_0_36();
    v52 = *(v51 + 312);

    if (v50)
    {
      v52(0x4050800000000000, 0);

      OUTLINED_FUNCTION_0_36();
      v54 = *(v53 + 2000);

      v54(2);

      OUTLINED_FUNCTION_12_13();
      v55 = sub_1E418A4F4();
      v56 = OUTLINED_FUNCTION_105_0(v55);
      (*(*v38 + 440))(v56, 0);

      OUTLINED_FUNCTION_12_13();
      sub_1E39537A8();
      goto LABEL_17;
    }

    v52(0x404F000000000000, 0);

    OUTLINED_FUNCTION_0_36();
    v62 = *(v61 + 2000);

    v62(2);

    OUTLINED_FUNCTION_12_13();
    v63 = sub_1E418A4F4();
    v64 = OUTLINED_FUNCTION_105_0(v63);
    (*(*v38 + 440))(v64, 0);

    OUTLINED_FUNCTION_12_13();
    v44.n128_u64[0] = 14.0;
  }

  v57 = j__OUTLINED_FUNCTION_7_78(v44);
LABEL_17:
  *v155 = v57;
  v155[1] = v58;
  v155[2] = v59;
  v155[3] = v60;
  v156 = 0;
  (*(*v38 + 560))(v155);

  sub_1E37BD0DC();
  OUTLINED_FUNCTION_2_1();
  (*(v65 + 1712))(1);

  OUTLINED_FUNCTION_36();
  v67 = (v66 + 2072);
  v68 = *(v66 + 2072);

  v68(15);

  v69 = v1[14];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v70 = *(*v69 + 680);
  v71 = v67;
  v70(v67);

  OUTLINED_FUNCTION_36();
  v73 = (v72 + 2168);
  v74 = *(v72 + 2168);

  v74(10);

  v75 = sub_1E374EA94();
  sub_1E3E5FD88();
  OUTLINED_FUNCTION_7_16();
  v76 = *(*v75 + 680);
  v77 = v73;
  v76(v73);

  OUTLINED_FUNCTION_2_186();
  v79 = *(v78 + 2008);

  v79(1);

  OUTLINED_FUNCTION_2_186();
  v81 = *(v80 + 1792);

  v81(10);

  TVAppFeature.isEnabled.getter(10, v82, v83);
  OUTLINED_FUNCTION_36();
  if (v85)
  {
    v86 = 14;
  }

  else
  {
    v86 = 19;
  }

  (*(v84 + 1696))(v86);

  OUTLINED_FUNCTION_2_186();
  v88 = *(v87 + 2128);

  v88(0x3FE6666666666666, 0);

  OUTLINED_FUNCTION_2_186();
  v90 = *(v89 + 2056);

  v91 = OUTLINED_FUNCTION_8_5();
  v90(v91);

  OUTLINED_FUNCTION_2_186();
  v93 = *(v92 + 2080);

  v94 = OUTLINED_FUNCTION_8_5();
  v93(v94);

  OUTLINED_FUNCTION_2_186();
  v96 = (v95 + 2104);
  v97 = *(v95 + 2104);

  v97(0, 0);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v98, v99, v100, v101);
  (*(v102 + 160))(v157);

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v103 + 2008))(1);

  v104 = v1[16];

  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v105 = *(*v104 + 680);
  v106 = v96;
  v105(v96);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v107, v108, v109, v110);
  (*(v111 + 160))(v157);

  OUTLINED_FUNCTION_36();
  v113 = *(v112 + 1696);

  v113(21);

  OUTLINED_FUNCTION_36();
  v115 = *(v114 + 2056);

  v116 = OUTLINED_FUNCTION_8_5();
  v115(v116);

  OUTLINED_FUNCTION_36();
  v118 = *(v117 + 2080);

  v119 = OUTLINED_FUNCTION_8_5();
  v118(v119);

  OUTLINED_FUNCTION_36();
  v121 = (v120 + 2104);
  v122 = *(v120 + 2104);

  v123 = OUTLINED_FUNCTION_8_5();
  v122(v123);

  v124 = sub_1E374EB64();
  sub_1E3E5FDEC();
  OUTLINED_FUNCTION_7_16();
  v125 = *(*v124 + 680);
  v126 = v121;
  v125(v121);

  OUTLINED_FUNCTION_36();
  v128 = *(v127 + 2056);

  v129 = OUTLINED_FUNCTION_8_5();
  v128(v129);

  OUTLINED_FUNCTION_36();
  v131 = *(v130 + 1696);

  v131(21);

  sub_1E3952C88();
  OUTLINED_FUNCTION_5_218(v132, v133, v134, v135);
  (*(v136 + 160))(v157);

  OUTLINED_FUNCTION_36();
  v138 = *(v137 + 2128);

  v138(0x3FE6666666666666, 0);

  sub_1E374EA94();
  OUTLINED_FUNCTION_2_1();
  (*(v139 + 1720))(10);

  sub_1E374EAFC();
  OUTLINED_FUNCTION_2_1();
  (*(v140 + 1720))(10);

  sub_1E374EB64();
  OUTLINED_FUNCTION_2_1();
  (*(v141 + 1720))(10);

  sub_1E3C2EAE8();
  sub_1E3C2D200();
  sub_1E3C2CDD0();
  sub_1E3C2CE80();
  sub_1E3C2D4E8(4);
  sub_1E3C2D5A8(1);

  sub_1E3C37CBC(v142, 23);

  sub_1E3C37CBC(v143, 15);

  sub_1E3C37CBC(v144, 17);

  v145 = sub_1E374E9C4();
  sub_1E3C37CBC(v145, 39);

  v146 = sub_1E37BD0DC();
  sub_1E3C37CBC(v146, 31);

  return v1;
}

void sub_1E3FB79BC()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  OUTLINED_FUNCTION_59_1();
  sub_1E3282410();
}

uint64_t VUIJetPackController.getJetPack()(uint64_t a1)
{
  *(v2 + 16) = a1;
  *(v2 + 24) = v1;
  return OUTLINED_FUNCTION_1_6();
}

uint64_t sub_1E3FB7A0C()
{
  OUTLINED_FUNCTION_27_2();
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  *(v0 + 32) = v1;
  *v1 = v2;
  v1[1] = sub_1E3FB7ABC;

  return sub_1E3284440();
}

uint64_t sub_1E3FB7ABC()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  v1 = *v0;
  OUTLINED_FUNCTION_7();
  *v2 = v1;

  OUTLINED_FUNCTION_54();

  return v3();
}

uint64_t sub_1E3FB7B9C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 248) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB7CB0()
{
  v1 = v0[27];
  v16 = v0[26];
  v17 = v0[28];
  v2 = v0[24];
  v12 = v0[23];
  v13 = v0[25];
  v3 = v0[21];
  v4 = v0[22];
  v5 = v0[20];
  v6 = v0[18];
  v14 = v0[17];
  v15 = v0[19];
  v8 = v0[12];
  v7 = v0[13];
  v9 = v0[11];
  sub_1E4204384();
  (*(v8 + 8))(v7, v9);
  (*(v3 + 8))(v4, v5);
  (*(v2 + 8))(v13, v12);
  (*(v1 + 8))(v17, v16);
  (*(v6 + 8))(v15, v14);

  OUTLINED_FUNCTION_15_12();

  return v10();
}

uint64_t sub_1E3FB7E10()
{
  v2 = v0[27];
  v1 = v0[28];
  v3 = v0[25];
  v4 = v0[23];
  v5 = v0[24];
  v6 = v0[19];
  v8 = v0[17];
  v7 = v0[18];
  v11 = v0[26];
  (*(v0[21] + 8))(v0[22], v0[20]);
  (*(v5 + 8))(v3, v4);
  (*(v2 + 8))(v1, v11);
  (*(v7 + 8))(v6, v8);

  OUTLINED_FUNCTION_54();

  return v9();
}

uint64_t sub_1E3FB7F3C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 176) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB8034()
{
  OUTLINED_FUNCTION_134();
  v1 = (v0[5] + v0[20]);
  v2 = sub_1E4206B94();
  v3 = VUISignpostLogObject(v2);
  sub_1E41FFBA4();

  v4 = sub_1E4206BA4();
  v5 = VUISignpostLogObject(v4);
  sub_1E41FFBA4();

  __swift_project_boxed_opaque_existential_1(v1, v1[3]);
  swift_task_alloc();
  OUTLINED_FUNCTION_33_3();
  v0[23] = v6;
  *v6 = v7;
  v6[1] = sub_1E3FB817C;

  return sub_1E329708C();
}

uint64_t sub_1E3FB817C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 192) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB8274(uint64_t a1)
{
  v2 = v1[24];
  v3 = sub_1E4206B94();
  v4 = VUISignpostLogObject(v3);
  sub_1E41FFBA4();

  v5 = sub_1E4206BA4();
  v6 = VUISignpostLogObject(v5);
  OUTLINED_FUNCTION_38_68();
  sub_1E41FFBA4();

  sub_1E4204464();
  v7 = sub_1E42042F4();
  if (v2)
  {
    v9 = v1[15];
    v51 = v1[16];
    v11 = v1[13];
    v10 = v1[14];
    v13 = v1[10];
    v12 = v1[11];
    (*(v1[8] + 8))(v1[9], v1[7]);
    v14 = sub_1E4206B94();
    v15 = VUISignpostLogObject(v14);
    OUTLINED_FUNCTION_38_68();
    sub_1E41FFBA4();

    (*(v12 + 8))(v11, v13);
    (*(v9 + 8))(v51, v10);
  }

  else
  {
    v16 = v7;
    v17 = v8;
    (*(v1[8] + 8))(v1[9], v1[7]);
    if (v17 >> 60 != 15)
    {
      v1[2] = v16;
      v1[3] = v17;
      v18 = sub_1E4205F54();
      sub_1E3A0D380(v18, v19, v20);
      sub_1E4205F34();
      if (v21)
      {
        v22 = v1[19];
        v49 = v1[18];
        v50 = v1[17];
        v23 = v1[15];
        v47 = v1[14];
        v48 = v1[16];
        v24 = v1[11];
        v45 = v1[13];
        v46 = v1[10];
        v25 = v1[4];
        (*(v24 + 16))(v1[12]);
        v26 = objc_allocWithZone(type metadata accessor for VUIJetPackControllerResponse(0));
        v27 = sub_1E3FB8E34();
        sub_1E38DCE1C(v16, v17);
        *v25 = v27;
        v28 = sub_1E4206B94();
        v29 = VUISignpostLogObject(v28);
        OUTLINED_FUNCTION_59_1();
        OUTLINED_FUNCTION_38_68();
        sub_1E41FFBA4();

        (*(v24 + 8))(v45, v46);
        (*(v23 + 8))(v48, v47);
        v30 = sub_1E4206B94();
        v31 = VUISignpostLogObject(v30);
        OUTLINED_FUNCTION_59_1();
        sub_1E41FFBA4();

        (*(v49 + 8))(v22, v50);

        OUTLINED_FUNCTION_15_12();
        goto LABEL_9;
      }

      sub_1E38DCE1C(v16, v17);
    }

    v33 = v1[15];
    v52 = v1[16];
    v35 = v1[13];
    v34 = v1[14];
    v37 = v1[10];
    v36 = v1[11];
    sub_1E4204C84();
    sub_1E3283038(&unk_1ECF3D690, MEMORY[0x1E69AB618], MEMORY[0x1E69AB620]);
    swift_allocError();
    sub_1E4204C74();
    swift_willThrow();
    v38 = sub_1E4206B94();
    v39 = VUISignpostLogObject(v38);
    OUTLINED_FUNCTION_38_68();
    sub_1E41FFBA4();

    (*(v36 + 8))(v35, v37);
    (*(v33 + 8))(v52, v34);
  }

  v40 = sub_1E4206B94();
  v41 = VUISignpostLogObject(v40);
  sub_1E41FFBA4();

  v42 = OUTLINED_FUNCTION_5_219();
  v43(v42);

  OUTLINED_FUNCTION_54();
LABEL_9:

  return v32();
}

uint64_t sub_1E3FB87C0(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  v10 = sub_1E4206B94();
  v11 = VUISignpostLogObject(v10);
  OUTLINED_FUNCTION_23_95(v10, &dword_1E323F000, v12, "JetPackController.loadJetPackSource");

  v13 = OUTLINED_FUNCTION_5_219();
  v14(v13);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  return v16(v15, v16, v17, v18, v19, v20, v21, v22, a9, a10);
}

uint64_t sub_1E3FB8894(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10)
{
  OUTLINED_FUNCTION_81_15();
  OUTLINED_FUNCTION_80();
  (*(v10[15] + 8))(v10[16], v10[14]);
  v11 = sub_1E4206B94();
  v12 = VUISignpostLogObject(v11);
  OUTLINED_FUNCTION_23_95(v11, &dword_1E323F000, v13, "JetPackController.loadJetPackSource");

  v14 = OUTLINED_FUNCTION_5_219();
  v15(v14);

  OUTLINED_FUNCTION_54();
  OUTLINED_FUNCTION_159_0();

  return v17(v16, v17, v18, v19, v20, v21, v22, v23, a9, a10);
}

uint64_t sub_1E3FB8980()
{
  OUTLINED_FUNCTION_134();
  (*(v0[7] + 8))(v0[8], v0[6]);
  OUTLINED_FUNCTION_45_66();

  OUTLINED_FUNCTION_54();

  return v1();
}

id sub_1E3FB8A28()
{
  v0 = objc_allocWithZone(OUTLINED_FUNCTION_13_20());
  OUTLINED_FUNCTION_59_1();
  return sub_1E3FB8E34();
}

uint64_t sub_1E3FB8A64()
{
  OUTLINED_FUNCTION_134();
  v2 = v0[10];
  v1 = v0[11];
  v3 = v0[9];
  v4 = sub_1E4206B94();
  v5 = VUISignpostLogObject(v4);
  OUTLINED_FUNCTION_39_64();
  sub_1E41FFBA4();

  (*(v2 + 8))(v1, v3);

  OUTLINED_FUNCTION_54();

  return v6();
}

objc_class *sub_1E3FB8B30()
{
  v2 = objc_allocWithZone(OUTLINED_FUNCTION_12_1());
  v3 = OBJC_IVAR____TtC8VideosUI13VUIJetPackURL_url;
  v4 = sub_1E41FE414();
  (*(*(v4 - 8) + 16))(&v2[v3], v0, v4);
  v8.receiver = v2;
  v8.super_class = v1;
  objc_msgSendSuper2(&v8, sel_init);
  v5 = OUTLINED_FUNCTION_41_65();
  v6(v5);
  return v1;
}

void sub_1E3FB8C18(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, uint64_t a5, uint64_t a6, uint64_t a7, uint64_t a8, uint64_t a9, uint64_t a10, uint64_t a11, uint64_t a12, uint64_t a13, uint64_t a14, uint64_t a15, uint64_t a16, uint64_t a17, uint64_t a18, uint64_t a19, uint64_t a20)
{
  OUTLINED_FUNCTION_31_1();
  a19 = v20;
  a20 = v21;
  v23 = v22;
  v25 = v24;
  v26 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6C8, &unk_1E42E2A10);
  OUTLINED_FUNCTION_17_2(v26);
  OUTLINED_FUNCTION_5_7();
  MEMORY[0x1EEE9AC00](v27);
  v29 = &a9 - v28;
  v30 = objc_opt_self();
  v31 = objc_opt_self();
  v32 = [v31 currentProcess];
  [v30 ams:v32 configurationWithProcessInfo:v25 bag:?];

  swift_unknownObjectRetain();
  sub_1E4204C54();
  sub_1E4204C64();
  OUTLINED_FUNCTION_114();
  __swift_storeEnumTagSinglePayload(v33, v34, v35, v36);
  v37 = [v31 currentProcess];
  OUTLINED_FUNCTION_5_12();
  v38 = sub_1E4204444();

  sub_1E325F6F0(v29, &qword_1ECF3D6C8, &unk_1E42E2A10);
  if (v23)
  {
    [v38 setUrlKnownToBeTrusted_];
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t VUIJetPackControllerResponse.source.getter()
{
  v1 = *(v0 + OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_source);

  return v1;
}

id sub_1E3FB8E34()
{
  OUTLINED_FUNCTION_13_20();
  ObjectType = swift_getObjectType();
  v5 = OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_url;
  v6 = sub_1E41FE414();
  v7 = *(v6 - 8);
  (*(v7 + 16))(&v1[v5], v3, v6);
  v8 = &v1[OBJC_IVAR____TtC8VideosUI28VUIJetPackControllerResponse_source];
  *v8 = v2;
  *(v8 + 1) = v0;
  v11.receiver = v1;
  v11.super_class = ObjectType;
  v9 = objc_msgSendSuper2(&v11, sel_init);
  (*(v7 + 8))(v3, v6);
  return v9;
}

id VUIJetPackURL.__allocating_init()()
{
  v1 = objc_allocWithZone(v0);

  return [v1 init];
}

uint64_t sub_1E3FB904C(uint64_t a1)
{
  sub_1E3283038(&qword_1ECF3D660, type metadata accessor for AMSBagKey, &unk_1E42E285C);
  sub_1E3283038(&qword_1ECF3D668, type metadata accessor for AMSBagKey, &unk_1E42E27FC);

  return sub_1E4207764();
}

unint64_t sub_1E3FB9108(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF69AE0[0];
  if (!qword_1ECF69AE0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69AE0);
  }

  return result;
}

uint64_t sub_1E3FB915C()
{
  OUTLINED_FUNCTION_24();
  OUTLINED_FUNCTION_39();
  OUTLINED_FUNCTION_23_5();
  *v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_7();
  *v5 = v4;
  *(v6 + 40) = v0;

  OUTLINED_FUNCTION_169();

  return MEMORY[0x1EEE6DFA0](v7, v8, v9);
}

uint64_t sub_1E3FB9254()
{
  OUTLINED_FUNCTION_24();
  v1 = *(v0 + 40);
  sub_1E4204CC4();

  OUTLINED_FUNCTION_54();

  return v2();
}

_BYTE *storeEnumTagSinglePayload for ValidatedJetPackAssetLocationError(_BYTE *result, int a2, int a3)
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

unint64_t sub_1E3FB9424(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF69DF0[0];
  if (!qword_1ECF69DF0[0])
  {
    result = swift_getWitnessTable();
    atomic_store(result, qword_1ECF69DF0);
  }

  return result;
}

uint64_t objectdestroy_35Tm_1()
{
  swift_unknownObjectRelease();

  return swift_deallocObject();
}

void (*sub_1E3FB94F0(void *a1))(char **a1)
{
  v3 = __swift_coroFrameAllocStub(0x60uLL);
  *a1 = v3;
  *(v3 + 10) = v1;
  type metadata accessor for UIEdgeInsets();
  *(v3 + 11) = v4;
  sub_1E3C2C6A0();
  v5 = v3[72];
  v6 = *(v3 + 56);
  *v3 = *(v3 + 40);
  *(v3 + 1) = v6;
  v3[32] = v5;
  return sub_1E3CCE81C;
}

double sub_1E3FB957C()
{
  v0 = [objc_opt_self() isPhone];
  result = 44.0;
  if (!v0)
  {
    return 25.0;
  }

  return result;
}

uint64_t sub_1E3FB95F8(uint64_t a1)
{
  type metadata accessor for MediaControlButtonLayout();
  v1[13] = sub_1E3DBE1E0();
  v1[14] = sub_1E3DBE1E0();
  type metadata accessor for ImageLayout();
  v1[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v1[17] = sub_1E383BCC0();
  type metadata accessor for MediaShowcasingMetadataLayout();
  v1[16] = sub_1E3CCEAA8(a1);
  v3 = sub_1E3C2F9A0();

  sub_1E3FB97D0();
  sub_1E3FB9958();
  sub_1E3FB9C1C();
  sub_1E3FB9E84();

  sub_1E3C37CBC(v4, 224);

  sub_1E3C37CBC(v5, 17);

  sub_1E3C37CBC(v6, 40);

  return v3;
}

void sub_1E3FB9728()
{
  type metadata accessor for MediaControlButtonLayout();
  v0[13] = sub_1E3DBE1E0();
  v0[14] = sub_1E3DBE1E0();
  type metadata accessor for ImageLayout();
  v0[15] = sub_1E3BD61D8();
  type metadata accessor for TextLayout();
  v0[17] = sub_1E383BCC0();
  sub_1E42076B4();
  __break(1u);
}

uint64_t sub_1E3FB97D0()
{
  LOBYTE(v120) = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v0 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v0, v1, v2, v3, v4, v5, v6, v7, 0x4020000000000000, 0x4030000000000000, 0x4020000000000000, 0x4030000000000000, v120, v126, v132, v138, v144, v150, v156, v162, v168, v174, v180, v186, v192, v198, v204, v210, v216, v222, v228, v234, v240, v246, v252, v258, v264, v270, v276, v282, v288, v294, v300, v306, v312);
  OUTLINED_FUNCTION_4_233(v8, v9, v10, v11, v12, v13, v14, v15, v102, v111, v114, v117, v121, v127, v133, v139, v145, v151, v157, v163, v169, v175, v181, v187, v193, v199, v205, v211, v217, v223, v229, v235, v241, v247, v253, v259, v265, v271, v277, v283, v289, v295, v301, v307, v313, v318, v321, v324, v327, v330, v333, v336, v339, v342, v345, v348, v351, v354, v357, v360, v363, v366, v369);
  OUTLINED_FUNCTION_14_167(v16, v17, v18, v19, v20, v21, v22, v23, v103);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v25 = *(v24 + 1600);
  v34 = OUTLINED_FUNCTION_30_3(v26, v27, v28, v29, v30, v31, v32, v33, v104);
  v25(v34, 1);
  LOBYTE(v122) = 0;
  OUTLINED_FUNCTION_16_142(xmmword_1E42E2A50, xmmword_1E42E2A60);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v35 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v35, v36, v37, v38, v39, v40, v41, v42, 0x4040000000000000, 0x4047000000000000, 0x4042000000000000, 0x4047000000000000, v122, v128, v134, v140, v146, v152, v158, v164, v170, v176, v182, v188, v194, v200, v206, v212, v218, v224, v230, v236, v242, v248, v254, v260, v266, v272, v278, v284, v290, v296, v302, v308, v314);
  OUTLINED_FUNCTION_4_233(v43, v44, v45, v46, v47, v48, v49, v50, v105, v112, v115, v118, v123, v129, v135, v141, v147, v153, v159, v165, v171, v177, v183, v189, v195, v201, v207, v213, v219, v225, v231, v237, v243, v249, v255, v261, v267, v273, v279, v285, v291, v297, v303, v309, v315, v319, v322, v325, v328, v331, v334, v337, v340, v343, v346, v349, v352, v355, v358, v361, v364, v367, v370);
  OUTLINED_FUNCTION_14_167(v51, v52, v53, v54, v55, v56, v57, v58, v106);
  v59 = OUTLINED_FUNCTION_18();
  v67 = OUTLINED_FUNCTION_6_153(v59, v60, v61, v62, v63, v64, v65, v66, v107);
  (v25)(v67);
  LOBYTE(v124) = 0;
  OUTLINED_FUNCTION_16_142(xmmword_1E42E2A90, xmmword_1E42E2AA0);
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v68 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v68, v69, v70, v71, v72, v73, v74, v75, 0x4049C00000000000, 0x4041000000000000, 0x4041800000000000, 0x4041000000000000, v124, v130, v136, v142, v148, v154, v160, v166, v172, v178, v184, v190, v196, v202, v208, v214, v220, v226, v232, v238, v244, v250, v256, v262, v268, v274, v280, v286, v292, v298, v304, v310, v316);
  OUTLINED_FUNCTION_4_233(v76, v77, v78, v79, v80, v81, v82, v83, v108, v113, v116, v119, v125, v131, v137, v143, v149, v155, v161, v167, v173, v179, v185, v191, v197, v203, v209, v215, v221, v227, v233, v239, v245, v251, v257, v263, v269, v275, v281, v287, v293, v299, v305, v311, v317, v320, v323, v326, v329, v332, v335, v338, v341, v344, v347, v350, v353, v356, v359, v362, v365, v368, v371);
  OUTLINED_FUNCTION_14_167(v84, v85, v86, v87, v88, v89, v90, v91, v109);
  v92 = OUTLINED_FUNCTION_18();
  v100 = OUTLINED_FUNCTION_30_3(v92, v93, v94, v95, v96, v97, v98, v99, v110);
  return (v25)(v100, 121);
}

uint64_t sub_1E3FB9958()
{
  v78 = xmmword_1E42E2AB0;
  v79 = xmmword_1E42A76A0;
  v80 = 0;
  v75 = xmmword_1E42E2AC0;
  v76 = xmmword_1E42A76A0;
  v77 = 0;
  sub_1E3952C88();
  v70 = v0;
  v71 = v1;
  v72 = v2;
  v73 = v3;
  v74 = 0;
  v66 = xmmword_1E42E2AD0;
  v67 = 0;
  v68 = 0;
  v69 = 0;
  v62 = xmmword_1E42E2AE0;
  type metadata accessor for UIEdgeInsets();
  v5 = v4;
  v63 = 0;
  v64 = 0;
  v65 = 0;
  v13 = OUTLINED_FUNCTION_5_220(v4, v6, v7, v8, v9, v10, v11, v12, v57, v60, 0);
  sub_1E3C2FCB8(v13, v14, v15, v16, v17, &v62, v5, v18);
  memcpy(__dst, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v20 = *(v19 + 1600);
  v22 = v20(__dst, 0, v21 & 1, v5);
  LOBYTE(v78) = 17;
  LOBYTE(v75) = 15;
  LOBYTE(v70) = 15;
  LOBYTE(v66) = 2;
  LOBYTE(v62) = 7;
  v30 = OUTLINED_FUNCTION_5_220(v22, v23, v24, v25, v26, v27, v28, v29, v58, v60, 27);
  sub_1E3C2FCB8(v30, v31, v32, v33, v34, &v62, &qword_1F5D549D8, v35);
  v36 = OUTLINED_FUNCTION_13_171();
  v20(__dst, 48, v36 & 1, &qword_1F5D549D8);
  LOBYTE(__dst[0]) = 10;
  LOBYTE(v78) = 10;
  LOBYTE(v75) = 10;
  LOBYTE(v70) = 10;
  LOBYTE(v66) = 10;
  v37 = sub_1E3C3DE00();
  HIBYTE(v60) = v62;
  v45 = OUTLINED_FUNCTION_5_220(v37, v38, v39, v40, v41, v42, v43, v44, v59, v60, __dst[0]);
  sub_1E3C2FCB8(v45, v46, v47, v48, v49, &v60 + 7, &qword_1F5D54AF8, v50);
  v51 = OUTLINED_FUNCTION_13_171();
  v20(__dst, 54, v51 & 1, &qword_1F5D54AF8);
  v52 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v53 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v54 + 2056))(1, 0);
  OUTLINED_FUNCTION_36();
  return (*(v55 + 2176))(4, 0);
}

uint64_t sub_1E3FB9C1C()
{
  v58[8] = 1;
  OUTLINED_FUNCTION_15_156(0x4065400000000000uLL);
  OUTLINED_FUNCTION_12_156();
  OUTLINED_FUNCTION_11_174(v0, v1, v2, v3, v4, v5, v6, v7, 0, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  memcpy(v58, __src, 0x59uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v9 = *(v8 + 1600);
  v18 = OUTLINED_FUNCTION_30_3(v10, v11, v12, v13, v14, v15, v16, v17, *v58);
  v9(v18, 4);
  *v58 = 0;
  v58[8] = 1;
  OUTLINED_FUNCTION_15_156(0x4044000000000000uLL);
  OUTLINED_FUNCTION_12_156();
  OUTLINED_FUNCTION_11_174(v19, v20, v21, v22, v23, v24, v25, v26, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81, v82);
  memcpy(v58, __src, 0x59uLL);
  v27 = OUTLINED_FUNCTION_18();
  v35 = OUTLINED_FUNCTION_30_3(v27, v28, v29, v30, v31, v32, v33, v34, *v58);
  v9(v35, 8);
  v36 = [objc_opt_self() whiteColor];
  OUTLINED_FUNCTION_36();
  (*(v37 + 680))();
  OUTLINED_FUNCTION_36();
  (*(v38 + 1808))(1);
  OUTLINED_FUNCTION_36();
  (*(v39 + 512))(1);
  *v58 = 0;
  *&v58[8] = 0;
  *&v58[16] = xmmword_1E42CA370;
  v58[32] = 0;
  v84[1] = 0;
  v84[0] = 0;
  v85 = xmmword_1E42E2AF0;
  v86 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_11_8();
  OUTLINED_FUNCTION_10_8();
  v40 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v40, v41, v42, v43, v44, v45, v46, v47, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v59, v60, v61, v62, v63, v64, v65);
  OUTLINED_FUNCTION_7_211(v58, v84, v83, __src, *v58, *&v58[8], *&v58[16], *&v58[24], *&v58[32], *&v58[40], *&v58[48], *&v58[56], *&v58[64], *&v58[72], *&v58[80], *&v58[88], *&v58[96], *&v58[104], *&v58[112], *&v58[120], *&v58[128], *&v58[136], *&v58[144], *&v58[152], *&v58[160], *&v58[168], *&v58[176], *&v58[184], *&v58[192], *&v58[200], *&v58[208], *&v58[216], *&v58[224], *&v58[232], v59, v60, v61, v62, v63, v64, v65, *(&v65 + 1), v66, v67, v68, v69, v70, v71, v72, v73, v74, v75, v76, v77, v78, v79, v80, v81);
  memcpy(v58, __src, 0xE9uLL);
  v48 = OUTLINED_FUNCTION_18();
  v56 = OUTLINED_FUNCTION_6_153(v48, v49, v50, v51, v52, v53, v54, v55, *v58);
  return (v9)(v56);
}

uint64_t sub_1E3FB9E84()
{
  v37[32] = 1;
  v65 = xmmword_1E42AE100;
  v67 = 0;
  v66 = 0;
  v68 = 0;
  v61 = xmmword_1E42B8850;
  v63 = 0;
  v62 = 0;
  v64 = 0;
  type metadata accessor for UIEdgeInsets();
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_10_8();
  v0 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v0, v1, v2, v3, v4, v5, v6, v7, 0, 0, 0, 0, *&v37[32], *&v37[40], *&v37[48], *&v37[56], *&v37[64], *&v37[72], *&v37[80], *&v37[88], *&v37[96], *&v37[104], *&v37[112], *&v37[120], *&v37[128], *&v37[136], *&v37[144], *&v37[152], *&v37[160], *&v37[168], *&v37[176], *&v37[184], *&v37[192], *&v37[200], *&v37[208], *&v37[216], *&v37[224], *&v37[232], v38, v39, v40, v41, v42, v43, v44);
  OUTLINED_FUNCTION_7_211(v37, &v65, &v61, __src, *v37, *&v37[8], *&v37[16], *&v37[24], *&v37[32], *&v37[40], *&v37[48], *&v37[56], *&v37[64], *&v37[72], *&v37[80], *&v37[88], *&v37[96], *&v37[104], *&v37[112], *&v37[120], *&v37[128], *&v37[136], *&v37[144], *&v37[152], *&v37[160], *&v37[168], *&v37[176], *&v37[184], *&v37[192], *&v37[200], *&v37[208], *&v37[216], *&v37[224], *&v37[232], v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  memcpy(v37, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v16 = OUTLINED_FUNCTION_6_153(v8, v9, v10, v11, v12, v13, v14, v15, *v37);
  v17(v16);
  memset(v37, 0, 32);
  v37[32] = 1;
  v65 = 0uLL;
  v66 = 0;
  v67 = 0x4034000000000000;
  v68 = 0;
  v61 = 0uLL;
  v62 = 0;
  v63 = 0x403E000000000000;
  v64 = 0;
  sub_1E3C3DE00();
  OUTLINED_FUNCTION_10_8();
  v18 = OUTLINED_FUNCTION_9();
  OUTLINED_FUNCTION_107(v18, v19, v20, v21, v22, v23, v24, v25, *v37, *&v37[8], *&v37[16], *&v37[24], *&v37[32], *&v37[40], *&v37[48], *&v37[56], *&v37[64], *&v37[72], *&v37[80], *&v37[88], *&v37[96], *&v37[104], *&v37[112], *&v37[120], *&v37[128], *&v37[136], *&v37[144], *&v37[152], *&v37[160], *&v37[168], *&v37[176], *&v37[184], *&v37[192], *&v37[200], *&v37[208], *&v37[216], *&v37[224], *&v37[232], v38, v39, v40, v41, v42, v43, v44);
  OUTLINED_FUNCTION_7_211(v37, &v65, &v61, __src, *v37, *&v37[8], *&v37[16], *&v37[24], *&v37[32], *&v37[40], *&v37[48], *&v37[56], *&v37[64], *&v37[72], *&v37[80], *&v37[88], *&v37[96], *&v37[104], *&v37[112], *&v37[120], *&v37[128], *&v37[136], *&v37[144], *&v37[152], *&v37[160], *&v37[168], *&v37[176], *&v37[184], *&v37[192], *&v37[200], *&v37[208], *&v37[216], *&v37[224], *&v37[232], v38, v39, v40, v41, v42, v43, v44, *(&v44 + 1), v45, v46, v47, v48, v49, v50, v51, v52, v53, v54, v55, v56, v57, v58, v59, v60);
  memcpy(v37, __src, 0xE9uLL);
  OUTLINED_FUNCTION_18();
  OUTLINED_FUNCTION_14();
  v34 = OUTLINED_FUNCTION_6_153(v26, v27, v28, v29, v30, v31, v32, v33, *v37);
  return v35(v34);
}

uint64_t sub_1E3FBA064()
{
  type metadata accessor for AutoDownloadsManager();
  result = swift_initStaticObject();
  qword_1ECF719B8 = result;
  return result;
}

uint64_t *sub_1E3FBA090()
{
  if (qword_1ECF69F80 != -1)
  {
    swift_once();
  }

  return &qword_1ECF719B8;
}

uint64_t sub_1E3FBA0E0()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBA180()
{
  OUTLINED_FUNCTION_27_2();
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: startAutoDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = swift_task_alloc();
  *(v0 + 48) = v9;
  *v9 = v0;
  OUTLINED_FUNCTION_56_1(v9);

  return sub_1E3FBA5AC();
}

uint64_t sub_1E3FBA288()
{
  OUTLINED_FUNCTION_27_2();
  v3 = v2;
  v4 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v5 = v4;
  v6 = *v1;
  OUTLINED_FUNCTION_7();
  *v7 = v6;
  v4[7] = v0;

  if (v0)
  {

    return MEMORY[0x1EEE6DFA0](sub_1E3FBA53C, 0, 0);
  }

  else
  {
    v4[8] = v3;
    v8 = swift_task_alloc();
    v4[9] = v8;
    *v8 = v6;
    OUTLINED_FUNCTION_56_1(v8);

    return sub_1E3FBAC8C();
  }
}

uint64_t sub_1E3FBA3F4()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *v0;
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  v4 = *(v2 + 8);
  v5 = *(v1 + 56) == 0;

  return v4(v5);
}

uint64_t sub_1E3FBA53C()
{
  OUTLINED_FUNCTION_24();

  OUTLINED_FUNCTION_13_7();
  v2 = *(v0 + 56) == 0;

  return v1(v2);
}

uint64_t sub_1E3FBA5AC()
{
  OUTLINED_FUNCTION_24();
  v1 = sub_1E41FFCB4();
  v0[11] = v1;
  v0[12] = *(v1 - 8);
  v0[13] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v0[14] = OUTLINED_FUNCTION_104_0();
  v3 = OUTLINED_FUNCTION_61_0();
  v0[15] = v3;
  v0[16] = v2;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBA680, v3, v2);
}

uint64_t sub_1E3FBA680()
{
  OUTLINED_FUNCTION_27_2();
  v1 = [objc_opt_self() sharedPreferences];
  v0[17] = v1;
  v2 = [v1 autoDownloadsEpisodeCount];
  v3 = [v2 integerValue];

  type metadata accessor for AutoDownloadsServiceRequestContext(0);
  sub_1E3280A90(0, &unk_1ECF3FA50, off_1E87281E0);
  v4 = sub_1E3A81730();
  v0[18] = sub_1E3DADFD4(v4, v3);
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6D8, &unk_1E42E2BA0);
  v5 = sub_1E37B2CB8();
  v0[19] = v5;
  v6 = (*(*v5 + 352))();
  v0[20] = v6;
  if (v6)
  {
    v7 = swift_task_alloc();
    v0[21] = v7;
    *v7 = v0;
    v7[1] = sub_1E3FBA888;

    return MEMORY[0x1EEDB5DD8](v0 + 8);
  }

  else
  {

    v8 = v0[17];

    OUTLINED_FUNCTION_13_7();
    v10 = MEMORY[0x1E69E7CC0];

    return v9(v10);
  }
}

uint64_t sub_1E3FBA888()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 176) = v0;

  v5 = *(v2 + 128);
  v6 = *(v2 + 120);
  if (v0)
  {
    v7 = sub_1E3FBAAA0;
  }

  else
  {
    v7 = sub_1E3FBA9D4;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FBA9D4()
{
  OUTLINED_FUNCTION_27_2();

  v1 = *(v0 + 64);

  swift_beginAccess();
  v2 = *(v1 + 24);

  v3 = *(v0 + 136);

  if (!v2)
  {

    v2 = MEMORY[0x1E69E7CC0];
  }

  OUTLINED_FUNCTION_13_7();

  return v4(v2);
}

uint64_t sub_1E3FBAAA0()
{
  v24 = v0;
  v1 = v0[22];

  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_17_138();
  v3(v2);
  v4 = v1;
  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();

  if (os_log_type_enabled(v5, v6))
  {
    v8 = v0[12];
    v7 = v0[13];
    v9 = v0[11];
    v10 = OUTLINED_FUNCTION_6_21();
    v11 = swift_slowAlloc();
    v23 = v11;
    *v10 = 136315138;
    swift_getErrorValue();
    v12 = sub_1E4207AB4();
    v14 = sub_1E3270FC8(v12, v13, &v23);

    *(v10 + 4) = v14;
    _os_log_impl(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: error %s", v10, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v11);
    OUTLINED_FUNCTION_6_0();
    OUTLINED_FUNCTION_6_0();

    (*(v8 + 8))(v7, v9);
  }

  else
  {
    v16 = v0[12];
    v15 = v0[13];
    v17 = v0[11];

    (*(v16 + 8))(v15, v17);
  }

  v18 = v0[22];
  v19 = v0[17];

  OUTLINED_FUNCTION_13_7();
  v21 = MEMORY[0x1E69E7CC0];

  return v20(v21);
}

uint64_t sub_1E3FBAC8C()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v0[4] = v3;
  v0[5] = OUTLINED_FUNCTION_86_0();
  v4 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBAD2C()
{
  OUTLINED_FUNCTION_27_2();
  v1 = v0[3];
  sub_1E324FBDC();
  v2 = OUTLINED_FUNCTION_17_138();
  v3(v2);

  v4 = sub_1E41FFC94();
  v5 = sub_1E4206814();
  v6 = OUTLINED_FUNCTION_16_53(v5);
  v7 = v0[2];
  if (v6)
  {
    v8 = OUTLINED_FUNCTION_6_21();
    *v8 = 134217984;
    *(v8 + 4) = sub_1E32AE9B0(v7);

    _os_log_impl(&dword_1E323F000, v4, v1, "AutoDownloadsManager:: enqueuing %ld playables", v8, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  (*(v0[4] + 8))(v0[5], v0[3]);
  v0[6] = sub_1E4206434();
  v0[7] = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  v9 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v9, v10, v11);
}

uint64_t sub_1E3FBAE70()
{
  OUTLINED_FUNCTION_24();

  *(v0 + 64) = sub_1E3287BA0();
  v1 = OUTLINED_FUNCTION_11_1();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FBAED4()
{
  OUTLINED_FUNCTION_24();
  *(v0 + 72) = sub_1E4206424();
  OUTLINED_FUNCTION_61_0();
  v1 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v1, v2, v3);
}

uint64_t sub_1E3FBAF4C()
{
  OUTLINED_FUNCTION_24();
  v1 = v0[8];

  v2 = *v1;
  v0[10] = *v1;
  v2;
  v3 = swift_task_alloc();
  v0[11] = v3;
  *v3 = v0;
  v3[1] = sub_1E3FBB000;

  return sub_1E4099E40();
}

uint64_t sub_1E3FBB000()
{
  OUTLINED_FUNCTION_24();
  v1 = *(*v0 + 80);
  v2 = *v0;
  OUTLINED_FUNCTION_7();
  *v3 = v2;

  OUTLINED_FUNCTION_54();

  return v4();
}

uint64_t sub_1E3FBB118()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = OUTLINED_FUNCTION_104_0();
  v5 = OUTLINED_FUNCTION_61_0();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBB1E4, v5, v4);
}

uint64_t sub_1E3FBB1E4()
{
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removeWatchedDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = [objc_opt_self() defaultManager];
  v0[9] = [v9 sidebandMediaLibrary];

  v10 = MEMORY[0x1E69E7CC0];
  v41 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v11 = OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272(v11, v12, v13, v14, v15, v16, v17, v18, v41);
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v19 = OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272(v19, v20, v21, v22, v23, v24, v25, v26, v42);
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v27 = OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272(v27, v28, v29, v30, v31, v32, v33, v34, v43);
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  sub_1E3FBB5C8(v44);
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3D61F1C();
  v35 = sub_1E4206614();

  v36 = OUTLINED_FUNCTION_21_110();
  v38 = [v36 v37];

  if (v38)
  {
    sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
    v10 = sub_1E42062B4();
  }

  v0[10] = v10;
  v39 = swift_task_alloc();
  v0[11] = v39;
  *v39 = v0;
  OUTLINED_FUNCTION_56_1(v39);

  return sub_1E3FBB6C4();
}

uint64_t sub_1E3FBB498()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1E3FBD388;
  }

  else
  {
    v7 = sub_1E3FBD384;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

void sub_1E3FBB5C8(unint64_t a1)
{
  v2 = sub_1E32AE9B0(a1);
  v3 = sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  v4 = sub_1E3D61F1C();
  v8[1] = MEMORY[0x1E6910FA0](v2, v3, v4);
  v5 = sub_1E32AE9B0(a1);
  for (i = 0; ; ++i)
  {
    if (v5 == i)
    {

      return;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      v7 = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_11;
      }

      v7 = *(a1 + 8 * i + 32);
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    sub_1E3FBC838(v8, v7);
  }

  __break(1u);
LABEL_11:
  __break(1u);
}

uint64_t sub_1E3FBB6C4()
{
  OUTLINED_FUNCTION_24();
  v0[2] = v1;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v0[4] = v3;
  v0[5] = swift_task_alloc();
  v0[6] = swift_task_alloc();
  sub_1E4206434();
  v0[7] = OUTLINED_FUNCTION_104_0();
  OUTLINED_FUNCTION_61_0();
  v4 = OUTLINED_FUNCTION_42_5();

  return MEMORY[0x1EEE6DFA0](v4, v5, v6);
}

uint64_t sub_1E3FBB79C()
{
  v47 = v0;
  v1 = v0[6];
  v3 = v0[3];
  v2 = v0[4];

  v4 = sub_1E324FBDC();
  v43 = *(v2 + 16);
  v43(v1, v4, v3);

  v5 = sub_1E41FFC94();
  v6 = sub_1E4206814();
  v7 = os_log_type_enabled(v5, v6);
  v8 = v0[2];
  if (v7)
  {
    v9 = OUTLINED_FUNCTION_6_21();
    *v9 = 134217984;
    *(v9 + 4) = sub_1E32AE9B0(v8);

    _os_log_impl(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removing %ld downloads", v9, 0xCu);
    OUTLINED_FUNCTION_6_0();
  }

  else
  {
  }

  v10 = v0[4];
  v11 = v0[2];
  v14 = *(v10 + 8);
  v12 = v10 + 8;
  v13 = v14;
  v14(v0[6], v0[3]);
  result = sub_1E32AE9B0(v11);
  if (result)
  {
    v16 = result;
    if (result < 1)
    {
      __break(1u);
      return result;
    }

    v17 = 0;
    v18 = v0[2];
    v42 = v18 & 0xC000000000000001;
    v37 = v18 + 32;
    v39 = v4;
    v40 = v0;
    v38 = result;
    do
    {
      if (v42)
      {
        v19 = MEMORY[0x1E6911E60](v17, v0[2]);
      }

      else
      {
        v19 = *(v37 + 8 * v17);
      }

      v20 = v19;
      v43(v0[5], v4, v0[3]);
      v21 = v20;
      v22 = sub_1E41FFC94();
      v23 = sub_1E4206814();
      v45 = v21;

      v24 = os_log_type_enabled(v22, v23);
      v25 = v0[5];
      v44 = v0[3];
      if (v24)
      {
        v26 = OUTLINED_FUNCTION_6_21();
        v27 = swift_slowAlloc();
        v46 = v27;
        *v26 = 136315138;
        v28 = sub_1E3FBD320(v45);
        if (!v29)
        {
          v28 = 0x3E6C696E3CLL;
        }

        v30 = v13;
        v31 = v12;
        if (v29)
        {
          v32 = v29;
        }

        else
        {
          v32 = 0xE500000000000000;
        }

        v41 = v25;
        v33 = sub_1E3270FC8(v28, v32, &v46);
        v12 = v31;
        v13 = v30;
        v16 = v38;

        *(v26 + 4) = v33;
        _os_log_impl(&dword_1E323F000, v22, v23, "AutoDownloadsManager:: removing %s", v26, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        v0 = v40;
        OUTLINED_FUNCTION_6_0();
        v4 = v39;
        OUTLINED_FUNCTION_6_0();

        v34 = v41;
      }

      else
      {

        v34 = v25;
      }

      v13(v34, v44);
      ++v17;
      v35 = [objc_allocWithZone(VUIUniversalAssetController) initWithVideoManagedObject_];
      [v35 cancelAndRemoveDownload];
    }

    while (v16 != v17);
  }

  OUTLINED_FUNCTION_54();

  return v36();
}

uint64_t sub_1E3FBBB04()
{
  OUTLINED_FUNCTION_24();
  v1[2] = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_309(v2);
  v1[4] = v3;
  v1[5] = OUTLINED_FUNCTION_86_0();
  sub_1E4206434();
  v1[6] = OUTLINED_FUNCTION_104_0();
  v5 = OUTLINED_FUNCTION_61_0();
  v1[7] = v5;
  v1[8] = v4;

  return MEMORY[0x1EEE6DFA0](sub_1E3FBBBD0, v5, v4);
}

uint64_t sub_1E3FBBBD0()
{
  sub_1E324FBDC();
  v1 = OUTLINED_FUNCTION_22_34();
  v2(v1);
  v3 = sub_1E41FFC94();
  v4 = sub_1E4206814();
  if (OUTLINED_FUNCTION_16_53(v4))
  {
    *swift_slowAlloc() = 0;
    OUTLINED_FUNCTION_3_12(&dword_1E323F000, v5, v6, "AutoDownloadsManager:: removeOngoingDownloads");
    OUTLINED_FUNCTION_6_0();
  }

  v7 = OUTLINED_FUNCTION_17_10();
  v8(v7);
  v9 = [objc_opt_self() defaultManager];
  v0[9] = [v9 sidebandMediaLibrary];

  v10 = MEMORY[0x1E69E7CC0];
  v33 = MEMORY[0x1E69E7CC0];
  sub_1E4207574();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v11 = OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272(v11, v12, v13, v14, v15, v16, v17, v18, v33);
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  v19 = OUTLINED_FUNCTION_16_143();
  OUTLINED_FUNCTION_1_272(v19, v20, v21, v22, v23, v24, v25, v26, v34);
  OUTLINED_FUNCTION_4_234();
  sub_1E4207594();
  sub_1E4207554();
  sub_1E3FBB5C8(v35);
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3D61F1C();
  v27 = sub_1E4206614();

  v28 = OUTLINED_FUNCTION_21_110();
  v30 = [v28 v29];

  if (v30)
  {
    sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
    v10 = sub_1E42062B4();
  }

  v0[10] = v10;
  v31 = swift_task_alloc();
  v0[11] = v31;
  *v31 = v0;
  OUTLINED_FUNCTION_56_1(v31);

  return sub_1E3FBB6C4();
}

uint64_t sub_1E3FBBE50()
{
  OUTLINED_FUNCTION_27_2();
  v2 = *v1;
  OUTLINED_FUNCTION_37_2();
  *v4 = v3;
  *v4 = *v1;
  *(v3 + 96) = v0;

  v5 = *(v2 + 64);
  v6 = *(v2 + 56);
  if (v0)
  {
    v7 = sub_1E3FBBFFC;
  }

  else
  {
    v7 = sub_1E3FBBF80;
  }

  return MEMORY[0x1EEE6DFA0](v7, v6, v5);
}

uint64_t sub_1E3FBBF80()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3FBBFFC()
{
  OUTLINED_FUNCTION_27_2();
  v1 = *(v0 + 72);

  OUTLINED_FUNCTION_54();

  return v2();
}

uint64_t sub_1E3FBC078(uint64_t a1)
{
  v1 = [objc_opt_self() stringFromByteCount:a1 countStyle:2];
  v2 = sub_1E4205F14();

  return v2;
}

void sub_1E3FBC0E4()
{
  v0 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v2 = v1;
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v22 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = [objc_opt_self() sharedPreferences];
  v7 = [v6 autoDownloadsStorageLimit];

  v8 = [v7 longLongValue];
  v9 = 1000000000 * v8;
  if ((v8 * 1000000000) >> 64 == (1000000000 * v8) >> 63)
  {
    v10 = sub_1E3FBC36C();
    v11 = sub_1E324FBDC();
    (*(v2 + 16))(v5, v11, v0);

    v12 = sub_1E41FFC94();
    v13 = sub_1E42067E4();

    if (os_log_type_enabled(v12, v13))
    {
      v14 = swift_slowAlloc();
      v15 = swift_slowAlloc();
      v22 = v0;
      v23 = v15;
      *v14 = 136315394;
      v16 = sub_1E3FBC078(v9);
      v18 = sub_1E3270FC8(v16, v17, &v23);

      *(v14 + 4) = v18;
      *(v14 + 12) = 2080;
      v19 = sub_1E3FBC078(v10);
      v21 = sub_1E3270FC8(v19, v20, &v23);

      *(v14 + 14) = v21;
      _os_log_impl(&dword_1E323F000, v12, v13, "AutoDownloadsManager:: storageLimit=%s,\n                       currentStorage=%s", v14, 0x16u);
      swift_arrayDestroy();
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (*(v2 + 8))(v5, v22);
    }

    else
    {

      (*(v2 + 8))(v5, v0);
    }
  }

  else
  {
    __break(1u);
  }
}

uint64_t sub_1E3FBC36C()
{
  v40 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v1 = v0;
  MEMORY[0x1EEE9AC00](v2);
  v37 = &v32 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v39 = &v32 - v5;
  v6 = [objc_opt_self() mainBundle];
  v7 = sub_1E3ABF2D0(v6);
  v9 = 0x6C7070612E6D6F63;
  if (v8)
  {
    v9 = v7;
  }

  v36 = v9;
  if (v8)
  {
    v10 = v8;
  }

  else
  {
    v10 = 0xEC00000076742E65;
  }

  v11 = [objc_opt_self() defaultManager];
  v12 = [v11 sidebandMediaLibrary];

  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1E4298880;
  *(inited + 32) = [objc_allocWithZone(MEMORY[0x1E696AD98]) initWithLongLong_];
  sub_1E3FBB5C8(inited);
  sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
  sub_1E3D61F1C();
  v14 = sub_1E4206614();

  v15 = [v12 videosWithDownloadStates:v14 downloadTrigger:1 useMainThreadContext:1];

  if (!v15)
  {

    return 0;
  }

  sub_1E3280A90(0, &qword_1EE23B0B0, off_1E8728688);
  v16 = sub_1E42062B4();

  result = sub_1E32AE9B0(v16);
  if (!result)
  {

    return 0;
  }

  v18 = result;
  if (result < 1)
  {
    goto LABEL_27;
  }

  v35 = v10;
  v19 = 0;
  v20 = 0;
  v38 = v16 & 0xC000000000000001;
  v33 = v12;
  v34 = (v1 + 32);
  v21 = (v1 + 8);
  while (1)
  {
    v22 = v38 ? MEMORY[0x1E6911E60](v20, v16) : *(v16 + 8 * v20 + 32);
    v23 = v22;
    v24 = [v22 localPlaybackURL];
    if (v24)
    {
      break;
    }

LABEL_20:
    if (v18 == ++v20)
    {

      return v19;
    }
  }

  v25 = v24;
  v26 = v16;
  v27 = v37;
  sub_1E41FE3C4();

  (*v34)(v39, v27, v40);
  sub_1E41FE3E4();
  sub_1E3280A90(0, &qword_1ECF3D6D0, 0x1E6992050);

  v28 = sub_1E3FBC780();
  if (v28)
  {
    v29 = v28;
    v30 = [v28 size];
  }

  else
  {
    v30 = 0;
  }

  result = (*v21)(v39, v40);
  v31 = __OFADD__(v19, v30);
  v19 += v30;
  if (!v31)
  {
    v16 = v26;
    goto LABEL_20;
  }

  __break(1u);
LABEL_27:
  __break(1u);
  return result;
}

id sub_1E3FBC780()
{
  v0 = sub_1E4205ED4();

  v1 = sub_1E4205ED4();

  v2 = [swift_getObjCClassFromMetadata() assetFromFile:v0 withIdentifier:v1];

  return v2;
}

uint64_t sub_1E3FBC838(uint64_t *a1, void *a2)
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

    v9 = sub_1E4207394();

    if (v9)
    {

      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      swift_dynamicCast();
      result = 0;
      *a1 = v22;
    }

    else
    {
      result = sub_1E4207384();
      if (__OFADD__(result, 1))
      {
        __break(1u);
      }

      else
      {
        v16 = sub_1E3FBCA5C(v7, result + 1);
        v17 = *(v16 + 16);
        if (*(v16 + 24) <= v17)
        {
          sub_1E3FBCC38(v17 + 1);
        }

        v18 = v8;
        sub_1E3B0CE7C(v18, v16);

        *v3 = v16;
LABEL_16:
        *a1 = v18;
        return 1;
      }
    }
  }

  else
  {
    sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
    v11 = sub_1E4206F54();
    v12 = ~(-1 << *(v6 + 32));
    while (1)
    {
      v13 = v11 & v12;
      if (((*(v6 + 56 + (((v11 & v12) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v11 & v12)) & 1) == 0)
      {
        isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
        v23 = *v3;
        v18 = a2;
        sub_1E3FBCE5C(v18, v13, isUniquelyReferenced_nonNull_native);
        *v3 = v23;
        goto LABEL_16;
      }

      v14 = *(*(v6 + 48) + 8 * v13);
      v15 = sub_1E4206F64();

      if (v15)
      {
        break;
      }

      v11 = v13 + 1;
    }

    v20 = *(*(v6 + 48) + 8 * v13);
    *a1 = v20;
    v21 = v20;
    return 0;
  }

  return result;
}

uint64_t sub_1E3FBCA5C(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8, &qword_1E42E9790);
    v2 = sub_1E4207454();
    v15 = v2;
    sub_1E4207344();
    while (1)
    {
      if (!sub_1E42073C4())
      {

        return v2;
      }

      sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
      swift_dynamicCast();
      v3 = *(v2 + 16);
      if (*(v2 + 24) <= v3)
      {
        sub_1E3FBCC38(v3 + 1);
      }

      v2 = v15;
      result = sub_1E4206F54();
      v5 = v15 + 56;
      v6 = -1 << *(v15 + 32);
      v7 = result & ~v6;
      v8 = v7 >> 6;
      if (((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6))) == 0)
      {
        break;
      }

      v9 = __clz(__rbit64((-1 << v7) & ~*(v15 + 56 + 8 * (v7 >> 6)))) | v7 & 0x7FFFFFFFFFFFFFC0;
LABEL_15:
      *(v5 + ((v9 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v9;
      *(*(v15 + 48) + 8 * v9) = v14;
      ++*(v15 + 16);
    }

    v10 = 0;
    v11 = (63 - v6) >> 6;
    while (++v8 != v11 || (v10 & 1) == 0)
    {
      v12 = v8 == v11;
      if (v8 == v11)
      {
        v8 = 0;
      }

      v10 |= v12;
      v13 = *(v5 + 8 * v8);
      if (v13 != -1)
      {
        v9 = __clz(__rbit64(~v13)) + (v8 << 6);
        goto LABEL_15;
      }
    }

    __break(1u);
  }

  else
  {
    swift_unknownObjectRelease();
    return MEMORY[0x1E69E7CD0];
  }

  return result;
}

void sub_1E3FBCC38(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8, &qword_1E42E9790);
  v4 = sub_1E4207444();
  v5 = v4;
  if (!*(v3 + 16))
  {
LABEL_27:

    *v2 = v5;
    return;
  }

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
  if (!v10)
  {
LABEL_7:
    v14 = v6;
    while (1)
    {
      v6 = v14 + 1;
      if (__OFADD__(v14, 1))
      {
        __break(1u);
        goto LABEL_29;
      }

      if (v6 >= v11)
      {
        break;
      }

      v15 = v7[v6];
      ++v14;
      if (v15)
      {
        v13 = __clz(__rbit64(v15));
        v10 = (v15 - 1) & v15;
        goto LABEL_12;
      }
    }

    v26 = 1 << *(v3 + 32);
    if (v26 >= 64)
    {
      sub_1E373CBF0(0, (v26 + 63) >> 6, v3 + 56);
    }

    else
    {
      *v7 = -1 << v26;
    }

    *(v3 + 16) = 0;
    goto LABEL_27;
  }

  while (1)
  {
    v13 = __clz(__rbit64(v10));
    v10 &= v10 - 1;
LABEL_12:
    v16 = *(*(v3 + 48) + 8 * (v13 | (v6 << 6)));
    v17 = sub_1E4206F54();
    v18 = -1 << *(v5 + 32);
    v19 = v17 & ~v18;
    v20 = v19 >> 6;
    if (((-1 << v19) & ~*(v12 + 8 * (v19 >> 6))) == 0)
    {
      break;
    }

    v21 = __clz(__rbit64((-1 << v19) & ~*(v12 + 8 * (v19 >> 6)))) | v19 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    *(v12 + ((v21 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v21;
    *(*(v5 + 48) + 8 * v21) = v16;
    ++*(v5 + 16);
    if (!v10)
    {
      goto LABEL_7;
    }
  }

  v22 = 0;
  v23 = (63 - v18) >> 6;
  while (++v20 != v23 || (v22 & 1) == 0)
  {
    v24 = v20 == v23;
    if (v20 == v23)
    {
      v20 = 0;
    }

    v22 |= v24;
    v25 = *(v12 + 8 * v20);
    if (v25 != -1)
    {
      v21 = __clz(__rbit64(~v25)) + (v20 << 6);
      goto LABEL_21;
    }
  }

LABEL_29:
  __break(1u);
}

void sub_1E3FBCE5C(uint64_t result, unint64_t a2, char a3)
{
  v6 = *(*v3 + 16);
  v7 = *(*v3 + 24);
  if (v7 <= v6 || (a3 & 1) == 0)
  {
    if (a3)
    {
      sub_1E3FBCC38(v6 + 1);
      goto LABEL_8;
    }

    if (v7 <= v6)
    {
      sub_1E3FBD110(v6 + 1);
LABEL_8:
      v8 = *v3;
      v9 = sub_1E4206F54();
      v10 = ~(-1 << *(v8 + 32));
      while (1)
      {
        a2 = v9 & v10;
        if (((*(v8 + 56 + (((v9 & v10) >> 3) & 0xFFFFFFFFFFFFFF8)) >> (v9 & v10)) & 1) == 0)
        {
          goto LABEL_12;
        }

        sub_1E3280A90(0, &qword_1EE23ADD0, 0x1E696AD98);
        v11 = *(*(v8 + 48) + 8 * a2);
        v12 = sub_1E4206F64();

        if (v12)
        {
          goto LABEL_15;
        }

        v9 = a2 + 1;
      }
    }

    sub_1E3FBCFC0();
  }

LABEL_12:
  v13 = *v3;
  *(*v3 + 8 * (a2 >> 6) + 56) |= 1 << a2;
  *(*(v13 + 48) + 8 * a2) = result;
  v14 = *(v13 + 16);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
LABEL_15:
    sub_1E4207A64();
    __break(1u);
  }

  else
  {
    *(v13 + 16) = v16;
  }
}

void sub_1E3FBCFC0()
{
  v1 = v0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8, &qword_1E42E9790);
  v2 = *v0;
  v3 = sub_1E4207434();
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
        v17 = v14 | (v8 << 6);
        v18 = *(*(v2 + 48) + 8 * v17);
        *(*(v4 + 48) + 8 * v17) = v18;
        v19 = v18;
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

void sub_1E3FBD110(uint64_t a1)
{
  v2 = v1;
  v3 = *v1;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF2FBC8, &qword_1E42E9790);
  v4 = sub_1E4207444();
  v5 = v4;
  if (*(v3 + 16))
  {
    v25 = v1;
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
    if (v9)
    {
      while (1)
      {
        v12 = __clz(__rbit64(v9));
        v9 &= v9 - 1;
LABEL_12:
        v15 = *(*(v3 + 48) + 8 * (v12 | (v6 << 6)));
        v16 = sub_1E4206F54();
        v17 = -1 << *(v5 + 32);
        v18 = v16 & ~v17;
        v19 = v18 >> 6;
        if (((-1 << v18) & ~*(v11 + 8 * (v18 >> 6))) == 0)
        {
          break;
        }

        v20 = __clz(__rbit64((-1 << v18) & ~*(v11 + 8 * (v18 >> 6)))) | v18 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
        *(v11 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
        *(*(v5 + 48) + 8 * v20) = v15;
        ++*(v5 + 16);
        if (!v9)
        {
          goto LABEL_7;
        }
      }

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
        v24 = *(v11 + 8 * v19);
        if (v24 != -1)
        {
          v20 = __clz(__rbit64(~v24)) + (v19 << 6);
          goto LABEL_21;
        }
      }
    }

    else
    {
LABEL_7:
      v13 = v6;
      while (1)
      {
        v6 = v13 + 1;
        if (__OFADD__(v13, 1))
        {
          break;
        }

        if (v6 >= v10)
        {

          v2 = v25;
          goto LABEL_25;
        }

        v14 = *(v3 + 56 + 8 * v6);
        ++v13;
        if (v14)
        {
          v12 = __clz(__rbit64(v14));
          v9 = (v14 - 1) & v14;
          goto LABEL_12;
        }
      }

      __break(1u);
    }

    __break(1u);
  }

  else
  {

LABEL_25:
    *v2 = v5;
  }
}

uint64_t sub_1E3FBD320(void *a1)
{
  v1 = [a1 title];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  v3 = sub_1E4205F14();

  return v3;
}

uint64_t sub_1E3FBD38C()
{
  v0 = [objc_opt_self() standardUserDefaults];
  v1 = sub_1E4205ED4();
  v2 = [v0 objectForKey_];

  if (v2)
  {
    sub_1E4207264();
    swift_unknownObjectRelease();
  }

  else
  {
    v6 = 0u;
    v7 = 0u;
  }

  v8[0] = v6;
  v8[1] = v7;
  if (!*(&v7 + 1))
  {
    result = sub_1E325F748(v8, &unk_1ECF296E0, &unk_1E4298030);
    goto LABEL_8;
  }

  result = swift_dynamicCast();
  if (!result)
  {
LABEL_8:
    v4 = 1;
    goto LABEL_9;
  }

  v4 = v5;
LABEL_9:
  byte_1EE2AAAB8 = v4;
  return result;
}

uint64_t sub_1E3FBD4AC()
{
  if (*(v0 + 104))
  {
    v1 = *(v0 + 104);
  }

  else
  {
    v2 = v0;
    type metadata accessor for ButtonLayout();
    v1 = sub_1E3BC565C();
    if (sub_1E39DFFC8())
    {
      if (qword_1EE293FC0 != -1)
      {
        OUTLINED_FUNCTION_0_310(&qword_1EE293FC0);
      }

      if ((byte_1EE2AAAB8 & 1) == 0)
      {
        v3 = (*(*v1 + 2320))(1);
        v4 = (*v1 + 2096);
        v5 = *v4;
        v6 = *(*v4)(v3);
        (*(v6 + 360))(0x403C000000000000, 0);

        v8 = *v5(v7);
        (*(v8 + 256))(0x403C000000000000, 0);

        v9 = (*(*v1 + 1888))(1);
        v10 = v5(v9);
        v11 = [objc_opt_self() configurationWithPointSize:7 weight:2 scale:16.0];
        (*(*v10 + 1952))(v11);
      }
    }

    *(v2 + 104) = v1;
  }

  return v1;
}

uint64_t sub_1E3FBD74C()
{
  *(v0 + 104) = 0;
  *(v0 + 112) = 0x4030000000000000;
  return sub_1E3C2F9A0();
}

uint64_t sub_1E3FBD758()
{
  v0 = sub_1E3C36C6C();

  return MEMORY[0x1EEE6BDC0](v0, 120, 7);
}

uint64_t sub_1E3FBD7A0(uint64_t *a1, uint64_t *a2)
{
  if ((a1[3] & 1) != 0 && a1[2])
  {
    v2 = *(a1 + 25);
    v3 = *(a2 + 24);
    if ((v3 & 1) == 0)
    {
      goto LABEL_10;
    }
  }

  else
  {
    v3 = *(a2 + 24);
    if ((v3 & 1) == 0)
    {
      goto LABEL_11;
    }

    v2 = 0;
  }

  if (a2[2])
  {
    if ((v2 & 1) != (*(a2 + 25) & 1))
    {
      goto LABEL_30;
    }

    goto LABEL_11;
  }

LABEL_10:
  if (v2)
  {
    goto LABEL_30;
  }

LABEL_11:
  v4 = a2[2];
  v5 = a1[2];
  if (v5)
  {
    if (v5 != v4)
    {
      goto LABEL_30;
    }
  }

  else if (v4)
  {
    goto LABEL_30;
  }

  if (a1[1])
  {
    v6 = *a1;
    if (a2[1])
    {
      v7 = 0;
      v8 = 0;
      v9 = *a2;
      if ((v6 != 0) == (*a2 == 0))
      {
        return v8 & 1;
      }

      goto LABEL_25;
    }

    v10 = 0;
    v8 = 0;
    if (v6)
    {
      return v8 & 1;
    }

LABEL_23:
    v9 = *a2;
    v7 = v10 ^ 1;
    goto LABEL_25;
  }

  v10 = *(a2 + 8);
  if ((v10 & 1) == 0)
  {
    goto LABEL_23;
  }

  v7 = 0;
  if (*a2)
  {
    v8 = 0;
    return v8 & 1;
  }

  v9 = 0;
LABEL_25:
  v11 = *a1;
  if (!*a1)
  {
    if (!v9)
    {
      goto LABEL_29;
    }

LABEL_30:
    v8 = 0;
    return v8 & 1;
  }

  if (v11 != v9)
  {
    goto LABEL_30;
  }

LABEL_29:
  if ((*(a1 + 25) & 1) != (*(a2 + 25) & 1))
  {
    goto LABEL_30;
  }

  if (a1[5])
  {
    v13 = a1[4];
    if ((a2[5] & 1) == 0)
    {
      v14 = 0;
      v8 = 0;
      if (v13)
      {
        return v8 & 1;
      }

      goto LABEL_40;
    }

    if ((v13 != 0) == (a2[4] == 0))
    {
      goto LABEL_30;
    }

    goto LABEL_38;
  }

  v14 = *(a2 + 40);
  if (v14)
  {
    if (a2[4])
    {
      goto LABEL_30;
    }

LABEL_38:
    v14 = 1;
  }

LABEL_40:
  v15 = a2[4];
  v16 = a1[4];
  if (v16)
  {
    if (v16 != v15)
    {
      goto LABEL_30;
    }
  }

  else if (v15)
  {
    goto LABEL_30;
  }

  if ((*(a1 + 41) & 1) != (*(a2 + 41) & 1))
  {
    goto LABEL_30;
  }

  v17 = 0;
  if (v11 && a1[6] && (a1[1] & 1) != 0 && (*(a1 + 41) & 1) != 0)
  {
    v17 = *(a1 + 42);
  }

  if (a2[6] && !(v7 & 1 | (v9 == 0)) && (*(a2 + 41) & 1) != 0)
  {
    if ((v17 & 1) != (*(a2 + 42) & 1))
    {
      goto LABEL_30;
    }
  }

  else if (v17)
  {
    goto LABEL_30;
  }

  v18 = 0;
  if (v5 && a1[9] && (*(a1 + 41) & 1) != 0 && (*(a1 + 25) & 1) != 0 && (a1[3] & 1) != 0)
  {
    v18 = *(a1 + 42);
  }

  if (a2[9] && (v3 & (v4 != 0)) == 1 && (*(a2 + 41) & 1) != 0 && (*(a2 + 25) & 1) != 0)
  {
    v19 = *(a2 + 42);
    if ((v18 & 1) != (v19 & 1))
    {
      goto LABEL_30;
    }
  }

  else
  {
    if (v18)
    {
      goto LABEL_30;
    }

    v19 = *(a2 + 42);
  }

  v20 = *(a1 + 42);
  if ((v19 & 1) != (v20 & 1))
  {
    goto LABEL_30;
  }

  if ((a1[5] & 1) == 0 || !a1[10] || (*(a1 + 41) & 1) == 0)
  {
    v20 = 0;
  }

  if ((v14 & 1) == 0 || !a2[10] || (*(a2 + 41) & 1) == 0)
  {
    v19 = 0;
  }

  v8 = v19 ^ v20 ^ 1;
  return v8 & 1;
}

id sub_1E3FBDA48@<X0>(uint64_t a1@<X8>)
{
  v2 = objc_opt_self();
  v3 = [v2 fixedSpaceItemOfWidth_];
  result = [v2 fixedSpaceItemOfWidth_];
  *a1 = 0;
  *(a1 + 8) = 0;
  *(a1 + 16) = 0;
  *(a1 + 24) = 0;
  *(a1 + 32) = 0;
  *(a1 + 39) = 0;
  *(a1 + 48) = 0;
  *(a1 + 56) = v3;
  *(a1 + 72) = 0;
  *(a1 + 80) = 0;
  *(a1 + 64) = result;
  return result;
}

void sub_1E3FBDADC(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  OUTLINED_FUNCTION_15_0(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted, a2);
  v5 = *(v2 + v4);
  v6 = [objc_opt_self() sharedInstance];
  if (v6)
  {
    v7 = v6;
    if (v5)
    {
      v8 = 0x80000001E426CE40;
    }

    else
    {
      v8 = 0xEE006574754D2E6ELL;
    }

    if (v5)
    {
      v9 = 0xD000000000000010;
    }

    else
    {
      v9 = 0x6F747475422E5654;
    }

    v10 = sub_1E3741090(v9, v8, v7);
    v12 = v11;

    v13 = v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
    v14 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
    v15 = &selRef_setDelayContentsChangeOperation_;
    if (v14)
    {
      v16 = [v14 imageView];
      if (v16)
      {
        v17 = v16;
        OUTLINED_FUNCTION_4_235();
        sub_1E3FBDEF4();
        v18 = sub_1E3FBD4AC();

        v19 = v10;
        v10 = &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName;
        v20 = sub_1E3FC1D1C(v19, &selRef_gridStyle, v18, &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName, v12);

        v15 = &selRef_setDelayContentsChangeOperation_;

        [v17 setImage_];
      }
    }

    v21 = *(v13 + 48);
    if (v21)
    {
      v22 = [v21 customView];
      if (v22)
      {
        v23 = v22;
        objc_opt_self();
        v24 = swift_dynamicCastObjCClass();
        if (v24)
        {
          v25 = [v24 imageView];

          if (v25)
          {
            OUTLINED_FUNCTION_4_235();
            sub_1E3FBDEF4();
            sub_1E3FBD4AC();
            OUTLINED_FUNCTION_12_1();

            v26 = sub_1E3FC1D1C(v10, &selRef_gridStyle, v3, &OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName, v12);

            [v25 v15[345]];

            return;
          }
        }

        else
        {
        }
      }
    }
  }

  else
  {
    __break(1u);
  }
}

void sub_1E3FBDD44(char a1)
{
  v3 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  v4 = OUTLINED_FUNCTION_3_0(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted, v6);
  *(v1 + v3) = a1;
  sub_1E3FBDADC(v4, v5);
}

uint64_t sub_1E3FBDD90()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for ButtonLayout();
    v4 = j__OUTLINED_FUNCTION_18();
    v5 = sub_1E3B050E8();
    v6 = j__OUTLINED_FUNCTION_18();
    v2 = sub_1E3BBD964(6, v4 & 1, v5, v6 & 1);
    v7 = *(MEMORY[0x1E69DDCE0] + 16);
    v10[0] = *MEMORY[0x1E69DDCE0];
    v10[1] = v7;
    v11 = 0;
    v8 = *(*v2 + 184);

    v8(v10);

    *(v3 + v1) = v2;
  }

  return v2;
}

id sub_1E3FBDE80()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
  v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
  if (v2)
  {
    v3 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
  }

  else
  {
    v4 = [objc_allocWithZone(MEMORY[0x1E69DCF90]) init];
    v5 = *(v0 + v1);
    *(v0 + v1) = v4;
    v3 = v4;

    v2 = 0;
  }

  v6 = v2;
  return v3;
}

uint64_t sub_1E3FBDEF4()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout;
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout))
  {
    v2 = *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout);
  }

  else
  {
    v3 = v0;
    type metadata accessor for MediaShowcasingToolbarLayout();
    swift_allocObject();
    v2 = sub_1E3FBD74C();
    *(v3 + v1) = v2;
  }

  return v2;
}

unint64_t sub_1E3FBDF70()
{
  v1 = sub_1E41E1364(v0);
  MEMORY[0x1E69109E0](v1);

  return 0xD000000000000019;
}

id sub_1E3FBDFD0()
{
  OUTLINED_FUNCTION_0_8();
  swift_getObjectType();
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted) = 1;
  v2 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  sub_1E3FBDA48(__src);
  memcpy((v0 + v2), __src, 0x58uLL);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout) = 0;
  OUTLINED_FUNCTION_16_144(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName);
  OUTLINED_FUNCTION_40_69(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  v4 = OUTLINED_FUNCTION_2_0();
  v7 = objc_msgSendSuper2(v5, v6, v4);
  sub_1E3FBE0D8();

  return v7;
}

void sub_1E3FBE0D8()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v60 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v62 = v2;
  MEMORY[0x1EEE9AC00](v3);
  OUTLINED_FUNCTION_5();
  v61 = v5 - v4;
  v6 = sub_1E41FFBF4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v13 = sub_1E4206BA4();
  v14 = VUISignpostLogObject(v13);
  v15 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_99(v15, &dword_1E323F000, v16, "Launch.MediaShowcasingToolbar.setupViews");

  v65 = v6;
  v64 = *(v8 + 8);
  v64(v12, v6);
  v17 = sub_1E3FBDE80();
  [v17 setAxis_];

  v18 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
  [*&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView] setTranslatesAutoresizingMaskIntoConstraints_];
  v19 = *&v1[v18];
  sub_1E3FBDEF4();

  [v19 setSpacing_];

  [*&v1[v18] setAlignment_];
  [*&v1[v18] setDistribution_];
  [v1 addSubview_];
  v20 = objc_opt_self();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
  v21 = swift_allocObject();
  *(v21 + 16) = xmmword_1E42A1E20;
  v22 = [*&v1[v18] leadingAnchor];
  v23 = [v1 leadingAnchor];
  v24 = [v22 constraintEqualToAnchor_];

  *(v21 + 32) = v24;
  v25 = [*&v1[v18] trailingAnchor];
  v26 = OUTLINED_FUNCTION_7_212([v1 trailingAnchor]);

  *(v21 + 40) = v26;
  v27 = [*&v1[v18] centerYAnchor];
  v28 = OUTLINED_FUNCTION_7_212([v1 centerYAnchor]);

  *(v21 + 48) = v28;
  v29 = [*&v1[v18] heightAnchor];
  v30 = OUTLINED_FUNCTION_7_212([v1 heightAnchor]);

  *(v21 + 56) = v30;
  sub_1E3280A90(0, &qword_1EE23B1A0, 0x1E696ACD8);
  v31 = sub_1E42062A4();

  [v20 activateConstraints_];

  memcpy(v85, &v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState], 0x58uLL);
  v63 = v85[6];
  v32 = v85[0];
  v33 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 8];
  v76 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 24];
  v77 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 40];
  v34 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72];
  v73 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 56];
  v74 = v34;
  v75 = v33;
  v35 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName];
  v36 = *&v1[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName + 8];
  OUTLINED_FUNCTION_4_0();
  v37 = swift_allocObject();
  swift_unknownObjectWeakInit();
  sub_1E3FBFC2C(v85, &v78);

  v38 = sub_1E3FC0C14(v35, v36, sub_1E3FC2D6C, v37);

  OUTLINED_FUNCTION_4_0();
  v39 = swift_allocObject();
  swift_unknownObjectWeakInit();

  v40 = sub_1E3FC0C14(v35, v36, sub_1E3FC2CDC, v39);

  v41 = v40;
  [v41 setTranslatesAutoresizingMaskIntoConstraints_];
  v42 = sub_1E3FBDF70();
  sub_1E3FC2B38(v42, v43, v41);
  v44 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];

  if (sub_1E39DFFC8())
  {
    if (qword_1EE293FC0 != -1)
    {
      OUTLINED_FUNCTION_0_310(&qword_1EE293FC0);
    }

    if ((byte_1EE2AAAB8 & 1) == 0)
    {
      v45 = sub_1E324FBDC();
      (*(v62 + 16))(v61, v45, v60);
      v46 = v1;
      v47 = sub_1E41FFC94();
      v48 = sub_1E4206814();

      v59 = v48;
      if (os_log_type_enabled(v47, v48))
      {
        v49 = OUTLINED_FUNCTION_6_21();
        v50 = OUTLINED_FUNCTION_100();
        v78 = v50;
        *v49 = 136315138;
        v51 = sub_1E3FBE9B8();
        v53 = sub_1E3270FC8(v51, v52, &v78);

        *(v49 + 4) = v53;
        _os_log_impl(&dword_1E323F000, v47, v59, "%s muteBarButtonItem: prefersNoPlatter=true", v49, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v50);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();
      }

      (*(v62 + 8))(v61, v60);
      [v44 _setPrefersNoPlatter_];
    }
  }

  v79 = v75;
  v80 = v76;
  v78 = v38;
  v81 = v77;
  v82 = v44;
  v83 = v73;
  v84 = v74;
  sub_1E3FBEB5C(&v78, 0);
  v54 = [objc_allocWithZone(MEMORY[0x1E69DCC18]) init];
  [v1 addInteraction_];

  v66 = v38;
  v67 = v75;
  v68 = v76;
  v69 = v77;
  v70 = v44;
  v71 = v73;
  v72 = v74;
  sub_1E3FBFC64(&v66);
  v55 = sub_1E4206B94();
  v56 = VUISignpostLogObject(v55);
  v57 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_25_99(v57, &dword_1E323F000, v58, "Launch.MediaShowcasingToolbar.setupViews");

  v64(v12, v65);
  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FBE8A0()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed);
  *v1 = 0;
  v1[1] = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted) = 1;
  v2 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  sub_1E3FBDA48(__src);
  memcpy((v0 + v2), __src, 0x58uLL);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___accountSettingButtonLayout) = 0;
  OUTLINED_FUNCTION_16_144(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOnImageName);
  OUTLINED_FUNCTION_40_69(OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_audioOffImageName);
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___layout) = 0;
  *(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem) = 0;
  v3 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  *v3 = 0;
  v3[1] = 0;
  sub_1E42076B4();
  __break(1u);
}

unint64_t sub_1E3FBE9B8()
{
  v1 = (v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix);
  if (*(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___logPrefix + 8))
  {
    v2 = *v1;
  }

  else
  {
    sub_1E42074B4();

    v3 = sub_1E41E1364(v0);
    MEMORY[0x1E69109E0](v3);

    MEMORY[0x1E69109E0](41, 0xE100000000000000);
    v2 = 0xD000000000000017;
    *v1 = 0xD000000000000017;
    v1[1] = 0x80000001E428C510;
  }

  return v2;
}

uint64_t sub_1E3FBEA98(char a1, uint64_t a2)
{
  v3 = a2;
  memcpy(__dst, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), sizeof(__dst));
  v5 = __dst[0];
  memcpy(__src, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 9), sizeof(__src));
  v8 = __dst[0];
  v9 = a1;
  memcpy(v10, (v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 9), sizeof(v10));
  sub_1E3FBFC2C(__dst, &v12);
  sub_1E3FBEB5C(&v8, v3);
  v12 = v5;
  v13 = a1;
  memcpy(v14, __src, sizeof(v14));
  return sub_1E3FBFC64(&v12);
}

uint64_t sub_1E3FBEB5C(uint64_t a1, int a2)
{
  v5 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  v10 = &v152 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v11);
  v13 = &v152 - v12;
  MEMORY[0x1EEE9AC00](v14);
  v16 = &v152 - v15;
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v152 - v18;
  if ((sub_1E39DFFC8() & 1) == 0)
  {
    LODWORD(v161) = a2;
    v40 = &v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
    v41 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
    v42 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16];
    v43 = v2;
    v44 = *&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32];
    v45 = v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41];
    v46 = v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 42];
    v47 = *(v40 + 6);
    v48 = *(v40 + 9);
    result = sub_1E3FBD7A0(v40, a1);
    if (result)
    {
      return result;
    }

    v162 = v43;
    v49 = v40[40];
    v50 = v40[25];
    v51 = v40[24];
    v52 = v40[8];
    v53 = *(a1 + 8);
    if (v53)
    {
      v54 = *a1 != 0;
      if ((v40[8] & 1) == 0)
      {
LABEL_16:
        if ((*(a1 + 24) & 1) == 0)
        {
          v55 = 0;
          goto LABEL_28;
        }

LABEL_23:
        if (*(a1 + 16))
        {
          v81 = *(a1 + 25);
          v55 = 1;
          if ((v40[24] & 1) == 0)
          {
            goto LABEL_32;
          }

          goto LABEL_30;
        }

        v55 = 1;
LABEL_28:
        if ((v40[24] & 1) == 0)
        {
          v82 = v41;
          if (*(a1 + 40))
          {
            LODWORD(v159) = 0;
            v83 = 0;
            LODWORD(v158) = *(a1 + 32) != 0;
          }

          else
          {
            LODWORD(v158) = 0;
            LODWORD(v159) = 0;
            v83 = 0;
          }

          LODWORD(v157) = 1;
          if ((v49 & 1) == 0)
          {
            goto LABEL_42;
          }

          goto LABEL_41;
        }

        v81 = 0;
LABEL_30:
        if (v42)
        {
          v81 ^= v50;
        }

LABEL_32:
        LODWORD(v157) = v81 ^ 1;
        if (*(a1 + 40))
        {
          LODWORD(v158) = *(a1 + 32) != 0;
          LODWORD(v159) = v81;
          v82 = v41;
          if ((v49 & 1) == 0)
          {
            v83 = 0;
            goto LABEL_42;
          }
        }

        else
        {
          v82 = v41;
          LODWORD(v159) = v81;
          LODWORD(v158) = 0;
          v83 = 0;
          if ((v49 & 1) == 0)
          {
LABEL_42:
            v84 = 0;
            v155 = *(a1 + 72);
            if (v155 && v55)
            {
              if (*(a1 + 16) && (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0)
              {
                v84 = *(a1 + 42);
              }

              else
              {
                v84 = 0;
              }
            }

            v85 = 0;
            v86 = (v48 != 0) & v51;
            if (!v42)
            {
              v86 = 0;
            }

            v87 = v50 & v45;
            v88 = *(a1 + 48);
            if (v88 && (v53 & 1) != 0)
            {
              if (*a1 && (*(a1 + 41) & 1) != 0)
              {
                v85 = *(a1 + 42);
              }

              else
              {
                v85 = 0;
              }
            }

            LODWORD(v156) = v85;
            LODWORD(v160) = v54;
            v89 = v87 & v46;
            if (!v47 || (v52 & 1) == 0 || !v82 || (v45 & 1) == 0)
            {
              v46 = 0;
            }

            v90 = v55;
            v91 = v86 & v89;
            if (*a1 && sub_1E3FC2AD4([*a1 layer]))
            {

              v92 = 1;
            }

            else
            {
              v92 = 0;
            }

            v93 = v91 ^ v84;
            if (v88 && (v94 = [v88 customView]) != 0 && (v95 = v94, v96 = objc_msgSend(v94, sel_layer), v95, v97 = objc_msgSend(v96, sel_animationKeys), v96, v97))
            {

              v98 = 1;
            }

            else
            {
              v98 = 0;
            }

            v99 = v83;
            if (v157)
            {
              goto LABEL_72;
            }

            if (!v90)
            {
              v92 = 0;
              goto LABEL_86;
            }

            if (*(a1 + 16) && (*(a1 + 25) & 1) != 0)
            {
              if (v155)
              {
                OUTLINED_FUNCTION_10_158();
                if ((v103 & 1) == 0)
                {
                  goto LABEL_75;
                }

                goto LABEL_87;
              }
            }

            else
            {
LABEL_72:
              v92 = 0;
              if (v155)
              {
                OUTLINED_FUNCTION_10_158();
                if (v102)
                {
                  v92 = 0;
                  if (*(a1 + 16))
                  {
LABEL_75:
                    if (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0 && (*(a1 + 42))
                    {
                      goto LABEL_88;
                    }
                  }
                }

LABEL_87:
                v98 = 0;
LABEL_88:
                v104 = v99 ^ v100;
                v105 = v101 ^ v46;
                OUTLINED_FUNCTION_16_0();
                sub_1E3FC0E60();
                sub_1E3FC12CC();
                if (v161)
                {
                  v106 = v98 | v92;
                  if ((v106 & 1) == 0)
                  {
                    OUTLINED_FUNCTION_3_235();
                    sub_1E3FC1B68();
                  }

                  v161 = objc_opt_self();
                  v107 = swift_allocObject();
                  v107[16] = v106;
                  v108 = v83;
                  v107[17] = v108;
                  memcpy(v107 + 24, a1, 0x58uLL);
                  v109 = v93 & 1;
                  v107[112] = v93 & 1;
                  v107[113] = v104;
                  v107[114] = v160;
                  v107[115] = v105 & 1;
                  v169 = sub_1E3FC2B9C;
                  v170 = v107;
                  aBlock = MEMORY[0x1E69E9820];
                  v166 = 1107296256;
                  v167 = sub_1E378AEA4;
                  v168 = &block_descriptor_147;
                  v110 = _Block_copy(&aBlock);
                  OUTLINED_FUNCTION_17_139();

                  OUTLINED_FUNCTION_4_0();
                  v111 = swift_allocObject();
                  swift_unknownObjectWeakInit();
                  v112 = swift_allocObject();
                  *(v112 + 16) = v111;
                  memcpy((v112 + 24), a1, 0x58uLL);
                  *(v112 + 112) = v108;
                  *(v112 + 113) = v109;
                  *(v112 + 114) = v104;
                  v169 = sub_1E3FC2C18;
                  v170 = v112;
                  aBlock = MEMORY[0x1E69E9820];
                  v166 = 1107296256;
                  v167 = sub_1E37EB82C;
                  v168 = &block_descriptor_18_0;
                  v113 = _Block_copy(&aBlock);
                  OUTLINED_FUNCTION_17_139();

                  [v161 animateWithDuration:v110 animations:v113 completion:0.3];
                  _Block_release(v113);
                  _Block_release(v110);
                }

                else
                {
                  OUTLINED_FUNCTION_3_235();
                  sub_1E3FC1B68();
                  sub_1E3FC17BC();
                  v114 = OUTLINED_FUNCTION_3_235();
                  sub_1E3FC1A68(v114, v115, v116, v117);
                }

                memcpy(__dst, v40, sizeof(__dst));
                v118 = v40;
                goto LABEL_145;
              }
            }

LABEL_86:
            v83 = v159;
            v100 = v158;
            v101 = v156;
            goto LABEL_87;
          }
        }

LABEL_41:
        v83 = v44 != 0;
        goto LABEL_42;
      }
    }

    else
    {
      v54 = 0;
      if ((v40[8] & 1) == 0)
      {
        v55 = 0;
        if ((*(a1 + 24) & 1) == 0)
        {
          goto LABEL_28;
        }

        goto LABEL_23;
      }
    }

    v54 ^= v41 != 0;
    goto LABEL_16;
  }

  v20 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
  result = sub_1E3FBD7A0(&v2[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState], a1);
  if (result)
  {
    return result;
  }

  v22 = v2;
  v23 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_5_0(&v22[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem], v164);
  v24 = *&v22[v23];
  if (v24)
  {
    v157 = v16;
    v25 = *(a1 + 42);
    v26 = v24;
    v27 = sub_1E324FBDC();
    v28 = v7[2];
    v161 = v7;
    if (v25)
    {
      v159 = v20;
      v158 = v26;
      v154 = v27;
      v156 = v7 + 2;
      v155 = v28;
      (v28)(v19);
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      OUTLINED_FUNCTION_17_139();
      v29 = v22;
      v30 = sub_1E41FFC94();
      v31 = sub_1E4206814();

      v32 = os_log_type_enabled(v30, v31);
      v162 = v22;
      v153 = v29;
      if (!v32)
      {
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);
        sub_1E3FBFC64(a1);

        v119 = v7[1];
        v33 = (v7 + 1);
        v152 = v119;
        v119(v19, v5);
        goto LABEL_116;
      }

      v33 = swift_slowAlloc();
      v34 = OUTLINED_FUNCTION_100();
      __dst[0] = v34;
      *v33 = 136315906;
      v35 = sub_1E3FBE9B8();
      v37 = OUTLINED_FUNCTION_38_69(v35, v36);

      *(v33 + 4) = v37;
      *(v33 + 12) = 1024;
      if (*(a1 + 40))
      {
        v38 = *(a1 + 80);
        sub_1E3FBFC64(a1);
        if (v38 && (*(a1 + 41) & 1) != 0)
        {
          v39 = 1;
LABEL_100:
          *(v33 + 14) = v39;
          sub_1E3FBFC64(a1);
          *(v33 + 18) = 1024;
          if (*(a1 + 72) && (*(a1 + 24) & 1) != 0)
          {
            v120 = *(a1 + 16);
            sub_1E3FBFC64(a1);
            if (v120 && (*(a1 + 25) & 1) != 0 && (*(a1 + 41) & 1) != 0)
            {
              v121 = 1;
LABEL_108:
              *(v33 + 20) = v121;
              sub_1E3FBFC64(a1);
              *(v33 + 24) = 1024;
              if (*(a1 + 48) && (*(a1 + 8) & 1) != 0)
              {
                v122 = *a1;
                sub_1E3FBFC64(a1);
                if (v122 && (*(a1 + 41) & 1) != 0)
                {
                  v123 = 1;
LABEL_115:
                  *(v33 + 26) = v123;
                  sub_1E3FBFC64(a1);
                  _os_log_impl(&dword_1E323F000, v30, v31, "%s updateUI: accountButton: %{BOOL}d, upnext: %{BOOL}d, muteButton: %{BOOL}d", v33, 0x1Eu);
                  __swift_destroy_boxed_opaque_existential_1(v34);
                  OUTLINED_FUNCTION_6_0();
                  OUTLINED_FUNCTION_6_0();

                  v152 = v161[1];
                  v152(v19, v5);
LABEL_116:
                  v124 = MEMORY[0x1E69E7CC0];
                  v163 = MEMORY[0x1E69E7CC0];
                  v125 = *(a1 + 80);
                  v126 = &selRef_setDelayContentsChangeOperation_;
                  if (v125)
                  {
                    v127 = *(a1 + 40);
                    OUTLINED_FUNCTION_21_111(v125);
                    v128 = v33;
                    MEMORY[0x1E6910BF0]();
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
LABEL_149:
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    MEMORY[0x1E6910BF0]([*(a1 + 56) v126[304]]);
                    if (*((v163 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v163 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
                    {
                      sub_1E42062F4();
                    }

                    sub_1E4206324();
                    v130 = v163;
                  }

                  else
                  {
                    v130 = MEMORY[0x1E69E7CC0];
                  }

                  v131 = *(a1 + 72);
                  if (v131)
                  {
                    v132 = OUTLINED_FUNCTION_21_111(v131);
                    MEMORY[0x1E6910BF0](v132);
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    v130 = v163;
                  }

                  v133 = *(a1 + 48);
                  if (v133)
                  {
                    v134 = OUTLINED_FUNCTION_21_111(v133);
                    MEMORY[0x1E6910BF0](v134);
                    OUTLINED_FUNCTION_2_235();
                    if (v129)
                    {
                      OUTLINED_FUNCTION_8_185();
                    }

                    OUTLINED_FUNCTION_168();
                    sub_1E4206324();
                    v130 = v163;
                  }

                  v160 = v5;
                  __dst[0] = v124;
                  v128 = sub_1E32AE9B0(v130);
                  v135 = 0;
                  v126 = (v130 & 0xC000000000000001);
                  v127 = v130 & 0xF8;
                  v5 = &selRef_initWithMediaInfo_watchType_isRentAndWatchNow_;
                  while (v128 != v135)
                  {
                    if (v126)
                    {
                      v136 = MEMORY[0x1E6911E60](v135, v130);
                    }

                    else
                    {
                      if (v135 >= *((v130 & 0xFFFFFFFFFFFFFF8) + 0x10))
                      {
                        goto LABEL_148;
                      }

                      v136 = *(v130 + 8 * v135 + 32);
                    }

                    v137 = v136;
                    if (__OFADD__(v135, 1))
                    {
                      __break(1u);
LABEL_148:
                      __break(1u);
                      goto LABEL_149;
                    }

                    if ([v136 isHidden])
                    {
                    }

                    else
                    {
                      sub_1E4207544();
                      v124 = *(__dst[0] + 16);
                      sub_1E4207584();
                      sub_1E4207594();
                      sub_1E4207554();
                    }

                    ++v135;
                  }

                  v138 = sub_1E32AE9B0(__dst[0]);

                  v139 = v157;
                  v140 = v160;
                  v155(v157, v154, v160);
                  swift_bridgeObjectRetain_n();
                  v141 = v153;
                  v142 = sub_1E41FFC94();
                  v143 = sub_1E4206814();

                  if (os_log_type_enabled(v142, v143))
                  {
                    v144 = OUTLINED_FUNCTION_100();
                    v156 = OUTLINED_FUNCTION_100();
                    __dst[0] = v156;
                    *v144 = 136315650;
                    v145 = sub_1E3FBE9B8();
                    v147 = OUTLINED_FUNCTION_38_69(v145, v146);

                    *(v144 + 4) = v147;
                    *(v144 + 12) = 2048;
                    v148 = sub_1E32AE9B0(v130);

                    *(v144 + 14) = v148;

                    *(v144 + 22) = 2048;
                    *(v144 + 24) = v138;
                    _os_log_impl(&dword_1E323F000, v142, v143, "%s rightBarItemsCount: %ld, visibleItems: %ld", v144, 0x20u);
                    __swift_destroy_boxed_opaque_existential_1(v156);
                    OUTLINED_FUNCTION_6_0();
                    OUTLINED_FUNCTION_6_0();
                  }

                  else
                  {

                    swift_bridgeObjectRelease_n();
                  }

                  v152(v139, v140);
                  v149 = v162;
                  v150 = v159;
                  v151 = v158;
                  sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v158);
                  sub_1E3FC29B4(v130, v151);

                  memcpy(__dst, &v149[v150], sizeof(__dst));
                  v118 = &v149[v150];
                  goto LABEL_145;
                }
              }

              else
              {
                sub_1E3FBFC64(a1);
              }

              v123 = 0;
              goto LABEL_115;
            }
          }

          else
          {
            sub_1E3FBFC64(a1);
          }

          v121 = 0;
          goto LABEL_108;
        }
      }

      else
      {
        sub_1E3FBFC64(a1);
      }

      v39 = 0;
      goto LABEL_100;
    }

    v28(v13, v27, v5);
    v67 = v22;
    v68 = sub_1E41FFC94();
    v69 = v5;
    v70 = sub_1E4206814();

    if (os_log_type_enabled(v68, v70))
    {
      v71 = OUTLINED_FUNCTION_6_21();
      v72 = OUTLINED_FUNCTION_100();
      v158 = v26;
      v73 = v20;
      v74 = v72;
      __dst[0] = v72;
      *v71 = 136315138;
      v160 = v69;
      v75 = sub_1E3FBE9B8();
      v77 = OUTLINED_FUNCTION_38_69(v75, v76);

      *(v71 + 4) = v77;
      _os_log_impl(&dword_1E323F000, v68, v70, "%s updateUI: showNavigationItems is false, clear right bar items", v71, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v74);
      v20 = v73;
      v26 = v158;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      v78 = OUTLINED_FUNCTION_33_80();
      v80 = v160;
    }

    else
    {

      v78 = OUTLINED_FUNCTION_33_80();
      v80 = v69;
    }

    v79(v78, v80);
    sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v26);
  }

  else
  {
    v56 = sub_1E324FBDC();
    (v7[2])(v10, v56, v5);
    v57 = v22;
    v58 = sub_1E41FFC94();
    v59 = v5;
    v60 = sub_1E4206814();

    if (os_log_type_enabled(v58, v60))
    {
      v61 = OUTLINED_FUNCTION_6_21();
      v62 = OUTLINED_FUNCTION_100();
      v159 = v20;
      v63 = v62;
      __dst[0] = v62;
      *v61 = 136315138;
      v160 = v59;
      v64 = sub_1E3FBE9B8();
      v66 = OUTLINED_FUNCTION_38_69(v64, v65);

      *(v61 + 4) = v66;
      _os_log_impl(&dword_1E323F000, v58, v60, "%s updateUI: navigationItem is nil, ignore", v61, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v63);
      v20 = v159;
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();

      (v7[1])(v10, v160);
    }

    else
    {

      (v7[1])(v10, v59);
    }
  }

  memcpy(__dst, &v22[v20], sizeof(__dst));
  v118 = &v22[v20];
LABEL_145:
  memcpy(v118, a1, 0x58uLL);
  sub_1E3FBFC2C(a1, &aBlock);
  return sub_1E3FBFC64(__dst);
}

uint64_t sub_1E3FBFC94(void *a1, char a2, char a3)
{
  memcpy(__dst, (v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), 0x58uLL);
  v7 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v25 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v26[0] = v7;
  *(v26 + 9) = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 25);
  v8 = __dst[41];
  v9 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 59);
  v23 = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 43);
  v24[0] = v9;
  *(v24 + 13) = *(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  v10 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_3_0(v3 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem, v22);
  v11 = *(v3 + v10);
  if (!v11)
  {
    if (a1)
    {
      sub_1E3FBFC2C(__dst, &v27);
      v8 = 1;
      goto LABEL_7;
    }

LABEL_6:
    sub_1E3FBFC2C(__dst, &v27);
    goto LABEL_7;
  }

  if (a1)
  {
    goto LABEL_6;
  }

  sub_1E3FBFC2C(__dst, &v27);
  sub_1E3FC29B4(MEMORY[0x1E69E7CC0], v11);
  v8 = 0;
LABEL_7:
  v12 = a2 & 1;
  v13 = *(v3 + v10);
  *(v3 + v10) = a1;
  v14 = a1;

  v27 = v25;
  *v28 = v26[0];
  *&v28[9] = *(v26 + 9);
  v29 = v8;
  v30 = v12;
  v31 = v23;
  *v32 = v24[0];
  *&v32[13] = *(v24 + 13);
  sub_1E3FBEB5C(&v27, a3 & 1);
  v16 = v25;
  *v17 = v26[0];
  *&v17[9] = *(v26 + 9);
  v18 = v8;
  v19 = v12;
  v20 = v23;
  *v21 = v24[0];
  *&v21[13] = *(v24 + 13);
  return sub_1E3FBFC64(&v16);
}

uint64_t sub_1E3FBFE0C(uint64_t a1)
{
  v3 = (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v5 = v4;
  v6 = sub_1E3FC00C0(a1, v4);

  if (v6)
  {
    memcpy(__dst, v3, sizeof(__dst));
    v8 = __dst[9];
    v7 = __dst[10];
    v9 = __dst[2];
    v29 = *v3;
    v24 = *(v3 + 26);
    *v26 = *(v3 + 42);
    *&v26[14] = *(v3 + 56);
    sub_1E3FBFC2C(__dst, &v38);

    v10 = v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState;
    v11 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
    if (v11 && (v12 = [v11 customView]) != 0)
    {
      v13 = v12;
      objc_opt_self();
      v14 = swift_dynamicCastObjCClass();
      if (!v14)
      {
      }
    }

    else
    {
      v14 = 0;
    }

    v15 = sub_1E3FC00C0(a1, v14);
    if (v15)
    {
      v16 = v15;
      [v16 setTranslatesAutoresizingMaskIntoConstraints_];
      v17 = sub_1E3FBDF70();
      sub_1E3FC2B38(v17, v18, v16);
      v19 = *(v10 + 72);
      if (v19)
      {
        v20 = *(v10 + 72);
      }

      else
      {
        v20 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
        v19 = 0;
      }

      v22 = v19;
      [v20 setCustomView_];
    }

    else
    {

      v20 = 0;
    }

    v38 = v29;
    v39 = v6;
    v40 = 257;
    v41 = v24;
    *v42 = *v26;
    *&v42[14] = *&v26[14];
    *&v42[30] = v20;
    *&v42[38] = v7;
    sub_1E3FBEB5C(&v38, 1);
    v33 = v29;
    v34 = v6;
    v35 = 257;
    v36 = v24;
    *v37 = *v26;
    *&v37[14] = *&v26[14];
    *&v37[30] = v20;
    *&v37[38] = v7;
  }

  else
  {
    memcpy(__dst, v3, sizeof(__dst));
    v31 = *(v3 + 2);
    v25 = *(v3 + 26);
    v27 = *(v3 + 42);
    *v28 = *(v3 + 58);
    v21 = *v28;
    *&v28[14] = *(v3 + 72);
    v38 = *v3;
    v30 = v38;
    v39 = v31;
    v40 = 0;
    *v42 = v27;
    v41 = v25;
    *&v42[16] = v21;
    *&v42[30] = *&v28[14];
    sub_1E3FBFC2C(__dst, &v33);
    sub_1E3FBEB5C(&v38, 1);
    v33 = v30;
    v34 = v31;
    v35 = 0;
    v36 = v25;
    *v37 = v27;
    *&v37[16] = *v28;
    *&v37[30] = *&v28[14];
  }

  return sub_1E3FBFC64(&v33);
}

unsigned __int16 *sub_1E3FC00C0(uint64_t a1, void *a2)
{
  v4 = v3;
  v6 = (*(*a1 + 488))();
  if (!v6)
  {
    return 0;
  }

  sub_1E373E010(65, v6, v7);
  OUTLINED_FUNCTION_12_1();

  if (!v2)
  {
    return 0;
  }

  v8 = [v3 vuiUserInterfaceStyle];
  OUTLINED_FUNCTION_24_103(v8, v9, v10, v11, v12, v13, v14, v15, v33, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, v47, v48, v49, v50, v51, 0, 0, 0, 0, 0, 0, 0, 0, v52, v53, v54);
  type metadata accessor for ButtonLayout();
  v16 = sub_1E3BC565C();
  type metadata accessor for UIFactory();
  v17 = swift_allocObject();
  OUTLINED_FUNCTION_36_68(v17, v18, v19, v20, v21, v22, v23, v24, v34, v35, v36, v37, &type metadata for ButtonViewContext, &off_1F5D8FAD0);
  v25 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);

  v27 = sub_1E393D92C(v26, a2, &v35, v16, v25);

  sub_1E325F748(&v35, &qword_1ECF296C0, &unk_1E429BBE0);
  if (v27)
  {
    v28 = objc_opt_self();
    v29 = v27;
    v30 = [v28 whiteColor];
    [v29 setTintColor_];

    [v29 setAllowsUberTinting_];
    [v29 setScrolledNonUberPercentage_];
    v31 = sub_1E41E1364(v4);
    v35 = 0xD000000000000016;
    v36 = 0x80000001E42E2BF0;
    MEMORY[0x1E69109E0](v31);

    sub_1E3FC2B38(v35, v36, v29);
  }

  return v27;
}

void sub_1E3FC02FC()
{
  [v0 frame];
  CGRectGetHeight(v5);
  v1 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
  if (v1)
  {
    v2 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState];
  }

  else
  {
    v3 = *&v0[OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16];
    if (!v3)
    {
      return;
    }

    v2 = v3;
    v1 = 0;
  }

  v4 = v1;
  [v2 intrinsicContentSize];
  [v0 frame];
  CGRectGetHeight(v6);
}

double sub_1E3FC03AC(uint64_t a1)
{
  if (a1)
  {
    v2 = (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
    v3 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32);
    v4 = v3;

    v6 = sub_1E3FC0524(v5, v3);

    if (v6)
    {
      memcpy(__dst, v2, sizeof(__dst));
      v7 = v2[1];
      v22 = *v2;
      v23 = v7;
      v8 = *(v2 + 57);
      v20 = *(v2 + 41);
      v21[0] = v8;
      *(v21 + 15) = *(v2 + 9);
      v9 = __dst[4];
      v10 = __dst[10];
      sub_1E3FBFC2C(__dst, v25);

      if (sub_1E39DFFC8())
      {
        v11 = __dst[10];

        sub_1E3FC0674();
        v10 = v12;
      }

      v25[0] = v22;
      v25[1] = v23;
      v26 = v6;
      v27 = 1;
      v28 = v20;
      *v29 = v21[0];
      *&v29[15] = *(v21 + 15);
      v30 = v10;
      sub_1E3FBEB5C(v25, 0);

      v14[0] = v22;
      v14[1] = v23;
      v15 = v6;
      v16 = 1;
      v17 = v20;
      *v18 = v21[0];
      *&v18[15] = *(v21 + 15);
      v19 = v10;
      sub_1E3FBFC64(v14);
    }

    else
    {
    }
  }

  return result;
}

unsigned __int16 *sub_1E3FC0524(unsigned __int16 *a1, void *a2)
{
  v5 = [v2 vuiUserInterfaceStyle];
  OUTLINED_FUNCTION_24_103(v5, v6, v7, v8, v9, v10, v11, v12, v28, v30, v31, v32, v33, v34, v35, v36, v37, v38, v39, v40, v41, v42, v43, v44, v45, v46, 0, 0, 0, 0, 0, 0, 0, 0, v47, v48, v49);
  type metadata accessor for UIFactory();
  v13 = swift_allocObject();
  OUTLINED_FUNCTION_36_68(v13, v14, v15, v16, v17, v18, v19, v20, v29, v30, v31, v32, &type metadata for ButtonViewContext, &off_1F5D8FAD0);
  v21 = sub_1E3FBDD90();
  v22 = sub_1E3280A90(0, &qword_1EE23ACF0, off_1E8728290);
  v23 = sub_1E393D92C(a1, a2, &v30, v21, v22);

  sub_1E325F748(&v30, &qword_1ECF296C0, &unk_1E429BBE0);
  if (v23)
  {
    v24 = objc_opt_self();
    v25 = v23;
    v26 = [v24 whiteColor];
    [v25 setTintColor_];
  }

  return v23;
}

void sub_1E3FC0674()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v5 = v4;
  MEMORY[0x1EEE9AC00](v6);
  OUTLINED_FUNCTION_5();
  v9 = v8 - v7;
  if (v2)
  {
    v10 = [v2 customView];
    if (v10)
    {
      v11 = v10;
      objc_opt_self();
      v12 = swift_dynamicCastObjCClass();
      if (v12)
      {
        v13 = v12;
        goto LABEL_7;
      }
    }
  }

  type metadata accessor for MediaShowcasingToolbarPrewarm();
  v13 = qword_1ECF69FB0;
  qword_1ECF69FB0 = 0;
LABEL_7:

  v15 = sub_1E3FC0524(v14, v13);
  if (v15)
  {
    v16 = v15;
    if (v2)
    {
      v17 = v2;
    }

    else
    {
      v17 = [objc_allocWithZone(MEMORY[0x1E69DC708]) initWithCustomView_];
    }

    v18 = v2;
    [v17 setCustomView_];
    if (sub_1E39DFFC8())
    {
      v19 = sub_1E324FBDC();
      (*(v5 + 16))(v9, v19, v3);
      v20 = v0;
      v21 = sub_1E41FFC94();
      v22 = sub_1E4206814();

      if (os_log_type_enabled(v21, v22))
      {
        v28 = v5;
        v23 = OUTLINED_FUNCTION_6_21();
        v27 = OUTLINED_FUNCTION_100();
        v29 = v27;
        *v23 = 136315138;
        v24 = sub_1E3FBE9B8();
        v26 = sub_1E3270FC8(v24, v25, &v29);

        *(v23 + 4) = v26;
        _os_log_impl(&dword_1E323F000, v21, v22, "%s makeAccountSetting: prefersNoPlatter=true", v23, 0xCu);
        __swift_destroy_boxed_opaque_existential_1(v27);
        OUTLINED_FUNCTION_6_0();
        OUTLINED_FUNCTION_6_0();

        (*(v28 + 8))(v9, v3);
      }

      else
      {

        (*(v5 + 8))(v9, v3);
      }

      [v17 _setPrefersNoPlatter_];
    }
  }

  else
  {
  }

  OUTLINED_FUNCTION_25_2();
}

uint64_t sub_1E3FC0934(char a1)
{
  memcpy(__dst, (v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), sizeof(__dst));
  v6 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState);
  v7 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 16);
  v4 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41);
  *v5 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 57);
  *&v5[15] = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  v10 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 32);
  v8 = v10;
  v9[0] = v6;
  v9[1] = v7;
  v11 = a1;
  v12 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 41);
  *v13 = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 57);
  *&v13[15] = *(v1 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState + 72);
  sub_1E3FBFC2C(__dst, v15);
  sub_1E3FBEB5C(v9, 0);
  v15[0] = v6;
  v15[1] = v7;
  v16 = v8;
  v17 = a1;
  v18 = v4;
  v19[0] = *v5;
  *(v19 + 15) = *&v5[15];
  return sub_1E3FBFC64(v15);
}

uint64_t sub_1E3FC0B74()
{
  v1 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted;
  v2 = OUTLINED_FUNCTION_3_0(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_isMuted, v10);
  *(v0 + v1) = (*(v0 + v1) & 1) == 0;
  sub_1E3FBDADC(v2, v3);
  v4 = v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed;
  result = OUTLINED_FUNCTION_5_0(v0 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_onMutePressed, &v9);
  v6 = *v4;
  if (*v4)
  {
    v7 = *(v4 + 8);
    v8 = *(v0 + v1);

    v6(v8);
    return sub_1E34AF594(v6, v7);
  }

  return result;
}

id sub_1E3FC0C14(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_1E3FBDEF4();
  sub_1E3FBD4AC();
  OUTLINED_FUNCTION_12_1();

  v9 = [objc_allocWithZone(VUIButton) initWithType:7 interfaceStyle:2];
  v10 = [objc_allocWithZone(MEMORY[0x1E69DF740]) init];
  [v9 setImageView_];

  [v9 setTextContentView_];
  v11 = [v9 imageView];
  if (v11)
  {
    v12 = v11;
    v13 = sub_1E3FC1D1C(a1, a2, v4, 0, 0);
    [v12 setImage_];
  }

  v19[4] = a3;
  v19[5] = a4;
  v19[0] = MEMORY[0x1E69E9820];
  v19[1] = 1107296256;
  v19[2] = sub_1E37C0588;
  v19[3] = &block_descriptor_28_1;
  v14 = _Block_copy(v19);

  [v9 setSelectActionHandler_];
  _Block_release(v14);
  sub_1E3F88F44();
  [v9 configureWithLayoutProperties];
  [v9 setScrolledNonUberPercentage_];
  v15 = objc_opt_self();
  v16 = v9;
  v17 = [v15 whiteColor];
  [v16 setTintColor_];

  [v16 setAllowsUberTinting_];

  return v16;
}

void sub_1E3FC0E60()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem;
  OUTLINED_FUNCTION_5_0(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_navigationItem, &v47);
  v5 = *(v3 + v4);
  if (!v5)
  {
    goto LABEL_45;
  }

  v6 = v5;
  v7 = sub_1E3FC2944(v6);
  if (v7)
  {
    v8 = v7;
  }

  else
  {
    v8 = MEMORY[0x1E69E7CC0];
  }

  v46 = v8;
  v9 = *(v1 + 72);
  if (v9 && (*(v1 + 24) & 1) != 0 && *(v1 + 16) && (*(v1 + 25) & 1) != 0 && (*(v1 + 41) & 1) != 0 && (*(v1 + 42) & 1) != 0)
  {
    v45 = *(v1 + 72);
    MEMORY[0x1EEE9AC00](v7);
    v43 = &v45;
    v10 = v9;
    sub_1E3FC2308(sub_1E3FC2D48, v42, v8);
    if (v11)
    {
    }

    else
    {
      v38 = [v10 customView];
      if (v38)
      {
        v39 = v38;
        [v38 setAlpha_];
      }

      sub_1E37EFABC(0, v8);
      if (sub_1E32AE9B0(v8) < 0)
      {
        goto LABEL_56;
      }

      v40 = sub_1E32AE9B0(v8);
      v26 = __OFADD__(v40, 1);
      v41 = v40 + 1;
      if (v26)
      {
LABEL_57:
        __break(1u);
        goto LABEL_58;
      }

      sub_1E3797CDC(v41, 1);
      sub_1E3FC27F0(0, 0, 1, v10);
      v8 = v46;
    }
  }

  if (!*(v1 + 48) || (*(v1 + 8) & 1) == 0 || !*v1 || (*(v1 + 41) & 1) == 0 || (*(v1 + 42) & 1) == 0)
  {
LABEL_44:
    v36 = OUTLINED_FUNCTION_16_0();
    sub_1E3FC29B4(v36, v37);

LABEL_45:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v12 = *(v1 + 64);
  v45 = v12;
  MEMORY[0x1EEE9AC00](v7);
  v43 = &v45;
  v44 = v13;
  sub_1E3FC2308(sub_1E3FC2CBC, v42, v8);
  if (!v9 || (v14 & 1) != 0 || (*(v1 + 24) & 1) == 0 || !*(v1 + 16) || (*(v1 + 25) & 1) == 0)
  {
    v45 = v12;
    MEMORY[0x1EEE9AC00](v14);
    OUTLINED_FUNCTION_18_131();
    sub_1E3FC2308(sub_1E3FC2D48, v19, v8);
    if (v18 & 1) == 0 || v9 && (*(v1 + 24) & 1) != 0 && *(v1 + 16) && (*(v1 + 25))
    {
      goto LABEL_38;
    }

    sub_1E3FC23F8(&v46, v12);
    v21 = v20;
    v22 = v46;
    v23 = sub_1E32AE9B0(v46);
    v24 = v23 - v21;
    if (v23 < v21)
    {
      __break(1u);
    }

    else if ((v21 & 0x8000000000000000) == 0)
    {
      v25 = v23;
      if (sub_1E32AE9B0(v22) >= v23)
      {
        v26 = __OFSUB__(0, v24);
        v27 = -v24;
        if (!v26)
        {
          v28 = sub_1E32AE9B0(v22);
          v26 = __OFADD__(v28, v27);
          v29 = v28 + v27;
          if (!v26)
          {
            sub_1E3797CDC(v29, 1);
            v18 = sub_1E3FC26E4(v21, v25, 0);
            goto LABEL_37;
          }

          goto LABEL_55;
        }

LABEL_54:
        __break(1u);
LABEL_55:
        __break(1u);
LABEL_56:
        __break(1u);
        goto LABEL_57;
      }

LABEL_53:
      __break(1u);
      goto LABEL_54;
    }

    __break(1u);
    goto LABEL_53;
  }

  sub_1E37EFABC(1, v8);
  if (sub_1E32AE9B0(v8) < 1)
  {
LABEL_58:
    __break(1u);
    goto LABEL_59;
  }

  v15 = sub_1E32AE9B0(v8);
  v16 = v15 + 1;
  if (!__OFADD__(v15, 1))
  {
    v17 = v12;
    sub_1E3797CDC(v16, 1);
    sub_1E3FC27F0(1, 1, 1, v17);
LABEL_37:
    v8 = v46;
LABEL_38:
    v30 = v44;
    v45 = v44;
    MEMORY[0x1EEE9AC00](v18);
    OUTLINED_FUNCTION_18_131();
    sub_1E3FC2308(sub_1E3FC2D48, v31, v8);
    if ((v32 & 1) == 0)
    {
      v33 = v30;
      MEMORY[0x1E6910BF0]();
      if (*((v46 & 0xFFFFFFFFFFFFFF8) + 0x10) >= *((v46 & 0xFFFFFFFFFFFFFF8) + 0x18) >> 1)
      {
        sub_1E42062F4();
      }

      sub_1E4206324();
      v34 = [v33 customView];
      if (v34)
      {
        v35 = v34;
        [v34 setAlpha_];
      }
    }

    goto LABEL_44;
  }

LABEL_59:
  __break(1u);
}

void sub_1E3FC12CC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v3 = v0;
  v4 = &selRef_secureInvalidationNonceURL;
  if (*v0 && (*(v0 + 8) & 1) != 0)
  {
    v5 = *v0;
    v6 = sub_1E3FBDE80();
    v7 = [v6 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v8 = sub_1E42062B4();

    v40 = v5;
    MEMORY[0x1EEE9AC00](v9);
    v10 = OUTLINED_FUNCTION_22_95();
    sub_1E3FC2308(sub_1E3FC2D2C, v7, v8);
    LOBYTE(v7) = v11;

    if ((v7 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) insertArrangedSubview:v10 atIndex:0];
      [v10 setAlpha_];
    }
  }

  v12 = *(v3 + 16);
  v13 = &selRef__shouldShowRenewalOption;
  if (v12 && (*(v3 + 24) & 1) != 0 && (*(v3 + 25) & 1) != 0)
  {
    v14 = v12;
    v15 = sub_1E3FBDE80();
    v16 = [v15 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v17 = sub_1E42062B4();

    v40 = v14;
    MEMORY[0x1EEE9AC00](v18);
    v19 = OUTLINED_FUNCTION_22_95();
    sub_1E3FC2308(sub_1E3FC2D2C, v16, v17);
    LOBYTE(v16) = v20;

    v4 = &selRef_secureInvalidationNonceURL;
    if (v16)
    {
LABEL_16:

      v13 = &selRef__shouldShowRenewalOption;
      goto LABEL_17;
    }

    v21 = *(v3 + 32);
    if (v21)
    {
      v39 = OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView;
      v22 = *(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView);
      v23 = v21;
      v24 = [v22 &selRef_changeMediaInDirection_ + 1];
      v25 = sub_1E42062B4();

      sub_1E3FC16C0(v23, v25);
      v27 = v26;
      LOBYTE(v24) = v28;

      if ((v24 & 1) == 0)
      {
        [*(v2 + v39) insertArrangedSubview:v19 atIndex:v27];

        v4 = &selRef_secureInvalidationNonceURL;
        goto LABEL_15;
      }

      v4 = &selRef_secureInvalidationNonceURL;
    }

    [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) addArrangedSubview_];
LABEL_15:
    [v19 v4[143]];
    goto LABEL_16;
  }

LABEL_17:
  v29 = *(v3 + 32);
  if (v29 && (*(v3 + 40) & 1) != 0)
  {
    v30 = v29;
    v31 = sub_1E3FBDE80();
    v32 = [v31 arrangedSubviews];

    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v33 = sub_1E42062B4();

    v40 = v30;
    MEMORY[0x1EEE9AC00](v34);
    v38[2] = &v40;
    v35 = v30;
    sub_1E3FC2308(sub_1E3BC8610, v38, v33);
    v37 = v36;

    if ((v37 & 1) == 0)
    {
      [*(v2 + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar____lazy_storage___stackView) v13[409]];
      [v35 v4[143]];
    }
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC16C0(uint64_t a1, unint64_t a2)
{
  v3 = sub_1E32AE9B0(a2);
  v4 = 0;
  while (v3 != v4)
  {
    if ((a2 & 0xC000000000000001) != 0)
    {
      v5 = MEMORY[0x1E6911E60](v4, a2);
    }

    else
    {
      if (v4 >= *((a2 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        __break(1u);
LABEL_14:
        __break(1u);
        return;
      }

      v5 = *(a2 + 8 * v4 + 32);
    }

    v6 = v5;
    sub_1E3280A90(0, &qword_1EE23AE80, 0x1E69DD250);
    v7 = sub_1E4206F64();

    if (v7)
    {
      return;
    }

    if (__OFADD__(v4++, 1))
    {
      goto LABEL_14;
    }
  }
}

void sub_1E3FC17BC()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v8 = v7;
  v9 = v0;
  if (v10)
  {
    v11 = *v0;
    if (*v0)
    {
      v12 = *(v0 + 8) & 1;
      v13 = 0.0;
      if (*(v0 + 8))
      {
        v13 = 1.0;
      }

      [*v0 setAlpha_];
      [v11 setUserInteractionEnabled_];
    }
  }

  if (v8)
  {
    v14 = *(v9 + 48);
    if (v14)
    {
      v15 = [*(v9 + 48) customView];
      if (v15)
      {
        v16 = v15;
        if ((*(v9 + 8) & 1) == 0 || !*v9 || (*(v9 + 41) & 1) == 0 || (v17 = 1.0, (*(v9 + 42) & 1) == 0))
        {
          v17 = 0.0;
        }

        [v15 setAlpha_];
      }

      v18 = [v14 customView];
      if (v18)
      {
        v19 = v18;
        if (*(v9 + 8) & 1) != 0 && *v9 && (*(v9 + 41))
        {
          v20 = *(v9 + 42);
        }

        else
        {
          v20 = 0;
        }

        [v18 setUserInteractionEnabled_];
      }
    }
  }

  if (v6)
  {
    v21 = *(v9 + 16);
    if (v21)
    {
      v22 = *(v9 + 24);
      if (v22)
      {
        if (*(v9 + 25))
        {
          v23 = 1.0;
          v24 = 1;
LABEL_30:
          [*(v9 + 16) setAlpha_];
          [v21 setUserInteractionEnabled_];
          goto LABEL_31;
        }

        v24 = 0;
      }

      else
      {
        v24 = *(v9 + 25);
      }

      v23 = 0.0;
      goto LABEL_30;
    }
  }

LABEL_31:
  if (v4)
  {
    v25 = *(v9 + 72);
    if (v25)
    {
      v26 = [*(v9 + 72) customView];
      if (v26)
      {
        v27 = v26;
        if ((*(v9 + 24) & 1) == 0 || !*(v9 + 16) || (*(v9 + 25) & 1) == 0 || (*(v9 + 41) & 1) == 0 || (v28 = 1.0, (*(v9 + 42) & 1) == 0))
        {
          v28 = 0.0;
        }

        [v26 setAlpha_];
      }

      v29 = [v25 customView];
      if (v29)
      {
        v30 = v29;
        if (*(v9 + 24) & 1) != 0 && *(v9 + 16) && (*(v9 + 25) & 1) != 0 && (*(v9 + 41))
        {
          v31 = *(v9 + 42);
        }

        else
        {
          v31 = 0;
        }

        [v29 setUserInteractionEnabled_];
      }
    }
  }

  if ((v2 & 1) != 0 && (v32 = *(v9 + 32)) != 0)
  {
    v33 = 0.0;
    if (*(v9 + 40))
    {
      v33 = 1.0;
    }

    [v32 setAlpha_];
    OUTLINED_FUNCTION_25_2();

    [v34 v35];
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

void sub_1E3FC1A68(char a1, uint64_t a2, char a3, char a4)
{
  if ((a1 & 1) == 0)
  {
    goto LABEL_8;
  }

  v7 = *(a2 + 16);
  if (*(a2 + 24))
  {
    if (!v7 || (*(a2 + 25) & 1) != 0)
    {
      goto LABEL_8;
    }
  }

  else if (!v7)
  {
    goto LABEL_8;
  }

  [v7 setHidden_];
LABEL_8:
  if (a3)
  {
    v8 = *(a2 + 72);
    if (v8)
    {
      if ((*(a2 + 24) & 1) == 0 || !*(a2 + 16) || (*(a2 + 25) & 1) == 0 || (*(a2 + 41) & 1) == 0 || (*(a2 + 42) & 1) == 0)
      {
        v9 = [v8 customView];
        if (v9)
        {
          v10 = v9;
          [v9 setHidden_];
        }
      }
    }
  }

  if ((a4 & 1) != 0 && (*(a2 + 40) & 1) == 0)
  {
    v11 = *(a2 + 32);
    if (v11)
    {

      [v11 setHidden_];
    }
  }
}

void sub_1E3FC1B68()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v5 = v0;
  if (v6)
  {
    v7 = *(v0 + 16);
    if (v7)
    {
      if ([*(v0 + 16) isHidden] && (*(v5 + 24) & 1) != 0 && (*(v5 + 25) & 1) != 0)
      {
        [v7 setHidden_];
        [v7 setAlpha_];
      }
    }
  }

  if (v4)
  {
    v8 = *(v5 + 72);
    if (v8)
    {
      v9 = [*(v5 + 72) customView];
      if (v9)
      {
        v10 = v9;
        v11 = [v9 isHidden];

        if (v11)
        {
          if (*(v5 + 24) & 1) != 0 && *(v5 + 16) && (*(v5 + 25) & 1) != 0 && (*(v5 + 41) & 1) != 0 && (*(v5 + 42))
          {
            v12 = [v8 customView];
            if (v12)
            {
              v13 = v12;
              [v12 setHidden_];
            }

            v14 = [v8 customView];
            if (v14)
            {
              v15 = v14;
              [v14 setAlpha_];
            }
          }
        }
      }
    }
  }

  if (v2 & 1) != 0 && (v16 = *(v5 + 32)) != 0 && [*(v5 + 32) isHidden] && (*(v5 + 40))
  {
    [v16 setHidden_];
    OUTLINED_FUNCTION_25_2();

    [v17 v18];
  }

  else
  {
    OUTLINED_FUNCTION_25_2();
  }
}

id sub_1E3FC1D1C(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4, void *a5)
{
  v7 = (*(*a3 + 2096))();
  (*(*v7 + 1944))(v7);
  OUTLINED_FUNCTION_12_1();

  v8 = sub_1E4205ED4();
  if (a5)
  {
    a5 = sub_1E4205ED4();
  }

  v9 = [objc_opt_self() vuiSystemImageNamed:v8 withConfiguration:v5 accessibilityDescription:a5];

  return v9;
}

id sub_1E3FC1E24()
{
  result = qword_1ECF69FA8;
  if (qword_1ECF69FA8)
  {
    qword_1ECF69FA8 = 0;
  }

  else
  {
    v2 = objc_allocWithZone(type metadata accessor for MediaShowcasingToolbar());
    v5 = OUTLINED_FUNCTION_5_8();

    return [v3 v4];
  }

  return result;
}

uint64_t sub_1E3FC1E70()
{
  v1[2] = v0;
  v2 = sub_1E41FFBF4();
  v1[3] = v2;
  v1[4] = *(v2 - 8);
  v1[5] = swift_task_alloc();
  sub_1E4206434();
  v1[6] = sub_1E4206424();
  v4 = sub_1E42063B4();
  v1[7] = v4;
  v1[8] = v3;

  return MEMORY[0x1EEE6DFA0](sub_1E3FC1F64, v4, v3);
}

uint64_t sub_1E3FC1F64(uint64_t a1)
{
  v2 = v1[4];
  v3 = sub_1E4206BA4();
  v4 = VUISignpostLogObject(v3);
  v5 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_27_92(v5, &dword_1E323F000, v6, "Launch.MediaShowcasingToolbarPrewarm.prewarm");

  v1[9] = *(v2 + 8);
  v1[10] = (v2 + 8) & 0xFFFFFFFFFFFFLL | 0x4F8000000000000;
  v7 = OUTLINED_FUNCTION_16_0();
  v8(v7);
  v9 = [objc_allocWithZone(VUIAccountSettingsButton) initWithType:5 interfaceStyle:2];
  if (v9)
  {
    v10 = qword_1ECF69FB0;
    qword_1ECF69FB0 = v9;

    v9 = swift_task_alloc();
    v1[11] = v9;
    *v9 = v1;
    v9[1] = sub_1E3FC209C;
  }

  else
  {
    __break(1u);
  }

  return MEMORY[0x1EEE6DA78](v9);
}

uint64_t sub_1E3FC209C()
{
  v1 = *v0;

  v2 = *(v1 + 64);
  v3 = *(v1 + 56);

  return MEMORY[0x1EEE6DFA0](sub_1E3FC21BC, v3, v2);
}

uint64_t sub_1E3FC21BC()
{
  v1 = *(v0 + 72);

  v2 = objc_allocWithZone(type metadata accessor for MediaShowcasingToolbar());
  v3 = OUTLINED_FUNCTION_5_8();
  v6 = [v4 v5];
  v7 = qword_1ECF69FA8;
  qword_1ECF69FA8 = v6;

  v8 = sub_1E4206B94();
  v9 = VUISignpostLogObject(v8);
  v10 = sub_1E41FFBE4();
  OUTLINED_FUNCTION_27_92(v10, &dword_1E323F000, v11, "Launch.MediaShowcasingToolbarPrewarm.prewarm");

  v12 = OUTLINED_FUNCTION_16_0();
  v1(v12);

  v13 = *(v0 + 8);

  return v13();
}

void sub_1E3FC2308(uint64_t (*a1)(id *), uint64_t a2, unint64_t a3)
{
  v5 = sub_1E32AE9B0(a3);
  v6 = 0;
  while (1)
  {
    v7 = v6;
    if (v5 == v6)
    {
      break;
    }

    if ((a3 & 0xC000000000000001) != 0)
    {
      v11 = OUTLINED_FUNCTION_168();
      v8 = MEMORY[0x1E6911E60](v11);
    }

    else
    {
      if (v6 >= *((a3 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_13;
      }

      v8 = *(a3 + 8 * v6 + 32);
    }

    v9 = v8;
    if (__OFADD__(v7, 1))
    {
      __break(1u);
LABEL_13:
      __break(1u);
      return;
    }

    v13 = v8;
    v10 = a1(&v13);

    if (!v3)
    {
      v6 = v7 + 1;
      if ((v10 & 1) == 0)
      {
        continue;
      }
    }

    return;
  }
}

void sub_1E3FC23F8(unint64_t *a1, void *a2)
{
  v4 = *a1;
  v5 = a2;
  v6 = sub_1E3FC2610(v4, v5);
  v8 = v6;
  if (v2)
  {
    goto LABEL_36;
  }

  if (v7)
  {
    sub_1E32AE9B0(v4);
LABEL_36:

    return;
  }

  v9 = v6 + 1;
  if (!__OFADD__(v6, 1))
  {
    while (1)
    {
      if (v4 >> 62)
      {
        v10 = sub_1E4207384();
      }

      else
      {
        v10 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
      }

      if (v9 == v10)
      {
        goto LABEL_36;
      }

      if ((v4 & 0xC000000000000001) != 0)
      {
        v22 = MEMORY[0x1E6911E60](v9, v4);
        swift_unknownObjectRelease();
        if (v22 != v5)
        {
          if (v8 != v9)
          {
            v13 = MEMORY[0x1E6911E60](v8, v4);
            v14 = MEMORY[0x1E6911E60](v9, v4);
            goto LABEL_16;
          }

LABEL_26:
          v21 = __OFADD__(v8++, 1);
          if (v21)
          {
            goto LABEL_40;
          }
        }
      }

      else
      {
        if ((v9 & 0x8000000000000000) != 0)
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
LABEL_43:
          __break(1u);
          break;
        }

        v11 = *((v4 & 0xFFFFFFFFFFFFFF8) + 0x10);
        if (v9 >= v11)
        {
          goto LABEL_38;
        }

        v12 = *(v4 + 32 + 8 * v9);
        if (v12 != v5)
        {
          if (v8 != v9)
          {
            if ((v8 & 0x8000000000000000) != 0)
            {
              goto LABEL_41;
            }

            if (v8 >= v11)
            {
              goto LABEL_42;
            }

            v13 = *(v4 + 32 + 8 * v8);
            v14 = v12;
LABEL_16:
            v15 = v14;
            if (!swift_isUniquelyReferenced_nonNull_bridgeObject() || (v4 & 0x8000000000000000) != 0 || (v4 & 0x4000000000000000) != 0)
            {
              v4 = sub_1E37EFA58(v4);
              v16 = (v4 >> 62) & 1;
            }

            else
            {
              LODWORD(v16) = 0;
            }

            v17 = v4 & 0xFFFFFFFFFFFFFF8;
            v18 = *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20);
            *((v4 & 0xFFFFFFFFFFFFFF8) + 8 * v8 + 0x20) = v15;

            if ((v4 & 0x8000000000000000) != 0 || v16)
            {
              v4 = sub_1E37EFA58(v4);
              v17 = v4 & 0xFFFFFFFFFFFFFF8;
              if ((v9 & 0x8000000000000000) != 0)
              {
LABEL_35:
                __break(1u);
                goto LABEL_36;
              }
            }

            else if ((v9 & 0x8000000000000000) != 0)
            {
              goto LABEL_35;
            }

            if (v9 >= *(v17 + 16))
            {
              goto LABEL_43;
            }

            v19 = v17 + 8 * v9;
            v20 = *(v19 + 32);
            *(v19 + 32) = v13;

            *a1 = v4;
          }

          goto LABEL_26;
        }
      }

      v21 = __OFADD__(v9++, 1);
      if (v21)
      {
        goto LABEL_39;
      }
    }
  }

  __break(1u);
}

unint64_t sub_1E3FC2610(unint64_t a1, void *a2)
{
  result = sub_1E32AE9B0(a1);
  v5 = result;
  v6 = 0;
  while (1)
  {
    if (v5 == v6)
    {
      v9 = 0;
      goto LABEL_12;
    }

    if ((a1 & 0xC000000000000001) == 0)
    {
      break;
    }

    v8 = MEMORY[0x1E6911E60](v6, a1);
    result = swift_unknownObjectRelease();
    if (v8 == a2)
    {
LABEL_10:
      v9 = v6;
LABEL_12:

      return v9;
    }

LABEL_6:
    if (__OFADD__(v6++, 1))
    {
      goto LABEL_14;
    }
  }

  if (v6 < *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
  {
    if (*(a1 + 8 * v6 + 32) == a2)
    {
      goto LABEL_10;
    }

    goto LABEL_6;
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

uint64_t sub_1E3FC26E4(uint64_t a1, uint64_t a2, uint64_t a3)
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
  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
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

void sub_1E3FC27F0(uint64_t a1, uint64_t a2, uint64_t a3, char *a4)
{
  v10 = a2 - a1;
  if (__OFSUB__(a2, a1))
  {
    __break(1u);
    goto LABEL_24;
  }

  v4 = a3;
  v6 = a2;
  v19 = a4;
  v11 = *v5;
  v7 = *v5 & 0xFFFFFFFFFFFFFF8;
  v8 = v7 + 32;
  v5 = (v7 + 32 + 8 * a1);
  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  swift_arrayDestroy();
  v12 = __OFSUB__(v4, v10);
  v10 = v4 - v10;
  if (v12)
  {
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (!v10)
  {
    goto LABEL_17;
  }

  v9 = v11 >> 62;
  if (!(v11 >> 62))
  {
    v13 = *(v7 + 16);
    goto LABEL_6;
  }

LABEL_25:
  v13 = sub_1E4207384();
LABEL_6:
  v14 = &v13[-v6];
  if (__OFSUB__(v13, v6))
  {
    __break(1u);
LABEL_27:
    __break(1u);
    goto LABEL_28;
  }

  v15 = &v5[v4];
  v16 = (v8 + 8 * v6);
  if (v15 != v16 || &v16[8 * v14] <= v15)
  {
    memmove(v15, v16, 8 * v14);
  }

  if (v9)
  {
    v13 = sub_1E4207384();
  }

  else
  {
    v13 = *(v7 + 16);
  }

  if (__OFADD__(v13, v10))
  {
    goto LABEL_27;
  }

  *(v7 + 16) = &v13[v10];
LABEL_17:
  v13 = v19;
  if (v4 >= 1)
  {
    *v5 = v19;
    if (v4 == 1)
    {
      return;
    }

LABEL_28:
    v18 = v13;
    __break(1u);
    return;
  }
}

uint64_t sub_1E3FC2944(void *a1)
{
  v1 = [a1 rightBarButtonItems];
  if (!v1)
  {
    return 0;
  }

  v2 = v1;
  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3FC29B4(uint64_t a1, void *a2)
{
  sub_1E3280A90(0, qword_1EE23B2E0, 0x1E69DC708);
  v3 = sub_1E42062A4();

  [a2 setRightBarButtonItems_];
}

uint64_t sub_1E3FC2AD4(void *a1)
{
  v2 = [a1 animationKeys];

  if (!v2)
  {
    return 0;
  }

  v3 = sub_1E42062B4();

  return v3;
}

void sub_1E3FC2B38(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = sub_1E4205ED4();

  [a3 setBackdropGroupName_];
}

void sub_1E3FC2B9C()
{
  if (*(v0 + 16) == 1)
  {
    OUTLINED_FUNCTION_35_75();
    sub_1E3FC1B68();
  }

  sub_1E3FC17BC();
}

void sub_1E3FC2C18(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(*(v2 + 16) + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    if (sub_1E3FBD7A0((Strong + OBJC_IVAR____TtC8VideosUI22MediaShowcasingToolbar_currentButtonState), (v2 + 24)))
    {
      v5 = OUTLINED_FUNCTION_35_75();
      sub_1E3FC1A68(v5, v6, v7, v8);
    }
  }
}

void sub_1E3FC2CE0(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_15_0(v2 + 16, a2);
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v4 = Strong;
    sub_1E3FC0B74();
  }
}

uint64_t sub_1E3FC2D70(uint64_t a1, uint64_t a2)
{
  sub_1E42074B4();
  MEMORY[0x1E69109E0](0x6867696C68676968, 0xEF203A734C525574);
  v4 = MEMORY[0x1E69E7CC0];
  if (a1)
  {
    v5 = a1;
  }

  else
  {
    v5 = MEMORY[0x1E69E7CC0];
  }

  v6 = MEMORY[0x1E69E6158];
  v7 = MEMORY[0x1E6910C30](v5, MEMORY[0x1E69E6158]);
  v9 = v8;

  MEMORY[0x1E69109E0](v7, v9);

  MEMORY[0x1E69109E0](0xD000000000000018, 0x80000001E428C5A0);
  if (a2)
  {
    v10 = a2;
  }

  else
  {
    v10 = v4;
  }

  v11 = MEMORY[0x1E6910C30](v10, v6);
  v13 = v12;

  MEMORY[0x1E69109E0](v11, v13);

  OUTLINED_FUNCTION_23();
  MEMORY[0x1E69109E0](0xD000000000000015);
  v14 = sub_1E4207944();
  MEMORY[0x1E69109E0](v14);

  return 0;
}

id sub_1E3FC2F30()
{
  v0 = [objc_opt_self() sharedInstance];
  v1 = [v0 syndicationConfig];

  v2 = [v1 highlightsFetchLimit];
  return v2;
}

uint64_t sub_1E3FC2FA8()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap);
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
    *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap) = MEMORY[0x1E69E7CC8];
  }

  return v1;
}

id sub_1E3FC2FF0()
{
  v1 = [objc_opt_self() defaultCenter];
  v2 = v0;
  [v1 removeObserver:v2 name:*NSNotificationName.VUIAuthenticationManagerAccountStoreDidChange.unsafeMutableAddressor() object:0];

  v4.receiver = v2;
  v4.super_class = type metadata accessor for HighlightsManager();
  return objc_msgSendSuper2(&v4, sel_dealloc);
}

uint64_t sub_1E3FC3114(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  if (a4)
  {
  }

  return result;
}

void sub_1E3FC3164()
{
  v1 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v3 = v2;
  MEMORY[0x1EEE9AC00](v4);
  OUTLINED_FUNCTION_5();
  v7 = v6 - v5;
  if ([objc_opt_self() isEnabled])
  {
    v8 = sub_1E324FBDC();
    (*(v3 + 16))(v7, v8, v1);
    v9 = v0;
    v10 = sub_1E41FFC94();
    v11 = sub_1E4206814();
    if (os_log_type_enabled(v10, v11))
    {
      v12 = OUTLINED_FUNCTION_6_21();
      *v12 = 134217984;
      *(v12 + 4) = sub_1E3FC2F30();

      _os_log_impl(&dword_1E323F000, v10, v11, "Syndication::Starting to fetch highlights, limit %lu", v12, 0xCu);
      OUTLINED_FUNCTION_6_0();
    }

    else
    {

      v10 = v9;
    }

    (*(v3 + 8))(v7, v1);
    v13 = *(&v9->isa + OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter);
    v14 = swift_allocObject();
    swift_unknownObjectWeakInit();
    aBlock[4] = sub_1E3FC54F0;
    aBlock[5] = v14;
    aBlock[0] = MEMORY[0x1E69E9820];
    aBlock[1] = 1107296256;
    aBlock[2] = sub_1E3FC3E4C;
    aBlock[3] = &block_descriptor_148;
    v15 = _Block_copy(aBlock);

    [v13 fetchHighlights_];
    _Block_release(v15);
  }
}

void sub_1E3FC339C()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v36[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v36[-v11];
  MEMORY[0x1EEE9AC00](v13);
  v15 = &v36[-v14];
  swift_beginAccess();
  Strong = swift_unknownObjectWeakLoadStrong();
  if (Strong)
  {
    v17 = Strong;
    if (v1)
    {
      sub_1E324FBDC();
      OUTLINED_FUNCTION_0_11();
      v18(v15);
      v19 = sub_1E41FFC94();
      v20 = sub_1E42067F4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = OUTLINED_FUNCTION_125_0();
        *v21 = 0;
        _os_log_impl(&dword_1E323F000, v19, v20, "Syndication::Failed to fetch highlights due to SocialLayer error", v21, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v15, v4);
    }

    v22 = sub_1E32AE9B0(v3);
    sub_1E324FBDC();
    OUTLINED_FUNCTION_0_11();
    if (v22)
    {
      v23(v12);
      v24 = sub_1E41FFC94();
      v25 = sub_1E4206814();
      if (os_log_type_enabled(v24, v25))
      {
        v26 = OUTLINED_FUNCTION_125_0();
        *v26 = 0;
        _os_log_impl(&dword_1E323F000, v24, v25, "Syndication::Highlights fetched successfully", v26, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v12, v4);
      v27 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      MEMORY[0x1EEE9AC00](v27);
      OUTLINED_FUNCTION_1_27();
      *(v29 - 16) = v17;
      *(v29 - 8) = v3;
      v30 = sub_1E3FC56A8;
    }

    else
    {
      v23(v9);
      v31 = sub_1E41FFC94();
      v32 = sub_1E42067F4();
      if (os_log_type_enabled(v31, v32))
      {
        v33 = OUTLINED_FUNCTION_125_0();
        *v33 = 0;
        _os_log_impl(&dword_1E323F000, v31, v32, "Syndication::Nil or Empty highlights array fetched", v33, 2u);
        OUTLINED_FUNCTION_6_0();
      }

      (*(v6 + 8))(v9, v4);
      v34 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
      MEMORY[0x1EEE9AC00](v34);
      OUTLINED_FUNCTION_1_27();
      *(v35 - 16) = v17;
      v30 = sub_1E3FC56D4;
    }

    sub_1E3B79200(v30, v28);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC3720()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v5 = v4;
  v79 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v7 = v6;
  MEMORY[0x1EEE9AC00](v8);
  OUTLINED_FUNCTION_5();
  v11 = v10 - v9;
  v85 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v13 = v12;
  MEMORY[0x1EEE9AC00](v14);
  OUTLINED_FUNCTION_5();
  v17 = v16 - v15;
  v18 = v5;
  if (!v5)
  {
    if (!v3)
    {
LABEL_35:
      OUTLINED_FUNCTION_25_2();
      return;
    }

    v18 = v3;
  }

  v19 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_internalHighlightsVersion);
  v20 = __OFADD__(v19, 1);
  v21 = v19 + 1;
  if (v20)
  {
    __break(1u);
LABEL_37:
    OUTLINED_FUNCTION_3_236(&qword_1EE28E718);
LABEL_34:
    v70 = qword_1EE2AA7A8;
    sub_1E3FC50D4(v0);
    v72 = v71;

    sub_1E37E7460(v70, v1, v72, v3);

    goto LABEL_35;
  }

  *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_internalHighlightsVersion) = v21;
  v84 = v3;
  v77 = v7;
  v78 = v0;
  v76 = v11;
  if (!v5)
  {
    v26 = 0;
    if (v3)
    {
      goto LABEL_18;
    }

    goto LABEL_29;
  }

  v22 = sub_1E32AE9B0(v5);
  if (!v22)
  {

    v26 = MEMORY[0x1E69E7CC0];
    if (v3)
    {
      goto LABEL_18;
    }

LABEL_29:
    v41 = 0;
    goto LABEL_30;
  }

  v23 = v22;
  v87 = MEMORY[0x1E69E7CC0];
  v24 = v22 & ~(v22 >> 63);

  sub_1E377FD30(0, v24, 0);
  if (v23 < 0)
  {
    __break(1u);
    goto LABEL_39;
  }

  v82 = v23;
  v73 = v13;
  v74 = v18;
  v25 = 0;
  v26 = v87;
  v80 = v5 & 0xC000000000000001;
  v27 = (v13 + 8);
  v28 = v5;
  v29 = v5;
  do
  {
    if (v80)
    {
      v30 = MEMORY[0x1E6911E60](v25, v28);
    }

    else
    {
      v30 = *(v28 + 8 * v25 + 32);
    }

    v31 = v30;
    v32 = [v30 resourceURL];
    sub_1E41FE3C4();

    v33 = sub_1E41FE314();
    v35 = v34;

    (*v27)(v17, v85);
    v87 = v26;
    v37 = *(v26 + 16);
    v36 = *(v26 + 24);
    if (v37 >= v36 >> 1)
    {
      sub_1E377FD30((v36 > 1), v37 + 1, 1);
      v26 = v87;
    }

    ++v25;
    *(v26 + 16) = v37 + 1;
    v38 = v26 + 16 * v37;
    *(v38 + 32) = v33;
    *(v38 + 40) = v35;
    v28 = v29;
  }

  while (v82 != v25);
  v1 = v0;
  v3 = v84;
  v13 = v73;
  v18 = v74;
  if (!v84)
  {
    goto LABEL_29;
  }

LABEL_18:
  v39 = v13;
  v40 = sub_1E32AE9B0(v3);
  v41 = MEMORY[0x1E69E7CC0];
  if (!v40)
  {
    goto LABEL_30;
  }

  v42 = v40;
  v87 = MEMORY[0x1E69E7CC0];
  sub_1E377FD30(0, v40 & ~(v40 >> 63), 0);
  if ((v42 & 0x8000000000000000) == 0)
  {
    v75 = v18;
    v43 = 0;
    v41 = v87;
    v81 = v3 & 0xC000000000000001;
    v83 = v42;
    v44 = (v39 + 8);
    do
    {
      if (v81)
      {
        v45 = MEMORY[0x1E6911E60](v43, v3);
      }

      else
      {
        v45 = *(v3 + 8 * v43 + 32);
      }

      v46 = v45;
      v47 = [v45 resourceURL];
      sub_1E41FE3C4();

      v48 = sub_1E41FE314();
      v50 = v49;

      (*v44)(v17, v85);
      v87 = v41;
      v52 = *(v41 + 16);
      v51 = *(v41 + 24);
      if (v52 >= v51 >> 1)
      {
        sub_1E377FD30((v51 > 1), v52 + 1, 1);
        v41 = v87;
      }

      ++v43;
      *(v41 + 16) = v52 + 1;
      v53 = v41 + 16 * v52;
      *(v53 + 32) = v48;
      *(v53 + 40) = v50;
      v3 = v84;
    }

    while (v83 != v43);
    v1 = v0;
    v18 = v75;
LABEL_30:
    v54 = (*((*MEMORY[0x1E69E7D40] & *v1) + 0x78))();
    v55 = (v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate);
    v56 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate);
    v57 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 8);
    v58 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 16);
    v59 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24);
    *v55 = v26;
    v55[1] = v41;
    v86 = v54;
    v55[2] = v54;
    v55[3] = v18;

    sub_1E3FC3114(v56, v57, v58, v59);
    v60 = sub_1E324FBDC();
    (*(v77 + 16))(v76, v60, v79);

    v61 = sub_1E41FFC94();
    v62 = sub_1E4206814();

    if (os_log_type_enabled(v61, v62))
    {
      v63 = OUTLINED_FUNCTION_6_21();
      v64 = OUTLINED_FUNCTION_100();
      v87 = v64;
      *v63 = 136315138;

      v65 = sub_1E3FC2D70(v26, v41);
      v67 = v66;

      v68 = sub_1E3270FC8(v65, v67, &v87);

      *(v63 + 4) = v68;
      _os_log_impl(&dword_1E323F000, v61, v62, "Syndication::Sending update to JS for parsing: %s", v63, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v64);
      OUTLINED_FUNCTION_6_0();
      v1 = v78;
      OUTLINED_FUNCTION_6_0();

      (*(v77 + 8))(v76, v79);
    }

    else
    {

      (*(v77 + 8))(v76, v79);
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D768, &unk_1E42E2DA0);
    inited = swift_initStackObject();
    *(inited + 16) = xmmword_1E4297BE0;
    *(inited + 32) = 0x74616369646E7973;
    *(inited + 40) = 0xEF6F666E496E6F69;
    *(inited + 48) = v26;
    *(inited + 56) = v41;
    *(inited + 64) = v86;
    v0 = sub_1E4205CB4();
    v3 = [objc_opt_self() defaultCenter];
    if (qword_1EE28E718 == -1)
    {
      goto LABEL_34;
    }

    goto LABEL_37;
  }

LABEL_39:
  __break(1u);
}

void sub_1E3FC3DC4()
{
  v1 = sub_1E3FC2FA8();
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D760, &qword_1E42E2D98);
  sub_1E4205D14();
  *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap) = v1;

  sub_1E3FC3720();
}

void sub_1E3FC3E4C(uint64_t a1, uint64_t a2, void *a3)
{
  v4 = *(a1 + 32);
  sub_1E3280A90(0, &qword_1EE23B3F0, 0x1E69D3810);
  v5 = sub_1E42062B4();

  v6 = a3;
  v4(v5, a3);
}

uint64_t sub_1E3FC3EFC()
{
  if (*(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24))
  {
    v1 = *(v0 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 8);

    if (v1)
    {
    }

    sub_1E3FC3720();
  }

  return result;
}

void sub_1E3FC3F90()
{
  OUTLINED_FUNCTION_31_1();
  v2 = v1;
  v4 = v3;
  v6 = v5;
  v105 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v8 = v7;
  MEMORY[0x1EEE9AC00](v9);
  OUTLINED_FUNCTION_5();
  v12 = v11 - v10;
  v109 = sub_1E41FE414();
  OUTLINED_FUNCTION_0_10();
  v14 = v13;
  MEMORY[0x1EEE9AC00](v15);
  OUTLINED_FUNCTION_5();
  v18 = v17 - v16;
  v111 = v0;
  v19 = &v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate];
  v20 = *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager_pendingHighlightsUpdate + 24];
  if (!v20 || *(v19 + 2) > v2)
  {
LABEL_52:
    OUTLINED_FUNCTION_25_2();
    return;
  }

  v21 = *(v19 + 1);
  *v19 = 0u;
  *(v19 + 1) = 0u;

  v107 = v12;
  v108 = v8;
  if (v21)
  {

    sub_1E3280A90(0, &qword_1EE23B3F0, 0x1E69D3810);
    v22 = sub_1E4205CB4();
    v23 = 0;
    v24 = *(v6 + 16);
    v25 = v6 + 40;
    v26 = v105;
    v110 = v6 + 40;
LABEL_5:
    v27 = (v25 + 16 * v23);
    for (i = v23; ; ++i)
    {
      if (v24 == i)
      {
        *&v0[OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap] = v22;

        v12 = v107;
        v8 = v108;
        goto LABEL_48;
      }

      if (i >= v24)
      {
        break;
      }

      v23 = i + 1;
      if (__OFADD__(i, 1))
      {
        goto LABEL_54;
      }

      v30 = *(v27 - 1);
      v29 = *v27;
      v31 = sub_1E3FC2FA8();
      v32 = *(v31 + 16);

      if (v32)
      {
        v33 = OUTLINED_FUNCTION_99_0();
        v35 = sub_1E327D33C(v33, v34);
        if (v36)
        {
          v42 = *(*(v31 + 56) + 8 * v35);

          swift_isUniquelyReferenced_nonNull_native();
          v112 = v22;
          v43 = OUTLINED_FUNCTION_99_0();
          v45 = sub_1E327D33C(v43, v44);
          if (__OFADD__(*(v22 + 16), (v46 & 1) == 0))
          {
            goto LABEL_57;
          }

          v47 = v45;
          v48 = v46;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8, qword_1E42E2D00);
          if (sub_1E4207644())
          {
            v49 = OUTLINED_FUNCTION_99_0();
            v51 = sub_1E327D33C(v49, v50);
            v26 = v105;
            if ((v48 & 1) != (v52 & 1))
            {
              goto LABEL_61;
            }

            v47 = v51;
          }

          else
          {
            v26 = v105;
          }

          v22 = v112;
          if (v48)
          {
            v53 = v112[7];
            v54 = *(v53 + 8 * v47);
            *(v53 + 8 * v47) = v42;
          }

          else
          {
            OUTLINED_FUNCTION_7_2(&v112[v47 >> 6]);
            v55 = (v112[6] + 16 * v47);
            *v55 = v30;
            v55[1] = v29;
            *(*(v22 + 56) + 8 * v47) = v42;
            v56 = *(v22 + 16);
            v57 = __OFADD__(v56, 1);
            v58 = v56 + 1;
            if (v57)
            {
              goto LABEL_59;
            }

            *(v22 + 16) = v58;
          }

          goto LABEL_23;
        }
      }

      v37 = OUTLINED_FUNCTION_99_0();
      v39 = sub_1E327D33C(v37, v38);
      if (v40)
      {
        v41 = v39;
        swift_isUniquelyReferenced_nonNull_native();
        v112 = v22;
        __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8, qword_1E42E2D00);
        sub_1E4207644();

        sub_1E4207664();

LABEL_23:
        v25 = v110;
        v0 = v111;
        goto LABEL_5;
      }

      v27 += 2;
      v0 = v111;
    }

    __break(1u);
LABEL_54:
    __break(1u);
LABEL_55:
    __break(1u);
LABEL_56:
    __break(1u);
LABEL_57:
    __break(1u);
LABEL_58:
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  sub_1E3280A90(0, &qword_1EE23B3F0, 0x1E69D3810);
  v104 = sub_1E4205CB4();
  v59 = 0;
  v106 = sub_1E32AE9B0(v20);
  v60 = (v14 + 8);
  while (2)
  {
    while (2)
    {
      for (j = v59; ; ++j)
      {
        if (v106 == j)
        {

          v0 = v111;
          *&v111[OBJC_IVAR____TtC8VideosUI17HighlightsManager____lazy_storage___syndicationIdToHighlightMap] = v104;

          v26 = v105;
LABEL_48:
          sub_1E324FBDC();
          OUTLINED_FUNCTION_0_11();
          v87(v12);
          v88 = v0;
          v89 = v12;
          v90 = sub_1E41FFC94();
          v91 = sub_1E4206814();

          if (os_log_type_enabled(v90, v91))
          {
            v92 = OUTLINED_FUNCTION_6_21();
            v93 = OUTLINED_FUNCTION_100();
            v112 = v93;
            *v92 = 136315138;
            sub_1E3FC2FA8();
            sub_1E3280A90(0, &qword_1EE23B3F0, 0x1E69D3810);
            v94 = sub_1E4205C74();
            v96 = v95;

            v97 = sub_1E3270FC8(v94, v96, &v112);

            *(v92 + 4) = v97;
            _os_log_impl(&dword_1E323F000, v90, v91, "Syndication::Highlights map after update: %s", v92, 0xCu);
            __swift_destroy_boxed_opaque_existential_1(v93);
            OUTLINED_FUNCTION_6_0();
            OUTLINED_FUNCTION_6_0();

            v98 = OUTLINED_FUNCTION_99_0();
          }

          else
          {

            v100 = *(v8 + 8);
            v98 = v89;
            v99 = v26;
          }

          v100(v98, v99);
          goto LABEL_52;
        }

        if ((v20 & 0xC000000000000001) != 0)
        {
          v62 = MEMORY[0x1E6911E60](j, v20);
        }

        else
        {
          if (j >= *((v20 & 0xFFFFFFFFFFFFFF8) + 0x10))
          {
            goto LABEL_56;
          }

          v62 = *(v20 + 8 * j + 32);
        }

        v63 = v62;
        v59 = j + 1;
        if (__OFADD__(j, 1))
        {
          goto LABEL_55;
        }

        v64 = [v62 resourceURL];
        sub_1E41FE3C4();

        v65 = sub_1E41FE314();
        v67 = v66;
        (*v60)(v18, v109);
        if (*(v4 + 16))
        {
          break;
        }

LABEL_36:

        v12 = v107;
        v8 = v108;
      }

      v68 = sub_1E327D33C(v65, v67);
      v70 = v69;

      if ((v70 & 1) == 0)
      {
        goto LABEL_36;
      }

      v71 = (*(v4 + 56) + 16 * v68);
      v72 = *v71;
      v73 = v71[1];

      v102 = v63;
      swift_isUniquelyReferenced_nonNull_native();
      v112 = v104;
      v101 = v72;
      v103 = v73;
      v74 = sub_1E327D33C(v72, v73);
      if (__OFADD__(*(v104 + 16), (v75 & 1) == 0))
      {
        goto LABEL_58;
      }

      v76 = v74;
      v77 = v75;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF3D6F8, qword_1E42E2D00);
      if (sub_1E4207644())
      {
        v78 = sub_1E327D33C(v101, v73);
        v8 = v108;
        if ((v77 & 1) != (v79 & 1))
        {
          goto LABEL_61;
        }

        v76 = v78;
        v80 = v77;
      }

      else
      {
        v80 = v77;
        v8 = v108;
      }

      v12 = v107;
      if (v80)
      {

        v104 = v112;
        v81 = v112[7];
        v82 = *(v81 + 8 * v76);
        *(v81 + 8 * v76) = v102;

        continue;
      }

      break;
    }

    v83 = v112;
    OUTLINED_FUNCTION_7_2(&v112[v76 >> 6]);
    v84 = (v112[6] + 16 * v76);
    *v84 = v101;
    v84[1] = v103;
    *(*(v83 + 56) + 8 * v76) = v102;

    v85 = *(v83 + 16);
    v57 = __OFADD__(v85, 1);
    v86 = v85 + 1;
    if (!v57)
    {
      v104 = v83;
      *(v83 + 16) = v86;
      continue;
    }

    break;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  sub_1E4207A74();
  __break(1u);
}

id sub_1E3FC4788(uint64_t a1)
{
  v1 = [objc_allocWithZone(MEMORY[0x1E69D37B8]) initWithHighlight_];
  [v1 updateAlignment_];
  return v1;
}

void sub_1E3FC47DC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v3 = v2;
  v4 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v6 = v5;
  MEMORY[0x1EEE9AC00](v7);
  OUTLINED_FUNCTION_5();
  v10 = v9 - v8;
  v11 = sub_1E3FC2FA8();
  if (*(v11 + 16) && (v12 = sub_1E327D33C(v3, v1), (v13 & 1) != 0))
  {
    v14 = *(*(v11 + 56) + 8 * v12);
  }

  else
  {

    v15 = sub_1E324FBDC();
    (*(v6 + 16))(v10, v15, v4);

    v16 = sub_1E41FFC94();
    v17 = sub_1E42067F4();

    if (os_log_type_enabled(v16, v17))
    {
      v18 = OUTLINED_FUNCTION_6_21();
      v19 = OUTLINED_FUNCTION_100();
      v20 = v19;
      *v18 = 136315138;
      *(v18 + 4) = sub_1E3270FC8(v3, v1, &v20);
      _os_log_impl(&dword_1E323F000, v16, v17, "Syndication::Could not find highlight object for syndicationId: %s", v18, 0xCu);
      __swift_destroy_boxed_opaque_existential_1(v19);
      OUTLINED_FUNCTION_6_0();
      OUTLINED_FUNCTION_6_0();
    }

    (*(v6 + 8))(v10, v4);
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC49A8(uint64_t a1, uint64_t a2)
{
  if (a2)
  {
    OUTLINED_FUNCTION_21();
    v4 = (*(v3 + 272))();
    if (v4)
    {
      v5 = v4;
      [*(v2 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_highlightCenter) feedbackForHighlight_withType_completionBlock_];
    }
  }
}

void sub_1E3FC4A60()
{
  if ([objc_opt_self() isEnabled])
  {
    v1 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    MEMORY[0x1EEE9AC00](v1);
    OUTLINED_FUNCTION_1_27();
    *(v2 - 16) = v0;
    sub_1E3B79200(sub_1E3FC54F8, v3);
  }
}

void sub_1E3FC4B58(uint64_t a1, uint64_t a2)
{
  if ([objc_opt_self() isEnabled])
  {
    v4 = sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
    MEMORY[0x1EEE9AC00](v4);
    OUTLINED_FUNCTION_1_27();
    *(v5 - 16) = v2;
    *(v5 - 8) = a2;
    sub_1E3B79200(sub_1E3FC5548, v6);
  }
}

void sub_1E3FC4C88()
{
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v2 = v0;
  sub_1E3B79200(sub_1E3FC5574, &v1);
}

void sub_1E3FC4CEC()
{
  OUTLINED_FUNCTION_31_1();
  v1 = v0;
  v2 = sub_1E41FFCB4();
  OUTLINED_FUNCTION_0_10();
  v4 = v3;
  MEMORY[0x1EEE9AC00](v5);
  OUTLINED_FUNCTION_5();
  v8 = v7 - v6;
  v9 = [objc_opt_self() isEnabled];
  v10 = sub_1E324FBDC();
  (*(v4 + 16))(v8, v10, v2);
  v11 = sub_1E41FFC94();
  v12 = sub_1E4206814();
  if (os_log_type_enabled(v11, v12))
  {
    v19 = v1;
    v13 = OUTLINED_FUNCTION_6_21();
    v14 = OUTLINED_FUNCTION_100();
    v20 = v14;
    *v13 = 136315138;
    if (v9)
    {
      v15 = 0x44454C42414E45;
    }

    else
    {
      v15 = 0x44454C4241534944;
    }

    if (v9)
    {
      v16 = 0xE700000000000000;
    }

    else
    {
      v16 = 0xE800000000000000;
    }

    v17 = sub_1E3270FC8(v15, v16, &v20);

    *(v13 + 4) = v17;
    _os_log_impl(&dword_1E323F000, v11, v12, "Syndication::Feature is now %s", v13, 0xCu);
    __swift_destroy_boxed_opaque_existential_1(v14);
    OUTLINED_FUNCTION_6_0();
    v1 = v19;
    OUTLINED_FUNCTION_6_0();
  }

  v18 = (*(v4 + 8))(v8, v2);
  if (v9)
  {
    (*((*MEMORY[0x1E69E7D40] & *v1) + 0xF0))(v18);
  }

  else
  {
    sub_1E3FC3DC4();
  }

  OUTLINED_FUNCTION_25_2();
}

void sub_1E3FC4F60()
{
  sub_1E3280A90(0, &qword_1EE23B1D0, 0x1E69E9610);
  v2 = v0;
  sub_1E3B79200(sub_1E3FC558C, &v1);
}

uint64_t *sub_1E3FC5094()
{
  if (qword_1EE28E718 != -1)
  {
    OUTLINED_FUNCTION_3_236(&qword_1EE28E718);
  }

  return &qword_1EE2AA7A8;
}

void sub_1E3FC50D4(uint64_t a1)
{
  if (*(a1 + 16))
  {
    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECF2C8D0, &qword_1E429A1F0);
    v1 = sub_1E4207744();
  }

  else
  {
    v1 = MEMORY[0x1E69E7CC8];
  }

  v2 = 1 << *(a1 + 32);
  if (v2 < 64)
  {
    v3 = ~(-1 << v2);
  }

  else
  {
    v3 = -1;
  }

  v4 = v3 & *(a1 + 64);
  v5 = (v2 + 63) >> 6;
  v6 = v1 + 64;

  v7 = 0;
  if (!v4)
  {
    goto LABEL_8;
  }

  do
  {
LABEL_12:
    v9 = (*(a1 + 56) + 24 * (__clz(__rbit64(v4)) | (v7 << 6)));
    v10 = *v9;
    v11 = v9[1];
    v12 = v9[2];

    swift_dynamicCast();
    *&v32 = v10;
    *(&v32 + 1) = v11;
    v33 = v12;
    swift_dynamicCast();
    v28 = v24;
    v29 = v25;
    v30 = v26;
    sub_1E329504C(&v27, v31);
    v24 = v28;
    v25 = v29;
    v26 = v30;
    sub_1E329504C(v31, &v32);
    v13 = sub_1E42073F4();
    v14 = -1 << *(v1 + 32);
    v15 = v13 & ~v14;
    v16 = v15 >> 6;
    if (((-1 << v15) & ~*(v6 + 8 * (v15 >> 6))) == 0)
    {
      v18 = 0;
      v19 = (63 - v14) >> 6;
      while (++v16 != v19 || (v18 & 1) == 0)
      {
        v20 = v16 == v19;
        if (v16 == v19)
        {
          v16 = 0;
        }

        v18 |= v20;
        v21 = *(v6 + 8 * v16);
        if (v21 != -1)
        {
          v17 = __clz(__rbit64(~v21)) + (v16 << 6);
          goto LABEL_21;
        }
      }

      goto LABEL_25;
    }

    v17 = __clz(__rbit64((-1 << v15) & ~*(v6 + 8 * (v15 >> 6)))) | v15 & 0x7FFFFFFFFFFFFFC0;
LABEL_21:
    v4 &= v4 - 1;
    *(v6 + ((v17 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v17;
    v22 = *(v1 + 48) + 40 * v17;
    *v22 = v24;
    *(v22 + 16) = v25;
    *(v22 + 32) = v26;
    sub_1E329504C(&v32, (*(v1 + 56) + 32 * v17));
    ++*(v1 + 16);
  }

  while (v4);
LABEL_8:
  while (1)
  {
    v8 = v7 + 1;
    if (__OFADD__(v7, 1))
    {
      break;
    }

    if (v8 >= v5)
    {

      return;
    }

    v4 = *(a1 + 64 + 8 * v8);
    ++v7;
    if (v4)
    {
      v7 = v8;
      goto LABEL_12;
    }
  }

  __break(1u);
LABEL_25:
  __break(1u);
}

uint64_t sub_1E3FC53B4()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA7A8 = result;
  return result;
}

uint64_t sub_1E3FC53E8()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA798 = result;
  return result;
}

uint64_t *sub_1E3FC541C()
{
  if (qword_1EE28E700 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA798;
}

uint64_t sub_1E3FC546C()
{
  OUTLINED_FUNCTION_23();
  result = sub_1E4205ED4();
  qword_1EE2AA7A0 = result;
  return result;
}

uint64_t *sub_1E3FC54A0()
{
  if (qword_1EE28E708 != -1)
  {
    swift_once();
  }

  return &qword_1EE2AA7A0;
}

void sub_1E3FC558C()
{
  v1 = *(v0 + 16);
  v2 = objc_opt_self();
  v3 = [v2 DSID];
  v4 = OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID;
  v5 = *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID);
  v11 = v3;
  if (v5)
  {
    if (v3)
    {
      v6 = [v5 isEqualToNumber_];
      v7 = *(v1 + v4);
      *(v1 + v4) = v11;
      v8 = v11;

      if (v6)
      {
        goto LABEL_10;
      }

      goto LABEL_7;
    }
  }

  else if (!v3)
  {
    *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID) = 0;
    goto LABEL_10;
  }

  *(v1 + OBJC_IVAR____TtC8VideosUI17HighlightsManager_cachedDSID) = v3;
  v9 = v3;

LABEL_7:
  sub_1E3FC3DC4();
  if ([v2 userHasActiveAccount])
  {
    OUTLINED_FUNCTION_21();
    (*(v10 + 240))();
  }

LABEL_10:
}

uint64_t sub_1E3FC572C()
{
  *(v0 + 104) = 0;
  v1 = sub_1E3C2F9A0();
  v2 = *(*v1 + 312);

  v3 = v2(0x4051000000000000, 0);
  v4 = *(*v1 + 1696);
  v5 = v4(v3);
  LOBYTE(v15) = 2;
  v21 = 6;
  sub_1E3C2FC98();
  v20[0] = v20[1];
  sub_1E3C3DE00();
  v19[0] = v19[1];
  sub_1E3C3DE00();
  v18[0] = v18[1];
  sub_1E3C3DE00();
  v17[0] = v17[1];
  sub_1E3C2FCB8(&v15, v20, v19, v18, v17, &v21, &qword_1F5D549D8, &v22);
  v15 = v22;
  v16 = v23;
  v6 = OUTLINED_FUNCTION_18();
  (*(*v5 + 1600))(&v15, 48, v6 & 1, &qword_1F5D549D8);

  v8 = v4(v7);
  v9 = *sub_1E3E5FD88();
  v10 = *(*v8 + 680);
  v11 = v9;
  v10(v9);

  v13 = *v4(v12);
  (*(v13 + 1792))(7);

  return v1;
}

BOOL GroupActivityIdentifier.init(rawValue:)()
{
  v0 = sub_1E4207784();

  return v0 != 0;
}

unint64_t sub_1E3FC5A38(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_1ECF3D770;
  if (!qword_1ECF3D770)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECF3D770);
  }

  return result;
}

uint64_t sub_1E3FC5A90()
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

uint64_t sub_1E3FC5B0C(uint64_t a1)
{
  sub_1E4207B44();
  sub_1E4206014();
  return sub_1E4207BA4();
}

BOOL sub_1E3FC5B60@<W0>(_BYTE *a1@<X8>)
{
  result = GroupActivityIdentifier.init(rawValue:)();
  *a1 = result;
  return result;
}

unint64_t sub_1E3FC5B94@<X0>(void *a1@<X8>)
{
  result = GroupActivityIdentifier.rawValue.getter();
  *a1 = 0xD00000000000001BLL;
  a1[1] = v3;
  return result;
}

_BYTE *storeEnumTagSinglePayload for GroupActivityIdentifier(_BYTE *result, int a2, int a3)
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

uint64_t sub_1E3FC5C70()
{
  v0 = sub_1E4207784();

  if (v0 == 1)
  {
    v1 = 1;
  }

  else
  {
    v1 = 2;
  }

  if (v0)
  {
    return v1;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1E3FC5CC4(char a1)
{
  if (a1)
  {
    return 1953720684;
  }

  else
  {
    return 0x70756B636F6CLL;
  }
}

uint64_t sub_1E3FC5D18(uint64_t a1, char a2)
{
  sub_1E4206014();
}

uint64_t sub_1E3FC5D80(uint64_t a1, char a2)
{
  sub_1E4207B44();
  sub_1E4206014();

  return sub_1E4207BA4();
}

uint64_t sub_1E3FC5DF4@<X0>(_BYTE *a1@<X8>)
{
  result = sub_1E3FC5C70();
  *a1 = result;
  return result;
}

uint64_t sub_1E3FC5E24@<X0>(uint64_t *a1@<X8>)
{
  result = sub_1E3FC5CC4(*v1);
  *a1 = result;
  a1[1] = v4;
  return result;
}

uint64_t sub_1E3FC5E84(char a1, uint64_t a2)
{
  result = OUTLINED_FUNCTION_14_0(v2 + 402, a2);
  *(v2 + 402) = a1 & 1;
  return result;
}

double sub_1E3FC5EF4(uint64_t a1, uint64_t a2)
{
  OUTLINED_FUNCTION_14_0(v2 + 408, a2);
  *(v2 + 408) = a1;

  return result;
}

uint64_t sub_1E3FC5F80()
{
  OUTLINED_FUNCTION_8();
  v2 = *(v0 + 1608);
  if (v2())
  {

    return v2();
  }

  else
  {

    return sub_1E40B1140();
  }
}

double sub_1E3FC6008()
{
  OUTLINED_FUNCTION_8();
  if ((*(v0 + 1608))())
  {

    OUTLINED_FUNCTION_8();
    v3 = (*(v2 + 960))();
    if (v3)
    {
      v5 = v3;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECF29750, &unk_1E429DD30);
      v6 = swift_allocObject();
      *&result = 1;
      *(v6 + 16) = xmmword_1E4298880;
      *(v6 + 32) = v5;
    }
  }

  else
  {

    return sub_1E40B11F0(0, v1);
  }

  return result;
}

uint64_t sub_1E3FC6124(uint64_t a1, uint64_t a2, uint64_t a3)
{
  *(v3 + 402) = 0;
  *(v3 + 408) = 0;
  *(v3 + 416) = 0;
  *(v3 + 424) = 1;

  v7 = sub_1E40B19D4(a1, a2, a3);
  v8 = v7;
  if (v7)
  {
    v9 = *(*v7 + 392);

    v11 = v9(v10);
    if (v11)
    {
      v12 = (*(*v11 + 984))();
      v14 = v13;
    }

    else
    {

      v12 = 0;
      v14 = 1;
    }

    *(v8 + 416) = v12;
    *(v8 + 424) = v14 & 1;
  }

  return v8;
}

void sub_1E3FC6248(uint64_t a1)
{
  OUTLINED_FUNCTION_8();
  if ((*(v3 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v6 = (*(v5 + 1536))();
    v8 = v7;
    v10 = v9;
  }

  else
  {
    v6 = 0;
    v10 = 0;
    v8 = 1;
  }

  sub_1E40B2344(a1, v4);
  (*(*v1 + 1656))(v6, v8, v10);

  sub_1E39DFB80(v6, v8);
}

void sub_1E3FC6354(uint64_t a1, void *a2)
{
  v58 = a1;
  if (a2 == 1)
  {
    OUTLINED_FUNCTION_192();
    return;
  }

  v3 = v2;
  OUTLINED_FUNCTION_8();
  v6 = (*(v5 + 1040))(a2);
  if (!v6)
  {
    goto LABEL_24;
  }

  v14 = v6;
  if (!sub_1E32AE9B0(v6))
  {
    goto LABEL_23;
  }

  if ((v14 & 0xC000000000000001) != 0)
  {
LABEL_30:
    v15 = MEMORY[0x1E6911E60](0, v14);
  }

  else
  {
    if (!*((v14 & 0xFFFFFFFFFFFFFF8) + 0x10))
    {
      __break(1u);
      return;
    }

    v15 = *(v14 + 32);
  }

  v17 = (*(*v15 + 872))(v16);

  if (!v17)
  {
    goto LABEL_24;
  }

  v18 = sub_1E3FC6630(v17);

  if (!v18)
  {
    goto LABEL_24;
  }

  v57 = sub_1E32AE9B0(v18);
  if (!v57)
  {
LABEL_23:

LABEL_24:
    OUTLINED_FUNCTION_0_311(v6, v7, v8, v9, v10, v11, v12, v13, v56, v57, v58);
    OUTLINED_FUNCTION_192();

    sub_1E39DFB80(v53, v54);
    return;
  }

  v14 = v3;
  if ((*(*v3 + 392))())
  {
    OUTLINED_FUNCTION_30();
    v27 = OUTLINED_FUNCTION_0_311(v19, v20, v21, v22, v23, v24, v25, v26, v56, v57, v58);
    v28(v27);
  }

  v29 = 0;
  v30 = *(*v3 + 1584);
  v56 = v18 & 0xFFFFFFFFFFFFFF8;
  do
  {
    if ((v18 & 0xC000000000000001) != 0)
    {
      v31 = MEMORY[0x1E6911E60](v29, v18);
    }

    else
    {
      if (v29 >= *(v56 + 16))
      {
        goto LABEL_29;
      }

      v31 = *(v18 + 8 * v29 + 32);
    }

    v32 = v29 + 1;
    if (__OFADD__(v29, 1))
    {
      __break(1u);
LABEL_29:
      __break(1u);
      goto LABEL_30;
    }

    v33 = v30();
    v40 = OUTLINED_FUNCTION_0_311(v33, v34, v35, v33 & 1, v36, v37, v38, v39, v56, v57, v58);
    v14 = v31;
    v41(v40);

    ++v29;
  }

  while (v32 != v57);
  v50 = OUTLINED_FUNCTION_0_311(v42, v43, v44, v45, v46, v47, v48, v49, v56, v57, v58);
  sub_1E39DFB80(v50, v51);
  OUTLINED_FUNCTION_192();
}

uint64_t sub_1E3FC6630(unint64_t a1)
{
  v5 = MEMORY[0x1E69E7CC0];
  sub_1E32AE9B0(a1);
  sub_1E4207574();
  result = sub_1E32AE9B0(a1);
  v3 = result;
  for (i = 0; ; ++i)
  {
    if (v3 == i)
    {
      return v5;
    }

    if ((a1 & 0xC000000000000001) != 0)
    {
      result = MEMORY[0x1E6911E60](i, a1);
    }

    else
    {
      if (i >= *((a1 & 0xFFFFFFFFFFFFFF8) + 0x10))
      {
        goto LABEL_14;
      }
    }

    if (__OFADD__(i, 1))
    {
      break;
    }

    type metadata accessor for PlayerCellViewModel();
    if (!swift_dynamicCastClass())
    {

      return 0;
    }

    sub_1E4207544();
    sub_1E4207584();
    sub_1E4207594();
    result = sub_1E4207554();
  }

  __break(1u);
LABEL_14:
  __break(1u);
  return result;
}

void sub_1E3FC6760(double a1)
{
  type metadata accessor for LayoutGrid();
  sub_1E3A2579C(a1);
  if ([objc_opt_self() shouldPlayerTabsUseVerticalLayout])
  {
    v4 = OUTLINED_FUNCTION_14_0(v1 + 402, v3);
    *(v1 + 402) = 1;
    v5 = *(*v1 + 392);
    v6 = v5(v4);
    if (v6)
    {
      v7 = *(MEMORY[0x1E69DDCE0] + 16);
      v18 = *MEMORY[0x1E69DDCE0];
      v19 = v7;
      v20 = 0;
      (*(*v6 + 184))(&v18);
    }

    if (v5(v6))
    {
      OUTLINED_FUNCTION_30();
      (*(v8 + 992))(21, 0);
LABEL_10:
    }
  }

  else
  {
    v9 = OUTLINED_FUNCTION_14_0(v1 + 402, v3);
    *(v1 + 402) = 0;
    v10 = *(*v1 + 392);
    v11 = v10(v9);
    if (v11)
    {
      v12 = v11;
      type metadata accessor for CollectionLayoutFactory();
      sub_1E3C11CA0(v1);
      *&v18 = v13;
      *(&v18 + 1) = v14;
      *&v19 = v15;
      *(&v19 + 1) = v16;
      v20 = 0;
      (*(*v12 + 184))(&v18);
    }

    v17 = v10(v11);
    if (v17)
    {
      (*(*v17 + 992))(*(v1 + 416), *(v1 + 424));
      goto LABEL_10;
    }
  }
}