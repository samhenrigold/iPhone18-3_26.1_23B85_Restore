uint64_t sub_246081984(uint64_t a1)
{
  v1 = *(a1 + 8);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

uint64_t sub_24608199C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_246081A04(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_246081A6C(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_246081ACC(uint64_t a1)
{
  v1 = *(a1 + 680);
  if (v1 >= 0xFFFFFFFF)
  {
    LODWORD(v1) = -1;
  }

  return (v1 + 1);
}

unint64_t sub_246081AE4()
{
  result = qword_27EE3AD80;
  if (!qword_27EE3AD80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AD80);
  }

  return result;
}

double sub_246081C18(uint64_t a1, uint64_t a2, uint64_t a3)
{
  if (a1)
  {
  }

  return result;
}

double sub_246081C68(uint64_t a1)
{
  result = 0.0;
  *(a1 + 160) = 0u;
  *(a1 + 176) = 0u;
  *(a1 + 128) = 0u;
  *(a1 + 144) = 0u;
  *(a1 + 96) = 0u;
  *(a1 + 112) = 0u;
  *(a1 + 64) = 0u;
  *(a1 + 80) = 0u;
  *(a1 + 32) = 0u;
  *(a1 + 48) = 0u;
  *a1 = 0u;
  *(a1 + 16) = 0u;
  *(a1 + 192) = 1;
  return result;
}

uint64_t sub_246081C90(uint64_t a1)
{
  if (*(a1 + 192))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246081CB4()
{
  v1 = sub_246091834();
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = *(v2 + 64);

  if (*(v0 + 64))
  {
  }

  v5 = (v3 + 433) & ~v3;

  (*(v2 + 8))(v0 + v5, v1);

  return MEMORY[0x2821FE8E8](v0, v5 + v4, v3 | 0xF);
}

void sub_246081DF4()
{
  sub_246091834();
  (*((*MEMORY[0x277D85000] & **(v0 + 16)) + 0x410))(&v1);
  if (v1 == 15)
  {
    sub_246077B30(0xF);
    sub_246077B30(0xF);
    sub_24604A384(v0 + 32);
  }

  else
  {
    sub_246077B30(v1);

    sub_246077B30(0xF);
  }
}

uint64_t sub_246081EFC()
{
  if (*(v0 + 64))
  {
  }

  return MEMORY[0x2821FE8E8](v0, 433, 15);
}

uint64_t sub_246082054()
{

  return MEMORY[0x2821FE8E8](v0, 40, 7);
}

void sub_24608209C()
{
  v1 = v0[3];
  v2 = v0[4];
  v9 = v0[2];
  type metadata accessor for ARError(0);
  sub_246077C40(&qword_27EE3ADA8, type metadata accessor for ARError, &unk_24609B188);
  sub_2460915A4();
  if ((v8 - 101) < 2 || v8 == 200 || v8 == 400)
  {
    swift_getKeyPath();
    swift_getKeyPath();
    sub_246091984();

    v3 = v9;
    swift_getKeyPath();
    swift_getKeyPath();
    v1;
    sub_246091994();
    sub_246036D70(&v9);
    v4 = v3;
  }

  else
  {
    swift_getKeyPath();
    swift_getKeyPath();
    v5 = v2;
    sub_246091984();

    v6 = v7;
    swift_getKeyPath();
    swift_getKeyPath();
    v1;
    sub_246091994();
    sub_246036D70(&v7);
    v4 = v6;
  }

  sub_246077B30(v4);
}

uint64_t sub_24608231C()
{
  MEMORY[0x24C198A90](v0 + 16);

  return MEMORY[0x2821FE8E8](v0, 24, 7);
}

uint64_t sub_24608235C()
{

  return MEMORY[0x2821FE8E8](v0, 240, 15);
}

uint64_t sub_2460823B0()
{

  return MEMORY[0x2821FE8E8](v0, 48, 7);
}

void sub_24608242C(_BYTE *a1@<X8>)
{
  if (*(v1 + 33))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  sub_246050348(*(v1 + 16), *(v1 + 24), v2 | *(v1 + 32), *(v1 + 40), a1, *(v1 + 48), *(v1 + 64), *(v1 + 80), *(v1 + 96));
}

char *sub_24608247C@<X0>(_BYTE *a1@<X8>)
{
  if (*(v1 + 25))
  {
    v2 = 256;
  }

  else
  {
    v2 = 0;
  }

  return sub_24604D794(*(v1 + 16), v2 | *(v1 + 24), *(v1 + 32), *(v1 + 40), a1);
}

void sub_2460824C4(id a1)
{
  if (a1 != 7)
  {
    sub_246077B44(a1);
  }
}

__n128 sub_2460824D4(__n128 *a1, __n128 *a2)
{
  result = *a2;
  *a1 = *a2;
  return result;
}

uint64_t sub_2460824E0(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 8);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246082534(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 8) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_2460825C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 16))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 12);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_246082618(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *result = a2 - 255;
    *(result + 8) = 0;
    if (a3 >= 0xFF)
    {
      *(result + 16) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 16) = 0;
    }

    if (a2)
    {
      *(result + 12) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_246082680(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 80))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 16);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_2460826D4(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 80) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 80) = 0;
    }

    if (a2)
    {
      *(result + 16) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_2460829A0()
{
  result = qword_27EE3AF58;
  if (!qword_27EE3AF58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3AF58);
  }

  return result;
}

void sub_246082B24(uint64_t a1, unint64_t *a2, uint64_t a3, uint64_t (*a4)(void, uint64_t))
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

Swift::String __swiftcall OCGitHash()()
{
  v0 = 0;
  v1 = 0xE000000000000000;
  result._object = v1;
  result._countAndFlagsBits = v0;
  return result;
}

uint64_t sub_246082E68()
{
  *(v0 + 24) = 0;
  *(v0 + 32) = 0;
  *(v0 + 40) = 0;
  *(v0 + 44) = 1;
  *(v0 + 48) = 0;
  result = OCImageScalerCreate();
  if (result)
  {

    type metadata accessor for ImageScaler();
    swift_deallocPartialClassInstance();
    return 0;
  }

  else
  {
    __break(1u);
  }

  return result;
}

uint64_t sub_246082F20()
{
  result = OCImageScalerDestroy();
  if (result)
  {
    __break(1u);
  }

  else
  {

    return swift_deallocClassInstance();
  }

  return result;
}

CVPixelBufferRef sub_246082FB0(__CVBuffer *a1, uint64_t a2)
{
  v13[1] = *MEMORY[0x277D85DE8];
  v13[0] = 0;
  v3 = *(v2 + 48);
  if (v3)
  {
    v5 = *MEMORY[0x277CBECE8];
    v6 = v3;
    if (CVPixelBufferPoolCreatePixelBuffer(v5, v6, v13))
    {

      v7 = 0;
      v8 = v13[0];
    }

    else
    {
      CVPixelBufferGetWidth(a1);
      CVPixelBufferGetHeight(a1);
      v9 = v13[0];
      v10 = OCImageScalerResizeImage();

      v8 = v13[0];
      if (v10)
      {
        v7 = 0;
      }

      else
      {
        v11 = v13[0];
        v7 = v8;
      }
    }
  }

  else
  {
    v8 = 0;
    v7 = 0;
  }

  return v7;
}

CVPixelBufferRef sub_246083114(__CVBuffer *a1, uint64_t a2, size_t width, size_t height, OSType pixelFormatType)
{
  v11[1] = *MEMORY[0x277D85DE8];
  v11[0] = 0;
  if (CVPixelBufferCreate(*MEMORY[0x277CBECE8], width, height, pixelFormatType, 0, v11))
  {
    v6 = 0;
    v7 = v11[0];
  }

  else
  {
    CVPixelBufferGetWidth(a1);
    CVPixelBufferGetHeight(a1);
    v8 = OCImageScalerResizeImage();
    v7 = v11[0];
    if (v8)
    {
      v6 = 0;
    }

    else
    {
      v9 = v11[0];
      v6 = v7;
    }
  }

  return v6;
}

__n128 initializeBufferWithCopyOfBuffer for ImageScaler.Config(__n128 *a1, __n128 *a2)
{
  result = *a2;
  a1[1].n128_u32[0] = a2[1].n128_u32[0];
  *a1 = result;
  return result;
}

uint64_t sub_2460832AC(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 48) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_24608332C(uint64_t a1)
{
  swift_beginAccess();
  *(v1 + 56) = a1;
  return swift_unknownObjectRelease();
}

uint64_t sub_246083374(void *a1, uint64_t a2, uint64_t a3)
{
  v4 = a2;
  swift_allocObject();
  return sub_2460833C8(a1, v4, a3);
}

uint64_t sub_2460833C8(id a1, char a2, uint64_t a3)
{
  v4 = v3;
  v8 = sub_2460918F4();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v82 = &v71 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v11);
  v81 = &v71 - v12;
  MEMORY[0x28223BE20](v13);
  MEMORY[0x28223BE20](v14);
  MEMORY[0x28223BE20](v15);
  v19 = &v71 - v18;
  *(v4 + 48) = 0;
  *(v4 + 40) = 0;
  *(v4 + 56) = 0;
  *(v4 + 32) = 512;
  *(v4 + 64) = xmmword_24609B410;
  *(v4 + 16) = a1;
  *(v4 + 24) = a2;
  if ((a2 & 1) == 0)
  {
    swift_unknownObjectRetain();
LABEL_19:
    v64 = sub_245FA32CC();
    v65 = v82;
    (*(v9 + 16))(v82, v64, v8);
    v66 = sub_2460918D4();
    v67 = sub_246091FC4();
    if (os_log_type_enabled(v66, v67))
    {
      v68 = v8;
      v69 = swift_slowAlloc();
      v70 = swift_slowAlloc();
      v85[0] = v70;
      *v69 = 136380675;
      *(v69 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v85);
      _os_log_impl(&dword_245F8A000, v66, v67, "MeshBuffer.%{private}s: Initialized MeshBuffer.", v69, 0xCu);
      sub_245F8E6F4(v70);
      MEMORY[0x24C1989D0](v70, -1, -1);
      MEMORY[0x24C1989D0](v69, -1, -1);
      swift_unknownObjectRelease();

      (*(v9 + 8))(v65, v68);
    }

    else
    {

      swift_unknownObjectRelease();
      (*(v9 + 8))(v65, v8);
    }

    return v4;
  }

  v73 = (v4 + 56);
  v74 = v17;
  v72 = v16;
  v20 = objc_allocWithZone(MEMORY[0x277CD6E48]);
  v80 = a1;
  swift_unknownObjectRetain();
  v21 = [v20 init];
  [v21 setResourceOptions_];
  result = getpagesize();
  v23 = ceilf(a3 / result) * result;
  if (COERCE_INT(fabs(v23)) > 2139095039)
  {
    __break(1u);
    goto LABEL_29;
  }

  if (v23 <= -9.2234e18)
  {
LABEL_29:
    __break(1u);
    goto LABEL_30;
  }

  if (v23 < 9.2234e18)
  {
    *(v4 + 40) = v23;
    v24 = sub_245FA32CC();
    v25 = *(v9 + 16);
    v75 = v24;
    v76 = v25;
    v77 = v9 + 16;
    (v25)(v19);

    v26 = sub_2460918D4();
    v27 = sub_246091FC4();
    v28 = os_log_type_enabled(v26, v27);
    v78 = v4;
    v79 = v9;
    if (v28)
    {
      v29 = swift_slowAlloc();
      v71 = v8;
      v30 = v29;
      v31 = swift_slowAlloc();
      v84[0] = v31;
      *v30 = 136380931;
      *(v30 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v84);
      *(v30 + 12) = 2050;
      *(v30 + 14) = *(v4 + 40);

      _os_log_impl(&dword_245F8A000, v26, v27, "MeshBuffer.%{private}s: Computed page-aligned heap size = %{public}ld bytes.", v30, 0x16u);
      sub_245F8E6F4(v31);
      MEMORY[0x24C1989D0](v31, -1, -1);
      v32 = v30;
      v8 = v71;
      MEMORY[0x24C1989D0](v32, -1, -1);
    }

    else
    {
    }

    v33 = *(v9 + 8);
    v33(v19, v8);
    v34 = v21;
    [v21 setSize_];
    v35 = v80;
    v36 = [v80 newHeapWithDescriptor_];
    if (v36)
    {
      v37 = v36;
      swift_beginAccess();
      *(v4 + 48) = v37;
      swift_unknownObjectRetain();
      swift_unknownObjectRelease();
      v38 = [v35 newHeapWithDescriptor_];
      if (v38)
      {
        v39 = v38;
        v40 = v73;
        swift_beginAccess();
        *v40 = v39;
        swift_unknownObjectRetain();
        swift_unknownObjectRelease();
        v41 = v74;
        v76(v74, v75, v8);
        v42 = sub_2460918D4();
        v43 = sub_246091FC4();
        if (os_log_type_enabled(v42, v43))
        {
          v44 = v8;
          v45 = swift_slowAlloc();
          v46 = swift_slowAlloc();
          v85[0] = v46;
          *v45 = 136380675;
          *(v45 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v85);
          _os_log_impl(&dword_245F8A000, v42, v43, "MeshBuffer.%{private}s: Created primary and fallback heaps.", v45, 0xCu);
          sub_245F8E6F4(v46);
          MEMORY[0x24C1989D0](v46, -1, -1);
          v47 = v45;
          v8 = v44;
          MEMORY[0x24C1989D0](v47, -1, -1);
          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        else
        {

          swift_unknownObjectRelease();
          swift_unknownObjectRelease();
        }

        v9 = v79;
        v33(v41, v8);
        v4 = v78;
        goto LABEL_19;
      }

      v57 = v72;
      v76(v72, v75, v8);
      v58 = v78;

      v59 = sub_2460918D4();
      v60 = sub_246091FB4();
      if (os_log_type_enabled(v59, v60))
      {
        v61 = swift_slowAlloc();
        v71 = v8;
        v62 = v61;
        v63 = swift_slowAlloc();
        v83[0] = v63;
        *v62 = 136380931;
        *(v62 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v83);
        *(v62 + 12) = 2050;
        *(v62 + 14) = *(v58 + 40);

        _os_log_impl(&dword_245F8A000, v59, v60, "MeshBuffer.%{private}s: Failed to create fallback heap of size %{public}ld bytes!", v62, 0x16u);
        sub_245F8E6F4(v63);
        MEMORY[0x24C1989D0](v63, -1, -1);
        MEMORY[0x24C1989D0](v62, -1, -1);
        swift_unknownObjectRelease();

        swift_unknownObjectRelease();

        v55 = v57;
        v56 = v71;
        goto LABEL_26;
      }

      swift_unknownObjectRelease();
      swift_unknownObjectRelease();

      v55 = v57;
    }

    else
    {
      v48 = v81;
      v76(v81, v75, v8);
      v49 = v78;

      v50 = sub_2460918D4();
      v51 = sub_246091FB4();
      if (os_log_type_enabled(v50, v51))
      {
        v52 = v8;
        v53 = swift_slowAlloc();
        v54 = swift_slowAlloc();
        v84[0] = v54;
        *v53 = 136380931;
        *(v53 + 4) = sub_245F8D3C0(0xD00000000000002FLL, 0x80000002460A4B60, v84);
        *(v53 + 12) = 2050;
        *(v53 + 14) = *(v49 + 40);

        _os_log_impl(&dword_245F8A000, v50, v51, "MeshBuffer.%{private}s: Failed to create heap of size\n%{public}ld bytes!", v53, 0x16u);
        sub_245F8E6F4(v54);
        MEMORY[0x24C1989D0](v54, -1, -1);
        MEMORY[0x24C1989D0](v53, -1, -1);
        swift_unknownObjectRelease();

        v55 = v48;
        v56 = v52;
LABEL_26:
        v33(v55, v56);
        return 0;
      }

      swift_unknownObjectRelease();

      v55 = v48;
    }

    v56 = v8;
    goto LABEL_26;
  }

LABEL_30:
  __break(1u);
  return result;
}

id sub_246083D60(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v8 = MEMORY[0x28223BE20](v7);
  v10 = &v26 - v9;
  if (*(v1 + 24) == 1)
  {
    v11 = *(*v1 + 192);
    result = v11(v8);
    if (result)
    {
      v13 = swift_unknownObjectRelease();
      result = (*(*v1 + 216))(v13);
      if (result)
      {
        v14 = swift_unknownObjectRelease();
        result = (v11)(v14);
        if (result)
        {
          v15 = [result newBufferWithLength:a1 options:0];
          swift_unknownObjectRelease();
          if (v15)
          {
            return v15;
          }

          v21 = sub_245FA32CC();
          (*(v4 + 16))(v10, v21, v3);
          v22 = sub_2460918D4();
          v23 = sub_246091FB4();
          if (os_log_type_enabled(v22, v23))
          {
            v24 = swift_slowAlloc();
            v25 = swift_slowAlloc();
            v27 = v25;
            *v24 = 136380675;
            *(v24 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A4B90, &v27);
            _os_log_impl(&dword_245F8A000, v22, v23, "MeshBuffer.%{private}s: Failed to allocate buffer on heap!", v24, 0xCu);
            sub_245F8E6F4(v25);
            MEMORY[0x24C1989D0](v25, -1, -1);
            MEMORY[0x24C1989D0](v24, -1, -1);
          }

          (*(v4 + 8))(v10, v3);
          return 0;
        }

LABEL_18:
        __break(1u);
        return result;
      }
    }

    else
    {
      __break(1u);
    }

    __break(1u);
    goto LABEL_18;
  }

  result = [*(v1 + 16) newBufferWithLength:a1 options:{512, v8.n128_f64[0]}];
  if (result)
  {
    return result;
  }

  v16 = sub_245FA32CC();
  (*(v4 + 16))(v6, v16, v3);
  v17 = sub_2460918D4();
  v18 = sub_246091FB4();
  if (os_log_type_enabled(v17, v18))
  {
    v19 = swift_slowAlloc();
    v20 = swift_slowAlloc();
    v27 = v20;
    *v19 = 136380675;
    *(v19 + 4) = sub_245F8D3C0(0xD000000000000013, 0x80000002460A4B90, &v27);
    _os_log_impl(&dword_245F8A000, v17, v18, "MeshBuffer.%{private}s: Failed to allocate buffer on device!", v19, 0xCu);
    sub_245F8E6F4(v20);
    MEMORY[0x24C1989D0](v20, -1, -1);
    MEMORY[0x24C1989D0](v19, -1, -1);
  }

  (*(v4 + 8))(v6, v3);
  return 0;
}

id sub_246084104(const void *a1, size_t a2)
{
  v5 = sub_2460918F4();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v29 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = MEMORY[0x28223BE20](v9);
  v12 = &v29 - v11;
  if (*(v2 + 24) == 1)
  {
    v13 = *(*v2 + 192);
    result = v13(v10);
    if (!result)
    {
LABEL_18:
      __break(1u);
      goto LABEL_19;
    }

    v15 = swift_unknownObjectRelease();
    result = (*(*v2 + 216))(v15);
    if (!result)
    {
LABEL_19:
      __break(1u);
      goto LABEL_20;
    }

    v16 = swift_unknownObjectRelease();
    result = (v13)(v16);
    if (!result)
    {
LABEL_20:
      __break(1u);
      return result;
    }

    v17 = [result newBufferWithLength:a2 options:0];
    swift_unknownObjectRelease();
    if (v17)
    {
      v18 = [swift_unknownObjectRetain() contents];
      result = v17;
      if ((a2 & 0x8000000000000000) == 0)
      {
        memmove(v18, a1, a2);
        return v17;
      }

      __break(1u);
      goto LABEL_18;
    }

    v24 = sub_245FA32CC();
    (*(v6 + 16))(v12, v24, v5);
    v25 = sub_2460918D4();
    v26 = sub_246091FB4();
    if (os_log_type_enabled(v25, v26))
    {
      v27 = swift_slowAlloc();
      v28 = swift_slowAlloc();
      v30 = v28;
      *v27 = 136380675;
      *(v27 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4BB0, &v30);
      _os_log_impl(&dword_245F8A000, v25, v26, "MeshBuffer.%{private}s: Failed to allocate buffer on heap!", v27, 0xCu);
      sub_245F8E6F4(v28);
      MEMORY[0x24C1989D0](v28, -1, -1);
      MEMORY[0x24C1989D0](v27, -1, -1);
    }

    (*(v6 + 8))(v12, v5);
  }

  else
  {
    result = [*(v2 + 16) newBufferWithBytes:a1 length:a2 options:{512, v10.n128_f64[0]}];
    if (result)
    {
      return result;
    }

    v19 = sub_245FA32CC();
    (*(v6 + 16))(v8, v19, v5);
    v20 = sub_2460918D4();
    v21 = sub_246091FB4();
    if (os_log_type_enabled(v20, v21))
    {
      v22 = swift_slowAlloc();
      v23 = swift_slowAlloc();
      v30 = v23;
      *v22 = 136380675;
      *(v22 + 4) = sub_245F8D3C0(0xD000000000000019, 0x80000002460A4BB0, &v30);
      _os_log_impl(&dword_245F8A000, v20, v21, "MeshBuffer.%{private}s: Failed to allocate buffer on device!", v22, 0xCu);
      sub_245F8E6F4(v23);
      MEMORY[0x24C1989D0](v23, -1, -1);
      MEMORY[0x24C1989D0](v22, -1, -1);
    }

    (*(v6 + 8))(v8, v5);
  }

  return 0;
}

id sub_2460844EC(void *a1)
{
  v3 = (*(*v1 + 256))([a1 bytes], objc_msgSend(a1, sel_length));
  if (!v3)
  {
    return 0;
  }

  v4 = v3;
  v5 = [a1 length] / 12;
  v6 = [objc_allocWithZone(MEMORY[0x277CE52B8]) initWithBuffer:v4 count:v5 format:30 componentsPerVector:3 offset:0 stride:12];
  swift_unknownObjectRelease();
  return v6;
}

uint64_t sub_2460845E8(uint64_t result)
{
  if (0xAAAAAAAAAAAAAAABLL * result + 0x2AAAAAAAAAAAAAAALL > 0x5555555555555554)
  {
    __break(1u);
  }

  else
  {
    v2 = result;
    v3 = (*(*v1 + 248))();
    if (!v3)
    {
      return 0;
    }

    v4 = [objc_allocWithZone(MEMORY[0x277CE52B8]) initWithBuffer:v3 count:v2 / 12 format:30 componentsPerVector:3 offset:0 stride:12];
    swift_unknownObjectRelease();
    return v4;
  }

  return result;
}

void sub_2460846C0(int64_t a1)
{
  v2 = v1;
  v4 = sub_2460918F4();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = v35 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = v35 - v10;
  if (v1[24] != 1)
  {
    return;
  }

  v12 = *(*v1 + 192);
  v13 = v12(v9);
  if (!v13)
  {
    goto LABEL_15;
  }

  v14 = [v13 currentAllocatedSize];
  v15 = swift_unknownObjectRelease();
  v16 = (v12)(v15);
  if (!v16)
  {
LABEL_16:
    __break(1u);
LABEL_17:
    __break(1u);
    goto LABEL_18;
  }

  v17 = [v16 usedSize];
  swift_unknownObjectRelease();
  v18 = v14 - v17;
  if (__OFSUB__(v14, v17))
  {
    __break(1u);
LABEL_15:
    __break(1u);
    goto LABEL_16;
  }

  if (v18 >= a1)
  {
    return;
  }

  v19 = sub_245FA32CC();
  v20 = v5 + 16;
  v37 = *(v5 + 16);
  v38 = v19;
  v37(v11);
  v21 = sub_2460918D4();
  v22 = sub_246091FA4();
  if (os_log_type_enabled(v21, v22))
  {
    v23 = swift_slowAlloc();
    v36 = v5;
    v24 = v23;
    v25 = swift_slowAlloc();
    v35[1] = v20;
    v26 = v25;
    v40[0] = v25;
    *v24 = 136381187;
    *(v24 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A4BD0, v40);
    *(v24 + 12) = 2050;
    *(v24 + 14) = a1;
    *(v24 + 22) = 2049;
    *(v24 + 24) = v18;
    _os_log_impl(&dword_245F8A000, v21, v22, "MeshBuffer.%{private}s: Cannot allocate %{public}ld bytes on the heap since the heap only has %{private}ld bytes available!", v24, 0x20u);
    sub_245F8E6F4(v26);
    MEMORY[0x24C1989D0](v26, -1, -1);
    v27 = v24;
    v5 = v36;
    MEMORY[0x24C1989D0](v27, -1, -1);
  }

  v28 = *(v5 + 8);
  v28(v11, v4);
  swift_beginAccess();
  if (!*(v2 + 6))
  {
    goto LABEL_17;
  }

  swift_beginAccess();
  v29 = *(v2 + 7);
  if (!v29)
  {
LABEL_18:
    __break(1u);
    return;
  }

  v30 = *(v2 + 6);
  *(v2 + 6) = v29;
  *(v2 + 7) = v30;
  (v37)(v7, v38, v4);
  v31 = sub_2460918D4();
  v32 = sub_246091FC4();
  if (os_log_type_enabled(v31, v32))
  {
    v33 = swift_slowAlloc();
    v34 = swift_slowAlloc();
    v39 = v34;
    *v33 = 136380675;
    *(v33 + 4) = sub_245F8D3C0(0xD000000000000012, 0x80000002460A4BD0, &v39);
    _os_log_impl(&dword_245F8A000, v31, v32, "MeshBuffer.%{private}s: Swapped heaps!", v33, 0xCu);
    sub_245F8E6F4(v34);
    MEMORY[0x24C1989D0](v34, -1, -1);
    MEMORY[0x24C1989D0](v33, -1, -1);
  }

  v28(v7, v4);
}

uint64_t sub_246084AC4()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v25 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = MEMORY[0x28223BE20](v5);
  v8 = &v25 - v7;
  v9 = (*(*v0 + 192))(v6);
  if (v9)
  {
    v10 = v9;
    v11 = [v9 currentAllocatedSize];
    result = [v10 usedSize];
    v13 = 100 * result;
    if ((result * 100) >> 64 == (100 * result) >> 63)
    {
      v14 = sub_245FA32CC();
      (*(v2 + 16))(v8, v14, v1);
      swift_unknownObjectRetain();
      v15 = sub_2460918D4();
      v16 = sub_246091FC4();
      if (os_log_type_enabled(v15, v16))
      {
        v17 = v13 / v11;
        v18 = swift_slowAlloc();
        v19 = swift_slowAlloc();
        v26 = v19;
        *v18 = 136381699;
        *(v18 + 4) = sub_245F8D3C0(0x5370616548676F6CLL, 0xEE00292873746174, &v26);
        *(v18 + 12) = 2049;
        *(v18 + 14) = v17;
        *(v18 + 22) = 2049;
        *(v18 + 24) = [v10 size];
        *(v18 + 32) = 2049;
        *(v18 + 34) = [v10 currentAllocatedSize];
        *(v18 + 42) = 2049;
        *(v18 + 44) = [v10 usedSize];
        swift_unknownObjectRelease();
        _os_log_impl(&dword_245F8A000, v15, v16, "MeshBuffer.%{private}s: Heap stats: used = %{private}f%%, size = %{private}ld bytes, allocated size = %{private}ld bytes, used size = %{private}ld bytes", v18, 0x34u);
        sub_245F8E6F4(v19);
        MEMORY[0x24C1989D0](v19, -1, -1);
        MEMORY[0x24C1989D0](v18, -1, -1);
        swift_unknownObjectRelease();
      }

      else
      {

        swift_unknownObjectRelease_n();
      }

      return (*(v2 + 8))(v8, v1);
    }

    else
    {
      __break(1u);
    }
  }

  else
  {
    v20 = sub_245FA32CC();
    (*(v2 + 16))(v4, v20, v1);
    v21 = sub_2460918D4();
    v22 = sub_246091FB4();
    if (os_log_type_enabled(v21, v22))
    {
      v23 = swift_slowAlloc();
      v24 = swift_slowAlloc();
      v26 = v24;
      *v23 = 136380675;
      *(v23 + 4) = sub_245F8D3C0(0x5370616548676F6CLL, 0xEE00292873746174, &v26);
      _os_log_impl(&dword_245F8A000, v21, v22, "MeshBuffer.%{private}s: Not using heap!", v23, 0xCu);
      sub_245F8E6F4(v24);
      MEMORY[0x24C1989D0](v24, -1, -1);
      MEMORY[0x24C1989D0](v23, -1, -1);
    }

    return (*(v2 + 8))(v4, v1);
  }

  return result;
}

uint64_t sub_246084EA4()
{
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();
  swift_unknownObjectRelease();

  return swift_deallocClassInstance();
}

void sub_246084EEC(uint64_t a1@<X0>, uint64_t *a2@<X8>)
{
  v3 = sub_2460850B4(a1);

  *a2 = v3;
}

void type metadata accessor for MTLResourceOptions()
{
  if (!qword_27EE3B0B8)
  {
    ForeignTypeMetadata = swift_getForeignTypeMetadata();
    if (!v1)
    {
      atomic_store(ForeignTypeMetadata, &qword_27EE3B0B8);
    }
  }
}

uint64_t sub_246085070(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    type metadata accessor for MTLResourceOptions();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_2460850B4(uint64_t a1)
{
  v1 = *(a1 + 16);
  if (!v1)
  {
    return 0;
  }

  result = 0;
  v4 = (a1 + 32);
  do
  {
    v6 = *v4++;
    v5 = v6;
    if ((v6 & ~result) == 0)
    {
      v5 = 0;
    }

    result |= v5;
    --v1;
  }

  while (v1);
  return result;
}

void __swiftcall wideToDepthCameraTransform()(simd_float4x4 *__return_ptr retstr)
{
  v31[1] = *MEMORY[0x277D85DE8];
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v23 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v5);
  v7 = &v23 - v6;
  if (byte_27EE3B190)
  {
    v8 = *(MEMORY[0x277D860B8] + 16);
    v9 = *(MEMORY[0x277D860B8] + 32);
    v10 = *(MEMORY[0x277D860B8] + 48);
    v26 = *MEMORY[0x277D860B8];
    v27 = v26;
    v24 = v9;
    v25 = v8;
    v28 = v8;
    v29 = v9;
    v23 = v10;
    v30 = v10;
    if (OCNonModularSPI_GetWideToDepthTransform() || (sub_2460233E8(v27, v28, v29, v30) & 1) == 0)
    {
      v18 = sub_245FA3174();
      (*(v2 + 16))(v4, v18, v1);
      v19 = sub_2460918D4();
      v20 = sub_246091FB4();
      if (os_log_type_enabled(v19, v20))
      {
        v21 = swift_slowAlloc();
        v22 = swift_slowAlloc();
        v31[0] = v22;
        *v21 = 136380675;
        *(v21 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4CB0, v31);
        _os_log_impl(&dword_245F8A000, v19, v20, "%{private}s: Failed to obtain wide to depth camera transform, using identity instead.", v21, 0xCu);
        sub_245F8E6F4(v22);
        MEMORY[0x24C1989D0](v22, -1, -1);
        MEMORY[0x24C1989D0](v21, -1, -1);
      }

      (*(v2 + 8))(v4, v1);
      LOBYTE(v31[0]) = 0;
      xmmword_27EE3B150 = v26;
      unk_27EE3B160 = v25;
      v17 = v23;
      v16 = v24;
    }

    else
    {
      v11 = sub_245FA3174();
      (*(v2 + 16))(v7, v11, v1);
      v12 = sub_2460918D4();
      v13 = sub_246091FC4();
      if (os_log_type_enabled(v12, v13))
      {
        v14 = swift_slowAlloc();
        v15 = swift_slowAlloc();
        v31[0] = v15;
        *v14 = 136380675;
        *(v14 + 4) = sub_245F8D3C0(0xD00000000000001CLL, 0x80000002460A4CB0, v31);
        _os_log_impl(&dword_245F8A000, v12, v13, "%{private}s: Obtained wide to depth camera transform.", v14, 0xCu);
        sub_245F8E6F4(v15);
        MEMORY[0x24C1989D0](v15, -1, -1);
        MEMORY[0x24C1989D0](v14, -1, -1);
      }

      (*(v2 + 8))(v7, v1);
      v16 = v29;
      v17 = v30;
      LOBYTE(v31[0]) = 0;
      xmmword_27EE3B150 = v27;
      unk_27EE3B160 = v28;
    }

    xmmword_27EE3B170 = v16;
    xmmword_27EE3B180 = v17;
    byte_27EE3B190 = 0;
  }
}

float32x2_t OCBoundingBox.extent.getter()
{
  v1 = vmulq_f32(*v0, *v0);
  v2 = vmulq_f32(v0[1], v0[1]);
  return vsqrt_f32(vadd_f32(vzip1_s32(*&vextq_s8(v1, v1, 8uLL), *&vextq_s8(v2, v2, 8uLL)), vadd_f32(vzip1_s32(*v1.i8, *v2.i8), vzip2_s32(*v1.i8, *v2.i8))));
}

float32x4_t OCBoundingBox.rotation.getter@<Q0>(float32x4_t *a1@<X8>)
{
  v2 = v1[1];
  v3 = v1[2];
  v4 = vmulq_f32(*v1, *v1);
  v5 = vaddv_f32(*v4.f32);
  *v4.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5));
  *v4.f32 = vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32)));
  result = vmulq_n_f32(*v1, vmul_f32(*v4.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v4.f32[2] + v5), vmul_f32(*v4.f32, *v4.f32))).f32[0]);
  v7 = vmulq_f32(v2, v2);
  *&v8 = v7.f32[2] + vaddv_f32(*v7.f32);
  *v7.f32 = vrsqrte_f32(v8);
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32)));
  v7.i32[0] = vmul_f32(*v7.f32, vrsqrts_f32(v8, vmul_f32(*v7.f32, *v7.f32))).u32[0];
  v9 = vmulq_f32(v3, v3);
  v10 = vaddv_f32(*v9.f32);
  v11 = vmulq_n_f32(v2, v7.f32[0]);
  *v7.f32 = vrsqrte_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10));
  *v7.f32 = vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32)));
  *a1 = result;
  a1[1] = v11;
  a1[2] = vmulq_n_f32(v3, vmul_f32(*v7.f32, vrsqrts_f32(COERCE_UNSIGNED_INT(v9.f32[2] + v10), vmul_f32(*v7.f32, *v7.f32))).f32[0]);
  return result;
}

uint64_t OCBoundingBox.dict.getter()
{
  sub_246020FBC(*v0, v0[1], v0[2], v0[3]);
  v2 = v1;
  sub_245F8E624(&qword_27EE3A440, &unk_2460979E0);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_246096EF0;
  *(inited + 32) = 0x726F66736E617274;
  *(inited + 40) = 0xE90000000000006DLL;
  v4 = sub_245F8E624(&unk_27EE3B1A0, &qword_246098F50);
  *(inited + 48) = v2;
  *(inited + 72) = v4;
  *(inited + 80) = 0x6E656469666E6F63;
  *(inited + 120) = MEMORY[0x277D839F8];
  *(inited + 88) = 0xEA00000000006563;
  *(inited + 96) = 0x3FF0000000000000;
  sub_245F8E498(inited);
  swift_setDeallocating();
  sub_245F8E624(&qword_27EE39EF8, &unk_246096ED0);
  swift_arrayDestroy();
  v5 = sub_246091B34();

  return v5;
}

__n128 OCBoundingBox.init(position:extent:rotation:)@<Q0>(float32x4_t *a1@<X0>, uint64_t a2@<X8>, __n128 result@<Q0>, float32x4_t a4@<Q1>)
{
  v4 = a1[1];
  v5 = a1[2];
  *&v6 = vmulq_n_f32(*a1, a4.f32[0]).u64[0];
  *(&v6 + 1) = COERCE_UNSIGNED_INT(vmuls_lane_f32(a4.f32[0], *a1, 2));
  *&v7 = vmuls_lane_f32(a4.f32[1], v4, 2);
  v4.i64[0] = vmulq_lane_f32(v4, *a4.f32, 1).u64[0];
  v4.i64[1] = v7;
  v8 = vmulq_f32(v5, a4);
  *&v9 = vmulq_laneq_f32(v5, a4, 2).u64[0];
  *(&v9 + 1) = v8.u32[2];
  result.n128_u32[3] = 1.0;
  *a2 = v6;
  *(a2 + 16) = v4;
  *(a2 + 32) = v9;
  *(a2 + 48) = result;
  return result;
}

void __swiftcall OCBoundingBox.init(transform:)(CoreOC::OCBoundingBox *__return_ptr retstr, simd_float4x4 *transform)
{
  retstr->transform.columns[0] = v2;
  retstr->transform.columns[1] = v3;
  retstr->transform.columns[2] = v4;
  retstr->transform.columns[3] = v5;
}

float OCBoundingBox.scale(_:)@<S0>(float32x4_t *a1@<X8>, float32x4_t a2@<Q0>)
{
  v3 = v2[1];
  v5 = v2[2];
  v4 = v2[3];
  v6 = vmulq_f32(*v2, *v2);
  v6.f32[0] = v6.f32[2] + vaddv_f32(*v6.f32);
  v7 = sqrtf(v6.f32[0]);
  v8 = vmulq_f32(v3, v3);
  v8.f32[0] = v8.f32[2] + vaddv_f32(*v8.f32);
  v9 = sqrtf(v8.f32[0]);
  v10 = vmulq_f32(v5, v5);
  v10.f32[0] = v10.f32[2] + vaddv_f32(*v10.f32);
  v11 = v6.i32[0];
  *v6.f32 = vrsqrte_f32(v6.u32[0]);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v11, vmul_f32(*v6.f32, *v6.f32)));
  v12 = vmulq_n_f32(*v2, vmul_f32(*v6.f32, vrsqrts_f32(v11, vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v6.i32[0] = v8.i32[0];
  *v8.f32 = vrsqrte_f32(v8.u32[0]);
  *v8.f32 = vmul_f32(*v8.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v8.f32, *v8.f32)));
  v13 = vmulq_n_f32(v3, vmul_f32(*v8.f32, vrsqrts_f32(v6.u32[0], vmul_f32(*v8.f32, *v8.f32))).f32[0]);
  *v6.f32 = vrsqrte_f32(v10.u32[0]);
  *v6.f32 = vmul_f32(*v6.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v6.f32, *v6.f32)));
  v14 = vmulq_n_f32(v5, vmul_f32(*v6.f32, vrsqrts_f32(v10.u32[0], vmul_f32(*v6.f32, *v6.f32))).f32[0]);
  v6.f32[0] = v7 * a2.f32[0];
  v15 = vmuls_lane_f32(v9, *a2.f32, 1);
  v16 = vmuls_lane_f32(sqrtf(v10.f32[0]), a2, 2);
  *v8.f32 = vmul_n_f32(*v12.f32, v6.f32[0]);
  v8.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v6.f32[0], v12, 2));
  *v12.f32 = vmul_n_f32(*v13.f32, v15);
  v12.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v15, v13, 2));
  *v13.f32 = vmul_n_f32(*v14.f32, v16);
  v13.i64[1] = COERCE_UNSIGNED_INT(vmuls_lane_f32(v16, v14, 2));
  result = 1.0;
  v4.i32[3] = 1.0;
  *a1 = v8;
  a1[1] = v12;
  a1[2] = v13;
  a1[3] = v4;
  return result;
}

uint64_t sub_24608585C(uint64_t a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v20.i8[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = *v1;
  v22 = v1[1];
  v23 = v7;
  v8 = v1[2];
  v20 = v1[3];
  v21 = v8;
  v9 = sub_245FA3174();
  (*(v4 + 16))(v6, v9, v3);
  v10 = sub_2460918D4();
  v11 = sub_246091FC4();
  if (os_log_type_enabled(v10, v11))
  {
    v12 = swift_slowAlloc();
    v13 = swift_slowAlloc();
    v24 = v13;
    *v12 = 134349314;
    *(v12 + 4) = a1;
    *(v12 + 12) = 2082;
    v14 = sub_246020FBC(v23, v22, v21, v20);
    v15 = MEMORY[0x24C196760](v14);
    v17 = v16;

    v18 = sub_245F8D3C0(v15, v17, &v24);

    *(v12 + 14) = v18;
    _os_log_impl(&dword_245F8A000, v10, v11, "Bounding Box: Segment = %{public}ld, Bounding box transform = %{public}s", v12, 0x16u);
    sub_245F8E6F4(v13);
    MEMORY[0x24C1989D0](v13, -1, -1);
    MEMORY[0x24C1989D0](v12, -1, -1);
  }

  return (*(v4 + 8))(v6, v3);
}

void OCDepthPointCloud.init()(void *a1@<X8>)
{
  v1 = MEMORY[0x277D84F90];
  *a1 = MEMORY[0x277D84F90];
  a1[1] = v1;
  a1[2] = v1;
  a1[3] = v1;
  a1[4] = v1;
  a1[5] = v1;
  a1[6] = v1;
  a1[7] = v1;
  a1[8] = v1;
}

uint64_t OCDepthPointCloud.init(bankIds:spotIds:echoIds:euclideanDistances:confidences:intensities:signalToNoiseRatios:uv:xyz:)@<X0>(uint64_t result@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X4>, uint64_t a6@<X5>, uint64_t a7@<X6>, uint64_t a8@<X7>, void *a9@<X8>, uint64_t a10)
{
  *a9 = result;
  a9[1] = a2;
  a9[2] = a3;
  a9[3] = a4;
  a9[4] = a5;
  a9[5] = a6;
  a9[6] = a7;
  a9[7] = a8;
  a9[8] = a10;
  return result;
}

__n128 OCDepthPointCloud.append(bankId:spotId:echoId:euclideanDistance:confidence:intensity:signalToNoiseRatio:uv:xyz:)(char a1, char a2, char a3, float a4, float a5, float a6, float a7, double a8, double a9, __n128 a10)
{
  v20 = *v10;
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v20 = sub_245F8D874(0, *(v20 + 2) + 1, 1, v20);
  }

  v22 = *(v20 + 2);
  v21 = *(v20 + 3);
  if (v22 >= v21 >> 1)
  {
    v20 = sub_245F8D874((v21 > 1), v22 + 1, 1, v20);
  }

  *(v20 + 2) = v22 + 1;
  v20[v22 + 32] = a1;
  *v10 = v20;
  v23 = v10[1];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v23 = sub_245F8D874(0, *(v23 + 2) + 1, 1, v23);
  }

  v25 = *(v23 + 2);
  v24 = *(v23 + 3);
  if (v25 >= v24 >> 1)
  {
    v23 = sub_245F8D874((v24 > 1), v25 + 1, 1, v23);
  }

  *(v23 + 2) = v25 + 1;
  v23[v25 + 32] = a2;
  v10[1] = v23;
  v26 = v10[2];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v26 = sub_245F8D874(0, *(v26 + 2) + 1, 1, v26);
  }

  v28 = *(v26 + 2);
  v27 = *(v26 + 3);
  if (v28 >= v27 >> 1)
  {
    v26 = sub_245F8D874((v27 > 1), v28 + 1, 1, v26);
  }

  *(v26 + 2) = v28 + 1;
  v26[v28 + 32] = a3;
  v10[2] = v26;
  v29 = v10[3];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v29 = sub_245FB1254(0, *(v29 + 2) + 1, 1, v29);
  }

  v31 = *(v29 + 2);
  v30 = *(v29 + 3);
  if (v31 >= v30 >> 1)
  {
    v29 = sub_245FB1254((v30 > 1), v31 + 1, 1, v29);
  }

  *(v29 + 2) = v31 + 1;
  *&v29[4 * v31 + 32] = a4;
  v10[3] = v29;
  v32 = v10[4];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v32 = sub_245FB1254(0, *(v32 + 2) + 1, 1, v32);
  }

  v34 = *(v32 + 2);
  v33 = *(v32 + 3);
  if (v34 >= v33 >> 1)
  {
    v32 = sub_245FB1254((v33 > 1), v34 + 1, 1, v32);
  }

  *(v32 + 2) = v34 + 1;
  *&v32[4 * v34 + 32] = a5;
  v10[4] = v32;
  v35 = v10[5];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v35 = sub_245FB1254(0, *(v35 + 2) + 1, 1, v35);
  }

  v37 = *(v35 + 2);
  v36 = *(v35 + 3);
  if (v37 >= v36 >> 1)
  {
    v35 = sub_245FB1254((v36 > 1), v37 + 1, 1, v35);
  }

  *(v35 + 2) = v37 + 1;
  *&v35[4 * v37 + 32] = a6;
  v10[5] = v35;
  v38 = v10[6];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v38 = sub_245FB1254(0, *(v38 + 2) + 1, 1, v38);
  }

  v40 = *(v38 + 2);
  v39 = *(v38 + 3);
  if (v40 >= v39 >> 1)
  {
    v38 = sub_245FB1254((v39 > 1), v40 + 1, 1, v38);
  }

  *(v38 + 2) = v40 + 1;
  *&v38[4 * v40 + 32] = a7;
  v10[6] = v38;
  v41 = v10[7];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v41 = sub_246026288(0, *(v41 + 2) + 1, 1, v41);
  }

  v43 = *(v41 + 2);
  v42 = *(v41 + 3);
  if (v43 >= v42 >> 1)
  {
    v41 = sub_246026288((v42 > 1), v43 + 1, 1, v41);
  }

  *(v41 + 2) = v43 + 1;
  v44 = &v41[16 * v43];
  *(v44 + 4) = a8;
  *(v44 + 5) = a9;
  v10[7] = v41;
  v45 = v10[8];
  if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
  {
    v45 = sub_245FA26DC(0, *(v45 + 2) + 1, 1, v45);
  }

  v47 = *(v45 + 2);
  v46 = *(v45 + 3);
  if (v47 >= v46 >> 1)
  {
    v45 = sub_245FA26DC((v46 > 1), v47 + 1, 1, v45);
  }

  *(v45 + 2) = v47 + 1;
  result = a10;
  *&v45[16 * v47 + 32] = a10;
  v10[8] = v45;
  return result;
}

Swift::Void __swiftcall OCDepthPointCloud.remove(at:)(Swift::Int at)
{
  if (*(*v1 + 16) > at)
  {
    sub_2460862A4(at);
    sub_2460862A4(at);
    sub_2460862A4(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_246086328(at);
    sub_2460863B0(at);
    sub_24608643C(at);
  }
}

uint64_t sub_2460862A4(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C0C0(v3);
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
    v7 = *(v3 + a1 + 32);
    memmove((v3 + a1 + 32), (v3 + a1 + 33), v5 - 1 - a1);
    *(v3 + 16) = v6;
    *v1 = v3;
    return v7;
  }

  return result;
}

uint64_t sub_246086328(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C0AC(v3);
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
    result = memmove((v3 + 4 * a1 + 32), (v3 + 4 * a1 + 36), 4 * (v5 - 1 - a1));
    *(v3 + 16) = v6;
    *v1 = v3;
  }

  return result;
}

uint64_t sub_2460863B0(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C098(v3);
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

uint64_t sub_24608643C(unint64_t a1)
{
  v3 = *v1;
  result = swift_isUniquelyReferenced_nonNull_native();
  if ((result & 1) == 0)
  {
    result = sub_24608C084(v3);
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

void OCPointCloud.transform.setter(__n128 a1, __n128 a2, __n128 a3, __n128 a4)
{
  v4[1] = a1;
  v4[2] = a2;
  v4[3] = a3;
  v4[4] = a4;
}

unint64_t _s6CoreOC12OCVoxelCloudV6voxels9transformACSaySo0C0aG_So13simd_float4x4atcfC_0@<X0>(unint64_t result@<X0>, __n128 *a2@<X8>, __n128 a3@<Q0>, __n128 a4@<Q1>, __n128 a5@<Q2>, __n128 a6@<Q3>)
{
  a2->n128_u64[0] = result;
  a2[1] = a3;
  a2[2] = a4;
  a2[3] = a5;
  a2[4] = a6;
  return result;
}

unint64_t sub_246086638@<X0>(unint64_t result@<X0>, unint64_t a2@<X1>, __n128 *a3@<X8>, __n128 a4@<Q0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>)
{
  a3->n128_u64[0] = result;
  a3->n128_u64[1] = a2;
  a3[1] = a4;
  a3[2] = a5;
  a3[3] = a6;
  a3[4] = a7;
  return result;
}

uint64_t *sub_246086648@<X0>(uint64_t *__return_ptr a1@<X8>, void *__src@<X5>, uint64_t a3@<X0>, uint64_t a4@<X1>, uint64_t a5@<X2>, uint64_t a6@<X3>, uint64_t a7@<X4>, uint64_t a8@<X6>, char a9@<W7>, double a10@<D0>)
{
  *a1 = a10;
  a1[1] = a3;
  a1[2] = a4;
  a1[3] = a5;
  v13 = *(a6 + 48);
  *(a1 + 4) = *(a6 + 32);
  *(a1 + 5) = v13;
  v14 = *(a6 + 64);
  v15 = *(a6 + 16);
  *(a1 + 2) = *a6;
  *(a1 + 3) = v15;
  a1[12] = v14;
  a1[13] = a7;
  result = memcpy(a1 + 14, __src, 0x118uLL);
  a1[49] = a8;
  *(a1 + 400) = a9;
  return result;
}

void *sub_2460866B4@<X0>(__int128 *a1@<X0>, const void *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>)
{
  *a3 = a4;
  v4 = *a1;
  *(a3 + 24) = a1[1];
  v5 = a1[3];
  *(a3 + 40) = a1[2];
  *(a3 + 56) = v5;
  *(a3 + 72) = *(a1 + 8);
  *(a3 + 8) = v4;
  return memcpy((a3 + 80), a2, 0x118uLL);
}

__n128 sub_2460866E4@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>, __n128 a8@<Q4>, __n128 a9@<Q5>, __n128 a10@<Q6>, __n128 a11@<Q7>, __n128 a12)
{
  *&v24[32] = a7;
  *&v24[48] = a8;
  *v24 = a5;
  *&v24[16] = a6;
  v16 = sub_246091834();
  v17 = *(v16 - 8);
  (*(v17 + 16))(a3, a1, v16);
  v18 = type metadata accessor for OCObjectCentricPoseNode(0);
  *(a3 + v18[5]) = a4;
  v19 = (a3 + v18[6]);
  v20 = a2[1];
  *v19 = *a2;
  v19[1] = v20;
  v19[2] = a2[2];
  *(a3 + v18[7]) = *v24;
  v28 = __invert_f4(*v24);
  *&v24[32] = v28.columns[1];
  *&v24[48] = v28.columns[0];
  *v24 = v28.columns[3];
  *&v24[16] = v28.columns[2];
  (*(v17 + 8))(a1, v16);
  v21 = (a3 + v18[8]);
  *v21 = *&v24[48];
  v21[1] = *&v24[32];
  v21[2] = *&v24[16];
  v21[3] = *v24;
  v22 = (a3 + v18[9]);
  *v22 = a9;
  v22[1] = a10;
  v22[2] = a11;
  result = a12;
  v22[3] = a12;
  return result;
}

__n128 sub_24608686C@<Q0>(uint64_t a1@<X0>, _OWORD *a2@<X1>, uint64_t a3@<X8>, double a4@<D0>, __n128 a5@<Q1>, __n128 a6@<Q2>, __n128 a7@<Q3>, __n128 a8@<Q4>)
{
  v12 = sub_246091834();
  (*(*(v12 - 8) + 32))(a3, a1, v12);
  v13 = type metadata accessor for VIOPoseNode(0);
  *(a3 + v13[5]) = a4;
  v14 = (a3 + v13[6]);
  v15 = a2[1];
  *v14 = *a2;
  v14[1] = v15;
  v14[2] = a2[2];
  v16 = (a3 + v13[7]);
  *v16 = a5;
  v16[1] = a6;
  result = a8;
  v16[2] = a7;
  v16[3] = a8;
  return result;
}

Swift::Void __swiftcall GeoDebugData.reset()()
{
  *v0 = 0xBF8000007F800000;
  v0[1] = 0xBFF0000000000000;
  v0[2] = 0xBF8000007F800000;
  v0[3] = 0xBFF0000000000000;
  v0[4] = 0xBF8000007F800000;
  v0[5] = 0xBFF0000000000000;
  v0[6] = 0xBF8000007F800000;
  v0[7] = 0xBFF0000000000000;
}

double sub_246086C34@<D0>(uint64_t a1@<X8>)
{
  *a1 = 0xBF8000007F800000;
  *(a1 + 8) = 0xBFF0000000000000;
  *(a1 + 16) = 0xBF8000007F800000;
  *(a1 + 24) = 0xBFF0000000000000;
  *(a1 + 32) = 0xBF8000007F800000;
  *(a1 + 40) = 0xBFF0000000000000;
  *(a1 + 48) = 0xBF8000007F800000;
  *(a1 + 56) = 0xBFF0000000000000;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 64) = result;
  *(a1 + 72) = -1082130432;
  return result;
}

uint64_t sub_246086C74(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_246086CB4(a1);
  return v2;
}

uint64_t sub_246086CB4(uint64_t a1)
{
  v3 = MEMORY[0x277D84F90];
  *(v1 + 88) = sub_24608DA6C(MEMORY[0x277D84F90]);
  *(v1 + 96) = sub_24608DC88(v3);
  sub_2460917A4();
  *(v1 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_vioClosenessCheckLogIntervalThresh) = 0x3FF0000000000000;
  *(v1 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) = 0;
  if (*(a1 + 64))
  {
    v4 = *(a1 + 48);
    *(v1 + 48) = *(a1 + 32);
    *(v1 + 64) = v4;
    *(v1 + 80) = *(a1 + 64);
    v5 = *(a1 + 16);
    *(v1 + 16) = *a1;
    *(v1 + 32) = v5;
  }

  else
  {
    v6 = *(a1 + 16);
    v7 = *(a1 + 32);
    v16.columns[3] = *(a1 + 48);
    v8 = vmulq_f32(*a1, *a1);
    *v8.i8 = vadd_f32(*v8.i8, *&vextq_s8(v8, v8, 8uLL));
    v8.i32[0] = vadd_f32(*v8.i8, vdup_lane_s32(*v8.i8, 1)).u32[0];
    v9 = vrsqrte_f32(v8.u32[0]);
    v10 = vmul_f32(v9, vrsqrts_f32(v8.u32[0], vmul_f32(v9, v9)));
    v16.columns[0] = vmulq_n_f32(*a1, vmul_f32(v10, vrsqrts_f32(v8.u32[0], vmul_f32(v10, v10))).f32[0]);
    v11 = vmulq_f32(v6, v6);
    *v11.i8 = vadd_f32(*v11.i8, *&vextq_s8(v11, v11, 8uLL));
    v11.i32[0] = vadd_f32(*v11.i8, vdup_lane_s32(*v11.i8, 1)).u32[0];
    v12 = vrsqrte_f32(v11.u32[0]);
    v13 = vmul_f32(v12, vrsqrts_f32(v11.u32[0], vmul_f32(v12, v12)));
    v11.i32[0] = vmul_f32(v13, vrsqrts_f32(v11.u32[0], vmul_f32(v13, v13))).u32[0];
    v14 = vmulq_f32(v7, v7);
    *v14.i8 = vadd_f32(*v14.i8, *&vextq_s8(v14, v14, 8uLL));
    v16.columns[1] = vmulq_n_f32(v6, *v11.i32);
    v11.i32[0] = vadd_f32(*v14.i8, vdup_lane_s32(*v14.i8, 1)).u32[0];
    *v14.i8 = vrsqrte_f32(v11.u32[0]);
    *v14.i8 = vmul_f32(*v14.i8, vrsqrts_f32(v11.u32[0], vmul_f32(*v14.i8, *v14.i8)));
    v16.columns[2] = vmulq_n_f32(v7, vmul_f32(*v14.i8, vrsqrts_f32(v11.u32[0], vmul_f32(*v14.i8, *v14.i8))).f32[0]);
    *(v1 + 16) = __invert_f4(v16);
    *(v1 + 80) = 0;
  }

  return v1;
}

uint64_t sub_246086E1C(uint64_t a1)
{
  v3 = sub_246091834();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v23[-((v5 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v7 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  MEMORY[0x28223BE20](v7 - 8);
  v9 = &v23[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v10);
  v12 = &v23[-v11];
  swift_beginAccess();
  v13 = *(v1 + 88);
  if (*(v13 + 16))
  {

    v14 = sub_245FC1BDC(a1);
    if (v15)
    {
      v16 = v14;
      v17 = *(v13 + 56);
      v18 = type metadata accessor for OCObjectCentricPoseNode(0);
      v19 = *(v18 - 8);
      sub_24608DEA4(v17 + *(v19 + 72) * v16, v12, type metadata accessor for OCObjectCentricPoseNode);

      (*(v19 + 56))(v12, 0, 1, v18);
      sub_245F8E744(v12, &qword_27EE3B1B8, &qword_24609B680);
      return 0;
    }
  }

  v21 = type metadata accessor for OCObjectCentricPoseNode(0);
  v22 = *(*(v21 - 8) + 56);
  v22(v12, 1, 1, v21);
  sub_245F8E744(v12, &qword_27EE3B1B8, &qword_24609B680);
  (*(v4 + 16))(v6, a1, v3);
  sub_24608DEA4(a1, v9, type metadata accessor for OCObjectCentricPoseNode);
  v22(v9, 0, 1, v21);
  swift_beginAccess();
  sub_246087138(v9, v6);
  swift_endAccess();
  return 1;
}

uint64_t sub_246087138(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for OCObjectCentricPoseNode(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3B1B8, &qword_24609B680);
    sub_24608C0D4(a2, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode, sub_24608D3D4, v7);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_245F8E744(v7, &qword_27EE3B1B8, &qword_24609B680);
  }

  else
  {
    sub_24608DF0C(a1, v11, type metadata accessor for OCObjectCentricPoseNode);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24608CEE8(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_246091834();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_246087398(uint64_t a1, uint64_t a2)
{
  v5 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  MEMORY[0x28223BE20](v5 - 8);
  v7 = &v17 - v6;
  v8 = type metadata accessor for VIOPoseNode(0);
  v9 = MEMORY[0x28223BE20](v8);
  v11 = &v17 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v12 + 48))(a1, 1, v9) == 1)
  {
    sub_245F8E744(a1, &qword_27EE3B1C0, &qword_24609B688);
    sub_24608C0D4(a2, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode, sub_24608D700, v7);
    v13 = sub_246091834();
    (*(*(v13 - 8) + 8))(a2, v13);
    return sub_245F8E744(v7, &qword_27EE3B1C0, &qword_24609B688);
  }

  else
  {
    sub_24608DF0C(a1, v11, type metadata accessor for VIOPoseNode);
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v18 = *v2;
    sub_24608D0E4(v11, a2, isUniquelyReferenced_nonNull_native);
    v16 = sub_246091834();
    result = (*(*(v16 - 8) + 8))(a2, v16);
    *v2 = v18;
  }

  return result;
}

uint64_t sub_2460875F8(uint64_t a1)
{
  v2 = v1;
  v4 = sub_246091834();
  v5 = *(v4 - 8);
  MEMORY[0x28223BE20](v4);
  v7 = &v24[-((v6 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v8 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  MEMORY[0x28223BE20](v8 - 8);
  v10 = &v24[-((v9 + 15) & 0xFFFFFFFFFFFFFFF0)];
  MEMORY[0x28223BE20](v11);
  v13 = &v24[-v12];
  swift_beginAccess();
  v14 = *(v1 + 96);
  if (*(v14 + 16))
  {

    v15 = sub_245FC1BDC(a1);
    if (v16)
    {
      v17 = v15;
      v18 = *(v14 + 56);
      v19 = type metadata accessor for VIOPoseNode(0);
      v20 = *(v19 - 8);
      sub_24608DEA4(v18 + *(v20 + 72) * v17, v13, type metadata accessor for VIOPoseNode);

      (*(v20 + 56))(v13, 0, 1, v19);
      sub_245F8E744(v13, &qword_27EE3B1C0, &qword_24609B688);
      return 0;
    }
  }

  v22 = type metadata accessor for VIOPoseNode(0);
  v23 = *(*(v22 - 8) + 56);
  v23(v13, 1, 1, v22);
  sub_245F8E744(v13, &qword_27EE3B1C0, &qword_24609B688);
  (*(v5 + 16))(v7, a1, v4);
  sub_24608DEA4(a1, v10, type metadata accessor for VIOPoseNode);
  v23(v10, 0, 1, v22);
  swift_beginAccess();
  sub_246087398(v10, v7);
  swift_endAccess();
  result = 1;
  *(v2 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) = 1;
  return result;
}

uint64_t sub_246087918(uint64_t a1)
{
  v2 = v1;
  v4 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  MEMORY[0x28223BE20](v4 - 8);
  v47 = &v45 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v6);
  v8 = &v45 - v7;
  v9 = sub_246091834();
  v10 = *(v9 - 8);
  MEMORY[0x28223BE20](v9);
  v12 = &v45 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  MEMORY[0x28223BE20](v13 - 8);
  v15 = &v45 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v16);
  v18 = &v45 - v17;
  swift_beginAccess();
  v19 = *(v1 + 88);
  if (!*(v19 + 16))
  {
LABEL_5:
    v31 = type metadata accessor for OCObjectCentricPoseNode(0);
    (*(*(v31 - 8) + 56))(v18, 1, 1, v31);
    sub_245F8E744(v18, &qword_27EE3B1B8, &qword_24609B680);
    swift_beginAccess();
    v32 = *(v2 + 96);
    if (*(v32 + 16))
    {

      v33 = sub_245FC1BDC(a1);
      if (v34)
      {
        v35 = v33;
        v45 = a1;
        v46 = v9;
        v36 = *(v32 + 56);
        v37 = type metadata accessor for VIOPoseNode(0);
        v38 = v12;
        v39 = v10;
        v40 = *(v37 - 8);
        sub_24608DEA4(v36 + *(v40 + 72) * v35, v8, type metadata accessor for VIOPoseNode);

        v41 = *(v40 + 56);
        v29 = 1;
        v41(v8, 0, 1, v37);
        sub_245F8E744(v8, &qword_27EE3B1C0, &qword_24609B688);
        (*(v39 + 16))(v38, v45, v46);
        v42 = v47;
        v41(v47, 1, 1, v37);
        swift_beginAccess();
        sub_246087398(v42, v38);
        swift_endAccess();
        return v29;
      }
    }

    v43 = type metadata accessor for VIOPoseNode(0);
    (*(*(v43 - 8) + 56))(v8, 1, 1, v43);
    sub_245F8E744(v8, &qword_27EE3B1C0, &qword_24609B688);
    return 0;
  }

  v20 = sub_245FC1BDC(a1);
  if ((v21 & 1) == 0)
  {

    goto LABEL_5;
  }

  v22 = v20;
  v23 = *(v19 + 56);
  v24 = type metadata accessor for OCObjectCentricPoseNode(0);
  v46 = v9;
  v47 = v12;
  v25 = v24;
  v26 = a1;
  v27 = *(v24 - 8);
  sub_24608DEA4(v23 + *(v27 + 72) * v22, v18, type metadata accessor for OCObjectCentricPoseNode);

  v28 = *(v27 + 56);
  v29 = 1;
  v28(v18, 0, 1, v25);
  sub_245F8E744(v18, &qword_27EE3B1B8, &qword_24609B680);
  v30 = v47;
  (*(v10 + 16))(v47, v26, v46);
  v28(v15, 1, 1, v25);
  swift_beginAccess();
  sub_246087138(v15, v30);
  swift_endAccess();
  return v29;
}

uint64_t sub_246087E4C(uint64_t a1, __n128 a2, __n128 a3, __n128 a4, __n128 a5)
{
  v6 = v5;
  v107 = a5;
  v106 = a4;
  v105 = a3;
  v104 = a2;
  v8 = type metadata accessor for VIOPoseNode(0);
  v112 = *(v8 - 8);
  v113 = v8;
  MEMORY[0x28223BE20](v8);
  v98 = &v98 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for OCObjectCentricPoseNode(0);
  v11 = *(v10 - 8);
  MEMORY[0x28223BE20](v10);
  v99 = &v98 - ((v12 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = sub_246091834();
  v110 = *(v13 - 8);
  v111 = v13;
  MEMORY[0x28223BE20](v13);
  v108 = &v98 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v15);
  v109 = &v98 - v16;
  v17 = sub_245F8E624(&qword_27EE3B1C0, &qword_24609B688);
  MEMORY[0x28223BE20](v17 - 8);
  v100 = &v98 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v101 = &v98 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v98 - v22;
  MEMORY[0x28223BE20](v24);
  v26 = &v98 - v25;
  v27 = sub_245F8E624(&qword_27EE3B1B8, &qword_24609B680);
  MEMORY[0x28223BE20](v27 - 8);
  v102 = &v98 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v103 = &v98 - v30;
  MEMORY[0x28223BE20](v31);
  v33 = &v98 - v32;
  MEMORY[0x28223BE20](v34);
  v36 = &v98 - v35;
  swift_beginAccess();
  v37 = *(v5 + 88);
  if (*(v37 + 16))
  {

    v38 = sub_245FC1BDC(a1);
    if (v39)
    {
      sub_24608DEA4(*(v37 + 56) + *(v11 + 72) * v38, v36, type metadata accessor for OCObjectCentricPoseNode);

      v40 = *(v11 + 56);
      v40(v36, 0, 1, v10);
      v41 = &qword_27EE3B1B8;
      v42 = &qword_24609B680;
      v43 = v36;
      goto LABEL_8;
    }
  }

  v40 = *(v11 + 56);
  v40(v36, 1, 1, v10);
  sub_245F8E744(v36, &qword_27EE3B1B8, &qword_24609B680);
  swift_beginAccess();
  v44 = *(v6 + 96);
  if (!*(v44 + 16))
  {
LABEL_15:
    (*(v112 + 56))(v26, 1, 1, v113);
    sub_245F8E744(v26, &qword_27EE3B1C0, &qword_24609B688);
    return 0;
  }

  v45 = sub_245FC1BDC(a1);
  if ((v46 & 1) == 0)
  {

    goto LABEL_15;
  }

  v47 = v112;
  sub_24608DEA4(*(v44 + 56) + *(v112 + 72) * v45, v26, type metadata accessor for VIOPoseNode);

  (*(v47 + 56))(v26, 0, 1, v113);
  v41 = &qword_27EE3B1C0;
  v42 = &qword_24609B688;
  v43 = v26;
LABEL_8:
  sub_245F8E744(v43, v41, v42);
  v48 = *(v6 + 88);
  if (*(v48 + 16))
  {

    v49 = sub_245FC1BDC(a1);
    if (v50)
    {
      v26 = *(v11 + 72);
      sub_24608DEA4(*(v48 + 56) + v26 * v49, v33, type metadata accessor for OCObjectCentricPoseNode);

      v113 = v11 + 56;
      v40(v33, 0, 1, v10);
      sub_245F8E744(v33, &qword_27EE3B1B8, &qword_24609B680);
      swift_beginAccess();
      isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
      v23 = v109;
      (*(v110 + 16))(v109, a1, v111);
      v115 = *(v6 + 88);
      v52 = v115;
      *(v6 + 88) = 0x8000000000000000;
      v54 = sub_245FC1BDC(v23);
      v55 = *(v52 + 16);
      v56 = (v53 & 1) == 0;
      v57 = v55 + v56;
      if (!__OFADD__(v55, v56))
      {
        LOBYTE(v23) = v53;
        if (*(v52 + 24) < v57)
        {
          sub_24608C294(v57, isUniquelyReferenced_nonNull_native);
          v58 = sub_245FC1BDC(v109);
          if ((v23 & 1) != (v59 & 1))
          {
            goto LABEL_47;
          }

          v54 = v58;
LABEL_27:
          v76 = v103;
          if (v23)
          {
            v77 = v115;
            sub_24608DF0C(*(v115 + 56) + v54 * v26, v103, type metadata accessor for OCObjectCentricPoseNode);
            v40(v76, 0, 1, v10);
            v78 = (v76 + *(v10 + 36));
            v79 = v105;
            *v78 = v104;
            v78[1] = v79;
            v80 = v107;
            v78[2] = v106;
            v78[3] = v80;
            v81 = v102;
            sub_245F8E7A4(v76, v102, &qword_27EE3B1B8, &qword_24609B680);
            if ((*(v11 + 48))(v81, 1, v10) == 1)
            {
              sub_245F8E744(v81, &qword_27EE3B1B8, &qword_24609B680);
              v82 = v111;
              v83 = *(v110 + 8);
              v83(*(v77 + 48) + *(v110 + 72) * v54, v111);
              sub_24608CBAC(v54, v77, type metadata accessor for OCObjectCentricPoseNode);
              v83(v109, v82);
            }

            else
            {
              v84 = v99;
              sub_24608DF0C(v81, v99, type metadata accessor for OCObjectCentricPoseNode);
              sub_24608DF0C(v84, *(v77 + 56) + v54 * v26, type metadata accessor for OCObjectCentricPoseNode);
              (*(v110 + 8))(v109, v111);
            }

            sub_245F8E744(v76, &qword_27EE3B1B8, &qword_24609B680);
            *(v6 + 88) = v77;
LABEL_38:
            swift_endAccess();
            return 1;
          }

          v40(v103, 1, 1, v10);
          __break(1u);
LABEL_47:
          result = sub_246092424();
          __break(1u);
          return result;
        }

        if (isUniquelyReferenced_nonNull_native)
        {
          goto LABEL_27;
        }

LABEL_43:
        sub_24608D3D4();
        goto LABEL_27;
      }

      __break(1u);
LABEL_42:
      __break(1u);
      goto LABEL_43;
    }
  }

  v40(v33, 1, 1, v10);
  sub_245F8E744(v33, &qword_27EE3B1B8, &qword_24609B680);
  swift_beginAccess();
  v61 = *(v6 + 96);
  if (*(v61 + 16))
  {

    v62 = sub_245FC1BDC(a1);
    if ((v63 & 1) == 0)
    {
LABEL_24:

      goto LABEL_25;
    }

    v64 = v112;
    v10 = *(v112 + 72);
    sub_24608DEA4(*(v61 + 56) + v10 * v62, v23, type metadata accessor for VIOPoseNode);

    v54 = *(v64 + 56);
    (v54)(v23, 0, 1, v113);
    sub_245F8E744(v23, &qword_27EE3B1C0, &qword_24609B688);
    swift_beginAccess();
    v65 = swift_isUniquelyReferenced_nonNull_native();
    v66 = a1;
    v67 = v65;
    v68 = v108;
    (*(v110 + 16))(v108, v66, v111);
    v114 = *(v6 + 96);
    v69 = v114;
    *(v6 + 96) = 0x8000000000000000;
    v11 = sub_245FC1BDC(v68);
    v71 = *(v69 + 16);
    v72 = (v70 & 1) == 0;
    v73 = v71 + v72;
    if (__OFADD__(v71, v72))
    {
      goto LABEL_42;
    }

    v23 = v70;
    if (*(v69 + 24) < v73)
    {
      sub_24608C720(v73, v67);
      v74 = sub_245FC1BDC(v108);
      if ((v23 & 1) != (v75 & 1))
      {
        goto LABEL_47;
      }

      v11 = v74;
      if ((v23 & 1) == 0)
      {
        goto LABEL_23;
      }

LABEL_34:
      v85 = v114;
      v86 = v11 * v10;
      v87 = *(v114 + 56) + v11 * v10;
      v88 = v101;
      sub_24608DF0C(v87, v101, type metadata accessor for VIOPoseNode);
      v89 = v113;
      (v54)(v88, 0, 1, v113);
      v90 = (v88 + *(v89 + 28));
      v91 = v105;
      *v90 = v104;
      v90[1] = v91;
      v92 = v107;
      v90[2] = v106;
      v90[3] = v92;
      v93 = v100;
      sub_245F8E7A4(v88, v100, &qword_27EE3B1C0, &qword_24609B688);
      if ((*(v112 + 48))(v93, 1, v89) == 1)
      {
        sub_245F8E744(v93, &qword_27EE3B1C0, &qword_24609B688);
        v94 = v111;
        v95 = *(v110 + 8);
        v95(*(v85 + 48) + *(v110 + 72) * v11, v111);
        sub_24608CBAC(v11, v85, type metadata accessor for VIOPoseNode);
        v95(v108, v94);
      }

      else
      {
        v96 = v93;
        v97 = v98;
        sub_24608DF0C(v96, v98, type metadata accessor for VIOPoseNode);
        sub_24608DF0C(v97, *(v85 + 56) + v86, type metadata accessor for VIOPoseNode);
        (*(v110 + 8))(v108, v111);
      }

      sub_245F8E744(v88, &qword_27EE3B1C0, &qword_24609B688);
      *(v6 + 96) = v85;
      goto LABEL_38;
    }

    if (v67)
    {
      if (v70)
      {
        goto LABEL_34;
      }
    }

    else
    {
      sub_24608D700();
      if (v23)
      {
        goto LABEL_34;
      }
    }

LABEL_23:
    (v54)(v101, 1, 1, v113);
    __break(1u);
    goto LABEL_24;
  }

LABEL_25:
  (*(v112 + 56))(v23, 1, 1, v113);
  sub_245F8E744(v23, &qword_27EE3B1C0, &qword_24609B688);
  return 1;
}

double sub_246088AAC()
{
  swift_beginAccess();
  *(v0 + 88) = MEMORY[0x277D84F98];

  return result;
}

double sub_246088AF0()
{
  swift_beginAccess();
  *(v0 + 96) = MEMORY[0x277D84F98];

  return result;
}

void sub_246088B34(simd_float4x4 *a1, void (*a2)(char *, uint64_t), uint64_t a3, float *a4, __n128 a5, __n128 a6, __n128 a7, __n128 a8)
{
  v9 = v8;
  v192 = a3;
  v193 = a2;
  v188 = a8;
  v187 = a7;
  v186 = a6;
  v185 = a5;
  v12 = sub_2460918F4();
  v13 = *(v12 - 8);
  MEMORY[0x28223BE20](v12);
  v15 = &v160 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = sub_2460919E4();
  v17 = *(v16 - 8);
  MEMORY[0x28223BE20](v16);
  v163 = &v160 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v19);
  v168 = &v160 - v20;
  MEMORY[0x28223BE20](v21);
  v23 = &v160 - v22;
  v181.i64[0] = type metadata accessor for VIOPoseNode(0);
  v177 = *(v181.i64[0] - 8);
  MEMORY[0x28223BE20](v181.i64[0]);
  v180.i64[0] = &v160 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v25);
  v176 = &v160 - v26;
  v27 = sub_245F8E624(&qword_27EE3B1C8, &qword_24609B690);
  MEMORY[0x28223BE20](v27 - 8);
  v189.i64[0] = &v160 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v29);
  v179 = (&v160 - v30);
  v31 = sub_246091AA4();
  v182.i64[0] = *(v31 - 8);
  MEMORY[0x28223BE20](v31);
  v167 = &v160 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v33);
  v171 = &v160 - v34;
  v184 = type metadata accessor for OCObjectCentricPoseNode(0);
  v174 = *(v184 - 1);
  MEMORY[0x28223BE20](v184);
  v183 = &v160 - ((v35 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v36);
  v172 = &v160 - v37;
  v194 = sub_246091834();
  v191 = *(v194 - 8);
  MEMORY[0x28223BE20](v194);
  v190 = &v160 - ((v38 + 15) & 0xFFFFFFFFFFFFFFF0);
  v39 = sub_245F8E624(&qword_27EE3B1D0, &qword_24609B698);
  MEMORY[0x28223BE20](v39 - 8);
  v175 = &v160 - ((v40 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v41);
  v178 = &v160 - v42;
  *a4 = 0xBF8000007F800000;
  *(a4 + 1) = 0xBFF0000000000000;
  *(a4 + 2) = 0xBF8000007F800000;
  *(a4 + 3) = 0xBFF0000000000000;
  *(a4 + 4) = 0xBF8000007F800000;
  *(a4 + 5) = 0xBFF0000000000000;
  *(a4 + 6) = 0xBF8000007F800000;
  v173 = a4;
  *(a4 + 7) = 0xBFF0000000000000;
  if (a1[1].columns[0].i8[0] & 1) != 0 || (v9[5].i8[0])
  {
    v170 = v31;
    v164 = v23;
    v165 = v15;
    v160 = v17;
    v161 = v16;
    v162 = v13;
    v166 = v12;
    sub_246091A84();
    swift_beginAccess();
    v169 = v9;
    v43 = v9[6].i64[0];
    v44 = v43 + 64;
    v45 = 1 << v43[32];
    v46 = -1;
    if (v45 < 64)
    {
      v46 = ~(-1 << v45);
    }

    v47 = v46 & *(v43 + 8);
    v172 = (v45 + 63) >> 6;
    v175 = (v191 + 16);
    v174 = v191 + 32;
    v184 = (v191 + 8);
    v178 = v43;

    v48 = 0;
    v49 = INFINITY;
    v50 = INFINITY;
    v51 = INFINITY;
    v52 = INFINITY;
    v53 = v182.i64[0];
    v54 = v181.i64[0];
    v55 = v180.i64[0];
    v56 = v179;
    v183 = v44;
    while (v47)
    {
      v57 = v48;
LABEL_18:
      v60 = __clz(__rbit64(v47));
      v47 &= v47 - 1;
      v61 = v60 | (v57 << 6);
      v62 = v178;
      v63 = v191;
      v64 = v190;
      v65 = v194;
      (*(v191 + 16))(v190, *(v178 + 6) + *(v191 + 72) * v61, v194);
      v66 = v176;
      sub_24608DEA4(*(v62 + 7) + *(v177 + 72) * v61, v176, type metadata accessor for VIOPoseNode);
      v67 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
      v68 = *(v67 + 48);
      v69 = *(v63 + 32);
      v70 = v189.i64[0];
      v69(v189.i64[0], v64, v65);
      sub_24608DF0C(v66, v70 + v68, type metadata accessor for VIOPoseNode);
      (*(*(v67 - 8) + 56))(v70, 0, 1, v67);
      v53 = v182.i64[0];
      v54 = v181.i64[0];
      v55 = v180.i64[0];
      v56 = v179;
LABEL_19:
      sub_245FC5914(v70, v56, &qword_27EE3B1C8, &qword_24609B690);
      v71 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
      if ((*(*(v71 - 8) + 48))(v56, 1, v71) == 1)
      {

        v83 = v169;
        if (*(v169 + OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming) == 1)
        {
          v194 = OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_shouldLogClosenessTiming;
          v84 = v167;
          sub_246091A84();
          v85 = v164;
          sub_246091A94();
          v87 = *(v53 + 8);
          v86 = v53 + 8;
          v193 = v87;
          v87(v84, v170);
          v88 = sub_245FA3174();
          v89 = v162;
          (*(v162 + 16))(v165, v88, v166);
          v90 = v160;
          v91 = *(v160 + 16);
          v92 = v168;
          v93 = v85;
          v94 = v161;
          v91(v168, v93, v161);

          v95 = sub_2460918D4();
          v96 = sub_246091F94();

          if (os_log_type_enabled(v95, v96))
          {
            v97 = swift_slowAlloc();
            v182.i64[0] = v86;
            v98 = v97;
            v192 = swift_slowAlloc();
            v195 = v192;
            *v98 = 136381187;
            *(v98 + 4) = sub_245F8D3C0(0xD00000000000003DLL, 0x80000002460A4CD0, &v195);
            *(v98 + 12) = 2080;
            LODWORD(v191) = v96;
            v91(v163, v92, v94);
            v99 = sub_246091C54();
            v101 = v100;
            v102 = *(v90 + 8);
            v102(v92, v94);
            v103 = sub_245F8D3C0(v99, v101, &v195);

            *(v98 + 14) = v103;
            *(v98 + 22) = 2080;
            v83 = v169;
            v205 = *(*(v169 + 96) + 16);
            v104 = sub_2460923D4();
            v106 = sub_245F8D3C0(v104, v105, &v195);

            *(v98 + 24) = v106;
            _os_log_impl(&dword_245F8A000, v95, v191, "OCPoseGraph.%{private}s: Pose closeness check took\n%s with %s poses.", v98, 0x20u);
            v107 = v192;
            swift_arrayDestroy();
            MEMORY[0x24C1989D0](v107, -1, -1);
            MEMORY[0x24C1989D0](v98, -1, -1);

            (*(v89 + 8))(v165, v166);
            v102(v164, v94);
          }

          else
          {

            v159 = *(v90 + 8);
            v159(v92, v94);
            (*(v89 + 8))(v165, v166);
            v159(v164, v94);
          }

          v193(v171, v170);
          *(v83 + v194) = 0;
        }

        else
        {
          (*(v53 + 8))(v171, v170);
        }

        return;
      }

      sub_24608DF0C(v56 + *(v71 + 48), v55, type metadata accessor for VIOPoseNode);
      LOBYTE(v205) = 1;
      v204 = 1;
      v203 = 1;
      v202 = 1;
      LODWORD(v195) = 0;
      BYTE4(v195) = 1;
      v196 = 0.0;
      v197 = 1;
      v198 = 0.0;
      v199 = 1;
      v200 = 0.0;
      v201 = 1;
      if ((v193)(&v195, v185, v186, v187, v188, *(v55 + *(v54 + 28)), *(v55 + *(v54 + 28) + 16), *(v55 + *(v54 + 28) + 32), *(v55 + *(v54 + 28) + 48)))
      {

        sub_245FD01FC(v55, type metadata accessor for VIOPoseNode);
        (*(v53 + 8))(v171, v170);
        (*v184)(v56, v194);
        return;
      }

      v72 = *(v55 + *(v54 + 20));
      if ((v195 & 0x100000000) != 0)
      {
        v44 = v183;
      }

      else
      {
        v44 = v183;
        if ((v197 & 1) == 0)
        {
          v73 = v196;
          v74 = *&v195;
          if (*&v195 < v52)
          {
            v75 = v173;
            *v173 = v195;
            v75[1] = v73;
            v52 = v74;
            *(v75 + 1) = v72;
          }

          if (v73 < v51)
          {
            v76 = v173;
            v173[4] = v73;
            v76[5] = v74;
            v51 = v73;
            *(v76 + 3) = v72;
          }
        }
      }

      if (v201 & 1) != 0 || (v199)
      {
        sub_245FD01FC(v55, type metadata accessor for VIOPoseNode);
      }

      else
      {
        v77 = v200;
        v78 = sub_246021418(v198, -1.0, 1.0);
        v79 = acosf(v78);
        sub_245FD01FC(v55, type metadata accessor for VIOPoseNode);
        if (v50 < v79)
        {
          v80 = v173;
          v173[8] = v79;
          v80[9] = v77;
          v50 = v79;
          *(v80 + 5) = v72;
        }

        if (v77 < v49)
        {
          v81 = v173;
          v173[12] = v77;
          v81[13] = v79;
          v49 = v77;
          *(v81 + 7) = v72;
        }
      }

      (*v184)(v56, v194);
    }

    if (v172 <= v48 + 1)
    {
      v58 = v48 + 1;
    }

    else
    {
      v58 = v172;
    }

    v59 = v58 - 1;
    while (1)
    {
      v57 = v48 + 1;
      if (__OFADD__(v48, 1))
      {
        break;
      }

      if (v57 >= v172)
      {
        v82 = sub_245F8E624(&qword_27EE3B1D8, &qword_24609B6A0);
        v70 = v189.i64[0];
        (*(*(v82 - 8) + 56))(v189.i64[0], 1, 1, v82);
        v47 = 0;
        v48 = v59;
        goto LABEL_19;
      }

      v47 = *&v44[8 * v57];
      ++v48;
      if (v47)
      {
        v48 = v57;
        goto LABEL_18;
      }
    }

    __break(1u);
  }

  else
  {
    v206 = *a1;
    v189 = v9[1];
    v182 = v9[2];
    v181 = v9[3];
    v180 = v9[4];
    v207 = __invert_f4(v206);
    v108 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, v207.columns[0].f32[0]), v182, *v207.columns[0].f32, 1), v181, v207.columns[0], 2), v180, v207.columns[0], 3);
    v207.columns[0] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, v207.columns[1].f32[0]), v182, *v207.columns[1].f32, 1), v181, v207.columns[1], 2), v180, v207.columns[1], 3);
    v207.columns[1] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, v207.columns[2].f32[0]), v182, *v207.columns[2].f32, 1), v181, v207.columns[2], 2), v180, v207.columns[2], 3);
    v207.columns[2] = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, v207.columns[3].f32[0]), v182, *v207.columns[3].f32, 1), v181, v207.columns[3], 2), v180, v207.columns[3], 3);
    v185 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v185.f32[0]), v207.columns[0], *v185.f32, 1), v207.columns[1], v185, 2), v207.columns[2], v185, 3);
    v186 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v186.f32[0]), v207.columns[0], *v186.f32, 1), v207.columns[1], v186, 2), v207.columns[2], v186, 3);
    v187 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v187.f32[0]), v207.columns[0], *v187.f32, 1), v207.columns[1], v187, 2), v207.columns[2], v187, 3);
    v188 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v108, v188.f32[0]), v207.columns[0], *v188.f32, 1), v207.columns[1], v188, 2), v207.columns[2], v188, 3);
    swift_beginAccess();
    v109 = v9[5].i64[1];
    v110 = v109 + 64;
    v111 = 1 << *(v109 + 32);
    v112 = -1;
    if (v111 < 64)
    {
      v112 = ~(-1 << v111);
    }

    v113 = v112 & *(v109 + 64);
    v169 = (v111 + 63) >> 6;
    v171 = (v191 + 16);
    v170 = v191 + 32;
    v179 = (v191 + 8);
    v176 = v109;

    v114 = 0;
    v115 = INFINITY;
    v116 = INFINITY;
    v117 = INFINITY;
    v118 = INFINITY;
    v119 = v184;
    v120 = v183;
    v121 = v178;
    v122 = v175;
    v177 = v110;
    while (v113)
    {
      v123 = v114;
LABEL_54:
      v126 = __clz(__rbit64(v113));
      v113 &= v113 - 1;
      v127 = v126 | (v123 << 6);
      v128 = v176;
      v129 = v191;
      v130 = v190;
      v131 = v194;
      (*(v191 + 16))(v190, *(v176 + 48) + *(v191 + 72) * v127, v194);
      v132 = *(v128 + 56) + *(v174 + 72) * v127;
      v133 = v172;
      sub_24608DEA4(v132, v172, type metadata accessor for OCObjectCentricPoseNode);
      v134 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
      v135 = *(v134 + 48);
      v136 = *(v129 + 32);
      v122 = v175;
      v136(v175, v130, v131);
      sub_24608DF0C(v133, v122 + v135, type metadata accessor for OCObjectCentricPoseNode);
      (*(*(v134 - 8) + 56))(v122, 0, 1, v134);
      v119 = v184;
      v120 = v183;
      v121 = v178;
LABEL_55:
      sub_245FC5914(v122, v121, &qword_27EE3B1D0, &qword_24609B698);
      v137 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
      if ((*(*(v137 - 8) + 48))(v121, 1, v137) == 1)
      {

        return;
      }

      sub_24608DF0C(v121 + *(v137 + 48), v120, type metadata accessor for OCObjectCentricPoseNode);
      v138 = v119[9];
      v139 = (v120 + v119[8]);
      v140 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, COERCE_FLOAT(*v139->f32)), v182, *v139, 1), v181, *v139->f32, 2), v180, *v139->f32, 3);
      v141 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, COERCE_FLOAT(*v139[2].f32)), v182, v139[2], 1), v181, *v139[2].f32, 2), v180, *v139[2].f32, 3);
      v142 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, COERCE_FLOAT(*v139[4].f32)), v182, v139[4], 1), v181, *v139[4].f32, 2), v180, *v139[4].f32, 3);
      v143 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v189, COERCE_FLOAT(*v139[6].f32)), v182, v139[6], 1), v181, *v139[6].f32, 2), v180, *v139[6].f32, 3);
      v144 = *(v120 + v138 + 48);
      v145 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*(v120 + v138))), v141, *(v120 + v138), 1), v142, *(v120 + v138), 2), v143, *(v120 + v138), 3);
      v146 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*(v120 + v138 + 16))), v141, *(v120 + v138 + 16), 1), v142, *(v120 + v138 + 16), 2), v143, *(v120 + v138 + 16), 3);
      v147 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, COERCE_FLOAT(*(v120 + v138 + 32))), v141, *(v120 + v138 + 32), 1), v142, *(v120 + v138 + 32), 2), v143, *(v120 + v138 + 32), 3);
      LOBYTE(v205) = 1;
      v204 = 1;
      v203 = 1;
      v202 = 1;
      LODWORD(v195) = 0;
      BYTE4(v195) = 1;
      v196 = 0.0;
      v197 = 1;
      v198 = 0.0;
      v199 = 1;
      v200 = 0.0;
      v201 = 1;
      if ((v193)(&v195, v185, v186, v187, v188, v145, v146, v147, vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v140, v144.f32[0]), v141, *v144.f32, 1), v142, v144, 2), v143, v144, 3)))
      {
        sub_245FD01FC(v120, type metadata accessor for OCObjectCentricPoseNode);

        (*v179)(v121, v194);
        return;
      }

      v148 = *(v120 + v119[5]);
      if ((v195 & 0x100000000) != 0)
      {
        v110 = v177;
      }

      else
      {
        v110 = v177;
        if ((v197 & 1) == 0)
        {
          v149 = v196;
          v150 = *&v195;
          if (*&v195 < v118)
          {
            v151 = v173;
            *v173 = v195;
            v151[1] = v149;
            v118 = v150;
            *(v151 + 1) = v148;
          }

          if (v149 < v117)
          {
            v152 = v173;
            v173[4] = v149;
            v152[5] = v150;
            v117 = v149;
            *(v152 + 3) = v148;
          }
        }
      }

      if (v201 & 1) != 0 || (v199)
      {
        sub_245FD01FC(v120, type metadata accessor for OCObjectCentricPoseNode);
      }

      else
      {
        v153 = v200;
        v154 = sub_246021418(v198, -1.0, 1.0);
        v155 = acosf(v154);
        sub_245FD01FC(v120, type metadata accessor for OCObjectCentricPoseNode);
        if (v116 < v155)
        {
          v156 = v173;
          v173[8] = v155;
          v156[9] = v153;
          v116 = v155;
          *(v156 + 5) = v148;
        }

        if (v153 < v115)
        {
          v157 = v173;
          v173[12] = v153;
          v157[13] = v155;
          v115 = v153;
          *(v157 + 7) = v148;
        }
      }

      (*v179)(v121, v194);
    }

    if (v169 <= v114 + 1)
    {
      v124 = v114 + 1;
    }

    else
    {
      v124 = v169;
    }

    v125 = v124 - 1;
    while (1)
    {
      v123 = v114 + 1;
      if (__OFADD__(v114, 1))
      {
        break;
      }

      if (v123 >= v169)
      {
        v158 = sub_245F8E624(&unk_27EE3B1E0, &unk_24609B6A8);
        (*(*(v158 - 8) + 56))(v122, 1, 1, v158);
        v113 = 0;
        v114 = v125;
        goto LABEL_55;
      }

      v113 = *(v110 + 8 * v123);
      ++v114;
      if (v113)
      {
        v114 = v123;
        goto LABEL_54;
      }
    }
  }

  __break(1u);
}

uint64_t sub_24608A16C()
{

  v1 = OBJC_IVAR____TtC6CoreOC24OCObjectCentricPoseGraph_vioClosenessCheckLogTime;
  v2 = sub_2460917D4();
  (*(*(v2 - 8) + 8))(v0 + v1, v2);

  return swift_deallocClassInstance();
}

void sub_24608A26C(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 44);
  *(a2 + 44) = v2;
  sub_24608A2AC(v3);
}

void sub_24608A29C(char a1)
{
  v2 = *(v1 + 44);
  *(v1 + 44) = a1;
  sub_24608A2AC(v2);
}

void sub_24608A2AC(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 44) == 1)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture ON.", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608A428(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 45);
  *(a2 + 45) = v2;
  sub_24608A468(v3);
}

void sub_24608A458(char a1)
{
  v2 = *(v1 + 45);
  *(v1 + 45) = a1;
  sub_24608A468(v2);
}

void sub_24608A468(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 45) == 1)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture OFF: Object out of FOV!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608A5E4(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 46);
  *(a2 + 46) = v2;
  sub_24608A624(v3);
}

void sub_24608A614(char a1)
{
  v2 = *(v1 + 46);
  *(v1 + 46) = a1;
  sub_24608A624(v2);
}

void sub_24608A624(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) == 0 && *(v1 + 46) == 1)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture OFF: Too dark!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608A7A0(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 47);
  *(a2 + 47) = v2;
  sub_24608A7E0(v3);
}

void sub_24608A7D0(char a1)
{
  v2 = *(v1 + 47);
  *(v1 + 47) = a1;
  sub_24608A7E0(v2);
}

void sub_24608A7E0(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 47) & 1) == 0)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture OFF: Pose graph proximity check failed!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608A958(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 48);
  *(a2 + 48) = v2;
  sub_24608A998(v3);
}

void sub_24608A988(char a1)
{
  v2 = *(v1 + 48);
  *(v1 + 48) = a1;
  sub_24608A998(v2);
}

void sub_24608A998(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 48) & 1) == 0)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture OFF: Camera not in good status!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608AB10(char *a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *(a2 + 49);
  *(a2 + 49) = v2;
  sub_24608AB50(v3);
}

void sub_24608AB40(char a1)
{
  v2 = *(v1 + 49);
  *(v1 + 49) = a1;
  sub_24608AB50(v2);
}

void sub_24608AB50(char a1)
{
  v3 = sub_2460918F4();
  v4 = *(v3 - 8);
  MEMORY[0x28223BE20](v3);
  v6 = &v11 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((a1 & 1) != 0 && (*(v1 + 49) & 1) == 0)
  {
    v7 = sub_245FA3174();
    (*(v4 + 16))(v6, v7, v3);
    v8 = sub_2460918D4();
    v9 = sub_246091FC4();
    if (os_log_type_enabled(v8, v9))
    {
      v10 = swift_slowAlloc();
      *v10 = 0;
      _os_log_impl(&dword_245F8A000, v8, v9, "Capture Manager : AutoCapture OFF: IMU detected fast motion!", v10, 2u);
      MEMORY[0x24C1989D0](v10, -1, -1);
    }

    (*(v4 + 8))(v6, v3);
  }
}

void sub_24608ACFC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if (*(v0 + 50) == 1)
  {
    v5 = sub_245FA3174();
    (*(v2 + 16))(v4, v5, v1);
    v6 = sub_2460918D4();
    v7 = sub_246091FC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245F8A000, v6, v7, "Capture Manager : AutoCapture-Post accepted.", v8, 2u);
      MEMORY[0x24C1989D0](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

void sub_24608AEAC()
{
  v1 = sub_2460918F4();
  v2 = *(v1 - 8);
  MEMORY[0x28223BE20](v1);
  v4 = &v9 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  if ((*(v0 + 52) & 1) == 0)
  {
    v5 = sub_245FA3174();
    (*(v2 + 16))(v4, v5, v1);
    v6 = sub_2460918D4();
    v7 = sub_246091FC4();
    if (os_log_type_enabled(v6, v7))
    {
      v8 = swift_slowAlloc();
      *v8 = 0;
      _os_log_impl(&dword_245F8A000, v6, v7, "Capture Manager : AutoCapture-Post rejected: Blur score above threshold!", v8, 2u);
      MEMORY[0x24C1989D0](v8, -1, -1);
    }

    (*(v2 + 8))(v4, v1);
  }
}

Swift::String __swiftcall CaptureFactors.preCaptureFactorsDescription()()
{
  v1 = *v0;
  v2 = *(v0 + 8);
  v3 = *(v0 + 16);
  v4 = *(v0 + 44);
  v5 = *(v0 + 45);
  v6 = *(v0 + 46);
  v31 = *(v0 + 47);
  v32 = *(v0 + 48);
  v33 = *(v0 + 49);
  v35 = 0xD000000000000015;
  v36 = 0x80000002460A4D10;
  v7 = MEMORY[0x277D83B08];
  if (*v0 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v8 = swift_allocObject();
    *(v8 + 16) = xmmword_246096460;
    *(v8 + 56) = MEMORY[0x277D83A90];
    *(v8 + 64) = v7;
    *(v8 + 32) = v1;
    v9 = sub_246091C24();
    strcpy(v34, "Exposure = ");
    HIDWORD(v34[1]) = -352321536;
    MEMORY[0x24C196640](v9);

    MEMORY[0x24C196640](2675, 0xE200000000000000);

    MEMORY[0x24C196640](v34[0], v34[1]);
  }

  if (v2 >= 1)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v10 = swift_allocObject();
    v11 = MEMORY[0x277D83B88];
    *(v10 + 16) = xmmword_246096460;
    v12 = MEMORY[0x277D83C10];
    *(v10 + 56) = v11;
    *(v10 + 64) = v12;
    *(v10 + 32) = v2;
    v13 = sub_246091C24();
    strcpy(v34, "IspDGain = ");
    HIDWORD(v34[1]) = -352321536;
    MEMORY[0x24C196640](v13);

    MEMORY[0x24C196640](10, 0xE100000000000000);

    MEMORY[0x24C196640](v34[0], v34[1]);
  }

  if (v3 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v14 = swift_allocObject();
    *(v14 + 16) = xmmword_246096460;
    *(v14 + 56) = MEMORY[0x277D83A90];
    *(v14 + 64) = v7;
    *(v14 + 32) = (v3 / 3.1416) * 180.0;
    v15 = sub_246091C24();
    MEMORY[0x24C196640](v15);

    MEMORY[0x24C196640](0xA732F7367656420, 0xE800000000000000);

    MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A4D90);
  }

  if (v4)
  {
    v16 = 20047;
  }

  else
  {
    v16 = 4605519;
  }

  strcpy(v34, "AutoCapture: ");
  HIWORD(v34[1]) = -4864;
  if (v4)
  {
    v17 = 0xE200000000000000;
  }

  else
  {
    v17 = 0xE300000000000000;
  }

  MEMORY[0x24C196640](v16, v17);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v5)
  {
    v18 = 28494;
  }

  else
  {
    v18 = 7562585;
  }

  if (v5)
  {
    v19 = 0xE200000000000000;
  }

  else
  {
    v19 = 0xE300000000000000;
  }

  strcpy(v34, "Not outOfFOV: ");
  HIBYTE(v34[1]) = -18;
  MEMORY[0x24C196640](v18, v19);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v6)
  {
    v20 = 28494;
  }

  else
  {
    v20 = 7562585;
  }

  if (v6)
  {
    v21 = 0xE200000000000000;
  }

  else
  {
    v21 = 0xE300000000000000;
  }

  strcpy(v34, "Not tooDark: ");
  HIWORD(v34[1]) = -4864;
  MEMORY[0x24C196640](v20, v21);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v34[0], v34[1]);

  if (v31)
  {
    v22 = 7562585;
  }

  else
  {
    v22 = 28494;
  }

  if (v31)
  {
    v23 = 0xE300000000000000;
  }

  else
  {
    v23 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v22, v23);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000010, 0x80000002460A4D30);

  if (v32)
  {
    v24 = 7562585;
  }

  else
  {
    v24 = 28494;
  }

  if (v32)
  {
    v25 = 0xE300000000000000;
  }

  else
  {
    v25 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v24, v25);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000014, 0x80000002460A4D50);

  if (v33)
  {
    v26 = 7562585;
  }

  else
  {
    v26 = 28494;
  }

  if (v33)
  {
    v27 = 0xE300000000000000;
  }

  else
  {
    v27 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v26, v27);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A4D70);

  v28 = v35;
  v29 = v36;
  result._object = v29;
  result._countAndFlagsBits = v28;
  return result;
}

Swift::String __swiftcall CaptureFactors.postCaptureFactorsDescription()()
{
  v1 = *(v0 + 20);
  v2 = *(v0 + 24);
  v4 = *(v0 + 32);
  v3 = *(v0 + 36);
  v5 = *(v0 + 40);
  v6 = *(v0 + 50);
  v7 = *(v0 + 52);
  v34 = 0xD000000000000016;
  v35 = 0x80000002460A4DB0;
  v8 = MEMORY[0x277D83A90];
  v9 = MEMORY[0x277D83B08];
  if (v5 > 0.0)
  {
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v10 = swift_allocObject();
    *(v10 + 16) = xmmword_246096460;
    *(v10 + 56) = v8;
    *(v10 + 64) = v9;
    *(v10 + 32) = v5;
    v11 = sub_246091C24();
    MEMORY[0x24C196640](v11);

    MEMORY[0x24C196640](10, 0xE100000000000000);

    MEMORY[0x24C196640](0xD000000000000012, 0x80000002460A4E10);
  }

  if (v1 <= 0.0 || v2 < 1)
  {
    if (v4 > 0.0)
    {
      goto LABEL_22;
    }

LABEL_9:
    if (v3 <= 0.0)
    {
      goto LABEL_11;
    }

    goto LABEL_10;
  }

  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v20 = swift_allocObject();
  *(v20 + 16) = xmmword_246096460;
  *(v20 + 56) = v8;
  *(v20 + 64) = v9;
  *(v20 + 32) = v1;
  v21 = sub_246091C24();
  strcpy(v33, "Exposure = ");
  HIDWORD(v33[1]) = -352321536;
  MEMORY[0x24C196640](v21);

  MEMORY[0x24C196640](0x3D204F5349202C73, 0xE900000000000020);

  v22 = v33[0];
  v23 = v33[1];
  v24 = swift_allocObject();
  v25 = MEMORY[0x277D83B88];
  *(v24 + 16) = xmmword_246096460;
  v26 = MEMORY[0x277D83C10];
  *(v24 + 56) = v25;
  *(v24 + 64) = v26;
  *(v24 + 32) = v2;
  v27 = sub_246091C24();
  v29 = v28;

  MEMORY[0x24C196640](v27, v29);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](v22, v23);

  if (v4 <= 0.0)
  {
    goto LABEL_9;
  }

LABEL_22:
  sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
  v30 = swift_allocObject();
  *(v30 + 16) = xmmword_246096460;
  *(v30 + 56) = v8;
  *(v30 + 64) = v9;
  *(v30 + 32) = (v4 / 3.1416) * 180.0;
  v31 = sub_246091C24();
  MEMORY[0x24C196640](v31);

  MEMORY[0x24C196640](0xA732F7367656420, 0xE800000000000000);

  MEMORY[0x24C196640](0xD000000000000011, 0x80000002460A4D90);

  if (v3 > 0.0)
  {
LABEL_10:
    sub_245F8E624(&qword_27EE39ED8, &unk_246098D00);
    v13 = swift_allocObject();
    *(v13 + 16) = xmmword_246096460;
    *(v13 + 56) = v8;
    *(v13 + 64) = v9;
    *(v13 + 32) = v3;
    v14 = sub_246091C24();
    strcpy(v33, "Blur score = ");
    HIWORD(v33[1]) = -4864;
    MEMORY[0x24C196640](v14);

    MEMORY[0x24C196640](0xA736C6578697020, 0xE800000000000000);

    MEMORY[0x24C196640](v33[0], v33[1]);
  }

LABEL_11:
  if (v6)
  {
    v15 = 0x6465747065636341;
  }

  else
  {
    v15 = 0x64657463656A6552;
  }

  MEMORY[0x24C196640](v15, 0xE800000000000000);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000018, 0x80000002460A4DD0);

  if (v7)
  {
    v16 = 7562585;
  }

  else
  {
    v16 = 28494;
  }

  if (v7)
  {
    v17 = 0xE300000000000000;
  }

  else
  {
    v17 = 0xE200000000000000;
  }

  MEMORY[0x24C196640](v16, v17);

  MEMORY[0x24C196640](10, 0xE100000000000000);

  MEMORY[0x24C196640](0xD000000000000013, 0x80000002460A4DF0);

  v18 = v34;
  v19 = v35;
  result._object = v19;
  result._countAndFlagsBits = v18;
  return result;
}

double sub_24608BC2C@<D0>(uint64_t a1@<X8>)
{
  *a1 = -1082130432;
  *(a1 + 8) = -1;
  __asm { FMOV            V0.2S, #-1.0 }

  *(a1 + 16) = _D0;
  *(a1 + 24) = -1;
  *(a1 + 32) = _D0;
  *(a1 + 40) = -1082130432;
  *&result = 0x10101000000;
  *(a1 + 44) = 0x10101000000;
  *(a1 + 52) = 0;
  return result;
}

char *sub_24608BC64()
{
  sub_246035FB0();
  sub_245FCFD24();
  if (sub_246092184())
  {
    v0 = sub_245FF809C(0, 1, 1, MEMORY[0x277D84F90]);
    v2 = *(v0 + 2);
    v1 = *(v0 + 3);
    if (v2 >= v1 >> 1)
    {
      v0 = sub_245FF809C((v1 > 1), v2 + 1, 1, v0);
    }

    *(v0 + 2) = v2 + 1;
    v3 = &v0[16 * v2];
    *(v3 + 4) = 0x747361466F6F54;
    *(v3 + 5) = 0xE700000000000000;
  }

  else
  {
    v0 = MEMORY[0x277D84F90];
  }

  sub_246035FC8();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_245FF809C(0, *(v0 + 2) + 1, 1, v0);
    }

    v5 = *(v0 + 2);
    v4 = *(v0 + 3);
    if (v5 >= v4 >> 1)
    {
      v0 = sub_245FF809C((v4 > 1), v5 + 1, 1, v0);
    }

    *(v0 + 2) = v5 + 1;
    v6 = &v0[16 * v5];
    *(v6 + 4) = 0x746867694C776F4CLL;
    *(v6 + 5) = 0xE800000000000000;
  }

  sub_246036028();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_245FF809C(0, *(v0 + 2) + 1, 1, v0);
    }

    v8 = *(v0 + 2);
    v7 = *(v0 + 3);
    if (v8 >= v7 >> 1)
    {
      v0 = sub_245FF809C((v7 > 1), v8 + 1, 1, v0);
    }

    *(v0 + 2) = v8 + 1;
    v9 = &v0[16 * v8];
    *(v9 + 4) = 0x6B7261446F6F54;
    *(v9 + 5) = 0xE700000000000000;
  }

  sub_246035FE0();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_245FF809C(0, *(v0 + 2) + 1, 1, v0);
    }

    v11 = *(v0 + 2);
    v10 = *(v0 + 3);
    if (v11 >= v10 >> 1)
    {
      v0 = sub_245FF809C((v10 > 1), v11 + 1, 1, v0);
    }

    *(v0 + 2) = v11 + 1;
    v12 = &v0[16 * v11];
    *(v12 + 4) = 0x7261466F6F54;
    *(v12 + 5) = 0xE600000000000000;
  }

  sub_246035FF8();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_245FF809C(0, *(v0 + 2) + 1, 1, v0);
    }

    v14 = *(v0 + 2);
    v13 = *(v0 + 3);
    if (v14 >= v13 >> 1)
    {
      v0 = sub_245FF809C((v13 > 1), v14 + 1, 1, v0);
    }

    *(v0 + 2) = v14 + 1;
    v15 = &v0[16 * v14];
    *(v15 + 4) = 0x65736F6C436F6F54;
    *(v15 + 5) = 0xE800000000000000;
  }

  sub_246036010();
  if (sub_246092184())
  {
    if ((swift_isUniquelyReferenced_nonNull_native() & 1) == 0)
    {
      v0 = sub_245FF809C(0, *(v0 + 2) + 1, 1, v0);
    }

    v17 = *(v0 + 2);
    v16 = *(v0 + 3);
    if (v17 >= v16 >> 1)
    {
      v0 = sub_245FF809C((v16 > 1), v17 + 1, 1, v0);
    }

    *(v0 + 2) = v17 + 1;
    v18 = &v0[16 * v17];
    strcpy(v18 + 32, "ObjectOutOfFOV");
    v18[47] = -18;
  }

  return v0;
}

uint64_t sub_24608C0D4@<X0>(uint64_t a1@<X0>, uint64_t (*a2)(void)@<X1>, uint64_t (*a3)(void)@<X2>, uint64_t (*a4)(void)@<X3>, void (*a5)(void)@<X4>, uint64_t a6@<X8>)
{
  v11 = v6;
  v13 = sub_245FC1BDC(a1);
  if (v14)
  {
    v15 = v13;
    isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
    v17 = *v6;
    v30 = *v11;
    if (!isUniquelyReferenced_nonNull_native)
    {
      a5();
      v17 = v30;
    }

    v18 = *(v17 + 48);
    v19 = sub_246091834();
    v20 = v15;
    (*(*(v19 - 8) + 8))(v18 + *(*(v19 - 8) + 72) * v15, v19);
    v21 = *(v17 + 56);
    v22 = a2(0);
    v29 = *(v22 - 8);
    sub_24608DF0C(v21 + *(v29 + 72) * v20, a6, a3);
    sub_24608CBAC(v20, v17, a4);
    *v11 = v17;
    v23 = *(v29 + 56);
    v24 = a6;
    v25 = 0;
    v26 = v22;
  }

  else
  {
    v27 = a2(0);
    v23 = *(*(v27 - 8) + 56);
    v26 = v27;
    v24 = a6;
    v25 = 1;
  }

  return v23(v24, v25, 1, v26);
}

uint64_t sub_24608C294(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for OCObjectCentricPoseNode(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245F8E624(&unk_27EE3B210, "p&");
  v43 = v4;
  result = sub_246092374();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24608DF0C(v27 + v28 * v24, v47, type metadata accessor for OCObjectCentricPoseNode);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24608DEA4(v29 + v28 * v24, v47, type metadata accessor for OCObjectCentricPoseNode);
      }

      sub_24608E8E8(&qword_27EE3A2D8, MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24608DF0C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for OCObjectCentricPoseNode);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

uint64_t sub_24608C720(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v4 = a2;
  v5 = type metadata accessor for VIOPoseNode(0);
  v42 = *(v5 - 8);
  MEMORY[0x28223BE20](v5 - 8);
  v47 = &v38 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = sub_246091834();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v46 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = *v2;
  sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
  v43 = v4;
  result = sub_246092374();
  v12 = result;
  if (*(v10 + 16))
  {
    v38 = v2;
    v13 = 0;
    v14 = (v10 + 64);
    v15 = 1 << *(v10 + 32);
    if (v15 < 64)
    {
      v16 = ~(-1 << v15);
    }

    else
    {
      v16 = -1;
    }

    v17 = v16 & *(v10 + 64);
    v18 = (v15 + 63) >> 6;
    v39 = (v8 + 16);
    v40 = v8;
    v44 = (v8 + 32);
    v19 = result + 64;
    v41 = v10;
    while (v17)
    {
      v21 = __clz(__rbit64(v17));
      v17 &= v17 - 1;
LABEL_15:
      v24 = v21 | (v13 << 6);
      v25 = *(v10 + 48);
      v45 = *(v8 + 72);
      v26 = v25 + v45 * v24;
      if (v43)
      {
        (*v44)(v46, v26, v7);
        v27 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24608DF0C(v27 + v28 * v24, v47, type metadata accessor for VIOPoseNode);
      }

      else
      {
        (*v39)(v46, v26, v7);
        v29 = *(v10 + 56);
        v28 = *(v42 + 72);
        sub_24608DEA4(v29 + v28 * v24, v47, type metadata accessor for VIOPoseNode);
      }

      sub_24608E8E8(&qword_27EE3A2D8, MEMORY[0x277CC9600]);
      result = sub_246091B84();
      v30 = -1 << *(v12 + 32);
      v31 = result & ~v30;
      v32 = v31 >> 6;
      if (((-1 << v31) & ~*(v19 + 8 * (v31 >> 6))) == 0)
      {
        v33 = 0;
        v34 = (63 - v30) >> 6;
        while (++v32 != v34 || (v33 & 1) == 0)
        {
          v35 = v32 == v34;
          if (v32 == v34)
          {
            v32 = 0;
          }

          v33 |= v35;
          v36 = *(v19 + 8 * v32);
          if (v36 != -1)
          {
            v20 = __clz(__rbit64(~v36)) + (v32 << 6);
            goto LABEL_7;
          }
        }

LABEL_36:
        __break(1u);
        return result;
      }

      v20 = __clz(__rbit64((-1 << v31) & ~*(v19 + 8 * (v31 >> 6)))) | v31 & 0x7FFFFFFFFFFFFFC0;
LABEL_7:
      *(v19 + ((v20 >> 3) & 0x1FFFFFFFFFFFFFF8)) |= 1 << v20;
      (*v44)((*(v12 + 48) + v45 * v20), v46, v7);
      result = sub_24608DF0C(v47, *(v12 + 56) + v28 * v20, type metadata accessor for VIOPoseNode);
      ++*(v12 + 16);
      v8 = v40;
      v10 = v41;
    }

    v22 = v13;
    while (1)
    {
      v13 = v22 + 1;
      if (__OFADD__(v22, 1))
      {
        __break(1u);
        goto LABEL_36;
      }

      if (v13 >= v18)
      {
        break;
      }

      v23 = v14[v13];
      ++v22;
      if (v23)
      {
        v21 = __clz(__rbit64(v23));
        v17 = (v23 - 1) & v23;
        goto LABEL_15;
      }
    }

    if ((v43 & 1) == 0)
    {

      v3 = v38;
      goto LABEL_34;
    }

    v37 = 1 << *(v10 + 32);
    v3 = v38;
    if (v37 >= 64)
    {
      bzero(v14, ((v37 + 63) >> 3) & 0x1FFFFFFFFFFFFFF8);
    }

    else
    {
      *v14 = -1 << v37;
    }

    *(v10 + 16) = 0;
  }

LABEL_34:
  *v3 = v12;
  return result;
}

void sub_24608CBAC(int64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v37 = a3;
  v5 = sub_246091834();
  v6 = *(v5 - 8);
  MEMORY[0x28223BE20](v5);
  v8 = &v37 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = a2 + 64;
  v10 = -1 << *(a2 + 32);
  v11 = (a1 + 1) & ~v10;
  if ((*(a2 + 64 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11))
  {
    v42 = a2;
    v12 = ~v10;
    v13 = sub_2460921C4();
    v14 = v12;
    a2 = v42;
    v41 = (v13 + 1) & v14;
    v16 = *(v6 + 16);
    v15 = v6 + 16;
    v39 = v9;
    v40 = v16;
    v17 = *(v15 + 56);
    v38 = (v15 - 8);
    do
    {
      v18 = v17;
      v19 = v17 * v11;
      v20 = v14;
      v21 = v15;
      v40(v8, *(a2 + 48) + v17 * v11, v5);
      sub_24608E8E8(&qword_27EE3A2D8, MEMORY[0x277CC9600]);
      v22 = sub_246091B84();
      (*v38)(v8, v5);
      v14 = v20;
      v23 = v22 & v20;
      if (a1 >= v41)
      {
        if (v23 >= v41 && a1 >= v23)
        {
LABEL_15:
          v15 = v21;
          if (v18 * a1 < v19 || *(v42 + 48) + v18 * a1 >= (*(v42 + 48) + v19 + v18))
          {
            swift_arrayInitWithTakeFrontToBack();
          }

          else if (v18 * a1 != v19)
          {
            swift_arrayInitWithTakeBackToFront();
          }

          a2 = v42;
          v26 = *(v42 + 56);
          v27 = *(*(v37(0) - 8) + 72);
          v28 = v27 * a1;
          v29 = v26 + v27 * a1;
          v30 = v27 * v11;
          v31 = v26 + v27 * v11 + v27;
          if (v28 < v30 || v29 >= v31)
          {
            swift_arrayInitWithTakeFrontToBack();
            a1 = v11;
            v9 = v39;
            v14 = v20;
          }

          else
          {
            a1 = v11;
            v33 = v28 == v30;
            v9 = v39;
            v14 = v20;
            if (!v33)
            {
              swift_arrayInitWithTakeBackToFront();
              v14 = v20;
              a1 = v11;
            }
          }

          goto LABEL_4;
        }
      }

      else if (v23 >= v41 || a1 >= v23)
      {
        goto LABEL_15;
      }

      v15 = v21;
      v9 = v39;
      a2 = v42;
LABEL_4:
      v11 = (v11 + 1) & v14;
      v17 = v18;
    }

    while (((*(v9 + ((v11 >> 3) & 0xFFFFFFFFFFFFFF8)) >> v11) & 1) != 0);
  }

  *(v9 + ((a1 >> 3) & 0x1FFFFFFFFFFFFFF8)) &= (-1 << a1) - 1;
  v34 = *(a2 + 16);
  v35 = __OFSUB__(v34, 1);
  v36 = v34 - 1;
  if (v35)
  {
    __break(1u);
  }

  else
  {
    *(a2 + 16) = v36;
    ++*(a2 + 36);
  }
}

uint64_t sub_24608CEE8(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for OCObjectCentricPoseNode(0);
      return sub_24608E880(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for OCObjectCentricPoseNode);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24608D3D4();
    goto LABEL_7;
  }

  sub_24608C294(v17, a3 & 1);
  v24 = sub_245FC1BDC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24608D2E0(v14, v11, a1, v20, type metadata accessor for OCObjectCentricPoseNode, type metadata accessor for OCObjectCentricPoseNode);
}

uint64_t sub_24608D0E4(uint64_t a1, uint64_t a2, char a3)
{
  v4 = v3;
  v8 = sub_246091834();
  v9 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v11 = &v26 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = *v3;
  v14 = sub_245FC1BDC(a2);
  v15 = v12[2];
  v16 = (v13 & 1) == 0;
  v17 = v15 + v16;
  if (__OFADD__(v15, v16))
  {
    __break(1u);
    goto LABEL_14;
  }

  v18 = v13;
  v19 = v12[3];
  if (v19 >= v17 && (a3 & 1) != 0)
  {
LABEL_7:
    v20 = *v4;
    if (v18)
    {
LABEL_8:
      v21 = v20[7];
      v22 = type metadata accessor for VIOPoseNode(0);
      return sub_24608E880(a1, v21 + *(*(v22 - 8) + 72) * v14, type metadata accessor for VIOPoseNode);
    }

    goto LABEL_11;
  }

  if (v19 >= v17 && (a3 & 1) == 0)
  {
    sub_24608D700();
    goto LABEL_7;
  }

  sub_24608C720(v17, a3 & 1);
  v24 = sub_245FC1BDC(a2);
  if ((v18 & 1) != (v25 & 1))
  {
LABEL_14:
    result = sub_246092424();
    __break(1u);
    return result;
  }

  v14 = v24;
  v20 = *v4;
  if (v18)
  {
    goto LABEL_8;
  }

LABEL_11:
  (*(v9 + 16))(v11, a2, v8);
  return sub_24608D2E0(v14, v11, a1, v20, type metadata accessor for VIOPoseNode, type metadata accessor for VIOPoseNode);
}

uint64_t sub_24608D2E0(unint64_t a1, uint64_t a2, uint64_t a3, void *a4, uint64_t (*a5)(void), uint64_t (*a6)(void))
{
  a4[(a1 >> 6) + 8] |= 1 << a1;
  v12 = a4[6];
  v13 = sub_246091834();
  (*(*(v13 - 8) + 32))(v12 + *(*(v13 - 8) + 72) * a1, a2, v13);
  v14 = a4[7];
  v15 = a5(0);
  result = sub_24608DF0C(a3, v14 + *(*(v15 - 8) + 72) * a1, a6);
  v17 = a4[2];
  v18 = __OFADD__(v17, 1);
  v19 = v17 + 1;
  if (v18)
  {
    __break(1u);
  }

  else
  {
    a4[2] = v19;
  }

  return result;
}

char *sub_24608D3D4()
{
  v1 = v0;
  v2 = type metadata accessor for OCObjectCentricPoseNode(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091834();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3B210, "p&");
  v5 = *v0;
  v6 = sub_246092364();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24608DEA4(*(v5 + 56) + v26, v35, type metadata accessor for OCObjectCentricPoseNode);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24608DF0C(v25, *(v27 + 56) + v26, type metadata accessor for OCObjectCentricPoseNode);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

char *sub_24608D700()
{
  v1 = v0;
  v2 = type metadata accessor for VIOPoseNode(0);
  v36 = *(v2 - 8);
  MEMORY[0x28223BE20](v2 - 8);
  v35 = &v28 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v34 = sub_246091834();
  v37 = *(v34 - 8);
  MEMORY[0x28223BE20](v34);
  v33 = &v28 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
  v5 = *v0;
  v6 = sub_246092364();
  v7 = v6;
  if (*(v5 + 16))
  {
    result = (v6 + 64);
    v9 = (v5 + 64);
    v10 = ((1 << *(v7 + 32)) + 63) >> 6;
    v29 = v1;
    v30 = v5 + 64;
    if (v7 != v5 || result >= &v9[8 * v10])
    {
      result = memmove(result, v9, 8 * v10);
    }

    v11 = 0;
    v12 = *(v5 + 16);
    v38 = v7;
    *(v7 + 16) = v12;
    v13 = 1 << *(v5 + 32);
    v14 = -1;
    if (v13 < 64)
    {
      v14 = ~(-1 << v13);
    }

    v15 = v14 & *(v5 + 64);
    v16 = (v13 + 63) >> 6;
    v31 = v37 + 32;
    v32 = v37 + 16;
    v17 = v33;
    if (v15)
    {
      do
      {
        v18 = __clz(__rbit64(v15));
        v39 = (v15 - 1) & v15;
LABEL_14:
        v21 = v18 | (v11 << 6);
        v22 = v37;
        v23 = *(v37 + 72) * v21;
        v24 = v34;
        (*(v37 + 16))(v17, *(v5 + 48) + v23, v34);
        v25 = v35;
        v26 = *(v36 + 72) * v21;
        sub_24608DEA4(*(v5 + 56) + v26, v35, type metadata accessor for VIOPoseNode);
        v27 = v38;
        (*(v22 + 32))(*(v38 + 48) + v23, v17, v24);
        result = sub_24608DF0C(v25, *(v27 + 56) + v26, type metadata accessor for VIOPoseNode);
        v15 = v39;
      }

      while (v39);
    }

    v19 = v11;
    v7 = v38;
    while (1)
    {
      v11 = v19 + 1;
      if (__OFADD__(v19, 1))
      {
        break;
      }

      if (v11 >= v16)
      {

        v1 = v29;
        goto LABEL_18;
      }

      v20 = *(v30 + 8 * v11);
      ++v19;
      if (v20)
      {
        v18 = __clz(__rbit64(v20));
        v39 = (v20 - 1) & v20;
        goto LABEL_14;
      }
    }

    __break(1u);
  }

  else
  {

LABEL_18:
    *v1 = v7;
  }

  return result;
}

unint64_t sub_24608DA6C(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3B238, &qword_24609BAE8);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&unk_27EE3B210, "p&");
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3B238, &qword_24609BAE8);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for OCObjectCentricPoseNode(0);
      result = sub_24608DF0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for OCObjectCentricPoseNode);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

unint64_t sub_24608DC88(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3B230, &qword_24609BAE0);
  v3 = *(v2 - 8);
  MEMORY[0x28223BE20](v2);
  v5 = &v21 - v4;
  v6 = *(a1 + 16);
  if (v6)
  {
    sub_245F8E624(&unk_27EE3B220, &qword_24609BAD8);
    v7 = sub_246092384();
    v8 = *(v2 + 48);
    v9 = a1 + ((*(v3 + 80) + 32) & ~*(v3 + 80));
    v10 = *(v3 + 72);

    while (1)
    {
      sub_245F8E7A4(v9, v5, &qword_27EE3B230, &qword_24609BAE0);
      result = sub_245FC1BDC(v5);
      if (v12)
      {
        break;
      }

      v13 = result;
      *(v7 + ((result >> 3) & 0x1FFFFFFFFFFFFFF8) + 64) |= 1 << result;
      v14 = v7[6];
      v15 = sub_246091834();
      (*(*(v15 - 8) + 32))(v14 + *(*(v15 - 8) + 72) * v13, v5, v15);
      v16 = v7[7];
      v17 = type metadata accessor for VIOPoseNode(0);
      result = sub_24608DF0C(&v5[v8], v16 + *(*(v17 - 8) + 72) * v13, type metadata accessor for VIOPoseNode);
      v18 = v7[2];
      v19 = __OFADD__(v18, 1);
      v20 = v18 + 1;
      if (v19)
      {
        goto LABEL_10;
      }

      v7[2] = v20;
      v9 += v10;
      if (!--v6)
      {

        return v7;
      }
    }

    __break(1u);
LABEL_10:
    __break(1u);
  }

  else
  {
    return MEMORY[0x277D84F98];
  }

  return result;
}

uint64_t sub_24608DEA4(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_24608DF0C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

__n128 sub_24608DF84(uint64_t a1, uint64_t a2)
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

uint64_t sub_24608DFA8(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 72))
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

uint64_t sub_24608DFF0(uint64_t result, int a2, int a3)
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
      *result = (a2 - 1);
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

uint64_t sub_24608E078(uint64_t *a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 80))
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

uint64_t sub_24608E0C0(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 72) = 0;
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 80) = 1;
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

    *(result + 80) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24608E12C(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 401))
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

uint64_t sub_24608E174(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 392) = 0;
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 400) = 0;
    *(result + 376) = 0u;
    *(result + 360) = 0u;
    *(result + 344) = 0u;
    *(result + 328) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 401) = 1;
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

    *(result + 401) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

uint64_t sub_24608E238(uint64_t a1, int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0 && *(a1 + 360))
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

uint64_t sub_24608E280(uint64_t result, int a2, int a3)
{
  if (a2 < 0)
  {
    *(result + 248) = 0u;
    *(result + 232) = 0u;
    *(result + 216) = 0u;
    *(result + 200) = 0u;
    *(result + 184) = 0u;
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
    *(result + 328) = 0u;
    *(result + 344) = 0u;
    *(result + 312) = 0u;
    *(result + 296) = 0u;
    *(result + 280) = 0u;
    *(result + 264) = 0u;
    *result = a2 & 0x7FFFFFFF;
    if (a3 < 0)
    {
      *(result + 360) = 1;
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

    *(result + 360) = 0;
    if (a2)
    {
      goto LABEL_8;
    }
  }

  return result;
}

void sub_24608E35C(uint64_t a1)
{
  sub_246091834();
  if (v1 <= 0x3F)
  {
    type metadata accessor for simd_float3x3(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

uint64_t sub_24608E41C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(*(v4 - 8) + 48);

  return v5(a1, a2, v4);
}

uint64_t sub_24608E49C(uint64_t a1, uint64_t a2)
{
  v4 = sub_246091834();
  v5 = *(*(v4 - 8) + 56);

  return v5(a1, a2, a2, v4);
}

void sub_24608E50C(uint64_t a1)
{
  sub_246091834();
  if (v1 <= 0x3F)
  {
    type metadata accessor for simd_float3x3(319);
    if (v2 <= 0x3F)
    {
      type metadata accessor for simd_float4x4(319);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

__n128 sub_24608E5B0(uint64_t a1, uint64_t a2)
{
  result = *a2;
  *(a1 + 13) = *(a2 + 13);
  *a1 = result;
  return result;
}

uint64_t sub_24608E5C4(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 29))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24608E5E4(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 8) = 0;
    *(result + 16) = 0;
    *(result + 28) = 0;
    *(result + 24) = 0;
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

  *(result + 29) = v3;
  return result;
}

__n128 sub_24608E628(uint64_t a1, uint64_t a2)
{
  *a1 = *a2;
  result = *(a2 + 16);
  v3 = *(a2 + 32);
  v4 = *(a2 + 48);
  *(a1 + 60) = *(a2 + 60);
  *(a1 + 32) = v3;
  *(a1 + 48) = v4;
  *(a1 + 16) = result;
  return result;
}

uint64_t sub_24608E64C(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 76))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_24608E66C(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0u;
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 72) = 0;
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

  *(result + 76) = v3;
  return result;
}

uint64_t sub_24608E6E4(uint64_t a1)
{
  result = sub_2460917D4();
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

__n128 sub_24608E7A8(uint64_t a1, uint64_t a2)
{
  result = *a2;
  v3 = *(a2 + 16);
  v4 = *(a2 + 32);
  *(a1 + 45) = *(a2 + 45);
  *(a1 + 16) = v3;
  *(a1 + 32) = v4;
  *a1 = result;
  return result;
}

uint64_t sub_24608E7C4(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFF && *(a1 + 53))
  {
    return (*a1 + 255);
  }

  v3 = *(a1 + 44);
  v4 = v3 >= 2;
  v5 = (v3 + 2147483646) & 0x7FFFFFFF;
  if (!v4)
  {
    v5 = -1;
  }

  return (v5 + 1);
}

uint64_t sub_24608E818(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFE)
  {
    *(result + 40) = 0;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 52) = 0;
    *(result + 48) = 0;
    *result = a2 - 255;
    if (a3 >= 0xFF)
    {
      *(result + 53) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFF)
    {
      *(result + 53) = 0;
    }

    if (a2)
    {
      *(result + 44) = a2 + 1;
    }
  }

  return result;
}

uint64_t sub_24608E880(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 40))(a2, a1, v5);
  return a2;
}

uint64_t sub_24608E8E8(unint64_t *a1, uint64_t a2)
{
  result = *a1;
  if (!result)
  {
    sub_246091834();
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_24608E964()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  return *(v0 + v1);
}

void sub_24608E9B4(uint64_t a1)
{
  v3 = *(*v1 + 104);
  swift_beginAccess();
  *(v1 + v3) = a1;
}

uint64_t *sub_24608EA10(uint64_t *result, void *a2)
{
  v3 = *v2;
  v4 = *&v2[*(*v2 + 96)];
  if (v4 < 0)
  {
    __break(1u);
  }

  else
  {
    if (v4)
    {
      v5 = *(v3 + 80);
      v6 = *(v3 + 88);
      v7 = *(v5 - 8);
      v8 = *result;
      v9 = *(v7 + 24);
      v10 = *(v7 + 72);
      v11 = *&v2[*(*v2 + 96)];
      do
      {
        result = v9(v8, &v2[v6], v5);
        v8 += v10;
        --v11;
      }

      while (v11);
    }

    *a2 = v4;
  }

  return result;
}

uint64_t *sub_24608EB44(uint64_t a1, uint64_t a2)
{
  v3 = v2;
  v6 = *v2;
  v7 = sub_2460918F4();
  v8 = MEMORY[0x28223BE20](v7);
  *(v2 + *(v6 + 120)) = 0;
  v9 = *(v6 + 80);
  v10 = *(v9 - 8);
  (*(v10 + 16))(v2 + *(*v2 + 88), a2, v9, v8);
  *(v2 + *(*v2 + 96)) = a1;
  *(v2 + *(*v2 + 112)) = 0;
  *(v2 + *(*v2 + 104)) = 0;

  v11 = sub_24608EEBC(a1, sub_24608FBCC, v2, v9);
  (*(v10 + 8))(a2, v9);

  v12 = *(*v2 + 120);
  swift_beginAccess();
  *(v3 + v12) = v11;

  return v3;
}

uint64_t sub_24608EEBC(uint64_t a1, uint64_t a2, uint64_t a3, uint64_t a4)
{
  sub_246091E24();
  if (!v4)
  {

    v5 = sub_246092294();

    if (!v5)
    {
      sub_246091E54();
      swift_getWitnessTable();
      v5 = sub_2460923F4();
    }
  }

  return v5;
}

void sub_24608EF6C(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *v2;
  if (a1 < 0 || (*(*v2 + 128))() <= a1)
  {
    v8 = *(*(*(v4 + 80) - 8) + 56);

    v8(a2, 1, 1);
  }

  else
  {
    sub_24608F62C(a1);
    v6 = *(*v2 + 120);
    swift_beginAccess();
    if (*(v2 + v6))
    {
      v7 = *(v4 + 80);

      sub_2460922E4();

      (*(*(v7 - 8) + 56))(a2, 0, 1, v7);
    }

    else
    {
      __break(1u);
    }
  }
}

uint64_t sub_24608F114()
{
  v1 = (*(*v0 + 128))();
  v2 = __OFSUB__(v1, 1);
  result = v1 - 1;
  if (v2)
  {
    __break(1u);
  }

  else
  {
    v4 = *(*v0 + 216);

    return v4(result);
  }

  return result;
}

void sub_24608F198()
{
  v1 = *(*v0 + 104);
  swift_beginAccess();
  *(v0 + v1) = 0;
  *(v0 + *(*v0 + 112)) = 0;
}

void sub_24608F298(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v3 = v2;
  v6 = *(*v2 + 80);
  v7 = *(v6 - 8);
  v9 = MEMORY[0x28223BE20](a1);
  v11 = &v27[-v10];
  v13 = *(v12 + 112);
  v14 = *(v2 + v13);
  v15 = __OFADD__(v14, 1);
  v16 = v14 + 1;
  if (v15)
  {
    __break(1u);
    goto LABEL_20;
  }

  v17 = *(v2 + *(v8 + 96));
  if (!v17)
  {
LABEL_20:
    __break(1u);
LABEL_21:
    __break(1u);
    goto LABEL_22;
  }

  if (v16 == 0x8000000000000000 && v17 == -1)
  {
    goto LABEL_24;
  }

  *(v2 + v13) = v16 % v17;
  if ((*(*v2 + 256))(v9))
  {
    v19 = *(*v2 + 120);
    swift_beginAccess();
    if (!*(v2 + v19))
    {
LABEL_26:
      __break(1u);
      return;
    }

    sub_2460922E4();

    (*(v7 + 56))(a2, 0, 1, v6);
  }

  else
  {
    (*(v7 + 56))(a2, 1, 1, v6);
  }

  v20 = *(v2 + v13);
  (*(v7 + 16))(v11, a1, v6);
  v21 = *(*v2 + 120);
  swift_beginAccess();
  if (!*(v2 + v21))
  {
LABEL_25:
    __break(1u);
    goto LABEL_26;
  }

  sub_2460922D4();
  sub_2460922C4();
  if ((v20 & 0x8000000000000000) != 0)
  {
    goto LABEL_21;
  }

  v22 = *(v2 + v21);
  if (*(v22 + 16) <= v20)
  {
LABEL_22:
    __break(1u);
    goto LABEL_23;
  }

  (*(v7 + 40))(v22 + ((*(v7 + 80) + 32) & ~*(v7 + 80)) + *(v7 + 72) * v20, v11, v6);
  v23 = swift_endAccess();
  v24 = (*(*v2 + 128))(v23);
  if (__OFADD__(v24, 1))
  {
LABEL_23:
    __break(1u);
LABEL_24:
    __break(1u);
    goto LABEL_25;
  }

  if (v17 >= v24 + 1)
  {
    v25 = v24 + 1;
  }

  else
  {
    v25 = v17;
  }

  v26 = *(*v3 + 104);
  swift_beginAccess();
  *(v3 + v26) = v25;
}

uint64_t sub_24608F62C(uint64_t result)
{
  v2 = *(v1 + *(*v1 + 112));
  v3 = __OFSUB__(v2, result);
  v4 = v2 - result;
  if (v3)
  {
    __break(1u);
    goto LABEL_10;
  }

  v5 = *(v1 + *(*v1 + 96));
  v3 = __OFADD__(v4, v5);
  v6 = v4 + v5;
  if (v3)
  {
LABEL_10:
    __break(1u);
    goto LABEL_11;
  }

  if (!v5)
  {
LABEL_11:
    __break(1u);
    goto LABEL_12;
  }

  if (v5 != -1 || v6 != 0x8000000000000000)
  {
    return v6 % v5;
  }

LABEL_12:
  __break(1u);
  return result;
}

uint64_t sub_24608F6B8()
{
  (*(*(*(*v0 + 80) - 8) + 8))(v0 + *(*v0 + 88));

  return v0;
}

uint64_t sub_24608F744()
{
  sub_24608F6B8();

  return swift_deallocClassInstance();
}

uint64_t sub_24608F79C()
{
  v1 = *(*v0 + 80);
  v23 = sub_2460920F4();
  v2 = *(v23 - 8);
  MEMORY[0x28223BE20](v23);
  v4 = &v18 - v3;
  v5 = *(v1 - 8);
  MEMORY[0x28223BE20](v6);
  v22 = &v18 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x28223BE20](v8);
  v10 = &v18 - v9;
  v11 = sub_246091E04();
  v25 = v11;
  v12 = *(*v0 + 128);
  v24 = v0;
  result = v12();
  if ((result & 0x8000000000000000) == 0)
  {
    v14 = result;
    if (!result)
    {
      return v11;
    }

    v15 = *v24;
    v20 = (v5 + 16);
    v21 = (v5 + 32);
    v16 = *(v15 + 216);
    v18 = (v2 + 8);
    v19 = (v5 + 8);
    v17 = result;
    while (v14 >= v17)
    {
      v16(--v17);
      if ((*(v5 + 48))(v4, 1, v1) == 1)
      {
        result = (*v18)(v4, v23);
        if (!v17)
        {
          return v25;
        }
      }

      else
      {
        (*v21)(v10, v4, v1);
        (*v20)(v22, v10, v1);
        sub_246091E54();
        sub_246091E44();
        result = (*v19)(v10, v1);
        if (!v17)
        {
          return v25;
        }
      }
    }

    __break(1u);
  }

  __break(1u);
  return result;
}

uint64_t sub_24608FA98(uint64_t a1)
{
  v2 = sub_245F8E624(&qword_27EE3AE80, &qword_246096FA0);
  (*(*(v2 - 8) + 8))(a1, v2);
  return a1;
}

uint64_t sub_24608FB04(uint64_t a1)
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

uint64_t sub_24608FD48(uint64_t a1)
{
  v2 = swift_allocObject();
  sub_24608FD88(a1);
  return v2;
}

char *sub_24608FD88(uint64_t a1)
{
  v9 = *v1;
  v10 = a1;
  v8 = sub_246092034();
  v2 = *(v8 - 8);
  MEMORY[0x28223BE20](v8);
  v4 = &v8 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = sub_246092004();
  MEMORY[0x28223BE20](v5);
  v6 = sub_246091A64();
  MEMORY[0x28223BE20](v6 - 8);
  sub_245F90360();
  sub_246091A34();
  v11 = MEMORY[0x277D84F90];
  sub_24608FFF0();
  sub_245F8E624(&unk_27EE3A230, &qword_246096660);
  sub_246090048();
  sub_2460921A4();
  (*(v2 + 104))(v4, *MEMORY[0x277D85260], v8);
  *(v1 + 2) = sub_246092074();
  (*(*(*(v9 + 80) - 8) + 32))(&v1[*(*v1 + 96)], v10);
  return v1;
}

unint64_t sub_24608FFF0()
{
  result = qword_27EE3A9D0;
  if (!qword_27EE3A9D0)
  {
    sub_246092004();
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A9D0);
  }

  return result;
}

unint64_t sub_246090048()
{
  result = qword_27EE3A9E0;
  if (!qword_27EE3A9E0)
  {
    sub_245F9135C(&unk_27EE3A230, &qword_246096660);
    result = swift_getWitnessTable();
    atomic_store(result, &qword_27EE3A9E0);
  }

  return result;
}

uint64_t sub_246090110@<X0>(uint64_t a1@<X8>)
{
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  return (*(*(*(v3 + 80) - 8) + 16))(a1, v1 + v4);
}

uint64_t sub_2460901B8(uint64_t a1)
{
  v3 = *v1;
  sub_24609030C(a1);
  v4 = *(*(*(v3 + 80) - 8) + 8);

  return v4(a1);
}

id *sub_246090234()
{
  v1 = *v0;

  (*(*(v1[10] - 8) + 8))(v0 + *(*v0 + 12));
  return v0;
}

uint64_t sub_2460902B4()
{
  sub_246090234();

  return swift_deallocClassInstance();
}

uint64_t sub_24609030C(uint64_t a1)
{
  v2 = *(*v1 + 80);
  v3 = *(v2 - 8);
  v4 = MEMORY[0x28223BE20](a1);
  v6 = aBlock - v5;
  v7 = v1[2];
  (*(v3 + 16))(aBlock - v5, v4);
  v8 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v9 = swift_allocObject();
  *(v9 + 16) = v2;
  *(v9 + 24) = v1;
  (*(v3 + 32))(v9 + v8, v6, v2);
  v10 = swift_allocObject();
  *(v10 + 16) = sub_2460906C8;
  *(v10 + 24) = v9;
  aBlock[4] = sub_245FC5DA4;
  aBlock[5] = v10;
  aBlock[0] = MEMORY[0x277D85DD0];
  aBlock[1] = 1107296256;
  aBlock[2] = sub_245FB4BFC;
  aBlock[3] = &unk_2858E38F0;
  v11 = _Block_copy(aBlock);

  dispatch_sync(v7, v11);
  _Block_release(v11);
  LOBYTE(v7) = swift_isEscapingClosureAtFileLocation();

  if (v7)
  {
    __break(1u);
  }

  return result;
}

double sub_24609053C(uint64_t a1, uint64_t a2)
{
  v2 = *(a2 + 40);
  *(a1 + 32) = *(a2 + 32);
  *(a1 + 40) = v2;

  return result;
}

uint64_t sub_246090554(uint64_t a1)
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

uint64_t sub_246090610()
{
  v1 = *(v0 + 16);
  v2 = *(v1 - 8);
  v3 = *(v2 + 80);
  v4 = (v3 + 32) & ~v3;
  v5 = *(v2 + 64);

  (*(v2 + 8))(v0 + v4, v1);

  return MEMORY[0x2821FE8E8](v0, v4 + v5, v3 | 7);
}

uint64_t sub_2460906C8()
{
  v1 = *(v0 + 24);
  v2 = (*(*(*(v0 + 16) - 8) + 80) + 32) & ~*(*(*(v0 + 16) - 8) + 80);
  v3 = *v1;
  v4 = *(*v1 + 96);
  swift_beginAccess();
  (*(*(*(v3 + 80) - 8) + 24))(v1 + v4, v0 + v2);
  return swift_endAccess();
}

void sub_2460907B0(float32x4_t a1, float32x4_t a2, float32x4_t a3, float32x4_t a4, double a5)
{
  v42 = a3;
  v43 = a4;
  v40 = a1;
  v41 = a2;
  v7 = sub_2460918F4();
  v8 = *(v7 - 8);
  MEMORY[0x28223BE20](v7);
  v10 = &v37 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  swift_beginAccess();
  v11 = *(v5 + 48);
  isUniquelyReferenced_nonNull_native = swift_isUniquelyReferenced_nonNull_native();
  *(v5 + 48) = v11;
  if ((isUniquelyReferenced_nonNull_native & 1) == 0)
  {
    v11 = sub_246090C88(0, v11[1].i64[0] + 1, 1, v11);
    *(v5 + 48) = v11;
  }

  v14 = v11[1].u64[0];
  v13 = v11[1].u64[1];
  if (v14 >= v13 >> 1)
  {
    v11 = sub_246090C88((v13 > 1), v14 + 1, 1, v11);
  }

  v11[1].i64[0] = v14 + 1;
  v15 = &v11[5 * v14];
  v16 = v41;
  v15[2] = v40;
  v15[3] = v16;
  v17 = v43;
  v15[4] = v42;
  v15[5] = v17;
  *v15[6].i64 = a5;
  *(v5 + 48) = v11;
  swift_endAccess();
  v18 = v11[1].u64[0];
  if (v18 >= 3)
  {
    do
    {
      swift_beginAccess();
      v20 = swift_isUniquelyReferenced_nonNull_native();
      *(v5 + 48) = v11;
      if (!v20 || v18 - 1 > v11[1].i64[1] >> 1)
      {
        v11 = sub_246090C88(v20, v18, 1, v11);
        *(v5 + 48) = v11;
      }

      v19 = v11[1].i64[0];
      memmove(&v11[2], &v11[7], 80 * v19 - 80);
      v11[1].i64[0] = v19 - 1;
      *(v5 + 48) = v11;
      swift_endAccess();
      v18 = v11[1].u64[0];
    }

    while (v18 > 2);
  }

  if (v18 == 2)
  {
    v21 = *v11[11].i64;
    v22 = *v11[6].i64;
    v23 = v21 - v22;
    if (v23 <= 0.0)
    {
      v29 = sub_245FA3174();
      (*(v8 + 16))(v10, v29, v7);
      v30 = sub_2460918D4();
      v31 = sub_246091FB4();
      if (os_log_type_enabled(v30, v31))
      {
        v32 = swift_slowAlloc();
        v33 = swift_slowAlloc();
        v44[0] = v33;
        *v32 = 136381443;
        *(v32 + 4) = sub_245F8D3C0(0xD00000000000001BLL, 0x80000002460A4F60, v44);
        *(v32 + 12) = 2048;
        *(v32 + 14) = v22;
        *(v32 + 22) = 2048;
        *(v32 + 24) = v21;
        *(v32 + 32) = 2048;
        *(v32 + 34) = v23;
        _os_log_impl(&dword_245F8A000, v30, v31, "%{private}s: Frame time is not proceeding monotonically.  LastTime=%f, CurrentTime=%f dt = %f but is expected strictly  > 0!", v32, 0x2Au);
        sub_245F8E6F4(v33);
        MEMORY[0x24C1989D0](v33, -1, -1);
        MEMORY[0x24C1989D0](v32, -1, -1);
      }

      (*(v8 + 8))(v10, v7);
    }

    else
    {
      v24 = v11[8];
      v40 = v11[7];
      v41 = v24;
      v25 = v11[10];
      v42 = v11[9];
      v43 = v25;
      v45 = __invert_f4(*v11[2].f32);
      v38 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.columns[1].f32[0]), v41, *v45.columns[1].f32, 1), v42, v45.columns[1], 2), v43, v45.columns[1], 3);
      v39 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.columns[0].f32[0]), v41, *v45.columns[0].f32, 1), v42, v45.columns[0], 2), v43, v45.columns[0], 3);
      v37 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.columns[2].f32[0]), v41, *v45.columns[2].f32, 1), v42, v45.columns[2], 2), v43, v45.columns[2], 3);
      v43 = vmlaq_laneq_f32(vmlaq_laneq_f32(vmlaq_lane_f32(vmulq_n_f32(v40, v45.columns[3].f32[0]), v41, *v45.columns[3].f32, 1), v42, v45.columns[3], 2), v43, v45.columns[3], 3);
      v26 = sub_246023584(v39.f32[0], *v38.i64, v37);
      v27 = sub_2460235EC(*v39.i64, *v38.i64, v37.n128_f64[0], v43) / v23;
      if ((v26 / v23) <= 60.0 && v27 <= 0.5)
      {
        v34 = *(v5 + 40);
        v35 = __OFSUB__(v34, 1);
        v36 = v34 - 1;
        if (v35)
        {
          __break(1u);
        }

        else
        {
          *(v5 + 40) = v36 & ~(v36 >> 63);
        }
      }

      else
      {
        *(v5 + 40) = 15;
      }
    }
  }
}

uint64_t sub_246090C00()
{

  return swift_deallocClassInstance();
}

double sub_246090C38()
{
  v0 = swift_allocObject();
  *(v0 + 16) = 2;
  *(v0 + 24) = 0x3F00000042700000;
  *&result = 15;
  *(v0 + 32) = xmmword_24609BBF0;
  *(v0 + 48) = MEMORY[0x277D84F90];
  return result;
}

char *sub_246090C88(char *result, int64_t a2, char a3, char *a4)
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
    sub_245F8E624(&qword_27EE3B258, "N%");
    v10 = swift_allocObject();
    v11 = j__malloc_size(v10);
    *(v10 + 2) = v8;
    *(v10 + 3) = 2 * ((v11 - 32) / 80);
  }

  else
  {
    v10 = MEMORY[0x277D84F90];
  }

  v12 = v10 + 32;
  v13 = a4 + 32;
  v14 = 80 * v8;
  if (v5)
  {
    if (v10 != a4 || v12 >= &v13[v14])
    {
      memmove(v12, v13, v14);
    }

    *(a4 + 2) = 0;
  }

  else
  {
    memcpy(v12, v13, v14);
  }

  return v10;
}

__n128 sub_246090DBC(uint64_t a1, uint64_t a2)
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

uint64_t sub_246090DE0(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 72))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_246090E00(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
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

  *(result + 72) = v3;
  return result;
}

double sub_246090E4C()
{
  result = 0.12500003;
  xmmword_27EE3F0F0 = xmmword_246097430;
  return result;
}

__int128 *sub_246090E60()
{
  if (qword_27EE3EF38 != -1)
  {
    swift_once();
  }

  return &xmmword_27EE3F0F0;
}

double sub_246090EB0()
{
  result = 0.12500003;
  xmmword_27EE3F100 = xmmword_246097430;
  return result;
}

__int128 *sub_246090EC4()
{
  if (qword_27EE3EF40 != -1)
  {
    swift_once();
  }

  return &xmmword_27EE3F100;
}

id sub_246090F3C()
{
  v5[1] = *MEMORY[0x277D85DE8];
  v0 = [objc_opt_self() defaultManager];
  v1 = sub_246091674();
  v5[0] = 0;
  v2 = [v0 createDirectoryAtURL:v1 withIntermediateDirectories:1 attributes:0 error:v5];

  if (v2)
  {
    return v5[0];
  }

  v4 = v5[0];
  sub_2460915D4();

  return swift_willThrow();
}

id sub_24609102C(uint64_t a1)
{
  v10 = *MEMORY[0x277D85DE8];
  if ((sub_2460915E4() & 1) == 0)
  {
    return 0;
  }

  v9 = 0;
  v1 = objc_opt_self();
  v2 = [v1 defaultManager];
  sub_2460916F4();
  v3 = sub_246091BD4();

  v4 = [v2 fileExistsAtPath:v3 isDirectory:&v9];

  if (!v4 || v9 != 1)
  {
    return 0;
  }

  sub_2460916F4();
  v5 = [v1 defaultManager];
  v6 = sub_246091BD4();

  v7 = [v5 isWritableFileAtPath_];

  return v7;
}

uint64_t sub_246091194(uint64_t a1)
{
  result = swift_allocObject();
  *(result + 16) = a1;
  return result;
}

id sub_2460911E8(uint64_t a1)
{
  result = swift_dynamicCastObjCProtocolConditional();
  if (result)
  {
    v2 = result;
    swift_unknownObjectRetain();
    if ([v2 supportsBufferWithIOSurface] && (IOSurface = OCDataBufferGetIOSurface()) != 0)
    {
      v4 = IOSurface;
      v5 = [v2 newBufferWithIOSurface_];
      swift_unknownObjectRelease();

      return v5;
    }

    else
    {
      swift_unknownObjectRelease();
      return 0;
    }
  }

  return result;
}

void *sub_2460912A0()
{
  IOSurface = OCDataBufferGetIOSurface();
  if (!IOSurface)
  {
    return 0;
  }

  v1 = IOSurface;
  BaseAddress = IOSurfaceGetBaseAddress(v1);

  return BaseAddress;
}

uint64_t OCDataBuffer.__deallocating_deinit()
{

  return swift_deallocClassInstance();
}

simd_float4x4 __invert_f4(simd_float4x4 a1)
{
  MEMORY[0x2822043A8](a1.columns[0], a1.columns[1], a1.columns[2], a1.columns[3]);
  result.columns[3].i64[1] = v8;
  result.columns[3].i64[0] = v7;
  result.columns[2].i64[1] = v6;
  result.columns[2].i64[0] = v5;
  result.columns[1].i64[1] = v4;
  result.columns[1].i64[0] = v3;
  result.columns[0].i64[1] = v2;
  result.columns[0].i64[0] = v1;
  return result;
}

__float2 __sincosf_stret(float a1)
{
  MEMORY[0x2822043C8](a1);
  result.__cosval = v2;
  result.__sinval = v1;
  return result;
}