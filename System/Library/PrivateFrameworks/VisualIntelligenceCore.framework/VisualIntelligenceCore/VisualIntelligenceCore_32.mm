void sub_1D8A596F4(uint64_t a1@<X0>, uint64_t a2@<X2>, uint64_t a3@<X3>, uint64_t a4@<X8>)
{
  (*(a3 + 32))(&v53, a2, a3);
  v9 = v53;
  v10 = v54;
  if (v54)
  {
    v11 = v53;
LABEL_6:
    sub_1D88C3978(v11, v10);
    v12 = 0;
    v13 = 0;
    v14 = 0uLL;
    v9 = 1;
    v15 = 0uLL;
    v16 = 0uLL;
    v17 = 0uLL;
LABEL_7:
    *a4 = v14;
    *(a4 + 16) = v15;
    *(a4 + 32) = v16;
    *(a4 + 48) = v17;
    *(a4 + 64) = v12;
    *(a4 + 72) = v9;
    *(a4 + 80) = v13;
    return;
  }

  sub_1D88C5438(a1, v47);
  sub_1D88C5438(v47, &v48);
  if (!v50 || v50 == 1)
  {
LABEL_5:
    v11 = v9;
    v10 = 0;
    goto LABEL_6;
  }

  v35 = v49;
  v36 = v48;
  v18 = v51;
  v34 = v52;
  sub_1D88C5438(v47, v43);
  v19 = v44;
  sub_1D88C5438(v47, v45);
  sub_1D88C5510(v46);
  sub_1D88C5510(v19);
  sub_1D88C5530(v47, &v37);
  sub_1D88C2718(v9, 0);
  Width = CVPixelBufferGetWidth(v9);
  Height = CVPixelBufferGetHeight(v9);
  CameraSourceFrame.rotationAngle.getter(a3, &v37);
  v21.n128_u64[0] = v37;
  if (v34 == 1)
  {
    if (!v18)
    {
      v22 = Width;
      Width = Height;
      goto LABEL_26;
    }
  }

  else
  {
    if (v18 > 8)
    {
      goto LABEL_18;
    }

    if (((1 << v18) & 0x18) != 0)
    {
      v21.n128_f64[0] = *&v37 + -3.14159265;
      goto LABEL_19;
    }

    if (((1 << v18) & 0xC0) != 0)
    {
      v21.n128_f64[0] = *&v37 + -1.57079633;
      goto LABEL_19;
    }

    if (((1 << v18) & 0x120) == 0)
    {
LABEL_18:
      if (v18 - 1 >= 2)
      {
LABEL_50:
        __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67DA0, &qword_1D8B25E60);
        sub_1D8B16B90();
        __break(1u);
        return;
      }

      goto LABEL_19;
    }

    v21.n128_f64[0] = *&v37 + -4.71238898;
  }

LABEL_19:
  v22 = Height;
  if (v21.n128_f64[0] != 1.57079633)
  {
    v23 = Width;
    if (v21.n128_f64[0] == 4.71238898)
    {
      v22 = Height;
    }

    else
    {
      v22 = Width;
    }

    if (v21.n128_f64[0] != 4.71238898)
    {
      v23 = Height;
    }

    Width = v23;
  }

LABEL_26:
  v24 = *(a1 + 72);
  v25 = Width;
  if (v24)
  {
    v26 = v24;
    if (CVPixelBufferGetWidth(v26) == v22 && CVPixelBufferGetHeight(v26) == v25)
    {
      PixelFormatType = CVPixelBufferGetPixelFormatType(v26);

      v28 = v35;
      v29 = PixelFormatType == v36;
      v25 = Width;
      if (v29)
      {
        v28 = 1;
      }

      if (v28 == 1)
      {
        sub_1D88C558C(v47);
        sub_1D88C558C(v47);
        sub_1D88C3978(v9, 0);
        sub_1D88C558C(v47);
        goto LABEL_5;
      }
    }

    else
    {
    }
  }

  (*(a3 + 40))(&v37, a2, a3, v21);
  if (BYTE8(v39) == 1 && CVPixelBufferGetWidth(v9) == v22 && CVPixelBufferGetHeight(v9) == v25)
  {
    v30 = CVPixelBufferGetPixelFormatType(v9);
    sub_1D88C558C(v47);
    v32 = v35;
    v31 = v36;
    if (v30 == v36)
    {
      v32 = 1;
    }

    if (v32 == 1)
    {
      sub_1D88C558C(v47);
      sub_1D88C3978(v9, 0);
      v42 = 0;
      sub_1D88C5438(v47, &v37);
      v14 = v37;
      v15 = v38;
      v16 = v39;
      v17 = v40;
LABEL_48:
      v12 = v41;
      v13 = v42;
      goto LABEL_7;
    }
  }

  else
  {
    sub_1D88C558C(v47);
    v31 = v36;
    if (v35)
    {
      v31 = CVPixelBufferGetPixelFormatType(v9);
    }
  }

  if (((v25 | v22) & 0x8000000000000000) != 0)
  {
    __break(1u);
    goto LABEL_50;
  }

  v33 = sub_1D8A4E020(v22, v25, v31);
  sub_1D88C558C(v47);
  sub_1D88C3978(v9, 0);
  if (!v4)
  {
    sub_1D88C3978(v9, 0);
    v42 = 0;
    sub_1D88C5438(v47, &v37);
    v14 = v37;
    v15 = v38;
    v16 = v39;
    v17 = v40;
    v9 = v33;
    goto LABEL_48;
  }

  sub_1D88C558C(v47);
  sub_1D88C3978(v9, 0);
}

uint64_t sub_1D8A59B18(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = swift_task_alloc();
  *(v2 + 16) = v9;
  *v9 = v2;
  v9[1] = sub_1D886553C;

  return sub_1D8A3E5A4(a1, v4, v5, v6, v7, v8);
}

uint64_t sub_1D8A59BEC(uint64_t a1)
{
  v4 = v1[2];
  v5 = v1[3];
  v7 = v1[4];
  v6 = v1[5];
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A401C8(a1, v4, v5, v7, v6);
}

uint64_t sub_1D8A59CAC(uint64_t a1)
{
  v4 = *(v1 + 16);
  v5 = *(v1 + 24);
  v6 = *(v1 + 32);
  v7 = *(v1 + 40);
  v8 = swift_task_alloc();
  *(v2 + 16) = v8;
  *v8 = v2;
  v8[1] = sub_1D886553C;

  return sub_1D8A40D1C(a1, v4, v5, v6, v7);
}

id viCore_makeM2MController()
{
  v0 = objc_alloc(NSClassFromString(&cfstr_Figm2mcontroll.isa));
  v1 = [v0 performSelector:sel_init];

  return v1;
}

uint64_t sub_1D8A59DF4(uint64_t a1)
{
  v3 = v2;
  v4 = *(swift_getAssociatedTypeWitness() - 8);
  v5 = (*(v4 + 80) + 72) & ~*(v4 + 80);
  v6 = *(v1 + 3);
  v15 = *(v1 + 2);
  v7 = v1[6];
  v8 = *(v1 + 7);
  v9 = *(v1 + 8);
  v10 = (v1 + ((*(v4 + 64) + v5 + 7) & 0xFFFFFFFFFFFFFFF8));
  v12 = *v10;
  v11 = v10[1];
  v13 = swift_task_alloc();
  *(v3 + 16) = v13;
  *v13 = v3;
  v13[1] = sub_1D8864FBC;

  return sub_1D8A45C4C(v7, a1, v15, v6, v8, v9, v1 + v5, v12, v11);
}

double sub_1D8A59F70()
{
  v1 = *(v0 + 16);
  v2 = *(v0 + 24);
  v3 = *(type metadata accessor for ProcessorState(0) - 8);
  v4 = (*(v3 + 80) + 32) & ~*(v3 + 80);
  v5 = v4 + *(v3 + 64);
  v6 = *(swift_getAssociatedTypeWitness() - 8);
  v7 = (v5 + *(v6 + 80)) & ~*(v6 + 80);
  v8 = (*(v6 + 64) + v7 + 7) & 0xFFFFFFFFFFFFFFF8;
  v9 = *(v0 + v8);
  v10 = *(v0 + ((v8 + 15) & 0xFFFFFFFFFFFFFFF8));

  return sub_1D8A4541C(v0 + v4, v0 + v7, v9, v10, v1, v2);
}

void sub_1D8A5A0F4(uint64_t a1)
{
  sub_1D8A5A194(319, &qword_1EE0E39D0, type metadata accessor for DetectionRequest);
  if (v1 <= 0x3F)
  {
    type metadata accessor for DetectionRequest(319);
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A5A194(uint64_t a1, unint64_t *a2, uint64_t (*a3)(uint64_t))
{
  if (!*a2)
  {
    a3(255);
    v4 = sub_1D8B15DB0();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

uint64_t sub_1D8A5A1E8(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 > 0x7FFFFFFD && *(a1 + 72))
  {
    return (*a1 + 2147483646);
  }

  v3 = *(a1 + 64);
  if (v3 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 - 2;
  if (v4 < 0)
  {
    v4 = -1;
  }

  return (v4 + 1);
}

uint64_t sub_1D8A5A244(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *(result + 40) = 0u;
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 56) = 0u;
    *result = a2 - 2147483646;
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 1;
    }
  }

  else
  {
    if (a3 > 0x7FFFFFFD)
    {
      *(result + 72) = 0;
    }

    if (a2)
    {
      *(result + 64) = a2 + 1;
    }
  }

  return result;
}

unint64_t sub_1D8A5A2B8()
{
  result = qword_1ECA67E70;
  if (!qword_1ECA67E70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E70);
  }

  return result;
}

uint64_t sub_1D8A5A358(uint64_t *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x7FFFFFFE && *(a1 + 8))
  {
    return (*a1 + 2147483646);
  }

  v3 = *a1;
  if (*a1 >= 0xFFFFFFFF)
  {
    LODWORD(v3) = -1;
  }

  v4 = v3 + 1;
  v5 = v3 - 1;
  if (v4 >= 3)
  {
    return v5;
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A5A3AC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x7FFFFFFD)
  {
    *result = 0;
    *result = a2 - 2147483646;
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x7FFFFFFE)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      *result = a2 + 1;
    }
  }

  return result;
}

uint64_t initializeBufferWithCopyOfBuffer for CVProcessorInputConfiguration.Dimensions(uint64_t *a1, uint64_t *a2)
{
  v2 = *a2;
  *a1 = *a2;

  return v2 + 16;
}

uint64_t getEnumTagSinglePayload for CVProcessorInputConfiguration.Dimensions(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0xFE && *(a1 + 41))
  {
    return (*a1 + 254);
  }

  v3 = *(a1 + 40);
  if (v3 <= 2)
  {
    v4 = -1;
  }

  else
  {
    v4 = v3 ^ 0xFF;
  }

  return (v4 + 1);
}

uint64_t storeEnumTagSinglePayload for CVProcessorInputConfiguration.Dimensions(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0xFD)
  {
    *(result + 24) = 0u;
    *(result + 8) = 0u;
    *(result + 40) = 0;
    *result = a2 - 254;
    if (a3 >= 0xFE)
    {
      *(result + 41) = 1;
    }
  }

  else
  {
    if (a3 >= 0xFE)
    {
      *(result + 41) = 0;
    }

    if (a2)
    {
      *(result + 40) = -a2;
    }
  }

  return result;
}

uint64_t sub_1D8A5A4F0(uint64_t a1)
{
  if (*(a1 + 40) <= 1u)
  {
    return *(a1 + 40);
  }

  else
  {
    return (*a1 + 2);
  }
}

uint64_t sub_1D8A5A508(uint64_t result, unsigned int a2)
{
  if (a2 >= 2)
  {
    *result = a2 - 2;
    *(result + 8) = 0u;
    *(result + 24) = 0u;
    LOBYTE(a2) = 2;
  }

  *(result + 40) = a2;
  return result;
}

unint64_t sub_1D8A5A550()
{
  result = qword_1ECA67E80;
  if (!qword_1ECA67E80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E80);
  }

  return result;
}

unint64_t sub_1D8A5A5A8()
{
  result = qword_1ECA67E88;
  if (!qword_1ECA67E88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E88);
  }

  return result;
}

unint64_t sub_1D8A5A600()
{
  result = qword_1ECA67E90;
  if (!qword_1ECA67E90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E90);
  }

  return result;
}

unint64_t sub_1D8A5A658()
{
  result = qword_1ECA67E98;
  if (!qword_1ECA67E98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67E98);
  }

  return result;
}

unint64_t CVDetection.DetectionType.description.getter()
{
  result = 0x6E69646E756F7267;
  switch(*v0)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 0xA:
      result = 0x646F6D69746C756DLL;
      break;
    case 0xB:
      result = 0x69746568746E7973;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

double CVDetection.timestamp.getter(uint64_t a1)
{
  v9 = *v1;
  CVDetection.detection.getter(v6);
  v2 = v7;
  v3 = v8;
  __swift_project_boxed_opaque_existential_1(v6, v7);
  v4 = (*(v3 + 88))(v2, v3);
  __swift_destroy_boxed_opaque_existential_1(v6);
  return v4;
}

uint64_t CVDetection.rotationAngle.getter(uint64_t a1)
{
  v8 = *v1;
  CVDetection.detection.getter(v5);
  v2 = v6;
  v3 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v3 + 80))(v2, v3);
  return __swift_destroy_boxed_opaque_existential_1(v5);
}

void sub_1D8A5A9D8(double *a1@<X0>, double *a2@<X1>, void *a3@<X8>)
{
  v4 = *a1;
  v5 = *a2;
  v6 = v3[1];
  v8 = v3[2];
  v7 = v3[3];
  v10 = v3[4];
  v9 = v3[5];
  v12 = v3[6];
  v11 = v3[7];
  if (*a1 == *a2)
  {
    *a3 = *v3;
    a3[1] = v6;
    a3[2] = v8;
    a3[3] = v7;
    a3[4] = v10;
    a3[5] = v9;
    a3[6] = v12;
    a3[7] = v11;
    return;
  }

  v93 = *(v3 + 1);
  v94 = *(v3 + 3);
  v95 = *(v3 + 2);
  v92 = *v3;
  CGAffineTransformMakeTranslation(&t1, -0.5, -0.5);
  b = t1.b;
  a = t1.a;
  d = t1.d;
  c = t1.c;
  ty = t1.ty;
  tx = t1.tx;
  v96 = v4 - v5;
  CGAffineTransformMakeRotation(&t1, -(v4 - v5));
  v14 = t1.a;
  v15 = t1.b;
  v80 = t1.b;
  v81 = t1.a;
  v82 = t1.d;
  v83 = t1.c;
  v100 = t1.tx;
  v97 = t1.ty;
  CGAffineTransformMakeTranslation(&t1, 0.5, 0.5);
  v16 = t1.a;
  v17 = t1.b;
  v18 = t1.c;
  v19 = t1.d;
  v90 = t1.d;
  v91 = t1.c;
  v20 = t1.tx;
  v21 = t1.ty;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684C8, &qword_1D8B395F8);
  inited = swift_initStackObject();
  *(inited + 16) = xmmword_1D8B1AB70;
  *(inited + 32) = a;
  *(inited + 40) = b;
  *(inited + 48) = c;
  *(inited + 56) = d;
  *(inited + 64) = tx;
  *(inited + 72) = ty;
  *(inited + 80) = v14;
  *(inited + 88) = v15;
  *(inited + 96) = v83;
  *(inited + 104) = v82;
  *(inited + 112) = v100;
  *(inited + 120) = v97;
  *(inited + 128) = v16;
  *(inited + 136) = v17;
  *(inited + 144) = v18;
  *(inited + 152) = v19;
  *(inited + 160) = v20;
  *(inited + 168) = v21;
  v23 = *(MEMORY[0x1E695EFD0] + 16);
  *&t1.a = *MEMORY[0x1E695EFD0];
  *&t1.c = v23;
  *&t1.tx = *(MEMORY[0x1E695EFD0] + 32);
  t2.a = a;
  t2.b = b;
  t2.c = c;
  t2.d = d;
  t2.tx = tx;
  t2.ty = ty;
  CGAffineTransformConcat(&v107, &t1, &t2);
  t1 = v107;
  t2.a = v81;
  t2.b = v80;
  t2.c = v83;
  t2.d = v82;
  t2.tx = v100;
  t2.ty = v97;
  CGAffineTransformConcat(&v107, &t1, &t2);
  v24 = v107.tx;
  v25 = v107.ty;
  v98 = *&v107.c;
  v101 = *&v107.a;

  *&t1.a = v101;
  *&t1.c = v98;
  t1.tx = v24;
  t1.ty = v25;
  t2.a = v16;
  t2.b = v17;
  t2.c = v91;
  t2.d = v90;
  t2.tx = v20;
  t2.ty = v21;
  CGAffineTransformConcat(&v107, &t1, &t2);
  v26 = v107.a;
  v27 = v107.b;
  v28 = v107.c;
  v29 = v107.d;
  v30 = v107.tx;
  v31 = v107.ty;
  v32 = MEMORY[0x1E69E7CC0];
  *&t2.a = MEMORY[0x1E69E7CC0];
  sub_1D87F3F8C(0, 4, 0);
  v33 = t2.a;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v36 = CGPointApplyAffineTransform(v92, &t1);
  y = v36.y;
  x = v36.x;
  v38 = *(*&v33 + 16);
  v37 = *(*&v33 + 24);
  if (v38 >= v37 >> 1)
  {
    sub_1D87F3F8C((v37 > 1), v38 + 1, 1);
    y = v36.y;
    x = v36.x;
    v33 = t2.a;
  }

  *(*&v33 + 16) = v38 + 1;
  v39 = *&v33 + 16 * v38;
  *(v39 + 32) = x;
  *(v39 + 40) = y;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v42 = CGPointApplyAffineTransform(v93, &t1);
  v41 = v42.y;
  v40 = v42.x;
  v44 = *(*&v33 + 16);
  v43 = *(*&v33 + 24);
  if (v44 >= v43 >> 1)
  {
    sub_1D87F3F8C((v43 > 1), v44 + 1, 1);
    v41 = v42.y;
    v40 = v42.x;
    v33 = t2.a;
  }

  *(*&v33 + 16) = v44 + 1;
  v45 = *&v33 + 16 * v44;
  *(v45 + 32) = v40;
  *(v45 + 40) = v41;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v48 = CGPointApplyAffineTransform(v94, &t1);
  v47 = v48.y;
  v46 = v48.x;
  v50 = *(*&v33 + 16);
  v49 = *(*&v33 + 24);
  if (v50 >= v49 >> 1)
  {
    sub_1D87F3F8C((v49 > 1), v50 + 1, 1);
    v47 = v48.y;
    v46 = v48.x;
  }

  v51 = t2.a;
  *(*&t2.a + 16) = v50 + 1;
  v52 = *&v51 + 16 * v50;
  *(v52 + 32) = v46;
  *(v52 + 40) = v47;
  t1.a = v26;
  t1.b = v27;
  t1.c = v28;
  t1.d = v29;
  t1.tx = v30;
  t1.ty = v31;
  v55 = CGPointApplyAffineTransform(v95, &t1);
  v54 = v55.y;
  *&v53 = v55.x;
  v57 = *(*&v51 + 16);
  v56 = *(*&v51 + 24);
  v58 = v57 + 1;
  if (v57 >= v56 >> 1)
  {
    sub_1D87F3F8C((v56 > 1), v57 + 1, 1);
    v54 = v55.y;
    *&v53 = v55.x;
    v51 = t2.a;
  }

  *(*&v51 + 16) = v58;
  v59 = *&v51 + 32;
  v60 = (*&v51 + 32 + 16 * v57);
  *v60 = v53;
  v60[1] = v54;
  *&v53 = v96 * 180.0 / 3.14159265 / 90.0;
  v61 = 0x7FEFFFFFFFFFFFFFLL;
  if (COERCE__INT64(fabs(*&v53)) > 0x7FEFFFFFFFFFFFFFLL)
  {
    __break(1u);
    goto LABEL_44;
  }

  if (*&v53 <= -9.22337204e18)
  {
LABEL_44:
    __break(1u);
    goto LABEL_45;
  }

  if (*&v53 >= 9.22337204e18)
  {
LABEL_45:
    __break(1u);
    goto LABEL_46;
  }

  v57 = *&v53;
  t1.a = v32;
  sub_1D87F3F8C(0, 4, 0);
  v62 = v57 + 4;
  if (__OFADD__(v57, 4))
  {
LABEL_46:
    __break(1u);
LABEL_47:
    __break(1u);
    goto LABEL_48;
  }

  v63 = -v62 < 0;
  v64 = -v62 & 3;
  v65 = v62 & 3;
  if (v63)
  {
    v61 = v65;
  }

  else
  {
    v61 = -v64;
  }

  if ((v61 & 0x8000000000000000) != 0)
  {
    goto LABEL_47;
  }

  if (v61 < *(*&v51 + 16))
  {
    v66 = t1.a;
    v53 = *(v59 + 16 * v61);
    v32 = *(*&t1.a + 16);
    v61 = *(*&t1.a + 24);
    v58 = *&v32 + 1;
    if (*&v32 < v61 >> 1)
    {
      goto LABEL_21;
    }

    goto LABEL_49;
  }

LABEL_48:
  __break(1u);
LABEL_49:
  v103 = v53;
  sub_1D87F3F8C((v61 > 1), v58, 1);
  v53 = v103;
  v66 = t1.a;
LABEL_21:
  *(*&v66 + 16) = v58;
  *(*&v66 + 16 * *&v32 + 32) = v53;
  v67 = v57 + 5;
  if (__OFADD__(v57, 5))
  {
    __break(1u);
LABEL_51:
    __break(1u);
    goto LABEL_52;
  }

  v63 = -v67 < 0;
  v68 = -v67 & 3;
  v67 &= 3u;
  if (!v63)
  {
    v67 = -v68;
  }

  if ((v67 & 0x8000000000000000) != 0)
  {
    goto LABEL_51;
  }

  if (v67 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v67);
    v67 = *(*&v66 + 24);
    *&v32 += 2;
    if (v58 < v67 >> 1)
    {
      goto LABEL_27;
    }

    goto LABEL_53;
  }

LABEL_52:
  __break(1u);
LABEL_53:
  v104 = v53;
  sub_1D87F3F8C((v67 > 1), *&v32, 1);
  v53 = v104;
  v66 = t1.a;
LABEL_27:
  *(*&v66 + 16) = v32;
  *(*&v66 + 16 * v58 + 32) = v53;
  v69 = v57 + 6;
  if (__OFADD__(v57, 6))
  {
    __break(1u);
LABEL_55:
    __break(1u);
    goto LABEL_56;
  }

  v63 = -v69 < 0;
  v70 = -v69 & 3;
  v71 = v69 & 3;
  if (!v63)
  {
    v71 = -v70;
  }

  if ((v71 & 0x8000000000000000) != 0)
  {
    goto LABEL_55;
  }

  if (v71 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v71);
    v32 = *(*&v66 + 16);
    v66 = *(*&v66 + 24);
    v58 = *&v32 + 1;
    if (*&v32 < *&v66 >> 1)
    {
      goto LABEL_33;
    }

    goto LABEL_57;
  }

LABEL_56:
  __break(1u);
LABEL_57:
  v105 = v53;
  sub_1D87F3F8C((*&v66 > 1uLL), v58, 1);
  v53 = v105;
LABEL_33:
  v72 = t1.a;
  *(*&t1.a + 16) = v58;
  *(*&v72 + 16 * *&v32 + 32) = v53;
  v73 = v57 + 7;
  if (__OFADD__(v57, 7))
  {
    __break(1u);
LABEL_59:
    __break(1u);
    goto LABEL_60;
  }

  v63 = -v73 < 0;
  v74 = -v73 & 3;
  v73 &= 3u;
  if (!v63)
  {
    v73 = -v74;
  }

  if ((v73 & 0x8000000000000000) != 0)
  {
    goto LABEL_59;
  }

  if (v73 < *(*&v51 + 16))
  {
    v53 = *(v59 + 16 * v73);
    v73 = *(*&v72 + 24);
    *&v32 += 2;
    if (v58 < v73 >> 1)
    {
      goto LABEL_39;
    }

    goto LABEL_61;
  }

LABEL_60:
  __break(1u);
LABEL_61:
  v106 = v53;
  sub_1D87F3F8C((v73 > 1), *&v32, 1);
  v53 = v106;
  v72 = t1.a;
LABEL_39:
  *(*&v72 + 16) = v32;
  *(*&v72 + 16 * v58 + 32) = v53;

  v75 = *(*&v72 + 16);
  if (!v75)
  {
    __break(1u);
    goto LABEL_63;
  }

  if (v75 == 1)
  {
LABEL_63:
    __break(1u);
    goto LABEL_64;
  }

  if (v75 >= 4)
  {
    v76 = *(*&v72 + 32);
    v77 = *(*&v72 + 40);
    v99 = *(*&v72 + 80);
    v102 = *(*&v72 + 48);
    v78 = *(*&v72 + 64);
    v79 = *(*&v72 + 72);

    *a3 = v76;
    a3[1] = v77;
    *(a3 + 1) = v102;
    *(a3 + 2) = v99;
    a3[6] = v78;
    a3[7] = v79;
    return;
  }

LABEL_64:
  __break(1u);
}

uint64_t CVDetection.detection.getter@<X0>(uint64_t *a1@<X8>)
{
  v3 = type metadata accessor for AFMResult(0);
  v4 = MEMORY[0x1EEE9AC00](v3);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  switch(*v1 >> 60)
  {
    case 1:
      v22 = type metadata accessor for GroundedParseDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v22;
      a1[4] = sub_1D8A6D324(&qword_1ECA64248, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_15;
    case 2:
      v17 = type metadata accessor for MetaDetectionResult(0);
      v8 = swift_projectBox();
      a1[3] = v17;
      a1[4] = sub_1D8A6D324(&qword_1EE0E5CE0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for MetaDetectionResult;
      goto LABEL_15;
    case 3:
    case 8:
      v7 = type metadata accessor for ObjectDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v7;
      a1[4] = sub_1D8A6D324(&qword_1ECA64228, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_15;
    case 4:
      v23 = type metadata accessor for ParseDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v23;
      a1[4] = sub_1D8A6D324(&qword_1ECA64238, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for ParseDetectorResult;
      goto LABEL_15;
    case 5:
      v24 = type metadata accessor for TextDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v24;
      a1[4] = sub_1D8A6D324(&qword_1EE0E5FC0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for TextDetectorResult;
      goto LABEL_15;
    case 6:
    case 7:
      v11 = type metadata accessor for StreamingBarcodeDetectorResult(0);
      v8 = swift_projectBox();
      a1[3] = v11;
      a1[4] = sub_1D8A6D324(&qword_1ECA64230, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_15;
    case 9:
    case 0xALL:
      v12 = v4;
      v13 = swift_projectBox();
      sub_1D8A6D488(v13, v6, type metadata accessor for AFMResult);
      a1[3] = v12;
      a1[4] = sub_1D8A6D324(&qword_1EE0E3F80, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
      v14 = __swift_allocate_boxed_opaque_existential_1(a1);
      return sub_1D8A6D36C(v6, v14, type metadata accessor for AFMResult);
    case 0xBLL:
      v16 = type metadata accessor for SyntheticDetectionResult(0);
      v8 = swift_projectBox();
      a1[3] = v16;
      a1[4] = sub_1D8A6D324(&qword_1EE0E4D38, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_15;
    case 0xCLL:
      v18 = type metadata accessor for GroundedParseEmbeddingsResult(0);
      v8 = swift_projectBox();
      a1[3] = v18;
      a1[4] = sub_1D8A6D324(&qword_1ECA64220, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_15;
    case 0xDLL:
      v25 = type metadata accessor for GroundedParseClassificationsResult(0);
      v8 = swift_projectBox();
      a1[3] = v25;
      a1[4] = sub_1D8A6D324(&qword_1ECA64218, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
      boxed_opaque_existential_1 = __swift_allocate_boxed_opaque_existential_1(a1);
      v10 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_15:
      result = sub_1D8A6D488(v8, boxed_opaque_existential_1, v10);
      break;
    default:
      v19 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
      v20 = swift_projectBox();
      a1[3] = v19;
      a1[4] = sub_1D881CF20(&qword_1ECA64240, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
      v21 = __swift_allocate_boxed_opaque_existential_1(a1);

      result = sub_1D894733C(v20, v21);
      break;
  }

  return result;
}

double CVDetection.bounds.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  (*(v2 + 64))(v4, v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  Corners.bounds.getter();
  return result;
}

uint64_t sub_1D8A5B798@<X0>(uint64_t a1@<X8>)
{
  v3 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = &v47[-((v4 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v6 = type metadata accessor for ParseDetectorResult(0);
  v7 = MEMORY[0x1EEE9AC00](v6);
  v9 = &v47[-((v8 + 15) & 0xFFFFFFFFFFFFFFF0)];
  v10 = *v1 >> 60;
  if (v10 == 1)
  {
    v29 = swift_projectBox();
    sub_1D8A6D488(v29, v5, type metadata accessor for GroundedParseDetectorResult);
    v30 = sub_1D8B13240();
    (*(*(v30 - 8) + 16))(a1, v5, v30);
    v31 = *&v5[v3[9]];
    v32 = *&v5[v3[7]];
    v33 = type metadata accessor for GenericParseDataResult(0);
    sub_1D8A6D488(&v5[v3[13]], a1 + v33[7], type metadata accessor for VisualUnderstandingContainer);
    v34 = v3[11];
    v48 = v5[v3[10]];
    v35 = v3[16];
    v36 = *&v5[v3[15]];
    v37 = &v5[v3[12]];
    v39 = *v37;
    v38 = v37[1];
    v41 = *&v5[v34];
    v40 = *&v5[v34 + 8];
    v42 = *&v5[v35];

    sub_1D8A6D3D4(v5, type metadata accessor for GroundedParseDetectorResult);
    *(a1 + v33[5]) = v31;
    *(a1 + v33[6]) = v32;
    *(a1 + v33[8]) = v48;
    *(a1 + v33[9]) = v36;
    v43 = (a1 + v33[10]);
    *v43 = v39;
    v43[1] = v38;
    v44 = (a1 + v33[11]);
    *v44 = v41;
    v44[1] = v40;
    *(a1 + v33[12]) = v42;
    return (*(*(v33 - 1) + 56))(a1, 0, 1, v33);
  }

  else if (v10 == 4)
  {
    v11 = v7;
    v12 = swift_projectBox();
    sub_1D8A6D488(v12, v9, type metadata accessor for ParseDetectorResult);
    v13 = sub_1D8B13240();
    (*(*(v13 - 8) + 16))(a1, v9, v13);
    v14 = *&v9[v11[9]];
    v15 = *&v9[v11[7]];
    v16 = type metadata accessor for GenericParseDataResult(0);
    sub_1D8A6D488(&v9[v11[13]], a1 + v16[7], type metadata accessor for VisualUnderstandingContainer);
    v17 = v11[11];
    v48 = v9[v11[10]];
    v18 = v11[15];
    v19 = *&v9[v11[14]];
    v20 = &v9[v11[12]];
    v22 = *v20;
    v21 = v20[1];
    v24 = *&v9[v17];
    v23 = *&v9[v17 + 8];
    v25 = *&v9[v18];

    sub_1D8A6D3D4(v9, type metadata accessor for ParseDetectorResult);
    *(a1 + v16[5]) = v14;
    *(a1 + v16[6]) = v15;
    *(a1 + v16[8]) = v48;
    *(a1 + v16[9]) = v19;
    v26 = (a1 + v16[10]);
    *v26 = v22;
    v26[1] = v21;
    v27 = (a1 + v16[11]);
    *v27 = v24;
    v27[1] = v23;
    *(a1 + v16[12]) = v25;
    return (*(*(v16 - 1) + 56))(a1, 0, 1, v16);
  }

  else
  {
    v45 = type metadata accessor for GenericParseDataResult(0);
    v46 = *(*(v45 - 8) + 56);

    return v46(a1, 1, 1, v45);
  }
}

uint64_t CVDetection.corners.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

void CVDetection.DetectionType.maxDetectionFps.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 <= 8u)
    {
      if (v1 - 6 >= 2)
      {
LABEL_8:
        sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (v1 - 9 >= 2 && v1 - 12 >= 2)
    {
      goto LABEL_8;
    }
  }
}

uint64_t CVDetection.label.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A5BE40()
{
  v1 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v1 - 8);
  v3 = &v26 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v7 - 8);
  v9 = &v26 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10 - 8);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v13 - 8);
  v15 = &v26 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v16 = 0;
  v17 = *v0 >> 60;
  if (v17 <= 8)
  {
    if (v17 == 1)
    {
      v23 = swift_projectBox();
      sub_1D8A6D488(v23, v12, type metadata accessor for GroundedParseDetectorResult);
      v16 = sub_1D8AD2AC8();
      v19 = type metadata accessor for GroundedParseDetectorResult;
      v20 = v12;
      goto LABEL_12;
    }

    if (v17 == 2)
    {
      v21 = swift_projectBox();
      sub_1D8A6D488(v21, v9, type metadata accessor for MetaDetectionResult);
      v16 = sub_1D8AD28E4();
      v19 = type metadata accessor for MetaDetectionResult;
      v20 = v9;
      goto LABEL_12;
    }
  }

  else
  {
    if ((v17 - 9) < 2)
    {
      v22 = swift_projectBox();
      sub_1D8A6D488(v22, v15, type metadata accessor for AFMResult);
      v16 = sub_1D8AD2CAC();
      v19 = type metadata accessor for AFMResult;
      v20 = v15;
      goto LABEL_12;
    }

    if (v17 == 12)
    {
      v24 = swift_projectBox();
      sub_1D8A6D488(v24, v6, type metadata accessor for GroundedParseEmbeddingsResult);
      v16 = sub_1D8AD2CD8();
      v19 = type metadata accessor for GroundedParseEmbeddingsResult;
      v20 = v6;
      goto LABEL_12;
    }

    if (v17 == 13)
    {
      v18 = swift_projectBox();
      sub_1D8A6D488(v18, v3, type metadata accessor for GroundedParseClassificationsResult);
      v16 = sub_1D8AD2D04();
      v19 = type metadata accessor for GroundedParseClassificationsResult;
      v20 = v3;
LABEL_12:
      sub_1D8A6D3D4(v20, v19);
    }
  }

  return v16;
}

void __swiftcall Corners.init(topLeft:topRight:bottomLeft:bottomRight:)(VisualIntelligenceCore::Corners *__return_ptr retstr, CGPoint topLeft, CGPoint topRight, CGPoint bottomLeft, CGPoint bottomRight)
{
  retstr->topLeft.x = topLeft.x;
  retstr->topLeft.y = topLeft.y;
  retstr->topRight.x = topRight.x;
  retstr->topRight.y = topRight.y;
  retstr->bottomLeft.x = bottomLeft.x;
  retstr->bottomLeft.y = bottomLeft.y;
  retstr->bottomRight.x = bottomRight.x;
  retstr->bottomRight.y = bottomRight.y;
}

__n128 Corners.allPointsClockwise.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F00, &unk_1D8B22F60);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1D8B1ABA0;
  *(v1 + 32) = v2;
  v5 = v0[2];
  result = v0[3];
  *(v1 + 64) = result;
  *(v1 + 80) = v5;
  *(v1 + 48) = v3;
  return result;
}

float CVDetection.confidence.getter()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

void CVDetection.modifyWithRotation(_:)(double *a1@<X0>, unint64_t *a2@<X8>)
{
  v3 = v2;
  v122 = a1;
  v123 = a2;
  v115 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v115);
  v116 = &v110 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v113 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v113);
  v114 = &v110 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v118 = type metadata accessor for SyntheticDetectionResult(0);
  MEMORY[0x1EEE9AC00](v118);
  v117 = &v110 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v119 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v119);
  v120 = &v110 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v111 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v110 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v9);
  v11 = &v110 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v12);
  v14 = &v110 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v121 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v121);
  v16 = &v110 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  v17 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v110 - ((v18 + 15) & 0xFFFFFFFFFFFFFFF0);
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v110 - v21;
  v23 = *v122;
  v24 = *v3;
  switch(v24 >> 60)
  {
    case 1uLL:
      v78 = swift_projectBox();
      sub_1D8A6D488(v78, v11, type metadata accessor for GroundedParseDetectorResult);
      v79 = swift_allocBox();
      *&v130 = v23;
      GroundedParseDetectorResult.modifyWithRotation(_:)(&v130, v80);
      sub_1D8A6D3D4(v11, type metadata accessor for GroundedParseDetectorResult);
      v24 = v79 | 0x1000000000000000;
      break;
    case 2uLL:
      v50 = swift_projectBox();
      sub_1D8A6D488(v50, v19, type metadata accessor for MetaDetectionResult);
      v51 = swift_allocBox();
      *&v130 = v23;
      MetaDetectionResult.modifyWithRotation(_:)(&v130, v52);
      sub_1D8A6D3D4(v19, type metadata accessor for MetaDetectionResult);
      v24 = v51 | 0x2000000000000000;
      break;
    case 3uLL:
      v53 = swift_projectBox();
      sub_1D8A6D488(v53, v16, type metadata accessor for ObjectDetectorResult);
      v54 = v121;
      v55 = swift_allocBox();
      v57 = v56;
      v58 = sub_1D8B13240();
      (*(*(v58 - 8) + 16))(v57, v16, v58);
      v59 = v54[6];
      v60 = *&v16[v54[5]];
      v61 = *&v16[v59 + 16];
      v126 = *&v16[v59];
      v127 = v61;
      v62 = *&v16[v59 + 48];
      v128 = *&v16[v59 + 32];
      v129 = v62;
      v125 = v23;
      v124 = *&v16[v54[8]];
      sub_1D8A5A9D8(&v125, &v124, &v130);
      v63 = &v16[v54[7]];
      v65 = *v63;
      v64 = *(v63 + 1);
      v66 = *&v16[v54[9]];

      sub_1D8A6D3D4(v16, type metadata accessor for ObjectDetectorResult);
      *(v57 + v54[5]) = v60;
      v67 = (v57 + v54[6]);
      v68 = v133;
      v69 = v132;
      v70 = v131;
      *v67 = v130;
      v67[1] = v70;
      v67[2] = v69;
      v67[3] = v68;
      v71 = (v57 + v54[7]);
      *v71 = v65;
      v71[1] = v64;
      *(v57 + v54[8]) = v23;
      *(v57 + v54[9]) = v66;
      v24 = v55 | 0x3000000000000000;
      break;
    case 4uLL:
      v43 = swift_projectBox();
      sub_1D8A6D488(v43, v14, type metadata accessor for ParseDetectorResult);
      v44 = swift_allocBox();
      *&v130 = v23;
      ParseDetectorResult.modifyWithRotation(_:)(&v130, v45);
      sub_1D8A6D3D4(v14, type metadata accessor for ParseDetectorResult);
      v24 = v44 | 0x4000000000000000;
      break;
    case 5uLL:
      v81 = swift_projectBox();
      v82 = v112;
      sub_1D8A6D488(v81, v112, type metadata accessor for TextDetectorResult);
      v28 = swift_allocBox();
      *&v130 = v23;
      TextDetectorResult.modifyWithRotation(_:)(&v130, v83);
      sub_1D8A6D3D4(v82, type metadata accessor for TextDetectorResult);
      v42 = 0x5000000000000000;
      goto LABEL_15;
    case 6uLL:
      v84 = swift_projectBox();
      v85 = v120;
      sub_1D8A6D488(v84, v120, type metadata accessor for StreamingBarcodeDetectorResult);
      v86 = swift_allocBox();
      *&v130 = v23;
      StreamingBarcodeDetectorResult.modifyWithRotation(_:)(&v130, v87);
      sub_1D8A6D3D4(v85, type metadata accessor for StreamingBarcodeDetectorResult);
      v24 = v86 | 0x6000000000000000;
      break;
    case 7uLL:
      v72 = swift_projectBox();
      v73 = v120;
      sub_1D8A6D488(v72, v120, type metadata accessor for StreamingBarcodeDetectorResult);
      v74 = swift_allocBox();
      *&v130 = v23;
      StreamingBarcodeDetectorResult.modifyWithRotation(_:)(&v130, v75);
      sub_1D8A6D3D4(v73, type metadata accessor for StreamingBarcodeDetectorResult);
      v24 = v74 | 0x7000000000000000;
      break;
    case 8uLL:
      v88 = swift_projectBox();
      sub_1D8A6D488(v88, v16, type metadata accessor for ObjectDetectorResult);
      v89 = v121;
      v90 = swift_allocBox();
      v92 = v91;
      v93 = sub_1D8B13240();
      (*(*(v93 - 8) + 16))(v92, v16, v93);
      v94 = v89[6];
      v95 = *&v16[v89[5]];
      v96 = *&v16[v94 + 16];
      v126 = *&v16[v94];
      v127 = v96;
      v97 = *&v16[v94 + 48];
      v128 = *&v16[v94 + 32];
      v129 = v97;
      v125 = v23;
      v124 = *&v16[v89[8]];
      sub_1D8A5A9D8(&v125, &v124, &v130);
      v98 = &v16[v89[7]];
      v100 = *v98;
      v99 = *(v98 + 1);
      v101 = *&v16[v89[9]];

      sub_1D8A6D3D4(v16, type metadata accessor for ObjectDetectorResult);
      *(v92 + v89[5]) = v95;
      v102 = (v92 + v89[6]);
      v103 = v133;
      v104 = v132;
      v105 = v131;
      *v102 = v130;
      v102[1] = v105;
      v102[2] = v104;
      v102[3] = v103;
      v106 = (v92 + v89[7]);
      *v106 = v100;
      v106[1] = v99;
      *(v92 + v89[8]) = v23;
      *(v92 + v89[9]) = v101;
      v24 = v90 | 0x8000000000000000;
      break;
    case 9uLL:
    case 0xAuLL:

      break;
    case 0xBuLL:
      v25 = swift_projectBox();
      v26 = v117;
      sub_1D8A6D488(v25, v117, type metadata accessor for SyntheticDetectionResult);
      v27 = v118;
      v28 = swift_allocBox();
      v30 = v29;
      v31 = (v26 + v27[5]);
      v32 = v31[1];
      v126 = *v31;
      v127 = v32;
      v33 = v31[3];
      v128 = v31[2];
      v129 = v33;
      v125 = v23;
      v124 = *(v26 + v27[7]);
      sub_1D8A5A9D8(&v125, &v124, &v130);
      v34 = sub_1D8B13240();
      (*(*(v34 - 8) + 16))(v30, v26, v34);
      v35 = *(v26 + v27[6]);
      v36 = *(v26 + v27[8]);
      v37 = *(v26 + v27[9]);
      sub_1D8A699B4(v37);
      sub_1D8A6D3D4(v26, type metadata accessor for SyntheticDetectionResult);
      v38 = (v30 + v27[5]);
      v39 = v133;
      v40 = v132;
      v41 = v131;
      *v38 = v130;
      v38[1] = v41;
      v38[2] = v40;
      v38[3] = v39;
      *(v30 + v27[6]) = v35;
      *(v30 + v27[7]) = v23;
      *(v30 + v27[8]) = v36;
      *(v30 + v27[9]) = v37;
      v42 = 0xB000000000000000;
      goto LABEL_15;
    case 0xCuLL:
      v46 = swift_projectBox();
      v47 = v114;
      sub_1D8A6D488(v46, v114, type metadata accessor for GroundedParseEmbeddingsResult);
      v48 = swift_allocBox();
      *&v130 = v23;
      GroundedParseEmbeddingsResult.modifyWithRotation(_:)(&v130, v49);
      sub_1D8A6D3D4(v47, type metadata accessor for GroundedParseEmbeddingsResult);
      v24 = v48 | 0xC000000000000000;
      break;
    case 0xDuLL:
      v107 = swift_projectBox();
      v108 = v116;
      sub_1D8A6D488(v107, v116, type metadata accessor for GroundedParseClassificationsResult);
      v28 = swift_allocBox();
      *&v130 = v23;
      GroundedParseClassificationsResult.modifyWithRotation(_:)(&v130, v109);
      sub_1D8A6D3D4(v108, type metadata accessor for GroundedParseClassificationsResult);
      v42 = 0xD000000000000000;
LABEL_15:
      v24 = v28 | v42;
      break;
    default:
      v76 = swift_projectBox();
      sub_1D894733C(v76, v22);
      v24 = swift_allocBox();
      sub_1D8A5CDD4(v77, v23);
      sub_1D8949CB8(v22);
      break;
  }

  *v123 = v24;
}

uint64_t sub_1D8A5CDD4@<X0>(uint64_t a1@<X8>, double a2@<D0>)
{
  v3 = v2;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v7 = *(v6 - 1);
  v8 = MEMORY[0x1EEE9AC00](v6);
  v47 = &v38 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v11 = &v38 - v10;
  v12 = sub_1D8B13240();
  MEMORY[0x1EEE9AC00](v12);
  v44 = v14;
  v15 = *(v14 + 16);
  v43 = &v38 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15();
  v16 = v6[10];
  v17 = *(v2 + v6[9]);
  v18 = *(v2 + v16 + 16);
  v50 = *(v2 + v16);
  v51 = v18;
  v19 = *(v2 + v16 + 48);
  v52 = *(v2 + v16 + 32);
  v53 = v19;
  v49 = a2;
  v48 = *(v2 + v6[13]);
  sub_1D8A5A9D8(&v49, &v48, v54);
  v20 = *(v2 + v6[11]);
  v21 = *(v2 + v6[12]);
  v22 = *(v3 + v6[14]);
  v23 = *(v3 + v6[15]);
  v24 = *(v23 + 16);
  if (v24)
  {
    v40 = v12;
    v41 = v6;
    v42 = a1;
    *&v50 = MEMORY[0x1E69E7CC0];
    v38 = v20;

    v39 = v21;

    result = sub_1D87F49CC(0, v24, 0);
    v26 = 0;
    v27 = v50;
    v46 = (*(v7 + 80) + 32) & ~*(v7 + 80);
    v45 = v23 + v46;
    while (v26 < *(v23 + 16))
    {
      v28 = v23;
      v29 = v7;
      v30 = *(v7 + 72);
      v31 = v47;
      sub_1D894733C(v45 + v30 * v26, v47);
      sub_1D8A5CDD4(v11, a2);
      sub_1D8949CB8(v31);
      *&v50 = v27;
      v33 = *(v27 + 16);
      v32 = *(v27 + 24);
      if (v33 >= v32 >> 1)
      {
        sub_1D87F49CC((v32 > 1), v33 + 1, 1);
        v27 = v50;
      }

      ++v26;
      *(v27 + 16) = v33 + 1;
      result = sub_1D87C14D4(v11, v27 + v46 + v33 * v30);
      v7 = v29;
      v23 = v28;
      if (v24 == v26)
      {
        a1 = v42;
        v6 = v41;
        v12 = v40;
        v21 = v39;
        v34 = v38;
        goto LABEL_9;
      }
    }

    __break(1u);
  }

  else
  {
    v34 = *(v3 + v6[11]);

    v27 = MEMORY[0x1E69E7CC0];
LABEL_9:
    result = (*(v44 + 32))(a1, v43, v12);
    *(a1 + v6[9]) = v17;
    v35 = (a1 + v6[10]);
    v36 = v54[1];
    *v35 = v54[0];
    v35[1] = v36;
    v37 = v54[3];
    v35[2] = v54[2];
    v35[3] = v37;
    *(a1 + v6[11]) = v34;
    *(a1 + v6[12]) = v21;
    *(a1 + v6[13]) = a2;
    *(a1 + v6[14]) = v22;
    *(a1 + v6[15]) = v27;
  }

  return result;
}

void sub_1D8A5D1D8(CGFloat *a1@<X8>, CGFloat a2@<D0>, CGFloat a3@<D1>, CGFloat a4@<D2>, CGFloat a5@<D3>)
{
  Corners.bounds.getter();
  v11 = v10;
  v13 = v12;
  rect_16 = v12;
  rect_24 = v14;
  v34 = v15;
  v16 = v10 - a2;
  rect = v10;
  v36.origin.x = a2;
  v36.origin.y = a3;
  v36.size.width = a4;
  v36.size.height = a5;
  v17 = v16 / CGRectGetWidth(v36);
  v37.origin.x = a2;
  v37.origin.y = a3;
  v37.size.width = a4;
  v37.size.height = a5;
  rect_8 = a5;
  v18 = (v13 - a3) / CGRectGetHeight(v37);
  v38.origin.x = v11;
  v38.origin.y = v13;
  v38.size.width = v34;
  v38.size.height = rect_24;
  Width = CGRectGetWidth(v38);
  v39.origin.x = a2;
  v39.origin.y = a3;
  v39.size.width = a4;
  v39.size.height = a5;
  v19 = Width / CGRectGetWidth(v39);
  v40.origin.x = rect;
  v40.origin.y = rect_16;
  v40.size.width = v34;
  v40.size.height = rect_24;
  Height = CGRectGetHeight(v40);
  v41.origin.x = a2;
  v41.origin.y = a3;
  v41.size.width = a4;
  v41.size.height = rect_8;
  v21 = Height / CGRectGetHeight(v41);
  v42.origin.x = v17;
  v42.origin.y = v18;
  v42.size.width = v19;
  v42.size.height = v21;
  MinX = CGRectGetMinX(v42);
  v43.origin.x = v17;
  v43.origin.y = v18;
  v43.size.width = v19;
  v43.size.height = v21;
  rect_24a = CGRectGetMinY(v43);
  v44.origin.x = v17;
  v44.origin.y = v18;
  v44.size.width = v19;
  v44.size.height = v21;
  rect_16a = CGRectGetMaxX(v44);
  v45.origin.x = v17;
  v45.origin.y = v18;
  v45.size.width = v19;
  v45.size.height = v21;
  MinY = CGRectGetMinY(v45);
  v46.origin.x = v17;
  v46.origin.y = v18;
  v46.size.width = v19;
  v46.size.height = v21;
  v23 = CGRectGetMinX(v46);
  v47.origin.x = v17;
  v47.origin.y = v18;
  v47.size.width = v19;
  v47.size.height = v21;
  MaxY = CGRectGetMaxY(v47);
  v48.origin.x = v17;
  v48.origin.y = v18;
  v48.size.width = v19;
  v48.size.height = v21;
  MaxX = CGRectGetMaxX(v48);
  v49.origin.x = v17;
  v49.origin.y = v18;
  v49.size.width = v19;
  v49.size.height = v21;
  v26 = CGRectGetMaxY(v49);
  *a1 = MinX;
  a1[1] = rect_24a;
  a1[2] = rect_16a;
  a1[3] = MinY;
  a1[4] = v23;
  a1[5] = MaxY;
  a1[6] = MaxX;
  a1[7] = v26;
}

uint64_t CVDetection.id.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 48))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t CVDetection.DetectionType.requiredDRQAnnotationTypes.getter()
{
  v1 = *v0;
  v2 = v1 >= 0xD;
  v4 = v1 == 13;
  v3 = (1 << v1) & 0x3002;
  v4 = !v4 && v2 || v3 == 0;
  if (v4)
  {
    return MEMORY[0x1E69E7CD0];
  }

  else
  {
    return sub_1D8A4F030(&unk_1F5428B18);
  }
}

uint64_t Corners.description.getter()
{
  v35 = sub_1D8B12F00();
  v1 = *(v35 - 1);
  MEMORY[0x1EEE9AC00](v35);
  v3 = &v24 - ((v2 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = sub_1D8B13350();
  MEMORY[0x1EEE9AC00](v4 - 8);
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC0, &unk_1D8B36E70);
  v36 = *(v5 - 8);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v24 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v24 - v9;
  v12 = *v0;
  v11 = v0[1];
  v14 = v0[2];
  v13 = v0[3];
  v15 = v0[5];
  v16 = v0[7];
  sub_1D8B13290();
  sub_1D88914A8();
  sub_1D8B12EC0();
  v38 = xmmword_1D8B254D0;
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA65AC8, &unk_1D8B2BE30);
  sub_1D881CF20(&qword_1ECA65AD0, &qword_1ECA65AC8, &unk_1D8B2BE30, MEMORY[0x1E69E5FB8]);
  sub_1D8B12EF0();
  MEMORY[0x1DA71C3B0](v3, v5);
  (*(v1 + 8))(v3, v35);
  v35 = *(v36 + 8);
  v36 += 8;
  v35(v8, v5);
  v37 = v12;
  sub_1D881CF20(&qword_1ECA65AD8, &qword_1ECA65AC0, &unk_1D8B36E70, MEMORY[0x1E6968E80]);
  sub_1D8B156F0();
  v17 = *(&v38 + 1);
  v25 = v38;
  v37 = v11;
  sub_1D8B156F0();
  v18 = *(&v38 + 1);
  v26 = v38;
  v37 = v14;
  sub_1D8B156F0();
  v19 = *(&v38 + 1);
  v28 = v38;
  v37 = v13;
  sub_1D8B156F0();
  v20 = *(&v38 + 1);
  v27 = v38;
  v37 = v15;
  sub_1D8B156F0();
  v30 = *(&v38 + 1);
  v32 = v38;
  v37 = v15;
  sub_1D8B156F0();
  v29 = *(&v38 + 1);
  v31 = v38;
  v37 = v16;
  sub_1D8B156F0();
  v33 = *(&v38 + 1);
  v34 = v38;
  v37 = v16;
  sub_1D8B156F0();
  v21 = v38;
  *&v38 = 0;
  *(&v38 + 1) = 0xE000000000000000;
  sub_1D8B16720();
  MEMORY[0x1DA71EFA0](0x28203A6C743CLL, 0xE600000000000000);
  MEMORY[0x1DA71EFA0](v25, v17);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v26, v18);

  MEMORY[0x1DA71EFA0](0x28203A7274203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v28, v19);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v27, v20);

  MEMORY[0x1DA71EFA0](0x28203A6C62203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v32, v30);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v31, v29);

  MEMORY[0x1DA71EFA0](0x28203A7262203B29, 0xE800000000000000);
  MEMORY[0x1DA71EFA0](v34, v33);

  MEMORY[0x1DA71EFA0](8236, 0xE200000000000000);
  MEMORY[0x1DA71EFA0](v21, *(&v21 + 1));

  MEMORY[0x1DA71EFA0](15913, 0xE200000000000000);
  v22 = v38;
  v35(v10, v5);
  return v22;
}

double Corners.center.getter()
{
  v2 = *v0;
  v1 = v0[1];
  v4 = v0[2];
  v3 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v8 = v0[6];
  v7 = v0[7];
  v9 = MEMORY[0x1E69E7CC0];
  v37 = MEMORY[0x1E69E7CC0];
  sub_1D87F4D64(0, 4, 0);
  v10 = v37;
  v12 = *(v37 + 16);
  v11 = *(v37 + 24);
  v13 = v11 >> 1;
  v14 = v12 + 1;
  if (v11 >> 1 <= v12)
  {
    sub_1D87F4D64((v11 > 1), v12 + 1, 1);
    v10 = v37;
    v11 = *(v37 + 24);
    v13 = v11 >> 1;
  }

  *(v10 + 16) = v14;
  *(v10 + 8 * v12 + 32) = v2;
  v15 = v12 + 2;
  if (v13 < v15)
  {
    sub_1D87F4D64((v11 > 1), v15, 1);
    v10 = v37;
  }

  *(v10 + 16) = v15;
  *(v10 + 8 * v14 + 32) = v4;
  v17 = *(v10 + 16);
  v16 = *(v10 + 24);
  v18 = v17 + 1;
  if (v17 >= v16 >> 1)
  {
    sub_1D87F4D64((v16 > 1), v17 + 1, 1);
  }

  v19 = v37;
  *(v37 + 16) = v18;
  *(v37 + 8 * v17 + 32) = v8;
  v20 = *(v37 + 24);
  if ((v17 + 2) > (v20 >> 1))
  {
    sub_1D87F4D64((v20 > 1), v17 + 2, 1);
    v19 = v37;
  }

  *(v19 + 16) = v17 + 2;
  *(v19 + 8 * v18 + 32) = v5;
  v21 = 0.0;
  v22 = 4;
  do
  {
    v21 = v21 + (*(v19 + 8 * v22) - v21) / (v22 - 3);
    ++v22;
  }

  while (-2 - v17 + v22 != 4);

  v38 = v9;
  sub_1D87F4D64(0, 4, 0);
  v23 = v9;
  v25 = *(v9 + 16);
  v24 = *(v9 + 24);
  v26 = v24 >> 1;
  v27 = v25 + 1;
  if (v24 >> 1 <= v25)
  {
    sub_1D87F4D64((v24 > 1), v25 + 1, 1);
    v23 = v9;
    v24 = *(v9 + 24);
    v26 = v24 >> 1;
  }

  *(v23 + 16) = v27;
  *(v23 + 8 * v25 + 32) = v1;
  v28 = v25 + 2;
  if (v26 < v28)
  {
    sub_1D87F4D64((v24 > 1), v28, 1);
    v23 = v9;
  }

  *(v23 + 16) = v28;
  *(v23 + 8 * v27 + 32) = v3;
  v30 = *(v23 + 16);
  v29 = *(v23 + 24);
  v31 = v30 + 1;
  if (v30 >= v29 >> 1)
  {
    sub_1D87F4D64((v29 > 1), v30 + 1, 1);
  }

  v32 = v38;
  *(v38 + 16) = v31;
  *(v38 + 8 * v30 + 32) = v7;
  v33 = *(v38 + 24);
  if ((v30 + 2) > (v33 >> 1))
  {
    sub_1D87F4D64((v33 > 1), v30 + 2, 1);
    v32 = v38;
  }

  *(v32 + 16) = v30 + 2;
  *(v32 + 8 * v31 + 32) = v6;
  v34 = 0.0;
  v35 = 4;
  do
  {
    v34 = v34 + (*(v32 + 8 * v35) - v34) / (v35 - 3);
    ++v35;
  }

  while (-2 - v30 + v35 != 4);

  return v21;
}

__n128 Corners.clockwiseLoop.getter()
{
  __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA63F00, &unk_1D8B22F60);
  v1 = swift_allocObject();
  v2 = *v0;
  v3 = v0[1];
  *(v1 + 16) = xmmword_1D8B1B910;
  *(v1 + 32) = v2;
  v5 = v0[2];
  result = v0[3];
  *(v1 + 48) = v3;
  *(v1 + 64) = result;
  *(v1 + 80) = v5;
  *(v1 + 96) = v2;
  return result;
}

uint64_t sub_1D8A5DE54()
{
  v1 = 0x7466654C706F74;
  v2 = 0x654C6D6F74746F62;
  if (*v0 != 2)
  {
    v2 = 0x69526D6F74746F62;
  }

  if (*v0)
  {
    v1 = 0x7468676952706F74;
  }

  if (*v0 <= 1u)
  {
    return v1;
  }

  else
  {
    return v2;
  }
}

uint64_t sub_1D8A5DEDC@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A6CB18(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A5DF04(uint64_t a1)
{
  v2 = sub_1D8A699CC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5DF40(uint64_t a1)
{
  v2 = sub_1D8A699CC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t Corners.encode(to:)(void *a1)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EA0, &qword_1D8B36E80);
  v5 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v7 = &v17 - v6;
  v8 = *v1;
  v9 = v1[1];
  v10 = v1[2];
  v11 = v1[3];
  v12 = v1[4];
  v13 = v1[5];
  v14 = v1[6];
  v15 = v1[7];
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A699CC();
  sub_1D8B16DD0();
  v19 = v8;
  v20 = v9;
  v18 = 0;
  type metadata accessor for CGPoint(0);
  sub_1D8A6D324(&qword_1ECA67EB0, type metadata accessor for CGPoint, MEMORY[0x1E695EFA8]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v19 = v10;
    v20 = v11;
    v18 = 1;
    sub_1D8B16AE0();
    v19 = v12;
    v20 = v13;
    v18 = 2;
    sub_1D8B16AE0();
    v19 = v14;
    v20 = v15;
    v18 = 3;
    sub_1D8B16AE0();
  }

  return (*(v5 + 8))(v7, v4);
}

uint64_t Corners.hash(into:)()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1D8818B80(*v0, v0[1]);
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);

  return sub_1D8818B80(v5, v6);
}

uint64_t Corners.hashValue.getter()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  return sub_1D8B16D80();
}

uint64_t Corners.init(from:)@<X0>(void *a1@<X0>, _OWORD *a2@<X8>)
{
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EB8, &qword_1D8B36E88);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v13 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A699CC();
  sub_1D8B16DB0();
  if (!v2)
  {
    type metadata accessor for CGPoint(0);
    v14 = 0;
    sub_1D8A6D324(&qword_1ECA67EC0, type metadata accessor for CGPoint, MEMORY[0x1E695EFC0]);
    sub_1D8B16A10();
    v9 = v13;
    v14 = 1;
    sub_1D8B16A10();
    v10 = v13;
    v14 = 2;
    sub_1D8B16A10();
    v12 = v13;
    v14 = 3;
    sub_1D8B16A10();
    (*(v6 + 8))(v8, v5);
    *a2 = v9;
    a2[1] = v10;
    a2[2] = v12;
    a2[3] = v13;
  }

  return __swift_destroy_boxed_opaque_existential_1(a1);
}

uint64_t sub_1D8A5E5AC()
{
  v1 = *v0;
  v2 = v0[1];
  v3 = v0[2];
  v4 = v0[3];
  v5 = v0[4];
  v6 = v0[5];
  v7 = v0[6];
  v8 = v0[7];
  sub_1D8B16D20();
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A5E654()
{
  v1 = v0[2];
  v2 = v0[3];
  v3 = v0[4];
  v4 = v0[5];
  v5 = v0[6];
  v6 = v0[7];
  sub_1D8818B80(*v0, v0[1]);
  sub_1D8818B80(v1, v2);
  sub_1D8818B80(v3, v4);

  return sub_1D8818B80(v5, v6);
}

uint64_t sub_1D8A5E6DC(uint64_t a1)
{
  v2 = *v1;
  v3 = v1[1];
  v4 = v1[2];
  v5 = v1[3];
  v6 = v1[4];
  v7 = v1[5];
  v8 = v1[6];
  v9 = v1[7];
  sub_1D8B16D20();
  sub_1D8818B80(v2, v3);
  sub_1D8818B80(v4, v5);
  sub_1D8818B80(v6, v7);
  sub_1D8818B80(v8, v9);
  return sub_1D8B16D80();
}

uint64_t static CVSafeAreaPolicy.== infix(_:_:)(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

uint64_t sub_1D8A5E808(uint64_t a1, uint64_t a2)
{
  v2 = *a1;
  v3 = *a2;
  v4 = *(a2 + 4);
  if (*(a1 + 4) != 1)
  {
    return (v4 & 1) == 0 && v2 == v3;
  }

  v5 = LODWORD(v3) == 0;
  if (v3 == 0.0)
  {
    v6 = *(a2 + 4);
  }

  else
  {
    v6 = 0;
  }

  if (v5)
  {
    v4 = 0;
  }

  if (v2 == 0.0)
  {
    return v6;
  }

  else
  {
    return v4;
  }
}

void CVDetection.DetectionType.maxSecondsDecay.getter()
{
  v1 = *v0;
  if (v1 > 5)
  {
    if (*v0 <= 8u)
    {
      if (v1 - 6 >= 2)
      {
LABEL_8:
        sub_1D8B168C0();
        __break(1u);
      }
    }

    else if (v1 - 9 >= 2 && v1 - 12 >= 2)
    {
      goto LABEL_8;
    }
  }
}

void sub_1D8A5E980(uint64_t a1, uint64_t a2)
{
  switch(*v2)
  {
    case 1:
      sub_1D8A5EAB8(a1, a2);
    case 2:
      sub_1D8A5EB50(a1, a2);
    case 3:
      sub_1D8A5EBE8(a1, a2);
    case 4:
      sub_1D8A5EC34(a1, a2);
    case 5:
      sub_1D8A5ED18(a1, a2);
    case 6:
      sub_1D8A5EC80(a1, a2);
    case 7:
      sub_1D8A5EA20(a1, a2);
    case 8:
      sub_1D8A5ECCC(a1, a2);
    case 9:
      sub_1D8A5ED64(a1, a2);
    case 0xA:
      sub_1D8A5EB9C(a1, a2);
    case 0xB:
      sub_1D8A5EA6C(a1, a2);
    case 0xC:
      sub_1D8A5EDB0(a1, a2);
    case 0xD:
      sub_1D8A5EDFC(a1, a2);
    default:
      sub_1D8A5EB04(a1, a2);
  }
}

uint64_t sub_1D8A5EE48(uint64_t a1)
{
  v2 = sub_1D8A69C6C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EE84(uint64_t a1)
{
  v2 = sub_1D8A69C6C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EEC0(uint64_t a1)
{
  v2 = sub_1D8A69A20();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EEFC(uint64_t a1)
{
  v2 = sub_1D8A69A20();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EF38(uint64_t a1)
{
  v2 = sub_1D8A69A74();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EF74(uint64_t a1)
{
  v2 = sub_1D8A69A74();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5EFB0(uint64_t a1)
{
  v2 = sub_1D8A69E64();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5EFEC(uint64_t a1)
{
  v2 = sub_1D8A69E64();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F028(uint64_t a1)
{
  v2 = sub_1D8A69AC8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F064(uint64_t a1)
{
  v2 = sub_1D8A69AC8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F0A0(uint64_t a1)
{
  v2 = sub_1D8A69EB8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F0DC(uint64_t a1)
{
  v2 = sub_1D8A69EB8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F118(uint64_t a1)
{
  v2 = sub_1D8A69E10();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F154(uint64_t a1)
{
  v2 = sub_1D8A69E10();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F190(uint64_t a1)
{
  v2 = sub_1D8A69B70();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F1CC(uint64_t a1)
{
  v2 = sub_1D8A69B70();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F208(uint64_t a1)
{
  v2 = sub_1D8A69DBC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F244(uint64_t a1)
{
  v2 = sub_1D8A69DBC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F280(uint64_t a1)
{
  v2 = sub_1D8A69D68();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F2BC(uint64_t a1)
{
  v2 = sub_1D8A69D68();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F2F8(uint64_t a1)
{
  v2 = sub_1D8A69CC0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F334(uint64_t a1)
{
  v2 = sub_1D8A69CC0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F370(uint64_t a1)
{
  v2 = sub_1D8A69C18();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F3AC(uint64_t a1)
{
  v2 = sub_1D8A69C18();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F3E8(uint64_t a1)
{
  v2 = sub_1D8A69B1C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F424(uint64_t a1)
{
  v2 = sub_1D8A69B1C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F460(uint64_t a1)
{
  v2 = sub_1D8A69D14();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F49C(uint64_t a1)
{
  v2 = sub_1D8A69D14();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A5F4D8(uint64_t a1)
{
  v2 = sub_1D8A69BC4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A5F514(uint64_t a1)
{
  v2 = sub_1D8A69BC4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVDetection.DetectionType.encode(to:)(void *a1)
{
  v2 = v1;
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EC8, &qword_1D8B36E90);
  v81 = *(v4 - 8);
  v82 = v4;
  MEMORY[0x1EEE9AC00](v4);
  v80 = &v44 - v5;
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67ED0, &qword_1D8B36E98);
  v78 = *(v6 - 8);
  v79 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v77 = &v44 - v7;
  v8 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67ED8, &qword_1D8B36EA0);
  v75 = *(v8 - 8);
  v76 = v8;
  MEMORY[0x1EEE9AC00](v8);
  v74 = &v44 - v9;
  v10 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EE0, &qword_1D8B36EA8);
  v72 = *(v10 - 8);
  v73 = v10;
  MEMORY[0x1EEE9AC00](v10);
  v71 = &v44 - v11;
  v12 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EE8, &qword_1D8B36EB0);
  v69 = *(v12 - 8);
  v70 = v12;
  MEMORY[0x1EEE9AC00](v12);
  v68 = &v44 - v13;
  v14 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EF0, &qword_1D8B36EB8);
  v66 = *(v14 - 8);
  v67 = v14;
  MEMORY[0x1EEE9AC00](v14);
  v65 = &v44 - v15;
  v64 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67EF8, &qword_1D8B36EC0);
  v63 = *(v64 - 8);
  MEMORY[0x1EEE9AC00](v64);
  v62 = &v44 - v16;
  v61 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F00, &qword_1D8B36EC8);
  v60 = *(v61 - 8);
  MEMORY[0x1EEE9AC00](v61);
  v59 = &v44 - v17;
  v58 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F08, &qword_1D8B36ED0);
  v57 = *(v58 - 8);
  MEMORY[0x1EEE9AC00](v58);
  v56 = &v44 - v18;
  v55 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F10, &qword_1D8B36ED8);
  v54 = *(v55 - 8);
  MEMORY[0x1EEE9AC00](v55);
  v53 = &v44 - v19;
  v52 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F18, &qword_1D8B36EE0);
  v51 = *(v52 - 8);
  MEMORY[0x1EEE9AC00](v52);
  v50 = &v44 - v20;
  v49 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F20, &qword_1D8B36EE8);
  v48 = *(v49 - 8);
  MEMORY[0x1EEE9AC00](v49);
  v47 = &v44 - v21;
  v46 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F28, &qword_1D8B36EF0);
  v45 = *(v46 - 8);
  MEMORY[0x1EEE9AC00](v46);
  v23 = &v44 - v22;
  v24 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F30, &qword_1D8B36EF8);
  v44 = *(v24 - 8);
  MEMORY[0x1EEE9AC00](v24);
  v26 = &v44 - v25;
  v84 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67F38, &qword_1D8B36F00);
  v27 = *(v84 - 8);
  MEMORY[0x1EEE9AC00](v84);
  v29 = &v44 - v28;
  v30 = *v2;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A69A20();
  v83 = v29;
  sub_1D8B16DD0();
  v31 = (v27 + 8);
  switch(v30)
  {
    case 1:
      v86 = 1;
      sub_1D8A69E64();
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v45 + 8))(v23, v46);
      return (*v31)(v32, v33);
    case 2:
      v87 = 2;
      sub_1D8A69E10();
      v38 = v47;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v48 + 8))(v38, v49);
      return (*v31)(v32, v33);
    case 3:
      v88 = 3;
      sub_1D8A69DBC();
      v39 = v50;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v51 + 8))(v39, v52);
      return (*v31)(v32, v33);
    case 4:
      v89 = 4;
      sub_1D8A69D68();
      v37 = v53;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v54 + 8))(v37, v55);
      return (*v31)(v32, v33);
    case 5:
      v90 = 5;
      sub_1D8A69D14();
      v41 = v56;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v57 + 8))(v41, v58);
      return (*v31)(v32, v33);
    case 6:
      v91 = 6;
      sub_1D8A69CC0();
      v42 = v59;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v60 + 8))(v42, v61);
      return (*v31)(v32, v33);
    case 7:
      v92 = 7;
      sub_1D8A69C6C();
      v40 = v62;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v63 + 8))(v40, v64);
      return (*v31)(v32, v33);
    case 8:
      v93 = 8;
      sub_1D8A69C18();
      v34 = v65;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v66;
      v35 = v67;
      goto LABEL_16;
    case 9:
      v94 = 9;
      sub_1D8A69BC4();
      v34 = v68;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v69;
      v35 = v70;
      goto LABEL_16;
    case 10:
      v95 = 10;
      sub_1D8A69B70();
      v34 = v71;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v72;
      v35 = v73;
      goto LABEL_16;
    case 11:
      v96 = 11;
      sub_1D8A69B1C();
      v34 = v74;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v75;
      v35 = v76;
      goto LABEL_16;
    case 12:
      v97 = 12;
      sub_1D8A69AC8();
      v34 = v77;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v78;
      v35 = v79;
      goto LABEL_16;
    case 13:
      v98 = 13;
      sub_1D8A69A74();
      v34 = v80;
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      v36 = v81;
      v35 = v82;
LABEL_16:
      (*(v36 + 8))(v34, v35);
      break;
    default:
      v85 = 0;
      sub_1D8A69EB8();
      v32 = v83;
      v33 = v84;
      sub_1D8B16A40();
      (*(v44 + 8))(v26, v24);
      break;
  }

  return (*v31)(v32, v33);
}

uint64_t CVDetection.DetectionType.hashValue.getter()
{
  v1 = *v0;
  sub_1D8B16D20();
  MEMORY[0x1DA720210](v1);
  return sub_1D8B16D80();
}

uint64_t CVDetection.DetectionType.init(from:)@<X0>(void *a1@<X0>, _BYTE *a2@<X8>)
{
  v111 = a2;
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FB8, &qword_1D8B36F08);
  v97 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v106 = v68 - v3;
  v96 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FC0, &qword_1D8B36F10);
  v95 = *(v96 - 8);
  MEMORY[0x1EEE9AC00](v96);
  v105 = v68 - v4;
  v94 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FC8, &qword_1D8B36F18);
  v93 = *(v94 - 8);
  MEMORY[0x1EEE9AC00](v94);
  v104 = v68 - v5;
  v92 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FD0, &qword_1D8B36F20);
  v91 = *(v92 - 8);
  MEMORY[0x1EEE9AC00](v92);
  v103 = v68 - v6;
  v90 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FD8, &qword_1D8B36F28);
  v89 = *(v90 - 8);
  MEMORY[0x1EEE9AC00](v90);
  v102 = v68 - v7;
  v88 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FE0, &qword_1D8B36F30);
  v87 = *(v88 - 8);
  MEMORY[0x1EEE9AC00](v88);
  v101 = v68 - v8;
  v86 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FE8, &qword_1D8B36F38);
  v85 = *(v86 - 8);
  MEMORY[0x1EEE9AC00](v86);
  v100 = v68 - v9;
  v83 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FF0, &qword_1D8B36F40);
  v84 = *(v83 - 8);
  MEMORY[0x1EEE9AC00](v83);
  v109 = v68 - v10;
  v81 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67FF8, &qword_1D8B36F48);
  v82 = *(v81 - 8);
  MEMORY[0x1EEE9AC00](v81);
  v108 = v68 - v11;
  v75 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68000, &qword_1D8B36F50);
  v80 = *(v75 - 8);
  MEMORY[0x1EEE9AC00](v75);
  v99 = v68 - v12;
  v79 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68008, &qword_1D8B36F58);
  v78 = *(v79 - 8);
  MEMORY[0x1EEE9AC00](v79);
  v98 = v68 - v13;
  v77 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68010, &qword_1D8B36F60);
  v76 = *(v77 - 8);
  MEMORY[0x1EEE9AC00](v77);
  v107 = v68 - v14;
  v74 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68018, &qword_1D8B36F68);
  v73 = *(v74 - 8);
  MEMORY[0x1EEE9AC00](v74);
  v16 = v68 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68020, &qword_1D8B36F70);
  v72 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = v68 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68028, &unk_1D8B36F78);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = v68 - v22;
  v24 = a1[3];
  v113[0] = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A69A20();
  v25 = v112;
  sub_1D8B16DB0();
  if (v25)
  {
LABEL_8:
    v43 = v113[0];
    return __swift_destroy_boxed_opaque_existential_1(v43);
  }

  v69 = v19;
  v68[1] = v17;
  v70 = v16;
  v26 = v107;
  v27 = v108;
  v28 = v109;
  v71 = 0;
  v30 = v110;
  v29 = v111;
  v112 = v21;
  v31 = sub_1D8B16A20();
  v32 = (2 * *(v31 + 16)) | 1;
  v113[1] = v31;
  v114 = v31 + 32;
  v115 = 0;
  v116 = v32;
  v33 = sub_1D881F7C8();
  if (v115 != v116 >> 1)
  {
LABEL_6:
    v40 = sub_1D8B16770();
    swift_allocError();
    v42 = v41;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
    *v42 = &type metadata for CVDetection.DetectionType;
    sub_1D8B16960();
    sub_1D8B16760();
    (*(*(v40 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v40);
    swift_willThrow();
LABEL_7:
    (*(v112 + 8))(v23, v20);
    swift_unknownObjectRelease();
    goto LABEL_8;
  }

  v34 = v33;
  switch(v33)
  {
    case 0:
      v119 = 0;
      sub_1D8A69EB8();
      v35 = v69;
      v36 = v71;
      sub_1D8B16950();
      if (v36)
      {
        goto LABEL_7;
      }

      v37 = *(v72 + 8);
      v38 = v35;
      v39 = &v100;
      goto LABEL_36;
    case 1:
      v119 = 1;
      sub_1D8A69E64();
      v58 = v70;
      v59 = v71;
      sub_1D8B16950();
      if (v59)
      {
        goto LABEL_7;
      }

      v37 = *(v73 + 8);
      v38 = v58;
      v39 = &v106;
      goto LABEL_36;
    case 2:
      v119 = 2;
      sub_1D8A69E10();
      v53 = v71;
      sub_1D8B16950();
      if (v53)
      {
        goto LABEL_7;
      }

      v37 = *(v76 + 8);
      v38 = v26;
      v39 = &v109;
      goto LABEL_36;
    case 3:
      v119 = 3;
      sub_1D8A69DBC();
      v54 = v98;
      v55 = v71;
      sub_1D8B16950();
      if (v55)
      {
        goto LABEL_7;
      }

      v37 = *(v78 + 8);
      v38 = v54;
      v39 = &v111;
      goto LABEL_36;
    case 4:
      v119 = 4;
      sub_1D8A69D68();
      v47 = v99;
      v48 = v71;
      sub_1D8B16950();
      if (v48)
      {
        goto LABEL_7;
      }

      v37 = *(v80 + 8);
      v38 = v47;
      v39 = &v107;
      goto LABEL_36;
    case 5:
      v119 = 5;
      sub_1D8A69D14();
      v60 = v71;
      sub_1D8B16950();
      if (v60)
      {
        goto LABEL_7;
      }

      v37 = *(v82 + 8);
      v38 = v27;
      v39 = v113;
      goto LABEL_36;
    case 6:
      v119 = 6;
      sub_1D8A69CC0();
      v63 = v71;
      sub_1D8B16950();
      if (v63)
      {
        goto LABEL_7;
      }

      v37 = *(v84 + 8);
      v38 = v28;
      v39 = &v114;
      goto LABEL_36;
    case 7:
      v119 = 7;
      sub_1D8A69C6C();
      v56 = v100;
      v57 = v71;
      sub_1D8B16950();
      if (v57)
      {
        goto LABEL_7;
      }

      v37 = *(v85 + 8);
      v38 = v56;
      v39 = &v117;
      goto LABEL_36;
    case 8:
      v119 = 8;
      sub_1D8A69C18();
      v66 = v101;
      v67 = v71;
      sub_1D8B16950();
      if (v67)
      {
        goto LABEL_7;
      }

      v37 = *(v87 + 8);
      v38 = v66;
      v39 = &v118;
      goto LABEL_36;
    case 9:
      v119 = 9;
      sub_1D8A69BC4();
      v51 = v102;
      v52 = v71;
      sub_1D8B16950();
      if (v52)
      {
        goto LABEL_7;
      }

      v37 = *(v89 + 8);
      v38 = v51;
      v39 = &v120;
      goto LABEL_36;
    case 10:
      v119 = 10;
      sub_1D8A69B70();
      v64 = v103;
      v65 = v71;
      sub_1D8B16950();
      if (v65)
      {
        goto LABEL_7;
      }

      v37 = *(v91 + 8);
      v38 = v64;
      v39 = &v121;
      goto LABEL_36;
    case 11:
      v119 = 11;
      sub_1D8A69B1C();
      v45 = v104;
      v46 = v71;
      sub_1D8B16950();
      if (v46)
      {
        goto LABEL_7;
      }

      v37 = *(v93 + 8);
      v38 = v45;
      v39 = &v122;
      goto LABEL_36;
    case 12:
      v119 = 12;
      sub_1D8A69AC8();
      v49 = v105;
      v50 = v71;
      sub_1D8B16950();
      if (v50)
      {
        goto LABEL_7;
      }

      v37 = *(v95 + 8);
      v38 = v49;
      v39 = &v123;
LABEL_36:
      v37(v38, *(v39 - 32));
      break;
    case 13:
      v119 = 13;
      sub_1D8A69A74();
      v61 = v106;
      v62 = v71;
      sub_1D8B16950();
      if (v62)
      {
        goto LABEL_7;
      }

      (*(v97 + 8))(v61, v30);
      break;
    default:
      goto LABEL_6;
  }

  (*(v112 + 8))(v23, v20);
  swift_unknownObjectRelease();
  v43 = v113[0];
  *v29 = v34;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

unint64_t sub_1D8A61210(char a1)
{
  result = 0x6E69646E756F7267;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 10:
      result = 0x646F6D69746C756DLL;
      break;
    case 11:
      result = 0x69746568746E7973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

uint64_t sub_1D8A613A8(uint64_t a1)
{
  v2 = sub_1D8A6A158();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A613E4(uint64_t a1)
{
  v2 = sub_1D8A6A158();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61420(uint64_t a1)
{
  v2 = sub_1D8A69F0C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6145C(uint64_t a1)
{
  v2 = sub_1D8A69F0C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61498(uint64_t a1)
{
  v2 = sub_1D8A69F60();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A614D4(uint64_t a1)
{
  v2 = sub_1D8A69F60();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61510(uint64_t a1)
{
  v2 = sub_1D8A6A350();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6154C(uint64_t a1)
{
  v2 = sub_1D8A6A350();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61588(uint64_t a1)
{
  v2 = sub_1D8A69FB4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A615C4(uint64_t a1)
{
  v2 = sub_1D8A69FB4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61600(uint64_t a1)
{
  v2 = sub_1D8A6A3A4();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6163C(uint64_t a1)
{
  v2 = sub_1D8A6A3A4();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61678(uint64_t a1)
{
  v2 = sub_1D8A6A2FC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A616B4(uint64_t a1)
{
  v2 = sub_1D8A6A2FC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A616F0(uint64_t a1)
{
  v2 = sub_1D8A6A05C();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6172C(uint64_t a1)
{
  v2 = sub_1D8A6A05C();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61768(uint64_t a1)
{
  v2 = sub_1D8A6A2A8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A617A4(uint64_t a1)
{
  v2 = sub_1D8A6A2A8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A617E0(uint64_t a1)
{
  v2 = sub_1D8A6A254();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6181C(uint64_t a1)
{
  v2 = sub_1D8A6A254();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61858(uint64_t a1)
{
  v2 = sub_1D8A6A1AC();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61894(uint64_t a1)
{
  v2 = sub_1D8A6A1AC();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A618D0(uint64_t a1)
{
  v2 = sub_1D8A6A104();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6190C(uint64_t a1)
{
  v2 = sub_1D8A6A104();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61948(uint64_t a1)
{
  v2 = sub_1D8A6A008();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61984(uint64_t a1)
{
  v2 = sub_1D8A6A008();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A619C0(uint64_t a1)
{
  v2 = sub_1D8A6A200();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A619FC(uint64_t a1)
{
  v2 = sub_1D8A6A200();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t sub_1D8A61A38(uint64_t a1)
{
  v2 = sub_1D8A6A0B0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A61A74(uint64_t a1)
{
  v2 = sub_1D8A6A0B0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t CVDetection.encode(to:)(void *a1)
{
  v3 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68030, &qword_1D8B36F88);
  v148 = *(v3 - 8);
  v149 = v3;
  MEMORY[0x1EEE9AC00](v3);
  v147 = &v89 - v4;
  v145 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v145);
  v146 = &v89 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68038, &qword_1D8B36F90);
  v143 = *(v6 - 8);
  v144 = v6;
  MEMORY[0x1EEE9AC00](v6);
  v142 = &v89 - v7;
  v140 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v140);
  v141 = &v89 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68040, &qword_1D8B36F98);
  v138 = *(v9 - 8);
  v139 = v9;
  MEMORY[0x1EEE9AC00](v9);
  v137 = &v89 - v10;
  v135 = type metadata accessor for SyntheticDetectionResult(0);
  MEMORY[0x1EEE9AC00](v135);
  v136 = &v89 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v134 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68048, &qword_1D8B36FA0);
  v133 = *(v134 - 8);
  MEMORY[0x1EEE9AC00](v134);
  v132 = &v89 - v12;
  v131 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68050, &qword_1D8B36FA8);
  v130 = *(v131 - 8);
  MEMORY[0x1EEE9AC00](v131);
  v129 = &v89 - v13;
  v152 = type metadata accessor for AFMResult(0);
  v14 = MEMORY[0x1EEE9AC00](v152);
  v128 = &v89 - ((v15 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v14);
  v127 = &v89 - v16;
  v126 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68058, &qword_1D8B36FB0);
  v125 = *(v126 - 8);
  MEMORY[0x1EEE9AC00](v126);
  v124 = &v89 - v17;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68060, &qword_1D8B36FB8);
  v122 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v121 = &v89 - v18;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68068, &qword_1D8B36FC0);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v118 = &v89 - v19;
  v151 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v20 = MEMORY[0x1EEE9AC00](v151);
  v117 = &v89 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v20);
  v116 = &v89 - v22;
  v115 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68070, &qword_1D8B36FC8);
  v114 = *(v115 - 8);
  MEMORY[0x1EEE9AC00](v115);
  v113 = &v89 - v23;
  v111 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v111);
  v112 = &v89 - ((v24 + 15) & 0xFFFFFFFFFFFFFFF0);
  v110 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68078, &qword_1D8B36FD0);
  v109 = *(v110 - 8);
  MEMORY[0x1EEE9AC00](v110);
  v108 = &v89 - v25;
  v106 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v106);
  v107 = &v89 - ((v26 + 15) & 0xFFFFFFFFFFFFFFF0);
  v105 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68080, &qword_1D8B36FD8);
  v104 = *(v105 - 8);
  MEMORY[0x1EEE9AC00](v105);
  v103 = &v89 - v27;
  v150 = type metadata accessor for ObjectDetectorResult(0);
  v28 = MEMORY[0x1EEE9AC00](v150);
  v102 = &v89 - ((v29 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v28);
  v101 = &v89 - v30;
  v100 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68088, &qword_1D8B36FE0);
  v99 = *(v100 - 8);
  MEMORY[0x1EEE9AC00](v100);
  v98 = &v89 - v31;
  v96 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v96);
  v97 = &v89 - ((v32 + 15) & 0xFFFFFFFFFFFFFFF0);
  v95 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68090, &qword_1D8B36FE8);
  v94 = *(v95 - 8);
  MEMORY[0x1EEE9AC00](v95);
  v93 = &v89 - v33;
  v91 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v91);
  v92 = &v89 - ((v34 + 15) & 0xFFFFFFFFFFFFFFF0);
  v35 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68098, &qword_1D8B36FF0);
  v90 = *(v35 - 8);
  MEMORY[0x1EEE9AC00](v35);
  v37 = &v89 - v36;
  v38 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v38);
  v40 = &v89 - v39;
  v41 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA680A0, &qword_1D8B36FF8);
  v154 = *(v41 - 8);
  v155 = v41;
  MEMORY[0x1EEE9AC00](v41);
  v43 = &v89 - v42;
  v44 = *v1;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A69F0C();
  v153 = v43;
  sub_1D8B16DD0();
  switch(v44 >> 60)
  {
    case 1uLL:
      v77 = swift_projectBox();
      v50 = v92;
      sub_1D8A6D488(v77, v92, type metadata accessor for GroundedParseDetectorResult);
      v156[3] = 1;
      sub_1D8A6A350();
      v78 = v93;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA68138, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
      v79 = v95;
      sub_1D8B16AE0();
      (*(v94 + 8))(v78, v79);
      v55 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_19;
    case 2uLL:
      v66 = swift_projectBox();
      v50 = v97;
      sub_1D8A6D488(v66, v97, type metadata accessor for MetaDetectionResult);
      v156[4] = 2;
      sub_1D8A6A2FC();
      v67 = v98;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1EE0E5D08, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
      v68 = v100;
      sub_1D8B16AE0();
      (*(v99 + 8))(v67, v68);
      v55 = type metadata accessor for MetaDetectionResult;
      goto LABEL_19;
    case 3uLL:
      v69 = swift_projectBox();
      v50 = v101;
      sub_1D8A6D488(v69, v101, type metadata accessor for ObjectDetectorResult);
      v156[5] = 3;
      sub_1D8A6A2A8();
      v70 = v103;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
      v71 = v105;
      sub_1D8B16AE0();
      v72 = &v136;
      goto LABEL_18;
    case 4uLL:
      v56 = swift_projectBox();
      v50 = v107;
      sub_1D8A6D488(v56, v107, type metadata accessor for ParseDetectorResult);
      v156[6] = 4;
      sub_1D8A6A254();
      v57 = v108;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA68118, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
      v58 = v110;
      sub_1D8B16AE0();
      (*(v109 + 8))(v57, v58);
      v55 = type metadata accessor for ParseDetectorResult;
      goto LABEL_19;
    case 5uLL:
      v80 = swift_projectBox();
      v50 = v112;
      sub_1D8A6D488(v80, v112, type metadata accessor for TextDetectorResult);
      v156[7] = 5;
      sub_1D8A6A200();
      v81 = v113;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1EE0E5FF8, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
      v82 = v115;
      sub_1D8B16AE0();
      (*(v114 + 8))(v81, v82);
      v55 = type metadata accessor for TextDetectorResult;
      goto LABEL_19;
    case 6uLL:
      v86 = swift_projectBox();
      v50 = v116;
      sub_1D8A6D488(v86, v116, type metadata accessor for StreamingBarcodeDetectorResult);
      v156[24] = 6;
      sub_1D8A6A1AC();
      v74 = v118;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA67548, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
      v75 = v120;
      sub_1D8B16AE0();
      v76 = &v151;
      goto LABEL_14;
    case 7uLL:
      v73 = swift_projectBox();
      v50 = v117;
      sub_1D8A6D488(v73, v117, type metadata accessor for StreamingBarcodeDetectorResult);
      v156[25] = 7;
      sub_1D8A6A158();
      v74 = v121;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA67548, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
      v75 = v123;
      sub_1D8B16AE0();
      v76 = &v154;
LABEL_14:
      (*(*(v76 - 32) + 8))(v74, v75);
      v55 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_19;
    case 8uLL:
      v88 = swift_projectBox();
      v50 = v102;
      sub_1D8A6D488(v88, v102, type metadata accessor for ObjectDetectorResult);
      v156[26] = 8;
      sub_1D8A6A104();
      v70 = v124;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680F0, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
      v71 = v126;
      sub_1D8B16AE0();
      v72 = v156;
LABEL_18:
      (*(*(v72 - 32) + 8))(v70, v71);
      v55 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_19;
    case 9uLL:
      v62 = swift_projectBox();
      v50 = v127;
      sub_1D8A6D488(v62, v127, type metadata accessor for AFMResult);
      v156[27] = 9;
      sub_1D8A6A0B0();
      v63 = v129;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E3FA8, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
      v64 = v131;
      sub_1D8B16AE0();
      v65 = &v157;
      goto LABEL_16;
    case 0xAuLL:
      v87 = swift_projectBox();
      v50 = v128;
      sub_1D8A6D488(v87, v128, type metadata accessor for AFMResult);
      v156[28] = 10;
      sub_1D8A6A05C();
      v63 = v132;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E3FA8, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
      v64 = v134;
      sub_1D8B16AE0();
      v65 = &v158;
LABEL_16:
      (*(*(v65 - 32) + 8))(v63, v64);
      v55 = type metadata accessor for AFMResult;
      goto LABEL_19;
    case 0xBuLL:
      v49 = swift_projectBox();
      v50 = v136;
      sub_1D8A6D488(v49, v136, type metadata accessor for SyntheticDetectionResult);
      v156[29] = 11;
      sub_1D8A6A008();
      v51 = v137;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(qword_1EE0E4D60, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
      v54 = v139;
      sub_1D8B16AE0();
      (*(v138 + 8))(v51, v54);
      v55 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_19;
    case 0xCuLL:
      v59 = swift_projectBox();
      v50 = v141;
      sub_1D8A6D488(v59, v141, type metadata accessor for GroundedParseEmbeddingsResult);
      v156[30] = 12;
      sub_1D8A69FB4();
      v60 = v142;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
      v61 = v144;
      sub_1D8B16AE0();
      (*(v143 + 8))(v60, v61);
      v55 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_19;
    case 0xDuLL:
      v83 = swift_projectBox();
      v50 = v146;
      sub_1D8A6D488(v83, v146, type metadata accessor for GroundedParseClassificationsResult);
      v156[31] = 13;
      sub_1D8A69F60();
      v84 = v147;
      v52 = v155;
      v53 = v153;
      sub_1D8B16A40();
      sub_1D8A6D324(&qword_1ECA680B8, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
      v85 = v149;
      sub_1D8B16AE0();
      (*(v148 + 8))(v84, v85);
      v55 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_19:
      sub_1D8A6D3D4(v50, v55);
      result = (*(v154 + 8))(v53, v52);
      break;
    default:
      v45 = swift_projectBox();
      sub_1D894733C(v45, v40);
      v156[2] = 0;
      sub_1D8A6A3A4();
      v46 = v155;
      v47 = v153;
      sub_1D8B16A40();
      sub_1D881CF20(&qword_1ECA67788, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
      sub_1D8B16AE0();
      (*(v90 + 8))(v37, v35);
      sub_1D8949CB8(v40);
      result = (*(v154 + 8))(v47, v46);
      break;
  }

  return result;
}

uint64_t CVDetection.hash(into:)(uint64_t a1)
{
  v68 = a1;
  v2 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v67 = &v65 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v66 = &v65 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = type metadata accessor for SyntheticDetectionResult(0);
  MEMORY[0x1EEE9AC00](v6 - 8);
  v8 = &v65 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v9 = type metadata accessor for AFMResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v65 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v12 - 8);
  v14 = &v65 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v15 - 8);
  v17 = &v65 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v18 - 8);
  v20 = &v65 - ((v19 + 15) & 0xFFFFFFFFFFFFFFF0);
  v21 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v21 - 8);
  v23 = &v65 - ((v22 + 15) & 0xFFFFFFFFFFFFFFF0);
  v24 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v24 - 8);
  v26 = &v65 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v27 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v27 - 8);
  v29 = &v65 - ((v28 + 15) & 0xFFFFFFFFFFFFFFF0);
  v30 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v30 - 8);
  v32 = &v65 - v31;
  switch(*v1 >> 60)
  {
    case 1:
      v53 = swift_projectBox();
      sub_1D8A6D488(v53, v29, type metadata accessor for GroundedParseDetectorResult);
      v54 = v68;
      MEMORY[0x1DA720210](1);
      GroundedParseDetectorResult.hash(into:)(v54);
      v44 = type metadata accessor for GroundedParseDetectorResult;
      goto LABEL_13;
    case 2:
      v47 = swift_projectBox();
      sub_1D8A6D488(v47, v26, type metadata accessor for MetaDetectionResult);
      v48 = v68;
      MEMORY[0x1DA720210](2);
      MetaDetectionResult.hash(into:)(v48);
      v38 = type metadata accessor for MetaDetectionResult;
      v39 = v26;
      goto LABEL_20;
    case 3:
      v49 = swift_projectBox();
      sub_1D8A6D488(v49, v23, type metadata accessor for ObjectDetectorResult);
      v50 = 3;
      goto LABEL_19;
    case 4:
      v40 = swift_projectBox();
      sub_1D8A6D488(v40, v20, type metadata accessor for ParseDetectorResult);
      v41 = v68;
      MEMORY[0x1DA720210](4);
      ParseDetectorResult.hash(into:)(v41);
      v38 = type metadata accessor for ParseDetectorResult;
      v39 = v20;
      goto LABEL_20;
    case 5:
      v55 = swift_projectBox();
      sub_1D8A6D488(v55, v17, type metadata accessor for TextDetectorResult);
      v56 = v68;
      MEMORY[0x1DA720210](5);
      TextDetectorResult.hash(into:)(v56);
      v38 = type metadata accessor for TextDetectorResult;
      v39 = v17;
      goto LABEL_20;
    case 6:
      v59 = swift_projectBox();
      sub_1D8A6D488(v59, v14, type metadata accessor for StreamingBarcodeDetectorResult);
      v52 = 6;
      goto LABEL_15;
    case 7:
      v51 = swift_projectBox();
      sub_1D8A6D488(v51, v14, type metadata accessor for StreamingBarcodeDetectorResult);
      v52 = 7;
LABEL_15:
      v60 = v68;
      MEMORY[0x1DA720210](v52);
      StreamingBarcodeDetectorResult.hash(into:)(v60);
      v38 = type metadata accessor for StreamingBarcodeDetectorResult;
      v39 = v14;
      goto LABEL_20;
    case 8:
      v63 = swift_projectBox();
      sub_1D8A6D488(v63, v23, type metadata accessor for ObjectDetectorResult);
      v50 = 8;
LABEL_19:
      v64 = v68;
      MEMORY[0x1DA720210](v50);
      ObjectDetectorResult.hash(into:)(v64);
      v38 = type metadata accessor for ObjectDetectorResult;
      v39 = v23;
      goto LABEL_20;
    case 9:
      v45 = swift_projectBox();
      sub_1D8A6D488(v45, v11, type metadata accessor for AFMResult);
      v46 = 9;
      goto LABEL_17;
    case 0xALL:
      v61 = swift_projectBox();
      sub_1D8A6D488(v61, v11, type metadata accessor for AFMResult);
      v46 = 10;
LABEL_17:
      v62 = v68;
      MEMORY[0x1DA720210](v46);
      AFMResult.hash(into:)(v62);
      v38 = type metadata accessor for AFMResult;
      v39 = v11;
      goto LABEL_20;
    case 0xBLL:
      v36 = swift_projectBox();
      sub_1D8A6D488(v36, v8, type metadata accessor for SyntheticDetectionResult);
      v37 = v68;
      MEMORY[0x1DA720210](11);
      SyntheticDetectionResult.hash(into:)(v37);
      v38 = type metadata accessor for SyntheticDetectionResult;
      v39 = v8;
      goto LABEL_20;
    case 0xCLL:
      v42 = swift_projectBox();
      v29 = v66;
      sub_1D8A6D488(v42, v66, type metadata accessor for GroundedParseEmbeddingsResult);
      v43 = v68;
      MEMORY[0x1DA720210](12);
      GroundedParseEmbeddingsResult.hash(into:)(v43);
      v44 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_13;
    case 0xDLL:
      v57 = swift_projectBox();
      v29 = v67;
      sub_1D8A6D488(v57, v67, type metadata accessor for GroundedParseClassificationsResult);
      v58 = v68;
      MEMORY[0x1DA720210](13);
      GroundedParseClassificationsResult.hash(into:)(v58);
      v44 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_13:
      v38 = v44;
      v39 = v29;
LABEL_20:
      result = sub_1D8A6D3D4(v39, v38);
      break;
    default:
      v33 = swift_projectBox();
      sub_1D894733C(v33, v32);
      v34 = v68;
      MEMORY[0x1DA720210](0);
      sub_1D8A2FFD8(v34);
      result = sub_1D8949CB8(v32);
      break;
  }

  return result;
}

uint64_t CVDetection.hashValue.getter()
{
  v2[9] = *v0;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t CVDetection.init(from:)@<X0>(void *a1@<X0>, uint64_t *a2@<X8>)
{
  v134 = a2;
  v124 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68148, &qword_1D8B37000);
  v125 = *(v124 - 8);
  MEMORY[0x1EEE9AC00](v124);
  v139 = &v95 - v3;
  v123 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68150, &qword_1D8B37008);
  v138 = *(v123 - 8);
  MEMORY[0x1EEE9AC00](v123);
  v133 = &v95 - v4;
  v122 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68158, &qword_1D8B37010);
  v121 = *(v122 - 8);
  MEMORY[0x1EEE9AC00](v122);
  v132 = &v95 - v5;
  v120 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68160, &qword_1D8B37018);
  v119 = *(v120 - 8);
  MEMORY[0x1EEE9AC00](v120);
  v131 = &v95 - v6;
  v118 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68168, &qword_1D8B37020);
  v117 = *(v118 - 8);
  MEMORY[0x1EEE9AC00](v118);
  v137 = &v95 - v7;
  v116 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68170, &qword_1D8B37028);
  v115 = *(v116 - 8);
  MEMORY[0x1EEE9AC00](v116);
  v130 = &v95 - v8;
  v114 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68178, &qword_1D8B37030);
  v113 = *(v114 - 8);
  MEMORY[0x1EEE9AC00](v114);
  v136 = &v95 - v9;
  v111 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68180, &qword_1D8B37038);
  v112 = *(v111 - 8);
  MEMORY[0x1EEE9AC00](v111);
  v129 = &v95 - v10;
  v107 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68188, &qword_1D8B37040);
  v110 = *(v107 - 8);
  MEMORY[0x1EEE9AC00](v107);
  v128 = &v95 - v11;
  v109 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68190, &qword_1D8B37048);
  v108 = *(v109 - 8);
  MEMORY[0x1EEE9AC00](v109);
  v135 = &v95 - v12;
  v106 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68198, &qword_1D8B37050);
  v105 = *(v106 - 8);
  MEMORY[0x1EEE9AC00](v106);
  v127 = &v95 - v13;
  v104 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681A0, &qword_1D8B37058);
  v103 = *(v104 - 8);
  MEMORY[0x1EEE9AC00](v104);
  v126 = &v95 - v14;
  v102 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681A8, &qword_1D8B37060);
  v101 = *(v102 - 8);
  MEMORY[0x1EEE9AC00](v102);
  v16 = &v95 - v15;
  v17 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681B0, &qword_1D8B37068);
  v100 = *(v17 - 8);
  MEMORY[0x1EEE9AC00](v17);
  v19 = &v95 - v18;
  v20 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681B8, &qword_1D8B37070);
  v21 = *(v20 - 8);
  MEMORY[0x1EEE9AC00](v20);
  v23 = &v95 - v22;
  v24 = a1[3];
  v140 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v24);
  sub_1D8A69F0C();
  v25 = v141;
  sub_1D8B16DB0();
  v141 = v25;
  if (!v25)
  {
    v97 = v19;
    v96 = v17;
    v98 = v16;
    v27 = v135;
    v26 = v136;
    v29 = v137;
    v28 = v138;
    v30 = v139;
    v99 = v21;
    v31 = sub_1D8B16A20();
    v32 = (2 * *(v31 + 16)) | 1;
    v142[0] = v31;
    v142[1] = v31 + 32;
    v143 = 0;
    v144 = v32;
    v33 = sub_1D881F7C8();
    if (v143 == v144 >> 1)
    {
      switch(v33)
      {
        case 0:
          v146 = 0;
          sub_1D8A6A3A4();
          v34 = v97;
          v35 = v141;
          sub_1D8B16950();
          v141 = v35;
          if (v35)
          {
            goto LABEL_8;
          }

          v139 = v20;
          __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
          v36 = swift_allocBox();
          sub_1D881CF20(&qword_1ECA677D8, &qword_1ECA67750, &unk_1D8B1E0C0, &protocol conformance descriptor for GroundingResult<A>);
          v37 = v96;
          v38 = v141;
          sub_1D8B16A10();
          v141 = v38;
          if (v38)
          {
            (*(v100 + 8))(v34, v37);
            (*(v99 + 8))(v23, v139);
            goto LABEL_51;
          }

          (*(v100 + 8))(v34, v37);
          (*(v99 + 8))(v23, v139);
          swift_unknownObjectRelease();
          goto LABEL_59;
        case 1:
          v146 = 1;
          sub_1D8A6A350();
          v29 = v98;
          v75 = v141;
          sub_1D8B16950();
          v141 = v75;
          if (v75)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseDetectorResult(0);
          v76 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681D8, type metadata accessor for GroundedParseDetectorResult, &protocol conformance descriptor for GroundedParseDetectorResult);
          v47 = v102;
          v77 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v77;
          v50 = &v133;
          if (v77)
          {
            goto LABEL_49;
          }

          (*(v101 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v76 | 0x1000000000000000;
          goto LABEL_59;
        case 2:
          v146 = 2;
          sub_1D8A6A2FC();
          v29 = v126;
          v63 = v141;
          sub_1D8B16950();
          v141 = v63;
          if (v63)
          {
            goto LABEL_8;
          }

          type metadata accessor for MetaDetectionResult(0);
          v64 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E5CF0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
          v47 = v104;
          v65 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v65;
          v50 = &v135;
          if (v65)
          {
            goto LABEL_49;
          }

          (*(v103 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v64 | 0x2000000000000000;
          goto LABEL_59;
        case 3:
          v146 = 3;
          sub_1D8A6A2A8();
          v66 = v127;
          v67 = v141;
          sub_1D8B16950();
          v141 = v67;
          if (v67)
          {
            goto LABEL_8;
          }

          type metadata accessor for ObjectDetectorResult(0);
          v68 = swift_allocBox();
          sub_1D8A6D324(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          v69 = v106;
          v70 = v141;
          sub_1D8B16A10();
          v71 = v99;
          v141 = v70;
          if (v70)
          {
            (*(v105 + 8))(v66, v69);
            (*(v71 + 8))(v23, v20);
            swift_unknownObjectRelease();
            goto LABEL_52;
          }

          (*(v105 + 8))(v66, v69);
          (*(v71 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v68 | 0x3000000000000000;
          goto LABEL_59;
        case 4:
          v146 = 4;
          sub_1D8A6A254();
          v51 = v141;
          sub_1D8B16950();
          v141 = v51;
          if (v51)
          {
            goto LABEL_8;
          }

          type metadata accessor for ParseDetectorResult(0);
          v52 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681D0, type metadata accessor for ParseDetectorResult, &protocol conformance descriptor for ParseDetectorResult);
          v53 = v109;
          v54 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v54;
          if (v54)
          {
            (*(v108 + 8))(v27, v53);
            goto LABEL_50;
          }

          (*(v108 + 8))(v27, v53);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v52 | 0x4000000000000000;
          goto LABEL_59;
        case 5:
          v146 = 5;
          sub_1D8A6A200();
          v29 = v128;
          v78 = v141;
          sub_1D8B16950();
          v141 = v78;
          if (v78)
          {
            goto LABEL_8;
          }

          type metadata accessor for TextDetectorResult(0);
          v79 = swift_allocBox();
          sub_1D8A6D324(&unk_1EE0E5FD0, type metadata accessor for TextDetectorResult, &protocol conformance descriptor for TextDetectorResult);
          v47 = v107;
          v80 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v80;
          v50 = v142;
          if (v80)
          {
            goto LABEL_49;
          }

          (*(v110 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v79 | 0x5000000000000000;
          goto LABEL_59;
        case 6:
          v146 = 6;
          sub_1D8A6A1AC();
          v29 = v129;
          v86 = v141;
          sub_1D8B16950();
          v141 = v86;
          if (v86)
          {
            goto LABEL_8;
          }

          type metadata accessor for StreamingBarcodeDetectorResult(0);
          v87 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA67540, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          v47 = v111;
          v88 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v88;
          v50 = &v143;
          if (v88)
          {
            goto LABEL_49;
          }

          (*(v112 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v87 | 0x6000000000000000;
          goto LABEL_59;
        case 7:
          v146 = 7;
          sub_1D8A6A158();
          v29 = v26;
          v72 = v141;
          sub_1D8B16950();
          v141 = v72;
          if (v72)
          {
            goto LABEL_8;
          }

          type metadata accessor for StreamingBarcodeDetectorResult(0);
          v73 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA67540, type metadata accessor for StreamingBarcodeDetectorResult, &protocol conformance descriptor for StreamingBarcodeDetectorResult);
          v47 = v114;
          v74 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v74;
          v50 = &v144;
          if (v74)
          {
            goto LABEL_49;
          }

          (*(v113 + 8))(v26, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v73 | 0x7000000000000000;
          goto LABEL_59;
        case 8:
          v146 = 8;
          sub_1D8A6A104();
          v29 = v130;
          v92 = v141;
          sub_1D8B16950();
          v141 = v92;
          if (v92)
          {
            goto LABEL_8;
          }

          type metadata accessor for ObjectDetectorResult(0);
          v93 = swift_allocBox();
          sub_1D8A6D324(&unk_1ECA68A50, type metadata accessor for ObjectDetectorResult, &protocol conformance descriptor for ObjectDetectorResult);
          v47 = v116;
          v94 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v94;
          v50 = &v145;
          if (v94)
          {
            goto LABEL_49;
          }

          (*(v115 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v93 | 0x8000000000000000;
          goto LABEL_59;
        case 9:
          v146 = 9;
          sub_1D8A6A0B0();
          v60 = v141;
          sub_1D8B16950();
          v141 = v60;
          if (v60)
          {
            goto LABEL_8;
          }

          type metadata accessor for AFMResult(0);
          v61 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E3F90, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v47 = v118;
          v62 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v62;
          v50 = &v147;
          if (v62)
          {
            goto LABEL_49;
          }

          (*(v117 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v61 | 0x9000000000000000;
          goto LABEL_59;
        case 10:
          v146 = 10;
          sub_1D8A6A05C();
          v29 = v131;
          v89 = v141;
          sub_1D8B16950();
          v141 = v89;
          if (v89)
          {
            goto LABEL_8;
          }

          type metadata accessor for AFMResult(0);
          v90 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E3F90, type metadata accessor for AFMResult, &protocol conformance descriptor for AFMResult);
          v47 = v120;
          v91 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v91;
          v50 = &v148;
          if (v91)
          {
            goto LABEL_49;
          }

          (*(v119 + 8))(v29, v47);
          (*(v49 + 8))(v23, v20);
          swift_unknownObjectRelease();
          v36 = v90 | 0xA000000000000000;
          goto LABEL_59;
        case 11:
          v146 = 11;
          sub_1D8A6A008();
          v29 = v132;
          v45 = v141;
          sub_1D8B16950();
          v141 = v45;
          if (v45)
          {
            goto LABEL_8;
          }

          type metadata accessor for SyntheticDetectionResult(0);
          v46 = swift_allocBox();
          sub_1D8A6D324(&qword_1EE0E4D48, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
          v47 = v122;
          v48 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v48;
          v50 = &v149;
          if (!v48)
          {
            (*(v121 + 8))(v29, v47);
            (*(v49 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v46 | 0xB000000000000000;
            goto LABEL_59;
          }

LABEL_49:
          (*(*(v50 - 32) + 8))(v29, v47);
          goto LABEL_50;
        case 12:
          v146 = 12;
          sub_1D8A69FB4();
          v55 = v133;
          v56 = v141;
          sub_1D8B16950();
          v141 = v56;
          if (v56)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseEmbeddingsResult(0);
          v57 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681C8, type metadata accessor for GroundedParseEmbeddingsResult, &protocol conformance descriptor for GroundedParseEmbeddingsResult);
          v58 = v123;
          v59 = v141;
          sub_1D8B16A10();
          v49 = v99;
          v141 = v59;
          if (!v59)
          {
            (*(v28 + 8))(v55, v58);
            (*(v49 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v57 | 0xC000000000000000;
            goto LABEL_59;
          }

          (*(v28 + 8))(v55, v58);
LABEL_50:
          (*(v49 + 8))(v23, v20);
LABEL_51:
          swift_unknownObjectRelease();
          goto LABEL_52;
        case 13:
          v146 = 13;
          sub_1D8A69F60();
          v81 = v141;
          sub_1D8B16950();
          v141 = v81;
          if (v81)
          {
            goto LABEL_8;
          }

          type metadata accessor for GroundedParseClassificationsResult(0);
          v82 = swift_allocBox();
          sub_1D8A6D324(&qword_1ECA681C0, type metadata accessor for GroundedParseClassificationsResult, &protocol conformance descriptor for GroundedParseClassificationsResult);
          v83 = v124;
          v84 = v141;
          sub_1D8B16A10();
          v85 = v99;
          v141 = v84;
          if (!v84)
          {
            (*(v125 + 8))(v30, v83);
            (*(v85 + 8))(v23, v20);
            swift_unknownObjectRelease();
            v36 = v82 | 0xD000000000000000;
LABEL_59:
            v43 = v140;
            *v134 = v36;
            return __swift_destroy_boxed_opaque_existential_1(v43);
          }

          (*(v125 + 8))(v30, v83);
          (*(v85 + 8))(v23, v20);
          swift_unknownObjectRelease();
LABEL_52:
          swift_deallocBox();
          break;
        default:
          goto LABEL_7;
      }
    }

    else
    {
LABEL_7:
      v39 = sub_1D8B16770();
      v40 = swift_allocError();
      v42 = v41;
      __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA676B0, &qword_1D8B24650);
      *v42 = &type metadata for CVDetection;
      sub_1D8B16960();
      sub_1D8B16760();
      (*(*(v39 - 8) + 104))(v42, *MEMORY[0x1E69E6AF8], v39);
      v141 = v40;
      swift_willThrow();
LABEL_8:
      (*(v99 + 8))(v23, v20);
      swift_unknownObjectRelease();
    }
  }

  v43 = v140;
  return __swift_destroy_boxed_opaque_existential_1(v43);
}

uint64_t sub_1D8A656D4()
{
  v2[9] = *v0;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A65724(uint64_t a1)
{
  v3[9] = *v1;
  sub_1D8B16D20();
  CVDetection.hash(into:)(v3);
  return sub_1D8B16D80();
}

void CVDetection.modifyWithPrediction(_:)(__int128 *a1@<X0>, uint64_t *a2@<X8>)
{
  v151 = a2;
  v146 = type metadata accessor for GroundedParseClassificationsResult(0);
  MEMORY[0x1EEE9AC00](v146);
  v147 = &v141 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v144 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  MEMORY[0x1EEE9AC00](v144);
  v145 = &v141 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v150 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  MEMORY[0x1EEE9AC00](v150);
  v149 = &v141 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v142 = type metadata accessor for TextDetectorResult(0);
  MEMORY[0x1EEE9AC00](v142);
  v143 = &v141 - ((v6 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = type metadata accessor for GroundedParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v141 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  v10 = type metadata accessor for ParseDetectorResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v141 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v148 = type metadata accessor for ObjectDetectorResult(0);
  MEMORY[0x1EEE9AC00](v148);
  v14 = &v141 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v15);
  v17 = &v141 - ((v16 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  MEMORY[0x1EEE9AC00](v18);
  v20 = &v141 - v19;
  v21 = a1[3];
  v161 = a1[2];
  v162 = v21;
  v163 = a1[4];
  v22 = a1[1];
  v159 = *a1;
  v160 = v22;
  v23 = *(a1 + 10);
  v24 = *v152;
  v25 = *v152 >> 60;
  if (v25 <= 6)
  {
    if (v25 <= 2)
    {
      if (v25)
      {
        if (v25 == 1)
        {
          v42 = swift_projectBox();
          sub_1D8A6D488(v42, v9, type metadata accessor for GroundedParseDetectorResult);
          v43 = swift_allocBox();
          v155 = v161;
          v156 = v162;
          v157 = v163;
          v154 = v160;
          v153 = v159;
          v158 = v23;
          GroundedParseDetectorResult.modifyWithPrediction(_:)(&v153, v44);
          sub_1D8A6D3D4(v9, type metadata accessor for GroundedParseDetectorResult);
          v24 = v43 | 0x1000000000000000;
        }

        else
        {
          v101 = swift_projectBox();
          sub_1D8A6D488(v101, v17, type metadata accessor for MetaDetectionResult);
          v102 = swift_allocBox();
          v104 = v103;
          sub_1D8A6D488(v17, v103, type metadata accessor for DetectionRequest);
          v105 = *&v17[v15[6]];
          v106 = *&v17[v15[7]];
          v107 = v15[10];
          v108 = v17[v15[9]];
          v110 = *&v17[v107];
          v109 = *&v17[v107 + 8];

          sub_1D8A6D3D4(v17, type metadata accessor for MetaDetectionResult);
          v111 = (v104 + v15[5]);
          v113 = v162;
          v112 = v163;
          v114 = v161;
          *v111 = v160;
          v111[1] = v114;
          v111[2] = v113;
          v111[3] = v112;
          *(v104 + v15[6]) = v105;
          *(v104 + v15[7]) = v106;
          *(v104 + v15[8]) = v23;
          *(v104 + v15[9]) = v108;
          v115 = (v104 + v15[10]);
          *v115 = v110;
          v115[1] = v109;
          v24 = v102 | 0x2000000000000000;
        }
      }

      else
      {
        v88 = swift_projectBox();
        sub_1D894733C(v88, v20);
        v24 = swift_allocBox();
        v90 = v89;
        v91 = sub_1D8B13240();
        (*(*(v91 - 8) + 16))(v90, v20, v91);
        v92 = *&v20[v18[9]];
        v93 = *&v20[v18[11]];
        v94 = *&v20[v18[12]];
        v95 = *&v20[v18[13]];
        v96 = *&v20[v18[15]];

        sub_1D8949CB8(v20);
        *(v90 + v18[9]) = v92;
        v97 = (v90 + v18[10]);
        v99 = v162;
        v98 = v163;
        v100 = v161;
        *v97 = v160;
        v97[1] = v100;
        v97[2] = v99;
        v97[3] = v98;
        *(v90 + v18[11]) = v93;
        *(v90 + v18[12]) = v94;
        *(v90 + v18[13]) = v95;
        *(v90 + v18[14]) = v23;
        *(v90 + v18[15]) = v96;
      }
    }

    else if (v25 > 4)
    {
      if (v25 == 5)
      {
        v63 = swift_projectBox();
        v64 = v143;
        sub_1D8A6D488(v63, v143, type metadata accessor for TextDetectorResult);
        v65 = swift_allocBox();
        v155 = v161;
        v156 = v162;
        v157 = v163;
        v154 = v160;
        v153 = v159;
        v158 = v23;
        TextDetectorResult.modifyWithPrediction(_:)(&v153, v66);
        sub_1D8A6D3D4(v64, type metadata accessor for TextDetectorResult);
        v24 = v65 | 0x5000000000000000;
      }

      else
      {
        v119 = swift_projectBox();
        v120 = v149;
        sub_1D8A6D488(v119, v149, type metadata accessor for StreamingBarcodeDetectorResult);
        v121 = v150;
        v122 = swift_allocBox();
        v124 = v123;
        v125 = sub_1D8B13240();
        (*(*(v125 - 8) + 16))(v124, v120, v125);
        v126 = *(v120 + v121[5]);
        v127 = (v120 + v121[7]);
        v129 = *v127;
        v128 = v127[1];
        v130 = *(v120 + v121[8]);
        v131 = *(v120 + v121[10]);

        sub_1D88B7ED4(v131);
        sub_1D8A6D3D4(v120, type metadata accessor for StreamingBarcodeDetectorResult);
        *(v124 + v121[5]) = v126;
        v132 = (v124 + v121[6]);
        v134 = v162;
        v133 = v163;
        v135 = v161;
        *v132 = v160;
        v132[1] = v135;
        v132[2] = v134;
        v132[3] = v133;
        v136 = (v124 + v121[7]);
        *v136 = v129;
        v136[1] = v128;
        *(v124 + v121[8]) = v130;
        *(v124 + v121[9]) = v23;
        *(v124 + v121[10]) = v131;
        v24 = v122 | 0x6000000000000000;
      }
    }

    else if (v25 == 3)
    {
      v26 = swift_projectBox();
      sub_1D8A6D488(v26, v14, type metadata accessor for ObjectDetectorResult);
      v27 = v148;
      v28 = swift_allocBox();
      v30 = v29;
      v31 = sub_1D8B13240();
      (*(*(v31 - 8) + 16))(v30, v14, v31);
      v32 = *&v14[v27[5]];
      v33 = &v14[v27[7]];
      v35 = *v33;
      v34 = *(v33 + 1);
      v36 = *&v14[v27[8]];

      sub_1D8A6D3D4(v14, type metadata accessor for ObjectDetectorResult);
      *(v30 + v27[5]) = v32;
      v37 = (v30 + v27[6]);
      v39 = v162;
      v38 = v163;
      v40 = v161;
      *v37 = v160;
      v37[1] = v40;
      v37[2] = v39;
      v37[3] = v38;
      v41 = (v30 + v27[7]);
      *v41 = v35;
      v41[1] = v34;
      *(v30 + v27[8]) = v36;
      *(v30 + v27[9]) = v23;
      v24 = v28 | 0x3000000000000000;
    }

    else
    {
      v116 = swift_projectBox();
      sub_1D8A6D488(v116, v12, type metadata accessor for ParseDetectorResult);
      v117 = swift_allocBox();
      v155 = v161;
      v156 = v162;
      v157 = v163;
      v154 = v160;
      v153 = v159;
      v158 = v23;
      ParseDetectorResult.modifyWithPrediction(_:)(&v153, v118);
      sub_1D8A6D3D4(v12, type metadata accessor for ParseDetectorResult);
      v24 = v117 | 0x4000000000000000;
    }

    goto LABEL_24;
  }

  if (v25 <= 8)
  {
    if (v25 == 7)
    {
      v45 = swift_projectBox();
      v46 = v149;
      sub_1D8A6D488(v45, v149, type metadata accessor for StreamingBarcodeDetectorResult);
      v47 = v150;
      v48 = swift_allocBox();
      v50 = v49;
      v51 = sub_1D8B13240();
      (*(*(v51 - 8) + 16))(v50, v46, v51);
      v52 = *(v46 + v47[5]);
      v53 = (v46 + v47[7]);
      v55 = *v53;
      v54 = v53[1];
      v56 = *(v46 + v47[8]);
      v57 = *(v46 + v47[10]);

      sub_1D88B7ED4(v57);
      sub_1D8A6D3D4(v46, type metadata accessor for StreamingBarcodeDetectorResult);
      *(v50 + v47[5]) = v52;
      v58 = (v50 + v47[6]);
      v60 = v162;
      v59 = v163;
      v61 = v161;
      *v58 = v160;
      v58[1] = v61;
      v58[2] = v60;
      v58[3] = v59;
      v62 = (v50 + v47[7]);
      *v62 = v55;
      v62[1] = v54;
      *(v50 + v47[8]) = v56;
      *(v50 + v47[9]) = v23;
      *(v50 + v47[10]) = v57;
      v24 = v48 | 0x7000000000000000;
    }

    else
    {
      v72 = swift_projectBox();
      sub_1D8A6D488(v72, v14, type metadata accessor for ObjectDetectorResult);
      v73 = v148;
      v74 = swift_allocBox();
      v76 = v75;
      v77 = sub_1D8B13240();
      (*(*(v77 - 8) + 16))(v76, v14, v77);
      v78 = *&v14[v73[5]];
      v79 = &v14[v73[7]];
      v81 = *v79;
      v80 = *(v79 + 1);
      v82 = *&v14[v73[8]];

      sub_1D8A6D3D4(v14, type metadata accessor for ObjectDetectorResult);
      *(v76 + v73[5]) = v78;
      v83 = (v76 + v73[6]);
      v85 = v162;
      v84 = v163;
      v86 = v161;
      *v83 = v160;
      v83[1] = v86;
      v83[2] = v85;
      v83[3] = v84;
      v87 = (v76 + v73[7]);
      *v87 = v81;
      v87[1] = v80;
      *(v76 + v73[8]) = v82;
      *(v76 + v73[9]) = v23;
      v24 = v74 | 0x8000000000000000;
    }

    goto LABEL_24;
  }

  if ((v25 - 9) < 3)
  {

LABEL_24:
    v67 = v151;
    goto LABEL_25;
  }

  v67 = v151;
  if (v25 == 12)
  {
    v68 = swift_projectBox();
    v69 = v145;
    sub_1D8A6D488(v68, v145, type metadata accessor for GroundedParseEmbeddingsResult);
    v70 = swift_allocBox();
    v155 = v161;
    v156 = v162;
    v157 = v163;
    v154 = v160;
    v153 = v159;
    v158 = v23;
    GroundedParseEmbeddingsResult.modifyWithPrediction(_:)(&v153, v71);
    sub_1D8A6D3D4(v69, type metadata accessor for GroundedParseEmbeddingsResult);
    v24 = v70 | 0xC000000000000000;
  }

  else
  {
    v137 = swift_projectBox();
    v138 = v147;
    sub_1D8A6D488(v137, v147, type metadata accessor for GroundedParseClassificationsResult);
    v139 = swift_allocBox();
    v155 = v161;
    v156 = v162;
    v157 = v163;
    v154 = v160;
    v153 = v159;
    v158 = v23;
    GroundedParseClassificationsResult.modifyWithPrediction(_:)(&v153, v140);
    sub_1D8A6D3D4(v138, type metadata accessor for GroundedParseClassificationsResult);
    v24 = v139 | 0xD000000000000000;
  }

LABEL_25:
  *v67 = v24;
}

double SyntheticDetectionResult.modifyWithRotation(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  v5 = type metadata accessor for SyntheticDetectionResult(0);
  v6 = (v2 + v5[5]);
  v7 = v6[1];
  v19 = *v6;
  v20 = v7;
  v8 = v6[3];
  v21 = v6[2];
  v22 = v8;
  v17 = *(v2 + v5[7]);
  v18 = v4;
  sub_1D8A5A9D8(&v18, &v17, v23);
  v9 = sub_1D8B13240();
  (*(*(v9 - 8) + 16))(a2, v2, v9);
  v10 = *(v2 + v5[8]);
  v11 = *(v2 + v5[6]);
  v12 = *(v2 + v5[9]);
  v13 = (a2 + v5[5]);
  v14 = v23[1];
  *v13 = v23[0];
  v13[1] = v14;
  v15 = v23[3];
  v13[2] = v23[2];
  v13[3] = v15;
  *(a2 + v5[6]) = v11;
  *(a2 + v5[7]) = v4;
  *(a2 + v5[8]) = v10;
  *(a2 + v5[9]) = v12;

  return sub_1D8A699B4(v12);
}

void CVDetection.maxSecondsDecay.getter()
{
  v1 = *v0 >> 60;
  if (v1 == 2)
  {
    type metadata accessor for MetaDetectionResult(0);
    swift_projectBox();
    return;
  }

  if (v1 > 5)
  {
    if (v1 <= 8)
    {
      if ((v1 - 6) >= 2)
      {
LABEL_10:
        sub_1D8B168C0();
        __break(1u);
      }
    }

    else if ((v1 - 9) >= 2 && (v1 - 12) >= 2)
    {
      goto LABEL_10;
    }
  }
}

uint64_t CVDetection.maxDetectionFps.getter()
{
  v1 = type metadata accessor for MetaDetectionResult(0);
  result = MEMORY[0x1EEE9AC00](v1);
  v4 = &v7 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = *v0 >> 60;
  if (v5 == 2)
  {
    v6 = swift_projectBox();
    sub_1D8A6D488(v6, v4, type metadata accessor for MetaDetectionResult);
    return sub_1D8A6D3D4(v4, type metadata accessor for MetaDetectionResult);
  }

  if (v5 > 5)
  {
    if (v5 <= 8)
    {
      if ((v5 - 6) >= 2)
      {
LABEL_10:
        result = sub_1D8B168C0();
        __break(1u);
      }
    }

    else if ((v5 - 9) >= 2 && (v5 - 12) >= 2)
    {
      goto LABEL_10;
    }
  }

  return result;
}

uint64_t CVDetection.safeAreaPolicy.getter()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

float sub_1D8A6692C()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 56))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A669B4()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 64))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66A34()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 72))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

uint64_t sub_1D8A66ABC()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 80))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66B44()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 112))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

uint64_t sub_1D8A66BC4()
{
  v7 = *v0;
  CVDetection.detection.getter(v4);
  v1 = v5;
  v2 = v6;
  __swift_project_boxed_opaque_existential_1(v4, v5);
  (*(v2 + 48))(v1, v2);
  return __swift_destroy_boxed_opaque_existential_1(v4);
}

double sub_1D8A66C44()
{
  v8 = *v0;
  CVDetection.detection.getter(v5);
  v1 = v6;
  v2 = v7;
  __swift_project_boxed_opaque_existential_1(v5, v6);
  v3 = (*(v2 + 88))(v1, v2);
  __swift_destroy_boxed_opaque_existential_1(v5);
  return v3;
}

BOOL sub_1D8A66CCC(uint64_t a1, uint64_t a2)
{
  v51 = a2;
  v50 = a1;
  v2 = type metadata accessor for CVTrackSnapshot(0);
  MEMORY[0x1EEE9AC00](v2 - 8);
  v4 = &v47 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v5 = type metadata accessor for CVBundle.BundleType(0);
  v6 = MEMORY[0x1EEE9AC00](v5);
  v8 = &v47 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v6);
  v10 = &v47 - v9;
  v11 = sub_1D8B13240();
  v12 = *(v11 - 8);
  v13 = MEMORY[0x1EEE9AC00](v11);
  v48 = &v47 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v47 - v16;
  v18 = MEMORY[0x1EEE9AC00](v15);
  v20 = &v47 - v19;
  MEMORY[0x1EEE9AC00](v18);
  v22 = &v47 - v21;
  sub_1D8A6D488(v50, v10, type metadata accessor for CVBundle.BundleType);
  v49 = v5;
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  v47 = v4;
  if (EnumCaseMultiPayload == 1)
  {
    v24 = *(v12 + 32);
    v24(v20, v10, v11);
  }

  else
  {
    sub_1D8A6D36C(v10, v4, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v20, v4, v11);
    sub_1D8A6D3D4(v4, type metadata accessor for CVTrackSnapshot);
    v24 = *(v12 + 32);
  }

  v24(v22, v20, v11);
  sub_1D8A6D488(v51, v8, type metadata accessor for CVBundle.BundleType);
  v25 = swift_getEnumCaseMultiPayload();
  v26 = v48;
  if (v25 == 1)
  {
    v24(v48, v8, v11);
  }

  else
  {
    v27 = v47;
    sub_1D8A6D36C(v8, v47, type metadata accessor for CVTrackSnapshot);
    (*(v12 + 16))(v26, v27, v11);
    sub_1D8A6D3D4(v27, type metadata accessor for CVTrackSnapshot);
  }

  v24(v17, v26, v11);
  sub_1D8A6D324(&qword_1EE0E9898, MEMORY[0x1E69695A8], MEMORY[0x1E69695C8]);
  v28 = sub_1D8B158C0();
  v29 = *(v12 + 8);
  v29(v17, v11);
  v29(v22, v11);
  if (v28)
  {
    return 0;
  }

  CVBundle.latestEstimate.getter(&v61);
  v55[0] = v61;
  CVDetection.detection.getter(v52);
  v31 = v53;
  v32 = v54;
  __swift_project_boxed_opaque_existential_1(v52, v53);
  (*(v32 + 64))(v60, v31, v32);

  __swift_destroy_boxed_opaque_existential_1(v52);
  Corners.bounds.getter();
  v34 = v33;
  v36 = v35;
  v38 = v37;
  v40 = v39;
  CVBundle.latestEstimate.getter(&v59);
  v58 = v59;
  CVDetection.detection.getter(v55);
  v41 = v56;
  v42 = v57;
  __swift_project_boxed_opaque_existential_1(v55, v56);
  (*(v42 + 64))(v52, v41, v42);

  __swift_destroy_boxed_opaque_existential_1(v55);
  Corners.bounds.getter();
  v63.origin.x = v43;
  v63.origin.y = v44;
  v63.size.width = v45;
  v63.size.height = v46;
  v62.origin.x = v34;
  v62.origin.y = v36;
  v62.size.width = v38;
  v62.size.height = v40;
  return CGRectIntersectsRect(v62, v63);
}

uint64_t SyntheticDetectionResult.id.getter@<X0>(uint64_t a1@<X8>)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 16);

  return v4(a1, v1, v3);
}

uint64_t SyntheticDetectionResult.id.setter(uint64_t a1)
{
  v3 = sub_1D8B13240();
  v4 = *(*(v3 - 8) + 40);

  return v4(v1, a1, v3);
}

__n128 SyntheticDetectionResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for SyntheticDetectionResult(0) + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

VisualIntelligenceCore::SyntheticDetectionResult::Provenance_optional __swiftcall SyntheticDetectionResult.Provenance.init(rawValue:)(Swift::String rawValue)
{
  v2 = v1;
  v3 = sub_1D8B16930();

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

  *v2 = v5;
  return result;
}

uint64_t SyntheticDetectionResult.Provenance.rawValue.getter()
{
  if (*v0)
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

uint64_t sub_1D8A673FC(_BYTE *a1, _BYTE *a2)
{
  v2 = *a1 == 0;
  if (*a1)
  {
    v3 = 0x6F7373616CLL;
  }

  else
  {
    v3 = 0x657263536C6C7566;
  }

  if (v2)
  {
    v4 = 0xEA00000000006E65;
  }

  else
  {
    v4 = 0xE500000000000000;
  }

  if (*a2)
  {
    v5 = 0x6F7373616CLL;
  }

  else
  {
    v5 = 0x657263536C6C7566;
  }

  if (*a2)
  {
    v6 = 0xE500000000000000;
  }

  else
  {
    v6 = 0xEA00000000006E65;
  }

  if (v3 == v5 && v4 == v6)
  {
    v8 = 1;
  }

  else
  {
    v8 = sub_1D8B16BA0();
  }

  return v8 & 1;
}

void sub_1D8A674A4(char *a2@<X8>)
{
  v3 = sub_1D8B16930();

  if (v3 == 1)
  {
    v4 = 1;
  }

  else
  {
    v4 = 2;
  }

  if (!v3)
  {
    v4 = 0;
  }

  *a2 = v4;
}

void sub_1D8A67504(uint64_t *a1@<X8>)
{
  v2 = 0x657263536C6C7566;
  if (*v1)
  {
    v2 = 0x6F7373616CLL;
  }

  v3 = 0xEA00000000006E65;
  if (*v1)
  {
    v3 = 0xE500000000000000;
  }

  *a1 = v2;
  a1[1] = v3;
}

uint64_t sub_1D8A67544()
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

double sub_1D8A675C8(uint64_t a1)
{
  sub_1D8B15A60();

  return result;
}

uint64_t sub_1D8A67638(uint64_t a1)
{
  sub_1D8B16D20();
  sub_1D8B15A60();

  return sub_1D8B16D80();
}

uint64_t SyntheticDetectionResult.label.getter()
{
  if (*(v0 + *(type metadata accessor for SyntheticDetectionResult(0) + 24)))
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

uint64_t SyntheticDetectionResult.provenance.getter@<X0>(_BYTE *a1@<X8>)
{
  result = type metadata accessor for SyntheticDetectionResult(0);
  *a1 = *(v1 + *(result + 24));
  return result;
}

uint64_t SyntheticDetectionResult.provenance.setter(char *a1)
{
  v2 = *a1;
  result = type metadata accessor for SyntheticDetectionResult(0);
  *(v1 + *(result + 24)) = v2;
  return result;
}

double SyntheticDetectionResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for SyntheticDetectionResult(0) + 28));
  *a1 = result;
  return result;
}

uint64_t SyntheticDetectionResult.rotationAngle.setter(uint64_t *a1)
{
  v2 = *a1;
  result = type metadata accessor for SyntheticDetectionResult(0);
  *(v1 + *(result + 28)) = v2;
  return result;
}

uint64_t SyntheticDetectionResult.timestamp.setter(double a1)
{
  result = type metadata accessor for SyntheticDetectionResult(0);
  *(v1 + *(result + 32)) = a1;
  return result;
}

double SyntheticDetectionResult.highestSaliencyGroundingMetadata.getter@<D0>(uint64_t *a1@<X8>)
{
  v3 = *(v1 + *(type metadata accessor for SyntheticDetectionResult(0) + 36));
  *a1 = v3;

  return sub_1D8A699B4(v3);
}

uint64_t SyntheticDetectionResult.highestSaliencyGroundingMetadata.setter(uint64_t *a1)
{
  v2 = *a1;
  v3 = *(type metadata accessor for SyntheticDetectionResult(0) + 36);
  result = sub_1D88649A0(*(v1 + v3));
  *(v1 + v3) = v2;
  return result;
}

double SyntheticDetectionResult.modifyWithPrediction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *(a1 + 80);
  v5 = sub_1D8B13240();
  (*(*(v5 - 8) + 16))(a2, v2, v5);
  v6 = type metadata accessor for SyntheticDetectionResult(0);
  v7 = v6[5];
  v8 = (v2 + v7);
  v9 = *(v2 + v6[6]);
  v10 = *(v2 + v6[7]);
  v11 = *(v2 + v6[9]);
  v12 = (a2 + v7);
  v13 = v8[1];
  *v12 = *v8;
  v12[1] = v13;
  v14 = v8[3];
  v12[2] = v8[2];
  v12[3] = v14;
  *(a2 + v6[6]) = v9;
  *(a2 + v6[7]) = v10;
  *(a2 + v6[8]) = v4;
  *(a2 + v6[9]) = v11;

  return sub_1D8A699B4(v11);
}

uint64_t sub_1D8A67B6C()
{
  v1 = *v0;
  v2 = 25705;
  v3 = 0x6E6F697461746F72;
  v4 = 0x6D617473656D6974;
  if (v1 != 4)
  {
    v4 = 0xD000000000000020;
  }

  if (v1 != 3)
  {
    v3 = v4;
  }

  v5 = 0x7372656E726F63;
  if (v1 != 1)
  {
    v5 = 0x6E616E65766F7270;
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

uint64_t sub_1D8A67C34@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A6D110(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A67C5C(uint64_t a1)
{
  v2 = sub_1D8A6A3F8();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A67C98(uint64_t a1)
{
  v2 = sub_1D8A6A3F8();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t SyntheticDetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681E0, &qword_1D8B37078);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6A3F8();
  sub_1D8B16DD0();
  v20 = 0;
  sub_1D8B13240();
  sub_1D8A6D324(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for SyntheticDetectionResult(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 1;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = *(v3 + v9[6]);
    v15 = 2;
    sub_1D8A6A44C();
    sub_1D8B16AE0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[9]);
    v15 = 5;
    sub_1D8A699B4(v16);
    sub_1D8A29858();
    sub_1D8B16A80();
    sub_1D88649A0(v16);
  }

  return (*(v6 + 8))(v8, v5);
}

double SyntheticDetectionResult.hash(into:)(uint64_t a1)
{
  sub_1D8B13240();
  sub_1D8A6D324(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v3 = type metadata accessor for SyntheticDetectionResult(0);
  v4 = (v1 + v3[5]);
  v5 = v4[2];
  v6 = v4[3];
  v7 = v4[4];
  v8 = v4[5];
  v9 = v4[6];
  v10 = v4[7];
  sub_1D8818B80(*v4, v4[1]);
  sub_1D8818B80(v5, v6);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8B15A60();

  v11 = *(v1 + v3[7]);
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v12 = *(v1 + v3[8]);
  if (v12 == 0.0)
  {
    v12 = 0.0;
  }

  MEMORY[0x1DA720250](*&v12);
  if ((~*(v1 + v3[9]) & 0xF000000000000007) != 0)
  {
    sub_1D8B16D40();

    CVDetection.hash(into:)(a1);
  }

  else
  {
    sub_1D8B16D40();
  }

  return result;
}

uint64_t SyntheticDetectionResult.hashValue.getter()
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t SyntheticDetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v22 = a2;
  v4 = sub_1D8B13240();
  v24 = *(v4 - 8);
  MEMORY[0x1EEE9AC00](v4);
  v26 = &v22 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v25 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA681F8, &qword_1D8B37080);
  v23 = *(v25 - 8);
  MEMORY[0x1EEE9AC00](v25);
  v7 = &v22 - v6;
  v8 = type metadata accessor for SyntheticDetectionResult(0);
  v9 = MEMORY[0x1EEE9AC00](v8);
  v11 = &v22 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v28 = *(v9 + 36);
  *&v11[v28] = 0xF000000000000007;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6A3F8();
  v27 = v7;
  sub_1D8B16DB0();
  if (v2)
  {
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D88649A0(*&v11[v28]);
  }

  else
  {
    v13 = v23;
    v12 = v24;
    LOBYTE(v30) = 0;
    sub_1D8A6D324(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    v14 = v25;
    sub_1D8B16A10();
    (*(v12 + 32))(v11, v26, v4);
    v35 = 1;
    sub_1D881BC34();
    sub_1D8B16A10();
    v15 = &v11[v8[5]];
    v16 = v31;
    *v15 = v30;
    *(v15 + 1) = v16;
    v17 = v33;
    *(v15 + 2) = v32;
    *(v15 + 3) = v17;
    v34 = 2;
    sub_1D8A6A4A0();
    sub_1D8B16A10();
    v11[v8[6]] = v29;
    v34 = 3;
    sub_1D88913B8();
    sub_1D8B16A10();
    *&v11[v8[7]] = v29;
    LOBYTE(v29) = 4;
    sub_1D8B169E0();
    *&v11[v8[8]] = v18;
    v34 = 5;
    sub_1D8A51C54();
    sub_1D8B169B0();
    (*(v13 + 8))(v27, v14);
    v20 = v28;
    v19 = v29;
    sub_1D88649A0(*&v11[v28]);
    *&v11[v20] = v19;
    sub_1D8A6D488(v11, v22, type metadata accessor for SyntheticDetectionResult);
    __swift_destroy_boxed_opaque_existential_1(a1);
    return sub_1D8A6D3D4(v11, type metadata accessor for SyntheticDetectionResult);
  }
}

uint64_t sub_1D8A686AC(uint64_t a1)
{
  if (*(v1 + *(a1 + 24)))
  {
    return 0x6F7373616CLL;
  }

  else
  {
    return 0x657263536C6C7566;
  }
}

double sub_1D8A686EC@<D0>(uint64_t a1@<X0>, double *a2@<X8>)
{
  result = *(v2 + *(a1 + 28));
  *a2 = result;
  return result;
}

double sub_1D8A68708@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v6 = *(a1 + 80);
  v7 = sub_1D8B13240();
  (*(*(v7 - 8) + 16))(a3, v3, v7);
  v8 = a2[5];
  v9 = a2[6];
  v10 = (v3 + v8);
  v11 = *(v3 + v9);
  v12 = a2[7];
  v13 = a2[8];
  v14 = *(v3 + v12);
  v15 = a2[9];
  v16 = *(v3 + v15);
  v17 = (a3 + v8);
  v18 = v10[1];
  *v17 = *v10;
  v17[1] = v18;
  v19 = v10[3];
  v17[2] = v10[2];
  v17[3] = v19;
  *(a3 + v9) = v11;
  *(a3 + v12) = v14;
  *(a3 + v13) = v6;
  *(a3 + v15) = v16;

  return sub_1D8A699B4(v16);
}

uint64_t sub_1D8A687D4()
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A68818(uint64_t a1)
{
  sub_1D8B16D20();
  SyntheticDetectionResult.hash(into:)(v2);
  return sub_1D8B16D80();
}

BOOL _s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(float64x2_t *a1, float64x2_t *a2)
{
  result = 0;
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*a1, *a2), vceqq_f64(a1[1], a2[1])))) & 1) != 0 && a1[2].f64[0] == a2[2].f64[0] && a1[2].f64[1] == a2[2].f64[1])
  {
    v5 = a1[3].f64[1];
    v6 = a1[3].f64[0] == a2[3].f64[0];
    return v5 == a2[3].f64[1] && v6;
  }

  return result;
}

BOOL _s22VisualIntelligenceCore24SyntheticDetectionResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for SyntheticDetectionResult(0);
  result = 0;
  v6 = *(v4 + 20);
  v7 = (a1 + v6);
  v8 = *(a1 + v6 + 32);
  v9 = (a2 + v6);
  if ((vminv_u16(vmovn_s32(vuzp1q_s32(vceqq_f64(*v7, *v9), vceqq_f64(v7[1], v9[1])))) & 1) != 0 && v8 == v9[2].f64[0] && v7[2].f64[1] == v9[2].f64[1])
  {
    if (v7[3].f64[0] != v9[3].f64[0] || v7[3].f64[1] != v9[3].f64[1])
    {
      return 0;
    }

    v12 = v4;
    v13 = *(v4 + 24);
    v14 = *(a1 + v13);
    v15 = *(a2 + v13);
    if (v14)
    {
      v16 = 0x6F7373616CLL;
    }

    else
    {
      v16 = 0x657263536C6C7566;
    }

    if (v14)
    {
      v17 = 0xE500000000000000;
    }

    else
    {
      v17 = 0xEA00000000006E65;
    }

    if (v15)
    {
      v18 = 0x6F7373616CLL;
    }

    else
    {
      v18 = 0x657263536C6C7566;
    }

    if (v15)
    {
      v19 = 0xE500000000000000;
    }

    else
    {
      v19 = 0xEA00000000006E65;
    }

    if (v16 == v18 && v17 == v19)
    {
    }

    else
    {
      v21 = sub_1D8B16BA0();

      if ((v21 & 1) == 0)
      {
        return 0;
      }
    }

    if (*(a1 + v12[7]) != *(a2 + v12[7]) || *(a1 + v12[8]) != *(a2 + v12[8]))
    {
      return 0;
    }

    v22 = v12[9];
    v23 = *(a1 + v22);
    v24 = *(a2 + v22);
    if ((~v23 & 0xF000000000000007) != 0)
    {
      v27 = v23;
      if ((~v24 & 0xF000000000000007) != 0)
      {
        v26 = v24;
        sub_1D8A699B4(v23);
        sub_1D8A699B4(v24);
        sub_1D8A699B4(v23);
        v25 = _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(&v27, &v26);

        sub_1D88649A0(v23);
        return (v25 & 1) != 0;
      }

      sub_1D8A699B4(v23);
      sub_1D8A699B4(v24);
      sub_1D8A699B4(v23);
    }

    else
    {
      sub_1D8A699B4(v23);
      sub_1D8A699B4(v24);
      if ((~v24 & 0xF000000000000007) == 0)
      {
        sub_1D88649A0(v23);
        return 1;
      }
    }

    sub_1D88649A0(v23);
    sub_1D88649A0(v24);
    return 0;
  }

  return result;
}

uint64_t _s22VisualIntelligenceCore11CVDetectionO2eeoiySbAC_ACtFZ_0(unint64_t *a1, uint64_t *a2)
{
  v133 = a2;
  v3 = type metadata accessor for GroundedParseClassificationsResult(0);
  v4 = MEMORY[0x1EEE9AC00](v3 - 8);
  v132 = &v113 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v4);
  v131 = &v113 - v6;
  v7 = type metadata accessor for GroundedParseEmbeddingsResult(0);
  v8 = MEMORY[0x1EEE9AC00](v7 - 8);
  v130 = &v113 - ((v9 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v8);
  v129 = &v113 - v10;
  v11 = type metadata accessor for SyntheticDetectionResult(0);
  v12 = MEMORY[0x1EEE9AC00](v11 - 8);
  v128 = &v113 - ((v13 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v12);
  v127 = &v113 - v14;
  v15 = type metadata accessor for AFMResult(0);
  v16 = MEMORY[0x1EEE9AC00](v15 - 8);
  v126 = &v113 - ((v17 + 15) & 0xFFFFFFFFFFFFFFF0);
  v18 = MEMORY[0x1EEE9AC00](v16);
  v125 = &v113 - v19;
  v20 = MEMORY[0x1EEE9AC00](v18);
  v124 = &v113 - v21;
  MEMORY[0x1EEE9AC00](v20);
  v123 = &v113 - v22;
  v23 = type metadata accessor for StreamingBarcodeDetectorResult(0);
  v24 = MEMORY[0x1EEE9AC00](v23 - 8);
  v122 = &v113 - ((v25 + 15) & 0xFFFFFFFFFFFFFFF0);
  v26 = MEMORY[0x1EEE9AC00](v24);
  v121 = &v113 - v27;
  v28 = MEMORY[0x1EEE9AC00](v26);
  v120 = &v113 - v29;
  MEMORY[0x1EEE9AC00](v28);
  v119 = &v113 - v30;
  v31 = type metadata accessor for TextDetectorResult(0);
  v32 = MEMORY[0x1EEE9AC00](v31 - 8);
  v118 = &v113 - ((v33 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v32);
  v117 = &v113 - v34;
  v35 = type metadata accessor for ParseDetectorResult(0);
  v36 = MEMORY[0x1EEE9AC00](v35 - 8);
  v116 = &v113 - ((v37 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v36);
  v115 = &v113 - v38;
  v39 = type metadata accessor for ObjectDetectorResult(0);
  v40 = MEMORY[0x1EEE9AC00](v39 - 8);
  v114 = &v113 - ((v41 + 15) & 0xFFFFFFFFFFFFFFF0);
  v42 = MEMORY[0x1EEE9AC00](v40);
  v44 = &v113 - v43;
  v45 = MEMORY[0x1EEE9AC00](v42);
  v47 = &v113 - v46;
  MEMORY[0x1EEE9AC00](v45);
  v49 = &v113 - v48;
  v50 = type metadata accessor for MetaDetectionResult(0);
  v51 = MEMORY[0x1EEE9AC00](v50 - 8);
  v53 = &v113 - ((v52 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v51);
  v55 = &v113 - v54;
  v56 = type metadata accessor for GroundedParseDetectorResult(0);
  v57 = MEMORY[0x1EEE9AC00](v56 - 8);
  v59 = &v113 - ((v58 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v57);
  v61 = &v113 - v60;
  v62 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA67750, &unk_1D8B1E0C0);
  v63 = MEMORY[0x1EEE9AC00](v62 - 8);
  v65 = &v113 - ((v64 + 15) & 0xFFFFFFFFFFFFFFF0);
  MEMORY[0x1EEE9AC00](v63);
  v67 = &v113 - v66;
  v68 = *v133;
  switch(*a1 >> 60)
  {
    case 1uLL:
      if (v68 >> 60 != 1)
      {
        goto LABEL_36;
      }

      v97 = swift_projectBox();
      v98 = swift_projectBox();
      sub_1D8A6D488(v97, v61, type metadata accessor for GroundedParseDetectorResult);
      sub_1D8A6D488(v98, v59, type metadata accessor for GroundedParseDetectorResult);

      v72 = _s22VisualIntelligenceCore27GroundedParseDetectorResultV2eeoiySbAC_ACtFZ_0(v61, v59);
      v89 = type metadata accessor for GroundedParseDetectorResult;
      sub_1D8A6D3D4(v59, type metadata accessor for GroundedParseDetectorResult);
      v90 = v61;
      goto LABEL_33;
    case 2uLL:
      if (v68 >> 60 != 2)
      {
        goto LABEL_36;
      }

      v87 = swift_projectBox();
      v88 = swift_projectBox();
      sub_1D8A6D488(v87, v55, type metadata accessor for MetaDetectionResult);
      sub_1D8A6D488(v88, v53, type metadata accessor for MetaDetectionResult);

      v72 = _s22VisualIntelligenceCore19MetaDetectionResultV2eeoiySbAC_ACtFZ_0(v55, v53);
      v89 = type metadata accessor for MetaDetectionResult;
      sub_1D8A6D3D4(v53, type metadata accessor for MetaDetectionResult);
      v90 = v55;
      goto LABEL_33;
    case 3uLL:
      if (v68 >> 60 != 3)
      {
        goto LABEL_36;
      }

      v91 = swift_projectBox();
      v92 = swift_projectBox();
      sub_1D8A6D488(v91, v49, type metadata accessor for ObjectDetectorResult);
      sub_1D8A6D488(v92, v47, type metadata accessor for ObjectDetectorResult);

      v72 = _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(v49, v47);
      sub_1D8A6D3D4(v47, type metadata accessor for ObjectDetectorResult);
      v90 = v49;
      v93 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_34;
    case 4uLL:
      if (v68 >> 60 != 4)
      {
        goto LABEL_36;
      }

      v78 = swift_projectBox();
      v79 = swift_projectBox();
      v44 = v115;
      sub_1D8A6D488(v78, v115, type metadata accessor for ParseDetectorResult);
      v80 = v79;
      v76 = v116;
      sub_1D8A6D488(v80, v116, type metadata accessor for ParseDetectorResult);

      v72 = _s22VisualIntelligenceCore19ParseDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for ParseDetectorResult;
      goto LABEL_32;
    case 5uLL:
      if (v68 >> 60 != 5)
      {
        goto LABEL_36;
      }

      v99 = swift_projectBox();
      v100 = swift_projectBox();
      v44 = v117;
      sub_1D8A6D488(v99, v117, type metadata accessor for TextDetectorResult);
      v101 = v100;
      v76 = v118;
      sub_1D8A6D488(v101, v118, type metadata accessor for TextDetectorResult);

      v72 = _s22VisualIntelligenceCore18TextDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for TextDetectorResult;
      goto LABEL_32;
    case 6uLL:
      if (v68 >> 60 != 6)
      {
        goto LABEL_36;
      }

      v105 = swift_projectBox();
      v106 = swift_projectBox();
      v44 = v119;
      sub_1D8A6D488(v105, v119, type metadata accessor for StreamingBarcodeDetectorResult);
      v96 = v106;
      v76 = v120;
      goto LABEL_26;
    case 7uLL:
      if (v68 >> 60 != 7)
      {
        goto LABEL_36;
      }

      v94 = swift_projectBox();
      v95 = swift_projectBox();
      v44 = v121;
      sub_1D8A6D488(v94, v121, type metadata accessor for StreamingBarcodeDetectorResult);
      v96 = v95;
      v76 = v122;
LABEL_26:
      sub_1D8A6D488(v96, v76, type metadata accessor for StreamingBarcodeDetectorResult);

      v72 = _s22VisualIntelligenceCore30StreamingBarcodeDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for StreamingBarcodeDetectorResult;
      goto LABEL_32;
    case 8uLL:
      if (v68 >> 60 != 8)
      {
        goto LABEL_36;
      }

      v109 = swift_projectBox();
      v110 = swift_projectBox();
      sub_1D8A6D488(v109, v44, type metadata accessor for ObjectDetectorResult);
      v111 = v110;
      v76 = v114;
      sub_1D8A6D488(v111, v114, type metadata accessor for ObjectDetectorResult);

      v72 = _s22VisualIntelligenceCore20ObjectDetectorResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for ObjectDetectorResult;
      goto LABEL_32;
    case 9uLL:
      if (v68 >> 60 != 9)
      {
        goto LABEL_36;
      }

      v84 = swift_projectBox();
      v85 = swift_projectBox();
      v44 = v123;
      sub_1D8A6D488(v84, v123, type metadata accessor for AFMResult);
      v86 = v85;
      v76 = v124;
      goto LABEL_29;
    case 0xAuLL:
      if (v68 >> 60 != 10)
      {
        goto LABEL_36;
      }

      v107 = swift_projectBox();
      v108 = swift_projectBox();
      v44 = v125;
      sub_1D8A6D488(v107, v125, type metadata accessor for AFMResult);
      v86 = v108;
      v76 = v126;
LABEL_29:
      sub_1D8A6D488(v86, v76, type metadata accessor for AFMResult);

      v72 = _s22VisualIntelligenceCore9AFMResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for AFMResult;
      goto LABEL_32;
    case 0xBuLL:
      if (v68 >> 60 != 11)
      {
        goto LABEL_36;
      }

      v73 = swift_projectBox();
      v74 = swift_projectBox();
      v44 = v127;
      sub_1D8A6D488(v73, v127, type metadata accessor for SyntheticDetectionResult);
      v75 = v74;
      v76 = v128;
      sub_1D8A6D488(v75, v128, type metadata accessor for SyntheticDetectionResult);

      v72 = _s22VisualIntelligenceCore24SyntheticDetectionResultV2eeoiySbAC_ACtFZ_0(v44, v76);
      v77 = type metadata accessor for SyntheticDetectionResult;
      goto LABEL_32;
    case 0xCuLL:
      if (v68 >> 60 != 12)
      {
        goto LABEL_36;
      }

      v81 = swift_projectBox();
      v82 = swift_projectBox();
      v44 = v129;
      sub_1D8A6D488(v81, v129, type metadata accessor for GroundedParseEmbeddingsResult);
      v83 = v82;
      v76 = v130;
      sub_1D8A6D488(v83, v130, type metadata accessor for GroundedParseEmbeddingsResult);

      v72 = sub_1D8A917B8(v44, v76);
      v77 = type metadata accessor for GroundedParseEmbeddingsResult;
      goto LABEL_32;
    case 0xDuLL:
      if (v68 >> 60 != 13)
      {
        goto LABEL_36;
      }

      v102 = swift_projectBox();
      v103 = swift_projectBox();
      v44 = v131;
      sub_1D8A6D488(v102, v131, type metadata accessor for GroundedParseClassificationsResult);
      v104 = v103;
      v76 = v132;
      sub_1D8A6D488(v104, v132, type metadata accessor for GroundedParseClassificationsResult);

      v72 = sub_1D8A917A0(v44, v76);
      v77 = type metadata accessor for GroundedParseClassificationsResult;
LABEL_32:
      v89 = v77;
      sub_1D8A6D3D4(v76, v77);
      v90 = v44;
LABEL_33:
      v93 = v89;
LABEL_34:
      sub_1D8A6D3D4(v90, v93);
      goto LABEL_35;
    default:
      if (v68 >> 60)
      {
LABEL_36:
        v72 = 0;
      }

      else
      {
        v69 = swift_projectBox();
        v70 = swift_projectBox();
        sub_1D894733C(v69, v67);
        sub_1D894733C(v70, v65);

        LOBYTE(v69) = sub_1D87EF584(v67, v65);
        sub_1D8949CB8(v65);
        v71 = v67;
        v72 = v69;
        sub_1D8949CB8(v71);
LABEL_35:
      }

      return v72 & 1;
  }
}

uint64_t type metadata accessor for SyntheticDetectionResult(uint64_t a1)
{
  result = qword_1EE0E4D28;
  if (!qword_1EE0E4D28)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

double sub_1D8A699B4(uint64_t a1)
{
  if ((~a1 & 0xF000000000000007) != 0)
  {
  }

  return result;
}

unint64_t sub_1D8A699CC()
{
  result = qword_1ECA67EA8;
  if (!qword_1ECA67EA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67EA8);
  }

  return result;
}

unint64_t sub_1D8A69A20()
{
  result = qword_1ECA67F40;
  if (!qword_1ECA67F40)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F40);
  }

  return result;
}

unint64_t sub_1D8A69A74()
{
  result = qword_1ECA67F48;
  if (!qword_1ECA67F48)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F48);
  }

  return result;
}

unint64_t sub_1D8A69AC8()
{
  result = qword_1ECA67F50;
  if (!qword_1ECA67F50)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F50);
  }

  return result;
}

unint64_t sub_1D8A69B1C()
{
  result = qword_1ECA67F58;
  if (!qword_1ECA67F58)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F58);
  }

  return result;
}

unint64_t sub_1D8A69B70()
{
  result = qword_1ECA67F60;
  if (!qword_1ECA67F60)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F60);
  }

  return result;
}

unint64_t sub_1D8A69BC4()
{
  result = qword_1ECA67F68;
  if (!qword_1ECA67F68)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F68);
  }

  return result;
}

unint64_t sub_1D8A69C18()
{
  result = qword_1ECA67F70;
  if (!qword_1ECA67F70)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F70);
  }

  return result;
}

unint64_t sub_1D8A69C6C()
{
  result = qword_1ECA67F78;
  if (!qword_1ECA67F78)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F78);
  }

  return result;
}

unint64_t sub_1D8A69CC0()
{
  result = qword_1ECA67F80;
  if (!qword_1ECA67F80)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F80);
  }

  return result;
}

unint64_t sub_1D8A69D14()
{
  result = qword_1ECA67F88;
  if (!qword_1ECA67F88)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F88);
  }

  return result;
}

unint64_t sub_1D8A69D68()
{
  result = qword_1ECA67F90;
  if (!qword_1ECA67F90)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F90);
  }

  return result;
}

unint64_t sub_1D8A69DBC()
{
  result = qword_1ECA67F98;
  if (!qword_1ECA67F98)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67F98);
  }

  return result;
}

unint64_t sub_1D8A69E10()
{
  result = qword_1ECA67FA0;
  if (!qword_1ECA67FA0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FA0);
  }

  return result;
}

unint64_t sub_1D8A69E64()
{
  result = qword_1ECA67FA8;
  if (!qword_1ECA67FA8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FA8);
  }

  return result;
}

unint64_t sub_1D8A69EB8()
{
  result = qword_1ECA67FB0;
  if (!qword_1ECA67FB0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA67FB0);
  }

  return result;
}

unint64_t sub_1D8A69F0C()
{
  result = qword_1ECA680A8;
  if (!qword_1ECA680A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680A8);
  }

  return result;
}

unint64_t sub_1D8A69F60()
{
  result = qword_1ECA680B0;
  if (!qword_1ECA680B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680B0);
  }

  return result;
}

unint64_t sub_1D8A69FB4()
{
  result = qword_1ECA680C0;
  if (!qword_1ECA680C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680C0);
  }

  return result;
}

unint64_t sub_1D8A6A008()
{
  result = qword_1ECA680D0;
  if (!qword_1ECA680D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680D0);
  }

  return result;
}

unint64_t sub_1D8A6A05C()
{
  result = qword_1ECA680D8;
  if (!qword_1ECA680D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680D8);
  }

  return result;
}

unint64_t sub_1D8A6A0B0()
{
  result = qword_1ECA680E0;
  if (!qword_1ECA680E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680E0);
  }

  return result;
}

unint64_t sub_1D8A6A104()
{
  result = qword_1ECA680E8;
  if (!qword_1ECA680E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680E8);
  }

  return result;
}

unint64_t sub_1D8A6A158()
{
  result = qword_1ECA680F8;
  if (!qword_1ECA680F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA680F8);
  }

  return result;
}

unint64_t sub_1D8A6A1AC()
{
  result = qword_1ECA68100;
  if (!qword_1ECA68100)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68100);
  }

  return result;
}

unint64_t sub_1D8A6A200()
{
  result = qword_1ECA68108;
  if (!qword_1ECA68108)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68108);
  }

  return result;
}

unint64_t sub_1D8A6A254()
{
  result = qword_1ECA68110;
  if (!qword_1ECA68110)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68110);
  }

  return result;
}

unint64_t sub_1D8A6A2A8()
{
  result = qword_1ECA68120;
  if (!qword_1ECA68120)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68120);
  }

  return result;
}

unint64_t sub_1D8A6A2FC()
{
  result = qword_1ECA68128;
  if (!qword_1ECA68128)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68128);
  }

  return result;
}

unint64_t sub_1D8A6A350()
{
  result = qword_1ECA68130;
  if (!qword_1ECA68130)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68130);
  }

  return result;
}

unint64_t sub_1D8A6A3A4()
{
  result = qword_1ECA68140;
  if (!qword_1ECA68140)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68140);
  }

  return result;
}

unint64_t sub_1D8A6A3F8()
{
  result = qword_1ECA681E8;
  if (!qword_1ECA681E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA681E8);
  }

  return result;
}

unint64_t sub_1D8A6A44C()
{
  result = qword_1ECA681F0;
  if (!qword_1ECA681F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA681F0);
  }

  return result;
}

unint64_t sub_1D8A6A4A0()
{
  result = qword_1ECA68200;
  if (!qword_1ECA68200)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68200);
  }

  return result;
}

unint64_t sub_1D8A6A4F8()
{
  result = qword_1ECA68208;
  if (!qword_1ECA68208)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68208);
  }

  return result;
}

unint64_t sub_1D8A6A550()
{
  result = qword_1EE0E9198;
  if (!qword_1EE0E9198)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E9198);
  }

  return result;
}

unint64_t sub_1D8A6A5EC()
{
  result = qword_1EE0E9188;
  if (!qword_1EE0E9188)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1EE0E9188);
  }

  return result;
}

unint64_t sub_1D8A6A640(void *a1)
{
  a1[1] = sub_1D8A51C54();
  a1[2] = sub_1D8A29858();
  a1[3] = sub_1D87C5834();
  result = sub_1D8A6A680();
  a1[4] = result;
  return result;
}

unint64_t sub_1D8A6A680()
{
  result = qword_1ECA68220;
  if (!qword_1ECA68220)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68220);
  }

  return result;
}

unint64_t sub_1D8A6A6D8()
{
  result = qword_1ECA68228;
  if (!qword_1ECA68228)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68228);
  }

  return result;
}

uint64_t sub_1D8A6A72C(void *a1)
{
  a1[1] = sub_1D8A6D324(&qword_1EE0E4D48, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
  a1[2] = sub_1D8A6D324(qword_1EE0E4D60, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
  a1[3] = sub_1D8A6D324(&qword_1EE0E4D58, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
  result = sub_1D8A6D324(&qword_1EE0E4D40, type metadata accessor for SyntheticDetectionResult, &protocol conformance descriptor for SyntheticDetectionResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A6A848(uint64_t a1, int a2)
{
  if (a2 && *(a1 + 64))
  {
    return (*a1 + 1);
  }

  else
  {
    return 0;
  }
}

uint64_t sub_1D8A6A868(uint64_t result, int a2, int a3)
{
  if (a2)
  {
    *(result + 56) = 0;
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

  *(result + 64) = v3;
  return result;
}

uint64_t sub_1D8A6A98C(uint64_t a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 >= 0x73 && *(a1 + 8))
  {
    return (*a1 + 115);
  }

  v3 = ((*a1 >> 60) & 0x8F | (16 * (*a1 & 7))) ^ 0x7F;
  if (v3 >= 0x72)
  {
    v3 = -1;
  }

  return v3 + 1;
}

uint64_t sub_1D8A6A9DC(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a2 > 0x72)
  {
    *result = a2 - 115;
    if (a3 >= 0x73)
    {
      *(result + 8) = 1;
    }
  }

  else
  {
    if (a3 >= 0x73)
    {
      *(result + 8) = 0;
    }

    if (a2)
    {
      v3 = (-a2 >> 4) & 7 | (8 * (-a2 & 0x7F));
      *result = (v3 | (v3 << 57)) & 0xF000000000000007;
    }
  }

  return result;
}

void sub_1D8A6AA98(uint64_t a1)
{
  sub_1D8B13240();
  if (v1 <= 0x3F)
  {
    sub_1D8A6AB48();
    if (v2 <= 0x3F)
    {
      swift_cvw_initStructMetadataWithLayoutString();
    }
  }
}

void sub_1D8A6AB48()
{
  if (!qword_1EE0E9180)
  {
    v0 = sub_1D8B16470();
    if (!v1)
    {
      atomic_store(v0, &qword_1EE0E9180);
    }
  }
}

uint64_t sub_1D8A6ACA8(unsigned __int8 *a1, unsigned int a2)
{
  if (!a2)
  {
    return 0;
  }

  if (a2 < 0xF3)
  {
    goto LABEL_17;
  }

  if (a2 + 13 >= 0xFFFF00)
  {
    v2 = 4;
  }

  else
  {
    v2 = 2;
  }

  if ((a2 + 13) >> 8 < 0xFF)
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
      return (*a1 | (v4 << 8)) - 13;
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

      return (*a1 | (v4 << 8)) - 13;
    }

    v4 = a1[1];
    if (a1[1])
    {
      return (*a1 | (v4 << 8)) - 13;
    }
  }

LABEL_17:
  v6 = *a1;
  v7 = v6 >= 0xE;
  v8 = v6 - 14;
  if (!v7)
  {
    v8 = -1;
  }

  return (v8 + 1);
}

uint64_t sub_1D8A6AD38(uint64_t result, unsigned int a2, unsigned int a3)
{
  if (a3 + 13 >= 0xFFFF00)
  {
    v3 = 4;
  }

  else
  {
    v3 = 2;
  }

  if ((a3 + 13) >> 8 < 0xFF)
  {
    v4 = 1;
  }

  else
  {
    v4 = v3;
  }

  if (a3 < 0xF3)
  {
    v4 = 0;
  }

  if (a2 > 0xF2)
  {
    v5 = ((a2 - 243) >> 8) + 1;
    *result = a2 + 13;
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
    *result = a2 + 13;
    return result;
  }

  if (a2)
  {
    goto LABEL_20;
  }

  return result;
}

unint64_t sub_1D8A6AEEC()
{
  result = qword_1ECA68230;
  if (!qword_1ECA68230)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68230);
  }

  return result;
}

unint64_t sub_1D8A6AF44()
{
  result = qword_1ECA68238;
  if (!qword_1ECA68238)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68238);
  }

  return result;
}

unint64_t sub_1D8A6AF9C()
{
  result = qword_1ECA68240;
  if (!qword_1ECA68240)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68240);
  }

  return result;
}

unint64_t sub_1D8A6AFF4()
{
  result = qword_1ECA68248;
  if (!qword_1ECA68248)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68248);
  }

  return result;
}

unint64_t sub_1D8A6B04C()
{
  result = qword_1ECA68250;
  if (!qword_1ECA68250)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68250);
  }

  return result;
}

unint64_t sub_1D8A6B0A4()
{
  result = qword_1ECA68258;
  if (!qword_1ECA68258)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68258);
  }

  return result;
}

unint64_t sub_1D8A6B0FC()
{
  result = qword_1ECA68260;
  if (!qword_1ECA68260)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68260);
  }

  return result;
}

unint64_t sub_1D8A6B154()
{
  result = qword_1ECA68268;
  if (!qword_1ECA68268)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68268);
  }

  return result;
}

unint64_t sub_1D8A6B1AC()
{
  result = qword_1ECA68270;
  if (!qword_1ECA68270)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68270);
  }

  return result;
}

unint64_t sub_1D8A6B204()
{
  result = qword_1ECA68278;
  if (!qword_1ECA68278)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68278);
  }

  return result;
}

unint64_t sub_1D8A6B25C()
{
  result = qword_1ECA68280;
  if (!qword_1ECA68280)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68280);
  }

  return result;
}

unint64_t sub_1D8A6B2B4()
{
  result = qword_1ECA68288;
  if (!qword_1ECA68288)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68288);
  }

  return result;
}

unint64_t sub_1D8A6B30C()
{
  result = qword_1ECA68290;
  if (!qword_1ECA68290)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68290);
  }

  return result;
}

unint64_t sub_1D8A6B364()
{
  result = qword_1ECA68298;
  if (!qword_1ECA68298)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68298);
  }

  return result;
}

unint64_t sub_1D8A6B3BC()
{
  result = qword_1ECA682A0;
  if (!qword_1ECA682A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682A0);
  }

  return result;
}

unint64_t sub_1D8A6B414()
{
  result = qword_1ECA682A8;
  if (!qword_1ECA682A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682A8);
  }

  return result;
}

unint64_t sub_1D8A6B46C()
{
  result = qword_1ECA682B0;
  if (!qword_1ECA682B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682B0);
  }

  return result;
}

unint64_t sub_1D8A6B4C4()
{
  result = qword_1ECA682B8;
  if (!qword_1ECA682B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682B8);
  }

  return result;
}

unint64_t sub_1D8A6B51C()
{
  result = qword_1ECA682C0;
  if (!qword_1ECA682C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682C0);
  }

  return result;
}

unint64_t sub_1D8A6B574()
{
  result = qword_1ECA682C8;
  if (!qword_1ECA682C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682C8);
  }

  return result;
}

unint64_t sub_1D8A6B5CC()
{
  result = qword_1ECA682D0;
  if (!qword_1ECA682D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682D0);
  }

  return result;
}

unint64_t sub_1D8A6B624()
{
  result = qword_1ECA682D8;
  if (!qword_1ECA682D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682D8);
  }

  return result;
}

unint64_t sub_1D8A6B67C()
{
  result = qword_1ECA682E0;
  if (!qword_1ECA682E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682E0);
  }

  return result;
}

unint64_t sub_1D8A6B6D4()
{
  result = qword_1ECA682E8;
  if (!qword_1ECA682E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682E8);
  }

  return result;
}

unint64_t sub_1D8A6B72C()
{
  result = qword_1ECA682F0;
  if (!qword_1ECA682F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682F0);
  }

  return result;
}

unint64_t sub_1D8A6B784()
{
  result = qword_1ECA682F8;
  if (!qword_1ECA682F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA682F8);
  }

  return result;
}

unint64_t sub_1D8A6B7DC()
{
  result = qword_1ECA68300;
  if (!qword_1ECA68300)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68300);
  }

  return result;
}

unint64_t sub_1D8A6B834()
{
  result = qword_1ECA68308;
  if (!qword_1ECA68308)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68308);
  }

  return result;
}

unint64_t sub_1D8A6B88C()
{
  result = qword_1ECA68310;
  if (!qword_1ECA68310)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68310);
  }

  return result;
}

unint64_t sub_1D8A6B8E4()
{
  result = qword_1ECA68318;
  if (!qword_1ECA68318)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68318);
  }

  return result;
}

unint64_t sub_1D8A6B93C()
{
  result = qword_1ECA68320;
  if (!qword_1ECA68320)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68320);
  }

  return result;
}

unint64_t sub_1D8A6B994()
{
  result = qword_1ECA68328;
  if (!qword_1ECA68328)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68328);
  }

  return result;
}

unint64_t sub_1D8A6B9EC()
{
  result = qword_1ECA68330;
  if (!qword_1ECA68330)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68330);
  }

  return result;
}

unint64_t sub_1D8A6BA44()
{
  result = qword_1ECA68338;
  if (!qword_1ECA68338)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68338);
  }

  return result;
}

unint64_t sub_1D8A6BA9C()
{
  result = qword_1ECA68340;
  if (!qword_1ECA68340)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68340);
  }

  return result;
}

unint64_t sub_1D8A6BAF4()
{
  result = qword_1ECA68348;
  if (!qword_1ECA68348)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68348);
  }

  return result;
}

unint64_t sub_1D8A6BB4C()
{
  result = qword_1ECA68350;
  if (!qword_1ECA68350)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68350);
  }

  return result;
}

unint64_t sub_1D8A6BBA4()
{
  result = qword_1ECA68358;
  if (!qword_1ECA68358)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68358);
  }

  return result;
}

unint64_t sub_1D8A6BBFC()
{
  result = qword_1ECA68360;
  if (!qword_1ECA68360)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68360);
  }

  return result;
}

unint64_t sub_1D8A6BC54()
{
  result = qword_1ECA68368;
  if (!qword_1ECA68368)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68368);
  }

  return result;
}

unint64_t sub_1D8A6BCAC()
{
  result = qword_1ECA68370;
  if (!qword_1ECA68370)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68370);
  }

  return result;
}

unint64_t sub_1D8A6BD04()
{
  result = qword_1ECA68378;
  if (!qword_1ECA68378)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68378);
  }

  return result;
}

unint64_t sub_1D8A6BD5C()
{
  result = qword_1ECA68380;
  if (!qword_1ECA68380)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68380);
  }

  return result;
}

unint64_t sub_1D8A6BDB4()
{
  result = qword_1ECA68388;
  if (!qword_1ECA68388)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68388);
  }

  return result;
}

unint64_t sub_1D8A6BE0C()
{
  result = qword_1ECA68390;
  if (!qword_1ECA68390)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68390);
  }

  return result;
}

unint64_t sub_1D8A6BE64()
{
  result = qword_1ECA68398;
  if (!qword_1ECA68398)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68398);
  }

  return result;
}

unint64_t sub_1D8A6BEBC()
{
  result = qword_1ECA683A0;
  if (!qword_1ECA683A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683A0);
  }

  return result;
}

unint64_t sub_1D8A6BF14()
{
  result = qword_1ECA683A8;
  if (!qword_1ECA683A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683A8);
  }

  return result;
}

unint64_t sub_1D8A6BF6C()
{
  result = qword_1ECA683B0;
  if (!qword_1ECA683B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683B0);
  }

  return result;
}

unint64_t sub_1D8A6BFC4()
{
  result = qword_1ECA683B8;
  if (!qword_1ECA683B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683B8);
  }

  return result;
}

unint64_t sub_1D8A6C01C()
{
  result = qword_1ECA683C0;
  if (!qword_1ECA683C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683C0);
  }

  return result;
}

unint64_t sub_1D8A6C074()
{
  result = qword_1ECA683C8;
  if (!qword_1ECA683C8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683C8);
  }

  return result;
}

unint64_t sub_1D8A6C0CC()
{
  result = qword_1ECA683D0;
  if (!qword_1ECA683D0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683D0);
  }

  return result;
}

unint64_t sub_1D8A6C124()
{
  result = qword_1ECA683D8;
  if (!qword_1ECA683D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683D8);
  }

  return result;
}

unint64_t sub_1D8A6C17C()
{
  result = qword_1ECA683E0;
  if (!qword_1ECA683E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683E0);
  }

  return result;
}

unint64_t sub_1D8A6C1D4()
{
  result = qword_1ECA683E8;
  if (!qword_1ECA683E8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683E8);
  }

  return result;
}

unint64_t sub_1D8A6C22C()
{
  result = qword_1ECA683F0;
  if (!qword_1ECA683F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683F0);
  }

  return result;
}

unint64_t sub_1D8A6C284()
{
  result = qword_1ECA683F8;
  if (!qword_1ECA683F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA683F8);
  }

  return result;
}

unint64_t sub_1D8A6C2DC()
{
  result = qword_1ECA68400;
  if (!qword_1ECA68400)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68400);
  }

  return result;
}

unint64_t sub_1D8A6C334()
{
  result = qword_1ECA68408;
  if (!qword_1ECA68408)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68408);
  }

  return result;
}

unint64_t sub_1D8A6C38C()
{
  result = qword_1ECA68410;
  if (!qword_1ECA68410)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68410);
  }

  return result;
}

unint64_t sub_1D8A6C3E4()
{
  result = qword_1ECA68418;
  if (!qword_1ECA68418)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68418);
  }

  return result;
}

unint64_t sub_1D8A6C43C()
{
  result = qword_1ECA68420;
  if (!qword_1ECA68420)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68420);
  }

  return result;
}

unint64_t sub_1D8A6C494()
{
  result = qword_1ECA68428;
  if (!qword_1ECA68428)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68428);
  }

  return result;
}

unint64_t sub_1D8A6C4EC()
{
  result = qword_1ECA68430;
  if (!qword_1ECA68430)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68430);
  }

  return result;
}

unint64_t sub_1D8A6C544()
{
  result = qword_1ECA68438;
  if (!qword_1ECA68438)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68438);
  }

  return result;
}

unint64_t sub_1D8A6C59C()
{
  result = qword_1ECA68440;
  if (!qword_1ECA68440)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68440);
  }

  return result;
}

unint64_t sub_1D8A6C5F4()
{
  result = qword_1ECA68448;
  if (!qword_1ECA68448)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68448);
  }

  return result;
}

unint64_t sub_1D8A6C64C()
{
  result = qword_1ECA68450;
  if (!qword_1ECA68450)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68450);
  }

  return result;
}

unint64_t sub_1D8A6C6A4()
{
  result = qword_1ECA68458;
  if (!qword_1ECA68458)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68458);
  }

  return result;
}

unint64_t sub_1D8A6C6FC()
{
  result = qword_1ECA68460;
  if (!qword_1ECA68460)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68460);
  }

  return result;
}

unint64_t sub_1D8A6C754()
{
  result = qword_1ECA68468;
  if (!qword_1ECA68468)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68468);
  }

  return result;
}

unint64_t sub_1D8A6C7AC()
{
  result = qword_1ECA68470;
  if (!qword_1ECA68470)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68470);
  }

  return result;
}

unint64_t sub_1D8A6C804()
{
  result = qword_1ECA68478;
  if (!qword_1ECA68478)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68478);
  }

  return result;
}

unint64_t sub_1D8A6C85C()
{
  result = qword_1ECA68480;
  if (!qword_1ECA68480)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68480);
  }

  return result;
}

unint64_t sub_1D8A6C8B4()
{
  result = qword_1ECA68488;
  if (!qword_1ECA68488)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68488);
  }

  return result;
}

unint64_t sub_1D8A6C90C()
{
  result = qword_1ECA68490;
  if (!qword_1ECA68490)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68490);
  }

  return result;
}

unint64_t sub_1D8A6C964()
{
  result = qword_1ECA68498;
  if (!qword_1ECA68498)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68498);
  }

  return result;
}

unint64_t sub_1D8A6C9BC()
{
  result = qword_1ECA684A0;
  if (!qword_1ECA684A0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684A0);
  }

  return result;
}

unint64_t sub_1D8A6CA14()
{
  result = qword_1ECA684A8;
  if (!qword_1ECA684A8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684A8);
  }

  return result;
}

unint64_t sub_1D8A6CA6C()
{
  result = qword_1ECA684B0;
  if (!qword_1ECA684B0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684B0);
  }

  return result;
}

unint64_t sub_1D8A6CAC4()
{
  result = qword_1ECA684B8;
  if (!qword_1ECA684B8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684B8);
  }

  return result;
}

uint64_t sub_1D8A6CB18(uint64_t a1, uint64_t a2)
{
  v4 = a1 == 0x7466654C706F74 && a2 == 0xE700000000000000;
  if (v4 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7468676952706F74 && a2 == 0xE800000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x654C6D6F74746F62 && a2 == 0xEA00000000007466 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x69526D6F74746F62 && a2 == 0xEB00000000746867)
  {

    return 3;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 3;
    }

    else
    {
      return 4;
    }
  }
}

uint64_t sub_1D8A6CC88(uint64_t a1, uint64_t a2)
{
  if (a1 == 0x6E69646E756F7267 && a2 == 0xE900000000000067 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x6465646E756F7267 && a2 == 0xED00006573726150 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 1635018093 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x7463656A626FLL && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6573726170 && a2 == 0xE500000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 1954047348 && a2 == 0xE400000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0x65646F437271 && a2 == 0xE600000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 6;
  }

  else if (a1 == 0x70696C43707061 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 7;
  }

  else if (a1 == 0x6E696D6165727473 && a2 == 0xED00007478655467 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 8;
  }

  else if (a1 == 0x6C61636974726576 && a2 == 0xEF746E65746E6F43 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 9;
  }

  else if (a1 == 0x646F6D69746C756DLL && a2 == 0xEA00000000006C61 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 10;
  }

  else if (a1 == 0x69746568746E7973 && a2 == 0xE900000000000063 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 11;
  }

  else if (a1 == 0xD000000000000017 && 0x80000001D8B439C0 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 12;
  }

  else if (a1 == 0xD00000000000001CLL && 0x80000001D8B439A0 == a2)
  {

    return 13;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 13;
    }

    else
    {
      return 14;
    }
  }
}

uint64_t sub_1D8A6D110(uint64_t a1, uint64_t a2)
{
  v3 = a1 == 25705 && a2 == 0xE200000000000000;
  if (v3 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E616E65766F7270 && a2 == 0xEA00000000006563 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0xD000000000000020 && 0x80000001D8B48030 == a2)
  {

    return 5;
  }

  else
  {
    v6 = sub_1D8B16BA0();

    if (v6)
    {
      return 5;
    }

    else
    {
      return 6;
    }
  }
}

uint64_t sub_1D8A6D324(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

uint64_t sub_1D8A6D36C(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6D3D4(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

unint64_t sub_1D8A6D434()
{
  result = qword_1ECA684C0;
  if (!qword_1ECA684C0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684C0);
  }

  return result;
}

uint64_t sub_1D8A6D488(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

unint64_t sub_1D8A6D510(char a1)
{
  result = 0x6E69646E756F7267;
  switch(a1)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 10:
      result = 0x646F6D69746C756DLL;
      break;
    case 11:
      result = 0x69746568746E7973;
      break;
    case 12:
      result = 0xD000000000000017;
      break;
    case 13:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

double MetaDetectionResult.modifyWithPrediction(_:)@<D0>(uint64_t a1@<X0>, uint64_t a2@<X8>)
{
  v5 = *(a1 + 80);
  sub_1D8A6F960(v2, a2, type metadata accessor for DetectionRequest);
  v6 = type metadata accessor for MetaDetectionResult(0);
  v7 = *(v2 + v6[6]);
  v8 = *(v2 + v6[7]);
  v9 = *(v2 + v6[9]);
  v10 = (v2 + v6[10]);
  v11 = (a2 + v6[5]);
  v12 = *(a1 + 32);
  *v11 = *(a1 + 16);
  v11[1] = v12;
  v13 = *(a1 + 64);
  v11[2] = *(a1 + 48);
  v11[3] = v13;
  *(a2 + v6[6]) = v7;
  *(a2 + v6[7]) = v8;
  *(a2 + v6[8]) = v5;
  *(a2 + v6[9]) = v9;
  v15 = *v10;
  v14 = v10[1];
  v16 = (a2 + v6[10]);
  *v16 = v15;
  v16[1] = v14;

  return result;
}

double MetaDetectionResult.modifyWithRotation(_:)@<D0>(uint64_t *a1@<X0>, uint64_t a2@<X8>)
{
  v4 = *a1;
  sub_1D8A6F960(v2, a2, type metadata accessor for DetectionRequest);
  v5 = type metadata accessor for MetaDetectionResult(0);
  v6 = (v2 + v5[5]);
  v7 = v6[1];
  v21 = *v6;
  v22 = v7;
  v8 = v6[3];
  v23 = v6[2];
  v24 = v8;
  v19 = *(v2 + v5[7]);
  v20 = v4;
  sub_1D8A5A9D8(&v20, &v19, v25);
  v9 = *(v2 + v5[6]);
  v10 = *(v2 + v5[8]);
  v11 = *(v2 + v5[9]);
  v12 = (v2 + v5[10]);
  v13 = (a2 + v5[5]);
  v14 = v25[1];
  *v13 = v25[0];
  v13[1] = v14;
  v15 = v25[3];
  v13[2] = v25[2];
  v13[3] = v15;
  *(a2 + v5[6]) = v9;
  *(a2 + v5[7]) = v4;
  *(a2 + v5[8]) = v10;
  *(a2 + v5[9]) = v11;
  v16 = v12[1];
  v17 = (a2 + v5[10]);
  *v17 = *v12;
  v17[1] = v16;

  return result;
}

uint64_t sub_1D8A6D8CC(unsigned __int8 *a1)
{
  sub_1D8B16D20();
  MEMORY[0x1DA720210](*a1);
  v2 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(v7);
  sub_1D8818BD0(v7, *&a1[v2[6]]);
  sub_1D88911A0(*&a1[v2[7]], *&a1[v2[7] + 8], *&a1[v2[7] + 16], *&a1[v2[7] + 24]);
  v3 = *&a1[v2[8]];
  if (v3 == 0.0)
  {
    v3 = 0.0;
  }

  MEMORY[0x1DA720250](*&v3);
  v4 = sub_1D8B16D80();
  v5 = sub_1D8B15D60();
  v5[4] = v4;
  v5[5] = v4;
  v5[2] = 16;

  return sub_1D8B13220();
}

__n128 MetaDetectionResult.corners.getter@<Q0>(uint64_t a1@<X8>)
{
  v3 = v1 + *(type metadata accessor for MetaDetectionResult(0) + 20);
  v4 = *(v3 + 16);
  *a1 = *v3;
  *(a1 + 16) = v4;
  result = *(v3 + 32);
  v6 = *(v3 + 48);
  *(a1 + 32) = result;
  *(a1 + 48) = v6;
  return result;
}

double MetaDetectionResult.rotationAngle.getter@<D0>(double *a1@<X8>)
{
  result = *(v1 + *(type metadata accessor for MetaDetectionResult(0) + 28));
  *a1 = result;
  return result;
}

unint64_t MetaDetectionResult.label.getter()
{
  result = 0x6E69646E756F7267;
  switch(*v0)
  {
    case 1:
      result = 0x6465646E756F7267;
      break;
    case 2:
      result = 1635018093;
      break;
    case 3:
      result = 0x7463656A626FLL;
      break;
    case 4:
      result = 0x6573726170;
      break;
    case 5:
      result = 1954047348;
      break;
    case 6:
      result = 0x65646F437271;
      break;
    case 7:
      result = 0x70696C43707061;
      break;
    case 8:
      result = 0x6E696D6165727473;
      break;
    case 9:
      result = 0x6C61636974726576;
      break;
    case 0xA:
      result = 0x646F6D69746C756DLL;
      break;
    case 0xB:
      result = 0x69746568746E7973;
      break;
    case 0xC:
      result = 0xD000000000000017;
      break;
    case 0xD:
      result = 0xD00000000000001CLL;
      break;
    default:
      return result;
  }

  return result;
}

unint64_t sub_1D8A6DC8C()
{
  v1 = *v0;
  if (v1 <= 2)
  {
    v5 = 0x7372656E726F63;
    if (v1 != 1)
    {
      v5 = 0x6E6F63655378616DLL;
    }

    if (*v0)
    {
      return v5;
    }

    else
    {
      return 0xD000000000000010;
    }
  }

  else
  {
    v2 = 0x746174536B726F77;
    if (v1 != 5)
    {
      v2 = 0xD000000000000015;
    }

    v3 = 0x6E6F697461746F72;
    if (v1 != 3)
    {
      v3 = 0x6D617473656D6974;
    }

    if (*v0 <= 4u)
    {
      return v3;
    }

    else
    {
      return v2;
    }
  }
}

uint64_t sub_1D8A6DD94@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A6F6F4(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A6DDBC(uint64_t a1)
{
  v2 = sub_1D8A6F1E0();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6DDF8(uint64_t a1)
{
  v2 = sub_1D8A6F1E0();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t MetaDetectionResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684D0, &qword_1D8B39600);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v14 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A6F1E0();
  sub_1D8B16DD0();
  v20 = 0;
  type metadata accessor for DetectionRequest(0);
  sub_1D8A6F440(&qword_1ECA67858, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for MetaDetectionResult(0);
    v10 = (v3 + v9[5]);
    v11 = v10[1];
    v16 = *v10;
    v17 = v11;
    v12 = v10[3];
    v18 = v10[2];
    v19 = v12;
    v15 = 1;
    sub_1D881BB78();
    sub_1D8B16AE0();
    LOBYTE(v16) = 2;
    sub_1D8B16AB0();
    *&v16 = *(v3 + v9[7]);
    v15 = 3;
    sub_1D8891364();
    sub_1D8B16AE0();
    LOBYTE(v16) = 4;
    sub_1D8B16AB0();
    LOBYTE(v16) = *(v3 + v9[9]);
    v15 = 5;
    sub_1D8A6F234();
    sub_1D8B16A80();
    LOBYTE(v16) = 6;
    sub_1D8B16A50();
  }

  return (*(v6 + 8))(v8, v5);
}

void MetaDetectionResult.hash(into:)(__int128 *a1)
{
  MEMORY[0x1DA720210](*v1);
  v3 = type metadata accessor for DetectionRequest(0);
  DetectionRequest.Originator.hash(into:)(a1);
  sub_1D8818BD0(a1, *&v1[v3[6]]);
  sub_1D88911A0(*&v1[v3[7]], *&v1[v3[7] + 8], *&v1[v3[7] + 16], *&v1[v3[7] + 24]);
  v4 = *&v1[v3[8]];
  if (v4 == 0.0)
  {
    v4 = 0.0;
  }

  MEMORY[0x1DA720250](*&v4);
  v5 = type metadata accessor for MetaDetectionResult(0);
  v6 = &v1[v5[5]];
  v7 = v6[2];
  v8 = v6[3];
  v9 = v6[4];
  v10 = v6[5];
  v11 = v6[6];
  v12 = v6[7];
  sub_1D8818B80(*v6, v6[1]);
  sub_1D8818B80(v7, v8);
  sub_1D8818B80(v9, v10);
  sub_1D8818B80(v11, v12);
  v13 = *&v1[v5[6]];
  if (v13 == 0.0)
  {
    v13 = 0.0;
  }

  MEMORY[0x1DA720250](*&v13);
  v14 = *&v1[v5[7]];
  if (v14 == 0.0)
  {
    v14 = 0.0;
  }

  MEMORY[0x1DA720250](*&v14);
  v15 = *&v1[v5[8]];
  if (v15 == 0.0)
  {
    v15 = 0.0;
  }

  MEMORY[0x1DA720250](*&v15);
  v16 = v1[v5[9]];
  sub_1D8B16D40();
  if (v16 != 3)
  {
    MEMORY[0x1DA720210](v16);
  }

  if (*&v1[v5[10] + 8])
  {
    sub_1D8B16D40();

    sub_1D8B15A60();
  }

  else
  {
    sub_1D8B16D40();
  }
}

uint64_t MetaDetectionResult.hashValue.getter()
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t MetaDetectionResult.init(from:)@<X0>(void *a1@<X0>, uint64_t a2@<X8>)
{
  v26 = a2;
  v4 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v4);
  v6 = &v26 - ((v5 + 15) & 0xFFFFFFFFFFFFFFF0);
  v7 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA684E8, &qword_1D8B39608);
  v27 = *(v7 - 8);
  v28 = v7;
  MEMORY[0x1EEE9AC00](v7);
  v9 = &v26 - v8;
  v10 = type metadata accessor for MetaDetectionResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = &v26 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v30 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D8A6F1E0();
  v29 = v9;
  sub_1D8B16DB0();
  if (v2)
  {
    return __swift_destroy_boxed_opaque_existential_1(v30);
  }

  v14 = v27;
  LOBYTE(v32) = 0;
  sub_1D8A6F440(&qword_1ECA67880, type metadata accessor for DetectionRequest, &protocol conformance descriptor for DetectionRequest);
  v15 = v28;
  sub_1D8B16A10();
  sub_1D8A6F9C8(v6, v12, type metadata accessor for DetectionRequest);
  v37 = 1;
  sub_1D881BC34();
  sub_1D8B16A10();
  v16 = &v12[v10[5]];
  v17 = v33;
  *v16 = v32;
  *(v16 + 1) = v17;
  v18 = v35;
  *(v16 + 2) = v34;
  *(v16 + 3) = v18;
  LOBYTE(v31) = 2;
  sub_1D8B169E0();
  *&v12[v10[6]] = v19;
  v36 = 3;
  sub_1D88913B8();
  sub_1D8B16A10();
  *&v12[v10[7]] = v31;
  LOBYTE(v31) = 4;
  sub_1D8B169E0();
  *&v12[v10[8]] = v20;
  v36 = 5;
  sub_1D8A6F288();
  sub_1D8B169B0();
  v12[v10[9]] = v31;
  LOBYTE(v31) = 6;
  v22 = sub_1D8B16970();
  v24 = v23;
  (*(v14 + 8))(v29, v15);
  v25 = &v12[v10[10]];
  *v25 = v22;
  v25[1] = v24;
  sub_1D8A6F960(v12, v26, type metadata accessor for MetaDetectionResult);
  __swift_destroy_boxed_opaque_existential_1(v30);
  return sub_1D8A6FA30(v12, type metadata accessor for MetaDetectionResult);
}

double sub_1D8A6E7D0@<D0>(uint64_t a1@<X0>, int *a2@<X1>, uint64_t a3@<X8>)
{
  v7 = *(a1 + 80);
  sub_1D8A6F960(v3, a3, type metadata accessor for DetectionRequest);
  v8 = a2[6];
  v9 = *(v3 + v8);
  v10 = a2[7];
  v11 = a2[8];
  v12 = *(v3 + v10);
  v13 = a2[9];
  v14 = a2[10];
  v15 = *(v3 + v13);
  v17 = *(v3 + v14);
  v16 = *(v3 + v14 + 8);
  v18 = (a3 + a2[5]);
  v19 = *(a1 + 32);
  *v18 = *(a1 + 16);
  v18[1] = v19;
  v20 = *(a1 + 64);
  v18[2] = *(a1 + 48);
  v18[3] = v20;
  *(a3 + v8) = v9;
  *(a3 + v10) = v12;
  *(a3 + v11) = v7;
  *(a3 + v13) = v15;
  v21 = (a3 + v14);
  *v21 = v17;
  v21[1] = v16;

  return result;
}

uint64_t sub_1D8A6E890()
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A6E8D4(uint64_t a1)
{
  sub_1D8B16D20();
  MetaDetectionResult.hash(into:)(v2);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A6E940@<X0>(uint64_t a1@<X0>, uint64_t a2@<X1>, uint64_t a3@<X2>, uint64_t a4@<X3>, uint64_t a5@<X8>)
{
  v55 = a4;
  v9 = type metadata accessor for DetectionResult(0);
  MEMORY[0x1EEE9AC00](v9 - 8);
  v11 = &v51 - ((v10 + 15) & 0xFFFFFFFFFFFFFFF0);
  v12 = type metadata accessor for ProcessorState(0);
  v13 = MEMORY[0x1EEE9AC00](v12);
  v56 = &v51 - ((v14 + 15) & 0xFFFFFFFFFFFFFFF0);
  v15 = MEMORY[0x1EEE9AC00](v13);
  v17 = &v51 - v16;
  MEMORY[0x1EEE9AC00](v15);
  v19 = &v51 - v18;
  v20 = type metadata accessor for DetectionRequest(0);
  MEMORY[0x1EEE9AC00](v20);
  v22 = &v51 - ((v21 + 15) & 0xFFFFFFFFFFFFFFF0);
  v57 = a1;
  sub_1D8A6F960(a1, v19, type metadata accessor for ProcessorState);
  EnumCaseMultiPayload = swift_getEnumCaseMultiPayload();
  if (EnumCaseMultiPayload)
  {
    if (EnumCaseMultiPayload == 1)
    {
      sub_1D8A6F9C8(v19, v11, type metadata accessor for DetectionResult);
      sub_1D8A6F960(v11, v22, type metadata accessor for DetectionRequest);
      sub_1D8A6FA30(v11, type metadata accessor for DetectionResult);
      goto LABEL_6;
    }

    __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);
  }

  sub_1D8A6F9C8(v19, v22, type metadata accessor for DetectionRequest);
LABEL_6:
  v24 = &v22[*(v20 + 28)];
  v25 = *v24;
  v26 = v24[1];
  v27 = v24[2];
  v28 = v24[3];
  v59.origin.x = *v24;
  v59.origin.y = v26;
  v59.size.width = v27;
  v59.size.height = v28;
  MinX = CGRectGetMinX(v59);
  v60.origin.x = v25;
  v60.origin.y = v26;
  v60.size.width = v27;
  v60.size.height = v28;
  MinY = CGRectGetMinY(v60);
  v61.origin.x = v25;
  v61.origin.y = v26;
  v61.size.width = v27;
  v61.size.height = v28;
  MaxX = CGRectGetMaxX(v61);
  v62.origin.x = v25;
  v62.origin.y = v26;
  v62.size.width = v27;
  v62.size.height = v28;
  v29 = CGRectGetMinY(v62);
  v63.origin.x = v25;
  v63.origin.y = v26;
  v63.size.width = v27;
  v63.size.height = v28;
  v30 = CGRectGetMinX(v63);
  v64.origin.x = v25;
  v64.origin.y = v26;
  v64.size.width = v27;
  v64.size.height = v28;
  MaxY = CGRectGetMaxY(v64);
  v65.origin.x = v25;
  v65.origin.y = v26;
  v65.size.width = v27;
  v65.size.height = v28;
  v32 = CGRectGetMaxX(v65);
  v66.origin.x = v25;
  v66.origin.y = v26;
  v66.size.width = v27;
  v66.size.height = v28;
  v33 = CGRectGetMaxY(v66);
  v34 = type metadata accessor for MetaDetectionResult(0);
  v35 = (a5 + v34[5]);
  v36 = MinY;
  *v35 = MinX;
  v35[1] = v36;
  v35[2] = MaxX;
  v35[3] = v29;
  v35[4] = v30;
  v35[5] = MaxY;
  v35[6] = v32;
  v35[7] = v33;
  sub_1D8A6F960(v22, a5, type metadata accessor for DetectionRequest);
  v37 = *v22;
  if (v37 <= 5)
  {
    if (*v22 <= 3u)
    {
      v38 = 5.0;
      if (v37 >= 2)
      {
        goto LABEL_19;
      }

      goto LABEL_18;
    }

    if (v37 != 4)
    {
      v38 = 10.0;
      goto LABEL_19;
    }

LABEL_18:
    v38 = 2.0;
    goto LABEL_19;
  }

  if (*v22 <= 8u)
  {
    if (v37 - 6 < 2)
    {
      v38 = 1.0;
      goto LABEL_19;
    }

    goto LABEL_28;
  }

  if (v37 - 9 >= 2)
  {
    if (v37 - 12 < 2)
    {
      goto LABEL_18;
    }

LABEL_28:
    result = sub_1D8B168C0();
    __break(1u);
    return result;
  }

  v38 = 0.1;
LABEL_19:
  *(a5 + v34[6]) = v38;
  v39 = v55;
  CameraSourceFrame.rotationAngle.getter(v55, &v58);
  *(a5 + v34[7]) = v58;
  v40 = CameraSourceFrame.timestamp.getter(a3, v39);
  (*(*(a3 - 8) + 8))(a2, a3);
  sub_1D8A6FA30(v22, type metadata accessor for DetectionRequest);
  *(a5 + v34[8]) = v40;
  v41 = v57;
  sub_1D8A6F960(v57, v17, type metadata accessor for ProcessorState);
  v42 = swift_getEnumCaseMultiPayload();
  v43 = type metadata accessor for ProcessorState;
  if (v42)
  {
    v44 = v56;
    if (v42 == 1)
    {
      v45 = 1;
      v43 = type metadata accessor for ProcessorState;
    }

    else
    {
      __swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0);

      v45 = 3;
      v43 = type metadata accessor for DetectionRequest;
    }
  }

  else
  {
    v45 = 0;
    v44 = v56;
  }

  sub_1D8A6FA30(v17, v43);
  *(a5 + v34[9]) = v45;
  sub_1D8A6F9C8(v41, v44, type metadata accessor for ProcessorState);
  if (swift_getEnumCaseMultiPayload() == 2)
  {
    v46 = (v44 + *(__swift_instantiateConcreteTypeFromMangledNameV2(&unk_1ECA67D40, &qword_1D8B25DA0) + 48));
    v47 = *v46;
    v48 = v46[1];
    result = sub_1D8A6FA30(v44, type metadata accessor for DetectionRequest);
  }

  else
  {
    result = sub_1D8A6FA30(v44, type metadata accessor for ProcessorState);
    v47 = 0;
    v48 = 0;
  }

  v50 = (a5 + v34[10]);
  *v50 = v47;
  v50[1] = v48;
  return result;
}

BOOL _s22VisualIntelligenceCore19MetaDetectionResultV2eeoiySbAC_ACtFZ_0(unsigned __int8 *a1, unsigned __int8 *a2)
{
  if (*a1 != *a2)
  {
    return 0;
  }

  v25 = v2;
  v26 = v3;
  v6 = type metadata accessor for DetectionRequest(0);
  if ((_s22VisualIntelligenceCore16DetectionRequestV10OriginatorO2eeoiySbAE_AEtFZ_0(&a1[v6[5]], &a2[v6[5]]) & 1) == 0 || (sub_1D894CAAC(*&a1[v6[6]], *&a2[v6[6]]) & 1) == 0)
  {
    return 0;
  }

  result = CGRectEqualToRect(*&a1[v6[7]], *&a2[v6[7]]);
  if (!result)
  {
    return result;
  }

  if (*&a1[v6[8]] != *&a2[v6[8]])
  {
    return 0;
  }

  v8 = type metadata accessor for MetaDetectionResult(0);
  v9 = &a1[v8[5]];
  v10 = *(v9 + 3);
  v24[2] = *(v9 + 2);
  v24[3] = v10;
  v11 = *(v9 + 1);
  v24[0] = *v9;
  v24[1] = v11;
  v12 = &a2[v8[5]];
  v13 = *(v12 + 1);
  v23[0] = *v12;
  v23[1] = v13;
  v14 = *(v12 + 3);
  v23[2] = *(v12 + 2);
  v23[3] = v14;
  if (!_s22VisualIntelligenceCore7CornersV2eeoiySbAC_ACtFZ_0(v24, v23) || *&a1[v8[6]] != *&a2[v8[6]] || *&a1[v8[7]] != *&a2[v8[7]] || *&a1[v8[8]] != *&a2[v8[8]])
  {
    return 0;
  }

  v15 = v8[9];
  v16 = a1[v15];
  v17 = a2[v15];
  if (v16 == 3)
  {
    if (v17 != 3)
    {
      return 0;
    }
  }

  else if (v16 != v17)
  {
    return 0;
  }

  v18 = v8[10];
  v19 = &a1[v18];
  v20 = *&a1[v18 + 8];
  v21 = &a2[v18];
  v22 = *(v21 + 1);
  if (v20)
  {
    return v22 && (*v19 == *v21 && v20 == v22 || (sub_1D8B16BA0() & 1) != 0);
  }

  return !v22;
}

uint64_t type metadata accessor for MetaDetectionResult(uint64_t a1)
{
  result = qword_1EE0E5CD0;
  if (!qword_1EE0E5CD0)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8A6F1E0()
{
  result = qword_1ECA684D8;
  if (!qword_1ECA684D8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684D8);
  }

  return result;
}

unint64_t sub_1D8A6F234()
{
  result = qword_1ECA684E0;
  if (!qword_1ECA684E0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684E0);
  }

  return result;
}

unint64_t sub_1D8A6F288()
{
  result = qword_1ECA684F0;
  if (!qword_1ECA684F0)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684F0);
  }

  return result;
}

uint64_t sub_1D8A6F2DC(void *a1)
{
  a1[1] = sub_1D8A6F440(&qword_1EE0E5CF0, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
  a1[2] = sub_1D8A6F440(&qword_1EE0E5D08, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
  a1[3] = sub_1D8A6F440(&qword_1EE0E5D00, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
  result = sub_1D8A6F440(&qword_1EE0E5CE8, type metadata accessor for MetaDetectionResult, &protocol conformance descriptor for MetaDetectionResult);
  a1[4] = result;
  return result;
}

uint64_t sub_1D8A6F440(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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

void sub_1D8A6F4B0(uint64_t a1)
{
  type metadata accessor for DetectionRequest(319);
  if (v1 <= 0x3F)
  {
    sub_1D8A6F590(319, &qword_1EE0E3AC8, &type metadata for WorkState);
    if (v2 <= 0x3F)
    {
      sub_1D8A6F590(319, &qword_1EE0E3A20, MEMORY[0x1E69E6158]);
      if (v3 <= 0x3F)
      {
        swift_cvw_initStructMetadataWithLayoutString();
      }
    }
  }
}

void sub_1D8A6F590(uint64_t a1, unint64_t *a2, uint64_t a3)
{
  if (!*a2)
  {
    v4 = sub_1D8B16470();
    if (!v5)
    {
      atomic_store(v4, a2);
    }
  }
}

unint64_t sub_1D8A6F5F0()
{
  result = qword_1ECA684F8;
  if (!qword_1ECA684F8)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA684F8);
  }

  return result;
}

unint64_t sub_1D8A6F648()
{
  result = qword_1ECA68500;
  if (!qword_1ECA68500)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68500);
  }

  return result;
}

unint64_t sub_1D8A6F6A0()
{
  result = qword_1ECA68508;
  if (!qword_1ECA68508)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68508);
  }

  return result;
}

uint64_t sub_1D8A6F6F4(uint64_t a1, uint64_t a2)
{
  if (a1 == 0xD000000000000010 && 0x80000001D8B48060 == a2 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 0;
  }

  else if (a1 == 0x7372656E726F63 && a2 == 0xE700000000000000 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 1;
  }

  else if (a1 == 0x6E6F63655378616DLL && a2 == 0xEF79616365447364 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 2;
  }

  else if (a1 == 0x6E6F697461746F72 && a2 == 0xED0000656C676E41 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 3;
  }

  else if (a1 == 0x6D617473656D6974 && a2 == 0xE900000000000070 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 4;
  }

  else if (a1 == 0x746174536B726F77 && a2 == 0xE900000000000065 || (sub_1D8B16BA0() & 1) != 0)
  {

    return 5;
  }

  else if (a1 == 0xD000000000000015 && 0x80000001D8B48080 == a2)
  {

    return 6;
  }

  else
  {
    v5 = sub_1D8B16BA0();

    if (v5)
    {
      return 6;
    }

    else
    {
      return 7;
    }
  }
}

uint64_t sub_1D8A6F960(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 16))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6F9C8(uint64_t a1, uint64_t a2, uint64_t (*a3)(void))
{
  v5 = a3(0);
  (*(*(v5 - 8) + 32))(a2, a1, v5);
  return a2;
}

uint64_t sub_1D8A6FA30(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t GenericParseDataResult.timestamp.setter(double a1)
{
  result = type metadata accessor for GenericParseDataResult(0);
  *(v1 + *(result + 20)) = a1;
  return result;
}

uint64_t sub_1D8A6FB34(unsigned __int8 a1)
{
  if (a1 <= 3u)
  {
    v5 = 0x6F69746365746564;
    v6 = 0x736E69616D6F64;
    if (a1 != 2)
    {
      v6 = 0xD00000000000001CLL;
    }

    if (a1)
    {
      v5 = 0x6D617473656D6974;
    }

    if (a1 <= 1u)
    {
      return v5;
    }

    else
    {
      return v6;
    }
  }

  else
  {
    v1 = 0xD000000000000014;
    v2 = 0xD000000000000019;
    if (a1 == 7)
    {
      v2 = 0xD000000000000011;
    }

    if (a1 != 6)
    {
      v1 = v2;
    }

    v3 = 0xD000000000000027;
    if (a1 == 4)
    {
      v3 = 0x6261686372616573;
    }

    if (a1 <= 5u)
    {
      return v3;
    }

    else
    {
      return v1;
    }
  }
}

uint64_t sub_1D8A6FC7C@<X0>(_BYTE *a1@<X8>, uint64_t a2@<X0>, uint64_t a3@<X1>)
{
  result = sub_1D8A71924(a2, a3);
  *a1 = result;
  return result;
}

uint64_t sub_1D8A6FCB0(uint64_t a1)
{
  v2 = sub_1D8A71050();

  return MEMORY[0x1EEE6BB70](a1, v2);
}

uint64_t sub_1D8A6FCEC(uint64_t a1)
{
  v2 = sub_1D8A71050();

  return MEMORY[0x1EEE6BB78](a1, v2);
}

uint64_t GenericParseDataResult.encode(to:)(void *a1)
{
  v3 = v1;
  v5 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68510, &qword_1D8B398A0);
  v6 = *(v5 - 8);
  MEMORY[0x1EEE9AC00](v5);
  v8 = &v11 - v7;
  __swift_project_boxed_opaque_existential_1(a1, a1[3]);
  sub_1D8A71050();
  sub_1D8B16DD0();
  LOBYTE(v12) = 0;
  sub_1D8B13240();
  sub_1D8A713CC(&qword_1ECA637D8, MEMORY[0x1E69695A8], MEMORY[0x1E69695B0]);
  sub_1D8B16AE0();
  if (!v2)
  {
    v9 = type metadata accessor for GenericParseDataResult(0);
    LOBYTE(v12) = 1;
    sub_1D8B16AB0();
    v12 = *(v3 + *(v9 + 24));
    HIBYTE(v11) = 2;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A71114(&qword_1ECA68528, &qword_1ECA68530, MEMORY[0x1E69E03E0], MEMORY[0x1E69E6300]);
    sub_1D8B16AE0();
    LOBYTE(v12) = 3;
    type metadata accessor for VisualUnderstandingContainer(0);
    sub_1D8A713CC(&qword_1ECA68538, type metadata accessor for VisualUnderstandingContainer, &protocol conformance descriptor for VisualUnderstandingContainer);
    sub_1D8B16AE0();
    LOBYTE(v12) = 4;
    sub_1D8B16AA0();
    v12 = *(v3 + *(v9 + 36));
    HIBYTE(v11) = 5;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68540, &unk_1D8B398B0);
    sub_1D8A71214(&qword_1ECA68548, &qword_1ECA68538, &protocol conformance descriptor for VisualUnderstandingContainer, MEMORY[0x1E69E6300]);
    sub_1D8B16A80();
    LOBYTE(v12) = 6;
    sub_1D8B16A90();
    LOBYTE(v12) = 7;
    sub_1D8B16A90();
    LOBYTE(v12) = 8;
    sub_1D8B16AD0();
  }

  return (*(v6 + 8))(v8, v5);
}

uint64_t GenericParseDataResult.hash(into:)(uint64_t a1)
{
  v37 = sub_1D8B13830();
  v35 = *(v37 - 8);
  MEMORY[0x1EEE9AC00](v37);
  v33 = &v33 - ((v3 + 15) & 0xFFFFFFFFFFFFFFF0);
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  MEMORY[0x1EEE9AC00](v4 - 8);
  v34 = &v33 - v5;
  v6 = sub_1D8B13AD0();
  v7 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v9 = &v33 - ((v8 + 15) & 0xFFFFFFFFFFFFFFF0);
  sub_1D8B13240();
  sub_1D8A713CC(&qword_1EE0E98A0, MEMORY[0x1E69695A8], MEMORY[0x1E69695B8]);
  sub_1D8B157A0();
  v10 = type metadata accessor for GenericParseDataResult(0);
  v11 = *(v1 + *(v10 + 20));
  if (v11 == 0.0)
  {
    v11 = 0.0;
  }

  MEMORY[0x1DA720250](*&v11);
  v36 = v10;
  v12 = *(v10 + 24);
  v38 = v1;
  v13 = *(v1 + v12);
  v14 = a1;
  MEMORY[0x1DA720210](*(v13 + 16));
  v15 = *(v13 + 16);
  if (v15)
  {
    v18 = *(v7 + 16);
    v17 = v7 + 16;
    v16 = v18;
    v19 = v13 + ((*(v17 + 64) + 32) & ~*(v17 + 64));
    v20 = *(v17 + 56);
    do
    {
      v16(v9, v19, v6);
      sub_1D8A713CC(&qword_1ECA63170, MEMORY[0x1E69E03D8], MEMORY[0x1E69E03E8]);
      sub_1D8B157A0();
      (*(v17 - 8))(v9, v6);
      v19 += v20;
      --v15;
    }

    while (v15);
  }

  v21 = v36;
  v22 = v38;
  v23 = (v38 + *(v36 + 28));
  v24 = *v23;
  if (*v23 == 0.0)
  {
    v24 = 0.0;
  }

  v25 = v14;
  MEMORY[0x1DA720250](*&v24);
  v26 = type metadata accessor for VisualUnderstandingContainer(0);
  v27 = v34;
  sub_1D8A710A4(v23 + *(v26 + 20), v34);
  v28 = v35;
  v29 = v37;
  if ((*(v35 + 48))(v27, 1, v37) == 1)
  {
    sub_1D8B16D40();
  }

  else
  {
    v30 = v33;
    (*(v28 + 32))(v33, v27, v29);
    sub_1D8B16D40();
    sub_1D8A713CC(&qword_1ECA635F0, MEMORY[0x1E69E0330], MEMORY[0x1E69E0340]);
    sub_1D8B157A0();
    (*(v28 + 8))(v30, v29);
  }

  if (*(v23 + *(v26 + 24) + 8) >> 60 == 15)
  {
    sub_1D8B16D40();
  }

  else
  {
    sub_1D8B16D40();
    sub_1D8B13060();
  }

  sub_1D8B16D40();
  v31 = *(v22 + *(v21 + 36));
  sub_1D8B16D40();
  if (v31)
  {
    sub_1D87CFAE4(v25, v31);
  }

  sub_1D8B15A60();
  sub_1D8B15A60();
  return MEMORY[0x1DA720210](*(v22 + *(v21 + 48)));
}

uint64_t GenericParseDataResult.hashValue.getter()
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

void GenericParseDataResult.init(from:)(void *a1@<X0>, uint64_t a2@<X8>)
{
  v29 = a2;
  v3 = type metadata accessor for VisualUnderstandingContainer(0);
  MEMORY[0x1EEE9AC00](v3);
  v5 = v27 - ((v4 + 15) & 0xFFFFFFFFFFFFFFF0);
  v6 = sub_1D8B13240();
  v31 = *(v6 - 8);
  MEMORY[0x1EEE9AC00](v6);
  v33 = v27 - ((v7 + 15) & 0xFFFFFFFFFFFFFFF0);
  v32 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68550, &qword_1D8B398C0);
  v30 = *(v32 - 8);
  MEMORY[0x1EEE9AC00](v32);
  v9 = v27 - v8;
  v10 = type metadata accessor for GenericParseDataResult(0);
  MEMORY[0x1EEE9AC00](v10);
  v12 = v27 - ((v11 + 15) & 0xFFFFFFFFFFFFFFF0);
  v13 = a1[3];
  v36 = a1;
  __swift_project_boxed_opaque_existential_1(a1, v13);
  sub_1D8A71050();
  v34 = v9;
  v14 = v35;
  sub_1D8B16DB0();
  if (v14)
  {
    __swift_destroy_boxed_opaque_existential_1(v36);
  }

  else
  {
    v28 = v5;
    v15 = v30;
    v16 = v31;
    v35 = v10;
    LOBYTE(v38) = 0;
    sub_1D8A713CC(&unk_1ECA689C0, MEMORY[0x1E69695A8], MEMORY[0x1E69695D0]);
    sub_1D8B16A10();
    (*(v16 + 32))(v12, v33, v6);
    LOBYTE(v38) = 1;
    sub_1D8B169E0();
    v27[1] = v6;
    *&v12[v35[5]] = v17;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68520, &qword_1D8B398A8);
    v37 = 2;
    sub_1D8A71114(&qword_1ECA68558, &qword_1ECA68560, MEMORY[0x1E69E0400], MEMORY[0x1E69E6330]);
    sub_1D8B16A10();
    v18 = v15;
    *&v12[v35[6]] = v38;
    LOBYTE(v38) = 3;
    sub_1D8A713CC(&qword_1ECA68568, type metadata accessor for VisualUnderstandingContainer, &protocol conformance descriptor for VisualUnderstandingContainer);
    v19 = v28;
    sub_1D8B16A10();
    sub_1D8A711B0(v19, &v12[v35[7]]);
    LOBYTE(v38) = 4;
    v12[v35[8]] = sub_1D8B169D0() & 1;
    __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA68540, &unk_1D8B398B0);
    v37 = 5;
    sub_1D8A71214(&qword_1ECA68570, &qword_1ECA68568, &protocol conformance descriptor for VisualUnderstandingContainer, MEMORY[0x1E69E6330]);
    sub_1D8B169B0();
    *&v12[v35[9]] = v38;
    LOBYTE(v38) = 6;
    v20 = sub_1D8B169C0();
    v21 = &v12[v35[10]];
    *v21 = v20;
    v21[1] = v22;
    LOBYTE(v38) = 7;
    v23 = sub_1D8B169C0();
    v24 = &v12[v35[11]];
    *v24 = v23;
    v24[1] = v25;
    LOBYTE(v38) = 8;
    v26 = sub_1D8B16A00();
    (*(v18 + 8))(v34, v32);
    *&v12[v35[12]] = v26;
    sub_1D8A712B0(v12, v29);
    __swift_destroy_boxed_opaque_existential_1(v36);
    sub_1D8A71314(v12, type metadata accessor for GenericParseDataResult);
  }
}

uint64_t sub_1D8A70DF4()
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v1);
  return sub_1D8B16D80();
}

uint64_t sub_1D8A70E38(uint64_t a1)
{
  sub_1D8B16D20();
  GenericParseDataResult.hash(into:)(v2);
  return sub_1D8B16D80();
}

BOOL _s22VisualIntelligenceCore22GenericParseDataResultV2eeoiySbAC_ACtFZ_0(uint64_t a1, uint64_t a2)
{
  if ((sub_1D8B13200() & 1) == 0)
  {
    return 0;
  }

  v4 = type metadata accessor for GenericParseDataResult(0);
  if (*(a1 + *(v4 + 20)) != *(a2 + *(v4 + 20)))
  {
    return 0;
  }

  v5 = v4;
  if ((sub_1D88E19B4(*(a1 + *(v4 + 24)), *(a2 + *(v4 + 24))) & 1) == 0 || !_s22VisualIntelligenceCore0A22UnderstandingContainerV2eeoiySbAC_ACtFZ_0((a1 + v5[7]), (a2 + v5[7])) || *(a1 + v5[8]) != *(a2 + v5[8]))
  {
    return 0;
  }

  v7 = v5[9];
  v8 = *(a1 + v7);
  v9 = *(a2 + v7);
  if (v8)
  {
    if (v9)
    {

      v10 = sub_1D88E19FC(v8, v9);

      if (v10)
      {
        goto LABEL_12;
      }
    }

    return 0;
  }

  if (v9)
  {
    return 0;
  }

LABEL_12:
  v11 = v5[10];
  v12 = *(a1 + v11);
  v13 = *(a1 + v11 + 8);
  v14 = (a2 + v11);
  v15 = v12 == *v14 && v13 == v14[1];
  if (!v15 && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  v16 = v5[11];
  v17 = *(a1 + v16);
  v18 = *(a1 + v16 + 8);
  v19 = (a2 + v16);
  if ((v17 != *v19 || v18 != v19[1]) && (sub_1D8B16BA0() & 1) == 0)
  {
    return 0;
  }

  return *(a1 + v5[12]) == *(a2 + v5[12]);
}

uint64_t type metadata accessor for GenericParseDataResult(uint64_t a1)
{
  result = qword_1EE0E5190;
  if (!qword_1EE0E5190)
  {
    return swift_getSingletonMetadata();
  }

  return result;
}

unint64_t sub_1D8A71050()
{
  result = qword_1ECA68518;
  if (!qword_1ECA68518)
  {
    result = swift_getWitnessTable();
    atomic_store(result, &qword_1ECA68518);
  }

  return result;
}

uint64_t sub_1D8A710A4(uint64_t a1, uint64_t a2)
{
  v4 = __swift_instantiateConcreteTypeFromMangledNameV2(&qword_1ECA635E8, &unk_1D8B1F5C0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71114(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68520, &qword_1D8B398A8);
    sub_1D8A713CC(a2, MEMORY[0x1E69E03D8], a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A711B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for VisualUnderstandingContainer(0);
  (*(*(v4 - 8) + 32))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71214(unint64_t *a1, unint64_t *a2, uint64_t a3, uint64_t a4)
{
  result = *a1;
  if (!result)
  {
    __swift_instantiateConcreteTypeFromMangledNameAbstractV2(&qword_1ECA68540, &unk_1D8B398B0);
    sub_1D8A713CC(a2, type metadata accessor for VisualUnderstandingContainer, a3);
    result = swift_getWitnessTable();
    atomic_store(result, a1);
  }

  return result;
}

uint64_t sub_1D8A712B0(uint64_t a1, uint64_t a2)
{
  v4 = type metadata accessor for GenericParseDataResult(0);
  (*(*(v4 - 8) + 16))(a2, a1, v4);
  return a2;
}

uint64_t sub_1D8A71314(uint64_t a1, uint64_t (*a2)(void))
{
  v3 = a2(0);
  (*(*(v3 - 8) + 8))(a1, v3);
  return a1;
}

uint64_t sub_1D8A71374(uint64_t a1)
{
  result = sub_1D8A713CC(&qword_1ECA68578, type metadata accessor for GenericParseDataResult, &protocol conformance descriptor for GenericParseDataResult);
  *(a1 + 8) = result;
  return result;
}

uint64_t sub_1D8A713CC(unint64_t *a1, uint64_t (*a2)(uint64_t), uint64_t a3)
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