unint64_t sub_2488A07B4(unint64_t a1, uint64_t a2, uint64_t a3)
{
  v3 = a1;
  v4 = a1 >> 14;
  if ((a3 & 0x1000000000000000) == 0 || (a2 & 0x800000000000000) != 0)
  {
    v10 = sub_2488A57CC();
    v11 = v10 + (v4 << 16);
    v12 = v10 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v13 = v11 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v13 = v12;
    }

    return v13 | 4;
  }

  else
  {
    v5 = MEMORY[0x24C1DB1B0](15, a1 >> 16);
    v6 = v5 + (v4 << 16);
    v7 = v5 & 0xFFFFFFFFFFFFFFFCLL | v3 & 3;
    v8 = v6 & 0xFFFFFFFFFFFF0000;
    if (!v4)
    {
      v8 = v7;
    }

    return v8 | 8;
  }
}

uint64_t sub_2488A0830(unint64_t a1, unint64_t a2, unint64_t a3, unint64_t a4, uint64_t a5)
{
  if ((a4 & 0x1000000000000000) != 0)
  {
    result = 0;
    goto LABEL_8;
  }

  if ((a4 & 0x2000000000000000) != 0)
  {
    v14[0] = a3;
    v14[1] = a4 & 0xFFFFFFFFFFFFFFLL;
    v11 = v14;
  }

  else if ((a3 & 0x1000000000000000) != 0)
  {
    v11 = ((a4 & 0xFFFFFFFFFFFFFFFLL) + 32);
  }

  else
  {
    v11 = sub_2488A5A3C();
  }

  result = sub_2488A36C8(v11, a1, a2, a3, a4, a5);
  if (!v5)
  {
    v15 = v13 & 1;
LABEL_8:
    v16 = (a4 & 0x1000000000000000) != 0;
  }

  return result;
}

uint64_t sub_2488A08FC(uint64_t a1, int *a2)
{
  *(v2 + 16) = a1;
  v5 = (a2 + *a2);
  v3 = swift_task_alloc();
  *(v2 + 24) = v3;
  *v3 = v2;
  v3[1] = sub_2488A09F0;

  return v5(v2 + 32);
}

uint64_t sub_2488A09F0()
{
  v1 = *v0;
  v2 = *(*v0 + 16);
  v5 = *v0;

  *v2 = *(v1 + 32);
  v3 = *(v5 + 8);

  return v3();
}

uint64_t sub_2488A0B04@<X0>(uint64_t a1@<X0>, void (*a2)(__int128 *__return_ptr, char *)@<X1>, _OWORD *a3@<X8>)
{
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v7 = *(v6 - 8);
  v8 = *(v7 + 64);
  MEMORY[0x28223BE20](v6);
  v10 = &v14 - v9;
  v11 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF8, &qword_2488A8238);
  v13 = *(v11 - 8);
  result = v11 - 8;
  if (*(v13 + 64) == v8)
  {
    (*(v7 + 16))(v10, a1, v6);
    a2(&v14, v10);
    result = (*(v7 + 8))(v10, v6);
    *a3 = v14;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_2488A0C98(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

unint64_t sub_2488A0CE0()
{
  result = qword_27EEB1B80;
  if (!qword_27EEB1B80)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_27EEB1B70, &qword_2488A7F98);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1B80);
  }

  return result;
}

uint64_t get_enum_tag_for_layout_string_So19FolderAnimationKindV12CoreGraphics7CGFloatVABIegyyd_Sg(unint64_t *a1)
{
  v1 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

__n128 __swift_memcpy64_8(uint64_t a1, uint64_t a2)
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

uint64_t sub_2488A0D98(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 64))
  {
    return *a1 + 0x80000000;
  }

  v2 = *(a1 + 40);
  if (v2 >= 0xFFFFFFFF)
  {
    LODWORD(v2) = -1;
  }

  return (v2 + 1);
}

uint64_t sub_2488A0DE0(uint64_t result, int a2, int a3)
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
      *(result + 40) = (a2 - 1);
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

void sub_2488A0E48(uint64_t a1)
{
  sub_2488A0F2C(319);
  if (v1 <= 0x3F)
  {
    sub_2488A0F84();
    if (v2 <= 0x3F)
    {
      swift_updateClassMetadata2();
    }
  }
}

void sub_2488A0F2C(uint64_t a1)
{
  if (!qword_27EEB1BB8)
  {
    type metadata accessor for FolderAnimationKind(255);
    v1 = sub_2488A4B3C();
    if (!v2)
    {
      atomic_store(v1, &qword_27EEB1BB8);
    }
  }
}

void sub_2488A0F84()
{
  if (!qword_27EEB1BC0)
  {
    v0 = sub_2488A4B3C();
    if (!v1)
    {
      atomic_store(v0, &qword_27EEB1BC0);
    }
  }
}

unint64_t sub_2488A0FFC()
{
  result = qword_27EEB1BC8;
  if (!qword_27EEB1BC8)
  {
    sub_2488A0CE0();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1BC8);
  }

  return result;
}

__n128 __swift_memcpy16_8(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t getEnumTagSinglePayload for TFolderAnimationOverlay.RebarImageLoader.KindAndSize(uint64_t a1, int a2)
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

uint64_t storeEnumTagSinglePayload for TFolderAnimationOverlay.RebarImageLoader.KindAndSize(uint64_t result, int a2, int a3)
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

unint64_t sub_2488A10E8(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1BD8;
  if (!qword_27EEB1BD8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1BD8);
  }

  return result;
}

uint64_t sub_2488A119C()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

double sub_2488A11E0(uint64_t a1, uint64_t a2)
{
  if (a1)
  {
  }

  return result;
}

uint64_t sub_2488A11F0(uint64_t result, uint64_t a2)
{
  if (result)
  {
  }

  return result;
}

uint64_t sub_2488A1204@<X0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(__swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230) - 8);
  v6 = *(v2 + 16);
  v7 = v2 + ((*(v5 + 80) + 88) & ~*(v5 + 80));

  return sub_24889E310(a1, (v2 + 24), v7, a2, v6);
}

uint64_t objectdestroy_53Tm()
{
  v1 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);
  sub_24889F1D8(v0[3], v0[4]);
  if (v0[6])
  {
  }

  v5 = (v3 + 88) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 7);
}

uint64_t sub_2488A138C(uint64_t a1, double a2, double a3)
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1BF0, &qword_2488A8230);
  v7 = *(v3 + 16);

  return sub_24889E5D8(a1, (v3 + 24), a2, a3, v7);
}

uint64_t sub_2488A1428()
{
  sub_24889F1D8(v0[2], v0[3]);
  if (v0[5])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 80, 7);
}

uint64_t sub_2488A148C(void *a1, double *a2, uint64_t *a3)
{
  v5 = *a3;
  sub_2488A4C3C();
  *&v8[0] = *a1;

  sub_2488A4C5C();
  sub_2488A2C24(a2[9], v8, v5, *(a2 + 17), *(a2 + 21));

  sub_2488A4C3C();
  sub_2488A4D1C();
  sub_2488A4CEC();
  if (qword_27EEB1020 != -1)
  {
    swift_once();
  }

  v8[0] = xmmword_27EEB1028;
  v8[1] = unk_27EEB1038;
  v9 = byte_27EEB1048;
  if (qword_27EEB1050 != -1)
  {
    swift_once();
  }

  v6 = sub_2488A4CDC();
  __swift_project_value_buffer(v6, qword_27EEB1058);
  return sub_2488A4C8C();
}

uint64_t sub_2488A15EC(double a1, uint64_t a2, uint64_t a3, uint64_t *a4)
{
  v7 = sub_2488A4CBC();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v13 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v14 = *a4;
  sub_2488A4C3C();
  if (qword_27EEB1000 != -1)
  {
    swift_once();
  }

  sub_2488A4CAC();
  sub_2488A4D0C();
  (*(v8 + 8))(v10, v7);
  v11 = sub_2488A4C3C();
  MEMORY[0x28223BE20](v11);
  *(&v13 - 4) = a3;
  *(&v13 - 3) = a1;
  *(&v13 - 2) = &v14;
  return sub_2488A4D2C();
}

uint64_t sub_2488A17A4(uint64_t *a1, uint64_t a2, uint64_t *a3, uint64_t a4, uint64_t a5)
{
  v7 = *a3;
  sub_2488A4C3C();
  sub_2488A4C6C();
  RBDrawingStateAddScaleStyle();
  sub_2488A4C3C();
  v9 = *a1;

  sub_2488A4C5C();
  sub_2488A30E8(*(a2 + 104), &v9, v7, *(a2 + 136), *(a2 + 168));
}

uint64_t sub_2488A1860(double a1, double a2, double a3, uint64_t a4, uint64_t a5, void (*a6)(uint64_t, double), uint64_t a7, uint64_t a8, uint64_t a9)
{
  v85 = a7;
  v87 = a6;
  v13 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  MEMORY[0x28223BE20](v13 - 8);
  v84 = &v83 - v14;
  v15 = type metadata accessor for TFolderAnimationOverlay.RebarImageLoader();
  v109[4] = &off_285B4A9A0;
  v109[3] = v15;
  v109[0] = a8;
  v16 = sub_24889DD60(a2, a3);
  v18 = v17;
  v19 = v16;

  sub_2488A4C5C();
  sub_2488A4CFC();
  sub_2488A49BC();
  v21 = v20;
  v22 = OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime;
  v23 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_lastTime);
  if (v23 != INFINITY)
  {
    *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime) = v21 - v23 + *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
  }

  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  v24 = INFINITY;
  if (!v112)
  {
    v24 = v21;
  }

  *(a9 + v22) = v24;
  v25 = a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_storage;
  swift_beginAccess();
  sub_24883C484();
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  v26 = 2.0;
  if (v112 <= 8)
  {
    v26 = dbl_2488A8320[v112];
  }

  v27 = sub_24889F398(0xD000000000000018, 0x80000002488B9890, 0xD000000000000010, 0x80000002488B98B0);
  v28 = (v27 == 2) | v27;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  if (v112 > 8 || ((1 << v112) & 0x99) != 0 || ((1 << v112) & 0x160) == 0)
  {
    if (qword_27EEB0FF0 != -1)
    {
      goto LABEL_40;
    }

    goto LABEL_10;
  }

  if (qword_27EEB0FF0 != -1)
  {
    swift_once();
  }

  v30 = qword_27EEB0FF8;
  LOBYTE(v105) = 0;
  for (i = 1; ; i = 0)
  {
    *(&v105 + 1) = i;
    *&v106 = v19;
    *(&v106 + 1) = v30;
    *v107 = v26;
    __asm { FMOV            V0.2D, #1.0 }

    *(v107 + 8) = _Q0;
    v86 = xmmword_2488A7F40;
    *(&v107[1] + 8) = xmmword_2488A7F40;
    *(&v107[2] + 1) = 0x3FF0000000000000;
    LOBYTE(v108) = 0;
    HIBYTE(v108) = (v28 & 1) == 0;

    v110[2] = v107[0];
    v110[3] = v107[1];
    v110[4] = v107[2];
    v111 = v108;
    v110[0] = v105;
    v110[1] = v106;
    swift_getKeyPath();
    swift_getKeyPath();
    sub_2488A4B1C();

    v36 = v112;
    if (v112 > 3)
    {
      break;
    }

    if (v112 > 1)
    {
      if (v112 == 2)
      {
LABEL_25:
        v44 = __swift_project_boxed_opaque_existential_0(v109, v15);
        *&v86 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
        v45 = v86;
        swift_beginAccess();
        v46 = *v44;
        *(v25 + 231) = 1;
        sub_2488A4C3C();
        sub_2488A4C3C();
        v47.n128_u64[0] = v45;
        sub_24883B804(v25, v110, &v112, v47);
        v83 = v112;
        v48 = v113[0];
        v49 = v113[1];
        v50 = v114;
        v51 = BYTE8(v114);
        v52 = v18;
        v53 = v115;
        sub_2488A4C3C();
        LOBYTE(v90) = v105;
        *(&v90 + 1) = 2;
        *&v91 = *(&v106 + 1);
        BYTE8(v91) = v108;
        v92 = v83;
        v93 = v48;
        v94 = 0;
        *&v95 = *(&v107[0] + 1);
        *(&v95 + 1) = *(&v48 + 1);
        *&v96 = 0;
        *(&v96 + 1) = v49;
        *&v97 = 0;
        *(&v97 + 1) = *(&v49 + 1);
        *&v98 = v53;
        v18 = v52;
        *(&v98 + 1) = v50;
        LOBYTE(v99) = v51;
        *(&v99 + 1) = v106;
        *&v100 = &unk_285B498D8;
        *(&v100 + 1) = &unk_285B49920;
        *&v101 = &unk_285B49968;
        *(&v101 + 1) = &unk_285B499B0;
        *&v102 = &unk_285B499F8;
        *(&v102 + 1) = &unk_285B49A40;
        *&v103 = &unk_285B49A88;
        *(&v103 + 1) = *&v107[0];
        v104 = HIBYTE(v108);
        v112 = v90;
        v113[0] = v91;
        v115 = v95;
        v116 = v96;
        v113[1] = v83;
        v114 = v48;
        v119 = v99;
        v120 = v100;
        v117 = v97;
        v118 = v98;
        v124 = HIBYTE(v108);
        v122 = v102;
        v123 = v103;
        v121 = v101;
        v89[0] = v46;
        sub_24883CB1C(&v105, v88);
        sub_2488A4C3C();
        v54 = sub_2488A4CEC();
        MEMORY[0x28223BE20](v54);
        *(&v83 - 4) = &v112;
        *(&v83 - 3) = v86;
        *(&v83 - 2) = v89;
        goto LABEL_31;
      }

      goto LABEL_30;
    }

    if (!v112)
    {
      v37 = __swift_project_boxed_opaque_existential_0(v109, v15);
      v38 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
      swift_beginAccess();
      v39 = *v37;
      *(v25 + 225) = 1;
      sub_2488A4C3C();
      v40.n128_u64[0] = v38;
      sub_248839B2C(v25, v110, &v112, v40);
      v41 = v112;
      v42 = *&v113[0];
      v83 = *(v113 + 8);
      sub_2488A4C3C();
      LOBYTE(v90) = v105;
      *(&v90 + 1) = *(&v105 + 1);
      *&v91 = *(&v106 + 1);
      BYTE8(v91) = v108;
      v92 = v83;
      v93 = v41;
      v94 = 0;
      *&v95 = *(&v41 + 1);
      *(&v95 + 1) = v42;
      v96 = v86;
      v97 = 0u;
      v98 = 0u;
      LOBYTE(v99) = 0;
      *(&v99 + 1) = v106;
      *&v100 = &unk_285B49038;
      *(&v100 + 1) = &unk_285B49080;
      *&v101 = &unk_285B490C8;
      *(&v101 + 1) = &unk_285B49110;
      *&v102 = &unk_285B49158;
      *(&v102 + 1) = &unk_285B491A0;
      *&v103 = &unk_285B491E8;
      *(&v103 + 1) = *&v107[0];
      v104 = HIBYTE(v108);
      v112 = v90;
      v113[0] = v91;
      v115 = v95;
      v116 = v86;
      v113[1] = v83;
      v114 = v41;
      v119 = v99;
      v120 = v100;
      v117 = 0u;
      v118 = 0u;
      v124 = HIBYTE(v108);
      v122 = v102;
      v123 = v103;
      v121 = v101;
      v89[0] = v39;
      sub_24883CB1C(&v105, v88);
      sub_2488A4C3C();
      v43 = sub_2488A4CEC();
      MEMORY[0x28223BE20](v43);
      *(&v83 - 4) = &v112;
      *(&v83 - 3) = v38;
      *(&v83 - 2) = v89;
      goto LABEL_31;
    }

    if (v112 == 1)
    {
      goto LABEL_29;
    }

LABEL_39:
    type metadata accessor for FolderAnimationKind(0);
    *&v112 = v36;
    sub_2488A5A9C();
    __break(1u);
LABEL_40:
    swift_once();
LABEL_10:
    v30 = qword_27EEB0FF8;
    LOBYTE(v105) = 0;
  }

  if (v112 > 5)
  {
    switch(v112)
    {
      case 6:
        goto LABEL_27;
      case 7:
LABEL_29:
        v61 = __swift_project_boxed_opaque_existential_0(v109, v15);
        v62 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
        swift_beginAccess();
        v63 = *v61;
        *(v25 + 228) = 1;
        sub_2488A4C3C();
        sub_2488A4C3C();
        v64.n128_u64[0] = v62;
        sub_24883AEE0(v25, v110, &v112, v64);
        v86 = v112;
        v65 = v113[0];
        v66 = v113[1];
        sub_2488A4C3C();
        LOBYTE(v90) = v105;
        *(&v90 + 1) = 1;
        *&v91 = *(&v106 + 1);
        BYTE8(v91) = v108;
        v92 = v86;
        v93 = v65;
        v94 = 0;
        *&v95 = *(&v107[0] + 1);
        *(&v95 + 1) = *(&v65 + 1);
        *&v96 = v66;
        *(&v96 + 1) = 0x3FF0000000000000;
        v97 = *(&v66 + 1);
        v98 = 0uLL;
        LOBYTE(v99) = 0;
        *(&v99 + 1) = v106;
        *&v100 = &unk_285B496E0;
        *(&v100 + 1) = &unk_285B49728;
        *&v101 = &unk_285B49770;
        *(&v101 + 1) = &unk_285B497B8;
        *&v102 = &unk_285B49800;
        *(&v102 + 1) = &unk_285B49848;
        *&v103 = &unk_285B49890;
        *(&v103 + 1) = *&v107[0];
        v104 = HIBYTE(v108);
        v112 = v90;
        v113[0] = v91;
        v115 = v95;
        v116 = v96;
        v113[1] = v86;
        v114 = v65;
        v119 = v99;
        v120 = v100;
        v117 = *(&v66 + 1);
        v118 = 0uLL;
        v124 = HIBYTE(v108);
        v122 = v102;
        v123 = v103;
        v121 = v101;
        v89[0] = v63;
        sub_24883CB1C(&v105, v88);
        sub_2488A4C3C();
        v67 = sub_2488A4CEC();
        MEMORY[0x28223BE20](v67);
        *(&v83 - 4) = &v112;
        *(&v83 - 3) = v62;
        *(&v83 - 2) = v89;
        goto LABEL_31;
      case 8:
        goto LABEL_25;
    }

    goto LABEL_39;
  }

  if (v112 == 4)
  {
LABEL_27:
    v55 = __swift_project_boxed_opaque_existential_0(v109, v15);
    v56 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
    swift_beginAccess();
    v57 = *v55;
    *(v25 + 232) = 1;
    sub_2488A4C3C();
    sub_24883A8D0(v25, v110, v56);
    v59 = v58;
    sub_2488A4C3C();
    LOBYTE(v90) = v105;
    *(&v90 + 1) = *(&v105 + 1);
    *&v91 = *(&v106 + 1);
    BYTE8(v91) = v108;
    v92 = v107[2];
    v93 = *&v107[1];
    v94 = 0;
    *&v95 = *(&v107[0] + 1);
    *(&v95 + 1) = v59;
    v96 = v86;
    v97 = 0u;
    v98 = 0u;
    LOBYTE(v99) = 0;
    *(&v99 + 1) = v106;
    *&v100 = &unk_285B494E8;
    *(&v100 + 1) = &unk_285B49530;
    *&v101 = &unk_285B49578;
    *(&v101 + 1) = &unk_285B495C0;
    *&v102 = &unk_285B49608;
    *(&v102 + 1) = &unk_285B49650;
    *&v103 = &unk_285B49698;
    *(&v103 + 1) = *&v107[0];
    v104 = HIBYTE(v108);
    v112 = v90;
    v113[0] = v91;
    v115 = v95;
    v116 = v86;
    v113[1] = v107[2];
    v114 = *&v107[1];
    v119 = v99;
    v120 = v100;
    v117 = 0u;
    v118 = 0u;
    v124 = HIBYTE(v108);
    v122 = v102;
    v123 = v103;
    v121 = v101;
    v89[0] = v57;
    sub_24883CB1C(&v105, v88);
    sub_2488A4C3C();
    v60 = sub_2488A4CEC();
    MEMORY[0x28223BE20](v60);
    *(&v83 - 4) = &v112;
    *(&v83 - 3) = v56;
    *(&v83 - 2) = v89;
    goto LABEL_31;
  }

LABEL_30:
  v68 = __swift_project_boxed_opaque_existential_0(v109, v15);
  v69 = *(a9 + OBJC_IVAR____TtC17DesktopServicesUIP33_8F03DB2DF5E6EACFAE242466B6F8098920FolderAnimationModel_mediaTime);
  swift_beginAccess();
  v70 = *v68;
  *(v25 + 229) = 1;
  sub_2488A4C3C();
  sub_24883A2BC(v25, v110, v69);
  v72 = v71;
  sub_2488A4C3C();
  LOBYTE(v90) = v105;
  *(&v90 + 1) = *(&v105 + 1);
  *&v91 = *(&v106 + 1);
  BYTE8(v91) = v108;
  v92 = v107[2];
  v93 = *&v107[1];
  v94 = 0;
  *&v95 = *(&v107[0] + 1);
  *(&v95 + 1) = v72;
  v96 = v86;
  v97 = 0u;
  v98 = 0u;
  LOBYTE(v99) = 0;
  *(&v99 + 1) = v106;
  *&v100 = &unk_285B49290;
  *(&v100 + 1) = &unk_285B492D8;
  *&v101 = &unk_285B49320;
  *(&v101 + 1) = &unk_285B49368;
  *&v102 = &unk_285B493B0;
  *(&v102 + 1) = &unk_285B493F8;
  *&v103 = &unk_285B49440;
  *(&v103 + 1) = *&v107[0];
  v104 = HIBYTE(v108);
  v112 = v90;
  v113[0] = v91;
  v115 = v95;
  v116 = v86;
  v113[1] = v107[2];
  v114 = *&v107[1];
  v119 = v99;
  v120 = v100;
  v117 = 0u;
  v118 = 0u;
  v124 = HIBYTE(v108);
  v122 = v102;
  v123 = v103;
  v121 = v101;
  v89[0] = v70;
  sub_24883CB1C(&v105, v88);
  sub_2488A4C3C();
  v73 = sub_2488A4CEC();
  MEMORY[0x28223BE20](v73);
  *(&v83 - 4) = &v112;
  *(&v83 - 3) = v69;
  *(&v83 - 2) = v89;
LABEL_31:
  sub_2488A4D2C();
  sub_2488A2858(&v90);
  swift_endAccess();
  v74 = *v25;
  v75 = *v25 == INFINITY;
  swift_getKeyPath();
  swift_getKeyPath();
  sub_2488A4B1C();

  if (v75 != v90)
  {
    v76 = sub_2488A58CC();
    v77 = v84;
    (*(*(v76 - 8) + 56))(v84, 1, 1, v76);
    v78 = swift_allocObject();
    swift_weakInit();
    sub_2488A58AC();

    v79 = sub_2488A589C();
    v80 = swift_allocObject();
    v81 = MEMORY[0x277D85700];
    *(v80 + 16) = v79;
    *(v80 + 24) = v81;
    *(v80 + 32) = v78;
    *(v80 + 40) = v74 == INFINITY;

    sub_24889D460(0, 0, v77, &unk_2488A82A8, v80);
  }

  if (v74 >= INFINITY && v74 <= INFINITY && v87)
  {
    v87(a9, v18);
  }

  sub_24889C7B8(&v105);
  return __swift_destroy_boxed_opaque_existential_0(v109);
}

uint64_t sub_2488A28AC()
{
  swift_weakDestroy();

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_2488A28E4()
{
  swift_unknownObjectRelease();

  return MEMORY[0x2821FE8E8](v0, 41, 7);
}

uint64_t sub_2488A2924(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248850A44;

  return sub_24889F4EC(a1, v4, v5, v6, v7);
}

uint64_t sub_2488A29E8(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_2488A2A58(uint64_t a1)
{
  v2 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_27EEB1678, &qword_2488A73A0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_2488A2AC0()
{

  return MEMORY[0x2821FE8E8](v0, 32, 7);
}

uint64_t sub_2488A2AF8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248853F2C;

  return sub_2488A08FC(a1, v4);
}

void sub_2488A2C24(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_2488A4C3C();
  if (a4 > 4)
  {
    __break(1u);
  }

  else
  {
    sub_2488A4C6C();
    if (*(a5 + 16) > a4)
    {
      RBDrawingStateAddRotation3DStyle();
      v7 = sub_2488A4C3C();
      MEMORY[0x28223BE20](v7);
      sub_2488A4D2C();
      return;
    }
  }

  __break(1u);
}

uint64_t sub_2488A2DB8(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  v17 = a3;
  v5 = sub_2488A538C();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = sub_2488A4CBC();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = v18 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  result = sub_2488A4C3C();
  v14 = *(a2 + 136);
  if ((v14 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_7;
  }

  if (v14 >= *(*(a2 + 192) + 16))
  {
LABEL_7:
    __break(1u);
    goto LABEL_8;
  }

  (*(v6 + 104))(v8, *MEMORY[0x277CE0EE0], v5);
  result = sub_2488A544C();
  if (v14 >= *(*(a2 + 184) + 16))
  {
LABEL_8:
    __break(1u);
    goto LABEL_9;
  }

  if (v14 < *(*(a2 + 176) + 16))
  {
    sub_2488A4CAC();

    sub_2488A4D0C();
    (*(v10 + 8))(v12, v9);
    sub_2488A4C3C();
    v18[1] = *a1;

    sub_2488A4C3C();
    sub_2488A4C5C();
    v15 = *(a2 + 24);
    v18[0] = v17;
    sub_2488A4C3C();
    sub_2488A4C6C();
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v16 = sub_2488A4CEC();
    MEMORY[0x28223BE20](v16);
    *(&v17 - 4) = v14;
    *(&v17 - 24) = v15;
    *(&v17 - 2) = v18;
    sub_2488A4D2C();
  }

LABEL_9:
  __break(1u);
  return result;
}

void sub_2488A30E8(double a1, uint64_t a2, uint64_t a3, unint64_t a4, uint64_t a5)
{
  sub_2488A4C3C();
  if (a4 > 4)
  {
    __break(1u);
  }

  else
  {
    sub_2488A4C6C();
    if (*(a5 + 16) > a4)
    {
      RBDrawingStateAddRotation3DStyle();
      v7 = sub_2488A4C3C();
      MEMORY[0x28223BE20](v7);
      sub_2488A4D2C();
      return;
    }
  }

  __break(1u);
}

void sub_2488A3234(uint64_t *a1, void *a2, uint64_t a3)
{
  v6 = sub_2488A538C();
  v7 = *(v6 - 8);
  MEMORY[0x28223BE20](v6);
  v9 = &v16 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = sub_2488A4CBC();
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v13 = &v16 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_2488A4C3C();
  (*(v7 + 104))(v9, *MEMORY[0x277CE0EE0], v6);
  sub_2488A544C();
  sub_2488A4CAC();

  sub_2488A4D0C();
  v14 = *(v11 + 8);
  v14(v13, v10);
  sub_2488A4C3C();
  sub_2488A4C9C();
  sub_2488A4D0C();
  v14(v13, v10);
  sub_2488A4C3C();
  sub_2488A4C6C();
  v15 = a2[17];
  if ((v15 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v15 >= *(a2[19] + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  RBDrawingStateAddRotationStyle();
  sub_2488A4C3C();
  sub_2488A4C6C();
  if (v15 < *(a2[20] + 16))
  {
    RBDrawingStateAddTranslationStyle();
    sub_2488A4C3C();
    sub_2488A4C6C();
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v17 = *a1;

    sub_2488A4C5C();
    sub_2488A30E8(0.0, &v17, a3, v15, a2[21]);

    return;
  }

LABEL_7:
  __break(1u);
}

void sub_2488A356C(uint64_t *a1, uint64_t a2, uint64_t a3)
{
  sub_2488A4C3C();
  sub_2488A4C6C();
  v6 = *(a2 + 136);
  if ((v6 & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_6;
  }

  if (v6 >= *(*(a2 + 152) + 16))
  {
LABEL_6:
    __break(1u);
    goto LABEL_7;
  }

  RBDrawingStateAddRotationStyle();
  sub_2488A4C3C();
  sub_2488A4C6C();
  if (v6 < *(*(a2 + 160) + 16))
  {
    RBDrawingStateAddTranslationStyle();
    sub_2488A4C3C();
    sub_2488A4C6C();
    RBDrawingStateAddScaleStyle();
    sub_2488A4C3C();
    v7 = *a1;

    sub_2488A4C5C();
    sub_2488A30E8(*(a2 + 104), &v7, a3, v6, *(a2 + 168));

    return;
  }

LABEL_7:
  __break(1u);
}

uint64_t sub_2488A36C8(uint64_t result, unint64_t a2, unint64_t a3, unint64_t a4, unint64_t a5, uint64_t a6)
{
  v8 = result;
  v9 = (a4 >> 59) & 1;
  if ((a5 & 0x1000000000000000) == 0)
  {
    LOBYTE(v9) = 1;
  }

  v10 = 4 << v9;
  v11 = a2 & 0xC;
  v12 = a2;
  if (v11 == v10)
  {
    v14 = a2;
    v15 = a3;
    v16 = a5;
    result = sub_2488A07B4(a2, a4, a5);
    a2 = v14;
    a3 = v15;
    a5 = v16;
    v12 = result;
    if ((v16 & 0x1000000000000000) == 0)
    {
LABEL_5:
      v13 = v12 >> 16;
      if (v11 != v10)
      {
        goto LABEL_6;
      }

      goto LABEL_14;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
    goto LABEL_5;
  }

  v17 = a4 & 0xFFFFFFFFFFFFLL;
  if ((a5 & 0x2000000000000000) != 0)
  {
    v17 = HIBYTE(a5) & 0xF;
  }

  if (v17 < v12 >> 16)
  {
    goto LABEL_95;
  }

  v18 = a2;
  v19 = a3;
  v20 = a5;
  result = sub_2488A57AC();
  a5 = v20;
  v13 = result;
  a3 = v19;
  a2 = v18;
  if (v11 == v10)
  {
LABEL_14:
    v21 = a3;
    v22 = a5;
    result = sub_2488A07B4(a2, a4, a5);
    a3 = v21;
    a5 = v22;
    a2 = result;
  }

LABEL_6:
  if ((a3 & 0xC) == v10)
  {
    v23 = a2;
    v24 = a5;
    result = sub_2488A07B4(a3, a4, a5);
    a2 = v23;
    a5 = v24;
    a3 = result;
    if ((v24 & 0x1000000000000000) == 0)
    {
      goto LABEL_8;
    }
  }

  else if ((a5 & 0x1000000000000000) == 0)
  {
LABEL_8:
    result = (a3 >> 16) - (a2 >> 16);
    goto LABEL_21;
  }

  v25 = HIBYTE(a5) & 0xF;
  if ((a5 & 0x2000000000000000) == 0)
  {
    v25 = a4 & 0xFFFFFFFFFFFFLL;
  }

  if (v25 < a2 >> 16)
  {
    goto LABEL_91;
  }

  if (v25 < a3 >> 16)
  {
LABEL_92:
    __break(1u);
    goto LABEL_93;
  }

  result = sub_2488A57AC();
LABEL_21:
  v26 = v13 + result;
  if (__OFADD__(v13, result))
  {
    __break(1u);
    goto LABEL_90;
  }

  if (v26 < v13)
  {
LABEL_90:
    __break(1u);
LABEL_91:
    __break(1u);
    goto LABEL_92;
  }

  v27 = (v13 + v8);
  if (!v8)
  {
    v27 = 0;
  }

  v28 = *v27;
  if (v28 == 43)
  {
    if (result >= 1)
    {
      if (result != 1)
      {
        v39 = a6 + 48;
        v40 = a6 + 55;
        v41 = a6 + 87;
        if (a6 > 10)
        {
          v39 = 58;
        }

        else
        {
          v41 = 97;
          v40 = 65;
        }

        if (v27)
        {
          v32 = 0;
          v42 = v27 + 1;
          v43 = result - 1;
          do
          {
            v44 = *v42;
            if (v44 < 0x30 || v44 >= v39)
            {
              if (v44 < 0x41 || v44 >= v40)
              {
                v37 = 0;
                if (v44 < 0x61 || v44 >= v41)
                {
                  return v37;
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

            v46 = v32 * a6;
            if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
            {
              return 0;
            }

            v32 = v46 + (v44 + v45);
            if (__OFADD__(v46, (v44 + v45)))
            {
              return 0;
            }

            ++v42;
            --v43;
          }

          while (v43);
          return v32;
        }

        return 0;
      }

      return 0;
    }

    goto LABEL_94;
  }

  if (v28 != 45)
  {
    if (v26 != v13)
    {
      v47 = a6 + 48;
      v48 = a6 + 55;
      v49 = a6 + 87;
      if (a6 > 10)
      {
        v47 = 58;
      }

      else
      {
        v49 = 97;
        v48 = 65;
      }

      if (v27)
      {
        v32 = 0;
        while (1)
        {
          v50 = *v27;
          if (v50 < 0x30 || v50 >= v47)
          {
            if (v50 < 0x41 || v50 >= v48)
            {
              v37 = 0;
              if (v50 < 0x61 || v50 >= v49)
              {
                return v37;
              }

              v51 = -87;
            }

            else
            {
              v51 = -55;
            }
          }

          else
          {
            v51 = -48;
          }

          v52 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v52 + (v50 + v51);
          if (__OFADD__(v52, (v50 + v51)))
          {
            return 0;
          }

          ++v27;
          if (!--result)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

  if (result >= 1)
  {
    if (result != 1)
    {
      v29 = a6 + 48;
      v30 = a6 + 55;
      v31 = a6 + 87;
      if (a6 > 10)
      {
        v29 = 58;
      }

      else
      {
        v31 = 97;
        v30 = 65;
      }

      if (v27)
      {
        v32 = 0;
        v33 = v27 + 1;
        v34 = result - 1;
        while (1)
        {
          v35 = *v33;
          if (v35 < 0x30 || v35 >= v29)
          {
            if (v35 < 0x41 || v35 >= v30)
            {
              v37 = 0;
              if (v35 < 0x61 || v35 >= v31)
              {
                return v37;
              }

              v36 = -87;
            }

            else
            {
              v36 = -55;
            }
          }

          else
          {
            v36 = -48;
          }

          v38 = v32 * a6;
          if ((v32 * a6) >> 64 != (v32 * a6) >> 63)
          {
            return 0;
          }

          v32 = v38 - (v35 + v36);
          if (__OFSUB__(v38, (v35 + v36)))
          {
            return 0;
          }

          ++v33;
          if (!--v34)
          {
            return v32;
          }
        }
      }

      return 0;
    }

    return 0;
  }

LABEL_93:
  __break(1u);
LABEL_94:
  __break(1u);
LABEL_95:
  __break(1u);
  return result;
}

void sub_2488A3B34(uint64_t a1, unint64_t a2)
{
  v29[0] = 46;
  v29[1] = 0xE100000000000000;
  v28[2] = v29;

  v5 = sub_24889F9F0(0x7FFFFFFFFFFFFFFFLL, 1, sub_2488A43C4, v28, a1, a2, v4);
  if (v5[2] != 3)
  {
    goto LABEL_7;
  }

  v6 = v5[8];
  v7 = v5[9];
  if (!((v7 ^ v6) >> 14))
  {
    goto LABEL_7;
  }

  v9 = v5[10];
  v8 = v5[11];
  v10 = v5;
  v11 = sub_2488A0830(v5[8], v7, v9, v8, 10);
  if ((v12 & 0x100) != 0)
  {

    v13 = sub_24889FDB0(v6, v7, v9, v8, 10);
    v15 = v14;

    if (v15)
    {
      goto LABEL_7;
    }
  }

  else
  {
    if (v12)
    {
      goto LABEL_7;
    }

    v13 = v11;
  }

  if (v10[2] >= 3uLL)
  {
    v18 = v10[12];
    v19 = v10[13];
    v21 = v10[14];
    v20 = v10[15];

    if ((v19 ^ v18) >> 14)
    {
      v22 = sub_2488A0830(v18, v19, v21, v20, 10);
      if ((v23 & 0x100) != 0)
      {
        v24 = sub_24889FDB0(v18, v19, v21, v20, 10);
        v27 = v26;

        if ((v27 & 1) == 0)
        {
LABEL_16:
          if ((v24 - 1) > 2)
          {
            v17 = 2;
          }

          else
          {
            v17 = qword_2488A8368[(v24 - 1)];
          }

          v16 = v13;
          goto LABEL_9;
        }
      }

      else
      {
        v24 = v22;
        v25 = v23;

        if ((v25 & 1) == 0)
        {
          goto LABEL_16;
        }
      }

LABEL_8:
      v16 = 1024.0;
      v17 = 2;
LABEL_9:
      sub_24889ECEC(v17, v16);
      return;
    }

LABEL_7:

    goto LABEL_8;
  }

  __break(1u);
}

uint64_t sub_2488A3D1C(uint64_t result, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x362E7265646C6F66;
      v3 = 0xEB00000000312E34;
    }

    else
    {
      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x332E7265646C6F66;
      v3 = 0xEB00000000312E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x322E7265646C6F66;
        v3 = 0xEC000000312E3635;
        break;
      case 3:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x352E7265646C6F66;
        v3 = 0xEC000000312E3231;
        break;
      case 4:
        sub_2488A4C3C();
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000312E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v2, v3);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A3F54(uint64_t result, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x362E7265646C6F66;
      v3 = 0xEB00000000322E34;
    }

    else
    {
      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x332E7265646C6F66;
      v3 = 0xEB00000000322E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x322E7265646C6F66;
        v3 = 0xEC000000322E3635;
        break;
      case 3:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x352E7265646C6F66;
        v3 = 0xEC000000322E3231;
        break;
      case 4:
        sub_2488A4C3C();
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000322E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v2, v3);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A418C(uint64_t result, uint64_t a2)
{
  if (a2 <= 1)
  {
    if (a2)
    {
      if (a2 != 1)
      {
        return result;
      }

      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x362E7265646C6F66;
      v3 = 0xEB00000000332E34;
    }

    else
    {
      sub_2488A4C3C();

      sub_2488A4C5C();
      v2 = 0x332E7265646C6F66;
      v3 = 0xEB00000000332E32;
    }
  }

  else
  {
    switch(a2)
    {
      case 2:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x322E7265646C6F66;
        v3 = 0xEC000000332E3635;
        break;
      case 3:
        sub_2488A4C3C();

        sub_2488A4C5C();
        v2 = 0x352E7265646C6F66;
        v3 = 0xEC000000332E3231;
        break;
      case 4:
        sub_2488A4C3C();
        sub_2488A3B34(0x312E7265646C6F66, 0xED0000332E343230);
        sub_2488A567C();
        sub_2488A4C7C();

      default:
        return result;
    }
  }

  sub_2488A3B34(v2, v3);
  sub_2488A567C();
  sub_2488A4C7C();
}

uint64_t sub_2488A43C4(uint64_t *a1, __n128 a2)
{
  v3 = *(v2 + 16);
  if (*a1 == *v3 && a1[1] == v3[1])
  {
    return 1;
  }

  else
  {
    return sub_2488A5A8C() & 1;
  }
}

unint64_t sub_2488A441C(uint64_t a1, uint64_t a2, uint64_t a3)
{
  result = qword_27EEB1C18;
  if (!qword_27EEB1C18)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EEB1C18);
  }

  return result;
}

uint64_t sub_2488A45A4()
{
  swift_unknownObjectRelease();

  sub_24889F1D8(v0[5], v0[6]);
  if (v0[8])
  {
  }

  return MEMORY[0x2821FE8E8](v0, 112, 7);
}

uint64_t sub_2488A4610(uint64_t a1)
{
  v4 = *(v1 + 2);
  v5 = *(v1 + 3);
  v6 = *(v1 + 4);
  v7 = v1[13];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_248853F2C;

  return sub_24889E994(v7, a1, v4, v5, v6, (v1 + 5));
}

uint64_t sub_2488A46D8(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248853F2C;

  return sub_24889F800(a1, v4);
}

uint64_t sub_2488A4790(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248853F2C;

  return sub_2488A08FC(a1, v4);
}

uint64_t sub_2488A4848(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = swift_task_alloc();
  *(v2 + 16) = v5;
  *v5 = v2;
  v5[1] = sub_248850A44;

  return sub_2488A08FC(a1, v4);
}